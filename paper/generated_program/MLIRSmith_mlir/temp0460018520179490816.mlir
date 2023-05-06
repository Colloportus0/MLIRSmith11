module {
  func.func @func1(%arg0: memref<4xf32>, %arg1: tensor<4x7xi16>, %arg2: index) -> index {
    %c-9787_i16 = arith.constant -9787 : i16
    %cst = arith.constant 3.292800e+04 : f16
    %true = arith.constant true
    %c23138_i16 = arith.constant 23138 : i16
    %true_0 = arith.constant true
    %false = arith.constant false
    %c352219708_i32 = arith.constant 352219708 : i32
    %c16358_i16 = arith.constant 16358 : i16
    %c-3111_i16 = arith.constant -3111 : i16
    %true_1 = arith.constant true
    %true_2 = arith.constant true
    %cst_3 = arith.constant 4.790400e+04 : f16
    %false_4 = arith.constant false
    %cst_5 = arith.constant 1.05223142E+9 : f32
    %c1952435290_i64 = arith.constant 1952435290 : i64
    %c2113043670_i64 = arith.constant 2113043670 : i64
    %0 = tensor.empty() : tensor<5x12xi1>
    %1 = tensor.empty() : tensor<4xi16>
    %2 = tensor.empty() : tensor<4x7xf16>
    %3 = tensor.empty() : tensor<7xi1>
    %4 = tensor.empty() : tensor<5x12xi16>
    %5 = tensor.empty() : tensor<5x12xf32>
    %6 = tensor.empty() : tensor<5x12xf16>
    %7 = tensor.empty() : tensor<4xi32>
    %8 = tensor.empty() : tensor<7xi64>
    %9 = tensor.empty() : tensor<5x12xf16>
    %10 = tensor.empty() : tensor<7xi16>
    %11 = tensor.empty() : tensor<4xi32>
    %12 = tensor.empty() : tensor<4x7xi1>
    %13 = tensor.empty() : tensor<7xf32>
    %14 = tensor.empty() : tensor<5x12xi32>
    %15 = tensor.empty() : tensor<4x7xf32>
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
    %alloc = memref.alloc() : memref<7xf32>
    %alloc_6 = memref.alloc() : memref<5x12xi1>
    %alloc_7 = memref.alloc() : memref<4x7xi64>
    %alloc_8 = memref.alloc() : memref<4xf16>
    %alloc_9 = memref.alloc() : memref<7xf16>
    %alloc_10 = memref.alloc() : memref<4x7xf16>
    %alloc_11 = memref.alloc() : memref<4x7xf32>
    %alloc_12 = memref.alloc() : memref<5x12xi16>
    %alloc_13 = memref.alloc() : memref<4x7xi16>
    %alloc_14 = memref.alloc() : memref<4x7xf16>
    %alloc_15 = memref.alloc() : memref<4x7xi1>
    %alloc_16 = memref.alloc() : memref<4xi64>
    %alloc_17 = memref.alloc() : memref<5x12xi1>
    %alloc_18 = memref.alloc() : memref<4xi32>
    %alloc_19 = memref.alloc() : memref<4xf16>
    %alloc_20 = memref.alloc() : memref<7xf32>
    %16 = tensor.empty() : tensor<4x7xf32>
    %17 = linalg.copy ins(%15 : tensor<4x7xf32>) outs(%16 : tensor<4x7xf32>) -> tensor<4x7xf32>
    %18 = tensor.empty() : tensor<7xf32>
    %transposed = linalg.transpose ins(%alloc_20 : memref<7xf32>) outs(%18 : tensor<7xf32>) permutation = [0] 
    %alloc_21 = memref.alloc() : memref<f32>
    linalg.reduce ins(%alloc : memref<7xf32>) outs(%alloc_21 : memref<f32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        scf.if %true_0 {
          %272 = affine.load %alloc_20[%c8] : memref<7xf32>
          %273 = vector.broadcast %272 : f32 to vector<4x7xf32>
          %274 = vector.broadcast %true_0 : i1 to vector<4x7xi1>
          %275 = vector.broadcast %c352219708_i32 : i32 to vector<4x7xi32>
          %276 = vector.gather %alloc_11[%c1, %c11] [%275], %274, %273 : memref<4x7xf32>, vector<4x7xi32>, vector<4x7xi1>, vector<4x7xf32> into vector<4x7xf32>
          %277 = bufferization.to_tensor %alloc : memref<7xf32>
          %278 = math.atan %cst_5 : f32
          vector.print %276 : vector<4x7xf32>
          %279 = vector.broadcast %272 : f32 to vector<4xf32>
          %dest_47, %accumulated_value_48 = vector.scan <mul>, %273, %279 {inclusive = false, reduction_dim = 1 : i64} : vector<4x7xf32>, vector<4xf32>
          %280 = math.absf %cst : f16
          %281 = math.ceil %15 : tensor<4x7xf32>
        }
        %264 = index.mul %c5, %c11
        %265 = tensor.empty() : tensor<7x7x7xi1>
        %266 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3, %3, %3 : tensor<7xi1>, tensor<7xi1>, tensor<7xi1>) outs(%265 : tensor<7x7x7xi1>) {
        ^bb0(%in_47: i1, %in_48: i1, %in_49: i1, %out: i1):
          %272 = math.ipowi %in_49, %true_0 : i1
          %273 = arith.floordivsi %in_48, %true : i1
          %274 = bufferization.clone %alloc_15 : memref<4x7xi1> to memref<4x7xi1>
          %275 = arith.andi %true, %in_47 : i1
          %276 = vector.broadcast %cst_5 : f32 to vector<1xf32>
          %277 = vector.multi_reduction <maxf>, %276, %276 [] : vector<1xf32> to vector<1xf32>
          memref.copy %alloc_14, %alloc_10 : memref<4x7xf16> to memref<4x7xf16>
          %278 = math.log1p %13 : tensor<7xf32>
          %279 = math.fma %transposed, %13, %transposed : tensor<7xf32>
          %280 = arith.muli %c-3111_i16, %c16358_i16 : i16
          %281 = vector.flat_transpose %276 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
          %splat_50 = tensor.splat %init : tensor<4x7xf32>
          %282 = math.ctpop %in_48 : i1
          %283 = vector.insert %in, %276 [0] : f32 into vector<1xf32>
          %284 = arith.remf %cst_5, %cst_5 : f32
          %285 = arith.remf %in, %in : f32
          %286 = math.ceil %15 : tensor<4x7xf32>
          %287 = math.atan %6 : tensor<5x12xf16>
          %288 = index.ceildivu %c8, %c12
          %289 = math.roundeven %splat_50 : tensor<4x7xf32>
          %290 = arith.cmpi sle, %c-9787_i16, %c-9787_i16 : i16
          %291 = arith.ori %c1952435290_i64, %c1952435290_i64 : i64
          %292 = vector.flat_transpose %281 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
          %293 = vector.broadcast %init : f32 to vector<4x12x5xf32>
          %294 = vector.broadcast %init : f32 to vector<12x5xf32>
          %dest_51, %accumulated_value_52 = vector.scan <mul>, %293, %294 {inclusive = false, reduction_dim = 0 : i64} : vector<4x12x5xf32>, vector<12x5xf32>
          %295 = arith.floordivsi %c16358_i16, %c16358_i16 : i16
          %296 = vector.broadcast %cst_3 : f16 to vector<12x5x4xf16>
          %297 = vector.broadcast %cst_3 : f16 to vector<5x4xf16>
          %dest_53, %accumulated_value_54 = vector.scan <mul>, %296, %297 {inclusive = true, reduction_dim = 0 : i64} : vector<12x5x4xf16>, vector<5x4xf16>
          %298 = math.tanh %cst_3 : f16
          %299 = arith.remui %c23138_i16, %c-9787_i16 : i16
          %300 = math.powf %5, %5 : tensor<5x12xf32>
          %301 = tensor.empty(%c6) : tensor<?xi32>
          %302 = math.atan %18 : tensor<7xf32>
          %303 = arith.divui %false, %true : i1
          %304 = math.log %5 : tensor<5x12xf32>
          linalg.yield %in_49 : i1
        } -> tensor<7x7x7xi1>
        %267 = scf.execute_region -> tensor<4xf32> {
          %272 = vector.broadcast %c23138_i16 : i16 to vector<7xi16>
          vector.print %272 : vector<7xi16>
          %273 = math.ceil %9 : tensor<5x12xf16>
          %274 = math.fma %init, %in, %cst_5 : f32
          affine.store %true, %alloc_15[%c2, %c11] : memref<4x7xi1>
          %275 = arith.addf %cst_3, %cst_3 : f16
          %276 = math.exp2 %18 : tensor<7xf32>
          %277 = index.floordivs %c10, %c9
          %278 = arith.negf %in : f32
          %279 = math.ipowi %true_2, %false_4 : i1
          %280 = arith.divf %cst_5, %init : f32
          %281 = math.tanh %13 : tensor<7xf32>
          %282 = bufferization.clone %alloc_17 : memref<5x12xi1> to memref<5x12xi1>
          %283 = vector.shuffle %272, %272 [0, 2, 4, 5, 7, 8, 9, 10, 11, 12] : vector<7xi16>, vector<7xi16>
          %284 = affine.load %alloc_9[%c5] : memref<7xf16>
          %285 = math.log1p %13 : tensor<7xf32>
          %286 = math.absf %6 : tensor<5x12xf16>
          %287 = tensor.empty() : tensor<4xf32>
          scf.yield %287 : tensor<4xf32>
        }
        %268 = arith.ori %true, %true_0 : i1
        %269 = vector.broadcast %c1952435290_i64 : i64 to vector<5x12xi64>
        vector.print %269 : vector<5x12xi64>
        %270 = math.expm1 %cst_3 : f16
        %271 = affine.load %alloc_15[%c8, %c7] : memref<4x7xi1>
        %cst_46 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_46 : f32
      }
    scf.parallel (%arg3, %arg4) = (%c4, %c9) to (%c13, %c5) step (%c3, %c14) {
      %264 = vector.broadcast %c352219708_i32 : i32 to vector<4xi32>
      %265 = vector.broadcast %c352219708_i32 : i32 to vector<4x4xi32>
      %266 = vector.outerproduct %264, %264, %265 {kind = #vector.kind<xor>} : vector<4xi32>, vector<4xi32>
      %267 = math.log %cst_5 : f32
      %268 = math.ctpop %1 : tensor<4xi16>
      %269 = index.divs %c3, %arg4
      %270 = vector.broadcast %cst : f16 to vector<12xf16>
      %271 = vector.broadcast %cst : f16 to vector<12x12xf16>
      %272 = vector.outerproduct %270, %270, %271 {kind = #vector.kind<add>} : vector<12xf16>, vector<12xf16>
      %273 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 * 256)>(%c4, %arg3, %c2, %c6)
      %274 = vector.broadcast %c352219708_i32 : i32 to vector<4xi32>
      vector.print %274 : vector<4xi32>
      %275 = arith.xori %c-3111_i16, %c-3111_i16 : i16
      %276 = math.round %cst : f16
      %277 = vector.broadcast %c352219708_i32 : i32 to vector<4x4xi32>
      %278 = vector.outerproduct %274, %274, %277 {kind = #vector.kind<add>} : vector<4xi32>, vector<4xi32>
      %279 = arith.maxui %true, %true_0 : i1
      %280 = arith.negf %cst : f16
      %281 = math.log %2 : tensor<4x7xf16>
      %282 = math.tan %6 : tensor<5x12xf16>
      %283 = index.castu %c16358_i16 : i16 to index
      %284 = vector.bitcast %274 : vector<4xi32> to vector<4xi32>
      scf.yield
    }
    %19 = affine.vector_load %alloc_15[%c13, %c2] : memref<4x7xi1>, vector<5xi1>
    affine.vector_store %19, %alloc_6[%c13, %c15] : memref<5x12xi1>, vector<5xi1>
    %20 = tensor.empty() : tensor<7xf32>
    %21 = tensor.empty() : tensor<f32>
    %22 = linalg.dot ins(%transposed, %20 : tensor<7xf32>, tensor<7xf32>) outs(%21 : tensor<f32>) -> tensor<f32>
    %cast = tensor.cast %21 : tensor<f32> to tensor<f32>
    %23 = scf.while (%arg3 = %c23138_i16) : (i16) -> i16 {
      memref.tensor_store %20, %alloc_20 : memref<7xf32>
      %264 = math.log %21 : tensor<f32>
      %265 = index.ceildivs %c10, %c5
      %266 = arith.addi %false_4, %false : i1
      %267 = math.copysign %cst_3, %cst_3 : f16
      %268 = vector.shuffle %19, %19 [1, 2, 5, 6, 7, 8, 9] : vector<5xi1>, vector<5xi1>
      %269 = arith.negf %cst_3 : f16
      %expanded_46 = tensor.expand_shape %4 [[0], [1, 2]] : tensor<5x12xi16> into tensor<5x12x1xi16>
      scf.condition(%true_0) %c-9787_i16 : i16
    } do {
    ^bb0(%arg3: i16):
      %alloca_46 = memref.alloca() : memref<5x12xi32>
      %264 = arith.remui %c2113043670_i64, %c2113043670_i64 : i64
      %265 = affine.load %alloc_19[%c5] : memref<4xf16>
      %266 = math.round %13 : tensor<7xf32>
      %267 = math.ctpop %8 : tensor<7xi64>
      %268 = vector.extract_strided_slice %19 {offsets = [0], sizes = [2], strides = [1]} : vector<5xi1> to vector<2xi1>
      %269 = index.maxu %c7, %c7
      %270 = math.round %16 : tensor<4x7xf32>
      %271 = scf.while (%arg4 = %alloc_7) : (memref<4x7xi64>) -> memref<4x7xi64> {
        %279 = math.log %5 : tensor<5x12xf32>
        %280 = tensor.empty(%c1) : tensor<4x?xf32>
        %281 = math.roundeven %16 : tensor<4x7xf32>
        %282 = vector.insertelement %true, %268[%c10 : index] : vector<2xi1>
        %283 = vector.broadcast %c352219708_i32 : i32 to vector<4x7xi32>
        %284 = math.absi %12 : tensor<4x7xi1>
        %285 = affine.max affine_map<(d0) -> ((d0 - 64) ceildiv 64, (((d0 - 64) ceildiv 64) ceildiv 2) * 8, (d0 - 64) ceildiv 64 - d0 - 16, ((d0 - 64) ceildiv 64) ceildiv 2)>(%c3)
        %286 = math.fma %22, %21, %21 : tensor<f32>
        scf.condition(%false_4) %alloc_7 : memref<4x7xi64>
      } do {
      ^bb0(%arg4: memref<4x7xi64>):
        %279 = bufferization.clone %alloc_10 : memref<4x7xf16> to memref<4x7xf16>
        %280 = bufferization.clone %alloc_6 : memref<5x12xi1> to memref<5x12xi1>
        %281 = math.log2 %cst_5 : f32
        %282 = math.copysign %15, %15 : tensor<4x7xf32>
        %283 = index.ceildivu %c2, %c2
        %284 = math.round %2 : tensor<4x7xf16>
        vector.print %19 : vector<5xi1>
        %285 = index.add %c12, %c11
        %alloc_49 = memref.alloc() : memref<7x5xf32>
        %286 = tensor.empty() : tensor<4x5xf32>
        %287 = linalg.matmul ins(%16, %alloc_49 : tensor<4x7xf32>, memref<7x5xf32>) outs(%286 : tensor<4x5xf32>) -> tensor<4x5xf32>
        %cast_50 = tensor.cast %20 : tensor<7xf32> to tensor<?xf32>
        %288 = arith.xori %true, %false : i1
        bufferization.dealloc_tensor %3 : tensor<7xi1>
        %alloc_51 = memref.alloc() : memref<5x12xf16>
        memref.tensor_store %9, %alloc_51 : memref<5x12xf16>
        %289 = index.floordivs %c2, %c8
        %290 = bufferization.to_tensor %alloc_13 : memref<4x7xi16>
        %291 = vector.broadcast %cst_5 : f32 to vector<5x12xf32>
        %292 = vector.fma %291, %291, %291 : vector<5x12xf32>
        scf.yield %alloc_7 : memref<4x7xi64>
      }
      %272 = math.ceil %15 : tensor<4x7xf32>
      %273 = vector.insertelement %true_0, %268[%c13 : index] : vector<2xi1>
      %274 = arith.addf %cst_5, %cst_5 : f32
      %275 = index.divs %269, %c14
      %276 = math.powf %15, %15 : tensor<4x7xf32>
      scf.execute_region {
        %279 = arith.minf %cst_5, %cst_5 : f32
        %cst_49 = arith.constant 1.000000e+00 : f32
        %280 = vector.transfer_read %alloc[%c7], %cst_49 : memref<7xf32>, vector<f32>
        %281 = math.log %13 : tensor<7xf32>
        %282 = affine.min affine_map<(d0, d1, d2) -> (d0 + 128, d2 * -2, d1 * 2, d0)>(%c14, %c10, %c1)
        %283 = math.exp %18 : tensor<7xf32>
        %284 = arith.cmpi ule, %true, %false : i1
        %285 = index.divs %c4, %269
        %286 = bufferization.clone %alloc_15 : memref<4x7xi1> to memref<4x7xi1>
        %287 = affine.max affine_map<(d0) -> (d0 + d0 * 2 + 128)>(%285)
        %288 = vector.multi_reduction <minui>, %19, %19 [] : vector<5xi1> to vector<5xi1>
        %289 = math.tan %22 : tensor<f32>
        %290 = vector.flat_transpose %19 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
        %291 = math.log2 %transposed : tensor<7xf32>
        %292 = arith.xori %c-3111_i16, %c23138_i16 : i16
        %293 = math.absf %17 : tensor<4x7xf32>
        %294 = math.round %9 : tensor<5x12xf16>
        scf.yield
      }
      %277 = vector.broadcast %c352219708_i32 : i32 to vector<4x12x7xi32>
      %278 = vector.broadcast %c352219708_i32 : i32 to vector<12x7xi32>
      %dest_47, %accumulated_value_48 = vector.scan <mul>, %277, %278 {inclusive = false, reduction_dim = 0 : i64} : vector<4x12x7xi32>, vector<12x7xi32>
      scf.yield %c-9787_i16 : i16
    }
    %24 = math.powf %6, %9 : tensor<5x12xf16>
    %25 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 * 16 + 8, d1, 0)>(%c12, %c2, %c12, %c1)
    %26 = arith.maxui %c1952435290_i64, %c1952435290_i64 : i64
    %27 = math.powf %2, %2 : tensor<4x7xf16>
    %28 = affine.min affine_map<(d0) -> (-(d0 * 2 + d0 - (d0 * 2 + 128)), d0 - (d0 * 2 + 128) + d0 * 2 + d0 - (d0 * 2 + 128) + 8)>(%c12)
    memref.assume_alignment %alloc_21, 8 : memref<f32>
    %29 = vector.extract_strided_slice %19 {offsets = [2], sizes = [2], strides = [1]} : vector<5xi1> to vector<2xi1>
    %30 = arith.maxui %c23138_i16, %c16358_i16 : i16
    %31 = vector.shuffle %29, %29 [0, 2, 3] : vector<2xi1>, vector<2xi1>
    %32 = arith.minsi %c23138_i16, %c23138_i16 : i16
    %33 = arith.ceildivsi %c2113043670_i64, %c2113043670_i64 : i64
    %34 = bufferization.clone %alloc_9 : memref<7xf16> to memref<7xf16>
    %35 = math.ceil %17 : tensor<4x7xf32>
    %36 = index.ceildivs %c0, %c12
    bufferization.dealloc_tensor %12 : tensor<4x7xi1>
    %37 = affine.apply affine_map<(d0, d1, d2) -> (d0 floordiv 4 - d2 * 128)>(%36, %c5, %c1)
    %38 = vector.multi_reduction <minsi>, %19, %19 [] : vector<5xi1> to vector<5xi1>
    %39 = math.fma %6, %6, %9 : tensor<5x12xf16>
    %40 = index.ceildivu %c10, %25
    %41 = arith.negf %cst_3 : f16
    %42 = index.divs %c13, %c12
    %43 = tensor.empty() : tensor<i32>
    %44 = math.fpowi %22, %43 : tensor<f32>, tensor<i32>
    %45 = vector.broadcast %c-9787_i16 : i16 to vector<5x12xi16>
    %46 = vector.broadcast %true_0 : i1 to vector<5x12xi1>
    %47 = vector.broadcast %c352219708_i32 : i32 to vector<5x12xi32>
    %48 = vector.gather %1[%c8] [%47], %46, %45 : tensor<4xi16>, vector<5x12xi32>, vector<5x12xi1>, vector<5x12xi16> into vector<5x12xi16>
    %49 = bufferization.to_tensor %alloc_10 : memref<4x7xf16>
    %50 = arith.floordivsi %c16358_i16, %c16358_i16 : i16
    memref.tensor_store %transposed, %alloc : memref<7xf32>
    %51 = math.ipowi %10, %10 : tensor<7xi16>
    %52 = vector.broadcast %cst_5 : f32 to vector<4xf32>
    %53 = vector.fma %52, %52, %52 : vector<4xf32>
    %54 = arith.addi %true_1, %true_0 : i1
    %55 = math.log %9 : tensor<5x12xf16>
    %56 = math.rsqrt %transposed : tensor<7xf32>
    %57 = math.ctpop %14 : tensor<5x12xi32>
    %58 = arith.muli %false_4, %true_0 : i1
    %cst_22 = arith.constant 1.000000e+00 : f16
    %59 = vector.transfer_read %alloc_14[%c3, %c4], %cst_22 : memref<4x7xf16>, vector<f16>
    %60 = affine.min affine_map<(d0) -> (128, 0, 2048)>(%c1)
    %expanded = tensor.expand_shape %12 [[0], [1, 2]] : tensor<4x7xi1> into tensor<4x7x1xi1>
    %61 = scf.while (%arg3 = %c352219708_i32) : (i32) -> i32 {
      %264 = index.ceildivs %c6, %c5
      %cst_46 = arith.constant 1.000000e+00 : f16
      %265 = vector.transfer_read %6[%c12, %c14], %cst_46 : tensor<5x12xf16>, vector<12xf16>
      %266 = index.mul %36, %c10
      %267 = math.expm1 %6 : tensor<5x12xf16>
      %268 = vector.broadcast %cst_46 : f16 to vector<5x12xf16>
      vector.print %268 : vector<5x12xf16>
      %269 = vector.broadcast %cst_5 : f32 to vector<7xf32>
      %270 = vector.broadcast %true_0 : i1 to vector<7xi1>
      %271 = vector.maskedload %alloc[%c4], %270, %269 : memref<7xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
      %272 = tensor.empty() : tensor<1x7xi1>
      %273 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded, %272 : tensor<4x7x1xi1>, tensor<1x7xi1>) outs(%expanded : tensor<4x7x1xi1>) {
      ^bb0(%in: i1, %in_47: i1, %out: i1):
        %274 = index.ceildivu %c6, %c14
        %275 = index.ceildivs %c0, %c7
        %276 = math.ctlz %14 : tensor<5x12xi32>
        %277 = arith.ceildivsi %c-3111_i16, %c-9787_i16 : i16
        %278 = index.mul %264, %c0
        %279 = arith.cmpf uno, %cst_46, %cst : f16
        %280 = vector.extract %52[0] : vector<4xf32>
        %281 = bufferization.to_tensor %alloc_15 : memref<4x7xi1>
        %282 = vector.multi_reduction <mul>, %52, %cst_5 [0] : vector<4xf32> to f32
        %283 = vector.broadcast %c352219708_i32 : i32 to vector<5x12xi32>
        %284 = arith.floordivsi %c23138_i16, %c23138_i16 : i16
        %285 = math.round %9 : tensor<5x12xf16>
        %286 = tensor.empty() : tensor<7xi32>
        %287 = math.fpowi %18, %286 : tensor<7xf32>, tensor<7xi32>
        %288 = math.atan %cst_46 : f16
        %289 = math.exp2 %20 : tensor<7xf32>
        %290 = arith.addf %282, %cst_5 : f32
        %291 = affine.apply affine_map<(d0, d1) -> ((d0 + 4) * 2)>(%266, %c9)
        %292 = arith.divsi %c-9787_i16, %c16358_i16 : i16
        %293 = math.tan %cst_22 : f16
        %294 = vector.splat %cst_46 : vector<4x7xf16>
        %295 = vector.transpose %271, [0] : vector<7xf32> to vector<7xf32>
        %296 = arith.maxui %false, %true_2 : i1
        %297 = index.ceildivs %c2, %c5
        %298 = index.maxu %274, %28
        %299 = math.round %cst : f16
        %300 = math.round %cst_5 : f32
        %301 = index.ceildivu %c9, %297
        memref.assume_alignment %alloc_17, 2 : memref<5x12xi1>
        %302 = vector.flat_transpose %270 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
        %303 = vector.shuffle %271, %269 [0, 8, 13] : vector<7xf32>, vector<7xf32>
        %304 = index.ceildivu %c13, %c13
        %305 = vector.reduction <minf>, %271 : vector<7xf32> into f32
        linalg.yield %in : i1
      } -> tensor<4x7x1xi1>
      scf.condition(%true_2) %c352219708_i32 : i32
    } do {
    ^bb0(%arg3: i32):
      %264 = math.atan %9 : tensor<5x12xf16>
      %265 = vector.multi_reduction <mul>, %53, %cst_5 [0] : vector<4xf32> to f32
      %266 = index.sub %25, %c3
      %267 = index.divs %c3, %28
      %generated_46 = tensor.generate %c11, %c12 {
      ^bb0(%arg4: index, %arg5: index):
        %278 = vector.broadcast %true_2 : i1 to vector<5x5xi1>
        %279 = vector.outerproduct %19, %19, %278 {kind = #vector.kind<maxui>} : vector<5xi1>, vector<5xi1>
        %280 = vector.bitcast %48 : vector<5x12xi16> to vector<5x12xf16>
        %281 = index.divs %c10, %40
        %282 = arith.ori %true_0, %true_1 : i1
        tensor.yield %cst : f16
      } : tensor<?x?xf16>
      %268 = tensor.empty() : tensor<7x4xi1>
      %269 = tensor.empty() : tensor<4xi1>
      %270 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%268, %269 : tensor<7x4xi1>, tensor<4xi1>) outs(%expanded : tensor<4x7x1xi1>) {
      ^bb0(%in: i1, %in_50: i1, %out: i1):
        %278 = index.maxs %37, %c13
        %279 = arith.divsi %true_1, %true_2 : i1
        %rank_51 = tensor.rank %4 : tensor<5x12xi16>
        %280 = arith.divui %in, %true : i1
        %281 = arith.cmpf true, %cst_3, %cst_3 : f16
        memref.assume_alignment %alloc_11, 16 : memref<4x7xf32>
        %alloc_52 = memref.alloc() : memref<4xi16>
        memref.tensor_store %1, %alloc_52 : memref<4xi16>
        %282 = math.cttz %c23138_i16 : i16
        %283 = affine.load %alloc_10[%c6, %c1] : memref<4x7xf16>
        %284 = vector.extract %47[3] : vector<5x12xi32>
        %285 = math.ctpop %8 : tensor<7xi64>
        %286 = bufferization.to_tensor %alloc_21 : memref<f32>
        %287 = index.divs %278, %c13
        %288 = vector.broadcast %c3 : index to vector<7xindex>
        %289 = vector.broadcast %false : i1 to vector<7xi1>
        %290 = vector.broadcast %cst : f16 to vector<7xf16>
        vector.scatter %alloc_14[%c2, %c2] [%288], %289, %290 : memref<4x7xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
        %291 = arith.negf %265 : f32
        %292 = math.atan2 %9, %6 : tensor<5x12xf16>
        %293 = vector.matrix_multiply %52, %53 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %294 = math.ctpop %in_50 : i1
        %295 = arith.maxui %c2113043670_i64, %c1952435290_i64 : i64
        %296 = index.maxu %c8, %c9
        %297 = math.ceil %15 : tensor<4x7xf32>
        %true_53 = index.bool.constant true
        %298 = vector.multi_reduction <mul>, %19, %19 [] : vector<5xi1> to vector<5xi1>
        %299 = index.maxs %c14, %42
        memref.copy %alloc_8, %alloc_19 : memref<4xf16> to memref<4xf16>
        %300 = arith.remf %cst_5, %cst_5 : f32
        %true_54 = index.bool.constant true
        %301 = vector.shuffle %52, %293 [0, 1, 3] : vector<4xf32>, vector<1xf32>
        %302 = affine.min affine_map<(d0) -> (d0 + 128, d0 + 128)>(%278)
        %303 = math.round %265 : f32
        %304 = vector.broadcast %28 : index to vector<7xindex>
        %305 = vector.broadcast %false : i1 to vector<7xi1>
        vector.scatter %alloc_6[%c1, %c1] [%304], %305, %305 : memref<5x12xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
        %306 = arith.maxui %in_50, %true_54 : i1
        linalg.yield %true_1 : i1
      } -> tensor<4x7x1xi1>
      %true_47 = index.bool.constant true
      %generated_48 = tensor.generate %c14, %40 {
      ^bb0(%arg4: index, %arg5: index):
        %278 = math.log2 %15 : tensor<4x7xf32>
        %279 = index.casts %true_2 : i1 to index
        %280 = vector.broadcast %c-9787_i16 : i16 to vector<5xi16>
        %dest_50, %accumulated_value_51 = vector.scan <xor>, %45, %280 {inclusive = true, reduction_dim = 1 : i64} : vector<5x12xi16>, vector<5xi16>
        %281 = bufferization.to_memref %43 : memref<i32>
        tensor.yield %c352219708_i32 : i32
      } : tensor<?x?xi32>
      %271 = arith.remui %true, %true_47 : i1
      %272 = scf.while (%arg4 = %alloc_16) : (memref<4xi64>) -> memref<4xi64> {
        %278 = arith.floordivsi %c-3111_i16, %c23138_i16 : i16
        %279 = bufferization.clone %alloc_19 : memref<4xf16> to memref<4xf16>
        %280 = vector.broadcast %c13 : index to vector<7xindex>
        %281 = vector.broadcast %true_2 : i1 to vector<7xi1>
        %282 = vector.broadcast %cst : f16 to vector<7xf16>
        vector.scatter %alloc_14[%c0, %c3] [%280], %281, %282 : memref<4x7xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
        %283 = bufferization.to_tensor %alloc_14 : memref<4x7xf16>
        %cast_50 = tensor.cast %6 : tensor<5x12xf16> to tensor<?x?xf16>
        %284 = arith.addi %arg3, %c352219708_i32 : i32
        %285 = bufferization.to_tensor %alloc_13 : memref<4x7xi16>
        %286 = vector.extract %47[2] : vector<5x12xi32>
        scf.condition(%false_4) %arg4 : memref<4xi64>
      } do {
      ^bb0(%arg4: memref<4xi64>):
        %278 = math.floor %49 : tensor<4x7xf16>
        %279 = arith.maxsi %c352219708_i32, %c352219708_i32 : i32
        %280 = bufferization.clone %alloc : memref<7xf32> to memref<7xf32>
        %281 = arith.negf %cst : f16
        memref.store %cst_3, %alloc_14[%c2, %c2] : memref<4x7xf16>
        %282 = index.castu %arg3 : i32 to index
        %283 = index.maxu %c9, %c11
        %284 = vector.matrix_multiply %19, %29 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 2 : i32} : (vector<5xi1>, vector<2xi1>) -> vector<10xi1>
        %285 = math.expm1 %cst_5 : f32
        %286 = vector.insertelement %false_4, %284[%60 : index] : vector<10xi1>
        %alloca_50 = memref.alloca() : memref<4x7xi32>
        %287 = math.powf %9, %6 : tensor<5x12xf16>
        %288 = arith.minui %c1952435290_i64, %c2113043670_i64 : i64
        %289 = index.divs %60, %42
        %290 = arith.xori %c-9787_i16, %c16358_i16 : i16
        %291 = arith.cmpf olt, %cst, %cst_22 : f16
        scf.yield %arg4 : memref<4xi64>
      }
      %273 = math.log2 %17 : tensor<4x7xf32>
      %274 = memref.atomic_rmw mulf %cst_22, %alloc_9[%c1] : (f16, memref<7xf16>) -> f16
      %275 = arith.remui %true_1, %false_4 : i1
      %rank_49 = tensor.rank %3 : tensor<7xi1>
      %276 = arith.addf %cst_22, %cst_3 : f16
      %277 = index.floordivs %c8, %c4
      scf.yield %c352219708_i32 : i32
    }
    %62 = math.log2 %cst_5 : f32
    %rank = tensor.rank %10 : tensor<7xi16>
    %63 = math.exp2 %17 : tensor<4x7xf32>
    %64 = math.absf %13 : tensor<7xf32>
    %65 = arith.divf %cst_22, %cst_22 : f16
    %66 = arith.subi %c-3111_i16, %c16358_i16 : i16
    %67 = arith.minsi %c1952435290_i64, %c1952435290_i64 : i64
    %68 = index.casts %c10 : index to i32
    %69 = scf.while (%arg3 = %alloc_19) : (memref<4xf16>) -> memref<4xf16> {
      memref.alloca_scope  {
        %272 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 - 2)>(%c4, %25, %c8, %c0)
        %273 = vector.flat_transpose %19 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
        %274 = affine.apply affine_map<(d0, d1) -> ((d0 + 4) * 2)>(%c9, %40)
        %false_46 = arith.constant false
        %false_47 = arith.constant false
        %275 = vector.transfer_read %expanded[%c3, %36, %c13], %false_47 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<4x7x1xi1>, vector<12xi1>
        memref.assume_alignment %alloc_12, 16 : memref<5x12xi16>
        %276 = affine.min affine_map<(d0, d1) -> (d1 * 64, d1 - (d0 + 16), d0 - d1)>(%rank, %c4)
        memref.assume_alignment %alloc_14, 16 : memref<4x7xf16>
        %277 = math.absf %5 : tensor<5x12xf32>
        %278 = math.sqrt %6 : tensor<5x12xf16>
        %279 = math.fma %6, %9, %9 : tensor<5x12xf16>
        %280 = arith.subi %c2113043670_i64, %c2113043670_i64 : i64
        %extracted_48 = tensor.extract %5[%c1, %c6] : tensor<5x12xf32>
        %281 = math.cttz %true_0 : i1
        %282 = vector.broadcast %c352219708_i32 : i32 to vector<4xi32>
        %283 = memref.atomic_rmw assign %cst, %alloc_19[%c3] : (f16, memref<4xf16>) -> f16
        %284 = tensor.empty() : tensor<12x7xf16>
        %285 = tensor.empty() : tensor<5x7xf16>
        %286 = linalg.matmul ins(%6, %284 : tensor<5x12xf16>, tensor<12x7xf16>) outs(%285 : tensor<5x7xf16>) -> tensor<5x7xf16>
        %287 = bufferization.to_tensor %alloc_17 : memref<5x12xi1>
        %288 = arith.ori %true, %true_0 : i1
        %289 = vector.matrix_multiply %52, %52 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %290 = index.ceildivs %c12, %c0
        %291 = arith.remui %true_0, %true_2 : i1
        %292 = arith.andi %c-3111_i16, %c16358_i16 : i16
        %293 = vector.bitcast %47 : vector<5x12xi32> to vector<5x12xi32>
        %294 = math.tan %9 : tensor<5x12xf16>
        %295 = arith.ori %true_0, %false_4 : i1
        bufferization.dealloc_tensor %cast : tensor<f32>
        %296 = vector.extract %45[2] : vector<5x12xi16>
        memref.assume_alignment %alloc_15, 1 : memref<4x7xi1>
        %297 = math.powf %5, %5 : tensor<5x12xf32>
        %dest_49, %accumulated_value_50 = vector.scan <maxsi>, %45, %296 {inclusive = false, reduction_dim = 0 : i64} : vector<5x12xi16>, vector<12xi16>
        %298 = math.fpowi %21, %43 : tensor<f32>, tensor<i32>
        bufferization.dealloc_tensor %12 : tensor<4x7xi1>
      }
      %264 = affine.min affine_map<(d0, d1) -> ((d0 * 2) floordiv 16, d0 * 2, -32, d0 * 16)>(%42, %c6)
      %265 = arith.divsi %false_4, %true : i1
      %266 = index.sizeof
      %267 = index.ceildivu %c1, %c0
      %268 = vector.broadcast %false_4 : i1 to vector<12xi1>
      %269 = vector.multi_reduction <add>, %46, %268 [0] : vector<5x12xi1> to vector<12xi1>
      %270 = arith.maxui %c2113043670_i64, %c2113043670_i64 : i64
      %271 = arith.floordivsi %true_1, %true_0 : i1
      scf.condition(%true_1) %arg3 : memref<4xf16>
    } do {
    ^bb0(%arg3: memref<4xf16>):
      %264 = math.ctlz %true_1 : i1
      %265 = vector.broadcast %c11 : index to vector<7xindex>
      %266 = vector.broadcast %true : i1 to vector<7xi1>
      vector.scatter %alloc_15[%c1, %c4] [%265], %266, %266 : memref<4x7xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
      %267 = tensor.empty() : tensor<7xi32>
      %268 = vector.broadcast %c352219708_i32 : i32 to vector<4xi32>
      %269 = vector.broadcast %true : i1 to vector<4xi1>
      %270 = vector.gather %267[%c13] [%268], %269, %268 : tensor<7xi32>, vector<4xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
      %271 = math.exp %5 : tensor<5x12xf32>
      %272 = math.exp2 %5 : tensor<5x12xf32>
      %273 = math.log1p %9 : tensor<5x12xf16>
      %274 = vector.matrix_multiply %270, %268 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi32>, vector<4xi32>) -> vector<1xi32>
      %275 = math.log2 %9 : tensor<5x12xf16>
      %276 = math.round %cst_5 : f32
      %277 = math.ceil %cst_5 : f32
      scf.execute_region {
        %282 = index.mul %25, %rank
        %rank_47 = tensor.rank %8 : tensor<7xi64>
        %283 = arith.negf %cst_22 : f16
        %284 = index.ceildivu %36, %c9
        %285 = math.ceil %17 : tensor<4x7xf32>
        %286 = index.ceildivu %c4, %rank
        %287 = arith.ori %c2113043670_i64, %c1952435290_i64 : i64
        %288 = arith.cmpf true, %cst, %cst : f16
        %289 = vector.extract_strided_slice %45 {offsets = [3], sizes = [1], strides = [1]} : vector<5x12xi16> to vector<1x12xi16>
        %290 = affine.load %alloc_8[%c15] : memref<4xf16>
        %291 = math.ipowi %8, %8 : tensor<7xi64>
        %292 = index.casts %true_2 : i1 to index
        %alloca_48 = memref.alloca() : memref<4xf32>
        %293 = index.maxu %c10, %c2
        %294 = vector.shuffle %45, %48 [0, 3, 4, 6, 8, 9] : vector<5x12xi16>, vector<5x12xi16>
        %295 = math.log2 %9 : tensor<5x12xf16>
        scf.yield
      }
      %278 = math.floor %22 : tensor<f32>
      %279 = bufferization.to_memref %2 : memref<4x7xf16>
      %280 = bufferization.clone %alloc_16 : memref<4xi64> to memref<4xi64>
      %generated_46 = tensor.generate %25 {
      ^bb0(%arg4: index):
        %282 = vector.flat_transpose %53 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        %alloca_47 = memref.alloca() : memref<4xi32>
        %283 = arith.floordivsi %true_1, %true_2 : i1
        %284 = bufferization.to_tensor %alloc_18 : memref<4xi32>
        tensor.yield %cst_5 : f32
      } : tensor<?xf32>
      %281 = bufferization.clone %279 : memref<4x7xf16> to memref<4x7xf16>
      scf.yield %alloc_19 : memref<4xf16>
    }
    %alloc_23 = memref.alloc() : memref<4x7x1xi1>
    memref.tensor_store %expanded, %alloc_23 : memref<4x7x1xi1>
    %70 = arith.divf %cst_3, %cst : f16
    %71 = arith.andi %c23138_i16, %c16358_i16 : i16
    %72 = arith.floordivsi %c-3111_i16, %c-9787_i16 : i16
    %73 = index.divs %c11, %rank
    %74 = math.ctpop %8 : tensor<7xi64>
    %75 = vector.reduction <add>, %53 : vector<4xf32> into f32
    %76 = vector.insertelement %true_0, %29[%c3 : index] : vector<2xi1>
    %77 = arith.divf %cst_3, %cst_3 : f16
    %78 = vector.broadcast %true_0 : i1 to vector<4x7xi1>
    %79 = math.absi %c-9787_i16 : i16
    %80 = arith.maxsi %true_1, %true_2 : i1
    %81 = index.ceildivs %rank, %c6
    %82 = math.rsqrt %18 : tensor<7xf32>
    %83 = bufferization.clone %alloc_7 : memref<4x7xi64> to memref<4x7xi64>
    %84 = arith.xori %true_1, %true_1 : i1
    %85 = index.ceildivs %37, %c13
    %86 = math.tan %5 : tensor<5x12xf32>
    %87 = index.divs %c14, %c4
    %88 = math.atan %cst_5 : f32
    %89 = vector.broadcast %c2113043670_i64 : i64 to vector<7xi64>
    %90 = math.log2 %5 : tensor<5x12xf32>
    %cast_24 = tensor.cast %6 : tensor<5x12xf16> to tensor<?x?xf16>
    memref.assume_alignment %alloc_17, 2 : memref<5x12xi1>
    %91 = arith.andi %c1952435290_i64, %c2113043670_i64 : i64
    %92 = math.ipowi %14, %14 : tensor<5x12xi32>
    %93 = math.round %cst_22 : f16
    %94 = tensor.empty(%c14) : tensor<?xf32>
    %95 = index.mul %c7, %85
    %96 = arith.minui %true_1, %true_2 : i1
    %97 = arith.ori %c23138_i16, %c16358_i16 : i16
    %98 = affine.for %arg3 = 0 to 34 iter_args(%arg4 = %1) -> (tensor<4xi16>) {
      affine.yield %arg4 : tensor<4xi16>
    }
    %99 = tensor.empty() : tensor<f32>
    %mapped = linalg.map ins(%21, %alloc_21, %alloc_21 : tensor<f32>, memref<f32>, memref<f32>) outs(%99 : tensor<f32>)
      (%in: f32, %in_46: f32, %in_47: f32) {
        %264 = arith.maxui %c1952435290_i64, %c1952435290_i64 : i64
        %265 = math.rsqrt %6 : tensor<5x12xf16>
        %266 = scf.if %false -> (i64) {
          %293 = index.floordivs %c12, %36
          %294 = vector.extract %46[0] : vector<5x12xi1>
          memref.copy %alloc, %alloc_20 : memref<7xf32> to memref<7xf32>
          %295 = affine.min affine_map<(d0, d1, d2) -> ((d0 - 8) mod 16)>(%28, %c4, %293)
          %296 = math.log2 %13 : tensor<7xf32>
          %297 = math.fma %5, %5, %5 : tensor<5x12xf32>
          %298 = math.expm1 %cst : f16
          %299 = index.divs %c1, %85
          scf.yield %c2113043670_i64 : i64
        } else {
          %293 = math.cttz %1 : tensor<4xi16>
          %294 = index.castu %false : i1 to index
          %295 = tensor.empty() : tensor<4x7xi32>
          %296 = math.fpowi %16, %295 : tensor<4x7xf32>, tensor<4x7xi32>
          %297 = vector.extract_strided_slice %78 {offsets = [2], sizes = [2], strides = [1]} : vector<4x7xi1> to vector<2x7xi1>
          %298 = arith.minui %true_1, %false : i1
          %299 = arith.muli %c23138_i16, %c-3111_i16 : i16
          %300 = vector.broadcast %81 : index to vector<7xindex>
          %301 = vector.broadcast %true_0 : i1 to vector<7xi1>
          %302 = vector.broadcast %in_47 : f32 to vector<7xf32>
          vector.scatter %alloc_21[] [%300], %301, %302 : memref<f32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
          %303 = vector.broadcast %true_1 : i1 to vector<12x12xi1>
          %304 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %46, %46, %303 : vector<5x12xi1>, vector<5x12xi1> into vector<12x12xi1>
          scf.yield %c2113043670_i64 : i64
        }
        memref.assume_alignment %alloc_13, 1 : memref<4x7xi16>
        %267 = math.log %2 : tensor<4x7xf16>
        %268 = vector.broadcast %in_46 : f32 to vector<7xf32>
        %269 = vector.fma %268, %268, %268 : vector<7xf32>
        %270 = math.absi %false_4 : i1
        %generated_48 = tensor.generate %42, %25 {
        ^bb0(%arg3: index, %arg4: index):
          %true_56 = index.bool.constant true
          %293 = math.expm1 %9 : tensor<5x12xf16>
          bufferization.dealloc_tensor %22 : tensor<f32>
          %294 = tensor.empty() : tensor<4x7xi32>
          %295 = math.fpowi %16, %294 : tensor<4x7xf32>, tensor<4x7xi32>
          tensor.yield %c16358_i16 : i16
        } : tensor<?x?xi16>
        %271 = index.divs %c7, %c14
        %272 = index.ceildivs %81, %60
        %273 = math.absf %2 : tensor<4x7xf16>
        %274 = arith.remf %cst, %cst_22 : f16
        %275 = math.exp %49 : tensor<4x7xf16>
        %276 = vector.broadcast %false : i1 to vector<12xi1>
        %dest_49, %accumulated_value_50 = vector.scan <minsi>, %46, %276 {inclusive = false, reduction_dim = 0 : i64} : vector<5x12xi1>, vector<12xi1>
        %expanded_51 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<4x7xf32> into tensor<4x7x1xf32>
        %277 = arith.addi %true, %true_1 : i1
        %278 = math.tanh %9 : tensor<5x12xf16>
        %279 = arith.minui %true_0, %true_0 : i1
        %280 = arith.ori %c-3111_i16, %c16358_i16 : i16
        %281 = index.divs %36, %c15
        %282 = math.copysign %18, %13 : tensor<7xf32>
        %283 = math.floor %9 : tensor<5x12xf16>
        %284 = scf.while (%arg3 = %46) : (vector<5x12xi1>) -> vector<5x12xi1> {
          %293 = math.ceil %2 : tensor<4x7xf16>
          %294 = math.fma %in_47, %in_46, %in_46 : f32
          %295 = math.ctpop %8 : tensor<7xi64>
          %296 = vector.broadcast %cst : f16 to vector<7xf16>
          %297 = vector.broadcast %true_2 : i1 to vector<7xi1>
          %298 = vector.broadcast %c352219708_i32 : i32 to vector<7xi32>
          %299 = vector.gather %9[%271, %c9] [%298], %297, %296 : tensor<5x12xf16>, vector<7xi32>, vector<7xi1>, vector<7xf16> into vector<7xf16>
          %300 = math.round %6 : tensor<5x12xf16>
          %301 = math.ipowi %1, %1 : tensor<4xi16>
          %302 = index.maxu %87, %c13
          %303 = math.log %99 : tensor<f32>
          scf.condition(%true_1) %46 : vector<5x12xi1>
        } do {
        ^bb0(%arg3: vector<5x12xi1>):
          %293 = index.ceildivs %42, %87
          %294 = math.powf %cst_22, %cst_3 : f16
          %295 = index.mul %73, %c5
          %296 = arith.minui %266, %c2113043670_i64 : i64
          %297 = vector.multi_reduction <maxsi>, %48, %c23138_i16 [0, 1] : vector<5x12xi16> to i16
          %298 = arith.minsi %true, %false : i1
          %299 = arith.minui %297, %c23138_i16 : i16
          %300 = index.mul %c5, %272
          %301 = math.tan %15 : tensor<4x7xf32>
          %302 = math.atan %cst_3 : f16
          %rank_56 = tensor.rank %0 : tensor<5x12xi1>
          %303 = math.powf %2, %2 : tensor<4x7xf16>
          %304 = math.tanh %5 : tensor<5x12xf32>
          %305 = math.ceil %5 : tensor<5x12xf32>
          %306 = math.log2 %21 : tensor<f32>
          %307 = math.log10 %6 : tensor<5x12xf16>
          scf.yield %46 : vector<5x12xi1>
        }
        %285 = math.fma %17, %17, %15 : tensor<4x7xf32>
        %286 = arith.addi %c16358_i16, %c-9787_i16 : i16
        %287 = vector.broadcast %c-9787_i16 : i16 to vector<5xi16>
        %dest_52, %accumulated_value_53 = vector.scan <mul>, %48, %287 {inclusive = false, reduction_dim = 1 : i64} : vector<5x12xi16>, vector<5xi16>
        %288 = math.round %15 : tensor<4x7xf32>
        %rank_54 = tensor.rank %expanded_51 : tensor<4x7x1xf32>
        %289 = math.ceil %99 : tensor<f32>
        %290 = math.ceil %6 : tensor<5x12xf16>
        %291 = math.log10 %6 : tensor<5x12xf16>
        %292 = arith.cmpf one, %cst_5, %in : f32
        %cst_55 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_55 : f32
      }
    %100 = vector.create_mask %c13, %c14 : vector<5x12xi1>
    bufferization.dealloc_tensor %3 : tensor<7xi1>
    %false_25 = index.bool.constant false
    %101 = vector.shuffle %47, %47 [1, 3, 5, 6, 8, 9] : vector<5x12xi32>, vector<5x12xi32>
    %102 = vector.insertelement %cst_5, %52[%c13 : index] : vector<4xf32>
    %103 = arith.divui %true, %true : i1
    %104 = affine.min affine_map<(d0, d1, d2) -> (-d2 - 128, -d2 - d1, (-d2 - d1) mod 32)>(%c10, %60, %40)
    %105 = math.atan %13 : tensor<7xf32>
    %106 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 - 32)>(%c11, %36, %37, %73)
    %107 = math.fma %2, %49, %2 : tensor<4x7xf16>
    %true_26 = arith.constant true
    %false_27 = arith.constant false
    %108 = vector.transfer_read %12[%c15, %c12], %false_27 : tensor<4x7xi1>, vector<i1>
    %109 = arith.minsi %true_2, %true_2 : i1
    %110 = vector.broadcast %true_2 : i1 to vector<7xi1>
    %dest, %accumulated_value = vector.scan <xor>, %78, %110 {inclusive = false, reduction_dim = 0 : i64} : vector<4x7xi1>, vector<7xi1>
    %111 = index.maxs %c5, %c9
    %112 = math.exp2 %2 : tensor<4x7xf16>
    %113 = math.ctpop %false_4 : i1
    %114 = index.floordivs %111, %36
    %115 = index.maxu %c7, %c10
    %116 = vector.extract_strided_slice %29 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi1> to vector<2xi1>
    %117 = bufferization.to_tensor %alloc_8 : memref<4xf16>
    %118 = vector.broadcast %true : i1 to vector<5x5xi1>
    %119 = vector.outerproduct %19, %19, %118 {kind = #vector.kind<or>} : vector<5xi1>, vector<5xi1>
    %120 = math.copysign %cst_3, %cst_3 : f16
    %121 = math.round %22 : tensor<f32>
    %122 = math.ctpop %4 : tensor<5x12xi16>
    %123 = arith.remui %false_25, %true_26 : i1
    %124 = vector.shuffle %46, %100 [1, 5, 6, 7] : vector<5x12xi1>, vector<5x12xi1>
    %125 = index.floordivs %36, %87
    %from_elements = tensor.from_elements %c352219708_i32, %c352219708_i32, %c352219708_i32, %c352219708_i32, %c352219708_i32, %c352219708_i32, %c352219708_i32, %c352219708_i32, %c352219708_i32, %c352219708_i32, %c352219708_i32, %c352219708_i32, %c352219708_i32, %c352219708_i32, %c352219708_i32, %c352219708_i32, %c352219708_i32, %c352219708_i32, %c352219708_i32, %c352219708_i32, %c352219708_i32, %c352219708_i32, %c352219708_i32, %c352219708_i32, %c352219708_i32, %c352219708_i32, %c352219708_i32, %c352219708_i32 : tensor<4x7xi32>
    %126 = vector.broadcast %c1 : index to vector<12xindex>
    %127 = vector.broadcast %false_4 : i1 to vector<12xi1>
    %128 = vector.broadcast %c23138_i16 : i16 to vector<12xi16>
    vector.scatter %alloc_13[%c2, %c0] [%126], %127, %128 : memref<4x7xi16>, vector<12xindex>, vector<12xi1>, vector<12xi16>
    %splat = tensor.splat %cst_5 : tensor<7xf32>
    %129 = arith.divui %true_26, %true_0 : i1
    %130 = arith.minsi %false_25, %false_4 : i1
    %131 = index.ceildivs %106, %104
    %132 = index.divs %c9, %73
    memref.alloca_scope  {
      %264 = memref.atomic_rmw mulf %cst, %alloc_8[%c3] : (f16, memref<4xf16>) -> f16
      %265 = arith.andi %c1952435290_i64, %c1952435290_i64 : i64
      %266 = arith.shli %true, %true_1 : i1
      %generated_46 = tensor.generate %40 {
      ^bb0(%arg3: index, %arg4: index):
        %297 = arith.divf %cst, %cst : f16
        %298 = bufferization.clone %alloc_12 : memref<5x12xi16> to memref<5x12xi16>
        %299 = math.ctlz %true_2 : i1
        %300 = vector.broadcast %false_25 : i1 to vector<12xi1>
        %dest_49, %accumulated_value_50 = vector.scan <maxsi>, %100, %300 {inclusive = false, reduction_dim = 0 : i64} : vector<5x12xi1>, vector<12xi1>
        tensor.yield %c2113043670_i64 : i64
      } : tensor<?x12xi64>
      %267 = arith.remsi %c16358_i16, %c23138_i16 : i16
      %268 = arith.ori %c1952435290_i64, %c1952435290_i64 : i64
      %269 = math.expm1 %21 : tensor<f32>
      %270 = math.tan %13 : tensor<7xf32>
      %271 = memref.atomic_rmw minf %cst_5, %alloc_21[] : (f32, memref<f32>) -> f32
      %272 = math.roundeven %21 : tensor<f32>
      %273 = affine.max affine_map<(d0, d1) -> (0, -(d0 ceildiv 8))>(%c4, %87)
      %274 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded : tensor<4x7x1xi1>) {
      ^bb0(%out: i1):
        %297 = index.maxu %60, %87
        %298 = vector.broadcast %true_26 : i1 to vector<12xi1>
        %299 = vector.multi_reduction <maxsi>, %46, %298 [0] : vector<5x12xi1> to vector<12xi1>
        bufferization.dealloc_tensor %15 : tensor<4x7xf32>
        %300 = arith.ori %c1952435290_i64, %c2113043670_i64 : i64
        memref.assume_alignment %83, 8 : memref<4x7xi64>
        %301 = vector.broadcast %false_25 : i1 to vector<7xi1>
        %302 = vector.insert %301, %78 [2] : vector<7xi1> into vector<4x7xi1>
        %303 = math.round %20 : tensor<7xf32>
        %cast_49 = tensor.cast %20 : tensor<7xf32> to tensor<?xf32>
        %304 = vector.create_mask %37 : vector<4xi1>
        %305 = vector.broadcast %cst_22 : f16 to vector<12xf16>
        %306 = vector.maskedload %alloc_8[%c0], %298, %305 : memref<4xf16>, vector<12xi1>, vector<12xf16> into vector<12xf16>
        %false_50 = index.bool.constant false
        %307 = arith.minf %cst_5, %cst_5 : f32
        %308 = vector.insert %false, %29 [1] : i1 into vector<2xi1>
        %309 = math.log10 %22 : tensor<f32>
        %310 = vector.flat_transpose %301 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
        %311 = arith.divui %c-3111_i16, %c23138_i16 : i16
        %312 = math.ctlz %14 : tensor<5x12xi32>
        %313 = arith.andi %true, %false_4 : i1
        %314 = vector.bitcast %47 : vector<5x12xi32> to vector<5x12xi32>
        %315 = arith.divui %c23138_i16, %c23138_i16 : i16
        %316 = math.cttz %true_2 : i1
        %317 = arith.addi %true_26, %false_25 : i1
        %318 = arith.ori %c352219708_i32, %c352219708_i32 : i32
        %319 = arith.divf %cst_5, %cst_5 : f32
        %320 = math.ceil %5 : tensor<5x12xf32>
        %321 = math.floor %2 : tensor<4x7xf16>
        %322 = arith.divsi %c23138_i16, %c-3111_i16 : i16
        %323 = math.tan %21 : tensor<f32>
        %324 = math.floor %5 : tensor<5x12xf32>
        %325 = arith.addi %true_0, %true_1 : i1
        %326 = arith.cmpf true, %cst_22, %cst : f16
        %327 = math.ipowi %14, %14 : tensor<5x12xi32>
        linalg.yield %true_26 : i1
      } -> tensor<4x7x1xi1>
      %275 = bufferization.clone %alloc_19 : memref<4xf16> to memref<4xf16>
      %276 = math.ceil %cst_5 : f32
      %277 = arith.addf %cst_22, %cst_3 : f16
      %generated_47 = tensor.generate %c13, %c1 {
      ^bb0(%arg3: index, %arg4: index):
        memref.assume_alignment %83, 8 : memref<4x7xi64>
        %297 = arith.cmpi ult, %c352219708_i32, %c352219708_i32 : i32
        memref.store %cst_5, %alloc_11[%c2, %c6] : memref<4x7xf32>
        %298 = index.maxs %c11, %114
        tensor.yield %c2113043670_i64 : i64
      } : tensor<?x?xi64>
      %278 = vector.multi_reduction <minf>, %52, %cst_5 [0] : vector<4xf32> to f32
      %279 = vector.broadcast %28 : index to vector<12xindex>
      %280 = vector.broadcast %false_25 : i1 to vector<12xi1>
      vector.scatter %alloc_17[%c4, %c11] [%279], %280, %280 : memref<5x12xi1>, vector<12xindex>, vector<12xi1>, vector<12xi1>
      %281 = arith.addf %cst_22, %cst_3 : f16
      %282 = math.floor %transposed : tensor<7xf32>
      bufferization.dealloc_tensor %16 : tensor<4x7xf32>
      %283 = math.round %transposed : tensor<7xf32>
      %284 = bufferization.clone %83 : memref<4x7xi64> to memref<4x7xi64>
      %285 = math.ceil %cst_5 : f32
      %286 = arith.shrsi %true_0, %true_2 : i1
      %alloc_48 = memref.alloc() : memref<4xi16>
      %287 = vector.broadcast %c16358_i16 : i16 to vector<7xi16>
      %288 = vector.broadcast %true_1 : i1 to vector<7xi1>
      %289 = vector.broadcast %c352219708_i32 : i32 to vector<7xi32>
      %290 = vector.gather %alloc_48[%81] [%289], %288, %287 : memref<4xi16>, vector<7xi32>, vector<7xi1>, vector<7xi16> into vector<7xi16>
      %291 = math.ipowi %10, %10 : tensor<7xi16>
      %292 = index.divs %95, %c1
      %293 = math.fpowi %117, %7 : tensor<4xf16>, tensor<4xi32>
      %294 = math.powf %21, %21 : tensor<f32>
      %295 = bufferization.clone %alloc_18 : memref<4xi32> to memref<4xi32>
      %296 = math.round %6 : tensor<5x12xf16>
    }
    %133 = math.ipowi %10, %10 : tensor<7xi16>
    %134 = math.tanh %22 : tensor<f32>
    vector.print %46 : vector<5x12xi1>
    %135 = index.mul %87, %37
    %extracted = tensor.extract %14[%c1, %c8] : tensor<5x12xi32>
    %136 = bufferization.clone %83 : memref<4x7xi64> to memref<4x7xi64>
    %generated = tensor.generate %28, %c10 {
    ^bb0(%arg3: index, %arg4: index):
      %264 = vector.create_mask %36, %c7 : vector<5x12xi1>
      %265 = vector.broadcast %115 : index to vector<12xindex>
      %266 = vector.broadcast %true_2 : i1 to vector<12xi1>
      %267 = vector.broadcast %cst : f16 to vector<12xf16>
      vector.scatter %alloc_10[%c3, %c2] [%265], %266, %267 : memref<4x7xf16>, vector<12xindex>, vector<12xi1>, vector<12xf16>
      %268 = arith.addf %cst_3, %cst : f16
      %269 = index.divs %c8, %42
      tensor.yield %true : i1
    } : tensor<?x?xi1>
    %137 = math.ipowi %12, %12 : tensor<4x7xi1>
    %138 = affine.for %arg3 = 0 to 30 iter_args(%arg4 = %alloc_12) -> (memref<5x12xi16>) {
      affine.yield %alloc_12 : memref<5x12xi16>
    }
    vector.print %46 : vector<5x12xi1>
    %139 = math.log1p %6 : tensor<5x12xf16>
    %140 = vector.multi_reduction <or>, %46, %false_25 [0, 1] : vector<5x12xi1> to i1
    %141 = math.atan %13 : tensor<7xf32>
    %142 = math.cttz %140 : i1
    %143 = arith.minui %c1952435290_i64, %c1952435290_i64 : i64
    %144 = tensor.empty() : tensor<5x12xf16>
    %mapped_28 = linalg.map ins(%6, %6 : tensor<5x12xf16>, tensor<5x12xf16>) outs(%144 : tensor<5x12xf16>)
      (%in: f16, %in_46: f16) {
        %264 = affine.load %alloc_21[] : memref<f32>
        %alloca_47 = memref.alloca() : memref<4xi64>
        %265 = math.fpowi %21, %43 : tensor<f32>, tensor<i32>
        scf.if %true_1 {
          %293 = vector.splat %115 : vector<4x7xindex>
          %294 = index.ceildivs %42, %c8
          %295 = arith.floordivsi %c-9787_i16, %c23138_i16 : i16
          %296 = arith.cmpf ueq, %264, %264 : f32
          %297 = math.tan %16 : tensor<4x7xf32>
          %298 = index.maxs %294, %95
          %299 = arith.minsi %true_26, %false : i1
          %300 = index.sizeof
        }
        %266 = arith.divf %in, %in_46 : f16
        %267 = bufferization.clone %alloc_14 : memref<4x7xf16> to memref<4x7xf16>
        %268 = arith.xori %true_1, %false_25 : i1
        %269 = arith.remf %cst_3, %in_46 : f16
        %rank_48 = tensor.rank %10 : tensor<7xi16>
        %270 = index.mul %81, %c3
        %271 = arith.cmpf une, %cst_5, %264 : f32
        %272 = bufferization.to_tensor %alloc_8 : memref<4xf16>
        %generated_49 = tensor.generate %c13 {
        ^bb0(%arg3: index):
          %293 = math.round %2 : tensor<4x7xf16>
          %alloca_52 = memref.alloca() : memref<7xi64>
          memref.assume_alignment %83, 1 : memref<4x7xi64>
          %294 = arith.xori %c2113043670_i64, %c2113043670_i64 : i64
          tensor.yield %cst : f16
        } : tensor<?xf16>
        %273 = vector.broadcast %cst_5 : f32 to vector<4x7xf32>
        %274 = vector.fma %273, %273, %273 : vector<4x7xf32>
        %275 = math.round %18 : tensor<7xf32>
        %276 = math.ipowi %c16358_i16, %c-3111_i16 : i16
        %277 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %29, %116, %true_26 : vector<2xi1>, vector<2xi1> into i1
        %278 = math.floor %264 : f32
        %279 = math.ceil %9 : tensor<5x12xf16>
        %280 = vector.multi_reduction <add>, %48, %c23138_i16 [0, 1] : vector<5x12xi16> to i16
        %alloca_50 = memref.alloca() : memref<4xi16>
        %281 = vector.broadcast %cst_5 : f32 to vector<4x4xf32>
        %282 = vector.outerproduct %52, %53, %281 {kind = #vector.kind<mul>} : vector<4xf32>, vector<4xf32>
        %283 = scf.while (%arg3 = %29) : (vector<2xi1>) -> vector<2xi1> {
          %293 = index.divs %115, %81
          %294 = arith.negf %cst_22 : f16
          memref.assume_alignment %alloc, 4 : memref<7xf32>
          %295 = arith.ceildivsi %false_25, %false_25 : i1
          %296 = math.fma %13, %13, %20 : tensor<7xf32>
          %297 = index.divs %85, %25
          %298 = index.floordivs %c6, %rank
          %299 = math.tan %2 : tensor<4x7xf16>
          scf.condition(%true_0) %116 : vector<2xi1>
        } do {
        ^bb0(%arg3: vector<2xi1>):
          %293 = bufferization.clone %alloc : memref<7xf32> to memref<7xf32>
          %294 = math.atan2 %49, %2 : tensor<4x7xf16>
          %295 = math.expm1 %144 : tensor<5x12xf16>
          %296 = math.round %13 : tensor<7xf32>
          %297 = arith.remf %cst_5, %264 : f32
          %298 = vector.reduction <mul>, %116 : vector<2xi1> into i1
          %299 = math.atan %17 : tensor<4x7xf32>
          %300 = math.round %6 : tensor<5x12xf16>
          %301 = bufferization.clone %alloc_7 : memref<4x7xi64> to memref<4x7xi64>
          %302 = math.log2 %2 : tensor<4x7xf16>
          %303 = tensor.empty() : tensor<12x7xi1>
          %304 = tensor.empty() : tensor<5x7xi1>
          %305 = linalg.matmul ins(%0, %303 : tensor<5x12xi1>, tensor<12x7xi1>) outs(%304 : tensor<5x7xi1>) -> tensor<5x7xi1>
          %306 = vector.broadcast %140 : i1 to vector<4xi1>
          %307 = arith.remf %cst_5, %264 : f32
          %extracted_52 = tensor.extract %11[%c0] : tensor<4xi32>
          %308 = vector.create_mask %c14, %125 : vector<4x7xi1>
          %309 = math.floor %in : f16
          scf.yield %116 : vector<2xi1>
        }
        %284 = math.log %49 : tensor<4x7xf16>
        %285 = arith.divui %140, %false_4 : i1
        %286 = math.round %144 : tensor<5x12xf16>
        %c0_i16 = arith.constant 0 : i16
        %287 = vector.transfer_read %10[%c4], %c0_i16 : tensor<7xi16>, vector<i16>
        %288 = arith.xori %c-9787_i16, %c16358_i16 : i16
        %289 = arith.divf %in_46, %cst_22 : f16
        %290 = vector.matrix_multiply %53, %52 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %291 = math.absi %3 : tensor<7xi1>
        %292 = math.ctpop %c1952435290_i64 : i64
        %cst_51 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_51 : f16
      }
    %145 = math.log2 %16 : tensor<4x7xf32>
    %146 = arith.negf %cst_22 : f16
    %147 = arith.divui %false_25, %false : i1
    %148 = math.fma %transposed, %13, %18 : tensor<7xf32>
    memref.assume_alignment %alloc_16, 1 : memref<4xi64>
    %149 = bufferization.clone %83 : memref<4x7xi64> to memref<4x7xi64>
    memref.assume_alignment %136, 4 : memref<4x7xi64>
    %150 = bufferization.clone %alloc_13 : memref<4x7xi16> to memref<4x7xi16>
    %151 = bufferization.to_tensor %alloc_9 : memref<7xf16>
    %152 = arith.maxui %c1952435290_i64, %c2113043670_i64 : i64
    %153 = affine.max affine_map<(d0, d1) -> (0, d0 mod 64, d1, d0)>(%c5, %c10)
    %154 = vector.broadcast %false_4 : i1 to vector<7xi1>
    %155 = vector.multi_reduction <or>, %78, %154 [0] : vector<4x7xi1> to vector<7xi1>
    %cst_29 = arith.constant 1.000000e+00 : f32
    %cst_30 = arith.constant 0.000000e+00 : f32
    %156 = vector.transfer_read %13[%73], %cst_30 : tensor<7xf32>, vector<f32>
    %157 = arith.cmpi sge, %true_26, %false_4 : i1
    %c1_i32 = arith.constant 1 : i32
    %158 = vector.transfer_read %7[%c9], %c1_i32 : tensor<4xi32>, vector<i32>
    %159 = vector.broadcast %false_4 : i1 to vector<5x12xi1>
    %160 = index.ceildivs %c9, %c14
    %161 = math.round %144 : tensor<5x12xf16>
    %162 = tensor.empty() : tensor<7x4xi1>
    %163 = tensor.empty() : tensor<4x4xi1>
    %164 = linalg.matmul ins(%12, %162 : tensor<4x7xi1>, tensor<7x4xi1>) outs(%163 : tensor<4x4xi1>) -> tensor<4x4xi1>
    %165 = math.cttz %10 : tensor<7xi16>
    %166 = arith.floordivsi %140, %true : i1
    %generated_31 = tensor.generate %60 {
    ^bb0(%arg3: index):
      %264 = scf.while (%arg4 = %alloc_13) : (memref<4x7xi16>) -> memref<4x7xi16> {
        %267 = math.powf %13, %splat : tensor<7xf32>
        %268 = math.log10 %13 : tensor<7xf32>
        %269 = math.copysign %18, %13 : tensor<7xf32>
        %270 = math.log %15 : tensor<4x7xf32>
        %271 = index.mul %106, %c0
        %272 = index.add %42, %arg3
        %273 = math.rsqrt %9 : tensor<5x12xf16>
        %274 = math.atan %15 : tensor<4x7xf32>
        scf.condition(%true_2) %arg4 : memref<4x7xi16>
      } do {
      ^bb0(%arg4: memref<4x7xi16>):
        %267 = math.powf %9, %9 : tensor<5x12xf16>
        %268 = vector.extract %46[1] : vector<5x12xi1>
        %269 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 mod 16 - 16)>(%c11, %40, %c1, %25)
        %270 = vector.bitcast %268 : vector<12xi1> to vector<12xi1>
        %271 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 - 2)>(%81, %c14, %c5, %c1)
        %272 = math.ceil %17 : tensor<4x7xf32>
        %273 = math.expm1 %13 : tensor<7xf32>
        %274 = vector.insert %true_26, %270 [11] : i1 into vector<12xi1>
        %275 = math.floor %99 : tensor<f32>
        %expanded_46 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<4x7xf16> into tensor<4x7x1xf16>
        %dest_47, %accumulated_value_48 = vector.scan <maxsi>, %46, %268 {inclusive = false, reduction_dim = 0 : i64} : vector<5x12xi1>, vector<12xi1>
        %276 = memref.atomic_rmw minu %c23138_i16, %arg4[%c2, %c3] : (i16, memref<4x7xi16>) -> i16
        %277 = math.ceil %117 : tensor<4xf16>
        %278 = bufferization.clone %alloc_12 : memref<5x12xi16> to memref<5x12xi16>
        %279 = math.absi %c-3111_i16 : i16
        %alloca_49 = memref.alloca() : memref<4x7xi1>
        scf.yield %150 : memref<4x7xi16>
      }
      %265 = math.fma %5, %5, %5 : tensor<5x12xf32>
      %266 = arith.xori %c-3111_i16, %c-9787_i16 : i16
      affine.for %arg4 = 0 to 40 {
      }
      tensor.yield %cst_5 : f32
    } : tensor<?xf32>
    %167 = index.maxu %c2, %135
    %168 = affine.min affine_map<(d0, d1) -> (d1 * 64)>(%c13, %132)
    %169 = vector.flat_transpose %29 {columns = 1 : i32, rows = 2 : i32} : vector<2xi1> -> vector<2xi1>
    %170 = vector.broadcast %true_0 : i1 to vector<4x7xi1>
    %171 = math.log2 %cst : f16
    %172 = math.cttz %1 : tensor<4xi16>
    %alloc_32 = memref.alloc() : memref<7xi16>
    memref.tensor_store %10, %alloc_32 : memref<7xi16>
    %173 = arith.addi %false_25, %true : i1
    %rank_33 = tensor.rank %49 : tensor<4x7xf16>
    %174 = vector.extract %53[0] : vector<4xf32>
    %175 = math.log %99 : tensor<f32>
    %176 = vector.insert %c2113043670_i64, %89 [6] : i64 into vector<7xi64>
    memref.copy %alloc, %alloc_20 : memref<7xf32> to memref<7xf32>
    %177 = arith.maxui %false_4, %true_2 : i1
    %178 = vector.broadcast %c352219708_i32 : i32 to vector<7xi32>
    %cast_34 = tensor.cast %1 : tensor<4xi16> to tensor<?xi16>
    memref.tensor_store %17, %alloc_11 : memref<4x7xf32>
    %179 = math.atan2 %49, %49 : tensor<4x7xf16>
    %alloc_35 = memref.alloc() : memref<1x7xi1>
    %180 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_35 : memref<1x7xi1>) outs(%expanded : tensor<4x7x1xi1>) {
    ^bb0(%in: i1, %out: i1):
      %264 = index.castu %106 : index to i32
      %generated_46 = tensor.generate %104 {
      ^bb0(%arg3: index):
        %alloca_52 = memref.alloca() : memref<4x7xf32>
        %294 = math.exp2 %13 : tensor<7xf32>
        %295 = arith.remf %cst, %cst_22 : f16
        %296 = arith.cmpf ogt, %cst_22, %cst : f16
        tensor.yield %extracted : i32
      } : tensor<?xi32>
      %265 = vector.broadcast %c-9787_i16 : i16 to vector<12xi16>
      %dest_47, %accumulated_value_48 = vector.scan <or>, %48, %265 {inclusive = true, reduction_dim = 0 : i64} : vector<5x12xi16>, vector<12xi16>
      %266 = arith.addf %cst_29, %cst_29 : f32
      %267 = math.ceil %144 : tensor<5x12xf16>
      %268 = scf.while (%arg3 = %alloc_15) : (memref<4x7xi1>) -> memref<4x7xi1> {
        %294 = vector.insertelement %true_26, %19[%c0 : index] : vector<5xi1>
        %true_52 = arith.constant true
        %295 = vector.transfer_read %0[%87, %60], %true_52 : tensor<5x12xi1>, vector<i1>
        %296 = tensor.empty() : tensor<12x5xf32>
        %297 = tensor.empty() : tensor<5x5xf32>
        %298 = linalg.matmul ins(%5, %296 : tensor<5x12xf32>, tensor<12x5xf32>) outs(%297 : tensor<5x5xf32>) -> tensor<5x5xf32>
        %299 = vector.flat_transpose %29 {columns = 1 : i32, rows = 2 : i32} : vector<2xi1> -> vector<2xi1>
        %300 = math.atan2 %15, %16 : tensor<4x7xf32>
        %301 = vector.reduction <minf>, %53 : vector<4xf32> into f32
        %302 = arith.andi %c1_i32, %c352219708_i32 : i32
        %303 = arith.floordivsi %true_0, %true_2 : i1
        scf.condition(%true_0) %arg3 : memref<4x7xi1>
      } do {
      ^bb0(%arg3: memref<4x7xi1>):
        %dest_52, %accumulated_value_53 = vector.scan <mul>, %46, %19 {inclusive = true, reduction_dim = 1 : i64} : vector<5x12xi1>, vector<5xi1>
        %294 = math.fma %22, %22, %99 : tensor<f32>
        %295 = math.exp %16 : tensor<4x7xf32>
        memref.assume_alignment %arg3, 4 : memref<4x7xi1>
        %296 = math.powf %2, %2 : tensor<4x7xf16>
        %297 = math.absi %in : i1
        %298 = vector.transpose %178, [0] : vector<7xi32> to vector<7xi32>
        %299 = vector.shuffle %47, %47 [0, 1, 4, 5, 7, 8] : vector<5x12xi32>, vector<5x12xi32>
        memref.assume_alignment %34, 1 : memref<7xf16>
        %300 = arith.subi %c1_i32, %extracted : i32
        %301 = math.ipowi %4, %4 : tensor<5x12xi16>
        %302 = arith.cmpi slt, %c1952435290_i64, %c1952435290_i64 : i64
        %expanded_54 = tensor.expand_shape %11 [[0, 1]] : tensor<4xi32> into tensor<4x1xi32>
        %303 = index.ceildivs %25, %81
        %304 = vector.matrix_multiply %29, %116 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi1>, vector<2xi1>) -> vector<1xi1>
        %305 = arith.minui %false_4, %false_4 : i1
        scf.yield %arg3 : memref<4x7xi1>
      }
      %extracted_49 = tensor.extract %16[%c0, %c0] : tensor<4x7xf32>
      %269 = vector.insert %154, %170 [3] : vector<7xi1> into vector<4x7xi1>
      %270 = arith.muli %c352219708_i32, %c1_i32 : i32
      %271 = arith.muli %c2113043670_i64, %c1952435290_i64 : i64
      %272 = tensor.empty() : tensor<5x12xi64>
      %273 = vector.extract_strided_slice %53 {offsets = [0], sizes = [1], strides = [1]} : vector<4xf32> to vector<1xf32>
      %274 = math.ceil %151 : tensor<7xf16>
      %275 = math.ctlz %10 : tensor<7xi16>
      %276 = math.sqrt %2 : tensor<4x7xf16>
      %277 = arith.cmpi ugt, %true_2, %140 : i1
      %278 = math.ipowi %c23138_i16, %c-9787_i16 : i16
      %279 = tensor.empty() : tensor<5x12xi32>
      %280 = index.floordivs %153, %135
      %281 = arith.negf %extracted_49 : f32
      %282 = math.log2 %9 : tensor<5x12xf16>
      %283 = index.castu %c1952435290_i64 : i64 to index
      %alloc_50 = memref.alloc() : memref<4xi16>
      memref.tensor_store %1, %alloc_50 : memref<4xi16>
      %284 = arith.floordivsi %extracted, %c352219708_i32 : i32
      %cst_51 = arith.constant 1.000000e+00 : f32
      %285 = vector.transfer_read %18[%153], %cst_51 : tensor<7xf32>, vector<f32>
      %286 = affine.min affine_map<(d0, d1, d2) -> (d0, d0, d0)>(%153, %106, %28)
      %287 = bufferization.clone %150 : memref<4x7xi16> to memref<4x7xi16>
      %288 = vector.extract %78[2] : vector<4x7xi1>
      %289 = vector.extract_strided_slice %169 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi1> to vector<2xi1>
      %290 = vector.matrix_multiply %288, %169 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 2 : i32} : (vector<7xi1>, vector<2xi1>) -> vector<14xi1>
      %291 = vector.broadcast %c6 : index to vector<7xindex>
      %292 = vector.broadcast %cst_22 : f16 to vector<7xf16>
      vector.scatter %alloc_9[%c6] [%291], %154, %292 : memref<7xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
      %293 = vector.flat_transpose %273 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      linalg.yield %false_4 : i1
    } -> tensor<4x7x1xi1>
    %181 = math.absi %c1952435290_i64 : i64
    %182 = bufferization.clone %alloc_11 : memref<4x7xf32> to memref<4x7xf32>
    %183 = index.ceildivu %c1, %25
    %alloc_36 = memref.alloc() : memref<7x5xf16>
    %184 = tensor.empty() : tensor<4x5xf16>
    %185 = linalg.matmul ins(%49, %alloc_36 : tensor<4x7xf16>, memref<7x5xf16>) outs(%184 : tensor<4x5xf16>) -> tensor<4x5xf16>
    %186 = arith.floordivsi %140, %true : i1
    %187 = index.mul %95, %87
    %188 = math.ipowi %c1952435290_i64, %c1952435290_i64 : i64
    %189 = math.absf %2 : tensor<4x7xf16>
    %190 = math.floor %13 : tensor<7xf32>
    %collapsed = tensor.collapse_shape %15 [[0, 1]] : tensor<4x7xf32> into tensor<28xf32>
    %191 = vector.matrix_multiply %52, %52 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
    %192 = index.floordivs %c11, %106
    %193 = vector.insertelement %true_0, %19[%25 : index] : vector<5xi1>
    %194 = math.fma %144, %6, %9 : tensor<5x12xf16>
    %195 = memref.atomic_rmw maxf %cst, %alloc_10[%c0, %c3] : (f16, memref<4x7xf16>) -> f16
    %196 = math.floor %184 : tensor<4x5xf16>
    %197 = arith.negf %cst_22 : f16
    %198 = tensor.empty() : tensor<4xi1>
    %199 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%198 : tensor<4xi1>) outs(%expanded : tensor<4x7x1xi1>) {
    ^bb0(%in: i1, %out: i1):
      %264 = math.fpowi %21, %43 : tensor<f32>, tensor<i32>
      %265 = math.round %15 : tensor<4x7xf32>
      %266 = math.ceil %117 : tensor<4xf16>
      memref.copy %alloc, %alloc_20 : memref<7xf32> to memref<7xf32>
      %267 = index.maxu %c15, %rank_33
      %268 = tensor.empty() : tensor<1x7xi1>
      %269 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3, %268 : tensor<7xi1>, tensor<1x7xi1>) outs(%expanded : tensor<4x7x1xi1>) {
      ^bb0(%in_51: i1, %in_52: i1, %out_53: i1):
        %295 = vector.broadcast %true : i1 to vector<4xi1>
        %296 = arith.divui %extracted, %c352219708_i32 : i32
        %297 = math.ctlz %c-9787_i16 : i16
        %298 = math.ctlz %4 : tensor<5x12xi16>
        %299 = arith.cmpi eq, %c16358_i16, %c16358_i16 : i16
        %300 = affine.min affine_map<(d0, d1) -> ((-(d0 mod 2)) mod 8, (-(d0 mod 2)) mod 8)>(%132, %40)
        %301 = arith.andi %in, %in : i1
        %302 = vector.bitcast %47 : vector<5x12xi32> to vector<5x12xi32>
        %303 = arith.minui %true_2, %true_1 : i1
        %304 = affine.min affine_map<(d0) -> (0, 2)>(%125)
        %305 = vector.shuffle %52, %53 [1, 2, 3] : vector<4xf32>, vector<4xf32>
        %306 = vector.shuffle %48, %45 [0, 1, 2, 3, 5, 7, 9] : vector<5x12xi16>, vector<5x12xi16>
        %307 = math.tan %144 : tensor<5x12xf16>
        %308 = math.fpowi %9, %14 : tensor<5x12xf16>, tensor<5x12xi32>
        %309 = arith.andi %c16358_i16, %c23138_i16 : i16
        %310 = math.ceil %cst_22 : f16
        %311 = index.castu %25 : index to i32
        %312 = bufferization.clone %alloc_15 : memref<4x7xi1> to memref<4x7xi1>
        %313 = arith.muli %in_52, %true_1 : i1
        %314 = vector.insertelement %true_1, %295[%c12 : index] : vector<4xi1>
        %315 = arith.addi %out_53, %in_52 : i1
        %316 = math.sqrt %99 : tensor<f32>
        %317 = math.absf %9 : tensor<5x12xf16>
        %318 = index.divs %28, %132
        %319 = arith.subi %true_2, %in_51 : i1
        %320 = math.log2 %117 : tensor<4xf16>
        %321 = arith.ori %true_2, %true_26 : i1
        bufferization.dealloc_tensor %11 : tensor<4xi32>
        %322 = index.castu %true : i1 to index
        %323 = bufferization.clone %alloc_7 : memref<4x7xi64> to memref<4x7xi64>
        %324 = index.mul %c7, %c6
        %325 = vector.extract_strided_slice %19 {offsets = [3], sizes = [1], strides = [1]} : vector<5xi1> to vector<1xi1>
        linalg.yield %false_25 : i1
      } -> tensor<4x7x1xi1>
      %270 = vector.extract_strided_slice %53 {offsets = [0], sizes = [3], strides = [1]} : vector<4xf32> to vector<3xf32>
      %271 = index.sizeof
      %272 = bufferization.to_tensor %alloc_9 : memref<7xf16>
      %273 = vector.broadcast %40 : index to vector<12xindex>
      %274 = vector.broadcast %out : i1 to vector<12xi1>
      %275 = vector.broadcast %c1952435290_i64 : i64 to vector<12xi64>
      vector.scatter %alloc_16[%c3] [%273], %274, %275 : memref<4xi64>, vector<12xindex>, vector<12xi1>, vector<12xi64>
      %276 = arith.ceildivsi %false_4, %false_4 : i1
      %277 = tensor.empty() : tensor<4xi1>
      %278 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%277, %3 : tensor<4xi1>, tensor<7xi1>) outs(%expanded : tensor<4x7x1xi1>) {
      ^bb0(%in_51: i1, %in_52: i1, %out_53: i1):
        %295 = arith.ori %false_25, %true_0 : i1
        %296 = arith.divui %c-3111_i16, %c-3111_i16 : i16
        %297 = bufferization.clone %182 : memref<4x7xf32> to memref<4x7xf32>
        %298 = affine.min affine_map<(d0) -> (((d0 ceildiv 2) mod 2) mod 64)>(%106)
        %299 = affine.apply affine_map<(d0, d1) -> (d1 mod 16)>(%60, %104)
        %300 = affine.load %alloc_6[%c6, %c12] : memref<5x12xi1>
        %301 = affine.min affine_map<(d0, d1, d2) -> (d1 floordiv 32, d1 floordiv 32)>(%42, %c6, %c2)
        %302 = math.floor %cst : f16
        %303 = arith.addi %c2113043670_i64, %c2113043670_i64 : i64
        %304 = index.floordivs %106, %160
        %305 = index.floordivs %c4, %rank_33
        %306 = arith.xori %in, %true_1 : i1
        %307 = arith.remui %in, %true_26 : i1
        %alloca_54 = memref.alloca() : memref<4x7xi64>
        %308 = index.castu %true_0 : i1 to index
        %309 = bufferization.clone %alloc : memref<7xf32> to memref<7xf32>
        %false_55 = index.bool.constant false
        %310 = arith.addf %cst_22, %cst_3 : f16
        %311 = math.ctpop %300 : i1
        %312 = vector.broadcast %cst_29 : f32 to vector<5x12xf32>
        %313 = vector.gather %15[%301, %c9] [%47], %159, %312 : tensor<4x7xf32>, vector<5x12xi32>, vector<5x12xi1>, vector<5x12xf32> into vector<5x12xf32>
        %dest_56, %accumulated_value_57 = vector.scan <maxui>, %100, %19 {inclusive = true, reduction_dim = 1 : i64} : vector<5x12xi1>, vector<5xi1>
        %314 = index.maxu %168, %298
        %315 = bufferization.clone %182 : memref<4x7xf32> to memref<4x7xf32>
        bufferization.dealloc_tensor %22 : tensor<f32>
        %alloc_58 = memref.alloc() : memref<12x5xi16>
        %316 = tensor.empty() : tensor<5x5xi16>
        %317 = linalg.matmul ins(%4, %alloc_58 : tensor<5x12xi16>, memref<12x5xi16>) outs(%316 : tensor<5x5xi16>) -> tensor<5x5xi16>
        %318 = arith.addf %cst_3, %cst : f16
        %319 = arith.ceildivsi %false_25, %true_26 : i1
        %320 = affine.apply affine_map<(d0) -> (-(-d0 - 64))>(%267)
        %321 = index.divs %167, %298
        %322 = math.exp2 %17 : tensor<4x7xf32>
        %323 = math.round %144 : tensor<5x12xf16>
        %324 = vector.flat_transpose %191 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
        linalg.yield %false_4 : i1
      } -> tensor<4x7x1xi1>
      %cst_46 = arith.constant 1.000000e+00 : f32
      %279 = vector.transfer_read %splat[%271], %cst_46 : tensor<7xf32>, vector<f32>
      memref.assume_alignment %149, 8 : memref<4x7xi64>
      %280 = vector.reduction <mul>, %53 : vector<4xf32> into f32
      %281 = index.divs %c4, %153
      %generated_47 = tensor.generate %c8 {
      ^bb0(%arg3: index, %arg4: index):
        %295 = vector.broadcast %160 : index to vector<7xindex>
        vector.scatter %alloc_18[%c1] [%295], %154, %178 : memref<4xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
        %296 = index.sizeof
        %extracted_51 = tensor.extract %from_elements[%c2, %c1] : tensor<4x7xi32>
        %extracted_52 = tensor.extract %11[%c3] : tensor<4xi32>
        tensor.yield %cst_3 : f16
      } : tensor<?x7xf16>
      %282 = vector.broadcast %c0 : index to vector<4xindex>
      %283 = vector.broadcast %false_25 : i1 to vector<4xi1>
      %284 = vector.broadcast %cst_22 : f16 to vector<4xf16>
      vector.scatter %alloc_8[%c2] [%282], %283, %284 : memref<4xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
      %generated_48 = tensor.generate %81 {
      ^bb0(%arg3: index):
        %295 = vector.multi_reduction <maxsi>, %170, %false_4 [0, 1] : vector<4x7xi1> to i1
        %296 = vector.bitcast %116 : vector<2xi1> to vector<2xi1>
        %297 = math.ctlz %14 : tensor<5x12xi32>
        %298 = vector.insertelement %false, %19[%81 : index] : vector<5xi1>
        tensor.yield %c-9787_i16 : i16
      } : tensor<?xi16>
      %285 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3 : tensor<7xi1>) outs(%expanded : tensor<4x7x1xi1>) {
      ^bb0(%in_51: i1, %out_52: i1):
        %295 = arith.maxui %out, %false_25 : i1
        bufferization.dealloc_tensor %12 : tensor<4x7xi1>
        %296 = vector.splat %36 : vector<5x12xindex>
        %297 = math.floor %17 : tensor<4x7xf32>
        %298 = index.maxs %c15, %104
        %299 = bufferization.to_tensor %alloc_12 : memref<5x12xi16>
        %300 = memref.atomic_rmw addf %cst_29, %alloc_11[%c0, %c6] : (f32, memref<4x7xf32>) -> f32
        %301 = index.divs %73, %36
        %302 = vector.broadcast %extracted : i32 to vector<12xi32>
        %303 = vector.multi_reduction <minui>, %47, %302 [0] : vector<5x12xi32> to vector<12xi32>
        %304 = index.castu %true_26 : i1 to index
        %305 = math.ceil %18 : tensor<7xf32>
        %306 = index.maxu %c13, %301
        %307 = bufferization.to_tensor %alloc_18 : memref<4xi32>
        %308 = arith.ori %true, %false : i1
        %309 = affine.max affine_map<(d0, d1) -> (d0 floordiv 128, d1 mod 4, d0 floordiv 128)>(%c3, %168)
        %310 = vector.broadcast %37 : index to vector<5xindex>
        %311 = vector.broadcast %cst_29 : f32 to vector<5xf32>
        vector.scatter %alloc_21[] [%310], %19, %311 : memref<f32>, vector<5xindex>, vector<5xi1>, vector<5xf32>
        %312 = arith.ori %in, %true_26 : i1
        %313 = vector.create_mask %28, %c1 : vector<5x12xi1>
        %314 = arith.xori %out_52, %true_0 : i1
        %315 = vector.insertelement %extracted, %178[%167 : index] : vector<7xi32>
        %316 = math.ceil %cst_46 : f32
        %317 = arith.divui %c1_i32, %c352219708_i32 : i32
        %318 = math.tan %cst_5 : f32
        %319 = math.atan %117 : tensor<4xf16>
        memref.copy %alloc_19, %alloc_8 : memref<4xf16> to memref<4xf16>
        %320 = math.absi %false_25 : i1
        %321 = index.castu %c16358_i16 : i16 to index
        %322 = vector.flat_transpose %89 {columns = 7 : i32, rows = 1 : i32} : vector<7xi64> -> vector<7xi64>
        %323 = arith.floordivsi %true, %140 : i1
        %324 = math.log %cst : f16
        %325 = math.expm1 %15 : tensor<4x7xf32>
        %326 = math.rsqrt %17 : tensor<4x7xf32>
        linalg.yield %false_25 : i1
      } -> tensor<4x7x1xi1>
      %extracted_49 = tensor.extract %11[%c1] : tensor<4xi32>
      %286 = math.floor %collapsed : tensor<28xf32>
      %287 = bufferization.clone %alloc_21 : memref<f32> to memref<f32>
      %288 = arith.ori %out, %false_4 : i1
      %289 = memref.alloca_scope  -> (memref<4xi1>) {
        %295 = math.ipowi %163, %163 : tensor<4x4xi1>
        %296 = arith.remui %extracted_49, %extracted_49 : i32
        %297 = math.log %20 : tensor<7xf32>
        %298 = math.ceil %151 : tensor<7xf16>
        %299 = math.ceil %9 : tensor<5x12xf16>
        %300 = memref.load %alloc_20[%c0] : memref<7xf32>
        %301 = vector.extract %116[0] : vector<2xi1>
        %302 = arith.shrui %c1_i32, %c352219708_i32 : i32
        %303 = math.tan %22 : tensor<f32>
        %304 = vector.extract_strided_slice %53 {offsets = [0], sizes = [4], strides = [1]} : vector<4xf32> to vector<4xf32>
        %305 = index.ceildivu %106, %131
        %306 = vector.extract_strided_slice %116 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi1> to vector<2xi1>
        %307 = vector.broadcast %28 : index to vector<4xindex>
        %308 = vector.broadcast %true_26 : i1 to vector<4xi1>
        %309 = vector.broadcast %cst : f16 to vector<4xf16>
        vector.scatter %alloc_9[%c3] [%307], %308, %309 : memref<7xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
        %c1_i32_51 = arith.constant 1 : i32
        %c0_i32 = arith.constant 0 : i32
        %310 = vector.transfer_read %11[%c10], %c0_i32 : tensor<4xi32>, vector<i32>
        %311 = affine.load %alloc_15[%c4, %c4] : memref<4x7xi1>
        %cast_52 = tensor.cast %11 : tensor<4xi32> to tensor<?xi32>
        %312 = arith.addf %cst, %cst : f16
        %313 = affine.max affine_map<(d0) -> ((d0 ceildiv 8) * 64 - d0 * 128, d0, (d0 ceildiv 8) * 64 - d0 * 128)>(%40)
        %extracted_53 = tensor.extract %8[%c3] : tensor<7xi64>
        %314 = bufferization.to_memref %cast : memref<f32>
        %315 = bufferization.clone %alloc_21 : memref<f32> to memref<f32>
        %316 = math.ipowi %true_26, %true : i1
        %317 = math.log2 %collapsed : tensor<28xf32>
        %318 = vector.broadcast %true_0 : i1 to vector<4x7xi1>
        %319 = math.floor %6 : tensor<5x12xf16>
        %splat_54 = tensor.splat %c16358_i16 : tensor<4x7xi16>
        %320 = math.round %20 : tensor<7xf32>
        %321 = index.maxu %c0, %125
        %322 = index.ceildivs %267, %c6
        %323 = arith.negf %cst_46 : f32
        memref.assume_alignment %alloc_12, 16 : memref<5x12xi16>
        %324 = index.sizeof
        %alloc_55 = memref.alloc() : memref<4xi1>
        memref.alloca_scope.return %alloc_55 : memref<4xi1>
      }
      %290 = arith.divui %true_2, %in : i1
      %generated_50 = tensor.generate %153 {
      ^bb0(%arg3: index):
        %295 = arith.minsi %140, %true_2 : i1
        %296 = index.mul %106, %167
        %297 = vector.extract_strided_slice %116 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi1> to vector<1xi1>
        %298 = vector.multi_reduction <minf>, %52, %53 [] : vector<4xf32> to vector<4xf32>
        tensor.yield %cst_22 : f16
      } : tensor<?xf16>
      scf.execute_region {
        %295 = bufferization.to_tensor %alloc_9 : memref<7xf16>
        %296 = index.add %c7, %187
        %297 = index.floordivs %c9, %167
        %298 = math.log %144 : tensor<5x12xf16>
        %299 = bufferization.to_tensor %alloc_8 : memref<4xf16>
        %300 = vector.broadcast %c2113043670_i64 : i64 to vector<5x12xi64>
        %301 = arith.andi %extracted_49, %extracted : i32
        %302 = index.divs %c9, %c6
        %303 = index.maxu %187, %187
        %304 = vector.bitcast %53 : vector<4xf32> to vector<4xi32>
        %305 = math.rsqrt %299 : tensor<4xf16>
        %306 = affine.min affine_map<(d0, d1, d2) -> (d1 mod 32)>(%c5, %c15, %114)
        %307 = math.sqrt %5 : tensor<5x12xf32>
        %308 = arith.floordivsi %true, %true_1 : i1
        %309 = arith.divui %in, %false_4 : i1
        %310 = vector.maskedload %alloc_15[%c1, %c4], %154, %154 : memref<4x7xi1>, vector<7xi1>, vector<7xi1> into vector<7xi1>
        scf.yield
      }
      %291 = affine.for %arg3 = 0 to 82 iter_args(%arg4 = %21) -> (tensor<f32>) {
        affine.yield %22 : tensor<f32>
      }
      %292 = math.round %144 : tensor<5x12xf16>
      %293 = math.absf %99 : tensor<f32>
      %294 = index.ceildivs %c5, %c3
      linalg.yield %false : i1
    } -> tensor<4x7x1xi1>
    %200 = vector.extract_strided_slice %48 {offsets = [2], sizes = [1], strides = [1]} : vector<5x12xi16> to vector<1x12xi16>
    %201 = scf.execute_region -> index {
      %264 = math.floor %6 : tensor<5x12xf16>
      %extracted_46 = tensor.extract %5[%c1, %c8] : tensor<5x12xf32>
      %265 = bufferization.to_memref %4 : memref<5x12xi16>
      %266 = index.castu %false_25 : i1 to index
      %267 = arith.muli %c1_i32, %c352219708_i32 : i32
      %268 = bufferization.to_tensor %alloc_13 : memref<4x7xi16>
      %269 = arith.floordivsi %true_0, %true : i1
      %270 = vector.multi_reduction <xor>, %159, %true_2 [0, 1] : vector<5x12xi1> to i1
      %271 = vector.reduction <minsi>, %169 : vector<2xi1> into i1
      %272 = arith.minf %extracted_46, %cst_29 : f32
      %273 = math.log2 %99 : tensor<f32>
      %generated_47 = tensor.generate %81, %c9 {
      ^bb0(%arg3: index, %arg4: index):
        %278 = vector.multi_reduction <maxsi>, %89, %89 [] : vector<7xi64> to vector<7xi64>
        %279 = vector.multi_reduction <or>, %100, %100 [] : vector<5x12xi1> to vector<5x12xi1>
        %280 = math.atan %cst_5 : f32
        %281 = arith.floordivsi %140, %true_2 : i1
        tensor.yield %c2113043670_i64 : i64
      } : tensor<?x?xi64>
      %274 = vector.broadcast %cst_29 : f32 to vector<5x12xf32>
      %275 = vector.fma %274, %274, %274 : vector<5x12xf32>
      %276 = arith.divsi %false, %true_1 : i1
      %277 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded : tensor<4x7x1xi1>) {
      ^bb0(%out: i1):
        %278 = affine.apply affine_map<(d0) -> (-d0)>(%36)
        %279 = index.divs %131, %111
        %280 = arith.remui %c352219708_i32, %c352219708_i32 : i32
        %281 = math.ctlz %c1_i32 : i32
        %282 = index.divs %42, %c10
        %283 = math.floor %13 : tensor<7xf32>
        %284 = index.mul %183, %c8
        memref.assume_alignment %alloc_14, 8 : memref<4x7xf16>
        %285 = arith.cmpf ord, %cst_3, %cst_22 : f16
        %286 = math.atan %transposed : tensor<7xf32>
        %287 = math.floor %22 : tensor<f32>
        %288 = arith.remf %cst, %cst : f16
        %289 = math.log %49 : tensor<4x7xf16>
        %290 = vector.matrix_multiply %52, %191 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<1xf32>) -> vector<4xf32>
        %dest_48, %accumulated_value_49 = vector.scan <xor>, %159, %19 {inclusive = true, reduction_dim = 1 : i64} : vector<5x12xi1>, vector<5xi1>
        %rank_50 = tensor.rank %14 : tensor<5x12xi32>
        %291 = arith.cmpf ueq, %cst_29, %extracted_46 : f32
        %292 = bufferization.clone %alloc_8 : memref<4xf16> to memref<4xf16>
        %293 = bufferization.clone %alloc_15 : memref<4x7xi1> to memref<4x7xi1>
        %294 = affine.load %34[%c11] : memref<7xf16>
        %295 = vector.splat %73 : vector<4xindex>
        %296 = vector.broadcast %extracted_46 : f32 to vector<5x12xf32>
        %297 = vector.fma %296, %296, %296 : vector<5x12xf32>
        bufferization.dealloc_tensor %4 : tensor<5x12xi16>
        %298 = memref.atomic_rmw assign %extracted_46, %alloc_11[%c0, %c6] : (f32, memref<4x7xf32>) -> f32
        %299 = math.tan %cst_22 : f16
        memref.assume_alignment %293, 4 : memref<4x7xi1>
        %300 = arith.maxui %true_26, %140 : i1
        %301 = index.sizeof
        %302 = vector.broadcast %true_1 : i1 to vector<4xi1>
        %303 = vector.multi_reduction <maxui>, %78, %302 [1] : vector<4x7xi1> to vector<4xi1>
        %304 = index.casts %true_1 : i1 to index
        %305 = arith.andi %c2113043670_i64, %c2113043670_i64 : i64
        %306 = vector.multi_reduction <minui>, %78, %302 [1] : vector<4x7xi1> to vector<4xi1>
        linalg.yield %true : i1
      } -> tensor<4x7x1xi1>
      memref.assume_alignment %alloc_11, 8 : memref<4x7xf32>
      scf.yield %167 : index
    }
    %202 = memref.alloca_scope  -> (i32) {
      %264 = vector.matrix_multiply %29, %154 {lhs_columns = 1 : i32, lhs_rows = 2 : i32, rhs_columns = 7 : i32} : (vector<2xi1>, vector<7xi1>) -> vector<14xi1>
      %265 = math.ceil %18 : tensor<7xf32>
      %alloca_46 = memref.alloca() : memref<5x12xi16>
      %266 = arith.ori %c2113043670_i64, %c2113043670_i64 : i64
      %267 = math.log2 %9 : tensor<5x12xf16>
      %268 = arith.negf %cst_5 : f32
      %269 = index.add %114, %c10
      %270 = math.round %9 : tensor<5x12xf16>
      %271 = vector.reduction <and>, %29 : vector<2xi1> into i1
      %272 = math.log2 %17 : tensor<4x7xf32>
      %273 = math.tan %151 : tensor<7xf16>
      %274 = index.divs %60, %c3
      %275 = vector.broadcast %cst_5 : f32 to vector<4xf32>
      %276 = vector.fma %275, %53, %52 : vector<4xf32>
      %277 = vector.flat_transpose %53 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
      %278 = vector.multi_reduction <minf>, %52, %cst_5 [0] : vector<4xf32> to f32
      %279 = math.tanh %cst_3 : f16
      %280 = index.maxu %rank, %c7
      %281 = memref.alloca_scope  -> (memref<7xi1>) {
        %297 = arith.addi %140, %true_26 : i1
        %298 = arith.divui %true_2, %false : i1
        %299 = vector.multi_reduction <minf>, %276, %52 [] : vector<4xf32> to vector<4xf32>
        %300 = arith.addf %cst, %cst : f16
        %splat_48 = tensor.splat %cst_22 : tensor<4x7xf16>
        %301 = index.castu %extracted : i32 to index
        %302 = math.floor %5 : tensor<5x12xf32>
        %303 = arith.minui %c16358_i16, %c16358_i16 : i16
        %304 = arith.minf %cst_5, %278 : f32
        %305 = arith.xori %false, %true_1 : i1
        %306 = math.ipowi %false_4, %true : i1
        %307 = vector.multi_reduction <mul>, %169, %true_2 [0] : vector<2xi1> to i1
        %alloc_49 = memref.alloc() : memref<7x7xf32>
        %308 = tensor.empty() : tensor<4x7xf32>
        %309 = linalg.matmul ins(%16, %alloc_49 : tensor<4x7xf32>, memref<7x7xf32>) outs(%308 : tensor<4x7xf32>) -> tensor<4x7xf32>
        %310 = math.log2 %6 : tensor<5x12xf16>
        %311 = math.tanh %2 : tensor<4x7xf16>
        %312 = arith.subi %true_2, %140 : i1
        %313 = index.floordivs %c11, %168
        %314 = vector.reduction <maxsi>, %169 : vector<2xi1> into i1
        %315 = index.ceildivu %115, %135
        %316 = math.roundeven %13 : tensor<7xf32>
        %317 = math.atan %49 : tensor<4x7xf16>
        %318 = math.log1p %151 : tensor<7xf16>
        %319 = math.floor %9 : tensor<5x12xf16>
        %320 = arith.negf %cst_29 : f32
        %321 = vector.extract %276[3] : vector<4xf32>
        bufferization.dealloc_tensor %4 : tensor<5x12xi16>
        %322 = math.rsqrt %5 : tensor<5x12xf32>
        %323 = math.expm1 %49 : tensor<4x7xf16>
        %324 = arith.remf %cst, %cst_3 : f16
        %325 = math.absi %3 : tensor<7xi1>
        %326 = arith.divui %true_0, %true_2 : i1
        %327 = arith.negf %cst : f16
        %alloc_50 = memref.alloc() : memref<7xi1>
        memref.alloca_scope.return %alloc_50 : memref<7xi1>
      }
      %c0_i32 = arith.constant 0 : i32
      %282 = vector.transfer_read %7[%c13], %c0_i32 : tensor<4xi32>, vector<i32>
      %283 = vector.broadcast %135 : index to vector<5xindex>
      %284 = vector.broadcast %c2113043670_i64 : i64 to vector<5xi64>
      vector.scatter %alloc_7[%c0, %c5] [%283], %19, %284 : memref<4x7xi64>, vector<5xindex>, vector<5xi1>, vector<5xi64>
      %285 = affine.max affine_map<(d0) -> ((d0 * 2 + 8) * 4)>(%rank)
      %286 = math.absi %140 : i1
      %alloc_47 = memref.alloc() : memref<7xi32>
      %287 = vector.gather %alloc_47[%132] [%47], %46, %47 : memref<7xi32>, vector<5x12xi32>, vector<5x12xi1>, vector<5x12xi32> into vector<5x12xi32>
      %288 = vector.matrix_multiply %275, %52 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
      %289 = math.round %15 : tensor<4x7xf32>
      %290 = bufferization.clone %alloc_21 : memref<f32> to memref<f32>
      %291 = bufferization.clone %149 : memref<4x7xi64> to memref<4x7xi64>
      %292 = arith.remf %cst_29, %cst_29 : f32
      %293 = tensor.empty() : tensor<4x7xi16>
      %294 = bufferization.clone %alloc_10 : memref<4x7xf16> to memref<4x7xf16>
      %295 = index.maxu %131, %132
      %296 = index.mul %85, %114
      memref.alloca_scope.return %c352219708_i32 : i32
    }
    %203 = math.log %5 : tensor<5x12xf32>
    %204 = vector.shuffle %154, %19 [0, 2, 5, 6, 8, 10, 11] : vector<7xi1>, vector<5xi1>
    %205 = math.round %5 : tensor<5x12xf32>
    %206 = math.floor %cst : f16
    %207 = math.round %6 : tensor<5x12xf16>
    %208 = math.log1p %16 : tensor<4x7xf32>
    %209 = scf.while (%arg3 = %alloc_18) : (memref<4xi32>) -> memref<4xi32> {
      %264 = bufferization.to_tensor %34 : memref<7xf16>
      %265 = arith.floordivsi %c-9787_i16, %c16358_i16 : i16
      %266 = index.maxs %42, %167
      %alloc_46 = memref.alloc() : memref<4xi1>
      %alloc_47 = memref.alloc() : memref<7x4xi1>
      %267 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_15, %alloc_46, %alloc_47 : memref<4x7xi1>, memref<4xi1>, memref<7x4xi1>) outs(%expanded : tensor<4x7x1xi1>) {
      ^bb0(%in: i1, %in_51: i1, %in_52: i1, %out: i1):
        %c0_i32 = arith.constant 0 : i32
        %269 = vector.transfer_read %arg3[%c9], %c0_i32 : memref<4xi32>, vector<i32>
        %270 = bufferization.clone %alloc_10 : memref<4x7xf16> to memref<4x7xf16>
        %false_53 = index.bool.constant false
        %271 = bufferization.clone %alloc_19 : memref<4xf16> to memref<4xf16>
        %272 = vector.broadcast %37 : index to vector<5xindex>
        %273 = vector.broadcast %cst_29 : f32 to vector<5xf32>
        vector.scatter %alloc_20[%c1] [%272], %19, %273 : memref<7xf32>, vector<5xindex>, vector<5xi1>, vector<5xf32>
        %274 = affine.load %alloc_10[%c12, %c1] : memref<4x7xf16>
        %275 = math.expm1 %20 : tensor<7xf32>
        %276 = arith.minsi %true_0, %true : i1
        %277 = arith.maxsi %false_4, %false : i1
        %278 = vector.broadcast %cst_29 : f32 to vector<7xf32>
        %279 = vector.fma %278, %278, %278 : vector<7xf32>
        %280 = index.maxu %160, %c11
        %true_54 = index.bool.constant true
        %281 = arith.remf %cst_22, %274 : f16
        %282 = vector.broadcast %c-3111_i16 : i16 to vector<4x7xi16>
        %283 = index.divs %42, %95
        %284 = math.absi %c-3111_i16 : i16
        %285 = math.fpowi %99, %43 : tensor<f32>, tensor<i32>
        %286 = index.divs %c7, %95
        %287 = math.ceil %transposed : tensor<7xf32>
        %288 = index.maxs %rank, %c8
        %289 = math.tanh %274 : f16
        %290 = vector.extract_strided_slice %52 {offsets = [2], sizes = [1], strides = [1]} : vector<4xf32> to vector<1xf32>
        %291 = bufferization.to_memref %17 : memref<4x7xf32>
        %292 = affine.load %alloc_7[%c4, %c2] : memref<4x7xi64>
        %293 = vector.insertelement %true_54, %19[%286 : index] : vector<5xi1>
        %294 = math.powf %99, %22 : tensor<f32>
        %295 = arith.addf %cst_3, %cst_22 : f16
        %296 = arith.mulf %cst_22, %cst_22 : f16
        %297 = bufferization.to_memref %6 : memref<5x12xf16>
        %298 = vector.broadcast %in : i1 to vector<4x7xi1>
        %299 = arith.maxui %140, %true : i1
        %300 = math.ceil %cst_3 : f16
        linalg.yield %in_51 : i1
      } -> tensor<4x7x1xi1>
      %alloc_48 = memref.alloc() : memref<7xf16>
      scf.execute_region {
        %269 = vector.broadcast %cst_5 : f32 to vector<4xf32>
        %270 = vector.fma %269, %52, %269 : vector<4xf32>
        %271 = arith.maxui %true_1, %false_4 : i1
        %272 = math.copysign %13, %18 : tensor<7xf32>
        %273 = arith.andi %false_25, %true_2 : i1
        %274 = math.log %2 : tensor<4x7xf16>
        %275 = vector.broadcast %true_26 : i1 to vector<5x5xi1>
        %276 = vector.outerproduct %19, %19, %275 {kind = #vector.kind<minui>} : vector<5xi1>, vector<5xi1>
        %rank_51 = tensor.rank %generated : tensor<?x?xi1>
        %alloca_52 = memref.alloca() : memref<4x7xi16>
        %277 = index.mul %167, %c8
        %278 = math.fpowi %16, %from_elements : tensor<4x7xf32>, tensor<4x7xi32>
        %279 = math.log10 %9 : tensor<5x12xf16>
        %280 = vector.insertelement %true_1, %154[%rank : index] : vector<7xi1>
        %281 = math.ceil %9 : tensor<5x12xf16>
        %282 = math.atan %transposed : tensor<7xf32>
        %283 = math.fpowi %22, %43 : tensor<f32>, tensor<i32>
        %284 = vector.insertelement %true_26, %29[%111 : index] : vector<2xi1>
        scf.yield
      }
      %cst_49 = arith.constant 1.000000e+00 : f32
      %cst_50 = arith.constant 0.000000e+00 : f32
      %268 = vector.transfer_read %alloc[%c12], %cst_50 : memref<7xf32>, vector<f32>
      memref.copy %alloc_17, %alloc_6 : memref<5x12xi1> to memref<5x12xi1>
      scf.condition(%true_2) %alloc_18 : memref<4xi32>
    } do {
    ^bb0(%arg3: memref<4xi32>):
      %264 = math.roundeven %cst_5 : f32
      %265 = arith.xori %c1952435290_i64, %c2113043670_i64 : i64
      %c0_i16 = arith.constant 0 : i16
      %266 = vector.transfer_read %150[%c3, %104], %c0_i16 : memref<4x7xi16>, vector<7xi16>
      %267 = vector.multi_reduction <minf>, %53, %cst_29 [0] : vector<4xf32> to f32
      %268 = arith.xori %extracted, %extracted : i32
      %269 = arith.subi %c-3111_i16, %c16358_i16 : i16
      %270 = math.ipowi %c16358_i16, %c-3111_i16 : i16
      %271 = math.copysign %13, %splat : tensor<7xf32>
      %272 = scf.while (%arg4 = %cst_29) : (f32) -> f32 {
        %279 = affine.max affine_map<(d0) -> (0, d0 ceildiv 2)>(%c4)
        %280 = arith.divf %cst, %cst_22 : f16
        %splat_46 = tensor.splat %true_1 : tensor<7xi1>
        %281 = math.fpowi %5, %14 : tensor<5x12xf32>, tensor<5x12xi32>
        %282 = vector.broadcast %c-9787_i16 : i16 to vector<7xi16>
        %283 = vector.transfer_write %282, %4[%36, %153] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi16>, tensor<5x12xi16>
        %284 = index.floordivs %87, %201
        %285 = vector.insertelement %cst_5, %53[%81 : index] : vector<4xf32>
        %286 = vector.extract %200[0] : vector<1x12xi16>
        scf.condition(%false_4) %267 : f32
      } do {
      ^bb0(%arg4: f32):
        %279 = math.atan %cst_3 : f16
        %280 = math.fpowi %6, %14 : tensor<5x12xf16>, tensor<5x12xi32>
        %281 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %52, %52, %cst_29 : vector<4xf32>, vector<4xf32> into f32
        %282 = math.log %13 : tensor<7xf32>
        %283 = vector.broadcast %267 : f32 to vector<7xf32>
        %284 = bufferization.to_memref %cast_24 : memref<?x?xf16>
        %285 = arith.remui %true_1, %false_4 : i1
        %286 = arith.maxsi %true_0, %false_4 : i1
        %287 = vector.flat_transpose %154 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
        %288 = index.divs %c5, %c12
        %289 = arith.muli %true_1, %true_1 : i1
        %290 = index.casts %false_25 : i1 to index
        %291 = bufferization.clone %182 : memref<4x7xf32> to memref<4x7xf32>
        %292 = index.mul %36, %c0
        %293 = vector.create_mask %192, %c7 : vector<5x12xi1>
        %294 = math.rsqrt %151 : tensor<7xf16>
        scf.yield %267 : f32
      }
      bufferization.dealloc_tensor %5 : tensor<5x12xf32>
      %273 = vector.broadcast %c0_i16 : i16 to vector<7xi16>
      %274 = math.floor %144 : tensor<5x12xf16>
      %275 = arith.xori %140, %true_2 : i1
      %276 = affine.max affine_map<(d0, d1, d2) -> (d1)>(%c13, %85, %28)
      %277 = math.log %6 : tensor<5x12xf16>
      %278 = math.log %13 : tensor<7xf32>
      scf.yield %arg3 : memref<4xi32>
    }
    %210 = math.log2 %9 : tensor<5x12xf16>
    %211 = index.divs %28, %c14
    %212 = arith.shrui %c2113043670_i64, %c2113043670_i64 : i64
    %213 = math.roundeven %2 : tensor<4x7xf16>
    %214 = index.maxu %201, %c3
    %215 = memref.alloca_scope  -> (i16) {
      affine.store %c1952435290_i64, %83[%c14, %c7] : memref<4x7xi64>
      %264 = vector.create_mask %131, %42 : vector<5x12xi1>
      %265 = arith.floordivsi %true_26, %true_1 : i1
      %266 = vector.extract %191[0] : vector<1xf32>
      %generated_46 = tensor.generate %95 {
      ^bb0(%arg3: index, %arg4: index):
        %292 = math.ctlz %7 : tensor<4xi32>
        %293 = arith.muli %c23138_i16, %c16358_i16 : i16
        %294 = math.log10 %151 : tensor<7xf16>
        %295 = index.floordivs %rank_33, %rank
        tensor.yield %extracted : i32
      } : tensor<?x12xi32>
      %267 = index.sizeof
      %268 = math.atan %cst : f16
      %269 = vector.broadcast %214 : index to vector<4xindex>
      %270 = vector.broadcast %false_25 : i1 to vector<4xi1>
      %271 = vector.broadcast %c2113043670_i64 : i64 to vector<4xi64>
      vector.scatter %alloc_16[%c0] [%269], %270, %271 : memref<4xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
      %272 = math.cttz %3 : tensor<7xi1>
      %true_47 = index.bool.constant true
      %273 = math.ceil %9 : tensor<5x12xf16>
      %274 = scf.while (%arg3 = %alloc_18) : (memref<4xi32>) -> memref<4xi32> {
        %292 = math.log1p %15 : tensor<4x7xf32>
        %293 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 mod 32, d0 ceildiv 8, d0 mod 32, -d0)>(%c8, %40, %rank, %60)
        %294 = vector.multi_reduction <mul>, %53, %53 [] : vector<4xf32> to vector<4xf32>
        %rank_52 = tensor.rank %14 : tensor<5x12xi32>
        %295 = vector.flat_transpose %89 {columns = 7 : i32, rows = 1 : i32} : vector<7xi64> -> vector<7xi64>
        %296 = index.casts %c-3111_i16 : i16 to index
        %297 = memref.atomic_rmw maxf %cst, %alloc_8[%c2] : (f16, memref<4xf16>) -> f16
        %298 = arith.remsi %true_1, %true_2 : i1
        scf.condition(%true_0) %alloc_18 : memref<4xi32>
      } do {
      ^bb0(%arg3: memref<4xi32>):
        %292 = index.ceildivs %36, %c8
        vector.print %19 : vector<5xi1>
        %293 = arith.cmpi sle, %c352219708_i32, %c352219708_i32 : i32
        %294 = arith.ori %false, %140 : i1
        %295 = index.ceildivu %c10, %131
        %296 = arith.maxui %c-9787_i16, %c16358_i16 : i16
        %297 = affine.apply affine_map<(d0, d1, d2) -> (d1 + d2 - d2 + 64)>(%125, %160, %167)
        %298 = arith.muli %c-3111_i16, %c23138_i16 : i16
        %299 = arith.remf %cst_22, %cst_22 : f16
        %300 = math.floor %cst_22 : f16
        %extracted_52 = tensor.extract %117[%c2] : tensor<4xf16>
        memref.assume_alignment %182, 4 : memref<4x7xf32>
        %301 = arith.addf %cst, %cst : f16
        %302 = arith.andi %true, %false_4 : i1
        %303 = math.absf %cst_22 : f16
        %304 = math.atan %18 : tensor<7xf32>
        scf.yield %arg3 : memref<4xi32>
      }
      %275 = affine.max affine_map<(d0) -> ((d0 - 1) mod 64 + d0 mod 8 + 64, d0 mod 8 + 4, d0)>(%28)
      %276 = math.round %cst : f16
      %277 = arith.divf %cst_3, %cst_22 : f16
      %278 = math.ctlz %12 : tensor<4x7xi1>
      %279 = affine.max affine_map<(d0) -> ((d0 + 32) * 2, d0, -(d0 + 32), d0)>(%201)
      %280 = index.sub %c2, %153
      %281 = memref.atomic_rmw mulf %cst, %alloc_19[%c0] : (f16, memref<4xf16>) -> f16
      %expanded_48 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<4x7xf32> into tensor<4x7x1xf32>
      %282 = math.atan %17 : tensor<4x7xf32>
      %283 = index.sizeof
      memref.assume_alignment %alloc_6, 4 : memref<5x12xi1>
      %284 = arith.floordivsi %c-9787_i16, %c16358_i16 : i16
      %alloca_49 = memref.alloca() : memref<4xf16>
      %285 = index.sub %c6, %c15
      %alloc_50 = memref.alloc() : memref<12x12xf16>
      %286 = tensor.empty() : tensor<5x12xf16>
      %287 = linalg.matmul ins(%9, %alloc_50 : tensor<5x12xf16>, memref<12x12xf16>) outs(%286 : tensor<5x12xf16>) -> tensor<5x12xf16>
      %288 = arith.remui %true_1, %true_26 : i1
      %289 = math.round %6 : tensor<5x12xf16>
      %290 = vector.transpose %159, [0, 1] : vector<5x12xi1> to vector<5x12xi1>
      %291 = arith.subi %true_2, %true_0 : i1
      %expanded_51 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<4x7xf16> into tensor<4x7x1xf16>
      memref.alloca_scope.return %c-3111_i16 : i16
    }
    %216 = arith.floordivsi %c352219708_i32, %extracted : i32
    %217 = math.tanh %15 : tensor<4x7xf32>
    %expanded_37 = tensor.expand_shape %18 [[0, 1]] : tensor<7xf32> into tensor<7x1xf32>
    %218 = math.tan %cst_3 : f16
    %219 = vector.splat %37 : vector<4x7xindex>
    %220 = index.maxu %104, %28
    %221 = arith.shrui %true, %true_26 : i1
    %222 = arith.cmpf ord, %cst_3, %cst_3 : f16
    %223 = arith.divui %c-9787_i16, %c23138_i16 : i16
    %224 = math.ipowi %14, %14 : tensor<5x12xi32>
    %225 = math.ctpop %c-3111_i16 : i16
    %226 = vector.flat_transpose %178 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
    %227 = arith.negf %cst_29 : f32
    %228 = index.maxu %c5, %114
    %229 = arith.remui %215, %215 : i16
    %expanded_38 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<4x7xf32> into tensor<4x7x1xf32>
    %alloca = memref.alloca() : memref<4xi32>
    %extracted_39 = tensor.extract %9[%c0, %c9] : tensor<5x12xf16>
    %230 = math.atan %6 : tensor<5x12xf16>
    %generated_40 = tensor.generate %214 {
    ^bb0(%arg3: index):
      %264 = index.floordivs %c12, %85
      %265 = vector.broadcast %104 : index to vector<4xindex>
      %266 = vector.broadcast %false_25 : i1 to vector<4xi1>
      %267 = vector.broadcast %extracted_39 : f16 to vector<4xf16>
      vector.scatter %34[%c6] [%265], %266, %267 : memref<7xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
      %268 = math.ipowi %43, %43 : tensor<i32>
      %269 = arith.floordivsi %true, %true_0 : i1
      tensor.yield %cst : f16
    } : tensor<?xf16>
    %231 = index.mul %40, %85
    %232 = math.absi %false_25 : i1
    %alloca_41 = memref.alloca() : memref<4x7xi64>
    %233 = math.absi %c352219708_i32 : i32
    bufferization.dealloc_tensor %cast_24 : tensor<?x?xf16>
    memref.alloca_scope  {
      %264 = arith.cmpf one, %cst_3, %cst_22 : f16
      %265 = arith.shrsi %true_0, %false : i1
      %266 = bufferization.clone %alloc_15 : memref<4x7xi1> to memref<4x7xi1>
      %267 = math.ctlz %false : i1
      %268 = arith.xori %c1952435290_i64, %c2113043670_i64 : i64
      %269 = vector.reduction <or>, %154 : vector<7xi1> into i1
      %270 = math.log %cst_5 : f32
      %271 = vector.extract_strided_slice %46 {offsets = [2], sizes = [2], strides = [1]} : vector<5x12xi1> to vector<2x12xi1>
      %extracted_46 = tensor.extract %splat[%c5] : tensor<7xf32>
      %272 = affine.load %alloc_13[%c0, %c11] : memref<4x7xi16>
      %273 = vector.matrix_multiply %154, %169 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 2 : i32} : (vector<7xi1>, vector<2xi1>) -> vector<14xi1>
      %274 = arith.remf %extracted_39, %cst_3 : f16
      %275 = vector.multi_reduction <maxsi>, %89, %89 [] : vector<7xi64> to vector<7xi64>
      %alloc_47 = memref.alloc() : memref<7xi16>
      %276 = vector.broadcast %c-9787_i16 : i16 to vector<7xi16>
      %277 = vector.gather %alloc_47[%211] [%178], %154, %276 : memref<7xi16>, vector<7xi32>, vector<7xi1>, vector<7xi16> into vector<7xi16>
      %278 = tensor.empty() : tensor<4x7xf16>
      memref.copy %alloc_10, %alloc_14 : memref<4x7xf16> to memref<4x7xf16>
      %279 = math.atan %9 : tensor<5x12xf16>
      %280 = math.atan2 %13, %13 : tensor<7xf32>
      %281 = arith.floordivsi %c-9787_i16, %c-9787_i16 : i16
      vector.print %178 : vector<7xi32>
      %282 = math.cttz %c1952435290_i64 : i64
      %283 = index.ceildivu %c6, %135
      %284 = arith.cmpi sge, %c23138_i16, %c16358_i16 : i16
      %285 = arith.floordivsi %true, %false_25 : i1
      %286 = bufferization.to_tensor %150 : memref<4x7xi16>
      %287 = arith.remf %extracted_39, %cst_22 : f16
      %288 = scf.execute_region -> index {
        %292 = arith.addi %true_2, %true_2 : i1
        %293 = index.floordivs %183, %131
        %294 = math.powf %17, %15 : tensor<4x7xf32>
        %295 = math.exp %collapsed : tensor<28xf32>
        bufferization.dealloc_tensor %2 : tensor<4x7xf16>
        %cast_49 = tensor.cast %expanded_38 : tensor<4x7x1xf32> to tensor<?x?x?xf32>
        %296 = vector.broadcast %false : i1 to vector<12xi1>
        %dest_50, %accumulated_value_51 = vector.scan <xor>, %271, %296 {inclusive = true, reduction_dim = 0 : i64} : vector<2x12xi1>, vector<12xi1>
        %297 = math.log2 %117 : tensor<4xf16>
        %298 = arith.floordivsi %true_1, %true_0 : i1
        %299 = arith.muli %c1_i32, %extracted : i32
        %300 = math.roundeven %5 : tensor<5x12xf32>
        %301 = tensor.empty() : tensor<4x1xf32>
        %302 = linalg.matmul ins(%16, %expanded_37 : tensor<4x7xf32>, tensor<7x1xf32>) outs(%301 : tensor<4x1xf32>) -> tensor<4x1xf32>
        %303 = affine.min affine_map<(d0, d1, d2) -> (d1 + 8, d2 * 9, d2 * 8, d2 * 9)>(%135, %c4, %c6)
        %304 = arith.minsi %c352219708_i32, %202 : i32
        %305 = affine.min affine_map<(d0, d1) -> (d1 * 4 + 16, d1 * 4, d1 * 4 + d1 ceildiv 8 + 1 + 16, (d1 * 4 + 4) mod 16)>(%293, %111)
        %306 = arith.divsi %false_25, %false : i1
        scf.yield %183 : index
      }
      %289 = vector.insertelement %extracted, %226[%c11 : index] : vector<7xi32>
      %290 = math.floor %expanded_37 : tensor<7x1xf32>
      %rank_48 = tensor.rank %expanded : tensor<4x7x1xi1>
      memref.copy %34, %alloc_9 : memref<7xf16> to memref<7xf16>
      %291 = index.mul %c3, %73
    }
    %234 = arith.minui %extracted, %c1_i32 : i32
    bufferization.dealloc_tensor %22 : tensor<f32>
    %235 = math.floor %144 : tensor<5x12xf16>
    %236 = scf.execute_region -> tensor<4x7xi16> {
      %264 = arith.maxui %c352219708_i32, %202 : i32
      %265 = arith.subi %140, %true : i1
      scf.execute_region {
        %279 = index.maxs %c3, %160
        %280 = arith.minf %cst, %cst_22 : f16
        %281 = vector.shuffle %52, %52 [2, 4, 5] : vector<4xf32>, vector<4xf32>
        %282 = arith.andi %c-9787_i16, %c-9787_i16 : i16
        %283 = index.sub %214, %168
        %284 = math.round %expanded_38 : tensor<4x7x1xf32>
        %285 = math.absi %false_4 : i1
        %286 = index.ceildivu %211, %60
        %287 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1)>(%73, %160, %rank, %187)
        %288 = math.fma %9, %9, %144 : tensor<5x12xf16>
        %289 = index.maxu %c12, %73
        %290 = arith.ori %c1_i32, %c1_i32 : i32
        %291 = arith.maxsi %extracted, %202 : i32
        %292 = math.atan2 %184, %184 : tensor<4x5xf16>
        %293 = vector.broadcast %false_4 : i1 to vector<2x2xi1>
        %294 = vector.outerproduct %116, %29, %293 {kind = #vector.kind<maxsi>} : vector<2xi1>, vector<2xi1>
        %295 = vector.broadcast %true_1 : i1 to vector<12xi1>
        %296 = vector.multi_reduction <maxsi>, %46, %295 [0] : vector<5x12xi1> to vector<12xi1>
        scf.yield
      }
      %266 = affine.min affine_map<(d0, d1, d2) -> (d2 * 128)>(%132, %c13, %106)
      %267 = affine.max affine_map<(d0, d1, d2, d3) -> ((-(d2 + 2)) ceildiv 64, -d0)>(%c9, %114, %167, %167)
      affine.store %c1_i32, %alloc_18[%c1] : memref<4xi32>
      %268 = math.ipowi %c352219708_i32, %202 : i32
      %269 = affine.max affine_map<(d0, d1, d2) -> ((d0 mod 128) floordiv 32, d2 mod 16)>(%228, %160, %167)
      memref.tensor_store %7, %alloc_18 : memref<4xi32>
      %270 = vector.broadcast %cst_5 : f32 to vector<4xf32>
      %271 = vector.fma %270, %52, %270 : vector<4xf32>
      %dest_46, %accumulated_value_47 = vector.scan <maxsi>, %159, %19 {inclusive = true, reduction_dim = 1 : i64} : vector<5x12xi1>, vector<5xi1>
      %272 = arith.andi %true, %false_4 : i1
      %273 = vector.broadcast %rank_33 : index to vector<4xindex>
      %274 = vector.broadcast %140 : i1 to vector<4xi1>
      %275 = vector.broadcast %c-3111_i16 : i16 to vector<4xi16>
      vector.scatter %150[%c1, %c3] [%273], %274, %275 : memref<4x7xi16>, vector<4xindex>, vector<4xi1>, vector<4xi16>
      %cst_48 = arith.constant 1.000000e+00 : f32
      %276 = vector.transfer_read %13[%60], %cst_48 : tensor<7xf32>, vector<f32>
      %true_49 = index.bool.constant true
      %277 = math.atan %splat : tensor<7xf32>
      %278 = tensor.empty() : tensor<4x7xi16>
      scf.yield %278 : tensor<4x7xi16>
    }
    %237 = math.ceil %6 : tensor<5x12xf16>
    %238 = vector.splat %c7 : vector<4x7xindex>
    %239 = math.round %99 : tensor<f32>
    %240 = math.atan %5 : tensor<5x12xf32>
    %241 = arith.divui %c1952435290_i64, %c2113043670_i64 : i64
    %242 = vector.broadcast %111 : index to vector<5xindex>
    %243 = vector.broadcast %c2113043670_i64 : i64 to vector<5xi64>
    vector.scatter %83[%c3, %c5] [%242], %19, %243 : memref<4x7xi64>, vector<5xindex>, vector<5xi1>, vector<5xi64>
    %244 = arith.maxf %cst_3, %extracted_39 : f16
    %245 = math.ipowi %1, %1 : tensor<4xi16>
    %246 = bufferization.to_tensor %alloc_17 : memref<5x12xi1>
    %247 = index.maxs %c5, %125
    %248 = vector.broadcast %extracted : i32 to vector<12xi32>
    %dest_42, %accumulated_value_43 = vector.scan <or>, %47, %248 {inclusive = true, reduction_dim = 0 : i64} : vector<5x12xi32>, vector<12xi32>
    scf.execute_region {
      %264 = arith.ori %true_0, %false_4 : i1
      scf.execute_region {
        %275 = bufferization.clone %alloc_7 : memref<4x7xi64> to memref<4x7xi64>
        %276 = vector.create_mask %228, %c8 : vector<5x12xi1>
        %277 = arith.subi %false, %true_26 : i1
        %278 = arith.shrsi %c23138_i16, %c-3111_i16 : i16
        %279 = vector.broadcast %c2113043670_i64 : i64 to vector<4xi64>
        %280 = vector.broadcast %false : i1 to vector<4xi1>
        %281 = vector.maskedload %275[%c0, %c5], %280, %279 : memref<4x7xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
        bufferization.dealloc_tensor %13 : tensor<7xf32>
        %282 = tensor.empty() : tensor<4x4xi1>
        %283 = linalg.matmul ins(%163, %163 : tensor<4x4xi1>, tensor<4x4xi1>) outs(%282 : tensor<4x4xi1>) -> tensor<4x4xi1>
        %284 = bufferization.clone %alloc_19 : memref<4xf16> to memref<4xf16>
        %alloca_48 = memref.alloca() : memref<4x7xi32>
        %285 = memref.atomic_rmw minu %c352219708_i32, %alloc_18[%c1] : (i32, memref<4xi32>) -> i32
        %286 = affine.max affine_map<(d0, d1, d2) -> (d1 - 32)>(%c10, %228, %c1)
        %287 = index.add %rank_33, %73
        %288 = vector.splat %true_26 : vector<4xi1>
        %289 = arith.remui %true_26, %true_0 : i1
        %290 = math.roundeven %15 : tensor<4x7xf32>
        %291 = arith.addi %extracted, %extracted : i32
        scf.yield
      }
      %265 = math.log2 %184 : tensor<4x5xf16>
      %266 = arith.ori %false_4, %true_26 : i1
      %267 = index.ceildivu %167, %115
      %268 = arith.minf %cst_5, %cst_29 : f32
      %269 = index.divs %131, %214
      %extracted_46 = tensor.extract %43[] : tensor<i32>
      %270 = affine.min affine_map<(d0, d1, d2) -> (d2 * 2, d2 floordiv 32, d0 - d1 - d0, -(d0 - d1))>(%40, %220, %c15)
      %271 = arith.floordivsi %c352219708_i32, %extracted_46 : i32
      %272 = math.round %cst : f16
      affine.for %arg3 = 0 to 74 {
      }
      %273 = index.divs %c5, %228
      memref.tensor_store %0, %alloc_6 : memref<5x12xi1>
      %alloc_47 = memref.alloc() : memref<5x12xi32>
      memref.tensor_store %14, %alloc_47 : memref<5x12xi32>
      %274 = math.ceil %49 : tensor<4x7xf16>
      scf.yield
    }
    %249 = vector.extract %52[0] : vector<4xf32>
    %250 = memref.atomic_rmw muli %c1952435290_i64, %136[%c1, %c0] : (i64, memref<4x7xi64>) -> i64
    %251 = arith.addi %true_2, %140 : i1
    %252 = tensor.empty() : tensor<4xi1>
    %253 = vector.broadcast %c1_i32 : i32 to vector<4x7xi32>
    %254 = vector.gather %252[%25] [%253], %78, %170 : tensor<4xi1>, vector<4x7xi32>, vector<4x7xi1>, vector<4x7xi1> into vector<4x7xi1>
    %255 = math.exp2 %151 : tensor<7xf16>
    %256 = vector.broadcast %cst : f16 to vector<4xf16>
    %257 = vector.broadcast %false_25 : i1 to vector<4xi1>
    %258 = vector.maskedload %alloc_9[%c5], %257, %256 : memref<7xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
    memref.assume_alignment %alloc, 2 : memref<7xf32>
    %259 = tensor.empty() : tensor<5x12xi1>
    %260 = linalg.copy ins(%0 : tensor<5x12xi1>) outs(%259 : tensor<5x12xi1>) -> tensor<5x12xi1>
    %261 = tensor.empty() : tensor<7xf32>
    %transposed_44 = linalg.transpose ins(%transposed : tensor<7xf32>) outs(%261 : tensor<7xf32>) permutation = [0] 
    %alloc_45 = memref.alloc() : memref<i1>
    linalg.reduce ins(%3 : tensor<7xi1>) outs(%alloc_45 : memref<i1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %264 = vector.broadcast %132 : index to vector<5xindex>
        vector.scatter %alloc_17[%c3, %c7] [%264], %19, %19 : memref<5x12xi1>, vector<5xindex>, vector<5xi1>, vector<5xi1>
        %265 = index.divs %106, %87
        %266 = memref.atomic_rmw maxf %cst_29, %182[%c0, %c4] : (f32, memref<4x7xf32>) -> f32
        %267 = arith.cmpf ole, %cst_5, %cst_5 : f32
        memref.alloca_scope  {
          memref.assume_alignment %alloc_14, 16 : memref<4x7xf16>
          %269 = affine.max affine_map<(d0) -> ((d0 + 4) floordiv 16 + d0 * 2, -(((d0 + 4) floordiv 16) floordiv 8))>(%183)
          %alloca_47 = memref.alloca() : memref<7xi32>
          %270 = math.ipowi %false, %true_26 : i1
          %271 = math.floor %17 : tensor<4x7xf32>
          %272 = affine.apply affine_map<(d0) -> (-(-d0 - 64))>(%c5)
          %273 = math.ceil %17 : tensor<4x7xf32>
          %false_48 = index.bool.constant false
          %274 = arith.cmpf ole, %cst, %cst : f16
          %275 = math.powf %18, %transposed : tensor<7xf32>
          %276 = math.atan %expanded_38 : tensor<4x7x1xf32>
          %277 = math.ipowi %c23138_i16, %c16358_i16 : i16
          %278 = index.ceildivu %c3, %40
          %279 = index.divs %rank_33, %131
          %280 = bufferization.to_tensor %alloc_8 : memref<4xf16>
          %281 = index.ceildivu %c13, %95
          %282 = math.log %cst_29 : f32
          %283 = math.exp2 %transposed_44 : tensor<7xf32>
          %284 = math.log1p %splat : tensor<7xf32>
          %285 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 - 32)>(%c12, %265, %104, %114)
          %286 = affine.max affine_map<(d0, d1) -> (d1 - 2, d0)>(%c4, %28)
          %287 = vector.extract %53[0] : vector<4xf32>
          %288 = index.casts %c2 : index to i32
          %289 = bufferization.to_tensor %alloc_45 : memref<i1>
          %290 = index.maxs %40, %115
          %291 = arith.andi %c23138_i16, %c23138_i16 : i16
          %292 = bufferization.to_tensor %alloc_17 : memref<5x12xi1>
          %293 = math.log %13 : tensor<7xf32>
          %294 = index.maxu %135, %281
          %295 = arith.negf %cst_22 : f16
          %296 = math.floor %13 : tensor<7xf32>
          %297 = math.powf %280, %280 : tensor<4xf16>
        }
        bufferization.dealloc_tensor %from_elements : tensor<4x7xi32>
        %268 = memref.atomic_rmw assign %cst_5, %alloc_11[%c0, %c6] : (f32, memref<4x7xf32>) -> f32
        memref.tensor_store %260, %alloc_17 : memref<5x12xi1>
        %false_46 = arith.constant false
        linalg.yield %false_46 : i1
      }
    %262 = scf.parallel (%arg3) = (%c6) to (%37) step (%c2) init (%9) -> tensor<5x12xf16> {
      %264 = bufferization.to_tensor %alloc_8 : memref<4xf16>
      %265 = vector.broadcast %c16358_i16 : i16 to vector<1x5xi16>
      %266 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %200, %48, %265 : vector<1x12xi16>, vector<5x12xi16> into vector<1x5xi16>
      %267 = index.floordivs %73, %40
      %268 = arith.andi %true, %true_1 : i1
      %269 = math.log2 %22 : tensor<f32>
      %rank_46 = tensor.rank %99 : tensor<f32>
      %270 = math.ceil %20 : tensor<7xf32>
      %alloca_47 = memref.alloca() : memref<5x12xi1>
      %271 = math.log10 %13 : tensor<7xf32>
      %272 = bufferization.clone %alloc_7 : memref<4x7xi64> to memref<4x7xi64>
      %273 = affine.if affine_set<(d0, d1, d2) : (d1 floordiv 64 + d2 ceildiv 8 == 0)>(%c10, %c14, %c4) -> memref<7xi32> {
        %rank_48 = tensor.rank %246 : tensor<5x12xi1>
        %279 = index.castu %87 : index to i32
        %280 = affine.load %149[%c13, %c2] : memref<4x7xi64>
        %alloc_49 = memref.alloc() : memref<5x12xi1>
        %281 = bufferization.to_tensor %alloc_6 : memref<5x12xi1>
        %282 = index.ceildivs %211, %c13
        bufferization.dealloc_tensor %expanded_38 : tensor<4x7x1xf32>
        %283 = arith.divf %cst, %cst_22 : f16
        %alloc_50 = memref.alloc() : memref<7xi32>
        affine.yield %alloc_50 : memref<7xi32>
      } else {
        %279 = index.maxu %c3, %131
        %280 = vector.broadcast %true_1 : i1 to vector<2x2xi1>
        %281 = vector.outerproduct %116, %29, %280 {kind = #vector.kind<minsi>} : vector<2xi1>, vector<2xi1>
        %282 = arith.subi %202, %c352219708_i32 : i32
        %alloca_48 = memref.alloca() : memref<4x7xf16>
        %283 = vector.broadcast %c1_i32 : i32 to vector<7xi32>
        memref.assume_alignment %alloc, 8 : memref<7xf32>
        %284 = arith.remsi %c-9787_i16, %215 : i16
        %285 = arith.addi %true, %true : i1
        %alloc_49 = memref.alloc() : memref<7xi32>
        affine.yield %alloc_49 : memref<7xi32>
      }
      %274 = math.log2 %13 : tensor<7xf32>
      %275 = bufferization.to_tensor %alloc_12 : memref<5x12xi16>
      memref.tensor_store %259, %alloc_6 : memref<5x12xi1>
      %276 = vector.create_mask %c15, %c7 : vector<4x7xi1>
      %277 = index.maxu %167, %c8
      %278 = tensor.empty() : tensor<5x12xf16>
      scf.reduce(%278)  : tensor<5x12xf16> {
      ^bb0(%arg4: tensor<5x12xf16>, %arg5: tensor<5x12xf16>):
        %279 = arith.shrui %true_2, %false_4 : i1
        %280 = arith.ori %c-3111_i16, %c-3111_i16 : i16
        %281 = math.expm1 %13 : tensor<7xf32>
        %282 = arith.floordivsi %140, %false : i1
        %283 = arith.shli %true_26, %true_2 : i1
        %284 = arith.remui %140, %false : i1
        %285 = affine.load %alloc_13[%c14, %c4] : memref<4x7xi16>
        %alloca_48 = memref.alloca() : memref<7xf16>
        %286 = tensor.empty() : tensor<5x12xf16>
        scf.reduce.return %286 : tensor<5x12xf16>
      }
      scf.yield
    }
    %263 = affine.vector_load %alloc_14[%c7, %85] : memref<4x7xf16>, vector<4xf16>
    affine.vector_store %226, %alloc_18[%114] : memref<4xi32>, vector<7xi32>
    vector.print %19 : vector<5xi1>
    vector.print %29 : vector<2xi1>
    vector.print %45 : vector<5x12xi16>
    vector.print %46 : vector<5x12xi1>
    vector.print %47 : vector<5x12xi32>
    vector.print %48 : vector<5x12xi16>
    vector.print %52 : vector<4xf32>
    vector.print %53 : vector<4xf32>
    vector.print %78 : vector<4x7xi1>
    vector.print %89 : vector<7xi64>
    vector.print %100 : vector<5x12xi1>
    vector.print %116 : vector<2xi1>
    vector.print %154 : vector<7xi1>
    vector.print %159 : vector<5x12xi1>
    vector.print %169 : vector<2xi1>
    vector.print %170 : vector<4x7xi1>
    vector.print %178 : vector<7xi32>
    vector.print %191 : vector<1xf32>
    vector.print %200 : vector<1x12xi16>
    vector.print %226 : vector<7xi32>
    vector.print %253 : vector<4x7xi32>
    vector.print %254 : vector<4x7xi1>
    vector.print %256 : vector<4xf16>
    vector.print %257 : vector<4xi1>
    vector.print %258 : vector<4xf16>
    vector.print %263 : vector<4xf16>
    vector.print %c-9787_i16 : i16
    vector.print %cst : f16
    vector.print %true : i1
    vector.print %c23138_i16 : i16
    vector.print %true_0 : i1
    vector.print %false : i1
    vector.print %c352219708_i32 : i32
    vector.print %c16358_i16 : i16
    vector.print %c-3111_i16 : i16
    vector.print %true_1 : i1
    vector.print %true_2 : i1
    vector.print %cst_3 : f16
    vector.print %false_4 : i1
    vector.print %cst_5 : f32
    vector.print %c1952435290_i64 : i64
    vector.print %c2113043670_i64 : i64
    vector.print %cst_22 : f16
    vector.print %false_25 : i1
    vector.print %true_26 : i1
    vector.print %extracted : i32
    vector.print %140 : i1
    vector.print %cst_29 : f32
    vector.print %c1_i32 : i32
    vector.print %202 : i32
    vector.print %215 : i16
    vector.print %extracted_39 : f16
    return %c0 : index
  }
}
