module {
  func.func private @func1(%arg0: vector<1xf32>, %arg1: memref<7x8xi64>) -> i1 {
    %c1121550051_i64 = arith.constant 1121550051 : i64
    %cst = arith.constant 1.151200e+04 : f16
    %cst_0 = arith.constant 1.89715648E+9 : f32
    %cst_1 = arith.constant 4.838400e+04 : f16
    %cst_2 = arith.constant 5.481600e+04 : f16
    %c1911243385_i64 = arith.constant 1911243385 : i64
    %cst_3 = arith.constant 3.798400e+04 : f16
    %cst_4 = arith.constant 0x4DF7B199 : f32
    %cst_5 = arith.constant 1.481600e+04 : f16
    %c1900262529_i32 = arith.constant 1900262529 : i32
    %cst_6 = arith.constant 2.05371699E+9 : f32
    %c1034848868_i32 = arith.constant 1034848868 : i32
    %c2092658320_i32 = arith.constant 2092658320 : i32
    %c15087471_i32 = arith.constant 15087471 : i32
    %c1742877553_i64 = arith.constant 1742877553 : i64
    %cst_7 = arith.constant 1.74243213E+9 : f32
    %0 = tensor.empty() : tensor<1xi32>
    %1 = tensor.empty() : tensor<7x8xi32>
    %2 = tensor.empty() : tensor<1xf32>
    %3 = tensor.empty() : tensor<1xf16>
    %4 = tensor.empty() : tensor<8x8x8xi16>
    %5 = tensor.empty() : tensor<1x8xf32>
    %6 = tensor.empty() : tensor<1x8xi32>
    %7 = tensor.empty() : tensor<7x8xf32>
    %8 = tensor.empty() : tensor<1xf32>
    %9 = tensor.empty() : tensor<8x8x8xf32>
    %10 = tensor.empty() : tensor<8x8x8xf32>
    %11 = tensor.empty() : tensor<8x8x8xi1>
    %12 = tensor.empty() : tensor<1xi16>
    %13 = tensor.empty() : tensor<8x8x8xi1>
    %14 = tensor.empty() : tensor<8x8x8xi1>
    %15 = tensor.empty() : tensor<1x8xi64>
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
    %alloc = memref.alloc() : memref<1xi64>
    %alloc_8 = memref.alloc() : memref<1xf32>
    %alloc_9 = memref.alloc() : memref<8x8x8xf32>
    %alloc_10 = memref.alloc() : memref<1xi64>
    %alloc_11 = memref.alloc() : memref<1x8xi1>
    %alloc_12 = memref.alloc() : memref<1x8xi64>
    %alloc_13 = memref.alloc() : memref<8x8x8xf16>
    %alloc_14 = memref.alloc() : memref<7x8xi1>
    %alloc_15 = memref.alloc() : memref<1x8xf32>
    %alloc_16 = memref.alloc() : memref<7x8xi64>
    %alloc_17 = memref.alloc() : memref<1x8xi64>
    %alloc_18 = memref.alloc() : memref<1xf32>
    %alloc_19 = memref.alloc() : memref<1x8xi64>
    %alloc_20 = memref.alloc() : memref<7x8xf32>
    %alloc_21 = memref.alloc() : memref<8x8x8xf32>
    %alloc_22 = memref.alloc() : memref<1x8xi64>
    %16 = tensor.empty() : tensor<8x8x8xf32>
    %17 = linalg.copy ins(%9 : tensor<8x8x8xf32>) outs(%16 : tensor<8x8x8xf32>) -> tensor<8x8x8xf32>
    %18 = tensor.empty() : tensor<8x1xi1>
    %transposed = linalg.transpose ins(%alloc_11 : memref<1x8xi1>) outs(%18 : tensor<8x1xi1>) permutation = [1, 0] 
    %19 = tensor.empty() : tensor<8x8xf32>
    %reduced = linalg.reduce ins(%10 : tensor<8x8x8xf32>) outs(%19 : tensor<8x8xf32>) dimensions = [2] 
      (%in: f32, %init: f32) {
        %267 = arith.xori %c1121550051_i64, %c1121550051_i64 : i64
        %268 = math.ipowi %13, %13 : tensor<8x8x8xi1>
        %269 = math.log10 %cst_2 : f16
        %270 = vector.broadcast %c1911243385_i64 : i64 to vector<1xi64>
        %271 = vector.extract %270[0] : vector<1xi64>
        %272 = bufferization.clone %alloc_14 : memref<7x8xi1> to memref<7x8xi1>
        %273 = math.expm1 %10 : tensor<8x8x8xf32>
        %274 = arith.ceildivsi %c2092658320_i32, %c15087471_i32 : i32
        %275 = math.cttz %15 : tensor<1x8xi64>
        %cst_56 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_56 : f32
      }
    %20 = scf.parallel (%arg2) = (%c0) to (%c7) step (%c3) init (%c1911243385_i64) -> i64 {
      affine.for %arg3 = 0 to 35 {
      }
      %expanded_56 = tensor.expand_shape %7 [[0], [1, 2]] : tensor<7x8xf32> into tensor<7x8x1xf32>
      %267 = arith.muli %c1742877553_i64, %c1911243385_i64 : i64
      %268 = vector.broadcast %c1742877553_i64 : i64 to vector<1xi64>
      %269 = arith.cmpf ugt, %cst_3, %cst : f16
      %270 = index.add %c15, %c7
      %271 = tensor.empty() : tensor<8x8x8xi64>
      %272 = vector.broadcast %c1121550051_i64 : i64 to vector<1x8xi64>
      %true_57 = arith.constant true
      %273 = vector.broadcast %true_57 : i1 to vector<1x8xi1>
      %274 = vector.broadcast %c2092658320_i32 : i32 to vector<1x8xi32>
      %275 = vector.gather %271[%arg2, %c3, %c0] [%274], %273, %272 : tensor<8x8x8xi64>, vector<1x8xi32>, vector<1x8xi1>, vector<1x8xi64> into vector<1x8xi64>
      %276 = math.rsqrt %5 : tensor<1x8xf32>
      %277 = math.tanh %2 : tensor<1xf32>
      %278 = math.rsqrt %3 : tensor<1xf16>
      %279 = vector.broadcast %c1742877553_i64 : i64 to vector<8x8xi64>
      %280 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %275, %275, %279 : vector<1x8xi64>, vector<1x8xi64> into vector<8x8xi64>
      %281 = arith.maxf %cst_5, %cst : f16
      %inserted_58 = tensor.insert %cst_6 into %9[%c5, %c5, %c5] : tensor<8x8x8xf32>
      %282 = arith.cmpi sge, %c2092658320_i32, %c2092658320_i32 : i32
      %283 = bufferization.clone %alloc_18 : memref<1xf32> to memref<1xf32>
      %284 = affine.load %alloc_21[%c13, %c0, %c13] : memref<8x8x8xf32>
      %c0_i64 = arith.constant 0 : i64
      scf.reduce(%c0_i64)  : i64 {
      ^bb0(%arg3: i64, %arg4: i64):
        bufferization.dealloc_tensor %8 : tensor<1xf32>
        %285 = math.powf %5, %5 : tensor<1x8xf32>
        %286 = index.divs %c0, %arg2
        %287 = arith.minf %cst_0, %cst_7 : f32
        %288 = math.roundeven %17 : tensor<8x8x8xf32>
        %289 = math.log1p %9 : tensor<8x8x8xf32>
        %290 = math.ceil %2 : tensor<1xf32>
        %291 = arith.minsi %c1900262529_i32, %c15087471_i32 : i32
        %c1_i64 = arith.constant 1 : i64
        scf.reduce.return %c1_i64 : i64
      }
      scf.yield
    }
    %21 = affine.vector_load %alloc_8[%c1] : memref<1xf32>, vector<7xf32>
    affine.vector_store %21, %alloc_20[%c4, %c6] : memref<7x8xf32>, vector<7xf32>
    %22 = tensor.empty() : tensor<1xf32>
    %23 = tensor.empty() : tensor<f32>
    %24 = linalg.dot ins(%2, %22 : tensor<1xf32>, tensor<1xf32>) outs(%23 : tensor<f32>) -> tensor<f32>
    %25 = math.round %23 : tensor<f32>
    %26 = vector.create_mask %c1, %c13 : vector<1x8xi1>
    %27 = index.sub %c4, %c7
    bufferization.dealloc_tensor %16 : tensor<8x8x8xf32>
    %28 = index.mul %c11, %c14
    %29 = arith.andi %c1900262529_i32, %c1034848868_i32 : i32
    %30 = arith.shli %c1034848868_i32, %c1900262529_i32 : i32
    bufferization.dealloc_tensor %4 : tensor<8x8x8xi16>
    %31 = bufferization.clone %alloc_21 : memref<8x8x8xf32> to memref<8x8x8xf32>
    %32 = arith.remf %cst_0, %cst_6 : f32
    %33 = vector.broadcast %c10 : index to vector<15xindex>
    %false = arith.constant false
    %34 = vector.broadcast %false : i1 to vector<15xi1>
    %35 = vector.broadcast %cst_0 : f32 to vector<15xf32>
    vector.scatter %alloc_9[%c1, %c2, %c2] [%33], %34, %35 : memref<8x8x8xf32>, vector<15xindex>, vector<15xi1>, vector<15xf32>
    %36 = vector.bitcast %21 : vector<7xf32> to vector<7xf32>
    %37 = vector.broadcast %cst_7 : f32 to vector<15xf32>
    %true = arith.constant true
    %38 = vector.broadcast %true : i1 to vector<15xi1>
    %39 = vector.maskedload %alloc_9[%c2, %c0, %c3], %38, %37 : memref<8x8x8xf32>, vector<15xi1>, vector<15xf32> into vector<15xf32>
    %40 = vector.splat %c1911243385_i64 : vector<1xi64>
    %generated = tensor.generate %c15, %c3 {
    ^bb0(%arg2: index, %arg3: index):
      %267 = math.log %7 : tensor<7x8xf32>
      %268 = vector.matrix_multiply %36, %37 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 15 : i32} : (vector<7xf32>, vector<15xf32>) -> vector<105xf32>
      %269 = math.powf %8, %2 : tensor<1xf32>
      %270 = math.powf %9, %10 : tensor<8x8x8xf32>
      tensor.yield %c1900262529_i32 : i32
    } : tensor<?x?xi32>
    %41 = index.sub %c9, %28
    %42 = affine.load %alloc_22[%c3, %c3] : memref<1x8xi64>
    %43 = arith.ori %c15087471_i32, %c1900262529_i32 : i32
    %44 = arith.subi %c1034848868_i32, %c15087471_i32 : i32
    %45 = vector.bitcast %36 : vector<7xf32> to vector<7xf32>
    %46 = arith.addi %true, %true : i1
    %47 = math.roundeven %5 : tensor<1x8xf32>
    %from_elements = tensor.from_elements %cst_7, %cst_4, %cst_4, %cst_7, %cst_4, %cst_4, %cst_6, %cst_0 : tensor<1x8xf32>
    %48 = math.fma %reduced, %reduced, %19 : tensor<8x8xf32>
    %49 = math.ipowi %4, %4 : tensor<8x8x8xi16>
    scf.execute_region {
      %267 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %37, %37, %cst_4 : vector<15xf32>, vector<15xf32> into f32
      %268 = math.copysign %cst_6, %cst_0 : f32
      %269 = index.ceildivs %c8, %c10
      %270 = index.maxs %c1, %c12
      %271 = vector.extract %45[5] : vector<7xf32>
      %272 = vector.flat_transpose %36 {columns = 7 : i32, rows = 1 : i32} : vector<7xf32> -> vector<7xf32>
      %273 = math.copysign %16, %9 : tensor<8x8x8xf32>
      %rank_56 = tensor.rank %7 : tensor<7x8xf32>
      %274 = index.casts %c1911243385_i64 : i64 to index
      %275 = affine.load %alloc_10[%c2] : memref<1xi64>
      %276 = vector.extract %26[0] : vector<1x8xi1>
      %277 = math.tanh %7 : tensor<7x8xf32>
      %278 = math.tan %cst : f16
      %279 = arith.remf %cst, %cst_2 : f16
      %generated_57 = tensor.generate %28, %c15 {
      ^bb0(%arg2: index, %arg3: index):
        %282 = arith.remui %c2092658320_i32, %c2092658320_i32 : i32
        %283 = index.maxs %274, %c12
        %284 = math.round %8 : tensor<1xf32>
        %285 = index.castu %275 : i64 to index
        %c0_i16 = arith.constant 0 : i16
        tensor.yield %c0_i16 : i16
      } : tensor<?x?xi16>
      %280 = vector.broadcast %cst_7 : f32 to vector<f32>
      %281 = vector.transfer_write %280, %2[%c8] : vector<f32>, tensor<1xf32>
      scf.yield
    }
    vector.print %45 : vector<7xf32>
    %50 = math.rsqrt %7 : tensor<7x8xf32>
    %51 = index.mul %c15, %c13
    %52 = math.rsqrt %7 : tensor<7x8xf32>
    %53 = tensor.empty() : tensor<1xi32>
    %mapped = linalg.map ins(%0, %0 : tensor<1xi32>, tensor<1xi32>) outs(%53 : tensor<1xi32>)
      (%in: i32, %in_56: i32) {
        %267 = index.floordivs %c15, %c6
        %268 = math.ceil %23 : tensor<f32>
        %true_57 = arith.constant true
        %269 = vector.transfer_read %alloc_14[%c2, %c2], %true_57 : memref<7x8xi1>, vector<7xi1>
        %270 = math.round %from_elements : tensor<1x8xf32>
        %271 = arith.addf %cst_7, %cst_4 : f32
        %272 = tensor.empty() : tensor<7x8xf16>
        %273 = vector.broadcast %c1742877553_i64 : i64 to vector<1xi64>
        %274 = vector.broadcast %true : i1 to vector<1xi1>
        %275 = vector.maskedload %alloc_16[%c2, %c4], %274, %273 : memref<7x8xi64>, vector<1xi1>, vector<1xi64> into vector<1xi64>
        %276 = vector.broadcast %cst_4 : f32 to vector<7x8xf32>
        %277 = vector.broadcast %true_57 : i1 to vector<7x8xi1>
        %278 = vector.broadcast %c15087471_i32 : i32 to vector<7x8xi32>
        %279 = vector.gather %8[%c0] [%278], %277, %276 : tensor<1xf32>, vector<7x8xi32>, vector<7x8xi1>, vector<7x8xf32> into vector<7x8xf32>
        %280 = math.log10 %5 : tensor<1x8xf32>
        %281 = arith.muli %c15087471_i32, %c1034848868_i32 : i32
        %282 = affine.load %alloc_12[%c10, %c5] : memref<1x8xi64>
        %283 = bufferization.clone %alloc_18 : memref<1xf32> to memref<1xf32>
        %284 = vector.broadcast %c1034848868_i32 : i32 to vector<7x8xi32>
        %285 = memref.atomic_rmw mulf %cst_6, %alloc_20[%c4, %c4] : (f32, memref<7x8xf32>) -> f32
        %286 = math.exp %cst_3 : f16
        %287 = vector.matrix_multiply %273, %275 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
        %288 = math.log %cst_3 : f16
        %289 = vector.broadcast %true_57 : i1 to vector<8xi1>
        %290 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<or>} %274, %26, %289 : vector<1xi1>, vector<1x8xi1> into vector<8xi1>
        %291 = arith.divsi %in, %c1900262529_i32 : i32
        %292 = scf.while (%arg2 = %39) : (vector<15xf32>) -> vector<15xf32> {
          %rank_61 = tensor.rank %14 : tensor<8x8x8xi1>
          %298 = vector.matrix_multiply %275, %273 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
          %299 = index.sub %c8, %c15
          memref.store %cst_4, %31[%c7, %c4, %c6] : memref<8x8x8xf32>
          %300 = vector.broadcast %cst_7 : f32 to vector<7x8xf32>
          memref.store %cst_7, %alloc_20[%c1, %c2] : memref<7x8xf32>
          %301 = vector.broadcast %cst_6 : f32 to vector<7x7xf32>
          %302 = vector.outerproduct %36, %21, %301 {kind = #vector.kind<maxf>} : vector<7xf32>, vector<7xf32>
          %303 = math.cos %cst_7 : f32
          scf.condition(%true) %39 : vector<15xf32>
        } do {
        ^bb0(%arg2: vector<15xf32>):
          %298 = index.casts %c9 : index to i32
          %299 = vector.broadcast %in : i32 to vector<8xi32>
          %dest_61, %accumulated_value_62 = vector.scan <and>, %278, %299 {inclusive = false, reduction_dim = 0 : i64} : vector<7x8xi32>, vector<8xi32>
          %300 = arith.ceildivsi %c1900262529_i32, %c1034848868_i32 : i32
          %301 = arith.muli %c15087471_i32, %c1034848868_i32 : i32
          %302 = arith.floordivsi %in_56, %c2092658320_i32 : i32
          %303 = vector.flat_transpose %275 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
          %304 = math.round %23 : tensor<f32>
          %305 = vector.broadcast %in_56 : i32 to vector<i32>
          %306 = vector.transfer_write %305, %53[%c15] : vector<i32>, tensor<1xi32>
          affine.store %true_57, %alloc_11[%c2, %c14] : memref<1x8xi1>
          %307 = math.fpowi %cst_6, %c1900262529_i32 : f32, i32
          %308 = memref.realloc %283 : memref<1xf32> to memref<1xf32>
          %309 = math.atan %9 : tensor<8x8x8xf32>
          memref.tensor_store %17, %31 : memref<8x8x8xf32>
          %310 = vector.broadcast %c1900262529_i32 : i32 to vector<8x8x8xi32>
          %311 = vector.broadcast %cst_7 : f32 to vector<8xf32>
          %312 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minf>} %21, %276, %311 : vector<7xf32>, vector<7x8xf32> into vector<8xf32>
          vector.print %279 : vector<7x8xf32>
          scf.yield %39 : vector<15xf32>
        }
        %293 = index.floordivs %c11, %27
        %alloc_58 = memref.alloc() : memref<1xf16>
        %c1_i16 = arith.constant 1 : i16
        %inserted_59 = tensor.insert %c1_i16 into %4[%c5, %c3, %c5] : tensor<8x8x8xi16>
        %294 = math.fma %5, %from_elements, %5 : tensor<1x8xf32>
        vector.print %39 : vector<15xf32>
        %295 = vector.transpose %39, [0] : vector<15xf32> to vector<15xf32>
        memref.store %cst_7, %283[%c0] : memref<1xf32>
        %296 = vector.broadcast %in : i32 to vector<1x8xi32>
        %false_60 = index.bool.constant false
        memref.store %282, %alloc_10[%c0] : memref<1xi64>
        %297 = arith.minf %cst_7, %cst_6 : f32
        scf.execute_region {
          %298 = arith.negf %cst_1 : f16
          %299 = math.atan %reduced : tensor<8x8xf32>
          %300 = vector.broadcast %c15087471_i32 : i32 to vector<1xi32>
          %dest_61, %accumulated_value_62 = vector.scan <xor>, %296, %300 {inclusive = false, reduction_dim = 1 : i64} : vector<1x8xi32>, vector<1xi32>
          %301 = affine.min affine_map<(d0, d1, d2, d3) -> ((d2 floordiv 2) floordiv 8)>(%c6, %28, %c0, %c15)
          %302 = arith.remf %cst_1, %cst_5 : f16
          %303 = index.sizeof
          %304 = math.fma %16, %16, %10 : tensor<8x8x8xf32>
          %305 = vector.broadcast %c11 : index to vector<8xindex>
          %306 = vector.broadcast %false_60 : i1 to vector<8xi1>
          %307 = vector.broadcast %cst_4 : f32 to vector<8xf32>
          vector.scatter %alloc_18[%c0] [%305], %306, %307 : memref<1xf32>, vector<8xindex>, vector<8xi1>, vector<8xf32>
          affine.store %cst_4, %alloc_20[%c3, %c4] : memref<7x8xf32>
          %308 = arith.floordivsi %c2092658320_i32, %c1034848868_i32 : i32
          %309 = math.atan %5 : tensor<1x8xf32>
          %310 = math.log %cst_6 : f32
          %311 = index.casts %c6 : index to i32
          %expanded_63 = tensor.expand_shape %9 [[0], [1], [2, 3]] : tensor<8x8x8xf32> into tensor<8x8x8x1xf32>
          %312 = index.sub %301, %c10
          %313 = index.casts %c9 : index to i32
          scf.yield
        }
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %54 = bufferization.clone %alloc_8 : memref<1xf32> to memref<1xf32>
    %55 = arith.maxf %cst_2, %cst_2 : f16
    memref.store %42, %alloc_10[%c0] : memref<1xi64>
    %56 = affine.load %alloc_13[%c11, %c6, %c1] : memref<8x8x8xf16>
    %57 = vector.extract %26[0] : vector<1x8xi1>
    %58 = arith.ceildivsi %c15087471_i32, %c2092658320_i32 : i32
    %59 = vector.create_mask %c6, %c4 : vector<7x8xi1>
    %60 = arith.muli %c1121550051_i64, %42 : i64
    %inserted = tensor.insert %true into %11[%c4, %c7, %c0] : tensor<8x8x8xi1>
    %61 = math.fpowi %7, %1 : tensor<7x8xf32>, tensor<7x8xi32>
    %collapsed = tensor.collapse_shape %5 [[0, 1]] : tensor<1x8xf32> into tensor<8xf32>
    %62 = index.mul %c7, %c3
    %63 = arith.muli %c1911243385_i64, %42 : i64
    %64 = arith.subi %true, %true : i1
    %65 = vector.broadcast %true : i1 to vector<7xi1>
    %dest, %accumulated_value = vector.scan <add>, %59, %65 {inclusive = false, reduction_dim = 1 : i64} : vector<7x8xi1>, vector<7xi1>
    %66 = affine.load %alloc_21[%c12, %c3, %c2] : memref<8x8x8xf32>
    %67 = math.exp %cst_4 : f32
    %68 = index.casts %27 : index to i32
    %69 = vector.insertelement %cst_4, %39[%51 : index] : vector<15xf32>
    %70 = arith.ori %c1911243385_i64, %c1121550051_i64 : i64
    %71 = index.maxs %41, %c9
    %72 = tensor.empty() : tensor<8x8x8xi32>
    %73 = math.fpowi %10, %72 : tensor<8x8x8xf32>, tensor<8x8x8xi32>
    %74 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 * -32 + d2 floordiv 32 + 64, d1 * -32)>(%c1, %28, %c5, %c12)
    %75 = index.add %c15, %c13
    %true_23 = index.bool.constant true
    %76 = affine.for %arg2 = 0 to 109 iter_args(%arg3 = %c6) -> (index) {
      affine.yield %27 : index
    }
    %collapsed_24 = tensor.collapse_shape %5 [[0, 1]] : tensor<1x8xf32> into tensor<8xf32>
    %77 = math.expm1 %66 : f32
    %78 = arith.shrui %c15087471_i32, %c15087471_i32 : i32
    %79 = index.sizeof
    %80 = arith.shrsi %c1121550051_i64, %c1911243385_i64 : i64
    %81 = index.floordivs %51, %27
    %82 = math.fpowi %9, %72 : tensor<8x8x8xf32>, tensor<8x8x8xi32>
    %inserted_25 = tensor.insert %c2092658320_i32 into %53[%c0] : tensor<1xi32>
    %83 = math.absf %10 : tensor<8x8x8xf32>
    %84 = math.expm1 %8 : tensor<1xf32>
    %85 = arith.remf %cst_4, %cst_0 : f32
    %86 = math.ceil %10 : tensor<8x8x8xf32>
    %87 = vector.broadcast %cst_5 : f16 to vector<8x8x8xf16>
    %88 = math.cttz %6 : tensor<1x8xi32>
    %89 = math.fpowi %2, %0 : tensor<1xf32>, tensor<1xi32>
    %90 = vector.bitcast %38 : vector<15xi1> to vector<15xi1>
    %false_26 = arith.constant false
    %false_27 = arith.constant false
    %91 = vector.transfer_read %18[%c11, %27], %false_27 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<8x1xi1>, vector<1xi1>
    %collapsed_28 = tensor.collapse_shape %reduced [[0, 1]] : tensor<8x8xf32> into tensor<64xf32>
    %92 = math.atan2 %23, %24 : tensor<f32>
    %93 = math.tan %5 : tensor<1x8xf32>
    %alloc_29 = memref.alloc() : memref<1xi32>
    %94 = arith.remf %cst_7, %cst_6 : f32
    %95 = vector.broadcast %c8 : index to vector<7xindex>
    %96 = vector.broadcast %true : i1 to vector<7xi1>
    vector.scatter %54[%c0] [%95], %96, %21 : memref<1xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
    %97 = index.sizeof
    %98 = vector.multi_reduction <add>, %45, %36 [] : vector<7xf32> to vector<7xf32>
    %99 = index.maxs %74, %c8
    vector.print %59 : vector<7x8xi1>
    %100 = math.fma %8, %8, %22 : tensor<1xf32>
    %101 = arith.negf %cst_1 : f16
    %102 = math.atan2 %23, %24 : tensor<f32>
    %103 = math.fpowi %2, %0 : tensor<1xf32>, tensor<1xi32>
    %104 = arith.minsi %c2092658320_i32, %c1034848868_i32 : i32
    %105 = math.atan %collapsed_28 : tensor<64xf32>
    %106 = math.ceil %8 : tensor<1xf32>
    %107 = arith.divsi %c1911243385_i64, %c1121550051_i64 : i64
    %108 = vector.broadcast %true_23 : i1 to vector<15x15xi1>
    %109 = vector.outerproduct %38, %90, %108 {kind = #vector.kind<xor>} : vector<15xi1>, vector<15xi1>
    %110 = arith.maxui %c1742877553_i64, %42 : i64
    %111 = affine.for %arg2 = 0 to 72 iter_args(%arg3 = %3) -> (tensor<1xf16>) {
      affine.yield %3 : tensor<1xf16>
    }
    %112 = vector.splat %false_26 : vector<8x8x8xi1>
    %dest_30, %accumulated_value_31 = vector.scan <maxui>, %59, %57 {inclusive = true, reduction_dim = 0 : i64} : vector<7x8xi1>, vector<8xi1>
    %113 = tensor.empty() : tensor<8x15xi32>
    %114 = tensor.empty() : tensor<7x15xi32>
    %115 = linalg.matmul ins(%1, %113 : tensor<7x8xi32>, tensor<8x15xi32>) outs(%114 : tensor<7x15xi32>) -> tensor<7x15xi32>
    %116 = arith.remf %cst_4, %cst_4 : f32
    %alloc_32 = memref.alloc() : memref<8xf32>
    memref.tensor_store %collapsed, %alloc_32 : memref<8xf32>
    %117 = arith.negf %cst_3 : f16
    affine.store %cst_4, %31[%c14, %c8, %c0] : memref<8x8x8xf32>
    %118 = math.powf %17, %9 : tensor<8x8x8xf32>
    %inserted_33 = tensor.insert %cst_4 into %17[%c6, %c3, %c4] : tensor<8x8x8xf32>
    %119 = vector.splat %cst_0 : vector<7x8xf32>
    %120 = vector.broadcast %cst_4 : f32 to vector<8xf32>
    %121 = vector.maskedload %alloc_21[%c0, %c3, %c1], %57, %120 : memref<8x8x8xf32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
    %122 = memref.realloc %54 : memref<1xf32> to memref<7xf32>
    %123 = math.cos %3 : tensor<1xf16>
    %124 = index.divs %c0, %c5
    %125 = math.ctlz %c15087471_i32 : i32
    %126 = vector.transpose %21, [0] : vector<7xf32> to vector<7xf32>
    %127 = vector.extract_strided_slice %38 {offsets = [10], sizes = [2], strides = [1]} : vector<15xi1> to vector<2xi1>
    %128 = arith.shrsi %c1911243385_i64, %c1911243385_i64 : i64
    %129 = tensor.empty() : tensor<1x8xi1>
    %130 = vector.broadcast %c2092658320_i32 : i32 to vector<7x8xi32>
    %131 = vector.gather %129[%c12, %41] [%130], %59, %59 : tensor<1x8xi1>, vector<7x8xi32>, vector<7x8xi1>, vector<7x8xi1> into vector<7x8xi1>
    %132 = math.atan2 %23, %23 : tensor<f32>
    %133 = index.sizeof
    %134 = arith.remf %cst, %56 : f16
    %135 = arith.minf %cst, %cst : f16
    %136 = vector.transpose %120, [0] : vector<8xf32> to vector<8xf32>
    %137 = arith.xori %c2092658320_i32, %c1034848868_i32 : i32
    %138 = arith.shrui %c1911243385_i64, %42 : i64
    %139 = index.casts %27 : index to i32
    %140 = vector.broadcast %c1911243385_i64 : i64 to vector<1xi64>
    %141 = vector.broadcast %false_26 : i1 to vector<1xi1>
    %142 = vector.maskedload %alloc[%c0], %141, %140 : memref<1xi64>, vector<1xi1>, vector<1xi64> into vector<1xi64>
    %143 = math.exp %from_elements : tensor<1x8xf32>
    %144 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 mod 4)>(%c15, %71, %62, %c4)
    %145 = math.fma %9, %16, %9 : tensor<8x8x8xf32>
    %146 = math.atan2 %collapsed_24, %collapsed : tensor<8xf32>
    %147 = tensor.empty() : tensor<7x8xi64>
    %148 = vector.broadcast %c1742877553_i64 : i64 to vector<1x8xi64>
    %149 = vector.broadcast %c15087471_i32 : i32 to vector<1x8xi32>
    %150 = vector.gather %147[%c8, %c0] [%149], %26, %148 : tensor<7x8xi64>, vector<1x8xi32>, vector<1x8xi1>, vector<1x8xi64> into vector<1x8xi64>
    %151 = math.absf %8 : tensor<1xf32>
    %152 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %36, %36, %cst_4 : vector<7xf32>, vector<7xf32> into f32
    %alloc_34 = memref.alloc() : memref<1xi16>
    memref.tensor_store %12, %alloc_34 : memref<1xi16>
    %153 = math.roundeven %9 : tensor<8x8x8xf32>
    %154 = arith.remf %66, %cst_0 : f32
    %155 = vector.extract %148[0] : vector<1x8xi64>
    %156 = arith.ceildivsi %c1911243385_i64, %42 : i64
    %expanded = tensor.expand_shape %11 [[0], [1], [2, 3]] : tensor<8x8x8xi1> into tensor<8x8x8x1xi1>
    %157 = arith.ori %c1034848868_i32, %c1034848868_i32 : i32
    %158 = memref.realloc %alloc_18 : memref<1xf32> to memref<15xf32>
    %false_35 = index.bool.constant false
    %159 = math.round %cst_2 : f16
    %160 = math.cttz %1 : tensor<7x8xi32>
    %161 = vector.insertelement %66, %120[%c1 : index] : vector<8xf32>
    %162 = arith.minsi %42, %c1742877553_i64 : i64
    %163 = arith.minsi %true, %false_26 : i1
    %164 = arith.negf %56 : f16
    %165 = math.roundeven %10 : tensor<8x8x8xf32>
    %166 = math.expm1 %3 : tensor<1xf16>
    %167 = bufferization.clone %alloc_22 : memref<1x8xi64> to memref<1x8xi64>
    %168 = vector.broadcast %c15087471_i32 : i32 to vector<8x8xi32>
    %169 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %130, %130, %168 : vector<7x8xi32>, vector<7x8xi32> into vector<8x8xi32>
    %170 = arith.negf %cst_3 : f16
    %171 = vector.splat %144 : vector<1x8xindex>
    %172 = arith.negf %cst : f16
    %173 = arith.divui %c1034848868_i32, %c1034848868_i32 : i32
    %174 = arith.cmpi eq, %false_26, %false_26 : i1
    %175 = vector.flat_transpose %45 {columns = 7 : i32, rows = 1 : i32} : vector<7xf32> -> vector<7xf32>
    %176 = index.ceildivs %71, %c0
    %177 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %142, %142, %42 : vector<1xi64>, vector<1xi64> into i64
    %178 = arith.ori %c1034848868_i32, %c1900262529_i32 : i32
    %179 = index.maxs %c9, %c3
    bufferization.dealloc_tensor %12 : tensor<1xi16>
    %180 = arith.divsi %true, %true : i1
    %181 = affine.load %alloc_22[%c2, %c13] : memref<1x8xi64>
    %182 = arith.floordivsi %false_26, %false_26 : i1
    %183 = math.powf %from_elements, %5 : tensor<1x8xf32>
    %184 = index.sizeof
    %185 = math.ceil %cst_6 : f32
    %186 = vector.create_mask %79, %124 : vector<7x8xi1>
    %187 = math.atan2 %cst_3, %cst_5 : f16
    %false_36 = index.bool.constant false
    %188 = affine.if affine_set<(d0, d1, d2) : (d2 floordiv 4 == 0)>(%c1, %c13, %c11) -> memref<7x8xi32> {
      %267 = affine.if affine_set<(d0, d1, d2) : (d2 floordiv 4 == 0)>(%c1, %c6, %c4) -> memref<1x8xf16> {
        %273 = arith.divsi %false_26, %false_26 : i1
        %274 = arith.ceildivsi %true, %false_36 : i1
        %275 = arith.addi %c1121550051_i64, %c1911243385_i64 : i64
        %276 = arith.xori %true, %true_23 : i1
        %277 = bufferization.clone %alloc : memref<1xi64> to memref<1xi64>
        %278 = vector.broadcast %c1742877553_i64 : i64 to vector<8x8xi64>
        %279 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %148, %148, %278 : vector<1x8xi64>, vector<1x8xi64> into vector<8x8xi64>
        %collapsed_59 = tensor.collapse_shape %1 [[0, 1]] : tensor<7x8xi32> into tensor<56xi32>
        %alloc_60 = memref.alloc() : memref<1x8xf32>
        %alloc_61 = memref.alloc() : memref<1x8xf16>
        affine.yield %alloc_61 : memref<1x8xf16>
      } else {
        %273 = math.copysign %22, %2 : tensor<1xf32>
        %274 = vector.broadcast %true_23 : i1 to vector<7xi1>
        %dest_59, %accumulated_value_60 = vector.scan <maxsi>, %59, %274 {inclusive = false, reduction_dim = 1 : i64} : vector<7x8xi1>, vector<7xi1>
        %275 = math.absf %cst_2 : f16
        %276 = math.fma %cst, %56, %cst_2 : f16
        %277 = vector.broadcast %cst_6 : f32 to vector<8x8x8xf32>
        %278 = vector.broadcast %false_36 : i1 to vector<8x8x8xi1>
        %279 = vector.broadcast %c15087471_i32 : i32 to vector<8x8x8xi32>
        %280 = vector.gather %alloc_18[%c9] [%279], %278, %277 : memref<1xf32>, vector<8x8x8xi32>, vector<8x8x8xi1>, vector<8x8x8xf32> into vector<8x8x8xf32>
        %281 = index.maxs %c3, %c8
        %282 = vector.insertelement %c1742877553_i64, %140[%c5 : index] : vector<1xi64>
        %283 = math.absf %2 : tensor<1xf32>
        %alloc_61 = memref.alloc() : memref<1x8xf16>
        affine.yield %alloc_61 : memref<1x8xf16>
      }
      %268 = vector.extract %39[5] : vector<15xf32>
      %269 = vector.reduction <minsi>, %90 : vector<15xi1> into i1
      %270 = arith.xori %c15087471_i32, %c1900262529_i32 : i32
      %271 = vector.flat_transpose %38 {columns = 5 : i32, rows = 3 : i32} : vector<15xi1> -> vector<15xi1>
      %inserted_56 = tensor.insert %cst_7 into %17[%c4, %c1, %c2] : tensor<8x8x8xf32>
      %alloc_57 = memref.alloc() : memref<8x8x8xi32>
      memref.tensor_store %72, %alloc_57 : memref<8x8x8xi32>
      %272 = index.sub %184, %c1
      %alloc_58 = memref.alloc() : memref<7x8xi32>
      affine.yield %alloc_58 : memref<7x8xi32>
    } else {
      %267 = arith.maxui %c2092658320_i32, %c15087471_i32 : i32
      %268 = arith.divf %cst_0, %cst_4 : f32
      %269 = arith.negf %cst_5 : f16
      %270 = index.ceildivs %c1, %c13
      %c0_i32 = arith.constant 0 : i32
      %c0_i32_56 = arith.constant 0 : i32
      %271 = vector.transfer_read %114[%41, %176], %c0_i32_56 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<7x15xi32>, vector<8xi32>
      %272 = vector.extract %131[2] : vector<7x8xi1>
      %273 = arith.minsi %42, %c1911243385_i64 : i64
      %274 = vector.broadcast %66 : f32 to vector<1x8xf32>
      %alloc_57 = memref.alloc() : memref<7x8xi32>
      affine.yield %alloc_57 : memref<7x8xi32>
    }
    %189 = index.mul %144, %c6
    %190 = arith.ceildivsi %false_35, %false_36 : i1
    %cast = tensor.cast %13 : tensor<8x8x8xi1> to tensor<?x?x?xi1>
    %191 = math.log10 %23 : tensor<f32>
    %true_37 = index.bool.constant true
    %alloc_38 = memref.alloc() : memref<8x8x8xi1>
    memref.tensor_store %13, %alloc_38 : memref<8x8x8xi1>
    %192 = math.ceil %cst_7 : f32
    %193 = index.sizeof
    %194 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d1 - d3) * 32)>(%c0, %176, %176, %97)
    %195 = arith.remf %66, %cst_0 : f32
    %196 = vector.broadcast %false_26 : i1 to vector<1xi1>
    %197 = arith.xori %c1900262529_i32, %c2092658320_i32 : i32
    %198 = arith.negf %cst_4 : f32
    %199 = index.mul %75, %c7
    %200 = arith.xori %c1911243385_i64, %181 : i64
    %201 = math.ctlz %114 : tensor<7x15xi32>
    %202 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 mod 4)>(%c1, %c2, %c11, %c15)
    %203 = vector.broadcast %c2092658320_i32 : i32 to vector<8xi32>
    %dest_39, %accumulated_value_40 = vector.scan <mul>, %149, %203 {inclusive = true, reduction_dim = 0 : i64} : vector<1x8xi32>, vector<8xi32>
    %rank = tensor.rank %7 : tensor<7x8xf32>
    %204 = arith.muli %c15087471_i32, %c15087471_i32 : i32
    %205 = arith.divsi %c1742877553_i64, %c1121550051_i64 : i64
    %206 = vector.extract %21[0] : vector<7xf32>
    %207 = vector.splat %193 : vector<8x8x8xindex>
    %208 = vector.bitcast %186 : vector<7x8xi1> to vector<7x8xi1>
    %209 = scf.if %false_36 -> (f32) {
      %267 = math.fma %collapsed, %collapsed, %collapsed : tensor<8xf32>
      %268 = math.absf %9 : tensor<8x8x8xf32>
      %269 = math.log %cst_4 : f32
      %270 = vector.extract_strided_slice %141 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
      %inserted_56 = tensor.insert %c1900262529_i32 into %0[%c0] : tensor<1xi32>
      %271 = index.sizeof
      %272 = affine.load %alloc_19[%c6, %c2] : memref<1x8xi64>
      %273 = math.ceil %8 : tensor<1xf32>
      scf.yield %cst_6 : f32
    } else {
      %267 = affine.min affine_map<(d0, d1) -> (d1 ceildiv 64 + d1, ((d1 + 16) * 2) ceildiv 16, d0)>(%184, %c11)
      %268 = math.rsqrt %16 : tensor<8x8x8xf32>
      %generated_56 = tensor.generate %199, %199 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %274 = index.mul %74, %c14
        %275 = index.sizeof
        %276 = affine.load %alloc_20[%c3, %c11] : memref<7x8xf32>
        %dest_57, %accumulated_value_58 = vector.scan <mul>, %131, %57 {inclusive = true, reduction_dim = 0 : i64} : vector<7x8xi1>, vector<8xi1>
        tensor.yield %false_36 : i1
      } : tensor<?x?x8xi1>
      %269 = affine.min affine_map<(d0, d1) -> (d0, d0 + 2)>(%193, %74)
      %270 = arith.cmpi ugt, %false_36, %true : i1
      %271 = math.copysign %56, %cst_1 : f16
      %272 = vector.matrix_multiply %196, %57 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 8 : i32} : (vector<1xi1>, vector<8xi1>) -> vector<8xi1>
      %273 = math.ctpop %129 : tensor<1x8xi1>
      scf.yield %cst_4 : f32
    }
    %210 = math.exp2 %2 : tensor<1xf32>
    memref.store %cst_6, %alloc_21[%c5, %c0, %c4] : memref<8x8x8xf32>
    %211 = arith.remui %false_26, %true : i1
    %212 = vector.broadcast %cst_6 : f32 to vector<8x8x8xf32>
    %213 = vector.broadcast %true_37 : i1 to vector<8x8x8xi1>
    %214 = vector.broadcast %c2092658320_i32 : i32 to vector<8x8x8xi32>
    %215 = vector.gather %alloc_15[%c11, %rank] [%214], %213, %212 : memref<1x8xf32>, vector<8x8x8xi32>, vector<8x8x8xi1>, vector<8x8x8xf32> into vector<8x8x8xf32>
    %216 = vector.insertelement %true_37, %38[%71 : index] : vector<15xi1>
    %217 = index.ceildivs %133, %81
    %218 = arith.remf %cst_3, %cst_2 : f16
    %rank_41 = tensor.rank %cast : tensor<?x?x?xi1>
    bufferization.dealloc_tensor %14 : tensor<8x8x8xi1>
    %219 = arith.negf %cst_2 : f16
    %220 = arith.shrsi %false_35, %true_37 : i1
    %221 = math.ipowi %42, %c1911243385_i64 : i64
    memref.tensor_store %129, %alloc_11 : memref<1x8xi1>
    %222 = math.fpowi %cst_6, %c2092658320_i32 : f32, i32
    %cst_42 = arith.constant 1.000000e+00 : f32
    %cst_43 = arith.constant 0.000000e+00 : f32
    %223 = vector.transfer_read %10[%75, %c10, %c7], %cst_43 {permutation_map = affine_map<(d0, d1, d2) -> (0, d1)>} : tensor<8x8x8xf32>, vector<15x8xf32>
    %224 = scf.while (%arg2 = %false_26) : (i1) -> i1 {
      %267 = math.log %cst_1 : f16
      affine.store %true_23, %alloc_14[%c3, %c8] : memref<7x8xi1>
      %268 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %38, %38, %false_35 : vector<15xi1>, vector<15xi1> into i1
      %269 = arith.minf %cst_1, %cst_1 : f16
      %rank_56 = tensor.rank %14 : tensor<8x8x8xi1>
      %270 = math.round %from_elements : tensor<1x8xf32>
      %271 = vector.reduction <and>, %38 : vector<15xi1> into i1
      %272 = affine.for %arg3 = 0 to 24 iter_args(%arg4 = %147) -> (tensor<7x8xi64>) {
        affine.yield %147 : tensor<7x8xi64>
      }
      scf.condition(%false_36) %true_23 : i1
    } do {
    ^bb0(%arg2: i1):
      %dest_56, %accumulated_value_57 = vector.scan <add>, %131, %57 {inclusive = true, reduction_dim = 0 : i64} : vector<7x8xi1>, vector<8xi1>
      %267 = math.absi %53 : tensor<1xi32>
      %alloc_58 = memref.alloc() : memref<8x8x8xi1>
      memref.tensor_store %13, %alloc_58 : memref<8x8x8xi1>
      affine.store %209, %alloc_18[%c14] : memref<1xf32>
      %268 = arith.cmpi sgt, %c1034848868_i32, %c2092658320_i32 : i32
      %269 = index.casts %false_36 : i1 to index
      %expanded_59 = tensor.expand_shape %8 [[0, 1]] : tensor<1xf32> into tensor<1x1xf32>
      %270 = math.ctlz %c1900262529_i32 : i32
      %271 = arith.negf %cst_3 : f16
      %expanded_60 = tensor.expand_shape %72 [[0], [1], [2, 3]] : tensor<8x8x8xi32> into tensor<8x8x8x1xi32>
      %272 = arith.remf %cst_4, %cst_6 : f32
      %from_elements_61 = tensor.from_elements %false_35 : tensor<1xi1>
      %273 = vector.flat_transpose %45 {columns = 7 : i32, rows = 1 : i32} : vector<7xf32> -> vector<7xf32>
      %alloc_62 = memref.alloc() : memref<8x8x8xi1>
      memref.tensor_store %14, %alloc_62 : memref<8x8x8xi1>
      %274 = index.sizeof
      %275 = math.log %cst_7 : f32
      scf.yield %true_37 : i1
    }
    %225 = math.ceil %23 : tensor<f32>
    %226 = arith.remf %cst_6, %cst_4 : f32
    %227 = math.expm1 %cst_7 : f32
    %228 = vector.bitcast %212 : vector<8x8x8xf32> to vector<8x8x8xf32>
    %229 = vector.matrix_multiply %37, %36 {lhs_columns = 1 : i32, lhs_rows = 15 : i32, rhs_columns = 7 : i32} : (vector<15xf32>, vector<7xf32>) -> vector<105xf32>
    %230 = scf.execute_region -> tensor<7x8xf32> {
      %267 = math.log %8 : tensor<1xf32>
      memref.store %cst_0, %alloc_20[%c4, %c3] : memref<7x8xf32>
      %268 = arith.muli %true_23, %true_23 : i1
      %269 = index.mul %c15, %c9
      bufferization.dealloc_tensor %72 : tensor<8x8x8xi32>
      %expanded_56 = tensor.expand_shape %13 [[0], [1], [2, 3]] : tensor<8x8x8xi1> into tensor<8x8x8x1xi1>
      %270 = vector.create_mask %51, %144, %199 : vector<8x8x8xi1>
      %271 = vector.splat %false_26 : vector<1x8xi1>
      %272 = index.ceildivs %199, %c5
      bufferization.dealloc_tensor %147 : tensor<7x8xi64>
      %273 = arith.muli %c1121550051_i64, %c1742877553_i64 : i64
      %274 = arith.negf %cst : f16
      %275 = math.cos %cst_7 : f32
      %276 = math.copysign %16, %9 : tensor<8x8x8xf32>
      %277 = memref.realloc %alloc : memref<1xi64> to memref<7xi64>
      %278 = vector.extract %142[0] : vector<1xi64>
      scf.yield %7 : tensor<7x8xf32>
    }
    %231 = vector.shuffle %155, %140 [1, 4, 8] : vector<8xi64>, vector<1xi64>
    %false_44 = index.bool.constant false
    %false_45 = index.bool.constant false
    %dest_46, %accumulated_value_47 = vector.scan <maxsi>, %150, %140 {inclusive = false, reduction_dim = 1 : i64} : vector<1x8xi64>, vector<1xi64>
    %232 = arith.remf %cst_2, %cst_5 : f16
    %from_elements_48 = tensor.from_elements %cst_2, %cst_5, %cst_5, %cst, %56, %cst_1, %cst_2, %cst_1 : tensor<1x8xf16>
    %233 = arith.divf %cst_7, %cst_0 : f32
    %234 = index.sub %c6, %c1
    %235 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_24, %alloc_21, %collapsed_24 : tensor<8xf32>, memref<8x8x8xf32>, tensor<8xf32>) outs(%16 : tensor<8x8x8xf32>) {
    ^bb0(%in: f32, %in_56: f32, %in_57: f32, %out: f32):
      %267 = arith.negf %in : f32
      %268 = arith.addf %cst_6, %cst_7 : f32
      %269 = vector.splat %c12 : vector<7x8xindex>
      %270 = index.sub %124, %c7
      %271 = vector.broadcast %c1034848868_i32 : i32 to vector<7x8xi32>
      %272 = arith.ceildivsi %c1911243385_i64, %c1742877553_i64 : i64
      %273 = math.atan %10 : tensor<8x8x8xf32>
      %274 = arith.mulf %in_57, %in_57 : f32
      %275 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 - d3, (-d3) floordiv 2 - d1, (-d3) mod 8)>(%97, %74, %c15, %193)
      %276 = arith.subi %c1900262529_i32, %c1034848868_i32 : i32
      %277 = math.log %17 : tensor<8x8x8xf32>
      %278 = memref.realloc %54 : memref<1xf32> to memref<1xf32>
      %279 = affine.apply affine_map<(d0, d1, d2) -> (-d1 + 64)>(%28, %51, %41)
      %280 = math.roundeven %reduced : tensor<8x8xf32>
      %281 = vector.splat %c14 : vector<1xindex>
      %282 = math.ctpop %c1034848868_i32 : i32
      %283 = index.divs %74, %c2
      %284 = arith.divsi %true, %true : i1
      %285 = math.fma %23, %23, %24 : tensor<f32>
      scf.execute_region {
        %297 = index.mul %51, %rank
        %298 = index.sizeof
        %299 = vector.splat %c10 : vector<7x8xindex>
        %collapsed_62 = tensor.collapse_shape %10 [[0, 1], [2]] : tensor<8x8x8xf32> into tensor<64x8xf32>
        vector.print %120 : vector<8xf32>
        %300 = arith.muli %c2092658320_i32, %c15087471_i32 : i32
        %from_elements_63 = tensor.from_elements %cst_1, %cst_3, %cst_5, %cst_5, %cst_2, %cst_2, %cst_3, %56 : tensor<1x8xf16>
        %301 = affine.min affine_map<(d0, d1) -> (d0 - d1, d0 floordiv 64)>(%133, %62)
        %302 = index.castu %c11 : index to i32
        %303 = math.atan2 %cst_7, %209 : f32
        memref.store %c1911243385_i64, %alloc_10[%c0] : memref<1xi64>
        %304 = arith.muli %c1900262529_i32, %c2092658320_i32 : i32
        %305 = vector.maskedload %alloc_20[%c2, %c6], %57, %121 : memref<7x8xf32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
        %306 = index.sub %c4, %c10
        %307 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %121, %120, %in_57 : vector<8xf32>, vector<8xf32> into f32
        %rank_64 = tensor.rank %114 : tensor<7x15xi32>
        scf.yield
      }
      %alloc_58 = memref.alloc() : memref<8x8xi16>
      %286 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_58, %alloc_58, %alloc_58 : memref<8x8xi16>, memref<8x8xi16>, memref<8x8xi16>) outs(%4 : tensor<8x8x8xi16>) {
      ^bb0(%in_62: i16, %in_63: i16, %in_64: i16, %out_65: i16):
        %297 = index.maxs %c11, %c10
        %298 = vector.extract_strided_slice %39 {offsets = [9], sizes = [2], strides = [1]} : vector<15xf32> to vector<2xf32>
        bufferization.dealloc_tensor %12 : tensor<1xi16>
        %299 = arith.remf %in, %cst_4 : f32
        %300 = math.log10 %cst_4 : f32
        %301 = arith.divf %cst, %56 : f16
        %302 = vector.extract %26[0] : vector<1x8xi1>
        %303 = memref.realloc %alloc_10 : memref<1xi64> to memref<1xi64>
        %304 = vector.broadcast %false_35 : i1 to vector<7xi1>
        %dest_66, %accumulated_value_67 = vector.scan <and>, %208, %304 {inclusive = false, reduction_dim = 1 : i64} : vector<7x8xi1>, vector<7xi1>
        %305 = arith.shrsi %c1121550051_i64, %c1742877553_i64 : i64
        %306 = vector.gather %alloc_11[%c4, %c10] [%271], %186, %131 : memref<1x8xi1>, vector<7x8xi32>, vector<7x8xi1>, vector<7x8xi1> into vector<7x8xi1>
        %307 = vector.insert %302, %59 [6] : vector<8xi1> into vector<7x8xi1>
        %308 = affine.min affine_map<(d0, d1) -> (-(d0 - 16), (-(-d1 + d0 - d1) + 64) * 16)>(%144, %81)
        %309 = arith.remf %cst_6, %in : f32
        memref.store %42, %alloc_10[%c0] : memref<1xi64>
        %false_68 = index.bool.constant false
        %310 = index.sizeof
        %311 = arith.cmpf uge, %66, %cst_42 : f32
        %312 = arith.shli %c15087471_i32, %c1900262529_i32 : i32
        %313 = index.ceildivs %c11, %99
        %314 = math.absf %cst_0 : f32
        %315 = vector.bitcast %148 : vector<1x8xi64> to vector<1x8xi64>
        %316 = vector.transpose %302, [0] : vector<8xi1> to vector<8xi1>
        %317 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %140, %142, %42 : vector<1xi64>, vector<1xi64> into i64
        %318 = math.log %19 : tensor<8x8xf32>
        %319 = arith.shrsi %c1121550051_i64, %c1742877553_i64 : i64
        %320 = arith.negf %cst_6 : f32
        %321 = math.tanh %from_elements : tensor<1x8xf32>
        %322 = vector.broadcast %c2092658320_i32 : i32 to vector<8x8x8xi32>
        %323 = math.ctlz %4 : tensor<8x8x8xi16>
        %324 = math.ctpop %129 : tensor<1x8xi1>
        %325 = index.divs %27, %c4
        linalg.yield %in_62 : i16
      } -> tensor<8x8x8xi16>
      %287 = vector.broadcast %c1911243385_i64 : i64 to vector<7xi64>
      %288 = vector.broadcast %true_37 : i1 to vector<7xi1>
      %289 = vector.maskedload %alloc_19[%c0, %c7], %288, %287 : memref<1x8xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
      %290 = index.sizeof
      memref.tensor_store %7, %alloc_20 : memref<7x8xf32>
      %291 = bufferization.to_memref %13 : memref<8x8x8xi1>
      %292 = scf.while (%arg2 = %31) : (memref<8x8x8xf32>) -> memref<8x8x8xf32> {
        %297 = arith.negf %56 : f16
        %298 = arith.negf %in_57 : f32
        %299 = index.add %179, %c15
        %300 = index.castu %false_45 : i1 to index
        %301 = arith.ceildivsi %true, %false_45 : i1
        %302 = vector.broadcast %false_44 : i1 to vector<15x15xi1>
        %303 = vector.outerproduct %90, %38, %302 {kind = #vector.kind<minui>} : vector<15xi1>, vector<15xi1>
        %304 = affine.load %alloc_18[%c10] : memref<1xf32>
        %305 = math.atan2 %cst_4, %out : f32
        scf.condition(%true) %alloc_21 : memref<8x8x8xf32>
      } do {
      ^bb0(%arg2: memref<8x8x8xf32>):
        %297 = arith.shrsi %c15087471_i32, %c1900262529_i32 : i32
        %298 = index.sub %74, %275
        %299 = math.round %3 : tensor<1xf16>
        %300 = vector.create_mask %c11, %c6, %81 : vector<8x8x8xi1>
        %301 = arith.negf %cst_2 : f16
        %302 = arith.xori %c1742877553_i64, %c1911243385_i64 : i64
        %303 = math.log10 %in_57 : f32
        %304 = math.exp2 %cst_2 : f16
        %305 = math.copysign %8, %8 : tensor<1xf32>
        bufferization.dealloc_tensor %11 : tensor<8x8x8xi1>
        bufferization.dealloc_tensor %from_elements_48 : tensor<1x8xf16>
        %dest_62, %accumulated_value_63 = vector.scan <add>, %131, %288 {inclusive = false, reduction_dim = 1 : i64} : vector<7x8xi1>, vector<7xi1>
        %306 = vector.create_mask %c6, %c11 : vector<7x8xi1>
        %c0_i16 = arith.constant 0 : i16
        %from_elements_64 = tensor.from_elements %c0_i16 : tensor<1xi16>
        %307 = math.atan2 %56, %cst : f16
        %308 = math.log10 %from_elements_48 : tensor<1x8xf16>
        scf.yield %arg2 : memref<8x8x8xf32>
      }
      %from_elements_59 = tensor.from_elements %cst_4 : tensor<1xf32>
      %293 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %37, %39, %in : vector<15xf32>, vector<15xf32> into f32
      memref.store %cst_7, %54[%c0] : memref<1xf32>
      %dest_60, %accumulated_value_61 = vector.scan <or>, %148, %155 {inclusive = false, reduction_dim = 0 : i64} : vector<1x8xi64>, vector<8xi64>
      %294 = vector.broadcast %c1742877553_i64 : i64 to vector<8x8xi64>
      %295 = vector.outerproduct %155, %155, %294 {kind = #vector.kind<maxsi>} : vector<8xi64>, vector<8xi64>
      %296 = arith.xori %true, %false_35 : i1
      linalg.yield %in : f32
    } -> tensor<8x8x8xf32>
    %236 = arith.cmpi sle, %false_35, %false_26 : i1
    %237 = arith.remf %66, %cst_7 : f32
    %238 = vector.extract_strided_slice %208 {offsets = [5], sizes = [2], strides = [1]} : vector<7x8xi1> to vector<2x8xi1>
    %239 = math.rsqrt %collapsed_28 : tensor<64xf32>
    %240 = arith.ori %false_45, %false_36 : i1
    %cst_49 = arith.constant 1.000000e+00 : f32
    %cst_50 = arith.constant 0.000000e+00 : f32
    %241 = vector.transfer_read %5[%79, %179], %cst_50 : tensor<1x8xf32>, vector<f32>
    scf.execute_region {
      %267 = tensor.empty() : tensor<1xf32>
      %mapped_56 = linalg.map ins(%alloc_8, %22, %8 : memref<1xf32>, tensor<1xf32>, tensor<1xf32>) outs(%267 : tensor<1xf32>)
        (%in: f32, %in_59: f32, %in_60: f32) {
          %281 = arith.shrui %false_26, %true : i1
          %282 = index.castu %c10 : index to i32
          %283 = math.absf %in : f32
          %284 = affine.load %167[%c0, %c12] : memref<1x8xi64>
          %285 = arith.negf %cst : f16
          %286 = arith.xori %c1034848868_i32, %c1900262529_i32 : i32
          %287 = tensor.empty() : tensor<7x8xi1>
          %288 = vector.gather %287[%74, %81] [%149], %26, %26 : tensor<7x8xi1>, vector<1x8xi32>, vector<1x8xi1>, vector<1x8xi1> into vector<1x8xi1>
          %289 = affine.min affine_map<(d0, d1, d2, d3) -> (d1, d1 * -32 + d3 - 2, d1 * -32 + 16, d1 * -32)>(%c12, %194, %97, %62)
          %290 = math.ipowi %true, %true : i1
          %291 = arith.remf %cst_5, %cst_3 : f16
          %expanded_61 = tensor.expand_shape %10 [[0], [1], [2, 3]] : tensor<8x8x8xf32> into tensor<8x8x8x1xf32>
          %292 = vector.bitcast %127 : vector<2xi1> to vector<2xi1>
          %293 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 - 36, d0 * 128 + 16, d3 - d1)>(%194, %c5, %rank_41, %c1)
          %294 = math.powf %8, %22 : tensor<1xf32>
          %295 = vector.create_mask %75 : vector<1xi1>
          %inserted_62 = tensor.insert %c2092658320_i32 into %6[%c0, %c0] : tensor<1x8xi32>
          %296 = vector.bitcast %130 : vector<7x8xi32> to vector<7x8xi32>
          %297 = math.absf %209 : f32
          %298 = index.maxu %c14, %c9
          %299 = vector.broadcast %56 : f16 to vector<7x8xf16>
          %dest_63, %accumulated_value_64 = vector.scan <maxui>, %238, %57 {inclusive = false, reduction_dim = 0 : i64} : vector<2x8xi1>, vector<8xi1>
          %300 = math.atan %9 : tensor<8x8x8xf32>
          %expanded_65 = tensor.expand_shape %18 [[0], [1, 2]] : tensor<8x1xi1> into tensor<8x1x1xi1>
          %301 = math.fma %209, %cst_0, %cst_7 : f32
          %302 = vector.broadcast %133 : index to vector<1xindex>
          %303 = vector.broadcast %in_59 : f32 to vector<1xf32>
          vector.scatter %31[%c6, %c5, %c4] [%302], %141, %303 : memref<8x8x8xf32>, vector<1xindex>, vector<1xi1>, vector<1xf32>
          %304 = index.sizeof
          %305 = memref.realloc %alloc_8 : memref<1xf32> to memref<1xf32>
          %306 = arith.ceildivsi %true_23, %false_35 : i1
          %307 = arith.ori %284, %42 : i64
          %308 = arith.minf %in, %66 : f32
          %309 = math.cos %23 : tensor<f32>
          vector.print %295 : vector<1xi1>
          %cst_66 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_66 : f32
        }
      %268 = vector.reduction <mul>, %57 : vector<8xi1> into i1
      %269 = arith.maxui %c1034848868_i32, %c1034848868_i32 : i32
      %270 = vector.create_mask %144 : vector<1xi1>
      %271 = arith.shli %false_35, %true_37 : i1
      %272 = math.cttz %4 : tensor<8x8x8xi16>
      %inserted_57 = tensor.insert %cst_42 into %9[%c4, %c7, %c4] : tensor<8x8x8xf32>
      %273 = arith.negf %cst_6 : f32
      %from_elements_58 = tensor.from_elements %false_45, %false_35, %true, %true, %false_36, %false_45, %true_23, %false_26 : tensor<1x8xi1>
      %274 = arith.shrui %c2092658320_i32, %c15087471_i32 : i32
      %275 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%11 : tensor<8x8x8xi1>) {
      ^bb0(%out: i1):
        memref.store %cst_1, %alloc_13[%c4, %c6, %c2] : memref<8x8x8xf16>
        %281 = bufferization.clone %alloc_11 : memref<1x8xi1> to memref<1x8xi1>
        %282 = arith.shrui %false_45, %false_35 : i1
        %283 = math.round %collapsed_24 : tensor<8xf32>
        %284 = math.cttz %c1742877553_i64 : i64
        %285 = math.log %3 : tensor<1xf16>
        %286 = math.rsqrt %cst_42 : f32
        %287 = vector.shuffle %148, %150 [0] : vector<1x8xi64>, vector<1x8xi64>
        %288 = arith.remf %209, %cst_7 : f32
        %expanded_59 = tensor.expand_shape %53 [[0, 1]] : tensor<1xi32> into tensor<1x1xi32>
        affine.store %c1121550051_i64, %alloc_16[%c4, %c3] : memref<7x8xi64>
        %289 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %175, %45, %66 : vector<7xf32>, vector<7xf32> into f32
        %290 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 floordiv 64 + d3 floordiv 8, d3 mod 4, d1, d3 + 8)>(%79, %81, %202, %c11)
        bufferization.dealloc_tensor %3 : tensor<1xf16>
        %291 = arith.remf %66, %cst_6 : f32
        %292 = math.rsqrt %8 : tensor<1xf32>
        memref.tensor_store %8, %54 : memref<1xf32>
        %293 = arith.negf %209 : f32
        %alloc_60 = memref.alloc() : memref<7x8xi32>
        %294 = vector.broadcast %c1034848868_i32 : i32 to vector<1xi32>
        %295 = vector.gather %alloc_60[%c13, %c4] [%294], %270, %294 : memref<7x8xi32>, vector<1xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
        %false_61 = index.bool.constant false
        %296 = affine.max affine_map<(d0, d1) -> (d1 ceildiv 4 - 4, d1 + d0, (-d0) mod 4)>(%176, %179)
        %297 = index.divs %75, %296
        %298 = math.round %7 : tensor<7x8xf32>
        %299 = math.roundeven %cst_5 : f16
        %300 = vector.broadcast %false_35 : i1 to vector<2x2xi1>
        %301 = vector.outerproduct %127, %127, %300 {kind = #vector.kind<minsi>} : vector<2xi1>, vector<2xi1>
        %302 = vector.flat_transpose %142 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
        %303 = bufferization.to_memref %1 : memref<7x8xi32>
        %304 = arith.divsi %42, %42 : i64
        %305 = vector.broadcast %79 : index to vector<7xindex>
        %306 = vector.broadcast %false_61 : i1 to vector<7xi1>
        vector.scatter %31[%c2, %c1, %c3] [%305], %306, %36 : memref<8x8x8xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
        %inserted_62 = tensor.insert %c1034848868_i32 into %0[%c0] : tensor<1xi32>
        %collapsed_63 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<8x8x8xi16> into tensor<64x8xi16>
        %cast_64 = tensor.cast %5 : tensor<1x8xf32> to tensor<?x?xf32>
        linalg.yield %false_36 : i1
      } -> tensor<8x8x8xi1>
      %276 = vector.matrix_multiply %90, %38 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi1>, vector<15xi1>) -> vector<1xi1>
      %277 = affine.max affine_map<(d0, d1, d2) -> (d2, (d2 + 64) ceildiv 2 - 128)>(%c2, %79, %41)
      %278 = vector.extract_strided_slice %213 {offsets = [6], sizes = [2], strides = [1]} : vector<8x8x8xi1> to vector<2x8x8xi1>
      %279 = index.sizeof
      %280 = math.cttz %true_23 : i1
      scf.yield
    }
    %242 = affine.load %54[%c2] : memref<1xf32>
    %243 = math.atan2 %cst_3, %cst : f16
    %244 = math.log %23 : tensor<f32>
    %245 = arith.cmpi sle, %c15087471_i32, %c1034848868_i32 : i32
    %246 = vector.extract_strided_slice %121 {offsets = [0], sizes = [3], strides = [1]} : vector<8xf32> to vector<3xf32>
    scf.execute_region {
      %267 = index.casts %176 : index to i32
      %268 = vector.bitcast %186 : vector<7x8xi1> to vector<7x8xi1>
      %269 = math.log10 %from_elements : tensor<1x8xf32>
      %270 = arith.ceildivsi %42, %c1911243385_i64 : i64
      %271 = math.cttz %42 : i64
      %272 = vector.broadcast %193 : index to vector<15xindex>
      vector.scatter %alloc_9[%c3, %c2, %c1] [%272], %90, %37 : memref<8x8x8xf32>, vector<15xindex>, vector<15xi1>, vector<15xf32>
      %273 = math.copysign %19, %reduced : tensor<8x8xf32>
      %274 = math.log1p %cst_1 : f16
      %275 = vector.shuffle %214, %214 [0, 1, 3, 5, 6, 7, 9, 13] : vector<8x8x8xi32>, vector<8x8x8xi32>
      %276 = math.fma %cst_7, %cst_4, %242 : f32
      vector.print %127 : vector<2xi1>
      %277 = index.sub %144, %c0
      %278 = vector.splat %c1911243385_i64 : vector<8x8x8xi64>
      %279 = index.floordivs %194, %124
      %280 = arith.remui %false_45, %true_23 : i1
      %281 = arith.minf %cst, %cst_1 : f16
      scf.yield
    }
    %247 = vector.shuffle %21, %229 [0, 2, 3, 7, 10, 11, 14, 15, 16, 19, 22, 23, 24, 26, 28, 29, 38, 40, 42, 43, 45, 47, 53, 55, 56, 57, 58, 61, 62, 63, 65, 66, 67, 71, 73, 79, 80, 88, 90, 91, 93, 94, 100, 101, 102, 103, 105, 107, 109] : vector<7xf32>, vector<105xf32>
    %248 = index.sizeof
    %249 = vector.broadcast %cst_7 : f32 to vector<7x8xf32>
    %250 = vector.gather %10[%74, %62, %194] [%130], %59, %249 : tensor<8x8x8xf32>, vector<7x8xi32>, vector<7x8xi1>, vector<7x8xf32> into vector<7x8xf32>
    %collapsed_51 = tensor.collapse_shape %16 [[0, 1], [2]] : tensor<8x8x8xf32> into tensor<64x8xf32>
    %251 = arith.negf %242 : f32
    %252 = arith.floordivsi %false_35, %true_37 : i1
    %253 = math.ceil %10 : tensor<8x8x8xf32>
    %254 = math.ceil %collapsed_51 : tensor<64x8xf32>
    %expanded_52 = tensor.expand_shape %129 [[0], [1, 2]] : tensor<1x8xi1> into tensor<1x8x1xi1>
    %255 = math.ceil %209 : f32
    %256 = vector.bitcast %39 : vector<15xf32> to vector<15xf32>
    %257 = math.tan %cst_1 : f16
    %258 = index.sizeof
    %259 = index.ceildivs %133, %189
    %rank_53 = tensor.rank %10 : tensor<8x8x8xf32>
    %260 = math.tan %cst_1 : f16
    %261 = arith.divsi %c2092658320_i32, %c1034848868_i32 : i32
    %262 = tensor.empty(%217, %259) : tensor<?x?xi32>
    %263 = linalg.copy ins(%generated : tensor<?x?xi32>) outs(%262 : tensor<?x?xi32>) -> tensor<?x?xi32>
    %264 = tensor.empty() : tensor<64xf32>
    %transposed_54 = linalg.transpose ins(%collapsed_28 : tensor<64xf32>) outs(%264 : tensor<64xf32>) permutation = [0] 
    %alloc_55 = memref.alloc() : memref<f32>
    linalg.reduce ins(%collapsed : tensor<8xf32>) outs(%alloc_55 : memref<f32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        vector.print %212 : vector<8x8x8xf32>
        %267 = index.casts %c1121550051_i64 : i64 to index
        %268 = math.roundeven %5 : tensor<1x8xf32>
        %269 = index.ceildivs %99, %71
        vector.print %131 : vector<7x8xi1>
        %270 = math.expm1 %collapsed_24 : tensor<8xf32>
        %271 = arith.ceildivsi %true_23, %false_26 : i1
        %272 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %141, %26, %57 : vector<1xi1>, vector<1x8xi1> into vector<8xi1>
        %cst_56 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_56 : f32
      }
    %265 = scf.parallel (%arg2) = (%62) to (%144) step (%c5) init (%cst) -> f16 {
      %267 = vector.flat_transpose %141 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
      %268 = math.copysign %3, %3 : tensor<1xf16>
      %269 = math.atan2 %2, %2 : tensor<1xf32>
      %270 = vector.broadcast %79 : index to vector<7xindex>
      %271 = vector.broadcast %false_26 : i1 to vector<7xi1>
      vector.scatter %alloc_20[%c6, %c0] [%270], %271, %175 : memref<7x8xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
      %272 = vector.shuffle %212, %228 [0, 1, 6, 9, 11, 12, 13] : vector<8x8x8xf32>, vector<8x8x8xf32>
      %273 = math.roundeven %66 : f32
      %274 = math.fma %5, %5, %5 : tensor<1x8xf32>
      %rank_56 = tensor.rank %147 : tensor<7x8xi64>
      %275 = arith.minsi %false_35, %false_26 : i1
      %rank_57 = tensor.rank %9 : tensor<8x8x8xf32>
      %276 = arith.negf %cst_42 : f32
      %277 = vector.reduction <mul>, %36 : vector<7xf32> into f32
      %from_elements_58 = tensor.from_elements %false_45, %false_26, %false_36, %true, %true, %false_35, %true, %false_45, %true_37, %false_36, %false_45, %false_45, %false_45, %false_44, %false_26, %false_35, %true_23, %true, %false_44, %false_45, %true_37, %false_35, %true_23, %true, %true_37, %false_26, %true_37, %true, %false_26, %true_37, %false_35, %true_37, %true_37, %true_23, %false_45, %false_26, %false_35, %true_23, %true, %false_36, %false_45, %true_23, %false_45, %true_23, %true, %true_37, %false_44, %true, %true_23, %false_45, %false_26, %false_36, %false_45, %false_35, %false_45, %true_37 : tensor<7x8xi1>
      %278 = arith.shli %c1121550051_i64, %c1911243385_i64 : i64
      %279 = arith.remui %false_26, %false_44 : i1
      %true_59 = index.bool.constant true
      %cst_60 = arith.constant 1.000000e+00 : f16
      scf.reduce(%cst_60)  : f16 {
      ^bb0(%arg3: f16, %arg4: f16):
        %280 = arith.divsi %c1742877553_i64, %181 : i64
        %281 = vector.shuffle %140, %142 [0, 1] : vector<1xi64>, vector<1xi64>
        %282 = arith.addi %false_35, %false_26 : i1
        %283 = index.maxs %c1, %124
        %284 = math.fma %arg3, %56, %arg3 : f16
        %285 = arith.remf %209, %242 : f32
        %286 = bufferization.to_tensor %alloc_55 : memref<f32>
        %287 = arith.negf %cst_0 : f32
        %cst_61 = arith.constant 1.000000e+00 : f16
        scf.reduce.return %cst_61 : f16
      }
      scf.yield
    }
    %266 = affine.vector_load %alloc_17[%259, %c7] : memref<1x8xi64>, vector<7xi64>
    affine.vector_store %175, %alloc_21[%202, %71, %74] : memref<8x8x8xf32>, vector<7xf32>
    vector.print %21 : vector<7xf32>
    vector.print %26 : vector<1x8xi1>
    vector.print %36 : vector<7xf32>
    vector.print %37 : vector<15xf32>
    vector.print %38 : vector<15xi1>
    vector.print %39 : vector<15xf32>
    vector.print %45 : vector<7xf32>
    vector.print %57 : vector<8xi1>
    vector.print %59 : vector<7x8xi1>
    vector.print %87 : vector<8x8x8xf16>
    vector.print %90 : vector<15xi1>
    vector.print %120 : vector<8xf32>
    vector.print %121 : vector<8xf32>
    vector.print %127 : vector<2xi1>
    vector.print %130 : vector<7x8xi32>
    vector.print %131 : vector<7x8xi1>
    vector.print %140 : vector<1xi64>
    vector.print %141 : vector<1xi1>
    vector.print %142 : vector<1xi64>
    vector.print %148 : vector<1x8xi64>
    vector.print %149 : vector<1x8xi32>
    vector.print %150 : vector<1x8xi64>
    vector.print %155 : vector<8xi64>
    vector.print %175 : vector<7xf32>
    vector.print %186 : vector<7x8xi1>
    vector.print %196 : vector<1xi1>
    vector.print %208 : vector<7x8xi1>
    vector.print %212 : vector<8x8x8xf32>
    vector.print %213 : vector<8x8x8xi1>
    vector.print %214 : vector<8x8x8xi32>
    vector.print %215 : vector<8x8x8xf32>
    vector.print %228 : vector<8x8x8xf32>
    vector.print %229 : vector<105xf32>
    vector.print %238 : vector<2x8xi1>
    vector.print %246 : vector<3xf32>
    vector.print %249 : vector<7x8xf32>
    vector.print %250 : vector<7x8xf32>
    vector.print %256 : vector<15xf32>
    vector.print %266 : vector<7xi64>
    vector.print %c1121550051_i64 : i64
    vector.print %cst : f16
    vector.print %cst_0 : f32
    vector.print %cst_1 : f16
    vector.print %cst_2 : f16
    vector.print %c1911243385_i64 : i64
    vector.print %cst_3 : f16
    vector.print %cst_4 : f32
    vector.print %cst_5 : f16
    vector.print %c1900262529_i32 : i32
    vector.print %cst_6 : f32
    vector.print %c1034848868_i32 : i32
    vector.print %c2092658320_i32 : i32
    vector.print %c15087471_i32 : i32
    vector.print %c1742877553_i64 : i64
    vector.print %cst_7 : f32
    vector.print %true : i1
    vector.print %42 : i64
    vector.print %56 : f16
    vector.print %66 : f32
    vector.print %true_23 : i1
    vector.print %false_26 : i1
    vector.print %false_35 : i1
    vector.print %181 : i64
    vector.print %false_36 : i1
    vector.print %true_37 : i1
    vector.print %209 : f32
    vector.print %cst_42 : f32
    vector.print %false_44 : i1
    vector.print %false_45 : i1
    vector.print %cst_49 : f32
    vector.print %242 : f32
    return %false_26 : i1
  }
}
