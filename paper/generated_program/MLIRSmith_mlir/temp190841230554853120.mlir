module {
  func.func @func1() -> memref<7x2xf16> {
    %c-754_i16 = arith.constant -754 : i16
    %true = arith.constant true
    %cst = arith.constant 1.71712576E+9 : f32
    %cst_0 = arith.constant 0x4E1FC456 : f32
    %c577334001_i32 = arith.constant 577334001 : i32
    %c31661_i16 = arith.constant 31661 : i16
    %cst_1 = arith.constant 4.665600e+04 : f16
    %false = arith.constant false
    %c-5339_i16 = arith.constant -5339 : i16
    %cst_2 = arith.constant 0x4DDEBE43 : f32
    %c691347664_i32 = arith.constant 691347664 : i32
    %true_3 = arith.constant true
    %cst_4 = arith.constant 0x4D3B80B9 : f32
    %cst_5 = arith.constant 0x4D1062E5 : f32
    %c768949949_i32 = arith.constant 768949949 : i32
    %c123861668_i64 = arith.constant 123861668 : i64
    %0 = tensor.empty() : tensor<11x2x11xi16>
    %1 = tensor.empty() : tensor<2xf32>
    %2 = tensor.empty() : tensor<7x7xi16>
    %3 = tensor.empty() : tensor<11x2x11xi64>
    %4 = tensor.empty() : tensor<7x7xf16>
    %5 = tensor.empty() : tensor<2xi32>
    %6 = tensor.empty() : tensor<11x2x11xi1>
    %7 = tensor.empty() : tensor<7x7xf32>
    %8 = tensor.empty() : tensor<7x7xf16>
    %9 = tensor.empty() : tensor<7x2xi64>
    %10 = tensor.empty() : tensor<11x2x11xf32>
    %11 = tensor.empty() : tensor<2xf16>
    %12 = tensor.empty() : tensor<11x2x11xf16>
    %13 = tensor.empty() : tensor<7x2xi1>
    %14 = tensor.empty() : tensor<2xi16>
    %15 = tensor.empty() : tensor<11x2x11xf32>
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
    %alloc = memref.alloc() : memref<7x2xf16>
    %alloc_6 = memref.alloc() : memref<11x2x11xi64>
    %alloc_7 = memref.alloc() : memref<7x7xf32>
    %alloc_8 = memref.alloc() : memref<11x2x11xi16>
    %alloc_9 = memref.alloc() : memref<2xi32>
    %alloc_10 = memref.alloc() : memref<11x2x11xi64>
    %alloc_11 = memref.alloc() : memref<7x2xi1>
    %alloc_12 = memref.alloc() : memref<7x7xi64>
    %alloc_13 = memref.alloc() : memref<7x7xf16>
    %alloc_14 = memref.alloc() : memref<7x2xi64>
    %alloc_15 = memref.alloc() : memref<7x2xf16>
    %alloc_16 = memref.alloc() : memref<2xi16>
    %alloc_17 = memref.alloc() : memref<2xf16>
    %alloc_18 = memref.alloc() : memref<7x7xf16>
    %alloc_19 = memref.alloc() : memref<7x2xi1>
    %alloc_20 = memref.alloc() : memref<7x7xi32>
    %16 = tensor.empty() : tensor<2xf32>
    %17 = linalg.copy ins(%1 : tensor<2xf32>) outs(%16 : tensor<2xf32>) -> tensor<2xf32>
    %18 = tensor.empty() : tensor<2x7xf16>
    %transposed = linalg.transpose ins(%alloc : memref<7x2xf16>) outs(%18 : tensor<2x7xf16>) permutation = [1, 0] 
    %19 = tensor.empty() : tensor<i32>
    %reduced = linalg.reduce ins(%5 : tensor<2xi32>) outs(%19 : tensor<i32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %245 = arith.minui %c-754_i16, %c-754_i16 : i16
        %246 = index.divu %c8, %c1
        %247 = math.tanh %1 : tensor<2xf32>
        %248 = affine.min affine_map<(d0, d1) -> (d0, d1 - (d1 + 16), d1 ceildiv 128)>(%c13, %246)
        %249 = math.log1p %4 : tensor<7x7xf16>
        %250 = affine.for %arg0 = 0 to 22 iter_args(%arg1 = %0) -> (tensor<11x2x11xi16>) {
          affine.yield %arg1 : tensor<11x2x11xi16>
        }
        %251 = math.tan %8 : tensor<7x7xf16>
        %252 = index.divu %c6, %c14
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    %20 = scf.parallel (%arg0, %arg1) = (%c5, %c13) to (%c2, %c12) step (%c2, %c9) init (%5) -> tensor<2xi32> {
      %245 = math.atan2 %cst_4, %cst_2 : f32
      %cst_65 = arith.constant 3.248000e+04 : f16
      %246 = index.ceildivu %c11, %c1
      %247 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%3 : tensor<11x2x11xi64>) {
      ^bb0(%out: i64):
        %261 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 - d2 + ((d1 * 8) mod 32) floordiv 32)>(%246, %c3, %c15, %c3)
        memref.tensor_store %11, %alloc_17 : memref<2xf16>
        %alloca_71 = memref.alloca() : memref<11x2x11xi1>
        %262 = arith.shrsi %true, %true : i1
        %alloca_72 = memref.alloca() : memref<11x2x11xf16>
        %263 = vector.broadcast %c123861668_i64 : i64 to vector<i64>
        vector.transfer_write %263, %alloc_14[%c3, %c6] : vector<i64>, memref<7x2xi64>
        %rank_73 = tensor.rank %0 : tensor<11x2x11xi16>
        %264 = math.round %10 : tensor<11x2x11xf32>
        %265 = index.sub %c0, %rank_73
        %266 = math.round %10 : tensor<11x2x11xf32>
        memref.assume_alignment %alloc_7, 16 : memref<7x7xf32>
        %267 = arith.shrui %c-5339_i16, %c31661_i16 : i16
        %268 = vector.broadcast %c577334001_i32 : i32 to vector<11x1xi32>
        %269 = vector.broadcast %c691347664_i32 : i32 to vector<11xi32>
        %dest_74, %accumulated_value_75 = vector.scan <maxsi>, %268, %269 {inclusive = false, reduction_dim = 1 : i64} : vector<11x1xi32>, vector<11xi32>
        bufferization.dealloc_tensor %2 : tensor<7x7xi16>
        %270 = arith.negf %cst_4 : f32
        %271 = math.tanh %17 : tensor<2xf32>
        %272 = vector.broadcast %c691347664_i32 : i32 to vector<11x2x11xi32>
        %273 = vector.extract %272[5] : vector<11x2x11xi32>
        %274 = index.ceildivs %c0, %c5
        %275 = index.ceildivs %c6, %rank_73
        %276 = vector.splat %true : vector<7x7xi1>
        %extracted_76 = tensor.extract %0[%c8, %c0, %c6] : tensor<11x2x11xi16>
        %alloc_77 = memref.alloc() : memref<7x7xf32>
        memref.copy %alloc_7, %alloc_77 : memref<7x7xf32> to memref<7x7xf32>
        %277 = math.ctpop %true_3 : i1
        %false_78 = index.bool.constant false
        %expanded = tensor.expand_shape %4 [[0], [1, 2]] : tensor<7x7xf16> into tensor<7x7x1xf16>
        %278 = math.roundeven %8 : tensor<7x7xf16>
        %279 = vector.broadcast %true : i1 to vector<2xi1>
        %280 = vector.broadcast %false_78 : i1 to vector<2x2xi1>
        %281 = vector.outerproduct %279, %279, %280 {kind = #vector.kind<xor>} : vector<2xi1>, vector<2xi1>
        %282 = index.divu %265, %c5
        %expanded_79 = tensor.expand_shape %18 [[0], [1, 2]] : tensor<2x7xf16> into tensor<2x7x1xf16>
        %283 = index.maxu %c12, %c2
        %284 = vector.insertelement %out, %263[] : vector<i64>
        linalg.yield %out : i64
      } -> tensor<11x2x11xi64>
      %248 = math.round %1 : tensor<2xf32>
      %249 = vector.load %alloc[%c6, %c1] : memref<7x2xf16>, vector<7x2xf16>
      %rank_66 = tensor.rank %8 : tensor<7x7xf16>
      %250 = vector.splat %c15 : vector<7x2xindex>
      %251 = math.ceil %4 : tensor<7x7xf16>
      %alloc_67 = memref.alloc() : memref<2x1xi1>
      %252 = tensor.empty() : tensor<7x1xi1>
      %253 = linalg.matmul ins(%13, %alloc_67 : tensor<7x2xi1>, memref<2x1xi1>) outs(%252 : tensor<7x1xi1>) -> tensor<7x1xi1>
      %254 = arith.mulf %cst_1, %cst_1 : f16
      %alloca_68 = memref.alloca() : memref<7x2xi64>
      %255 = affine.max affine_map<(d0, d1, d2, d3) -> (d0, (d0 + d3 - 4) * 16 + d2, d2)>(%246, %c1, %246, %c4)
      %256 = vector.bitcast %249 : vector<7x2xf16> to vector<7x2xf16>
      %cst_69 = arith.constant 1.000000e+00 : f16
      %cst_70 = arith.constant 0.000000e+00 : f16
      %257 = vector.transfer_read %alloc_15[%c2, %c8], %cst_70 : memref<7x2xf16>, vector<f16>
      %258 = vector.broadcast %c31661_i16 : i16 to vector<11xi16>
      %259 = vector.transfer_write %258, %0[%c11, %255, %c9] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<11xi16>, tensor<11x2x11xi16>
      %260 = tensor.empty() : tensor<2xi32>
      scf.reduce(%260)  : tensor<2xi32> {
      ^bb0(%arg2: tensor<2xi32>, %arg3: tensor<2xi32>):
        %261 = arith.cmpi ne, %true, %false : i1
        %262 = math.log1p %7 : tensor<7x7xf32>
        %263 = vector.broadcast %cst_69 : f16 to vector<2xf16>
        %dest_71, %accumulated_value_72 = vector.scan <minf>, %256, %263 {inclusive = true, reduction_dim = 0 : i64} : vector<7x2xf16>, vector<2xf16>
        %264 = math.round %18 : tensor<2x7xf16>
        %alloca_73 = memref.alloca() : memref<2xf16>
        %265 = arith.remf %cst_69, %cst_1 : f16
        %266 = index.sub %c4, %255
        %267 = vector.flat_transpose %258 {columns = 11 : i32, rows = 1 : i32} : vector<11xi16> -> vector<11xi16>
        %268 = tensor.empty() : tensor<2xi32>
        scf.reduce.return %268 : tensor<2xi32>
      }
      scf.yield
    }
    %21 = affine.vector_load %alloc_10[%c7, %c3, %c3] : memref<11x2x11xi64>, vector<2xi64>
    affine.vector_store %21, %alloc_10[%c9, %c7, %c11] : memref<11x2x11xi64>, vector<2xi64>
    %alloc_21 = memref.alloc() : memref<2xf32>
    %22 = tensor.empty() : tensor<f32>
    %23 = linalg.dot ins(%17, %alloc_21 : tensor<2xf32>, memref<2xf32>) outs(%22 : tensor<f32>) -> tensor<f32>
    %24 = index.ceildivu %c4, %c1
    %25 = arith.cmpi ult, %c-754_i16, %c31661_i16 : i16
    %26 = vector.broadcast %true : i1 to vector<1x7x2xi1>
    %27 = vector.broadcast %true : i1 to vector<1x7xi1>
    %dest, %accumulated_value = vector.scan <add>, %26, %27 {inclusive = true, reduction_dim = 2 : i64} : vector<1x7x2xi1>, vector<1x7xi1>
    %28 = math.round %cst_2 : f32
    %29 = math.rsqrt %cst_2 : f32
    %30 = bufferization.clone %alloc_16 : memref<2xi16> to memref<2xi16>
    %31 = vector.splat %c-5339_i16 : vector<2xi16>
    %32 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%15 : tensor<11x2x11xf32>) {
    ^bb0(%out: f32):
      %from_elements = tensor.from_elements %c-754_i16, %c-5339_i16, %c31661_i16, %c-5339_i16, %c-5339_i16, %c-754_i16, %c31661_i16, %c31661_i16, %c-5339_i16, %c31661_i16, %c31661_i16, %c-5339_i16, %c-5339_i16, %c-5339_i16, %c-754_i16, %c-5339_i16, %c-5339_i16, %c31661_i16, %c-754_i16, %c-754_i16, %c-754_i16, %c-754_i16, %c-5339_i16, %c31661_i16, %c-5339_i16, %c-5339_i16, %c-5339_i16, %c-754_i16, %c-5339_i16, %c-5339_i16, %c-5339_i16, %c-5339_i16, %c-5339_i16, %c-5339_i16, %c31661_i16, %c-754_i16, %c31661_i16, %c-5339_i16, %c-5339_i16, %c-754_i16, %c-5339_i16, %c-754_i16, %c-754_i16, %c-754_i16, %c-5339_i16, %c-5339_i16, %c-754_i16, %c-5339_i16, %c-5339_i16 : tensor<7x7xi16>
      %245 = arith.remf %cst_2, %cst : f32
      %alloc_65 = memref.alloc() : memref<11xf32>
      %246 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_65, %alloc_65 : memref<11xf32>, memref<11xf32>) outs(%10 : tensor<11x2x11xf32>) {
      ^bb0(%in: f32, %in_70: f32, %out_71: f32):
        %274 = arith.maxsi %c-754_i16, %c-754_i16 : i16
        %275 = vector.broadcast %in_70 : f32 to vector<7x2xf32>
        %276 = vector.fma %275, %275, %275 : vector<7x2xf32>
        %277 = math.tanh %12 : tensor<11x2x11xf16>
        %278 = bufferization.clone %alloc_19 : memref<7x2xi1> to memref<7x2xi1>
        %279 = vector.multi_reduction <add>, %21, %c123861668_i64 [0] : vector<2xi64> to i64
        %280 = arith.mulf %out_71, %cst_0 : f32
        %281 = vector.bitcast %21 : vector<2xi64> to vector<2xi64>
        %282 = affine.load %30[%c0] : memref<2xi16>
        %283 = vector.broadcast %cst_5 : f32 to vector<2xf32>
        %284 = vector.multi_reduction <mul>, %275, %283 [0] : vector<7x2xf32> to vector<2xf32>
        memref.tensor_store %5, %alloc_9 : memref<2xi32>
        %expanded = tensor.expand_shape %11 [[0, 1]] : tensor<2xf16> into tensor<2x1xf16>
        %alloc_72 = memref.alloc() : memref<7x2xi64>
        memref.copy %alloc_14, %alloc_72 : memref<7x2xi64> to memref<7x2xi64>
        %285 = math.log10 %11 : tensor<2xf16>
        bufferization.dealloc_tensor %4 : tensor<7x7xf16>
        %286 = vector.multi_reduction <minf>, %276, %cst_2 [0, 1] : vector<7x2xf32> to f32
        %alloc_73 = memref.alloc() : memref<2xf16>
        memref.copy %alloc_17, %alloc_73 : memref<2xf16> to memref<2xf16>
        %splat_74 = tensor.splat %286 : tensor<11x2x11xf32>
        %287 = arith.minf %cst_0, %out : f32
        %288 = index.ceildivs %c1, %c3
        affine.store %out, %alloc_21[%c8] : memref<2xf32>
        %alloc_75 = memref.alloc() : memref<7x2xi16>
        %289 = math.fma %10, %10, %10 : tensor<11x2x11xf32>
        %cst_76 = arith.constant 1.000000e+00 : f32
        %290 = vector.transfer_read %10[%c9, %c11, %c5], %cst_76 : tensor<11x2x11xf32>, vector<1xf32>
        %291 = vector.broadcast %c-5339_i16 : i16 to vector<7x7xi16>
        %292 = index.mul %c15, %c1
        %293 = vector.flat_transpose %281 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
        %294 = math.cos %8 : tensor<7x7xf16>
        %295 = arith.andi %true, %true_3 : i1
        %296 = math.ctlz %3 : tensor<11x2x11xi64>
        %297 = index.ceildivu %24, %292
        %298 = bufferization.clone %alloc_9 : memref<2xi32> to memref<2xi32>
        %299 = index.ceildivu %c10, %292
        linalg.yield %286 : f32
      } -> tensor<11x2x11xf32>
      %247 = vector.extract %21[1] : vector<2xi64>
      %248 = math.atan2 %10, %10 : tensor<11x2x11xf32>
      %249 = arith.mulf %cst_1, %cst_1 : f16
      %250 = arith.addf %out, %out : f32
      %251 = affine.load %alloc_19[%c2, %c1] : memref<7x2xi1>
      %252 = math.copysign %18, %18 : tensor<2x7xf16>
      %253 = memref.realloc %alloc_16 : memref<2xi16> to memref<1xi16>
      %254 = math.copysign %cst_0, %cst_2 : f32
      %255 = affine.for %arg0 = 0 to 78 iter_args(%arg1 = %alloc_9) -> (memref<2xi32>) {
        affine.yield %arg1 : memref<2xi32>
      }
      %256 = vector.broadcast %c123861668_i64 : i64 to vector<2x2xi64>
      %dest_66, %accumulated_value_67 = vector.scan <maxsi>, %256, %21 {inclusive = false, reduction_dim = 1 : i64} : vector<2x2xi64>, vector<2xi64>
      %257 = math.log1p %8 : tensor<7x7xf16>
      %258 = math.ipowi %3, %3 : tensor<11x2x11xi64>
      %259 = math.round %16 : tensor<2xf32>
      %260 = arith.andi %c-754_i16, %c31661_i16 : i16
      %261 = vector.flat_transpose %21 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
      %extracted_68 = tensor.extract %16[%c0] : tensor<2xf32>
      %262 = vector.broadcast %c-754_i16 : i16 to vector<i16>
      vector.transfer_write %262, %alloc_16[%c15] : vector<i16>, memref<2xi16>
      %263 = vector.flat_transpose %261 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
      %extracted_69 = tensor.extract %22[] : tensor<f32>
      %264 = vector.load %alloc_15[%c0, %c0] : memref<7x2xf16>, vector<7x7xf16>
      %265 = math.atan2 %16, %17 : tensor<2xf32>
      %266 = arith.shrsi %c-5339_i16, %c-5339_i16 : i16
      %267 = arith.shrsi %true, %false : i1
      %268 = math.ipowi %3, %3 : tensor<11x2x11xi64>
      %269 = bufferization.clone %alloc_13 : memref<7x7xf16> to memref<7x7xf16>
      %270 = vector.multi_reduction <maxui>, %21, %263 [] : vector<2xi64> to vector<2xi64>
      %271 = math.log10 %23 : tensor<f32>
      affine.store %cst_1, %alloc_17[%c8] : memref<2xf16>
      %272 = vector.broadcast %out : f32 to vector<2xf32>
      %273 = vector.fma %272, %272, %272 : vector<2xf32>
      linalg.yield %out : f32
    } -> tensor<11x2x11xf32>
    %33 = arith.remf %cst_1, %cst_1 : f16
    %34 = math.tan %1 : tensor<2xf32>
    %35 = bufferization.to_memref %4 : memref<7x7xf16>
    %36 = math.cos %4 : tensor<7x7xf16>
    %alloc_22 = memref.alloc() : memref<2xi1>
    %37 = vector.reduction <add>, %21 : vector<2xi64> into i64
    %38 = math.round %cst_5 : f32
    %39 = affine.min affine_map<(d0, d1, d2) -> (d1 + 32, d2)>(%c12, %c3, %c2)
    memref.copy %35, %alloc_18 : memref<7x7xf16> to memref<7x7xf16>
    %40 = vector.extract_strided_slice %21 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi64> to vector<2xi64>
    %41 = arith.andi %c768949949_i32, %c577334001_i32 : i32
    %42 = vector.insertelement %c123861668_i64, %21[%c5 : index] : vector<2xi64>
    %43 = vector.extract_strided_slice %21 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi64> to vector<1xi64>
    %44 = vector.reduction <and>, %40 : vector<2xi64> into i64
    %45 = affine.min affine_map<(d0, d1, d2) -> (d0 ceildiv 32, d1 - d0 ceildiv 32, d0 * 256)>(%c6, %c12, %c0)
    %46 = math.fma %23, %23, %22 : tensor<f32>
    %47 = bufferization.to_tensor %alloc_8 : memref<11x2x11xi16>
    %48 = affine.max affine_map<(d0, d1, d2) -> (d1)>(%c10, %c13, %c4)
    %49 = tensor.empty() : tensor<11x2x11xi64>
    %mapped = linalg.map ins(%alloc_10, %alloc_10 : memref<11x2x11xi64>, memref<11x2x11xi64>) outs(%49 : tensor<11x2x11xi64>)
      (%in: i64, %in_65: i64) {
        memref.assume_alignment %alloc_6, 2 : memref<11x2x11xi64>
        %245 = arith.remf %cst_5, %cst_2 : f32
        %246 = index.divs %c8, %c4
        %247 = arith.minf %cst_1, %cst_1 : f16
        %248 = vector.broadcast %in : i64 to vector<2x11xi64>
        %249 = vector.broadcast %in : i64 to vector<11xi64>
        %dest_66, %accumulated_value_67 = vector.scan <maxsi>, %248, %249 {inclusive = false, reduction_dim = 0 : i64} : vector<2x11xi64>, vector<11xi64>
        %250 = math.roundeven %4 : tensor<7x7xf16>
        %251 = math.log1p %cst_1 : f16
        %252 = math.round %15 : tensor<11x2x11xf32>
        %253 = math.round %1 : tensor<2xf32>
        %254 = vector.extract_strided_slice %21 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi64> to vector<1xi64>
        affine.store %false, %alloc_19[%c5, %c6] : memref<7x2xi1>
        %rank_68 = tensor.rank %reduced : tensor<i32>
        %255 = index.divu %c15, %c9
        %256 = vector.broadcast %c-5339_i16 : i16 to vector<11xi16>
        %257 = vector.transfer_write %256, %2[%39, %246] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<11xi16>, tensor<7x7xi16>
        %258 = math.round %transposed : tensor<2x7xf16>
        %259 = math.ctpop %c691347664_i32 : i32
        scf.execute_region {
          %273 = vector.flat_transpose %21 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
          %alloc_72 = memref.alloc() : memref<f32>
          memref.tensor_store %23, %alloc_72 : memref<f32>
          %collapsed_73 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<11x2x11xf16> into tensor<22x11xf16>
          %274 = arith.andi %c-5339_i16, %c31661_i16 : i16
          %275 = arith.remf %cst_2, %cst : f32
          %276 = arith.xori %c-754_i16, %c31661_i16 : i16
          %277 = math.log1p %12 : tensor<11x2x11xf16>
          %278 = math.cttz %2 : tensor<7x7xi16>
          %279 = index.ceildivu %c0, %c12
          %280 = arith.andi %false, %true : i1
          %281 = math.exp %8 : tensor<7x7xf16>
          %282 = vector.bitcast %40 : vector<2xi64> to vector<2xi64>
          %283 = arith.divsi %c-5339_i16, %c-5339_i16 : i16
          %284 = index.floordivs %c7, %c15
          %285 = arith.remui %c691347664_i32, %c577334001_i32 : i32
          %286 = math.atan2 %22, %22 : tensor<f32>
          scf.yield
        }
        %260 = vector.extract %254[0] : vector<1xi64>
        %261 = scf.if %false -> (i16) {
          %273 = arith.maxui %in_65, %c123861668_i64 : i64
          %from_elements = tensor.from_elements %true, %true_3 : tensor<2xi1>
          %274 = math.ctpop %0 : tensor<11x2x11xi16>
          %expanded = tensor.expand_shape %5 [[0, 1]] : tensor<2xi32> into tensor<2x1xi32>
          %275 = affine.max affine_map<(d0, d1, d2) -> (d1 mod 2)>(%c5, %c3, %39)
          %276 = arith.divf %cst_5, %cst_4 : f32
          memref.tensor_store %5, %alloc_9 : memref<2xi32>
          %277 = arith.divf %cst_4, %cst_0 : f32
          scf.yield %c31661_i16 : i16
        } else {
          affine.store %c-5339_i16, %30[%c14] : memref<2xi16>
          %273 = math.ctpop %3 : tensor<11x2x11xi64>
          %alloc_72 = memref.alloc() : memref<11x2x11xi32>
          %extracted_73 = tensor.extract %11[%c0] : tensor<2xf16>
          %274 = vector.splat %c1 : vector<7x7xindex>
          %275 = vector.broadcast %in_65 : i64 to vector<1x1xi64>
          %276 = vector.outerproduct %43, %43, %275 {kind = #vector.kind<add>} : vector<1xi64>, vector<1xi64>
          %277 = math.floor %16 : tensor<2xf32>
          memref.tensor_store %17, %alloc_21 : memref<2xf32>
          scf.yield %c-754_i16 : i16
        }
        %generated = tensor.generate %45 {
        ^bb0(%arg0: index):
          %273 = arith.andi %261, %c31661_i16 : i16
          %274 = index.ceildivu %24, %c4
          %275 = math.absf %22 : tensor<f32>
          %276 = index.divs %c7, %24
          tensor.yield %cst_1 : f16
        } : tensor<?xf16>
        %262 = affine.if affine_set<(d0) : (-(-(d0 - 128) + 64) >= 0, -((-(d0 - 128)) ceildiv 128) == 0, -(-(d0 - 128) + 64) == 0)>(%c6) -> i64 {
          %273 = arith.ceildivsi %c768949949_i32, %c768949949_i32 : i32
          %274 = arith.maxsi %c577334001_i32, %c768949949_i32 : i32
          %275 = index.divu %c2, %c4
          %276 = vector.bitcast %256 : vector<11xi16> to vector<11xi16>
          %splat_72 = tensor.splat %cst_4 : tensor<7x2xf32>
          %277 = vector.broadcast %in_65 : i64 to vector<2x2xi64>
          %278 = vector.outerproduct %40, %21, %277 {kind = #vector.kind<maxui>} : vector<2xi64>, vector<2xi64>
          %279 = arith.andi %true_3, %false : i1
          %280 = math.tanh %cst : f32
          affine.yield %in_65 : i64
        } else {
          %273 = vector.flat_transpose %256 {columns = 11 : i32, rows = 1 : i32} : vector<11xi16> -> vector<11xi16>
          %274 = vector.broadcast %45 : index to vector<7xindex>
          %275 = vector.broadcast %true : i1 to vector<7xi1>
          %276 = vector.broadcast %in_65 : i64 to vector<7xi64>
          vector.scatter %alloc_10[%c9, %c0, %c2] [%274], %275, %276 : memref<11x2x11xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
          %277 = arith.ceildivsi %false, %false : i1
          %278 = math.powf %22, %23 : tensor<f32>
          %279 = vector.reduction <minsi>, %43 : vector<1xi64> into i64
          %alloc_72 = memref.alloc() : memref<2xi16>
          %280 = arith.divf %cst_1, %cst_1 : f16
          %281 = vector.multi_reduction <maxui>, %21, %c123861668_i64 [0] : vector<2xi64> to i64
          affine.yield %281 : i64
        }
        %263 = vector.extract_strided_slice %21 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi64> to vector<2xi64>
        %264 = index.ceildivs %c9, %c9
        %alloc_69 = memref.alloc() : memref<11x2x11xf32>
        memref.tensor_store %10, %alloc_69 : memref<11x2x11xf32>
        %265 = vector.extract %254[0] : vector<1xi64>
        %266 = memref.realloc %alloc_16 : memref<2xi16> to memref<2xi16>
        %267 = vector.shuffle %254, %21 [0, 1] : vector<1xi64>, vector<2xi64>
        %generated_70 = tensor.generate %c4, %45 {
        ^bb0(%arg0: index, %arg1: index, %arg2: index):
          %273 = vector.broadcast %arg1 : index to vector<2xindex>
          %274 = vector.broadcast %true_3 : i1 to vector<2xi1>
          vector.scatter %alloc_19[%c1, %c1] [%273], %274, %274 : memref<7x2xi1>, vector<2xindex>, vector<2xi1>, vector<2xi1>
          %275 = math.floor %10 : tensor<11x2x11xf32>
          %276 = math.ipowi %5, %5 : tensor<2xi32>
          %277 = arith.minui %in, %in_65 : i64
          tensor.yield %in_65 : i64
        } : tensor<?x?x11xi64>
        %268 = vector.broadcast %cst_1 : f16 to vector<1xf16>
        %269 = vector.broadcast %false : i1 to vector<1xi1>
        %270 = vector.maskedload %alloc[%c0, %c0], %269, %268 : memref<7x2xf16>, vector<1xi1>, vector<1xf16> into vector<1xf16>
        %271 = vector.splat %in_65 : vector<7x2xi64>
        %272 = arith.maxui %c-754_i16, %c-5339_i16 : i16
        %alloca_71 = memref.alloca() : memref<11x2x11xi16>
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %50 = arith.shrsi %c-754_i16, %c-754_i16 : i16
    %51 = vector.broadcast %c691347664_i32 : i32 to vector<2x2xi32>
    %52 = vector.broadcast %c768949949_i32 : i32 to vector<2xi32>
    %dest_23, %accumulated_value_24 = vector.scan <mul>, %51, %52 {inclusive = false, reduction_dim = 0 : i64} : vector<2x2xi32>, vector<2xi32>
    scf.if %true {
      %245 = vector.load %alloc_6[%c8, %c1, %c1] : memref<11x2x11xi64>, vector<7x2xi64>
      %246 = arith.minf %cst_0, %cst_0 : f32
      affine.for %arg0 = 0 to 59 {
      }
      %247 = math.cos %cst_2 : f32
      %248 = bufferization.to_tensor %alloc_8 : memref<11x2x11xi16>
      %249 = arith.remui %c-5339_i16, %c-754_i16 : i16
      %alloca_65 = memref.alloca() : memref<7x2xf16>
      %250 = arith.remf %cst_0, %cst_2 : f32
    } else {
      affine.store %cst_1, %alloc[%c6, %c7] : memref<7x2xf16>
      %245 = math.cos %cst_5 : f32
      %alloc_65 = memref.alloc() : memref<11x2xi1>
      %246 = tensor.empty() : tensor<2x11x11xi1>
      %247 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_65, %246 : memref<11x2xi1>, tensor<2x11x11xi1>) outs(%6 : tensor<11x2x11xi1>) {
      ^bb0(%in: i1, %in_66: i1, %out: i1):
        %254 = math.log2 %16 : tensor<2xf32>
        %255 = math.absf %cst : f32
        %256 = arith.divsi %c768949949_i32, %c577334001_i32 : i32
        %257 = bufferization.to_memref %5 : memref<2xi32>
        %258 = affine.min affine_map<(d0) -> (-16, (d0 * 2) ceildiv 16, -16)>(%c6)
        %259 = math.log2 %cst : f32
        %260 = vector.insertelement %c123861668_i64, %40[%24 : index] : vector<2xi64>
        %261 = vector.splat %c6 : vector<11x2x11xindex>
        %262 = math.round %cst_0 : f32
        %alloc_67 = memref.alloc() : memref<7x7xi32>
        memref.copy %alloc_20, %alloc_67 : memref<7x7xi32> to memref<7x7xi32>
        %263 = index.ceildivu %c10, %c12
        %264 = math.rsqrt %11 : tensor<2xf16>
        %265 = math.log10 %7 : tensor<7x7xf32>
        %266 = vector.load %alloc_9[%c1] : memref<2xi32>, vector<2xi32>
        %267 = math.tanh %16 : tensor<2xf32>
        %alloc_68 = memref.alloc() : memref<11x2x11xi16>
        memref.copy %alloc_8, %alloc_68 : memref<11x2x11xi16> to memref<11x2x11xi16>
        %268 = vector.broadcast %cst : f32 to vector<7x7xf32>
        %269 = vector.fma %268, %268, %268 : vector<7x7xf32>
        %270 = vector.broadcast %cst_2 : f32 to vector<7xf32>
        %dest_69, %accumulated_value_70 = vector.scan <minf>, %268, %270 {inclusive = true, reduction_dim = 0 : i64} : vector<7x7xf32>, vector<7xf32>
        %271 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %40, %40, %c123861668_i64 : vector<2xi64>, vector<2xi64> into i64
        %expanded = tensor.expand_shape %2 [[0], [1, 2]] : tensor<7x7xi16> into tensor<7x7x1xi16>
        %272 = tensor.empty() : tensor<2x7xi32>
        %273 = math.fpowi %18, %272 : tensor<2x7xf16>, tensor<2x7xi32>
        %274 = arith.negf %cst_4 : f32
        %275 = index.divs %c1, %c15
        %276 = math.cos %10 : tensor<11x2x11xf32>
        %277 = math.cos %12 : tensor<11x2x11xf16>
        %278 = arith.remf %cst_4, %cst_5 : f32
        %collapsed_71 = tensor.collapse_shape %8 [[0, 1]] : tensor<7x7xf16> into tensor<49xf16>
        %collapsed_72 = tensor.collapse_shape %10 [[0, 1], [2]] : tensor<11x2x11xf32> into tensor<22x11xf32>
        %279 = math.log1p %18 : tensor<2x7xf16>
        %280 = vector.splat %c3 : vector<7x7xindex>
        %281 = vector.multi_reduction <or>, %266, %266 [] : vector<2xi32> to vector<2xi32>
        %282 = math.cos %22 : tensor<f32>
        linalg.yield %in_66 : i1
      } -> tensor<11x2x11xi1>
      %248 = index.divu %c12, %c7
      %249 = arith.cmpi sgt, %true, %false : i1
      %250 = vector.broadcast %cst_4 : f32 to vector<2xf32>
      %251 = vector.fma %250, %250, %250 : vector<2xf32>
      %252 = vector.insertelement %c123861668_i64, %40[%248 : index] : vector<2xi64>
      %253 = vector.flat_transpose %40 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
    }
    %collapsed = tensor.collapse_shape %9 [[0, 1]] : tensor<7x2xi64> into tensor<14xi64>
    memref.tensor_store %3, %alloc_10 : memref<11x2x11xi64>
    %53 = vector.create_mask %45, %c2 : vector<7x7xi1>
    %54 = arith.addf %cst, %cst_5 : f32
    %55 = vector.broadcast %c5 : index to vector<1xindex>
    %56 = vector.broadcast %true : i1 to vector<1xi1>
    %57 = vector.broadcast %cst_1 : f16 to vector<1xf16>
    vector.scatter %alloc_17[%c1] [%55], %56, %57 : memref<2xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
    %58 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 mod 2, (d0 + d3) ceildiv 64, (d0 + d3 - d1) floordiv 64)>(%45, %c1, %c4, %c3)
    %alloc_25 = memref.alloc() : memref<2x7xf16>
    memref.tensor_store %transposed, %alloc_25 : memref<2x7xf16>
    %59 = affine.min affine_map<(d0, d1) -> (d0 floordiv 16 + 8, d0 floordiv 16 + 8, d0 floordiv 16 + 8, d0 floordiv 16 + 8)>(%c12, %c3)
    vector.print %21 : vector<2xi64>
    %60 = vector.broadcast %c123861668_i64 : i64 to vector<1x1xi64>
    %61 = vector.outerproduct %43, %43, %60 {kind = #vector.kind<minui>} : vector<1xi64>, vector<1xi64>
    %62 = tensor.empty() : tensor<11x2x11xi1>
    %mapped_26 = linalg.map ins(%6, %6, %6 : tensor<11x2x11xi1>, tensor<11x2x11xi1>, tensor<11x2x11xi1>) outs(%62 : tensor<11x2x11xi1>)
      (%in: i1, %in_65: i1, %in_66: i1) {
        %245 = math.cos %1 : tensor<2xf32>
        %alloca_67 = memref.alloca() : memref<2xi32>
        %246 = arith.ceildivsi %in, %in_65 : i1
        %expanded = tensor.expand_shape %15 [[0], [1], [2, 3]] : tensor<11x2x11xf32> into tensor<11x2x11x1xf32>
        %247 = arith.shrsi %c577334001_i32, %c691347664_i32 : i32
        %248 = vector.extract_strided_slice %43 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
        %249 = arith.floordivsi %in_66, %in_65 : i1
        %250 = math.atan2 %8, %4 : tensor<7x7xf16>
        %251 = math.exp %23 : tensor<f32>
        %252 = arith.remf %cst_4, %cst_2 : f32
        %253 = vector.splat %c691347664_i32 : vector<7x2xi32>
        %254 = math.cos %15 : tensor<11x2x11xf32>
        %255 = arith.remf %cst, %cst_4 : f32
        %256 = arith.remf %cst, %cst_0 : f32
        %257 = math.round %8 : tensor<7x7xf16>
        %258 = affine.min affine_map<(d0) -> (d0 mod 2, d0 mod 2, d0 - 37, d0 floordiv 2 + 7)>(%c8)
        %259 = index.sub %c6, %c0
        %260 = index.ceildivu %c11, %c14
        %cst_68 = arith.constant 3.321600e+04 : f16
        %261 = index.floordivs %c5, %45
        %262 = math.round %11 : tensor<2xf16>
        vector.print %53 : vector<7x7xi1>
        %263 = index.divu %c10, %c5
        %264 = math.log10 %7 : tensor<7x7xf32>
        %265 = scf.index_switch %c7 -> tensor<11x2x11xi16> 
        case 1 {
          %273 = math.atan2 %4, %4 : tensor<7x7xf16>
          %274 = math.log %8 : tensor<7x7xf16>
          %275 = vector.broadcast %cst_1 : f16 to vector<2xf16>
          %276 = math.log2 %12 : tensor<11x2x11xf16>
          %277 = tensor.empty() : tensor<7x7xf16>
          %278 = linalg.matmul ins(%4, %8 : tensor<7x7xf16>, tensor<7x7xf16>) outs(%277 : tensor<7x7xf16>) -> tensor<7x7xf16>
          %279 = arith.remf %cst_1, %cst_1 : f16
          %280 = vector.broadcast %cst_1 : f16 to vector<f16>
          vector.transfer_write %280, %alloc_17[%c2] : vector<f16>, memref<2xf16>
          %281 = math.cos %7 : tensor<7x7xf32>
          %282 = index.ceildivu %39, %c6
          %283 = index.sub %259, %259
          %284 = math.atan2 %10, %15 : tensor<11x2x11xf32>
          %285 = math.log1p %1 : tensor<2xf32>
          %286 = math.round %cst_1 : f16
          affine.store %cst_1, %alloc_18[%c9, %c6] : memref<7x7xf16>
          %287 = vector.broadcast %c123861668_i64 : i64 to vector<2x2xi64>
          %288 = vector.outerproduct %40, %21, %287 {kind = #vector.kind<xor>} : vector<2xi64>, vector<2xi64>
          %289 = math.ctpop %in_65 : i1
          scf.yield %47 : tensor<11x2x11xi16>
        }
        default {
          %273 = vector.insertelement %c123861668_i64, %21[%263 : index] : vector<2xi64>
          %274 = affine.min affine_map<(d0) -> ((d0 - (d0 - 2)) ceildiv 128, d0, (d0 - 2) ceildiv 64)>(%c13)
          %275 = affine.max affine_map<(d0, d1) -> ((d1 ceildiv 2 - (d0 - d1 ceildiv 2) + d1) ceildiv 2, -(d1 ceildiv 2), (-(d1 ceildiv 2)) floordiv 32, d1 ceildiv 2 - (d0 - d1 ceildiv 2))>(%c1, %c11)
          %276 = index.divs %59, %261
          %alloc_73 = memref.alloc() : memref<2xi16>
          %277 = math.exp %12 : tensor<11x2x11xf16>
          %278 = vector.shuffle %40, %248 [1] : vector<2xi64>, vector<1xi64>
          %279 = math.log10 %cst_1 : f16
          %280 = index.casts %276 : index to i32
          %281 = index.castu %261 : index to i32
          %282 = math.round %cst_1 : f16
          %cast = tensor.cast %10 : tensor<11x2x11xf32> to tensor<?x?x?xf32>
          %cast_74 = tensor.cast %5 : tensor<2xi32> to tensor<?xi32>
          %283 = math.atan2 %15, %10 : tensor<11x2x11xf32>
          %284 = index.ceildivu %259, %276
          %285 = math.round %expanded : tensor<11x2x11x1xf32>
          scf.yield %0 : tensor<11x2x11xi16>
        }
        %266 = index.floordivs %c3, %261
        %267 = vector.insertelement %c123861668_i64, %43[%c3 : index] : vector<1xi64>
        %alloc_69 = memref.alloc() : memref<2x11xi64>
        %alloc_70 = memref.alloc() : memref<11x2xi64>
        %alloc_71 = memref.alloc() : memref<11xi64>
        %268 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_69, %alloc_70, %alloc_71 : memref<2x11xi64>, memref<11x2xi64>, memref<11xi64>) outs(%49 : tensor<11x2x11xi64>) {
        ^bb0(%in_73: i64, %in_74: i64, %in_75: i64, %out: i64):
          %273 = vector.flat_transpose %43 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
          %274 = vector.broadcast %45 : index to vector<7xindex>
          %275 = vector.broadcast %in : i1 to vector<7xi1>
          vector.scatter %alloc_11[%c3, %c1] [%274], %275, %275 : memref<7x2xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
          %276 = math.round %expanded : tensor<11x2x11x1xf32>
          %277 = math.tanh %1 : tensor<2xf32>
          %278 = vector.create_mask %c5, %c7 : vector<7x7xi1>
          %279 = arith.negf %cst_1 : f16
          %280 = arith.remf %cst_0, %cst : f32
          %281 = vector.broadcast %in_65 : i1 to vector<i1>
          vector.transfer_write %281, %alloc_19[%24, %58] : vector<i1>, memref<7x2xi1>
          %282 = affine.load %alloc_21[%c4] : memref<2xf32>
          %283 = bufferization.to_tensor %alloc_10 : memref<11x2x11xi64>
          %284 = arith.minf %cst_1, %cst_1 : f16
          %285 = tensor.empty() : tensor<2x11xi1>
          %286 = tensor.empty() : tensor<7x11xi1>
          %287 = linalg.matmul ins(%13, %285 : tensor<7x2xi1>, tensor<2x11xi1>) outs(%286 : tensor<7x11xi1>) -> tensor<7x11xi1>
          %288 = math.ipowi %9, %9 : tensor<7x2xi64>
          %289 = vector.insertelement %in_73, %21[%c2 : index] : vector<2xi64>
          %290 = vector.broadcast %cst_1 : f16 to vector<f16>
          %291 = vector.transfer_write %290, %8[%260, %c10] : vector<f16>, tensor<7x7xf16>
          memref.tensor_store %8, %alloc_13 : memref<7x7xf16>
          %292 = math.round %11 : tensor<2xf16>
          %293 = vector.extract_strided_slice %248 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
          %294 = math.fma %22, %23, %22 : tensor<f32>
          %295 = arith.ceildivsi %in_75, %in_73 : i64
          %296 = math.ipowi %286, %286 : tensor<7x11xi1>
          %inserted = tensor.insert %cst_1 into %11[%c0] : tensor<2xf16>
          %297 = arith.ceildivsi %c577334001_i32, %c577334001_i32 : i32
          %298 = arith.minui %c691347664_i32, %c768949949_i32 : i32
          %299 = tensor.empty() : tensor<2x7xf16>
          %300 = linalg.matmul ins(%transposed, %4 : tensor<2x7xf16>, tensor<7x7xf16>) outs(%299 : tensor<2x7xf16>) -> tensor<2x7xf16>
          %301 = math.exp %cst_1 : f16
          %expanded_76 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<7x7xf16> into tensor<7x7x1xf16>
          %302 = math.log2 %transposed : tensor<2x7xf16>
          %303 = arith.maxsi %true, %false : i1
          %extracted_77 = tensor.extract %14[%c1] : tensor<2xi16>
          %304 = arith.andi %c-5339_i16, %c-5339_i16 : i16
          %305 = math.sqrt %18 : tensor<2x7xf16>
          linalg.yield %c123861668_i64 : i64
        } -> tensor<11x2x11xi64>
        %269 = arith.divui %true_3, %in_66 : i1
        %270 = math.round %15 : tensor<11x2x11xf32>
        %271 = arith.minf %cst_4, %cst_4 : f32
        %272 = math.rsqrt %transposed : tensor<2x7xf16>
        %true_72 = arith.constant true
        linalg.yield %true_72 : i1
      }
    %63 = arith.remf %cst_2, %cst_2 : f32
    %64 = affine.apply affine_map<(d0, d1) -> ((-(d1 mod 64)) ceildiv 4 + 64)>(%c3, %c2)
    %65 = index.ceildivu %c12, %c6
    %66 = math.powf %cst_1, %cst_1 : f16
    %67 = vector.broadcast %true_3 : i1 to vector<7xi1>
    %dest_27, %accumulated_value_28 = vector.scan <xor>, %53, %67 {inclusive = false, reduction_dim = 1 : i64} : vector<7x7xi1>, vector<7xi1>
    %68 = math.exp %cst_2 : f32
    %69 = math.exp2 %22 : tensor<f32>
    %70 = vector.bitcast %53 : vector<7x7xi1> to vector<7x7xi1>
    %71 = index.ceildivu %c3, %c5
    %72 = arith.shrui %c123861668_i64, %c123861668_i64 : i64
    %73 = arith.remf %cst_2, %cst_5 : f32
    %74 = arith.shrui %c577334001_i32, %c691347664_i32 : i32
    %75 = affine.min affine_map<(d0) -> (d0 + d0 + 1)>(%c11)
    %76 = vector.broadcast %cst_1 : f16 to vector<7xf16>
    %77 = vector.broadcast %false : i1 to vector<7xi1>
    %78 = vector.maskedload %alloc[%c3, %c0], %77, %76 : memref<7x2xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
    %79 = arith.shrui %true, %true_3 : i1
    %alloc_29 = memref.alloc() : memref<11x2x11xi1>
    memref.tensor_store %6, %alloc_29 : memref<11x2x11xi1>
    affine.for %arg0 = 0 to 111 {
    }
    %80 = math.rsqrt %15 : tensor<11x2x11xf32>
    %81 = affine.min affine_map<(d0) -> (d0 - 130, ((d0 - 130) mod 128) * -64 - 8)>(%c4)
    %82 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<and>} %53, %77, %77 : vector<7x7xi1>, vector<7xi1> into vector<7xi1>
    %83 = math.ceil %cst_0 : f32
    %alloc_30 = memref.alloc() : memref<2x1xi1>
    %84 = tensor.empty() : tensor<7x1xi1>
    %85 = linalg.matmul ins(%13, %alloc_30 : tensor<7x2xi1>, memref<2x1xi1>) outs(%84 : tensor<7x1xi1>) -> tensor<7x1xi1>
    %86 = tensor.empty() : tensor<2x11xi64>
    %87 = tensor.empty() : tensor<7x11xi64>
    %88 = linalg.matmul ins(%9, %86 : tensor<7x2xi64>, tensor<2x11xi64>) outs(%87 : tensor<7x11xi64>) -> tensor<7x11xi64>
    %89 = math.expm1 %8 : tensor<7x7xf16>
    %90 = arith.remui %c-5339_i16, %c-5339_i16 : i16
    %alloc_31 = memref.alloc() : memref<7x7xi64>
    memref.copy %alloc_12, %alloc_31 : memref<7x7xi64> to memref<7x7xi64>
    %alloc_32 = memref.alloc() : memref<11x2x11xi16>
    %91 = math.ipowi %reduced, %reduced : tensor<i32>
    vector.print %77 : vector<7xi1>
    %92 = vector.bitcast %78 : vector<7xf16> to vector<7xf16>
    %93 = memref.load %alloc_20[%c0, %c5] : memref<7x7xi32>
    %94 = arith.ceildivsi %c691347664_i32, %c768949949_i32 : i32
    %95 = vector.shuffle %70, %53 [0, 1, 2, 4, 5, 8, 10, 13] : vector<7x7xi1>, vector<7x7xi1>
    %96 = math.log %4 : tensor<7x7xf16>
    %splat = tensor.splat %cst_2 : tensor<11x2x11xf32>
    %97 = math.round %10 : tensor<11x2x11xf32>
    %98 = math.exp %15 : tensor<11x2x11xf32>
    %99 = vector.flat_transpose %40 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
    %100 = index.sub %c9, %59
    %101 = math.round %transposed : tensor<2x7xf16>
    %102 = arith.divsi %true, %true_3 : i1
    %103 = arith.maxui %true, %false : i1
    %104 = bufferization.to_tensor %alloc_7 : memref<7x7xf32>
    memref.alloca_scope  {
      %245 = affine.if affine_set<(d0) : (-d0 + 16 == 0, d0 + 32 >= 0, (d0 ceildiv 4 + d0) mod 2 == 0)>(%c11) -> i16 {
        %271 = math.ctpop %c691347664_i32 : i32
        %272 = math.cos %8 : tensor<7x7xf16>
        %273 = index.maxs %48, %48
        %274 = math.atan2 %cst_5, %cst_5 : f32
        %dest_68, %accumulated_value_69 = vector.scan <minsi>, %53, %77 {inclusive = false, reduction_dim = 0 : i64} : vector<7x7xi1>, vector<7xi1>
        %275 = vector.broadcast %cst_0 : f32 to vector<11x2x11xf32>
        %276 = vector.fma %275, %275, %275 : vector<11x2x11xf32>
        %277 = bufferization.to_tensor %alloc_17 : memref<2xf16>
        %278 = arith.shrui %c123861668_i64, %c123861668_i64 : i64
        affine.yield %c-5339_i16 : i16
      } else {
        %271 = index.mul %c10, %71
        %272 = index.sizeof
        %273 = arith.minf %cst_4, %cst_5 : f32
        %274 = vector.extract %43[0] : vector<1xi64>
        %275 = arith.subi %true_3, %true : i1
        %dest_68, %accumulated_value_69 = vector.scan <minui>, %70, %77 {inclusive = false, reduction_dim = 0 : i64} : vector<7x7xi1>, vector<7xi1>
        %276 = math.roundeven %transposed : tensor<2x7xf16>
        %277 = math.ipowi %true_3, %false : i1
        affine.yield %c-754_i16 : i16
      }
      %246 = math.ctpop %c31661_i16 : i16
      %247 = index.divu %39, %71
      %248 = math.exp %transposed : tensor<2x7xf16>
      %249 = index.casts %c15 : index to i32
      %250 = vector.matrix_multiply %78, %78 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf16>, vector<7xf16>) -> vector<1xf16>
      %251 = vector.broadcast %c-5339_i16 : i16 to vector<i16>
      vector.transfer_write %251, %30[%c13] : vector<i16>, memref<2xi16>
      %alloc_65 = memref.alloc() : memref<7x2xi32>
      %252 = math.round %cst_1 : f16
      memref.tensor_store %13, %alloc_11 : memref<7x2xi1>
      %253 = scf.execute_region -> vector<7x7xi1> {
        %271 = index.ceildivu %48, %c9
        %272 = math.exp %1 : tensor<2xf32>
        %273 = math.log10 %12 : tensor<11x2x11xf16>
        %274 = index.casts %c14 : index to i32
        %dest_68, %accumulated_value_69 = vector.scan <minui>, %53, %77 {inclusive = true, reduction_dim = 0 : i64} : vector<7x7xi1>, vector<7xi1>
        %275 = index.sub %c7, %39
        %276 = vector.broadcast %c9 : index to vector<1xindex>
        %277 = vector.broadcast %true : i1 to vector<1xi1>
        vector.scatter %alloc_11[%c1, %c1] [%276], %277, %277 : memref<7x2xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
        %c9453_i16 = arith.constant 9453 : i16
        %278 = index.sizeof
        %279 = arith.minf %cst_0, %cst_2 : f32
        %280 = vector.reduction <maxf>, %78 : vector<7xf16> into f16
        %281 = math.log10 %1 : tensor<2xf32>
        %282 = arith.subi %c768949949_i32, %c768949949_i32 : i32
        %283 = math.round %23 : tensor<f32>
        %284 = vector.reduction <add>, %250 : vector<1xf16> into f16
        %285 = arith.divui %c-5339_i16, %c-754_i16 : i16
        scf.yield %53 : vector<7x7xi1>
      }
      %254 = math.round %4 : tensor<7x7xf16>
      memref.tensor_store %9, %alloc_14 : memref<7x2xi64>
      %255 = index.divs %c4, %c6
      %c2077981687_i32 = arith.constant 2077981687 : i32
      %256 = vector.broadcast %c577334001_i32 : i32 to vector<i32>
      vector.transfer_write %256, %alloc_9[%71] : vector<i32>, memref<2xi32>
      %dest_66, %accumulated_value_67 = vector.scan <add>, %53, %77 {inclusive = false, reduction_dim = 0 : i64} : vector<7x7xi1>, vector<7xi1>
      memref.assume_alignment %alloc_8, 1 : memref<11x2x11xi16>
      %257 = math.ceil %4 : tensor<7x7xf16>
      %258 = arith.floordivsi %c691347664_i32, %c768949949_i32 : i32
      %259 = arith.cmpi ugt, %c-5339_i16, %c-754_i16 : i16
      %260 = memref.alloca_scope  -> (i16) {
        %271 = arith.shli %c691347664_i32, %c691347664_i32 : i32
        %272 = math.cttz %3 : tensor<11x2x11xi64>
        %273 = affine.load %alloc_6[%c10, %c11, %c5] : memref<11x2x11xi64>
        %rank_68 = tensor.rank %87 : tensor<7x11xi64>
        %274 = math.exp %1 : tensor<2xf32>
        %275 = arith.ceildivsi %273, %273 : i64
        %276 = math.exp %4 : tensor<7x7xf16>
        %277 = math.roundeven %10 : tensor<11x2x11xf32>
        memref.tensor_store %14, %alloc_16 : memref<2xi16>
        %278 = math.ctpop %14 : tensor<2xi16>
        %279 = vector.broadcast %true : i1 to vector<2xi1>
        %280 = vector.maskedload %alloc_11[%c1, %c1], %279, %279 : memref<7x2xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
        %281 = index.casts %c123861668_i64 : i64 to index
        memref.store %c-5339_i16, %alloc_16[%c1] : memref<2xi16>
        %282 = vector.extract_strided_slice %53 {offsets = [1], sizes = [6], strides = [1]} : vector<7x7xi1> to vector<6x7xi1>
        %283 = vector.create_mask %64 : vector<2xi1>
        %284 = vector.extract %43[0] : vector<1xi64>
        %285 = math.log1p %12 : tensor<11x2x11xf16>
        %286 = arith.divf %cst_2, %cst_5 : f32
        %287 = math.ipowi %3, %49 : tensor<11x2x11xi64>
        %expanded = tensor.expand_shape %8 [[0], [1, 2]] : tensor<7x7xf16> into tensor<7x7x1xf16>
        %288 = math.rsqrt %23 : tensor<f32>
        %289 = math.cttz %collapsed : tensor<14xi64>
        %290 = math.log1p %18 : tensor<2x7xf16>
        %291 = arith.remf %cst_5, %cst_2 : f32
        %292 = arith.minf %cst_1, %cst_1 : f16
        %293 = index.divs %255, %c15
        %alloca_69 = memref.alloca() : memref<7x7xf32>
        %294 = vector.broadcast %false : i1 to vector<2x2xi1>
        %295 = vector.outerproduct %280, %280, %294 {kind = #vector.kind<minui>} : vector<2xi1>, vector<2xi1>
        vector.print %92 : vector<7xf16>
        %296 = vector.reduction <minf>, %78 : vector<7xf16> into f16
        %297 = math.fma %1, %16, %17 : tensor<2xf32>
        %298 = math.expm1 %splat : tensor<11x2x11xf32>
        memref.alloca_scope.return %c31661_i16 : i16
      }
      %261 = scf.index_switch %c11 -> index 
      case 1 {
        vector.print %43 : vector<1xi64>
        %271 = math.copysign %4, %8 : tensor<7x7xf16>
        %272 = math.atan2 %12, %12 : tensor<11x2x11xf16>
        %273 = math.ctlz %9 : tensor<7x2xi64>
        %274 = arith.shrsi %260, %c-754_i16 : i16
        %alloca_68 = memref.alloca() : memref<7x2xf32>
        %275 = arith.shrsi %true, %false : i1
        %276 = vector.broadcast %48 : index to vector<7xindex>
        %277 = vector.broadcast %c31661_i16 : i16 to vector<7xi16>
        vector.scatter %alloc_16[%c0] [%276], %77, %277 : memref<2xi16>, vector<7xindex>, vector<7xi1>, vector<7xi16>
        %278 = vector.extract %43[0] : vector<1xi64>
        %279 = math.copysign %4, %8 : tensor<7x7xf16>
        %280 = index.divu %59, %c10
        %281 = vector.broadcast %cst_1 : f16 to vector<11xf16>
        vector.transfer_write %281, %alloc_18[%c9, %65] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<11xf16>, memref<7x7xf16>
        %cast = tensor.cast %3 : tensor<11x2x11xi64> to tensor<?x?x?xi64>
        %282 = math.tanh %cst_1 : f16
        %alloc_69 = memref.alloc() : memref<7x2xi16>
        %283 = math.copysign %cst_1, %cst_1 : f16
        scf.yield %247 : index
      }
      case 2 {
        memref.tensor_store %11, %alloc_17 : memref<2xf16>
        %271 = arith.minui %c31661_i16, %c31661_i16 : i16
        %alloca_68 = memref.alloca() : memref<2xi16>
        %272 = arith.divf %cst_4, %cst_5 : f32
        %273 = vector.broadcast %false : i1 to vector<7x2xi1>
        %274 = vector.broadcast %c768949949_i32 : i32 to vector<7x2xi32>
        %275 = vector.gather %13[%45, %c9] [%274], %273, %273 : tensor<7x2xi1>, vector<7x2xi32>, vector<7x2xi1>, vector<7x2xi1> into vector<7x2xi1>
        vector.print %21 : vector<2xi64>
        %276 = math.fma %splat, %10, %15 : tensor<11x2x11xf32>
        %277 = tensor.empty() : tensor<2xi64>
        %278 = vector.broadcast %c691347664_i32 : i32 to vector<2xi32>
        %279 = vector.multi_reduction <minsi>, %274, %278 [0] : vector<7x2xi32> to vector<2xi32>
        %280 = vector.flat_transpose %77 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
        %281 = math.ctpop %13 : tensor<7x2xi1>
        %282 = math.round %104 : tensor<7x7xf32>
        %283 = arith.mulf %cst_2, %cst_4 : f32
        %284 = vector.broadcast %45 : index to vector<1xindex>
        %285 = vector.broadcast %false : i1 to vector<1xi1>
        %286 = vector.broadcast %c577334001_i32 : i32 to vector<1xi32>
        vector.scatter %alloc_20[%c2, %c2] [%284], %285, %286 : memref<7x7xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
        %287 = math.exp %7 : tensor<7x7xf32>
        %288 = arith.andi %c123861668_i64, %c123861668_i64 : i64
        scf.yield %24 : index
      }
      case 3 {
        %271 = vector.extract_strided_slice %250 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
        %272 = index.sizeof
        %273 = math.ceil %11 : tensor<2xf16>
        %274 = math.rsqrt %16 : tensor<2xf32>
        %275 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %271, %250, %cst_1 : vector<1xf16>, vector<1xf16> into f16
        %276 = math.log1p %8 : tensor<7x7xf16>
        %277 = bufferization.to_tensor %alloc_7 : memref<7x7xf32>
        %278 = vector.insertelement %c123861668_i64, %43[%65 : index] : vector<1xi64>
        %expanded = tensor.expand_shape %12 [[0], [1], [2, 3]] : tensor<11x2x11xf16> into tensor<11x2x11x1xf16>
        %279 = math.expm1 %10 : tensor<11x2x11xf32>
        %280 = arith.shrsi %260, %c-754_i16 : i16
        %281 = vector.insertelement %c123861668_i64, %99[%71 : index] : vector<2xi64>
        %282 = math.ctpop %9 : tensor<7x2xi64>
        %283 = math.rsqrt %7 : tensor<7x7xf32>
        %284 = vector.broadcast %cst_0 : f32 to vector<7x2xf32>
        %285 = vector.fma %284, %284, %284 : vector<7x2xf32>
        %alloc_68 = memref.alloc() : memref<2x7xi64>
        %286 = tensor.empty() : tensor<7x7xi64>
        %287 = linalg.matmul ins(%9, %alloc_68 : tensor<7x2xi64>, memref<2x7xi64>) outs(%286 : tensor<7x7xi64>) -> tensor<7x7xi64>
        scf.yield %c1 : index
      }
      default {
        %271 = vector.bitcast %70 : vector<7x7xi1> to vector<7x7xi1>
        %272 = math.log %10 : tensor<11x2x11xf32>
        %expanded = tensor.expand_shape %2 [[0], [1, 2]] : tensor<7x7xi16> into tensor<7x7x1xi16>
        %273 = math.ctpop %9 : tensor<7x2xi64>
        %274 = memref.load %30[%c0] : memref<2xi16>
        %275 = arith.floordivsi %true_3, %false : i1
        %alloc_68 = memref.alloc() : memref<11x2x11xi1>
        %276 = vector.extract_strided_slice %53 {offsets = [5], sizes = [1], strides = [1]} : vector<7x7xi1> to vector<1x7xi1>
        %277 = math.ipowi %3, %3 : tensor<11x2x11xi64>
        %278 = math.log1p %11 : tensor<2xf16>
        %279 = math.log1p %10 : tensor<11x2x11xf32>
        %dest_69, %accumulated_value_70 = vector.scan <mul>, %70, %77 {inclusive = false, reduction_dim = 1 : i64} : vector<7x7xi1>, vector<7xi1>
        %280 = arith.shrsi %260, %c-754_i16 : i16
        %281 = vector.multi_reduction <mul>, %76, %cst_1 [0] : vector<7xf16> to f16
        %282 = math.log10 %1 : tensor<2xf32>
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_71 = arith.constant 0 : i16
        %283 = vector.transfer_read %expanded[%c8, %39, %45], %c0_i16_71 {permutation_map = affine_map<(d0, d1, d2) -> (d0, 0)>} : tensor<7x7x1xi16>, vector<7x7xi16>
        scf.yield %c1 : index
      }
      %262 = arith.cmpi uge, %c-754_i16, %c31661_i16 : i16
      %263 = math.atan2 %cst_0, %cst_0 : f32
      %264 = index.divu %39, %c11
      %265 = vector.broadcast %c123861668_i64 : i64 to vector<2x2xi64>
      %266 = vector.outerproduct %99, %21, %265 {kind = #vector.kind<xor>} : vector<2xi64>, vector<2xi64>
      %267 = vector.splat %cst : vector<11x2x11xf32>
      %from_elements = tensor.from_elements %cst_5, %cst_4 : tensor<2xf32>
      %268 = vector.load %35[%c5, %c5] : memref<7x7xf16>, vector<2xf16>
      %269 = vector.multi_reduction <maxf>, %268, %268 [] : vector<2xf16> to vector<2xf16>
      %270 = arith.minsi %c-754_i16, %c31661_i16 : i16
    }
    %105 = arith.minf %cst_0, %cst_2 : f32
    %collapsed_33 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<11x2x11xi16> into tensor<22x11xi16>
    %c131418958_i64 = arith.constant 131418958 : i64
    %106 = bufferization.to_tensor %alloc_14 : memref<7x2xi64>
    %107 = tensor.empty() : tensor<7x7xi1>
    %collapsed_34 = tensor.collapse_shape %10 [[0, 1], [2]] : tensor<11x2x11xf32> into tensor<22x11xf32>
    vector.print %76 : vector<7xf16>
    %108 = math.exp %22 : tensor<f32>
    %109 = math.log1p %18 : tensor<2x7xf16>
    %110 = memref.atomic_rmw andi %c123861668_i64, %alloc_6[%c8, %c0, %c10] : (i64, memref<11x2x11xi64>) -> i64
    %111 = vector.reduction <maxf>, %92 : vector<7xf16> into f16
    %112 = bufferization.to_memref %49 : memref<11x2x11xi64>
    %113 = vector.broadcast %true_3 : i1 to vector<11x2x11xi1>
    scf.execute_region {
      %245 = index.divu %58, %65
      %alloca_65 = memref.alloca() : memref<7x2xi64>
      %246 = math.atan2 %4, %8 : tensor<7x7xf16>
      %247 = arith.remf %cst, %cst_0 : f32
      %248 = bufferization.to_tensor %alloc_17 : memref<2xf16>
      %249 = tensor.empty() : tensor<2x11x11xi1>
      %250 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%249 : tensor<2x11x11xi1>) outs(%62 : tensor<11x2x11xi1>) {
      ^bb0(%in: i1, %out: i1):
        %258 = tensor.empty() : tensor<11x2x11xi64>
        %extracted_70 = tensor.extract %16[%c1] : tensor<2xf32>
        %259 = vector.extract_strided_slice %70 {offsets = [4], sizes = [3], strides = [1]} : vector<7x7xi1> to vector<3x7xi1>
        %alloc_71 = memref.alloc() : memref<2xf16>
        memref.copy %alloc_17, %alloc_71 : memref<2xf16> to memref<2xf16>
        %260 = math.ipowi %9, %9 : tensor<7x2xi64>
        %false_72 = index.bool.constant false
        %261 = vector.broadcast %c123861668_i64 : i64 to vector<2x2xi64>
        %262 = vector.outerproduct %99, %21, %261 {kind = #vector.kind<maxui>} : vector<2xi64>, vector<2xi64>
        %263 = arith.negf %cst_1 : f16
        %264 = math.exp %11 : tensor<2xf16>
        %265 = vector.broadcast %59 : index to vector<7xindex>
        %266 = vector.broadcast %c123861668_i64 : i64 to vector<7xi64>
        vector.scatter %alloc_6[%c6, %c0, %c8] [%265], %77, %266 : memref<11x2x11xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
        %267 = math.ipowi %collapsed, %collapsed : tensor<14xi64>
        %268 = math.cos %1 : tensor<2xf32>
        %269 = vector.splat %c12 : vector<7x2xindex>
        %270 = math.exp %7 : tensor<7x7xf32>
        %271 = arith.negf %cst_4 : f32
        %272 = vector.broadcast %24 : index to vector<2xindex>
        %273 = vector.broadcast %true_3 : i1 to vector<2xi1>
        vector.scatter %alloc_6[%c5, %c0, %c4] [%272], %273, %21 : memref<11x2x11xi64>, vector<2xindex>, vector<2xi1>, vector<2xi64>
        %splat_73 = tensor.splat %true : tensor<7x2xi1>
        %274 = arith.shrui %c768949949_i32, %c691347664_i32 : i32
        %cast = tensor.cast %19 : tensor<i32> to tensor<i32>
        %275 = index.ceildivu %c3, %59
        %276 = arith.minf %cst_2, %cst_5 : f32
        %277 = math.log %16 : tensor<2xf32>
        %278 = math.exp2 %splat : tensor<11x2x11xf32>
        %279 = index.sub %c10, %48
        %280 = arith.negf %extracted_70 : f32
        %281 = bufferization.to_tensor %alloc_13 : memref<7x7xf16>
        %282 = math.round %splat : tensor<11x2x11xf32>
        %alloc_74 = memref.alloc() : memref<11x2x11xf32>
        %283 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 + d2 - 4, d3 + d2 - 4, d3, d3 + d2 - 4)>(%c6, %245, %c0, %c15)
        %284 = arith.negf %cst : f32
        %collapsed_75 = tensor.collapse_shape %4 [[0, 1]] : tensor<7x7xf16> into tensor<49xf16>
        %285 = index.castu %c123861668_i64 : i64 to index
        linalg.yield %in : i1
      } -> tensor<11x2x11xi1>
      %alloc_66 = memref.alloc() : memref<7x7xi16>
      %251 = vector.broadcast %c-754_i16 : i16 to vector<7x7xi16>
      %252 = vector.broadcast %c768949949_i32 : i32 to vector<7x7xi32>
      %253 = vector.gather %alloc_66[%58, %75] [%252], %70, %251 : memref<7x7xi16>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xi16> into vector<7x7xi16>
      %254 = math.roundeven %104 : tensor<7x7xf32>
      %255 = arith.ceildivsi %c31661_i16, %c-754_i16 : i16
      %rank_67 = tensor.rank %collapsed_34 : tensor<22x11xf32>
      bufferization.dealloc_tensor %248 : tensor<2xf16>
      %alloc_68 = memref.alloc() : memref<11x2x11xf32>
      memref.tensor_store %15, %alloc_68 : memref<11x2x11xf32>
      %256 = index.sub %c3, %c7
      %alloca_69 = memref.alloca() : memref<7x2xi16>
      %257 = math.roundeven %17 : tensor<2xf32>
      memref.copy %alloc_13, %35 : memref<7x7xf16> to memref<7x7xf16>
      scf.yield
    }
    %114 = vector.broadcast %c15 : index to vector<7xindex>
    vector.scatter %alloc_18[%c1, %c1] [%114], %77, %76 : memref<7x7xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
    %115 = math.round %10 : tensor<11x2x11xf32>
    %116 = vector.bitcast %99 : vector<2xi64> to vector<2xi64>
    affine.for %arg0 = 0 to 13 {
    }
    %117 = arith.remf %cst_1, %cst_1 : f16
    %118 = math.copysign %11, %11 : tensor<2xf16>
    %119 = scf.while (%arg0 = %alloc_9) : (memref<2xi32>) -> memref<2xi32> {
      %extracted_65 = tensor.extract %2[%c6, %c4] : tensor<7x7xi16>
      %245 = index.mul %39, %c6
      %246 = vector.broadcast %true : i1 to vector<2xi1>
      %247 = vector.multi_reduction <add>, %70, %false [0, 1] : vector<7x7xi1> to i1
      %248 = math.fpowi %cst_4, %c768949949_i32 : f32, i32
      %249 = math.ctpop %c31661_i16 : i16
      %250 = index.sub %c11, %c0
      %251 = arith.floordivsi %extracted_65, %extracted_65 : i16
      scf.condition(%true) %alloc_9 : memref<2xi32>
    } do {
    ^bb0(%arg0: memref<2xi32>):
      %245 = math.exp %cst : f32
      %246 = vector.broadcast %c123861668_i64 : i64 to vector<i64>
      %247 = vector.transfer_write %246, %9[%45, %c6] : vector<i64>, tensor<7x2xi64>
      %248 = math.exp %17 : tensor<2xf32>
      %249 = math.ipowi %c123861668_i64, %c123861668_i64 : i64
      %250 = vector.broadcast %cst_4 : f32 to vector<f32>
      %251 = vector.transfer_write %250, %104[%c2, %100] : vector<f32>, tensor<7x7xf32>
      %252 = arith.cmpi eq, %false, %true : i1
      %253 = vector.splat %cst_5 : vector<11x2x11xf32>
      %254 = vector.bitcast %99 : vector<2xi64> to vector<2xi64>
      %255 = vector.splat %c123861668_i64 : vector<2xi64>
      memref.alloca_scope  {
        %259 = math.cos %4 : tensor<7x7xf16>
        %260 = vector.extract_strided_slice %92 {offsets = [4], sizes = [1], strides = [1]} : vector<7xf16> to vector<1xf16>
        %true_66 = index.bool.constant true
        %261 = vector.broadcast %cst : f32 to vector<11x2x11xf32>
        %262 = vector.fma %261, %261, %261 : vector<11x2x11xf32>
        %true_67 = index.bool.constant true
        %263 = math.absf %cst_2 : f32
        %264 = math.atan2 %cst_5, %cst_0 : f32
        %265 = math.fma %10, %15, %splat : tensor<11x2x11xf32>
        memref.copy %30, %alloc_16 : memref<2xi16> to memref<2xi16>
        %266 = vector.broadcast %cst_0 : f32 to vector<7x2xf32>
        %267 = vector.fma %266, %266, %266 : vector<7x2xf32>
        %268 = vector.multi_reduction <minui>, %113, %113 [] : vector<11x2x11xi1> to vector<11x2x11xi1>
        %269 = math.tan %18 : tensor<2x7xf16>
        %270 = arith.maxui %true, %true_67 : i1
        %271 = arith.maxui %true_3, %true_67 : i1
        %272 = math.copysign %4, %4 : tensor<7x7xf16>
        %273 = vector.broadcast %cst_0 : f32 to vector<11x11xf32>
        %dest_68, %accumulated_value_69 = vector.scan <maxf>, %262, %273 {inclusive = false, reduction_dim = 1 : i64} : vector<11x2x11xf32>, vector<11x11xf32>
        %274 = math.ceil %4 : tensor<7x7xf16>
        %275 = math.log10 %cst_2 : f32
        %276 = index.ceildivs %c2, %100
        %277 = vector.load %alloc_10[%c5, %c0, %c1] : memref<11x2x11xi64>, vector<11x2x11xi64>
        %alloc_70 = memref.alloc() : memref<7x2xi64>
        memref.copy %alloc_14, %alloc_70 : memref<7x2xi64> to memref<7x2xi64>
        %278 = arith.remf %cst_4, %cst_0 : f32
        %alloca_71 = memref.alloca() : memref<7x2xi1>
        %279 = math.atan2 %cst_2, %cst_2 : f32
        %280 = math.atan2 %18, %transposed : tensor<2x7xf16>
        %281 = math.log %cst_5 : f32
        %282 = arith.mulf %cst, %cst_4 : f32
        %283 = arith.andi %c-754_i16, %c31661_i16 : i16
        %284 = arith.maxui %true, %true_3 : i1
        memref.tensor_store %8, %alloc_13 : memref<7x7xf16>
        %c1703754870_i64 = arith.constant 1703754870 : i64
        %from_elements = tensor.from_elements %c-754_i16, %c31661_i16, %c31661_i16, %c-754_i16, %c31661_i16, %c-5339_i16, %c31661_i16, %c-5339_i16, %c-754_i16, %c31661_i16, %c31661_i16, %c31661_i16, %c-754_i16, %c31661_i16, %c-5339_i16, %c31661_i16, %c31661_i16, %c-5339_i16, %c-5339_i16, %c-5339_i16, %c-754_i16, %c-754_i16, %c-5339_i16, %c-754_i16, %c-5339_i16, %c31661_i16, %c31661_i16, %c-754_i16, %c31661_i16, %c-5339_i16, %c-754_i16, %c31661_i16, %c-754_i16, %c-5339_i16, %c-5339_i16, %c-754_i16, %c-5339_i16, %c-754_i16, %c-5339_i16, %c-754_i16, %c-5339_i16, %c31661_i16, %c-5339_i16, %c31661_i16, %c-5339_i16, %c-5339_i16, %c31661_i16, %c31661_i16, %c31661_i16 : tensor<7x7xi16>
      }
      %256 = vector.flat_transpose %21 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
      %expanded = tensor.expand_shape %collapsed [[0, 1]] : tensor<14xi64> into tensor<14x1xi64>
      %257 = math.log1p %23 : tensor<f32>
      memref.tensor_store %17, %alloc_21 : memref<2xf32>
      %alloc_65 = memref.alloc() : memref<7x7xi16>
      %258 = math.log10 %12 : tensor<11x2x11xf16>
      scf.yield %arg0 : memref<2xi32>
    }
    %splat_35 = tensor.splat %c577334001_i32 : tensor<7x2xi32>
    %120 = math.tan %15 : tensor<11x2x11xf32>
    scf.execute_region {
      %rank_65 = tensor.rank %13 : tensor<7x2xi1>
      %245 = math.roundeven %11 : tensor<2xf16>
      %246 = math.exp %10 : tensor<11x2x11xf32>
      affine.store %c123861668_i64, %alloc_10[%c0, %c0, %c15] : memref<11x2x11xi64>
      %247 = vector.extract_strided_slice %53 {offsets = [5], sizes = [2], strides = [1]} : vector<7x7xi1> to vector<2x7xi1>
      %248 = vector.flat_transpose %40 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
      %249 = math.fma %cst_4, %cst_2, %cst_2 : f32
      %250 = arith.addi %c768949949_i32, %c577334001_i32 : i32
      %251 = vector.broadcast %cst_1 : f16 to vector<11xf16>
      vector.transfer_write %251, %alloc_18[%24, %c9] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<11xf16>, memref<7x7xf16>
      %c0_i64 = arith.constant 0 : i64
      %c0_i64_66 = arith.constant 0 : i64
      %252 = vector.transfer_read %3[%c4, %c0, %59], %c0_i64_66 : tensor<11x2x11xi64>, vector<i64>
      %splat_67 = tensor.splat %c577334001_i32 : tensor<7x7xi32>
      %253 = vector.broadcast %c31661_i16 : i16 to vector<i16>
      %254 = vector.transfer_write %253, %14[%48] : vector<i16>, tensor<2xi16>
      %255 = arith.remf %cst, %cst_2 : f32
      %256 = math.round %1 : tensor<2xf32>
      %257 = vector.load %alloc_18[%c0, %c4] : memref<7x7xf16>, vector<7x7xf16>
      %258 = affine.if affine_set<(d0) : (d0 + 128 >= 0)>(%c4) -> i1 {
        %259 = math.exp %17 : tensor<2xf32>
        %260 = vector.flat_transpose %248 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
        %261 = vector.insertelement %c123861668_i64, %260[%c6 : index] : vector<2xi64>
        %262 = arith.shrui %c123861668_i64, %c123861668_i64 : i64
        %263 = index.maxu %81, %c5
        %264 = math.round %cst_0 : f32
        %265 = vector.reduction <add>, %92 : vector<7xf16> into f16
        %266 = arith.remf %cst_4, %cst_4 : f32
        affine.yield %true_3 : i1
      } else {
        %extracted_68 = tensor.extract %12[%c4, %c1, %c6] : tensor<11x2x11xf16>
        %259 = vector.load %35[%c1, %c6] : memref<7x7xf16>, vector<11x2x11xf16>
        affine.store %cst_1, %35[%c0, %c14] : memref<7x7xf16>
        %260 = math.expm1 %collapsed_34 : tensor<22x11xf32>
        %261 = arith.ceildivsi %c691347664_i32, %c577334001_i32 : i32
        %extracted_69 = tensor.extract %3[%c6, %c0, %c1] : tensor<11x2x11xi64>
        %262 = vector.broadcast %cst : f32 to vector<2x7xf32>
        %263 = vector.transfer_write %262, %10[%48, %c12, %c4] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<2x7xf32>, tensor<11x2x11xf32>
        %264 = arith.cmpi ule, %c123861668_i64, %c0_i64 : i64
        affine.yield %true : i1
      }
      scf.yield
    }
    %121 = arith.maxui %c691347664_i32, %c768949949_i32 : i32
    %122 = arith.remf %cst_0, %cst_2 : f32
    %alloc_36 = memref.alloc() : memref<7x7xf32>
    memref.copy %alloc_7, %alloc_36 : memref<7x7xf32> to memref<7x7xf32>
    %123 = memref.atomic_rmw mulf %cst_1, %alloc_17[%c0] : (f16, memref<2xf16>) -> f16
    %alloc_37 = memref.alloc() : memref<7x7xi32>
    %124 = vector.extract_strided_slice %70 {offsets = [1], sizes = [2], strides = [1]} : vector<7x7xi1> to vector<2x7xi1>
    scf.execute_region {
      %splat_65 = tensor.splat %c123861668_i64 : tensor<11x2x11xi64>
      %245 = math.fpowi %cst_5, %c577334001_i32 : f32, i32
      %246 = scf.execute_region -> index {
        %260 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 + 2, d3, d0 + 16)>(%c6, %c6, %c11, %c0)
        %261 = index.maxu %c8, %c6
        %262 = math.tanh %cst_0 : f32
        %263 = math.exp %1 : tensor<2xf32>
        %264 = math.ipowi %13, %13 : tensor<7x2xi1>
        %265 = vector.extract %99[1] : vector<2xi64>
        %266 = math.exp %11 : tensor<2xf16>
        %cast = tensor.cast %collapsed : tensor<14xi64> to tensor<?xi64>
        affine.store %c-5339_i16, %30[%c14] : memref<2xi16>
        %267 = index.divs %100, %c3
        %268 = affine.min affine_map<(d0, d1) -> (d0 + d1, (d1 mod 4) mod 8, (d1 mod 4) mod 8, d0)>(%c6, %c9)
        %269 = memref.atomic_rmw mulf %cst_1, %alloc_18[%c2, %c3] : (f16, memref<7x7xf16>) -> f16
        %false_69 = arith.constant false
        %false_70 = arith.constant false
        %270 = vector.transfer_read %107[%c0, %267], %false_70 : tensor<7x7xi1>, vector<i1>
        %271 = arith.addf %cst_2, %cst_2 : f32
        affine.store %cst_1, %alloc[%c7, %c3] : memref<7x2xf16>
        %272 = memref.realloc %alloc_17 : memref<2xf16> to memref<11xf16>
        scf.yield %c11 : index
      }
      %247 = index.divu %c2, %c2
      %248 = vector.broadcast %cst_4 : f32 to vector<2xf32>
      %249 = vector.fma %248, %248, %248 : vector<2xf32>
      %collapsed_66 = tensor.collapse_shape %87 [[0, 1]] : tensor<7x11xi64> into tensor<77xi64>
      %250 = arith.floordivsi %true_3, %true : i1
      %251 = vector.broadcast %cst_4 : f32 to vector<11x2x11xf32>
      %252 = vector.fma %251, %251, %251 : vector<11x2x11xf32>
      %253 = tensor.empty() : tensor<7x7xi32>
      %254 = math.fpowi %4, %253 : tensor<7x7xf16>, tensor<7x7xi32>
      %255 = math.round %10 : tensor<11x2x11xf32>
      %cst_67 = arith.constant 1.000000e+00 : f32
      %256 = vector.transfer_read %17[%24], %cst_67 : tensor<2xf32>, vector<f32>
      %257 = vector.flat_transpose %43 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
      memref.tensor_store %17, %alloc_21 : memref<2xf32>
      %258 = vector.broadcast %false : i1 to vector<2xi1>
      %259 = vector.transfer_write %258, %6[%c3, %247, %247] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<2xi1>, tensor<11x2x11xi1>
      %rank_68 = tensor.rank %3 : tensor<11x2x11xi64>
      scf.if %true_3 {
        %260 = index.ceildivs %c8, %c6
        %261 = arith.maxsi %false, %true_3 : i1
        %262 = vector.flat_transpose %249 {columns = 1 : i32, rows = 2 : i32} : vector<2xf32> -> vector<2xf32>
        %263 = math.ceil %104 : tensor<7x7xf32>
        %inserted = tensor.insert %c-5339_i16 into %2[%c6, %c2] : tensor<7x7xi16>
        %true_69 = arith.constant true
        %false_70 = arith.constant false
        %264 = vector.transfer_read %6[%260, %c6, %c0], %false_70 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<11x2x11xi1>, vector<11xi1>
        %265 = memref.atomic_rmw ori %c123861668_i64, %112[%c3, %c0, %c1] : (i64, memref<11x2x11xi64>) -> i64
        %266 = vector.create_mask %247 : vector<2xi1>
      } else {
        %260 = index.maxu %c3, %c14
        %261 = math.log %4 : tensor<7x7xf16>
        %262 = arith.remf %cst_5, %cst : f32
        %263 = vector.shuffle %116, %21 [0, 3] : vector<2xi64>, vector<2xi64>
        %264 = math.copysign %8, %8 : tensor<7x7xf16>
        %265 = arith.minf %cst_1, %cst_1 : f16
        %266 = index.divu %c9, %64
        %extracted_69 = tensor.extract %15[%c0, %c1, %c9] : tensor<11x2x11xf32>
      }
      scf.yield
    }
    memref.tensor_store %5, %alloc_9 : memref<2xi32>
    %125 = math.round %cst : f32
    %126 = index.divu %c1, %c1
    %127 = index.floordivs %c0, %c5
    %dest_38, %accumulated_value_39 = vector.scan <maxsi>, %53, %77 {inclusive = false, reduction_dim = 1 : i64} : vector<7x7xi1>, vector<7xi1>
    %128 = bufferization.clone %alloc_19 : memref<7x2xi1> to memref<7x2xi1>
    memref.assume_alignment %alloc, 16 : memref<7x2xf16>
    %129 = vector.bitcast %40 : vector<2xi64> to vector<2xi64>
    affine.store %c691347664_i32, %alloc_9[%c3] : memref<2xi32>
    %130 = math.cos %11 : tensor<2xf16>
    %cst_40 = arith.constant 1.000000e+00 : f32
    %131 = vector.transfer_read %104[%45, %58], %cst_40 : tensor<7x7xf32>, vector<f32>
    %132 = arith.ceildivsi %c577334001_i32, %c768949949_i32 : i32
    %133 = vector.reduction <add>, %43 : vector<1xi64> into i64
    %134 = arith.maxui %c-5339_i16, %c-5339_i16 : i16
    %135 = index.ceildivs %48, %59
    %136 = tensor.empty() : tensor<2x11x11xi16>
    %137 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%136, %136, %136 : tensor<2x11x11xi16>, tensor<2x11x11xi16>, tensor<2x11x11xi16>) outs(%47 : tensor<11x2x11xi16>) {
    ^bb0(%in: i16, %in_65: i16, %in_66: i16, %out: i16):
      %245 = vector.broadcast %c9 : index to vector<1xindex>
      %246 = vector.broadcast %false : i1 to vector<1xi1>
      %247 = vector.broadcast %cst_1 : f16 to vector<1xf16>
      vector.scatter %alloc_18[%c6, %c0] [%245], %246, %247 : memref<7x7xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
      %248 = affine.if affine_set<(d0) : (-64 == 0, d0 >= 0)>(%c7) -> i16 {
        %alloc_75 = memref.alloc() : memref<11x2x11xf16>
        %269 = affine.load %alloc_6[%c1, %c6, %c1] : memref<11x2x11xi64>
        %270 = arith.remui %false, %true : i1
        %271 = math.round %17 : tensor<2xf32>
        %272 = index.divu %c10, %100
        %expanded = tensor.expand_shape %11 [[0, 1]] : tensor<2xf16> into tensor<2x1xf16>
        %273 = arith.addf %cst_2, %cst_0 : f32
        %274 = arith.minsi %c-754_i16, %c-5339_i16 : i16
        affine.yield %in_65 : i16
      } else {
        %269 = math.copysign %7, %7 : tensor<7x7xf32>
        %270 = arith.andi %c691347664_i32, %c577334001_i32 : i32
        %271 = arith.mulf %cst_2, %cst_0 : f32
        %rank_75 = tensor.rank %reduced : tensor<i32>
        %272 = affine.min affine_map<(d0) -> (-16)>(%c12)
        %273 = index.divs %272, %c13
        %274 = bufferization.to_tensor %alloc_9 : memref<2xi32>
        %collapsed_76 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<11x2x11xi16> into tensor<22x11xi16>
        affine.yield %c-754_i16 : i16
      }
      %249 = vector.create_mask %c7, %c5 : vector<7x7xi1>
      %250 = math.exp %cst : f32
      %alloca_67 = memref.alloca() : memref<2xi64>
      %251 = arith.shrsi %in, %c31661_i16 : i16
      %252 = vector.splat %c15 : vector<11x2x11xindex>
      %alloca_68 = memref.alloca() : memref<11x2x11xf32>
      %collapsed_69 = tensor.collapse_shape %18 [[0, 1]] : tensor<2x7xf16> into tensor<14xf16>
      %253 = math.fma %cst, %cst_4, %cst_0 : f32
      %254 = arith.remf %cst_0, %cst_5 : f32
      %dest_70, %accumulated_value_71 = vector.scan <minui>, %70, %77 {inclusive = true, reduction_dim = 0 : i64} : vector<7x7xi1>, vector<7xi1>
      %255 = math.tanh %cst_4 : f32
      memref.tensor_store %11, %alloc_17 : memref<2xf16>
      %256 = arith.floordivsi %c31661_i16, %c-5339_i16 : i16
      %257 = affine.if affine_set<(d0) : (d0 ceildiv 128 == 0)>(%c14) -> memref<2xi64> {
        %rank_75 = tensor.rank %14 : tensor<2xi16>
        %269 = index.sub %100, %rank_75
        %270 = index.ceildivu %c3, %126
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_76 = arith.constant 0 : i64
        %271 = vector.transfer_read %9[%75, %127], %c0_i64_76 : tensor<7x2xi64>, vector<i64>
        bufferization.dealloc_tensor %11 : tensor<2xf16>
        %272 = math.rsqrt %10 : tensor<11x2x11xf32>
        %273 = affine.load %alloc_20[%c1, %c7] : memref<7x7xi32>
        %274 = vector.load %alloc_16[%c1] : memref<2xi16>, vector<11x2x11xi16>
        %alloc_77 = memref.alloc() : memref<2xi64>
        affine.yield %alloc_77 : memref<2xi64>
      } else {
        %true_75 = index.bool.constant true
        %269 = arith.minf %cst_1, %cst_1 : f16
        %270 = math.log10 %8 : tensor<7x7xf16>
        %271 = arith.negf %cst_4 : f32
        %272 = vector.multi_reduction <mul>, %43, %43 [] : vector<1xi64> to vector<1xi64>
        %273 = arith.maxui %true_75, %true : i1
        %274 = vector.insertelement %cst_1, %76[%135 : index] : vector<7xf16>
        %275 = vector.extract %53[3] : vector<7x7xi1>
        %alloc_76 = memref.alloc() : memref<2xi64>
        affine.yield %alloc_76 : memref<2xi64>
      }
      %alloc_72 = memref.alloc() : memref<11x2x11xf16>
      memref.tensor_store %12, %alloc_72 : memref<11x2x11xf16>
      %258 = math.ipowi %84, %84 : tensor<7x1xi1>
      %259 = math.exp %1 : tensor<2xf32>
      %260 = math.ceil %12 : tensor<11x2x11xf16>
      %261 = math.tanh %cst_4 : f32
      %262 = arith.ceildivsi %in, %in_66 : i16
      %263 = arith.maxui %c123861668_i64, %c123861668_i64 : i64
      %264 = vector.flat_transpose %116 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
      %265 = math.ceil %23 : tensor<f32>
      %splat_73 = tensor.splat %true : tensor<11x2x11xi1>
      %266 = arith.remui %out, %in_66 : i16
      scf.execute_region {
        memref.tensor_store %3, %112 : memref<11x2x11xi64>
        %cast = tensor.cast %14 : tensor<2xi16> to tensor<?xi16>
        affine.store %cst_1, %alloc_18[%c9, %c0] : memref<7x7xf16>
        %269 = vector.broadcast %cst_2 : f32 to vector<f32>
        %270 = vector.transfer_write %269, %1[%c11] : vector<f32>, tensor<2xf32>
        %271 = math.round %cst_4 : f32
        %272 = vector.splat %c9 : vector<7x2xindex>
        %273 = math.log10 %cst_40 : f32
        %274 = math.tan %11 : tensor<2xf16>
        %275 = arith.addf %cst, %cst_0 : f32
        %276 = vector.broadcast %cst_2 : f32 to vector<2xf32>
        %277 = vector.fma %276, %276, %276 : vector<2xf32>
        %278 = vector.matrix_multiply %276, %276 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf32>, vector<2xf32>) -> vector<1xf32>
        %279 = index.sub %c0, %58
        %280 = vector.reduction <maxsi>, %77 : vector<7xi1> into i1
        %281 = arith.maxui %c123861668_i64, %c123861668_i64 : i64
        %alloc_75 = memref.alloc() : memref<7x7xi16>
        %282 = math.rsqrt %cst_5 : f32
        scf.yield
      }
      affine.store %c123861668_i64, %alloc_6[%c10, %c1, %c8] : memref<11x2x11xi64>
      %splat_74 = tensor.splat %c-5339_i16 : tensor<11x2x11xi16>
      %267 = bufferization.to_tensor %128 : memref<7x2xi1>
      %268 = index.ceildivu %64, %c13
      linalg.yield %c31661_i16 : i16
    } -> tensor<11x2x11xi16>
    %138 = math.round %4 : tensor<7x7xf16>
    %139 = tensor.empty() : tensor<2xf32>
    %mapped_41 = linalg.map ins(%17, %16 : tensor<2xf32>, tensor<2xf32>) outs(%139 : tensor<2xf32>)
      (%in: f32, %in_65: f32) {
        %245 = math.log10 %splat : tensor<11x2x11xf32>
        %246 = index.divs %c2, %127
        %247 = math.tan %104 : tensor<7x7xf32>
        %248 = arith.shrui %true, %true : i1
        %249 = math.ceil %23 : tensor<f32>
        %250 = vector.broadcast %135 : index to vector<11xindex>
        %251 = vector.broadcast %false : i1 to vector<11xi1>
        %252 = vector.broadcast %c123861668_i64 : i64 to vector<11xi64>
        vector.scatter %alloc_14[%c0, %c1] [%250], %251, %252 : memref<7x2xi64>, vector<11xindex>, vector<11xi1>, vector<11xi64>
        %253 = math.atan2 %15, %splat : tensor<11x2x11xf32>
        %254 = vector.broadcast %cst_5 : f32 to vector<2xf32>
        %255 = math.round %1 : tensor<2xf32>
        %generated = tensor.generate %c2, %100 {
        ^bb0(%arg0: index, %arg1: index):
          %271 = vector.extract %21[1] : vector<2xi64>
          %272 = bufferization.to_memref %7 : memref<7x7xf32>
          %273 = arith.minf %cst_4, %cst_40 : f32
          %274 = math.exp %4 : tensor<7x7xf16>
          tensor.yield %in : f32
        } : tensor<?x?xf32>
        %256 = vector.reduction <mul>, %76 : vector<7xf16> into f16
        %257 = math.log1p %1 : tensor<2xf32>
        %258 = math.round %17 : tensor<2xf32>
        vector.print %78 : vector<7xf16>
        %259 = math.cos %cst_1 : f16
        %260 = math.ceil %transposed : tensor<2x7xf16>
        %261 = arith.cmpi sle, %c577334001_i32, %c691347664_i32 : i32
        %collapsed_66 = tensor.collapse_shape %3 [[0, 1], [2]] : tensor<11x2x11xi64> into tensor<22x11xi64>
        %collapsed_67 = tensor.collapse_shape %104 [[0, 1]] : tensor<7x7xf32> into tensor<49xf32>
        %262 = math.fma %8, %4, %8 : tensor<7x7xf16>
        memref.assume_alignment %alloc_21, 4 : memref<2xf32>
        %263 = index.divu %75, %71
        %264 = math.floor %15 : tensor<11x2x11xf32>
        %265 = vector.flat_transpose %116 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
        %266 = vector.matrix_multiply %77, %77 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi1>, vector<7xi1>) -> vector<1xi1>
        %267 = math.log %splat : tensor<11x2x11xf32>
        %268 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %40, %40, %c123861668_i64 : vector<2xi64>, vector<2xi64> into i64
        %false_68 = index.bool.constant false
        %269 = scf.index_switch %24 -> memref<7x7xi16> 
        case 1 {
          vector.print %129 : vector<2xi64>
          %271 = arith.remf %cst_1, %cst_1 : f16
          %dest_70, %accumulated_value_71 = vector.scan <xor>, %70, %77 {inclusive = false, reduction_dim = 0 : i64} : vector<7x7xi1>, vector<7xi1>
          %272 = affine.min affine_map<(d0, d1, d2) -> (-d0)>(%48, %c2, %c13)
          affine.store %c123861668_i64, %alloc_6[%c3, %c0, %c8] : memref<11x2x11xi64>
          %273 = index.sub %c3, %c3
          %274 = vector.broadcast %cst_5 : f32 to vector<7x2xf32>
          %275 = vector.fma %274, %274, %274 : vector<7x2xf32>
          %276 = vector.broadcast %true_3 : i1 to vector<2xi1>
          %277 = vector.maskedload %alloc_21[%c0], %276, %254 : memref<2xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
          %278 = math.rsqrt %4 : tensor<7x7xf16>
          %279 = memref.atomic_rmw maxs %c-5339_i16, %alloc_8[%c10, %c1, %c7] : (i16, memref<11x2x11xi16>) -> i16
          %280 = vector.splat %cst_0 : vector<7x2xf32>
          %281 = math.copysign %4, %4 : tensor<7x7xf16>
          %282 = math.tanh %12 : tensor<11x2x11xf16>
          %283 = index.divu %c1, %c5
          memref.tensor_store %4, %alloc_13 : memref<7x7xf16>
          %284 = vector.multi_reduction <mul>, %40, %116 [] : vector<2xi64> to vector<2xi64>
          %alloc_72 = memref.alloc() : memref<7x7xi16>
          scf.yield %alloc_72 : memref<7x7xi16>
        }
        case 2 {
          %271 = bufferization.to_tensor %30 : memref<2xi16>
          %272 = vector.create_mask %75, %c13, %c1 : vector<11x2x11xi1>
          %273 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %265, %129, %c123861668_i64 : vector<2xi64>, vector<2xi64> into i64
          %274 = vector.extract %265[0] : vector<2xi64>
          %275 = vector.bitcast %78 : vector<7xf16> to vector<7xf16>
          %from_elements = tensor.from_elements %cst_5, %cst_2, %in, %in_65, %in_65, %cst_4, %cst_0, %in, %cst_4, %cst_4, %cst_2, %cst, %cst_40, %cst_4, %cst_40, %cst_2, %in_65, %in_65, %cst_0, %cst_40, %cst_4, %cst_4, %in_65, %in, %in, %cst_0, %in_65, %in, %in, %in_65, %cst_40, %cst_2, %cst_5, %cst, %in, %cst_4, %cst_5, %cst_40, %cst_40, %cst_5, %cst_4, %cst_2, %cst_40, %cst_40, %cst, %cst_5, %cst_5, %cst_0, %in : tensor<7x7xf32>
          %276 = vector.insertelement %cst_1, %275[%263 : index] : vector<7xf16>
          %cst_70 = arith.constant 5.401600e+04 : f16
          %277 = vector.maskedload %128[%c4, %c0], %266, %266 : memref<7x2xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
          %278 = vector.multi_reduction <minui>, %272, %true_3 [0, 1, 2] : vector<11x2x11xi1> to i1
          %279 = arith.remf %cst_4, %in_65 : f32
          %splat_71 = tensor.splat %c-5339_i16 : tensor<2xi16>
          %280 = vector.extract_strided_slice %99 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi64> to vector<2xi64>
          %281 = math.round %17 : tensor<2xf32>
          %282 = bufferization.to_tensor %30 : memref<2xi16>
          %283 = arith.remf %in_65, %in_65 : f32
          %alloc_72 = memref.alloc() : memref<7x7xi16>
          scf.yield %alloc_72 : memref<7x7xi16>
        }
        case 3 {
          %271 = memref.realloc %alloc_17 : memref<2xf16> to memref<2xf16>
          %272 = math.log %23 : tensor<f32>
          %273 = arith.minf %in, %cst_40 : f32
          %from_elements = tensor.from_elements %cst_0, %cst_0, %in, %cst_2, %cst_40, %cst_4, %cst_0, %cst_0, %cst_40, %cst, %cst_2, %cst_0, %cst_0, %cst_2 : tensor<7x2xf32>
          %274 = arith.remf %cst_5, %cst_4 : f32
          %275 = index.divu %39, %c13
          %expanded = tensor.expand_shape %49 [[0], [1], [2, 3]] : tensor<11x2x11xi64> into tensor<11x2x11x1xi64>
          %276 = math.log10 %in_65 : f32
          %277 = affine.min affine_map<(d0) -> (d0 floordiv 4, 0, d0 - d0 floordiv 2 - 32, (d0 floordiv 2) ceildiv 2)>(%126)
          %278 = vector.extract_strided_slice %265 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi64> to vector<2xi64>
          %279 = math.round %139 : tensor<2xf32>
          %280 = math.log1p %splat : tensor<11x2x11xf32>
          %281 = vector.broadcast %cst_0 : f32 to vector<7xf32>
          %282 = vector.maskedload %alloc_7[%c3, %c6], %77, %281 : memref<7x7xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
          %283 = vector.broadcast %cst_1 : f16 to vector<7x7xf16>
          %284 = vector.outerproduct %92, %92, %283 {kind = #vector.kind<mul>} : vector<7xf16>, vector<7xf16>
          %285 = vector.extract %278[1] : vector<2xi64>
          %286 = math.log10 %cst_0 : f32
          %alloc_70 = memref.alloc() : memref<7x7xi16>
          scf.yield %alloc_70 : memref<7x7xi16>
        }
        default {
          %271 = index.maxu %75, %c14
          %extracted_70 = tensor.extract %4[%c4, %c2] : tensor<7x7xf16>
          %expanded = tensor.expand_shape %collapsed_67 [[0, 1]] : tensor<49xf32> into tensor<49x1xf32>
          %272 = vector.reduction <maxf>, %78 : vector<7xf16> into f16
          %273 = vector.load %alloc_19[%c2, %c0] : memref<7x2xi1>, vector<2xi1>
          %274 = vector.splat %c15 : vector<11x2x11xindex>
          %275 = arith.addf %cst_2, %cst_40 : f32
          vector.print %99 : vector<2xi64>
          %276 = arith.cmpi ugt, %c31661_i16, %c31661_i16 : i16
          %alloc_71 = memref.alloc() : memref<f32>
          memref.tensor_store %23, %alloc_71 : memref<f32>
          %277 = arith.negf %cst_1 : f16
          %278 = vector.broadcast %false_68 : i1 to vector<7x2xi1>
          %279 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %70, %124, %278 : vector<7x7xi1>, vector<2x7xi1> into vector<7x2xi1>
          %280 = index.divu %59, %c15
          %inserted_72 = tensor.insert %c123861668_i64 into %3[%c3, %c0, %c4] : tensor<11x2x11xi64>
          %281 = arith.cmpi uge, %c31661_i16, %c-5339_i16 : i16
          %282 = index.maxu %c13, %280
          %alloc_73 = memref.alloc() : memref<7x7xi16>
          scf.yield %alloc_73 : memref<7x7xi16>
        }
        %270 = arith.minf %cst_1, %cst_1 : f16
        %inserted = tensor.insert %c768949949_i32 into %19[] : tensor<i32>
        vector.print %53 : vector<7x7xi1>
        %cst_69 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_69 : f32
      }
    %splat_42 = tensor.splat %false : tensor<7x7xi1>
    memref.store %true_3, %alloc_19[%c0, %c0] : memref<7x2xi1>
    %alloc_43 = memref.alloc() : memref<7x7xi1>
    %140 = math.atan2 %cst_2, %cst_40 : f32
    %141 = index.divu %c4, %127
    %142 = vector.multi_reduction <maxsi>, %99, %40 [] : vector<2xi64> to vector<2xi64>
    %143 = arith.minf %cst, %cst_2 : f32
    %144 = vector.splat %71 : vector<7x2xindex>
    %145 = arith.cmpi ugt, %c-5339_i16, %c31661_i16 : i16
    %146 = arith.cmpi ult, %c-5339_i16, %c31661_i16 : i16
    %147 = math.atan2 %12, %12 : tensor<11x2x11xf16>
    memref.tensor_store %16, %alloc_21 : memref<2xf32>
    %148 = vector.broadcast %false : i1 to vector<11x2xi1>
    %dest_44, %accumulated_value_45 = vector.scan <maxui>, %113, %148 {inclusive = true, reduction_dim = 2 : i64} : vector<11x2x11xi1>, vector<11x2xi1>
    vector.print %40 : vector<2xi64>
    %149 = math.cttz %splat_35 : tensor<7x2xi32>
    %150 = vector.broadcast %false : i1 to vector<2xi1>
    %151 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxui>} %77, %124, %150 : vector<7xi1>, vector<2x7xi1> into vector<2xi1>
    %152 = vector.bitcast %40 : vector<2xi64> to vector<2xi64>
    %153 = vector.extract_strided_slice %21 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi64> to vector<1xi64>
    memref.tensor_store %139, %alloc_21 : memref<2xf32>
    %154 = math.exp %23 : tensor<f32>
    bufferization.dealloc_tensor %3 : tensor<11x2x11xi64>
    %155 = index.ceildivu %100, %c2
    %156 = affine.min affine_map<(d0, d1) -> ((-d1 + 2) ceildiv 2, -d1, -((d1 mod 8) mod 128))>(%135, %48)
    %alloc_46 = memref.alloc() : memref<2xf16>
    %alloc_47 = memref.alloc() : memref<2x7xf16>
    memref.tensor_store %18, %alloc_47 : memref<2x7xf16>
    affine.store %cst_1, %alloc_18[%c9, %c10] : memref<7x7xf16>
    %157 = bufferization.to_tensor %alloc_21 : memref<2xf32>
    %158 = vector.insertelement %cst_1, %78[%c0 : index] : vector<7xf16>
    %159 = vector.extract_strided_slice %21 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi64> to vector<2xi64>
    %160 = vector.multi_reduction <minsi>, %116, %159 [] : vector<2xi64> to vector<2xi64>
    %161 = math.cos %cst : f32
    %162 = vector.broadcast %100 : index to vector<7xindex>
    %163 = vector.broadcast %c123861668_i64 : i64 to vector<7xi64>
    vector.scatter %alloc_12[%c5, %c6] [%162], %77, %163 : memref<7x7xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
    %rank = tensor.rank %9 : tensor<7x2xi64>
    %164 = vector.flat_transpose %21 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
    %165 = index.ceildivs %c14, %c4
    %166 = vector.splat %65 : vector<7x2xindex>
    %167 = vector.reduction <minf>, %78 : vector<7xf16> into f16
    memref.copy %alloc_11, %128 : memref<7x2xi1> to memref<7x2xi1>
    %168 = vector.multi_reduction <add>, %99, %c123861668_i64 [0] : vector<2xi64> to i64
    %169 = affine.if affine_set<(d0, d1, d2, d3) : (d0 >= 0, d2 mod 32 >= 0, (d2 + 128) * 32 - d0 == 0, d2 + d0 * 64 + 32 + 128 >= 0)>(%c10, %c15, %c2, %c14) -> i1 {
      %245 = vector.broadcast %c123861668_i64 : i64 to vector<i64>
      %246 = vector.transfer_write %245, %9[%c13, %c14] : vector<i64>, tensor<7x2xi64>
      %247 = vector.broadcast %cst : f32 to vector<7x7xf32>
      %alloc_65 = memref.alloc() : memref<7x7xf32>
      %248 = math.exp %4 : tensor<7x7xf16>
      %249 = math.roundeven %157 : tensor<2xf32>
      %250 = math.log1p %8 : tensor<7x7xf16>
      %251 = math.tanh %12 : tensor<11x2x11xf16>
      %252 = vector.broadcast %cst_4 : f32 to vector<11x2x11xf32>
      %253 = vector.fma %252, %252, %252 : vector<11x2x11xf32>
      affine.yield %true_3 : i1
    } else {
      %245 = vector.create_mask %165, %c0, %c15 : vector<11x2x11xi1>
      %246 = vector.bitcast %116 : vector<2xi64> to vector<2xi64>
      %247 = math.ceil %4 : tensor<7x7xf16>
      %248 = index.sizeof
      %249 = arith.negf %cst_1 : f16
      %250 = math.ipowi %splat_35, %splat_35 : tensor<7x2xi32>
      %251 = index.divs %c2, %c3
      %252 = vector.reduction <or>, %246 : vector<2xi64> into i64
      affine.yield %false : i1
    }
    affine.for %arg0 = 0 to 69 {
    }
    memref.assume_alignment %alloc_14, 8 : memref<7x2xi64>
    %170 = tensor.empty() : tensor<2x7xi1>
    %171 = tensor.empty() : tensor<7x7xi1>
    %172 = linalg.matmul ins(%13, %170 : tensor<7x2xi1>, tensor<2x7xi1>) outs(%171 : tensor<7x7xi1>) -> tensor<7x7xi1>
    %173 = affine.load %alloc_10[%c15, %c11, %c0] : memref<11x2x11xi64>
    %rank_48 = tensor.rank %19 : tensor<i32>
    %cst_49 = arith.constant 3.824000e+04 : f16
    %alloc_50 = memref.alloc() : memref<7x2xi32>
    %174 = vector.broadcast %true : i1 to vector<2x11xi1>
    %dest_51, %accumulated_value_52 = vector.scan <or>, %113, %174 {inclusive = false, reduction_dim = 0 : i64} : vector<11x2x11xi1>, vector<2x11xi1>
    %175 = math.exp %cst_5 : f32
    %alloc_53 = memref.alloc() : memref<7x2xi64>
    memref.copy %alloc_14, %alloc_53 : memref<7x2xi64> to memref<7x2xi64>
    %176 = index.divu %135, %c5
    %177 = vector.insertelement %173, %21[%156 : index] : vector<2xi64>
    %178 = arith.divsi %true, %false : i1
    %179 = index.ceildivs %c15, %c0
    %180 = math.log %cst_5 : f32
    scf.execute_region {
      affine.store %cst_1, %alloc_13[%c12, %c14] : memref<7x7xf16>
      %alloc_65 = memref.alloc() : memref<7x2xi16>
      %245 = arith.maxui %c-754_i16, %c-5339_i16 : i16
      %246 = math.tanh %cst_40 : f32
      %247 = arith.maxsi %true, %false : i1
      %alloc_66 = memref.alloc() : memref<2xi1>
      %248 = math.round %transposed : tensor<2x7xf16>
      %249 = math.ceil %7 : tensor<7x7xf32>
      %250 = vector.create_mask %c9 : vector<2xi1>
      %251 = vector.reduction <maxsi>, %152 : vector<2xi64> into i64
      %expanded = tensor.expand_shape %62 [[0], [1], [2, 3]] : tensor<11x2x11xi1> into tensor<11x2x11x1xi1>
      %252 = vector.broadcast %173 : i64 to vector<2xi64>
      memref.copy %alloc_15, %alloc : memref<7x2xf16> to memref<7x2xf16>
      %253 = arith.ceildivsi %true, %true_3 : i1
      %alloc_67 = memref.alloc() : memref<2xf32>
      memref.copy %alloc_21, %alloc_67 : memref<2xf32> to memref<2xf32>
      %254 = math.log1p %8 : tensor<7x7xf16>
      scf.yield
    }
    %181 = vector.flat_transpose %152 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
    %182 = math.log10 %17 : tensor<2xf32>
    %183 = tensor.empty() : tensor<2xf16>
    affine.store %cst_5, %alloc_21[%c11] : memref<2xf32>
    %184 = vector.extract %159[0] : vector<2xi64>
    %dest_54, %accumulated_value_55 = vector.scan <maxsi>, %70, %77 {inclusive = false, reduction_dim = 0 : i64} : vector<7x7xi1>, vector<7xi1>
    %185 = math.log10 %cst_1 : f16
    %186 = vector.broadcast %cst_4 : f32 to vector<7x2xf32>
    %187 = vector.fma %186, %186, %186 : vector<7x2xf32>
    %188 = arith.addf %cst, %cst_2 : f32
    %extracted = tensor.extract %171[%c0, %c6] : tensor<7x7xi1>
    %189 = math.log %7 : tensor<7x7xf32>
    %190 = math.round %183 : tensor<2xf16>
    %191 = index.sizeof
    %alloca = memref.alloca() : memref<11x2x11xf16>
    %extracted_56 = tensor.extract %transposed[%c0, %c0] : tensor<2x7xf16>
    %192 = math.cos %cst : f32
    %alloc_57 = memref.alloc() : memref<11x2x11xi1>
    memref.tensor_store %62, %alloc_57 : memref<11x2x11xi1>
    %193 = arith.andi %c691347664_i32, %c577334001_i32 : i32
    memref.tensor_store %16, %alloc_21 : memref<2xf32>
    %194 = math.ipowi %19, %19 : tensor<i32>
    %195 = bufferization.to_tensor %alloc_14 : memref<7x2xi64>
    %196 = math.exp %16 : tensor<2xf32>
    %197 = index.divu %c6, %48
    %198 = math.exp %183 : tensor<2xf16>
    %199 = arith.ceildivsi %173, %173 : i64
    %200 = arith.minf %cst_2, %cst : f32
    %201 = arith.minui %c31661_i16, %c-5339_i16 : i16
    %202 = arith.shrsi %true_3, %extracted : i1
    %203 = vector.insertelement %cst_1, %76[%179 : index] : vector<7xf16>
    %204 = arith.cmpi sge, %c31661_i16, %c-5339_i16 : i16
    %205 = vector.splat %126 : vector<7x2xindex>
    %206 = arith.shli %c123861668_i64, %c123861668_i64 : i64
    %collapsed_58 = tensor.collapse_shape %49 [[0, 1], [2]] : tensor<11x2x11xi64> into tensor<22x11xi64>
    %alloc_59 = memref.alloc() : memref<2xi64>
    %207 = tensor.empty() : tensor<7x2xf32>
    %208 = vector.broadcast %true : i1 to vector<7x2xi1>
    %209 = vector.broadcast %c691347664_i32 : i32 to vector<7x2xi32>
    %210 = vector.gather %207[%48, %45] [%209], %208, %186 : tensor<7x2xf32>, vector<7x2xi32>, vector<7x2xi1>, vector<7x2xf32> into vector<7x2xf32>
    affine.store %c-5339_i16, %30[%c3] : memref<2xi16>
    %211 = vector.reduction <mul>, %152 : vector<2xi64> into i64
    %212 = math.exp %collapsed_34 : tensor<22x11xf32>
    %213 = affine.if affine_set<(d0) : (-(-(d0 - 128) + 64) >= 0, -((-(d0 - 128)) ceildiv 128) == 0, -(-(d0 - 128) + 64) == 0)>(%c9) -> memref<7x7xf32> {
      %245 = index.castu %24 : index to i32
      %246 = arith.andi %168, %168 : i64
      %247 = arith.addi %c123861668_i64, %173 : i64
      %alloc_65 = memref.alloc() : memref<7x7xi1>
      memref.tensor_store %171, %alloc_65 : memref<7x7xi1>
      %248 = math.cttz %84 : tensor<7x1xi1>
      %249 = affine.if affine_set<(d0) : (d0 ceildiv 128 == 0)>(%c10) -> i32 {
        %252 = vector.extract %129[1] : vector<2xi64>
        %253 = arith.ceildivsi %c-5339_i16, %c-754_i16 : i16
        %254 = index.sizeof
        %255 = math.rsqrt %104 : tensor<7x7xf32>
        %256 = vector.broadcast %cst_2 : f32 to vector<2xf32>
        %257 = vector.fma %256, %256, %256 : vector<2xf32>
        %258 = arith.ceildivsi %extracted, %false : i1
        %collapsed_66 = tensor.collapse_shape %13 [[0, 1]] : tensor<7x2xi1> into tensor<14xi1>
        %259 = math.round %15 : tensor<11x2x11xf32>
        affine.yield %c768949949_i32 : i32
      } else {
        %dest_66, %accumulated_value_67 = vector.scan <mul>, %208, %77 {inclusive = true, reduction_dim = 1 : i64} : vector<7x2xi1>, vector<7xi1>
        %252 = index.mul %c11, %c5
        %253 = vector.broadcast %c5 : index to vector<1xindex>
        %254 = vector.broadcast %true_3 : i1 to vector<1xi1>
        %255 = vector.broadcast %cst_1 : f16 to vector<1xf16>
        vector.scatter %alloc[%c0, %c1] [%253], %254, %255 : memref<7x2xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
        %256 = vector.shuffle %124, %70 [1, 2] : vector<2x7xi1>, vector<7x7xi1>
        %257 = math.ipowi %c31661_i16, %c31661_i16 : i16
        %258 = arith.divsi %c691347664_i32, %c691347664_i32 : i32
        %splat_68 = tensor.splat %c-754_i16 : tensor<7x7xi16>
        %259 = math.exp %11 : tensor<2xf16>
        affine.yield %c577334001_i32 : i32
      }
      %250 = affine.if affine_set<(d0) : (-(-(d0 - 128) + 64) >= 0, -((-(d0 - 128)) ceildiv 128) == 0, -(-(d0 - 128) + 64) == 0)>(%c2) -> f16 {
        %c0_i64 = arith.constant 0 : i64
        %252 = vector.transfer_read %106[%c7, %179], %c0_i64 : tensor<7x2xi64>, vector<i64>
        %253 = arith.ceildivsi %false, %true : i1
        %254 = index.castu %156 : index to i32
        %255 = vector.flat_transpose %43 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
        affine.store %extracted_56, %35[%c0, %c0] : memref<7x7xf16>
        %256 = arith.subi %c123861668_i64, %173 : i64
        %257 = vector.broadcast %cst_5 : f32 to vector<7x2xf32>
        %258 = vector.fma %257, %257, %257 : vector<7x2xf32>
        %259 = math.expm1 %10 : tensor<11x2x11xf32>
        affine.yield %cst_1 : f16
      } else {
        %252 = math.expm1 %1 : tensor<2xf32>
        %253 = math.ctlz %true : i1
        %254 = index.ceildivs %c5, %176
        memref.store %extracted, %128[%c1, %c1] : memref<7x2xi1>
        %255 = affine.max affine_map<(d0) -> (d0 floordiv 32, 0, -(d0 floordiv 64), 0)>(%c5)
        %256 = arith.cmpi ugt, %173, %c123861668_i64 : i64
        %257 = vector.broadcast %true : i1 to vector<2xi1>
        %dest_66, %accumulated_value_67 = vector.scan <maxsi>, %208, %257 {inclusive = false, reduction_dim = 0 : i64} : vector<7x2xi1>, vector<2xi1>
        %258 = math.log10 %4 : tensor<7x7xf16>
        affine.yield %extracted_56 : f16
      }
      %251 = scf.execute_region -> tensor<7x2xi32> {
        %252 = vector.reduction <mul>, %164 : vector<2xi64> into i64
        %253 = math.round %extracted_56 : f16
        %254 = math.ipowi %true_3, %true_3 : i1
        %255 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %21, %164, %168 : vector<2xi64>, vector<2xi64> into i64
        %256 = vector.bitcast %78 : vector<7xf16> to vector<7xf16>
        %257 = math.exp %15 : tensor<11x2x11xf32>
        %258 = bufferization.clone %alloc_11 : memref<7x2xi1> to memref<7x2xi1>
        %dest_66, %accumulated_value_67 = vector.scan <add>, %53, %77 {inclusive = false, reduction_dim = 0 : i64} : vector<7x7xi1>, vector<7xi1>
        %259 = vector.flat_transpose %43 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
        %260 = math.rsqrt %cst_2 : f32
        %261 = vector.flat_transpose %152 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
        %262 = math.fma %4, %8, %4 : tensor<7x7xf16>
        affine.store %173, %alloc_6[%c4, %c0, %c2] : memref<11x2x11xi64>
        %263 = vector.flat_transpose %78 {columns = 7 : i32, rows = 1 : i32} : vector<7xf16> -> vector<7xf16>
        %264 = vector.broadcast %c768949949_i32 : i32 to vector<2xi32>
        %dest_68, %accumulated_value_69 = vector.scan <mul>, %209, %264 {inclusive = false, reduction_dim = 0 : i64} : vector<7x2xi32>, vector<2xi32>
        %265 = vector.broadcast %cst : f32 to vector<7x2xf32>
        %266 = vector.fma %265, %186, %186 : vector<7x2xf32>
        scf.yield %splat_35 : tensor<7x2xi32>
      }
      affine.yield %alloc_7 : memref<7x7xf32>
    } else {
      %245 = math.exp %cst_40 : f32
      %246 = affine.load %alloc_20[%c3, %c7] : memref<7x7xi32>
      %247 = vector.broadcast %c691347664_i32 : i32 to vector<7xi32>
      %248 = vector.maskedload %alloc_9[%c1], %77, %247 : memref<2xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
      %249 = math.round %8 : tensor<7x7xf16>
      %250 = index.sizeof
      %251 = vector.bitcast %21 : vector<2xi64> to vector<2xi64>
      %252 = math.ctpop %c577334001_i32 : i32
      %253 = vector.broadcast %rank_48 : index to vector<7xindex>
      vector.scatter %35[%c3, %c0] [%253], %77, %76 : memref<7x7xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
      affine.yield %alloc_7 : memref<7x7xf32>
    }
    %214 = vector.extract_strided_slice %181 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi64> to vector<1xi64>
    %215 = arith.negf %cst_5 : f32
    %216 = memref.realloc %alloc_21 : memref<2xf32> to memref<11xf32>
    %217 = vector.load %alloc_12[%c1, %c6] : memref<7x7xi64>, vector<7x7xi64>
    %218 = arith.divui %c768949949_i32, %c577334001_i32 : i32
    %219 = vector.insertelement %extracted_56, %92[%rank_48 : index] : vector<7xf16>
    scf.index_switch %c15 
    case 1 {
      %245 = vector.splat %45 : vector<7x7xindex>
      %246 = vector.broadcast %cst_40 : f32 to vector<2xf32>
      %247 = vector.fma %246, %246, %246 : vector<2xf32>
      %248 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %21, %159, %168 : vector<2xi64>, vector<2xi64> into i64
      %249 = vector.broadcast %168 : i64 to vector<2x2xi64>
      %250 = vector.outerproduct %159, %181, %249 {kind = #vector.kind<mul>} : vector<2xi64>, vector<2xi64>
      %251 = math.exp %15 : tensor<11x2x11xf32>
      %alloc_65 = memref.alloc() : memref<2xf16>
      memref.copy %alloc_17, %alloc_65 : memref<2xf16> to memref<2xf16>
      %alloca_66 = memref.alloca() : memref<2xi32>
      %252 = memref.atomic_rmw addf %extracted_56, %alloc_18[%c6, %c1] : (f16, memref<7x7xf16>) -> f16
      %253 = arith.mulf %cst_4, %cst_40 : f32
      %cst_67 = arith.constant 1.000000e+00 : f32
      %cst_68 = arith.constant 0.000000e+00 : f32
      %254 = vector.transfer_read %15[%58, %c3, %71], %cst_68 : tensor<11x2x11xf32>, vector<f32>
      %255 = math.roundeven %23 : tensor<f32>
      %256 = index.ceildivs %58, %75
      %257 = math.atan2 %139, %1 : tensor<2xf32>
      scf.execute_region {
        %260 = arith.minui %c768949949_i32, %c577334001_i32 : i32
        %261 = math.log2 %cst_0 : f32
        affine.store %173, %alloc_6[%c1, %c12, %c15] : memref<11x2x11xi64>
        %262 = math.log %8 : tensor<7x7xf16>
        %263 = vector.extract_strided_slice %53 {offsets = [4], sizes = [1], strides = [1]} : vector<7x7xi1> to vector<1x7xi1>
        %264 = index.sub %c12, %81
        %265 = math.log %cst_4 : f32
        %266 = arith.minf %cst_5, %cst_67 : f32
        %267 = math.ctlz %5 : tensor<2xi32>
        %268 = arith.remui %c577334001_i32, %c691347664_i32 : i32
        %269 = tensor.empty() : tensor<11x2x11xi64>
        %270 = math.atan2 %cst_0, %cst : f32
        %271 = math.round %12 : tensor<11x2x11xf16>
        %272 = arith.muli %c-754_i16, %c-5339_i16 : i16
        %273 = index.ceildivs %100, %rank_48
        %274 = math.exp %11 : tensor<2xf16>
        scf.yield
      }
      %258 = affine.min affine_map<(d0, d1) -> (-d1, d0 floordiv 128, d1 floordiv 16)>(%c14, %100)
      %259 = arith.maxsi %extracted, %true_3 : i1
      scf.yield
    }
    case 2 {
      memref.copy %alloc_19, %alloc_11 : memref<7x2xi1> to memref<7x2xi1>
      %245 = math.ceil %extracted_56 : f16
      bufferization.dealloc_tensor %12 : tensor<11x2x11xf16>
      %246 = arith.shrsi %extracted, %true_3 : i1
      %247 = vector.gather %17[%c7] [%209], %208, %186 : tensor<2xf32>, vector<7x2xi32>, vector<7x2xi1>, vector<7x2xf32> into vector<7x2xf32>
      %248 = index.sub %c11, %59
      %249 = arith.andi %c577334001_i32, %c691347664_i32 : i32
      %250 = math.atan2 %104, %104 : tensor<7x7xf32>
      %251 = arith.remf %cst_40, %cst_5 : f32
      memref.copy %alloc_10, %alloc_6 : memref<11x2x11xi64> to memref<11x2x11xi64>
      %252 = vector.flat_transpose %21 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
      %253 = vector.extract_strided_slice %153 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
      %254 = vector.extract_strided_slice %152 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi64> to vector<1xi64>
      %alloc_65 = memref.alloc() : memref<2xf32>
      memref.copy %alloc_21, %alloc_65 : memref<2xf32> to memref<2xf32>
      %255 = math.exp %cst_2 : f32
      %256 = math.log1p %11 : tensor<2xf16>
      scf.yield
    }
    case 3 {
      %245 = arith.maxui %168, %168 : i64
      memref.assume_alignment %112, 2 : memref<11x2x11xi64>
      %246 = vector.broadcast %extracted_56 : f16 to vector<f16>
      vector.transfer_write %246, %alloc[%39, %c6] : vector<f16>, memref<7x2xf16>
      %247 = arith.cmpi eq, %true_3, %extracted : i1
      %248 = vector.splat %c13 : vector<7x2xindex>
      %249 = memref.load %alloc_17[%c1] : memref<2xf16>
      memref.tensor_store %9, %alloc_14 : memref<7x2xi64>
      %250 = arith.floordivsi %168, %168 : i64
      %251 = math.log %collapsed_34 : tensor<22x11xf32>
      %252 = vector.extract %153[0] : vector<1xi64>
      %253 = vector.broadcast %cst_0 : f32 to vector<2xf32>
      %254 = vector.transfer_write %253, %10[%39, %100, %165] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<2xf32>, tensor<11x2x11xf32>
      %expanded = tensor.expand_shape %62 [[0], [1], [2, 3]] : tensor<11x2x11xi1> into tensor<11x2x11x1xi1>
      %255 = math.roundeven %7 : tensor<7x7xf32>
      affine.store %c31661_i16, %alloc_8[%c13, %c6, %c1] : memref<11x2x11xi16>
      %256 = bufferization.to_tensor %alloc_19 : memref<7x2xi1>
      %257 = vector.create_mask %197, %c8, %135 : vector<11x2x11xi1>
      scf.yield
    }
    case 4 {
      %245 = vector.reduction <maxui>, %153 : vector<1xi64> into i64
      %generated = tensor.generate %c9 {
      ^bb0(%arg0: index):
        %splat_69 = tensor.splat %c123861668_i64 : tensor<7x7xi64>
        %255 = math.sqrt %4 : tensor<7x7xf16>
        %256 = arith.andi %c123861668_i64, %168 : i64
        %257 = math.log1p %12 : tensor<11x2x11xf16>
        tensor.yield %false : i1
      } : tensor<?xi1>
      %collapsed_65 = tensor.collapse_shape %9 [[0, 1]] : tensor<7x2xi64> into tensor<14xi64>
      %246 = arith.cmpi sgt, %true, %extracted : i1
      %true_66 = index.bool.constant true
      %247 = vector.flat_transpose %78 {columns = 7 : i32, rows = 1 : i32} : vector<7xf16> -> vector<7xf16>
      %collapsed_67 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<11x2x11xi16> into tensor<22x11xi16>
      %248 = math.fpowi %extracted_56, %c577334001_i32 : f16, i32
      %249 = scf.if %true_66 -> (memref<2xf16>) {
        vector.print %116 : vector<2xi64>
        %255 = tensor.empty(%c3) : tensor<?x7xf32>
        %256 = memref.load %alloc_13[%c1, %c5] : memref<7x7xf16>
        %257 = math.ipowi %c577334001_i32, %c577334001_i32 : i32
        %258 = vector.flat_transpose %247 {columns = 7 : i32, rows = 1 : i32} : vector<7xf16> -> vector<7xf16>
        %259 = vector.splat %59 : vector<7x2xindex>
        vector.print %92 : vector<7xf16>
        %260 = math.round %16 : tensor<2xf32>
        scf.yield %alloc_17 : memref<2xf16>
      } else {
        %255 = tensor.empty() : tensor<2x11xi64>
        %256 = tensor.empty() : tensor<7x11xi64>
        %257 = linalg.matmul ins(%106, %255 : tensor<7x2xi64>, tensor<2x11xi64>) outs(%256 : tensor<7x11xi64>) -> tensor<7x11xi64>
        %258 = index.sub %c8, %179
        %259 = arith.floordivsi %c-5339_i16, %c31661_i16 : i16
        %260 = arith.maxui %168, %173 : i64
        %261 = vector.bitcast %153 : vector<1xi64> to vector<1xi64>
        %262 = vector.broadcast %cst_0 : f32 to vector<2xf32>
        %dest_69, %accumulated_value_70 = vector.scan <maxf>, %186, %262 {inclusive = true, reduction_dim = 0 : i64} : vector<7x2xf32>, vector<2xf32>
        %263 = math.fma %1, %17, %17 : tensor<2xf32>
        %264 = memref.load %alloc_6[%c5, %c0, %c2] : memref<11x2x11xi64>
        scf.yield %alloc_17 : memref<2xf16>
      }
      %250 = math.rsqrt %11 : tensor<2xf16>
      %251 = arith.remui %c-5339_i16, %c31661_i16 : i16
      %252 = math.atan2 %8, %8 : tensor<7x7xf16>
      bufferization.dealloc_tensor %104 : tensor<7x7xf32>
      %alloca_68 = memref.alloca() : memref<2xi16>
      %253 = math.copysign %1, %1 : tensor<2xf32>
      %254 = index.divu %71, %c1
      scf.yield
    }
    default {
      %245 = arith.minf %cst_1, %extracted_56 : f16
      %246 = math.ipowi %0, %47 : tensor<11x2x11xi16>
      %247 = math.absf %15 : tensor<11x2x11xf32>
      %rank_65 = tensor.rank %11 : tensor<2xf16>
      %248 = math.ceil %11 : tensor<2xf16>
      %249 = index.sizeof
      %250 = vector.extract %78[5] : vector<7xf16>
      memref.alloca_scope  {
        %257 = arith.shrui %c768949949_i32, %c691347664_i32 : i32
        %258 = vector.shuffle %159, %43 [0] : vector<2xi64>, vector<1xi64>
        %expanded = tensor.expand_shape %10 [[0], [1], [2, 3]] : tensor<11x2x11xf32> into tensor<11x2x11x1xf32>
        %259 = arith.minui %168, %173 : i64
        %alloc_66 = memref.alloc() : memref<2x7xf16>
        memref.tensor_store %18, %alloc_66 : memref<2x7xf16>
        %260 = vector.reduction <minui>, %43 : vector<1xi64> into i64
        %261 = math.fma %expanded, %expanded, %expanded : tensor<11x2x11x1xf32>
        %262 = arith.negf %cst_5 : f32
        %263 = arith.maxui %c768949949_i32, %c577334001_i32 : i32
        %264 = math.rsqrt %4 : tensor<7x7xf16>
        %265 = memref.realloc %alloc_17 : memref<2xf16> to memref<7xf16>
        %from_elements = tensor.from_elements %true_3, %true_3, %true, %extracted, %extracted, %false, %true, %false, %true, %extracted, %true, %extracted, %false, %extracted, %true_3, %false, %true, %true_3, %extracted, %extracted, %true_3, %extracted, %true, %false, %false, %extracted, %false, %true_3, %true, %false, %true_3, %extracted, %true_3, %true_3, %true_3, %extracted, %true_3, %extracted, %true_3, %extracted, %true, %true, %false, %extracted, %true, %extracted, %true_3, %true, %true : tensor<7x7xi1>
        %266 = math.rsqrt %splat : tensor<11x2x11xf32>
        %267 = math.rsqrt %cst : f32
        memref.assume_alignment %alloc_9, 16 : memref<2xi32>
        %268 = math.exp2 %4 : tensor<7x7xf16>
        affine.store %c123861668_i64, %alloc_14[%c2, %c7] : memref<7x2xi64>
        %269 = index.divu %c5, %81
        %270 = tensor.empty() : tensor<7x7xi1>
        %271 = linalg.matmul ins(%splat_42, %107 : tensor<7x7xi1>, tensor<7x7xi1>) outs(%270 : tensor<7x7xi1>) -> tensor<7x7xi1>
        memref.assume_alignment %alloc_15, 1 : memref<7x2xf16>
        %272 = arith.shrui %c768949949_i32, %c768949949_i32 : i32
        %273 = memref.atomic_rmw ori %168, %alloc_10[%c10, %c0, %c6] : (i64, memref<11x2x11xi64>) -> i64
        %274 = math.ctpop %9 : tensor<7x2xi64>
        %275 = arith.ceildivsi %c31661_i16, %c31661_i16 : i16
        %276 = math.log %22 : tensor<f32>
        %277 = memref.load %alloc_10[%c3, %c0, %c8] : memref<11x2x11xi64>
        %278 = vector.extract_strided_slice %21 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi64> to vector<2xi64>
        %extracted_67 = tensor.extract %139[%c1] : tensor<2xf32>
        %279 = vector.broadcast %cst : f32 to vector<7xf32>
        %dest_68, %accumulated_value_69 = vector.scan <minf>, %210, %279 {inclusive = false, reduction_dim = 1 : i64} : vector<7x2xf32>, vector<7xf32>
        %280 = math.round %11 : tensor<2xf16>
        %281 = math.expm1 %1 : tensor<2xf32>
        %282 = math.fma %18, %transposed, %transposed : tensor<2x7xf16>
      }
      scf.execute_region {
        %257 = vector.insertelement %true_3, %77[%48 : index] : vector<7xi1>
        %258 = math.sqrt %17 : tensor<2xf32>
        %259 = affine.load %alloc_19[%c6, %c1] : memref<7x2xi1>
        %260 = math.ctpop %106 : tensor<7x2xi64>
        %261 = arith.ceildivsi %c768949949_i32, %c768949949_i32 : i32
        %262 = math.atan2 %8, %4 : tensor<7x7xf16>
        %263 = vector.extract_strided_slice %78 {offsets = [4], sizes = [2], strides = [1]} : vector<7xf16> to vector<2xf16>
        %extracted_66 = tensor.extract %5[%c1] : tensor<2xi32>
        %264 = math.log %16 : tensor<2xf32>
        %265 = index.divu %197, %c14
        %collapsed_67 = tensor.collapse_shape %2 [[0, 1]] : tensor<7x7xi16> into tensor<49xi16>
        %266 = vector.insertelement %173, %99[%156 : index] : vector<2xi64>
        %267 = vector.broadcast %cst_4 : f32 to vector<2xf32>
        %268 = vector.multi_reduction <minf>, %187, %267 [0] : vector<7x2xf32> to vector<2xf32>
        %269 = vector.multi_reduction <minsi>, %43, %173 [0] : vector<1xi64> to i64
        %270 = math.round %cst_4 : f32
        vector.print %186 : vector<7x2xf32>
        scf.yield
      }
      %251 = math.atan %12 : tensor<11x2x11xf16>
      %252 = arith.shrui %c-5339_i16, %c-754_i16 : i16
      %253 = math.atan2 %16, %139 : tensor<2xf32>
      memref.tensor_store %14, %30 : memref<2xi16>
      %254 = vector.extract %217[1] : vector<7x7xi64>
      %255 = tensor.empty() : tensor<7x2xf16>
      %256 = vector.multi_reduction <mul>, %116, %173 [0] : vector<2xi64> to i64
    }
    %220 = vector.broadcast %168 : i64 to vector<i64>
    vector.transfer_write %220, %alloc_14[%24, %c11] : vector<i64>, memref<7x2xi64>
    %221 = vector.broadcast %cst_4 : f32 to vector<11x2x11xf32>
    %222 = vector.fma %221, %221, %221 : vector<11x2x11xf32>
    %223 = index.divu %141, %c10
    %224 = math.log2 %183 : tensor<2xf16>
    %alloc_60 = memref.alloc() : memref<11x2x11xf32>
    memref.tensor_store %splat, %alloc_60 : memref<11x2x11xf32>
    %dest_61, %accumulated_value_62 = vector.scan <maxui>, %208, %77 {inclusive = false, reduction_dim = 1 : i64} : vector<7x2xi1>, vector<7xi1>
    %225 = index.divs %c10, %c9
    %226 = vector.splat %c9 : vector<11x2x11xindex>
    %227 = affine.for %arg0 = 0 to 55 iter_args(%arg1 = %3) -> (tensor<11x2x11xi64>) {
      affine.yield %3 : tensor<11x2x11xi64>
    }
    %228 = vector.bitcast %78 : vector<7xf16> to vector<7xf16>
    %229 = math.log10 %10 : tensor<11x2x11xf32>
    memref.copy %alloc_18, %alloc_13 : memref<7x7xf16> to memref<7x7xf16>
    %230 = vector.insertelement %168, %129[%156 : index] : vector<2xi64>
    %231 = vector.extract_strided_slice %129 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi64> to vector<1xi64>
    %232 = bufferization.clone %alloc_20 : memref<7x7xi32> to memref<7x7xi32>
    %233 = vector.broadcast %c123861668_i64 : i64 to vector<1x1xi64>
    %234 = vector.outerproduct %43, %153, %233 {kind = #vector.kind<or>} : vector<1xi64>, vector<1xi64>
    %235 = vector.broadcast %c123861668_i64 : i64 to vector<2x2xi64>
    %236 = vector.outerproduct %164, %99, %235 {kind = #vector.kind<xor>} : vector<2xi64>, vector<2xi64>
    %237 = memref.realloc %alloc_17 : memref<2xf16> to memref<11xf16>
    %238 = affine.min affine_map<(d0, d1, d2) -> (-(d2 ceildiv 128), -(d2 ceildiv 128))>(%c15, %c11, %c15)
    %239 = vector.load %alloc_18[%c0, %c2] : memref<7x7xf16>, vector<7x7xf16>
    %240 = tensor.empty() : tensor<11x2x11xi16>
    %241 = linalg.copy ins(%0 : tensor<11x2x11xi16>) outs(%240 : tensor<11x2x11xi16>) -> tensor<11x2x11xi16>
    %242 = tensor.empty() : tensor<2x7xi1>
    %transposed_63 = linalg.transpose ins(%alloc_19 : memref<7x2xi1>) outs(%242 : tensor<2x7xi1>) permutation = [1, 0] 
    %alloc_64 = memref.alloc() : memref<i16>
    linalg.reduce ins(%alloc_16 : memref<2xi16>) outs(%alloc_64 : memref<i16>) dimensions = [0] 
      (%in: i16, %init: i16) {
        %245 = math.round %16 : tensor<2xf32>
        %alloca_65 = memref.alloca() : memref<2xi16>
        %246 = index.mul %c15, %rank
        %247 = math.atan2 %10, %splat : tensor<11x2x11xf32>
        %248 = vector.load %112[%c10, %c1, %c6] : memref<11x2x11xi64>, vector<7x2xi64>
        %249 = arith.andi %true_3, %true : i1
        %from_elements = tensor.from_elements %true, %true_3, %false, %extracted, %extracted, %extracted, %false, %false, %false, %true_3, %extracted, %true_3, %extracted, %true, %true_3, %true, %true, %extracted, %false, %extracted, %false, %true, %extracted, %true, %false, %false, %true, %extracted, %false, %true_3, %false, %extracted, %true, %extracted, %false, %true_3, %false, %false, %extracted, %true_3, %extracted, %false, %true_3, %extracted, %extracted, %extracted, %extracted, %true_3, %false : tensor<7x7xi1>
        %250 = math.rsqrt %cst_1 : f16
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %243 = scf.parallel (%arg0) = (%48) to (%c3) step (%c14) init (%1) -> tensor<2xf32> {
      %245 = index.ceildivs %176, %c11
      %false_65 = index.bool.constant false
      %246 = math.atan2 %extracted_56, %extracted_56 : f16
      %247 = bufferization.to_memref %13 : memref<7x2xi1>
      scf.execute_region {
        %256 = math.log10 %7 : tensor<7x7xf32>
        %257 = index.divu %65, %24
        %258 = vector.broadcast %true_3 : i1 to vector<11x11xi1>
        %dest_71, %accumulated_value_72 = vector.scan <or>, %113, %258 {inclusive = false, reduction_dim = 1 : i64} : vector<11x2x11xi1>, vector<11x11xi1>
        %extracted_73 = tensor.extract %17[%c0] : tensor<2xf32>
        %collapsed_74 = tensor.collapse_shape %8 [[0, 1]] : tensor<7x7xf16> into tensor<49xf16>
        %259 = math.round %cst_0 : f32
        %260 = vector.splat %c7 : vector<2xindex>
        %261 = memref.atomic_rmw minu %c123861668_i64, %alloc_10[%c8, %c1, %c1] : (i64, memref<11x2x11xi64>) -> i64
        %true_75 = arith.constant true
        bufferization.dealloc_tensor %0 : tensor<11x2x11xi16>
        %262 = index.ceildivs %141, %127
        %263 = math.fma %7, %7, %7 : tensor<7x7xf32>
        memref.assume_alignment %alloc_7, 8 : memref<7x7xf32>
        %264 = math.fpowi %cst_40, %c768949949_i32 : f32, i32
        %265 = math.exp %transposed : tensor<2x7xf16>
        %266 = vector.extract_strided_slice %113 {offsets = [4], sizes = [5], strides = [1]} : vector<11x2x11xi1> to vector<5x2x11xi1>
        scf.yield
      }
      %248 = math.log10 %22 : tensor<f32>
      %extracted_66 = tensor.extract %3[%c6, %c1, %c5] : tensor<11x2x11xi64>
      %249 = tensor.empty() : tensor<7x7xf32>
      %250 = linalg.matmul ins(%104, %104 : tensor<7x7xf32>, tensor<7x7xf32>) outs(%249 : tensor<7x7xf32>) -> tensor<7x7xf32>
      %splat_67 = tensor.splat %c-5339_i16 : tensor<2xi16>
      %alloca_68 = memref.alloca() : memref<2xi1>
      %251 = math.round %15 : tensor<11x2x11xf32>
      %alloc_69 = memref.alloc() : memref<11x2x11xi16>
      %252 = affine.load %alloc_11[%c4, %c10] : memref<7x2xi1>
      %253 = arith.negf %cst_2 : f32
      %splat_70 = tensor.splat %extracted : tensor<7x7xi1>
      %254 = math.ctpop %13 : tensor<7x2xi1>
      %255 = tensor.empty() : tensor<2xf32>
      scf.reduce(%255)  : tensor<2xf32> {
      ^bb0(%arg1: tensor<2xf32>, %arg2: tensor<2xf32>):
        %256 = arith.negf %cst : f32
        %collapsed_71 = tensor.collapse_shape %collapsed_33 [[0, 1]] : tensor<22x11xi16> into tensor<242xi16>
        %257 = math.copysign %cst_0, %cst_5 : f32
        %258 = index.ceildivu %65, %135
        %259 = vector.extract %124[0] : vector<2x7xi1>
        %260 = math.log %7 : tensor<7x7xf32>
        %261 = vector.flat_transpose %116 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
        %262 = math.cos %10 : tensor<11x2x11xf32>
        %263 = tensor.empty() : tensor<2xf32>
        scf.reduce.return %263 : tensor<2xf32>
      }
      scf.yield
    }
    %244 = affine.vector_load %alloc_9[%45] : memref<2xi32>, vector<2xi32>
    affine.vector_store %78, %35[%155, %c8] : memref<7x7xf16>, vector<7xf16>
    vector.print %21 : vector<2xi64>
    vector.print %40 : vector<2xi64>
    vector.print %43 : vector<1xi64>
    vector.print %53 : vector<7x7xi1>
    vector.print %70 : vector<7x7xi1>
    vector.print %76 : vector<7xf16>
    vector.print %77 : vector<7xi1>
    vector.print %78 : vector<7xf16>
    vector.print %92 : vector<7xf16>
    vector.print %99 : vector<2xi64>
    vector.print %113 : vector<11x2x11xi1>
    vector.print %116 : vector<2xi64>
    vector.print %124 : vector<2x7xi1>
    vector.print %129 : vector<2xi64>
    vector.print %152 : vector<2xi64>
    vector.print %153 : vector<1xi64>
    vector.print %159 : vector<2xi64>
    vector.print %164 : vector<2xi64>
    vector.print %181 : vector<2xi64>
    vector.print %186 : vector<7x2xf32>
    vector.print %187 : vector<7x2xf32>
    vector.print %208 : vector<7x2xi1>
    vector.print %209 : vector<7x2xi32>
    vector.print %210 : vector<7x2xf32>
    vector.print %214 : vector<1xi64>
    vector.print %217 : vector<7x7xi64>
    vector.print %220 : vector<i64>
    vector.print %221 : vector<11x2x11xf32>
    vector.print %222 : vector<11x2x11xf32>
    vector.print %228 : vector<7xf16>
    vector.print %231 : vector<1xi64>
    vector.print %239 : vector<7x7xf16>
    vector.print %244 : vector<2xi32>
    vector.print %c-754_i16 : i16
    vector.print %true : i1
    vector.print %cst : f32
    vector.print %cst_0 : f32
    vector.print %c577334001_i32 : i32
    vector.print %c31661_i16 : i16
    vector.print %cst_1 : f16
    vector.print %false : i1
    vector.print %c-5339_i16 : i16
    vector.print %cst_2 : f32
    vector.print %c691347664_i32 : i32
    vector.print %true_3 : i1
    vector.print %cst_4 : f32
    vector.print %cst_5 : f32
    vector.print %c768949949_i32 : i32
    vector.print %c123861668_i64 : i64
    vector.print %cst_40 : f32
    vector.print %168 : i64
    vector.print %173 : i64
    vector.print %extracted : i1
    vector.print %extracted_56 : f16
    return %alloc_15 : memref<7x2xf16>
  }
}
