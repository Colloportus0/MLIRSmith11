module {
  func.func private @func1() -> index {
    %cst = arith.constant 1.219200e+04 : f16
    %c1036166205_i32 = arith.constant 1036166205 : i32
    %cst_0 = arith.constant 1.76917773E+9 : f32
    %c996659765_i32 = arith.constant 996659765 : i32
    %false = arith.constant false
    %c14128351_i32 = arith.constant 14128351 : i32
    %c1284945222_i32 = arith.constant 1284945222 : i32
    %true = arith.constant true
    %c11_i16 = arith.constant 11 : i16
    %true_1 = arith.constant true
    %c103295414_i32 = arith.constant 103295414 : i32
    %true_2 = arith.constant true
    %true_3 = arith.constant true
    %cst_4 = arith.constant 1.152000e+04 : f16
    %c-24753_i16 = arith.constant -24753 : i16
    %c1687968493_i32 = arith.constant 1687968493 : i32
    %0 = tensor.empty() : tensor<4x2x14xf16>
    %1 = tensor.empty() : tensor<4x14xi64>
    %2 = tensor.empty() : tensor<4x2xi16>
    %3 = tensor.empty() : tensor<4x2xi1>
    %4 = tensor.empty() : tensor<4x14xi64>
    %5 = tensor.empty() : tensor<4x14xf32>
    %6 = tensor.empty() : tensor<4x2x14xi1>
    %7 = tensor.empty() : tensor<4x2x14xf32>
    %8 = tensor.empty() : tensor<14x4xi1>
    %9 = tensor.empty() : tensor<14x4xi32>
    %10 = tensor.empty() : tensor<4x14xi16>
    %11 = tensor.empty() : tensor<14x4xf16>
    %12 = tensor.empty() : tensor<4x2xi32>
    %13 = tensor.empty() : tensor<4x2x14xi16>
    %14 = tensor.empty() : tensor<4x2x14xi64>
    %15 = tensor.empty() : tensor<14x4xi32>
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
    %alloc = memref.alloc() : memref<4x2xf16>
    %alloc_5 = memref.alloc() : memref<4x14xi16>
    %alloc_6 = memref.alloc() : memref<14x4xi16>
    %alloc_7 = memref.alloc() : memref<4x2x14xf32>
    %alloc_8 = memref.alloc() : memref<4x2xi64>
    %alloc_9 = memref.alloc() : memref<4x2xf16>
    %alloc_10 = memref.alloc() : memref<4x2xi16>
    %alloc_11 = memref.alloc() : memref<14x4xi64>
    %alloc_12 = memref.alloc() : memref<4x14xi32>
    %alloc_13 = memref.alloc() : memref<4x14xi64>
    %alloc_14 = memref.alloc() : memref<4x2x14xi64>
    %alloc_15 = memref.alloc() : memref<14x4xi1>
    %alloc_16 = memref.alloc() : memref<14x4xf16>
    %alloc_17 = memref.alloc() : memref<4x14xi1>
    %alloc_18 = memref.alloc() : memref<4x2x14xi16>
    %alloc_19 = memref.alloc() : memref<4x2x14xf16>
    %16 = tensor.empty() : tensor<4x2x14xi64>
    %17 = linalg.copy ins(%14 : tensor<4x2x14xi64>) outs(%16 : tensor<4x2x14xi64>) -> tensor<4x2x14xi64>
    %alloc_20 = memref.alloc() : memref<2x4xi64>
    linalg.transpose ins(%alloc_8 : memref<4x2xi64>) outs(%alloc_20 : memref<2x4xi64>) permutation = [1, 0] 
    %alloc_21 = memref.alloc() : memref<14xi64>
    linalg.reduce ins(%1 : tensor<4x14xi64>) outs(%alloc_21 : memref<14xi64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        %242 = math.ctlz %3 : tensor<4x2xi1>
        %243 = math.absi %13 : tensor<4x2x14xi16>
        memref.tensor_store %11, %alloc_16 : memref<14x4xf16>
        %244 = arith.maxsi %c11_i16, %c-24753_i16 : i16
        %245 = arith.maxui %true_3, %true : i1
        %246 = vector.broadcast %false : i1 to vector<14x4xi1>
        %from_elements_56 = tensor.from_elements %false, %true_1, %true, %true, %true, %true_3, %true_1, %true_1, %true_2, %true_2, %true_2, %true_2, %true_3, %true, %true_2, %true_1, %true_1, %true_3, %true, %true, %true, %true_2, %true_1, %true_1, %true, %true_3, %true, %true, %false, %false, %true_2, %true, %true_2, %false, %true, %false, %true_2, %false, %false, %true_1, %true_1, %true, %true_2, %false, %true_2, %false, %true_2, %true, %true_2, %true_1, %true, %true_2, %true, %true_2, %true, %true_1 : tensor<4x14xi1>
        %247 = arith.maxui %c1284945222_i32, %c1284945222_i32 : i32
        %c1_i64_57 = arith.constant 1 : i64
        linalg.yield %c1_i64_57 : i64
      }
    %18 = scf.parallel (%arg0, %arg1) = (%c7, %c12) to (%c3, %c7) step (%c15, %c6) init (%c-24753_i16) -> i16 {
      %242 = math.atan2 %cst_4, %cst_4 : f16
      %243 = arith.minui %c1284945222_i32, %c14128351_i32 : i32
      %244 = arith.minui %c-24753_i16, %c-24753_i16 : i16
      %245 = arith.remf %cst_0, %cst_0 : f32
      %246 = arith.minf %cst_4, %cst : f16
      %247 = arith.mulf %cst, %cst : f16
      %alloc_56 = memref.alloc() : memref<4x2x14xf16>
      %248 = index.divs %c13, %c7
      %249 = arith.shrui %true_1, %false : i1
      %250 = vector.broadcast %cst_0 : f32 to vector<14xf32>
      %251 = vector.broadcast %cst_0 : f32 to vector<14x14xf32>
      %252 = vector.outerproduct %250, %250, %251 {kind = #vector.kind<maxf>} : vector<14xf32>, vector<14xf32>
      %253 = bufferization.clone %alloc_6 : memref<14x4xi16> to memref<14x4xi16>
      %alloca_57 = memref.alloca() : memref<4x2xf16>
      bufferization.dealloc_tensor %15 : tensor<14x4xi32>
      %254 = index.divs %c5, %c9
      %255 = vector.broadcast %cst_4 : f16 to vector<2xf16>
      %256 = vector.broadcast %false : i1 to vector<2xi1>
      %257 = vector.maskedload %alloc[%c2, %c1], %256, %255 : memref<4x2xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
      %258 = index.sub %c2, %c4
      %c0_i16 = arith.constant 0 : i16
      scf.reduce(%c0_i16)  : i16 {
      ^bb0(%arg2: i16, %arg3: i16):
        %259 = arith.minf %cst_4, %cst : f16
        %260 = math.fma %cst_0, %cst_0, %cst_0 : f32
        %261 = math.tan %7 : tensor<4x2x14xf32>
        %262 = math.roundeven %11 : tensor<14x4xf16>
        %263 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %257, %255, %cst_4 : vector<2xf16>, vector<2xf16> into f16
        %264 = index.casts %c10 : index to i32
        %265 = arith.remf %cst_0, %cst_0 : f32
        %c0_i64 = arith.constant 0 : i64
        %266 = vector.broadcast %c0_i64 : i64 to vector<14xi64>
        %267 = vector.broadcast %true_2 : i1 to vector<14xi1>
        %268 = vector.maskedload %alloc_14[%c3, %c0, %c6], %267, %266 : memref<4x2x14xi64>, vector<14xi1>, vector<14xi64> into vector<14xi64>
        %c0_i16_58 = arith.constant 0 : i16
        scf.reduce.return %c0_i16_58 : i16
      }
      scf.yield
    }
    %19 = affine.vector_load %alloc_18[%c1, %c4, %c1] : memref<4x2x14xi16>, vector<4xi16>
    affine.vector_store %19, %alloc_18[%c14, %c12, %c0] : memref<4x2x14xi16>, vector<4xi16>
    %20 = tensor.empty() : tensor<14xi64>
    %21 = tensor.empty() : tensor<i64>
    %22 = linalg.dot ins(%alloc_21, %20 : memref<14xi64>, tensor<14xi64>) outs(%21 : tensor<i64>) -> tensor<i64>
    vector.print %19 : vector<4xi16>
    %23 = math.expm1 %0 : tensor<4x2x14xf16>
    %generated = tensor.generate %c11, %c3 {
    ^bb0(%arg0: index, %arg1: index, %arg2: index):
      %242 = math.fma %11, %11, %11 : tensor<14x4xf16>
      %243 = vector.create_mask %arg1, %c8 : vector<4x14xi1>
      %244 = math.powf %0, %0 : tensor<4x2x14xf16>
      %245 = math.round %cst_0 : f32
      tensor.yield %c11_i16 : i16
    } : tensor<?x?x14xi16>
    %24 = arith.muli %c1687968493_i32, %c1284945222_i32 : i32
    %from_elements = tensor.from_elements %c11_i16, %c-24753_i16, %c-24753_i16, %c-24753_i16, %c11_i16, %c11_i16, %c-24753_i16, %c-24753_i16, %c-24753_i16, %c-24753_i16, %c-24753_i16, %c-24753_i16, %c11_i16, %c11_i16, %c11_i16, %c-24753_i16, %c-24753_i16, %c11_i16, %c11_i16, %c11_i16, %c11_i16, %c-24753_i16, %c11_i16, %c-24753_i16, %c11_i16, %c11_i16, %c-24753_i16, %c11_i16, %c11_i16, %c11_i16, %c-24753_i16, %c11_i16, %c-24753_i16, %c11_i16, %c11_i16, %c-24753_i16, %c-24753_i16, %c-24753_i16, %c11_i16, %c11_i16, %c-24753_i16, %c11_i16, %c-24753_i16, %c-24753_i16, %c-24753_i16, %c-24753_i16, %c-24753_i16, %c11_i16, %c11_i16, %c11_i16, %c-24753_i16, %c11_i16, %c-24753_i16, %c-24753_i16, %c-24753_i16, %c-24753_i16 : tensor<4x14xi16>
    %25 = arith.divf %cst_0, %cst_0 : f32
    %26 = memref.load %alloc_5[%c2, %c9] : memref<4x14xi16>
    %expanded = tensor.expand_shape %5 [[0], [1, 2]] : tensor<4x14xf32> into tensor<4x14x1xf32>
    %27 = arith.minui %true_3, %false : i1
    %28 = arith.remf %cst_4, %cst_4 : f16
    %29 = arith.floordivsi %c11_i16, %c11_i16 : i16
    %30 = vector.insertelement %c-24753_i16, %19[%c9 : index] : vector<4xi16>
    %31 = arith.shli %c103295414_i32, %c996659765_i32 : i32
    %cst_22 = arith.constant 3.680000e+04 : f16
    %32 = vector.splat %true : vector<4x2x14xi1>
    %alloca = memref.alloca() : memref<4x2xi32>
    %33 = bufferization.to_tensor %alloc_19 : memref<4x2x14xf16>
    %34 = bufferization.to_memref %11 : memref<14x4xf16>
    %35 = math.absi %c996659765_i32 : i32
    %c1_i64 = arith.constant 1 : i64
    memref.store %c1_i64, %alloc_11[%c4, %c1] : memref<14x4xi64>
    %36 = tensor.empty() : tensor<4x14x1xi32>
    %37 = math.fpowi %expanded, %36 : tensor<4x14x1xf32>, tensor<4x14x1xi32>
    %38 = arith.muli %c1284945222_i32, %c14128351_i32 : i32
    memref.copy %alloc_16, %34 : memref<14x4xf16> to memref<14x4xf16>
    %39 = math.atan %0 : tensor<4x2x14xf16>
    %40 = math.fma %expanded, %expanded, %expanded : tensor<4x14x1xf32>
    %41 = math.log %cst : f16
    %42 = math.atan2 %cst, %cst_4 : f16
    %43 = arith.divsi %c103295414_i32, %c1687968493_i32 : i32
    %collapsed = tensor.collapse_shape %8 [[0, 1]] : tensor<14x4xi1> into tensor<56xi1>
    %alloc_23 = memref.alloc() : memref<i64>
    memref.tensor_store %22, %alloc_23 : memref<i64>
    %44 = index.divs %c10, %c1
    %45 = index.add %c2, %c11
    %46 = arith.minui %c1687968493_i32, %c996659765_i32 : i32
    %47 = math.ctpop %6 : tensor<4x2x14xi1>
    %48 = index.maxu %c4, %c6
    %49 = vector.splat %c9 : vector<4x14xindex>
    %50 = arith.xori %c996659765_i32, %c1687968493_i32 : i32
    %51 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%17 : tensor<4x2x14xi64>) {
    ^bb0(%out: i64):
      %242 = math.ctlz %6 : tensor<4x2x14xi1>
      %243 = math.log %expanded : tensor<4x14x1xf32>
      %244 = vector.reduction <xor>, %19 : vector<4xi16> into i16
      %alloc_56 = memref.alloc() : memref<14x4xf32>
      %245 = math.log2 %cst : f16
      vector.print %19 : vector<4xi16>
      %extracted_57 = tensor.extract %11[%c6, %c1] : tensor<14x4xf16>
      %246 = vector.flat_transpose %19 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
      %247 = index.sizeof
      %248 = tensor.empty() : tensor<4x2x14xi16>
      %249 = index.ceildivu %c1, %c12
      %250 = math.atan2 %11, %11 : tensor<14x4xf16>
      %rank_58 = tensor.rank %8 : tensor<14x4xi1>
      %251 = vector.broadcast %true_3 : i1 to vector<2x14xi1>
      %252 = vector.broadcast %true_3 : i1 to vector<14xi1>
      %dest_59, %accumulated_value_60 = vector.scan <mul>, %251, %252 {inclusive = false, reduction_dim = 0 : i64} : vector<2x14xi1>, vector<14xi1>
      %253 = arith.remf %cst_0, %cst_0 : f32
      %254 = vector.broadcast %true_3 : i1 to vector<2x14xi1>
      %255 = vector.broadcast %true_1 : i1 to vector<14xi1>
      %dest_61, %accumulated_value_62 = vector.scan <maxsi>, %254, %255 {inclusive = false, reduction_dim = 0 : i64} : vector<2x14xi1>, vector<14xi1>
      %256 = math.exp %0 : tensor<4x2x14xf16>
      %257 = math.rsqrt %7 : tensor<4x2x14xf32>
      %258 = vector.broadcast %cst_0 : f32 to vector<4x14xf32>
      %259 = vector.fma %258, %258, %258 : vector<4x14xf32>
      %260 = math.atan2 %11, %11 : tensor<14x4xf16>
      %261 = scf.while (%arg0 = %out) : (i64) -> i64 {
        %272 = math.rsqrt %cst_0 : f32
        %273 = math.exp2 %cst_0 : f32
        %274 = math.tanh %5 : tensor<4x14xf32>
        %275 = arith.mulf %extracted_57, %extracted_57 : f16
        %276 = index.floordivs %c9, %c5
        %alloca_64 = memref.alloca() : memref<4x14xi64>
        %277 = math.cos %33 : tensor<4x2x14xf16>
        %alloc_65 = memref.alloc() : memref<4x2xf32>
        scf.condition(%true_2) %arg0 : i64
      } do {
      ^bb0(%arg0: i64):
        %272 = arith.divui %c1036166205_i32, %c996659765_i32 : i32
        %273 = arith.subi %c11_i16, %c11_i16 : i16
        %274 = arith.minf %cst_4, %cst : f16
        %275 = arith.maxsi %c14128351_i32, %c103295414_i32 : i32
        %276 = arith.cmpf one, %cst, %cst_4 : f16
        %277 = vector.shuffle %19, %246 [1, 2, 6] : vector<4xi16>, vector<4xi16>
        %278 = arith.muli %c1687968493_i32, %c14128351_i32 : i32
        bufferization.dealloc_tensor %12 : tensor<4x2xi32>
        %c-6074_i16 = arith.constant -6074 : i16
        %alloc_64 = memref.alloc() : memref<4x14xf16>
        %279 = vector.broadcast %extracted_57 : f16 to vector<4x14xf16>
        %280 = vector.broadcast %true_2 : i1 to vector<4x14xi1>
        %281 = vector.broadcast %c996659765_i32 : i32 to vector<4x14xi32>
        %282 = vector.gather %alloc_64[%247, %44] [%281], %280, %279 : memref<4x14xf16>, vector<4x14xi32>, vector<4x14xi1>, vector<4x14xf16> into vector<4x14xf16>
        %283 = math.ipowi %c996659765_i32, %c103295414_i32 : i32
        %rank_65 = tensor.rank %10 : tensor<4x14xi16>
        %284 = bufferization.to_memref %5 : memref<4x14xf32>
        memref.assume_alignment %alloc_10, 2 : memref<4x2xi16>
        %285 = arith.divui %c1687968493_i32, %c103295414_i32 : i32
        %286 = index.sub %c11, %c13
        scf.yield %c1_i64 : i64
      }
      %262 = index.divs %c1, %249
      %alloca_63 = memref.alloca() : memref<4x2x14xi32>
      %263 = index.mul %c3, %c12
      %264 = memref.atomic_rmw andi %c-24753_i16, %alloc_18[%c2, %c0, %c0] : (i16, memref<4x2x14xi16>) -> i16
      %265 = math.log1p %cst : f16
      vector.print %246 : vector<4xi16>
      %266 = math.fpowi %11, %15 : tensor<14x4xf16>, tensor<14x4xi32>
      %267 = math.exp2 %cst_4 : f16
      %268 = math.log2 %0 : tensor<4x2x14xf16>
      %269 = vector.broadcast %c-24753_i16 : i16 to vector<4x4xi16>
      %270 = vector.outerproduct %246, %246, %269 {kind = #vector.kind<add>} : vector<4xi16>, vector<4xi16>
      %271 = arith.subi %out, %out : i64
      linalg.yield %out : i64
    } -> tensor<4x2x14xi64>
    %52 = arith.addf %cst_4, %cst_4 : f16
    %53 = index.divs %c0, %c15
    %54 = index.divs %c14, %44
    %55 = math.tanh %7 : tensor<4x2x14xf32>
    %56 = arith.minf %cst_4, %cst_4 : f16
    %57 = arith.shli %true_2, %true_1 : i1
    %58 = math.atan %33 : tensor<4x2x14xf16>
    %59 = vector.multi_reduction <or>, %19, %c-24753_i16 [0] : vector<4xi16> to i16
    %60 = vector.multi_reduction <minsi>, %19, %19 [] : vector<4xi16> to vector<4xi16>
    %61 = arith.mulf %cst_0, %cst_0 : f32
    %62 = math.expm1 %33 : tensor<4x2x14xf16>
    %alloc_24 = memref.alloc() : memref<56xi1>
    memref.tensor_store %collapsed, %alloc_24 : memref<56xi1>
    %alloc_25 = memref.alloc() : memref<4x2xi64>
    memref.copy %alloc_8, %alloc_25 : memref<4x2xi64> to memref<4x2xi64>
    %63 = arith.subi %59, %c11_i16 : i16
    %64 = math.log10 %11 : tensor<14x4xf16>
    %65 = vector.reduction <minsi>, %19 : vector<4xi16> into i16
    %cast = tensor.cast %1 : tensor<4x14xi64> to tensor<?x?xi64>
    %66 = arith.xori %c996659765_i32, %c103295414_i32 : i32
    %c1_i16 = arith.constant 1 : i16
    %67 = vector.transfer_read %13[%c2, %c4, %c6], %c1_i16 : tensor<4x2x14xi16>, vector<14xi16>
    %68 = vector.broadcast %c1_i64 : i64 to vector<i64>
    %69 = vector.transfer_write %68, %4[%c10, %c11] : vector<i64>, tensor<4x14xi64>
    %70 = scf.while (%arg0 = %alloc_17) : (memref<4x14xi1>) -> memref<4x14xi1> {
      %242 = arith.remf %cst, %cst : f16
      %243 = math.cttz %c14128351_i32 : i32
      %244 = index.divs %c2, %c10
      %245 = vector.broadcast %cst_0 : f32 to vector<f32>
      %246 = vector.transfer_write %245, %5[%c5, %c12] : vector<f32>, tensor<4x14xf32>
      %247 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %19, %19, %59 : vector<4xi16>, vector<4xi16> into i16
      %248 = math.atan %5 : tensor<4x14xf32>
      %generated_56 = tensor.generate %c7 {
      ^bb0(%arg1: index, %arg2: index):
        %250 = arith.addi %c1_i16, %c11_i16 : i16
        %251 = vector.broadcast %c-24753_i16 : i16 to vector<4x4xi16>
        %252 = vector.outerproduct %19, %19, %251 {kind = #vector.kind<minui>} : vector<4xi16>, vector<4xi16>
        %253 = vector.extract_strided_slice %19 {offsets = [2], sizes = [1], strides = [1]} : vector<4xi16> to vector<1xi16>
        %alloc_57 = memref.alloc() : memref<4x2xi32>
        %254 = vector.broadcast %c14128351_i32 : i32 to vector<4x2xi32>
        %255 = vector.broadcast %true_3 : i1 to vector<4x2xi1>
        %256 = vector.gather %alloc_57[%c8, %45] [%254], %255, %254 : memref<4x2xi32>, vector<4x2xi32>, vector<4x2xi1>, vector<4x2xi32> into vector<4x2xi32>
        tensor.yield %c996659765_i32 : i32
      } : tensor<?x2xi32>
      %249 = index.casts %c3 : index to i32
      scf.condition(%false) %alloc_17 : memref<4x14xi1>
    } do {
    ^bb0(%arg0: memref<4x14xi1>):
      %242 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %19, %19, %c1_i16 : vector<4xi16>, vector<4xi16> into i16
      %alloc_56 = memref.alloc() : memref<14x4xi32>
      %243 = math.round %0 : tensor<4x2x14xf16>
      %244 = vector.create_mask %c9, %c1 : vector<4x2xi1>
      %245 = arith.mulf %cst_0, %cst_0 : f32
      %246 = vector.splat %c14128351_i32 : vector<4x14xi32>
      %247 = arith.maxsi %c1036166205_i32, %c1687968493_i32 : i32
      %248 = math.roundeven %11 : tensor<14x4xf16>
      %false_57 = arith.constant false
      %249 = math.round %0 : tensor<4x2x14xf16>
      %inserted_58 = tensor.insert %cst into %33[%c1, %c0, %c2] : tensor<4x2x14xf16>
      %250 = math.round %cst_4 : f16
      %251 = index.mul %c10, %45
      %252 = index.sizeof
      %inserted_59 = tensor.insert %c1_i64 into %4[%c3, %c7] : tensor<4x14xi64>
      %253 = math.tan %0 : tensor<4x2x14xf16>
      scf.yield %alloc_17 : memref<4x14xi1>
    }
    %cast_26 = tensor.cast %2 : tensor<4x2xi16> to tensor<?x?xi16>
    %71 = arith.maxsi %59, %c1_i16 : i16
    %true_27 = arith.constant true
    %72 = index.floordivs %c4, %c3
    %73 = arith.xori %true, %true_2 : i1
    %74 = index.maxu %54, %54
    %75 = arith.divui %c1687968493_i32, %c996659765_i32 : i32
    %76 = arith.remf %cst_4, %cst : f16
    %77 = math.rsqrt %0 : tensor<4x2x14xf16>
    %78 = math.powf %cst, %cst_4 : f16
    %79 = index.casts %c1036166205_i32 : i32 to index
    %80 = math.ctpop %6 : tensor<4x2x14xi1>
    %81 = vector.bitcast %19 : vector<4xi16> to vector<4xi16>
    %from_elements_28 = tensor.from_elements %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0 : tensor<4x14xf32>
    %cast_29 = tensor.cast %15 : tensor<14x4xi32> to tensor<?x?xi32>
    %82 = math.log %0 : tensor<4x2x14xf16>
    %83 = arith.divui %true, %false : i1
    %84 = scf.while (%arg0 = %alloc_13) : (memref<4x14xi64>) -> memref<4x14xi64> {
      %242 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %81, %19, %c11_i16 : vector<4xi16>, vector<4xi16> into i16
      %243 = arith.xori %false, %false : i1
      %244 = index.maxs %c0, %53
      %245 = vector.broadcast %cst_4 : f16 to vector<4x2x14xf16>
      %246 = vector.broadcast %true_1 : i1 to vector<4x2x14xi1>
      %247 = vector.broadcast %c103295414_i32 : i32 to vector<4x2x14xi32>
      %248 = vector.gather %0[%c14, %c3, %c9] [%247], %246, %245 : tensor<4x2x14xf16>, vector<4x2x14xi32>, vector<4x2x14xi1>, vector<4x2x14xf16> into vector<4x2x14xf16>
      %249 = math.round %cst_0 : f32
      %250 = vector.flat_transpose %81 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
      %251 = bufferization.to_memref %16 : memref<4x2x14xi64>
      %252 = vector.broadcast %c1284945222_i32 : i32 to vector<2x14xi32>
      %253 = vector.insert %252, %247 [3] : vector<2x14xi32> into vector<4x2x14xi32>
      scf.condition(%true_3) %arg0 : memref<4x14xi64>
    } do {
    ^bb0(%arg0: memref<4x14xi64>):
      %242 = math.cttz %3 : tensor<4x2xi1>
      %243 = arith.maxui %c1036166205_i32, %c996659765_i32 : i32
      %244 = arith.remf %cst_0, %cst_0 : f32
      %245 = arith.minf %cst_0, %cst_0 : f32
      %inserted_56 = tensor.insert %cst_0 into %5[%c3, %c2] : tensor<4x14xf32>
      %246 = affine.for %arg1 = 0 to 53 iter_args(%arg2 = %7) -> (tensor<4x2x14xf32>) {
        affine.yield %7 : tensor<4x2x14xf32>
      }
      %from_elements_57 = tensor.from_elements %c996659765_i32, %c103295414_i32, %c1036166205_i32, %c996659765_i32, %c996659765_i32, %c1687968493_i32, %c1687968493_i32, %c103295414_i32, %c1687968493_i32, %c1284945222_i32, %c1687968493_i32, %c1036166205_i32, %c1036166205_i32, %c1284945222_i32, %c996659765_i32, %c1687968493_i32, %c14128351_i32, %c996659765_i32, %c1687968493_i32, %c1284945222_i32, %c1687968493_i32, %c1036166205_i32, %c103295414_i32, %c1284945222_i32, %c103295414_i32, %c1284945222_i32, %c1284945222_i32, %c1036166205_i32, %c1687968493_i32, %c103295414_i32, %c103295414_i32, %c1687968493_i32, %c103295414_i32, %c14128351_i32, %c1036166205_i32, %c1284945222_i32, %c1687968493_i32, %c103295414_i32, %c1687968493_i32, %c996659765_i32, %c1284945222_i32, %c103295414_i32, %c1687968493_i32, %c103295414_i32, %c1687968493_i32, %c14128351_i32, %c996659765_i32, %c996659765_i32, %c996659765_i32, %c14128351_i32, %c996659765_i32, %c1284945222_i32, %c14128351_i32, %c1036166205_i32, %c103295414_i32, %c14128351_i32 : tensor<14x4xi32>
      %247 = math.ctlz %8 : tensor<14x4xi1>
      %248 = bufferization.to_tensor %alloc_7 : memref<4x2x14xf32>
      memref.tensor_store %10, %alloc_5 : memref<4x14xi16>
      %249 = tensor.empty() : tensor<14x2xi32>
      %250 = linalg.matmul ins(%9, %12 : tensor<14x4xi32>, tensor<4x2xi32>) outs(%249 : tensor<14x2xi32>) -> tensor<14x2xi32>
      %alloc_58 = memref.alloc() : memref<4x14xi32>
      memref.copy %alloc_12, %alloc_58 : memref<4x14xi32> to memref<4x14xi32>
      %251 = bufferization.to_tensor %alloc_20 : memref<2x4xi64>
      %252 = vector.insertelement %c-24753_i16, %81[%c14 : index] : vector<4xi16>
      scf.if %true_1 {
        %255 = arith.cmpi ugt, %c1687968493_i32, %c996659765_i32 : i32
        %256 = math.absi %1 : tensor<4x14xi64>
        %257 = arith.divsi %c-24753_i16, %c11_i16 : i16
        %258 = math.atan2 %11, %11 : tensor<14x4xf16>
        %collapsed_59 = tensor.collapse_shape %cast_29 [[0, 1]] : tensor<?x?xi32> into tensor<?xi32>
        %259 = vector.broadcast %c11 : index to vector<2xindex>
        %260 = vector.broadcast %false : i1 to vector<2xi1>
        %261 = vector.broadcast %c1_i64 : i64 to vector<2xi64>
        vector.scatter %alloc_11[%c1, %c3] [%259], %260, %261 : memref<14x4xi64>, vector<2xindex>, vector<2xi1>, vector<2xi64>
        %262 = vector.extract_strided_slice %81 {offsets = [2], sizes = [2], strides = [1]} : vector<4xi16> to vector<2xi16>
        %263 = index.floordivs %c11, %c8
      }
      %253 = vector.broadcast %59 : i16 to vector<4x4xi16>
      %254 = vector.outerproduct %19, %19, %253 {kind = #vector.kind<minui>} : vector<4xi16>, vector<4xi16>
      scf.yield %arg0 : memref<4x14xi64>
    }
    %inserted = tensor.insert %cst_0 into %7[%c2, %c0, %c0] : tensor<4x2x14xf32>
    %85 = math.absi %20 : tensor<14xi64>
    %86 = arith.divui %c-24753_i16, %c-24753_i16 : i16
    bufferization.dealloc_tensor %11 : tensor<14x4xf16>
    %87 = index.sub %44, %48
    %88 = math.log10 %7 : tensor<4x2x14xf32>
    %cast_30 = tensor.cast %3 : tensor<4x2xi1> to tensor<?x?xi1>
    scf.index_switch %53 
    case 1 {
      %242 = scf.index_switch %54 -> memref<4x2xi32> 
      case 1 {
        %cast_57 = tensor.cast %36 : tensor<4x14x1xi32> to tensor<?x?x?xi32>
        %260 = bufferization.clone %alloc_14 : memref<4x2x14xi64> to memref<4x2x14xi64>
        %261 = arith.addi %59, %c1_i16 : i16
        %262 = math.atan %5 : tensor<4x14xf32>
        %263 = math.log1p %0 : tensor<4x2x14xf16>
        %false_58 = index.bool.constant false
        %264 = vector.broadcast %cst_0 : f32 to vector<14x4xf32>
        %265 = vector.fma %264, %264, %264 : vector<14x4xf32>
        %266 = index.casts %c10 : index to i32
        vector.print %19 : vector<4xi16>
        %267 = math.ipowi %13, %13 : tensor<4x2x14xi16>
        %268 = arith.shli %c1687968493_i32, %c1284945222_i32 : i32
        %269 = math.tanh %5 : tensor<4x14xf32>
        %270 = index.sizeof
        %271 = index.sub %54, %c12
        %272 = math.ctlz %c1_i16 : i16
        bufferization.dealloc_tensor %14 : tensor<4x2x14xi64>
        %alloc_59 = memref.alloc() : memref<4x2xi32>
        scf.yield %alloc_59 : memref<4x2xi32>
      }
      default {
        %from_elements_57 = tensor.from_elements %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0 : tensor<4x2xf32>
        %260 = arith.maxui %c996659765_i32, %c14128351_i32 : i32
        %inserted_58 = tensor.insert %c1036166205_i32 into %9[%c1, %c2] : tensor<14x4xi32>
        %cast_59 = tensor.cast %from_elements_28 : tensor<4x14xf32> to tensor<?x?xf32>
        %261 = math.roundeven %0 : tensor<4x2x14xf16>
        %262 = arith.ceildivsi %c1_i16, %c-24753_i16 : i16
        %263 = arith.xori %c1036166205_i32, %c1687968493_i32 : i32
        %264 = vector.create_mask %87, %c15 : vector<4x2xi1>
        %265 = arith.addi %c996659765_i32, %c1284945222_i32 : i32
        %alloc_60 = memref.alloc() : memref<4x2x14xi16>
        %266 = math.fma %expanded, %expanded, %expanded : tensor<4x14x1xf32>
        %267 = vector.broadcast %true : i1 to vector<4x14xi1>
        %inserted_61 = tensor.insert %c-24753_i16 into %cast_26[%c0, %c0] : tensor<?x?xi16>
        %268 = index.casts %true : i1 to index
        %269 = math.expm1 %5 : tensor<4x14xf32>
        %270 = math.fma %cst, %cst, %cst : f16
        %alloc_62 = memref.alloc() : memref<4x2xi32>
        scf.yield %alloc_62 : memref<4x2xi32>
      }
      %243 = vector.shuffle %19, %19 [0, 3, 4] : vector<4xi16>, vector<4xi16>
      %244 = vector.extract_strided_slice %19 {offsets = [2], sizes = [1], strides = [1]} : vector<4xi16> to vector<1xi16>
      %245 = index.divu %c14, %c6
      %246 = vector.broadcast %c1284945222_i32 : i32 to vector<14xi32>
      %247 = vector.transfer_write %246, %9[%c12, %87] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<14xi32>, tensor<14x4xi32>
      %248 = arith.divf %cst_4, %cst : f16
      %249 = math.powf %from_elements_28, %5 : tensor<4x14xf32>
      %inserted_56 = tensor.insert %c1687968493_i32 into %9[%c9, %c1] : tensor<14x4xi32>
      %250 = index.casts %true_1 : i1 to index
      %251 = vector.broadcast %c11_i16 : i16 to vector<4x4xi16>
      %252 = vector.outerproduct %81, %81, %251 {kind = #vector.kind<minui>} : vector<4xi16>, vector<4xi16>
      %253 = arith.minui %true_3, %true : i1
      memref.assume_alignment %alloc_16, 4 : memref<14x4xf16>
      %254 = vector.broadcast %cst_0 : f32 to vector<14xf32>
      %255 = vector.broadcast %true : i1 to vector<14xi1>
      %256 = vector.maskedload %alloc_7[%c3, %c0, %c3], %255, %254 : memref<4x2x14xf32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
      %257 = arith.negf %cst_4 : f16
      %258 = vector.extract_strided_slice %256 {offsets = [0], sizes = [12], strides = [1]} : vector<14xf32> to vector<12xf32>
      %259 = arith.ceildivsi %c1036166205_i32, %c1036166205_i32 : i32
      scf.yield
    }
    case 2 {
      %242 = arith.shli %true_3, %false : i1
      %generated_56 = tensor.generate %c14, %c14 {
      ^bb0(%arg0: index, %arg1: index, %arg2: index):
        %253 = index.ceildivu %c5, %c8
        %254 = vector.broadcast %false : i1 to vector<14x14xi1>
        %255 = vector.broadcast %false : i1 to vector<14xi1>
        %dest_61, %accumulated_value_62 = vector.scan <xor>, %254, %255 {inclusive = false, reduction_dim = 0 : i64} : vector<14x14xi1>, vector<14xi1>
        %256 = arith.muli %c1284945222_i32, %c1687968493_i32 : i32
        %257 = index.add %c4, %c5
        tensor.yield %c1_i64 : i64
      } : tensor<?x?x14xi64>
      %243 = math.atan2 %cst_0, %cst_0 : f32
      %244 = vector.matrix_multiply %19, %81 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
      %splat_57 = tensor.splat %c1687968493_i32 : tensor<4x2x14xi32>
      %245 = memref.atomic_rmw ori %c1_i64, %alloc_13[%c1, %c10] : (i64, memref<4x14xi64>) -> i64
      %246 = arith.maxui %c996659765_i32, %c1284945222_i32 : i32
      %247 = math.ceil %11 : tensor<14x4xf16>
      %248 = bufferization.to_memref %generated_56 : memref<?x?x14xi64>
      %249 = index.floordivs %c13, %87
      %alloca_58 = memref.alloca() : memref<4x14xi16>
      %250 = math.fpowi %11, %9 : tensor<14x4xf16>, tensor<14x4xi32>
      %251 = arith.muli %c1036166205_i32, %c1036166205_i32 : i32
      %alloca_59 = memref.alloca() : memref<4x14xf32>
      %252 = index.ceildivu %72, %45
      %alloc_60 = memref.alloc() : memref<4x2xf16>
      scf.yield
    }
    default {
      %242 = math.tanh %from_elements_28 : tensor<4x14xf32>
      %collapsed_56 = tensor.collapse_shape %12 [[0, 1]] : tensor<4x2xi32> into tensor<8xi32>
      %collapsed_57 = tensor.collapse_shape %cast_30 [[0, 1]] : tensor<?x?xi1> into tensor<?xi1>
      %243 = math.atan %7 : tensor<4x2x14xf32>
      %244 = math.fma %cst, %cst, %cst : f16
      %245 = index.divu %c10, %45
      %246 = arith.shrui %true_3, %true_1 : i1
      %247 = math.exp2 %33 : tensor<4x2x14xf16>
      %248 = vector.broadcast %c2 : index to vector<14xindex>
      %249 = vector.broadcast %true_1 : i1 to vector<14xi1>
      %250 = vector.broadcast %cst_0 : f32 to vector<14xf32>
      vector.scatter %alloc_7[%c0, %c1, %c6] [%248], %249, %250 : memref<4x2x14xf32>, vector<14xindex>, vector<14xi1>, vector<14xf32>
      %251 = bufferization.clone %alloc_11 : memref<14x4xi64> to memref<14x4xi64>
      %252 = bufferization.to_tensor %alloc_14 : memref<4x2x14xi64>
      %generated_58 = tensor.generate %c0 {
      ^bb0(%arg0: index, %arg1: index):
        bufferization.dealloc_tensor %3 : tensor<4x2xi1>
        %255 = math.absi %10 : tensor<4x14xi16>
        %256 = vector.broadcast %c12 : index to vector<14xindex>
        %257 = vector.broadcast %true_1 : i1 to vector<14xi1>
        %258 = vector.broadcast %c1_i64 : i64 to vector<14xi64>
        vector.scatter %alloc_13[%c2, %c11] [%256], %257, %258 : memref<4x14xi64>, vector<14xindex>, vector<14xi1>, vector<14xi64>
        %259 = math.expm1 %0 : tensor<4x2x14xf16>
        tensor.yield %cst_0 : f32
      } : tensor<?x2xf32>
      %253 = math.round %cst_0 : f32
      scf.index_switch %c5 
      case 1 {
        %255 = arith.addf %cst_4, %cst : f16
        %256 = index.mul %c13, %c9
        memref.tensor_store %0, %alloc_19 : memref<4x2x14xf16>
        %collapsed_59 = tensor.collapse_shape %from_elements_28 [[0, 1]] : tensor<4x14xf32> into tensor<56xf32>
        %257 = index.maxu %c5, %45
        %from_elements_60 = tensor.from_elements %c-24753_i16, %c1_i16, %c1_i16, %59, %c-24753_i16, %59, %c-24753_i16, %c11_i16 : tensor<4x2xi16>
        %258 = arith.muli %true_1, %true_3 : i1
        memref.tensor_store %1, %alloc_13 : memref<4x14xi64>
        %259 = arith.minui %c1_i64, %c1_i64 : i64
        %260 = math.exp %11 : tensor<14x4xf16>
        %261 = math.ctlz %15 : tensor<14x4xi32>
        %262 = math.atan %from_elements_28 : tensor<4x14xf32>
        %263 = arith.floordivsi %59, %c1_i16 : i16
        %264 = vector.bitcast %19 : vector<4xi16> to vector<4xi16>
        %265 = arith.divf %cst_0, %cst_0 : f32
        %266 = vector.broadcast %c1687968493_i32 : i32 to vector<2x14xi32>
        %267 = vector.transfer_write %266, %36[%53, %48, %c2] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<2x14xi32>, tensor<4x14x1xi32>
        scf.yield
      }
      case 2 {
        %255 = math.log10 %11 : tensor<14x4xf16>
        %256 = bufferization.to_tensor %alloc_11 : memref<14x4xi64>
        %257 = bufferization.clone %alloc_21 : memref<14xi64> to memref<14xi64>
        %alloc_59 = memref.alloc() : memref<4x2xi16>
        memref.copy %alloc_10, %alloc_59 : memref<4x2xi16> to memref<4x2xi16>
        %258 = math.copysign %5, %5 : tensor<4x14xf32>
        %from_elements_60 = tensor.from_elements %c996659765_i32, %c1687968493_i32, %c1284945222_i32, %c996659765_i32, %c14128351_i32, %c14128351_i32, %c14128351_i32, %c1284945222_i32, %c1036166205_i32, %c1036166205_i32, %c1036166205_i32, %c996659765_i32, %c1036166205_i32, %c103295414_i32, %c996659765_i32, %c996659765_i32, %c1036166205_i32, %c996659765_i32, %c1687968493_i32, %c1036166205_i32, %c996659765_i32, %c1687968493_i32, %c996659765_i32, %c996659765_i32, %c1036166205_i32, %c996659765_i32, %c1036166205_i32, %c14128351_i32, %c1284945222_i32, %c996659765_i32, %c1036166205_i32, %c1284945222_i32, %c14128351_i32, %c996659765_i32, %c996659765_i32, %c1687968493_i32, %c996659765_i32, %c1284945222_i32, %c103295414_i32, %c996659765_i32, %c103295414_i32, %c103295414_i32, %c14128351_i32, %c1284945222_i32, %c1687968493_i32, %c996659765_i32, %c103295414_i32, %c1284945222_i32, %c996659765_i32, %c1036166205_i32, %c14128351_i32, %c14128351_i32, %c1687968493_i32, %c996659765_i32, %c1036166205_i32, %c103295414_i32, %c1036166205_i32, %c1687968493_i32, %c996659765_i32, %c996659765_i32, %c14128351_i32, %c1284945222_i32, %c996659765_i32, %c996659765_i32, %c1036166205_i32, %c14128351_i32, %c1036166205_i32, %c1036166205_i32, %c1687968493_i32, %c103295414_i32, %c1687968493_i32, %c1284945222_i32, %c996659765_i32, %c1284945222_i32, %c996659765_i32, %c1036166205_i32, %c14128351_i32, %c1036166205_i32, %c1687968493_i32, %c1687968493_i32, %c14128351_i32, %c14128351_i32, %c996659765_i32, %c996659765_i32, %c996659765_i32, %c996659765_i32, %c1036166205_i32, %c1284945222_i32, %c14128351_i32, %c1284945222_i32, %c1036166205_i32, %c996659765_i32, %c103295414_i32, %c103295414_i32, %c1036166205_i32, %c103295414_i32, %c1687968493_i32, %c1036166205_i32, %c103295414_i32, %c1687968493_i32, %c14128351_i32, %c1687968493_i32, %c14128351_i32, %c996659765_i32, %c14128351_i32, %c1036166205_i32, %c1687968493_i32, %c14128351_i32, %c1036166205_i32, %c14128351_i32, %c103295414_i32, %c1036166205_i32 : tensor<4x2x14xi32>
        %259 = math.ctlz %6 : tensor<4x2x14xi1>
        %c12185_i16 = arith.constant 12185 : i16
        bufferization.dealloc_tensor %7 : tensor<4x2x14xf32>
        %260 = vector.broadcast %cst : f16 to vector<4x14xf16>
        %261 = vector.broadcast %cst : f16 to vector<4xf16>
        %dest_61, %accumulated_value_62 = vector.scan <mul>, %260, %261 {inclusive = false, reduction_dim = 1 : i64} : vector<4x14xf16>, vector<4xf16>
        %262 = math.ctlz %6 : tensor<4x2x14xi1>
        %263 = vector.transpose %68, [] : vector<i64> to vector<i64>
        %264 = math.ctlz %1 : tensor<4x14xi64>
        vector.print %19 : vector<4xi16>
        %265 = arith.divsi %59, %c-24753_i16 : i16
        memref.copy %alloc_11, %251 : memref<14x4xi64> to memref<14x4xi64>
        scf.yield
      }
      default {
        %255 = math.copysign %from_elements_28, %5 : tensor<4x14xf32>
        %true_59 = index.bool.constant true
        %256 = vector.bitcast %19 : vector<4xi16> to vector<4xi16>
        %257 = math.ctlz %15 : tensor<14x4xi32>
        %258 = vector.insertelement %c1_i16, %256[%54 : index] : vector<4xi16>
        %259 = vector.insert %c-24753_i16, %19 [0] : i16 into vector<4xi16>
        %260 = arith.divsi %true_1, %true : i1
        %261 = arith.divf %cst_4, %cst_4 : f16
        %262 = arith.minui %c14128351_i32, %c103295414_i32 : i32
        %263 = vector.broadcast %c1_i64 : i64 to vector<4x4xi64>
        %264 = vector.broadcast %c1_i64 : i64 to vector<4xi64>
        %dest_60, %accumulated_value_61 = vector.scan <minsi>, %263, %264 {inclusive = false, reduction_dim = 0 : i64} : vector<4x4xi64>, vector<4xi64>
        %265 = arith.remf %cst_0, %cst_0 : f32
        %266 = arith.ceildivsi %true_3, %true_1 : i1
        %267 = math.roundeven %expanded : tensor<4x14x1xf32>
        %268 = index.sub %45, %c2
        %269 = math.log10 %cst_4 : f16
        bufferization.dealloc_tensor %12 : tensor<4x2xi32>
      }
      %254 = index.castu %c10 : index to i32
      memref.tensor_store %4, %alloc_13 : memref<4x14xi64>
    }
    %89 = arith.addi %true_3, %true_2 : i1
    %90 = arith.divui %c-24753_i16, %c1_i16 : i16
    %91 = math.tanh %11 : tensor<14x4xf16>
    %92 = vector.extract_strided_slice %81 {offsets = [0], sizes = [1], strides = [1]} : vector<4xi16> to vector<1xi16>
    %93 = vector.broadcast %59 : i16 to vector<1x1xi16>
    %94 = vector.outerproduct %92, %92, %93 {kind = #vector.kind<add>} : vector<1xi16>, vector<1xi16>
    %95 = index.floordivs %c2, %c3
    %96 = math.powf %cst_0, %cst_0 : f32
    memref.store %true, %alloc_15[%c4, %c1] : memref<14x4xi1>
    %97 = arith.maxsi %c1687968493_i32, %c103295414_i32 : i32
    %from_elements_31 = tensor.from_elements %c11_i16, %c11_i16, %c-24753_i16, %c11_i16, %c1_i16, %c1_i16, %c11_i16, %59, %59, %59, %c11_i16, %59, %c-24753_i16, %c1_i16, %c-24753_i16, %c-24753_i16, %c-24753_i16, %c-24753_i16, %c11_i16, %c11_i16, %c-24753_i16, %c1_i16, %c11_i16, %59, %c11_i16, %59, %c1_i16, %c-24753_i16, %c11_i16, %59, %c1_i16, %c1_i16, %c-24753_i16, %59, %59, %59, %c1_i16, %c-24753_i16, %59, %59, %c1_i16, %59, %c-24753_i16, %59, %c-24753_i16, %c1_i16, %c11_i16, %c-24753_i16, %c1_i16, %c1_i16, %59, %c11_i16, %59, %c-24753_i16, %c-24753_i16, %59, %c1_i16, %c1_i16, %c-24753_i16, %59, %59, %59, %c11_i16, %c11_i16, %c1_i16, %c11_i16, %c-24753_i16, %c1_i16, %59, %c11_i16, %c1_i16, %c-24753_i16, %c1_i16, %c1_i16, %59, %59, %c1_i16, %c1_i16, %c11_i16, %59, %c1_i16, %c-24753_i16, %c1_i16, %c1_i16, %c11_i16, %c-24753_i16, %59, %c-24753_i16, %c1_i16, %59, %c1_i16, %59, %c-24753_i16, %59, %c-24753_i16, %c-24753_i16, %c1_i16, %c11_i16, %59, %c1_i16, %c1_i16, %c-24753_i16, %c1_i16, %c1_i16, %c11_i16, %c11_i16, %c-24753_i16, %c-24753_i16, %c11_i16, %c-24753_i16, %c11_i16, %59 : tensor<4x2x14xi16>
    %98 = vector.reduction <minui>, %19 : vector<4xi16> into i16
    %99 = arith.ori %true_1, %true_2 : i1
    %100 = math.powf %11, %11 : tensor<14x4xf16>
    %collapsed_32 = tensor.collapse_shape %8 [[0, 1]] : tensor<14x4xi1> into tensor<56xi1>
    %101 = arith.maxui %c1036166205_i32, %c1284945222_i32 : i32
    %alloc_33 = memref.alloc() : memref<4x2xf16>
    %102 = math.powf %7, %7 : tensor<4x2x14xf32>
    %103 = index.maxu %c15, %48
    %104 = math.exp2 %7 : tensor<4x2x14xf32>
    %from_elements_34 = tensor.from_elements %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64 : tensor<14x4xi64>
    %cast_35 = tensor.cast %7 : tensor<4x2x14xf32> to tensor<?x?x?xf32>
    %alloc_36 = memref.alloc() : memref<14xi1>
    %alloc_37 = memref.alloc() : memref<2x4xi1>
    %105 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_36, %alloc_37, %3 : memref<14xi1>, memref<2x4xi1>, tensor<4x2xi1>) outs(%6 : tensor<4x2x14xi1>) {
    ^bb0(%in: i1, %in_56: i1, %in_57: i1, %out: i1):
      %242 = arith.subi %c103295414_i32, %c996659765_i32 : i32
      %243 = arith.minf %cst, %cst_4 : f16
      %cast_58 = tensor.cast %expanded : tensor<4x14x1xf32> to tensor<?x?x?xf32>
      %244 = affine.if affine_set<(d0, d1, d2, d3) : (((d2 + 64) ceildiv 32) floordiv 8 >= 0, d2 + d1 ceildiv 32 + 72 >= 0, d2 ceildiv 128 - 2 == 0)>(%c15, %c6, %c11, %c0) -> f32 {
        %269 = index.floordivs %c15, %87
        %270 = math.tan %11 : tensor<14x4xf16>
        %271 = vector.broadcast %c10 : index to vector<4xindex>
        %272 = vector.broadcast %out : i1 to vector<4xi1>
        %273 = vector.broadcast %c1_i64 : i64 to vector<4xi64>
        vector.scatter %alloc_14[%c0, %c1, %c12] [%271], %272, %273 : memref<4x2x14xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
        %274 = vector.multi_reduction <xor>, %92, %92 [] : vector<1xi16> to vector<1xi16>
        %alloc_64 = memref.alloc() : memref<56xi1>
        memref.tensor_store %collapsed, %alloc_64 : memref<56xi1>
        %275 = tensor.empty(%269) : tensor<?x14xf32>
        memref.tensor_store %from_elements_31, %alloc_18 : memref<4x2x14xi16>
        %276 = vector.broadcast %87 : index to vector<14xindex>
        %277 = vector.broadcast %in_56 : i1 to vector<14xi1>
        %278 = vector.broadcast %c-24753_i16 : i16 to vector<14xi16>
        vector.scatter %alloc_5[%c3, %c10] [%276], %277, %278 : memref<4x14xi16>, vector<14xindex>, vector<14xi1>, vector<14xi16>
        affine.yield %cst_0 : f32
      } else {
        %269 = math.atan2 %33, %33 : tensor<4x2x14xf16>
        %270 = arith.divsi %c14128351_i32, %c103295414_i32 : i32
        %271 = vector.broadcast %cst_0 : f32 to vector<4x14xf32>
        %272 = vector.fma %271, %271, %271 : vector<4x14xf32>
        %273 = arith.cmpf ueq, %cst_4, %cst_4 : f16
        %274 = arith.shli %c1284945222_i32, %c996659765_i32 : i32
        %275 = vector.flat_transpose %19 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %276 = arith.minf %cst_0, %cst_0 : f32
        bufferization.dealloc_tensor %cast_26 : tensor<?x?xi16>
        affine.yield %cst_0 : f32
      }
      %245 = arith.shrui %out, %true : i1
      %246 = math.cttz %c103295414_i32 : i32
      %247 = arith.maxui %in_56, %out : i1
      %248 = math.ceil %0 : tensor<4x2x14xf16>
      %249 = math.fma %7, %7, %7 : tensor<4x2x14xf32>
      %250 = index.ceildivu %c0, %c1
      scf.index_switch %c2 
      case 1 {
        bufferization.dealloc_tensor %15 : tensor<14x4xi32>
        memref.tensor_store %17, %alloc_14 : memref<4x2x14xi64>
        %269 = arith.xori %59, %c11_i16 : i16
        %270 = arith.xori %c1284945222_i32, %c1687968493_i32 : i32
        %271 = arith.negf %cst : f16
        %272 = vector.extract_strided_slice %19 {offsets = [0], sizes = [4], strides = [1]} : vector<4xi16> to vector<4xi16>
        %273 = math.ipowi %c1036166205_i32, %c14128351_i32 : i32
        %274 = math.round %0 : tensor<4x2x14xf16>
        %275 = index.sizeof
        %276 = bufferization.to_memref %6 : memref<4x2x14xi1>
        %277 = math.roundeven %7 : tensor<4x2x14xf32>
        %278 = index.divs %48, %c3
        %279 = arith.muli %c996659765_i32, %c1687968493_i32 : i32
        %280 = arith.addf %cst, %cst : f16
        %alloca_64 = memref.alloca() : memref<4x2x14xi1>
        %281 = math.ctlz %8 : tensor<14x4xi1>
        scf.yield
      }
      case 2 {
        %269 = math.ctlz %12 : tensor<4x2xi32>
        %270 = vector.insert %c1_i16, %92 [0] : i16 into vector<1xi16>
        %271 = math.fma %7, %7, %7 : tensor<4x2x14xf32>
        %272 = math.atan %11 : tensor<14x4xf16>
        %collapsed_64 = tensor.collapse_shape %12 [[0, 1]] : tensor<4x2xi32> into tensor<8xi32>
        %273 = math.atan2 %from_elements_28, %5 : tensor<4x14xf32>
        %274 = arith.ori %c1687968493_i32, %c14128351_i32 : i32
        %275 = arith.negf %cst : f16
        %276 = arith.maxsi %in, %true_2 : i1
        %277 = arith.addi %c996659765_i32, %c1036166205_i32 : i32
        %278 = arith.remf %cst_4, %cst_4 : f16
        %279 = arith.remf %cst_0, %cst_0 : f32
        %280 = vector.flat_transpose %92 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
        %281 = math.ctpop %2 : tensor<4x2xi16>
        %282 = index.floordivs %87, %48
        %283 = vector.broadcast %c1_i64 : i64 to vector<2x14xi64>
        %284 = vector.broadcast %c1_i64 : i64 to vector<2xi64>
        %dest_65, %accumulated_value_66 = vector.scan <maxsi>, %283, %284 {inclusive = false, reduction_dim = 1 : i64} : vector<2x14xi64>, vector<2xi64>
        scf.yield
      }
      default {
        %269 = arith.remf %cst_0, %cst_0 : f32
        %270 = vector.transpose %68, [] : vector<i64> to vector<i64>
        %271 = arith.remf %cst, %cst : f16
        %cast_64 = tensor.cast %from_elements : tensor<4x14xi16> to tensor<?x?xi16>
        %rank_65 = tensor.rank %5 : tensor<4x14xf32>
        %272 = math.atan2 %cst, %cst_4 : f16
        %273 = arith.mulf %cst_0, %cst_0 : f32
        %274 = math.absi %c14128351_i32 : i32
        %275 = math.log1p %0 : tensor<4x2x14xf16>
        %rank_66 = tensor.rank %33 : tensor<4x2x14xf16>
        %276 = arith.maxsi %c11_i16, %59 : i16
        %277 = math.roundeven %11 : tensor<14x4xf16>
        %278 = math.absf %expanded : tensor<4x14x1xf32>
        %279 = index.ceildivu %c14, %74
        %280 = bufferization.to_memref %1 : memref<4x14xi64>
        %281 = vector.broadcast %c12 : index to vector<14xindex>
        %282 = vector.broadcast %in_56 : i1 to vector<14xi1>
        %283 = vector.broadcast %c1_i64 : i64 to vector<14xi64>
        vector.scatter %alloc_14[%c2, %c1, %c9] [%281], %282, %283 : memref<4x2x14xi64>, vector<14xindex>, vector<14xi1>, vector<14xi64>
      }
      %251 = vector.broadcast %c-24753_i16 : i16 to vector<2x4xi16>
      %dest_59, %accumulated_value_60 = vector.scan <add>, %251, %81 {inclusive = false, reduction_dim = 0 : i64} : vector<2x4xi16>, vector<4xi16>
      %collapsed_61 = tensor.collapse_shape %3 [[0, 1]] : tensor<4x2xi1> into tensor<8xi1>
      %252 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %81, %19, %c-24753_i16 : vector<4xi16>, vector<4xi16> into i16
      %253 = math.fma %cst, %cst, %cst_4 : f16
      %254 = arith.maxui %c1284945222_i32, %c1284945222_i32 : i32
      %255 = math.rsqrt %0 : tensor<4x2x14xf16>
      %256 = scf.while (%arg0 = %alloc_13) : (memref<4x14xi64>) -> memref<4x14xi64> {
        bufferization.dealloc_tensor %cast_35 : tensor<?x?x?xf32>
        %269 = arith.shrsi %true_2, %out : i1
        %inserted_64 = tensor.insert %c1_i16 into %13[%c2, %c0, %c6] : tensor<4x2x14xi16>
        %270 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %19, %81, %59 : vector<4xi16>, vector<4xi16> into i16
        %271 = index.sub %c11, %79
        %272 = math.cttz %8 : tensor<14x4xi1>
        %cast_65 = tensor.cast %6 : tensor<4x2x14xi1> to tensor<?x?x?xi1>
        %273 = math.atan2 %cst, %cst_4 : f16
        scf.condition(%out) %arg0 : memref<4x14xi64>
      } do {
      ^bb0(%arg0: memref<4x14xi64>):
        %cast_64 = tensor.cast %33 : tensor<4x2x14xf16> to tensor<?x?x?xf16>
        %269 = arith.remf %cst, %cst : f16
        %270 = vector.multi_reduction <add>, %92, %59 [0] : vector<1xi16> to i16
        %271 = math.ceil %11 : tensor<14x4xf16>
        %false_65 = index.bool.constant false
        %inserted_66 = tensor.insert %c103295414_i32 into %15[%c2, %c0] : tensor<14x4xi32>
        %272 = arith.subi %c1036166205_i32, %c996659765_i32 : i32
        %273 = vector.insert %59, %19 [1] : i16 into vector<4xi16>
        %274 = vector.flat_transpose %81 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %275 = arith.subi %c14128351_i32, %c1036166205_i32 : i32
        %276 = arith.shrui %270, %270 : i16
        %277 = arith.maxsi %out, %true : i1
        %inserted_67 = tensor.insert %cst_4 into %11[%c12, %c0] : tensor<14x4xf16>
        %278 = arith.xori %c-24753_i16, %59 : i16
        %279 = arith.addi %in, %true_3 : i1
        %from_elements_68 = tensor.from_elements %cst, %cst_4, %cst_4, %cst, %cst, %cst, %cst, %cst : tensor<4x2xf16>
        scf.yield %alloc_13 : memref<4x14xi64>
      }
      %257 = math.powf %11, %11 : tensor<14x4xf16>
      %258 = vector.broadcast %c1687968493_i32 : i32 to vector<14x4xi32>
      %259 = arith.maxf %cst, %cst : f16
      %260 = index.castu %c1_i16 : i16 to index
      %generated_62 = tensor.generate %54, %c0 {
      ^bb0(%arg0: index, %arg1: index):
        %269 = arith.maxsi %c-24753_i16, %59 : i16
        %270 = arith.remf %cst_4, %cst : f16
        %271 = arith.divsi %out, %true_3 : i1
        %272 = arith.xori %in_57, %in_57 : i1
        tensor.yield %c1036166205_i32 : i32
      } : tensor<?x?xi32>
      %261 = math.atan2 %11, %11 : tensor<14x4xf16>
      %262 = math.atan2 %7, %7 : tensor<4x2x14xf32>
      %263 = math.tan %cst : f16
      %264 = arith.floordivsi %false, %true_2 : i1
      %265 = math.roundeven %5 : tensor<4x14xf32>
      %266 = vector.splat %c6 : vector<14x4xindex>
      %267 = vector.load %alloc_14[%c3, %c0, %c10] : memref<4x2x14xi64>, vector<14x4xi64>
      %alloca_63 = memref.alloca() : memref<14x4xi1>
      %268 = index.mul %250, %c0
      linalg.yield %out : i1
    } -> tensor<4x2x14xi1>
    %106 = arith.addi %59, %c1_i16 : i16
    %107 = vector.transpose %81, [0] : vector<4xi16> to vector<4xi16>
    %108 = math.atan2 %5, %5 : tensor<4x14xf32>
    %109 = math.ctlz %15 : tensor<14x4xi32>
    %110 = math.tan %0 : tensor<4x2x14xf16>
    %111 = index.maxu %c13, %87
    %112 = vector.broadcast %c1_i16 : i16 to vector<14x2x2xi16>
    %113 = vector.broadcast %59 : i16 to vector<14x2xi16>
    %dest, %accumulated_value = vector.scan <maxsi>, %112, %113 {inclusive = true, reduction_dim = 1 : i64} : vector<14x2x2xi16>, vector<14x2xi16>
    %114 = arith.minf %cst, %cst : f16
    vector.print %68 : vector<i64>
    %115 = arith.minf %cst_4, %cst_4 : f16
    affine.for %arg0 = 0 to 126 {
    }
    %116 = arith.divsi %c103295414_i32, %c14128351_i32 : i32
    %117 = arith.maxsi %true, %false : i1
    %118 = vector.shuffle %81, %19 [2, 7] : vector<4xi16>, vector<4xi16>
    %from_elements_38 = tensor.from_elements %59, %c1_i16, %59, %59, %c11_i16, %c11_i16, %c1_i16, %59, %59, %59, %c-24753_i16, %c11_i16, %c1_i16, %59, %c11_i16, %59, %c-24753_i16, %c11_i16, %c-24753_i16, %c11_i16, %c1_i16, %59, %c1_i16, %c1_i16, %c1_i16, %c-24753_i16, %c1_i16, %59, %c11_i16, %c1_i16, %c11_i16, %c1_i16, %c1_i16, %c-24753_i16, %59, %59, %59, %c11_i16, %c-24753_i16, %59, %59, %c-24753_i16, %c11_i16, %c1_i16, %c11_i16, %c11_i16, %c11_i16, %c1_i16, %c1_i16, %c11_i16, %59, %c1_i16, %c1_i16, %c-24753_i16, %c1_i16, %c-24753_i16 : tensor<14x4xi16>
    %119 = arith.maxui %true_3, %false : i1
    %120 = math.absi %from_elements_34 : tensor<14x4xi64>
    %121 = vector.extract_strided_slice %92 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi16> to vector<1xi16>
    %122 = vector.create_mask %c11, %c11, %95 : vector<4x2x14xi1>
    %123 = vector.transpose %92, [0] : vector<1xi16> to vector<1xi16>
    %124 = vector.broadcast %c-24753_i16 : i16 to vector<4x2x14xi16>
    %125 = math.roundeven %cst_4 : f16
    %126 = index.maxu %c0, %c3
    %generated_39 = tensor.generate %c7 {
    ^bb0(%arg0: index, %arg1: index):
      %242 = arith.floordivsi %c14128351_i32, %c14128351_i32 : i32
      %243 = vector.reduction <xor>, %19 : vector<4xi16> into i16
      %244 = arith.maxf %cst, %cst : f16
      %245 = arith.remf %cst, %cst : f16
      tensor.yield %true : i1
    } : tensor<?x14xi1>
    %127 = math.log1p %5 : tensor<4x14xf32>
    %128 = math.log2 %7 : tensor<4x2x14xf32>
    %129 = index.maxu %c15, %c10
    %130 = math.cttz %6 : tensor<4x2x14xi1>
    %131 = memref.atomic_rmw addf %cst, %alloc[%c3, %c1] : (f16, memref<4x2xf16>) -> f16
    %132 = vector.transpose %92, [0] : vector<1xi16> to vector<1xi16>
    %133 = index.casts %c103295414_i32 : i32 to index
    %134 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %121, %92, %c11_i16 : vector<1xi16>, vector<1xi16> into i16
    %135 = arith.remf %cst, %cst_4 : f16
    %rank = tensor.rank %10 : tensor<4x14xi16>
    %136 = arith.addi %c-24753_i16, %c11_i16 : i16
    %extracted = tensor.extract %20[%c10] : tensor<14xi64>
    %137 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%13 : tensor<4x2x14xi16>) {
    ^bb0(%out: i16):
      %242 = arith.subi %false, %true : i1
      %243 = bufferization.to_memref %11 : memref<14x4xf16>
      %244 = arith.divui %false, %true_1 : i1
      %from_elements_56 = tensor.from_elements %c1687968493_i32, %c1036166205_i32, %c1687968493_i32, %c996659765_i32, %c14128351_i32, %c103295414_i32, %c1687968493_i32, %c1036166205_i32 : tensor<4x2xi32>
      %245 = arith.shli %c14128351_i32, %c996659765_i32 : i32
      %246 = vector.insert %c11_i16, %121 [0] : i16 into vector<1xi16>
      %247 = math.copysign %7, %7 : tensor<4x2x14xf32>
      memref.alloca_scope  {
        %271 = math.absf %cst_4 : f16
        %272 = math.ceil %cst_4 : f16
        vector.print %19 : vector<4xi16>
        %273 = arith.remf %cst_0, %cst_0 : f32
        %274 = math.rsqrt %expanded : tensor<4x14x1xf32>
        %275 = vector.insert %c1_i16, %19 [3] : i16 into vector<4xi16>
        %276 = arith.cmpi sgt, %c1687968493_i32, %c1036166205_i32 : i32
        %277 = math.tanh %from_elements_28 : tensor<4x14xf32>
        %278 = vector.broadcast %59 : i16 to vector<4x4xi16>
        %279 = vector.outerproduct %81, %81, %278 {kind = #vector.kind<and>} : vector<4xi16>, vector<4xi16>
        %280 = arith.floordivsi %out, %c11_i16 : i16
        %281 = math.floor %5 : tensor<4x14xf32>
        %282 = bufferization.to_memref %collapsed : memref<56xi1>
        %283 = arith.shrui %c1687968493_i32, %c103295414_i32 : i32
        %284 = index.mul %54, %79
        %285 = math.cttz %12 : tensor<4x2xi32>
        %286 = math.expm1 %0 : tensor<4x2x14xf16>
        %287 = arith.shli %true_1, %false : i1
        %288 = math.expm1 %cst_0 : f32
        %289 = bufferization.clone %alloc_21 : memref<14xi64> to memref<14xi64>
        %290 = vector.broadcast %true_3 : i1 to vector<14xi1>
        %291 = vector.maskedload %alloc_17[%c1, %c7], %290, %290 : memref<4x14xi1>, vector<14xi1>, vector<14xi1> into vector<14xi1>
        %292 = arith.addi %c11_i16, %c-24753_i16 : i16
        memref.tensor_store %0, %alloc_19 : memref<4x2x14xf16>
        %293 = math.tanh %0 : tensor<4x2x14xf16>
        bufferization.dealloc_tensor %from_elements_34 : tensor<14x4xi64>
        %294 = arith.maxsi %c996659765_i32, %c1687968493_i32 : i32
        %295 = vector.reduction <maxui>, %81 : vector<4xi16> into i16
        %c-21064_i16 = arith.constant -21064 : i16
        %296 = vector.broadcast %c1_i64 : i64 to vector<14xi64>
        %297 = vector.maskedload %289[%c13], %290, %296 : memref<14xi64>, vector<14xi1>, vector<14xi64> into vector<14xi64>
        %alloca_63 = memref.alloca() : memref<4x2x14xi1>
        %298 = arith.divf %cst, %cst : f16
        %299 = arith.maxf %cst, %cst_4 : f16
        %300 = math.log1p %cst_0 : f32
      }
      %248 = arith.maxui %c1_i64, %extracted : i64
      %cast_57 = tensor.cast %0 : tensor<4x2x14xf16> to tensor<?x?x?xf16>
      %249 = arith.addi %extracted, %c1_i64 : i64
      %250 = index.sizeof
      %251 = math.round %cst_0 : f32
      %252 = arith.divui %false, %false : i1
      %253 = arith.maxf %cst_0, %cst_0 : f32
      %alloc_58 = memref.alloc() : memref<4xf16>
      %254 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_58 : memref<4xf16>) outs(%33 : tensor<4x2x14xf16>) {
      ^bb0(%in: f16, %out_63: f16):
        %271 = math.expm1 %7 : tensor<4x2x14xf32>
        %272 = memref.atomic_rmw assign %out_63, %alloc_19[%c0, %c1, %c8] : (f16, memref<4x2x14xf16>) -> f16
        %273 = vector.transpose %19, [0] : vector<4xi16> to vector<4xi16>
        %274 = arith.floordivsi %c11_i16, %c11_i16 : i16
        %275 = arith.muli %c11_i16, %out : i16
        %276 = arith.xori %c-24753_i16, %59 : i16
        %277 = vector.matrix_multiply %121, %121 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
        %278 = index.divs %c2, %72
        %279 = arith.minf %cst, %in : f16
        %280 = arith.mulf %cst_0, %cst_0 : f32
        %281 = index.add %72, %c14
        %splat_64 = tensor.splat %59 : tensor<4x14xi16>
        %inserted_65 = tensor.insert %c1_i64 into %1[%c3, %c9] : tensor<4x14xi64>
        %282 = arith.shli %c1284945222_i32, %c14128351_i32 : i32
        %283 = arith.addi %c1_i64, %extracted : i64
        %284 = arith.addf %out_63, %in : f16
        %285 = math.copysign %out_63, %cst_4 : f16
        %286 = math.fma %cst_4, %out_63, %in : f16
        %287 = tensor.empty() : tensor<4x14xi32>
        %288 = math.fpowi %5, %287 : tensor<4x14xf32>, tensor<4x14xi32>
        %alloca_66 = memref.alloca() : memref<4x2x14xi64>
        vector.print %81 : vector<4xi16>
        %inserted_67 = tensor.insert %c1_i16 into %from_elements[%c0, %c2] : tensor<4x14xi16>
        %289 = memref.load %243[%c13, %c0] : memref<14x4xf16>
        %290 = memref.realloc %alloc_21 : memref<14xi64> to memref<2xi64>
        %291 = index.mul %45, %c3
        %292 = vector.reduction <or>, %92 : vector<1xi16> into i16
        %293 = vector.broadcast %cst_0 : f32 to vector<4x2x14xf32>
        %294 = vector.fma %293, %293, %293 : vector<4x2x14xf32>
        %295 = math.atan %33 : tensor<4x2x14xf16>
        %296 = vector.broadcast %cst_0 : f32 to vector<4x14xf32>
        %297 = vector.multi_reduction <mul>, %293, %296 [1] : vector<4x2x14xf32> to vector<4x14xf32>
        %298 = index.maxu %c15, %95
        %collapsed_68 = tensor.collapse_shape %generated_39 [[0, 1]] : tensor<?x14xi1> into tensor<?xi1>
        %inserted_69 = tensor.insert %out into %splat_64[%c1, %c1] : tensor<4x14xi16>
        linalg.yield %out_63 : f16
      } -> tensor<4x2x14xf16>
      %255 = math.log %7 : tensor<4x2x14xf32>
      %cast_59 = tensor.cast %5 : tensor<4x14xf32> to tensor<?x?xf32>
      %256 = arith.maxsi %59, %59 : i16
      %257 = index.sizeof
      %258 = arith.addi %c-24753_i16, %out : i16
      %259 = arith.ori %true_2, %false : i1
      %260 = math.tanh %expanded : tensor<4x14x1xf32>
      %expanded_60 = tensor.expand_shape %generated [[0], [1], [2, 3]] : tensor<?x?x14xi16> into tensor<?x?x14x1xi16>
      %from_elements_61 = tensor.from_elements %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0 : tensor<4x2xf32>
      %261 = math.absi %c996659765_i32 : i32
      %262 = arith.maxsi %59, %c11_i16 : i16
      %263 = math.ipowi %16, %14 : tensor<4x2x14xi64>
      %264 = arith.floordivsi %c1284945222_i32, %c1036166205_i32 : i32
      %265 = vector.broadcast %c3 : index to vector<14xindex>
      %266 = vector.broadcast %true_3 : i1 to vector<14xi1>
      %267 = vector.broadcast %c11_i16 : i16 to vector<14xi16>
      vector.scatter %alloc_6[%c8, %c1] [%265], %266, %267 : memref<14x4xi16>, vector<14xindex>, vector<14xi1>, vector<14xi16>
      %inserted_62 = tensor.insert %cst_0 into %expanded[%c1, %c13, %c0] : tensor<4x14x1xf32>
      %268 = vector.broadcast %c5 : index to vector<2xindex>
      %269 = vector.broadcast %true_3 : i1 to vector<2xi1>
      %270 = vector.broadcast %59 : i16 to vector<2xi16>
      vector.scatter %alloc_6[%c10, %c3] [%268], %269, %270 : memref<14x4xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
      linalg.yield %59 : i16
    } -> tensor<4x2x14xi16>
    %138 = scf.while (%arg0 = %c1_i64) : (i64) -> i64 {
      vector.print %92 : vector<1xi16>
      %242 = math.rsqrt %11 : tensor<14x4xf16>
      %243 = vector.matrix_multiply %121, %81 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<1xi16>, vector<4xi16>) -> vector<4xi16>
      %244 = arith.floordivsi %59, %59 : i16
      %245 = tensor.empty() : tensor<14x4xi1>
      %246 = arith.floordivsi %c1687968493_i32, %c1687968493_i32 : i32
      %247 = arith.divf %cst_4, %cst : f16
      %248 = scf.while (%arg1 = %c996659765_i32) : (i32) -> i32 {
        %249 = arith.maxsi %true_1, %true_3 : i1
        vector.print %124 : vector<4x2x14xi16>
        %250 = arith.addi %arg0, %c1_i64 : i64
        %251 = math.atan %cst_4 : f16
        %extracted_56 = tensor.extract %7[%c2, %c1, %c13] : tensor<4x2x14xf32>
        %252 = bufferization.to_tensor %alloc_20 : memref<2x4xi64>
        %collapsed_57 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<4x2x14xf16> into tensor<8x14xf16>
        %true_58 = index.bool.constant true
        scf.condition(%false) %c103295414_i32 : i32
      } do {
      ^bb0(%arg1: i32):
        %249 = math.log10 %5 : tensor<4x14xf32>
        %250 = index.maxu %c12, %74
        %251 = math.round %expanded : tensor<4x14x1xf32>
        %252 = vector.reduction <maxui>, %243 : vector<4xi16> into i16
        %253 = math.atan2 %from_elements_28, %5 : tensor<4x14xf32>
        %254 = math.cos %cst_0 : f32
        %255 = index.ceildivu %c13, %103
        %256 = index.sub %c4, %c6
        %257 = math.log2 %cst_4 : f16
        %258 = vector.broadcast %true_1 : i1 to vector<4x2xi1>
        %dest_56, %accumulated_value_57 = vector.scan <maxui>, %122, %258 {inclusive = true, reduction_dim = 2 : i64} : vector<4x2x14xi1>, vector<4x2xi1>
        %259 = bufferization.to_memref %cast_29 : memref<?x?xi32>
        %260 = math.tan %0 : tensor<4x2x14xf16>
        %261 = vector.shuffle %121, %19 [1, 2, 3, 4] : vector<1xi16>, vector<4xi16>
        %262 = index.floordivs %129, %256
        %263 = arith.ceildivsi %c1_i64, %c1_i64 : i64
        %264 = math.roundeven %7 : tensor<4x2x14xf32>
        scf.yield %c996659765_i32 : i32
      }
      scf.condition(%true_1) %c1_i64 : i64
    } do {
    ^bb0(%arg0: i64):
      %collapsed_56 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<4x2x14xi16> into tensor<8x14xi16>
      %242 = vector.broadcast %c11_i16 : i16 to vector<2x14xi16>
      %243 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %19, %124, %242 : vector<4xi16>, vector<4x2x14xi16> into vector<2x14xi16>
      %244 = math.ctpop %c-24753_i16 : i16
      %245 = tensor.empty() : tensor<4x2x14xi32>
      %246 = math.expm1 %0 : tensor<4x2x14xf16>
      %from_elements_57 = tensor.from_elements %extracted, %extracted, %c1_i64, %c1_i64, %arg0, %arg0, %arg0, %arg0, %extracted, %arg0, %c1_i64, %c1_i64, %arg0, %extracted, %arg0, %arg0, %extracted, %c1_i64, %extracted, %arg0, %c1_i64, %extracted, %c1_i64, %arg0, %c1_i64, %arg0, %extracted, %extracted, %arg0, %c1_i64, %arg0, %c1_i64, %c1_i64, %arg0, %c1_i64, %c1_i64, %c1_i64, %arg0, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %extracted, %extracted, %extracted, %extracted, %c1_i64, %c1_i64, %extracted, %extracted, %extracted, %c1_i64, %arg0, %extracted, %c1_i64, %extracted : tensor<4x14xi64>
      %247 = arith.remf %cst, %cst : f16
      %248 = arith.minui %true_2, %true : i1
      %249 = math.roundeven %11 : tensor<14x4xf16>
      %250 = arith.negf %cst_4 : f16
      %251 = arith.minf %cst_0, %cst_0 : f32
      %252 = index.divs %74, %87
      %253 = math.tanh %11 : tensor<14x4xf16>
      %alloc_58 = memref.alloc() : memref<14x4xi1>
      %254 = index.floordivs %72, %c2
      %255 = index.divs %54, %79
      scf.yield %c1_i64 : i64
    }
    %139 = index.ceildivu %c9, %c13
    affine.for %arg0 = 0 to 51 {
    }
    %140 = vector.extract_strided_slice %124 {offsets = [2], sizes = [2], strides = [1]} : vector<4x2x14xi16> to vector<2x2x14xi16>
    %generated_40 = tensor.generate %103 {
    ^bb0(%arg0: index, %arg1: index):
      %242 = math.ctlz %15 : tensor<14x4xi32>
      %243 = math.cos %from_elements_28 : tensor<4x14xf32>
      %244 = arith.maxsi %c1687968493_i32, %c1036166205_i32 : i32
      %245 = memref.atomic_rmw ori %c1_i16, %alloc_18[%c0, %c1, %c7] : (i16, memref<4x2x14xi16>) -> i16
      tensor.yield %true_3 : i1
    } : tensor<?x2xi1>
    %141 = arith.divf %cst_4, %cst : f16
    %142 = memref.load %alloc_10[%c3, %c0] : memref<4x2xi16>
    %143 = math.fma %11, %11, %11 : tensor<14x4xf16>
    %144 = vector.insert %59, %121 [0] : i16 into vector<1xi16>
    %145 = index.floordivs %111, %c1
    %146 = math.tan %cst : f16
    %147 = vector.broadcast %cst_0 : f32 to vector<4x14xf32>
    %148 = vector.fma %147, %147, %147 : vector<4x14xf32>
    %149 = index.casts %c8 : index to i32
    %cast_41 = tensor.cast %17 : tensor<4x2x14xi64> to tensor<?x?x?xi64>
    %150 = math.round %cst_0 : f32
    %splat = tensor.splat %c11_i16 : tensor<4x2xi16>
    %151 = index.add %c9, %48
    %152 = arith.maxsi %true_2, %true_1 : i1
    %153 = vector.broadcast %cst_0 : f32 to vector<14xf32>
    %154 = vector.broadcast %true_1 : i1 to vector<14xi1>
    %155 = vector.maskedload %alloc_7[%c3, %c0, %c1], %154, %153 : memref<4x2x14xf32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
    %156 = memref.atomic_rmw ori %extracted, %alloc_21[%c8] : (i64, memref<14xi64>) -> i64
    memref.copy %34, %alloc_16 : memref<14x4xf16> to memref<14x4xf16>
    %157 = arith.addf %cst_0, %cst_0 : f32
    %158 = math.roundeven %expanded : tensor<4x14x1xf32>
    %159 = math.log1p %from_elements_28 : tensor<4x14xf32>
    %160 = math.roundeven %0 : tensor<4x2x14xf16>
    %161 = math.ceil %from_elements_28 : tensor<4x14xf32>
    %162 = arith.remf %cst_4, %cst_4 : f16
    %163 = vector.broadcast %c11_i16 : i16 to vector<2x14xi16>
    %dest_42, %accumulated_value_43 = vector.scan <xor>, %140, %163 {inclusive = false, reduction_dim = 0 : i64} : vector<2x2x14xi16>, vector<2x14xi16>
    %164 = tensor.empty() : tensor<4xi64>
    %165 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%164 : tensor<4xi64>) outs(%14 : tensor<4x2x14xi64>) {
    ^bb0(%in: i64, %out: i64):
      %242 = math.ctlz %false : i1
      %false_56 = index.bool.constant false
      %243 = index.mul %c4, %48
      %extracted_57 = tensor.extract %cast_30[%c0, %c0] : tensor<?x?xi1>
      %244 = math.tan %11 : tensor<14x4xf16>
      %245 = arith.cmpi sgt, %true, %true_3 : i1
      %246 = tensor.empty(%c4) : tensor<?x2xf16>
      %from_elements_58 = tensor.from_elements %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0 : tensor<4x14xf32>
      %247 = math.log10 %11 : tensor<14x4xf16>
      %248 = arith.divf %cst, %cst_4 : f16
      %249 = arith.muli %c1036166205_i32, %c103295414_i32 : i32
      %250 = index.castu %c0 : index to i32
      %251 = math.log2 %0 : tensor<4x2x14xf16>
      %alloc_59 = memref.alloc() : memref<4x2xi16>
      memref.copy %alloc_10, %alloc_59 : memref<4x2xi16> to memref<4x2xi16>
      %252 = math.ceil %0 : tensor<4x2x14xf16>
      %true_60 = index.bool.constant true
      %253 = arith.divui %false, %false_56 : i1
      %254 = arith.minf %cst, %cst_4 : f16
      %255 = math.fpowi %11, %15 : tensor<14x4xf16>, tensor<14x4xi32>
      %cast_61 = tensor.cast %6 : tensor<4x2x14xi1> to tensor<?x?x?xi1>
      %256 = index.divs %45, %72
      %257 = index.floordivs %c6, %45
      %258 = tensor.empty() : tensor<4xi64>
      %259 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%258, %20 : tensor<4xi64>, tensor<14xi64>) outs(%16 : tensor<4x2x14xi64>) {
      ^bb0(%in_66: i64, %in_67: i64, %out_68: i64):
        %alloc_69 = memref.alloc() : memref<14x4xi32>
        memref.tensor_store %9, %alloc_69 : memref<14x4xi32>
        %collapsed_70 = tensor.collapse_shape %expanded [[0, 1], [2]] : tensor<4x14x1xf32> into tensor<56x1xf32>
        %267 = tensor.empty() : tensor<14x4xi32>
        %268 = arith.muli %true, %false : i1
        %269 = arith.muli %c11_i16, %59 : i16
        %270 = arith.ori %extracted_57, %true_3 : i1
        memref.store %true_2, %alloc_15[%c10, %c1] : memref<14x4xi1>
        %271 = arith.divui %out_68, %out_68 : i64
        %cst_71 = arith.constant 1.000000e+00 : f32
        %cst_72 = arith.constant 0.000000e+00 : f32
        %272 = vector.transfer_read %7[%c8, %c15, %c13], %cst_72 {permutation_map = affine_map<(d0, d1, d2) -> (0, 0)>} : tensor<4x2x14xf32>, vector<2x14xf32>
        %273 = vector.broadcast %c-24753_i16 : i16 to vector<4x4xi16>
        %274 = vector.outerproduct %81, %19, %273 {kind = #vector.kind<minui>} : vector<4xi16>, vector<4xi16>
        %rank_73 = tensor.rank %5 : tensor<4x14xf32>
        %275 = arith.maxsi %c1284945222_i32, %c1687968493_i32 : i32
        %276 = arith.floordivsi %extracted, %in_67 : i64
        %true_74 = index.bool.constant true
        %277 = arith.minf %cst_4, %cst : f16
        %278 = arith.minui %true_3, %true_74 : i1
        %279 = arith.minui %true_74, %true_3 : i1
        %extracted_75 = tensor.extract %36[%c3, %c3, %c0] : tensor<4x14x1xi32>
        %true_76 = index.bool.constant true
        %280 = arith.minui %c11_i16, %c-24753_i16 : i16
        %281 = index.ceildivu %c8, %129
        %collapsed_77 = tensor.collapse_shape %12 [[0, 1]] : tensor<4x2xi32> into tensor<8xi32>
        %282 = math.powf %11, %11 : tensor<14x4xf16>
        %alloc_78 = memref.alloc() : memref<4x2x14xi1>
        %alloc_79 = memref.alloc() : memref<4x14xi32>
        %dest_80, %accumulated_value_81 = vector.scan <add>, %148, %153 {inclusive = true, reduction_dim = 0 : i64} : vector<4x14xf32>, vector<14xf32>
        %283 = math.tan %11 : tensor<14x4xf16>
        %284 = arith.maxui %c11_i16, %c-24753_i16 : i16
        %285 = math.cttz %8 : tensor<14x4xi1>
        %286 = math.log1p %11 : tensor<14x4xf16>
        %287 = arith.divui %true, %true_1 : i1
        %cast_82 = tensor.cast %from_elements_31 : tensor<4x2x14xi16> to tensor<?x?x?xi16>
        linalg.yield %c1_i64 : i64
      } -> tensor<4x2x14xi64>
      %260 = vector.broadcast %59 : i16 to vector<4x2xi16>
      %dest_62, %accumulated_value_63 = vector.scan <minsi>, %124, %260 {inclusive = true, reduction_dim = 2 : i64} : vector<4x2x14xi16>, vector<4x2xi16>
      %generated_64 = tensor.generate %c11 {
      ^bb0(%arg0: index, %arg1: index):
        %267 = arith.ceildivsi %out, %c1_i64 : i64
        bufferization.dealloc_tensor %13 : tensor<4x2x14xi16>
        %268 = math.copysign %from_elements_28, %5 : tensor<4x14xf32>
        %cast_66 = tensor.cast %8 : tensor<14x4xi1> to tensor<?x?xi1>
        tensor.yield %c1687968493_i32 : i32
      } : tensor<?x4xi32>
      %261 = vector.reduction <mul>, %92 : vector<1xi16> into i16
      %262 = math.atan2 %expanded, %expanded : tensor<4x14x1xf32>
      %263 = math.fma %11, %11, %11 : tensor<14x4xf16>
      %264 = arith.divsi %true_3, %true_1 : i1
      %265 = arith.minui %c1_i64, %extracted : i64
      %266 = bufferization.to_memref %generated_40 : memref<?x2xi1>
      %collapsed_65 = tensor.collapse_shape %10 [[0, 1]] : tensor<4x14xi16> into tensor<56xi16>
      linalg.yield %extracted : i64
    } -> tensor<4x2x14xi64>
    %166 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0, %alloc : tensor<4x2x14xf16>, memref<4x2xf16>) outs(%0 : tensor<4x2x14xf16>) {
    ^bb0(%in: f16, %in_56: f16, %out: f16):
      %242 = index.castu %72 : index to i32
      %false_57 = index.bool.constant false
      %243 = index.floordivs %45, %c15
      %244 = math.tan %expanded : tensor<4x14x1xf32>
      %245 = index.ceildivu %54, %79
      %246 = arith.subi %true, %true_1 : i1
      %247 = arith.xori %c1284945222_i32, %c1687968493_i32 : i32
      %248 = arith.divsi %extracted, %c1_i64 : i64
      %249 = math.exp2 %11 : tensor<14x4xf16>
      %inserted_58 = tensor.insert %true_2 into %6[%c3, %c1, %c8] : tensor<4x2x14xi1>
      %250 = arith.maxf %cst, %in : f16
      %collapsed_59 = tensor.collapse_shape %5 [[0, 1]] : tensor<4x14xf32> into tensor<56xf32>
      %251 = math.log10 %0 : tensor<4x2x14xf16>
      %252 = affine.min affine_map<(d0, d1) -> (0)>(%c10, %87)
      %253 = arith.remf %cst_4, %cst_4 : f16
      %254 = vector.broadcast %59 : i16 to vector<1x1xi16>
      %255 = vector.outerproduct %121, %92, %254 {kind = #vector.kind<maxsi>} : vector<1xi16>, vector<1xi16>
      %256 = vector.broadcast %c11_i16 : i16 to vector<i16>
      vector.transfer_write %256, %alloc_6[%111, %c3] : vector<i16>, memref<14x4xi16>
      %257 = vector.broadcast %c1_i64 : i64 to vector<i64>
      %258 = vector.transfer_write %257, %14[%54, %c10, %c10] : vector<i64>, tensor<4x2x14xi64>
      affine.for %arg0 = 0 to 27 {
      }
      %expanded_60 = tensor.expand_shape %4 [[0], [1, 2]] : tensor<4x14xi64> into tensor<4x14x1xi64>
      %259 = vector.broadcast %c14 : index to vector<2xindex>
      %260 = vector.broadcast %true_1 : i1 to vector<2xi1>
      %261 = vector.broadcast %in : f16 to vector<2xf16>
      vector.scatter %alloc_16[%c9, %c2] [%259], %260, %261 : memref<14x4xf16>, vector<2xindex>, vector<2xi1>, vector<2xf16>
      %262 = math.ipowi %c1_i16, %c11_i16 : i16
      %alloca_61 = memref.alloca() : memref<4x14xi16>
      %263 = arith.xori %c1687968493_i32, %c996659765_i32 : i32
      %264 = arith.addf %in, %out : f16
      %265 = arith.ori %c1036166205_i32, %c1687968493_i32 : i32
      vector.print %19 : vector<4xi16>
      %266 = math.rsqrt %0 : tensor<4x2x14xf16>
      %false_62 = arith.constant false
      %267 = vector.transfer_read %alloc_15[%252, %133], %false_62 : memref<14x4xi1>, vector<2xi1>
      bufferization.dealloc_tensor %8 : tensor<14x4xi1>
      %268 = arith.maxsi %true, %true : i1
      %269 = tensor.empty() : tensor<4x14xi64>
      linalg.yield %in : f16
    } -> tensor<4x2x14xf16>
    %true_44 = index.bool.constant true
    %167 = index.divs %74, %c11
    %168 = math.fma %7, %7, %7 : tensor<4x2x14xf32>
    %169 = arith.maxui %true_1, %true_1 : i1
    %170 = arith.maxui %c1687968493_i32, %c14128351_i32 : i32
    %splat_45 = tensor.splat %c996659765_i32 : tensor<4x14xi32>
    %171 = vector.broadcast %cst_0 : f32 to vector<14x4xf32>
    %172 = vector.fma %171, %171, %171 : vector<14x4xf32>
    %173 = math.ipowi %3, %3 : tensor<4x2xi1>
    %174 = bufferization.to_memref %36 : memref<4x14x1xi32>
    %175 = index.mul %c5, %129
    %176 = affine.for %arg0 = 0 to 112 iter_args(%arg1 = %175) -> (index) {
      affine.yield %95 : index
    }
    %177 = arith.minf %cst_4, %cst : f16
    %178 = arith.divsi %c1687968493_i32, %c996659765_i32 : i32
    %rank_46 = tensor.rank %generated_39 : tensor<?x14xi1>
    %179 = arith.muli %c14128351_i32, %c1284945222_i32 : i32
    %180 = vector.insert %59, %81 [0] : i16 into vector<4xi16>
    %inserted_47 = tensor.insert %cst_0 into %5[%c1, %c7] : tensor<4x14xf32>
    vector.print %122 : vector<4x2x14xi1>
    %181 = arith.divui %c103295414_i32, %c996659765_i32 : i32
    %182 = arith.divf %cst_4, %cst_4 : f16
    %183 = math.round %0 : tensor<4x2x14xf16>
    %184 = math.ipowi %1, %4 : tensor<4x14xi64>
    %185 = math.fma %0, %0, %0 : tensor<4x2x14xf16>
    %186 = arith.shli %59, %c-24753_i16 : i16
    %187 = arith.maxsi %true_1, %true_1 : i1
    %188 = math.powf %cst, %cst_4 : f16
    %189 = index.sizeof
    %190 = scf.if %true_1 -> (memref<4x14xi32>) {
      %242 = arith.xori %c1036166205_i32, %c14128351_i32 : i32
      %243 = arith.maxsi %true_3, %true_2 : i1
      %244 = vector.extract_strided_slice %124 {offsets = [2], sizes = [2], strides = [1]} : vector<4x2x14xi16> to vector<2x2x14xi16>
      %245 = bufferization.clone %alloc_9 : memref<4x2xf16> to memref<4x2xf16>
      %246 = index.mul %175, %c11
      %generated_56 = tensor.generate %167, %72 {
      ^bb0(%arg0: index, %arg1: index):
        %249 = arith.divsi %c1_i64, %c1_i64 : i64
        %250 = math.expm1 %7 : tensor<4x2x14xf32>
        %251 = math.powf %33, %33 : tensor<4x2x14xf16>
        %252 = math.ctlz %c1687968493_i32 : i32
        tensor.yield %cst_0 : f32
      } : tensor<?x?xf32>
      %247 = math.rsqrt %expanded : tensor<4x14x1xf32>
      %248 = bufferization.to_tensor %alloc_5 : memref<4x14xi16>
      scf.yield %alloc_12 : memref<4x14xi32>
    } else {
      %generated_56 = tensor.generate %151, %c14 {
      ^bb0(%arg0: index, %arg1: index):
        %247 = arith.xori %true_2, %true_44 : i1
        %248 = arith.divui %c1284945222_i32, %c103295414_i32 : i32
        %from_elements_58 = tensor.from_elements %c-24753_i16, %59, %c1_i16, %c11_i16, %59, %c11_i16, %59, %c-24753_i16 : tensor<4x2xi16>
        %249 = math.copysign %0, %0 : tensor<4x2x14xf16>
        tensor.yield %cst : f16
      } : tensor<?x?xf16>
      %splat_57 = tensor.splat %c14128351_i32 : tensor<14x4xi32>
      vector.print %68 : vector<i64>
      %242 = math.round %7 : tensor<4x2x14xf32>
      %243 = arith.minf %cst, %cst : f16
      %244 = index.sub %48, %c2
      %245 = arith.muli %c1036166205_i32, %c14128351_i32 : i32
      %246 = arith.maxsi %c1284945222_i32, %c103295414_i32 : i32
      scf.yield %alloc_12 : memref<4x14xi32>
    }
    %191 = vector.transpose %124, [2, 1, 0] : vector<4x2x14xi16> to vector<14x2x4xi16>
    %from_elements_48 = tensor.from_elements %cst, %cst_4, %cst_4, %cst, %cst_4, %cst_4, %cst_4, %cst_4, %cst, %cst_4, %cst_4, %cst, %cst_4, %cst, %cst, %cst_4, %cst_4, %cst, %cst_4, %cst_4, %cst, %cst_4, %cst, %cst_4, %cst, %cst, %cst, %cst, %cst, %cst_4, %cst, %cst_4, %cst, %cst, %cst_4, %cst_4, %cst_4, %cst, %cst_4, %cst_4, %cst_4, %cst, %cst, %cst, %cst_4, %cst_4, %cst, %cst_4, %cst_4, %cst, %cst, %cst_4, %cst_4, %cst, %cst, %cst, %cst_4, %cst, %cst_4, %cst_4, %cst, %cst_4, %cst, %cst, %cst_4, %cst_4, %cst, %cst, %cst_4, %cst, %cst_4, %cst, %cst, %cst_4, %cst, %cst_4, %cst, %cst, %cst, %cst_4, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst_4, %cst_4, %cst, %cst_4, %cst, %cst_4, %cst_4, %cst, %cst, %cst, %cst_4, %cst, %cst_4, %cst_4, %cst_4, %cst, %cst, %cst, %cst, %cst, %cst_4 : tensor<4x2x14xf16>
    %192 = vector.broadcast %cst_0 : f32 to vector<14x14xf32>
    %193 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %148, %148, %192 : vector<4x14xf32>, vector<4x14xf32> into vector<14x14xf32>
    %194 = vector.bitcast %92 : vector<1xi16> to vector<1xi16>
    %195 = vector.flat_transpose %194 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
    %196 = math.ipowi %c1_i64, %c1_i64 : i64
    memref.tensor_store %splat_45, %190 : memref<4x14xi32>
    %197 = arith.divsi %c-24753_i16, %59 : i16
    %198 = arith.minf %cst_4, %cst : f16
    %199 = vector.extract_strided_slice %194 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi16> to vector<1xi16>
    %200 = arith.muli %c-24753_i16, %c1_i16 : i16
    %201 = vector.broadcast %cst_0 : f32 to vector<4xf32>
    %202 = vector.insert %201, %171 [6] : vector<4xf32> into vector<14x4xf32>
    %generated_49 = tensor.generate %rank {
    ^bb0(%arg0: index, %arg1: index):
      %242 = arith.maxui %59, %59 : i16
      %243 = math.rsqrt %cst_0 : f32
      %244 = arith.subi %false, %true_2 : i1
      %245 = arith.shli %true_1, %false : i1
      tensor.yield %true : i1
    } : tensor<?x4xi1>
    %203 = arith.minui %c1036166205_i32, %c1284945222_i32 : i32
    %204 = index.add %79, %95
    %205 = index.maxu %72, %c9
    %206 = arith.subi %c1_i16, %c1_i16 : i16
    %207 = arith.cmpf ogt, %cst_4, %cst_4 : f16
    %rank_50 = tensor.rank %from_elements : tensor<4x14xi16>
    %208 = arith.mulf %cst_0, %cst_0 : f32
    memref.tensor_store %13, %alloc_18 : memref<4x2x14xi16>
    %209 = math.cttz %3 : tensor<4x2xi1>
    %210 = arith.maxf %cst, %cst : f16
    %211 = index.mul %103, %145
    %212 = math.ceil %expanded : tensor<4x14x1xf32>
    %213 = arith.remf %cst_4, %cst_4 : f16
    %214 = math.round %11 : tensor<14x4xf16>
    %215 = arith.addf %cst, %cst_4 : f16
    %216 = arith.subi %extracted, %extracted : i64
    %217 = math.tan %7 : tensor<4x2x14xf32>
    %218 = vector.bitcast %92 : vector<1xi16> to vector<1xf16>
    %219 = arith.addi %c103295414_i32, %c103295414_i32 : i32
    %splat_51 = tensor.splat %true_3 : tensor<4x2xi1>
    %220 = math.exp2 %from_elements_28 : tensor<4x14xf32>
    %221 = vector.reduction <mul>, %201 : vector<4xf32> into f32
    %222 = math.copysign %7, %7 : tensor<4x2x14xf32>
    %223 = affine.for %arg0 = 0 to 101 iter_args(%arg1 = %0) -> (tensor<4x2x14xf16>) {
      affine.yield %0 : tensor<4x2x14xf16>
    }
    %c1_i16_52 = arith.constant 1 : i16
    %224 = vector.transfer_read %alloc_6[%126, %175], %c1_i16_52 : memref<14x4xi16>, vector<14xi16>
    %225 = arith.remf %cst_0, %cst_0 : f32
    %226 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxf>} %201, %172, %155 : vector<4xf32>, vector<14x4xf32> into vector<14xf32>
    %227 = arith.negf %cst_0 : f32
    memref.store %cst_4, %34[%c8, %c0] : memref<14x4xf16>
    scf.index_switch %54 
    case 1 {
      %242 = affine.load %190[%c13, %c14] : memref<4x14xi32>
      %243 = vector.multi_reduction <or>, %92, %c1_i16_52 [0] : vector<1xi16> to i16
      %generated_56 = tensor.generate %c12, %c13 {
      ^bb0(%arg0: index, %arg1: index):
        %alloc_60 = memref.alloc() : memref<4x2x14xi32>
        %255 = arith.mulf %cst, %cst_4 : f16
        %256 = arith.shli %true, %true : i1
        %257 = math.exp2 %expanded : tensor<4x14x1xf32>
        tensor.yield %cst_0 : f32
      } : tensor<?x?xf32>
      %244 = vector.broadcast %c1_i64 : i64 to vector<14xi64>
      %245 = vector.transfer_write %244, %1[%c7, %44] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<14xi64>, tensor<4x14xi64>
      %246 = arith.maxui %c103295414_i32, %c1036166205_i32 : i32
      %247 = math.rsqrt %7 : tensor<4x2x14xf32>
      %alloc_57 = memref.alloc() : memref<4x2xi1>
      memref.tensor_store %3, %alloc_57 : memref<4x2xi1>
      %248 = index.ceildivu %c10, %c5
      %249 = scf.while (%arg0 = %alloc_10) : (memref<4x2xi16>) -> memref<4x2xi16> {
        %255 = vector.broadcast %243 : i16 to vector<i16>
        vector.transfer_write %255, %alloc_6[%c7, %c2] : vector<i16>, memref<14x4xi16>
        %256 = arith.addi %c1_i16_52, %c11_i16 : i16
        %257 = tensor.empty() : tensor<4x2xf16>
        %258 = vector.bitcast %155 : vector<14xf32> to vector<14xi32>
        %259 = vector.extract_strided_slice %218 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
        %260 = math.fma %from_elements_28, %from_elements_28, %5 : tensor<4x14xf32>
        %261 = arith.remf %cst_4, %cst_4 : f16
        %262 = arith.shli %true_44, %true_1 : i1
        scf.condition(%true_3) %arg0 : memref<4x2xi16>
      } do {
      ^bb0(%arg0: memref<4x2xi16>):
        %255 = arith.xori %c1_i16, %c-24753_i16 : i16
        %256 = math.roundeven %cst : f16
        %257 = vector.reduction <add>, %201 : vector<4xf32> into f32
        %258 = arith.addi %c1_i16, %c1_i16_52 : i16
        %259 = arith.ceildivsi %c-24753_i16, %c11_i16 : i16
        %alloca_60 = memref.alloca() : memref<14x4xi1>
        %260 = arith.shli %true_44, %true_1 : i1
        %261 = vector.matrix_multiply %244, %244 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi64>, vector<14xi64>) -> vector<1xi64>
        %262 = index.mul %133, %103
        %263 = vector.broadcast %c1_i64 : i64 to vector<4x2x14xi64>
        %264 = index.add %c2, %45
        %265 = vector.broadcast %false : i1 to vector<2xi1>
        %266 = vector.maskedload %alloc_17[%c2, %c7], %265, %265 : memref<4x14xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
        %267 = math.exp2 %from_elements_48 : tensor<4x2x14xf16>
        %268 = index.sub %c15, %45
        %269 = vector.reduction <maxf>, %218 : vector<1xf16> into f16
        %270 = math.round %cst_0 : f32
        scf.yield %arg0 : memref<4x2xi16>
      }
      %alloc_58 = memref.alloc() : memref<4x2x14xi64>
      %250 = arith.floordivsi %59, %243 : i16
      %251 = vector.reduction <add>, %195 : vector<1xi16> into i16
      %252 = bufferization.to_tensor %alloc_19 : memref<4x2x14xf16>
      %253 = arith.addi %242, %242 : i32
      %254 = index.ceildivu %c7, %74
      %alloca_59 = memref.alloca() : memref<14x4xi64>
      scf.yield
    }
    case 2 {
      %242 = arith.maxui %true_3, %true : i1
      %cast_56 = tensor.cast %13 : tensor<4x2x14xi16> to tensor<?x?x?xi16>
      %243 = math.ctlz %36 : tensor<4x14x1xi32>
      %244 = tensor.empty() : tensor<4x2xf16>
      %mapped = linalg.map ins(%alloc_9 : memref<4x2xf16>) outs(%244 : tensor<4x2xf16>)
        (%in: f16) {
          %260 = arith.ori %c1036166205_i32, %c1036166205_i32 : i32
          %261 = index.ceildivu %c8, %79
          %262 = math.ceil %5 : tensor<4x14xf32>
          %263 = vector.broadcast %true_2 : i1 to vector<14x4xi1>
          %264 = arith.maxui %c1_i16_52, %c1_i16_52 : i16
          %dest_59, %accumulated_value_60 = vector.scan <add>, %147, %201 {inclusive = true, reduction_dim = 1 : i64} : vector<4x14xf32>, vector<4xf32>
          %265 = arith.maxui %extracted, %extracted : i64
          %266 = math.roundeven %244 : tensor<4x2xf16>
          %splat_61 = tensor.splat %c103295414_i32 : tensor<4x14xi32>
          %267 = arith.xori %c1284945222_i32, %c1687968493_i32 : i32
          %268 = vector.multi_reduction <minf>, %218, %218 [] : vector<1xf16> to vector<1xf16>
          %269 = arith.ori %true_1, %true_2 : i1
          memref.tensor_store %7, %alloc_7 : memref<4x2x14xf32>
          %270 = index.add %c8, %c13
          %271 = math.expm1 %7 : tensor<4x2x14xf32>
          %272 = vector.broadcast %72 : index to vector<14xindex>
          %273 = vector.broadcast %c1_i64 : i64 to vector<14xi64>
          vector.scatter %alloc_8[%c3, %c0] [%272], %154, %273 : memref<4x2xi64>, vector<14xindex>, vector<14xi1>, vector<14xi64>
          %274 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %81, %81, %59 : vector<4xi16>, vector<4xi16> into i16
          %275 = math.atan2 %expanded, %expanded : tensor<4x14x1xf32>
          %276 = vector.reduction <minsi>, %199 : vector<1xi16> into i16
          vector.print %122 : vector<4x2x14xi1>
          %277 = arith.subi %c1_i16, %c1_i16_52 : i16
          %278 = index.maxu %204, %c2
          %279 = arith.minui %c103295414_i32, %c1284945222_i32 : i32
          %280 = vector.broadcast %cst_0 : f32 to vector<14x14xf32>
          %281 = vector.outerproduct %153, %155, %280 {kind = #vector.kind<mul>} : vector<14xf32>, vector<14xf32>
          %alloca_62 = memref.alloca() : memref<4x14xi64>
          %282 = vector.flat_transpose %199 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
          %283 = arith.remf %cst_4, %cst_4 : f16
          %284 = math.log10 %expanded : tensor<4x14x1xf32>
          %285 = arith.xori %c1687968493_i32, %c14128351_i32 : i32
          %286 = math.rsqrt %5 : tensor<4x14xf32>
          %287 = math.absi %from_elements_31 : tensor<4x2x14xi16>
          %288 = arith.maxsi %c103295414_i32, %c996659765_i32 : i32
          %cst_63 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_63 : f16
        }
      %245 = vector.broadcast %cst_0 : f32 to vector<14x14xf32>
      %246 = vector.outerproduct %153, %155, %245 {kind = #vector.kind<add>} : vector<14xf32>, vector<14xf32>
      %247 = arith.maxsi %c1687968493_i32, %c1687968493_i32 : i32
      %248 = arith.maxf %cst_0, %cst_0 : f32
      %alloca_57 = memref.alloca() : memref<4x2x14xf16>
      %249 = math.ceil %7 : tensor<4x2x14xf32>
      %250 = vector.load %alloc[%c3, %c1] : memref<4x2xf16>, vector<4x2xf16>
      %251 = math.ctlz %c11_i16 : i16
      %252 = arith.addf %cst, %cst_4 : f16
      %253 = vector.broadcast %cst_0 : f32 to vector<4x2xf32>
      %254 = vector.fma %253, %253, %253 : vector<4x2xf32>
      %255 = math.roundeven %cst : f16
      %256 = tensor.empty() : tensor<4x2x14xi32>
      %257 = vector.broadcast %c14128351_i32 : i32 to vector<4x14xi32>
      %258 = vector.broadcast %true : i1 to vector<4x14xi1>
      %259 = vector.gather %256[%87, %c2, %72] [%257], %258, %257 : tensor<4x2x14xi32>, vector<4x14xi32>, vector<4x14xi1>, vector<4x14xi32> into vector<4x14xi32>
      %from_elements_58 = tensor.from_elements %extracted, %extracted, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %extracted, %extracted, %c1_i64, %extracted, %extracted, %extracted, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %extracted, %extracted, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %extracted, %c1_i64, %c1_i64, %c1_i64, %extracted, %c1_i64, %extracted, %extracted, %extracted, %c1_i64, %c1_i64, %extracted, %c1_i64, %c1_i64, %extracted, %extracted, %c1_i64, %extracted, %extracted, %extracted, %c1_i64, %c1_i64, %c1_i64, %extracted, %extracted, %c1_i64, %c1_i64, %extracted, %extracted, %c1_i64, %c1_i64, %c1_i64, %c1_i64 : tensor<14x4xi64>
      scf.yield
    }
    case 3 {
      %242 = memref.realloc %alloc_21 : memref<14xi64> to memref<14xi64>
      %243 = math.absf %0 : tensor<4x2x14xf16>
      %244 = index.divs %53, %c2
      %245 = arith.xori %c1_i16, %c1_i16 : i16
      %246 = math.absi %c1_i64 : i64
      %247 = arith.muli %c1_i64, %c1_i64 : i64
      %248 = math.tanh %5 : tensor<4x14xf32>
      %249 = math.round %33 : tensor<4x2x14xf16>
      %250 = vector.splat %c1687968493_i32 : vector<14x4xi32>
      %251 = arith.remf %cst_0, %cst_0 : f32
      %true_56 = index.bool.constant true
      %252 = bufferization.clone %alloc_7 : memref<4x2x14xf32> to memref<4x2x14xf32>
      %253 = arith.remf %cst, %cst_4 : f16
      %collapsed_57 = tensor.collapse_shape %from_elements_28 [[0, 1]] : tensor<4x14xf32> into tensor<56xf32>
      %254 = arith.minui %c1_i64, %c1_i64 : i64
      %255 = index.sub %145, %167
      scf.yield
    }
    case 4 {
      %242 = index.divs %151, %c4
      %243 = arith.shli %false, %false : i1
      %244 = math.ipowi %c1687968493_i32, %c996659765_i32 : i32
      %245 = memref.atomic_rmw maxf %cst_4, %alloc[%c0, %c0] : (f16, memref<4x2xf16>) -> f16
      %246 = arith.maxsi %c14128351_i32, %c1687968493_i32 : i32
      %247 = math.tan %expanded : tensor<4x14x1xf32>
      %248 = arith.subi %true_3, %true_3 : i1
      %249 = arith.addi %59, %c-24753_i16 : i16
      %250 = arith.maxui %true, %false : i1
      %251 = arith.addi %true_3, %true_44 : i1
      %252 = tensor.empty() : tensor<14x4xf32>
      %253 = vector.broadcast %cst_0 : f32 to vector<4x2xf32>
      %254 = vector.broadcast %false : i1 to vector<4x2xi1>
      %255 = vector.broadcast %c1284945222_i32 : i32 to vector<4x2xi32>
      %256 = vector.gather %252[%95, %c14] [%255], %254, %253 : tensor<14x4xf32>, vector<4x2xi32>, vector<4x2xi1>, vector<4x2xf32> into vector<4x2xf32>
      %collapsed_56 = tensor.collapse_shape %cast [[0, 1]] : tensor<?x?xi64> into tensor<?xi64>
      %257 = index.divs %c5, %c8
      %258 = arith.divui %59, %c-24753_i16 : i16
      %259 = tensor.empty() : tensor<4x2x14xi32>
      %260 = math.fpowi %33, %259 : tensor<4x2x14xf16>, tensor<4x2x14xi32>
      %261 = memref.realloc %alloc_21 : memref<14xi64> to memref<2xi64>
      scf.yield
    }
    default {
      %242 = affine.for %arg0 = 0 to 7 iter_args(%arg1 = %c1_i64) -> (i64) {
        affine.yield %arg1 : i64
      }
      %243 = arith.muli %c14128351_i32, %c1036166205_i32 : i32
      %244 = math.tanh %5 : tensor<4x14xf32>
      %245 = tensor.empty() : tensor<4x2x14xf32>
      %mapped = linalg.map ins(%7, %alloc_7 : tensor<4x2x14xf32>, memref<4x2x14xf32>) outs(%245 : tensor<4x2x14xf32>)
        (%in: f32, %in_56: f32) {
          %dest_57, %accumulated_value_58 = vector.scan <maxf>, %172, %153 {inclusive = false, reduction_dim = 1 : i64} : vector<14x4xf32>, vector<14xf32>
          %258 = math.cttz %c14128351_i32 : i32
          %259 = math.powf %11, %11 : tensor<14x4xf16>
          %260 = math.atan2 %expanded, %expanded : tensor<4x14x1xf32>
          %261 = math.rsqrt %33 : tensor<4x2x14xf16>
          %collapsed_59 = tensor.collapse_shape %3 [[0, 1]] : tensor<4x2xi1> into tensor<8xi1>
          %262 = arith.maxsi %true_44, %true_1 : i1
          %263 = math.roundeven %cst : f16
          %264 = arith.floordivsi %c1_i16_52, %c1_i16 : i16
          %265 = math.copysign %7, %245 : tensor<4x2x14xf32>
          %266 = math.fpowi %11, %9 : tensor<14x4xf16>, tensor<14x4xi32>
          %267 = vector.broadcast %c1_i64 : i64 to vector<14xi64>
          %268 = vector.maskedload %alloc_13[%c3, %c4], %154, %267 : memref<4x14xi64>, vector<14xi1>, vector<14xi64> into vector<14xi64>
          %269 = index.add %rank, %c13
          %270 = bufferization.to_memref %14 : memref<4x2x14xi64>
          %271 = index.ceildivu %175, %rank
          %272 = math.log10 %5 : tensor<4x14xf32>
          %273 = arith.subi %c1_i16, %c-24753_i16 : i16
          %274 = vector.broadcast %c1_i64 : i64 to vector<4xi64>
          %275 = vector.transfer_write %274, %16[%269, %c7, %rank_46] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<4xi64>, tensor<4x2x14xi64>
          %276 = tensor.empty() : tensor<4x2x14xf16>
          %277 = index.ceildivs %72, %167
          %278 = math.log1p %11 : tensor<14x4xf16>
          %279 = index.ceildivu %145, %126
          %280 = vector.bitcast %92 : vector<1xi16> to vector<1xi16>
          %281 = math.fma %from_elements_48, %0, %33 : tensor<4x2x14xf16>
          %282 = arith.minf %cst, %cst_4 : f16
          bufferization.dealloc_tensor %36 : tensor<4x14x1xi32>
          %283 = vector.broadcast %c1_i16 : i16 to vector<1x1xi16>
          %284 = vector.outerproduct %195, %92, %283 {kind = #vector.kind<minsi>} : vector<1xi16>, vector<1xi16>
          %285 = arith.minf %cst, %cst_4 : f16
          %286 = index.castu %126 : index to i32
          %287 = index.maxu %205, %rank_50
          %288 = vector.multi_reduction <maxsi>, %19, %19 [] : vector<4xi16> to vector<4xi16>
          %289 = vector.broadcast %true : i1 to vector<4x2x14xi1>
          %cst_60 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_60 : f32
        }
      %246 = arith.subi %true_2, %true_1 : i1
      %247 = arith.maxui %c1_i16_52, %c1_i16 : i16
      %248 = math.atan %0 : tensor<4x2x14xf16>
      %249 = math.expm1 %5 : tensor<4x14xf32>
      %250 = math.ipowi %splat_51, %splat_51 : tensor<4x2xi1>
      %251 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %19, %81, %c1_i16_52 : vector<4xi16>, vector<4xi16> into i16
      %252 = arith.mulf %cst_0, %cst_0 : f32
      %253 = arith.cmpi sle, %59, %c1_i16_52 : i16
      %254 = arith.maxui %true_44, %false : i1
      %255 = arith.xori %c1_i64, %c1_i64 : i64
      %256 = math.atan2 %0, %33 : tensor<4x2x14xf16>
      %257 = arith.remf %cst_4, %cst : f16
    }
    %228 = affine.max affine_map<(d0, d1) -> (((d1 ceildiv 128) mod 8 + 32) ceildiv 64, (d1 ceildiv 128) mod 8)>(%c12, %45)
    %229 = math.powf %0, %33 : tensor<4x2x14xf16>
    %230 = memref.load %alloc_16[%c12, %c1] : memref<14x4xf16>
    %cst_53 = arith.constant 2.457600e+04 : f16
    %231 = arith.xori %c1284945222_i32, %c14128351_i32 : i32
    %232 = arith.minf %cst_4, %cst : f16
    %233 = index.maxu %205, %126
    %234 = vector.broadcast %c1_i16 : i16 to vector<1x1xi16>
    %235 = vector.outerproduct %121, %199, %234 {kind = #vector.kind<maxsi>} : vector<1xi16>, vector<1xi16>
    %from_elements_54 = tensor.from_elements %cst_4, %cst, %cst_4, %cst, %cst, %cst_4, %cst_4, %cst_4, %cst_4, %cst, %cst_4, %cst_4, %cst_4, %cst, %cst_4, %cst_4, %cst_4, %cst, %cst_4, %cst_4, %cst_4, %cst, %cst, %cst_4, %cst_4, %cst_4, %cst, %cst_4, %cst, %cst, %cst_4, %cst_4, %cst_4, %cst, %cst, %cst, %cst_4, %cst, %cst, %cst, %cst, %cst_4, %cst_4, %cst, %cst_4, %cst, %cst, %cst, %cst, %cst_4, %cst_4, %cst_4, %cst_4, %cst, %cst_4, %cst_4 : tensor<4x14xf16>
    %236 = math.tanh %cst : f16
    %237 = math.powf %11, %11 : tensor<14x4xf16>
    %238 = tensor.empty(%rank, %211, %228) : tensor<?x?x?xf32>
    %239 = linalg.copy ins(%cast_35 : tensor<?x?x?xf32>) outs(%238 : tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %alloc_55 = memref.alloc() : memref<14x4x2xi64>
    linalg.transpose ins(%14 : tensor<4x2x14xi64>) outs(%alloc_55 : memref<14x4x2xi64>) permutation = [2, 0, 1] 
    %240 = tensor.empty() : tensor<4xi32>
    %reduced = linalg.reduce ins(%36 : tensor<4x14x1xi32>) outs(%240 : tensor<4xi32>) dimensions = [1, 2] 
      (%in: i32, %init: i32) {
        %242 = math.ctlz %2 : tensor<4x2xi16>
        %243 = arith.cmpi uge, %c11_i16, %c1_i16 : i16
        %244 = math.absf %5 : tensor<4x14xf32>
        %245 = bufferization.to_memref %10 : memref<4x14xi16>
        %false_56 = index.bool.constant false
        %from_elements_57 = tensor.from_elements %in, %init, %c103295414_i32, %c14128351_i32, %init, %c1284945222_i32, %c103295414_i32, %c996659765_i32, %init, %c1036166205_i32, %c1284945222_i32, %c996659765_i32, %c14128351_i32, %init, %c1036166205_i32, %c14128351_i32, %c1036166205_i32, %c103295414_i32, %c1284945222_i32, %c996659765_i32, %c103295414_i32, %c14128351_i32, %c1036166205_i32, %c996659765_i32, %init, %c14128351_i32, %c103295414_i32, %c103295414_i32, %in, %c14128351_i32, %c1036166205_i32, %c1284945222_i32, %c1284945222_i32, %c14128351_i32, %c103295414_i32, %init, %c1687968493_i32, %init, %c14128351_i32, %c14128351_i32, %c1036166205_i32, %c14128351_i32, %in, %c1036166205_i32, %init, %c996659765_i32, %c1687968493_i32, %c1687968493_i32, %c996659765_i32, %c1687968493_i32, %c1036166205_i32, %c103295414_i32, %c1284945222_i32, %c1036166205_i32, %c14128351_i32, %c1687968493_i32 : tensor<4x14xi32>
        %cst_58 = arith.constant 1.92975885E+9 : f32
        affine.for %arg0 = 0 to 93 {
        }
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    scf.parallel (%arg0, %arg1) = (%c13, %175) to (%133, %rank_50) step (%c15, %c11) {
      %242 = vector.insert %c-24753_i16, %81 [0] : i16 into vector<4xi16>
      %splat_56 = tensor.splat %c1036166205_i32 : tensor<14x4xi32>
      %243 = math.atan %5 : tensor<4x14xf32>
      %244 = math.atan2 %11, %11 : tensor<14x4xf16>
      %245 = math.sqrt %5 : tensor<4x14xf32>
      %246 = arith.divf %cst_4, %cst : f16
      %247 = scf.while (%arg2 = %true_1) : (i1) -> i1 {
        %258 = arith.mulf %cst_0, %cst_0 : f32
        %259 = vector.insert %153, %147 [0] : vector<14xf32> into vector<4x14xf32>
        %cast_59 = tensor.cast %1 : tensor<4x14xi64> to tensor<?x?xi64>
        %260 = vector.bitcast %201 : vector<4xf32> to vector<4xf32>
        %261 = arith.maxsi %true_3, %true_1 : i1
        %alloc_60 = memref.alloc() : memref<4x14x1xf32>
        memref.tensor_store %expanded, %alloc_60 : memref<4x14x1xf32>
        %262 = arith.muli %c103295414_i32, %c1036166205_i32 : i32
        %263 = math.tanh %5 : tensor<4x14xf32>
        scf.condition(%true_2) %false : i1
      } do {
      ^bb0(%arg2: i1):
        %258 = math.absf %from_elements_54 : tensor<4x14xf16>
        %259 = math.rsqrt %cst_0 : f32
        %splat_59 = tensor.splat %cst : tensor<4x14xf16>
        %260 = arith.mulf %cst, %cst_4 : f16
        %261 = math.cos %33 : tensor<4x2x14xf16>
        %262 = vector.broadcast %c1036166205_i32 : i32 to vector<4x14xi32>
        %263 = math.powf %cst_0, %cst_0 : f32
        %264 = index.divs %c9, %c5
        %265 = math.log2 %cst_0 : f32
        %266 = arith.cmpf uno, %cst, %cst : f16
        %267 = arith.remf %cst_4, %cst : f16
        %268 = arith.minui %false, %arg2 : i1
        %269 = index.ceildivu %145, %45
        %270 = math.round %from_elements_48 : tensor<4x2x14xf16>
        %271 = bufferization.to_memref %4 : memref<4x14xi64>
        %inserted_60 = tensor.insert %c1_i64 into %22[] : tensor<i64>
        scf.yield %arg2 : i1
      }
      %248 = math.tanh %from_elements_48 : tensor<4x2x14xf16>
      %249 = index.maxu %204, %48
      %250 = vector.reduction <minui>, %194 : vector<1xi16> into i16
      %251 = vector.broadcast %c1_i16 : i16 to vector<4x14xi16>
      %dest_57, %accumulated_value_58 = vector.scan <maxsi>, %124, %251 {inclusive = false, reduction_dim = 1 : i64} : vector<4x2x14xi16>, vector<4x14xi16>
      %252 = math.copysign %from_elements_28, %5 : tensor<4x14xf32>
      %253 = vector.broadcast %cst_0 : f32 to vector<4x2x14xf32>
      %254 = vector.fma %253, %253, %253 : vector<4x2x14xf32>
      %255 = affine.if affine_set<(d0, d1) : (-(d1 + d0) + 4 == 0, d1 >= 0)>(%c9, %c4) -> i32 {
        %from_elements_59 = tensor.from_elements %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0 : tensor<4x2xf32>
        %258 = memref.load %alloc[%c1, %c1] : memref<4x2xf16>
        %259 = math.ceil %from_elements_48 : tensor<4x2x14xf16>
        %260 = math.roundeven %from_elements_59 : tensor<4x2xf32>
        %261 = arith.minf %cst_4, %cst_4 : f16
        %262 = vector.extract_strided_slice %19 {offsets = [2], sizes = [1], strides = [1]} : vector<4xi16> to vector<1xi16>
        %263 = bufferization.clone %alloc_12 : memref<4x14xi32> to memref<4x14xi32>
        %264 = vector.broadcast %c-24753_i16 : i16 to vector<1x1xi16>
        %265 = vector.outerproduct %195, %199, %264 {kind = #vector.kind<xor>} : vector<1xi16>, vector<1xi16>
        affine.yield %c1036166205_i32 : i32
      } else {
        %258 = math.expm1 %7 : tensor<4x2x14xf32>
        %259 = vector.broadcast %cst_0 : f32 to vector<14x14xf32>
        %260 = vector.outerproduct %153, %153, %259 {kind = #vector.kind<minf>} : vector<14xf32>, vector<14xf32>
        %expanded_59 = tensor.expand_shape %generated [[0], [1], [2, 3]] : tensor<?x?x14xi16> into tensor<?x?x14x1xi16>
        %261 = vector.extract_strided_slice %122 {offsets = [1], sizes = [3], strides = [1]} : vector<4x2x14xi1> to vector<3x2x14xi1>
        %alloc_60 = memref.alloc() : memref<4x2x14xf16>
        %262 = vector.broadcast %cst_0 : f32 to vector<4x2xf32>
        %263 = vector.multi_reduction <mul>, %254, %262 [2] : vector<4x2x14xf32> to vector<4x2xf32>
        %264 = arith.negf %cst : f16
        %265 = arith.ceildivsi %true_1, %true_1 : i1
        affine.yield %c14128351_i32 : i32
      }
      %256 = index.castu %c1_i16_52 : i16 to index
      %257 = index.maxu %rank_46, %139
      scf.yield
    }
    %241 = affine.vector_load %alloc_21[%c6] : memref<14xi64>, vector<4xi64>
    affine.vector_store %155, %alloc_7[%rank_46, %c7, %c3] : memref<4x2x14xf32>, vector<14xf32>
    vector.print %19 : vector<4xi16>
    vector.print %68 : vector<i64>
    vector.print %81 : vector<4xi16>
    vector.print %92 : vector<1xi16>
    vector.print %121 : vector<1xi16>
    vector.print %122 : vector<4x2x14xi1>
    vector.print %124 : vector<4x2x14xi16>
    vector.print %140 : vector<2x2x14xi16>
    vector.print %147 : vector<4x14xf32>
    vector.print %148 : vector<4x14xf32>
    vector.print %153 : vector<14xf32>
    vector.print %154 : vector<14xi1>
    vector.print %155 : vector<14xf32>
    vector.print %171 : vector<14x4xf32>
    vector.print %172 : vector<14x4xf32>
    vector.print %194 : vector<1xi16>
    vector.print %195 : vector<1xi16>
    vector.print %199 : vector<1xi16>
    vector.print %201 : vector<4xf32>
    vector.print %218 : vector<1xf16>
    vector.print %241 : vector<4xi64>
    vector.print %cst : f16
    vector.print %c1036166205_i32 : i32
    vector.print %cst_0 : f32
    vector.print %c996659765_i32 : i32
    vector.print %false : i1
    vector.print %c14128351_i32 : i32
    vector.print %c1284945222_i32 : i32
    vector.print %true : i1
    vector.print %c11_i16 : i16
    vector.print %true_1 : i1
    vector.print %c103295414_i32 : i32
    vector.print %true_2 : i1
    vector.print %true_3 : i1
    vector.print %cst_4 : f16
    vector.print %c-24753_i16 : i16
    vector.print %c1687968493_i32 : i32
    vector.print %c1_i64 : i64
    vector.print %59 : i16
    vector.print %c1_i16 : i16
    vector.print %extracted : i64
    vector.print %true_44 : i1
    vector.print %c1_i16_52 : i16
    return %74 : index
  }
}
