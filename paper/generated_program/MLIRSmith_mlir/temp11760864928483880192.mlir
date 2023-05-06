module {
  func.func private @func1(%arg0: f32) {
    %c-22385_i16 = arith.constant -22385 : i16
    %c153688669_i32 = arith.constant 153688669 : i32
    %c1508809544_i32 = arith.constant 1508809544 : i32
    %c1163971614_i64 = arith.constant 1163971614 : i64
    %c-20042_i16 = arith.constant -20042 : i16
    %c-14695_i16 = arith.constant -14695 : i16
    %c502604180_i64 = arith.constant 502604180 : i64
    %c1057443338_i32 = arith.constant 1057443338 : i32
    %c-9479_i16 = arith.constant -9479 : i16
    %c1343137369_i32 = arith.constant 1343137369 : i32
    %c1735174664_i64 = arith.constant 1735174664 : i64
    %cst = arith.constant 0x4E53E981 : f32
    %c1167392835_i64 = arith.constant 1167392835 : i64
    %c978253761_i32 = arith.constant 978253761 : i32
    %cst_0 = arith.constant 0x4D90E539 : f32
    %true = arith.constant true
    %0 = tensor.empty() : tensor<6x6x4xi16>
    %1 = tensor.empty() : tensor<6x4x4xf32>
    %2 = tensor.empty() : tensor<6x6x4xi32>
    %3 = tensor.empty() : tensor<4x7x4xi32>
    %4 = tensor.empty() : tensor<6x4x4xi32>
    %5 = tensor.empty() : tensor<6x4x4xi1>
    %6 = tensor.empty() : tensor<6x4x4xf16>
    %7 = tensor.empty() : tensor<6x6x4xi32>
    %8 = tensor.empty() : tensor<6x6x4xf32>
    %9 = tensor.empty() : tensor<6x6x4xf16>
    %10 = tensor.empty() : tensor<6x4x4xf16>
    %11 = tensor.empty() : tensor<4x7x4xf32>
    %12 = tensor.empty() : tensor<4x7x4xi32>
    %13 = tensor.empty() : tensor<4x7x4xi32>
    %14 = tensor.empty() : tensor<6x4x4xf32>
    %15 = tensor.empty() : tensor<6x6x4xf16>
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
    %alloc = memref.alloc() : memref<6x4x4xf16>
    %alloc_1 = memref.alloc() : memref<4x7x4xf16>
    %alloc_2 = memref.alloc() : memref<6x4x4xi1>
    %alloc_3 = memref.alloc() : memref<6x6x4xi32>
    %alloc_4 = memref.alloc() : memref<4x7x4xf32>
    %alloc_5 = memref.alloc() : memref<6x6x4xi32>
    %alloc_6 = memref.alloc() : memref<6x6x4xi64>
    %alloc_7 = memref.alloc() : memref<6x6x4xi16>
    %alloc_8 = memref.alloc() : memref<4x7x4xi64>
    %alloc_9 = memref.alloc() : memref<6x6x4xi32>
    %alloc_10 = memref.alloc() : memref<6x4x4xi16>
    %alloc_11 = memref.alloc() : memref<6x6x4xf16>
    %alloc_12 = memref.alloc() : memref<6x6x4xi16>
    %alloc_13 = memref.alloc() : memref<6x6x4xi32>
    %alloc_14 = memref.alloc() : memref<6x4x4xf16>
    %alloc_15 = memref.alloc() : memref<6x6x4xi32>
    %16 = tensor.empty() : tensor<6x6x4xf16>
    %17 = linalg.copy ins(%15 : tensor<6x6x4xf16>) outs(%16 : tensor<6x6x4xf16>) -> tensor<6x6x4xf16>
    %alloc_16 = memref.alloc() : memref<4x6x6xi32>
    linalg.transpose ins(%alloc_13 : memref<6x6x4xi32>) outs(%alloc_16 : memref<4x6x6xi32>) permutation = [2, 0, 1] 
    %18 = tensor.empty() : tensor<6x6xi32>
    %reduced = linalg.reduce ins(%2 : tensor<6x6x4xi32>) outs(%18 : tensor<6x6xi32>) dimensions = [2] 
      (%in: i32, %init: i32) {
        %273 = math.powf %9, %9 : tensor<6x6x4xf16>
        %274 = index.sizeof
        %275 = math.cttz %7 : tensor<6x6x4xi32>
        %276 = math.absi %c-20042_i16 : i16
        %from_elements_46 = tensor.from_elements %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true : tensor<4x7x4xi1>
        %277 = index.maxs %c9, %c11
        %278 = affine.for %arg1 = 0 to 39 iter_args(%arg2 = %c-14695_i16) -> (i16) {
          affine.yield %c-14695_i16 : i16
        }
        %279 = index.divs %c1, %c12
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %19 = scf.parallel (%arg1, %arg2) = (%c5, %c13) to (%c0, %c0) step (%c13, %c15) init (%cst) -> f32 {
      %273 = vector.broadcast %c-9479_i16 : i16 to vector<4xi16>
      %274 = vector.matrix_multiply %273, %273 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
      %275 = vector.broadcast %c1163971614_i64 : i64 to vector<6x6x4xi64>
      %276 = vector.insertelement %c-22385_i16, %274[%c3 : index] : vector<1xi16>
      %277 = math.tanh %16 : tensor<6x6x4xf16>
      %278 = vector.insertelement %c-14695_i16, %273[%c2 : index] : vector<4xi16>
      %279 = tensor.empty() : tensor<6xf16>
      %280 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%279, %15 : tensor<6xf16>, tensor<6x6x4xf16>) outs(%16 : tensor<6x6x4xf16>) {
      ^bb0(%in: f16, %in_48: f16, %out: f16):
        %291 = vector.flat_transpose %273 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %expanded_49 = tensor.expand_shape %7 [[0], [1], [2, 3]] : tensor<6x6x4xi32> into tensor<6x6x4x1xi32>
        %292 = index.sizeof
        %293 = affine.apply affine_map<(d0, d1, d2) -> (d2)>(%c11, %c0, %c0)
        %alloc_50 = memref.alloc() : memref<4x7x4xi32>
        %294 = math.ctpop %c1508809544_i32 : i32
        %295 = math.floor %8 : tensor<6x6x4xf32>
        %296 = index.add %c2, %c13
        %297 = index.mul %c14, %c11
        %298 = math.copysign %9, %9 : tensor<6x6x4xf16>
        %alloca_51 = memref.alloca() : memref<6x6x4xf16>
        %299 = vector.multi_reduction <xor>, %275, %c1163971614_i64 [0, 1, 2] : vector<6x6x4xi64> to i64
        %300 = arith.divf %cst, %cst : f32
        %301 = bufferization.clone %alloc_13 : memref<6x6x4xi32> to memref<6x6x4xi32>
        %302 = math.copysign %1, %1 : tensor<6x4x4xf32>
        %303 = vector.reduction <maxsi>, %274 : vector<1xi16> into i16
        %304 = vector.broadcast %c978253761_i32 : i32 to vector<6xi32>
        %305 = vector.broadcast %true : i1 to vector<6xi1>
        %306 = vector.maskedload %alloc_9[%c0, %c0, %c0], %305, %304 : memref<6x6x4xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
        %307 = vector.broadcast %cst_0 : f32 to vector<6x6x4xf32>
        %308 = vector.fma %307, %307, %307 : vector<6x6x4xf32>
        %309 = affine.apply affine_map<(d0, d1) -> ((-d1) floordiv 16 - 4)>(%c8, %c0)
        %310 = math.absi %c-9479_i16 : i16
        %311 = vector.reduction <and>, %306 : vector<6xi32> into i32
        %312 = index.floordivs %c15, %c14
        %313 = arith.addf %cst, %cst_0 : f32
        %314 = vector.multi_reduction <minui>, %304, %304 [] : vector<6xi32> to vector<6xi32>
        %alloc_52 = memref.alloc() : memref<4xi16>
        %315 = memref.realloc %alloc_52 : memref<4xi16> to memref<4xi16>
        %316 = math.ipowi %18, %reduced : tensor<6x6xi32>
        %317 = arith.shrui %c978253761_i32, %c978253761_i32 : i32
        %318 = index.ceildivu %297, %296
        %319 = tensor.empty() : tensor<6x6xi32>
        %320 = linalg.matmul ins(%18, %18 : tensor<6x6xi32>, tensor<6x6xi32>) outs(%319 : tensor<6x6xi32>) -> tensor<6x6xi32>
        %321 = math.cos %11 : tensor<4x7x4xf32>
        %322 = math.ipowi %c-14695_i16, %c-20042_i16 : i16
        %from_elements_53 = tensor.from_elements %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true : tensor<6x4x4xi1>
        linalg.yield %in_48 : f16
      } -> tensor<6x6x4xf16>
      memref.alloca_scope  {
        %291 = index.maxs %c7, %c11
        %292 = math.log10 %8 : tensor<6x6x4xf32>
        %293 = arith.divsi %c1163971614_i64, %c1735174664_i64 : i64
        %294 = vector.broadcast %c1163971614_i64 : i64 to vector<6x4xi64>
        %dest_48, %accumulated_value_49 = vector.scan <add>, %275, %294 {inclusive = true, reduction_dim = 1 : i64} : vector<6x6x4xi64>, vector<6x4xi64>
        %295 = index.divs %c9, %c4
        %296 = index.sizeof
        %297 = math.cos %6 : tensor<6x4x4xf16>
        %alloca_50 = memref.alloca() : memref<6x4x4xf32>
        %298 = index.divs %295, %c5
        vector.print %275 : vector<6x6x4xi64>
        %299 = index.sizeof
        %300 = arith.shli %c1167392835_i64, %c1167392835_i64 : i64
        %alloc_51 = memref.alloc() : memref<4x7x4xi64>
        memref.copy %alloc_8, %alloc_51 : memref<4x7x4xi64> to memref<4x7x4xi64>
        %301 = math.fpowi %14, %4 : tensor<6x4x4xf32>, tensor<6x4x4xi32>
        %302 = arith.shrui %c-20042_i16, %c-14695_i16 : i16
        %303 = math.ipowi %2, %2 : tensor<6x6x4xi32>
        %304 = index.divs %c1, %c3
        %305 = memref.atomic_rmw ori %c153688669_i32, %alloc_16[%c2, %c5, %c4] : (i32, memref<4x6x6xi32>) -> i32
        %306 = vector.broadcast %c1735174664_i64 : i64 to vector<6x6xi64>
        %dest_52, %accumulated_value_53 = vector.scan <minsi>, %275, %306 {inclusive = false, reduction_dim = 2 : i64} : vector<6x6x4xi64>, vector<6x6xi64>
        %307 = arith.divf %cst, %cst : f32
        %308 = vector.transpose %274, [0] : vector<1xi16> to vector<1xi16>
        %309 = vector.insertelement %c-9479_i16, %274[%c13 : index] : vector<1xi16>
        %310 = vector.shuffle %275, %275 [0, 1, 5, 7, 8] : vector<6x6x4xi64>, vector<6x6x4xi64>
        %311 = arith.xori %c153688669_i32, %c153688669_i32 : i32
        %312 = index.maxu %c8, %c3
        %313 = arith.shrui %c1057443338_i32, %c1057443338_i32 : i32
        %314 = vector.create_mask %c8, %312, %296 : vector<4x7x4xi1>
        %from_elements_54 = tensor.from_elements %cst, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst, %cst, %cst, %cst_0, %cst, %cst, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst, %cst_0, %cst, %cst, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst_0 : tensor<4x7x4xf32>
        %315 = arith.remsi %c1163971614_i64, %c1163971614_i64 : i64
        %316 = math.log10 %16 : tensor<6x6x4xf16>
        %317 = affine.apply affine_map<(d0, d1, d2, d3) -> (-((d1 floordiv 8) mod 4))>(%312, %c7, %312, %304)
        %318 = math.log10 %15 : tensor<6x6x4xf16>
      }
      %cast_46 = tensor.cast %0 : tensor<6x6x4xi16> to tensor<?x?x?xi16>
      %281 = vector.broadcast %c1508809544_i32 : i32 to vector<4xi32>
      %282 = vector.broadcast %true : i1 to vector<4xi1>
      %283 = vector.maskedload %alloc_15[%c5, %c5, %c1], %282, %281 : memref<6x6x4xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
      %284 = affine.apply affine_map<(d0, d1, d2) -> (d2)>(%c13, %arg2, %c10)
      %285 = affine.apply affine_map<(d0) -> ((d0 ceildiv 4) mod 32)>(%c9)
      %286 = vector.broadcast %cst : f32 to vector<6x4x4xf32>
      %287 = vector.fma %286, %286, %286 : vector<6x4x4xf32>
      %288 = math.floor %17 : tensor<6x6x4xf16>
      affine.for %arg3 = 0 to 122 {
      }
      %289 = scf.if %true -> (i32) {
        %291 = math.log %15 : tensor<6x6x4xf16>
        %292 = math.ipowi %18, %reduced : tensor<6x6xi32>
        %293 = affine.load %alloc_4[%c13, %c5, %c1] : memref<4x7x4xf32>
        %294 = memref.atomic_rmw minu %c1508809544_i32, %alloc_13[%c0, %c5, %c1] : (i32, memref<6x6x4xi32>) -> i32
        %295 = vector.broadcast %c1163971614_i64 : i64 to vector<6x6x4xi64>
        %296 = math.rsqrt %10 : tensor<6x4x4xf16>
        %297 = vector.broadcast %c153688669_i32 : i32 to vector<4x4xi32>
        %298 = vector.outerproduct %283, %281, %297 {kind = #vector.kind<mul>} : vector<4xi32>, vector<4xi32>
        %299 = vector.load %alloc_14[%c0, %c3, %c1] : memref<6x4x4xf16>, vector<6x4x4xf16>
        scf.yield %c1057443338_i32 : i32
      } else {
        %291 = index.sizeof
        %292 = arith.divf %cst, %cst : f32
        %293 = vector.broadcast %true : i1 to vector<6x6x4xi1>
        %294 = vector.broadcast %c1508809544_i32 : i32 to vector<6x6x4xi32>
        %295 = vector.gather %alloc_6[%c11, %c10, %c9] [%294], %293, %275 : memref<6x6x4xi64>, vector<6x6x4xi32>, vector<6x6x4xi1>, vector<6x6x4xi64> into vector<6x6x4xi64>
        %296 = math.log %cst_0 : f32
        %297 = index.sub %c9, %c0
        %298 = bufferization.clone %alloc_12 : memref<6x6x4xi16> to memref<6x6x4xi16>
        %299 = bufferization.clone %298 : memref<6x6x4xi16> to memref<6x6x4xi16>
        %300 = index.sizeof
        scf.yield %c1057443338_i32 : i32
      }
      %290 = arith.minui %c978253761_i32, %c978253761_i32 : i32
      %cst_47 = arith.constant 1.000000e+00 : f32
      scf.reduce(%cst_47)  : f32 {
      ^bb0(%arg3: f32, %arg4: f32):
        %291 = vector.bitcast %281 : vector<4xi32> to vector<4xi32>
        %292 = arith.ceildivsi %c1508809544_i32, %c1057443338_i32 : i32
        %splat_48 = tensor.splat %289 : tensor<6x4x4xi32>
        %293 = math.tan %11 : tensor<4x7x4xf32>
        %294 = math.tanh %11 : tensor<4x7x4xf32>
        %295 = index.maxs %c1, %285
        %rank_49 = tensor.rank %0 : tensor<6x6x4xi16>
        %296 = arith.shli %c1163971614_i64, %c1735174664_i64 : i64
        %cst_50 = arith.constant 1.000000e+00 : f32
        scf.reduce.return %cst_50 : f32
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_2[%c11, %c4, %c5] : memref<6x4x4xi1>, vector<4xi1>
    affine.vector_store %20, %alloc_2[%c11, %c11, %c14] : memref<6x4x4xi1>, vector<4xi1>
    %alloc_17 = memref.alloc() : memref<7xf32>
    %21 = tensor.empty() : tensor<7xf32>
    %22 = tensor.empty() : tensor<f32>
    %23 = linalg.dot ins(%alloc_17, %21 : memref<7xf32>, tensor<7xf32>) outs(%22 : tensor<f32>) -> tensor<f32>
    %24 = arith.muli %c1508809544_i32, %c153688669_i32 : i32
    %25 = bufferization.clone %alloc_9 : memref<6x6x4xi32> to memref<6x6x4xi32>
    %cst_18 = arith.constant 1.000000e+00 : f16
    %from_elements = tensor.from_elements %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18 : tensor<4x7x4xf16>
    %26 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 - d0, d3 - d0)>(%c8, %c12, %c9, %c1)
    memref.store %c978253761_i32, %alloc_13[%c4, %c1, %c3] : memref<6x6x4xi32>
    %27 = vector.broadcast %true : i1 to vector<4x4xi1>
    %28 = vector.outerproduct %20, %20, %27 {kind = #vector.kind<minui>} : vector<4xi1>, vector<4xi1>
    %29 = arith.minui %c-20042_i16, %c-14695_i16 : i16
    %30 = vector.reduction <maxui>, %20 : vector<4xi1> into i1
    %31 = memref.load %alloc_4[%c1, %c1, %c0] : memref<4x7x4xf32>
    %32 = arith.maxsi %c978253761_i32, %c1057443338_i32 : i32
    %33 = vector.reduction <maxsi>, %20 : vector<4xi1> into i1
    %34 = math.log1p %15 : tensor<6x6x4xf16>
    %35 = math.floor %15 : tensor<6x6x4xf16>
    %36 = arith.subi %c1735174664_i64, %c1735174664_i64 : i64
    %37 = arith.mulf %cst_18, %cst_18 : f16
    %cast = tensor.cast %5 : tensor<6x4x4xi1> to tensor<?x?x?xi1>
    %expanded = tensor.expand_shape %17 [[0], [1], [2, 3]] : tensor<6x6x4xf16> into tensor<6x6x4x1xf16>
    %38 = memref.load %alloc_7[%c5, %c0, %c1] : memref<6x6x4xi16>
    %39 = bufferization.clone %25 : memref<6x6x4xi32> to memref<6x6x4xi32>
    %40 = vector.broadcast %c12 : index to vector<4xindex>
    %41 = vector.broadcast %cst : f32 to vector<4xf32>
    vector.scatter %alloc_4[%c2, %c1, %c2] [%40], %20, %41 : memref<4x7x4xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
    %42 = vector.create_mask %c0, %c12, %c11 : vector<6x4x4xi1>
    %43 = arith.cmpi ugt, %c-9479_i16, %c-20042_i16 : i16
    %cst_19 = arith.constant 0x4E053BAF : f32
    %44 = arith.andi %c-22385_i16, %c-20042_i16 : i16
    %45 = math.round %16 : tensor<6x6x4xf16>
    %46 = vector.shuffle %42, %42 [0, 2, 3, 5, 8, 10, 11] : vector<6x4x4xi1>, vector<6x4x4xi1>
    %47 = arith.floordivsi %c-22385_i16, %c-22385_i16 : i16
    %alloca = memref.alloca() : memref<4x7x4xf32>
    %48 = math.tanh %from_elements : tensor<4x7x4xf16>
    bufferization.dealloc_tensor %16 : tensor<6x6x4xf16>
    %49 = vector.matrix_multiply %20, %20 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
    %50 = index.sizeof
    %51 = vector.broadcast %cst_0 : f32 to vector<4x7x4xf32>
    %52 = vector.fma %51, %51, %51 : vector<4x7x4xf32>
    %53 = index.ceildivu %c10, %c15
    vector.print %49 : vector<1xi1>
    %54 = arith.shrui %c-9479_i16, %c-20042_i16 : i16
    %55 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 + d0 + d0 + 2)>(%c11, %50, %c12, %26)
    %56 = math.ipowi %reduced, %reduced : tensor<6x6xi32>
    %57 = vector.broadcast %cst : f32 to vector<7x4x7x4xf32>
    %58 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %52, %51, %57 : vector<4x7x4xf32>, vector<4x7x4xf32> into vector<7x4x7x4xf32>
    %59 = vector.broadcast %cst_18 : f16 to vector<6x4x4xf16>
    %60 = vector.broadcast %c1343137369_i32 : i32 to vector<6x4x4xi32>
    %61 = vector.gather %alloc_11[%26, %c0, %55] [%60], %42, %59 : memref<6x6x4xf16>, vector<6x4x4xi32>, vector<6x4x4xi1>, vector<6x4x4xf16> into vector<6x4x4xf16>
    %rank = tensor.rank %15 : tensor<6x6x4xf16>
    %62 = vector.multi_reduction <maxui>, %42, %20 [0, 1] : vector<6x4x4xi1> to vector<4xi1>
    %63 = math.ctlz %c1163971614_i64 : i64
    %64 = math.cos %10 : tensor<6x4x4xf16>
    %65 = scf.if %true -> (i64) {
      %273 = math.ctlz %c-22385_i16 : i16
      %274 = math.cttz %c-20042_i16 : i16
      %275 = arith.negf %cst_18 : f16
      %c1774339991_i32 = arith.constant 1774339991 : i32
      %276 = arith.minui %c1167392835_i64, %c1167392835_i64 : i64
      %277 = math.cos %expanded : tensor<6x6x4x1xf16>
      %278 = math.atan %22 : tensor<f32>
      %279 = math.tan %11 : tensor<4x7x4xf32>
      scf.yield %c1163971614_i64 : i64
    } else {
      %273 = index.divu %c9, %c4
      %274 = vector.bitcast %52 : vector<4x7x4xf32> to vector<4x7x4xf32>
      %275 = math.ipowi %12, %13 : tensor<4x7x4xi32>
      %276 = math.log10 %1 : tensor<6x4x4xf32>
      %277 = vector.broadcast %true : i1 to vector<4x4xi1>
      %278 = vector.outerproduct %20, %20, %277 {kind = #vector.kind<mul>} : vector<4xi1>, vector<4xi1>
      %alloc_46 = memref.alloc() : memref<7xf32>
      memref.copy %alloc_17, %alloc_46 : memref<7xf32> to memref<7xf32>
      %279 = tensor.empty() : tensor<6x6x4xf16>
      %mapped = linalg.map ins(%15, %9, %15 : tensor<6x6x4xf16>, tensor<6x6x4xf16>, tensor<6x6x4xf16>) outs(%279 : tensor<6x6x4xf16>)
        (%in: f16, %in_47: f16, %in_48: f16) {
          %281 = math.log %17 : tensor<6x6x4xf16>
          %282 = math.powf %15, %9 : tensor<6x6x4xf16>
          %c-19637_i16 = arith.constant -19637 : i16
          %inserted = tensor.insert %in_47 into %17[%c0, %c0, %c2] : tensor<6x6x4xf16>
          %283 = math.expm1 %14 : tensor<6x4x4xf32>
          %284 = math.log2 %6 : tensor<6x4x4xf16>
          %285 = vector.matrix_multiply %20, %20 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
          %286 = arith.minui %c153688669_i32, %c1057443338_i32 : i32
          %287 = vector.flat_transpose %49 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
          %288 = index.divu %c9, %c15
          %expanded_49 = tensor.expand_shape %0 [[0], [1], [2, 3]] : tensor<6x6x4xi16> into tensor<6x6x4x1xi16>
          %289 = arith.divsi %c1057443338_i32, %c1057443338_i32 : i32
          %290 = bufferization.clone %alloc_1 : memref<4x7x4xf16> to memref<4x7x4xf16>
          %291 = vector.broadcast %cst : f32 to vector<7x4x7x4xf32>
          %292 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %52, %52, %291 : vector<4x7x4xf32>, vector<4x7x4xf32> into vector<7x4x7x4xf32>
          %293 = vector.multi_reduction <maxsi>, %60, %60 [] : vector<6x4x4xi32> to vector<6x4x4xi32>
          %splat_50 = tensor.splat %in_47 : tensor<6x4x4xf16>
          %splat_51 = tensor.splat %cst_0 : tensor<6x4x4xf32>
          %294 = arith.shli %c502604180_i64, %c1735174664_i64 : i64
          %295 = math.powf %10, %splat_50 : tensor<6x4x4xf16>
          %inserted_52 = tensor.insert %c153688669_i32 into %2[%c0, %c2, %c0] : tensor<6x6x4xi32>
          %296 = math.log2 %10 : tensor<6x4x4xf16>
          %297 = index.maxu %c7, %c10
          %298 = math.fma %15, %17, %16 : tensor<6x6x4xf16>
          %expanded_53 = tensor.expand_shape %5 [[0], [1], [2, 3]] : tensor<6x4x4xi1> into tensor<6x4x4x1xi1>
          %299 = vector.broadcast %cst_0 : f32 to vector<7x4xf32>
          %dest_54, %accumulated_value_55 = vector.scan <mul>, %51, %299 {inclusive = false, reduction_dim = 0 : i64} : vector<4x7x4xf32>, vector<7x4xf32>
          %300 = math.absf %15 : tensor<6x6x4xf16>
          %301 = index.sub %c6, %c2
          %302 = math.ipowi %5, %5 : tensor<6x4x4xi1>
          %303 = index.divs %c14, %c6
          %rank_56 = tensor.rank %6 : tensor<6x4x4xf16>
          %304 = math.ctpop %4 : tensor<6x4x4xi32>
          %305 = math.log10 %8 : tensor<6x6x4xf32>
          %cst_57 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_57 : f16
        }
      %280 = arith.shli %c-14695_i16, %c-22385_i16 : i16
      scf.yield %c1167392835_i64 : i64
    }
    %66 = math.powf %cst, %cst : f32
    %67 = math.absi %65 : i64
    %68 = arith.divf %cst, %cst : f32
    %69 = math.ctlz %c502604180_i64 : i64
    %70 = index.sizeof
    %71 = arith.mulf %cst_18, %cst_18 : f16
    %72 = vector.broadcast %cst : f32 to vector<6x6x4xf32>
    %73 = vector.fma %72, %72, %72 : vector<6x6x4xf32>
    %74 = index.sub %70, %53
    %75 = math.exp %10 : tensor<6x4x4xf16>
    %76 = vector.broadcast %cst_0 : f32 to vector<6x4x4xf32>
    %77 = vector.fma %76, %76, %76 : vector<6x4x4xf32>
    %78 = index.castu %c-22385_i16 : i16 to index
    %79 = index.ceildivs %c9, %78
    %80 = arith.shrui %c1508809544_i32, %c1508809544_i32 : i32
    %81 = math.absf %14 : tensor<6x4x4xf32>
    %82 = math.absf %9 : tensor<6x6x4xf16>
    %83 = arith.negf %cst_0 : f32
    %alloc_20 = memref.alloc() : memref<6x6x4xi64>
    %84 = index.maxu %50, %79
    %85 = affine.apply affine_map<(d0) -> ((-d0) mod 32)>(%rank)
    %collapsed = tensor.collapse_shape %2 [[0, 1], [2]] : tensor<6x6x4xi32> into tensor<36x4xi32>
    %86 = math.ctpop %4 : tensor<6x4x4xi32>
    %87 = arith.muli %c1163971614_i64, %65 : i64
    %88 = vector.broadcast %cst_0 : f32 to vector<6x6x4xf32>
    %89 = vector.fma %88, %88, %88 : vector<6x6x4xf32>
    %90 = memref.atomic_rmw minf %cst_18, %alloc_11[%c4, %c1, %c2] : (f16, memref<6x6x4xf16>) -> f16
    %91 = vector.reduction <mul>, %49 : vector<1xi1> into i1
    %92 = vector.load %alloc_5[%c3, %c0, %c2] : memref<6x6x4xi32>, vector<6x6x4xi32>
    %93 = index.divu %74, %c1
    %94 = vector.flat_transpose %20 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
    %c1540331261_i64 = arith.constant 1540331261 : i64
    %95 = vector.matrix_multiply %49, %94 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<1xi1>, vector<4xi1>) -> vector<4xi1>
    %alloc_21 = memref.alloc() : memref<4x4xi32>
    %96 = tensor.empty() : tensor<36x4xi32>
    %97 = linalg.matmul ins(%collapsed, %alloc_21 : tensor<36x4xi32>, memref<4x4xi32>) outs(%96 : tensor<36x4xi32>) -> tensor<36x4xi32>
    %98 = index.sub %c15, %c7
    affine.store %c-20042_i16, %alloc_10[%c0, %c5, %c5] : memref<6x4x4xi16>
    %99 = math.ctpop %7 : tensor<6x6x4xi32>
    %100 = arith.mulf %cst_0, %cst : f32
    %101 = index.castu %c10 : index to i32
    %102 = math.rsqrt %1 : tensor<6x4x4xf32>
    %103 = vector.reduction <mul>, %49 : vector<1xi1> into i1
    %generated = tensor.generate %c9, %79, %53 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %273 = vector.broadcast %cst : f32 to vector<4x7xf32>
      %dest_46, %accumulated_value_47 = vector.scan <add>, %51, %273 {inclusive = false, reduction_dim = 2 : i64} : vector<4x7x4xf32>, vector<4x7xf32>
      %274 = index.floordivs %c14, %c10
      %275 = arith.shli %c153688669_i32, %c1057443338_i32 : i32
      %rank_48 = tensor.rank %6 : tensor<6x4x4xf16>
      tensor.yield %cst_0 : f32
    } : tensor<?x?x?xf32>
    %104 = tensor.empty() : tensor<7xi32>
    %105 = math.fpowi %21, %104 : tensor<7xf32>, tensor<7xi32>
    %106 = math.exp %14 : tensor<6x4x4xf32>
    %107 = math.powf %from_elements, %from_elements : tensor<4x7x4xf16>
    %108 = index.castu %c502604180_i64 : i64 to index
    %109 = scf.while (%arg1 = %73) : (vector<6x6x4xf32>) -> vector<6x6x4xf32> {
      %273 = arith.shrui %c-14695_i16, %c-20042_i16 : i16
      %274 = vector.insertelement %true, %49[%79 : index] : vector<1xi1>
      %275 = vector.broadcast %c1343137369_i32 : i32 to vector<7xi32>
      %276 = vector.broadcast %true : i1 to vector<7xi1>
      %277 = vector.maskedload %alloc_9[%c0, %c2, %c0], %276, %275 : memref<6x6x4xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
      scf.execute_region {
        %279 = math.ctpop %c-14695_i16 : i16
        %280 = vector.broadcast %cst_0 : f32 to vector<4x4xf32>
        %281 = vector.insert %280, %77 [0] : vector<4x4xf32> into vector<6x4x4xf32>
        %282 = math.ipowi %3, %3 : tensor<4x7x4xi32>
        %283 = arith.ceildivsi %c978253761_i32, %c153688669_i32 : i32
        %284 = math.log %1 : tensor<6x4x4xf32>
        %285 = memref.load %alloc_7[%c2, %c3, %c1] : memref<6x6x4xi16>
        %286 = memref.load %alloc_16[%c3, %c3, %c3] : memref<4x6x6xi32>
        %287 = math.ctpop %c1735174664_i64 : i64
        %288 = arith.subi %c1343137369_i32, %c978253761_i32 : i32
        affine.store %65, %alloc_8[%c2, %c3, %c3] : memref<4x7x4xi64>
        %289 = math.cttz %c1343137369_i32 : i32
        %290 = vector.broadcast %cst : f32 to vector<6x4x4xf32>
        %291 = vector.fma %290, %76, %77 : vector<6x4x4xf32>
        %292 = math.log %6 : tensor<6x4x4xf16>
        %293 = math.absf %6 : tensor<6x4x4xf16>
        %294 = vector.create_mask %c1, %c14, %79 : vector<4x7x4xi1>
        %295 = memref.atomic_rmw andi %c978253761_i32, %alloc_9[%c4, %c2, %c0] : (i32, memref<6x6x4xi32>) -> i32
        scf.yield
      }
      %splat_46 = tensor.splat %c153688669_i32 : tensor<6x4x4xi32>
      %true_47 = arith.constant true
      %collapsed_48 = tensor.collapse_shape %6 [[0, 1], [2]] : tensor<6x4x4xf16> into tensor<24x4xf16>
      %278 = vector.extract %52[3] : vector<4x7x4xf32>
      scf.condition(%true) %88 : vector<6x6x4xf32>
    } do {
    ^bb0(%arg1: vector<6x6x4xf32>):
      %273 = bufferization.clone %39 : memref<6x6x4xi32> to memref<6x6x4xi32>
      %274 = arith.minui %c978253761_i32, %c1508809544_i32 : i32
      %275 = scf.index_switch %c12 -> tensor<6x4x4xi16> 
      case 1 {
        %290 = math.cttz %5 : tensor<6x4x4xi1>
        %291 = index.floordivs %c10, %26
        %292 = math.exp %9 : tensor<6x6x4xf16>
        %293 = math.rsqrt %8 : tensor<6x6x4xf32>
        %294 = vector.broadcast %c1163971614_i64 : i64 to vector<4xi64>
        %295 = vector.maskedload %alloc_8[%c1, %c0, %c2], %94, %294 : memref<4x7x4xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
        %296 = index.divs %79, %c2
        %297 = bufferization.to_tensor %alloc_8 : memref<4x7x4xi64>
        %298 = index.sub %c9, %c2
        %299 = bufferization.clone %alloc_14 : memref<6x4x4xf16> to memref<6x4x4xf16>
        memref.copy %alloc_15, %alloc_5 : memref<6x6x4xi32> to memref<6x6x4xi32>
        %300 = vector.matrix_multiply %49, %95 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<1xi1>, vector<4xi1>) -> vector<4xi1>
        %301 = math.tan %8 : tensor<6x6x4xf32>
        %302 = arith.remsi %c502604180_i64, %c1167392835_i64 : i64
        %303 = math.rsqrt %9 : tensor<6x6x4xf16>
        %304 = vector.multi_reduction <maxui>, %95, %95 [] : vector<4xi1> to vector<4xi1>
        %305 = bufferization.clone %alloc_6 : memref<6x6x4xi64> to memref<6x6x4xi64>
        %306 = tensor.empty() : tensor<6x4x4xi16>
        scf.yield %306 : tensor<6x4x4xi16>
      }
      default {
        %290 = bufferization.clone %alloc_15 : memref<6x6x4xi32> to memref<6x6x4xi32>
        %291 = math.rsqrt %11 : tensor<4x7x4xf32>
        %292 = affine.apply affine_map<(d0, d1, d2) -> (d2)>(%c9, %c10, %108)
        %293 = affine.load %alloc_12[%c2, %c8, %c1] : memref<6x6x4xi16>
        %294 = index.mul %c4, %c12
        memref.assume_alignment %alloc_17, 1 : memref<7xf32>
        %295 = index.divs %c0, %c10
        %alloca_47 = memref.alloca() : memref<6x4x4xf16>
        %296 = vector.broadcast %cst_0 : f32 to vector<6x4x6x4xf32>
        %297 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %72, %72, %296 : vector<6x6x4xf32>, vector<6x6x4xf32> into vector<6x4x6x4xf32>
        %298 = math.floor %22 : tensor<f32>
        %299 = memref.load %alloc_14[%c5, %c3, %c3] : memref<6x4x4xf16>
        %300 = index.sizeof
        %301 = vector.insertelement %true, %94[%c9 : index] : vector<4xi1>
        %302 = index.castu %c-14695_i16 : i16 to index
        %303 = index.floordivs %79, %98
        %304 = index.divs %26, %c1
        %305 = tensor.empty() : tensor<6x4x4xi16>
        scf.yield %305 : tensor<6x4x4xi16>
      }
      %276 = arith.shrui %c1163971614_i64, %c502604180_i64 : i64
      %277 = vector.flat_transpose %94 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
      %splat_46 = tensor.splat %c502604180_i64 : tensor<4x7x4xi64>
      %278 = vector.broadcast %cst : f32 to vector<6x4x4x4xf32>
      %279 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %89, %76, %278 : vector<6x6x4xf32>, vector<6x4x4xf32> into vector<6x4x4x4xf32>
      memref.copy %alloc_14, %alloc : memref<6x4x4xf16> to memref<6x4x4xf16>
      %280 = math.ctpop %12 : tensor<4x7x4xi32>
      %281 = scf.index_switch %c5 -> f16 
      case 1 {
        %290 = index.ceildivs %108, %74
        %291 = vector.insertelement %true, %49[%74 : index] : vector<1xi1>
        %292 = math.powf %8, %8 : tensor<6x6x4xf32>
        %false = arith.constant false
        %293 = tensor.empty() : tensor<6x6x4xf32>
        %294 = vector.splat %c8 : vector<6x4x4xindex>
        %295 = index.maxu %290, %c0
        %296 = vector.broadcast %true : i1 to vector<4x4xi1>
        %297 = vector.outerproduct %20, %20, %296 {kind = #vector.kind<maxui>} : vector<4xi1>, vector<4xi1>
        %298 = arith.remf %cst_18, %cst_18 : f16
        %299 = math.log2 %cst_0 : f32
        %300 = arith.mulf %cst_0, %cst_0 : f32
        %301 = math.fpowi %6, %4 : tensor<6x4x4xf16>, tensor<6x4x4xi32>
        %302 = affine.apply affine_map<(d0, d1, d2) -> (d0 mod 128 - 128)>(%c4, %rank, %84)
        %303 = math.rsqrt %from_elements : tensor<4x7x4xf16>
        %304 = math.log1p %23 : tensor<f32>
        %305 = arith.addf %cst, %cst_0 : f32
        scf.yield %cst_18 : f16
      }
      case 2 {
        %290 = math.log %14 : tensor<6x4x4xf32>
        %alloc_47 = memref.alloc() : memref<4x7x4xf16>
        memref.copy %alloc_1, %alloc_47 : memref<4x7x4xf16> to memref<4x7x4xf16>
        %291 = math.fpowi %21, %104 : tensor<7xf32>, tensor<7xi32>
        %inserted = tensor.insert %true into %cast[%c0, %c0, %c0] : tensor<?x?x?xi1>
        %292 = arith.divf %cst_0, %cst : f32
        %293 = arith.remsi %c1343137369_i32, %c978253761_i32 : i32
        %294 = arith.minui %c1167392835_i64, %c1167392835_i64 : i64
        %295 = bufferization.clone %alloc_2 : memref<6x4x4xi1> to memref<6x4x4xi1>
        %296 = math.ceil %21 : tensor<7xf32>
        %297 = math.ceil %cst_0 : f32
        %298 = index.sizeof
        %299 = arith.divsi %c978253761_i32, %c1057443338_i32 : i32
        %300 = index.sizeof
        %cst_48 = arith.constant 1.09249242E+9 : f32
        %c1952464321_i32 = arith.constant 1952464321 : i32
        %from_elements_49 = tensor.from_elements %c1343137369_i32, %c153688669_i32, %c1343137369_i32, %c1343137369_i32, %c153688669_i32, %c1057443338_i32, %c978253761_i32, %c1343137369_i32, %c1343137369_i32, %c153688669_i32, %c1057443338_i32, %c1508809544_i32, %c1343137369_i32, %c153688669_i32, %c153688669_i32, %c1057443338_i32, %c1508809544_i32, %c153688669_i32, %c1508809544_i32, %c1343137369_i32, %c153688669_i32, %c1057443338_i32, %c1508809544_i32, %c1508809544_i32, %c153688669_i32, %c978253761_i32, %c1508809544_i32, %c1508809544_i32, %c1057443338_i32, %c1057443338_i32, %c1508809544_i32, %c978253761_i32, %c1508809544_i32, %c1508809544_i32, %c978253761_i32, %c1343137369_i32, %c153688669_i32, %c1057443338_i32, %c1343137369_i32, %c1057443338_i32, %c978253761_i32, %c1057443338_i32, %c1057443338_i32, %c978253761_i32, %c153688669_i32, %c978253761_i32, %c1057443338_i32, %c1057443338_i32, %c1057443338_i32, %c1057443338_i32, %c978253761_i32, %c978253761_i32, %c153688669_i32, %c978253761_i32, %c1508809544_i32, %c1343137369_i32, %c1057443338_i32, %c978253761_i32, %c1343137369_i32, %c153688669_i32, %c1508809544_i32, %c1057443338_i32, %c1057443338_i32, %c1508809544_i32, %c1057443338_i32, %c1057443338_i32, %c978253761_i32, %c153688669_i32, %c1343137369_i32, %c1343137369_i32, %c1343137369_i32, %c1343137369_i32, %c1343137369_i32, %c1343137369_i32, %c978253761_i32, %c1508809544_i32, %c153688669_i32, %c1508809544_i32, %c978253761_i32, %c1343137369_i32, %c1057443338_i32, %c1508809544_i32, %c153688669_i32, %c978253761_i32, %c1057443338_i32, %c1057443338_i32, %c1508809544_i32, %c153688669_i32, %c153688669_i32, %c978253761_i32, %c1508809544_i32, %c978253761_i32, %c1057443338_i32, %c1343137369_i32, %c1508809544_i32, %c1343137369_i32, %c1508809544_i32, %c1508809544_i32, %c978253761_i32, %c978253761_i32, %c978253761_i32, %c1508809544_i32, %c1343137369_i32, %c1508809544_i32, %c1057443338_i32, %c1057443338_i32, %c1508809544_i32, %c1057443338_i32, %c1343137369_i32, %c1508809544_i32, %c1343137369_i32, %c978253761_i32, %c1057443338_i32, %c153688669_i32, %c1343137369_i32, %c1508809544_i32, %c978253761_i32, %c153688669_i32, %c978253761_i32, %c1508809544_i32, %c1508809544_i32, %c1508809544_i32, %c1508809544_i32, %c1057443338_i32, %c1057443338_i32, %c1057443338_i32, %c1057443338_i32, %c978253761_i32, %c1057443338_i32, %c153688669_i32, %c1508809544_i32, %c1343137369_i32, %c1508809544_i32, %c1343137369_i32, %c1508809544_i32, %c1343137369_i32, %c153688669_i32, %c978253761_i32, %c978253761_i32, %c1057443338_i32, %c978253761_i32, %c1508809544_i32, %c1343137369_i32, %c978253761_i32 : tensor<6x6x4xi32>
        scf.yield %cst_18 : f16
      }
      default {
        %290 = vector.flat_transpose %95 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
        %291 = affine.load %39[%c10, %c5, %c14] : memref<6x6x4xi32>
        %292 = vector.broadcast %true : i1 to vector<4x6xi1>
        %293 = vector.transfer_write %292, %5[%c15, %c14, %c0] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<4x6xi1>, tensor<6x4x4xi1>
        bufferization.dealloc_tensor %13 : tensor<4x7x4xi32>
        %294 = vector.broadcast %cst : f32 to vector<6x6x4xf32>
        %295 = vector.fma %294, %88, %89 : vector<6x6x4xf32>
        %296 = arith.xori %c1163971614_i64, %65 : i64
        %297 = memref.atomic_rmw minu %c1057443338_i32, %39[%c1, %c0, %c3] : (i32, memref<6x6x4xi32>) -> i32
        %298 = math.log10 %expanded : tensor<6x6x4x1xf16>
        %299 = affine.apply affine_map<(d0, d1) -> (d0 * 17)>(%c15, %c15)
        %300 = memref.atomic_rmw maxf %cst_18, %alloc[%c2, %c2, %c3] : (f16, memref<6x4x4xf16>) -> f16
        %301 = memref.atomic_rmw maxu %291, %alloc_15[%c4, %c3, %c2] : (i32, memref<6x6x4xi32>) -> i32
        %302 = math.ctlz %c1167392835_i64 : i64
        %303 = vector.broadcast %c-14695_i16 : i16 to vector<7xi16>
        vector.transfer_write %303, %alloc_10[%53, %c2, %c1] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<7xi16>, memref<6x4x4xi16>
        %304 = affine.load %39[%c14, %c2, %c15] : memref<6x6x4xi32>
        %305 = arith.floordivsi %c1343137369_i32, %c153688669_i32 : i32
        %306 = vector.create_mask %c12, %74, %c5 : vector<4x7x4xi1>
        scf.yield %cst_18 : f16
      }
      %282 = arith.divui %c502604180_i64, %c1163971614_i64 : i64
      %283 = math.absi %c-9479_i16 : i16
      %284 = vector.broadcast %cst_0 : f32 to vector<7x4x6x6xf32>
      %285 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d3, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %51, %72, %284 : vector<4x7x4xf32>, vector<6x6x4xf32> into vector<7x4x6x6xf32>
      %286 = math.exp %16 : tensor<6x6x4xf16>
      %287 = arith.mulf %cst_0, %cst_0 : f32
      %288 = tensor.empty() : tensor<6xf32>
      %289 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%288 : tensor<6xf32>) outs(%14 : tensor<6x4x4xf32>) {
      ^bb0(%in: f32, %out: f32):
        %290 = affine.load %alloc_14[%c5, %c4, %c6] : memref<6x4x4xf16>
        %from_elements_47 = tensor.from_elements %cst_18, %cst_18, %290, %290, %290, %290, %290, %cst_18, %cst_18, %290, %cst_18, %cst_18, %cst_18, %290, %290, %cst_18, %cst_18, %cst_18, %cst_18, %290, %cst_18, %290, %290, %cst_18, %cst_18, %cst_18, %290, %290, %cst_18, %cst_18, %290, %290, %290, %290, %290, %290, %cst_18, %cst_18, %290, %cst_18, %cst_18, %cst_18, %290, %290, %290, %290, %290, %290, %cst_18, %290, %cst_18, %cst_18, %290, %290, %290, %cst_18, %290, %cst_18, %290, %cst_18, %cst_18, %cst_18, %cst_18, %290, %cst_18, %290, %cst_18, %290, %cst_18, %cst_18, %cst_18, %cst_18, %290, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %290, %290, %cst_18, %cst_18, %290, %cst_18, %290, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %cst_18, %290, %cst_18, %cst_18, %290, %cst_18, %cst_18, %290, %290, %290, %290, %cst_18, %cst_18, %290, %cst_18, %290, %290, %cst_18, %290, %cst_18, %cst_18 : tensor<4x7x4xf16>
        %291 = math.absf %9 : tensor<6x6x4xf16>
        %292 = index.floordivs %c8, %84
        memref.store %c1508809544_i32, %39[%c5, %c4, %c3] : memref<6x6x4xi32>
        %293 = vector.splat %c502604180_i64 : vector<4x7x4xi64>
        %294 = math.ceil %6 : tensor<6x4x4xf16>
        %295 = arith.shrui %c1163971614_i64, %c1163971614_i64 : i64
        %296 = math.tanh %10 : tensor<6x4x4xf16>
        %297 = math.cttz %0 : tensor<6x6x4xi16>
        %298 = affine.max affine_map<(d0) -> (-(d0 * 32 + d0 floordiv 2 - 32 + d0 * 32), d0 * 2, d0 - 128)>(%c8)
        %299 = arith.mulf %in, %out : f32
        %300 = affine.load %alloc_1[%c2, %c11, %c13] : memref<4x7x4xf16>
        %301 = math.exp %9 : tensor<6x6x4xf16>
        %302 = math.tan %expanded : tensor<6x6x4x1xf16>
        %303 = math.sqrt %cst_0 : f32
        %304 = vector.matrix_multiply %20, %49 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<1xi1>) -> vector<4xi1>
        %305 = vector.reduction <mul>, %94 : vector<4xi1> into i1
        %306 = vector.gather %alloc_3[%c2, %c1, %c9] [%60], %42, %60 : memref<6x6x4xi32>, vector<6x4x4xi32>, vector<6x4x4xi1>, vector<6x4x4xi32> into vector<6x4x4xi32>
        %307 = arith.shrui %65, %c1167392835_i64 : i64
        %308 = bufferization.clone %alloc_7 : memref<6x6x4xi16> to memref<6x6x4xi16>
        %309 = vector.broadcast %c1508809544_i32 : i32 to vector<7xi32>
        %310 = vector.transfer_write %309, %3[%c15, %c2, %79] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<7xi32>, tensor<4x7x4xi32>
        %collapsed_48 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<4x7x4xi32> into tensor<28x4xi32>
        %311 = arith.negf %290 : f16
        %expanded_49 = tensor.expand_shape %12 [[0], [1], [2, 3]] : tensor<4x7x4xi32> into tensor<4x7x4x1xi32>
        %c1484501377_i64 = arith.constant 1484501377 : i64
        memref.store %290, %alloc_1[%c0, %c2, %c3] : memref<4x7x4xf16>
        %312 = arith.negf %out : f32
        %313 = index.maxs %rank, %78
        %314 = arith.cmpi sge, %c-9479_i16, %c-22385_i16 : i16
        %315 = tensor.empty() : tensor<6x6xi32>
        %316 = linalg.matmul ins(%18, %reduced : tensor<6x6xi32>, tensor<6x6xi32>) outs(%315 : tensor<6x6xi32>) -> tensor<6x6xi32>
        %317 = vector.broadcast %true : i1 to vector<7xi1>
        %318 = vector.maskedload %alloc_15[%c4, %c2, %c0], %317, %309 : memref<6x6x4xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
        linalg.yield %cst_0 : f32
      } -> tensor<6x4x4xf32>
      scf.yield %73 : vector<6x6x4xf32>
    }
    %110 = math.exp %expanded : tensor<6x6x4x1xf16>
    %alloc_22 = memref.alloc() : memref<4x4xi32>
    %111 = tensor.empty() : tensor<36x4xi32>
    %112 = linalg.matmul ins(%collapsed, %alloc_22 : tensor<36x4xi32>, memref<4x4xi32>) outs(%111 : tensor<36x4xi32>) -> tensor<36x4xi32>
    %113 = vector.create_mask %c2, %c7, %108 : vector<6x6x4xi1>
    %114 = math.log %17 : tensor<6x6x4xf16>
    %115 = arith.andi %c-20042_i16, %c-22385_i16 : i16
    %116 = arith.divsi %c-9479_i16, %c-20042_i16 : i16
    %from_elements_23 = tensor.from_elements %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true : tensor<4x7x4xi1>
    %117 = vector.insertelement %true, %94[%93 : index] : vector<4xi1>
    memref.tensor_store %17, %alloc_11 : memref<6x6x4xf16>
    %118 = vector.broadcast %cst : f32 to vector<4x7x4xf32>
    %119 = vector.fma %118, %51, %52 : vector<4x7x4xf32>
    %120 = index.mul %c9, %c3
    %121 = index.floordivs %74, %26
    %122 = vector.extract %119[0, 3] : vector<4x7x4xf32>
    %123 = scf.if %true -> (i16) {
      %273 = vector.insertelement %true, %20[%c2 : index] : vector<4xi1>
      memref.copy %alloc_3, %alloc_9 : memref<6x6x4xi32> to memref<6x6x4xi32>
      %274 = index.ceildivs %55, %c5
      %275 = math.atan2 %expanded, %expanded : tensor<6x6x4x1xf16>
      %inserted = tensor.insert %cst into %generated[%c0, %c0, %c0] : tensor<?x?x?xf32>
      memref.store %cst_18, %alloc_14[%c3, %c3, %c3] : memref<6x4x4xf16>
      %276 = arith.divf %cst_18, %cst_18 : f16
      %277 = math.ctpop %reduced : tensor<6x6xi32>
      scf.yield %c-20042_i16 : i16
    } else {
      %273 = arith.ceildivsi %c1163971614_i64, %c1735174664_i64 : i64
      %274 = math.rsqrt %10 : tensor<6x4x4xf16>
      %275 = memref.realloc %alloc_17 : memref<7xf32> to memref<7xf32>
      %276 = index.add %26, %c15
      %277 = bufferization.clone %alloc_14 : memref<6x4x4xf16> to memref<6x4x4xf16>
      %278 = arith.addf %cst_0, %cst_0 : f32
      %279 = vector.insert %true, %94 [3] : i1 into vector<4xi1>
      %280 = math.round %9 : tensor<6x6x4xf16>
      scf.yield %c-22385_i16 : i16
    }
    %124 = math.absi %from_elements_23 : tensor<4x7x4xi1>
    %125 = arith.minf %cst_18, %cst_18 : f16
    %126 = scf.index_switch %c2 -> tensor<6x6x4xi64> 
    case 1 {
      %273 = vector.create_mask %85, %c8, %c7 : vector<6x4x4xi1>
      %274 = math.log %6 : tensor<6x4x4xf16>
      %275 = vector.broadcast %c1508809544_i32 : i32 to vector<4xi32>
      %276 = vector.maskedload %alloc_5[%c4, %c3, %c0], %94, %275 : memref<6x6x4xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
      %277 = arith.minsi %c-9479_i16, %c-20042_i16 : i16
      %278 = memref.atomic_rmw assign %cst_18, %alloc_11[%c1, %c3, %c1] : (f16, memref<6x6x4xf16>) -> f16
      %279 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%1 : tensor<6x4x4xf32>) {
      ^bb0(%out: f32):
        %294 = arith.subi %c1343137369_i32, %c1508809544_i32 : i32
        %295 = index.floordivs %85, %121
        %296 = math.exp %cst_18 : f16
        %297 = math.atan %from_elements : tensor<4x7x4xf16>
        %298 = math.exp %22 : tensor<f32>
        %299 = index.mul %78, %c8
        %300 = affine.apply affine_map<(d0) -> ((d0 * 2) mod 4)>(%50)
        %301 = vector.broadcast %c502604180_i64 : i64 to vector<6x6x4xi64>
        %302 = index.floordivs %53, %299
        %303 = vector.reduction <add>, %49 : vector<1xi1> into i1
        %304 = affine.max affine_map<(d0) -> (d0 * 2 + 26, d0 ceildiv 64)>(%rank)
        %305 = math.exp %15 : tensor<6x6x4xf16>
        %306 = vector.transpose %301, [1, 0, 2] : vector<6x6x4xi64> to vector<6x6x4xi64>
        %307 = memref.load %alloc[%c1, %c2, %c3] : memref<6x4x4xf16>
        %308 = arith.minui %c978253761_i32, %c1508809544_i32 : i32
        %309 = arith.remsi %c-9479_i16, %123 : i16
        %true_46 = arith.constant true
        %310 = affine.load %alloc_4[%c15, %c8, %c0] : memref<4x7x4xf32>
        %311 = bufferization.clone %alloc_1 : memref<4x7x4xf16> to memref<4x7x4xf16>
        %312 = arith.addf %cst, %cst_0 : f32
        %313 = vector.bitcast %72 : vector<6x6x4xf32> to vector<6x6x4xf32>
        %314 = arith.cmpi ule, %c1735174664_i64, %c502604180_i64 : i64
        %315 = index.maxs %304, %c5
        %316 = tensor.empty() : tensor<4x7x4xf32>
        %317 = arith.minui %c1057443338_i32, %c1508809544_i32 : i32
        %318 = arith.shrui %c1508809544_i32, %c1508809544_i32 : i32
        memref.copy %alloc_15, %alloc_3 : memref<6x6x4xi32> to memref<6x6x4xi32>
        %319 = vector.reduction <minsi>, %95 : vector<4xi1> into i1
        %320 = memref.atomic_rmw minu %c-14695_i16, %alloc_7[%c4, %c0, %c1] : (i16, memref<6x6x4xi16>) -> i16
        %321 = index.floordivs %c10, %74
        %322 = index.sizeof
        %323 = math.tan %14 : tensor<6x4x4xf32>
        linalg.yield %cst : f32
      } -> tensor<6x4x4xf32>
      %280 = affine.apply affine_map<(d0) -> ((d0 ceildiv 4) mod 32)>(%84)
      %281 = math.log10 %8 : tensor<6x6x4xf32>
      %282 = math.round %17 : tensor<6x6x4xf16>
      %283 = vector.insertelement %true, %94[%c14 : index] : vector<4xi1>
      %284 = math.log %11 : tensor<4x7x4xf32>
      %285 = affine.max affine_map<(d0, d1, d2) -> (d1 ceildiv 16 + (d1 + (-d2) floordiv 16) * 64, d1 ceildiv 16 + (d1 + (-d2) floordiv 16) * 64, d0)>(%84, %c6, %55)
      %286 = vector.create_mask %c0, %c0, %c1 : vector<6x6x4xi1>
      %287 = arith.ceildivsi %c1343137369_i32, %c153688669_i32 : i32
      %288 = vector.broadcast %c-22385_i16 : i16 to vector<4x7x4xi16>
      %289 = vector.broadcast %true : i1 to vector<4x7x4xi1>
      %290 = vector.broadcast %c978253761_i32 : i32 to vector<4x7x4xi32>
      %291 = vector.gather %0[%c1, %c10, %c7] [%290], %289, %288 : tensor<6x6x4xi16>, vector<4x7x4xi32>, vector<4x7x4xi1>, vector<4x7x4xi16> into vector<4x7x4xi16>
      %292 = scf.execute_region -> tensor<4x7x4xf16> {
        %inserted = tensor.insert %cst_18 into %17[%c5, %c2, %c2] : tensor<6x6x4xf16>
        %294 = vector.broadcast %true : i1 to vector<4x4xi1>
        %295 = vector.insert %294, %273 [0] : vector<4x4xi1> into vector<6x4x4xi1>
        %expanded_46 = tensor.expand_shape %11 [[0], [1], [2, 3]] : tensor<4x7x4xf32> into tensor<4x7x4x1xf32>
        %296 = index.divs %85, %78
        %297 = vector.flat_transpose %95 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
        %298 = index.mul %296, %c14
        %299 = index.mul %c10, %121
        %300 = index.castu %50 : index to i32
        %splat_47 = tensor.splat %cst_0 : tensor<6x6x4xf32>
        %301 = vector.broadcast %cst : f32 to vector<4x7x4xf32>
        %302 = vector.fma %301, %52, %118 : vector<4x7x4xf32>
        %303 = arith.addi %c-22385_i16, %c-9479_i16 : i16
        %304 = arith.minui %c1057443338_i32, %c1343137369_i32 : i32
        %305 = vector.insertelement %true, %297[%rank : index] : vector<4xi1>
        %306 = index.floordivs %c13, %108
        %307 = index.maxs %78, %c15
        %alloca_48 = memref.alloca() : memref<6x4x4xf32>
        scf.yield %from_elements : tensor<4x7x4xf16>
      }
      %293 = tensor.empty() : tensor<6x6x4xi64>
      scf.yield %293 : tensor<6x6x4xi64>
    }
    default {
      %273 = vector.broadcast %true : i1 to vector<6x4xi1>
      %dest_46, %accumulated_value_47 = vector.scan <add>, %113, %273 {inclusive = false, reduction_dim = 0 : i64} : vector<6x6x4xi1>, vector<6x4xi1>
      %274 = tensor.empty(%84, %98) : tensor<4x?x?xf32>
      %275 = scf.index_switch %c13 -> f32 
      case 1 {
        %287 = arith.shrui %c1057443338_i32, %c978253761_i32 : i32
        %288 = math.ctpop %12 : tensor<4x7x4xi32>
        %expanded_51 = tensor.expand_shape %1 [[0], [1], [2, 3]] : tensor<6x4x4xf32> into tensor<6x4x4x1xf32>
        %289 = bufferization.clone %alloc_7 : memref<6x6x4xi16> to memref<6x6x4xi16>
        %290 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 * -8, -d0, d0 floordiv 32)>(%55, %c9, %c3, %55)
        %inserted = tensor.insert %cst_18 into %9[%c1, %c2, %c2] : tensor<6x6x4xf16>
        %291 = math.absf %11 : tensor<4x7x4xf32>
        %292 = affine.load %alloc_8[%c6, %c9, %c8] : memref<4x7x4xi64>
        %293 = math.powf %15, %15 : tensor<6x6x4xf16>
        %294 = index.sub %121, %c4
        %295 = vector.insertelement %true, %49[%50 : index] : vector<1xi1>
        %alloc_52 = memref.alloc() : memref<6x6x4xi1>
        %296 = memref.atomic_rmw addi %65, %alloc_6[%c4, %c5, %c3] : (i64, memref<6x6x4xi64>) -> i64
        %297 = bufferization.clone %alloc_17 : memref<7xf32> to memref<7xf32>
        %298 = vector.flat_transpose %49 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %299 = math.powf %cst_18, %cst_18 : f16
        scf.yield %cst_0 : f32
      }
      default {
        %287 = arith.remf %cst, %cst : f32
        %288 = arith.mulf %cst_0, %cst_0 : f32
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_51 = arith.constant 0 : i32
        %289 = vector.transfer_read %alloc_15[%c15, %c6, %c3], %c0_i32_51 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : memref<6x6x4xi32>, vector<6xi32>
        %290 = index.add %c7, %50
        %291 = arith.shli %65, %c1735174664_i64 : i64
        %292 = arith.shli %c0_i32, %c0_i32 : i32
        %293 = index.divs %c4, %85
        %294 = arith.shli %c1343137369_i32, %c1508809544_i32 : i32
        %295 = arith.remsi %c1163971614_i64, %65 : i64
        %296 = bufferization.clone %alloc_15 : memref<6x6x4xi32> to memref<6x6x4xi32>
        %297 = math.absf %11 : tensor<4x7x4xf32>
        %298 = arith.shli %c502604180_i64, %c1735174664_i64 : i64
        %collapsed_52 = tensor.collapse_shape %2 [[0, 1], [2]] : tensor<6x6x4xi32> into tensor<36x4xi32>
        %299 = arith.ceildivsi %c-22385_i16, %c-14695_i16 : i16
        %300 = vector.shuffle %95, %49 [0, 3] : vector<4xi1>, vector<1xi1>
        %301 = vector.matrix_multiply %122, %122 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        scf.yield %cst : f32
      }
      %276 = math.ceil %6 : tensor<6x4x4xf16>
      %alloc_48 = memref.alloc() : memref<4x6xi32>
      %277 = tensor.empty() : tensor<36x6xi32>
      %278 = linalg.matmul ins(%96, %alloc_48 : tensor<36x4xi32>, memref<4x6xi32>) outs(%277 : tensor<36x6xi32>) -> tensor<36x6xi32>
      affine.for %arg1 = 0 to 49 {
      }
      %rank_49 = tensor.rank %12 : tensor<4x7x4xi32>
      %279 = bufferization.clone %39 : memref<6x6x4xi32> to memref<6x6x4xi32>
      %280 = vector.broadcast %true : i1 to vector<4x4xi1>
      %281 = vector.outerproduct %94, %94, %280 {kind = #vector.kind<xor>} : vector<4xi1>, vector<4xi1>
      %282 = arith.shrsi %c1508809544_i32, %c1508809544_i32 : i32
      %283 = math.ctlz %65 : i64
      %collapsed_50 = tensor.collapse_shape %3 [[0, 1], [2]] : tensor<4x7x4xi32> into tensor<28x4xi32>
      affine.for %arg1 = 0 to 126 {
      }
      %284 = math.tan %15 : tensor<6x6x4xf16>
      %285 = arith.addf %cst, %cst : f32
      memref.copy %alloc_14, %alloc : memref<6x4x4xf16> to memref<6x4x4xf16>
      %286 = tensor.empty() : tensor<6x6x4xi64>
      scf.yield %286 : tensor<6x6x4xi64>
    }
    %127 = vector.load %alloc_9[%c4, %c2, %c1] : memref<6x6x4xi32>, vector<4x7x4xi32>
    %128 = math.ceil %11 : tensor<4x7x4xf32>
    %generated_24 = tensor.generate %c7, %26, %c13 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %273 = vector.reduction <maxf>, %122 : vector<4xf32> into f32
      %274 = vector.broadcast %c1735174664_i64 : i64 to vector<6x6x4xi64>
      %275 = vector.gather %alloc_6[%50, %78, %78] [%92], %113, %274 : memref<6x6x4xi64>, vector<6x6x4xi32>, vector<6x6x4xi1>, vector<6x6x4xi64> into vector<6x6x4xi64>
      %splat_46 = tensor.splat %c1508809544_i32 : tensor<6x6x4xi32>
      %cst_47 = arith.constant 1.000000e+00 : f32
      %276 = vector.transfer_read %11[%c15, %arg3, %50], %cst_47 : tensor<4x7x4xf32>, vector<f32>
      tensor.yield %cst_47 : f32
    } : tensor<?x?x?xf32>
    %129 = vector.broadcast %c153688669_i32 : i32 to vector<7xi32>
    %130 = vector.broadcast %true : i1 to vector<7xi1>
    %131 = vector.maskedload %alloc_13[%c5, %c2, %c2], %130, %129 : memref<6x6x4xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
    %132 = bufferization.clone %alloc_7 : memref<6x6x4xi16> to memref<6x6x4xi16>
    %133 = vector.broadcast %123 : i16 to vector<7xi16>
    %134 = vector.maskedload %132[%c1, %c2, %c0], %130, %133 : memref<6x6x4xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
    %135 = vector.bitcast %89 : vector<6x6x4xf32> to vector<6x6x4xf32>
    %136 = math.log %10 : tensor<6x4x4xf16>
    %137 = arith.divsi %c153688669_i32, %c1343137369_i32 : i32
    %138 = vector.broadcast %cst_0 : f32 to vector<4x4xf32>
    %139 = vector.outerproduct %122, %122, %138 {kind = #vector.kind<add>} : vector<4xf32>, vector<4xf32>
    %140 = math.round %8 : tensor<6x6x4xf32>
    %141 = vector.broadcast %c1343137369_i32 : i32 to vector<4xi32>
    %142 = vector.maskedload %25[%c0, %c2, %c3], %95, %141 : memref<6x6x4xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
    %143 = arith.minsi %c-9479_i16, %c-9479_i16 : i16
    scf.execute_region {
      %273 = bufferization.clone %alloc_13 : memref<6x6x4xi32> to memref<6x6x4xi32>
      %274 = vector.broadcast %cst_0 : f32 to vector<6x6x4xf32>
      %275 = vector.fma %274, %88, %274 : vector<6x6x4xf32>
      %276 = math.exp %14 : tensor<6x4x4xf32>
      %277 = arith.subi %c1163971614_i64, %c502604180_i64 : i64
      %278 = arith.floordivsi %c1343137369_i32, %c978253761_i32 : i32
      %279 = math.log10 %cst_0 : f32
      %280 = index.mul %c15, %84
      %281 = vector.flat_transpose %134 {columns = 7 : i32, rows = 1 : i32} : vector<7xi16> -> vector<7xi16>
      %282 = affine.for %arg1 = 0 to 27 iter_args(%arg2 = %84) -> (index) {
        affine.yield %53 : index
      }
      %283 = memref.atomic_rmw maxf %cst_18, %alloc_14[%c2, %c1, %c1] : (f16, memref<6x4x4xf16>) -> f16
      affine.store %cst_0, %alloc_4[%c7, %c1, %c5] : memref<4x7x4xf32>
      memref.assume_alignment %alloc_12, 2 : memref<6x6x4xi16>
      %284 = vector.broadcast %true : i1 to vector<4x7x4xi1>
      %285 = arith.ceildivsi %c-22385_i16, %c-9479_i16 : i16
      %286 = index.sizeof
      %287 = vector.broadcast %true : i1 to vector<4x4xi1>
      %288 = vector.outerproduct %94, %95, %287 {kind = #vector.kind<maxsi>} : vector<4xi1>, vector<4xi1>
      scf.yield
    }
    %144 = vector.insertelement %c1508809544_i32, %141[%85 : index] : vector<4xi32>
    %145 = arith.remsi %c1735174664_i64, %c502604180_i64 : i64
    %146 = arith.divsi %c-22385_i16, %c-9479_i16 : i16
    %147 = math.round %1 : tensor<6x4x4xf32>
    %148 = math.ctpop %5 : tensor<6x4x4xi1>
    %149 = math.expm1 %10 : tensor<6x4x4xf16>
    %150 = affine.max affine_map<(d0, d1) -> (0, 0, d0 * 64, -32)>(%53, %26)
    %151 = index.maxu %c10, %78
    %152 = arith.remf %cst_18, %cst_18 : f16
    %153 = arith.ceildivsi %65, %c1167392835_i64 : i64
    %154 = vector.broadcast %cst_0 : f32 to vector<6x6x4xf32>
    %155 = vector.fma %154, %88, %154 : vector<6x6x4xf32>
    %156 = vector.flat_transpose %142 {columns = 2 : i32, rows = 2 : i32} : vector<4xi32> -> vector<4xi32>
    %157 = index.mul %c12, %c2
    %158 = index.mul %c2, %85
    %expanded_25 = tensor.expand_shape %8 [[0], [1], [2, 3]] : tensor<6x6x4xf32> into tensor<6x6x4x1xf32>
    %alloc_26 = memref.alloc() : memref<4xi32>
    %159 = tensor.empty() : tensor<6xi32>
    %160 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_26, %alloc_26, %159 : memref<4xi32>, memref<4xi32>, tensor<6xi32>) outs(%4 : tensor<6x4x4xi32>) {
    ^bb0(%in: i32, %in_46: i32, %in_47: i32, %out: i32):
      %generated_48 = tensor.generate %26, %26, %55 {
      ^bb0(%arg1: index, %arg2: index, %arg3: index):
        %301 = vector.broadcast %cst_0 : f32 to vector<4x7x4xf32>
        %302 = vector.fma %301, %119, %52 : vector<4x7x4xf32>
        %303 = math.absi %4 : tensor<6x4x4xi32>
        %304 = arith.negf %cst_0 : f32
        %305 = index.ceildivu %c5, %c13
        tensor.yield %true : i1
      } : tensor<?x?x?xi1>
      %273 = vector.reduction <add>, %133 : vector<7xi16> into i16
      %274 = math.atan %8 : tensor<6x6x4xf32>
      %275 = scf.if %true -> (i16) {
        %301 = arith.addi %c1163971614_i64, %c1163971614_i64 : i64
        %302 = arith.andi %c-22385_i16, %c-20042_i16 : i16
        %303 = vector.insert %cst_0, %122 [3] : f32 into vector<4xf32>
        bufferization.dealloc_tensor %23 : tensor<f32>
        %304 = arith.divf %cst_0, %cst : f32
        %305 = arith.minui %c502604180_i64, %c1735174664_i64 : i64
        %306 = math.ceil %15 : tensor<6x6x4xf16>
        %307 = arith.divsi %c-22385_i16, %123 : i16
        scf.yield %c-22385_i16 : i16
      } else {
        %301 = vector.multi_reduction <maxui>, %156, %in_46 [0] : vector<4xi32> to i32
        bufferization.dealloc_tensor %3 : tensor<4x7x4xi32>
        %302 = arith.shrui %c-22385_i16, %c-22385_i16 : i16
        %303 = index.floordivs %108, %98
        %alloc_50 = memref.alloc() : memref<4x7x4xf32>
        memref.copy %alloc_4, %alloc_50 : memref<4x7x4xf32> to memref<4x7x4xf32>
        %304 = arith.subi %c1343137369_i32, %in_47 : i32
        %305 = arith.divsi %c-9479_i16, %123 : i16
        %306 = math.absi %c1057443338_i32 : i32
        scf.yield %c-20042_i16 : i16
      }
      %276 = arith.remsi %true, %true : i1
      %277 = affine.load %alloc[%c12, %c14, %c2] : memref<6x4x4xf16>
      %278 = scf.execute_region -> vector<6x4x4xf32> {
        %301 = vector.matrix_multiply %129, %141 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 4 : i32} : (vector<7xi32>, vector<4xi32>) -> vector<28xi32>
        %c782600899_i32 = arith.constant 782600899 : i32
        %302 = vector.multi_reduction <minui>, %20, %true [0] : vector<4xi1> to i1
        %303 = arith.minui %275, %c-14695_i16 : i16
        %304 = vector.reduction <minsi>, %301 : vector<28xi32> into i32
        %305 = bufferization.to_memref %10 : memref<6x4x4xf16>
        %306 = math.log2 %11 : tensor<4x7x4xf32>
        %307 = index.sub %c0, %c9
        %308 = math.tan %8 : tensor<6x6x4xf32>
        %alloc_50 = memref.alloc() : memref<4x6x6xi32>
        memref.copy %alloc_16, %alloc_50 : memref<4x6x6xi32> to memref<4x6x6xi32>
        %309 = math.absi %in_46 : i32
        %310 = vector.matrix_multiply %301, %131 {lhs_columns = 7 : i32, lhs_rows = 4 : i32, rhs_columns = 1 : i32} : (vector<28xi32>, vector<7xi32>) -> vector<4xi32>
        %311 = arith.minsi %c1508809544_i32, %out : i32
        %312 = vector.reduction <maxsi>, %49 : vector<1xi1> into i1
        %313 = tensor.empty(%98, %c7) : tensor<6x?x?xi64>
        %314 = memref.atomic_rmw addf %cst_18, %alloc_11[%c1, %c2, %c0] : (f16, memref<6x6x4xf16>) -> f16
        scf.yield %77 : vector<6x4x4xf32>
      }
      %279 = arith.shrui %c1343137369_i32, %in_46 : i32
      %280 = bufferization.clone %39 : memref<6x6x4xi32> to memref<6x6x4xi32>
      %281 = vector.broadcast %cst_18 : f16 to vector<6x6x4xf16>
      %282 = vector.gather %9[%rank, %50, %c9] [%92], %113, %281 : tensor<6x6x4xf16>, vector<6x6x4xi32>, vector<6x6x4xi1>, vector<6x6x4xf16> into vector<6x6x4xf16>
      %283 = vector.flat_transpose %122 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
      scf.index_switch %121 
      case 1 {
        %301 = vector.create_mask %50, %158, %c11 : vector<4x7x4xi1>
        %302 = arith.cmpi ugt, %true, %true : i1
        %303 = vector.load %alloc_7[%c2, %c1, %c1] : memref<6x6x4xi16>, vector<6x6x4xi16>
        %304 = arith.divui %123, %c-14695_i16 : i16
        %305 = vector.insertelement %c1057443338_i32, %141[%c0 : index] : vector<4xi32>
        %306 = math.powf %9, %9 : tensor<6x6x4xf16>
        %307 = math.expm1 %22 : tensor<f32>
        %308 = index.mul %98, %c3
        affine.store %in_47, %39[%c7, %c14, %c11] : memref<6x6x4xi32>
        %309 = arith.shrui %c-20042_i16, %c-20042_i16 : i16
        %310 = math.absi %collapsed : tensor<36x4xi32>
        %311 = arith.minui %275, %c-14695_i16 : i16
        %312 = tensor.empty() : tensor<6x6x4xi64>
        %313 = vector.broadcast %c1167392835_i64 : i64 to vector<6x6x4xi64>
        %314 = vector.gather %312[%151, %74, %157] [%92], %113, %313 : tensor<6x6x4xi64>, vector<6x6x4xi32>, vector<6x6x4xi1>, vector<6x6x4xi64> into vector<6x6x4xi64>
        %315 = affine.max affine_map<(d0) -> (d0 mod 8, d0 - d0 mod 16, 0, 0)>(%c12)
        %316 = arith.andi %c1057443338_i32, %in_46 : i32
        %317 = vector.broadcast %c1057443338_i32 : i32 to vector<7x4xi32>
        %dest_50, %accumulated_value_51 = vector.scan <maxui>, %127, %317 {inclusive = false, reduction_dim = 0 : i64} : vector<4x7x4xi32>, vector<7x4xi32>
        scf.yield
      }
      case 2 {
        %c-11157_i16 = arith.constant -11157 : i16
        %collapsed_50 = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<6x4x4xi1> into tensor<24x4xi1>
        %alloca_51 = memref.alloca() : memref<4x7x4xi1>
        %true_52 = index.bool.constant true
        %301 = math.fma %8, %8, %8 : tensor<6x6x4xf32>
        %302 = arith.andi %c1167392835_i64, %c502604180_i64 : i64
        %303 = arith.ceildivsi %c1057443338_i32, %in : i32
        %304 = math.powf %from_elements, %from_elements : tensor<4x7x4xf16>
        affine.store %c-22385_i16, %alloc_12[%c2, %c0, %c14] : memref<6x6x4xi16>
        %inserted = tensor.insert %277 into %10[%c0, %c0, %c2] : tensor<6x4x4xf16>
        %alloc_53 = memref.alloc() : memref<6x4x4xf32>
        %305 = vector.gather %alloc_53[%c4, %151, %c7] [%92], %113, %135 : memref<6x4x4xf32>, vector<6x6x4xi32>, vector<6x6x4xi1>, vector<6x6x4xf32> into vector<6x6x4xf32>
        %306 = arith.addf %cst_18, %cst_18 : f16
        %307 = memref.atomic_rmw maxs %c1167392835_i64, %alloc_8[%c0, %c6, %c0] : (i64, memref<4x7x4xi64>) -> i64
        %308 = vector.extract %88[3] : vector<6x6x4xf32>
        %expanded_54 = tensor.expand_shape %104 [[0, 1]] : tensor<7xi32> into tensor<7x1xi32>
        %309 = vector.matrix_multiply %141, %142 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi32>, vector<4xi32>) -> vector<1xi32>
        scf.yield
      }
      case 3 {
        %301 = vector.reduction <minui>, %133 : vector<7xi16> into i16
        %302 = arith.cmpi ult, %in_47, %c978253761_i32 : i32
        %303 = index.mul %93, %c12
        %304 = math.ipowi %c-14695_i16, %c-22385_i16 : i16
        %extracted = tensor.extract %12[%c3, %c6, %c2] : tensor<4x7x4xi32>
        %alloca_50 = memref.alloca() : memref<4x7x4xi1>
        %305 = index.ceildivs %c8, %70
        %306 = index.sub %26, %85
        %307 = vector.matrix_multiply %283, %122 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %308 = arith.divf %277, %cst_18 : f16
        %309 = index.ceildivu %c9, %55
        %alloc_51 = memref.alloc() : memref<6x6x4xf32>
        %310 = vector.gather %alloc_51[%c0, %rank, %303] [%92], %113, %135 : memref<6x6x4xf32>, vector<6x6x4xi32>, vector<6x6x4xi1>, vector<6x6x4xf32> into vector<6x6x4xf32>
        %311 = index.divu %157, %c8
        %312 = math.round %15 : tensor<6x6x4xf16>
        %313 = bufferization.clone %alloc_13 : memref<6x6x4xi32> to memref<6x6x4xi32>
        %expanded_52 = tensor.expand_shape %10 [[0], [1], [2, 3]] : tensor<6x4x4xf16> into tensor<6x4x4x1xf16>
        scf.yield
      }
      case 4 {
        %301 = arith.remf %cst_0, %cst_0 : f32
        %302 = arith.divsi %c-20042_i16, %c-22385_i16 : i16
        %alloca_50 = memref.alloca() : memref<6x4x4xi32>
        %303 = index.casts %c978253761_i32 : i32 to index
        %true_51 = index.bool.constant true
        bufferization.dealloc_tensor %8 : tensor<6x6x4xf32>
        %304 = vector.matrix_multiply %95, %20 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
        %305 = arith.ceildivsi %true, %true_51 : i1
        %306 = arith.shrui %c1735174664_i64, %c502604180_i64 : i64
        %true_52 = arith.constant true
        %307 = math.expm1 %1 : tensor<6x4x4xf32>
        %rank_53 = tensor.rank %2 : tensor<6x6x4xi32>
        %308 = arith.xori %275, %c-22385_i16 : i16
        %309 = math.rsqrt %8 : tensor<6x6x4xf32>
        %collapsed_54 = tensor.collapse_shape %17 [[0, 1], [2]] : tensor<6x6x4xf16> into tensor<36x4xf16>
        %310 = vector.flat_transpose %129 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
        scf.yield
      }
      default {
        %301 = math.ipowi %12, %12 : tensor<4x7x4xi32>
        %302 = vector.broadcast %277 : f16 to vector<6xf16>
        %303 = vector.broadcast %true : i1 to vector<6xi1>
        %304 = vector.maskedload %alloc_14[%c4, %c3, %c2], %303, %302 : memref<6x4x4xf16>, vector<6xi1>, vector<6xf16> into vector<6xf16>
        %305 = arith.divui %275, %123 : i16
        %306 = math.expm1 %cst_18 : f16
        %307 = math.powf %277, %cst_18 : f16
        %308 = arith.remf %cst_18, %277 : f16
        %309 = affine.load %alloc_8[%c10, %c7, %c1] : memref<4x7x4xi64>
        %310 = math.ctpop %2 : tensor<6x6x4xi32>
        %311 = vector.broadcast %cst : f32 to vector<6x6x4xf32>
        %312 = vector.fma %311, %72, %154 : vector<6x6x4xf32>
        %313 = index.add %c7, %c13
        %314 = math.exp %23 : tensor<f32>
        %315 = vector.maskedload %alloc_13[%c5, %c1, %c2], %20, %156 : memref<6x6x4xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
        %316 = vector.broadcast %120 : index to vector<7xindex>
        %317 = vector.broadcast %cst_18 : f16 to vector<7xf16>
        vector.scatter %alloc_1[%c3, %c2, %c3] [%316], %130, %317 : memref<4x7x4xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
        %318 = arith.shli %123, %275 : i16
        bufferization.dealloc_tensor %2 : tensor<6x6x4xi32>
        %319 = arith.minf %cst_18, %277 : f16
      }
      %284 = affine.if affine_set<(d0) : (d0 - 128 >= 0, d0 >= 0)>(%c7) -> memref<6x6x4xi64> {
        %301 = vector.reduction <maxsi>, %20 : vector<4xi1> into i1
        %302 = index.ceildivs %78, %74
        %303 = vector.load %25[%c1, %c4, %c3] : memref<6x6x4xi32>, vector<6x6x4xi32>
        %304 = index.sub %79, %53
        %305 = math.log2 %14 : tensor<6x4x4xf32>
        %alloc_50 = memref.alloc() : memref<4x7x4xi1>
        %306 = math.roundeven %22 : tensor<f32>
        %307 = affine.apply affine_map<(d0, d1) -> ((-d1) floordiv 16 - 4)>(%c1, %85)
        affine.yield %alloc_6 : memref<6x6x4xi64>
      } else {
        %301 = vector.flat_transpose %122 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        %rank_50 = tensor.rank %8 : tensor<6x6x4xf32>
        %302 = math.log %expanded : tensor<6x6x4x1xf16>
        %cast_51 = tensor.cast %22 : tensor<f32> to tensor<f32>
        %303 = math.tanh %22 : tensor<f32>
        %304 = math.rsqrt %9 : tensor<6x6x4xf16>
        %305 = index.ceildivs %c4, %150
        %306 = affine.load %132[%c10, %c3, %c12] : memref<6x6x4xi16>
        affine.yield %alloc_6 : memref<6x6x4xi64>
      }
      %285 = vector.broadcast %cst : f32 to vector<6x6x4xf32>
      %286 = vector.fma %285, %73, %154 : vector<6x6x4xf32>
      %287 = vector.flat_transpose %20 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
      %288 = index.mul %c7, %c15
      %289 = arith.negf %cst_0 : f32
      scf.if %true {
        %301 = arith.shli %c-20042_i16, %c-20042_i16 : i16
        %302 = math.absf %10 : tensor<6x4x4xf16>
        memref.copy %alloc_14, %alloc : memref<6x4x4xf16> to memref<6x4x4xf16>
        %303 = vector.shuffle %73, %88 [0, 1, 3, 4, 7, 10, 11] : vector<6x6x4xf32>, vector<6x6x4xf32>
        %304 = math.tan %14 : tensor<6x4x4xf32>
        %305 = index.castu %55 : index to i32
        %306 = index.sub %151, %c4
        memref.assume_alignment %alloc_15, 1 : memref<6x6x4xi32>
      }
      %290 = math.absi %5 : tensor<6x4x4xi1>
      %291 = arith.shrui %c1735174664_i64, %65 : i64
      %292 = vector.create_mask %50, %c11, %50 : vector<4x7x4xi1>
      %293 = math.cttz %2 : tensor<6x6x4xi32>
      %294 = index.divs %84, %c0
      %295 = math.exp %21 : tensor<7xf32>
      vector.print %141 : vector<4xi32>
      %rank_49 = tensor.rank %23 : tensor<f32>
      %296 = arith.cmpi slt, %123, %c-9479_i16 : i16
      affine.store %c1167392835_i64, %alloc_6[%c1, %c13, %c6] : memref<6x6x4xi64>
      %297 = arith.cmpi ugt, %c1167392835_i64, %c1735174664_i64 : i64
      %298 = index.mul %26, %79
      %299 = affine.load %132[%c9, %c5, %c0] : memref<6x6x4xi16>
      %300 = vector.insertelement %cst, %122[%rank : index] : vector<4xf32>
      linalg.yield %c978253761_i32 : i32
    } -> tensor<6x4x4xi32>
    %161 = arith.ceildivsi %123, %c-20042_i16 : i16
    scf.if %true {
      %273 = index.maxu %c11, %c14
      %rank_46 = tensor.rank %generated_24 : tensor<?x?x?xf32>
      %274 = vector.broadcast %c1508809544_i32 : i32 to vector<6x4xi32>
      %dest_47, %accumulated_value_48 = vector.scan <minsi>, %60, %274 {inclusive = false, reduction_dim = 2 : i64} : vector<6x4x4xi32>, vector<6x4xi32>
      %275 = arith.divui %c502604180_i64, %c1167392835_i64 : i64
      %276 = index.sub %c6, %c5
      %277 = bufferization.to_memref %111 : memref<36x4xi32>
      %278 = arith.remui %c1343137369_i32, %c978253761_i32 : i32
      %splat_49 = tensor.splat %cst_0 : tensor<4x7x4xf32>
    } else {
      %273 = math.round %cst_0 : f32
      %274 = arith.muli %true, %true : i1
      %false = index.bool.constant false
      %275 = index.maxu %74, %c12
      %c0_i32 = arith.constant 0 : i32
      %276 = vector.transfer_read %3[%c8, %c1, %108], %c0_i32 : tensor<4x7x4xi32>, vector<i32>
      %277 = math.log %expanded : tensor<6x6x4x1xf16>
      %278 = vector.splat %c4 : vector<6x6x4xindex>
      %279 = math.roundeven %9 : tensor<6x6x4xf16>
    }
    %162 = bufferization.clone %alloc_15 : memref<6x6x4xi32> to memref<6x6x4xi32>
    %163 = math.exp %cst_0 : f32
    %164 = math.log10 %21 : tensor<7xf32>
    %165 = index.divu %108, %150
    %166 = arith.shrsi %true, %true : i1
    %167 = arith.cmpi ugt, %true, %true : i1
    %168 = affine.max affine_map<(d0, d1, d2) -> ((d0 - d1) floordiv 32 + 64, (d2 floordiv 8) ceildiv 32, d2, (d0 - d1) floordiv 32)>(%157, %c6, %c11)
    %cast_27 = tensor.cast %21 : tensor<7xf32> to tensor<?xf32>
    %169 = index.mul %168, %93
    %170 = memref.load %alloc_3[%c4, %c0, %c0] : memref<6x6x4xi32>
    %171 = index.maxs %c5, %98
    %172 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%5 : tensor<6x4x4xi1>) {
    ^bb0(%out: i1):
      %273 = arith.remf %cst_0, %cst_0 : f32
      %274 = math.exp %from_elements : tensor<4x7x4xf16>
      %275 = arith.shrui %c1343137369_i32, %c1343137369_i32 : i32
      %276 = math.cttz %c-9479_i16 : i16
      vector.print %134 : vector<7xi16>
      %expanded_46 = tensor.expand_shape %6 [[0], [1], [2, 3]] : tensor<6x4x4xf16> into tensor<6x4x4x1xf16>
      %277 = math.powf %1, %14 : tensor<6x4x4xf32>
      %278 = index.sub %151, %53
      %279 = vector.broadcast %108 : index to vector<4xindex>
      vector.scatter %alloc_13[%c4, %c0, %c1] [%279], %95, %141 : memref<6x6x4xi32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
      %280 = tensor.empty(%c8) : tensor<6x?x4xi1>
      %281 = tensor.empty() : tensor<6x6x4xf16>
      %282 = vector.broadcast %cst_0 : f32 to vector<6x4xf32>
      %dest_47, %accumulated_value_48 = vector.scan <maxf>, %88, %282 {inclusive = false, reduction_dim = 0 : i64} : vector<6x6x4xf32>, vector<6x4xf32>
      %283 = bufferization.clone %alloc_10 : memref<6x4x4xi16> to memref<6x4x4xi16>
      %284 = arith.divui %c-14695_i16, %c-22385_i16 : i16
      %285 = arith.divsi %65, %65 : i64
      %286 = index.floordivs %c4, %165
      %287 = vector.matrix_multiply %122, %122 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
      %288 = math.floor %cst_0 : f32
      affine.for %arg1 = 0 to 90 {
      }
      %splat_49 = tensor.splat %123 : tensor<6x4x4xi16>
      %289 = arith.remf %cst, %cst : f32
      bufferization.dealloc_tensor %11 : tensor<4x7x4xf32>
      %290 = vector.matrix_multiply %134, %134 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi16>, vector<7xi16>) -> vector<1xi16>
      %291 = affine.apply affine_map<(d0) -> (d0 * 2)>(%108)
      %292 = vector.matrix_multiply %131, %142 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 4 : i32} : (vector<7xi32>, vector<4xi32>) -> vector<28xi32>
      %293 = vector.broadcast %c502604180_i64 : i64 to vector<6xi64>
      %294 = vector.broadcast %out : i1 to vector<6xi1>
      %295 = vector.maskedload %alloc_8[%c2, %c3, %c1], %294, %293 : memref<4x7x4xi64>, vector<6xi1>, vector<6xi64> into vector<6xi64>
      %296 = scf.execute_region -> memref<4x7x4xi32> {
        %c733897022_i32 = arith.constant 733897022 : i32
        %cast_50 = tensor.cast %10 : tensor<6x4x4xf16> to tensor<?x?x?xf16>
        %300 = vector.create_mask %98, %c9, %169 : vector<6x6x4xi1>
        %301 = arith.xori %c1735174664_i64, %c1167392835_i64 : i64
        %302 = arith.shrui %c1343137369_i32, %c1343137369_i32 : i32
        %303 = arith.shrui %c1057443338_i32, %c153688669_i32 : i32
        %304 = math.expm1 %11 : tensor<4x7x4xf32>
        %305 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 mod 8 + d2 ceildiv 32 + 16, d2, d3 mod 128, d2 + d3 mod 8 - d3 - d1 + 4)>(%286, %53, %98, %c13)
        %306 = vector.insertelement %c1057443338_i32, %141[%55 : index] : vector<4xi32>
        %307 = bufferization.to_memref %collapsed : memref<36x4xi32>
        %308 = math.tan %14 : tensor<6x4x4xf32>
        %rank_51 = tensor.rank %cast_50 : tensor<?x?x?xf16>
        %309 = index.divs %50, %120
        %310 = math.absi %104 : tensor<7xi32>
        %311 = index.mul %c7, %53
        %312 = math.absi %c978253761_i32 : i32
        %alloc_52 = memref.alloc() : memref<4x7x4xi32>
        scf.yield %alloc_52 : memref<4x7x4xi32>
      }
      %297 = math.log %14 : tensor<6x4x4xf32>
      scf.index_switch %93 
      case 1 {
        %300 = arith.maxsi %c978253761_i32, %c1508809544_i32 : i32
        %301 = math.tanh %cst_0 : f32
        %alloca_50 = memref.alloca() : memref<4x7x4xi64>
        %302 = index.castu %123 : i16 to index
        %303 = vector.broadcast %cst : f32 to vector<6x4x4xf32>
        %304 = vector.fma %303, %76, %76 : vector<6x4x4xf32>
        %305 = arith.divf %cst_0, %cst_0 : f32
        %cst_51 = arith.constant 5.491200e+04 : f16
        %306 = math.powf %15, %17 : tensor<6x6x4xf16>
        %307 = math.ctpop %7 : tensor<6x6x4xi32>
        %308 = math.tanh %9 : tensor<6x6x4xf16>
        %309 = arith.shrui %c-14695_i16, %c-20042_i16 : i16
        %310 = arith.addf %cst_0, %cst : f32
        %311 = vector.broadcast %cst_18 : f16 to vector<4x4x4x4xf16>
        %312 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %59, %61, %311 : vector<6x4x4xf16>, vector<6x4x4xf16> into vector<4x4x4x4xf16>
        %313 = arith.shrsi %c1167392835_i64, %c1735174664_i64 : i64
        %314 = arith.minui %c1163971614_i64, %c1167392835_i64 : i64
        %315 = math.ceil %cst_18 : f16
        scf.yield
      }
      case 2 {
        %300 = arith.muli %c502604180_i64, %c1735174664_i64 : i64
        %301 = index.ceildivu %93, %c9
        %302 = vector.insertelement %c-9479_i16, %290[%c0 : index] : vector<1xi16>
        vector.print %142 : vector<4xi32>
        %303 = vector.bitcast %133 : vector<7xi16> to vector<7xi16>
        %304 = vector.broadcast %cst : f32 to vector<6x6x4xf32>
        %305 = math.absf %21 : tensor<7xf32>
        %inserted = tensor.insert %cst_18 into %expanded[%c5, %c1, %c1, %c0] : tensor<6x6x4x1xf16>
        memref.store %c1343137369_i32, %alloc_16[%c3, %c1, %c3] : memref<4x6x6xi32>
        %306 = arith.andi %c1735174664_i64, %65 : i64
        %307 = math.exp %1 : tensor<6x4x4xf32>
        %false = arith.constant false
        %308 = index.casts %c978253761_i32 : i32 to index
        %309 = math.log1p %11 : tensor<4x7x4xf32>
        %310 = arith.mulf %cst, %cst_0 : f32
        %311 = arith.negf %cst_0 : f32
        scf.yield
      }
      case 3 {
        %300 = arith.negf %cst_0 : f32
        %301 = arith.divf %cst_0, %cst_0 : f32
        %302 = math.exp %10 : tensor<6x4x4xf16>
        %303 = math.rsqrt %expanded : tensor<6x6x4x1xf16>
        %304 = vector.extract_strided_slice %76 {offsets = [1], sizes = [1], strides = [1]} : vector<6x4x4xf32> to vector<1x4x4xf32>
        %305 = arith.shrsi %c-14695_i16, %c-22385_i16 : i16
        %306 = math.ctpop %4 : tensor<6x4x4xi32>
        %307 = vector.flat_transpose %130 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
        %308 = arith.negf %cst_0 : f32
        %309 = math.exp %9 : tensor<6x6x4xf16>
        %310 = arith.maxsi %123, %c-14695_i16 : i16
        %311 = math.log %8 : tensor<6x6x4xf32>
        %312 = arith.andi %c978253761_i32, %c1057443338_i32 : i32
        %313 = math.cttz %reduced : tensor<6x6xi32>
        %314 = index.maxu %c0, %79
        %315 = index.add %151, %93
        scf.yield
      }
      default {
        %300 = arith.subi %c1057443338_i32, %c978253761_i32 : i32
        %301 = index.maxs %c8, %c2
        %false = index.bool.constant false
        %rank_50 = tensor.rank %13 : tensor<4x7x4xi32>
        memref.store %c-22385_i16, %132[%c2, %c2, %c3] : memref<6x6x4xi16>
        %302 = math.rsqrt %expanded_25 : tensor<6x6x4x1xf32>
        %c1574838995_i32 = arith.constant 1574838995 : i32
        %303 = bufferization.clone %alloc : memref<6x4x4xf16> to memref<6x4x4xf16>
        %304 = memref.atomic_rmw maxf %cst, %alloc_4[%c1, %c2, %c0] : (f32, memref<4x7x4xf32>) -> f32
        %305 = vector.flat_transpose %131 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
        %306 = index.divs %98, %168
        %307 = index.add %98, %55
        %308 = index.add %c3, %158
        %false_51 = arith.constant false
        %309 = vector.transfer_read %5[%c10, %150, %c7], %false_51 : tensor<6x4x4xi1>, vector<i1>
        %310 = vector.broadcast %cst : f32 to vector<6x6x4xf32>
        %311 = vector.fma %310, %89, %135 : vector<6x6x4xf32>
        affine.store %c1508809544_i32, %162[%c13, %c10, %c2] : memref<6x6x4xi32>
      }
      %298 = arith.ceildivsi %c153688669_i32, %c1343137369_i32 : i32
      bufferization.dealloc_tensor %2 : tensor<6x6x4xi32>
      %299 = math.log %16 : tensor<6x6x4xf16>
      linalg.yield %true : i1
    } -> tensor<6x4x4xi1>
    %173 = vector.maskedload %162[%c1, %c0, %c3], %95, %141 : memref<6x6x4xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
    %174 = arith.divf %cst_0, %cst : f32
    %175 = math.expm1 %6 : tensor<6x4x4xf16>
    %176 = arith.ceildivsi %c1343137369_i32, %c978253761_i32 : i32
    %177 = index.castu %c1057443338_i32 : i32 to index
    %178 = math.log1p %14 : tensor<6x4x4xf32>
    %from_elements_28 = tensor.from_elements %c502604180_i64, %c1163971614_i64, %65, %c1735174664_i64, %c1735174664_i64, %65, %c502604180_i64, %c1735174664_i64, %c1163971614_i64, %c1735174664_i64, %c1163971614_i64, %c1735174664_i64, %c1163971614_i64, %c1167392835_i64, %c502604180_i64, %c502604180_i64, %c1735174664_i64, %65, %65, %65, %65, %c1167392835_i64, %c1163971614_i64, %c502604180_i64, %c1735174664_i64, %c502604180_i64, %c502604180_i64, %c1167392835_i64, %c1735174664_i64, %c1167392835_i64, %c1163971614_i64, %c1735174664_i64, %c1167392835_i64, %65, %c1167392835_i64, %c1163971614_i64, %c502604180_i64, %c1735174664_i64, %c502604180_i64, %c1167392835_i64, %c502604180_i64, %65, %c1167392835_i64, %65, %c1163971614_i64, %c502604180_i64, %c502604180_i64, %c1163971614_i64, %c502604180_i64, %c1167392835_i64, %c1163971614_i64, %c1163971614_i64, %c1735174664_i64, %c1167392835_i64, %c1735174664_i64, %c1735174664_i64, %c1735174664_i64, %65, %c1735174664_i64, %c1167392835_i64, %c1163971614_i64, %c502604180_i64, %c1735174664_i64, %c1163971614_i64, %c1167392835_i64, %c502604180_i64, %c1163971614_i64, %c1167392835_i64, %c502604180_i64, %c502604180_i64, %c1735174664_i64, %65, %c1167392835_i64, %65, %c1735174664_i64, %c502604180_i64, %c1167392835_i64, %c502604180_i64, %c502604180_i64, %c1735174664_i64, %c1167392835_i64, %c1167392835_i64, %c1735174664_i64, %c1735174664_i64, %c502604180_i64, %c1163971614_i64, %c1163971614_i64, %c1167392835_i64, %c1167392835_i64, %65, %c1735174664_i64, %65, %c502604180_i64, %c1167392835_i64, %65, %c1735174664_i64, %c1163971614_i64, %65, %c1163971614_i64, %65, %c1735174664_i64, %c1167392835_i64, %c1163971614_i64, %c502604180_i64, %c502604180_i64, %65, %c502604180_i64, %c1735174664_i64, %c1167392835_i64, %c502604180_i64, %65, %c1167392835_i64, %c1163971614_i64, %65, %c1735174664_i64, %c1735174664_i64, %c1167392835_i64, %c1167392835_i64, %c502604180_i64, %c1735174664_i64, %c1735174664_i64, %c502604180_i64, %c1167392835_i64, %c1735174664_i64, %c1167392835_i64, %c1163971614_i64, %65, %c1735174664_i64, %c1167392835_i64, %c1167392835_i64, %c502604180_i64, %c1735174664_i64, %c502604180_i64, %c502604180_i64, %c1167392835_i64, %c1735174664_i64, %c1167392835_i64, %c1167392835_i64, %c1735174664_i64, %c1735174664_i64, %c502604180_i64, %c1163971614_i64, %c1735174664_i64, %c1163971614_i64 : tensor<6x6x4xi64>
    memref.store %c1057443338_i32, %alloc_5[%c4, %c1, %c0] : memref<6x6x4xi32>
    %179 = arith.shrsi %c1735174664_i64, %65 : i64
    %180 = math.exp %cst : f32
    %181 = vector.reduction <xor>, %129 : vector<7xi32> into i32
    %splat = tensor.splat %c1167392835_i64 : tensor<6x6x4xi64>
    bufferization.dealloc_tensor %4 : tensor<6x4x4xi32>
    %alloc_29 = memref.alloc() : memref<4x7x4xi32>
    memref.tensor_store %3, %alloc_29 : memref<4x7x4xi32>
    %from_elements_30 = tensor.from_elements %c-9479_i16, %123, %c-20042_i16, %c-20042_i16, %c-20042_i16, %c-14695_i16, %123, %c-14695_i16, %c-9479_i16, %c-14695_i16, %c-20042_i16, %c-22385_i16, %c-20042_i16, %c-20042_i16, %123, %123, %c-9479_i16, %c-22385_i16, %c-14695_i16, %c-14695_i16, %c-20042_i16, %c-14695_i16, %123, %c-20042_i16, %c-9479_i16, %123, %c-9479_i16, %123, %c-14695_i16, %c-20042_i16, %c-9479_i16, %c-9479_i16, %c-14695_i16, %123, %c-9479_i16, %123, %c-14695_i16, %c-14695_i16, %c-14695_i16, %123, %123, %c-14695_i16, %c-22385_i16, %c-14695_i16, %c-14695_i16, %c-20042_i16, %c-20042_i16, %c-14695_i16, %c-14695_i16, %c-22385_i16, %123, %c-20042_i16, %c-9479_i16, %c-9479_i16, %c-20042_i16, %c-9479_i16, %c-9479_i16, %c-9479_i16, %123, %123, %c-22385_i16, %123, %123, %c-14695_i16, %c-9479_i16, %c-14695_i16, %c-14695_i16, %123, %123, %c-9479_i16, %c-22385_i16, %c-14695_i16, %c-20042_i16, %123, %c-14695_i16, %123, %c-22385_i16, %c-14695_i16, %123, %c-14695_i16, %c-22385_i16, %123, %123, %c-14695_i16, %c-20042_i16, %c-20042_i16, %c-20042_i16, %c-20042_i16, %c-22385_i16, %c-22385_i16, %c-22385_i16, %c-9479_i16, %c-20042_i16, %123, %c-9479_i16, %c-14695_i16, %123, %123, %c-22385_i16, %c-14695_i16, %c-14695_i16, %c-20042_i16, %c-20042_i16, %c-9479_i16, %c-14695_i16, %c-20042_i16, %c-22385_i16, %c-20042_i16, %123, %c-22385_i16, %c-20042_i16, %c-14695_i16, %c-9479_i16, %c-14695_i16, %c-20042_i16, %c-20042_i16, %c-22385_i16, %123, %c-9479_i16, %c-20042_i16, %c-9479_i16, %c-20042_i16, %c-20042_i16, %c-9479_i16, %c-14695_i16, %123, %123, %123, %c-20042_i16, %123, %c-9479_i16, %c-9479_i16, %c-22385_i16, %c-14695_i16, %c-9479_i16, %c-9479_i16, %c-22385_i16, %c-9479_i16, %c-22385_i16, %123, %c-9479_i16, %c-20042_i16, %c-22385_i16, %c-22385_i16 : tensor<6x6x4xi16>
    %182 = vector.gather %3[%c3, %93, %50] [%60], %42, %60 : tensor<4x7x4xi32>, vector<6x4x4xi32>, vector<6x4x4xi1>, vector<6x4x4xi32> into vector<6x4x4xi32>
    %183 = math.absf %14 : tensor<6x4x4xf32>
    %184 = math.round %9 : tensor<6x6x4xf16>
    %185 = vector.maskedload %alloc_15[%c4, %c5, %c1], %130, %131 : memref<6x6x4xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
    %186 = math.absf %21 : tensor<7xf32>
    %187 = vector.create_mask %c2, %c0, %168 : vector<4x7x4xi1>
    %188 = arith.andi %123, %c-20042_i16 : i16
    %189 = affine.apply affine_map<(d0) -> (d0 mod 2)>(%26)
    %190 = index.ceildivu %c7, %74
    %191 = math.atan %cst : f32
    %alloc_31 = memref.alloc() : memref<7xf32>
    memref.copy %alloc_17, %alloc_31 : memref<7xf32> to memref<7xf32>
    %192 = vector.broadcast %cst : f32 to vector<6x4xf32>
    %dest, %accumulated_value = vector.scan <mul>, %155, %192 {inclusive = false, reduction_dim = 1 : i64} : vector<6x6x4xf32>, vector<6x4xf32>
    %193 = memref.atomic_rmw assign %c1508809544_i32, %alloc_9[%c1, %c1, %c0] : (i32, memref<6x6x4xi32>) -> i32
    %194 = math.log %16 : tensor<6x6x4xf16>
    %195 = affine.for %arg1 = 0 to 97 iter_args(%arg2 = %3) -> (tensor<4x7x4xi32>) {
      affine.yield %arg2 : tensor<4x7x4xi32>
    }
    %196 = arith.muli %true, %true : i1
    %197 = arith.ori %c1163971614_i64, %c1167392835_i64 : i64
    %198 = arith.maxsi %c-22385_i16, %c-22385_i16 : i16
    %generated_32 = tensor.generate %169 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %273 = arith.xori %c153688669_i32, %c153688669_i32 : i32
      %274 = memref.alloca_scope  -> (memref<6x6x4xf16>) {
        %277 = vector.insertelement %cst_0, %122[%53 : index] : vector<4xf32>
        %c36484407_i32 = arith.constant 36484407 : i32
        %278 = memref.realloc %alloc_17 : memref<7xf32> to memref<6xf32>
        %279 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1)>(%169, %78, %c1, %rank)
        %280 = arith.negf %cst : f32
        %281 = arith.divf %cst, %cst_0 : f32
        %c1_i32 = arith.constant 1 : i32
        %282 = vector.transfer_read %collapsed[%c3, %98], %c1_i32 : tensor<36x4xi32>, vector<i32>
        %c563590108_i64 = arith.constant 563590108 : i64
        %283 = affine.apply affine_map<(d0) -> ((d0 ceildiv 4) mod 32)>(%c15)
        %284 = arith.mulf %cst_18, %cst_18 : f16
        %285 = index.ceildivu %c10, %50
        %286 = arith.subi %c-22385_i16, %c-14695_i16 : i16
        %287 = index.sub %98, %c6
        %288 = math.absf %10 : tensor<6x4x4xf16>
        %289 = vector.reduction <xor>, %141 : vector<4xi32> into i32
        %290 = arith.remsi %c1163971614_i64, %65 : i64
        %291 = math.absf %11 : tensor<4x7x4xf32>
        %292 = arith.remsi %65, %c502604180_i64 : i64
        %293 = math.log1p %14 : tensor<6x4x4xf32>
        %294 = math.round %from_elements : tensor<4x7x4xf16>
        %295 = bufferization.to_memref %8 : memref<6x6x4xf32>
        %296 = vector.flat_transpose %129 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
        %297 = math.tan %expanded : tensor<6x6x4x1xf16>
        memref.store %c502604180_i64, %alloc_6[%c4, %c3, %c1] : memref<6x6x4xi64>
        %298 = math.log1p %11 : tensor<4x7x4xf32>
        %299 = arith.andi %c1057443338_i32, %c153688669_i32 : i32
        %300 = math.expm1 %1 : tensor<6x4x4xf32>
        %301 = index.divu %169, %93
        %rank_46 = tensor.rank %7 : tensor<6x6x4xi32>
        %302 = math.ctpop %4 : tensor<6x4x4xi32>
        %extracted = tensor.extract %14[%c4, %c0, %c3] : tensor<6x4x4xf32>
        %303 = math.fma %11, %11, %11 : tensor<4x7x4xf32>
        memref.alloca_scope.return %alloc_11 : memref<6x6x4xf16>
      }
      %275 = index.floordivs %84, %74
      %276 = math.powf %cst_0, %cst_0 : f32
      tensor.yield %c153688669_i32 : i32
    } : tensor<?x6x4xi32>
    %199 = arith.negf %cst_18 : f16
    %200 = scf.execute_region -> vector<4x7x4xf32> {
      %273 = tensor.empty() : tensor<6x6x4xi1>
      %splat_46 = tensor.splat %c1163971614_i64 : tensor<6x6x4xi64>
      %274 = math.exp %14 : tensor<6x4x4xf32>
      %275 = affine.load %162[%c15, %c15, %c8] : memref<6x6x4xi32>
      %276 = arith.ceildivsi %c1508809544_i32, %c978253761_i32 : i32
      %277 = arith.negf %cst : f32
      %278 = affine.load %39[%c0, %c0, %c13] : memref<6x6x4xi32>
      %279 = vector.broadcast %true : i1 to vector<1x1xi1>
      %280 = vector.outerproduct %49, %49, %279 {kind = #vector.kind<maxui>} : vector<1xi1>, vector<1xi1>
      %281 = vector.broadcast %true : i1 to vector<1x1xi1>
      %282 = vector.outerproduct %49, %49, %281 {kind = #vector.kind<minsi>} : vector<1xi1>, vector<1xi1>
      %283 = index.sizeof
      %alloca_47 = memref.alloca() : memref<6x4x4xi32>
      %alloc_48 = memref.alloc() : memref<4x7x4xi64>
      memref.copy %alloc_8, %alloc_48 : memref<4x7x4xi64> to memref<4x7x4xi64>
      %284 = arith.cmpi sgt, %true, %true : i1
      %285 = arith.remf %cst_18, %cst_18 : f16
      %collapsed_49 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<4x7x4xf32> into tensor<28x4xf32>
      %286 = math.ceil %expanded : tensor<6x6x4x1xf16>
      scf.yield %119 : vector<4x7x4xf32>
    }
    %201 = math.ctpop %65 : i64
    %202 = arith.divsi %c1508809544_i32, %c153688669_i32 : i32
    %collapsed_33 = tensor.collapse_shape %16 [[0, 1], [2]] : tensor<6x6x4xf16> into tensor<36x4xf16>
    %203 = arith.ceildivsi %c1508809544_i32, %c1343137369_i32 : i32
    memref.store %c1508809544_i32, %162[%c0, %c1, %c3] : memref<6x6x4xi32>
    %204 = vector.broadcast %cst_0 : f32 to vector<6x4xf32>
    %205 = vector.multi_reduction <minf>, %135, %204 [1] : vector<6x6x4xf32> to vector<6x4xf32>
    %206 = affine.load %alloc_13[%c6, %c14, %c7] : memref<6x6x4xi32>
    %207 = index.sizeof
    %208 = arith.subi %c1343137369_i32, %c1057443338_i32 : i32
    %209 = affine.load %alloc_3[%c13, %c7, %c11] : memref<6x6x4xi32>
    %210 = arith.addf %cst, %cst_0 : f32
    %211 = vector.broadcast %cst : f32 to vector<6x4x4xf32>
    %212 = vector.fma %211, %77, %211 : vector<6x4x4xf32>
    %213 = arith.minsi %65, %c1735174664_i64 : i64
    %214 = math.log10 %16 : tensor<6x6x4xf16>
    %215 = arith.remsi %65, %c1167392835_i64 : i64
    %216 = arith.remsi %209, %209 : i32
    %217 = math.ctpop %5 : tensor<6x4x4xi1>
    %218 = vector.create_mask %157, %c0, %85 : vector<6x6x4xi1>
    bufferization.dealloc_tensor %6 : tensor<6x4x4xf16>
    %from_elements_34 = tensor.from_elements %cst_0, %cst_0, %cst, %cst, %cst, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst, %cst_0, %cst, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst, %cst, %cst, %cst, %cst_0, %cst, %cst, %cst_0, %cst, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst, %cst_0 : tensor<6x6x4xf32>
    %219 = math.ctlz %111 : tensor<36x4xi32>
    %220 = vector.broadcast %65 : i64 to vector<6x6x4xi64>
    %221 = vector.gather %from_elements_28[%c4, %207, %c13] [%92], %218, %220 : tensor<6x6x4xi64>, vector<6x6x4xi32>, vector<6x6x4xi1>, vector<6x6x4xi64> into vector<6x6x4xi64>
    %generated_35 = tensor.generate %165, %c14 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %false = arith.constant false
      %273 = vector.splat %26 : vector<4x7x4xindex>
      %274 = math.expm1 %11 : tensor<4x7x4xf32>
      %extracted = tensor.extract %from_elements_34[%c0, %c3, %c1] : tensor<6x6x4xf32>
      tensor.yield %209 : i32
    } : tensor<?x?x4xi32>
    %222 = arith.maxsi %123, %c-9479_i16 : i16
    %223 = vector.shuffle %49, %49 [0, 1] : vector<1xi1>, vector<1xi1>
    %224 = math.log1p %cst_0 : f32
    %true_36 = arith.constant true
    %225 = vector.broadcast %c153688669_i32 : i32 to vector<7x7xi32>
    %226 = vector.outerproduct %129, %129, %225 {kind = #vector.kind<xor>} : vector<7xi32>, vector<7xi32>
    %expanded_37 = tensor.expand_shape %reduced [[0], [1, 2]] : tensor<6x6xi32> into tensor<6x6x1xi32>
    %227 = affine.load %132[%c12, %c11, %c12] : memref<6x6x4xi16>
    %228 = arith.negf %cst_0 : f32
    %229 = math.absf %10 : tensor<6x4x4xf16>
    %230 = arith.addf %cst_0, %cst_0 : f32
    %231 = affine.load %25[%c2, %c0, %c4] : memref<6x6x4xi32>
    %232 = math.log %collapsed_33 : tensor<36x4xf16>
    %233 = vector.broadcast %cst_0 : f32 to vector<4x7xf32>
    %dest_38, %accumulated_value_39 = vector.scan <maxf>, %118, %233 {inclusive = false, reduction_dim = 2 : i64} : vector<4x7x4xf32>, vector<4x7xf32>
    %234 = arith.shrui %c1057443338_i32, %c1343137369_i32 : i32
    %235 = arith.divui %c502604180_i64, %c502604180_i64 : i64
    %collapsed_40 = tensor.collapse_shape %from_elements [[0, 1], [2]] : tensor<4x7x4xf16> into tensor<28x4xf16>
    %236 = math.cttz %c1163971614_i64 : i64
    %237 = math.log1p %21 : tensor<7xf32>
    %238 = arith.maxsi %c-9479_i16, %c-14695_i16 : i16
    %239 = index.sub %c12, %c3
    %240 = arith.shrui %c-20042_i16, %227 : i16
    %241 = vector.broadcast %true : i1 to vector<6x6xi1>
    %242 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %113, %20, %241 : vector<6x6x4xi1>, vector<4xi1> into vector<6x6xi1>
    %243 = memref.load %alloc_14[%c5, %c2, %c2] : memref<6x4x4xf16>
    %244 = vector.matrix_multiply %134, %133 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi16>, vector<7xi16>) -> vector<1xi16>
    %245 = arith.mulf %cst_0, %cst_0 : f32
    %246 = vector.maskedload %162[%c5, %c1, %c0], %130, %129 : memref<6x6x4xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
    %247 = vector.insertelement %c1057443338_i32, %246[%158 : index] : vector<7xi32>
    %248 = arith.cmpi sgt, %65, %c1735174664_i64 : i64
    %249 = math.cttz %c1057443338_i32 : i32
    %250 = math.expm1 %collapsed_40 : tensor<28x4xf16>
    %251 = arith.andi %123, %227 : i16
    %252 = math.ipowi %3, %12 : tensor<4x7x4xi32>
    %253 = memref.atomic_rmw minu %c1057443338_i32, %alloc_9[%c2, %c5, %c3] : (i32, memref<6x6x4xi32>) -> i32
    %254 = math.ceil %cst : f32
    %alloc_41 = memref.alloc() : memref<4x7x4xi16>
    %255 = vector.broadcast %c-20042_i16 : i16 to vector<4x7x4xi16>
    %256 = vector.gather %alloc_41[%50, %c8, %c9] [%127], %187, %255 : memref<4x7x4xi16>, vector<4x7x4xi32>, vector<4x7x4xi1>, vector<4x7x4xi16> into vector<4x7x4xi16>
    %257 = index.sizeof
    %from_elements_42 = tensor.from_elements %c-22385_i16, %123, %c-9479_i16, %227, %c-22385_i16, %c-9479_i16, %227, %c-9479_i16, %c-9479_i16, %227, %227, %c-22385_i16, %c-9479_i16, %123, %c-9479_i16, %c-14695_i16, %c-20042_i16, %c-14695_i16, %123, %c-14695_i16, %c-14695_i16, %c-20042_i16, %227, %c-9479_i16, %c-14695_i16, %123, %c-14695_i16, %227, %c-22385_i16, %c-9479_i16, %c-14695_i16, %c-22385_i16, %c-9479_i16, %c-14695_i16, %c-9479_i16, %c-20042_i16, %c-20042_i16, %c-20042_i16, %c-20042_i16, %c-22385_i16, %123, %c-14695_i16, %c-9479_i16, %227, %227, %c-22385_i16, %c-14695_i16, %227, %123, %c-14695_i16, %c-22385_i16, %227, %c-20042_i16, %c-9479_i16, %227, %c-14695_i16, %c-20042_i16, %c-14695_i16, %c-22385_i16, %c-14695_i16, %c-22385_i16, %c-20042_i16, %227, %c-20042_i16, %123, %c-20042_i16, %c-22385_i16, %227, %c-9479_i16, %123, %c-9479_i16, %c-20042_i16, %c-22385_i16, %c-20042_i16, %227, %c-14695_i16, %c-9479_i16, %123, %227, %c-14695_i16, %123, %c-20042_i16, %c-22385_i16, %c-14695_i16, %c-14695_i16, %c-9479_i16, %c-9479_i16, %227, %c-14695_i16, %123, %c-9479_i16, %c-9479_i16, %227, %c-22385_i16, %227, %123, %227, %123, %c-9479_i16, %227, %c-14695_i16, %c-22385_i16, %c-9479_i16, %c-20042_i16, %c-20042_i16, %227, %c-9479_i16, %c-22385_i16, %c-22385_i16, %227, %c-9479_i16, %c-14695_i16 : tensor<4x7x4xi16>
    %258 = math.powf %15, %15 : tensor<6x6x4xf16>
    %259 = vector.broadcast %231 : i32 to vector<6x4xi32>
    %260 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %182, %156, %259 : vector<6x4x4xi32>, vector<4xi32> into vector<6x4xi32>
    %alloca_43 = memref.alloca() : memref<6x4x4xi32>
    %261 = arith.maxsi %123, %c-14695_i16 : i16
    %262 = vector.flat_transpose %246 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
    %263 = vector.reduction <and>, %94 : vector<4xi1> into i1
    %264 = affine.load %alloc_15[%c6, %c3, %c4] : memref<6x6x4xi32>
    %265 = vector.extract %212[5, 1] : vector<6x4x4xf32>
    %266 = math.expm1 %cst_0 : f32
    %267 = memref.atomic_rmw assign %209, %25[%c0, %c4, %c0] : (i32, memref<6x6x4xi32>) -> i32
    %268 = tensor.empty() : tensor<4x7x4xi1>
    %269 = linalg.copy ins(%from_elements_23 : tensor<4x7x4xi1>) outs(%268 : tensor<4x7x4xi1>) -> tensor<4x7x4xi1>
    %alloc_44 = memref.alloc() : memref<4x6x6xi16>
    linalg.transpose ins(%alloc_7 : memref<6x6x4xi16>) outs(%alloc_44 : memref<4x6x6xi16>) permutation = [2, 0, 1] 
    %270 = tensor.empty() : tensor<6x6xi32>
    %reduced_45 = linalg.reduce ins(%alloc_16 : memref<4x6x6xi32>) outs(%270 : tensor<6x6xi32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %273 = math.copysign %6, %6 : tensor<6x4x4xf16>
        %274 = math.fpowi %14, %4 : tensor<6x4x4xf32>, tensor<6x4x4xi32>
        %275 = index.mul %70, %257
        %276 = vector.create_mask %169, %c1, %74 : vector<6x6x4xi1>
        %277 = memref.atomic_rmw assign %cst_0, %alloc_4[%c0, %c4, %c3] : (f32, memref<4x7x4xf32>) -> f32
        %278 = math.exp %10 : tensor<6x4x4xf16>
        %rank_46 = tensor.rank %5 : tensor<6x4x4xi1>
        vector.print %131 : vector<7xi32>
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %271 = scf.parallel (%arg1) = (%151) to (%171) step (%c14) init (%12) -> tensor<4x7x4xi32> {
      %273 = arith.divui %209, %c1057443338_i32 : i32
      %274 = vector.flat_transpose %173 {columns = 2 : i32, rows = 2 : i32} : vector<4xi32> -> vector<4xi32>
      %275 = tensor.empty() : tensor<6x6xi32>
      %276 = linalg.matmul ins(%reduced, %reduced : tensor<6x6xi32>, tensor<6x6xi32>) outs(%275 : tensor<6x6xi32>) -> tensor<6x6xi32>
      %c740883835_i32 = arith.constant 740883835 : i32
      %277 = bufferization.clone %alloc_17 : memref<7xf32> to memref<7xf32>
      %278 = vector.create_mask %98, %158, %165 : vector<6x6x4xi1>
      %279 = vector.broadcast %cst_18 : f16 to vector<7xf16>
      %280 = vector.maskedload %alloc_14[%c3, %c3, %c0], %130, %279 : memref<6x4x4xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
      %281 = arith.shrui %c-9479_i16, %c-9479_i16 : i16
      %282 = arith.remf %cst, %cst : f32
      %283 = index.casts %207 : index to i32
      %284 = arith.ceildivsi %227, %c-22385_i16 : i16
      %285 = math.tan %6 : tensor<6x4x4xf16>
      %286 = tensor.empty() : tensor<4xi32>
      %287 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%286 : tensor<4xi32>) outs(%4 : tensor<6x4x4xi32>) {
      ^bb0(%in: i32, %out: i32):
        %291 = vector.multi_reduction <or>, %244, %244 [] : vector<1xi16> to vector<1xi16>
        %expanded_46 = tensor.expand_shape %from_elements_34 [[0], [1], [2, 3]] : tensor<6x6x4xf32> into tensor<6x6x4x1xf32>
        %292 = arith.divui %c1163971614_i64, %65 : i64
        bufferization.dealloc_tensor %1 : tensor<6x4x4xf32>
        affine.store %c502604180_i64, %alloc_6[%c9, %c11, %c5] : memref<6x6x4xi64>
        %rank_47 = tensor.rank %from_elements_34 : tensor<6x6x4xf32>
        %293 = index.divs %84, %239
        %294 = math.log10 %9 : tensor<6x6x4xf16>
        %295 = arith.negf %cst_0 : f32
        %296 = vector.matrix_multiply %173, %262 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 7 : i32} : (vector<4xi32>, vector<7xi32>) -> vector<28xi32>
        bufferization.dealloc_tensor %6 : tensor<6x4x4xf16>
        memref.store %cst, %alloc_4[%c1, %c6, %c1] : memref<4x7x4xf32>
        %297 = arith.remsi %227, %c-20042_i16 : i16
        %298 = arith.shrui %c1057443338_i32, %231 : i32
        %extracted = tensor.extract %13[%c2, %c2, %c1] : tensor<4x7x4xi32>
        %299 = math.rsqrt %23 : tensor<f32>
        %300 = arith.addf %cst, %cst : f32
        %301 = math.absi %c1735174664_i64 : i64
        vector.print %113 : vector<6x6x4xi1>
        %302 = arith.maxsi %123, %c-9479_i16 : i16
        %303 = math.absf %15 : tensor<6x6x4xf16>
        %304 = arith.minui %209, %extracted : i32
        %false = arith.constant false
        %rank_48 = tensor.rank %splat : tensor<6x6x4xi64>
        %305 = arith.remf %cst_18, %cst_18 : f16
        %306 = vector.broadcast %c1163971614_i64 : i64 to vector<6x4xi64>
        %307 = vector.insert %306, %220 [1] : vector<6x4xi64> into vector<6x6x4xi64>
        %308 = arith.remui %c1508809544_i32, %209 : i32
        %309 = math.floor %15 : tensor<6x6x4xf16>
        %310 = index.divu %50, %165
        %311 = math.log %1 : tensor<6x4x4xf32>
        %312 = memref.atomic_rmw assign %cst, %alloc_4[%c3, %c3, %c0] : (f32, memref<4x7x4xf32>) -> f32
        %313 = vector.transpose %220, [1, 2, 0] : vector<6x6x4xi64> to vector<6x4x6xi64>
        linalg.yield %231 : i32
      } -> tensor<6x4x4xi32>
      %288 = affine.apply affine_map<(d0, d1, d2) -> (-d0 - 128)>(%c15, %c13, %108)
      %289 = arith.divsi %c1057443338_i32, %c1508809544_i32 : i32
      affine.store %65, %alloc_6[%c14, %c13, %c4] : memref<6x6x4xi64>
      %290 = tensor.empty() : tensor<4x7x4xi32>
      scf.reduce(%290)  : tensor<4x7x4xi32> {
      ^bb0(%arg2: tensor<4x7x4xi32>, %arg3: tensor<4x7x4xi32>):
        %291 = math.tanh %cst_18 : f16
        %292 = index.divs %c4, %84
        %c814321180_i32 = arith.constant 814321180 : i32
        %293 = arith.shli %206, %231 : i32
        %294 = arith.divsi %c1163971614_i64, %65 : i64
        %expanded_46 = tensor.expand_shape %7 [[0], [1], [2, 3]] : tensor<6x6x4xi32> into tensor<6x6x4x1xi32>
        %295 = math.tan %14 : tensor<6x4x4xf32>
        %296 = math.log %collapsed_33 : tensor<36x4xf16>
        %297 = tensor.empty() : tensor<4x7x4xi32>
        scf.reduce.return %297 : tensor<4x7x4xi32>
      }
      scf.yield
    }
    %272 = affine.vector_load %alloc_4[%50, %78, %79] : memref<4x7x4xf32>, vector<4xf32>
    affine.vector_store %129, %alloc_9[%78, %157, %239] : memref<6x6x4xi32>, vector<7xi32>
    vector.print %20 : vector<4xi1>
    vector.print %42 : vector<6x4x4xi1>
    vector.print %49 : vector<1xi1>
    vector.print %51 : vector<4x7x4xf32>
    vector.print %52 : vector<4x7x4xf32>
    vector.print %59 : vector<6x4x4xf16>
    vector.print %60 : vector<6x4x4xi32>
    vector.print %61 : vector<6x4x4xf16>
    vector.print %72 : vector<6x6x4xf32>
    vector.print %73 : vector<6x6x4xf32>
    vector.print %76 : vector<6x4x4xf32>
    vector.print %77 : vector<6x4x4xf32>
    vector.print %88 : vector<6x6x4xf32>
    vector.print %89 : vector<6x6x4xf32>
    vector.print %92 : vector<6x6x4xi32>
    vector.print %94 : vector<4xi1>
    vector.print %95 : vector<4xi1>
    vector.print %113 : vector<6x6x4xi1>
    vector.print %118 : vector<4x7x4xf32>
    vector.print %119 : vector<4x7x4xf32>
    vector.print %122 : vector<4xf32>
    vector.print %127 : vector<4x7x4xi32>
    vector.print %129 : vector<7xi32>
    vector.print %130 : vector<7xi1>
    vector.print %131 : vector<7xi32>
    vector.print %133 : vector<7xi16>
    vector.print %134 : vector<7xi16>
    vector.print %135 : vector<6x6x4xf32>
    vector.print %141 : vector<4xi32>
    vector.print %142 : vector<4xi32>
    vector.print %154 : vector<6x6x4xf32>
    vector.print %155 : vector<6x6x4xf32>
    vector.print %156 : vector<4xi32>
    vector.print %173 : vector<4xi32>
    vector.print %182 : vector<6x4x4xi32>
    vector.print %185 : vector<7xi32>
    vector.print %187 : vector<4x7x4xi1>
    vector.print %204 : vector<6x4xf32>
    vector.print %211 : vector<6x4x4xf32>
    vector.print %212 : vector<6x4x4xf32>
    vector.print %218 : vector<6x6x4xi1>
    vector.print %220 : vector<6x6x4xi64>
    vector.print %221 : vector<6x6x4xi64>
    vector.print %244 : vector<1xi16>
    vector.print %246 : vector<7xi32>
    vector.print %255 : vector<4x7x4xi16>
    vector.print %256 : vector<4x7x4xi16>
    vector.print %262 : vector<7xi32>
    vector.print %265 : vector<4xf32>
    vector.print %272 : vector<4xf32>
    vector.print %c-22385_i16 : i16
    vector.print %c153688669_i32 : i32
    vector.print %c1508809544_i32 : i32
    vector.print %c1163971614_i64 : i64
    vector.print %c-20042_i16 : i16
    vector.print %c-14695_i16 : i16
    vector.print %c502604180_i64 : i64
    vector.print %c1057443338_i32 : i32
    vector.print %c-9479_i16 : i16
    vector.print %c1343137369_i32 : i32
    vector.print %c1735174664_i64 : i64
    vector.print %cst : f32
    vector.print %c1167392835_i64 : i64
    vector.print %c978253761_i32 : i32
    vector.print %cst_0 : f32
    vector.print %true : i1
    vector.print %cst_18 : f16
    vector.print %65 : i64
    vector.print %123 : i16
    vector.print %206 : i32
    vector.print %209 : i32
    vector.print %227 : i16
    vector.print %231 : i32
    vector.print %264 : i32
    return
  }
}
