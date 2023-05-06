module {
  func.func @func1(%arg0: vector<6x1x7xi1>) -> memref<1xi16> {
    %cst = arith.constant 0x4DA11F3E : f32
    %cst_0 = arith.constant 3.708800e+04 : f16
    %c808531491_i32 = arith.constant 808531491 : i32
    %c573754736_i64 = arith.constant 573754736 : i64
    %cst_1 = arith.constant 0x4D6B9F01 : f32
    %false = arith.constant false
    %cst_2 = arith.constant 0x4D117A2E : f32
    %cst_3 = arith.constant 0x4D663802 : f32
    %c1180538467_i32 = arith.constant 1180538467 : i32
    %false_4 = arith.constant false
    %true = arith.constant true
    %c16374_i16 = arith.constant 16374 : i16
    %cst_5 = arith.constant 0x4E2B4D2D : f32
    %true_6 = arith.constant true
    %cst_7 = arith.constant 2.244800e+04 : f16
    %c20593_i16 = arith.constant 20593 : i16
    %0 = tensor.empty() : tensor<1xf32>
    %1 = tensor.empty() : tensor<7x6xi64>
    %2 = tensor.empty() : tensor<6x1x7xi16>
    %3 = tensor.empty() : tensor<6x1x7xi16>
    %4 = tensor.empty() : tensor<1xi16>
    %5 = tensor.empty() : tensor<7x6xi16>
    %6 = tensor.empty() : tensor<7x6xf32>
    %7 = tensor.empty() : tensor<7x7x6xi32>
    %8 = tensor.empty() : tensor<7x7x6xf16>
    %9 = tensor.empty() : tensor<7x7x6xf32>
    %10 = tensor.empty() : tensor<7x7x6xi32>
    %11 = tensor.empty() : tensor<1xi16>
    %12 = tensor.empty() : tensor<7x7x6xf16>
    %13 = tensor.empty() : tensor<1xi64>
    %14 = tensor.empty() : tensor<1xf16>
    %15 = tensor.empty() : tensor<7x6xf32>
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
    %alloc = memref.alloc() : memref<7x6xf32>
    %alloc_8 = memref.alloc() : memref<7x7x6xi16>
    %alloc_9 = memref.alloc() : memref<7x7x6xi1>
    %alloc_10 = memref.alloc() : memref<1xf16>
    %alloc_11 = memref.alloc() : memref<7x7x6xi16>
    %alloc_12 = memref.alloc() : memref<6x1x7xf32>
    %alloc_13 = memref.alloc() : memref<7x6xf32>
    %alloc_14 = memref.alloc() : memref<6x1x7xf32>
    %alloc_15 = memref.alloc() : memref<7x6xf16>
    %alloc_16 = memref.alloc() : memref<7x7x6xi32>
    %alloc_17 = memref.alloc() : memref<7x6xi1>
    %alloc_18 = memref.alloc() : memref<6x1x7xi64>
    %alloc_19 = memref.alloc() : memref<1xi64>
    %alloc_20 = memref.alloc() : memref<6x1x7xi32>
    %alloc_21 = memref.alloc() : memref<7x6xf32>
    %alloc_22 = memref.alloc() : memref<7x7x6xi1>
    %16 = tensor.empty() : tensor<6x1x7xi16>
    %17 = linalg.copy ins(%2 : tensor<6x1x7xi16>) outs(%16 : tensor<6x1x7xi16>) -> tensor<6x1x7xi16>
    %18 = tensor.empty() : tensor<7x6x1xi16>
    %transposed = linalg.transpose ins(%3 : tensor<6x1x7xi16>) outs(%18 : tensor<7x6x1xi16>) permutation = [2, 0, 1] 
    %19 = tensor.empty() : tensor<f32>
    %reduced = linalg.reduce ins(%9 : tensor<7x7x6xf32>) outs(%19 : tensor<f32>) dimensions = [0, 1, 2] 
      (%in: f32, %init: f32) {
        %274 = vector.broadcast %cst_7 : f16 to vector<6x1x7xf16>
        %275 = vector.shuffle %274, %274 [1, 6, 8, 9] : vector<6x1x7xf16>, vector<6x1x7xf16>
        %276 = vector.create_mask %c6 : vector<1xi1>
        %277 = index.maxu %c12, %c6
        %278 = bufferization.clone %alloc_11 : memref<7x7x6xi16> to memref<7x7x6xi16>
        memref.alloca_scope  {
          %282 = arith.remf %cst_0, %cst_0 : f16
          bufferization.dealloc_tensor %18 : tensor<7x6x1xi16>
          %283 = tensor.empty(%c13) : tensor<?x6xi16>
          %284 = arith.divf %in, %cst_1 : f32
          %285 = vector.load %alloc_12[%c1, %c0, %c2] : memref<6x1x7xf32>, vector<7x6xf32>
          %286 = arith.remf %cst_0, %cst_7 : f16
          %287 = arith.minui %true, %true : i1
          %288 = math.exp %cst_0 : f16
          %alloca_52 = memref.alloca() : memref<6x1x7xi32>
          %289 = arith.ori %false_4, %true : i1
          %290 = affine.max affine_map<(d0) -> (d0 mod 32, d0 * -9, d0 * 3, d0 * -16)>(%c5)
          %291 = arith.addf %cst_0, %cst_7 : f16
          %292 = vector.broadcast %cst : f32 to vector<6x6xf32>
          %293 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %285, %285, %292 : vector<7x6xf32>, vector<7x6xf32> into vector<6x6xf32>
          %294 = bufferization.clone %alloc_11 : memref<7x7x6xi16> to memref<7x7x6xi16>
          %295 = arith.shrsi %true, %true : i1
          %296 = index.mul %c15, %c3
          %297 = math.atan2 %cst_1, %cst : f32
          %298 = math.absi %10 : tensor<7x7x6xi32>
          %299 = arith.ori %c16374_i16, %c20593_i16 : i16
          %300 = math.round %19 : tensor<f32>
          %301 = index.ceildivu %c6, %c2
          %302 = math.copysign %12, %12 : tensor<7x7x6xf16>
          %303 = memref.realloc %alloc_10 : memref<1xf16> to memref<6xf16>
          %304 = arith.minui %c573754736_i64, %c573754736_i64 : i64
          %expanded = tensor.expand_shape %16 [[0], [1], [2, 3]] : tensor<6x1x7xi16> into tensor<6x1x7x1xi16>
          %alloc_53 = memref.alloc() : memref<6x1x7xi16>
          memref.tensor_store %3, %alloc_53 : memref<6x1x7xi16>
          %305 = arith.addi %false, %false_4 : i1
          %306 = math.log10 %15 : tensor<7x6xf32>
          %307 = arith.minsi %c20593_i16, %c20593_i16 : i16
          %308 = math.ceil %6 : tensor<7x6xf32>
          %309 = math.ipowi %13, %13 : tensor<1xi64>
          %310 = index.divu %c3, %c1
        }
        %279 = math.floor %in : f32
        %280 = affine.if affine_set<(d0, d1, d2) : (d1 == 0, d2 + d0 >= 0, d2 - d1 == 0)>(%c9, %c7, %c2) -> i1 {
          %282 = vector.broadcast %cst_2 : f32 to vector<6x1x7xf32>
          %283 = vector.fma %282, %282, %282 : vector<6x1x7xf32>
          %284 = index.mul %c2, %c10
          %285 = math.expm1 %0 : tensor<1xf32>
          %286 = math.atan2 %12, %8 : tensor<7x7x6xf16>
          %287 = vector.broadcast %c10 : index to vector<7xindex>
          %288 = vector.broadcast %false_4 : i1 to vector<7xi1>
          vector.scatter %alloc_9[%c6, %c0, %c3] [%287], %288, %288 : memref<7x7x6xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
          %289 = vector.matrix_multiply %276, %276 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
          %290 = math.log10 %0 : tensor<1xf32>
          %291 = math.log10 %cst_1 : f32
          affine.yield %true : i1
        } else {
          %282 = bufferization.to_tensor %alloc_19 : memref<1xi64>
          %283 = vector.shuffle %276, %276 [0, 1] : vector<1xi1>, vector<1xi1>
          %284 = arith.remf %in, %cst_1 : f32
          %collapsed_52 = tensor.collapse_shape %2 [[0, 1], [2]] : tensor<6x1x7xi16> into tensor<6x7xi16>
          %285 = math.round %8 : tensor<7x7x6xf16>
          %286 = math.exp2 %cst_3 : f32
          %287 = tensor.empty() : tensor<6x7xf32>
          %288 = tensor.empty() : tensor<7x7xf32>
          %289 = linalg.matmul ins(%6, %287 : tensor<7x6xf32>, tensor<6x7xf32>) outs(%288 : tensor<7x7xf32>) -> tensor<7x7xf32>
          %290 = bufferization.to_tensor %alloc_20 : memref<6x1x7xi32>
          affine.yield %true : i1
        }
        %281 = math.atan %15 : tensor<7x6xf32>
        %cst_51 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_51 : f32
      }
    %20 = scf.parallel (%arg1, %arg2) = (%c12, %c6) to (%c14, %c9) step (%c12, %c5) init (%cst_3) -> f32 {
      %274 = vector.broadcast %c0 : index to vector<6xindex>
      %275 = vector.broadcast %false : i1 to vector<6xi1>
      %276 = vector.broadcast %cst_0 : f16 to vector<6xf16>
      vector.scatter %alloc_10[%c0] [%274], %275, %276 : memref<1xf16>, vector<6xindex>, vector<6xi1>, vector<6xf16>
      %277 = math.round %6 : tensor<7x6xf32>
      %278 = arith.muli %true_6, %false : i1
      %279 = index.floordivs %c4, %c14
      %280 = index.maxu %c6, %c13
      %281 = index.ceildivu %c9, %279
      %282 = arith.maxui %true, %true_6 : i1
      %283 = math.ctpop %false_4 : i1
      %284 = math.log10 %8 : tensor<7x7x6xf16>
      %285 = math.cttz %3 : tensor<6x1x7xi16>
      %286 = arith.maxsi %c16374_i16, %c20593_i16 : i16
      %287 = math.ctpop %true : i1
      bufferization.dealloc_tensor %11 : tensor<1xi16>
      %288 = index.divs %c11, %c14
      %289 = scf.while (%arg3 = %alloc_9) : (memref<7x7x6xi1>) -> memref<7x7x6xi1> {
        %291 = index.maxu %c7, %c15
        %292 = arith.cmpf uno, %cst_7, %cst_0 : f16
        %293 = vector.broadcast %false : i1 to vector<6x1x7xi1>
        %294 = vector.transpose %293, [1, 2, 0] : vector<6x1x7xi1> to vector<1x7x6xi1>
        %295 = math.exp %15 : tensor<7x6xf32>
        %296 = affine.load %alloc_8[%c14, %c14, %c1] : memref<7x7x6xi16>
        %297 = arith.addf %cst_7, %cst_7 : f16
        %298 = vector.broadcast %c1180538467_i32 : i32 to vector<6xi32>
        %299 = vector.matrix_multiply %298, %298 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi32>, vector<6xi32>) -> vector<1xi32>
        %300 = index.maxu %c12, %arg2
        scf.condition(%false_4) %alloc_22 : memref<7x7x6xi1>
      } do {
      ^bb0(%arg3: memref<7x7x6xi1>):
        %291 = math.absf %9 : tensor<7x7x6xf32>
        %292 = memref.atomic_rmw maxs %c808531491_i32, %alloc_16[%c6, %c1, %c4] : (i32, memref<7x7x6xi32>) -> i32
        %293 = index.add %c11, %c14
        %294 = memref.atomic_rmw assign %c1180538467_i32, %alloc_20[%c3, %c0, %c5] : (i32, memref<6x1x7xi32>) -> i32
        %295 = arith.shrui %c1180538467_i32, %c1180538467_i32 : i32
        %296 = arith.addf %cst_2, %cst_3 : f32
        %297 = math.floor %6 : tensor<7x6xf32>
        %298 = arith.cmpi eq, %c808531491_i32, %c1180538467_i32 : i32
        %299 = tensor.empty() : tensor<7x7x6xi32>
        %alloc_52 = memref.alloc() : memref<6x1x7xi16>
        memref.tensor_store %3, %alloc_52 : memref<6x1x7xi16>
        %300 = math.fma %9, %9, %9 : tensor<7x7x6xf32>
        %301 = index.maxs %c6, %280
        %302 = vector.broadcast %c1 : index to vector<7xindex>
        %303 = vector.broadcast %true_6 : i1 to vector<7xi1>
        %304 = vector.broadcast %c573754736_i64 : i64 to vector<7xi64>
        vector.scatter %alloc_19[%c0] [%302], %303, %304 : memref<1xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
        %305 = memref.atomic_rmw addi %c808531491_i32, %alloc_16[%c5, %c6, %c4] : (i32, memref<7x7x6xi32>) -> i32
        %306 = math.cttz %3 : tensor<6x1x7xi16>
        %307 = vector.create_mask %288 : vector<1xi1>
        scf.yield %alloc_9 : memref<7x7x6xi1>
      }
      %290 = math.round %cst_5 : f32
      %cst_51 = arith.constant 1.000000e+00 : f32
      scf.reduce(%cst_51)  : f32 {
      ^bb0(%arg3: f32, %arg4: f32):
        %291 = arith.ori %true, %true : i1
        %alloca_52 = memref.alloca() : memref<1xi32>
        %292 = math.rsqrt %0 : tensor<1xf32>
        %c0_i16 = arith.constant 0 : i16
        %293 = vector.transfer_read %3[%281, %c2, %281], %c0_i16 : tensor<6x1x7xi16>, vector<7xi16>
        %294 = math.log1p %reduced : tensor<f32>
        %295 = arith.minui %c573754736_i64, %c573754736_i64 : i64
        %296 = tensor.empty(%c13) : tensor<?x6xf16>
        %297 = math.round %reduced : tensor<f32>
        %cst_53 = arith.constant 1.000000e+00 : f32
        scf.reduce.return %cst_53 : f32
      }
      scf.yield
    }
    %21 = affine.vector_load %alloc_10[%c15] : memref<1xf16>, vector<7xf16>
    affine.vector_store %21, %alloc_10[%c7] : memref<1xf16>, vector<7xf16>
    %22 = tensor.empty() : tensor<1xi16>
    %23 = tensor.empty() : tensor<i16>
    %24 = linalg.dot ins(%4, %22 : tensor<1xi16>, tensor<1xi16>) outs(%23 : tensor<i16>) -> tensor<i16>
    %25 = affine.load %alloc_17[%c4, %c4] : memref<7x6xi1>
    %26 = vector.matrix_multiply %21, %21 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf16>, vector<7xf16>) -> vector<1xf16>
    %alloca = memref.alloca() : memref<7x6xi1>
    %27 = arith.addi %true, %false : i1
    %28 = math.round %cst_3 : f32
    %29 = tensor.empty() : tensor<7x7x6xi32>
    %mapped = linalg.map ins(%7, %alloc_16, %alloc_16 : tensor<7x7x6xi32>, memref<7x7x6xi32>, memref<7x7x6xi32>) outs(%29 : tensor<7x7x6xi32>)
      (%in: i32, %in_51: i32, %in_52: i32) {
        %274 = vector.create_mask %c11, %c11 : vector<7x6xi1>
        %275 = index.divs %c1, %c11
        %276 = vector.matrix_multiply %26, %26 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
        %277 = affine.max affine_map<(d0) -> ((d0 floordiv 64) * 64)>(%c11)
        %278 = scf.execute_region -> tensor<1xf16> {
          %305 = index.ceildivs %c15, %c3
          %306 = arith.shrui %true_6, %false : i1
          %307 = math.exp2 %cst_1 : f32
          %308 = vector.matrix_multiply %26, %26 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
          %309 = vector.flat_transpose %21 {columns = 7 : i32, rows = 1 : i32} : vector<7xf16> -> vector<7xf16>
          %310 = bufferization.to_memref %0 : memref<1xf32>
          %311 = arith.muli %c1180538467_i32, %in : i32
          %312 = vector.shuffle %309, %26 [2, 3, 4, 5, 6, 7] : vector<7xf16>, vector<1xf16>
          %313 = index.floordivs %c2, %277
          %314 = tensor.empty() : tensor<1xf16>
          %315 = math.rsqrt %cst_2 : f32
          %316 = memref.load %alloc_9[%c5, %c0, %c2] : memref<7x7x6xi1>
          %317 = math.absf %cst_1 : f32
          %318 = math.exp %reduced : tensor<f32>
          %from_elements = tensor.from_elements %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64 : tensor<6x1x7xi64>
          %319 = math.log %cst_2 : f32
          scf.yield %14 : tensor<1xf16>
        }
        %279 = vector.broadcast %cst_5 : f32 to vector<6xf32>
        vector.transfer_write %279, %alloc_12[%c2, %c1, %c12] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<6xf32>, memref<6x1x7xf32>
        %280 = vector.insert %cst_0, %26 [0] : f16 into vector<1xf16>
        %alloc_53 = memref.alloc() : memref<7x6x1xi16>
        memref.tensor_store %18, %alloc_53 : memref<7x6x1xi16>
        %281 = math.exp %15 : tensor<7x6xf32>
        %alloc_54 = memref.alloc() : memref<1xi64>
        %282 = scf.execute_region -> index {
          %305 = vector.broadcast %cst : f32 to vector<1xf32>
          %306 = bufferization.clone %alloc_17 : memref<7x6xi1> to memref<7x6xi1>
          %307 = arith.addf %cst_3, %cst : f32
          %308 = vector.insert %cst_0, %21 [3] : f16 into vector<7xf16>
          %309 = index.add %c6, %c1
          %310 = arith.addi %in_51, %in_51 : i32
          %311 = bufferization.clone %alloc_11 : memref<7x7x6xi16> to memref<7x7x6xi16>
          %alloc_55 = memref.alloc() : memref<6x1x7xi32>
          memref.copy %alloc_20, %alloc_55 : memref<6x1x7xi32> to memref<6x1x7xi32>
          %312 = bufferization.clone %alloc : memref<7x6xf32> to memref<7x6xf32>
          %313 = math.ipowi %in_51, %c808531491_i32 : i32
          vector.print %21 : vector<7xf16>
          %314 = vector.bitcast %279 : vector<6xf32> to vector<6xf32>
          %315 = math.log2 %0 : tensor<1xf32>
          %alloc_56 = memref.alloc() : memref<6x1x7xi32>
          %316 = math.log10 %14 : tensor<1xf16>
          %317 = index.maxs %c3, %c6
          scf.yield %c1 : index
        }
        %283 = math.ctlz %2 : tensor<6x1x7xi16>
        %284 = vector.broadcast %c7 : index to vector<7xindex>
        %285 = vector.broadcast %true : i1 to vector<7xi1>
        vector.scatter %alloc_22[%c1, %c0, %c2] [%284], %285, %285 : memref<7x7x6xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
        %286 = math.round %cst_7 : f16
        %287 = index.maxs %277, %275
        %288 = index.maxs %c8, %c6
        %289 = math.tanh %0 : tensor<1xf32>
        %290 = arith.addf %cst_1, %cst_5 : f32
        bufferization.dealloc_tensor %29 : tensor<7x7x6xi32>
        %291 = arith.remf %cst, %cst_5 : f32
        %292 = memref.realloc %alloc_19 : memref<1xi64> to memref<1xi64>
        %293 = tensor.empty() : tensor<6x7xi64>
        %294 = tensor.empty() : tensor<7x7xi64>
        %295 = linalg.matmul ins(%1, %293 : tensor<7x6xi64>, tensor<6x7xi64>) outs(%294 : tensor<7x7xi64>) -> tensor<7x7xi64>
        %296 = math.powf %6, %15 : tensor<7x6xf32>
        %297 = math.absi %7 : tensor<7x7x6xi32>
        %298 = index.casts %275 : index to i32
        %299 = math.log2 %cst_5 : f32
        %300 = arith.minsi %c808531491_i32, %in_52 : i32
        %301 = bufferization.clone %alloc_12 : memref<6x1x7xf32> to memref<6x1x7xf32>
        %302 = math.fma %cst_2, %cst_5, %cst_1 : f32
        %303 = arith.remf %cst_5, %cst : f32
        affine.for %arg1 = 0 to 94 {
        }
        %304 = math.exp2 %cst_5 : f32
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    vector.print %26 : vector<1xf16>
    %30 = math.rsqrt %19 : tensor<f32>
    %31 = math.tan %15 : tensor<7x6xf32>
    %32 = vector.broadcast %c2 : index to vector<7xindex>
    %33 = vector.broadcast %false : i1 to vector<7xi1>
    %34 = vector.broadcast %cst_3 : f32 to vector<7xf32>
    vector.scatter %alloc_14[%c0, %c0, %c2] [%32], %33, %34 : memref<6x1x7xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
    %35 = math.ctlz %7 : tensor<7x7x6xi32>
    %36 = math.sqrt %cst_1 : f32
    %generated = tensor.generate %c13, %c3 {
    ^bb0(%arg1: index, %arg2: index):
      %274 = vector.broadcast %cst_7 : f16 to vector<7xf16>
      %275 = vector.transfer_write %274, %12[%c11, %c7, %c0] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<7xf16>, tensor<7x7x6xf16>
      %276 = affine.apply affine_map<(d0) -> (0)>(%c12)
      %277 = math.log2 %cst : f32
      %278 = arith.negf %cst_1 : f32
      tensor.yield %c808531491_i32 : i32
    } : tensor<?x?xi32>
    %37 = bufferization.to_memref %1 : memref<7x6xi64>
    %collapsed = tensor.collapse_shape %15 [[0, 1]] : tensor<7x6xf32> into tensor<42xf32>
    %38 = arith.remf %cst_0, %cst_0 : f16
    %39 = vector.bitcast %26 : vector<1xf16> to vector<1xi16>
    %40 = math.powf %6, %15 : tensor<7x6xf32>
    %false_23 = index.bool.constant false
    %41 = vector.broadcast %c2 : index to vector<1xindex>
    %42 = vector.broadcast %25 : i1 to vector<1xi1>
    %43 = vector.broadcast %c1180538467_i32 : i32 to vector<1xi32>
    vector.scatter %alloc_16[%c2, %c2, %c4] [%41], %42, %43 : memref<7x7x6xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
    %44 = arith.shrsi %c808531491_i32, %c1180538467_i32 : i32
    memref.copy %alloc_22, %alloc_9 : memref<7x7x6xi1> to memref<7x7x6xi1>
    %45 = arith.shrsi %false_4, %true : i1
    memref.tensor_store %13, %alloc_19 : memref<1xi64>
    %46 = math.powf %reduced, %19 : tensor<f32>
    %47 = affine.if affine_set<(d0, d1, d2) : (d0 mod 4 >= 0, d2 == 0, d2 * 16 == 0)>(%c13, %c14, %c3) -> f32 {
      affine.for %arg1 = 0 to 0 {
      }
      %274 = tensor.empty() : tensor<7x7x6xi64>
      %275 = tensor.empty() : tensor<1xi64>
      %276 = index.casts %c11 : index to i32
      %277 = arith.remui %c16374_i16, %c16374_i16 : i16
      %278 = math.ctlz %c20593_i16 : i16
      %279 = math.ipowi %24, %24 : tensor<i16>
      %280 = math.tan %14 : tensor<1xf16>
      affine.yield %cst_1 : f32
    } else {
      %alloc_51 = memref.alloc() : memref<6x1xf32>
      %274 = tensor.empty() : tensor<7x1xf32>
      %275 = linalg.matmul ins(%6, %alloc_51 : tensor<7x6xf32>, memref<6x1xf32>) outs(%274 : tensor<7x1xf32>) -> tensor<7x1xf32>
      %276 = index.add %c15, %c3
      %277 = index.ceildivu %c8, %c3
      %278 = math.powf %cst_2, %cst : f32
      %279 = arith.maxsi %c20593_i16, %c20593_i16 : i16
      %280 = arith.minui %c20593_i16, %c20593_i16 : i16
      %281 = math.absf %14 : tensor<1xf16>
      %282 = index.divu %c6, %c8
      affine.yield %cst : f32
    }
    %48 = index.ceildivu %c0, %c0
    %extracted = tensor.extract %23[] : tensor<i16>
    %49 = index.sizeof
    %alloc_24 = memref.alloc() : memref<6x1x7xi32>
    %50 = arith.remf %cst_5, %cst : f32
    %51 = tensor.empty() : tensor<7x6xf32>
    %mapped_25 = linalg.map ins(%15, %alloc_21 : tensor<7x6xf32>, memref<7x6xf32>) outs(%51 : tensor<7x6xf32>)
      (%in: f32, %in_51: f32) {
        %274 = vector.reduction <minf>, %26 : vector<1xf16> into f16
        %splat_52 = tensor.splat %cst : tensor<6x1x7xf32>
        %inserted_53 = tensor.insert %c573754736_i64 into %1[%c0, %c4] : tensor<7x6xi64>
        %275 = index.add %c9, %c11
        %alloca_54 = memref.alloca() : memref<6x1x7xf16>
        bufferization.dealloc_tensor %3 : tensor<6x1x7xi16>
        %276 = arith.shrui %c20593_i16, %c16374_i16 : i16
        %277 = math.round %15 : tensor<7x6xf32>
        %278 = math.ctpop %true_6 : i1
        %expanded = tensor.expand_shape %0 [[0, 1]] : tensor<1xf32> into tensor<1x1xf32>
        %279 = arith.remsi %c20593_i16, %c20593_i16 : i16
        %280 = index.ceildivs %49, %c6
        %281 = arith.divui %c1180538467_i32, %c808531491_i32 : i32
        %inserted_55 = tensor.insert %c16374_i16 into %23[] : tensor<i16>
        %282 = math.tan %19 : tensor<f32>
        %from_elements = tensor.from_elements %in_51, %cst, %cst_5, %cst_1, %cst, %cst_3, %cst_3, %cst_3, %cst_2, %cst, %cst_2, %cst, %in_51, %cst, %cst_3, %cst_1, %cst_2, %cst_5, %cst_3, %cst_2, %in, %in_51, %cst_3, %cst_2, %cst_1, %cst_5, %in, %cst_3, %cst, %cst, %cst_3, %cst, %cst_3, %cst_5, %cst_5, %cst_2, %cst, %in, %cst_1, %in, %cst_2, %in : tensor<7x6xf32>
        %283 = tensor.empty() : tensor<6x6xf32>
        %284 = tensor.empty() : tensor<7x6xf32>
        %285 = linalg.matmul ins(%51, %283 : tensor<7x6xf32>, tensor<6x6xf32>) outs(%284 : tensor<7x6xf32>) -> tensor<7x6xf32>
        %286 = arith.maxui %true, %true_6 : i1
        %287 = math.absi %24 : tensor<i16>
        %288 = math.ctpop %4 : tensor<1xi16>
        %alloca_56 = memref.alloca() : memref<1xi32>
        %289 = vector.matrix_multiply %26, %21 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 7 : i32} : (vector<1xf16>, vector<7xf16>) -> vector<7xf16>
        %290 = math.atan %cst_5 : f32
        %291 = math.copysign %cst_7, %cst_7 : f16
        %292 = index.casts %c808531491_i32 : i32 to index
        %293 = vector.matrix_multiply %39, %39 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
        %294 = index.sub %c12, %c3
        %295 = arith.minf %cst_2, %in : f32
        %296 = math.round %12 : tensor<7x7x6xf16>
        vector.print %21 : vector<7xf16>
        %297 = math.ctlz %25 : i1
        %298 = affine.apply affine_map<(d0) -> (0)>(%c12)
        %cst_57 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_57 : f32
      }
    %52 = arith.negf %cst_7 : f16
    %53 = math.round %12 : tensor<7x7x6xf16>
    %54 = index.maxu %c4, %c4
    %55 = tensor.empty(%c5) : tensor<7x7x?xi16>
    %56 = arith.remf %cst_7, %cst_7 : f16
    %57 = vector.matrix_multiply %26, %26 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
    %58 = math.cttz %22 : tensor<1xi16>
    %59 = scf.index_switch %c9 -> tensor<7x6xi32> 
    case 1 {
      %274 = math.log10 %6 : tensor<7x6xf32>
      %275 = arith.cmpf ult, %cst, %cst_5 : f32
      %276 = math.ctlz %c1180538467_i32 : i32
      %277 = arith.remsi %true, %false_23 : i1
      %278 = arith.addf %cst_0, %cst_7 : f16
      %279 = arith.negf %cst_3 : f32
      %280 = index.add %c14, %c7
      %281 = scf.execute_region -> index {
        %290 = math.round %collapsed : tensor<42xf32>
        %291 = arith.remf %cst_3, %cst_1 : f32
        %292 = math.round %8 : tensor<7x7x6xf16>
        %293 = math.copysign %0, %0 : tensor<1xf32>
        %294 = math.round %cst_1 : f32
        %295 = arith.subi %c808531491_i32, %c808531491_i32 : i32
        %296 = vector.broadcast %cst_0 : f16 to vector<f16>
        %297 = vector.transfer_write %296, %14[%c10] : vector<f16>, tensor<1xf16>
        %298 = math.exp %cst_7 : f16
        %299 = arith.addf %cst_3, %cst : f32
        %300 = bufferization.clone %alloc_9 : memref<7x7x6xi1> to memref<7x7x6xi1>
        %301 = index.add %c4, %c0
        %302 = index.maxu %c14, %c3
        %303 = math.rsqrt %0 : tensor<1xf32>
        %304 = math.expm1 %51 : tensor<7x6xf32>
        %305 = vector.broadcast %c573754736_i64 : i64 to vector<7x6x6xi64>
        %306 = vector.broadcast %c573754736_i64 : i64 to vector<6x6xi64>
        %dest_52, %accumulated_value_53 = vector.scan <or>, %305, %306 {inclusive = false, reduction_dim = 0 : i64} : vector<7x6x6xi64>, vector<6x6xi64>
        bufferization.dealloc_tensor %10 : tensor<7x7x6xi32>
        scf.yield %c4 : index
      }
      %282 = index.mul %48, %48
      %generated_51 = tensor.generate %c0 {
      ^bb0(%arg1: index, %arg2: index):
        %290 = index.casts %c1 : index to i32
        %alloc_52 = memref.alloc() : memref<6x7xf32>
        %291 = tensor.empty() : tensor<7x7xf32>
        %292 = linalg.matmul ins(%51, %alloc_52 : tensor<7x6xf32>, memref<6x7xf32>) outs(%291 : tensor<7x7xf32>) -> tensor<7x7xf32>
        %splat_53 = tensor.splat %c1180538467_i32 : tensor<1xi32>
        %293 = tensor.empty(%54, %c13, %c13) : tensor<?x?x?xi32>
        tensor.yield %c20593_i16 : i16
      } : tensor<?x6xi16>
      %283 = arith.shrui %25, %25 : i1
      %284 = index.ceildivu %c4, %282
      %285 = math.cos %cst_7 : f16
      %286 = math.cttz %10 : tensor<7x7x6xi32>
      %287 = arith.cmpi sle, %c16374_i16, %c16374_i16 : i16
      %288 = index.maxs %c6, %49
      %289 = tensor.empty() : tensor<7x6xi32>
      scf.yield %289 : tensor<7x6xi32>
    }
    default {
      %274 = arith.shrsi %false, %false_23 : i1
      %275 = index.ceildivs %c1, %c4
      %rank = tensor.rank %3 : tensor<6x1x7xi16>
      %from_elements = tensor.from_elements %cst_7, %cst_7, %cst_7, %cst_0, %cst_7, %cst_7, %cst_7, %cst_7, %cst_0, %cst_7, %cst_7, %cst_0, %cst_0, %cst_0, %cst_7, %cst_0, %cst_7, %cst_0, %cst_7, %cst_7, %cst_0, %cst_7, %cst_0, %cst_0, %cst_7, %cst_0, %cst_7, %cst_7, %cst_0, %cst_0, %cst_7, %cst_7, %cst_0, %cst_0, %cst_7, %cst_0, %cst_0, %cst_7, %cst_7, %cst_7, %cst_7, %cst_0, %cst_7, %cst_0, %cst_7, %cst_0, %cst_0, %cst_7, %cst_0, %cst_7, %cst_0, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_0, %cst_7, %cst_7, %cst_7, %cst_0, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_0, %cst_0, %cst_7, %cst_7, %cst_0, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_0, %cst_7, %cst_7, %cst_7, %cst_0, %cst_7, %cst_7, %cst_7, %cst_7, %cst_0, %cst_7, %cst_0, %cst_7, %cst_0, %cst_7, %cst_7, %cst_0, %cst_0, %cst_7, %cst_7, %cst_7, %cst_0, %cst_0, %cst_7, %cst_0, %cst_7, %cst_7, %cst_7, %cst_0, %cst_7, %cst_7, %cst_7, %cst_7, %cst_0, %cst_0, %cst_7, %cst_7, %cst_7, %cst_7, %cst_0, %cst_0, %cst_0, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_0, %cst_7, %cst_0, %cst_7, %cst_0, %cst_0, %cst_7, %cst_0, %cst_7, %cst_0, %cst_7, %cst_7, %cst_7, %cst_7, %cst_0, %cst_7, %cst_7, %cst_7, %cst_7, %cst_0, %cst_0, %cst_7, %cst_7, %cst_0, %cst_7, %cst_0, %cst_0, %cst_0, %cst_7, %cst_7, %cst_7, %cst_0, %cst_7, %cst_0, %cst_7, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_7, %cst_7, %cst_7, %cst_0, %cst_0, %cst_0, %cst_7, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_7, %cst_0, %cst_0, %cst_0, %cst_7, %cst_0, %cst_0, %cst_0, %cst_7, %cst_0, %cst_7, %cst_0, %cst_0, %cst_7, %cst_0, %cst_7, %cst_0, %cst_0, %cst_7, %cst_7, %cst_0, %cst_7, %cst_7, %cst_0, %cst_7, %cst_0, %cst_7, %cst_7, %cst_0, %cst_7, %cst_7, %cst_7, %cst_0, %cst_7, %cst_0, %cst_0, %cst_7, %cst_0, %cst_7, %cst_0, %cst_0, %cst_7, %cst_7, %cst_0, %cst_0, %cst_7, %cst_7, %cst_0, %cst_0, %cst_7, %cst_7, %cst_0, %cst_7, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_0, %cst_7, %cst_0, %cst_7, %cst_7, %cst_7, %cst_7, %cst_0, %cst_7, %cst_7, %cst_7, %cst_7, %cst_0, %cst_7, %cst_7, %cst_7, %cst_7, %cst_0, %cst_0, %cst_0, %cst_0, %cst_7, %cst_0, %cst_0, %cst_7, %cst_0, %cst_7, %cst_7, %cst_7, %cst_0, %cst_7, %cst_7, %cst_0, %cst_7, %cst_0, %cst_7, %cst_0, %cst_7, %cst_7, %cst_0, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_0, %cst_7, %cst_0, %cst_0, %cst_7, %cst_0 : tensor<7x7x6xf16>
      %276 = vector.reduction <mul>, %21 : vector<7xf16> into f16
      %277 = math.floor %6 : tensor<7x6xf32>
      vector.print %26 : vector<1xf16>
      %278 = arith.minsi %c808531491_i32, %c1180538467_i32 : i32
      %279 = math.ctlz %7 : tensor<7x7x6xi32>
      %280 = index.add %c13, %c2
      %281 = arith.remf %cst_7, %cst_0 : f16
      %282 = tensor.empty() : tensor<7x6xi16>
      %283 = math.roundeven %cst_1 : f32
      %alloc_51 = memref.alloc() : memref<7x7x6xf32>
      memref.tensor_store %9, %alloc_51 : memref<7x7x6xf32>
      %284 = scf.while (%arg1 = %c808531491_i32) : (i32) -> i32 {
        %287 = vector.create_mask %c7, %54, %280 : vector<6x1x7xi1>
        %288 = index.add %54, %48
        %inserted_52 = tensor.insert %cst_0 into %from_elements[%c0, %c2, %c5] : tensor<7x7x6xf16>
        %289 = vector.broadcast %c5 : index to vector<7xindex>
        %290 = vector.broadcast %false : i1 to vector<7xi1>
        %291 = vector.broadcast %c573754736_i64 : i64 to vector<7xi64>
        vector.scatter %alloc_18[%c2, %c0, %c5] [%289], %290, %291 : memref<6x1x7xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
        %292 = math.floor %9 : tensor<7x7x6xf32>
        %293 = arith.addf %cst_7, %cst_7 : f16
        %alloc_53 = memref.alloc() : memref<6x1x7xi16>
        memref.tensor_store %3, %alloc_53 : memref<6x1x7xi16>
        %294 = vector.broadcast %c20593_i16 : i16 to vector<6x1x7xi16>
        scf.condition(%false_23) %c808531491_i32 : i32
      } do {
      ^bb0(%arg1: i32):
        %287 = math.fma %reduced, %reduced, %reduced : tensor<f32>
        %288 = math.sqrt %51 : tensor<7x6xf32>
        %289 = vector.broadcast %cst_3 : f32 to vector<1xf32>
        %290 = vector.fma %289, %289, %289 : vector<1xf32>
        %291 = math.ctpop %4 : tensor<1xi16>
        %292 = index.ceildivu %c5, %c0
        %293 = vector.insert %cst_7, %57 [0] : f16 into vector<1xf16>
        %294 = math.absi %3 : tensor<6x1x7xi16>
        %false_52 = index.bool.constant false
        %295 = arith.subi %true_6, %false_52 : i1
        %296 = math.exp %51 : tensor<7x6xf32>
        %297 = math.exp %51 : tensor<7x6xf32>
        %298 = arith.remui %false_52, %false_23 : i1
        %299 = vector.insertelement %cst_7, %26[%275 : index] : vector<1xf16>
        %300 = math.exp2 %14 : tensor<1xf16>
        %301 = arith.minsi %c1180538467_i32, %c808531491_i32 : i32
        %302 = math.fma %12, %12, %12 : tensor<7x7x6xf16>
        scf.yield %c1180538467_i32 : i32
      }
      %285 = index.ceildivs %275, %c3
      %286 = tensor.empty() : tensor<7x6xi32>
      scf.yield %286 : tensor<7x6xi32>
    }
    %60 = math.atan %19 : tensor<f32>
    %61 = math.round %9 : tensor<7x7x6xf32>
    %62 = scf.execute_region -> memref<1xi32> {
      affine.for %arg1 = 0 to 103 {
      }
      %274 = vector.matrix_multiply %21, %57 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 1 : i32} : (vector<7xf16>, vector<1xf16>) -> vector<7xf16>
      %275 = index.ceildivu %c2, %c10
      %276 = arith.negf %cst : f32
      %inserted_51 = tensor.insert %extracted into %11[%c0] : tensor<1xi16>
      memref.store %true_6, %alloc_22[%c2, %c3, %c0] : memref<7x7x6xi1>
      %277 = arith.remf %cst_1, %cst_5 : f32
      %278 = math.ipowi %18, %18 : tensor<7x6x1xi16>
      bufferization.dealloc_tensor %8 : tensor<7x7x6xf16>
      %279 = vector.bitcast %39 : vector<1xi16> to vector<1xi16>
      %280 = arith.divui %false_4, %false_4 : i1
      %281 = arith.maxui %false_4, %true_6 : i1
      %282 = math.absi %29 : tensor<7x7x6xi32>
      %283 = math.absi %2 : tensor<6x1x7xi16>
      %284 = arith.maxf %cst_7, %cst_7 : f16
      %285 = math.atan2 %cst_7, %cst_0 : f16
      %alloc_52 = memref.alloc() : memref<1xi32>
      scf.yield %alloc_52 : memref<1xi32>
    }
    %63 = math.roundeven %6 : tensor<7x6xf32>
    %collapsed_26 = tensor.collapse_shape %10 [[0, 1], [2]] : tensor<7x7x6xi32> into tensor<49x6xi32>
    %inserted = tensor.insert %extracted into %transposed[%c0, %c2, %c0] : tensor<7x6x1xi16>
    %64 = math.log1p %9 : tensor<7x7x6xf32>
    %65 = math.rsqrt %cst_2 : f32
    %66 = arith.maxui %25, %false : i1
    %67 = vector.shuffle %39, %39 [1] : vector<1xi16>, vector<1xi16>
    %68 = arith.addf %cst_2, %cst : f32
    %69 = tensor.empty() : tensor<6x7xf32>
    %70 = tensor.empty() : tensor<7x7xf32>
    %71 = linalg.matmul ins(%15, %69 : tensor<7x6xf32>, tensor<6x7xf32>) outs(%70 : tensor<7x7xf32>) -> tensor<7x7xf32>
    %72 = math.log10 %cst : f32
    %73 = index.mul %c3, %54
    %74 = math.powf %70, %70 : tensor<7x7xf32>
    %75 = vector.extract_strided_slice %39 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi16> to vector<1xi16>
    %76 = vector.broadcast %cst_2 : f32 to vector<1xf32>
    %77 = vector.fma %76, %76, %76 : vector<1xf32>
    %alloc_27 = memref.alloc() : memref<1xf16>
    %c1_i32 = arith.constant 1 : i32
    %78 = vector.transfer_read %alloc_16[%c2, %c11, %49], %c1_i32 : memref<7x7x6xi32>, vector<i32>
    %79 = math.ctpop %3 : tensor<6x1x7xi16>
    %80 = index.mul %c14, %73
    %81 = memref.atomic_rmw assign %c16374_i16, %alloc_11[%c6, %c4, %c0] : (i16, memref<7x7x6xi16>) -> i16
    %82 = math.powf %15, %6 : tensor<7x6xf32>
    %83 = vector.broadcast %c0 : index to vector<6xindex>
    %84 = vector.broadcast %true_6 : i1 to vector<6xi1>
    %85 = vector.broadcast %cst_3 : f32 to vector<6xf32>
    vector.scatter %alloc_21[%c2, %c4] [%83], %84, %85 : memref<7x6xf32>, vector<6xindex>, vector<6xi1>, vector<6xf32>
    %86 = arith.maxf %cst_0, %cst_7 : f16
    %87 = math.powf %19, %19 : tensor<f32>
    %cst_28 = arith.constant 1.000000e+00 : f32
    %cst_29 = arith.constant 0.000000e+00 : f32
    %88 = vector.transfer_read %6[%73, %c10], %cst_29 : tensor<7x6xf32>, vector<f32>
    %89 = math.cttz %c1_i32 : i32
    %90 = math.round %12 : tensor<7x7x6xf16>
    %91 = scf.execute_region -> index {
      %274 = vector.broadcast %73 : index to vector<1xindex>
      %275 = vector.broadcast %false : i1 to vector<1xi1>
      %276 = vector.broadcast %c808531491_i32 : i32 to vector<1xi32>
      vector.scatter %62[%c0] [%274], %275, %276 : memref<1xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
      %277 = math.round %reduced : tensor<f32>
      %278 = vector.matrix_multiply %26, %57 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
      %279 = vector.matrix_multiply %278, %21 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 7 : i32} : (vector<1xf16>, vector<7xf16>) -> vector<7xf16>
      vector.print %76 : vector<1xf32>
      %280 = arith.maxui %c573754736_i64, %c573754736_i64 : i64
      %281 = tensor.empty() : tensor<1xi32>
      %mapped_51 = linalg.map ins(%62, %62 : memref<1xi32>, memref<1xi32>) outs(%281 : tensor<1xi32>)
        (%in: i32, %in_54: i32) {
          %289 = index.floordivs %c3, %c1
          vector.print %75 : vector<1xi16>
          %290 = math.tanh %6 : tensor<7x6xf32>
          %291 = arith.maxsi %false, %true_6 : i1
          %292 = bufferization.clone %alloc_18 : memref<6x1x7xi64> to memref<6x1x7xi64>
          memref.store %c1180538467_i32, %alloc_16[%c4, %c2, %c4] : memref<7x7x6xi32>
          %293 = index.divu %c15, %c11
          %294 = arith.divui %c16374_i16, %extracted : i16
          %295 = math.ctpop %7 : tensor<7x7x6xi32>
          %296 = arith.maxui %false, %false : i1
          %297 = index.divu %c11, %80
          %alloc_55 = memref.alloc() : memref<1xf16>
          memref.copy %alloc_10, %alloc_55 : memref<1xf16> to memref<1xf16>
          %rank_56 = tensor.rank %3 : tensor<6x1x7xi16>
          %298 = tensor.empty() : tensor<6x6xi64>
          %299 = tensor.empty() : tensor<7x6xi64>
          %300 = linalg.matmul ins(%1, %298 : tensor<7x6xi64>, tensor<6x6xi64>) outs(%299 : tensor<7x6xi64>) -> tensor<7x6xi64>
          %301 = math.log10 %14 : tensor<1xf16>
          %alloca_57 = memref.alloca() : memref<1xi16>
          %302 = index.maxs %c5, %c8
          %303 = tensor.empty() : tensor<6x1x7xi1>
          %from_elements = tensor.from_elements %cst_7, %cst_0, %cst_0, %cst_0, %cst_7, %cst_7, %cst_0, %cst_0, %cst_0, %cst_7, %cst_7, %cst_0, %cst_7, %cst_0, %cst_7, %cst_0, %cst_0, %cst_0, %cst_0, %cst_7, %cst_7, %cst_7, %cst_7, %cst_0, %cst_7, %cst_0, %cst_7, %cst_7, %cst_7, %cst_7, %cst_0, %cst_0, %cst_0, %cst_7, %cst_7, %cst_0, %cst_7, %cst_0, %cst_0, %cst_7, %cst_7, %cst_0, %cst_7, %cst_7, %cst_0, %cst_0, %cst_0, %cst_7, %cst_7, %cst_0, %cst_7, %cst_7, %cst_7, %cst_0, %cst_7, %cst_7, %cst_7, %cst_0, %cst_7, %cst_7, %cst_0, %cst_0, %cst_0, %cst_0, %cst_7, %cst_0, %cst_7, %cst_0, %cst_0, %cst_0, %cst_0, %cst_7, %cst_0, %cst_7, %cst_7, %cst_7, %cst_0, %cst_7, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_7, %cst_7, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_7, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_7, %cst_0, %cst_7, %cst_0, %cst_0, %cst_0, %cst_7, %cst_0, %cst_7, %cst_7, %cst_0, %cst_7, %cst_0, %cst_7, %cst_7, %cst_0, %cst_0, %cst_0, %cst_0, %cst_7, %cst_7, %cst_7, %cst_7, %cst_0, %cst_7, %cst_7, %cst_0, %cst_0, %cst_7, %cst_7, %cst_7, %cst_0, %cst_0, %cst_0, %cst_7, %cst_0, %cst_7, %cst_7, %cst_7, %cst_0, %cst_7, %cst_0, %cst_0, %cst_0, %cst_7, %cst_0, %cst_0, %cst_7, %cst_7, %cst_0, %cst_0, %cst_7, %cst_7, %cst_0, %cst_0, %cst_7, %cst_0, %cst_7, %cst_7, %cst_7, %cst_0, %cst_7, %cst_0, %cst_7, %cst_0, %cst_0, %cst_7, %cst_0, %cst_0, %cst_7, %cst_7, %cst_0, %cst_7, %cst_7, %cst_0, %cst_7, %cst_0, %cst_0, %cst_0, %cst_7, %cst_7, %cst_7, %cst_0, %cst_0, %cst_0, %cst_7, %cst_0, %cst_0, %cst_0, %cst_0, %cst_7, %cst_0, %cst_7, %cst_7, %cst_0, %cst_0, %cst_7, %cst_7, %cst_7, %cst_7, %cst_0, %cst_0, %cst_7, %cst_0, %cst_7, %cst_7, %cst_7, %cst_0, %cst_0, %cst_7, %cst_7, %cst_0, %cst_0, %cst_7, %cst_0, %cst_7, %cst_7, %cst_7, %cst_0, %cst_0, %cst_7, %cst_0, %cst_7, %cst_0, %cst_7, %cst_7, %cst_0, %cst_0, %cst_7, %cst_7, %cst_7, %cst_7, %cst_0, %cst_7, %cst_0, %cst_7, %cst_0, %cst_0, %cst_7, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_7, %cst_7, %cst_0, %cst_7, %cst_7, %cst_0, %cst_7, %cst_0, %cst_0, %cst_7, %cst_7, %cst_7, %cst_7, %cst_0, %cst_7, %cst_7, %cst_0, %cst_0, %cst_7, %cst_7, %cst_7, %cst_7, %cst_0, %cst_0, %cst_0, %cst_7, %cst_0, %cst_0, %cst_7, %cst_7, %cst_7, %cst_0, %cst_7, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_7, %cst_7, %cst_7, %cst_7, %cst_0, %cst_0, %cst_7, %cst_7, %cst_0, %cst_0, %cst_7, %cst_0, %cst_7 : tensor<7x7x6xf16>
          %c1_i64 = arith.constant 1 : i64
          %304 = vector.transfer_read %alloc_18[%c2, %c2, %c8], %c1_i64 : memref<6x1x7xi64>, vector<7x7xi64>
          %305 = math.ipowi %c16374_i16, %c16374_i16 : i16
          %306 = vector.broadcast %cst : f32 to vector<7xf32>
          %307 = vector.broadcast %false_23 : i1 to vector<7xi1>
          %308 = vector.maskedload %alloc_12[%c3, %c0, %c4], %307, %306 : memref<6x1x7xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
          vector.print %75 : vector<1xi16>
          %309 = math.absi %c1_i64 : i64
          %310 = vector.extract %21[1] : vector<7xf16>
          %311 = arith.remsi %c16374_i16, %c16374_i16 : i16
          %312 = vector.extract %308[2] : vector<7xf32>
          %313 = math.absf %reduced : tensor<f32>
          %314 = math.log2 %cst_2 : f32
          %315 = vector.create_mask %289, %c7, %c2 : vector<6x1x7xi1>
          %316 = index.maxs %c4, %c14
          %317 = index.maxs %c12, %c3
          %c1_i32_58 = arith.constant 1 : i32
          linalg.yield %c1_i32_58 : i32
        }
      %282 = vector.matrix_multiply %77, %77 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
      %283 = index.casts %true_6 : i1 to index
      %284 = memref.atomic_rmw assign %cst, %alloc_21[%c5, %c4] : (f32, memref<7x6xf32>) -> f32
      %c0_i16 = arith.constant 0 : i16
      %c0_i16_52 = arith.constant 0 : i16
      %285 = vector.transfer_read %alloc_11[%48, %c11, %54], %c0_i16_52 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : memref<7x7x6xi16>, vector<7xi16>
      %alloc_53 = memref.alloc() : memref<7x7x6xi1>
      %286 = arith.remf %cst_5, %cst_3 : f32
      %rank = tensor.rank %0 : tensor<1xf32>
      %287 = math.ctpop %13 : tensor<1xi64>
      %288 = math.ceil %reduced : tensor<f32>
      scf.yield %73 : index
    }
    %92 = math.absf %51 : tensor<7x6xf32>
    %93 = affine.max affine_map<(d0, d1) -> (d1 * -2, d1, d1 * 5)>(%c5, %49)
    %94 = arith.divui %false, %true_6 : i1
    %95 = arith.addf %cst_2, %cst_1 : f32
    %96 = arith.minui %c16374_i16, %c16374_i16 : i16
    %97 = vector.bitcast %26 : vector<1xf16> to vector<1xf16>
    %98 = index.mul %91, %93
    %99 = math.log %cst_3 : f32
    %100 = arith.minui %true, %25 : i1
    %101 = math.copysign %8, %8 : tensor<7x7x6xf16>
    %102 = memref.load %alloc_14[%c5, %c0, %c3] : memref<6x1x7xf32>
    %103 = math.round %8 : tensor<7x7x6xf16>
    %104 = arith.muli %false_4, %true : i1
    %105 = vector.broadcast %c1_i32 : i32 to vector<6x1x7xi32>
    %106 = arith.minui %true_6, %false_23 : i1
    %107 = arith.shrui %c808531491_i32, %c808531491_i32 : i32
    %108 = arith.divui %c16374_i16, %c20593_i16 : i16
    %109 = math.log10 %14 : tensor<1xf16>
    %alloc_30 = memref.alloc() : memref<7x6xi16>
    memref.tensor_store %5, %alloc_30 : memref<7x6xi16>
    %110 = vector.broadcast %73 : index to vector<7xindex>
    %111 = vector.broadcast %false_23 : i1 to vector<7xi1>
    %112 = vector.broadcast %cst : f32 to vector<7xf32>
    vector.scatter %alloc[%c2, %c2] [%110], %111, %112 : memref<7x6xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
    vector.print %26 : vector<1xf16>
    %113 = index.divs %c3, %54
    %splat = tensor.splat %cst_0 : tensor<6x1x7xf16>
    %114 = math.ceil %70 : tensor<7x7xf32>
    %115 = math.ctpop %11 : tensor<1xi16>
    %116 = vector.multi_reduction <maxsi>, %39, %39 [] : vector<1xi16> to vector<1xi16>
    %117 = index.casts %80 : index to i32
    memref.copy %alloc_12, %alloc_14 : memref<6x1x7xf32> to memref<6x1x7xf32>
    %118 = affine.apply affine_map<(d0) -> (0)>(%c6)
    %119 = math.powf %8, %8 : tensor<7x7x6xf16>
    %collapsed_31 = tensor.collapse_shape %7 [[0, 1], [2]] : tensor<7x7x6xi32> into tensor<49x6xi32>
    %120 = index.floordivs %c2, %c9
    %121 = math.log10 %collapsed : tensor<42xf32>
    %cst_32 = arith.constant 1.000000e+00 : f32
    %cst_33 = arith.constant 0.000000e+00 : f32
    %122 = vector.transfer_read %6[%c4, %120], %cst_33 : tensor<7x6xf32>, vector<f32>
    %123 = memref.realloc %62 : memref<1xi32> to memref<7xi32>
    %124 = index.ceildivs %54, %73
    %true_34 = index.bool.constant true
    %125 = vector.extract %75[0] : vector<1xi16>
    %126 = math.exp2 %51 : tensor<7x6xf32>
    %127 = math.cttz %1 : tensor<7x6xi64>
    %128 = index.casts %c573754736_i64 : i64 to index
    %129 = arith.remf %cst_0, %cst_7 : f16
    %130 = math.atan2 %cst_28, %cst_1 : f32
    %131 = math.exp %0 : tensor<1xf32>
    %132 = tensor.empty() : tensor<7x7xf32>
    %mapped_35 = linalg.map ins(%70, %70 : tensor<7x7xf32>, tensor<7x7xf32>) outs(%132 : tensor<7x7xf32>)
      (%in: f32, %in_51: f32) {
        %274 = vector.matrix_multiply %57, %57 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
        %275 = math.exp2 %12 : tensor<7x7x6xf16>
        %276 = arith.shrsi %true, %true_6 : i1
        %277 = memref.atomic_rmw mins %c573754736_i64, %alloc_18[%c1, %c0, %c5] : (i64, memref<6x1x7xi64>) -> i64
        %278 = index.divu %49, %c4
        %279 = arith.remf %cst_7, %cst_7 : f16
        %280 = bufferization.to_memref %5 : memref<7x6xi16>
        %281 = arith.shrsi %c1180538467_i32, %c808531491_i32 : i32
        %rank = tensor.rank %12 : tensor<7x7x6xf16>
        %282 = math.absi %3 : tensor<6x1x7xi16>
        %283 = math.exp2 %70 : tensor<7x7xf32>
        %284 = math.exp %14 : tensor<1xf16>
        memref.copy %alloc_21, %alloc : memref<7x6xf32> to memref<7x6xf32>
        %285 = math.ctpop %5 : tensor<7x6xi16>
        %286 = math.atan %cst_2 : f32
        %287 = index.ceildivs %124, %93
        affine.for %arg1 = 0 to 58 {
        }
        %288 = memref.realloc %alloc_19 : memref<1xi64> to memref<7xi64>
        %289 = vector.create_mask %c2, %c0 : vector<7x6xi1>
        %290 = affine.max affine_map<(d0, d1) -> (d0 mod 4)>(%c14, %93)
        %291 = arith.addf %cst, %cst : f32
        %292 = vector.insert %extracted, %75 [0] : i16 into vector<1xi16>
        %293 = affine.max affine_map<(d0, d1, d2) -> (d0 - 128, (d0 - 128) ceildiv 32, (d0 - 128) ceildiv 32)>(%c11, %290, %c5)
        %294 = arith.remf %cst_2, %in_51 : f32
        %295 = vector.shuffle %75, %75 [1] : vector<1xi16>, vector<1xi16>
        %296 = math.ctpop %23 : tensor<i16>
        %297 = arith.minsi %c808531491_i32, %c808531491_i32 : i32
        %298 = math.absi %17 : tensor<6x1x7xi16>
        %299 = tensor.empty() : tensor<6x6xf32>
        %300 = tensor.empty() : tensor<7x6xf32>
        %301 = linalg.matmul ins(%51, %299 : tensor<7x6xf32>, tensor<6x6xf32>) outs(%300 : tensor<7x6xf32>) -> tensor<7x6xf32>
        %302 = bufferization.to_tensor %alloc_18 : memref<6x1x7xi64>
        %splat_52 = tensor.splat %cst_2 : tensor<6x1x7xf32>
        %303 = vector.shuffle %105, %105 [0, 3, 10] : vector<6x1x7xi32>, vector<6x1x7xi32>
        %cst_53 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_53 : f32
      }
    %collapsed_36 = tensor.collapse_shape %15 [[0, 1]] : tensor<7x6xf32> into tensor<42xf32>
    %133 = math.log %14 : tensor<1xf16>
    %alloca_37 = memref.alloca() : memref<7x7x6xi16>
    %134 = vector.shuffle %76, %76 [0, 1] : vector<1xf32>, vector<1xf32>
    %135 = memref.atomic_rmw minf %cst, %alloc_21[%c1, %c1] : (f32, memref<7x6xf32>) -> f32
    %136 = math.ctpop %11 : tensor<1xi16>
    %137 = index.casts %c16374_i16 : i16 to index
    %138 = index.maxs %c2, %c5
    %139 = vector.broadcast %c1180538467_i32 : i32 to vector<1x7xi32>
    %140 = vector.insert %139, %105 [1] : vector<1x7xi32> into vector<6x1x7xi32>
    %alloca_38 = memref.alloca() : memref<6x1x7xi32>
    %141 = vector.broadcast %cst : f32 to vector<6xf32>
    vector.transfer_write %141, %alloc_21[%c2, %137] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<6xf32>, memref<7x6xf32>
    %142 = vector.insert %cst_7, %26 [0] : f16 into vector<1xf16>
    %143 = scf.while (%arg1 = %cst_3) : (f32) -> f32 {
      %274 = math.log1p %cst_28 : f32
      scf.index_switch %c1 
      case 1 {
        %282 = memref.realloc %alloc_19 : memref<1xi64> to memref<7xi64>
        %283 = math.absi %11 : tensor<1xi16>
        %284 = math.round %reduced : tensor<f32>
        %285 = math.atan %arg1 : f32
        %286 = arith.remf %cst_0, %cst_7 : f16
        %287 = arith.maxsi %c20593_i16, %extracted : i16
        %288 = bufferization.clone %alloc_9 : memref<7x7x6xi1> to memref<7x7x6xi1>
        %289 = math.absf %collapsed : tensor<42xf32>
        %290 = math.round %12 : tensor<7x7x6xf16>
        %291 = index.floordivs %c1, %120
        %292 = vector.broadcast %cst : f32 to vector<1xf32>
        %293 = vector.fma %292, %292, %77 : vector<1xf32>
        %alloca_51 = memref.alloca() : memref<7x7x6xf16>
        %294 = math.ctpop %c1180538467_i32 : i32
        %295 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %26, %97, %cst_0 : vector<1xf16>, vector<1xf16> into f16
        %296 = math.absf %8 : tensor<7x7x6xf16>
        %297 = vector.bitcast %292 : vector<1xf32> to vector<1xf32>
        scf.yield
      }
      default {
        %282 = arith.minui %c808531491_i32, %c1180538467_i32 : i32
        %283 = vector.create_mask %48, %80 : vector<7x6xi1>
        %inserted_51 = tensor.insert %cst_2 into %0[%c0] : tensor<1xf32>
        %splat_52 = tensor.splat %c16374_i16 : tensor<1xi16>
        %284 = arith.minsi %false, %true_34 : i1
        %285 = math.fma %6, %6, %6 : tensor<7x6xf32>
        %286 = math.round %12 : tensor<7x7x6xf16>
        %287 = arith.minui %c808531491_i32, %c1180538467_i32 : i32
        %288 = index.ceildivs %c6, %c11
        %alloc_53 = memref.alloc() : memref<7x7x6xf32>
        memref.tensor_store %9, %alloc_53 : memref<7x7x6xf32>
        %289 = vector.matrix_multiply %77, %77 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
        %290 = arith.remsi %c573754736_i64, %c573754736_i64 : i64
        %291 = math.absi %c573754736_i64 : i64
        %292 = arith.remui %true_34, %true : i1
        %293 = arith.minsi %25, %25 : i1
        %294 = vector.matrix_multiply %57, %21 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 7 : i32} : (vector<1xf16>, vector<7xf16>) -> vector<7xf16>
      }
      %275 = index.casts %c8 : index to i32
      %276 = index.ceildivs %c7, %c11
      %277 = vector.broadcast %138 : index to vector<7xindex>
      %278 = vector.broadcast %true_6 : i1 to vector<7xi1>
      %279 = vector.broadcast %c20593_i16 : i16 to vector<7xi16>
      vector.scatter %alloc_11[%c6, %c6, %c1] [%277], %278, %279 : memref<7x7x6xi16>, vector<7xindex>, vector<7xi1>, vector<7xi16>
      %280 = index.maxs %c15, %c4
      %cast = tensor.cast %collapsed_26 : tensor<49x6xi32> to tensor<?x?xi32>
      %281 = arith.negf %cst_0 : f16
      scf.condition(%true_6) %cst_2 : f32
    } do {
    ^bb0(%arg1: f32):
      %274 = arith.remf %cst_2, %cst_3 : f32
      %275 = memref.realloc %alloc_10 : memref<1xf16> to memref<7xf16>
      %276 = index.floordivs %98, %54
      %277 = vector.matrix_multiply %39, %75 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
      %278 = math.fma %cst, %cst_1, %cst_5 : f32
      %279 = vector.bitcast %76 : vector<1xf32> to vector<1xf32>
      %280 = index.add %c9, %c12
      %281 = scf.index_switch %c3 -> tensor<7x7x6xf16> 
      case 1 {
        %289 = math.round %cst : f32
        %290 = math.powf %cst_32, %cst_2 : f32
        %from_elements = tensor.from_elements %extracted, %c20593_i16, %extracted, %extracted, %extracted, %extracted, %extracted, %c20593_i16, %c16374_i16, %c20593_i16, %c20593_i16, %c16374_i16, %c20593_i16, %c16374_i16, %c16374_i16, %c20593_i16, %c16374_i16, %c20593_i16, %c20593_i16, %extracted, %extracted, %extracted, %c20593_i16, %c20593_i16, %extracted, %extracted, %c20593_i16, %extracted, %c20593_i16, %c20593_i16, %c20593_i16, %extracted, %c20593_i16, %extracted, %c16374_i16, %c16374_i16, %c20593_i16, %c16374_i16, %c16374_i16, %extracted, %c20593_i16, %c20593_i16 : tensor<7x6xi16>
        %291 = vector.matrix_multiply %141, %279 {lhs_columns = 1 : i32, lhs_rows = 6 : i32, rhs_columns = 1 : i32} : (vector<6xf32>, vector<1xf32>) -> vector<6xf32>
        %292 = arith.shrui %c16374_i16, %c16374_i16 : i16
        %293 = arith.negf %cst_7 : f16
        %294 = math.round %15 : tensor<7x6xf32>
        %295 = bufferization.clone %alloc_18 : memref<6x1x7xi64> to memref<6x1x7xi64>
        bufferization.dealloc_tensor %1 : tensor<7x6xi64>
        %296 = vector.broadcast %cst_2 : f32 to vector<7x6xf32>
        %297 = vector.fma %296, %296, %296 : vector<7x6xf32>
        %298 = vector.transpose %139, [1, 0] : vector<1x7xi32> to vector<7x1xi32>
        %299 = index.ceildivs %137, %c1
        %300 = arith.shli %extracted, %extracted : i16
        %301 = math.round %15 : tensor<7x6xf32>
        %302 = memref.atomic_rmw mulf %cst_3, %alloc[%c1, %c3] : (f32, memref<7x6xf32>) -> f32
        %303 = affine.max affine_map<(d0, d1, d2) -> (d0 + d2 * 4 + d2, d1 mod 16, 0, d0)>(%c12, %276, %118)
        scf.yield %12 : tensor<7x7x6xf16>
      }
      case 2 {
        %289 = math.atan2 %9, %9 : tensor<7x7x6xf32>
        %collapsed_51 = tensor.collapse_shape %1 [[0, 1]] : tensor<7x6xi64> into tensor<42xi64>
        %290 = math.round %cst_3 : f32
        %291 = math.log10 %collapsed_36 : tensor<42xf32>
        %292 = memref.realloc %alloc_19 : memref<1xi64> to memref<1xi64>
        %293 = index.ceildivs %c3, %138
        bufferization.dealloc_tensor %generated : tensor<?x?xi32>
        %294 = memref.realloc %alloc_19 : memref<1xi64> to memref<6xi64>
        %295 = math.ctlz %collapsed_31 : tensor<49x6xi32>
        %296 = arith.minsi %c1180538467_i32, %c1_i32 : i32
        %c-18030_i16 = arith.constant -18030 : i16
        %297 = math.ipowi %4, %4 : tensor<1xi16>
        %298 = arith.negf %cst_2 : f32
        %299 = arith.minf %cst_3, %cst_1 : f32
        %300 = memref.realloc %alloc_10 : memref<1xf16> to memref<7xf16>
        %alloca_52 = memref.alloca() : memref<6x1x7xi1>
        scf.yield %12 : tensor<7x7x6xf16>
      }
      case 3 {
        %289 = arith.shrui %false_4, %false_4 : i1
        %290 = arith.shli %true_6, %25 : i1
        memref.tensor_store %15, %alloc_21 : memref<7x6xf32>
        %291 = bufferization.to_memref %2 : memref<6x1x7xi16>
        %292 = vector.broadcast %cst_32 : f32 to vector<6x1x7xf32>
        %293 = vector.fma %292, %292, %292 : vector<6x1x7xf32>
        %294 = math.roundeven %splat : tensor<6x1x7xf16>
        %295 = arith.addi %false_4, %false : i1
        %296 = affine.load %62[%c5] : memref<1xi32>
        %297 = arith.shrui %c573754736_i64, %c573754736_i64 : i64
        %298 = vector.insert %cst, %77 [0] : f32 into vector<1xf32>
        %299 = math.log10 %70 : tensor<7x7xf32>
        %false_51 = index.bool.constant false
        %300 = index.ceildivu %124, %48
        %301 = index.casts %c2 : index to i32
        %302 = arith.cmpf olt, %cst_7, %cst_7 : f16
        %303 = math.log2 %9 : tensor<7x7x6xf32>
        scf.yield %12 : tensor<7x7x6xf16>
      }
      default {
        %289 = vector.broadcast %276 : index to vector<7xindex>
        %290 = vector.broadcast %false_4 : i1 to vector<7xi1>
        vector.scatter %alloc_10[%c0] [%289], %290, %21 : memref<1xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
        %291 = math.log %cst_3 : f32
        %292 = arith.remf %cst_32, %cst_1 : f32
        %true_51 = index.bool.constant true
        %293 = vector.bitcast %76 : vector<1xf32> to vector<1xf32>
        %294 = math.absf %reduced : tensor<f32>
        %295 = math.log10 %15 : tensor<7x6xf32>
        %296 = arith.minsi %c808531491_i32, %c1180538467_i32 : i32
        %297 = arith.remf %cst_2, %cst_2 : f32
        %298 = affine.max affine_map<(d0, d1) -> (d0)>(%280, %c4)
        %alloc_52 = memref.alloc() : memref<7x7x6xf16>
        memref.tensor_store %8, %alloc_52 : memref<7x7x6xf16>
        %299 = math.tanh %12 : tensor<7x7x6xf16>
        %300 = index.ceildivu %91, %93
        %301 = arith.shrsi %true_6, %false_4 : i1
        %302 = arith.remf %cst_7, %cst_7 : f16
        %303 = bufferization.clone %62 : memref<1xi32> to memref<1xi32>
        scf.yield %8 : tensor<7x7x6xf16>
      }
      %282 = arith.shrsi %25, %true : i1
      %283 = math.absi %1 : tensor<7x6xi64>
      bufferization.dealloc_tensor %13 : tensor<1xi64>
      %284 = math.atan %12 : tensor<7x7x6xf16>
      %285 = index.maxu %c8, %138
      %286 = index.maxs %54, %49
      %287 = index.casts %c808531491_i32 : i32 to index
      %288 = math.tan %70 : tensor<7x7xf32>
      scf.yield %cst_3 : f32
    }
    %144 = vector.bitcast %139 : vector<1x7xi32> to vector<1x7xf32>
    %145 = tensor.empty() : tensor<42xi32>
    %146 = math.fpowi %collapsed_36, %145 : tensor<42xf32>, tensor<42xi32>
    %147 = math.tan %14 : tensor<1xf16>
    %148 = vector.load %alloc_9[%c1, %c2, %c1] : memref<7x7x6xi1>, vector<1xi1>
    %149 = index.maxs %c6, %c10
    %150 = vector.transpose %77, [0] : vector<1xf32> to vector<1xf32>
    %151 = arith.addf %cst_0, %cst_0 : f16
    %152 = vector.broadcast %cst_32 : f32 to vector<7xf32>
    %153 = vector.transfer_write %152, %132[%98, %c8] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xf32>, tensor<7x7xf32>
    %154 = arith.minsi %c573754736_i64, %c573754736_i64 : i64
    %155 = memref.realloc %62 : memref<1xi32> to memref<1xi32>
    memref.copy %alloc_12, %alloc_14 : memref<6x1x7xf32> to memref<6x1x7xf32>
    %156 = vector.bitcast %77 : vector<1xf32> to vector<1xf32>
    %157 = math.roundeven %19 : tensor<f32>
    %158 = vector.broadcast %c1180538467_i32 : i32 to vector<6x7x7xi32>
    %159 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d3, d1)>, affine_map<(d0, d1, d2, d3) -> (d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %105, %139, %158 : vector<6x1x7xi32>, vector<1x7xi32> into vector<6x7x7xi32>
    %160 = arith.minf %cst_2, %cst_32 : f32
    %161 = index.divs %c11, %c2
    %162 = vector.matrix_multiply %76, %77 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
    %163 = arith.andi %c573754736_i64, %c573754736_i64 : i64
    %164 = math.round %6 : tensor<7x6xf32>
    %165 = vector.create_mask %138, %93, %c5 : vector<6x1x7xi1>
    %166 = arith.remsi %true_34, %true_6 : i1
    %167 = arith.maxsi %c1180538467_i32, %c1_i32 : i32
    %168 = arith.minui %false, %true_34 : i1
    %169 = math.floor %14 : tensor<1xf16>
    %170 = math.cttz %collapsed_31 : tensor<49x6xi32>
    %171 = math.expm1 %cst : f32
    %172 = math.tanh %cst_1 : f32
    %173 = math.ctlz %22 : tensor<1xi16>
    %c2013878968_i32 = arith.constant 2013878968 : i32
    %174 = vector.shuffle %76, %162 [0] : vector<1xf32>, vector<1xf32>
    %175 = memref.atomic_rmw ori %c1_i32, %62[%c0] : (i32, memref<1xi32>) -> i32
    %176 = math.sqrt %51 : tensor<7x6xf32>
    %177 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%29 : tensor<7x7x6xi32>) {
    ^bb0(%out: i32):
      %274 = bufferization.to_memref %13 : memref<1xi64>
      %275 = affine.for %arg1 = 0 to 35 iter_args(%arg2 = %137) -> (index) {
        affine.yield %149 : index
      }
      %276 = math.fma %9, %9, %9 : tensor<7x7x6xf32>
      %277 = math.round %0 : tensor<1xf32>
      %278 = memref.alloca_scope  -> (f16) {
        memref.tensor_store %1, %37 : memref<7x6xi64>
        %308 = math.copysign %cst_32, %cst_28 : f32
        %309 = arith.ori %false_23, %true_6 : i1
        %310 = memref.load %274[%c0] : memref<1xi64>
        %311 = math.atan2 %cst_32, %cst_5 : f32
        %collapsed_54 = tensor.collapse_shape %generated [[0, 1]] : tensor<?x?xi32> into tensor<?xi32>
        %312 = math.ipowi %13, %13 : tensor<1xi64>
        %313 = vector.create_mask %c8, %120, %120 : vector<7x7x6xi1>
        %314 = math.exp2 %cst_0 : f16
        %315 = math.log2 %cst_28 : f32
        %316 = math.round %splat : tensor<6x1x7xf16>
        %317 = vector.load %62[%c0] : memref<1xi32>, vector<7x7x6xi32>
        %318 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %97, %26, %cst_7 : vector<1xf16>, vector<1xf16> into f16
        %319 = vector.shuffle %144, %144 [1] : vector<1x7xf32>, vector<1x7xf32>
        %320 = memref.load %alloc_8[%c4, %c3, %c4] : memref<7x7x6xi16>
        %321 = math.ctpop %c20593_i16 : i16
        %322 = arith.remf %cst_5, %cst_2 : f32
        %323 = arith.cmpf oeq, %cst_2, %cst_1 : f32
        %324 = vector.broadcast %128 : index to vector<7xindex>
        %325 = vector.broadcast %true_6 : i1 to vector<7xi1>
        %326 = vector.broadcast %c573754736_i64 : i64 to vector<7xi64>
        vector.scatter %alloc_19[%c0] [%324], %325, %326 : memref<1xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
        %327 = index.add %137, %c11
        %328 = memref.realloc %alloc_10 : memref<1xf16> to memref<6xf16>
        %329 = math.atan %cst_28 : f32
        %330 = vector.broadcast %c3 : index to vector<7xindex>
        %331 = vector.broadcast %false_4 : i1 to vector<7xi1>
        %332 = vector.broadcast %out : i32 to vector<7xi32>
        vector.scatter %62[%c0] [%330], %331, %332 : memref<1xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
        %333 = math.ctlz %c808531491_i32 : i32
        %334 = index.ceildivs %149, %c10
        %cst_55 = arith.constant 1.000000e+00 : f32
        %cst_56 = arith.constant 0.000000e+00 : f32
        %335 = vector.transfer_read %9[%334, %91, %c2], %cst_56 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<7x7x6xf32>, vector<7xf32>
        %336 = index.ceildivs %c10, %c11
        %337 = memref.realloc %alloc_19 : memref<1xi64> to memref<1xi64>
        %338 = vector.broadcast %93 : index to vector<6xindex>
        %339 = vector.broadcast %25 : i1 to vector<6xi1>
        %340 = vector.broadcast %c573754736_i64 : i64 to vector<6xi64>
        vector.scatter %alloc_18[%c3, %c0, %c3] [%338], %339, %340 : memref<6x1x7xi64>, vector<6xindex>, vector<6xi1>, vector<6xi64>
        %alloc_57 = memref.alloc() : memref<1xf32>
        %341 = vector.broadcast %c14 : index to vector<1xindex>
        vector.scatter %alloc_8[%c4, %c2, %c1] [%341], %148, %39 : memref<7x7x6xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
        %alloc_58 = memref.alloc() : memref<7x7x6xi32>
        memref.copy %alloc_16, %alloc_58 : memref<7x7x6xi32> to memref<7x7x6xi32>
        memref.alloca_scope.return %cst_0 : f16
      }
      %alloc_51 = memref.alloc() : memref<6x1xi64>
      %279 = tensor.empty() : tensor<7x1xi64>
      %280 = linalg.matmul ins(%1, %alloc_51 : tensor<7x6xi64>, memref<6x1xi64>) outs(%279 : tensor<7x1xi64>) -> tensor<7x1xi64>
      %281 = index.divu %98, %113
      %282 = arith.shrsi %c1180538467_i32, %c1_i32 : i32
      %283 = memref.atomic_rmw andi %c1180538467_i32, %alloc_16[%c1, %c3, %c1] : (i32, memref<7x7x6xi32>) -> i32
      %284 = index.ceildivu %93, %128
      %alloc_52 = memref.alloc() : memref<1xi32>
      memref.copy %62, %alloc_52 : memref<1xi32> to memref<1xi32>
      %285 = math.tan %0 : tensor<1xf32>
      %286 = math.absf %70 : tensor<7x7xf32>
      %287 = arith.remf %cst_5, %cst_1 : f32
      %288 = index.maxs %149, %c6
      affine.for %arg1 = 0 to 30 {
      }
      %splat_53 = tensor.splat %c1_i32 : tensor<7x7x6xi32>
      %289 = vector.create_mask %c7 : vector<1xi1>
      %290 = arith.maxf %cst_7, %cst_7 : f16
      %291 = math.absi %7 : tensor<7x7x6xi32>
      %292 = math.powf %8, %12 : tensor<7x7x6xf16>
      %293 = vector.broadcast %c1180538467_i32 : i32 to vector<i32>
      %294 = vector.transfer_write %293, %collapsed_31[%93, %93] : vector<i32>, tensor<49x6xi32>
      %295 = tensor.empty() : tensor<7x7x6xi32>
      %296 = arith.negf %cst_32 : f32
      %297 = math.exp2 %51 : tensor<7x6xf32>
      %298 = arith.remsi %c808531491_i32, %c1180538467_i32 : i32
      %299 = tensor.empty() : tensor<6x7xf32>
      %300 = tensor.empty() : tensor<7x7xf32>
      %301 = linalg.matmul ins(%15, %299 : tensor<7x6xf32>, tensor<6x7xf32>) outs(%300 : tensor<7x7xf32>) -> tensor<7x7xf32>
      %302 = index.mul %120, %281
      %303 = vector.broadcast %true_34 : i1 to vector<7xi1>
      %304 = vector.maskedload %alloc_12[%c4, %c0, %c2], %303, %152 : memref<6x1x7xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
      %305 = vector.broadcast %cst_28 : f32 to vector<7x6xf32>
      %306 = math.log %300 : tensor<7x7xf32>
      %307 = index.casts %284 : index to i32
      linalg.yield %c808531491_i32 : i32
    } -> tensor<7x7x6xi32>
    %178 = index.maxu %c2, %137
    %179 = arith.shrsi %true_6, %false_4 : i1
    scf.execute_region {
      %274 = math.atan2 %14, %14 : tensor<1xf16>
      %275 = arith.remf %cst, %cst_3 : f32
      %276 = vector.create_mask %c14, %c14, %80 : vector<7x7x6xi1>
      %277 = arith.maxui %false_23, %true : i1
      %278 = math.round %6 : tensor<7x6xf32>
      vector.print %165 : vector<6x1x7xi1>
      %279 = math.ipowi %22, %4 : tensor<1xi16>
      %alloca_51 = memref.alloca() : memref<7x7x6xf32>
      %inserted_52 = tensor.insert %cst_2 into %0[%c0] : tensor<1xf32>
      %280 = scf.while (%arg1 = %cst_7) : (f16) -> f16 {
        %287 = memref.atomic_rmw minu %c16374_i16, %alloc_8[%c0, %c5, %c0] : (i16, memref<7x7x6xi16>) -> i16
        %288 = tensor.empty() : tensor<1xi16>
        %289 = arith.shrsi %extracted, %extracted : i16
        %290 = memref.load %alloc_9[%c3, %c4, %c0] : memref<7x7x6xi1>
        %291 = math.copysign %collapsed, %collapsed_36 : tensor<42xf32>
        %expanded = tensor.expand_shape %15 [[0], [1, 2]] : tensor<7x6xf32> into tensor<7x6x1xf32>
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_53 = arith.constant 0 : i16
        %292 = vector.transfer_read %3[%49, %c5, %54], %c0_i16_53 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<6x1x7xi16>, vector<7xi16>
        %293 = arith.remf %cst_5, %cst_5 : f32
        scf.condition(%false_4) %cst_0 : f16
      } do {
      ^bb0(%arg1: f16):
        %287 = bufferization.to_memref %collapsed_36 : memref<42xf32>
        %288 = arith.shrsi %c573754736_i64, %c573754736_i64 : i64
        %289 = math.log10 %0 : tensor<1xf32>
        %290 = arith.addi %false_23, %false_4 : i1
        %291 = index.ceildivs %c6, %c11
        %cst_53 = arith.constant 1.000000e+00 : f32
        %292 = vector.transfer_read %9[%178, %128, %291], %cst_53 : tensor<7x7x6xf32>, vector<f32>
        %293 = vector.broadcast %cst_28 : f32 to vector<6x1x7xf32>
        %294 = vector.fma %293, %293, %293 : vector<6x1x7xf32>
        %295 = index.divs %c5, %c3
        %296 = affine.max affine_map<(d0, d1) -> ((d1 ceildiv 32 + 16) floordiv 64, d0 floordiv 2, d0 floordiv 2 - ((d0 floordiv 2) mod 4 - (d0 floordiv 2 + d0 floordiv 16)), d1)>(%c7, %c7)
        %297 = index.add %118, %c12
        %298 = vector.broadcast %false : i1 to vector<6x7xi1>
        %299 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %148, %165, %298 : vector<1xi1>, vector<6x1x7xi1> into vector<6x7xi1>
        %300 = index.maxs %297, %80
        %301 = math.round %cst_28 : f32
        %302 = bufferization.clone %alloc_12 : memref<6x1x7xf32> to memref<6x1x7xf32>
        %303 = arith.remsi %c16374_i16, %c16374_i16 : i16
        %inserted_54 = tensor.insert %c20593_i16 into %17[%c0, %c0, %c4] : tensor<6x1x7xi16>
        scf.yield %cst_7 : f16
      }
      %281 = tensor.empty() : tensor<6x1x7xi64>
      %282 = index.ceildivu %120, %c6
      %283 = math.log2 %14 : tensor<1xf16>
      %284 = bufferization.to_tensor %62 : memref<1xi32>
      %285 = bufferization.to_memref %0 : memref<1xf32>
      %286 = arith.remui %false_4, %true_6 : i1
      scf.yield
    }
    %180 = index.ceildivs %c10, %48
    %181 = arith.shrui %true_34, %true : i1
    %182 = math.fma %8, %12, %8 : tensor<7x7x6xf16>
    %183 = index.maxs %c4, %91
    %false_39 = index.bool.constant false
    %184 = math.log10 %0 : tensor<1xf32>
    memref.copy %alloc_9, %alloc_22 : memref<7x7x6xi1> to memref<7x7x6xi1>
    %185 = memref.load %alloc_17[%c2, %c1] : memref<7x6xi1>
    %186 = index.casts %178 : index to i32
    %187 = index.casts %178 : index to i32
    %188 = math.exp %cst_7 : f16
    %189 = index.mul %c10, %80
    %190 = index.ceildivu %120, %128
    %191 = memref.realloc %alloc_10 : memref<1xf16> to memref<7xf16>
    %192 = tensor.empty() : tensor<6x6xi16>
    %193 = tensor.empty() : tensor<7x6xi16>
    %194 = linalg.matmul ins(%5, %192 : tensor<7x6xi16>, tensor<6x6xi16>) outs(%193 : tensor<7x6xi16>) -> tensor<7x6xi16>
    %collapsed_40 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<7x7x6xf16> into tensor<49x6xf16>
    %195 = affine.for %arg1 = 0 to 26 iter_args(%arg2 = %139) -> (vector<1x7xi32>) {
      affine.yield %139 : vector<1x7xi32>
    }
    %196 = arith.shrsi %true_34, %false : i1
    %197 = tensor.empty() : tensor<6x1x7xi1>
    %198 = math.floor %cst : f32
    %199 = index.mul %c6, %54
    %200 = math.ceil %cst_1 : f32
    %201 = math.fma %cst_2, %cst_32, %cst_1 : f32
    %202 = math.ctlz %false_39 : i1
    %203 = math.copysign %12, %12 : tensor<7x7x6xf16>
    %204 = tensor.empty() : tensor<6x6xi16>
    %205 = tensor.empty() : tensor<7x6xi16>
    %206 = linalg.matmul ins(%5, %204 : tensor<7x6xi16>, tensor<6x6xi16>) outs(%205 : tensor<7x6xi16>) -> tensor<7x6xi16>
    %207 = index.maxs %73, %178
    %208 = math.fma %14, %14, %14 : tensor<1xf16>
    %209 = math.tanh %51 : tensor<7x6xf32>
    %210 = vector.broadcast %c15 : index to vector<6xindex>
    %211 = vector.broadcast %false_4 : i1 to vector<6xi1>
    %212 = vector.broadcast %c573754736_i64 : i64 to vector<6xi64>
    vector.scatter %37[%c4, %c2] [%210], %211, %212 : memref<7x6xi64>, vector<6xindex>, vector<6xi1>, vector<6xi64>
    %213 = math.ctpop %18 : tensor<7x6x1xi16>
    %214 = arith.shrui %true_34, %true_6 : i1
    %215 = arith.maxsi %true_6, %true_6 : i1
    %216 = index.casts %49 : index to i32
    %217 = arith.subi %extracted, %c20593_i16 : i16
    %218 = bufferization.clone %alloc : memref<7x6xf32> to memref<7x6xf32>
    %219 = vector.matrix_multiply %141, %156 {lhs_columns = 1 : i32, lhs_rows = 6 : i32, rhs_columns = 1 : i32} : (vector<6xf32>, vector<1xf32>) -> vector<6xf32>
    %220 = index.maxs %128, %137
    %221 = affine.for %arg1 = 0 to 73 iter_args(%arg2 = %11) -> (tensor<1xi16>) {
      affine.yield %4 : tensor<1xi16>
    }
    %222 = arith.divsi %c16374_i16, %extracted : i16
    %223 = arith.addi %true_34, %true : i1
    %224 = tensor.empty() : tensor<42xf32>
    %mapped_41 = linalg.map ins(%collapsed_36, %collapsed_36 : tensor<42xf32>, tensor<42xf32>) outs(%224 : tensor<42xf32>)
      (%in: f32, %in_51: f32) {
        %274 = vector.transpose %156, [0] : vector<1xf32> to vector<1xf32>
        %275 = scf.index_switch %189 -> vector<1xi1> 
        case 1 {
          %306 = vector.broadcast %c1_i32 : i32 to vector<7xi32>
          %307 = vector.broadcast %false_23 : i1 to vector<7xi1>
          %308 = vector.maskedload %62[%c0], %307, %306 : memref<1xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
          %309 = math.ctlz %7 : tensor<7x7x6xi32>
          %310 = math.cttz %18 : tensor<7x6x1xi16>
          %311 = math.cos %9 : tensor<7x7x6xf32>
          %312 = arith.maxui %extracted, %c20593_i16 : i16
          %cast = tensor.cast %24 : tensor<i16> to tensor<i16>
          %313 = arith.negf %cst_32 : f32
          %314 = bufferization.clone %alloc_10 : memref<1xf16> to memref<1xf16>
          %315 = vector.broadcast %cst : f32 to vector<7x7x6xf32>
          %316 = vector.broadcast %93 : index to vector<6xindex>
          %317 = vector.broadcast %false : i1 to vector<6xi1>
          vector.scatter %alloc_17[%c3, %c3] [%316], %317, %317 : memref<7x6xi1>, vector<6xindex>, vector<6xi1>, vector<6xi1>
          %c0_i16 = arith.constant 0 : i16
          %c0_i16_55 = arith.constant 0 : i16
          %318 = vector.transfer_read %11[%128], %c0_i16_55 : tensor<1xi16>, vector<i16>
          %319 = index.divu %54, %c10
          %320 = index.floordivs %c4, %c7
          %inserted_56 = tensor.insert %c16374_i16 into %18[%c0, %c4, %c0] : tensor<7x6x1xi16>
          %321 = index.casts %extracted : i16 to index
          %322 = math.absi %false_23 : i1
          scf.yield %148 : vector<1xi1>
        }
        case 2 {
          %306 = arith.remf %cst, %cst_1 : f32
          %307 = math.round %collapsed : tensor<42xf32>
          %308 = bufferization.to_tensor %alloc_14 : memref<6x1x7xf32>
          %cast = tensor.cast %1 : tensor<7x6xi64> to tensor<?x?xi64>
          %309 = arith.remf %cst_1, %cst_5 : f32
          %alloc_55 = memref.alloc() : memref<7x7xf32>
          memref.tensor_store %132, %alloc_55 : memref<7x7xf32>
          %collapsed_56 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<7x7x6xf16> into tensor<49x6xf16>
          %alloc_57 = memref.alloc() : memref<7x6xi64>
          memref.copy %37, %alloc_57 : memref<7x6xi64> to memref<7x6xi64>
          %splat_58 = tensor.splat %false : tensor<7x6xi1>
          %310 = arith.minui %c16374_i16, %c16374_i16 : i16
          %311 = vector.matrix_multiply %152, %76 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 1 : i32} : (vector<7xf32>, vector<1xf32>) -> vector<7xf32>
          %312 = arith.minsi %false_4, %25 : i1
          %313 = vector.broadcast %c3 : index to vector<7xindex>
          %314 = vector.broadcast %false : i1 to vector<7xi1>
          vector.scatter %alloc_21[%c6, %c5] [%313], %314, %152 : memref<7x6xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
          %315 = arith.addi %c573754736_i64, %c573754736_i64 : i64
          affine.store %c808531491_i32, %alloc_16[%c4, %c14, %c1] : memref<7x7x6xi32>
          %316 = math.absi %7 : tensor<7x7x6xi32>
          scf.yield %148 : vector<1xi1>
        }
        case 3 {
          %306 = math.exp2 %splat : tensor<6x1x7xf16>
          %307 = index.ceildivs %190, %c15
          %308 = math.atan2 %cst_32, %cst_28 : f32
          %collapsed_55 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<7x7x6xf16> into tensor<49x6xf16>
          %309 = vector.bitcast %141 : vector<6xf32> to vector<6xf32>
          %310 = memref.realloc %alloc_10 : memref<1xf16> to memref<7xf16>
          %311 = math.ctlz %7 : tensor<7x7x6xi32>
          %cast = tensor.cast %1 : tensor<7x6xi64> to tensor<?x?xi64>
          %cast_56 = tensor.cast %11 : tensor<1xi16> to tensor<?xi16>
          bufferization.dealloc_tensor %collapsed_26 : tensor<49x6xi32>
          %312 = vector.insertelement %cst_7, %57[%137 : index] : vector<1xf16>
          %313 = arith.minui %false_4, %true_6 : i1
          %splat_57 = tensor.splat %true_34 : tensor<7x6xi1>
          %cast_58 = tensor.cast %splat_57 : tensor<7x6xi1> to tensor<?x?xi1>
          %314 = arith.cmpf uno, %cst_28, %cst_32 : f32
          %315 = index.maxu %307, %c4
          scf.yield %148 : vector<1xi1>
        }
        case 4 {
          %cast = tensor.cast %6 : tensor<7x6xf32> to tensor<?x?xf32>
          %expanded = tensor.expand_shape %8 [[0], [1], [2, 3]] : tensor<7x7x6xf16> into tensor<7x7x6x1xf16>
          %306 = affine.max affine_map<(d0) -> ((((d0 * 2) floordiv 16) ceildiv 64) * -2)>(%189)
          %307 = arith.divui %true_34, %false_4 : i1
          %308 = index.casts %false_4 : i1 to index
          %309 = affine.max affine_map<(d0, d1, d2, d3) -> (-d3, (d3 - 128) ceildiv 32 + d0, d1, d3)>(%c13, %190, %161, %c4)
          %310 = arith.minf %cst, %cst_32 : f32
          %311 = vector.broadcast %cst_2 : f32 to vector<7x6xf32>
          %alloca_55 = memref.alloca() : memref<6x1x7xi16>
          %312 = math.exp %8 : tensor<7x7x6xf16>
          %313 = math.exp %6 : tensor<7x6xf32>
          %314 = math.cos %14 : tensor<1xf16>
          %315 = arith.maxf %cst, %in : f32
          %316 = vector.broadcast %cst_0 : f16 to vector<1x6xf16>
          %317 = vector.transfer_write %316, %12[%124, %207, %c2] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<1x6xf16>, tensor<7x7x6xf16>
          %alloc_56 = memref.alloc() : memref<6x1x7xi64>
          %318 = arith.addf %cst_28, %cst_3 : f32
          scf.yield %148 : vector<1xi1>
        }
        default {
          %306 = math.absi %10 : tensor<7x7x6xi32>
          %307 = index.add %c11, %c14
          %308 = index.mul %180, %c3
          %309 = math.absf %15 : tensor<7x6xf32>
          %collapsed_55 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<7x7x6xf16> into tensor<49x6xf16>
          %310 = math.expm1 %6 : tensor<7x6xf32>
          %311 = math.floor %collapsed_36 : tensor<42xf32>
          %cst_56 = arith.constant 1.000000e+00 : f32
          %cst_57 = arith.constant 0.000000e+00 : f32
          %312 = vector.transfer_read %218[%98, %c13], %cst_57 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<7x6xf32>, vector<7xf32>
          memref.copy %alloc_9, %alloc_22 : memref<7x7x6xi1> to memref<7x7x6xi1>
          %313 = math.tan %cst_5 : f32
          %314 = arith.remf %cst_3, %cst_2 : f32
          %splat_58 = tensor.splat %cst_5 : tensor<7x6xf32>
          %315 = math.exp2 %cst_3 : f32
          %316 = math.ctpop %c573754736_i64 : i64
          %317 = math.roundeven %9 : tensor<7x7x6xf32>
          %318 = index.add %98, %c0
          scf.yield %148 : vector<1xi1>
        }
        %276 = vector.broadcast %c8 : index to vector<7xindex>
        %277 = vector.broadcast %true : i1 to vector<7xi1>
        vector.scatter %alloc_22[%c1, %c1, %c5] [%276], %277, %277 : memref<7x7x6xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
        %278 = math.ctpop %29 : tensor<7x7x6xi32>
        %279 = memref.alloca_scope  -> (f32) {
          %306 = vector.create_mask %137 : vector<1xi1>
          %alloc_55 = memref.alloc() : memref<7x6x1xi16>
          memref.tensor_store %18, %alloc_55 : memref<7x6x1xi16>
          %307 = math.ctpop %false_4 : i1
          %308 = memref.atomic_rmw maxu %c16374_i16, %alloc_8[%c4, %c4, %c5] : (i16, memref<7x7x6xi16>) -> i16
          %309 = math.ceil %cst_5 : f32
          %310 = bufferization.to_memref %12 : memref<7x7x6xf16>
          %311 = arith.subi %extracted, %c20593_i16 : i16
          %cst_56 = arith.constant 1.000000e+00 : f32
          %cst_57 = arith.constant 0.000000e+00 : f32
          %312 = vector.transfer_read %132[%137, %48], %cst_57 : tensor<7x7xf32>, vector<f32>
          %313 = arith.divui %false_4, %25 : i1
          %314 = arith.divui %c808531491_i32, %c1_i32 : i32
          %315 = vector.broadcast %cst_3 : f32 to vector<7x7x6xf32>
          %316 = vector.fma %315, %315, %315 : vector<7x7x6xf32>
          %317 = index.maxs %c6, %189
          %318 = math.copysign %70, %70 : tensor<7x7xf32>
          %319 = vector.matrix_multiply %21, %26 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 1 : i32} : (vector<7xf16>, vector<1xf16>) -> vector<7xf16>
          %320 = arith.minf %in, %cst_3 : f32
          %321 = math.round %70 : tensor<7x7xf32>
          %322 = arith.divui %c20593_i16, %c16374_i16 : i16
          %323 = index.mul %c14, %199
          %324 = math.log2 %19 : tensor<f32>
          %325 = tensor.empty() : tensor<7x6xf32>
          %326 = vector.reduction <minsi>, %148 : vector<1xi1> into i1
          %327 = math.exp %cst_7 : f16
          %328 = math.absf %6 : tensor<7x6xf32>
          %329 = arith.divui %false, %25 : i1
          %330 = vector.transpose %75, [0] : vector<1xi16> to vector<1xi16>
          %331 = vector.create_mask %54, %207, %c12 : vector<6x1x7xi1>
          %332 = arith.minui %false, %false : i1
          %333 = index.castu %false_39 : i1 to index
          %334 = math.copysign %cst_1, %cst_1 : f32
          %335 = math.ctpop %7 : tensor<7x7x6xi32>
          %336 = arith.divui %true_34, %true_34 : i1
          %337 = vector.broadcast %cst_5 : f32 to vector<7xf32>
          %338 = vector.transfer_write %337, %6[%c14, %c6] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xf32>, tensor<7x6xf32>
          memref.alloca_scope.return %in_51 : f32
        }
        %280 = math.ctlz %145 : tensor<42xi32>
        %281 = math.exp %9 : tensor<7x7x6xf32>
        %282 = index.sizeof
        %283 = vector.broadcast %279 : f32 to vector<7x6xf32>
        %284 = vector.fma %283, %283, %283 : vector<7x6xf32>
        %285 = arith.divui %false_4, %true : i1
        %286 = arith.minui %false_23, %false_39 : i1
        %287 = math.log %cst_32 : f32
        %288 = math.tan %in_51 : f32
        %289 = tensor.empty() : tensor<7x7x6xf16>
        %290 = math.floor %cst_0 : f16
        %291 = vector.broadcast %183 : index to vector<7xindex>
        %292 = vector.broadcast %true_34 : i1 to vector<7xi1>
        vector.scatter %alloc_9[%c6, %c5, %c2] [%291], %292, %292 : memref<7x7x6xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
        %293 = vector.matrix_multiply %75, %75 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
        %294 = arith.shrui %true_34, %false_39 : i1
        %295 = math.expm1 %289 : tensor<7x7x6xf16>
        bufferization.dealloc_tensor %15 : tensor<7x6xf32>
        %296 = arith.shrsi %c808531491_i32, %c1_i32 : i32
        %297 = arith.maxsi %false_4, %false : i1
        %298 = vector.create_mask %149, %c4, %c10 : vector<7x7x6xi1>
        %299 = index.ceildivu %c4, %190
        %300 = index.floordivs %c11, %113
        %301 = index.maxs %199, %183
        %302 = math.exp2 %reduced : tensor<f32>
        %alloc_52 = memref.alloc() : memref<7x7x6xi32>
        %303 = arith.addf %in, %in : f32
        %304 = math.ctlz %5 : tensor<7x6xi16>
        %305 = math.ceil %279 : f32
        %collapsed_53 = tensor.collapse_shape %10 [[0, 1], [2]] : tensor<7x7x6xi32> into tensor<49x6xi32>
        %cst_54 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_54 : f32
      }
    %225 = arith.negf %cst_0 : f16
    %226 = index.divs %c5, %c11
    %227 = vector.broadcast %199 : index to vector<6xindex>
    %228 = vector.broadcast %true_6 : i1 to vector<6xi1>
    vector.scatter %218[%c3, %c0] [%227], %228, %219 : memref<7x6xf32>, vector<6xindex>, vector<6xi1>, vector<6xf32>
    %229 = tensor.empty() : tensor<7x7x6xf32>
    %230 = math.fma %6, %6, %51 : tensor<7x6xf32>
    %231 = memref.atomic_rmw maxf %cst_2, %alloc_14[%c1, %c0, %c0] : (f32, memref<6x1x7xf32>) -> f32
    %232 = index.maxs %c1, %49
    %233 = affine.for %arg1 = 0 to 60 iter_args(%arg2 = %13) -> (tensor<1xi64>) {
      affine.yield %13 : tensor<1xi64>
    }
    %234 = math.cttz %23 : tensor<i16>
    %235 = math.log2 %collapsed_40 : tensor<49x6xf16>
    %236 = vector.broadcast %98 : index to vector<7xindex>
    %237 = vector.broadcast %false : i1 to vector<7xi1>
    vector.scatter %alloc_9[%c6, %c0, %c5] [%236], %237, %237 : memref<7x7x6xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
    %false_42 = index.bool.constant false
    %238 = bufferization.to_memref %9 : memref<7x7x6xf32>
    %239 = memref.alloca_scope  -> (i64) {
      %274 = affine.apply affine_map<(d0, d1, d2, d3) -> (-d2 - 65)>(%c1, %c14, %98, %93)
      %275 = math.log10 %229 : tensor<7x7x6xf32>
      %276 = math.copysign %9, %9 : tensor<7x7x6xf32>
      %277 = arith.shrsi %false_42, %false_42 : i1
      %alloc_51 = memref.alloc() : memref<1xi32>
      %278 = vector.shuffle %152, %219 [0, 1, 2, 3, 6, 7, 9, 11] : vector<7xf32>, vector<6xf32>
      %279 = math.atan2 %9, %9 : tensor<7x7x6xf32>
      %from_elements = tensor.from_elements %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64, %c573754736_i64 : tensor<7x6xi64>
      %280 = arith.minf %cst_0, %cst_0 : f16
      %cst_52 = arith.constant 1.68944346E+9 : f32
      %281 = arith.minsi %false_23, %25 : i1
      %282 = vector.broadcast %190 : index to vector<7xindex>
      %283 = vector.broadcast %25 : i1 to vector<7xi1>
      vector.scatter %238[%c2, %c0, %c5] [%282], %283, %152 : memref<7x7x6xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
      %284 = index.casts %54 : index to i32
      %285 = math.ceil %12 : tensor<7x7x6xf16>
      %286 = math.exp %cst_2 : f32
      %287 = vector.transpose %21, [0] : vector<7xf16> to vector<7xf16>
      %288 = math.absi %5 : tensor<7x6xi16>
      %289 = math.log10 %8 : tensor<7x7x6xf16>
      %rank = tensor.rank %8 : tensor<7x7x6xf16>
      %expanded = tensor.expand_shape %1 [[0], [1, 2]] : tensor<7x6xi64> into tensor<7x6x1xi64>
      %290 = vector.create_mask %c10, %128, %c0 : vector<6x1x7xi1>
      %291 = tensor.empty() : tensor<6x7xi16>
      %292 = tensor.empty() : tensor<7x7xi16>
      %293 = linalg.matmul ins(%5, %291 : tensor<7x6xi16>, tensor<6x7xi16>) outs(%292 : tensor<7x7xi16>) -> tensor<7x7xi16>
      %294 = math.exp2 %cst_1 : f32
      %collapsed_53 = tensor.collapse_shape %collapsed_26 [[0, 1]] : tensor<49x6xi32> into tensor<294xi32>
      %splat_54 = tensor.splat %cst_3 : tensor<1xf32>
      %splat_55 = tensor.splat %cst_7 : tensor<6x1x7xf16>
      %295 = arith.cmpf ueq, %cst_5, %cst_1 : f32
      %from_elements_56 = tensor.from_elements %true_6 : tensor<1xi1>
      %296 = math.exp %collapsed_36 : tensor<42xf32>
      %inserted_57 = tensor.insert %c1180538467_i32 into %7[%c2, %c4, %c1] : tensor<7x7x6xi32>
      %297 = arith.shrui %c1_i32, %c808531491_i32 : i32
      %298 = vector.bitcast %152 : vector<7xf32> to vector<7xf32>
      memref.alloca_scope.return %c573754736_i64 : i64
    }
    %240 = arith.addf %cst_1, %cst_1 : f32
    %alloc_43 = memref.alloc() : memref<7x7x6xf16>
    memref.tensor_store %12, %alloc_43 : memref<7x7x6xf16>
    %241 = index.ceildivs %120, %c2
    %242 = affine.apply affine_map<(d0, d1) -> (d0 + d0 mod 32 - d0)>(%c6, %128)
    affine.store %false_42, %alloc_22[%c11, %c3, %c7] : memref<7x7x6xi1>
    %243 = math.rsqrt %cst_5 : f32
    %244 = index.maxs %137, %c1
    %245 = scf.execute_region -> i1 {
      %alloca_51 = memref.alloca() : memref<6x1x7xi32>
      %274 = vector.broadcast %118 : index to vector<6xindex>
      %275 = vector.broadcast %true_6 : i1 to vector<6xi1>
      vector.scatter %alloc_17[%c0, %c3] [%274], %275, %275 : memref<7x6xi1>, vector<6xindex>, vector<6xi1>, vector<6xi1>
      %276 = bufferization.clone %alloc : memref<7x6xf32> to memref<7x6xf32>
      %alloc_52 = memref.alloc() : memref<42xf32>
      memref.tensor_store %collapsed_36, %alloc_52 : memref<42xf32>
      %277 = arith.minui %false, %false_39 : i1
      %278 = index.ceildivu %189, %138
      %279 = math.copysign %12, %8 : tensor<7x7x6xf16>
      %280 = index.maxu %137, %c9
      %alloc_53 = memref.alloc() : memref<7x6xi16>
      memref.tensor_store %193, %alloc_53 : memref<7x6xi16>
      %281 = vector.transpose %26, [0] : vector<1xf16> to vector<1xf16>
      %282 = tensor.empty() : tensor<6x7xf32>
      %283 = tensor.empty() : tensor<7x7xf32>
      %284 = linalg.matmul ins(%51, %282 : tensor<7x6xf32>, tensor<6x7xf32>) outs(%283 : tensor<7x7xf32>) -> tensor<7x7xf32>
      %285 = vector.broadcast %c16374_i16 : i16 to vector<7x6xi16>
      %286 = math.ceil %9 : tensor<7x7x6xf32>
      %287 = arith.negf %cst_28 : f32
      %288 = vector.transpose %77, [0] : vector<1xf32> to vector<1xf32>
      %289 = scf.index_switch %178 -> memref<6x1x7xi64> 
      case 1 {
        %290 = vector.matrix_multiply %152, %77 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 1 : i32} : (vector<7xf32>, vector<1xf32>) -> vector<7xf32>
        %291 = vector.bitcast %156 : vector<1xf32> to vector<1xf32>
        %292 = bufferization.to_memref %6 : memref<7x6xf32>
        %293 = index.maxu %98, %c13
        %alloca_54 = memref.alloca() : memref<6x1x7xi1>
        %294 = index.casts %149 : index to i32
        %295 = math.ctpop %true_34 : i1
        %296 = index.add %124, %124
        %alloc_55 = memref.alloc() : memref<6x1x7xi16>
        memref.tensor_store %16, %alloc_55 : memref<6x1x7xi16>
        %297 = arith.shrsi %c1_i32, %c808531491_i32 : i32
        %c1_i16 = arith.constant 1 : i16
        %298 = vector.transfer_read %5[%232, %54], %c1_i16 : tensor<7x6xi16>, vector<6xi16>
        vector.print %162 : vector<1xf32>
        %299 = vector.broadcast %c808531491_i32 : i32 to vector<6x1x7xi32>
        %alloc_56 = memref.alloc() : memref<7x7xf32>
        memref.tensor_store %70, %alloc_56 : memref<7x7xf32>
        %300 = index.divu %183, %296
        %301 = math.absi %145 : tensor<42xi32>
        scf.yield %alloc_18 : memref<6x1x7xi64>
      }
      case 2 {
        %290 = arith.shrsi %true, %25 : i1
        %291 = vector.insert %cst_7, %97 [0] : f16 into vector<1xf16>
        %292 = math.cos %9 : tensor<7x7x6xf32>
        %c1_i16 = arith.constant 1 : i16
        %293 = vector.transfer_read %alloc_11[%98, %128, %220], %c1_i16 : memref<7x7x6xi16>, vector<i16>
        %294 = math.cos %14 : tensor<1xf16>
        %295 = arith.divui %c1_i16, %extracted : i16
        %splat_54 = tensor.splat %false_42 : tensor<1xi1>
        %296 = math.copysign %8, %12 : tensor<7x7x6xf16>
        %297 = affine.apply affine_map<(d0) -> (0)>(%c6)
        %298 = math.tan %15 : tensor<7x6xf32>
        %299 = math.ceil %12 : tensor<7x7x6xf16>
        %300 = index.sizeof
        %301 = memref.realloc %alloc_10 : memref<1xf16> to memref<1xf16>
        %302 = math.copysign %224, %collapsed_36 : tensor<42xf32>
        %303 = affine.max affine_map<(d0, d1, d2) -> (d2, d1, (d2 + d0) * 4, 0)>(%54, %73, %c7)
        %304 = math.ceil %9 : tensor<7x7x6xf32>
        scf.yield %alloc_18 : memref<6x1x7xi64>
      }
      case 3 {
        %290 = memref.load %alloc_13[%c4, %c3] : memref<7x6xf32>
        %291 = arith.cmpf ogt, %cst, %cst_5 : f32
        %292 = vector.broadcast %extracted : i16 to vector<6xi16>
        %293 = vector.insert %292, %285 [4] : vector<6xi16> into vector<7x6xi16>
        %294 = affine.apply affine_map<(d0, d1, d2) -> ((d2 ceildiv 32) floordiv 4)>(%183, %c3, %232)
        %295 = arith.cmpf oge, %cst_5, %cst_1 : f32
        %296 = math.ipowi %true_6, %25 : i1
        bufferization.dealloc_tensor %9 : tensor<7x7x6xf32>
        %297 = vector.create_mask %c6, %120 : vector<7x6xi1>
        %298 = index.divu %120, %120
        %299 = math.cos %283 : tensor<7x7xf32>
        %300 = math.exp2 %19 : tensor<f32>
        %301 = arith.shrui %true, %false : i1
        %302 = math.log1p %cst_1 : f32
        %303 = math.ctpop %4 : tensor<1xi16>
        %304 = math.absf %15 : tensor<7x6xf32>
        %305 = arith.divf %cst_32, %cst_2 : f32
        scf.yield %alloc_18 : memref<6x1x7xi64>
      }
      default {
        %290 = math.ctpop %1 : tensor<7x6xi64>
        %291 = arith.maxf %cst_32, %cst : f32
        %292 = arith.minui %false_4, %false_39 : i1
        %293 = bufferization.clone %37 : memref<7x6xi64> to memref<7x6xi64>
        %294 = arith.cmpf oge, %cst, %cst : f32
        %295 = math.absf %9 : tensor<7x7x6xf32>
        %296 = arith.negf %cst_3 : f32
        %297 = bufferization.to_tensor %alloc_9 : memref<7x7x6xi1>
        %298 = vector.create_mask %93, %161, %c0 : vector<6x1x7xi1>
        %299 = math.rsqrt %0 : tensor<1xf32>
        %300 = math.log2 %6 : tensor<7x6xf32>
        %301 = vector.broadcast %c10 : index to vector<7xindex>
        %302 = vector.broadcast %25 : i1 to vector<7xi1>
        vector.scatter %alloc_13[%c3, %c0] [%301], %302, %152 : memref<7x6xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
        %303 = math.cttz %23 : tensor<i16>
        %304 = bufferization.clone %218 : memref<7x6xf32> to memref<7x6xf32>
        %305 = math.sqrt %cst_0 : f16
        %306 = tensor.empty() : tensor<6x1x7xi64>
        scf.yield %alloc_18 : memref<6x1x7xi64>
      }
      scf.yield %true_6 : i1
    }
    %246 = vector.broadcast %c16374_i16 : i16 to vector<i16>
    vector.transfer_write %246, %alloc_11[%c11, %c6, %49] : vector<i16>, memref<7x7x6xi16>
    %247 = vector.extract %165[0, 0] : vector<6x1x7xi1>
    vector.print %26 : vector<1xf16>
    %248 = index.ceildivs %118, %c8
    %249 = arith.shrsi %true_34, %false : i1
    bufferization.dealloc_tensor %51 : tensor<7x6xf32>
    %cst_44 = arith.constant 1.000000e+00 : f32
    %250 = vector.transfer_read %alloc_12[%241, %c14, %244], %cst_44 : memref<6x1x7xf32>, vector<7x7xf32>
    %251 = arith.shrui %c16374_i16, %c20593_i16 : i16
    %252 = arith.minsi %extracted, %c20593_i16 : i16
    %253 = vector.broadcast %c1180538467_i32 : i32 to vector<1xi32>
    %dest, %accumulated_value = vector.scan <maxui>, %139, %253 {inclusive = false, reduction_dim = 1 : i64} : vector<1x7xi32>, vector<1xi32>
    %true_45 = index.bool.constant true
    %254 = arith.maxsi %c808531491_i32, %c1180538467_i32 : i32
    %255 = math.log %cst_32 : f32
    %256 = tensor.empty() : tensor<7x6xf32>
    %257 = linalg.matmul ins(%132, %15 : tensor<7x7xf32>, tensor<7x6xf32>) outs(%256 : tensor<7x6xf32>) -> tensor<7x6xf32>
    %258 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %152, %144, %156 : vector<7xf32>, vector<1x7xf32> into vector<1xf32>
    %splat_46 = tensor.splat %cst_2 : tensor<6x1x7xf32>
    %259 = math.ceil %229 : tensor<7x7x6xf32>
    %260 = arith.cmpf uno, %cst_2, %cst : f32
    %261 = vector.broadcast %cst_3 : f32 to vector<1xf32>
    %262 = vector.fma %261, %162, %156 : vector<1xf32>
    %263 = vector.matrix_multiply %76, %261 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
    %264 = math.tan %256 : tensor<7x6xf32>
    %alloca_47 = memref.alloca() : memref<7x6xi64>
    %265 = vector.bitcast %57 : vector<1xf16> to vector<1xf16>
    %266 = vector.broadcast %c20593_i16 : i16 to vector<i16>
    %267 = vector.transfer_write %266, %22[%c13] : vector<i16>, tensor<1xi16>
    %268 = affine.load %alloc_13[%c9, %c7] : memref<7x6xf32>
    scf.index_switch %48 
    case 1 {
      %274 = math.ctlz %22 : tensor<1xi16>
      %275 = vector.broadcast %false_4 : i1 to vector<6x1x7xi1>
      %276 = math.ipowi %11, %4 : tensor<1xi16>
      %277 = arith.cmpf uno, %cst_7, %cst_0 : f16
      %278 = scf.index_switch %c11 -> memref<6x1x7xi1> 
      case 1 {
        %286 = math.expm1 %0 : tensor<1xf32>
        %287 = bufferization.clone %alloc_15 : memref<7x6xf16> to memref<7x6xf16>
        %288 = arith.cmpf ult, %cst_3, %268 : f32
        %289 = math.log1p %collapsed_36 : tensor<42xf32>
        %290 = vector.broadcast %93 : index to vector<1xindex>
        %291 = vector.broadcast %c573754736_i64 : i64 to vector<1xi64>
        vector.scatter %alloc_19[%c0] [%290], %148, %291 : memref<1xi64>, vector<1xindex>, vector<1xi1>, vector<1xi64>
        %292 = arith.shrui %true_34, %25 : i1
        %293 = vector.broadcast %c8 : index to vector<1xindex>
        %294 = vector.broadcast %c1180538467_i32 : i32 to vector<1xi32>
        vector.scatter %alloc_16[%c4, %c1, %c3] [%293], %148, %294 : memref<7x7x6xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
        %295 = math.log %splat_46 : tensor<6x1x7xf32>
        %296 = arith.divui %245, %false_39 : i1
        %false_52 = index.bool.constant false
        %297 = vector.broadcast %cst_44 : f32 to vector<6x1x7xf32>
        %298 = vector.fma %297, %297, %297 : vector<6x1x7xf32>
        %299 = index.mul %120, %91
        %300 = tensor.empty() : tensor<6x6xi32>
        %301 = tensor.empty() : tensor<49x6xi32>
        %302 = linalg.matmul ins(%collapsed_31, %300 : tensor<49x6xi32>, tensor<6x6xi32>) outs(%301 : tensor<49x6xi32>) -> tensor<49x6xi32>
        %303 = arith.shrui %true_6, %false_4 : i1
        %304 = bufferization.to_memref %193 : memref<7x6xi16>
        %305 = memref.load %alloc_20[%c4, %c0, %c2] : memref<6x1x7xi32>
        %alloc_53 = memref.alloc() : memref<6x1x7xi1>
        scf.yield %alloc_53 : memref<6x1x7xi1>
      }
      case 2 {
        %true_52 = index.bool.constant true
        %286 = math.roundeven %cst_5 : f32
        %287 = bufferization.clone %alloc_8 : memref<7x7x6xi16> to memref<7x7x6xi16>
        %288 = math.log10 %0 : tensor<1xf32>
        %alloc_53 = memref.alloc() : memref<6x7xi64>
        %289 = tensor.empty() : tensor<7x7xi64>
        %290 = linalg.matmul ins(%1, %alloc_53 : tensor<7x6xi64>, memref<6x7xi64>) outs(%289 : tensor<7x7xi64>) -> tensor<7x7xi64>
        %291 = vector.transpose %266, [] : vector<i16> to vector<i16>
        %292 = math.round %8 : tensor<7x7x6xf16>
        %293 = index.casts %false : i1 to index
        %alloc_54 = memref.alloc() : memref<6x6xi16>
        %294 = tensor.empty() : tensor<7x6xi16>
        %295 = linalg.matmul ins(%5, %alloc_54 : tensor<7x6xi16>, memref<6x6xi16>) outs(%294 : tensor<7x6xi16>) -> tensor<7x6xi16>
        %296 = vector.insert %cst_3, %152 [2] : f32 into vector<7xf32>
        memref.assume_alignment %alloc_17, 2 : memref<7x6xi1>
        %297 = arith.maxsi %c20593_i16, %extracted : i16
        %298 = math.floor %cst_28 : f32
        %299 = math.log10 %14 : tensor<1xf16>
        %300 = vector.matrix_multiply %97, %265 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
        %301 = index.ceildivu %189, %207
        %alloc_55 = memref.alloc() : memref<6x1x7xi1>
        scf.yield %alloc_55 : memref<6x1x7xi1>
      }
      case 3 {
        %286 = math.absf %6 : tensor<7x6xf32>
        %287 = memref.load %alloc_13[%c5, %c4] : memref<7x6xf32>
        %288 = arith.maxf %cst_28, %cst : f32
        %289 = math.roundeven %256 : tensor<7x6xf32>
        %290 = bufferization.to_memref %transposed : memref<7x6x1xi16>
        %291 = arith.shrsi %true_6, %25 : i1
        %292 = index.mul %54, %c5
        %293 = index.ceildivu %c15, %242
        %294 = math.cttz %10 : tensor<7x7x6xi32>
        vector.print %247 : vector<7xi1>
        %295 = arith.floordivsi %c1180538467_i32, %c808531491_i32 : i32
        %splat_52 = tensor.splat %false : tensor<7x6xi1>
        %296 = index.mul %c8, %c6
        %297 = arith.addf %268, %cst_32 : f32
        %298 = math.fma %cst_28, %cst, %cst_3 : f32
        %299 = tensor.empty() : tensor<1xi32>
        %alloc_53 = memref.alloc() : memref<6x1x7xi1>
        scf.yield %alloc_53 : memref<6x1x7xi1>
      }
      default {
        %286 = math.powf %8, %8 : tensor<7x7x6xf16>
        %287 = arith.remsi %false_42, %false_4 : i1
        %288 = arith.negf %cst_28 : f32
        %inserted_52 = tensor.insert %cst_28 into %0[%c0] : tensor<1xf32>
        %289 = vector.create_mask %113, %49, %183 : vector<7x7x6xi1>
        %290 = vector.reduction <minsi>, %75 : vector<1xi16> into i16
        %291 = vector.bitcast %26 : vector<1xf16> to vector<1xf16>
        %292 = bufferization.to_memref %8 : memref<7x7x6xf16>
        %293 = math.absf %splat_46 : tensor<6x1x7xf32>
        %c45 = arith.constant 45 : index
        %inserted_53 = tensor.insert %c1_i32 into %collapsed_31[%c45, %c2] : tensor<49x6xi32>
        %294 = arith.minf %cst_5, %cst_28 : f32
        %295 = math.absi %11 : tensor<1xi16>
        %296 = vector.create_mask %93, %241, %178 : vector<7x7x6xi1>
        %297 = index.ceildivu %c12, %180
        %298 = tensor.empty() : tensor<1xi32>
        %299 = arith.shrui %c808531491_i32, %c808531491_i32 : i32
        %alloc_54 = memref.alloc() : memref<6x1x7xi1>
        scf.yield %alloc_54 : memref<6x1x7xi1>
      }
      %cast = tensor.cast %29 : tensor<7x7x6xi32> to tensor<?x?x?xi32>
      %279 = arith.divui %true_45, %false_39 : i1
      vector.print %21 : vector<7xf16>
      %280 = arith.minui %true_45, %false_39 : i1
      %281 = math.atan2 %reduced, %reduced : tensor<f32>
      %282 = memref.atomic_rmw muli %c20593_i16, %alloc_11[%c1, %c0, %c2] : (i16, memref<7x7x6xi16>) -> i16
      %283 = index.add %48, %93
      %284 = math.ipowi %c16374_i16, %extracted : i16
      memref.tensor_store %14, %alloc_10 : memref<1xf16>
      %285 = index.mul %48, %124
      %true_51 = index.bool.constant true
      scf.yield
    }
    default {
      %274 = index.mul %113, %c3
      %275 = math.fma %0, %0, %0 : tensor<1xf32>
      %276 = math.round %14 : tensor<1xf16>
      scf.index_switch %161 
      case 1 {
        %288 = vector.transpose %165, [2, 1, 0] : vector<6x1x7xi1> to vector<7x1x6xi1>
        %289 = arith.floordivsi %c20593_i16, %c16374_i16 : i16
        %290 = math.exp %6 : tensor<7x6xf32>
        %291 = memref.realloc %alloc_19 : memref<1xi64> to memref<7xi64>
        %292 = index.divu %138, %128
        %293 = bufferization.to_tensor %alloc_8 : memref<7x7x6xi16>
        %294 = math.ctlz %false : i1
        %rank = tensor.rank %51 : tensor<7x6xf32>
        %295 = math.atan %cst_2 : f32
        %296 = math.fma %collapsed_36, %224, %collapsed : tensor<42xf32>
        %297 = arith.remf %cst_1, %cst_44 : f32
        %298 = index.maxu %c9, %93
        %299 = math.round %cst_32 : f32
        %300 = memref.load %alloc_9[%c2, %c0, %c3] : memref<7x7x6xi1>
        %301 = math.rsqrt %cst_5 : f32
        %302 = arith.maxsi %true_6, %false_23 : i1
        scf.yield
      }
      case 2 {
        %288 = math.absf %9 : tensor<7x7x6xf32>
        memref.store %c20593_i16, %alloc_11[%c2, %c3, %c0] : memref<7x7x6xi16>
        %289 = math.ctpop %11 : tensor<1xi16>
        %290 = arith.negf %cst_32 : f32
        %291 = arith.shrui %extracted, %extracted : i16
        %292 = vector.create_mask %241, %c7 : vector<7x6xi1>
        %from_elements = tensor.from_elements %239 : tensor<1xi64>
        %293 = index.floordivs %91, %80
        %294 = math.exp2 %0 : tensor<1xf32>
        %295 = math.log1p %9 : tensor<7x7x6xf32>
        %296 = math.fma %229, %9, %9 : tensor<7x7x6xf32>
        %297 = arith.shrsi %c573754736_i64, %c573754736_i64 : i64
        %298 = math.tan %collapsed_40 : tensor<49x6xf16>
        %299 = arith.minui %c1_i32, %c1_i32 : i32
        vector.print %76 : vector<1xf32>
        %300 = math.tan %229 : tensor<7x7x6xf32>
        scf.yield
      }
      default {
        %288 = math.ctlz %23 : tensor<i16>
        %289 = index.add %c6, %80
        %290 = math.atan2 %cst_2, %268 : f32
        %291 = math.log %15 : tensor<7x6xf32>
        %292 = math.tan %70 : tensor<7x7xf32>
        %293 = index.add %180, %54
        %294 = affine.max affine_map<(d0, d1, d2, d3) -> (d0)>(%49, %289, %226, %293)
        %c1_i64 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %295 = vector.transfer_read %1[%293, %294], %c0_i64 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<7x6xi64>, vector<1xi64>
        %296 = memref.load %alloc_11[%c4, %c5, %c2] : memref<7x7x6xi16>
        %297 = vector.reduction <minsi>, %75 : vector<1xi16> into i16
        %298 = arith.cmpf une, %cst_1, %cst_2 : f32
        %299 = arith.negf %cst_44 : f32
        %300 = math.rsqrt %70 : tensor<7x7xf32>
        %301 = math.copysign %cst_32, %cst_3 : f32
        %302 = math.absf %splat_46 : tensor<6x1x7xf32>
        %303 = vector.reduction <add>, %156 : vector<1xf32> into f32
      }
      %277 = arith.shrsi %c16374_i16, %c20593_i16 : i16
      %278 = arith.andi %true, %245 : i1
      %279 = math.cos %12 : tensor<7x7x6xf16>
      %280 = memref.realloc %alloc_10 : memref<1xf16> to memref<7xf16>
      %281 = math.fma %6, %51, %15 : tensor<7x6xf32>
      %282 = math.ctpop %24 : tensor<i16>
      memref.alloca_scope  {
        %288 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %156, %76, %cst_44 : vector<1xf32>, vector<1xf32> into f32
        %289 = index.add %c15, %73
        %290 = arith.maxui %true_34, %25 : i1
        %291 = bufferization.to_memref %145 : memref<42xi32>
        %292 = memref.realloc %alloc_10 : memref<1xf16> to memref<1xf16>
        %293 = tensor.empty() : tensor<1xf16>
        %294 = arith.remsi %239, %c573754736_i64 : i64
        bufferization.dealloc_tensor %8 : tensor<7x7x6xf16>
        %295 = affine.apply affine_map<(d0, d1) -> (d0 - d1 * 2)>(%c2, %80)
        %296 = affine.max affine_map<(d0, d1) -> (d0 * 2)>(%128, %c11)
        bufferization.dealloc_tensor %23 : tensor<i16>
        %297 = tensor.empty(%241) : tensor<?x6xf32>
        %298 = index.ceildivs %137, %c4
        bufferization.dealloc_tensor %5 : tensor<7x6xi16>
        %299 = math.log %collapsed_40 : tensor<49x6xf16>
        %alloca_51 = memref.alloca() : memref<7x7x6xf32>
        %300 = memref.load %alloc_11[%c3, %c6, %c3] : memref<7x7x6xi16>
        memref.tensor_store %9, %238 : memref<7x7x6xf32>
        %301 = math.cos %14 : tensor<1xf16>
        %splat_52 = tensor.splat %cst_32 : tensor<1xf32>
        %inserted_53 = tensor.insert %cst_7 into %splat[%c3, %c0, %c1] : tensor<6x1x7xf16>
        %302 = arith.remf %cst_2, %268 : f32
        %303 = index.floordivs %c15, %c0
        %304 = affine.load %alloc_12[%c6, %c1, %c0] : memref<6x1x7xf32>
        %305 = arith.cmpf false, %cst_0, %cst_0 : f16
        %306 = arith.shrsi %c1180538467_i32, %c1180538467_i32 : i32
        %307 = vector.broadcast %c4 : index to vector<7xindex>
        vector.scatter %alloc_22[%c3, %c2, %c1] [%307], %247, %247 : memref<7x7x6xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
        %308 = math.ipowi %10, %10 : tensor<7x7x6xi32>
        %309 = math.log10 %15 : tensor<7x6xf32>
        %310 = affine.max affine_map<(d0, d1) -> (-d0 - (d0 + 16), -d0, -(-d0 + 2), d1)>(%244, %124)
        %311 = arith.negf %cst : f32
        %312 = math.log %229 : tensor<7x7x6xf32>
      }
      %283 = math.log2 %9 : tensor<7x7x6xf32>
      %284 = bufferization.to_memref %9 : memref<7x7x6xf32>
      %285 = affine.max affine_map<(d0, d1, d2) -> (d2 floordiv 16, (d2 ceildiv 32) * -2)>(%80, %c10, %91)
      %286 = arith.remf %cst_32, %cst_5 : f32
      %287 = bufferization.clone %238 : memref<7x7x6xf32> to memref<7x7x6xf32>
    }
    %269 = index.divs %124, %183
    %270 = arith.ori %false_39, %25 : i1
    %271 = tensor.empty() : tensor<7x7x6xf32>
    %272 = linalg.copy ins(%9 : tensor<7x7x6xf32>) outs(%271 : tensor<7x7x6xf32>) -> tensor<7x7x6xf32>
    %alloc_48 = memref.alloc() : memref<6x7xf32>
    linalg.transpose ins(%6 : tensor<7x6xf32>) outs(%alloc_48 : memref<6x7xf32>) permutation = [1, 0] 
    %alloc_49 = memref.alloc() : memref<i16>
    linalg.reduce ins(%193 : tensor<7x6xi16>) outs(%alloc_49 : memref<i16>) dimensions = [0, 1] 
      (%in: i16, %init: i16) {
        %274 = index.floordivs %241, %120
        %275 = math.powf %9, %272 : tensor<7x7x6xf32>
        %collapsed_51 = tensor.collapse_shape %7 [[0, 1], [2]] : tensor<7x7x6xi32> into tensor<49x6xi32>
        memref.assume_alignment %alloc_14, 8 : memref<6x1x7xf32>
        %276 = math.rsqrt %cst_44 : f32
        %277 = tensor.empty() : tensor<1xf32>
        %278 = bufferization.clone %alloc_13 : memref<7x6xf32> to memref<7x6xf32>
        %279 = vector.broadcast %c4 : index to vector<7xindex>
        %280 = vector.broadcast %239 : i64 to vector<7xi64>
        vector.scatter %alloc_18[%c3, %c0, %c0] [%279], %247, %280 : memref<6x1x7xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    scf.parallel (%arg1) = (%199) to (%c12) step (%c4) {
      %274 = arith.cmpf ule, %cst_0, %cst_7 : f16
      %275 = arith.minui %c20593_i16, %c20593_i16 : i16
      %276 = arith.minf %cst_3, %cst : f32
      %277 = math.ceil %0 : tensor<1xf32>
      %278 = index.ceildivu %c4, %220
      %279 = math.exp %reduced : tensor<f32>
      %280 = math.atan2 %15, %6 : tensor<7x6xf32>
      %281 = math.exp %splat_46 : tensor<6x1x7xf32>
      %282 = index.casts %false : i1 to index
      %283 = bufferization.to_tensor %alloc_16 : memref<7x7x6xi32>
      %284 = math.copysign %9, %271 : tensor<7x7x6xf32>
      %285 = vector.matrix_multiply %261, %219 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 6 : i32} : (vector<1xf32>, vector<6xf32>) -> vector<6xf32>
      %286 = memref.realloc %alloc_10 : memref<1xf16> to memref<1xf16>
      %287 = math.ctlz %5 : tensor<7x6xi16>
      %splat_51 = tensor.splat %true_34 : tensor<1xi1>
      %288 = index.ceildivs %282, %244
      scf.yield
    }
    %273 = affine.vector_load %alloc_10[%226] : memref<1xf16>, vector<6xf16>
    affine.vector_store %263, %alloc_21[%183, %54] : memref<7x6xf32>, vector<1xf32>
    vector.print %21 : vector<7xf16>
    vector.print %26 : vector<1xf16>
    vector.print %39 : vector<1xi16>
    vector.print %57 : vector<1xf16>
    vector.print %75 : vector<1xi16>
    vector.print %76 : vector<1xf32>
    vector.print %77 : vector<1xf32>
    vector.print %97 : vector<1xf16>
    vector.print %105 : vector<6x1x7xi32>
    vector.print %139 : vector<1x7xi32>
    vector.print %141 : vector<6xf32>
    vector.print %144 : vector<1x7xf32>
    vector.print %148 : vector<1xi1>
    vector.print %152 : vector<7xf32>
    vector.print %156 : vector<1xf32>
    vector.print %162 : vector<1xf32>
    vector.print %165 : vector<6x1x7xi1>
    vector.print %219 : vector<6xf32>
    vector.print %246 : vector<i16>
    vector.print %247 : vector<7xi1>
    vector.print %261 : vector<1xf32>
    vector.print %262 : vector<1xf32>
    vector.print %263 : vector<1xf32>
    vector.print %265 : vector<1xf16>
    vector.print %266 : vector<i16>
    vector.print %273 : vector<6xf16>
    vector.print %cst : f32
    vector.print %cst_0 : f16
    vector.print %c808531491_i32 : i32
    vector.print %c573754736_i64 : i64
    vector.print %cst_1 : f32
    vector.print %false : i1
    vector.print %cst_2 : f32
    vector.print %cst_3 : f32
    vector.print %c1180538467_i32 : i32
    vector.print %false_4 : i1
    vector.print %true : i1
    vector.print %c16374_i16 : i16
    vector.print %cst_5 : f32
    vector.print %true_6 : i1
    vector.print %cst_7 : f16
    vector.print %c20593_i16 : i16
    vector.print %25 : i1
    vector.print %false_23 : i1
    vector.print %extracted : i16
    vector.print %c1_i32 : i32
    vector.print %cst_28 : f32
    vector.print %cst_32 : f32
    vector.print %true_34 : i1
    vector.print %false_39 : i1
    vector.print %false_42 : i1
    vector.print %239 : i64
    vector.print %245 : i1
    vector.print %cst_44 : f32
    vector.print %true_45 : i1
    vector.print %268 : f32
    %alloc_50 = memref.alloc() : memref<1xi16>
    return %alloc_50 : memref<1xi16>
  }
}
