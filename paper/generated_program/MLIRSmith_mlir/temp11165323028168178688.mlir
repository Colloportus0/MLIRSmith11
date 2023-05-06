module {
  func.func @func1(%arg0: i64, %arg1: memref<2x7xf32>) -> f32 {
    %cst = arith.constant 1.3042999E+9 : f32
    %c951144787_i64 = arith.constant 951144787 : i64
    %c1969275858_i32 = arith.constant 1969275858 : i32
    %c-4009_i16 = arith.constant -4009 : i16
    %true = arith.constant true
    %cst_0 = arith.constant 2.620800e+04 : f16
    %c912109256_i32 = arith.constant 912109256 : i32
    %cst_1 = arith.constant 2.06515507E+9 : f32
    %cst_2 = arith.constant 2.929600e+04 : f16
    %c783155345_i64 = arith.constant 783155345 : i64
    %false = arith.constant false
    %true_3 = arith.constant true
    %c8066_i16 = arith.constant 8066 : i16
    %cst_4 = arith.constant 0x4E6CCC71 : f32
    %false_5 = arith.constant false
    %false_6 = arith.constant false
    %0 = tensor.empty() : tensor<7x3x3xf16>
    %1 = tensor.empty() : tensor<2x7xi1>
    %2 = tensor.empty() : tensor<3x7xi16>
    %3 = tensor.empty() : tensor<7x3x3xi1>
    %4 = tensor.empty() : tensor<2x7xi1>
    %5 = tensor.empty() : tensor<3x7xi16>
    %6 = tensor.empty() : tensor<3x7xi64>
    %7 = tensor.empty() : tensor<2x7xi1>
    %8 = tensor.empty() : tensor<3x2xi16>
    %9 = tensor.empty() : tensor<3x2xi64>
    %10 = tensor.empty() : tensor<7x3x3xi1>
    %11 = tensor.empty() : tensor<7x3x3xi32>
    %12 = tensor.empty() : tensor<3x7xi1>
    %13 = tensor.empty() : tensor<2x7xi1>
    %14 = tensor.empty() : tensor<3x2xi64>
    %15 = tensor.empty() : tensor<2x7xf16>
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
    %alloc = memref.alloc() : memref<3x7xi32>
    %alloc_7 = memref.alloc() : memref<3x2xi16>
    %alloc_8 = memref.alloc() : memref<2x7xi32>
    %alloc_9 = memref.alloc() : memref<3x7xi1>
    %alloc_10 = memref.alloc() : memref<7x3x3xi32>
    %alloc_11 = memref.alloc() : memref<3x2xf32>
    %alloc_12 = memref.alloc() : memref<2x7xf32>
    %alloc_13 = memref.alloc() : memref<3x2xf32>
    %alloc_14 = memref.alloc() : memref<2x7xf32>
    %alloc_15 = memref.alloc() : memref<7x3x3xi64>
    %alloc_16 = memref.alloc() : memref<7x3x3xi16>
    %alloc_17 = memref.alloc() : memref<3x7xi16>
    %alloc_18 = memref.alloc() : memref<3x2xi64>
    %alloc_19 = memref.alloc() : memref<7x3x3xi1>
    %alloc_20 = memref.alloc() : memref<7x3x3xi1>
    %alloc_21 = memref.alloc() : memref<3x7xi64>
    %16 = tensor.empty() : tensor<2x7xi1>
    %17 = linalg.copy ins(%4 : tensor<2x7xi1>) outs(%16 : tensor<2x7xi1>) -> tensor<2x7xi1>
    %18 = tensor.empty() : tensor<3x7x3xi32>
    %transposed = linalg.transpose ins(%alloc_10 : memref<7x3x3xi32>) outs(%18 : tensor<3x7x3xi32>) permutation = [2, 0, 1] 
    %19 = tensor.empty() : tensor<7x3xi32>
    %reduced = linalg.reduce ins(%11 : tensor<7x3x3xi32>) outs(%19 : tensor<7x3xi32>) dimensions = [2] 
      (%in: i32, %init: i32) {
        bufferization.dealloc_tensor %2 : tensor<3x7xi16>
        %expanded_53 = tensor.expand_shape %3 [[0], [1], [2, 3]] : tensor<7x3x3xi1> into tensor<7x3x3x1xi1>
        %expanded_54 = tensor.expand_shape %3 [[0], [1], [2, 3]] : tensor<7x3x3xi1> into tensor<7x3x3x1xi1>
        %251 = arith.negf %cst_4 : f32
        scf.if %false_5 {
          %255 = index.divu %c0, %c0
          %256 = tensor.empty(%c2, %c0) : tensor<?x?xi32>
          %257 = memref.load %alloc[%c0, %c2] : memref<3x7xi32>
          memref.copy %alloc_19, %alloc_20 : memref<7x3x3xi1> to memref<7x3x3xi1>
          %258 = arith.addi %false, %false_6 : i1
          %259 = arith.shli %c8066_i16, %c8066_i16 : i16
          %260 = math.log2 %0 : tensor<7x3x3xf16>
          %261 = arith.cmpf ult, %cst_4, %cst_1 : f32
        } else {
          %255 = index.divs %c2, %c4
          %256 = index.sub %255, %c10
          %257 = arith.shrui %init, %in : i32
          %258 = arith.divui %false_6, %false_5 : i1
          %259 = vector.load %alloc[%c1, %c5] : memref<3x7xi32>, vector<3x7xi32>
          %260 = vector.broadcast %c783155345_i64 : i64 to vector<3xi64>
          %261 = vector.broadcast %c783155345_i64 : i64 to vector<3x3xi64>
          %262 = vector.outerproduct %260, %260, %261 {kind = #vector.kind<minui>} : vector<3xi64>, vector<3xi64>
          %c0_i32 = arith.constant 0 : i32
          %c0_i32_55 = arith.constant 0 : i32
          %263 = vector.transfer_read %18[%c15, %c2, %c14], %c0_i32_55 {permutation_map = affine_map<(d0, d1, d2) -> (0, 0)>} : tensor<3x7x3xi32>, vector<13x3xi32>
          %264 = arith.cmpi ule, %false_6, %false_5 : i1
        }
        %252 = arith.cmpi slt, %c8066_i16, %c8066_i16 : i16
        %253 = arith.cmpi uge, %false, %false_5 : i1
        %254 = math.ctlz %14 : tensor<3x2xi64>
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    scf.parallel (%arg2, %arg3) = (%c2, %c4) to (%c8, %c5) step (%c2, %c10) {
      %251 = memref.load %alloc_10[%c2, %c1, %c2] : memref<7x3x3xi32>
      scf.if %false_6 {
        %268 = math.floor %cst_4 : f32
        %269 = affine.max affine_map<(d0, d1) -> (d1 * 8, ((d0 floordiv 32) floordiv 2) * 32)>(%c6, %c1)
        %270 = math.round %15 : tensor<2x7xf16>
        %271 = arith.maxui %c951144787_i64, %c783155345_i64 : i64
        memref.assume_alignment %alloc_16, 8 : memref<7x3x3xi16>
        %272 = vector.broadcast %c1969275858_i32 : i32 to vector<7xi32>
        %273 = vector.broadcast %c912109256_i32 : i32 to vector<7x7xi32>
        %274 = vector.outerproduct %272, %272, %273 {kind = #vector.kind<minsi>} : vector<7xi32>, vector<7xi32>
        %275 = vector.broadcast %c1969275858_i32 : i32 to vector<1xi32>
        %276 = vector.insert %c1969275858_i32, %275 [0] : i32 into vector<1xi32>
        %277 = math.round %cst_2 : f16
      }
      %252 = vector.broadcast %c-4009_i16 : i16 to vector<7x3x3xi16>
      vector.print %252 : vector<7x3x3xi16>
      %253 = affine.apply affine_map<(d0, d1, d2) -> (d0 * 512 + 8)>(%c0, %c15, %c6)
      %254 = index.ceildivu %c12, %c6
      %expanded_53 = tensor.expand_shape %10 [[0], [1], [2, 3]] : tensor<7x3x3xi1> into tensor<7x3x3x1xi1>
      %255 = affine.load %alloc_19[%c14, %c13, %c6] : memref<7x3x3xi1>
      %256 = vector.transpose %252, [0, 2, 1] : vector<7x3x3xi16> to vector<7x3x3xi16>
      %257 = vector.broadcast %c8066_i16 : i16 to vector<3x3x3x3xi16>
      %258 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %252, %252, %257 : vector<7x3x3xi16>, vector<7x3x3xi16> into vector<3x3x3x3xi16>
      %259 = arith.shli %c783155345_i64, %c783155345_i64 : i64
      %260 = vector.extract_strided_slice %252 {offsets = [1, 1], sizes = [5, 1], strides = [1, 1]} : vector<7x3x3xi16> to vector<5x1x3xi16>
      %261 = vector.broadcast %c1969275858_i32 : i32 to vector<7x3x3xi32>
      %262 = vector.broadcast %false_6 : i1 to vector<7x3x3xi1>
      %263 = vector.gather %alloc_8[%c12, %arg2] [%261], %262, %261 : memref<2x7xi32>, vector<7x3x3xi32>, vector<7x3x3xi1>, vector<7x3x3xi32> into vector<7x3x3xi32>
      %264 = arith.cmpi ule, %c912109256_i32, %c912109256_i32 : i32
      %265 = affine.apply affine_map<(d0, d1, d2, d3) -> (1)>(%c6, %c15, %c6, %c1)
      %266 = arith.mulf %cst_4, %cst_1 : f32
      %267 = scf.while (%arg4 = %alloc_9) : (memref<3x7xi1>) -> memref<3x7xi1> {
        %268 = arith.addi %false, %true : i1
        %269 = vector.broadcast %255 : i1 to vector<7xi1>
        %270 = vector.flat_transpose %269 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
        %271 = arith.mulf %cst_2, %cst_2 : f16
        %272 = vector.load %alloc_13[%c2, %c1] : memref<3x2xf32>, vector<7x3x3xf32>
        %273 = arith.cmpi ult, %c8066_i16, %c-4009_i16 : i16
        %274 = index.sub %arg3, %c1
        %275 = vector.insertelement %false_5, %270[%c2 : index] : vector<7xi1>
        %276 = arith.muli %c783155345_i64, %c951144787_i64 : i64
        scf.condition(%false) %arg4 : memref<3x7xi1>
      } do {
      ^bb0(%arg4: memref<3x7xi1>):
        %268 = vector.broadcast %c1969275858_i32 : i32 to vector<7xi32>
        %269 = vector.insertelement %c1969275858_i32, %268[%arg2 : index] : vector<7xi32>
        %270 = arith.divui %255, %255 : i1
        %271 = index.sizeof
        %272 = vector.broadcast %true_3 : i1 to vector<7xi1>
        %273 = vector.multi_reduction <maxsi>, %262, %272 [1, 2] : vector<7x3x3xi1> to vector<7xi1>
        %cast_54 = tensor.cast %4 : tensor<2x7xi1> to tensor<?x?xi1>
        %274 = math.absi %18 : tensor<3x7x3xi32>
        %275 = vector.splat %false_5 : vector<7x3x3xi1>
        %276 = arith.minsi %c783155345_i64, %c951144787_i64 : i64
        %277 = math.powf %cst_1, %cst : f32
        %278 = math.exp2 %cst_2 : f16
        %279 = math.fpowi %cst_4, %c1969275858_i32 : f32, i32
        %280 = math.fma %cst_2, %cst_2, %cst_2 : f16
        %281 = vector.broadcast %c-4009_i16 : i16 to vector<3x3xi16>
        %282 = vector.insert %281, %252 [1] : vector<3x3xi16> into vector<7x3x3xi16>
        %283 = math.fma %15, %15, %15 : tensor<2x7xf16>
        %284 = memref.load %alloc_7[%c0, %c1] : memref<3x2xi16>
        %cast_55 = tensor.cast %6 : tensor<3x7xi64> to tensor<?x?xi64>
        scf.yield %arg4 : memref<3x7xi1>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_14[%c9, %c12] : memref<2x7xf32>, vector<3xf32>
    affine.vector_store %20, %alloc_14[%c13, %c6] : memref<2x7xf32>, vector<3xf32>
    %21 = tensor.empty() : tensor<7xi32>
    %alloc_22 = memref.alloc() : memref<7xi32>
    %22 = tensor.empty() : tensor<i32>
    %23 = linalg.dot ins(%21, %alloc_22 : tensor<7xi32>, memref<7xi32>) outs(%22 : tensor<i32>) -> tensor<i32>
    %24 = arith.addf %cst, %cst_4 : f32
    %25 = scf.index_switch %c7 -> index 
    case 1 {
      %251 = arith.maxui %c912109256_i32, %c1969275858_i32 : i32
      %252 = scf.while (%arg2 = %alloc_9) : (memref<3x7xi1>) -> memref<3x7xi1> {
        %inserted_55 = tensor.insert %true into %7[%c1, %c0] : tensor<2x7xi1>
        memref.copy %arg2, %alloc_9 : memref<3x7xi1> to memref<3x7xi1>
        %264 = math.absf %15 : tensor<2x7xf16>
        %265 = math.ctlz %c8066_i16 : i16
        bufferization.dealloc_tensor %9 : tensor<3x2xi64>
        %266 = arith.maxf %cst_4, %cst_4 : f32
        %267 = tensor.empty() : tensor<3x7xf32>
        %268 = vector.broadcast %cst_1 : f32 to vector<7x3x3xf32>
        %269 = vector.broadcast %false_5 : i1 to vector<7x3x3xi1>
        %270 = vector.broadcast %c912109256_i32 : i32 to vector<7x3x3xi32>
        %271 = vector.gather %267[%c4, %c11] [%270], %269, %268 : tensor<3x7xf32>, vector<7x3x3xi32>, vector<7x3x3xi1>, vector<7x3x3xf32> into vector<7x3x3xf32>
        %272 = arith.ori %true_3, %true : i1
        scf.condition(%false) %alloc_9 : memref<3x7xi1>
      } do {
      ^bb0(%arg2: memref<3x7xi1>):
        %264 = math.tan %15 : tensor<2x7xf16>
        %265 = affine.apply affine_map<(d0) -> ((-d0) ceildiv 32)>(%c1)
        %alloca_55 = memref.alloca() : memref<3x7xi1>
        %266 = math.exp %cst_2 : f16
        %267 = arith.cmpf true, %cst, %cst : f32
        %268 = math.round %cst : f32
        %269 = index.mul %c12, %c3
        %270 = math.fma %cst_2, %cst_2, %cst_0 : f16
        %271 = index.ceildivs %c3, %c14
        %272 = arith.minsi %c951144787_i64, %c783155345_i64 : i64
        %273 = math.absi %false_6 : i1
        %274 = index.sub %c11, %c2
        memref.tensor_store %10, %alloc_19 : memref<7x3x3xi1>
        %275 = index.ceildivs %c5, %c2
        %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %20, %20, %cst : vector<3xf32>, vector<3xf32> into f32
        %277 = math.ctlz %10 : tensor<7x3x3xi1>
        scf.yield %arg2 : memref<3x7xi1>
      }
      %253 = arith.maxf %cst_0, %cst_2 : f16
      %254 = math.log2 %15 : tensor<2x7xf16>
      %255 = arith.shli %true_3, %true : i1
      %256 = arith.muli %c1969275858_i32, %c1969275858_i32 : i32
      %257 = vector.flat_transpose %20 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
      %258 = bufferization.clone %alloc_7 : memref<3x2xi16> to memref<3x2xi16>
      %259 = scf.while (%arg2 = %alloc_11) : (memref<3x2xf32>) -> memref<3x2xf32> {
        %264 = vector.broadcast %cst : f32 to vector<3x7xf32>
        %265 = vector.fma %264, %264, %264 : vector<3x7xf32>
        %266 = vector.insertelement %cst_1, %20[%c1 : index] : vector<3xf32>
        %267 = math.roundeven %15 : tensor<2x7xf16>
        %268 = vector.broadcast %cst_1 : f32 to vector<7xf32>
        %269 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %264, %20, %268 : vector<3x7xf32>, vector<3xf32> into vector<7xf32>
        %270 = math.floor %0 : tensor<7x3x3xf16>
        %271 = arith.cmpi sge, %true, %false_6 : i1
        %272 = arith.addf %cst_0, %cst_2 : f16
        %273 = arith.remf %cst_0, %cst_0 : f16
        scf.condition(%false) %arg2 : memref<3x2xf32>
      } do {
      ^bb0(%arg2: memref<3x2xf32>):
        %264 = index.maxs %c15, %c7
        %265 = arith.negf %cst_0 : f16
        %266 = vector.flat_transpose %20 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
        %c934995568_i32 = arith.constant 934995568 : i32
        %267 = math.absf %cst_1 : f32
        %268 = vector.broadcast %cst_1 : f32 to vector<7x3x3xf32>
        %269 = vector.fma %268, %268, %268 : vector<7x3x3xf32>
        %270 = math.ctlz %17 : tensor<2x7xi1>
        %271 = arith.xori %c912109256_i32, %c1969275858_i32 : i32
        %272 = affine.max affine_map<(d0, d1) -> ((d0 mod 8) mod 128, d1 * 2)>(%c12, %c6)
        %true_55 = arith.constant true
        %false_56 = arith.constant false
        %273 = vector.transfer_read %4[%c14, %c6], %false_56 : tensor<2x7xi1>, vector<i1>
        %274 = math.round %0 : tensor<7x3x3xf16>
        %275 = vector.multi_reduction <add>, %266, %20 [] : vector<3xf32> to vector<3xf32>
        %276 = math.log1p %0 : tensor<7x3x3xf16>
        %277 = math.floor %0 : tensor<7x3x3xf16>
        %alloca_57 = memref.alloca() : memref<7x3x3xf16>
        vector.print %269 : vector<7x3x3xf32>
        scf.yield %arg2 : memref<3x2xf32>
      }
      %from_elements_53 = tensor.from_elements %cst_0, %cst_0, %cst_2, %cst_2, %cst_2, %cst_0 : tensor<3x2xf16>
      %inserted_54 = tensor.insert %c8066_i16 into %2[%c2, %c5] : tensor<3x7xi16>
      %260 = arith.xori %false_5, %false_5 : i1
      %261 = affine.max affine_map<(d0, d1, d2) -> (d2 * 64, d0)>(%c12, %c2, %c11)
      %262 = math.ctlz %12 : tensor<3x7xi1>
      bufferization.dealloc_tensor %0 : tensor<7x3x3xf16>
      %263 = vector.load %alloc[%c2, %c4] : memref<3x7xi32>, vector<7x3x3xi32>
      scf.yield %c8 : index
    }
    default {
      %251 = math.fpowi %cst, %c912109256_i32 : f32, i32
      %252 = arith.remui %true_3, %true : i1
      %253 = arith.minsi %c8066_i16, %c-4009_i16 : i16
      %cast_53 = tensor.cast %reduced : tensor<7x3xi32> to tensor<?x?xi32>
      %254 = math.log %15 : tensor<2x7xf16>
      %255 = math.expm1 %cst : f32
      %256 = bufferization.to_memref %3 : memref<7x3x3xi1>
      %257 = math.absi %false_6 : i1
      %258 = math.log1p %cst_4 : f32
      affine.store %c912109256_i32, %alloc_8[%c4, %c13] : memref<2x7xi32>
      %259 = vector.extract_strided_slice %20 {offsets = [0], sizes = [1], strides = [1]} : vector<3xf32> to vector<1xf32>
      vector.print %259 : vector<1xf32>
      %260 = arith.addf %cst_1, %cst : f32
      %261 = arith.cmpi ne, %c783155345_i64, %c951144787_i64 : i64
      %262 = scf.while (%arg2 = %c1969275858_i32) : (i32) -> i32 {
        %264 = arith.addf %cst_0, %cst_2 : f16
        %alloc_54 = memref.alloc() : memref<2x7xi16>
        %265 = vector.broadcast %c8066_i16 : i16 to vector<2x7xi16>
        %266 = vector.broadcast %false_6 : i1 to vector<2x7xi1>
        %267 = vector.broadcast %arg2 : i32 to vector<2x7xi32>
        %268 = vector.gather %alloc_54[%c3, %c1] [%267], %266, %265 : memref<2x7xi16>, vector<2x7xi32>, vector<2x7xi1>, vector<2x7xi16> into vector<2x7xi16>
        %269 = vector.bitcast %259 : vector<1xf32> to vector<1xf32>
        %270 = math.fpowi %cst, %arg2 : f32, i32
        %271 = math.round %15 : tensor<2x7xf16>
        %272 = arith.cmpi sgt, %c8066_i16, %c8066_i16 : i16
        %cast_55 = tensor.cast %0 : tensor<7x3x3xf16> to tensor<?x?x?xf16>
        %273 = vector.bitcast %265 : vector<2x7xi16> to vector<2x7xi16>
        scf.condition(%true_3) %arg2 : i32
      } do {
      ^bb0(%arg2: i32):
        %264 = math.ctlz %11 : tensor<7x3x3xi32>
        %265 = memref.atomic_rmw assign %cst, %alloc_13[%c2, %c0] : (f32, memref<3x2xf32>) -> f32
        %alloca_54 = memref.alloca() : memref<7x3x3xi64>
        %266 = index.add %c5, %c15
        %267 = math.expm1 %cst : f32
        %268 = vector.broadcast %c8066_i16 : i16 to vector<3x2xi16>
        %269 = vector.broadcast %true_3 : i1 to vector<3x2xi1>
        %270 = vector.broadcast %c912109256_i32 : i32 to vector<3x2xi32>
        %271 = vector.gather %alloc_16[%266, %c11, %c3] [%270], %269, %268 : memref<7x3x3xi16>, vector<3x2xi32>, vector<3x2xi1>, vector<3x2xi16> into vector<3x2xi16>
        %272 = arith.addf %cst, %cst : f32
        %273 = arith.subi %arg2, %c1969275858_i32 : i32
        %274 = vector.broadcast %arg2 : i32 to vector<3xi32>
        %275 = vector.transfer_write %274, %11[%c15, %c6, %c8] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<3xi32>, tensor<7x3x3xi32>
        %276 = vector.flat_transpose %20 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
        %277 = math.ipowi %22, %23 : tensor<i32>
        %278 = memref.load %alloc[%c2, %c2] : memref<3x7xi32>
        %279 = arith.remui %false_6, %false_6 : i1
        affine.store %false_6, %alloc_19[%c11, %c14, %c10] : memref<7x3x3xi1>
        %280 = math.round %15 : tensor<2x7xf16>
        %281 = arith.remf %cst_0, %cst_0 : f16
        scf.yield %c1969275858_i32 : i32
      }
      %263 = math.expm1 %15 : tensor<2x7xf16>
      scf.yield %c5 : index
    }
    %26 = vector.create_mask %c12, %c3 : vector<3x2xi1>
    %collapsed = tensor.collapse_shape %12 [[0, 1]] : tensor<3x7xi1> into tensor<21xi1>
    %27 = math.tan %0 : tensor<7x3x3xf16>
    %28 = affine.max affine_map<(d0) -> (0)>(%c1)
    %29 = vector.flat_transpose %20 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
    %30 = arith.remui %false_5, %true_3 : i1
    %31 = arith.minsi %c951144787_i64, %c783155345_i64 : i64
    %32 = vector.insert %cst_4, %29 [1] : f32 into vector<3xf32>
    %33 = math.powf %cst, %cst : f32
    %34 = affine.load %alloc[%c12, %c11] : memref<3x7xi32>
    %35 = index.floordivs %28, %c5
    %extracted = tensor.extract %10[%c5, %c0, %c1] : tensor<7x3x3xi1>
    %36 = math.round %cst_2 : f16
    %37 = index.floordivs %c7, %c14
    %38 = math.log1p %15 : tensor<2x7xf16>
    %39 = math.roundeven %0 : tensor<7x3x3xf16>
    %40 = affine.for %arg2 = 0 to 50 iter_args(%arg3 = %29) -> (vector<3xf32>) {
      affine.yield %20 : vector<3xf32>
    }
    %41 = vector.insertelement %cst, %29[%c13 : index] : vector<3xf32>
    %42 = vector.create_mask %c7, %c12 : vector<3x7xi1>
    %43 = vector.broadcast %c12 : index to vector<3xindex>
    %44 = vector.broadcast %false_5 : i1 to vector<3xi1>
    %45 = vector.broadcast %c-4009_i16 : i16 to vector<3xi16>
    vector.scatter %alloc_16[%c2, %c0, %c2] [%43], %44, %45 : memref<7x3x3xi16>, vector<3xindex>, vector<3xi1>, vector<3xi16>
    %46 = scf.index_switch %c3 -> vector<7x3x3xf16> 
    case 1 {
      %251 = tensor.empty() : tensor<2x2xi64>
      %252 = tensor.empty() : tensor<3x2xi64>
      %253 = linalg.matmul ins(%14, %251 : tensor<3x2xi64>, tensor<2x2xi64>) outs(%252 : tensor<3x2xi64>) -> tensor<3x2xi64>
      %254 = arith.addf %cst_0, %cst_2 : f16
      %255 = arith.addf %cst_4, %cst_1 : f32
      %expanded_53 = tensor.expand_shape %reduced [[0], [1, 2]] : tensor<7x3xi32> into tensor<7x3x1xi32>
      %256 = memref.atomic_rmw muli %c8066_i16, %alloc_16[%c2, %c2, %c1] : (i16, memref<7x3x3xi16>) -> i16
      %257 = index.sub %c15, %c4
      %258 = math.ctlz %11 : tensor<7x3x3xi32>
      %259 = affine.max affine_map<(d0) -> (d0 * 2, ((d0 * 9) ceildiv 16) ceildiv 16, (d0 * 7) mod 16 + 2)>(%28)
      %260 = arith.ceildivsi %true_3, %true : i1
      %alloc_54 = memref.alloc() : memref<7x2xi16>
      %261 = tensor.empty() : tensor<3x2xi16>
      %262 = linalg.matmul ins(%5, %alloc_54 : tensor<3x7xi16>, memref<7x2xi16>) outs(%261 : tensor<3x2xi16>) -> tensor<3x2xi16>
      %263 = vector.splat %28 : vector<3x2xindex>
      %264 = index.floordivs %c9, %35
      %265 = math.ctlz %11 : tensor<7x3x3xi32>
      %266 = math.absf %15 : tensor<2x7xf16>
      %267 = vector.splat %cst_4 : vector<3x7xf32>
      %268 = vector.splat %c7 : vector<3x2xindex>
      %269 = vector.broadcast %cst_0 : f16 to vector<7x3x3xf16>
      scf.yield %269 : vector<7x3x3xf16>
    }
    case 2 {
      %251 = vector.insertelement %cst_1, %20[%c2 : index] : vector<3xf32>
      %alloca_53 = memref.alloca() : memref<3x7xi1>
      %252 = math.exp2 %15 : tensor<2x7xf16>
      %253 = arith.cmpf ogt, %cst_0, %cst_2 : f16
      %true_54 = arith.constant true
      %false_55 = arith.constant false
      %254 = vector.transfer_read %1[%c15, %c3], %false_55 : tensor<2x7xi1>, vector<i1>
      %alloc_56 = memref.alloc() : memref<3x2xi16>
      memref.copy %alloc_7, %alloc_56 : memref<3x2xi16> to memref<3x2xi16>
      %255 = arith.minf %cst, %cst : f32
      %256 = math.ipowi %9, %14 : tensor<3x2xi64>
      memref.alloca_scope  {
        %264 = math.atan %0 : tensor<7x3x3xf16>
        %265 = vector.insertelement %cst_4, %20[%c8 : index] : vector<3xf32>
        %false_58 = arith.constant false
        %false_59 = arith.constant false
        %266 = vector.transfer_read %7[%c2, %c9], %false_59 : tensor<2x7xi1>, vector<i1>
        %267 = math.expm1 %15 : tensor<2x7xf16>
        %268 = math.floor %cst_2 : f16
        %269 = index.sub %c6, %c8
        %270 = math.log1p %15 : tensor<2x7xf16>
        %alloca_60 = memref.alloca() : memref<3x7xf32>
        %271 = vector.splat %false : vector<7x3x3xi1>
        %272 = math.ctpop %2 : tensor<3x7xi16>
        %273 = index.add %c5, %c11
        %274 = arith.maxsi %true, %false_6 : i1
        affine.store %false_6, %alloc_19[%c7, %c13, %c11] : memref<7x3x3xi1>
        %275 = affine.max affine_map<(d0, d1, d2) -> (d2 ceildiv 4, 0)>(%c11, %35, %c14)
        %276 = index.divu %c12, %c2
        %277 = index.maxu %c9, %c12
        %278 = vector.bitcast %26 : vector<3x2xi1> to vector<3x2xi1>
        memref.assume_alignment %alloc_17, 16 : memref<3x7xi16>
        vector.print %29 : vector<3xf32>
        %279 = math.exp %cst_2 : f16
        %280 = vector.bitcast %42 : vector<3x7xi1> to vector<3x7xi1>
        %281 = index.maxs %277, %275
        %282 = arith.divui %false, %true_54 : i1
        %283 = arith.xori %extracted, %true_3 : i1
        %expanded_61 = tensor.expand_shape %10 [[0], [1], [2, 3]] : tensor<7x3x3xi1> into tensor<7x3x3x1xi1>
        %alloca_62 = memref.alloca() : memref<3x7xi16>
        %284 = math.tan %15 : tensor<2x7xf16>
        %285 = arith.subi %false_58, %false : i1
        %286 = arith.cmpi sge, %c1969275858_i32, %c1969275858_i32 : i32
        %287 = bufferization.to_tensor %alloc_15 : memref<7x3x3xi64>
        %288 = math.absf %cst_2 : f16
        %289 = arith.shli %c-4009_i16, %c8066_i16 : i16
      }
      %257 = arith.negf %cst_1 : f32
      %extracted_57 = tensor.extract %15[%c0, %c3] : tensor<2x7xf16>
      %258 = index.castu %c11 : index to i32
      %259 = arith.remsi %true_54, %false : i1
      %260 = index.divu %c11, %28
      %261 = index.floordivs %28, %260
      %262 = math.absf %cst_4 : f32
      %263 = vector.broadcast %extracted_57 : f16 to vector<7x3x3xf16>
      scf.yield %263 : vector<7x3x3xf16>
    }
    default {
      %251 = vector.broadcast %c15 : index to vector<3xindex>
      %252 = vector.broadcast %false_6 : i1 to vector<3xi1>
      %253 = vector.broadcast %c-4009_i16 : i16 to vector<3xi16>
      vector.scatter %alloc_17[%c0, %c3] [%251], %252, %253 : memref<3x7xi16>, vector<3xindex>, vector<3xi1>, vector<3xi16>
      %254 = arith.addf %cst_1, %cst : f32
      %inserted_53 = tensor.insert %c-4009_i16 into %8[%c0, %c1] : tensor<3x2xi16>
      %255 = scf.if %false_6 -> (memref<2x7xi32>) {
        %269 = affine.min affine_map<(d0, d1) -> (-d1 - 4, d0, -d1 - 4, -d1 - 4)>(%c13, %c2)
        memref.copy %alloc_13, %alloc_11 : memref<3x2xf32> to memref<3x2xf32>
        %270 = math.ipowi %3, %10 : tensor<7x3x3xi1>
        %271 = arith.maxf %cst_1, %cst_4 : f32
        %alloc_55 = memref.alloc() : memref<7x7xi16>
        %272 = tensor.empty() : tensor<3x7xi16>
        %273 = linalg.matmul ins(%5, %alloc_55 : tensor<3x7xi16>, memref<7x7xi16>) outs(%272 : tensor<3x7xi16>) -> tensor<3x7xi16>
        %274 = index.ceildivu %c7, %c0
        %alloca_56 = memref.alloca() : memref<2x7xi32>
        %275 = vector.insert %cst, %20 [0] : f32 into vector<3xf32>
        scf.yield %alloc_8 : memref<2x7xi32>
      } else {
        %269 = arith.remf %cst_4, %cst_4 : f32
        %270 = math.expm1 %cst_4 : f32
        %alloca_55 = memref.alloca() : memref<3x7xf32>
        %271 = tensor.empty() : tensor<7x7xi1>
        %272 = tensor.empty() : tensor<2x7xi1>
        %273 = linalg.matmul ins(%1, %271 : tensor<2x7xi1>, tensor<7x7xi1>) outs(%272 : tensor<2x7xi1>) -> tensor<2x7xi1>
        %cast_56 = tensor.cast %5 : tensor<3x7xi16> to tensor<?x?xi16>
        %274 = vector.broadcast %c4 : index to vector<2xindex>
        %275 = vector.broadcast %false_6 : i1 to vector<2xi1>
        %276 = vector.broadcast %cst_4 : f32 to vector<2xf32>
        vector.scatter %alloc_14[%c0, %c2] [%274], %275, %276 : memref<2x7xf32>, vector<2xindex>, vector<2xi1>, vector<2xf32>
        %277 = affine.min affine_map<(d0, d1, d2) -> (d1 mod 32 - (d1 - 1), d2 - (d1 - 1), d2, d2 + 128)>(%37, %37, %c5)
        %c-10832_i16 = arith.constant -10832 : i16
        scf.yield %alloc_8 : memref<2x7xi32>
      }
      %256 = vector.matrix_multiply %20, %29 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xf32>, vector<3xf32>) -> vector<1xf32>
      %257 = vector.multi_reduction <mul>, %42, %42 [] : vector<3x7xi1> to vector<3x7xi1>
      %258 = vector.broadcast %c1969275858_i32 : i32 to vector<i32>
      %259 = vector.transfer_write %258, %21[%c7] : vector<i32>, tensor<7xi32>
      %260 = index.maxu %c8, %37
      %261 = arith.minsi %34, %c912109256_i32 : i32
      %extracted_54 = tensor.extract %11[%c3, %c0, %c0] : tensor<7x3x3xi32>
      %262 = arith.minf %cst_0, %cst_2 : f16
      %263 = scf.while (%arg2 = %c8066_i16) : (i16) -> i16 {
        %inserted_55 = tensor.insert %c912109256_i32 into %19[%c1, %c2] : tensor<7x3xi32>
        %269 = math.log %cst_0 : f16
        %270 = arith.maxf %cst_4, %cst_4 : f32
        %271 = arith.addf %cst_1, %cst_4 : f32
        %272 = math.log2 %0 : tensor<7x3x3xf16>
        %273 = arith.floordivsi %arg2, %c8066_i16 : i16
        %274 = bufferization.to_memref %10 : memref<7x3x3xi1>
        %275 = arith.ori %34, %extracted_54 : i32
        scf.condition(%true_3) %arg2 : i16
      } do {
      ^bb0(%arg2: i16):
        %269 = index.add %c5, %37
        %270 = vector.bitcast %42 : vector<3x7xi1> to vector<3x7xi1>
        %271 = arith.maxf %cst_1, %cst : f32
        %272 = arith.maxsi %34, %c1969275858_i32 : i32
        %273 = math.floor %0 : tensor<7x3x3xf16>
        %274 = arith.remui %false_6, %false : i1
        %expanded_55 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<2x7xf16> into tensor<2x7x1xf16>
        %275 = arith.cmpi ugt, %extracted_54, %c1969275858_i32 : i32
        %276 = arith.cmpi ugt, %c951144787_i64, %c951144787_i64 : i64
        %277 = vector.splat %c4 : vector<2x7xindex>
        %278 = vector.broadcast %true_3 : i1 to vector<2xi1>
        %279 = vector.insert %278, %26 [2] : vector<2xi1> into vector<3x2xi1>
        %280 = arith.maxf %cst_4, %cst_4 : f32
        %281 = math.roundeven %0 : tensor<7x3x3xf16>
        %282 = affine.apply affine_map<(d0) -> ((-d0) ceildiv 32)>(%c10)
        %283 = bufferization.to_memref %23 : memref<i32>
        %284 = math.tan %15 : tensor<2x7xf16>
        scf.yield %c8066_i16 : i16
      }
      %264 = index.ceildivs %c10, %c13
      %265 = scf.while (%arg2 = %alloc) : (memref<3x7xi32>) -> memref<3x7xi32> {
        %269 = arith.addi %true_3, %extracted : i1
        %270 = arith.remf %cst_4, %cst : f32
        %271 = index.divu %28, %c2
        %272 = arith.minf %cst_0, %cst_2 : f16
        %273 = arith.remui %extracted, %true : i1
        %274 = tensor.empty(%c15) : tensor<7x?x3xi32>
        %false_55 = arith.constant false
        %false_56 = arith.constant false
        %275 = vector.transfer_read %3[%c5, %c4, %37], %false_56 : tensor<7x3x3xi1>, vector<i1>
        %276 = math.fma %15, %15, %15 : tensor<2x7xf16>
        scf.condition(%false_55) %alloc : memref<3x7xi32>
      } do {
      ^bb0(%arg2: memref<3x7xi32>):
        %269 = vector.flat_transpose %20 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
        %270 = arith.shli %extracted, %true : i1
        memref.tensor_store %6, %alloc_21 : memref<3x7xi64>
        %271 = vector.reduction <add>, %20 : vector<3xf32> into f32
        %272 = arith.maxui %c1969275858_i32, %extracted_54 : i32
        %273 = vector.insert %cst, %29 [2] : f32 into vector<3xf32>
        %274 = vector.broadcast %extracted : i1 to vector<3xi1>
        %275 = vector.multi_reduction <minui>, %26, %274 [1] : vector<3x2xi1> to vector<3xi1>
        %276 = arith.maxsi %c8066_i16, %c8066_i16 : i16
        %277 = index.ceildivs %c12, %c14
        %278 = math.tan %15 : tensor<2x7xf16>
        %279 = arith.cmpi sge, %false, %false : i1
        %280 = arith.remf %cst_2, %cst_0 : f16
        affine.store %cst, %alloc_11[%c13, %c1] : memref<3x2xf32>
        %281 = math.round %cst_4 : f32
        %282 = vector.broadcast %extracted : i1 to vector<2xi1>
        %dest_55, %accumulated_value_56 = vector.scan <maxsi>, %26, %282 {inclusive = true, reduction_dim = 0 : i64} : vector<3x2xi1>, vector<2xi1>
        %283 = arith.ori %true_3, %false : i1
        scf.yield %arg2 : memref<3x7xi32>
      }
      %266 = math.fpowi %cst_4, %34 : f32, i32
      %267 = vector.flat_transpose %20 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
      %268 = vector.broadcast %cst_0 : f16 to vector<7x3x3xf16>
      scf.yield %268 : vector<7x3x3xf16>
    }
    %47 = arith.cmpi ugt, %c8066_i16, %c8066_i16 : i16
    %48 = vector.flat_transpose %20 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
    vector.print %26 : vector<3x2xi1>
    %49 = arith.addi %c912109256_i32, %34 : i32
    %50 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %29, %48, %cst_1 : vector<3xf32>, vector<3xf32> into f32
    memref.assume_alignment %alloc_13, 1 : memref<3x2xf32>
    %51 = math.rsqrt %cst_4 : f32
    %52 = arith.addf %cst_0, %cst_0 : f16
    memref.tensor_store %3, %alloc_19 : memref<7x3x3xi1>
    %53 = arith.muli %c1969275858_i32, %c1969275858_i32 : i32
    %54 = bufferization.to_memref %7 : memref<2x7xi1>
    %55 = math.ctlz %5 : tensor<3x7xi16>
    %56 = math.roundeven %cst_1 : f32
    %57 = scf.while (%arg2 = %alloc_22) : (memref<7xi32>) -> memref<7xi32> {
      %c2023949239_i32 = arith.constant 2023949239 : i32
      %251 = math.atan2 %cst, %cst_1 : f32
      %252 = math.round %cst : f32
      %253 = math.roundeven %cst_2 : f16
      %254 = memref.atomic_rmw assign %c783155345_i64, %alloc_21[%c0, %c3] : (i64, memref<3x7xi64>) -> i64
      %255 = math.floor %cst : f32
      vector.print %26 : vector<3x2xi1>
      %256 = affine.max affine_map<(d0) -> (d0)>(%c6)
      scf.condition(%extracted) %alloc_22 : memref<7xi32>
    } do {
    ^bb0(%arg2: memref<7xi32>):
      %251 = math.exp %0 : tensor<7x3x3xf16>
      affine.store %34, %alloc_22[%c7] : memref<7xi32>
      %252 = math.fma %cst_1, %cst, %cst_4 : f32
      %253 = tensor.empty() : tensor<3x2xi32>
      %254 = arith.muli %c951144787_i64, %c783155345_i64 : i64
      %255 = vector.load %alloc_14[%c0, %c0] : memref<2x7xf32>, vector<3x2xf32>
      %alloc_53 = memref.alloc() : memref<3x2xi1>
      %256 = math.log2 %cst_2 : f16
      %257 = arith.minf %cst_4, %cst : f32
      %258 = math.round %15 : tensor<2x7xf16>
      %259 = vector.multi_reduction <mul>, %255, %48 [1] : vector<3x2xf32> to vector<3xf32>
      %260 = scf.index_switch %c8 -> tensor<3x7xf32> 
      case 1 {
        %265 = arith.minsi %true_3, %true_3 : i1
        %266 = arith.mulf %cst, %cst_4 : f32
        %267 = vector.splat %cst_4 : vector<2x7xf32>
        %268 = math.expm1 %cst_2 : f16
        %269 = vector.extract_strided_slice %26 {offsets = [1], sizes = [1], strides = [1]} : vector<3x2xi1> to vector<1x2xi1>
        %270 = math.fpowi %0, %11 : tensor<7x3x3xf16>, tensor<7x3x3xi32>
        affine.store %cst_4, %alloc_12[%c15, %c7] : memref<2x7xf32>
        %271 = arith.mulf %cst_0, %cst_0 : f16
        %272 = math.absi %2 : tensor<3x7xi16>
        %273 = index.add %c8, %28
        %274 = math.floor %0 : tensor<7x3x3xf16>
        %275 = math.fpowi %cst, %34 : f32, i32
        %276 = vector.multi_reduction <add>, %42, %42 [] : vector<3x7xi1> to vector<3x7xi1>
        %277 = math.atan2 %15, %15 : tensor<2x7xf16>
        %278 = math.round %cst_1 : f32
        %expanded_54 = tensor.expand_shape %0 [[0], [1], [2, 3]] : tensor<7x3x3xf16> into tensor<7x3x3x1xf16>
        %279 = tensor.empty() : tensor<3x7xf32>
        scf.yield %279 : tensor<3x7xf32>
      }
      default {
        %265 = arith.maxf %cst_1, %cst : f32
        %266 = vector.insert %cst_4, %20 [1] : f32 into vector<3xf32>
        %extracted_54 = tensor.extract %6[%c0, %c4] : tensor<3x7xi64>
        %267 = math.round %0 : tensor<7x3x3xf16>
        %268 = affine.load %alloc_9[%c2, %c6] : memref<3x7xi1>
        %cst_55 = arith.constant 4.774400e+04 : f16
        %269 = arith.addi %true, %268 : i1
        %270 = arith.maxf %cst_1, %cst_4 : f32
        %271 = math.fpowi %cst_0, %34 : f16, i32
        %272 = vector.load %alloc_13[%c2, %c0] : memref<3x2xf32>, vector<2x7xf32>
        %273 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %20, %20, %cst_4 : vector<3xf32>, vector<3xf32> into f32
        %274 = arith.ori %true, %false : i1
        %275 = index.ceildivs %c3, %c1
        %276 = arith.remf %cst, %cst_1 : f32
        %277 = arith.remf %cst_4, %cst : f32
        %278 = arith.cmpi sge, %extracted_54, %c951144787_i64 : i64
        %279 = tensor.empty() : tensor<3x7xf32>
        scf.yield %279 : tensor<3x7xf32>
      }
      %261 = math.log2 %0 : tensor<7x3x3xf16>
      %262 = scf.if %false_6 -> (memref<2x7xi1>) {
        %265 = math.atan2 %cst_0, %cst_2 : f16
        %266 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %48, %29, %cst_1 : vector<3xf32>, vector<3xf32> into f32
        %267 = math.atan2 %cst, %cst_1 : f32
        %268 = math.powf %0, %0 : tensor<7x3x3xf16>
        %269 = arith.divui %34, %34 : i32
        %c907213980_i64 = arith.constant 907213980 : i64
        vector.print %26 : vector<3x2xi1>
        %c13328_i16 = arith.constant 13328 : i16
        scf.yield %54 : memref<2x7xi1>
      } else {
        %265 = math.fpowi %cst_4, %c1969275858_i32 : f32, i32
        %266 = vector.load %alloc_18[%c0, %c1] : memref<3x2xi64>, vector<3x7xi64>
        %267 = math.log %15 : tensor<2x7xf16>
        %268 = math.log1p %cst_0 : f16
        %269 = affine.max affine_map<(d0) -> (d0 floordiv 2)>(%c14)
        %270 = arith.minsi %c1969275858_i32, %c1969275858_i32 : i32
        %271 = arith.minsi %false_6, %false : i1
        %cast_54 = tensor.cast %10 : tensor<7x3x3xi1> to tensor<?x?x?xi1>
        scf.yield %54 : memref<2x7xi1>
      }
      %263 = math.tan %15 : tensor<2x7xf16>
      %264 = math.cttz %c783155345_i64 : i64
      scf.yield %alloc_22 : memref<7xi32>
    }
    %58 = arith.remf %cst_2, %cst_0 : f16
    %59 = affine.min affine_map<(d0, d1) -> (d0)>(%c9, %c3)
    %60 = math.copysign %cst_4, %cst_4 : f32
    %alloca = memref.alloca() : memref<7x3x3xi32>
    %61 = arith.negf %cst_0 : f16
    %62 = index.ceildivs %c15, %c2
    %63 = scf.while (%arg2 = %alloc) : (memref<3x7xi32>) -> memref<3x7xi32> {
      %251 = vector.broadcast %false_6 : i1 to vector<7xi1>
      %252 = vector.insert %251, %42 [1] : vector<7xi1> into vector<3x7xi1>
      %253 = index.divu %62, %c12
      %cast_53 = tensor.cast %9 : tensor<3x2xi64> to tensor<?x?xi64>
      %254 = arith.maxf %cst_4, %cst : f32
      %255 = vector.reduction <maxsi>, %251 : vector<7xi1> into i1
      %256 = memref.atomic_rmw assign %c8066_i16, %alloc_7[%c1, %c1] : (i16, memref<3x2xi16>) -> i16
      %257 = vector.multi_reduction <add>, %42, %251 [0] : vector<3x7xi1> to vector<7xi1>
      %258 = affine.max affine_map<(d0, d1) -> (d1, (d0 + 128) * 2, (d0 + 128) * 2, -(d0 + 128))>(%c8, %c13)
      scf.condition(%false_5) %arg2 : memref<3x7xi32>
    } do {
    ^bb0(%arg2: memref<3x7xi32>):
      %251 = arith.maxui %34, %c912109256_i32 : i32
      %252 = vector.multi_reduction <add>, %20, %29 [] : vector<3xf32> to vector<3xf32>
      %alloc_53 = memref.alloc() : memref<3x2xi64>
      memref.copy %alloc_18, %alloc_53 : memref<3x2xi64> to memref<3x2xi64>
      %253 = math.roundeven %cst_4 : f32
      %254 = index.sub %c13, %c12
      %255 = math.floor %cst_2 : f16
      %256 = affine.for %arg3 = 0 to 82 iter_args(%arg4 = %extracted) -> (i1) {
        affine.yield %arg4 : i1
      }
      %257 = math.round %15 : tensor<2x7xf16>
      %258 = scf.while (%arg3 = %alloc_21) : (memref<3x7xi64>) -> memref<3x7xi64> {
        %266 = index.maxu %c4, %c0
        %267 = arith.remui %extracted, %true_3 : i1
        %268 = math.absf %cst_1 : f32
        %269 = arith.remsi %c1969275858_i32, %c912109256_i32 : i32
        %270 = arith.maxf %cst_4, %cst_1 : f32
        %271 = math.log2 %cst : f32
        %272 = affine.min affine_map<(d0) -> (d0 + 128, d0 * -63 - (d0 * -63 - (d0 + 128) + d0 + 128 + 64) - 64, d0)>(%c9)
        %extracted_54 = tensor.extract %reduced[%c1, %c2] : tensor<7x3xi32>
        scf.condition(%false) %arg3 : memref<3x7xi64>
      } do {
      ^bb0(%arg3: memref<3x7xi64>):
        %266 = math.exp2 %cst_2 : f16
        %267 = arith.shrui %c783155345_i64, %c783155345_i64 : i64
        %268 = arith.remf %cst, %cst_4 : f32
        %269 = bufferization.clone %alloc_17 : memref<3x7xi16> to memref<3x7xi16>
        vector.print %42 : vector<3x7xi1>
        %270 = math.ceil %cst_0 : f16
        %271 = math.floor %0 : tensor<7x3x3xf16>
        %272 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %48, %48, %cst_4 : vector<3xf32>, vector<3xf32> into f32
        %273 = math.exp %cst_0 : f16
        %274 = index.maxs %c4, %c7
        %275 = arith.remsi %false_6, %true : i1
        %276 = vector.broadcast %false_5 : i1 to vector<3xi1>
        %dest_54, %accumulated_value_55 = vector.scan <xor>, %26, %276 {inclusive = false, reduction_dim = 1 : i64} : vector<3x2xi1>, vector<3xi1>
        %277 = affine.load %alloc_13[%c4, %c13] : memref<3x2xf32>
        %278 = arith.cmpi ne, %c8066_i16, %c-4009_i16 : i16
        %279 = arith.remui %c951144787_i64, %c783155345_i64 : i64
        %280 = vector.bitcast %29 : vector<3xf32> to vector<3xf32>
        scf.yield %arg3 : memref<3x7xi64>
      }
      %259 = affine.min affine_map<(d0, d1, d2) -> (d0 + d2 ceildiv 16, 0, -(d2 - d0))>(%c3, %c1, %c0)
      %260 = bufferization.to_memref %15 : memref<2x7xf16>
      %261 = math.ceil %cst_0 : f16
      %262 = arith.maxsi %false_6, %false_5 : i1
      %263 = arith.xori %true, %false_5 : i1
      %264 = math.exp %cst_4 : f32
      %265 = arith.cmpf ogt, %cst_1, %cst_4 : f32
      scf.yield %alloc : memref<3x7xi32>
    }
    %64 = math.log1p %cst_0 : f16
    %65 = math.exp %cst_4 : f32
    %alloca_23 = memref.alloca() : memref<3x2xf32>
    %extracted_24 = tensor.extract %16[%c1, %c2] : tensor<2x7xi1>
    %66 = math.round %cst_0 : f16
    %67 = vector.create_mask %c13, %59 : vector<3x7xi1>
    %68 = math.log2 %15 : tensor<2x7xf16>
    %69 = vector.broadcast %false_5 : i1 to vector<7xi1>
    %70 = vector.insert %69, %42 [0] : vector<7xi1> into vector<3x7xi1>
    %71 = arith.addf %cst_4, %cst_1 : f32
    scf.index_switch %c4 
    case 1 {
      %false_53 = index.bool.constant false
      %251 = tensor.empty() : tensor<7x2xi16>
      %252 = tensor.empty() : tensor<3x2xi16>
      %253 = linalg.matmul ins(%2, %251 : tensor<3x7xi16>, tensor<7x2xi16>) outs(%252 : tensor<3x2xi16>) -> tensor<3x2xi16>
      %alloca_54 = memref.alloca() : memref<2x7xi1>
      %254 = math.log1p %cst_4 : f32
      %255 = vector.bitcast %42 : vector<3x7xi1> to vector<3x7xi1>
      %256 = math.roundeven %cst_0 : f16
      %257 = scf.execute_region -> vector<7x3x3xi32> {
        %266 = index.floordivs %c9, %62
        %267 = math.roundeven %cst : f32
        %268 = index.sub %c10, %59
        %cst_56 = arith.constant 1.66223373E+9 : f32
        %269 = arith.maxsi %false, %true_3 : i1
        %270 = vector.reduction <minf>, %20 : vector<3xf32> into f32
        %271 = bufferization.clone %alloc : memref<3x7xi32> to memref<3x7xi32>
        %cast_57 = tensor.cast %11 : tensor<7x3x3xi32> to tensor<?x?x?xi32>
        %cst_58 = arith.constant 5.792000e+03 : f16
        %272 = vector.load %alloc_16[%c1, %c2, %c0] : memref<7x3x3xi16>, vector<2x7xi16>
        %273 = vector.splat %c15 : vector<3x7xindex>
        %alloc_59 = memref.alloc() : memref<3x7xi16>
        memref.copy %alloc_17, %alloc_59 : memref<3x7xi16> to memref<3x7xi16>
        %274 = arith.minsi %false_53, %false : i1
        %275 = vector.multi_reduction <add>, %48, %cst [0] : vector<3xf32> to f32
        %276 = index.mul %266, %c9
        %277 = vector.insert %cst, %48 [1] : f32 into vector<3xf32>
        %278 = vector.broadcast %34 : i32 to vector<7x3x3xi32>
        scf.yield %278 : vector<7x3x3xi32>
      }
      %258 = math.sqrt %0 : tensor<7x3x3xf16>
      %259 = math.rsqrt %cst_2 : f16
      %260 = math.round %0 : tensor<7x3x3xf16>
      %261 = vector.extract_strided_slice %42 {offsets = [0], sizes = [3], strides = [1]} : vector<3x7xi1> to vector<3x7xi1>
      scf.if %false_5 {
        %266 = tensor.empty() : tensor<2x7xi1>
        %267 = arith.muli %true, %extracted : i1
        %268 = arith.minsi %c8066_i16, %c8066_i16 : i16
        %269 = vector.create_mask %c0, %c11 : vector<3x2xi1>
        %270 = math.expm1 %15 : tensor<2x7xf16>
        %271 = memref.load %alloc_15[%c5, %c0, %c0] : memref<7x3x3xi64>
        %272 = arith.cmpi ule, %true_3, %false_5 : i1
        %273 = math.round %15 : tensor<2x7xf16>
      }
      %262 = arith.addf %cst_1, %cst_4 : f32
      %false_55 = arith.constant false
      %263 = vector.transfer_read %3[%c12, %c10, %c6], %false_55 : tensor<7x3x3xi1>, vector<7x7xi1>
      %264 = math.absi %12 : tensor<3x7xi1>
      %265 = math.atan2 %0, %0 : tensor<7x3x3xf16>
      scf.yield
    }
    case 2 {
      scf.if %true_3 {
        %264 = arith.divui %c951144787_i64, %c783155345_i64 : i64
        %265 = math.powf %15, %15 : tensor<2x7xf16>
        %cst_56 = arith.constant 1.000000e+00 : f16
        %266 = vector.transfer_read %15[%62, %c14], %cst_56 : tensor<2x7xf16>, vector<f16>
        %267 = arith.remf %cst_0, %cst_2 : f16
        %268 = bufferization.clone %alloc_22 : memref<7xi32> to memref<7xi32>
        %269 = math.ceil %0 : tensor<7x3x3xf16>
        %270 = vector.insertelement %cst_4, %20[%c7 : index] : vector<3xf32>
        %271 = affine.max affine_map<(d0) -> (d0)>(%c0)
      }
      %251 = math.absi %4 : tensor<2x7xi1>
      memref.tensor_store %8, %alloc_7 : memref<3x2xi16>
      vector.print %69 : vector<7xi1>
      %252 = memref.load %alloc_17[%c1, %c6] : memref<3x7xi16>
      %253 = arith.cmpi ult, %false_5, %true : i1
      %254 = math.roundeven %0 : tensor<7x3x3xf16>
      %255 = arith.xori %c912109256_i32, %34 : i32
      %256 = vector.flat_transpose %29 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
      %257 = scf.while (%arg2 = %48) : (vector<3xf32>) -> vector<3xf32> {
        %264 = math.ctlz %c-4009_i16 : i16
        %265 = arith.maxsi %c783155345_i64, %c783155345_i64 : i64
        %266 = vector.broadcast %false_6 : i1 to vector<3xi1>
        %dest_56, %accumulated_value_57 = vector.scan <maxsi>, %26, %266 {inclusive = false, reduction_dim = 1 : i64} : vector<3x2xi1>, vector<3xi1>
        %267 = math.ceil %cst_0 : f16
        %from_elements_58 = tensor.from_elements %c783155345_i64, %c783155345_i64, %c783155345_i64, %c951144787_i64, %c783155345_i64, %c783155345_i64 : tensor<3x2xi64>
        %268 = arith.shli %c951144787_i64, %c951144787_i64 : i64
        %269 = arith.maxf %cst, %cst_4 : f32
        %270 = arith.shli %c8066_i16, %c8066_i16 : i16
        scf.condition(%false_6) %48 : vector<3xf32>
      } do {
      ^bb0(%arg2: vector<3xf32>):
        %264 = math.powf %15, %15 : tensor<2x7xf16>
        %265 = vector.bitcast %69 : vector<7xi1> to vector<7xi1>
        %266 = arith.negf %cst_2 : f16
        %267 = arith.maxf %cst_0, %cst_0 : f16
        %268 = affine.max affine_map<(d0, d1, d2) -> (d0, (d0 - 16) * 64)>(%c12, %c11, %37)
        %269 = vector.extract_strided_slice %42 {offsets = [1], sizes = [2], strides = [1]} : vector<3x7xi1> to vector<2x7xi1>
        %270 = math.log1p %cst_2 : f16
        %collapsed_56 = tensor.collapse_shape %2 [[0, 1]] : tensor<3x7xi16> into tensor<21xi16>
        %271 = vector.insert %cst, %20 [1] : f32 into vector<3xf32>
        %272 = affine.min affine_map<(d0, d1, d2) -> (d2 * 2 + 31)>(%c6, %c13, %c8)
        %273 = math.expm1 %cst_2 : f16
        %274 = math.log1p %15 : tensor<2x7xf16>
        %275 = math.round %cst_4 : f32
        %276 = arith.addf %cst_4, %cst_1 : f32
        %277 = arith.cmpi ult, %true, %true : i1
        %278 = arith.shrui %c951144787_i64, %c783155345_i64 : i64
        scf.yield %48 : vector<3xf32>
      }
      %258 = arith.remf %cst, %cst_1 : f32
      %259 = vector.broadcast %false : i1 to vector<3xi1>
      %dest_53, %accumulated_value_54 = vector.scan <or>, %26, %259 {inclusive = true, reduction_dim = 1 : i64} : vector<3x2xi1>, vector<3xi1>
      %260 = bufferization.to_memref %13 : memref<2x7xi1>
      %261 = arith.maxsi %true_3, %extracted_24 : i1
      %262 = scf.execute_region -> memref<7x3x3xi32> {
        %264 = vector.insert %69, %42 [1] : vector<7xi1> into vector<3x7xi1>
        %265 = affine.max affine_map<(d0) -> ((d0 + d0 floordiv 4 + 16) * 2, ((d0 + d0 floordiv 4 + 16) * 2) floordiv 64)>(%c14)
        %266 = vector.insertelement %false, %69[%35 : index] : vector<7xi1>
        %267 = arith.addi %extracted, %true : i1
        %268 = arith.shli %extracted, %false_5 : i1
        %269 = index.sub %c3, %c5
        %270 = vector.broadcast %false : i1 to vector<3xi1>
        %271 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minui>} %69, %67, %270 : vector<7xi1>, vector<3x7xi1> into vector<3xi1>
        %272 = affine.max affine_map<(d0) -> (d0, d0 - (((d0 + 4) ceildiv 64) mod 128) * 64 + 16)>(%c12)
        %273 = memref.atomic_rmw muli %c783155345_i64, %alloc_15[%c3, %c0, %c0] : (i64, memref<7x3x3xi64>) -> i64
        %274 = affine.apply affine_map<(d0, d1) -> ((d1 + 18) ceildiv 32)>(%62, %c15)
        %275 = math.log1p %cst_2 : f16
        %276 = math.ceil %15 : tensor<2x7xf16>
        %277 = arith.minf %cst, %cst_1 : f32
        %278 = index.maxs %c1, %272
        %cast_56 = tensor.cast %1 : tensor<2x7xi1> to tensor<?x?xi1>
        %279 = index.divu %c15, %269
        scf.yield %alloc_10 : memref<7x3x3xi32>
      }
      %alloc_55 = memref.alloc() : memref<3xi1>
      %263 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_55, %10, %alloc_55 : memref<3xi1>, tensor<7x3x3xi1>, memref<3xi1>) outs(%10 : tensor<7x3x3xi1>) {
      ^bb0(%in: i1, %in_56: i1, %in_57: i1, %out: i1):
        %264 = math.log %0 : tensor<7x3x3xf16>
        %265 = arith.muli %c951144787_i64, %c783155345_i64 : i64
        %266 = vector.insertelement %cst_4, %48[%62 : index] : vector<3xf32>
        %267 = math.fma %cst_4, %cst_1, %cst_1 : f32
        %268 = math.floor %15 : tensor<2x7xf16>
        %269 = arith.negf %cst_1 : f32
        %270 = math.expm1 %15 : tensor<2x7xf16>
        %271 = arith.remui %extracted_24, %extracted_24 : i1
        %272 = affine.max affine_map<(d0, d1, d2, d3) -> (-(d3 - d2))>(%c8, %37, %c8, %c10)
        %cast_58 = tensor.cast %9 : tensor<3x2xi64> to tensor<?x?xi64>
        %273 = math.absi %8 : tensor<3x2xi16>
        %274 = vector.multi_reduction <minsi>, %42, %67 [] : vector<3x7xi1> to vector<3x7xi1>
        %275 = math.round %15 : tensor<2x7xf16>
        %276 = arith.negf %cst_0 : f16
        %inserted_59 = tensor.insert %in_57 into %13[%c1, %c0] : tensor<2x7xi1>
        %277 = vector.insertelement %cst_1, %48[%c12 : index] : vector<3xf32>
        %278 = index.add %c7, %c9
        %279 = math.exp %cst_1 : f32
        %expanded_60 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<2x7xi1> into tensor<2x7x1xi1>
        %280 = math.expm1 %0 : tensor<7x3x3xf16>
        %alloc_61 = memref.alloc() : memref<7x3xi1>
        %281 = tensor.empty() : tensor<2x3xi1>
        %282 = linalg.matmul ins(%17, %alloc_61 : tensor<2x7xi1>, memref<7x3xi1>) outs(%281 : tensor<2x3xi1>) -> tensor<2x3xi1>
        %from_elements_62 = tensor.from_elements %c8066_i16, %c-4009_i16, %c-4009_i16, %c8066_i16, %c8066_i16, %c-4009_i16, %c8066_i16, %c-4009_i16, %c8066_i16, %c-4009_i16, %c8066_i16, %c8066_i16, %c-4009_i16, %c8066_i16, %c-4009_i16, %c-4009_i16, %c-4009_i16, %c-4009_i16, %c-4009_i16, %c8066_i16, %c8066_i16 : tensor<3x7xi16>
        %283 = arith.mulf %cst_0, %cst_2 : f16
        %284 = vector.broadcast %c2 : index to vector<3xindex>
        %285 = vector.broadcast %false_5 : i1 to vector<3xi1>
        vector.scatter %alloc_20[%c3, %c2, %c2] [%284], %285, %285 : memref<7x3x3xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
        %286 = bufferization.clone %alloc_20 : memref<7x3x3xi1> to memref<7x3x3xi1>
        %287 = bufferization.to_memref %4 : memref<2x7xi1>
        %288 = vector.load %alloc_21[%c1, %c4] : memref<3x7xi64>, vector<2x7xi64>
        %289 = arith.addf %cst_0, %cst_2 : f16
        %290 = arith.shli %c-4009_i16, %c8066_i16 : i16
        %291 = math.sqrt %cst_0 : f16
        %292 = math.ceil %cst_1 : f32
        %293 = arith.negf %cst : f32
        linalg.yield %extracted_24 : i1
      } -> tensor<7x3x3xi1>
      scf.yield
    }
    case 3 {
      %251 = index.divs %59, %c0
      memref.assume_alignment %54, 4 : memref<2x7xi1>
      %252 = math.ctlz %extracted_24 : i1
      %253 = index.ceildivs %59, %c0
      %254 = vector.extract_strided_slice %48 {offsets = [0], sizes = [1], strides = [1]} : vector<3xf32> to vector<1xf32>
      %255 = math.exp %cst_0 : f16
      %256 = vector.flat_transpose %20 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
      %257 = vector.broadcast %c11 : index to vector<13xindex>
      %258 = vector.broadcast %extracted_24 : i1 to vector<13xi1>
      %259 = vector.broadcast %c8066_i16 : i16 to vector<13xi16>
      vector.scatter %alloc_17[%c1, %c1] [%257], %258, %259 : memref<3x7xi16>, vector<13xindex>, vector<13xi1>, vector<13xi16>
      %260 = index.divu %c11, %c14
      memref.assume_alignment %alloc_13, 16 : memref<3x2xf32>
      %cst_53 = arith.constant 2.251200e+04 : f16
      scf.index_switch %59 
      case 1 {
        %266 = arith.minsi %c783155345_i64, %c783155345_i64 : i64
        %267 = index.sub %c5, %c7
        %268 = math.round %cst_0 : f16
        %expanded_54 = tensor.expand_shape %collapsed [[0, 1]] : tensor<21xi1> into tensor<21x1xi1>
        %alloc_55 = memref.alloc() : memref<7x3xi32>
        memref.tensor_store %reduced, %alloc_55 : memref<7x3xi32>
        %269 = arith.maxf %cst_0, %cst_0 : f16
        %270 = arith.remf %cst_1, %cst : f32
        bufferization.dealloc_tensor %13 : tensor<2x7xi1>
        %271 = vector.broadcast %cst_4 : f32 to vector<3x3xf32>
        %272 = vector.outerproduct %29, %256, %271 {kind = #vector.kind<minf>} : vector<3xf32>, vector<3xf32>
        %273 = vector.insert %cst, %254 [0] : f32 into vector<1xf32>
        %274 = math.expm1 %0 : tensor<7x3x3xf16>
        %275 = affine.max affine_map<(d0, d1, d2, d3) -> ((d1 floordiv 8) floordiv 4 - 16)>(%37, %c14, %c12, %37)
        %276 = math.powf %cst_1, %cst_4 : f32
        %277 = math.tan %cst_1 : f32
        %278 = arith.cmpf ole, %cst_4, %cst_1 : f32
        %279 = vector.splat %c-4009_i16 : vector<3x2xi16>
        scf.yield
      }
      default {
        %266 = index.castu %c-4009_i16 : i16 to index
        %267 = vector.bitcast %29 : vector<3xf32> to vector<3xi32>
        %268 = math.log1p %cst_4 : f32
        %269 = arith.andi %c951144787_i64, %c951144787_i64 : i64
        %cast_54 = tensor.cast %transposed : tensor<3x7x3xi32> to tensor<?x?x?xi32>
        %270 = arith.maxf %cst_4, %cst_1 : f32
        %271 = arith.maxf %cst_2, %cst_0 : f16
        %272 = arith.divui %c912109256_i32, %c1969275858_i32 : i32
        %273 = math.ctlz %c-4009_i16 : i16
        %274 = vector.bitcast %29 : vector<3xf32> to vector<3xf32>
        affine.store %true_3, %alloc_20[%c11, %c7, %c15] : memref<7x3x3xi1>
        %275 = vector.flat_transpose %267 {columns = 3 : i32, rows = 1 : i32} : vector<3xi32> -> vector<3xi32>
        %276 = bufferization.clone %alloc : memref<3x7xi32> to memref<3x7xi32>
        %inserted_55 = tensor.insert %c1969275858_i32 into %11[%c4, %c2, %c0] : tensor<7x3x3xi32>
        %c1370962046_i64 = arith.constant 1370962046 : i64
        %alloc_56 = memref.alloc() : memref<7x7xi16>
        %277 = tensor.empty() : tensor<3x7xi16>
        %278 = linalg.matmul ins(%2, %alloc_56 : tensor<3x7xi16>, memref<7x7xi16>) outs(%277 : tensor<3x7xi16>) -> tensor<3x7xi16>
      }
      %261 = vector.multi_reduction <add>, %256, %29 [] : vector<3xf32> to vector<3xf32>
      vector.print %67 : vector<3x7xi1>
      %262 = vector.broadcast %c7 : index to vector<13xindex>
      %263 = vector.broadcast %false : i1 to vector<13xi1>
      %264 = vector.broadcast %c912109256_i32 : i32 to vector<13xi32>
      vector.scatter %alloc_22[%c1] [%262], %263, %264 : memref<7xi32>, vector<13xindex>, vector<13xi1>, vector<13xi32>
      %265 = math.log %0 : tensor<7x3x3xf16>
      scf.yield
    }
    case 4 {
      %251 = arith.maxf %cst_2, %cst_2 : f16
      %252 = arith.minsi %34, %c1969275858_i32 : i32
      %253 = arith.remsi %false_5, %extracted : i1
      %254 = vector.bitcast %42 : vector<3x7xi1> to vector<3x7xi1>
      %255 = math.fma %cst_4, %cst_4, %cst_1 : f32
      %256 = vector.insertelement %extracted_24, %69[%c0 : index] : vector<7xi1>
      %257 = affine.if affine_set<(d0, d1) : (d1 * 8 >= 0, ((d1 + d0 + 64) * 4) ceildiv 16 == 0)>(%c11, %c2) -> memref<3x2xi64> {
        %collapsed_53 = tensor.collapse_shape %9 [[0, 1]] : tensor<3x2xi64> into tensor<6xi64>
        %266 = index.divu %c0, %c6
        %267 = math.cttz %6 : tensor<3x7xi64>
        %268 = math.fpowi %0, %11 : tensor<7x3x3xf16>, tensor<7x3x3xi32>
        %269 = vector.flat_transpose %20 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
        %270 = math.ctlz %9 : tensor<3x2xi64>
        %expanded_54 = tensor.expand_shape %18 [[0], [1], [2, 3]] : tensor<3x7x3xi32> into tensor<3x7x3x1xi32>
        %271 = vector.bitcast %67 : vector<3x7xi1> to vector<3x7xi1>
        affine.yield %alloc_18 : memref<3x2xi64>
      } else {
        %266 = math.ipowi %5, %5 : tensor<3x7xi16>
        %267 = arith.ori %extracted_24, %false_5 : i1
        %268 = math.ctlz %4 : tensor<2x7xi1>
        %269 = index.ceildivs %c5, %c6
        %270 = affine.min affine_map<(d0, d1, d2) -> (d1, d2 - 128, (d0 + d2) mod 64, d1)>(%28, %c2, %c2)
        memref.tensor_store %4, %54 : memref<2x7xi1>
        %271 = arith.remf %cst_2, %cst_2 : f16
        %272 = vector.broadcast %true_3 : i1 to vector<3xi1>
        %273 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<and>} %69, %42, %272 : vector<7xi1>, vector<3x7xi1> into vector<3xi1>
        affine.yield %alloc_18 : memref<3x2xi64>
      }
      %258 = arith.cmpi ugt, %c-4009_i16, %c8066_i16 : i16
      bufferization.dealloc_tensor %2 : tensor<3x7xi16>
      %259 = index.add %c4, %37
      %260 = index.castu %c783155345_i64 : i64 to index
      %261 = affine.if affine_set<(d0) : (d0 floordiv 8 == 0)>(%c14) -> f32 {
        %266 = math.absi %c1969275858_i32 : i32
        %from_elements_53 = tensor.from_elements %34, %c1969275858_i32, %34, %c912109256_i32, %34, %c1969275858_i32, %34, %c1969275858_i32, %c1969275858_i32, %34, %c912109256_i32, %c912109256_i32, %34, %c1969275858_i32 : tensor<2x7xi32>
        %267 = arith.addf %cst_1, %cst_1 : f32
        %268 = math.floor %cst_4 : f32
        %269 = vector.broadcast %c5 : index to vector<7xindex>
        %270 = vector.broadcast %c783155345_i64 : i64 to vector<7xi64>
        vector.scatter %alloc_18[%c2, %c0] [%269], %69, %270 : memref<3x2xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
        %271 = vector.splat %c5 : vector<7x3x3xindex>
        %272 = math.tan %0 : tensor<7x3x3xf16>
        %273 = math.ctlz %18 : tensor<3x7x3xi32>
        affine.yield %cst_4 : f32
      } else {
        %266 = index.add %c3, %59
        %267 = index.ceildivu %c12, %c15
        %268 = index.castu %extracted : i1 to index
        %269 = index.sub %28, %c4
        %270 = vector.insert %cst_4, %48 [2] : f32 into vector<3xf32>
        %271 = vector.broadcast %false_6 : i1 to vector<3xi1>
        %dest_53, %accumulated_value_54 = vector.scan <or>, %42, %271 {inclusive = true, reduction_dim = 1 : i64} : vector<3x7xi1>, vector<3xi1>
        %272 = bufferization.clone %alloc_17 : memref<3x7xi16> to memref<3x7xi16>
        %273 = affine.apply affine_map<(d0) -> ((-d0) ceildiv 32)>(%c8)
        affine.yield %cst_4 : f32
      }
      %262 = math.absi %collapsed : tensor<21xi1>
      %263 = scf.execute_region -> vector<2x7xf32> {
        %inserted_53 = tensor.insert %cst_2 into %15[%c0, %c5] : tensor<2x7xf16>
        %266 = arith.remui %false, %false_6 : i1
        %cast_54 = tensor.cast %6 : tensor<3x7xi64> to tensor<?x?xi64>
        %267 = arith.xori %c951144787_i64, %c951144787_i64 : i64
        %268 = arith.divui %false_6, %extracted : i1
        %269 = index.maxs %c9, %c2
        %270 = memref.load %alloc_19[%c4, %c1, %c0] : memref<7x3x3xi1>
        %271 = math.round %15 : tensor<2x7xf16>
        %272 = vector.flat_transpose %48 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
        %273 = vector.insert %true, %69 [3] : i1 into vector<7xi1>
        %274 = vector.load %alloc_17[%c0, %c1] : memref<3x7xi16>, vector<2x7xi16>
        %275 = memref.load %alloc_8[%c1, %c4] : memref<2x7xi32>
        %276 = math.round %0 : tensor<7x3x3xf16>
        %277 = index.ceildivs %28, %59
        bufferization.dealloc_tensor %collapsed : tensor<21xi1>
        %278 = tensor.empty() : tensor<2x7xi32>
        %279 = math.fpowi %15, %278 : tensor<2x7xf16>, tensor<2x7xi32>
        %280 = vector.broadcast %cst : f32 to vector<2x7xf32>
        scf.yield %280 : vector<2x7xf32>
      }
      %264 = math.rsqrt %0 : tensor<7x3x3xf16>
      %265 = index.divu %c3, %35
      scf.yield
    }
    default {
      %251 = vector.broadcast %cst_4 : f32 to vector<f32>
      vector.transfer_write %251, %alloc_12[%c9, %c9] : vector<f32>, memref<2x7xf32>
      %252 = vector.load %alloc_9[%c2, %c6] : memref<3x7xi1>, vector<7x3x3xi1>
      %253 = tensor.empty() : tensor<3x7xi16>
      %mapped_53 = linalg.map ins(%alloc_17, %2 : memref<3x7xi16>, tensor<3x7xi16>) outs(%253 : tensor<3x7xi16>)
        (%in: i16, %in_54: i16) {
          %266 = index.divs %c4, %c5
          %267 = math.absi %8 : tensor<3x2xi16>
          %cst_55 = arith.constant 1.000000e+00 : f16
          %268 = vector.transfer_read %15[%266, %266], %cst_55 : tensor<2x7xf16>, vector<f16>
          %269 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%c8, %c6, %c13)
          %270 = tensor.empty() : tensor<3x2xf32>
          %271 = vector.broadcast %cst_4 : f32 to vector<3x7xf32>
          %272 = vector.broadcast %c1969275858_i32 : i32 to vector<3x7xi32>
          %273 = vector.gather %270[%c14, %c11] [%272], %42, %271 : tensor<3x2xf32>, vector<3x7xi32>, vector<3x7xi1>, vector<3x7xf32> into vector<3x7xf32>
          %274 = arith.remsi %c1969275858_i32, %34 : i32
          %275 = math.exp %270 : tensor<3x2xf32>
          %276 = arith.remf %cst_1, %cst_4 : f32
          %277 = index.sub %c13, %c7
          %c173285547_i64 = arith.constant 173285547 : i64
          %278 = vector.splat %c1969275858_i32 : vector<7x3x3xi32>
          %279 = math.tan %cst_1 : f32
          %280 = index.divu %c15, %266
          %281 = vector.flat_transpose %29 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
          %282 = arith.divui %c8066_i16, %c8066_i16 : i16
          %283 = vector.reduction <minf>, %281 : vector<3xf32> into f32
          %284 = arith.negf %cst : f32
          %inserted_56 = tensor.insert %false_5 into %3[%c5, %c2, %c2] : tensor<7x3x3xi1>
          %alloc_57 = memref.alloc() : memref<7x7xi16>
          %285 = tensor.empty() : tensor<3x7xi16>
          %286 = linalg.matmul ins(%5, %alloc_57 : tensor<3x7xi16>, memref<7x7xi16>) outs(%285 : tensor<3x7xi16>) -> tensor<3x7xi16>
          %287 = math.log %cst_2 : f16
          %alloc_58 = memref.alloc() : memref<3x2xf16>
          %288 = vector.broadcast %cst_2 : f16 to vector<3x7xf16>
          %289 = vector.gather %alloc_58[%c14, %c10] [%272], %42, %288 : memref<3x2xf16>, vector<3x7xi32>, vector<3x7xi1>, vector<3x7xf16> into vector<3x7xf16>
          %c200924470_i64 = arith.constant 200924470 : i64
          %290 = math.absf %cst_0 : f16
          %291 = math.fpowi %cst_4, %c1969275858_i32 : f32, i32
          %292 = index.sizeof
          %293 = math.cttz %21 : tensor<7xi32>
          %294 = arith.maxsi %true, %false_6 : i1
          %295 = arith.addf %cst_2, %cst_0 : f16
          %296 = math.round %15 : tensor<2x7xf16>
          %297 = arith.negf %cst_2 : f16
          %298 = index.castu %c783155345_i64 : i64 to index
          %299 = arith.minf %cst_55, %cst_0 : f16
          %c1_i16_59 = arith.constant 1 : i16
          linalg.yield %c1_i16_59 : i16
        }
      %254 = arith.divui %c-4009_i16, %c8066_i16 : i16
      %c1_i16 = arith.constant 1 : i16
      %c0_i16 = arith.constant 0 : i16
      %255 = vector.transfer_read %2[%c7, %c15], %c0_i16 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<3x7xi16>, vector<13xi16>
      %256 = vector.multi_reduction <minf>, %48, %cst_4 [0] : vector<3xf32> to f32
      %257 = vector.bitcast %67 : vector<3x7xi1> to vector<3x7xi1>
      %258 = vector.flat_transpose %29 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
      %259 = vector.bitcast %257 : vector<3x7xi1> to vector<3x7xi1>
      %260 = scf.while (%arg2 = %256) : (f32) -> f32 {
        %266 = math.ctlz %c1969275858_i32 : i32
        %267 = index.sizeof
        %268 = math.log %0 : tensor<7x3x3xf16>
        %269 = index.sub %28, %c7
        %270 = math.floor %cst_4 : f32
        vector.print %69 : vector<7xi1>
        %inserted_54 = tensor.insert %c1969275858_i32 into %23[] : tensor<i32>
        %271 = arith.minf %cst_2, %cst_2 : f16
        scf.condition(%extracted) %cst_1 : f32
      } do {
      ^bb0(%arg2: f32):
        %266 = vector.flat_transpose %20 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
        %267 = math.exp %0 : tensor<7x3x3xf16>
        %268 = math.log2 %0 : tensor<7x3x3xf16>
        %alloc_54 = memref.alloc() : memref<2x2xi64>
        %269 = tensor.empty() : tensor<3x2xi64>
        %270 = linalg.matmul ins(%14, %alloc_54 : tensor<3x2xi64>, memref<2x2xi64>) outs(%269 : tensor<3x2xi64>) -> tensor<3x2xi64>
        %271 = math.atan2 %cst_2, %cst_0 : f16
        %272 = arith.maxf %cst_2, %cst_0 : f16
        %273 = vector.splat %c11 : vector<7x3x3xindex>
        %274 = arith.cmpi sge, %c912109256_i32, %34 : i32
        %275 = math.floor %cst : f32
        %276 = affine.max affine_map<(d0, d1, d2) -> ((d1 floordiv 32) * -8, d1 * -8, (d1 floordiv 32) * -8)>(%c0, %c5, %c9)
        %277 = vector.flat_transpose %29 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
        %278 = arith.mulf %cst_0, %cst_2 : f16
        %279 = math.exp2 %256 : f32
        %280 = math.fma %cst_1, %cst_4, %cst_4 : f32
        %cst_55 = arith.constant 1.000000e+00 : f16
        %cst_56 = arith.constant 0.000000e+00 : f16
        %281 = vector.transfer_read %15[%c8, %c12], %cst_56 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<2x7xf16>, vector<7xf16>
        %282 = math.absf %cst_0 : f16
        scf.yield %256 : f32
      }
      %261 = index.floordivs %c4, %c12
      %generated = tensor.generate %c12, %c13 {
      ^bb0(%arg2: index, %arg3: index):
        %266 = vector.bitcast %48 : vector<3xf32> to vector<3xf32>
        %267 = arith.cmpf uge, %cst_0, %cst_0 : f16
        %268 = math.cttz %13 : tensor<2x7xi1>
        %269 = arith.addf %cst, %cst_4 : f32
        tensor.yield %false : i1
      } : tensor<?x?xi1>
      %262 = math.absf %cst_1 : f32
      %263 = arith.negf %cst_1 : f32
      %264 = arith.minsi %c8066_i16, %c1_i16 : i16
      %265 = memref.load %alloc_7[%c2, %c0] : memref<3x2xi16>
    }
    %72 = tensor.empty() : tensor<3x2xi64>
    %mapped = linalg.map ins(%alloc_18, %alloc_18, %alloc_18 : memref<3x2xi64>, memref<3x2xi64>, memref<3x2xi64>) outs(%72 : tensor<3x2xi64>)
      (%in: i64, %in_53: i64, %in_54: i64) {
        %251 = scf.while (%arg2 = %false_5) : (i1) -> i1 {
          %278 = bufferization.clone %alloc_22 : memref<7xi32> to memref<7xi32>
          %dest_60, %accumulated_value_61 = vector.scan <and>, %67, %69 {inclusive = false, reduction_dim = 0 : i64} : vector<3x7xi1>, vector<7xi1>
          %279 = vector.extract_strided_slice %29 {offsets = [0], sizes = [2], strides = [1]} : vector<3xf32> to vector<2xf32>
          %280 = math.log %cst_4 : f32
          %281 = index.floordivs %62, %c2
          %282 = math.round %0 : tensor<7x3x3xf16>
          %283 = bufferization.clone %alloc_16 : memref<7x3x3xi16> to memref<7x3x3xi16>
          %284 = vector.insertelement %cst_1, %20[%c14 : index] : vector<3xf32>
          scf.condition(%arg2) %extracted_24 : i1
        } do {
        ^bb0(%arg2: i1):
          %278 = arith.divsi %arg2, %arg2 : i1
          %splat_60 = tensor.splat %false_6 : tensor<3x7xi1>
          %279 = vector.broadcast %c9 : index to vector<7xindex>
          %280 = vector.broadcast %in : i64 to vector<7xi64>
          vector.scatter %alloc_21[%c2, %c5] [%279], %69, %280 : memref<3x7xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
          bufferization.dealloc_tensor %14 : tensor<3x2xi64>
          %281 = math.roundeven %cst_0 : f16
          %282 = vector.insertelement %cst_4, %48[%c13 : index] : vector<3xf32>
          %283 = vector.insertelement %cst_1, %20[%59 : index] : vector<3xf32>
          %284 = arith.addi %arg2, %false_6 : i1
          %285 = arith.minf %cst_2, %cst_0 : f16
          %286 = math.atan %15 : tensor<2x7xf16>
          %c0_i64_61 = arith.constant 0 : i64
          %287 = vector.transfer_read %6[%c13, %c14], %c0_i64_61 : tensor<3x7xi64>, vector<7xi64>
          %288 = memref.load %alloc_10[%c3, %c2, %c2] : memref<7x3x3xi32>
          %289 = arith.andi %false_5, %false_6 : i1
          %290 = arith.addf %cst_1, %cst_1 : f32
          %291 = index.maxu %c2, %c15
          %alloc_62 = memref.alloc() : memref<3x7x3xi32>
          memref.tensor_store %transposed, %alloc_62 : memref<3x7x3xi32>
          scf.yield %false : i1
        }
        %252 = bufferization.to_memref %14 : memref<3x2xi64>
        %253 = arith.addf %cst_1, %cst : f32
        %254 = arith.muli %true_3, %true_3 : i1
        %255 = index.floordivs %c1, %c4
        affine.store %true, %54[%c7, %c2] : memref<2x7xi1>
        %256 = memref.load %alloc_15[%c2, %c1, %c1] : memref<7x3x3xi64>
        %257 = vector.multi_reduction <mul>, %29, %48 [] : vector<3xf32> to vector<3xf32>
        %258 = vector.insert %69, %42 [1] : vector<7xi1> into vector<3x7xi1>
        %259 = vector.extract_strided_slice %26 {offsets = [1], sizes = [1], strides = [1]} : vector<3x2xi1> to vector<1x2xi1>
        %260 = math.exp %15 : tensor<2x7xf16>
        %extracted_55 = tensor.extract %5[%c2, %c2] : tensor<3x7xi16>
        %261 = vector.splat %in : vector<7x3x3xi64>
        %262 = arith.ori %c951144787_i64, %in_53 : i64
        %263 = scf.while (%arg2 = %alloc) : (memref<3x7xi32>) -> memref<3x7xi32> {
          %278 = arith.shli %c-4009_i16, %c8066_i16 : i16
          %279 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %48, %48, %cst : vector<3xf32>, vector<3xf32> into f32
          %280 = math.absi %reduced : tensor<7x3xi32>
          %281 = arith.remf %cst_4, %cst_1 : f32
          %282 = arith.shrui %false, %false_5 : i1
          %283 = arith.muli %extracted, %extracted_24 : i1
          %284 = arith.andi %true_3, %extracted : i1
          %285 = math.log2 %15 : tensor<2x7xf16>
          scf.condition(%true) %alloc : memref<3x7xi32>
        } do {
        ^bb0(%arg2: memref<3x7xi32>):
          %278 = vector.insertelement %cst_1, %48[%35 : index] : vector<3xf32>
          %279 = vector.broadcast %c-4009_i16 : i16 to vector<7x3x3xi16>
          %280 = vector.broadcast %true_3 : i1 to vector<7x3x3xi1>
          %281 = vector.broadcast %c912109256_i32 : i32 to vector<7x3x3xi32>
          %282 = vector.gather %alloc_16[%c14, %c15, %c5] [%281], %280, %279 : memref<7x3x3xi16>, vector<7x3x3xi32>, vector<7x3x3xi1>, vector<7x3x3xi16> into vector<7x3x3xi16>
          %283 = arith.remf %cst_4, %cst_4 : f32
          %rank = tensor.rank %13 : tensor<2x7xi1>
          %284 = math.fpowi %cst_1, %c912109256_i32 : f32, i32
          %285 = arith.maxf %cst, %cst_1 : f32
          %286 = arith.cmpi ugt, %34, %c1969275858_i32 : i32
          %287 = index.maxs %c3, %c14
          %288 = math.round %cst_1 : f32
          %289 = math.fma %0, %0, %0 : tensor<7x3x3xf16>
          %290 = math.ceil %cst_0 : f16
          %splat_60 = tensor.splat %true_3 : tensor<3x7xi1>
          %291 = vector.broadcast %true_3 : i1 to vector<i1>
          %292 = vector.transfer_write %291, %1[%c3, %c15] : vector<i1>, tensor<2x7xi1>
          %293 = math.powf %cst_1, %cst_4 : f32
          %294 = index.floordivs %c9, %28
          %rank_61 = tensor.rank %7 : tensor<2x7xi1>
          scf.yield %alloc : memref<3x7xi32>
        }
        %264 = index.maxs %c8, %c7
        %265 = arith.addi %c1969275858_i32, %c912109256_i32 : i32
        %266 = math.fma %0, %0, %0 : tensor<7x3x3xf16>
        %267 = vector.extract_strided_slice %29 {offsets = [0], sizes = [2], strides = [1]} : vector<3xf32> to vector<2xf32>
        %alloca_56 = memref.alloca() : memref<7x3x3xf16>
        %268 = math.ceil %cst_1 : f32
        %269 = vector.matrix_multiply %267, %29 {lhs_columns = 1 : i32, lhs_rows = 2 : i32, rhs_columns = 3 : i32} : (vector<2xf32>, vector<3xf32>) -> vector<6xf32>
        %extracted_57 = tensor.extract %7[%c1, %c2] : tensor<2x7xi1>
        %270 = math.atan2 %cst_2, %cst_0 : f16
        %271 = affine.if affine_set<(d0, d1, d2) : (d2 >= 0, d1 * 520 - d2 mod 32 >= 0, d1 * 520 >= 0)>(%c2, %c3, %c12) -> i64 {
          %278 = math.round %cst_2 : f16
          bufferization.dealloc_tensor %8 : tensor<3x2xi16>
          %279 = math.ctlz %13 : tensor<2x7xi1>
          %cast_60 = tensor.cast %15 : tensor<2x7xf16> to tensor<?x?xf16>
          %280 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 + d0, d3, (d1 + d0) floordiv 4)>(%c5, %255, %c12, %c14)
          %281 = arith.minf %cst_4, %cst : f32
          %cast_61 = tensor.cast %4 : tensor<2x7xi1> to tensor<?x?xi1>
          affine.store %c912109256_i32, %alloc_10[%c10, %c3, %c1] : memref<7x3x3xi32>
          affine.yield %in_54 : i64
        } else {
          %278 = index.mul %59, %c13
          %279 = math.ipowi %2, %2 : tensor<3x7xi16>
          memref.tensor_store %17, %54 : memref<2x7xi1>
          %280 = math.round %cst : f32
          %281 = arith.remf %cst_0, %cst_2 : f16
          %282 = arith.cmpi uge, %extracted, %false_6 : i1
          %283 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 ceildiv 128, 0)>(%59, %c2, %c1, %255)
          %284 = vector.load %252[%c2, %c1] : memref<3x2xi64>, vector<7x3x3xi64>
          affine.yield %c783155345_i64 : i64
        }
        %272 = math.log1p %0 : tensor<7x3x3xf16>
        %273 = vector.matrix_multiply %29, %269 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<3xf32>, vector<6xf32>) -> vector<2xf32>
        memref.tensor_store %5, %alloc_17 : memref<3x7xi16>
        %alloc_58 = memref.alloc() : memref<7x3xf16>
        %alloc_59 = memref.alloc() : memref<3xf16>
        %274 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_58, %alloc_59, %alloc_58 : memref<7x3xf16>, memref<3xf16>, memref<7x3xf16>) outs(%0 : tensor<7x3x3xf16>) {
        ^bb0(%in_60: f16, %in_61: f16, %in_62: f16, %out: f16):
          %278 = math.absf %cst_0 : f16
          %279 = vector.flat_transpose %267 {columns = 1 : i32, rows = 2 : i32} : vector<2xf32> -> vector<2xf32>
          %280 = arith.remsi %extracted_55, %c-4009_i16 : i16
          %281 = math.fpowi %in_60, %c912109256_i32 : f16, i32
          %expanded_63 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<3x2xi16> into tensor<3x2x1xi16>
          %282 = math.round %cst_0 : f16
          %283 = index.maxs %c9, %59
          %284 = math.exp %cst : f32
          %285 = vector.insertelement %cst_4, %29[%c6 : index] : vector<3xf32>
          affine.store %extracted_24, %alloc_9[%c2, %c10] : memref<3x7xi1>
          %286 = index.sub %c9, %c9
          %cast_64 = tensor.cast %5 : tensor<3x7xi16> to tensor<?x?xi16>
          %287 = math.log %cst_4 : f32
          %288 = math.powf %cst, %cst : f32
          %alloc_65 = memref.alloc() : memref<7x3xi1>
          %289 = tensor.empty() : tensor<2x3xi1>
          %290 = linalg.matmul ins(%17, %alloc_65 : tensor<2x7xi1>, memref<7x3xi1>) outs(%289 : tensor<2x3xi1>) -> tensor<2x3xi1>
          %291 = vector.load %alloc_15[%c6, %c1, %c1] : memref<7x3x3xi64>, vector<7x3x3xi64>
          %expanded_66 = tensor.expand_shape %11 [[0], [1], [2, 3]] : tensor<7x3x3xi32> into tensor<7x3x3x1xi32>
          %292 = vector.reduction <mul>, %20 : vector<3xf32> into f32
          %293 = arith.minf %in_60, %in_61 : f16
          %294 = arith.subi %false_5, %false_5 : i1
          %295 = math.absi %9 : tensor<3x2xi64>
          %296 = vector.broadcast %cst : f32 to vector<2x2xf32>
          %297 = vector.outerproduct %267, %267, %296 {kind = #vector.kind<minf>} : vector<2xf32>, vector<2xf32>
          %298 = math.tan %15 : tensor<2x7xf16>
          %299 = arith.addf %cst_4, %cst : f32
          vector.print %69 : vector<7xi1>
          %expanded_67 = tensor.expand_shape %11 [[0], [1], [2, 3]] : tensor<7x3x3xi32> into tensor<7x3x3x1xi32>
          %300 = index.maxs %283, %62
          %301 = math.absi %7 : tensor<2x7xi1>
          %302 = vector.broadcast %in_54 : i64 to vector<3x3x3x3xi64>
          %303 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %291, %291, %302 : vector<7x3x3xi64>, vector<7x3x3xi64> into vector<3x3x3x3xi64>
          %304 = index.maxs %c15, %c8
          %305 = memref.atomic_rmw muli %c-4009_i16, %alloc_16[%c3, %c2, %c2] : (i16, memref<7x3x3xi16>) -> i16
          %c36771163_i32 = arith.constant 36771163 : i32
          linalg.yield %out : f16
        } -> tensor<7x3x3xf16>
        %275 = scf.while (%arg2 = %alloc_14) : (memref<2x7xf32>) -> memref<2x7xf32> {
          %278 = math.exp %cst_4 : f32
          %from_elements_60 = tensor.from_elements %cst_4, %cst_1, %cst_1, %cst_4, %cst_4, %cst, %cst_1, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst_1, %cst, %cst_4, %cst_1, %cst_4, %cst, %cst_4, %cst_1, %cst_1, %cst_4, %cst_4, %cst_1, %cst_1, %cst_4, %cst_1, %cst, %cst, %cst, %cst_1, %cst, %cst_4, %cst, %cst_4, %cst_4, %cst, %cst, %cst, %cst_4, %cst_4, %cst_1, %cst, %cst_4, %cst_4, %cst, %cst_4, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst_4, %cst_4, %cst_1, %cst, %cst_1, %cst, %cst_1, %cst_1, %cst, %cst_1, %cst : tensor<7x3x3xf32>
          memref.assume_alignment %alloc_11, 2 : memref<3x2xf32>
          %279 = vector.broadcast %extracted_24 : i1 to vector<3xi1>
          %dest_61, %accumulated_value_62 = vector.scan <add>, %67, %279 {inclusive = true, reduction_dim = 1 : i64} : vector<3x7xi1>, vector<3xi1>
          %extracted_63 = tensor.extract %8[%c1, %c0] : tensor<3x2xi16>
          %280 = arith.cmpi slt, %extracted, %true : i1
          %281 = math.ctlz %in : i64
          %cast_64 = tensor.cast %21 : tensor<7xi32> to tensor<?xi32>
          scf.condition(%false_6) %arg2 : memref<2x7xf32>
        } do {
        ^bb0(%arg2: memref<2x7xf32>):
          %278 = tensor.empty() : tensor<7x3x3xi32>
          %279 = affine.apply affine_map<(d0, d1, d2, d3) -> (1)>(%c10, %c8, %c6, %c4)
          %280 = arith.addi %extracted_57, %extracted_57 : i1
          %281 = affine.min affine_map<(d0, d1, d2, d3) -> (-(d1 mod 8), d0, d0 ceildiv 32, d0 + d1 mod 8)>(%255, %c8, %c10, %c0)
          %282 = arith.maxf %cst_2, %cst_2 : f16
          %inserted_60 = tensor.insert %in_53 into %14[%c0, %c0] : tensor<3x2xi64>
          %cast_61 = tensor.cast %10 : tensor<7x3x3xi1> to tensor<?x?x?xi1>
          %c913411308_i64 = arith.constant 913411308 : i64
          %283 = math.ctlz %72 : tensor<3x2xi64>
          %284 = index.floordivs %62, %c7
          %285 = arith.divui %false, %false_5 : i1
          %286 = math.absi %21 : tensor<7xi32>
          %287 = arith.cmpf ole, %cst_4, %cst_4 : f32
          %288 = arith.addi %extracted_24, %extracted_24 : i1
          %289 = index.ceildivs %28, %62
          %alloc_62 = memref.alloc() : memref<i32>
          memref.tensor_store %23, %alloc_62 : memref<i32>
          scf.yield %alloc_12 : memref<2x7xf32>
        }
        %276 = memref.load %252[%c1, %c0] : memref<3x2xi64>
        %277 = arith.xori %c1969275858_i32, %34 : i32
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %73 = scf.if %false_6 -> (memref<3x2xi64>) {
      %251 = vector.load %alloc_16[%c0, %c0, %c0] : memref<7x3x3xi16>, vector<3x7xi16>
      %252 = arith.ori %c912109256_i32, %c912109256_i32 : i32
      %253 = index.floordivs %35, %62
      %alloca_53 = memref.alloca() : memref<3x2xf16>
      %254 = math.ctlz %1 : tensor<2x7xi1>
      scf.index_switch %c1 
      case 1 {
        %258 = arith.remui %extracted, %false_6 : i1
        %259 = bufferization.clone %alloc_8 : memref<2x7xi32> to memref<2x7xi32>
        %260 = arith.subi %true, %false_6 : i1
        %261 = vector.insertelement %extracted, %69[%62 : index] : vector<7xi1>
        %262 = arith.muli %false, %false_6 : i1
        %263 = math.round %cst_1 : f32
        %264 = arith.maxsi %extracted, %false : i1
        %dest_54, %accumulated_value_55 = vector.scan <or>, %42, %69 {inclusive = true, reduction_dim = 0 : i64} : vector<3x7xi1>, vector<7xi1>
        %265 = arith.maxf %cst_2, %cst_2 : f16
        %266 = affine.max affine_map<(d0, d1, d2, d3) -> (((d2 + d3) floordiv 2 - 32) * 128, 0)>(%c4, %28, %c9, %c14)
        %267 = vector.splat %false : vector<3x2xi1>
        %268 = arith.maxsi %false, %extracted_24 : i1
        %269 = index.divs %59, %c15
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_56 = arith.constant 0 : i16
        %270 = vector.transfer_read %5[%c1, %c0], %c0_i16_56 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<3x7xi16>, vector<7xi16>
        %271 = vector.insertelement %cst, %20[%59 : index] : vector<3xf32>
        memref.tensor_store %16, %54 : memref<2x7xi1>
        scf.yield
      }
      case 2 {
        %258 = index.mul %28, %c5
        %259 = vector.splat %34 : vector<2x7xi32>
        %260 = arith.minf %cst_2, %cst_2 : f16
        %261 = math.ctlz %6 : tensor<3x7xi64>
        %262 = arith.floordivsi %extracted, %extracted : i1
        %263 = math.floor %15 : tensor<2x7xf16>
        %264 = arith.negf %cst_0 : f16
        %265 = math.log1p %cst_1 : f32
        %266 = arith.remui %extracted, %extracted_24 : i1
        %267 = arith.subi %c783155345_i64, %c783155345_i64 : i64
        %268 = math.round %cst_0 : f16
        %collapsed_54 = tensor.collapse_shape %15 [[0, 1]] : tensor<2x7xf16> into tensor<14xf16>
        %269 = affine.max affine_map<(d0, d1, d2, d3) -> (((d2 + d1) mod 64) * 128, (-((d2 + d1) mod 64)) ceildiv 64, (d0 floordiv 2) floordiv 8)>(%c6, %c8, %37, %c12)
        %270 = math.atan2 %0, %0 : tensor<7x3x3xf16>
        %271 = index.ceildivu %258, %c4
        %272 = math.ctlz %2 : tensor<3x7xi16>
        scf.yield
      }
      default {
        %258 = tensor.empty() : tensor<2x7xi32>
        %259 = math.fpowi %15, %258 : tensor<2x7xf16>, tensor<2x7xi32>
        %260 = arith.shrui %c912109256_i32, %c1969275858_i32 : i32
        %261 = math.exp2 %15 : tensor<2x7xf16>
        %262 = vector.broadcast %false_6 : i1 to vector<2x7xi1>
        %263 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %26, %67, %262 : vector<3x2xi1>, vector<3x7xi1> into vector<2x7xi1>
        %264 = vector.create_mask %c12, %c2 : vector<3x2xi1>
        %265 = index.maxs %c7, %c3
        %266 = vector.insertelement %cst_1, %20[%253 : index] : vector<3xf32>
        %extracted_54 = tensor.extract %14[%c2, %c1] : tensor<3x2xi64>
        %267 = index.maxu %c14, %c1
        memref.assume_alignment %alloc_17, 4 : memref<3x7xi16>
        %268 = arith.negf %cst_2 : f16
        %269 = affine.max affine_map<(d0, d1, d2) -> (d1 * 16, (d0 + 32) * 128, ((d0 ceildiv 8) * 4 - 16) ceildiv 4)>(%c0, %62, %267)
        %270 = arith.cmpf ueq, %cst_4, %cst_4 : f32
        %alloca_55 = memref.alloca() : memref<3x7xi16>
        %271 = math.powf %cst_0, %cst_0 : f16
        %alloc_56 = memref.alloc() : memref<3x3xi32>
        %272 = tensor.empty() : tensor<7x3xi32>
        %273 = linalg.matmul ins(%reduced, %alloc_56 : tensor<7x3xi32>, memref<3x3xi32>) outs(%272 : tensor<7x3xi32>) -> tensor<7x3xi32>
      }
      %255 = vector.broadcast %true : i1 to vector<2x2xi1>
      %256 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %26, %26, %255 : vector<3x2xi1>, vector<3x2xi1> into vector<2x2xi1>
      %257 = index.sub %28, %c6
      scf.yield %alloc_18 : memref<3x2xi64>
    } else {
      %251 = math.fpowi %cst, %c912109256_i32 : f32, i32
      %252 = math.log10 %15 : tensor<2x7xf16>
      %253 = math.powf %15, %15 : tensor<2x7xf16>
      %254 = math.log2 %cst_4 : f32
      %255 = affine.apply affine_map<(d0, d1, d2) -> (-(-d2 - d0 floordiv 8 - 8))>(%59, %c10, %59)
      %256 = arith.cmpi sle, %c912109256_i32, %c1969275858_i32 : i32
      memref.tensor_store %10, %alloc_19 : memref<7x3x3xi1>
      %257 = vector.load %alloc_18[%c2, %c0] : memref<3x2xi64>, vector<7x3x3xi64>
      scf.yield %alloc_18 : memref<3x2xi64>
    }
    %74 = math.atan2 %cst, %cst_1 : f32
    %75 = tensor.empty() : tensor<3x7xi16>
    %mapped_25 = linalg.map ins(%2, %alloc_17, %5 : tensor<3x7xi16>, memref<3x7xi16>, tensor<3x7xi16>) outs(%75 : tensor<3x7xi16>)
      (%in: i16, %in_53: i16, %in_54: i16) {
        %251 = arith.remf %cst_0, %cst_2 : f16
        %252 = math.atan2 %cst, %cst_1 : f32
        %253 = arith.shrui %c951144787_i64, %c951144787_i64 : i64
        %254 = arith.shrui %in_53, %c8066_i16 : i16
        %255 = index.ceildivu %c3, %c2
        %256 = math.tanh %cst_1 : f32
        %257 = math.round %0 : tensor<7x3x3xf16>
        %258 = index.maxs %62, %59
        %c0_i64 = arith.constant 0 : i64
        %259 = vector.transfer_read %alloc_15[%37, %c1, %c2], %c0_i64 : memref<7x3x3xi64>, vector<7xi64>
        %260 = memref.atomic_rmw addi %c1969275858_i32, %alloc_8[%c0, %c4] : (i32, memref<2x7xi32>) -> i32
        %261 = arith.remui %true, %false_5 : i1
        bufferization.dealloc_tensor %reduced : tensor<7x3xi32>
        %262 = arith.remui %c783155345_i64, %c0_i64 : i64
        %263 = math.exp %15 : tensor<2x7xf16>
        %264 = arith.addf %cst_1, %cst_1 : f32
        %expanded_55 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<3x2xi16> into tensor<3x2x1xi16>
        %265 = vector.insertelement %cst_1, %20[%c15 : index] : vector<3xf32>
        %266 = math.exp %cst_2 : f16
        %267 = index.maxs %c5, %c3
        %268 = vector.extract_strided_slice %48 {offsets = [1], sizes = [1], strides = [1]} : vector<3xf32> to vector<1xf32>
        %cast_56 = tensor.cast %0 : tensor<7x3x3xf16> to tensor<?x?x?xf16>
        %269 = tensor.empty() : tensor<3x7xi16>
        %mapped_57 = linalg.map ins(%75, %2, %5 : tensor<3x7xi16>, tensor<3x7xi16>, tensor<3x7xi16>) outs(%269 : tensor<3x7xi16>)
          (%in_59: i16, %in_60: i16, %in_61: i16) {
            %277 = index.add %c6, %c8
            %278 = math.sqrt %15 : tensor<2x7xf16>
            %279 = vector.broadcast %extracted_24 : i1 to vector<7x7xi1>
            %280 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %42, %42, %279 : vector<3x7xi1>, vector<3x7xi1> into vector<7x7xi1>
            %281 = math.powf %cst_1, %cst : f32
            %282 = arith.cmpi sgt, %c0_i64, %c783155345_i64 : i64
            %283 = arith.maxf %cst_0, %cst_2 : f16
            memref.tensor_store %7, %54 : memref<2x7xi1>
            %284 = vector.broadcast %cst : f32 to vector<3x7xf32>
            %285 = vector.fma %284, %284, %284 : vector<3x7xf32>
            %286 = math.ceil %15 : tensor<2x7xf16>
            %287 = arith.remf %cst_4, %cst_1 : f32
            %288 = index.sub %c7, %255
            %289 = bufferization.clone %alloc_15 : memref<7x3x3xi64> to memref<7x3x3xi64>
            %290 = arith.divui %c1969275858_i32, %c912109256_i32 : i32
            %291 = memref.load %alloc_21[%c1, %c0] : memref<3x7xi64>
            %292 = vector.insertelement %cst, %48[%c11 : index] : vector<3xf32>
            %expanded_62 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<3x2xi64> into tensor<3x2x1xi64>
            %293 = index.floordivs %c5, %c5
            bufferization.dealloc_tensor %13 : tensor<2x7xi1>
            %294 = math.ceil %cst_1 : f32
            %295 = bufferization.clone %alloc_19 : memref<7x3x3xi1> to memref<7x3x3xi1>
            %296 = arith.remui %true, %true_3 : i1
            %297 = vector.insert %69, %42 [0] : vector<7xi1> into vector<3x7xi1>
            %298 = vector.splat %extracted_24 : vector<3x7xi1>
            %299 = arith.floordivsi %in_53, %in_54 : i16
            %300 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 mod 8, d3 mod 16, -d3)>(%c5, %c3, %28, %c3)
            %301 = arith.maxf %cst_4, %cst_1 : f32
            %302 = arith.divui %c912109256_i32, %c1969275858_i32 : i32
            %303 = math.absi %c8066_i16 : i16
            %304 = index.floordivs %c2, %258
            %305 = math.copysign %cst, %cst_1 : f32
            %306 = arith.remf %cst, %cst_4 : f32
            %307 = math.absi %in_54 : i16
            %c1_i16_63 = arith.constant 1 : i16
            linalg.yield %c1_i16_63 : i16
          }
        %270 = math.roundeven %cst_4 : f32
        %271 = vector.splat %c11 : vector<3x2xindex>
        %272 = index.ceildivs %c2, %c11
        %273 = arith.maxf %cst_2, %cst_2 : f16
        %274 = index.divu %62, %c10
        %275 = math.tan %15 : tensor<2x7xf16>
        %276 = vector.create_mask %59, %62 : vector<3x2xi1>
        %cast_58 = tensor.cast %2 : tensor<3x7xi16> to tensor<?x?xi16>
        scf.if %true_3 {
          %277 = tensor.empty() : tensor<2x7xi32>
          %278 = math.fpowi %15, %277 : tensor<2x7xf16>, tensor<2x7xi32>
          %279 = vector.broadcast %cst_1 : f32 to vector<3x7xf32>
          %280 = vector.fma %279, %279, %279 : vector<3x7xf32>
          %281 = math.roundeven %cst_1 : f32
          %alloc_59 = memref.alloc() : memref<7x3x3xi16>
          memref.copy %alloc_16, %alloc_59 : memref<7x3x3xi16> to memref<7x3x3xi16>
          %282 = math.rsqrt %cst_1 : f32
          %283 = arith.shli %true_3, %false_6 : i1
          %284 = math.powf %cst_4, %cst_4 : f32
          %285 = vector.bitcast %276 : vector<3x2xi1> to vector<3x2xi1>
        } else {
          %277 = index.divu %258, %c1
          %extracted_59 = tensor.extract %10[%c6, %c0, %c1] : tensor<7x3x3xi1>
          %278 = arith.addi %false_5, %false : i1
          %279 = math.absi %extracted : i1
          %280 = math.log %0 : tensor<7x3x3xf16>
          %281 = vector.splat %c-4009_i16 : vector<7x3x3xi16>
          %282 = affine.apply affine_map<(d0, d1, d2) -> (d0 * 512 + 8)>(%c10, %c6, %c2)
          %283 = math.ctlz %extracted_24 : i1
        }
        scf.index_switch %c7 
        case 1 {
          %c0_i16 = arith.constant 0 : i16
          %c0_i16_59 = arith.constant 0 : i16
          %277 = vector.transfer_read %8[%c2, %c10], %c0_i16_59 : tensor<3x2xi16>, vector<i16>
          %278 = arith.shli %c783155345_i64, %c951144787_i64 : i64
          %279 = index.mul %c5, %274
          %expanded_60 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<2x7xf16> into tensor<2x7x1xf16>
          %280 = vector.insertelement %cst_4, %268[%c11 : index] : vector<1xf32>
          %281 = index.sub %28, %c2
          %282 = vector.flat_transpose %268 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
          bufferization.dealloc_tensor %5 : tensor<3x7xi16>
          %283 = math.absf %expanded_60 : tensor<2x7x1xf16>
          %splat_61 = tensor.splat %cst_2 : tensor<3x2xf16>
          %284 = vector.insert %cst_4, %48 [1] : f32 into vector<3xf32>
          %285 = vector.splat %c6 : vector<2x7xindex>
          %286 = arith.remui %false_6, %false_6 : i1
          %287 = arith.mulf %cst_4, %cst_4 : f32
          %288 = math.log2 %splat_61 : tensor<3x2xf16>
          %289 = vector.broadcast %c951144787_i64 : i64 to vector<7xi64>
          %290 = vector.transfer_write %289, %72[%c13, %59] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi64>, tensor<3x2xi64>
          scf.yield
        }
        case 2 {
          %277 = index.ceildivs %c4, %c8
          %cast_59 = tensor.cast %15 : tensor<2x7xf16> to tensor<?x?xf16>
          %278 = math.rsqrt %cst : f32
          %279 = math.log2 %15 : tensor<2x7xf16>
          %280 = index.ceildivu %c11, %272
          %281 = index.divs %c5, %37
          %282 = math.absf %cst_4 : f32
          %283 = vector.load %alloc_9[%c2, %c4] : memref<3x7xi1>, vector<3x2xi1>
          %284 = vector.broadcast %cst_1 : f32 to vector<13xf32>
          vector.transfer_write %284, %alloc_11[%c8, %59] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<13xf32>, memref<3x2xf32>
          %285 = affine.max affine_map<(d0, d1, d2) -> (d2 - 64, d0 - d1 - (d0 - d1 + d0 - d0) + d0 - d1 - d2)>(%272, %59, %281)
          %286 = arith.shli %34, %c912109256_i32 : i32
          %287 = math.atan2 %cst_0, %cst_0 : f16
          %288 = index.add %c9, %267
          %289 = math.round %0 : tensor<7x3x3xf16>
          %290 = arith.remf %cst, %cst : f32
          bufferization.dealloc_tensor %75 : tensor<3x7xi16>
          scf.yield
        }
        case 3 {
          %277 = arith.minsi %true, %extracted : i1
          %278 = index.sizeof
          %279 = math.absi %c783155345_i64 : i64
          vector.print %69 : vector<7xi1>
          %280 = math.log %0 : tensor<7x3x3xf16>
          %281 = math.round %cst_2 : f16
          %282 = arith.subi %in_53, %in_53 : i16
          %283 = arith.addf %cst_2, %cst_2 : f16
          %284 = math.ipowi %13, %4 : tensor<2x7xi1>
          %285 = arith.divf %cst_1, %cst_1 : f32
          %286 = arith.mulf %cst_4, %cst_1 : f32
          %287 = index.sub %c11, %267
          %expanded_59 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<3x2xi16> into tensor<3x2x1xi16>
          %288 = index.maxs %c11, %59
          %alloca_60 = memref.alloca() : memref<3x7xi1>
          %289 = index.ceildivs %c11, %267
          scf.yield
        }
        default {
          %277 = index.maxs %c14, %267
          %278 = vector.shuffle %20, %29 [2, 4] : vector<3xf32>, vector<3xf32>
          %279 = arith.ceildivsi %34, %c1969275858_i32 : i32
          %280 = index.floordivs %c6, %c4
          %281 = arith.remui %extracted, %false_5 : i1
          %282 = arith.maxf %cst_0, %cst_0 : f16
          %283 = vector.broadcast %false_6 : i1 to vector<3xi1>
          %284 = vector.multi_reduction <mul>, %276, %283 [1] : vector<3x2xi1> to vector<3xi1>
          %285 = vector.flat_transpose %48 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
          vector.print %20 : vector<3xf32>
          %286 = index.sub %c8, %277
          %287 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 mod 64, d3 + 4)>(%c9, %277, %c12, %277)
          %288 = index.add %c1, %c6
          %289 = index.ceildivs %274, %c15
          %290 = index.ceildivs %286, %272
          %291 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %48, %285, %cst : vector<3xf32>, vector<3xf32> into f32
          %292 = vector.multi_reduction <mul>, %69, %69 [] : vector<7xi1> to vector<7xi1>
        }
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    memref.assume_alignment %alloc_18, 2 : memref<3x2xi64>
    %76 = arith.minf %cst_2, %cst_2 : f16
    %77 = arith.remui %false, %true_3 : i1
    %78 = arith.cmpi sge, %c783155345_i64, %c783155345_i64 : i64
    %79 = index.divu %62, %c15
    %80 = arith.cmpi eq, %false_5, %extracted_24 : i1
    %81 = memref.alloca_scope  -> (memref<7x3x3xi1>) {
      %251 = arith.maxui %false_6, %false : i1
      %252 = arith.maxui %c951144787_i64, %c951144787_i64 : i64
      %253 = arith.shli %false_6, %false_6 : i1
      %254 = math.tan %0 : tensor<7x3x3xf16>
      %255 = math.absi %c1969275858_i32 : i32
      %alloca_53 = memref.alloca() : memref<3x2xi32>
      %256 = arith.cmpi sgt, %false_6, %extracted : i1
      %257 = math.expm1 %0 : tensor<7x3x3xf16>
      %258 = index.sub %c15, %c2
      %259 = arith.addf %cst_4, %cst : f32
      %260 = vector.broadcast %cst_4 : f32 to vector<3x3xf32>
      %261 = vector.outerproduct %48, %48, %260 {kind = #vector.kind<add>} : vector<3xf32>, vector<3xf32>
      %262 = math.round %cst : f32
      %263 = index.ceildivs %35, %35
      %264 = vector.multi_reduction <mul>, %20, %48 [] : vector<3xf32> to vector<3xf32>
      %265 = arith.cmpf ogt, %cst_4, %cst_4 : f32
      %266 = tensor.empty() : tensor<3x2xi16>
      %mapped_54 = linalg.map ins(%8, %8 : tensor<3x2xi16>, tensor<3x2xi16>) outs(%266 : tensor<3x2xi16>)
        (%in: i16, %in_55: i16) {
          %282 = index.divu %c14, %79
          %283 = index.ceildivs %c15, %c13
          %284 = math.absf %0 : tensor<7x3x3xf16>
          %285 = affine.max affine_map<(d0, d1, d2) -> (d0 + d1, (-d1) mod 64, d2 floordiv 64 - 32, d0 + d1)>(%c0, %c14, %28)
          %286 = arith.remui %true, %false : i1
          %287 = arith.cmpi slt, %c951144787_i64, %c783155345_i64 : i64
          %288 = vector.bitcast %20 : vector<3xf32> to vector<3xf32>
          %289 = vector.broadcast %false_6 : i1 to vector<3xi1>
          %dest_56, %accumulated_value_57 = vector.scan <minsi>, %67, %289 {inclusive = true, reduction_dim = 1 : i64} : vector<3x7xi1>, vector<3xi1>
          %290 = tensor.empty() : tensor<2x7xi32>
          %291 = math.fpowi %15, %290 : tensor<2x7xf16>, tensor<2x7xi32>
          %from_elements_58 = tensor.from_elements %in_55, %in_55, %in, %c-4009_i16, %c-4009_i16, %in_55, %c8066_i16, %c8066_i16, %c-4009_i16, %in_55, %c8066_i16, %in, %c-4009_i16, %in : tensor<2x7xi16>
          %292 = arith.remsi %false_6, %false_6 : i1
          %293 = index.floordivs %28, %c3
          %294 = index.ceildivs %37, %c11
          %295 = index.mul %c0, %c14
          %extracted_59 = tensor.extract %75[%c1, %c2] : tensor<3x7xi16>
          %296 = vector.broadcast %c1 : index to vector<13xindex>
          %297 = vector.broadcast %false : i1 to vector<13xi1>
          %298 = vector.broadcast %c1969275858_i32 : i32 to vector<13xi32>
          vector.scatter %alloc_10[%c0, %c2, %c0] [%296], %297, %298 : memref<7x3x3xi32>, vector<13xindex>, vector<13xi1>, vector<13xi32>
          %299 = arith.cmpf true, %cst_4, %cst : f32
          %300 = math.fma %cst_0, %cst_0, %cst_2 : f16
          %301 = arith.addf %cst, %cst_4 : f32
          %alloca_60 = memref.alloca() : memref<2x7xi1>
          %c883872484_i64 = arith.constant 883872484 : i64
          %dest_61, %accumulated_value_62 = vector.scan <add>, %42, %69 {inclusive = false, reduction_dim = 0 : i64} : vector<3x7xi1>, vector<7xi1>
          %302 = arith.divui %34, %c912109256_i32 : i32
          %303 = arith.xori %false_6, %false_5 : i1
          %304 = arith.ori %c1969275858_i32, %c1969275858_i32 : i32
          %305 = arith.cmpi ugt, %c8066_i16, %in_55 : i16
          %306 = affine.max affine_map<(d0) -> (-(-d0 + d0 mod 2 + d0), d0 + -d0 + d0 mod 2 + d0, d0 mod 2 + d0 - 128, d0)>(%28)
          %307 = arith.cmpi uge, %false_6, %false : i1
          affine.store %cst_4, %alloc_11[%c10, %c0] : memref<3x2xf32>
          %308 = vector.extract_strided_slice %67 {offsets = [1], sizes = [1], strides = [1]} : vector<3x7xi1> to vector<1x7xi1>
          %309 = arith.maxsi %extracted, %true_3 : i1
          %310 = math.log2 %cst_0 : f16
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      %267 = index.floordivs %c7, %c6
      %268 = arith.maxf %cst_1, %cst_1 : f32
      %269 = arith.ori %true_3, %false_5 : i1
      %270 = vector.splat %c7 : vector<7x3x3xindex>
      scf.if %false_6 {
        %c18849_i16 = arith.constant 18849 : i16
        %282 = arith.subi %true_3, %true_3 : i1
        %283 = arith.addi %false_5, %false : i1
        %284 = index.floordivs %c4, %c2
        %285 = math.round %cst_1 : f32
        vector.print %29 : vector<3xf32>
        %286 = math.expm1 %0 : tensor<7x3x3xf16>
        %287 = index.ceildivs %c9, %c4
      }
      %271 = math.log2 %cst_1 : f32
      %272 = arith.remui %c912109256_i32, %34 : i32
      %273 = memref.load %73[%c1, %c1] : memref<3x2xi64>
      %274 = arith.muli %extracted, %false : i1
      %275 = arith.muli %34, %34 : i32
      %276 = scf.index_switch %37 -> index 
      case 1 {
        %inserted_55 = tensor.insert %34 into %19[%c6, %c2] : tensor<7x3xi32>
        bufferization.dealloc_tensor %3 : tensor<7x3x3xi1>
        %alloc_56 = memref.alloc() : memref<2x13xi16>
        %282 = tensor.empty() : tensor<3x13xi16>
        %283 = linalg.matmul ins(%266, %alloc_56 : tensor<3x2xi16>, memref<2x13xi16>) outs(%282 : tensor<3x13xi16>) -> tensor<3x13xi16>
        %284 = index.castu %c9 : index to i32
        %285 = arith.remf %cst, %cst : f32
        %286 = index.sub %c13, %c3
        %287 = arith.maxf %cst_1, %cst_1 : f32
        %288 = memref.atomic_rmw minu %c783155345_i64, %alloc_18[%c0, %c0] : (i64, memref<3x2xi64>) -> i64
        %289 = index.sub %c9, %c14
        %290 = vector.splat %c783155345_i64 : vector<3x7xi64>
        %291 = arith.maxsi %c912109256_i32, %c912109256_i32 : i32
        %292 = vector.insertelement %cst_4, %29[%c4 : index] : vector<3xf32>
        %293 = vector.broadcast %cst : f32 to vector<3x3xf32>
        %294 = vector.outerproduct %29, %29, %293 {kind = #vector.kind<minf>} : vector<3xf32>, vector<3xf32>
        %cst_57 = arith.constant 0x4E2895B1 : f32
        %295 = arith.maxf %cst_1, %cst : f32
        %296 = vector.broadcast %false : i1 to vector<3xi1>
        %297 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minsi>} %69, %42, %296 : vector<7xi1>, vector<3x7xi1> into vector<3xi1>
        scf.yield %c9 : index
      }
      case 2 {
        %inserted_55 = tensor.insert %c8066_i16 into %2[%c2, %c2] : tensor<3x7xi16>
        %282 = index.add %258, %c2
        %283 = vector.create_mask %263, %c1 : vector<2x7xi1>
        %284 = arith.muli %c912109256_i32, %34 : i32
        %285 = math.atan %0 : tensor<7x3x3xf16>
        %286 = vector.extract_strided_slice %42 {offsets = [0], sizes = [2], strides = [1]} : vector<3x7xi1> to vector<2x7xi1>
        %287 = arith.remui %c783155345_i64, %c951144787_i64 : i64
        %288 = arith.maxui %extracted, %false : i1
        %289 = arith.remui %false_5, %false_5 : i1
        %290 = arith.maxf %cst_2, %cst_0 : f16
        %291 = arith.minsi %false_6, %extracted_24 : i1
        %extracted_56 = tensor.extract %8[%c2, %c0] : tensor<3x2xi16>
        %292 = arith.addf %cst_4, %cst_1 : f32
        %293 = arith.ceildivsi %c951144787_i64, %c783155345_i64 : i64
        %294 = vector.bitcast %69 : vector<7xi1> to vector<7xi1>
        %295 = math.absi %c783155345_i64 : i64
        scf.yield %37 : index
      }
      case 3 {
        %c1_i32 = arith.constant 1 : i32
        %282 = vector.transfer_read %19[%28, %c4], %c1_i32 : tensor<7x3xi32>, vector<i32>
        memref.assume_alignment %alloc_12, 1 : memref<2x7xf32>
        %283 = arith.divui %34, %c1_i32 : i32
        %284 = index.mul %c8, %c4
        %285 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%c11, %c3, %c11, %284)
        %286 = arith.cmpf oeq, %cst_0, %cst_0 : f16
        %287 = math.roundeven %cst_2 : f16
        %alloca_55 = memref.alloca() : memref<7x3x3xi32>
        %288 = arith.minui %true, %false_5 : i1
        %cst_56 = arith.constant 0x4D57109E : f32
        memref.tensor_store %9, %alloc_18 : memref<3x2xi64>
        %289 = math.fpowi %cst_4, %c912109256_i32 : f32, i32
        %c1_i64 = arith.constant 1 : i64
        %290 = vector.transfer_read %14[%c3, %62], %c1_i64 : tensor<3x2xi64>, vector<i64>
        %291 = math.copysign %cst_2, %cst_0 : f16
        %292 = arith.remsi %c8066_i16, %c-4009_i16 : i16
        %293 = vector.multi_reduction <mul>, %29, %cst_4 [0] : vector<3xf32> to f32
        scf.yield %c9 : index
      }
      case 4 {
        %282 = math.ceil %15 : tensor<2x7xf16>
        %283 = vector.load %alloc_11[%c0, %c1] : memref<3x2xf32>, vector<3x7xf32>
        %284 = vector.multi_reduction <xor>, %42, %67 [] : vector<3x7xi1> to vector<3x7xi1>
        %285 = index.divs %c6, %c3
        %286 = math.atan2 %0, %0 : tensor<7x3x3xf16>
        %287 = affine.max affine_map<(d0) -> (d0 mod 16 - 8, d0 mod 16 - 8)>(%285)
        %288 = index.sub %c8, %c12
        %289 = arith.ori %c-4009_i16, %c-4009_i16 : i16
        %290 = index.sub %c10, %59
        %291 = arith.addi %c951144787_i64, %c951144787_i64 : i64
        %292 = vector.multi_reduction <maxui>, %26, %26 [] : vector<3x2xi1> to vector<3x2xi1>
        %293 = arith.remsi %true_3, %extracted : i1
        %294 = vector.broadcast %cst_4 : f32 to vector<3x2xf32>
        %295 = vector.fma %294, %294, %294 : vector<3x2xf32>
        %296 = math.exp2 %cst_2 : f16
        %297 = vector.multi_reduction <mul>, %294, %295 [] : vector<3x2xf32> to vector<3x2xf32>
        %cst_55 = arith.constant 3.616000e+04 : f16
        scf.yield %288 : index
      }
      default {
        %282 = arith.addi %false_5, %extracted : i1
        %283 = index.sub %c6, %c8
        %284 = affine.min affine_map<(d0, d1) -> ((d0 - 2) * 16)>(%c4, %c4)
        %285 = affine.max affine_map<(d0, d1) -> (d0 mod 16, d1 + d0 mod 16 - d0 mod 16, d1 * 16)>(%c5, %79)
        %286 = index.divu %c10, %59
        %287 = math.fma %cst_2, %cst_2, %cst_2 : f16
        %288 = index.ceildivu %c15, %258
        %289 = bufferization.to_memref %75 : memref<3x7xi16>
        %290 = vector.extract_strided_slice %42 {offsets = [0], sizes = [1], strides = [1]} : vector<3x7xi1> to vector<1x7xi1>
        %291 = index.floordivs %c9, %c15
        %292 = arith.negf %cst_2 : f16
        %293 = affine.load %alloc_22[%c8] : memref<7xi32>
        bufferization.dealloc_tensor %2 : tensor<3x7xi16>
        %294 = tensor.empty() : tensor<2x2xi64>
        %295 = tensor.empty() : tensor<3x2xi64>
        %296 = linalg.matmul ins(%14, %294 : tensor<3x2xi64>, tensor<2x2xi64>) outs(%295 : tensor<3x2xi64>) -> tensor<3x2xi64>
        %297 = index.sub %291, %c9
        %298 = vector.bitcast %290 : vector<1x7xi1> to vector<1x7xi1>
        scf.yield %263 : index
      }
      %277 = arith.maxf %cst_2, %cst_0 : f16
      %278 = index.maxu %59, %c0
      %279 = arith.divui %c8066_i16, %c-4009_i16 : i16
      %280 = math.tan %cst : f32
      %281 = arith.divf %cst_2, %cst_0 : f16
      memref.alloca_scope.return %alloc_20 : memref<7x3x3xi1>
    }
    %82 = arith.shli %c8066_i16, %c8066_i16 : i16
    %83 = arith.addf %cst_2, %cst_0 : f16
    %84 = vector.flat_transpose %29 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
    %85 = bufferization.clone %alloc_20 : memref<7x3x3xi1> to memref<7x3x3xi1>
    memref.assume_alignment %alloc_18, 8 : memref<3x2xi64>
    %86 = math.ceil %cst_2 : f16
    %cast = tensor.cast %reduced : tensor<7x3xi32> to tensor<?x?xi32>
    %87 = tensor.empty() : tensor<7x13xi16>
    %88 = tensor.empty() : tensor<3x13xi16>
    %89 = linalg.matmul ins(%2, %87 : tensor<3x7xi16>, tensor<7x13xi16>) outs(%88 : tensor<3x13xi16>) -> tensor<3x13xi16>
    %90 = affine.apply affine_map<(d0) -> ((-d0) ceildiv 32)>(%28)
    %cast_26 = tensor.cast %13 : tensor<2x7xi1> to tensor<?x?xi1>
    %91 = affine.max affine_map<(d0, d1, d2, d3) -> (-d2, -(d3 - 32))>(%c13, %c14, %c13, %62)
    %92 = arith.shli %34, %c1969275858_i32 : i32
    %93 = affine.min affine_map<(d0, d1) -> ((d1 mod 4) * 4, d0 + 64, d0 + 64, d1 - d1 mod 2 + 128)>(%c4, %c14)
    %94 = scf.while (%arg2 = %69) : (vector<7xi1>) -> vector<7xi1> {
      %251 = affine.apply affine_map<(d0, d1, d2, d3) -> (1)>(%c4, %c15, %c5, %c14)
      %252 = arith.remui %c912109256_i32, %c1969275858_i32 : i32
      %253 = index.ceildivs %c5, %c14
      %254 = math.exp %cst_1 : f32
      %from_elements_53 = tensor.from_elements %c951144787_i64, %c951144787_i64, %c783155345_i64, %c951144787_i64, %c783155345_i64, %c783155345_i64, %c783155345_i64, %c951144787_i64, %c951144787_i64, %c951144787_i64, %c951144787_i64, %c951144787_i64, %c783155345_i64, %c783155345_i64, %c783155345_i64, %c783155345_i64, %c783155345_i64, %c783155345_i64, %c783155345_i64, %c783155345_i64, %c783155345_i64, %c783155345_i64, %c783155345_i64, %c783155345_i64, %c783155345_i64, %c783155345_i64, %c783155345_i64, %c783155345_i64, %c951144787_i64, %c783155345_i64, %c783155345_i64, %c951144787_i64, %c951144787_i64, %c783155345_i64, %c951144787_i64, %c951144787_i64, %c783155345_i64, %c783155345_i64, %c951144787_i64, %c951144787_i64, %c783155345_i64, %c951144787_i64, %c951144787_i64, %c951144787_i64, %c951144787_i64, %c783155345_i64, %c951144787_i64, %c783155345_i64, %c951144787_i64, %c783155345_i64, %c783155345_i64, %c783155345_i64, %c951144787_i64, %c951144787_i64, %c951144787_i64, %c783155345_i64, %c783155345_i64, %c783155345_i64, %c783155345_i64, %c951144787_i64, %c783155345_i64, %c951144787_i64, %c783155345_i64 : tensor<7x3x3xi64>
      %255 = index.divu %c1, %28
      %256 = index.floordivs %251, %c6
      %257 = arith.addi %34, %34 : i32
      scf.condition(%extracted_24) %69 : vector<7xi1>
    } do {
    ^bb0(%arg2: vector<7xi1>):
      %251 = vector.flat_transpose %84 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
      %252 = vector.matrix_multiply %48, %20 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xf32>, vector<3xf32>) -> vector<1xf32>
      %253 = vector.insert %69, %42 [1] : vector<7xi1> into vector<3x7xi1>
      bufferization.dealloc_tensor %15 : tensor<2x7xf16>
      %254 = math.expm1 %15 : tensor<2x7xf16>
      memref.alloca_scope  {
        %263 = vector.insertelement %cst, %20[%93 : index] : vector<3xf32>
        %264 = arith.addf %cst_2, %cst_2 : f16
        %265 = vector.broadcast %extracted : i1 to vector<3xi1>
        %dest_54, %accumulated_value_55 = vector.scan <xor>, %26, %265 {inclusive = true, reduction_dim = 1 : i64} : vector<3x2xi1>, vector<3xi1>
        %266 = arith.remui %true, %true_3 : i1
        %267 = math.absf %0 : tensor<7x3x3xf16>
        %268 = arith.negf %cst_0 : f16
        %269 = arith.divf %cst, %cst_4 : f32
        %270 = arith.cmpi sle, %c-4009_i16, %c-4009_i16 : i16
        %271 = math.tan %cst_4 : f32
        %272 = index.sub %35, %c13
        %273 = vector.insertelement %cst, %252[%c7 : index] : vector<1xf32>
        memref.assume_alignment %alloc_21, 16 : memref<3x7xi64>
        %274 = arith.remsi %c-4009_i16, %c8066_i16 : i16
        %275 = vector.broadcast %c1969275858_i32 : i32 to vector<3x7xi32>
        %276 = vector.gather %alloc_10[%35, %35, %c1] [%275], %42, %275 : memref<7x3x3xi32>, vector<3x7xi32>, vector<3x7xi1>, vector<3x7xi32> into vector<3x7xi32>
        %inserted_56 = tensor.insert %34 into %18[%c2, %c0, %c0] : tensor<3x7x3xi32>
        %277 = index.ceildivs %90, %c15
        %278 = math.fpowi %cst_2, %34 : f16, i32
        %279 = index.maxs %c15, %c13
        %280 = index.mul %93, %c6
        %281 = math.atan2 %cst_0, %cst_2 : f16
        %282 = index.maxu %277, %280
        %283 = vector.reduction <maxf>, %29 : vector<3xf32> into f32
        vector.print %276 : vector<3x7xi32>
        %284 = vector.reduction <minui>, %69 : vector<7xi1> into i1
        %285 = arith.cmpf ult, %cst_1, %cst_1 : f32
        affine.store %c951144787_i64, %alloc_15[%c11, %c10, %c14] : memref<7x3x3xi64>
        %286 = math.floor %15 : tensor<2x7xf16>
        %287 = tensor.empty() : tensor<7x13xf16>
        %288 = tensor.empty() : tensor<2x13xf16>
        %289 = linalg.matmul ins(%15, %287 : tensor<2x7xf16>, tensor<7x13xf16>) outs(%288 : tensor<2x13xf16>) -> tensor<2x13xf16>
        %extracted_57 = tensor.extract %5[%c1, %c1] : tensor<3x7xi16>
        %290 = math.absi %5 : tensor<3x7xi16>
        %cast_58 = tensor.cast %6 : tensor<3x7xi64> to tensor<?x?xi64>
        %291 = bufferization.clone %54 : memref<2x7xi1> to memref<2x7xi1>
      }
      %255 = math.log2 %0 : tensor<7x3x3xf16>
      %256 = vector.bitcast %67 : vector<3x7xi1> to vector<3x7xi1>
      %257 = math.fma %0, %0, %0 : tensor<7x3x3xf16>
      %true_53 = index.bool.constant true
      %258 = math.atan2 %cst_0, %cst_2 : f16
      %259 = math.fpowi %cst, %34 : f32, i32
      %260 = index.maxu %91, %93
      memref.assume_alignment %alloc_19, 16 : memref<7x3x3xi1>
      %261 = arith.remf %cst_2, %cst_2 : f16
      %262 = arith.xori %false_6, %extracted : i1
      scf.yield %69 : vector<7xi1>
    }
    %95 = vector.bitcast %26 : vector<3x2xi1> to vector<3x2xi1>
    %96 = arith.minf %cst_1, %cst_1 : f32
    %97 = arith.addf %cst_4, %cst_1 : f32
    %98 = arith.cmpf ult, %cst_0, %cst_0 : f16
    %99 = memref.load %alloc_20[%c3, %c1, %c1] : memref<7x3x3xi1>
    %100 = arith.cmpi ne, %true, %false : i1
    %101 = math.log %cst_1 : f32
    %102 = arith.maxf %cst_1, %cst : f32
    %103 = vector.insert %69, %42 [0] : vector<7xi1> into vector<3x7xi1>
    %104 = memref.load %alloc_14[%c0, %c6] : memref<2x7xf32>
    %105 = math.powf %15, %15 : tensor<2x7xf16>
    %106 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%21 : tensor<7xi32>) outs(%11 : tensor<7x3x3xi32>) {
    ^bb0(%in: i32, %out: i32):
      %inserted_53 = tensor.insert %extracted into %1[%c1, %c5] : tensor<2x7xi1>
      %251 = arith.remui %extracted, %true_3 : i1
      %252 = arith.minsi %c912109256_i32, %c912109256_i32 : i32
      %cast_54 = tensor.cast %2 : tensor<3x7xi16> to tensor<?x?xi16>
      %253 = arith.minsi %extracted_24, %true_3 : i1
      %254 = vector.create_mask %90, %91 : vector<3x7xi1>
      %255 = scf.if %false_6 -> (i1) {
        %278 = arith.cmpi slt, %in, %c1969275858_i32 : i32
        %279 = math.log2 %0 : tensor<7x3x3xf16>
        memref.tensor_store %3, %alloc_19 : memref<7x3x3xi1>
        %cst_59 = arith.constant 1.6058231E+9 : f32
        %280 = vector.insertelement %false_5, %69[%c10 : index] : vector<7xi1>
        %281 = arith.negf %cst : f32
        affine.store %extracted_24, %alloc_20[%c1, %c15, %c7] : memref<7x3x3xi1>
        %282 = vector.broadcast %cst_1 : f32 to vector<7x3x3xf32>
        %283 = vector.fma %282, %282, %282 : vector<7x3x3xf32>
        scf.yield %false_6 : i1
      } else {
        %278 = math.atan2 %cst_4, %cst : f32
        %279 = vector.insert %cst, %20 [2] : f32 into vector<3xf32>
        %280 = math.sqrt %cst_1 : f32
        %281 = bufferization.clone %alloc_7 : memref<3x2xi16> to memref<3x2xi16>
        %282 = memref.load %alloc_22[%c4] : memref<7xi32>
        %283 = arith.addi %extracted_24, %true : i1
        %284 = arith.minf %cst_1, %cst_1 : f32
        %285 = math.expm1 %15 : tensor<2x7xf16>
        scf.yield %extracted_24 : i1
      }
      %256 = math.floor %cst_4 : f32
      %257 = tensor.empty() : tensor<2x7xi1>
      %mapped_55 = linalg.map ins(%1 : tensor<2x7xi1>) outs(%257 : tensor<2x7xi1>)
        (%in_59: i1) {
          bufferization.dealloc_tensor %reduced : tensor<7x3xi32>
          %278 = arith.minf %cst_2, %cst_0 : f16
          %279 = math.powf %15, %15 : tensor<2x7xf16>
          %280 = affine.min affine_map<(d0) -> (d0, d0 + 8, d0 - 128)>(%c7)
          %281 = arith.addf %cst, %cst_1 : f32
          %282 = vector.insertelement %cst_1, %20[%c15 : index] : vector<3xf32>
          %283 = memref.load %alloc_14[%c0, %c2] : memref<2x7xf32>
          %284 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 * 128, 0)>(%35, %c14, %62, %280)
          %285 = vector.load %alloc_22[%c3] : memref<7xi32>, vector<3x2xi32>
          %alloca_60 = memref.alloca() : memref<7x3x3xi64>
          %cst_61 = arith.constant 1.14659366E+9 : f32
          %286 = math.rsqrt %cst_4 : f32
          vector.print %285 : vector<3x2xi32>
          %287 = vector.insertelement %cst_4, %84[%90 : index] : vector<3xf32>
          %288 = arith.divui %c912109256_i32, %34 : i32
          %289 = vector.broadcast %cst_4 : f32 to vector<3x3xf32>
          %290 = vector.outerproduct %84, %48, %289 {kind = #vector.kind<minf>} : vector<3xf32>, vector<3xf32>
          %inserted_62 = tensor.insert %c8066_i16 into %8[%c1, %c1] : tensor<3x2xi16>
          %291 = memref.atomic_rmw minu %c783155345_i64, %alloc_21[%c2, %c5] : (i64, memref<3x7xi64>) -> i64
          %292 = arith.subi %true, %255 : i1
          %293 = vector.insert %cst_4, %29 [2] : f32 into vector<3xf32>
          memref.assume_alignment %alloc_21, 2 : memref<3x7xi64>
          %294 = index.mul %c7, %c5
          %295 = arith.maxf %cst, %cst_4 : f32
          %296 = arith.ceildivsi %false_5, %255 : i1
          %297 = math.exp %cst_2 : f16
          %298 = vector.transpose %67, [0, 1] : vector<3x7xi1> to vector<3x7xi1>
          memref.tensor_store %257, %54 : memref<2x7xi1>
          %299 = memref.atomic_rmw minu %c-4009_i16, %alloc_16[%c1, %c1, %c2] : (i16, memref<7x3x3xi16>) -> i16
          %300 = math.rsqrt %cst_1 : f32
          %301 = arith.xori %c-4009_i16, %c8066_i16 : i16
          %inserted_63 = tensor.insert %c-4009_i16 into %8[%c1, %c0] : tensor<3x2xi16>
          %302 = arith.remf %cst_2, %cst_2 : f16
          %true_64 = arith.constant true
          linalg.yield %true_64 : i1
        }
      %258 = vector.extract_strided_slice %20 {offsets = [0], sizes = [1], strides = [1]} : vector<3xf32> to vector<1xf32>
      %259 = arith.remui %34, %c1969275858_i32 : i32
      %extracted_56 = tensor.extract %72[%c0, %c0] : tensor<3x2xi64>
      %260 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %20, %48, %cst_4 : vector<3xf32>, vector<3xf32> into f32
      %dest_57, %accumulated_value_58 = vector.scan <maxsi>, %42, %69 {inclusive = true, reduction_dim = 0 : i64} : vector<3x7xi1>, vector<7xi1>
      %261 = math.cttz %13 : tensor<2x7xi1>
      %262 = vector.load %alloc_11[%c1, %c0] : memref<3x2xf32>, vector<2x7xf32>
      %263 = arith.divui %c783155345_i64, %c783155345_i64 : i64
      %264 = arith.cmpi uge, %255, %true_3 : i1
      memref.copy %alloc_19, %85 : memref<7x3x3xi1> to memref<7x3x3xi1>
      %265 = affine.max affine_map<(d0, d1) -> (-d1)>(%62, %c6)
      %266 = vector.load %54[%c0, %c2] : memref<2x7xi1>, vector<3x7xi1>
      %267 = arith.mulf %cst_4, %cst_1 : f32
      %268 = math.cttz %collapsed : tensor<21xi1>
      %269 = math.tan %0 : tensor<7x3x3xf16>
      %270 = arith.maxui %false_6, %true : i1
      %271 = vector.extract %95[1] : vector<3x2xi1>
      %272 = arith.remui %c8066_i16, %c-4009_i16 : i16
      %273 = math.ceil %cst_4 : f32
      %274 = math.fpowi %cst_0, %c912109256_i32 : f16, i32
      %275 = vector.broadcast %cst : f32 to vector<7x7xf32>
      %276 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %262, %262, %275 : vector<2x7xf32>, vector<2x7xf32> into vector<7x7xf32>
      memref.alloca_scope  {
        %278 = vector.broadcast %c7 : index to vector<7xindex>
        %279 = vector.broadcast %cst_1 : f32 to vector<7xf32>
        vector.scatter %alloc_13[%c2, %c0] [%278], %69, %279 : memref<3x2xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
        %dest_59, %accumulated_value_60 = vector.scan <maxui>, %26, %271 {inclusive = false, reduction_dim = 0 : i64} : vector<3x2xi1>, vector<2xi1>
        %cast_61 = tensor.cast %11 : tensor<7x3x3xi32> to tensor<?x?x?xi32>
        %280 = vector.flat_transpose %258 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
        %281 = math.log2 %cst_1 : f32
        %c512594268_i32 = arith.constant 512594268 : i32
        %282 = arith.remf %cst_0, %cst_2 : f16
        %283 = index.divu %c0, %35
        %284 = math.ceil %cst_0 : f16
        %285 = affine.max affine_map<(d0) -> (d0 ceildiv 128, (d0 ceildiv 128) floordiv 128 + 64, -2, ((d0 ceildiv 128) floordiv 128) mod 128 - 8)>(%91)
        %286 = affine.max affine_map<(d0, d1) -> (d1 ceildiv 2 + 16, d1)>(%c3, %c3)
        %287 = vector.load %alloc_13[%c2, %c1] : memref<3x2xf32>, vector<3x7xf32>
        %288 = tensor.empty() : tensor<2x7xf32>
        %289 = vector.extract %48[1] : vector<3xf32>
        bufferization.dealloc_tensor %cast_61 : tensor<?x?x?xi32>
        %290 = index.maxs %c6, %c6
        %291 = vector.bitcast %95 : vector<3x2xi1> to vector<3x2xi1>
        %cast_62 = tensor.cast %15 : tensor<2x7xf16> to tensor<?x?xf16>
        %292 = math.fma %cst_2, %cst_0, %cst_2 : f16
        %293 = math.ctlz %false_6 : i1
        %294 = math.ctlz %5 : tensor<3x7xi16>
        %295 = math.expm1 %0 : tensor<7x3x3xf16>
        %296 = math.copysign %cst_1, %cst_1 : f32
        %297 = arith.cmpi sgt, %c783155345_i64, %c951144787_i64 : i64
        %298 = affine.max affine_map<(d0, d1, d2, d3) -> (d0, d0 * 64)>(%59, %c6, %37, %c0)
        %expanded_63 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<3x7xi64> into tensor<3x7x1xi64>
        %299 = vector.bitcast %48 : vector<3xf32> to vector<3xf32>
        %300 = index.ceildivu %79, %c7
        %301 = arith.shrui %c912109256_i32, %c912109256_i32 : i32
        %302 = arith.maxf %cst_2, %cst_0 : f16
        %303 = tensor.empty() : tensor<7x2xf16>
        %304 = tensor.empty() : tensor<2x2xf16>
        %305 = linalg.matmul ins(%15, %303 : tensor<2x7xf16>, tensor<7x2xf16>) outs(%304 : tensor<2x2xf16>) -> tensor<2x2xf16>
        %306 = math.sqrt %15 : tensor<2x7xf16>
      }
      %277 = math.absi %8 : tensor<3x2xi16>
      linalg.yield %c912109256_i32 : i32
    } -> tensor<7x3x3xi32>
    %107 = index.divu %c14, %c5
    %108 = bufferization.clone %alloc : memref<3x7xi32> to memref<3x7xi32>
    %c2123903494_i64 = arith.constant 2123903494 : i64
    %109 = math.round %0 : tensor<7x3x3xf16>
    %110 = vector.broadcast %extracted : i1 to vector<3xi1>
    %111 = vector.multi_reduction <and>, %67, %110 [1] : vector<3x7xi1> to vector<3xi1>
    %splat = tensor.splat %cst_0 : tensor<7x3x3xf16>
    %112 = affine.for %arg2 = 0 to 58 iter_args(%arg3 = %c9) -> (index) {
      affine.yield %c6 : index
    }
    %alloc_27 = memref.alloc() : memref<7x3x3xi32>
    memref.copy %alloc_10, %alloc_27 : memref<7x3x3xi32> to memref<7x3x3xi32>
    %113 = math.log2 %splat : tensor<7x3x3xf16>
    %114 = arith.maxsi %true_3, %false_6 : i1
    %115 = memref.load %81[%c3, %c1, %c1] : memref<7x3x3xi1>
    %extracted_28 = tensor.extract %11[%c0, %c2, %c1] : tensor<7x3x3xi32>
    %116 = vector.reduction <add>, %20 : vector<3xf32> into f32
    %117 = affine.if affine_set<(d0) : (-d0 >= 0, 0 >= 0, 0 == 0, (d0 mod 64) * 2 - (-(d0 mod 64)) ceildiv 4 + 64 == 0)>(%c11) -> i16 {
      %from_elements_53 = tensor.from_elements %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_2, %cst_2, %cst_2, %cst_2, %cst_0, %cst_0, %cst_0, %cst_2, %cst_2, %cst_2, %cst_2, %cst_0, %cst_2, %cst_2, %cst_2 : tensor<3x7xf16>
      %251 = tensor.empty() : tensor<2x7xi1>
      %mapped_54 = linalg.map ins(%1, %16, %54 : tensor<2x7xi1>, tensor<2x7xi1>, memref<2x7xi1>) outs(%251 : tensor<2x7xi1>)
        (%in: i1, %in_59: i1, %in_60: i1) {
          %256 = math.tan %0 : tensor<7x3x3xf16>
          %257 = tensor.empty() : tensor<3x7xf32>
          %258 = arith.cmpi ne, %c951144787_i64, %c783155345_i64 : i64
          %expanded_61 = tensor.expand_shape %splat [[0], [1], [2, 3]] : tensor<7x3x3xf16> into tensor<7x3x3x1xf16>
          %259 = index.divu %c15, %93
          %260 = vector.bitcast %29 : vector<3xf32> to vector<3xf32>
          %rank = tensor.rank %75 : tensor<3x7xi16>
          %inserted_62 = tensor.insert %c1969275858_i32 into %23[] : tensor<i32>
          %261 = tensor.empty() : tensor<7x2xi16>
          %262 = tensor.empty() : tensor<3x2xi16>
          %263 = linalg.matmul ins(%2, %261 : tensor<3x7xi16>, tensor<7x2xi16>) outs(%262 : tensor<3x2xi16>) -> tensor<3x2xi16>
          %264 = math.expm1 %257 : tensor<3x7xf32>
          %265 = vector.splat %c912109256_i32 : vector<2x7xi32>
          %266 = arith.subi %false_5, %false_5 : i1
          %267 = vector.broadcast %cst_1 : f32 to vector<7x3x3xf32>
          %268 = vector.fma %267, %267, %267 : vector<7x3x3xf32>
          %269 = arith.remf %cst_2, %cst_0 : f16
          %270 = vector.broadcast %extracted_24 : i1 to vector<2xi1>
          %dest_63, %accumulated_value_64 = vector.scan <minui>, %26, %270 {inclusive = false, reduction_dim = 0 : i64} : vector<3x2xi1>, vector<2xi1>
          %271 = math.ceil %0 : tensor<7x3x3xf16>
          %272 = vector.insert %true, %69 [1] : i1 into vector<7xi1>
          %273 = math.log %15 : tensor<2x7xf16>
          %inserted_65 = tensor.insert %in_60 into %17[%c1, %c0] : tensor<2x7xi1>
          %274 = arith.addf %cst, %cst : f32
          %cst_66 = arith.constant 0x4C28AE86 : f32
          %275 = index.ceildivs %90, %c12
          %276 = math.expm1 %cst_0 : f16
          bufferization.dealloc_tensor %collapsed : tensor<21xi1>
          %277 = arith.addi %true_3, %false_6 : i1
          memref.assume_alignment %alloc_13, 1 : memref<3x2xf32>
          %c3772_i16 = arith.constant 3772 : i16
          %278 = vector.load %alloc_12[%c1, %c0] : memref<2x7xf32>, vector<7x3x3xf32>
          %279 = bufferization.clone %54 : memref<2x7xi1> to memref<2x7xi1>
          memref.tensor_store %7, %279 : memref<2x7xi1>
          %280 = math.roundeven %cst_1 : f32
          %281 = arith.addf %cst_1, %cst : f32
          %true_67 = arith.constant true
          linalg.yield %true_67 : i1
        }
      %false_55 = arith.constant false
      %false_56 = arith.constant false
      %252 = vector.transfer_read %10[%35, %c6, %c15], %false_56 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<7x3x3xi1>, vector<2xi1>
      %253 = scf.while (%arg2 = %84) : (vector<3xf32>) -> vector<3xf32> {
        %256 = vector.broadcast %79 : index to vector<13xindex>
        %257 = vector.broadcast %false_6 : i1 to vector<13xi1>
        %258 = vector.broadcast %cst : f32 to vector<13xf32>
        vector.scatter %alloc_14[%c0, %c5] [%256], %257, %258 : memref<2x7xf32>, vector<13xindex>, vector<13xi1>, vector<13xf32>
        %259 = vector.load %alloc_22[%c4] : memref<7xi32>, vector<7x3x3xi32>
        %260 = math.atan2 %15, %15 : tensor<2x7xf16>
        %261 = arith.divui %true, %false : i1
        %inserted_59 = tensor.insert %cst_0 into %0[%c3, %c2, %c1] : tensor<7x3x3xf16>
        %262 = index.floordivs %62, %c7
        %263 = arith.minf %cst, %cst_4 : f32
        %264 = arith.divui %extracted, %false : i1
        scf.condition(%false_6) %20 : vector<3xf32>
      } do {
      ^bb0(%arg2: vector<3xf32>):
        %256 = math.exp %0 : tensor<7x3x3xf16>
        %257 = memref.load %alloc_21[%c1, %c4] : memref<3x7xi64>
        %258 = arith.andi %c951144787_i64, %c783155345_i64 : i64
        %259 = affine.max affine_map<(d0, d1, d2, d3) -> (d3, (d0 mod 8) ceildiv 2, d1 - d0, d2)>(%c7, %28, %c13, %c14)
        %260 = arith.divui %c912109256_i32, %extracted_28 : i32
        %261 = arith.minsi %c-4009_i16, %c8066_i16 : i16
        %cast_59 = tensor.cast %collapsed : tensor<21xi1> to tensor<?xi1>
        %262 = math.rsqrt %cst : f32
        %263 = vector.broadcast %c783155345_i64 : i64 to vector<2xi64>
        %264 = vector.broadcast %false_5 : i1 to vector<2xi1>
        %265 = vector.maskedload %alloc_18[%c0, %c0], %264, %263 : memref<3x2xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
        %266 = vector.multi_reduction <mul>, %48, %20 [] : vector<3xf32> to vector<3xf32>
        %267 = index.mul %62, %c7
        %268 = math.absf %15 : tensor<2x7xf16>
        %269 = math.fma %cst, %cst_4, %cst : f32
        %270 = arith.addf %cst_2, %cst_2 : f16
        %271 = arith.andi %c8066_i16, %c8066_i16 : i16
        %272 = vector.flat_transpose %69 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
        scf.yield %29 : vector<3xf32>
      }
      %alloca_57 = memref.alloca() : memref<7x3x3xi1>
      %254 = arith.remui %c912109256_i32, %c912109256_i32 : i32
      %255 = math.fpowi %cst_0, %c1969275858_i32 : f16, i32
      %expanded_58 = tensor.expand_shape %reduced [[0], [1, 2]] : tensor<7x3xi32> into tensor<7x3x1xi32>
      affine.yield %c-4009_i16 : i16
    } else {
      %251 = bufferization.clone %alloc_10 : memref<7x3x3xi32> to memref<7x3x3xi32>
      %252 = index.divu %c3, %79
      %253 = vector.matrix_multiply %29, %48 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xf32>, vector<3xf32>) -> vector<1xf32>
      %254 = memref.alloca_scope  -> (memref<7x3x3xi1>) {
        %259 = arith.addf %cst_4, %cst : f32
        %260 = arith.remf %cst, %cst : f32
        %261 = math.absf %splat : tensor<7x3x3xf16>
        %262 = arith.subi %c783155345_i64, %c783155345_i64 : i64
        %263 = vector.reduction <minsi>, %110 : vector<3xi1> into i1
        %264 = arith.ori %c951144787_i64, %c951144787_i64 : i64
        %265 = index.castu %c2 : index to i32
        %266 = index.ceildivs %107, %79
        affine.store %34, %alloc_8[%c15, %c12] : memref<2x7xi32>
        %267 = arith.minf %cst_0, %cst_0 : f16
        %268 = arith.remf %cst_1, %cst_4 : f32
        %269 = arith.divui %c783155345_i64, %c951144787_i64 : i64
        %270 = arith.addi %extracted_28, %extracted_28 : i32
        %271 = math.sqrt %15 : tensor<2x7xf16>
        %272 = vector.load %73[%c2, %c0] : memref<3x2xi64>, vector<7x3x3xi64>
        %273 = math.absf %cst : f32
        %274 = arith.xori %c951144787_i64, %c783155345_i64 : i64
        %275 = arith.addi %false_6, %extracted_24 : i1
        %276 = index.divu %35, %c7
        %277 = affine.max affine_map<(d0, d1, d2, d3) -> ((d3 - 32) ceildiv 64, -d0, d3 floordiv 2 - 24)>(%c4, %c15, %c12, %62)
        %278 = arith.minf %cst_1, %cst_4 : f32
        memref.tensor_store %4, %54 : memref<2x7xi1>
        %279 = index.add %59, %59
        %280 = arith.remsi %c951144787_i64, %c783155345_i64 : i64
        %281 = math.absi %3 : tensor<7x3x3xi1>
        %282 = memref.load %alloc_14[%c1, %c2] : memref<2x7xf32>
        %283 = arith.addi %c1969275858_i32, %c1969275858_i32 : i32
        %284 = arith.maxf %cst_2, %cst_2 : f16
        %285 = vector.bitcast %272 : vector<7x3x3xi64> to vector<7x3x3xi64>
        %286 = vector.extract_strided_slice %69 {offsets = [1], sizes = [1], strides = [1]} : vector<7xi1> to vector<1xi1>
        %287 = affine.min affine_map<(d0, d1) -> (d1 * 16 + 4, d1 ceildiv 8, 0, d1 + d1 mod 32 - 2)>(%c7, %c3)
        %288 = math.absi %22 : tensor<i32>
        memref.alloca_scope.return %alloc_20 : memref<7x3x3xi1>
      }
      %255 = memref.load %73[%c2, %c0] : memref<3x2xi64>
      %256 = vector.reduction <and>, %110 : vector<3xi1> into i1
      %257 = vector.load %alloc_21[%c2, %c0] : memref<3x7xi64>, vector<7x3x3xi64>
      %258 = arith.cmpi ugt, %c-4009_i16, %c-4009_i16 : i16
      affine.yield %c8066_i16 : i16
    }
    scf.index_switch %93 
    case 1 {
      %251 = vector.insertelement %cst_4, %48[%37 : index] : vector<3xf32>
      %252 = scf.execute_region -> memref<3x2xi64> {
        %dest_55, %accumulated_value_56 = vector.scan <mul>, %95, %110 {inclusive = false, reduction_dim = 1 : i64} : vector<3x2xi1>, vector<3xi1>
        %268 = index.sub %c9, %90
        %269 = index.ceildivs %107, %90
        %270 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%93, %c15, %c11)
        %271 = math.floor %cst_2 : f16
        %272 = math.log2 %cst_1 : f32
        %273 = math.exp %cst_1 : f32
        %extracted_57 = tensor.extract %7[%c0, %c1] : tensor<2x7xi1>
        %274 = arith.minsi %34, %34 : i32
        %275 = vector.broadcast %true_3 : i1 to vector<3x3xi1>
        %276 = vector.outerproduct %110, %110, %275 {kind = #vector.kind<minsi>} : vector<3xi1>, vector<3xi1>
        %277 = arith.remui %c-4009_i16, %c8066_i16 : i16
        %278 = math.floor %cst_0 : f16
        %279 = arith.cmpf une, %cst_4, %cst : f32
        %280 = vector.insertelement %cst_1, %84[%c1 : index] : vector<3xf32>
        %281 = arith.xori %34, %c1969275858_i32 : i32
        %282 = math.round %splat : tensor<7x3x3xf16>
        scf.yield %alloc_18 : memref<3x2xi64>
      }
      %253 = scf.while (%arg2 = %alloc_22) : (memref<7xi32>) -> memref<7xi32> {
        %268 = arith.divui %true_3, %extracted_24 : i1
        %alloca_55 = memref.alloca() : memref<2x7xi32>
        memref.tensor_store %72, %alloc_18 : memref<3x2xi64>
        %269 = arith.xori %34, %extracted_28 : i32
        %270 = vector.bitcast %20 : vector<3xf32> to vector<3xf32>
        %271 = math.fma %15, %15, %15 : tensor<2x7xf16>
        %272 = memref.load %alloc_10[%c5, %c1, %c1] : memref<7x3x3xi32>
        %273 = math.exp %cst : f32
        scf.condition(%false_5) %alloc_22 : memref<7xi32>
      } do {
      ^bb0(%arg2: memref<7xi32>):
        %268 = affine.load %alloc[%c8, %c15] : memref<3x7xi32>
        %269 = bufferization.clone %alloc_18 : memref<3x2xi64> to memref<3x2xi64>
        %270 = arith.minf %cst_1, %cst_1 : f32
        %inserted_55 = tensor.insert %268 into %reduced[%c1, %c2] : tensor<7x3xi32>
        %271 = math.powf %0, %0 : tensor<7x3x3xf16>
        %alloc_56 = memref.alloc() : memref<7x2xi1>
        %272 = tensor.empty() : tensor<2x2xi1>
        %273 = linalg.matmul ins(%13, %alloc_56 : tensor<2x7xi1>, memref<7x2xi1>) outs(%272 : tensor<2x2xi1>) -> tensor<2x2xi1>
        %274 = vector.broadcast %extracted : i1 to vector<7x2xi1>
        %275 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %67, %26, %274 : vector<3x7xi1>, vector<3x2xi1> into vector<7x2xi1>
        %276 = math.round %15 : tensor<2x7xf16>
        %277 = math.atan2 %cst, %cst_4 : f32
        %278 = math.absf %0 : tensor<7x3x3xf16>
        %279 = arith.mulf %cst_0, %cst_0 : f16
        %280 = vector.broadcast %extracted : i1 to vector<i1>
        %281 = vector.transfer_write %280, %3[%28, %c0, %c7] : vector<i1>, tensor<7x3x3xi1>
        %282 = math.absi %4 : tensor<2x7xi1>
        %283 = arith.addi %false_5, %true : i1
        bufferization.dealloc_tensor %transposed : tensor<3x7x3xi32>
        %c0_i32_57 = arith.constant 0 : i32
        %284 = vector.transfer_read %19[%62, %c13], %c0_i32_57 : tensor<7x3xi32>, vector<i32>
        scf.yield %arg2 : memref<7xi32>
      }
      %254 = index.ceildivu %c5, %59
      %255 = vector.broadcast %false_5 : i1 to vector<2xi1>
      %256 = vector.insert %255, %95 [0] : vector<2xi1> into vector<3x2xi1>
      %257 = math.absf %0 : tensor<7x3x3xf16>
      %258 = arith.xori %true_3, %true : i1
      %259 = tensor.empty() : tensor<3x2xi64>
      %mapped_53 = linalg.map ins(%14, %252 : tensor<3x2xi64>, memref<3x2xi64>) outs(%259 : tensor<3x2xi64>)
        (%in: i64, %in_55: i64) {
          %268 = math.ceil %0 : tensor<7x3x3xf16>
          %269 = bufferization.clone %108 : memref<3x7xi32> to memref<3x7xi32>
          %270 = vector.broadcast %c3 : index to vector<2xindex>
          %271 = vector.broadcast %c8066_i16 : i16 to vector<2xi16>
          vector.scatter %alloc_17[%c1, %c6] [%270], %255, %271 : memref<3x7xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
          %272 = tensor.empty() : tensor<2x7xi32>
          %273 = math.fpowi %15, %272 : tensor<2x7xf16>, tensor<2x7xi32>
          %274 = arith.shrsi %c-4009_i16, %c-4009_i16 : i16
          %275 = memref.atomic_rmw maxu %c-4009_i16, %alloc_16[%c4, %c1, %c2] : (i16, memref<7x3x3xi16>) -> i16
          %276 = index.add %28, %c15
          %rank = tensor.rank %7 : tensor<2x7xi1>
          %277 = index.sub %90, %28
          %278 = arith.divui %extracted, %false : i1
          %279 = index.ceildivs %254, %37
          %280 = arith.ori %c912109256_i32, %34 : i32
          %281 = math.round %cst : f32
          %282 = arith.mulf %cst_2, %cst_2 : f16
          %283 = arith.remf %cst, %cst_1 : f32
          %284 = math.absi %4 : tensor<2x7xi1>
          %extracted_56 = tensor.extract %3[%c1, %c2, %c2] : tensor<7x3x3xi1>
          %285 = vector.extract_strided_slice %29 {offsets = [1], sizes = [2], strides = [1]} : vector<3xf32> to vector<2xf32>
          %286 = vector.multi_reduction <maxsi>, %67, %false [0, 1] : vector<3x7xi1> to i1
          %287 = vector.extract_strided_slice %255 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi1> to vector<1xi1>
          %alloca_57 = memref.alloca() : memref<3x2xf32>
          %288 = arith.maxf %cst_1, %cst : f32
          %289 = arith.maxsi %extracted_28, %extracted_28 : i32
          %290 = arith.subi %false, %extracted : i1
          %291 = arith.addf %cst_4, %cst_1 : f32
          %292 = vector.bitcast %255 : vector<2xi1> to vector<2xi1>
          %293 = vector.flat_transpose %110 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
          %294 = vector.splat %276 : vector<2x7xindex>
          %295 = math.tan %splat : tensor<7x3x3xf16>
          %alloca_58 = memref.alloca() : memref<2x7xi64>
          %296 = arith.muli %c1969275858_i32, %c912109256_i32 : i32
          %expanded_59 = tensor.expand_shape %18 [[0], [1], [2, 3]] : tensor<3x7x3xi32> into tensor<3x7x3x1xi32>
          %c0_i64 = arith.constant 0 : i64
          linalg.yield %c0_i64 : i64
        }
      %extracted_54 = tensor.extract %1[%c1, %c4] : tensor<2x7xi1>
      %260 = vector.extract_strided_slice %29 {offsets = [0], sizes = [1], strides = [1]} : vector<3xf32> to vector<1xf32>
      %261 = arith.remf %cst, %cst_1 : f32
      %c0_i32 = arith.constant 0 : i32
      %262 = vector.transfer_read %21[%37], %c0_i32 : tensor<7xi32>, vector<i32>
      %263 = math.sqrt %cst_4 : f32
      %264 = math.tan %0 : tensor<7x3x3xf16>
      %265 = vector.extract_strided_slice %69 {offsets = [0], sizes = [6], strides = [1]} : vector<7xi1> to vector<6xi1>
      %266 = vector.broadcast %c0 : index to vector<3xindex>
      %267 = vector.broadcast %extracted_28 : i32 to vector<3xi32>
      vector.scatter %alloc_8[%c0, %c2] [%266], %110, %267 : memref<2x7xi32>, vector<3xindex>, vector<3xi1>, vector<3xi32>
      scf.yield
    }
    case 2 {
      %251 = arith.remf %cst_2, %cst_2 : f16
      %252 = index.add %79, %79
      %253 = arith.addf %cst_4, %cst_1 : f32
      %254 = math.log2 %cst_1 : f32
      %dest_53, %accumulated_value_54 = vector.scan <or>, %67, %69 {inclusive = true, reduction_dim = 0 : i64} : vector<3x7xi1>, vector<7xi1>
      %255 = index.mul %79, %c3
      %256 = arith.maxsi %false_6, %false : i1
      %257 = vector.broadcast %cst : f32 to vector<3x2xf32>
      %258 = vector.fma %257, %257, %257 : vector<3x2xf32>
      %259 = arith.addf %cst, %cst_1 : f32
      %260 = arith.subi %c8066_i16, %c-4009_i16 : i16
      %261 = vector.splat %91 : vector<2x7xindex>
      %262 = arith.maxf %cst_4, %cst : f32
      %263 = vector.matrix_multiply %69, %110 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 3 : i32} : (vector<7xi1>, vector<3xi1>) -> vector<21xi1>
      %264 = arith.remsi %c912109256_i32, %34 : i32
      %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%3 : tensor<7x3x3xi1>) {
      ^bb0(%out: i1):
        %267 = math.sqrt %15 : tensor<2x7xf16>
        %268 = math.atan %15 : tensor<2x7xf16>
        %269 = arith.remsi %34, %extracted_28 : i32
        %270 = arith.maxf %cst, %cst_1 : f32
        %271 = index.divu %c8, %252
        %272 = vector.matrix_multiply %69, %69 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi1>, vector<7xi1>) -> vector<1xi1>
        %expanded_55 = tensor.expand_shape %collapsed [[0, 1]] : tensor<21xi1> into tensor<21x1xi1>
        %273 = math.copysign %cst, %cst_4 : f32
        %274 = arith.maxf %cst, %cst_4 : f32
        %275 = vector.load %alloc_19[%c6, %c1, %c1] : memref<7x3x3xi1>, vector<3x2xi1>
        %276 = vector.broadcast %c9 : index to vector<3xindex>
        vector.scatter %54[%c0, %c6] [%276], %110, %110 : memref<2x7xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
        %277 = math.tan %cst_1 : f32
        %278 = affine.max affine_map<(d0, d1, d2, d3) -> (-(d2 * 32 + d1), d3 - d2, (d3 - d2) * 64, d2 * 32)>(%c10, %c7, %c2, %c9)
        %279 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 + 2, d3 floordiv 64 - 16)>(%c15, %278, %28, %c7)
        vector.print %48 : vector<3xf32>
        %280 = vector.matrix_multiply %48, %29 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xf32>, vector<3xf32>) -> vector<1xf32>
        %281 = arith.subi %false_5, %false_6 : i1
        %282 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %48, %84, %cst_1 : vector<3xf32>, vector<3xf32> into f32
        %283 = math.expm1 %0 : tensor<7x3x3xf16>
        %284 = vector.insert %cst, %280 [0] : f32 into vector<1xf32>
        %alloc_56 = memref.alloc() : memref<2x7xf16>
        %285 = vector.broadcast %cst_2 : f16 to vector<3x2xf16>
        %286 = vector.broadcast %34 : i32 to vector<3x2xi32>
        %287 = vector.gather %alloc_56[%c6, %c1] [%286], %275, %285 : memref<2x7xf16>, vector<3x2xi32>, vector<3x2xi1>, vector<3x2xf16> into vector<3x2xf16>
        %288 = arith.addf %cst, %cst_1 : f32
        %289 = arith.negf %cst : f32
        %alloca_57 = memref.alloca() : memref<2x7xi1>
        %290 = math.log %0 : tensor<7x3x3xf16>
        %291 = arith.divui %c1969275858_i32, %extracted_28 : i32
        %292 = index.divu %271, %37
        %293 = arith.divui %c951144787_i64, %c951144787_i64 : i64
        %294 = vector.flat_transpose %48 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
        %295 = math.ctlz %2 : tensor<3x7xi16>
        %296 = math.round %cst_1 : f32
        %297 = math.floor %cst_2 : f16
        linalg.yield %true_3 : i1
      } -> tensor<7x3x3xi1>
      %266 = index.maxu %c1, %c12
      scf.yield
    }
    case 3 {
      %251 = math.exp %15 : tensor<2x7xf16>
      %252 = vector.bitcast %48 : vector<3xf32> to vector<3xf32>
      %253 = arith.shrui %c1969275858_i32, %34 : i32
      memref.tensor_store %12, %alloc_9 : memref<3x7xi1>
      %254 = tensor.empty() : tensor<3x2xi32>
      %255 = math.log %cst : f32
      %256 = tensor.empty() : tensor<3x7xi16>
      %mapped_53 = linalg.map ins(%75, %75 : tensor<3x7xi16>, tensor<3x7xi16>) outs(%256 : tensor<3x7xi16>)
        (%in: i16, %in_54: i16) {
          %265 = math.absi %true : i1
          %266 = vector.broadcast %false_5 : i1 to vector<2xi1>
          %267 = vector.insert %266, %95 [2] : vector<2xi1> into vector<3x2xi1>
          %268 = tensor.empty() : tensor<3x2xf32>
          %extracted_55 = tensor.extract %5[%c2, %c3] : tensor<3x7xi16>
          %269 = memref.load %alloc_19[%c4, %c1, %c1] : memref<7x3x3xi1>
          %270 = index.sub %c0, %107
          %271 = tensor.empty() : tensor<2x7xi1>
          %272 = index.maxu %93, %91
          %273 = index.divu %59, %c0
          %274 = arith.addi %c-4009_i16, %extracted_55 : i16
          %275 = index.maxu %c5, %107
          %276 = arith.minsi %false, %extracted : i1
          %277 = arith.cmpi ule, %false, %false_6 : i1
          %278 = memref.atomic_rmw addi %c1969275858_i32, %108[%c2, %c5] : (i32, memref<3x7xi32>) -> i32
          %279 = math.atan2 %0, %0 : tensor<7x3x3xf16>
          %280 = vector.load %alloc_14[%c0, %c0] : memref<2x7xf32>, vector<3x7xf32>
          %281 = affine.load %alloc_15[%c15, %c8, %c11] : memref<7x3x3xi64>
          %282 = math.ceil %268 : tensor<3x2xf32>
          %alloca_56 = memref.alloca() : memref<3x2xf32>
          %dest_57, %accumulated_value_58 = vector.scan <add>, %280, %84 {inclusive = false, reduction_dim = 1 : i64} : vector<3x7xf32>, vector<3xf32>
          %283 = vector.multi_reduction <and>, %42, %67 [] : vector<3x7xi1> to vector<3x7xi1>
          %284 = arith.remf %cst_0, %cst_2 : f16
          %285 = arith.addf %cst_4, %cst_4 : f32
          %286 = tensor.empty() : tensor<7x2xi16>
          %287 = tensor.empty() : tensor<3x2xi16>
          %288 = linalg.matmul ins(%5, %286 : tensor<3x7xi16>, tensor<7x2xi16>) outs(%287 : tensor<3x2xi16>) -> tensor<3x2xi16>
          %289 = index.mul %93, %c15
          %extracted_59 = tensor.extract %22[] : tensor<i32>
          %290 = arith.remf %cst_4, %cst : f32
          %291 = tensor.empty() : tensor<7x2xi1>
          %292 = tensor.empty() : tensor<2x2xi1>
          %293 = linalg.matmul ins(%17, %291 : tensor<2x7xi1>, tensor<7x2xi1>) outs(%292 : tensor<2x2xi1>) -> tensor<2x2xi1>
          %294 = math.tan %cst_2 : f16
          %295 = index.divu %c14, %c1
          %expanded_60 = tensor.expand_shape %7 [[0], [1, 2]] : tensor<2x7xi1> into tensor<2x7x1xi1>
          %296 = vector.broadcast %true : i1 to vector<2x2xi1>
          %297 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %26, %95, %296 : vector<3x2xi1>, vector<3x2xi1> into vector<2x2xi1>
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %257 = math.ctlz %2 : tensor<3x7xi16>
      %258 = math.absf %cst_1 : f32
      %259 = arith.andi %c783155345_i64, %c951144787_i64 : i64
      %260 = affine.load %alloc_22[%c2] : memref<7xi32>
      %261 = arith.minsi %c783155345_i64, %c783155345_i64 : i64
      %262 = vector.flat_transpose %48 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
      memref.tensor_store %11, %alloc_10 : memref<7x3x3xi32>
      %263 = math.log2 %0 : tensor<7x3x3xf16>
      %264 = vector.insertelement %extracted, %110[%c15 : index] : vector<3xi1>
      scf.yield
    }
    default {
      %cast_53 = tensor.cast %19 : tensor<7x3xi32> to tensor<?x?xi32>
      %251 = scf.while (%arg2 = %alloc_9) : (memref<3x7xi1>) -> memref<3x7xi1> {
        %inserted_55 = tensor.insert %c1969275858_i32 into %18[%c0, %c6, %c1] : tensor<3x7x3xi32>
        %264 = arith.minui %c1969275858_i32, %extracted_28 : i32
        %265 = math.fpowi %cst_0, %extracted_28 : f16, i32
        %266 = arith.cmpi ugt, %c783155345_i64, %c951144787_i64 : i64
        %267 = math.round %cst_1 : f32
        memref.tensor_store %10, %85 : memref<7x3x3xi1>
        %268 = index.divu %59, %c12
        %269 = arith.shli %c8066_i16, %c8066_i16 : i16
        scf.condition(%extracted_24) %arg2 : memref<3x7xi1>
      } do {
      ^bb0(%arg2: memref<3x7xi1>):
        %264 = arith.ceildivsi %c951144787_i64, %c951144787_i64 : i64
        %from_elements_55 = tensor.from_elements %c912109256_i32, %34, %c912109256_i32, %c912109256_i32, %34, %c1969275858_i32, %c1969275858_i32, %c912109256_i32, %c912109256_i32, %extracted_28, %extracted_28, %34, %extracted_28, %c912109256_i32, %extracted_28, %c1969275858_i32, %c912109256_i32, %extracted_28, %extracted_28, %c1969275858_i32, %c1969275858_i32 : tensor<3x7xi32>
        %265 = index.mul %c11, %c0
        %dest_56, %accumulated_value_57 = vector.scan <mul>, %42, %110 {inclusive = true, reduction_dim = 1 : i64} : vector<3x7xi1>, vector<3xi1>
        %266 = vector.flat_transpose %110 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
        %267 = vector.broadcast %62 : index to vector<7xindex>
        vector.scatter %81[%c4, %c2, %c0] [%267], %69, %69 : memref<7x3x3xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
        memref.tensor_store %16, %54 : memref<2x7xi1>
        %268 = arith.remf %cst_4, %cst_4 : f32
        %269 = index.divs %c1, %59
        %270 = math.ceil %0 : tensor<7x3x3xf16>
        %271 = math.fma %cst_2, %cst_2, %cst_0 : f16
        %272 = vector.matrix_multiply %69, %266 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 3 : i32} : (vector<7xi1>, vector<3xi1>) -> vector<21xi1>
        %273 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %84, %48, %cst : vector<3xf32>, vector<3xf32> into f32
        memref.assume_alignment %alloc_17, 16 : memref<3x7xi16>
        %274 = math.log2 %0 : tensor<7x3x3xf16>
        %275 = index.divu %90, %37
        scf.yield %alloc_9 : memref<3x7xi1>
      }
      %252 = index.sub %107, %c0
      %253 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 * 8, d2 mod 128 + d0, d2 + 128, -d2)>(%c9, %c6, %252, %37)
      %cst_54 = arith.constant 6.004000e+03 : f16
      %254 = tensor.empty(%c0, %c6) : tensor<?x?xf32>
      %255 = arith.maxf %cst_0, %cst_0 : f16
      %256 = vector.extract_strided_slice %110 {offsets = [0], sizes = [1], strides = [1]} : vector<3xi1> to vector<1xi1>
      %257 = math.fma %splat, %0, %0 : tensor<7x3x3xf16>
      %258 = arith.remf %cst_4, %cst_1 : f32
      %259 = index.sub %c8, %c9
      vector.print %42 : vector<3x7xi1>
      %260 = math.log1p %splat : tensor<7x3x3xf16>
      %261 = math.atan %0 : tensor<7x3x3xf16>
      %262 = arith.maxf %cst_4, %cst : f32
      %263 = vector.splat %107 : vector<3x2xindex>
    }
    %expanded = tensor.expand_shape %splat [[0], [1], [2, 3]] : tensor<7x3x3xf16> into tensor<7x3x3x1xf16>
    %118 = math.powf %cst_1, %cst : f32
    %119 = arith.cmpf oge, %cst, %cst : f32
    %120 = arith.muli %c8066_i16, %c8066_i16 : i16
    %121 = arith.mulf %cst_2, %cst_0 : f16
    %122 = arith.ori %c8066_i16, %c-4009_i16 : i16
    %123 = math.log %cst_4 : f32
    %124 = arith.remf %cst_4, %cst_1 : f32
    %125 = index.ceildivs %c10, %c14
    %126 = arith.minsi %extracted_28, %extracted_28 : i32
    %127 = math.expm1 %cst_2 : f16
    %128 = affine.apply affine_map<(d0, d1, d2) -> (-(-d2 - d0 floordiv 8 - 8))>(%c4, %c5, %107)
    %129 = vector.extract_strided_slice %26 {offsets = [0], sizes = [1], strides = [1]} : vector<3x2xi1> to vector<1x2xi1>
    %130 = math.copysign %splat, %0 : tensor<7x3x3xf16>
    %131 = index.add %128, %c7
    %132 = vector.extract_strided_slice %42 {offsets = [0], sizes = [1], strides = [1]} : vector<3x7xi1> to vector<1x7xi1>
    %133 = math.roundeven %cst_4 : f32
    %134 = tensor.empty() : tensor<7xi1>
    %135 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%134, %134, %alloc_9 : tensor<7xi1>, tensor<7xi1>, memref<3x7xi1>) outs(%3 : tensor<7x3x3xi1>) {
    ^bb0(%in: i1, %in_53: i1, %in_54: i1, %out: i1):
      %251 = math.roundeven %cst_0 : f16
      %252 = vector.insertelement %cst_1, %84[%131 : index] : vector<3xf32>
      %253 = math.log2 %splat : tensor<7x3x3xf16>
      %254 = index.divu %c11, %128
      %255 = math.floor %splat : tensor<7x3x3xf16>
      %256 = arith.maxf %cst, %cst_4 : f32
      %257 = arith.ori %false_5, %false_5 : i1
      %258 = index.add %c15, %93
      %259 = arith.mulf %cst_2, %cst_2 : f16
      %260 = vector.reduction <add>, %69 : vector<7xi1> into i1
      %261 = vector.flat_transpose %69 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
      %262 = arith.maxf %cst_2, %cst_2 : f16
      %263 = index.maxu %258, %254
      %264 = arith.addi %c783155345_i64, %c783155345_i64 : i64
      %265 = arith.shli %c912109256_i32, %extracted_28 : i32
      %266 = arith.addf %cst, %cst_1 : f32
      %267 = arith.cmpi sgt, %out, %in_53 : i1
      %268 = arith.remf %cst_1, %cst_1 : f32
      %269 = vector.broadcast %c912109256_i32 : i32 to vector<3x2xi32>
      %270 = vector.gather %108[%93, %258] [%269], %26, %269 : memref<3x7xi32>, vector<3x2xi32>, vector<3x2xi1>, vector<3x2xi32> into vector<3x2xi32>
      %271 = math.absf %cst_4 : f32
      %272 = math.log1p %cst_1 : f32
      %273 = tensor.empty() : tensor<3xi1>
      %274 = tensor.empty() : tensor<7xi1>
      %275 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%273, %274, %85 : tensor<3xi1>, tensor<7xi1>, memref<7x3x3xi1>) outs(%10 : tensor<7x3x3xi1>) {
      ^bb0(%in_56: i1, %in_57: i1, %in_58: i1, %out_59: i1):
        %282 = arith.maxui %in_54, %in_56 : i1
        %283 = arith.minsi %c912109256_i32, %c912109256_i32 : i32
        %284 = math.sqrt %cst_1 : f32
        %285 = index.add %c11, %35
        %286 = vector.flat_transpose %261 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
        %287 = arith.remui %c-4009_i16, %c-4009_i16 : i16
        %288 = math.fma %expanded, %expanded, %expanded : tensor<7x3x3x1xf16>
        %cast_60 = tensor.cast %18 : tensor<3x7x3xi32> to tensor<?x?x?xi32>
        %289 = vector.broadcast %c0 : index to vector<3xindex>
        vector.scatter %alloc_9[%c1, %c1] [%289], %110, %110 : memref<3x7xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
        %290 = math.absf %0 : tensor<7x3x3xf16>
        %291 = arith.minf %cst_1, %cst_1 : f32
        %292 = vector.multi_reduction <maxsi>, %286, %286 [] : vector<7xi1> to vector<7xi1>
        %293 = arith.divui %false_5, %in_54 : i1
        %294 = vector.broadcast %90 : index to vector<7xindex>
        %295 = vector.broadcast %c1969275858_i32 : i32 to vector<7xi32>
        vector.scatter %alloc[%c2, %c1] [%294], %286, %295 : memref<3x7xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
        %296 = arith.minf %cst_2, %cst_2 : f16
        %inserted_61 = tensor.insert %extracted_24 into %7[%c0, %c6] : tensor<2x7xi1>
        %inserted_62 = tensor.insert %cst_0 into %expanded[%c4, %c2, %c1, %c0] : tensor<7x3x3x1xf16>
        %297 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %48, %48, %cst_4 : vector<3xf32>, vector<3xf32> into f32
        %298 = index.castu %in : i1 to index
        %299 = arith.addi %in_56, %in_54 : i1
        %300 = arith.addf %cst_0, %cst_0 : f16
        bufferization.dealloc_tensor %11 : tensor<7x3x3xi32>
        %301 = math.sqrt %expanded : tensor<7x3x3x1xf16>
        %302 = index.add %90, %c15
        %303 = vector.multi_reduction <maxf>, %29, %cst [0] : vector<3xf32> to f32
        %304 = vector.broadcast %in_53 : i1 to vector<7x7xi1>
        %305 = vector.outerproduct %69, %69, %304 {kind = #vector.kind<add>} : vector<7xi1>, vector<7xi1>
        %306 = vector.extract_strided_slice %26 {offsets = [1], sizes = [2], strides = [1]} : vector<3x2xi1> to vector<2x2xi1>
        %alloca_63 = memref.alloca() : memref<7x3x3xf16>
        %307 = arith.xori %c783155345_i64, %c783155345_i64 : i64
        %308 = math.atan2 %splat, %0 : tensor<7x3x3xf16>
        %309 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 mod 16, d2, d0 * 2, d0)>(%285, %285, %c10, %59)
        %310 = arith.xori %extracted_24, %extracted_24 : i1
        linalg.yield %extracted : i1
      } -> tensor<7x3x3xi1>
      %alloca_55 = memref.alloca() : memref<7x3x3xi16>
      %276 = index.divu %90, %c15
      %277 = math.expm1 %0 : tensor<7x3x3xf16>
      memref.tensor_store %72, %alloc_18 : memref<3x2xi64>
      %278 = index.maxu %c11, %59
      %279 = math.roundeven %expanded : tensor<7x3x3x1xf16>
      %280 = arith.divui %c951144787_i64, %c951144787_i64 : i64
      memref.alloca_scope  {
        %282 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, -d0, d0 + 8)>(%91, %c0, %c1, %c11)
        %extracted_56 = tensor.extract %12[%c0, %c2] : tensor<3x7xi1>
        %283 = arith.ceildivsi %in_54, %in : i1
        %284 = affine.max affine_map<(d0, d1, d2, d3) -> (((-(d3 - 64)) mod 2) mod 32, d1, d0, d2)>(%93, %62, %c14, %c7)
        %285 = arith.shrui %true_3, %false_6 : i1
        %286 = math.tan %cst_2 : f16
        memref.tensor_store %16, %54 : memref<2x7xi1>
        %287 = arith.minf %cst_1, %cst : f32
        memref.assume_alignment %81, 16 : memref<7x3x3xi1>
        %288 = math.round %0 : tensor<7x3x3xf16>
        %289 = math.ctlz %true_3 : i1
        %inserted_57 = tensor.insert %false into %13[%c0, %c3] : tensor<2x7xi1>
        %false_58 = arith.constant false
        %false_59 = arith.constant false
        %290 = vector.transfer_read %3[%258, %c14, %37], %false_59 {permutation_map = affine_map<(d0, d1, d2) -> (d0, 0)>} : tensor<7x3x3xi1>, vector<3x7xi1>
        %291 = vector.splat %276 : vector<2x7xindex>
        %292 = vector.insertelement %in, %110[%107 : index] : vector<3xi1>
        %293 = arith.minsi %false, %out : i1
        %294 = math.rsqrt %cst_1 : f32
        %cst_60 = arith.constant 3.302400e+04 : f16
        bufferization.dealloc_tensor %4 : tensor<2x7xi1>
        %295 = index.maxs %254, %254
        %from_elements_61 = tensor.from_elements %c951144787_i64, %c951144787_i64, %c783155345_i64, %c951144787_i64, %c951144787_i64, %c951144787_i64 : tensor<3x2xi64>
        %296 = arith.minsi %extracted, %in : i1
        %297 = math.round %0 : tensor<7x3x3xf16>
        %298 = arith.cmpf ueq, %cst_2, %cst_0 : f16
        memref.assume_alignment %alloc_18, 8 : memref<3x2xi64>
        %299 = memref.atomic_rmw maxs %c-4009_i16, %alloc_17[%c2, %c1] : (i16, memref<3x7xi16>) -> i16
        %300 = math.tan %splat : tensor<7x3x3xf16>
        %inserted_62 = tensor.insert %extracted_56 into %10[%c1, %c1, %c2] : tensor<7x3x3xi1>
        %301 = vector.splat %cst : vector<7x3x3xf32>
        %302 = vector.flat_transpose %29 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
        %303 = memref.atomic_rmw mulf %cst_4, %alloc_11[%c1, %c1] : (f32, memref<3x2xf32>) -> f32
        bufferization.dealloc_tensor %1 : tensor<2x7xi1>
      }
      scf.execute_region {
        affine.store %c8066_i16, %alloc_16[%c5, %c6, %c14] : memref<7x3x3xi16>
        %282 = math.ceil %cst_1 : f32
        %283 = arith.xori %in, %in_53 : i1
        %284 = index.add %278, %90
        %285 = index.divu %59, %c3
        %cast_56 = tensor.cast %8 : tensor<3x2xi16> to tensor<?x?xi16>
        %286 = math.powf %0, %0 : tensor<7x3x3xf16>
        %287 = vector.insertelement %in, %110[%c13 : index] : vector<3xi1>
        %288 = math.absf %cst_4 : f32
        %289 = math.cttz %in_53 : i1
        bufferization.dealloc_tensor %21 : tensor<7xi32>
        %290 = math.fpowi %0, %11 : tensor<7x3x3xf16>, tensor<7x3x3xi32>
        %291 = math.floor %0 : tensor<7x3x3xf16>
        %292 = index.sub %c5, %c12
        %293 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%125, %c3, %90, %28)
        %expanded_57 = tensor.expand_shape %10 [[0], [1], [2, 3]] : tensor<7x3x3xi1> into tensor<7x3x3x1xi1>
        scf.yield
      }
      %281 = vector.bitcast %69 : vector<7xi1> to vector<7xi1>
      linalg.yield %out : i1
    } -> tensor<7x3x3xi1>
    affine.for %arg2 = 0 to 59 {
    }
    %136 = math.copysign %cst_4, %cst_1 : f32
    %137 = arith.addf %cst_0, %cst_0 : f16
    %138 = arith.maxsi %c951144787_i64, %c951144787_i64 : i64
    %139 = index.castu %28 : index to i32
    %inserted = tensor.insert %true_3 into %13[%c1, %c2] : tensor<2x7xi1>
    %140 = vector.flat_transpose %69 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
    %141 = arith.ceildivsi %c-4009_i16, %c-4009_i16 : i16
    %142 = scf.index_switch %131 -> vector<3x7xi64> 
    case 1 {
      %251 = index.mul %90, %131
      %252 = arith.ori %c-4009_i16, %c8066_i16 : i16
      %cast_53 = tensor.cast %8 : tensor<3x2xi16> to tensor<?x?xi16>
      %253 = math.absi %4 : tensor<2x7xi1>
      %false_54 = arith.constant false
      %false_55 = arith.constant false
      %254 = vector.transfer_read %10[%c9, %28, %251], %false_55 {permutation_map = affine_map<(d0, d1, d2) -> (d0, 0)>} : tensor<7x3x3xi1>, vector<7x3xi1>
      %255 = index.divu %c11, %c11
      %256 = affine.apply affine_map<(d0, d1, d2) -> (d0 * 512 + 8)>(%91, %c7, %251)
      %257 = arith.cmpi ult, %extracted_28, %extracted_28 : i32
      %258 = math.exp %15 : tensor<2x7xf16>
      %259 = math.tan %15 : tensor<2x7xf16>
      %260 = vector.broadcast %cst : f32 to vector<3x2xf32>
      %261 = vector.fma %260, %260, %260 : vector<3x2xf32>
      %262 = math.ctlz %13 : tensor<2x7xi1>
      %263 = vector.create_mask %c15, %c4, %c8 : vector<7x3x3xi1>
      %264 = arith.remf %cst_4, %cst : f32
      %265 = arith.cmpf ogt, %cst_2, %cst_2 : f16
      %266 = vector.bitcast %95 : vector<3x2xi1> to vector<3x2xi1>
      %267 = vector.broadcast %c951144787_i64 : i64 to vector<3x7xi64>
      scf.yield %267 : vector<3x7xi64>
    }
    case 2 {
      %251 = math.fma %cst_1, %cst_1, %cst_1 : f32
      memref.tensor_store %5, %alloc_17 : memref<3x7xi16>
      bufferization.dealloc_tensor %2 : tensor<3x7xi16>
      %252 = index.divu %91, %c8
      %253 = vector.insertelement %cst_1, %48[%c2 : index] : vector<3xf32>
      %254 = affine.min affine_map<(d0, d1) -> ((-d0) ceildiv 8, 0, d1, -d0)>(%c14, %c0)
      %255 = vector.reduction <minf>, %29 : vector<3xf32> into f32
      %256 = vector.flat_transpose %48 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
      %257 = math.ceil %0 : tensor<7x3x3xf16>
      affine.store %cst_4, %alloc_11[%c1, %c4] : memref<3x2xf32>
      vector.print %140 : vector<7xi1>
      %c2975_i16 = arith.constant 2975 : i16
      %expanded_53 = tensor.expand_shape %0 [[0], [1], [2, 3]] : tensor<7x3x3xf16> into tensor<7x3x3x1xf16>
      %258 = arith.minsi %c951144787_i64, %c951144787_i64 : i64
      %259 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d0 - (d0 - 8) floordiv 32) mod 128)>(%79, %131, %91, %c8)
      %260 = scf.index_switch %c8 -> index 
      case 1 {
        %262 = math.tan %15 : tensor<2x7xf16>
        %false_54 = index.bool.constant false
        %263 = memref.load %alloc_9[%c0, %c6] : memref<3x7xi1>
        %264 = arith.addi %c-4009_i16, %c-4009_i16 : i16
        %265 = vector.bitcast %132 : vector<1x7xi1> to vector<1x7xi1>
        %266 = math.ceil %15 : tensor<2x7xf16>
        %267 = arith.divui %false_5, %false : i1
        vector.print %84 : vector<3xf32>
        %alloc_55 = memref.alloc() : memref<3x7xi16>
        memref.copy %alloc_17, %alloc_55 : memref<3x7xi16> to memref<3x7xi16>
        %268 = affine.min affine_map<(d0, d1) -> (-(d0 - 4), d0 + d1 + (d0 ceildiv 2 + 16) mod 32, (d0 ceildiv 2 + 16) mod 32, (d0 ceildiv 2 + 16) mod 32 + d0 ceildiv 8)>(%254, %c4)
        %269 = vector.insert %cst_4, %20 [0] : f32 into vector<3xf32>
        %270 = math.log %15 : tensor<2x7xf16>
        %271 = arith.divui %extracted_28, %extracted_28 : i32
        %true_56 = arith.constant true
        %false_57 = arith.constant false
        %272 = vector.transfer_read %4[%79, %28], %false_57 : tensor<2x7xi1>, vector<i1>
        %273 = math.powf %cst_1, %cst_4 : f32
        %274 = math.log2 %cst_0 : f16
        scf.yield %79 : index
      }
      default {
        %262 = math.fpowi %cst_4, %extracted_28 : f32, i32
        %263 = math.absi %75 : tensor<3x7xi16>
        %264 = affine.min affine_map<(d0, d1) -> (0)>(%252, %35)
        %265 = math.atan2 %cst_4, %cst_4 : f32
        %c802138906_i64 = arith.constant 802138906 : i64
        %266 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %20, %84, %cst : vector<3xf32>, vector<3xf32> into f32
        %rank = tensor.rank %9 : tensor<3x2xi64>
        %267 = math.absi %extracted_24 : i1
        %268 = arith.cmpf ord, %cst_2, %cst_0 : f16
        %269 = bufferization.to_memref %0 : memref<7x3x3xf16>
        %270 = arith.cmpf ugt, %cst, %cst_4 : f32
        %271 = memref.load %alloc_10[%c4, %c0, %c0] : memref<7x3x3xi32>
        %272 = math.absf %cst : f32
        %273 = arith.shli %c1969275858_i32, %extracted_28 : i32
        %274 = math.sqrt %expanded_53 : tensor<7x3x3x1xf16>
        %275 = math.cttz %75 : tensor<3x7xi16>
        scf.yield %59 : index
      }
      %261 = vector.broadcast %c783155345_i64 : i64 to vector<3x7xi64>
      scf.yield %261 : vector<3x7xi64>
    }
    case 3 {
      %251 = vector.insertelement %cst_1, %48[%131 : index] : vector<3xf32>
      %252 = arith.remf %cst_1, %cst_4 : f32
      %253 = math.powf %cst_1, %cst_4 : f32
      %254 = index.sub %c1, %131
      %255 = arith.xori %c-4009_i16, %c-4009_i16 : i16
      %256 = vector.insertelement %true, %110[%90 : index] : vector<3xi1>
      %257 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%93, %37, %79, %c5)
      %alloca_53 = memref.alloca() : memref<3x2xf32>
      %258 = affine.max affine_map<(d0) -> (-((d0 - 1) ceildiv 8) + (d0 - 1) ceildiv 8 + (d0 - 1) ceildiv 8 + d0, d0 mod 128, (d0 - 1) ceildiv 8 + (d0 - 1) ceildiv 8 + d0)>(%93)
      %259 = arith.shrui %c-4009_i16, %c-4009_i16 : i16
      %260 = affine.max affine_map<(d0, d1, d2, d3) -> ((d3 + 64) * 2)>(%c7, %c11, %c3, %79)
      %261 = memref.load %alloc_7[%c1, %c0] : memref<3x2xi16>
      scf.index_switch %c1 
      case 1 {
        %265 = math.atan2 %cst_0, %cst_2 : f16
        %266 = index.ceildivs %79, %257
        %expanded_55 = tensor.expand_shape %3 [[0], [1], [2, 3]] : tensor<7x3x3xi1> into tensor<7x3x3x1xi1>
        %dest_56, %accumulated_value_57 = vector.scan <mul>, %95, %110 {inclusive = true, reduction_dim = 1 : i64} : vector<3x2xi1>, vector<3xi1>
        %267 = arith.addf %cst_0, %cst_2 : f16
        %inserted_58 = tensor.insert %extracted into %4[%c0, %c4] : tensor<2x7xi1>
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_59 = arith.constant 0 : i64
        %268 = vector.transfer_read %73[%260, %c15], %c0_i64_59 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<3x2xi64>, vector<3xi64>
        %269 = math.log2 %splat : tensor<7x3x3xf16>
        %270 = memref.load %73[%c1, %c1] : memref<3x2xi64>
        %271 = math.expm1 %cst_0 : f16
        %272 = bufferization.to_memref %expanded_55 : memref<7x3x3x1xi1>
        %273 = math.round %cst_0 : f16
        %274 = vector.broadcast %cst : f32 to vector<3x3xf32>
        %275 = vector.outerproduct %48, %84, %274 {kind = #vector.kind<mul>} : vector<3xf32>, vector<3xf32>
        %cast_60 = tensor.cast %72 : tensor<3x2xi64> to tensor<?x?xi64>
        %cst_61 = arith.constant 1.60286157E+9 : f32
        %276 = arith.cmpi sge, %true_3, %false_6 : i1
        scf.yield
      }
      case 2 {
        %265 = index.castu %260 : index to i32
        %266 = arith.negf %cst_1 : f32
        %267 = index.sizeof
        %268 = index.divu %93, %62
        %269 = arith.remf %cst_1, %cst : f32
        %alloc_55 = memref.alloc() : memref<7x13xi1>
        %270 = tensor.empty() : tensor<2x13xi1>
        %271 = linalg.matmul ins(%17, %alloc_55 : tensor<2x7xi1>, memref<7x13xi1>) outs(%270 : tensor<2x13xi1>) -> tensor<2x13xi1>
        %272 = index.ceildivu %90, %c7
        affine.store %c783155345_i64, %alloc_21[%c1, %c6] : memref<3x7xi64>
        %273 = math.ceil %0 : tensor<7x3x3xf16>
        %274 = vector.multi_reduction <add>, %69, %69 [] : vector<7xi1> to vector<7xi1>
        %275 = index.divu %28, %c2
        %276 = affine.load %81[%c6, %c6, %c2] : memref<7x3x3xi1>
        %277 = math.expm1 %expanded : tensor<7x3x3x1xf16>
        %278 = math.floor %cst_0 : f16
        %279 = index.divu %c0, %c10
        %280 = math.absi %true : i1
        scf.yield
      }
      case 3 {
        bufferization.dealloc_tensor %7 : tensor<2x7xi1>
        %cast_55 = tensor.cast %15 : tensor<2x7xf16> to tensor<?x?xf16>
        %265 = arith.remui %false, %extracted : i1
        %266 = arith.cmpf uge, %cst_1, %cst_1 : f32
        %267 = arith.ceildivsi %false_5, %false_5 : i1
        %expanded_56 = tensor.expand_shape %16 [[0], [1, 2]] : tensor<2x7xi1> into tensor<2x7x1xi1>
        %extracted_57 = tensor.extract %72[%c1, %c1] : tensor<3x2xi64>
        %268 = vector.bitcast %20 : vector<3xf32> to vector<3xf32>
        %269 = arith.divui %c-4009_i16, %c8066_i16 : i16
        %270 = math.fpowi %0, %11 : tensor<7x3x3xf16>, tensor<7x3x3xi32>
        %dest_58, %accumulated_value_59 = vector.scan <minui>, %67, %140 {inclusive = true, reduction_dim = 0 : i64} : vector<3x7xi1>, vector<7xi1>
        %271 = arith.shli %extracted_24, %extracted_24 : i1
        %272 = math.floor %cst_4 : f32
        affine.store %cst_4, %alloc_13[%c7, %c15] : memref<3x2xf32>
        %273 = math.log2 %15 : tensor<2x7xf16>
        %alloca_60 = memref.alloca() : memref<3x2xi64>
        scf.yield
      }
      default {
        %265 = arith.cmpi ugt, %extracted, %false_5 : i1
        %266 = arith.minsi %c8066_i16, %c-4009_i16 : i16
        %267 = index.ceildivs %125, %c13
        %alloca_55 = memref.alloca() : memref<3x2xi64>
        %268 = math.log1p %cst_1 : f32
        %269 = arith.xori %c-4009_i16, %c-4009_i16 : i16
        %270 = index.sub %28, %107
        %271 = vector.broadcast %37 : index to vector<7xindex>
        %272 = vector.broadcast %c1969275858_i32 : i32 to vector<7xi32>
        vector.scatter %alloc_8[%c0, %c3] [%271], %140, %272 : memref<2x7xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
        %273 = arith.divf %cst_0, %cst_0 : f16
        affine.store %false, %85[%c3, %c10, %c13] : memref<7x3x3xi1>
        %274 = math.log %cst_0 : f16
        %275 = vector.broadcast %cst_4 : f32 to vector<3x3xf32>
        %276 = vector.outerproduct %29, %20, %275 {kind = #vector.kind<add>} : vector<3xf32>, vector<3xf32>
        %277 = math.round %15 : tensor<2x7xf16>
        %278 = math.expm1 %15 : tensor<2x7xf16>
        %279 = vector.extract %69[0] : vector<7xi1>
        %280 = math.fma %0, %0, %0 : tensor<7x3x3xf16>
      }
      %alloc_54 = memref.alloc() : memref<7x3x3xf16>
      memref.tensor_store %0, %alloc_54 : memref<7x3x3xf16>
      %262 = math.sqrt %expanded : tensor<7x3x3x1xf16>
      %263 = math.log2 %cst_2 : f16
      %264 = vector.broadcast %c951144787_i64 : i64 to vector<3x7xi64>
      scf.yield %264 : vector<3x7xi64>
    }
    case 4 {
      %251 = math.log1p %cst_1 : f32
      %252 = vector.insert %cst, %20 [2] : f32 into vector<3xf32>
      %253 = math.exp %cst_1 : f32
      %254 = math.exp %0 : tensor<7x3x3xf16>
      memref.tensor_store %10, %alloc_20 : memref<7x3x3xi1>
      %alloc_53 = memref.alloc() : memref<7x3xi32>
      memref.tensor_store %19, %alloc_53 : memref<7x3xi32>
      %255 = vector.bitcast %29 : vector<3xf32> to vector<3xf32>
      %256 = math.expm1 %cst : f32
      %alloc_54 = memref.alloc() : memref<7x13xi16>
      %257 = tensor.empty() : tensor<3x13xi16>
      %258 = linalg.matmul ins(%5, %alloc_54 : tensor<3x7xi16>, memref<7x13xi16>) outs(%257 : tensor<3x13xi16>) -> tensor<3x13xi16>
      %259 = index.mul %c2, %128
      %inserted_55 = tensor.insert %c912109256_i32 into %22[] : tensor<i32>
      %260 = tensor.empty() : tensor<7x3x3x1xf16>
      %mapped_56 = linalg.map ins(%expanded, %expanded : tensor<7x3x3x1xf16>, tensor<7x3x3x1xf16>) outs(%260 : tensor<7x3x3x1xf16>)
        (%in: f16, %in_58: f16) {
          %264 = index.floordivs %c11, %c11
          %265 = arith.maxf %cst_1, %cst_4 : f32
          %alloc_59 = memref.alloc() : memref<7x2xi1>
          %266 = tensor.empty() : tensor<3x2xi1>
          %267 = linalg.matmul ins(%12, %alloc_59 : tensor<3x7xi1>, memref<7x2xi1>) outs(%266 : tensor<3x2xi1>) -> tensor<3x2xi1>
          %268 = vector.broadcast %true_3 : i1 to vector<i1>
          %269 = vector.transfer_write %268, %7[%91, %28] : vector<i1>, tensor<2x7xi1>
          %270 = vector.extract %29[2] : vector<3xf32>
          %271 = arith.shli %34, %extracted_28 : i32
          %extracted_60 = tensor.extract %13[%c1, %c5] : tensor<2x7xi1>
          %cst_61 = arith.constant 2.056310e+09 : f32
          %272 = tensor.empty(%107) : tensor<?x2xi32>
          %273 = arith.maxui %extracted_28, %extracted_28 : i32
          %274 = index.divu %c2, %c8
          %275 = math.round %260 : tensor<7x3x3x1xf16>
          %c-15052_i16 = arith.constant -15052 : i16
          %276 = math.ceil %cst : f32
          %277 = index.ceildivs %c1, %c7
          %278 = arith.remsi %false_6, %false_5 : i1
          %279 = index.floordivs %37, %131
          %280 = index.add %62, %259
          %281 = arith.remsi %false_5, %false : i1
          %282 = math.log1p %15 : tensor<2x7xf16>
          memref.assume_alignment %73, 8 : memref<3x2xi64>
          memref.assume_alignment %alloc_21, 16 : memref<3x7xi64>
          %283 = arith.mulf %cst_0, %in_58 : f16
          %284 = arith.divui %c8066_i16, %c-4009_i16 : i16
          %285 = vector.broadcast %extracted_24 : i1 to vector<2xi1>
          %286 = vector.multi_reduction <minsi>, %26, %285 [0] : vector<3x2xi1> to vector<2xi1>
          %287 = index.add %91, %91
          %288 = arith.shli %c1969275858_i32, %c912109256_i32 : i32
          memref.tensor_store %8, %alloc_7 : memref<3x2xi16>
          %289 = math.powf %15, %15 : tensor<2x7xf16>
          %290 = arith.minsi %34, %34 : i32
          %291 = math.tanh %cst : f32
          %292 = vector.bitcast %255 : vector<3xf32> to vector<3xf32>
          %cst_62 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_62 : f16
        }
      %alloca_57 = memref.alloca() : memref<7x3x3xi64>
      %261 = math.round %cst_0 : f16
      %262 = affine.max affine_map<(d0, d1) -> ((-(d0 - 128)) mod 16, d1)>(%c3, %91)
      scf.index_switch %c10 
      case 1 {
        %264 = math.expm1 %15 : tensor<2x7xf16>
        %cst_58 = arith.constant 1.000000e+00 : f32
        %cst_59 = arith.constant 0.000000e+00 : f32
        %265 = vector.transfer_read %alloc_12[%35, %37], %cst_59 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<2x7xf32>, vector<3xf32>
        %266 = math.ipowi %10, %3 : tensor<7x3x3xi1>
        %expanded_60 = tensor.expand_shape %88 [[0], [1, 2]] : tensor<3x13xi16> into tensor<3x13x1xi16>
        %267 = vector.bitcast %69 : vector<7xi1> to vector<7xi1>
        memref.assume_alignment %alloc_8, 8 : memref<2x7xi32>
        %alloca_61 = memref.alloca() : memref<2x7xi64>
        %268 = vector.load %alloc_20[%c1, %c1, %c0] : memref<7x3x3xi1>, vector<7x3x3xi1>
        %269 = math.exp2 %260 : tensor<7x3x3x1xf16>
        %270 = bufferization.clone %108 : memref<3x7xi32> to memref<3x7xi32>
        %271 = math.rsqrt %cst_2 : f16
        %272 = index.maxs %90, %c0
        vector.print %42 : vector<3x7xi1>
        %273 = index.maxs %125, %c6
        %274 = arith.remf %cst_2, %cst_0 : f16
        %275 = vector.broadcast %extracted_24 : i1 to vector<2xi1>
        %276 = vector.insert %275, %95 [1] : vector<2xi1> into vector<3x2xi1>
        scf.yield
      }
      default {
        %264 = math.fma %0, %splat, %0 : tensor<7x3x3xf16>
        %265 = math.fma %cst, %cst, %cst_1 : f32
        %266 = math.ctlz %75 : tensor<3x7xi16>
        %267 = math.expm1 %260 : tensor<7x3x3x1xf16>
        %268 = arith.maxf %cst_2, %cst_0 : f16
        %269 = arith.minsi %c951144787_i64, %c783155345_i64 : i64
        %270 = math.powf %15, %15 : tensor<2x7xf16>
        %expanded_58 = tensor.expand_shape %19 [[0], [1, 2]] : tensor<7x3xi32> into tensor<7x3x1xi32>
        %splat_59 = tensor.splat %false_5 : tensor<2x7xi1>
        %271 = arith.addi %false_5, %false : i1
        %inserted_60 = tensor.insert %true into %13[%c0, %c3] : tensor<2x7xi1>
        %272 = vector.broadcast %107 : index to vector<3xindex>
        %273 = vector.broadcast %c-4009_i16 : i16 to vector<3xi16>
        vector.scatter %alloc_16[%c3, %c2, %c2] [%272], %110, %273 : memref<7x3x3xi16>, vector<3xindex>, vector<3xi1>, vector<3xi16>
        %274 = vector.create_mask %c6, %c1 : vector<2x7xi1>
        %275 = index.divu %c9, %c6
        %cst_61 = arith.constant 4.726400e+04 : f16
        %276 = index.floordivs %c13, %c11
      }
      %263 = vector.broadcast %c783155345_i64 : i64 to vector<3x7xi64>
      scf.yield %263 : vector<3x7xi64>
    }
    default {
      %251 = math.tanh %cst_2 : f16
      %252 = vector.load %alloc_12[%c1, %c1] : memref<2x7xf32>, vector<7x3x3xf32>
      %253 = arith.cmpf olt, %cst_4, %cst_4 : f32
      %254 = index.maxs %c4, %125
      %255 = index.floordivs %28, %c15
      %256 = memref.alloca_scope  -> (memref<3x7xi64>) {
        %dest_53, %accumulated_value_54 = vector.scan <or>, %95, %110 {inclusive = false, reduction_dim = 1 : i64} : vector<3x2xi1>, vector<3xi1>
        %267 = bufferization.clone %85 : memref<7x3x3xi1> to memref<7x3x3xi1>
        %alloca_55 = memref.alloca() : memref<2x7xf16>
        %268 = math.rsqrt %15 : tensor<2x7xf16>
        %269 = index.add %c15, %c13
        %270 = arith.remf %cst_0, %cst_0 : f16
        %alloc_56 = memref.alloc() : memref<7xi32>
        memref.copy %alloc_22, %alloc_56 : memref<7xi32> to memref<7xi32>
        %271 = vector.transpose %42, [0, 1] : vector<3x7xi1> to vector<3x7xi1>
        %272 = math.cttz %10 : tensor<7x3x3xi1>
        %273 = arith.shrui %c951144787_i64, %c783155345_i64 : i64
        %274 = vector.broadcast %false_6 : i1 to vector<i1>
        %275 = vector.transfer_write %274, %17[%c5, %37] : vector<i1>, tensor<2x7xi1>
        %276 = math.absi %c783155345_i64 : i64
        memref.assume_alignment %alloc_19, 8 : memref<7x3x3xi1>
        %277 = math.atan2 %0, %splat : tensor<7x3x3xf16>
        %278 = index.ceildivu %c12, %59
        %279 = math.absi %9 : tensor<3x2xi64>
        %inserted_57 = tensor.insert %true_3 into %3[%c6, %c2, %c0] : tensor<7x3x3xi1>
        %280 = math.round %cst_2 : f16
        %inserted_58 = tensor.insert %cst_0 into %expanded[%c1, %c0, %c2, %c0] : tensor<7x3x3x1xf16>
        %281 = math.expm1 %0 : tensor<7x3x3xf16>
        %282 = arith.shli %extracted_28, %c912109256_i32 : i32
        %inserted_59 = tensor.insert %extracted_28 into %cast[%c0, %c0] : tensor<?x?xi32>
        bufferization.dealloc_tensor %14 : tensor<3x2xi64>
        %283 = tensor.empty() : tensor<2x7xi64>
        %284 = tensor.empty() : tensor<3x7xi64>
        %285 = linalg.matmul ins(%14, %283 : tensor<3x2xi64>, tensor<2x7xi64>) outs(%284 : tensor<3x7xi64>) -> tensor<3x7xi64>
        %286 = arith.minf %cst_1, %cst : f32
        %287 = arith.remf %cst_0, %cst_2 : f16
        %288 = arith.minsi %extracted_28, %34 : i32
        %289 = arith.ori %c1969275858_i32, %c1969275858_i32 : i32
        %290 = vector.splat %c2 : vector<3x2xindex>
        %291 = index.sub %c9, %91
        %292 = arith.addi %c783155345_i64, %c951144787_i64 : i64
        %293 = arith.cmpf ole, %cst, %cst : f32
        memref.alloca_scope.return %alloc_21 : memref<3x7xi64>
      }
      %257 = bufferization.to_memref %6 : memref<3x7xi64>
      %258 = arith.cmpi uge, %true, %true : i1
      %259 = math.exp %cst_4 : f32
      %260 = arith.shrui %c8066_i16, %c-4009_i16 : i16
      %261 = math.roundeven %splat : tensor<7x3x3xf16>
      %262 = vector.flat_transpose %110 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
      %263 = math.roundeven %15 : tensor<2x7xf16>
      %264 = arith.divui %c951144787_i64, %c951144787_i64 : i64
      %265 = math.exp %cst_2 : f16
      memref.assume_alignment %alloc_13, 8 : memref<3x2xf32>
      %266 = vector.broadcast %c783155345_i64 : i64 to vector<3x7xi64>
      scf.yield %266 : vector<3x7xi64>
    }
    %143 = scf.while (%arg2 = %67) : (vector<3x7xi1>) -> vector<3x7xi1> {
      %251 = index.maxu %c14, %107
      %252 = math.ctlz %7 : tensor<2x7xi1>
      %253 = vector.bitcast %26 : vector<3x2xi1> to vector<3x2xi1>
      %254 = arith.maxf %cst_2, %cst_2 : f16
      %255 = arith.remui %true_3, %false_6 : i1
      %256 = affine.if affine_set<(d0, d1, d2) : ((d0 - 8) ceildiv 64 == 0)>(%c3, %c11, %c6) -> memref<7x3x3xi64> {
        %258 = memref.atomic_rmw assign %cst_1, %alloc_13[%c1, %c1] : (f32, memref<3x2xf32>) -> f32
        %inserted_53 = tensor.insert %34 into %22[] : tensor<i32>
        memref.copy %81, %alloc_20 : memref<7x3x3xi1> to memref<7x3x3xi1>
        memref.tensor_store %14, %alloc_18 : memref<3x2xi64>
        %259 = affine.apply affine_map<(d0, d1, d2) -> ((d0 * -127 + 64) ceildiv 64)>(%251, %c0, %c12)
        %260 = arith.muli %false_5, %false : i1
        affine.store %false_5, %85[%c12, %c2, %c1] : memref<7x3x3xi1>
        %261 = affine.max affine_map<(d0, d1, d2) -> (d0 * 2, d2 - d0 * 4)>(%c14, %79, %c8)
        affine.yield %alloc_15 : memref<7x3x3xi64>
      } else {
        %258 = vector.broadcast %c4 : index to vector<2xindex>
        %259 = vector.broadcast %extracted : i1 to vector<2xi1>
        %260 = vector.broadcast %extracted_28 : i32 to vector<2xi32>
        vector.scatter %alloc[%c1, %c3] [%258], %259, %260 : memref<3x7xi32>, vector<2xindex>, vector<2xi1>, vector<2xi32>
        memref.tensor_store %17, %54 : memref<2x7xi1>
        %261 = math.ceil %cst_1 : f32
        %262 = arith.remui %c951144787_i64, %c783155345_i64 : i64
        %inserted_53 = tensor.insert %cst_2 into %0[%c0, %c1, %c2] : tensor<7x3x3xf16>
        %263 = arith.shli %c783155345_i64, %c951144787_i64 : i64
        bufferization.dealloc_tensor %0 : tensor<7x3x3xf16>
        %264 = math.fma %0, %0, %0 : tensor<7x3x3xf16>
        affine.yield %alloc_15 : memref<7x3x3xi64>
      }
      %257 = arith.remui %true, %false_6 : i1
      bufferization.dealloc_tensor %8 : tensor<3x2xi16>
      scf.condition(%true_3) %42 : vector<3x7xi1>
    } do {
    ^bb0(%arg2: vector<3x7xi1>):
      %251 = math.powf %splat, %splat : tensor<7x3x3xf16>
      %252 = affine.max affine_map<(d0, d1) -> (d1 floordiv 8, (d1 - 16) * 2)>(%131, %c3)
      %253 = index.ceildivu %c14, %c8
      %254 = math.absi %11 : tensor<7x3x3xi32>
      %255 = vector.broadcast %c8066_i16 : i16 to vector<i16>
      vector.transfer_write %255, %alloc_16[%c3, %c2, %c4] : vector<i16>, memref<7x3x3xi16>
      %256 = math.absf %cst_1 : f32
      %257 = math.absi %14 : tensor<3x2xi64>
      %258 = vector.splat %c13 : vector<7x3x3xindex>
      %259 = math.atan2 %cst_2, %cst_0 : f16
      %260 = arith.addf %cst_2, %cst_2 : f16
      %261 = memref.load %108[%c2, %c5] : memref<3x7xi32>
      %262 = vector.insertelement %false, %69[%c5 : index] : vector<7xi1>
      %263 = index.ceildivs %91, %c14
      %264 = vector.broadcast %false : i1 to vector<1xi1>
      %dest_53, %accumulated_value_54 = vector.scan <mul>, %129, %264 {inclusive = true, reduction_dim = 1 : i64} : vector<1x2xi1>, vector<1xi1>
      %265 = arith.remf %cst_2, %cst_0 : f16
      %266 = vector.bitcast %67 : vector<3x7xi1> to vector<3x7xi1>
      scf.yield %42 : vector<3x7xi1>
    }
    %144 = arith.remsi %34, %c912109256_i32 : i32
    %145 = math.powf %splat, %0 : tensor<7x3x3xf16>
    %146 = vector.flat_transpose %69 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
    %inserted_29 = tensor.insert %cst_2 into %splat[%c0, %c0, %c0] : tensor<7x3x3xf16>
    %147 = math.absf %splat : tensor<7x3x3xf16>
    %148 = arith.minsi %c951144787_i64, %c783155345_i64 : i64
    %alloca_30 = memref.alloca() : memref<7x3x3xf16>
    %cast_31 = tensor.cast %12 : tensor<3x7xi1> to tensor<?x?xi1>
    %149 = vector.broadcast %c8066_i16 : i16 to vector<3xi16>
    %150 = vector.maskedload %alloc_7[%c2, %c0], %110, %149 : memref<3x2xi16>, vector<3xi1>, vector<3xi16> into vector<3xi16>
    %151 = arith.maxf %cst_4, %cst_4 : f32
    memref.tensor_store %1, %54 : memref<2x7xi1>
    %152 = arith.minsi %false_6, %false : i1
    %153 = arith.minsi %false_5, %false_6 : i1
    %154 = math.tan %15 : tensor<2x7xf16>
    %155 = tensor.empty() : tensor<2x3xi64>
    %156 = tensor.empty() : tensor<3x3xi64>
    %157 = linalg.matmul ins(%9, %155 : tensor<3x2xi64>, tensor<2x3xi64>) outs(%156 : tensor<3x3xi64>) -> tensor<3x3xi64>
    %158 = memref.atomic_rmw minf %cst_1, %alloc_13[%c2, %c1] : (f32, memref<3x2xf32>) -> f32
    %159 = math.exp %15 : tensor<2x7xf16>
    %160 = math.log2 %0 : tensor<7x3x3xf16>
    %161 = vector.broadcast %false_6 : i1 to vector<2xi1>
    %dest, %accumulated_value = vector.scan <minsi>, %26, %161 {inclusive = true, reduction_dim = 0 : i64} : vector<3x2xi1>, vector<2xi1>
    %162 = bufferization.clone %alloc_19 : memref<7x3x3xi1> to memref<7x3x3xi1>
    %inserted_32 = tensor.insert %false_6 into %3[%c2, %c0, %c0] : tensor<7x3x3xi1>
    %alloc_33 = memref.alloc() : memref<7x7xi16>
    %163 = tensor.empty() : tensor<3x7xi16>
    %164 = linalg.matmul ins(%2, %alloc_33 : tensor<3x7xi16>, memref<7x7xi16>) outs(%163 : tensor<3x7xi16>) -> tensor<3x7xi16>
    memref.copy %alloc_18, %73 : memref<3x2xi64> to memref<3x2xi64>
    affine.store %extracted, %54[%c3, %c9] : memref<2x7xi1>
    %165 = vector.flat_transpose %20 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
    %166 = vector.broadcast %35 : index to vector<7xindex>
    vector.scatter %81[%c2, %c2, %c0] [%166], %140, %140 : memref<7x3x3xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
    %167 = math.ctlz %12 : tensor<3x7xi1>
    %168 = affine.apply affine_map<(d0) -> ((-d0) ceildiv 32)>(%c0)
    %from_elements = tensor.from_elements %c1969275858_i32, %c1969275858_i32, %extracted_28, %c912109256_i32, %extracted_28, %c912109256_i32, %extracted_28, %c1969275858_i32, %c912109256_i32, %34, %c1969275858_i32, %c1969275858_i32, %34, %34, %c912109256_i32, %c1969275858_i32, %c1969275858_i32, %c912109256_i32, %34, %extracted_28, %c1969275858_i32, %c1969275858_i32, %extracted_28, %34, %extracted_28, %c912109256_i32, %c912109256_i32, %extracted_28, %c912109256_i32, %extracted_28, %c912109256_i32, %extracted_28, %c1969275858_i32, %c1969275858_i32, %extracted_28, %c1969275858_i32, %c1969275858_i32, %extracted_28, %34, %c1969275858_i32, %c912109256_i32, %c1969275858_i32, %extracted_28, %34, %c912109256_i32, %34, %c912109256_i32, %extracted_28, %34, %c1969275858_i32, %extracted_28, %c912109256_i32, %34, %extracted_28, %c912109256_i32, %c912109256_i32, %34, %c1969275858_i32, %c912109256_i32, %34, %c1969275858_i32, %c912109256_i32, %34 : tensor<7x3x3xi32>
    %169 = vector.broadcast %cst_4 : f32 to vector<7x3x3xf32>
    %170 = vector.fma %169, %169, %169 : vector<7x3x3xf32>
    %171 = arith.cmpi ne, %false_6, %true_3 : i1
    %172 = arith.maxsi %false, %true : i1
    memref.tensor_store %9, %alloc_18 : memref<3x2xi64>
    scf.index_switch %c13 
    case 1 {
      %251 = tensor.empty() : tensor<7x13xi1>
      %252 = tensor.empty() : tensor<3x13xi1>
      %253 = linalg.matmul ins(%12, %251 : tensor<3x7xi1>, tensor<7x13xi1>) outs(%252 : tensor<3x13xi1>) -> tensor<3x13xi1>
      %254 = math.powf %cst_2, %cst_0 : f16
      %255 = arith.remui %c8066_i16, %c-4009_i16 : i16
      %256 = math.log2 %0 : tensor<7x3x3xf16>
      %257 = vector.flat_transpose %149 {columns = 3 : i32, rows = 1 : i32} : vector<3xi16> -> vector<3xi16>
      %258 = tensor.empty() : tensor<2x7xi16>
      %cst_53 = arith.constant 1.74063091E+9 : f32
      %259 = math.tanh %cst : f32
      %260 = arith.minf %cst_2, %cst_0 : f16
      %261 = math.floor %expanded : tensor<7x3x3x1xf16>
      %splat_54 = tensor.splat %false : tensor<2x7xi1>
      %262 = vector.flat_transpose %69 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
      %263 = arith.remf %cst, %cst_1 : f32
      %264 = scf.if %extracted -> (memref<3x7xi1>) {
        %267 = vector.insertelement %cst_1, %48[%79 : index] : vector<3xf32>
        bufferization.dealloc_tensor %10 : tensor<7x3x3xi1>
        bufferization.dealloc_tensor %cast : tensor<?x?xi32>
        %268 = arith.ceildivsi %c783155345_i64, %c783155345_i64 : i64
        %269 = arith.subi %true, %extracted_24 : i1
        %270 = arith.maxui %34, %34 : i32
        %271 = arith.shrui %false, %false_6 : i1
        %272 = math.atan2 %cst_4, %cst_4 : f32
        scf.yield %alloc_9 : memref<3x7xi1>
      } else {
        %267 = vector.bitcast %48 : vector<3xf32> to vector<3xf32>
        %268 = index.divs %c8, %93
        %269 = math.sqrt %15 : tensor<2x7xf16>
        %270 = arith.muli %false_6, %false : i1
        %271 = math.round %splat : tensor<7x3x3xf16>
        %272 = math.ceil %cst_2 : f16
        %273 = math.log2 %0 : tensor<7x3x3xf16>
        memref.tensor_store %72, %alloc_18 : memref<3x2xi64>
        scf.yield %alloc_9 : memref<3x7xi1>
      }
      %265 = memref.atomic_rmw minu %c-4009_i16, %alloc_7[%c2, %c1] : (i16, memref<3x2xi16>) -> i16
      %266 = math.absf %splat : tensor<7x3x3xf16>
      scf.yield
    }
    default {
      %251 = math.ceil %15 : tensor<2x7xf16>
      %252 = scf.while (%arg2 = %170) : (vector<7x3x3xf32>) -> vector<7x3x3xf32> {
        affine.store %extracted, %81[%c4, %c4, %c2] : memref<7x3x3xi1>
        %267 = vector.broadcast %cst : f32 to vector<7x3x3xf32>
        %268 = vector.fma %267, %170, %267 : vector<7x3x3xf32>
        %269 = index.floordivs %59, %c1
        bufferization.dealloc_tensor %transposed : tensor<3x7x3xi32>
        %270 = memref.load %alloc_11[%c1, %c0] : memref<3x2xf32>
        %271 = arith.maxsi %c951144787_i64, %c951144787_i64 : i64
        %272 = math.ceil %cst_0 : f16
        %273 = memref.load %alloc_9[%c0, %c2] : memref<3x7xi1>
        scf.condition(%true_3) %169 : vector<7x3x3xf32>
      } do {
      ^bb0(%arg2: vector<7x3x3xf32>):
        %267 = vector.broadcast %extracted_24 : i1 to vector<2xi1>
        %dest_53, %accumulated_value_54 = vector.scan <minui>, %129, %267 {inclusive = false, reduction_dim = 0 : i64} : vector<1x2xi1>, vector<2xi1>
        %268 = math.absf %cst_2 : f16
        affine.store %c1969275858_i32, %alloc_22[%c9] : memref<7xi32>
        %269 = vector.broadcast %c-4009_i16 : i16 to vector<3x3xi16>
        %270 = vector.outerproduct %150, %150, %269 {kind = #vector.kind<minsi>} : vector<3xi16>, vector<3xi16>
        %271 = math.expm1 %0 : tensor<7x3x3xf16>
        %from_elements_55 = tensor.from_elements %cst_4, %cst, %cst_1, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst, %cst_1, %cst_1, %cst_4, %cst_4, %cst_4, %cst, %cst_1, %cst_4, %cst_4, %cst, %cst_4, %cst, %cst_1, %cst, %cst, %cst_1, %cst, %cst, %cst, %cst, %cst_1, %cst_4, %cst_1, %cst, %cst_1, %cst, %cst_4, %cst_1, %cst_1, %cst_4, %cst_4, %cst_4, %cst_1, %cst_4, %cst, %cst, %cst_1, %cst, %cst, %cst, %cst_4, %cst_4, %cst_4, %cst_1, %cst_4, %cst_1, %cst, %cst_4, %cst, %cst, %cst_4, %cst_1, %cst_1, %cst : tensor<7x3x3xf32>
        %272 = arith.remsi %false, %false : i1
        %273 = math.absi %false : i1
        %274 = math.cttz %7 : tensor<2x7xi1>
        %275 = math.fpowi %0, %11 : tensor<7x3x3xf16>, tensor<7x3x3xi32>
        %276 = vector.insertelement %c8066_i16, %150[%90 : index] : vector<3xi16>
        %277 = vector.insertelement %false_5, %69[%c2 : index] : vector<7xi1>
        %278 = math.log1p %from_elements_55 : tensor<7x3x3xf32>
        %279 = vector.create_mask %c8, %c10, %c0 : vector<7x3x3xi1>
        %280 = vector.load %alloc_10[%c3, %c1, %c1] : memref<7x3x3xi32>, vector<3x2xi32>
        %281 = arith.xori %34, %34 : i32
        scf.yield %170 : vector<7x3x3xf32>
      }
      %253 = scf.execute_region -> tensor<3x7xi16> {
        %267 = arith.remsi %false, %true_3 : i1
        %268 = math.tanh %0 : tensor<7x3x3xf16>
        affine.store %c-4009_i16, %alloc_17[%c7, %c11] : memref<3x7xi16>
        %269 = vector.multi_reduction <maxsi>, %150, %150 [] : vector<3xi16> to vector<3xi16>
        %270 = arith.remui %false_6, %false_6 : i1
        %271 = arith.divui %c912109256_i32, %34 : i32
        %272 = math.floor %15 : tensor<2x7xf16>
        %273 = math.cttz %10 : tensor<7x3x3xi1>
        %expanded_53 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<3x7xi64> into tensor<3x7x1xi64>
        %274 = math.log1p %splat : tensor<7x3x3xf16>
        %275 = arith.remsi %extracted_28, %c912109256_i32 : i32
        %276 = affine.max affine_map<(d0) -> ((d0 mod 8) ceildiv 64)>(%37)
        %277 = arith.shrui %34, %c1969275858_i32 : i32
        %278 = vector.broadcast %true_3 : i1 to vector<7x7xi1>
        %279 = vector.outerproduct %69, %146, %278 {kind = #vector.kind<and>} : vector<7xi1>, vector<7xi1>
        %280 = vector.splat %false : vector<2x7xi1>
        %281 = math.log1p %cst_0 : f16
        scf.yield %75 : tensor<3x7xi16>
      }
      %254 = index.ceildivs %c15, %c14
      %255 = arith.minf %cst_1, %cst : f32
      %256 = arith.minsi %extracted_24, %true : i1
      %257 = vector.broadcast %c-4009_i16 : i16 to vector<13xi16>
      %258 = vector.transfer_write %257, %163[%c15, %35] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<13xi16>, tensor<3x7xi16>
      %259 = memref.atomic_rmw muli %c783155345_i64, %alloc_18[%c1, %c1] : (i64, memref<3x2xi64>) -> i64
      %260 = math.log2 %expanded : tensor<7x3x3x1xf16>
      scf.execute_region {
        %267 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, d3)>(%c1, %93, %c11, %c3)
        %dest_53, %accumulated_value_54 = vector.scan <add>, %132, %140 {inclusive = true, reduction_dim = 0 : i64} : vector<1x7xi1>, vector<7xi1>
        %268 = vector.broadcast %c951144787_i64 : i64 to vector<3x7xi64>
        %269 = vector.broadcast %extracted_28 : i32 to vector<3x7xi32>
        %270 = vector.gather %alloc_21[%37, %c2] [%269], %42, %268 : memref<3x7xi64>, vector<3x7xi32>, vector<3x7xi1>, vector<3x7xi64> into vector<3x7xi64>
        %from_elements_55 = tensor.from_elements %cst, %cst_1, %cst, %cst_1, %cst_1, %cst_1 : tensor<3x2xf32>
        %271 = arith.addf %cst_0, %cst_2 : f16
        %272 = vector.insert %cst_1, %20 [0] : f32 into vector<3xf32>
        %273 = arith.negf %cst : f32
        %274 = vector.reduction <mul>, %110 : vector<3xi1> into i1
        %275 = vector.splat %c6 : vector<3x7xindex>
        %276 = memref.load %alloc_10[%c0, %c2, %c2] : memref<7x3x3xi32>
        %277 = vector.multi_reduction <or>, %257, %257 [] : vector<13xi16> to vector<13xi16>
        %278 = math.exp %0 : tensor<7x3x3xf16>
        %279 = arith.andi %c912109256_i32, %extracted_28 : i32
        %280 = arith.minsi %extracted_28, %c912109256_i32 : i32
        %281 = vector.bitcast %67 : vector<3x7xi1> to vector<3x7xi1>
        %282 = vector.broadcast %false_5 : i1 to vector<2xi1>
        %283 = vector.maskedload %162[%c5, %c1, %c2], %282, %282 : memref<7x3x3xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
        scf.yield
      }
      %261 = arith.negf %cst_2 : f16
      %262 = math.tan %cst_2 : f16
      %263 = vector.insertelement %c-4009_i16, %149[%168 : index] : vector<3xi16>
      %264 = arith.maxf %cst_2, %cst_0 : f16
      %265 = vector.insert %false_6, %140 [5] : i1 into vector<7xi1>
      %266 = math.expm1 %splat : tensor<7x3x3xf16>
    }
    %173 = vector.broadcast %cst_1 : f32 to vector<3x7xf32>
    %174 = vector.fma %173, %173, %173 : vector<3x7xf32>
    %175 = vector.bitcast %48 : vector<3xf32> to vector<3xf32>
    %176 = index.ceildivu %93, %c8
    %177 = math.absf %cst_0 : f16
    %178 = vector.multi_reduction <maxf>, %169, %29 [0, 2] : vector<7x3x3xf32> to vector<3xf32>
    %179 = vector.broadcast %cst : f32 to vector<7xf32>
    %dest_34, %accumulated_value_35 = vector.scan <add>, %174, %179 {inclusive = true, reduction_dim = 0 : i64} : vector<3x7xf32>, vector<7xf32>
    %180 = affine.if affine_set<(d0) : ((((d0 * 2) floordiv 8) mod 16) * 16 == 0, d0 * 4 >= 0, -d0 >= 0)>(%c2) -> f32 {
      %251 = scf.while (%arg2 = %alloc_11) : (memref<3x2xf32>) -> memref<3x2xf32> {
        %260 = math.fpowi %cst_2, %c1969275858_i32 : f16, i32
        %261 = vector.broadcast %cst : f32 to vector<3x2xf32>
        %262 = vector.fma %261, %261, %261 : vector<3x2xf32>
        %263 = math.log %15 : tensor<2x7xf16>
        affine.store %cst_1, %alloc_14[%c3, %c2] : memref<2x7xf32>
        %264 = tensor.empty() : tensor<3x2xf32>
        %265 = vector.broadcast %true_3 : i1 to vector<7x3x3xi1>
        %266 = vector.broadcast %extracted_28 : i32 to vector<7x3x3xi32>
        %267 = vector.gather %264[%c3, %c8] [%266], %265, %170 : tensor<3x2xf32>, vector<7x3x3xi32>, vector<7x3x3xi1>, vector<7x3x3xf32> into vector<7x3x3xf32>
        %268 = arith.minsi %true, %false : i1
        %269 = arith.addi %extracted_24, %true : i1
        %270 = math.ctlz %extracted_28 : i32
        scf.condition(%false) %alloc_13 : memref<3x2xf32>
      } do {
      ^bb0(%arg2: memref<3x2xf32>):
        %260 = arith.negf %cst : f32
        %261 = math.log2 %15 : tensor<2x7xf16>
        %262 = arith.mulf %cst_1, %cst_1 : f32
        %inserted_54 = tensor.insert %34 into %22[] : tensor<i32>
        %inserted_55 = tensor.insert %cst_2 into %15[%c1, %c3] : tensor<2x7xf16>
        affine.store %false_6, %81[%c1, %c14, %c8] : memref<7x3x3xi1>
        %263 = vector.create_mask %c4, %c15 : vector<3x2xi1>
        %264 = math.cttz %false_5 : i1
        %265 = index.add %c2, %168
        %266 = math.log %cst : f32
        %267 = arith.remui %c783155345_i64, %c783155345_i64 : i64
        %alloc_56 = memref.alloc() : memref<7x13xi1>
        %268 = tensor.empty() : tensor<3x13xi1>
        %269 = linalg.matmul ins(%12, %alloc_56 : tensor<3x7xi1>, memref<7x13xi1>) outs(%268 : tensor<3x13xi1>) -> tensor<3x13xi1>
        %270 = math.powf %0, %0 : tensor<7x3x3xf16>
        %271 = arith.addf %cst_0, %cst_2 : f16
        %collapsed_57 = tensor.collapse_shape %156 [[0, 1]] : tensor<3x3xi64> into tensor<9xi64>
        %272 = math.cttz %14 : tensor<3x2xi64>
        scf.yield %arg2 : memref<3x2xf32>
      }
      %false_53 = arith.constant false
      %252 = math.expm1 %cst_4 : f32
      %253 = math.tanh %15 : tensor<2x7xf16>
      %254 = arith.minsi %c8066_i16, %c8066_i16 : i16
      %255 = math.ctlz %2 : tensor<3x7xi16>
      %256 = vector.broadcast %c783155345_i64 : i64 to vector<3x7xi64>
      %257 = vector.broadcast %c912109256_i32 : i32 to vector<3x7xi32>
      %258 = vector.gather %alloc_15[%c7, %c5, %c3] [%257], %42, %256 : memref<7x3x3xi64>, vector<3x7xi32>, vector<3x7xi1>, vector<3x7xi64> into vector<3x7xi64>
      %259 = arith.addf %cst_1, %cst_4 : f32
      affine.yield %cst : f32
    } else {
      %251 = arith.cmpi ult, %true, %false_6 : i1
      %252 = math.exp %0 : tensor<7x3x3xf16>
      %253 = vector.flat_transpose %149 {columns = 3 : i32, rows = 1 : i32} : vector<3xi16> -> vector<3xi16>
      %254 = arith.remsi %false_6, %false : i1
      %255 = arith.cmpi ne, %false_6, %false_6 : i1
      %256 = vector.broadcast %c8066_i16 : i16 to vector<3x3xi16>
      %257 = vector.outerproduct %253, %150, %256 {kind = #vector.kind<minui>} : vector<3xi16>, vector<3xi16>
      %258 = math.atan2 %cst_4, %cst_1 : f32
      %259 = affine.min affine_map<(d0) -> (d0 mod 8, ((d0 - 16) * 2 - (d0 - 16) ceildiv 32) * 2, d0, (d0 - 16) * 2 - (d0 - 16) ceildiv 32)>(%c6)
      affine.yield %cst_1 : f32
    }
    %181 = index.divu %35, %37
    %182 = math.round %15 : tensor<2x7xf16>
    %183 = affine.min affine_map<(d0, d1) -> (-(-d1 + d1 ceildiv 16 + d1), d0 + 16, -d1 + d1 ceildiv 16, -(-d1 + d1 ceildiv 16 + d1))>(%176, %c10)
    %184 = vector.splat %c15 : vector<7x3x3xindex>
    %185 = math.log2 %0 : tensor<7x3x3xf16>
    %186 = arith.maxf %cst_0, %cst_0 : f16
    %187 = arith.maxsi %extracted, %extracted_24 : i1
    %188 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 + d0 mod 64, (d1 - (d3 + d1 - 1)) floordiv 32 + 16)>(%c0, %c15, %c11, %37)
    %189 = math.fma %cst_4, %cst_4, %cst_1 : f32
    %190 = arith.addi %c1969275858_i32, %c912109256_i32 : i32
    %alloc_36 = memref.alloc() : memref<3x7x3xi32>
    memref.tensor_store %transposed, %alloc_36 : memref<3x7x3xi32>
    %191 = math.sqrt %cst : f32
    scf.if %false_5 {
      %251 = index.sub %c11, %79
      %252 = arith.minui %c912109256_i32, %c1969275858_i32 : i32
      %253 = math.ctlz %75 : tensor<3x7xi16>
      %254 = index.sub %251, %59
      %255 = math.expm1 %cst_1 : f32
      %256 = arith.cmpf une, %cst_2, %cst_0 : f16
      %257 = arith.addi %c951144787_i64, %c783155345_i64 : i64
      %258 = vector.broadcast %extracted_28 : i32 to vector<i32>
      vector.transfer_write %258, %alloc_22[%176] : vector<i32>, memref<7xi32>
    } else {
      %251 = math.ceil %0 : tensor<7x3x3xf16>
      %252 = math.absf %cst : f32
      %253 = scf.if %false -> (memref<3x2xf32>) {
        %258 = index.sizeof
        %259 = vector.bitcast %150 : vector<3xi16> to vector<3xi16>
        %false_54 = index.bool.constant false
        %cast_55 = tensor.cast %15 : tensor<2x7xf16> to tensor<?x?xf16>
        %260 = arith.addi %c912109256_i32, %c912109256_i32 : i32
        %261 = math.rsqrt %0 : tensor<7x3x3xf16>
        %c1961986839_i32 = arith.constant 1961986839 : i32
        bufferization.dealloc_tensor %15 : tensor<2x7xf16>
        scf.yield %alloc_11 : memref<3x2xf32>
      } else {
        %extracted_54 = tensor.extract %75[%c0, %c6] : tensor<3x7xi16>
        %258 = math.expm1 %cst_1 : f32
        %259 = math.tanh %15 : tensor<2x7xf16>
        %260 = arith.subi %c912109256_i32, %c1969275858_i32 : i32
        %261 = index.maxu %37, %c5
        %alloc_55 = memref.alloc() : memref<7x3x3xi32>
        memref.copy %alloc_10, %alloc_55 : memref<7x3x3xi32> to memref<7x3x3xi32>
        %262 = math.absi %4 : tensor<2x7xi1>
        %263 = memref.load %alloc_16[%c3, %c0, %c0] : memref<7x3x3xi16>
        scf.yield %alloc_13 : memref<3x2xf32>
      }
      %254 = vector.broadcast %true_3 : i1 to vector<2xi1>
      %255 = vector.insert %254, %129 [0] : vector<2xi1> into vector<1x2xi1>
      %256 = vector.load %alloc_18[%c0, %c1] : memref<3x2xi64>, vector<2x7xi64>
      %inserted_53 = tensor.insert %c-4009_i16 into %8[%c0, %c1] : tensor<3x2xi16>
      affine.store %cst, %alloc_12[%c13, %c4] : memref<2x7xf32>
      %257 = arith.shrui %false_5, %false_5 : i1
    }
    %192 = vector.matrix_multiply %149, %149 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi16>, vector<3xi16>) -> vector<1xi16>
    %193 = index.sub %128, %c11
    %cast_37 = tensor.cast %19 : tensor<7x3xi32> to tensor<?x?xi32>
    %inserted_38 = tensor.insert %cst_0 into %15[%c1, %c3] : tensor<2x7xf16>
    %194 = vector.broadcast %extracted_24 : i1 to vector<1xi1>
    %dest_39, %accumulated_value_40 = vector.scan <xor>, %132, %194 {inclusive = false, reduction_dim = 1 : i64} : vector<1x7xi1>, vector<1xi1>
    %195 = arith.addi %true_3, %false_5 : i1
    %196 = index.castu %176 : index to i32
    %197 = arith.maxsi %extracted_24, %false_6 : i1
    %198 = index.sub %c10, %37
    %199 = math.sqrt %0 : tensor<7x3x3xf16>
    %200 = math.atan2 %cst_2, %cst_2 : f16
    %c-30248_i16 = arith.constant -30248 : i16
    %201 = math.expm1 %0 : tensor<7x3x3xf16>
    %202 = arith.addf %cst_4, %cst_1 : f32
    %dest_41, %accumulated_value_42 = vector.scan <mul>, %173, %84 {inclusive = false, reduction_dim = 1 : i64} : vector<3x7xf32>, vector<3xf32>
    scf.execute_region {
      %from_elements_53 = tensor.from_elements %c-4009_i16, %c-4009_i16, %c8066_i16, %c8066_i16, %c8066_i16, %c8066_i16, %c-4009_i16, %c-4009_i16, %c-4009_i16, %c-4009_i16, %c-4009_i16, %c-4009_i16, %c8066_i16, %c8066_i16, %c8066_i16, %c-4009_i16, %c8066_i16, %c8066_i16, %c8066_i16, %c8066_i16, %c8066_i16, %c-4009_i16, %c8066_i16, %c8066_i16, %c-4009_i16, %c8066_i16, %c-4009_i16, %c8066_i16, %c8066_i16, %c8066_i16, %c-4009_i16, %c-4009_i16, %c-4009_i16, %c8066_i16, %c8066_i16, %c-4009_i16, %c8066_i16, %c-4009_i16, %c8066_i16, %c8066_i16, %c8066_i16, %c8066_i16, %c-4009_i16, %c-4009_i16, %c-4009_i16, %c-4009_i16, %c8066_i16, %c-4009_i16, %c8066_i16, %c8066_i16, %c8066_i16, %c-4009_i16, %c8066_i16, %c8066_i16, %c-4009_i16, %c8066_i16, %c8066_i16, %c8066_i16, %c8066_i16, %c8066_i16, %c8066_i16, %c8066_i16, %c8066_i16 : tensor<7x3x3xi16>
      %251 = math.expm1 %cst_2 : f16
      %252 = math.absf %splat : tensor<7x3x3xf16>
      %253 = arith.ceildivsi %c-4009_i16, %c8066_i16 : i16
      %254 = affine.max affine_map<(d0, d1, d2) -> ((d2 mod 128) ceildiv 128, d1 + d2, d2 mod 128 - (d1 + d2) * 4, d2 mod 128)>(%c13, %c8, %107)
      %255 = vector.reduction <xor>, %192 : vector<1xi16> into i16
      %256 = math.powf %0, %0 : tensor<7x3x3xf16>
      %257 = math.absi %21 : tensor<7xi32>
      %cst_54 = arith.constant 0x4C96BCFB : f32
      %258 = scf.index_switch %c15 -> index 
      case 1 {
        %263 = arith.minsi %false_6, %true_3 : i1
        %264 = index.ceildivs %198, %188
        %265 = arith.divui %true, %false_5 : i1
        %266 = bufferization.clone %162 : memref<7x3x3xi1> to memref<7x3x3xi1>
        %267 = math.ctlz %transposed : tensor<3x7x3xi32>
        %268 = vector.splat %c8 : vector<3x7xindex>
        %269 = index.casts %c15 : index to i32
        %270 = math.log %splat : tensor<7x3x3xf16>
        %271 = vector.load %alloc_14[%c0, %c4] : memref<2x7xf32>, vector<3x7xf32>
        %272 = arith.cmpf ueq, %cst, %cst_4 : f32
        %273 = math.round %cst_1 : f32
        %274 = arith.cmpi slt, %c-4009_i16, %c8066_i16 : i16
        %275 = arith.remf %cst_1, %cst_4 : f32
        %276 = vector.broadcast %cst : f32 to vector<7xf32>
        %277 = vector.insert %276, %174 [0] : vector<7xf32> into vector<3x7xf32>
        %278 = math.log2 %cst_0 : f16
        %279 = arith.andi %c912109256_i32, %extracted_28 : i32
        scf.yield %c12 : index
      }
      case 2 {
        %263 = arith.remsi %false, %false_6 : i1
        %264 = index.sub %c2, %181
        %265 = vector.insertelement %c8066_i16, %150[%62 : index] : vector<3xi16>
        %266 = math.tanh %0 : tensor<7x3x3xf16>
        %267 = vector.broadcast %28 : index to vector<3xindex>
        vector.scatter %alloc_19[%c3, %c1, %c1] [%267], %110, %110 : memref<7x3x3xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
        memref.assume_alignment %108, 16 : memref<3x7xi32>
        %268 = vector.bitcast %174 : vector<3x7xf32> to vector<3x7xf32>
        %269 = math.floor %0 : tensor<7x3x3xf16>
        %270 = vector.broadcast %cst_1 : f32 to vector<3x2xf32>
        %271 = vector.fma %270, %270, %270 : vector<3x2xf32>
        %272 = math.fma %15, %15, %15 : tensor<2x7xf16>
        %273 = arith.minsi %c-4009_i16, %c-4009_i16 : i16
        %274 = math.round %expanded : tensor<7x3x3x1xf16>
        memref.tensor_store %4, %54 : memref<2x7xi1>
        memref.tensor_store %7, %54 : memref<2x7xi1>
        memref.copy %alloc_12, %alloc_14 : memref<2x7xf32> to memref<2x7xf32>
        %275 = memref.load %54[%c1, %c6] : memref<2x7xi1>
        scf.yield %107 : index
      }
      default {
        memref.assume_alignment %alloc_15, 2 : memref<7x3x3xi64>
        %263 = vector.multi_reduction <add>, %29, %cst [0] : vector<3xf32> to f32
        %264 = math.exp %15 : tensor<2x7xf16>
        %dest_56, %accumulated_value_57 = vector.scan <xor>, %67, %110 {inclusive = true, reduction_dim = 1 : i64} : vector<3x7xi1>, vector<3xi1>
        %c1_i64 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %265 = vector.transfer_read %6[%79, %59], %c0_i64 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<3x7xi64>, vector<3xi64>
        %266 = index.maxs %c12, %c9
        %267 = index.add %62, %125
        %268 = index.ceildivu %59, %176
        %269 = vector.splat %90 : vector<3x2xindex>
        %270 = math.ctlz %10 : tensor<7x3x3xi1>
        %271 = index.mul %198, %188
        %272 = vector.load %alloc_19[%c3, %c0, %c0] : memref<7x3x3xi1>, vector<2x7xi1>
        %273 = arith.remsi %c912109256_i32, %c912109256_i32 : i32
        %274 = vector.bitcast %129 : vector<1x2xi1> to vector<1x2xi1>
        %275 = arith.maxf %cst, %cst_4 : f32
        %276 = index.ceildivu %198, %c6
        scf.yield %198 : index
      }
      scf.if %false_6 {
        memref.tensor_store %8, %alloc_7 : memref<3x2xi16>
        %263 = vector.extract_strided_slice %67 {offsets = [1], sizes = [2], strides = [1]} : vector<3x7xi1> to vector<2x7xi1>
        %264 = vector.multi_reduction <xor>, %110, %110 [] : vector<3xi1> to vector<3xi1>
        %265 = arith.remui %34, %c912109256_i32 : i32
        %266 = arith.cmpi slt, %extracted, %false_5 : i1
        %267 = vector.matrix_multiply %84, %165 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xf32>, vector<3xf32>) -> vector<1xf32>
        %268 = math.exp2 %15 : tensor<2x7xf16>
        %269 = vector.multi_reduction <minsi>, %110, %110 [] : vector<3xi1> to vector<3xi1>
      } else {
        %263 = math.round %cst_2 : f16
        %264 = arith.ceildivsi %extracted, %true_3 : i1
        %265 = index.add %183, %62
        %266 = vector.create_mask %c12, %93, %128 : vector<7x3x3xi1>
        %267 = math.atan2 %cst, %cst_1 : f32
        %268 = affine.max affine_map<(d0, d1, d2) -> (-(d0 + 32), 64, d0, d0)>(%168, %181, %181)
        %269 = arith.negf %cst_0 : f16
        %270 = math.floor %cst_2 : f16
      }
      vector.print %170 : vector<7x3x3xf32>
      %259 = tensor.empty() : tensor<7xi32>
      %mapped_55 = linalg.map ins(%alloc_22, %21, %alloc_22 : memref<7xi32>, tensor<7xi32>, memref<7xi32>) outs(%259 : tensor<7xi32>)
        (%in: i32, %in_56: i32, %in_57: i32) {
          %263 = arith.remf %cst, %cst : f32
          %264 = arith.ori %extracted_28, %in_56 : i32
          %265 = math.exp2 %expanded : tensor<7x3x3x1xf16>
          %266 = index.castu %c783155345_i64 : i64 to index
          %c-15907_i16 = arith.constant -15907 : i16
          %267 = index.maxs %183, %c14
          %268 = arith.cmpi uge, %extracted, %extracted : i1
          %269 = vector.transpose %149, [0] : vector<3xi16> to vector<3xi16>
          %270 = index.divu %28, %c13
          %271 = index.maxs %168, %c12
          %272 = math.fpowi %cst_2, %in_57 : f16, i32
          %collapsed_58 = tensor.collapse_shape %75 [[0, 1]] : tensor<3x7xi16> into tensor<21xi16>
          %273 = math.atan2 %cst, %cst_1 : f32
          %274 = arith.remf %cst, %cst_1 : f32
          %275 = arith.mulf %cst_4, %cst_1 : f32
          %276 = index.sub %c7, %91
          %277 = vector.reduction <mul>, %165 : vector<3xf32> into f32
          %278 = math.expm1 %15 : tensor<2x7xf16>
          %279 = vector.splat %extracted_24 : vector<7x3x3xi1>
          %280 = index.divu %c9, %188
          %281 = math.ctlz %72 : tensor<3x2xi64>
          %cast_59 = tensor.cast %15 : tensor<2x7xf16> to tensor<?x?xf16>
          %282 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %69, %69, %false : vector<7xi1>, vector<7xi1> into i1
          %283 = index.divu %91, %c4
          %284 = vector.flat_transpose %149 {columns = 3 : i32, rows = 1 : i32} : vector<3xi16> -> vector<3xi16>
          %285 = vector.broadcast %cst_4 : f32 to vector<7xf32>
          %286 = vector.multi_reduction <maxf>, %174, %285 [0] : vector<3x7xf32> to vector<7xf32>
          %extracted_60 = tensor.extract %13[%c0, %c2] : tensor<2x7xi1>
          %extracted_61 = tensor.extract %3[%c3, %c2, %c0] : tensor<7x3x3xi1>
          %287 = math.fpowi %cst_2, %c1969275858_i32 : f16, i32
          %288 = index.sub %c4, %c5
          bufferization.dealloc_tensor %15 : tensor<2x7xf16>
          %289 = arith.remf %cst_0, %cst_2 : f16
          %c1_i32 = arith.constant 1 : i32
          linalg.yield %c1_i32 : i32
        }
      %260 = vector.multi_reduction <and>, %67, %110 [1] : vector<3x7xi1> to vector<3xi1>
      %261 = vector.matrix_multiply %150, %192 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<3xi16>, vector<1xi16>) -> vector<3xi16>
      %262 = affine.if affine_set<(d0, d1, d2) : ((d0 floordiv 2) mod 4 >= 0, -d1 + 4 == 0, d0 floordiv 2 == 0, d2 floordiv 128 >= 0)>(%c6, %c1, %c7) -> memref<3x7xi32> {
        %263 = vector.broadcast %c8066_i16 : i16 to vector<7xi16>
        %264 = vector.maskedload %alloc_7[%c0, %c0], %140, %263 : memref<3x2xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
        %cst_56 = arith.constant 1.000000e+00 : f16
        %265 = vector.transfer_read %splat[%c13, %c9, %c15], %cst_56 : tensor<7x3x3xf16>, vector<f16>
        %266 = arith.minsi %c783155345_i64, %c951144787_i64 : i64
        %267 = arith.muli %true_3, %true : i1
        %268 = affine.apply affine_map<(d0, d1) -> ((-d0) floordiv 8)>(%35, %c0)
        %269 = index.maxu %168, %254
        %270 = arith.shli %false, %false_6 : i1
        %271 = index.maxs %59, %c7
        affine.yield %alloc : memref<3x7xi32>
      } else {
        %263 = math.log2 %cst_4 : f32
        %rank = tensor.rank %1 : tensor<2x7xi1>
        %264 = arith.minsi %c8066_i16, %c8066_i16 : i16
        %265 = arith.negf %cst_4 : f32
        %266 = math.atan2 %15, %15 : tensor<2x7xf16>
        %267 = arith.divsi %true_3, %true_3 : i1
        %268 = vector.insertelement %extracted, %110[%c7 : index] : vector<3xi1>
        %269 = vector.insert %false_6, %110 [1] : i1 into vector<3xi1>
        affine.yield %alloc : memref<3x7xi32>
      }
      scf.yield
    }
    %203 = math.fma %15, %15, %15 : tensor<2x7xf16>
    %204 = affine.apply affine_map<(d0, d1) -> ((d1 + 18) ceildiv 32)>(%90, %c10)
    %205 = arith.negf %cst_0 : f16
    %206 = scf.while (%arg2 = %c-4009_i16) : (i16) -> i16 {
      %inserted_53 = tensor.insert %false_6 into %12[%c2, %c6] : tensor<3x7xi1>
      affine.store %c783155345_i64, %alloc_15[%c5, %c12, %c1] : memref<7x3x3xi64>
      %251 = math.floor %cst_1 : f32
      %252 = index.mul %90, %168
      %extracted_54 = tensor.extract %156[%c2, %c0] : tensor<3x3xi64>
      %253 = math.roundeven %expanded : tensor<7x3x3x1xf16>
      %254 = math.powf %15, %15 : tensor<2x7xf16>
      %255 = vector.reduction <maxui>, %69 : vector<7xi1> into i1
      scf.condition(%false_6) %arg2 : i16
    } do {
    ^bb0(%arg2: i16):
      %251 = vector.reduction <mul>, %165 : vector<3xf32> into f32
      %252 = math.round %0 : tensor<7x3x3xf16>
      %253 = vector.insert %175, %170 [3, 0] : vector<3xf32> into vector<7x3x3xf32>
      %254 = arith.cmpf ueq, %cst_4, %cst_4 : f32
      memref.alloca_scope  {
        %264 = vector.create_mask %c6, %c13 : vector<3x2xi1>
        %265 = math.floor %cst : f32
        %266 = arith.divui %c783155345_i64, %c783155345_i64 : i64
        %267 = vector.broadcast %c8066_i16 : i16 to vector<1x1xi16>
        %268 = vector.outerproduct %192, %192, %267 {kind = #vector.kind<add>} : vector<1xi16>, vector<1xi16>
        %269 = math.fma %15, %15, %15 : tensor<2x7xf16>
        %270 = arith.maxui %true, %extracted_24 : i1
        %271 = tensor.empty() : tensor<13x2xi16>
        %272 = tensor.empty() : tensor<3x2xi16>
        %273 = linalg.matmul ins(%88, %271 : tensor<3x13xi16>, tensor<13x2xi16>) outs(%272 : tensor<3x2xi16>) -> tensor<3x2xi16>
        %274 = vector.extract_strided_slice %26 {offsets = [1], sizes = [1], strides = [1]} : vector<3x2xi1> to vector<1x2xi1>
        %275 = vector.broadcast %cst_4 : f32 to vector<7x3xf32>
        %276 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %84, %170, %275 : vector<3xf32>, vector<7x3x3xf32> into vector<7x3xf32>
        %277 = math.fma %splat, %0, %splat : tensor<7x3x3xf16>
        %278 = arith.maxsi %34, %c912109256_i32 : i32
        %279 = arith.minf %cst_4, %cst_4 : f32
        %from_elements_55 = tensor.from_elements %c-4009_i16, %c8066_i16, %arg2, %c-4009_i16, %c-4009_i16, %arg2, %c-4009_i16, %arg2, %c8066_i16, %arg2, %c8066_i16, %c8066_i16, %c8066_i16, %arg2, %c8066_i16, %arg2, %arg2, %c8066_i16, %arg2, %c-4009_i16, %arg2 : tensor<3x7xi16>
        %280 = arith.cmpi sle, %extracted_28, %c1969275858_i32 : i32
        %281 = index.ceildivu %c1, %c5
        %282 = vector.insertelement %cst, %20[%93 : index] : vector<3xf32>
        %cast_56 = tensor.cast %11 : tensor<7x3x3xi32> to tensor<?x?x?xi32>
        affine.store %true, %54[%c15, %c4] : memref<2x7xi1>
        %283 = index.maxs %c15, %37
        %284 = index.ceildivs %198, %c15
        %c1_i32 = arith.constant 1 : i32
        %285 = vector.transfer_read %108[%284, %c15], %c1_i32 : memref<3x7xi32>, vector<13xi32>
        %286 = vector.flat_transpose %146 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
        %287 = math.fpowi %cst_2, %c912109256_i32 : f16, i32
        %288 = math.ipowi %7, %17 : tensor<2x7xi1>
        %289 = memref.atomic_rmw andi %c8066_i16, %alloc_17[%c2, %c4] : (i16, memref<3x7xi16>) -> i16
        %290 = math.powf %15, %15 : tensor<2x7xf16>
        %cst_57 = arith.constant 2.06688742E+9 : f32
        %291 = arith.remsi %c783155345_i64, %c951144787_i64 : i64
        %splat_58 = tensor.splat %arg2 : tensor<3x2xi16>
        %292 = math.round %splat : tensor<7x3x3xf16>
        %293 = index.floordivs %c14, %59
        %294 = math.absi %c-4009_i16 : i16
      }
      %cst_53 = arith.constant 1.49644506E+9 : f32
      %255 = affine.max affine_map<(d0, d1, d2, d3) -> (d2, d2, d0 + d2 ceildiv 128, d0 + 1)>(%c13, %183, %c6, %c15)
      %256 = arith.remui %c951144787_i64, %c951144787_i64 : i64
      %257 = index.add %198, %168
      %258 = math.fma %cst, %cst_4, %cst_4 : f32
      %inserted_54 = tensor.insert %arg2 into %2[%c0, %c4] : tensor<3x7xi16>
      %259 = arith.maxf %cst, %cst_1 : f32
      %260 = math.tan %cst_4 : f32
      %261 = arith.shrsi %true_3, %true : i1
      %262 = math.ctlz %c1969275858_i32 : i32
      %263 = arith.maxf %cst, %cst : f32
      scf.yield %arg2 : i16
    }
    %207 = arith.remf %cst_0, %cst_2 : f16
    %208 = index.ceildivu %c14, %c0
    %209 = vector.load %85[%c3, %c1, %c2] : memref<7x3x3xi1>, vector<3x7xi1>
    %210 = math.round %cst_0 : f16
    %211 = arith.cmpf oge, %cst_2, %cst_0 : f16
    %212 = index.castu %c783155345_i64 : i64 to index
    %213 = affine.max affine_map<(d0, d1, d2, d3) -> ((d3 + d1) ceildiv 2)>(%188, %c2, %107, %c5)
    %214 = math.cttz %c912109256_i32 : i32
    %inserted_43 = tensor.insert %c951144787_i64 into %6[%c1, %c3] : tensor<3x7xi64>
    %215 = math.log1p %0 : tensor<7x3x3xf16>
    %216 = arith.shli %c1969275858_i32, %c1969275858_i32 : i32
    %217 = math.powf %cst_4, %cst : f32
    %218 = index.sub %181, %193
    scf.execute_region {
      %251 = arith.divui %c951144787_i64, %c783155345_i64 : i64
      %252 = math.atan2 %15, %15 : tensor<2x7xf16>
      %253 = vector.broadcast %c12 : index to vector<7xindex>
      %254 = vector.broadcast %c783155345_i64 : i64 to vector<7xi64>
      vector.scatter %alloc_15[%c6, %c1, %c2] [%253], %146, %254 : memref<7x3x3xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
      %255 = arith.minsi %c8066_i16, %c-4009_i16 : i16
      memref.assume_alignment %alloc, 2 : memref<3x7xi32>
      %256 = index.floordivs %59, %c12
      %257 = arith.minsi %false_6, %true_3 : i1
      %258 = math.fma %cst_2, %cst_2, %cst_0 : f16
      %259 = math.log %cst_0 : f16
      %260 = bufferization.clone %85 : memref<7x3x3xi1> to memref<7x3x3xi1>
      %261 = index.divu %c1, %256
      %262 = memref.load %alloc_8[%c1, %c4] : memref<2x7xi32>
      %263 = math.absi %14 : tensor<3x2xi64>
      %264 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 ceildiv 64, -(d2 - d0 + 16), d1 - 1, d0)>(%256, %c10, %131, %c2)
      bufferization.dealloc_tensor %1 : tensor<2x7xi1>
      %265 = math.log %expanded : tensor<7x3x3x1xf16>
      scf.yield
    }
    scf.execute_region {
      %cast_53 = tensor.cast %2 : tensor<3x7xi16> to tensor<?x?xi16>
      %251 = arith.shli %c-4009_i16, %c-4009_i16 : i16
      %252 = math.tan %expanded : tensor<7x3x3x1xf16>
      %253 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%reduced, %19 : tensor<7x3xi32>, tensor<7x3xi32>) outs(%from_elements : tensor<7x3x3xi32>) {
      ^bb0(%in: i32, %in_55: i32, %out: i32):
        %266 = index.divu %c3, %93
        %267 = vector.matrix_multiply %175, %48 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xf32>, vector<3xf32>) -> vector<1xf32>
        %268 = vector.bitcast %267 : vector<1xf32> to vector<1xi32>
        %269 = math.absf %splat : tensor<7x3x3xf16>
        %c1496014083_i64 = arith.constant 1496014083 : i64
        %270 = arith.negf %cst_4 : f32
        %271 = math.copysign %cst_2, %cst_0 : f16
        %272 = arith.divui %false_5, %true_3 : i1
        %c0_i16 = arith.constant 0 : i16
        %273 = vector.transfer_read %88[%128, %c0], %c0_i16 : tensor<3x13xi16>, vector<13xi16>
        %274 = bufferization.clone %alloc_14 : memref<2x7xf32> to memref<2x7xf32>
        %275 = math.roundeven %cst : f32
        %276 = math.roundeven %cst : f32
        %277 = vector.bitcast %169 : vector<7x3x3xf32> to vector<7x3x3xf32>
        %278 = math.absf %cst_0 : f16
        %279 = affine.min affine_map<(d0, d1, d2) -> (d0, d0 floordiv 4, d0 floordiv 4, d1)>(%37, %131, %79)
        %280 = arith.divui %extracted_24, %false_6 : i1
        %281 = arith.remsi %c783155345_i64, %c951144787_i64 : i64
        %282 = math.ceil %cst_0 : f16
        %283 = math.powf %0, %splat : tensor<7x3x3xf16>
        %284 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 + d0 + 1, d3 - (d3 ceildiv 8 - 4), d2 + d0 + 1 - d0, (d2 + d0 + 1) mod 32)>(%208, %c6, %266, %c8)
        %true_56 = index.bool.constant true
        %285 = arith.remf %cst_1, %cst_4 : f32
        %286 = index.maxs %208, %c12
        %287 = math.log1p %0 : tensor<7x3x3xf16>
        %288 = index.add %c12, %279
        %cast_57 = tensor.cast %156 : tensor<3x3xi64> to tensor<?x?xi64>
        %from_elements_58 = tensor.from_elements %cst, %cst, %cst_1, %cst, %cst, %cst_4, %cst, %cst_4, %cst, %cst_1, %cst_4, %cst_4, %cst, %cst_4, %cst_1, %cst, %cst, %cst_4, %cst, %cst, %cst_4, %cst_1, %cst_4, %cst_4, %cst_4, %cst_1, %cst_1, %cst_1, %cst, %cst_1, %cst, %cst, %cst_4, %cst_1, %cst, %cst_4, %cst_1, %cst_4, %cst, %cst_4, %cst_1, %cst_4, %cst_1, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst_1, %cst, %cst, %cst_1, %cst_4, %cst, %cst, %cst_4, %cst, %cst_1, %cst_1, %cst_4, %cst_4, %cst_1, %cst_4 : tensor<7x3x3xf32>
        %289 = math.round %15 : tensor<2x7xf16>
        %290 = arith.subi %false_5, %true : i1
        %291 = index.maxu %c13, %90
        %292 = math.exp2 %cst_2 : f16
        vector.print %84 : vector<3xf32>
        linalg.yield %in : i32
      } -> tensor<7x3x3xi32>
      %from_elements_54 = tensor.from_elements %cst_0, %cst_0, %cst_0, %cst_0, %cst_2, %cst_0 : tensor<3x2xf16>
      %254 = vector.insert %cst, %165 [2] : f32 into vector<3xf32>
      %255 = vector.bitcast %149 : vector<3xi16> to vector<3xi16>
      %256 = arith.divf %cst_1, %cst_1 : f32
      %257 = vector.insertelement %cst_4, %84[%62 : index] : vector<3xf32>
      %258 = vector.broadcast %cst_4 : f32 to vector<2x7xf32>
      %259 = vector.fma %258, %258, %258 : vector<2x7xf32>
      affine.store %c8066_i16, %alloc_16[%c0, %c5, %c8] : memref<7x3x3xi16>
      %260 = memref.alloca_scope  -> (memref<7x3x3xf32>) {
        %266 = affine.min affine_map<(d0) -> ((d0 floordiv 8) * 8, d0, 0)>(%c2)
        memref.copy %alloc_12, %alloc_14 : memref<2x7xf32> to memref<2x7xf32>
        %from_elements_55 = tensor.from_elements %c-4009_i16, %c-4009_i16, %c-4009_i16, %c-4009_i16, %c-4009_i16, %c8066_i16 : tensor<3x2xi16>
        %inserted_56 = tensor.insert %c783155345_i64 into %9[%c0, %c0] : tensor<3x2xi64>
        %267 = arith.andi %c912109256_i32, %c912109256_i32 : i32
        %268 = math.absf %cst : f32
        %269 = math.rsqrt %15 : tensor<2x7xf16>
        %270 = memref.load %alloc_16[%c4, %c2, %c1] : memref<7x3x3xi16>
        %271 = vector.insertelement %c-4009_i16, %255[%c13 : index] : vector<3xi16>
        %272 = index.add %183, %c0
        %273 = math.round %cst : f32
        %274 = vector.insertelement %cst, %29[%c7 : index] : vector<3xf32>
        %275 = arith.cmpi ugt, %true_3, %true : i1
        %276 = arith.cmpf ueq, %cst, %cst_4 : f32
        %277 = math.tan %cst_1 : f32
        %278 = arith.minf %cst, %cst_4 : f32
        %279 = arith.addf %cst_4, %cst : f32
        %280 = math.tan %15 : tensor<2x7xf16>
        %expanded_57 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<3x7xi16> into tensor<3x7x1xi16>
        %281 = arith.addf %cst_4, %cst : f32
        %282 = math.exp2 %cst_1 : f32
        %283 = arith.divsi %false, %true : i1
        %284 = vector.insert %c8066_i16, %150 [0] : i16 into vector<3xi16>
        memref.assume_alignment %alloc, 1 : memref<3x7xi32>
        %285 = math.ctlz %13 : tensor<2x7xi1>
        bufferization.dealloc_tensor %7 : tensor<2x7xi1>
        %286 = vector.broadcast %false_5 : i1 to vector<7x7xi1>
        %287 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %67, %42, %286 : vector<3x7xi1>, vector<3x7xi1> into vector<7x7xi1>
        memref.assume_alignment %alloc_21, 16 : memref<3x7xi64>
        %288 = arith.negf %cst_1 : f32
        %289 = arith.mulf %cst_0, %cst_2 : f16
        %290 = vector.broadcast %false_5 : i1 to vector<i1>
        %291 = vector.transfer_write %290, %12[%62, %c3] : vector<i1>, tensor<3x7xi1>
        %292 = math.log2 %0 : tensor<7x3x3xf16>
        %alloc_58 = memref.alloc() : memref<7x3x3xf32>
        memref.alloca_scope.return %alloc_58 : memref<7x3x3xf32>
      }
      %261 = vector.broadcast %c14 : index to vector<2xindex>
      %262 = vector.broadcast %true : i1 to vector<2xi1>
      vector.scatter %alloc_20[%c6, %c1, %c0] [%261], %262, %262 : memref<7x3x3xi1>, vector<2xindex>, vector<2xi1>, vector<2xi1>
      %263 = math.tan %0 : tensor<7x3x3xf16>
      %264 = vector.broadcast %37 : index to vector<3xindex>
      vector.scatter %85[%c4, %c0, %c0] [%264], %110, %110 : memref<7x3x3xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
      %265 = math.ceil %15 : tensor<2x7xf16>
      scf.yield
    }
    %expanded_44 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<3x2xi64> into tensor<3x2x1xi64>
    %219 = index.floordivs %213, %c11
    %220 = math.atan2 %15, %15 : tensor<2x7xf16>
    %221 = math.round %0 : tensor<7x3x3xf16>
    %222 = index.mul %c6, %212
    %223 = arith.addf %cst_4, %cst_4 : f32
    %224 = math.log2 %cst_2 : f16
    %225 = arith.minsi %c1969275858_i32, %c1969275858_i32 : i32
    %inserted_45 = tensor.insert %c1969275858_i32 into %19[%c5, %c0] : tensor<7x3xi32>
    %226 = index.maxs %213, %125
    %alloca_46 = memref.alloca() : memref<7x3x3xf32>
    %cst_47 = arith.constant 1.625600e+04 : f16
    %227 = arith.remf %cst_4, %cst : f32
    %228 = index.castu %c1 : index to i32
    %229 = arith.divui %false, %extracted : i1
    %230 = tensor.empty() : tensor<7x3x3xi32>
    %mapped_48 = linalg.map ins(%11 : tensor<7x3x3xi32>) outs(%230 : tensor<7x3x3xi32>)
      (%in: i32) {
        %true_53 = arith.constant true
        %251 = bufferization.clone %alloc_17 : memref<3x7xi16> to memref<3x7xi16>
        %252 = arith.addf %cst_2, %cst_2 : f16
        %253 = vector.extract_strided_slice %169 {offsets = [4], sizes = [2], strides = [1]} : vector<7x3x3xf32> to vector<2x3x3xf32>
        %254 = math.cttz %13 : tensor<2x7xi1>
        %255 = arith.shli %extracted, %extracted_24 : i1
        %256 = vector.multi_reduction <maxf>, %253, %cst [0, 1, 2] : vector<2x3x3xf32> to f32
        %257 = vector.broadcast %false_5 : i1 to vector<7x3x3xi1>
        %258 = vector.broadcast %c912109256_i32 : i32 to vector<7x3x3xi32>
        %259 = vector.gather %54[%91, %c13] [%258], %257, %257 : memref<2x7xi1>, vector<7x3x3xi32>, vector<7x3x3xi1>, vector<7x3x3xi1> into vector<7x3x3xi1>
        %260 = vector.matrix_multiply %20, %48 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xf32>, vector<3xf32>) -> vector<1xf32>
        scf.if %false_6 {
          %278 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 floordiv 8 - 128)>(%212, %28, %28, %c13)
          %279 = vector.reduction <mul>, %260 : vector<1xf32> into f32
          %from_elements_57 = tensor.from_elements %c912109256_i32, %c912109256_i32, %c1969275858_i32, %c1969275858_i32, %c1969275858_i32, %in, %34, %c912109256_i32, %34, %34, %extracted_28, %c1969275858_i32, %in, %c912109256_i32, %in, %c1969275858_i32, %c1969275858_i32, %extracted_28, %34, %34, %in : tensor<3x7xi32>
          %280 = index.mul %c15, %212
          %281 = memref.atomic_rmw maxu %c951144787_i64, %alloc_15[%c3, %c2, %c1] : (i64, memref<7x3x3xi64>) -> i64
          %rank = tensor.rank %cast : tensor<?x?xi32>
          %282 = math.round %256 : f32
          %cast_58 = tensor.cast %9 : tensor<3x2xi64> to tensor<?x?xi64>
        }
        %261 = index.ceildivs %212, %168
        %262 = affine.if affine_set<(d0, d1) : ((d0 mod 8) ceildiv 8 >= 0, d0 >= 0, d0 + 8 == 0, d0 * 16 >= 0)>(%c15, %c9) -> i32 {
          bufferization.dealloc_tensor %7 : tensor<2x7xi1>
          %278 = tensor.empty() : tensor<7x3xi16>
          %279 = tensor.empty() : tensor<3x3xi16>
          %280 = linalg.matmul ins(%2, %278 : tensor<3x7xi16>, tensor<7x3xi16>) outs(%279 : tensor<3x3xi16>) -> tensor<3x3xi16>
          %281 = arith.ceildivsi %c783155345_i64, %c951144787_i64 : i64
          %282 = index.sub %c13, %222
          %283 = vector.splat %true_3 : vector<2x7xi1>
          %284 = math.sqrt %0 : tensor<7x3x3xf16>
          %285 = math.ctlz %9 : tensor<3x2xi64>
          %286 = arith.remf %cst_4, %256 : f32
          affine.yield %34 : i32
        } else {
          %278 = math.atan2 %cst_2, %cst_0 : f16
          %279 = index.castu %false_5 : i1 to index
          %280 = arith.muli %extracted, %false_6 : i1
          %281 = index.ceildivu %213, %131
          %282 = index.floordivs %c3, %212
          %283 = affine.load %alloc[%c4, %c0] : memref<3x7xi32>
          affine.store %c783155345_i64, %alloc_21[%c3, %c7] : memref<3x7xi64>
          %284 = math.expm1 %cst_2 : f16
          affine.yield %c1969275858_i32 : i32
        }
        %263 = vector.broadcast %extracted : i1 to vector<1x3x3xi1>
        %264 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d3)>, affine_map<(d0, d1, d2, d3) -> (d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %132, %257, %263 : vector<1x7xi1>, vector<7x3x3xi1> into vector<1x3x3xi1>
        %265 = arith.addi %extracted_24, %extracted_24 : i1
        %266 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%transposed : tensor<3x7x3xi32>) {
        ^bb0(%out: i32):
          %278 = math.exp2 %cst_2 : f16
          %rank = tensor.rank %156 : tensor<3x3xi64>
          %279 = math.expm1 %15 : tensor<2x7xf16>
          %280 = math.copysign %256, %cst_1 : f32
          %cst_57 = arith.constant 2.03826803E+9 : f32
          %281 = vector.extract_strided_slice %170 {offsets = [0], sizes = [3], strides = [1]} : vector<7x3x3xf32> to vector<3x3x3xf32>
          %false_58 = index.bool.constant false
          %282 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%261, %125, %c2, %c14)
          %c1_i16 = arith.constant 1 : i16
          %283 = vector.transfer_read %2[%62, %79], %c1_i16 : tensor<3x7xi16>, vector<i16>
          %284 = arith.xori %c951144787_i64, %c783155345_i64 : i64
          %285 = arith.cmpi uge, %false_5, %extracted : i1
          %286 = vector.splat %131 : vector<2x7xindex>
          %287 = vector.extract_strided_slice %20 {offsets = [1], sizes = [1], strides = [1]} : vector<3xf32> to vector<1xf32>
          %288 = vector.bitcast %281 : vector<3x3x3xf32> to vector<3x3x3xf32>
          %alloc_59 = memref.alloc() : memref<7x13xf16>
          %289 = tensor.empty() : tensor<2x13xf16>
          %290 = linalg.matmul ins(%15, %alloc_59 : tensor<2x7xf16>, memref<7x13xf16>) outs(%289 : tensor<2x13xf16>) -> tensor<2x13xf16>
          bufferization.dealloc_tensor %16 : tensor<2x7xi1>
          %inserted_60 = tensor.insert %cst_2 into %expanded[%c3, %c2, %c2, %c0] : tensor<7x3x3x1xf16>
          %291 = vector.extract_strided_slice %258 {offsets = [2, 1], sizes = [1, 2], strides = [1, 1]} : vector<7x3x3xi32> to vector<1x2x3xi32>
          %alloc_61 = memref.alloc() : memref<3x2xi32>
          %292 = tensor.empty() : tensor<7x2xi32>
          %293 = linalg.matmul ins(%reduced, %alloc_61 : tensor<7x3xi32>, memref<3x2xi32>) outs(%292 : tensor<7x2xi32>) -> tensor<7x2xi32>
          %294 = index.divu %59, %213
          %295 = math.atan2 %0, %0 : tensor<7x3x3xf16>
          %296 = math.exp2 %cst : f32
          %297 = index.floordivs %212, %c3
          %298 = math.ctlz %11 : tensor<7x3x3xi32>
          %299 = vector.broadcast %cst_1 : f32 to vector<3x3xf32>
          %300 = vector.outerproduct %48, %175, %299 {kind = #vector.kind<maxf>} : vector<3xf32>, vector<3xf32>
          %301 = index.floordivs %219, %c13
          %302 = math.exp2 %256 : f32
          %303 = index.ceildivs %c11, %125
          %304 = index.castu %218 : index to i32
          %305 = math.cttz %75 : tensor<3x7xi16>
          %rank_62 = tensor.rank %156 : tensor<3x3xi64>
          %expanded_63 = tensor.expand_shape %12 [[0], [1, 2]] : tensor<3x7xi1> into tensor<3x7x1xi1>
          linalg.yield %34 : i32
        } -> tensor<3x7x3xi32>
        %267 = arith.maxf %cst_2, %cst_0 : f16
        %268 = math.exp %cst_0 : f16
        %269 = vector.create_mask %168, %93 : vector<3x2xi1>
        %270 = arith.muli %c8066_i16, %c8066_i16 : i16
        %271 = vector.flat_transpose %20 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
        %272 = memref.load %73[%c0, %c1] : memref<3x2xi64>
        %273 = memref.atomic_rmw minf %256, %alloc_12[%c0, %c0] : (f32, memref<2x7xf32>) -> f32
        %274 = math.fma %cst, %cst_1, %cst_4 : f32
        %false_54 = index.bool.constant false
        %expanded_55 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<2x7xf16> into tensor<2x7x1xf16>
        %275 = math.absf %cst_4 : f32
        memref.assume_alignment %alloc_17, 4 : memref<3x7xi16>
        %276 = index.ceildivu %35, %188
        scf.execute_region {
          %278 = math.ctlz %22 : tensor<i32>
          %279 = arith.remf %cst_0, %cst_0 : f16
          %280 = math.absi %false_5 : i1
          %281 = vector.multi_reduction <or>, %257, %110 [0, 2] : vector<7x3x3xi1> to vector<3xi1>
          %282 = math.log %0 : tensor<7x3x3xf16>
          %283 = math.expm1 %splat : tensor<7x3x3xf16>
          %284 = vector.reduction <minsi>, %146 : vector<7xi1> into i1
          %285 = index.castu %false : i1 to index
          %286 = vector.broadcast %cst_4 : f32 to vector<7x3xf32>
          %287 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %29, %170, %286 : vector<3xf32>, vector<7x3x3xf32> into vector<7x3xf32>
          %288 = arith.divui %c8066_i16, %c-4009_i16 : i16
          %289 = arith.addi %true_3, %extracted_24 : i1
          %290 = arith.maxf %cst_4, %cst_1 : f32
          vector.print %269 : vector<3x2xi1>
          %291 = index.mul %c10, %212
          %292 = math.floor %expanded : tensor<7x3x3x1xf16>
          %293 = arith.divui %false_54, %true : i1
          scf.yield
        }
        %extracted_56 = tensor.extract %15[%c0, %c6] : tensor<2x7xf16>
        %277 = index.divu %28, %59
        affine.for %arg2 = 0 to 102 {
        }
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    %231 = arith.addf %cst_0, %cst_2 : f16
    %232 = vector.insert %cst, %165 [0] : f32 into vector<3xf32>
    %inserted_49 = tensor.insert %c-4009_i16 into %88[%c1, %c10] : tensor<3x13xi16>
    %233 = arith.addi %c912109256_i32, %extracted_28 : i32
    %inserted_50 = tensor.insert %false_6 into %cast_26[%c0, %c0] : tensor<?x?xi1>
    %234 = math.log2 %cst_1 : f32
    %235 = vector.broadcast %false_5 : i1 to vector<2xi1>
    %236 = vector.insert %235, %26 [2] : vector<2xi1> into vector<3x2xi1>
    %237 = arith.maxf %cst_0, %cst_2 : f16
    %238 = arith.maxsi %false_6, %false : i1
    %239 = vector.splat %176 : vector<2x7xindex>
    %240 = arith.shrui %c912109256_i32, %34 : i32
    %241 = arith.addi %extracted_28, %c912109256_i32 : i32
    %242 = arith.addi %extracted, %true : i1
    %243 = math.log2 %0 : tensor<7x3x3xf16>
    %244 = affine.if affine_set<(d0, d1) : ((d0 - d1 * 16 - d0) floordiv 8 == 0, d0 == 0, d0 - 32 == 0)>(%c15, %c11) -> i16 {
      %alloca_53 = memref.alloca() : memref<3x7xf32>
      %251 = affine.apply affine_map<(d0, d1, d2) -> (d0 * 512 + 8)>(%37, %c9, %62)
      %252 = index.maxu %c14, %219
      %253 = index.add %79, %107
      %254 = tensor.empty() : tensor<3x2xi16>
      %mapped_54 = linalg.map ins(%8, %8 : tensor<3x2xi16>, tensor<3x2xi16>) outs(%254 : tensor<3x2xi16>)
        (%in: i16, %in_56: i16) {
          %257 = vector.insert %cst_4, %165 [0] : f32 into vector<3xf32>
          %alloc_57 = memref.alloc() : memref<3x2xi16>
          memref.copy %alloc_7, %alloc_57 : memref<3x2xi16> to memref<3x2xi16>
          memref.assume_alignment %108, 4 : memref<3x7xi32>
          %258 = vector.extract_strided_slice %146 {offsets = [2], sizes = [1], strides = [1]} : vector<7xi1> to vector<1xi1>
          %259 = math.atan2 %expanded, %expanded : tensor<7x3x3x1xf16>
          %260 = math.log1p %cst_0 : f16
          %261 = math.expm1 %cst_2 : f16
          %262 = index.maxs %212, %198
          %263 = vector.create_mask %181, %c15, %c9 : vector<7x3x3xi1>
          %264 = index.sub %37, %93
          %265 = vector.splat %c10 : vector<3x7xindex>
          %266 = index.divs %79, %c4
          %267 = index.sub %198, %91
          %268 = index.ceildivs %266, %c11
          %269 = arith.divf %cst_1, %cst_1 : f32
          %270 = arith.negf %cst_0 : f16
          %271 = arith.xori %c-4009_i16, %c-4009_i16 : i16
          %272 = vector.broadcast %168 : index to vector<2xindex>
          %273 = vector.broadcast %c-4009_i16 : i16 to vector<2xi16>
          vector.scatter %alloc_17[%c0, %c5] [%272], %235, %273 : memref<3x7xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
          %274 = math.expm1 %cst : f32
          %275 = math.powf %15, %15 : tensor<2x7xf16>
          %276 = bufferization.clone %alloc_21 : memref<3x7xi64> to memref<3x7xi64>
          %277 = vector.reduction <mul>, %165 : vector<3xf32> into f32
          %278 = math.ctlz %156 : tensor<3x3xi64>
          %dest_58, %accumulated_value_59 = vector.scan <add>, %42, %140 {inclusive = false, reduction_dim = 0 : i64} : vector<3x7xi1>, vector<7xi1>
          %279 = math.log2 %0 : tensor<7x3x3xf16>
          %true_60 = arith.constant true
          %dest_61, %accumulated_value_62 = vector.scan <mul>, %174, %84 {inclusive = false, reduction_dim = 1 : i64} : vector<3x7xf32>, vector<3xf32>
          memref.tensor_store %21, %alloc_22 : memref<7xi32>
          %280 = arith.remf %cst_0, %cst_0 : f16
          %281 = vector.broadcast %cst : f32 to vector<3x3xf32>
          %282 = vector.outerproduct %48, %20, %281 {kind = #vector.kind<add>} : vector<3xf32>, vector<3xf32>
          %dest_63, %accumulated_value_64 = vector.scan <minf>, %173, %175 {inclusive = false, reduction_dim = 1 : i64} : vector<3x7xf32>, vector<3xf32>
          %283 = arith.remf %cst_4, %cst : f32
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %255 = arith.remf %cst_1, %cst : f32
      %from_elements_55 = tensor.from_elements %c951144787_i64, %c951144787_i64, %c951144787_i64, %c783155345_i64, %c951144787_i64, %c951144787_i64 : tensor<3x2xi64>
      %256 = arith.remsi %false_6, %extracted : i1
      affine.yield %c8066_i16 : i16
    } else {
      %251 = arith.remsi %c1969275858_i32, %extracted_28 : i32
      %252 = arith.negf %cst_2 : f16
      %253 = arith.maxf %cst_4, %cst_4 : f32
      %254 = arith.addf %cst, %cst_1 : f32
      %255 = arith.subi %34, %extracted_28 : i32
      %256 = index.add %c7, %c13
      %257 = math.absi %from_elements : tensor<7x3x3xi32>
      %258 = scf.while (%arg2 = %false_5) : (i1) -> i1 {
        %259 = math.expm1 %cst_0 : f16
        memref.assume_alignment %108, 1 : memref<3x7xi32>
        %260 = arith.negf %cst : f32
        %261 = arith.minsi %true, %false_6 : i1
        %262 = vector.broadcast %c8 : index to vector<13xindex>
        %263 = vector.broadcast %true_3 : i1 to vector<13xi1>
        %264 = vector.broadcast %c783155345_i64 : i64 to vector<13xi64>
        vector.scatter %alloc_15[%c1, %c0, %c0] [%262], %263, %264 : memref<7x3x3xi64>, vector<13xindex>, vector<13xi1>, vector<13xi64>
        memref.tensor_store %from_elements, %alloc_10 : memref<7x3x3xi32>
        %alloca_53 = memref.alloca() : memref<7x3x3xi32>
        %265 = vector.broadcast %c-4009_i16 : i16 to vector<3x2xi16>
        %266 = vector.broadcast %34 : i32 to vector<3x2xi32>
        %267 = vector.gather %alloc_7[%219, %128] [%266], %95, %265 : memref<3x2xi16>, vector<3x2xi32>, vector<3x2xi1>, vector<3x2xi16> into vector<3x2xi16>
        scf.condition(%extracted) %false_6 : i1
      } do {
      ^bb0(%arg2: i1):
        %dest_53, %accumulated_value_54 = vector.scan <and>, %95, %235 {inclusive = true, reduction_dim = 0 : i64} : vector<3x2xi1>, vector<2xi1>
        %259 = math.powf %0, %splat : tensor<7x3x3xf16>
        %dest_55, %accumulated_value_56 = vector.scan <maxui>, %42, %110 {inclusive = true, reduction_dim = 1 : i64} : vector<3x7xi1>, vector<3xi1>
        %260 = math.rsqrt %15 : tensor<2x7xf16>
        %261 = arith.cmpf ult, %cst_2, %cst_2 : f16
        %262 = math.log %splat : tensor<7x3x3xf16>
        %263 = vector.load %alloc_11[%c1, %c0] : memref<3x2xf32>, vector<7x3x3xf32>
        %264 = math.roundeven %cst_4 : f32
        affine.store %cst_1, %alloc_13[%c6, %c6] : memref<3x2xf32>
        %alloca_57 = memref.alloca() : memref<3x7xi32>
        %265 = math.log2 %0 : tensor<7x3x3xf16>
        %266 = index.add %168, %107
        %267 = arith.remui %c-4009_i16, %c-4009_i16 : i16
        %268 = index.add %266, %c11
        %269 = math.log1p %cst_4 : f32
        %270 = arith.minf %cst_2, %cst_0 : f16
        scf.yield %false : i1
      }
      affine.yield %c8066_i16 : i16
    }
    %245 = vector.insertelement %c8066_i16, %149[%c10 : index] : vector<3xi16>
    %246 = arith.remui %false_6, %true : i1
    %247 = tensor.empty() : tensor<3x7xi16>
    %248 = linalg.copy ins(%2 : tensor<3x7xi16>) outs(%247 : tensor<3x7xi16>) -> tensor<3x7xi16>
    %alloc_51 = memref.alloc() : memref<7x2xi32>
    linalg.transpose ins(%alloc_8 : memref<2x7xi32>) outs(%alloc_51 : memref<7x2xi32>) permutation = [1, 0] 
    %249 = tensor.empty() : tensor<3x3xi1>
    %reduced_52 = linalg.reduce ins(%alloc_20 : memref<7x3x3xi1>) outs(%249 : tensor<3x3xi1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %251 = vector.broadcast %c2 : index to vector<7xindex>
        %252 = vector.broadcast %c912109256_i32 : i32 to vector<7xi32>
        vector.scatter %alloc_51[%c5, %c0] [%251], %69, %252 : memref<7x2xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
        %253 = vector.broadcast %cst_1 : f32 to vector<7xf32>
        %dest_53, %accumulated_value_54 = vector.scan <add>, %174, %253 {inclusive = true, reduction_dim = 0 : i64} : vector<3x7xf32>, vector<7xf32>
        %254 = math.round %cst : f32
        %255 = index.sub %219, %c10
        %256 = vector.insertelement %c-4009_i16, %192[%181 : index] : vector<1xi16>
        %257 = math.expm1 %15 : tensor<2x7xf16>
        %258 = vector.broadcast %c11 : index to vector<3xindex>
        vector.scatter %alloc_17[%c0, %c6] [%258], %110, %150 : memref<3x7xi16>, vector<3xindex>, vector<3xi1>, vector<3xi16>
        %259 = math.rsqrt %cst_0 : f16
        %true_55 = arith.constant true
        linalg.yield %true_55 : i1
      }
    scf.parallel (%arg2) = (%208) to (%125) step (%c1) {
      affine.store %c8066_i16, %alloc_17[%c6, %c12] : memref<3x7xi16>
      scf.index_switch %183 
      case 1 {
        %263 = math.round %cst_0 : f16
        %264 = math.expm1 %0 : tensor<7x3x3xf16>
        %265 = math.exp %expanded : tensor<7x3x3x1xf16>
        %266 = math.log2 %0 : tensor<7x3x3xf16>
        %267 = arith.remui %false_5, %false_5 : i1
        %268 = vector.load %alloc_9[%c1, %c0] : memref<3x7xi1>, vector<3x2xi1>
        %269 = math.sqrt %expanded : tensor<7x3x3x1xf16>
        %270 = vector.splat %c912109256_i32 : vector<7x3x3xi32>
        %271 = math.ctlz %12 : tensor<3x7xi1>
        %272 = arith.addi %true, %true_3 : i1
        %alloc_56 = memref.alloc() : memref<2x7xi64>
        %273 = vector.broadcast %c951144787_i64 : i64 to vector<7x3x3xi64>
        %274 = vector.broadcast %false : i1 to vector<7x3x3xi1>
        %275 = vector.broadcast %34 : i32 to vector<7x3x3xi32>
        %276 = vector.gather %alloc_56[%35, %c7] [%275], %274, %273 : memref<2x7xi64>, vector<7x3x3xi32>, vector<7x3x3xi1>, vector<7x3x3xi64> into vector<7x3x3xi64>
        %277 = math.absi %5 : tensor<3x7xi16>
        %278 = arith.shrui %true_3, %extracted_24 : i1
        %279 = vector.splat %c-4009_i16 : vector<3x7xi16>
        %280 = arith.divui %c1969275858_i32, %34 : i32
        %281 = arith.muli %extracted_28, %34 : i32
        scf.yield
      }
      default {
        %263 = arith.remsi %c783155345_i64, %c783155345_i64 : i64
        %264 = arith.remui %c912109256_i32, %34 : i32
        memref.assume_alignment %108, 4 : memref<3x7xi32>
        %265 = tensor.empty() : tensor<7x13xi1>
        %266 = tensor.empty() : tensor<2x13xi1>
        %267 = linalg.matmul ins(%16, %265 : tensor<2x7xi1>, tensor<7x13xi1>) outs(%266 : tensor<2x13xi1>) -> tensor<2x13xi1>
        %268 = affine.load %alloc_21[%c9, %c7] : memref<3x7xi64>
        %extracted_56 = tensor.extract %cast_31[%c0, %c0] : tensor<?x?xi1>
        %alloca_57 = memref.alloca() : memref<7x3x3xi64>
        %269 = index.floordivs %204, %62
        %270 = bufferization.clone %alloc_8 : memref<2x7xi32> to memref<2x7xi32>
        %271 = math.powf %splat, %0 : tensor<7x3x3xf16>
        %272 = arith.minf %cst_1, %cst : f32
        %inserted_58 = tensor.insert %cst_0 into %0[%c2, %c2, %c2] : tensor<7x3x3xf16>
        memref.assume_alignment %alloc_16, 16 : memref<7x3x3xi16>
        %273 = vector.broadcast %cst : f32 to vector<2x7xf32>
        %274 = vector.fma %273, %273, %273 : vector<2x7xf32>
        %275 = math.atan2 %cst_4, %cst_4 : f32
        %276 = vector.bitcast %129 : vector<1x2xi1> to vector<1x2xi1>
      }
      %251 = math.roundeven %0 : tensor<7x3x3xf16>
      %252 = arith.cmpf oge, %cst, %cst : f32
      %253 = vector.splat %c11 : vector<3x7xindex>
      %254 = tensor.empty() : tensor<7x3x3xf16>
      %255 = arith.shrui %c912109256_i32, %c1969275858_i32 : i32
      %cast_53 = tensor.cast %8 : tensor<3x2xi16> to tensor<?x?xi16>
      %256 = tensor.empty() : tensor<3x7xi16>
      %mapped_54 = linalg.map ins(%2, %75 : tensor<3x7xi16>, tensor<3x7xi16>) outs(%256 : tensor<3x7xi16>)
        (%in: i16, %in_56: i16) {
          %263 = arith.minsi %extracted_24, %false_5 : i1
          %264 = vector.load %162[%c0, %c0, %c1] : memref<7x3x3xi1>, vector<7x3x3xi1>
          %265 = arith.shrui %extracted, %extracted_24 : i1
          %266 = vector.multi_reduction <add>, %173, %174 [] : vector<3x7xf32> to vector<3x7xf32>
          %267 = math.absf %0 : tensor<7x3x3xf16>
          %268 = vector.insertelement %cst, %20[%212 : index] : vector<3xf32>
          %269 = bufferization.to_memref %9 : memref<3x2xi64>
          %270 = arith.minsi %true_3, %true_3 : i1
          memref.assume_alignment %108, 2 : memref<3x7xi32>
          %271 = math.ceil %splat : tensor<7x3x3xf16>
          %272 = memref.load %alloc_22[%c0] : memref<7xi32>
          %273 = arith.shrui %c783155345_i64, %c783155345_i64 : i64
          %274 = memref.atomic_rmw mins %c-4009_i16, %alloc_7[%c0, %c0] : (i16, memref<3x2xi16>) -> i16
          %275 = arith.addf %cst_0, %cst_0 : f16
          %276 = math.expm1 %expanded : tensor<7x3x3x1xf16>
          %277 = arith.cmpi sge, %34, %extracted_28 : i32
          memref.assume_alignment %alloc_18, 2 : memref<3x2xi64>
          %278 = vector.broadcast %cst : f32 to vector<3x2xf32>
          %279 = vector.fma %278, %278, %278 : vector<3x2xf32>
          %280 = index.add %c15, %c6
          %cast_57 = tensor.cast %2 : tensor<3x7xi16> to tensor<?x?xi16>
          %281 = vector.splat %c7 : vector<3x2xindex>
          %282 = arith.ori %extracted_28, %c912109256_i32 : i32
          %283 = math.log %cst_0 : f16
          %284 = math.atan2 %expanded, %expanded : tensor<7x3x3x1xf16>
          %285 = arith.remf %cst_0, %cst_2 : f16
          %286 = vector.load %alloc_7[%c2, %c0] : memref<3x2xi16>, vector<3x2xi16>
          %287 = vector.broadcast %true : i1 to vector<3x3xi1>
          %288 = vector.outerproduct %110, %110, %287 {kind = #vector.kind<minsi>} : vector<3xi1>, vector<3xi1>
          %289 = arith.minsi %in, %c8066_i16 : i16
          %290 = memref.load %alloc_9[%c0, %c1] : memref<3x7xi1>
          %291 = index.divu %c3, %131
          %292 = math.fma %cst, %cst_1, %cst_4 : f32
          %293 = index.floordivs %291, %c3
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %257 = math.ceil %15 : tensor<2x7xf16>
      %258 = math.round %0 : tensor<7x3x3xf16>
      %259 = vector.reduction <and>, %149 : vector<3xi16> into i16
      %260 = math.log2 %cst_2 : f16
      %inserted_55 = tensor.insert %c1969275858_i32 into %cast_37[%c0, %c0] : tensor<?x?xi32>
      %261 = vector.extract %26[1] : vector<3x2xi1>
      %262 = vector.load %alloc_13[%c2, %c0] : memref<3x2xf32>, vector<3x2xf32>
      scf.yield
    }
    %250 = affine.vector_load %81[%c6, %91, %219] : memref<7x3x3xi1>, vector<13xi1>
    affine.vector_store %250, %alloc_19[%c1, %c0, %c2] : memref<7x3x3xi1>, vector<13xi1>
    vector.print %20 : vector<3xf32>
    vector.print %26 : vector<3x2xi1>
    vector.print %29 : vector<3xf32>
    vector.print %42 : vector<3x7xi1>
    vector.print %48 : vector<3xf32>
    vector.print %67 : vector<3x7xi1>
    vector.print %69 : vector<7xi1>
    vector.print %84 : vector<3xf32>
    vector.print %95 : vector<3x2xi1>
    vector.print %110 : vector<3xi1>
    vector.print %129 : vector<1x2xi1>
    vector.print %132 : vector<1x7xi1>
    vector.print %140 : vector<7xi1>
    vector.print %146 : vector<7xi1>
    vector.print %149 : vector<3xi16>
    vector.print %150 : vector<3xi16>
    vector.print %165 : vector<3xf32>
    vector.print %169 : vector<7x3x3xf32>
    vector.print %170 : vector<7x3x3xf32>
    vector.print %173 : vector<3x7xf32>
    vector.print %174 : vector<3x7xf32>
    vector.print %175 : vector<3xf32>
    vector.print %192 : vector<1xi16>
    vector.print %209 : vector<3x7xi1>
    vector.print %235 : vector<2xi1>
    vector.print %250 : vector<13xi1>
    vector.print %cst : f32
    vector.print %c951144787_i64 : i64
    vector.print %c1969275858_i32 : i32
    vector.print %c-4009_i16 : i16
    vector.print %true : i1
    vector.print %cst_0 : f16
    vector.print %c912109256_i32 : i32
    vector.print %cst_1 : f32
    vector.print %cst_2 : f16
    vector.print %c783155345_i64 : i64
    vector.print %false : i1
    vector.print %true_3 : i1
    vector.print %c8066_i16 : i16
    vector.print %cst_4 : f32
    vector.print %false_5 : i1
    vector.print %false_6 : i1
    vector.print %34 : i32
    vector.print %extracted : i1
    vector.print %extracted_24 : i1
    vector.print %extracted_28 : i32
    return %cst_1 : f32
  }
}
