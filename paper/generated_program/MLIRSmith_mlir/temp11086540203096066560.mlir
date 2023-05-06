module {
  func.func @func1(%arg0: vector<3xi1>, %arg1: tensor<1x1xf32>, %arg2: f16) -> vector<1x1xf32> {
    %false = arith.constant false
    %c914149453_i64 = arith.constant 914149453 : i64
    %cst = arith.constant 5.536000e+04 : f16
    %cst_0 = arith.constant 2.037552E+9 : f32
    %c12206_i16 = arith.constant 12206 : i16
    %c4250_i16 = arith.constant 4250 : i16
    %cst_1 = arith.constant 1.36714918E+9 : f32
    %c-8649_i16 = arith.constant -8649 : i16
    %c15988_i16 = arith.constant 15988 : i16
    %cst_2 = arith.constant 9.010000e+02 : f16
    %cst_3 = arith.constant 5.920000e+04 : f16
    %cst_4 = arith.constant 1.57457472E+9 : f32
    %cst_5 = arith.constant 4.569600e+04 : f16
    %false_6 = arith.constant false
    %c1559395282_i64 = arith.constant 1559395282 : i64
    %cst_7 = arith.constant 1.29375552E+9 : f32
    %0 = tensor.empty() : tensor<1x8xi1>
    %1 = tensor.empty() : tensor<3xi1>
    %2 = tensor.empty() : tensor<1x1xf16>
    %3 = tensor.empty() : tensor<3xf16>
    %4 = tensor.empty() : tensor<1x1xi32>
    %5 = tensor.empty() : tensor<3x10x1xi32>
    %6 = tensor.empty() : tensor<3x10x1xi64>
    %7 = tensor.empty() : tensor<1x8xi32>
    %8 = tensor.empty() : tensor<1x1xi64>
    %9 = tensor.empty() : tensor<3x10x1xi32>
    %10 = tensor.empty() : tensor<3xi32>
    %11 = tensor.empty() : tensor<3xf32>
    %12 = tensor.empty() : tensor<3x10x1xi64>
    %13 = tensor.empty() : tensor<3x10x1xi16>
    %14 = tensor.empty() : tensor<3xi16>
    %15 = tensor.empty() : tensor<3xf16>
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
    %alloc = memref.alloc() : memref<1x8xi64>
    %alloc_8 = memref.alloc() : memref<1x1xf32>
    %alloc_9 = memref.alloc() : memref<3xi16>
    %alloc_10 = memref.alloc() : memref<3x10x1xi16>
    %alloc_11 = memref.alloc() : memref<3x10x1xi64>
    %alloc_12 = memref.alloc() : memref<1x1xi1>
    %alloc_13 = memref.alloc() : memref<1x1xf32>
    %alloc_14 = memref.alloc() : memref<1x1xi16>
    %alloc_15 = memref.alloc() : memref<1x1xi64>
    %alloc_16 = memref.alloc() : memref<3xi32>
    %alloc_17 = memref.alloc() : memref<1x8xi1>
    %alloc_18 = memref.alloc() : memref<1x1xf32>
    %alloc_19 = memref.alloc() : memref<3xf16>
    %alloc_20 = memref.alloc() : memref<1x1xi1>
    %alloc_21 = memref.alloc() : memref<3xi16>
    %alloc_22 = memref.alloc() : memref<3xi32>
    %16 = tensor.empty() : tensor<3xi1>
    %17 = linalg.copy ins(%1 : tensor<3xi1>) outs(%16 : tensor<3xi1>) -> tensor<3xi1>
    %18 = tensor.empty() : tensor<1x1xi1>
    %transposed = linalg.transpose ins(%alloc_12 : memref<1x1xi1>) outs(%18 : tensor<1x1xi1>) permutation = [1, 0] 
    %alloc_23 = memref.alloc() : memref<1xf16>
    linalg.reduce ins(%2 : tensor<1x1xf16>) outs(%alloc_23 : memref<1xf16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        scf.execute_region {
          %276 = math.absf %cst_0 : f32
          %277 = arith.remsi %c914149453_i64, %c1559395282_i64 : i64
          %278 = vector.broadcast %cst_0 : f32 to vector<3x10x1xf32>
          %279 = vector.shuffle %278, %278 [1, 3, 5] : vector<3x10x1xf32>, vector<3x10x1xf32>
          %280 = arith.ori %c1559395282_i64, %c1559395282_i64 : i64
          %c0_i32_58 = arith.constant 0 : i32
          affine.store %c0_i32_58, %alloc_22[%c11] : memref<3xi32>
          %281 = math.tanh %15 : tensor<3xf16>
          %282 = math.atan2 %cst_0, %cst_1 : f32
          %283 = arith.remsi %c-8649_i16, %c15988_i16 : i16
          %284 = arith.mulf %init, %cst_5 : f16
          %285 = arith.ori %c4250_i16, %c-8649_i16 : i16
          memref.copy %alloc_8, %alloc_13 : memref<1x1xf32> to memref<1x1xf32>
          %286 = index.maxu %c15, %c10
          %287 = arith.negf %cst : f16
          affine.store %cst, %alloc_19[%c11] : memref<3xf16>
          %288 = math.floor %cst_1 : f32
          %289 = tensor.empty() : tensor<3x10x1xi1>
          %290 = vector.broadcast %false_6 : i1 to vector<3x10x1xi1>
          %291 = vector.broadcast %c0_i32_58 : i32 to vector<3x10x1xi32>
          %292 = vector.gather %289[%286, %c11, %c8] [%291], %290, %290 : tensor<3x10x1xi1>, vector<3x10x1xi32>, vector<3x10x1xi1>, vector<3x10x1xi1> into vector<3x10x1xi1>
          scf.yield
        }
        %269 = arith.ori %c1559395282_i64, %c914149453_i64 : i64
        %270 = math.ctlz %7 : tensor<1x8xi32>
        %271 = affine.if affine_set<(d0, d1) : (-((d0 ceildiv 32) mod 32) >= 0, -((d0 ceildiv 32) mod 32) >= 0)>(%c10, %c11) -> f16 {
          memref.tensor_store %18, %alloc_20 : memref<1x1xi1>
          %276 = arith.negf %cst_2 : f16
          %277 = arith.ori %false_6, %false_6 : i1
          memref.store %false_6, %alloc_20[%c0, %c0] : memref<1x1xi1>
          %278 = arith.shrui %c4250_i16, %c12206_i16 : i16
          %279 = arith.shli %c15988_i16, %c4250_i16 : i16
          %280 = arith.shrsi %c1559395282_i64, %c1559395282_i64 : i64
          %281 = arith.subi %false, %false : i1
          affine.yield %cst_3 : f16
        } else {
          %276 = arith.negf %cst_3 : f16
          %277 = math.round %3 : tensor<3xf16>
          %278 = vector.broadcast %cst_7 : f32 to vector<3x10xf32>
          %279 = vector.broadcast %cst_4 : f32 to vector<3xf32>
          %dest_58, %accumulated_value_59 = vector.scan <maxf>, %278, %279 {inclusive = true, reduction_dim = 1 : i64} : vector<3x10xf32>, vector<3xf32>
          %280 = bufferization.to_tensor %alloc_21 : memref<3xi16>
          %281 = math.rsqrt %in : f16
          %282 = affine.min affine_map<(d0, d1) -> (d0 * 5 - 4, (d0 - 4) floordiv 128, (d0 * 4) mod 8, d0)>(%c3, %c3)
          %283 = math.cos %3 : tensor<3xf16>
          %284 = vector.broadcast %cst : f16 to vector<1xf16>
          %285 = vector.broadcast %cst_5 : f16 to vector<1x1xf16>
          %286 = vector.outerproduct %284, %284, %285 {kind = #vector.kind<minf>} : vector<1xf16>, vector<1xf16>
          affine.yield %cst_3 : f16
        }
        memref.store %cst_7, %alloc_18[%c0, %c0] : memref<1x1xf32>
        %generated_56 = tensor.generate %c0 {
        ^bb0(%arg3: index):
          %276 = math.absf %3 : tensor<3xf16>
          %277 = math.exp2 %init : f16
          affine.store %cst_7, %alloc_18[%c7, %c14] : memref<1x1xf32>
          %278 = math.rsqrt %cst_0 : f32
          tensor.yield %c12206_i16 : i16
        } : tensor<?xi16>
        %272 = arith.remui %c914149453_i64, %c914149453_i64 : i64
        %273 = vector.broadcast %c1 : index to vector<1xindex>
        %274 = vector.broadcast %false_6 : i1 to vector<1xi1>
        %275 = vector.broadcast %cst_7 : f32 to vector<1xf32>
        vector.scatter %alloc_13[%c0, %c0] [%273], %274, %275 : memref<1x1xf32>, vector<1xindex>, vector<1xi1>, vector<1xf32>
        %cst_57 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_57 : f16
      }
    %19 = scf.parallel (%arg3, %arg4) = (%c7, %c4) to (%c9, %c1) step (%c3, %c4) init (%9) -> tensor<3x10x1xi32> {
      %269 = math.round %11 : tensor<3xf32>
      %270 = vector.broadcast %c1559395282_i64 : i64 to vector<1xi64>
      %271 = vector.insert %c914149453_i64, %270 [0] : i64 into vector<1xi64>
      %272 = arith.xori %false, %false : i1
      %273 = arith.cmpi ule, %c914149453_i64, %c1559395282_i64 : i64
      %extracted = tensor.extract %0[%c0, %c1] : tensor<1x8xi1>
      %274 = vector.create_mask %c10, %c12, %c6 : vector<3x10x1xi1>
      %rank_56 = tensor.rank %5 : tensor<3x10x1xi32>
      %275 = arith.floordivsi %extracted, %false : i1
      %276 = arith.shrui %false, %extracted : i1
      %277 = arith.shli %false_6, %extracted : i1
      %278 = math.log10 %cst : f16
      %279 = arith.shrsi %c12206_i16, %c15988_i16 : i16
      %280 = affine.if affine_set<(d0, d1) : (d1 - 32 >= 0, d0 * 2 == 0, (d0 mod 8) ceildiv 4 == 0, (d0 * 2) floordiv 128 >= 0)>(%c9, %c12) -> f16 {
        %284 = index.maxu %c8, %c9
        %285 = vector.broadcast %cst_5 : f16 to vector<f16>
        vector.transfer_write %285, %alloc_23[%c4] : vector<f16>, memref<1xf16>
        %286 = arith.addi %c914149453_i64, %c914149453_i64 : i64
        %287 = arith.ori %extracted, %false_6 : i1
        %288 = arith.ori %c914149453_i64, %c914149453_i64 : i64
        %289 = vector.extract_strided_slice %274 {offsets = [0, 7], sizes = [2, 3], strides = [1, 1]} : vector<3x10x1xi1> to vector<2x3x1xi1>
        %290 = math.atan %11 : tensor<3xf32>
        %291 = vector.extract_strided_slice %289 {offsets = [0, 1], sizes = [2, 1], strides = [1, 1]} : vector<2x3x1xi1> to vector<2x1x1xi1>
        affine.yield %cst : f16
      } else {
        %284 = vector.create_mask %c4, %arg4 : vector<1x1xi1>
        %285 = index.add %c3, %c15
        %286 = bufferization.to_tensor %alloc : memref<1x8xi64>
        %287 = arith.maxf %cst_3, %cst_5 : f16
        %c0_i32_58 = arith.constant 0 : i32
        %inserted_59 = tensor.insert %c0_i32_58 into %7[%c0, %c3] : tensor<1x8xi32>
        %288 = index.maxs %c13, %c4
        %289 = affine.load %alloc_8[%c12, %c9] : memref<1x1xf32>
        %290 = arith.remsi %c0_i32_58, %c0_i32_58 : i32
        affine.yield %cst_2 : f16
      }
      %281 = math.log %2 : tensor<1x1xf16>
      %282 = arith.mulf %cst, %cst_5 : f16
      %extracted_57 = tensor.extract %4[%c0, %c0] : tensor<1x1xi32>
      %283 = tensor.empty() : tensor<3x10x1xi32>
      scf.reduce(%283)  : tensor<3x10x1xi32> {
      ^bb0(%arg5: tensor<3x10x1xi32>, %arg6: tensor<3x10x1xi32>):
        %284 = arith.ori %false_6, %extracted : i1
        %285 = arith.cmpf uge, %cst_7, %cst_7 : f32
        %rank_58 = tensor.rank %2 : tensor<1x1xf16>
        %286 = vector.load %alloc_17[%c0, %c4] : memref<1x8xi1>, vector<1x1xi1>
        %c17949_i16 = arith.constant 17949 : i16
        %287 = arith.shrsi %c914149453_i64, %c1559395282_i64 : i64
        %288 = math.rsqrt %15 : tensor<3xf16>
        %289 = vector.bitcast %270 : vector<1xi64> to vector<1xi64>
        %290 = tensor.empty() : tensor<3x10x1xi32>
        scf.reduce.return %290 : tensor<3x10x1xi32>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_22[%c2] : memref<3xi32>, vector<1xi32>
    affine.vector_store %20, %alloc_16[%c7] : memref<3xi32>, vector<1xi32>
    %alloc_24 = memref.alloc() : memref<3xi1>
    %21 = tensor.empty() : tensor<i1>
    %22 = linalg.dot ins(%17, %alloc_24 : tensor<3xi1>, memref<3xi1>) outs(%21 : tensor<i1>) -> tensor<i1>
    %23 = scf.while (%arg3 = %c15988_i16) : (i16) -> i16 {
      %269 = math.exp2 %cst_1 : f32
      %270 = math.fma %cst_5, %cst, %cst : f16
      %271 = vector.extract %20[0] : vector<1xi32>
      %c0_i16 = arith.constant 0 : i16
      %c0_i16_56 = arith.constant 0 : i16
      %272 = vector.transfer_read %alloc_21[%c10], %c0_i16_56 : memref<3xi16>, vector<i16>
      %273 = arith.ori %c15988_i16, %c12206_i16 : i16
      %274 = affine.load %alloc[%c8, %c7] : memref<1x8xi64>
      %275 = scf.while (%arg4 = %c914149453_i64) : (i64) -> i64 {
        %276 = math.atan %11 : tensor<3xf32>
        %extracted = tensor.extract %9[%c0, %c8, %c0] : tensor<3x10x1xi32>
        %277 = arith.remf %cst, %cst_2 : f16
        bufferization.dealloc_tensor %7 : tensor<1x8xi32>
        %278 = vector.flat_transpose %20 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %279 = vector.broadcast %c-8649_i16 : i16 to vector<3xi16>
        %280 = vector.transfer_write %279, %13[%c15, %c1, %c11] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<3xi16>, tensor<3x10x1xi16>
        %from_elements_58 = tensor.from_elements %cst_4, %cst_7, %cst_1, %cst_0, %cst_0, %cst_4, %cst_1, %cst_0, %cst_1, %cst_4, %cst_1, %cst_4, %cst_4, %cst_1, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_0, %cst_4, %cst_0, %cst_7, %cst_4, %cst_0, %cst_4, %cst_7, %cst_7, %cst_4, %cst_1 : tensor<3x10x1xf32>
        %281 = math.fma %cst_0, %cst_1, %cst_1 : f32
        scf.condition(%false_6) %c1559395282_i64 : i64
      } do {
      ^bb0(%arg4: i64):
        %276 = math.ceil %cst_2 : f16
        %277 = math.exp2 %cst_2 : f16
        %278 = arith.xori %c4250_i16, %c15988_i16 : i16
        %279 = arith.shrsi %c914149453_i64, %arg4 : i64
        %280 = index.castu %c-8649_i16 : i16 to index
        %281 = math.tanh %cst_2 : f16
        %282 = math.tanh %11 : tensor<3xf32>
        %283 = math.log %cst_3 : f16
        %284 = arith.remui %274, %arg4 : i64
        %285 = bufferization.to_tensor %alloc_11 : memref<3x10x1xi64>
        %286 = math.roundeven %cst : f16
        %inserted_58 = tensor.insert %cst_5 into %2[%c0, %c0] : tensor<1x1xf16>
        %287 = math.log1p %2 : tensor<1x1xf16>
        %c1_i32 = arith.constant 1 : i32
        %288 = math.fpowi %cst_7, %c1_i32 : f32, i32
        %289 = math.roundeven %11 : tensor<3xf32>
        %alloc_59 = memref.alloc() : memref<3x10x1xf16>
        scf.yield %274 : i64
      }
      %from_elements_57 = tensor.from_elements %c1559395282_i64, %c1559395282_i64, %c1559395282_i64, %c914149453_i64, %c914149453_i64, %c914149453_i64, %c1559395282_i64, %274 : tensor<1x8xi64>
      scf.condition(%false) %c0_i16 : i16
    } do {
    ^bb0(%arg3: i16):
      %269 = math.fpowi %15, %10 : tensor<3xf16>, tensor<3xi32>
      %c0_i32_56 = arith.constant 0 : i32
      %270 = vector.broadcast %c0_i32_56 : i32 to vector<1x1xi32>
      %271 = vector.outerproduct %20, %20, %270 {kind = #vector.kind<and>} : vector<1xi32>, vector<1xi32>
      %272 = tensor.empty() : tensor<1x1xf16>
      %273 = linalg.matmul ins(%2, %2 : tensor<1x1xf16>, tensor<1x1xf16>) outs(%272 : tensor<1x1xf16>) -> tensor<1x1xf16>
      %274 = scf.while (%arg4 = %alloc_13) : (memref<1x1xf32>) -> memref<1x1xf32> {
        %289 = arith.maxf %cst_7, %cst_0 : f32
        %290 = vector.broadcast %arg3 : i16 to vector<8x3xi16>
        %291 = vector.broadcast %c4250_i16 : i16 to vector<3xi16>
        %dest_57, %accumulated_value_58 = vector.scan <xor>, %290, %291 {inclusive = false, reduction_dim = 0 : i64} : vector<8x3xi16>, vector<3xi16>
        %292 = arith.shrui %c1559395282_i64, %c1559395282_i64 : i64
        %293 = arith.ceildivsi %c914149453_i64, %c914149453_i64 : i64
        %c1_i32_59 = arith.constant 1 : i32
        %c0_i32_60 = arith.constant 0 : i32
        %294 = vector.transfer_read %alloc_16[%c10], %c0_i32_60 : memref<3xi32>, vector<i32>
        %295 = vector.multi_reduction <add>, %20, %c1_i32_59 [0] : vector<1xi32> to i32
        %alloca_61 = memref.alloca() : memref<3xi16>
        %296 = arith.shrui %295, %c1_i32_59 : i32
        scf.condition(%false_6) %alloc_18 : memref<1x1xf32>
      } do {
      ^bb0(%arg4: memref<1x1xf32>):
        %289 = math.ctlz %7 : tensor<1x8xi32>
        %290 = arith.maxf %cst_5, %cst_3 : f16
        %291 = math.tan %272 : tensor<1x1xf16>
        %292 = math.cttz %false : i1
        %293 = arith.maxui %c-8649_i16, %c12206_i16 : i16
        %294 = vector.broadcast %c13 : index to vector<1xindex>
        %295 = vector.broadcast %false_6 : i1 to vector<1xi1>
        vector.scatter %alloc_12[%c0, %c0] [%294], %295, %295 : memref<1x1xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
        %296 = vector.shuffle %20, %20 [0, 1] : vector<1xi32>, vector<1xi32>
        %297 = tensor.empty() : tensor<1x1xi1>
        %298 = linalg.matmul ins(%18, %18 : tensor<1x1xi1>, tensor<1x1xi1>) outs(%297 : tensor<1x1xi1>) -> tensor<1x1xi1>
        %299 = arith.shli %c4250_i16, %c4250_i16 : i16
        %300 = arith.divui %false, %false_6 : i1
        %301 = vector.broadcast %cst_4 : f32 to vector<3xf32>
        %302 = vector.fma %301, %301, %301 : vector<3xf32>
        %303 = tensor.empty() : tensor<1x8xi64>
        %304 = vector.broadcast %c1559395282_i64 : i64 to vector<1x8xi64>
        %305 = vector.broadcast %false_6 : i1 to vector<1x8xi1>
        %c1_i32_57 = arith.constant 1 : i32
        %306 = vector.broadcast %c1_i32_57 : i32 to vector<1x8xi32>
        %307 = vector.gather %303[%c8, %c9] [%306], %305, %304 : tensor<1x8xi64>, vector<1x8xi32>, vector<1x8xi1>, vector<1x8xi64> into vector<1x8xi64>
        %308 = arith.divui %arg3, %c15988_i16 : i16
        %309 = arith.addf %cst_2, %cst_5 : f16
        %310 = math.floor %2 : tensor<1x1xf16>
        %311 = arith.mulf %cst_4, %cst_0 : f32
        scf.yield %alloc_18 : memref<1x1xf32>
      }
      affine.store %c914149453_i64, %alloc[%c14, %c10] : memref<1x8xi64>
      %275 = math.floor %cst_5 : f16
      %276 = math.ctlz %c15988_i16 : i16
      %277 = math.atan %15 : tensor<3xf16>
      %278 = tensor.empty() : tensor<3x10x1xf16>
      %279 = vector.broadcast %cst : f16 to vector<3xf16>
      %280 = vector.broadcast %false_6 : i1 to vector<3xi1>
      %c1_i32 = arith.constant 1 : i32
      %281 = vector.broadcast %c1_i32 : i32 to vector<3xi32>
      %282 = vector.gather %278[%c7, %c9, %c13] [%281], %280, %279 : tensor<3x10x1xf16>, vector<3xi32>, vector<3xi1>, vector<3xf16> into vector<3xf16>
      %283 = math.cttz %8 : tensor<1x1xi64>
      %284 = math.tanh %cst_7 : f32
      %285 = vector.load %alloc_23[%c0] : memref<1xf16>, vector<1x8xf16>
      %true = arith.constant true
      %286 = vector.transfer_read %alloc_17[%c15, %c15], %true : memref<1x8xi1>, vector<8xi1>
      memref.tensor_store %18, %alloc_12 : memref<1x1xi1>
      %287 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 + 4, d1 * 4)>(%c11, %c0, %c6, %c1)
      %288 = arith.divui %c1559395282_i64, %c914149453_i64 : i64
      scf.yield %c12206_i16 : i16
    }
    %24 = arith.ori %c4250_i16, %c15988_i16 : i16
    %25 = index.casts %c6 : index to i32
    %26 = arith.cmpi slt, %c4250_i16, %c4250_i16 : i16
    %rank = tensor.rank %8 : tensor<1x1xi64>
    %27 = arith.minsi %c-8649_i16, %c-8649_i16 : i16
    %28 = math.round %cst_5 : f16
    %29 = arith.shrui %false_6, %false_6 : i1
    %rank_25 = tensor.rank %4 : tensor<1x1xi32>
    %30 = arith.negf %cst_2 : f16
    %31 = tensor.empty() : tensor<3x10x1xi64>
    %mapped = linalg.map ins(%12, %12 : tensor<3x10x1xi64>, tensor<3x10x1xi64>) outs(%31 : tensor<3x10x1xi64>)
      (%in: i64, %in_56: i64) {
        %generated_57 = tensor.generate %c12, %c14 {
        ^bb0(%arg3: index, %arg4: index):
          %293 = math.exp2 %15 : tensor<3xf16>
          %294 = arith.andi %c12206_i16, %c12206_i16 : i16
          %295 = math.cttz %c914149453_i64 : i64
          %296 = math.exp %3 : tensor<3xf16>
          %c1_i32_64 = arith.constant 1 : i32
          tensor.yield %c1_i32_64 : i32
        } : tensor<?x?xi32>
        %c0_i32_58 = arith.constant 0 : i32
        %269 = vector.broadcast %c0_i32_58 : i32 to vector<1x1xi32>
        %270 = vector.outerproduct %20, %20, %269 {kind = #vector.kind<minui>} : vector<1xi32>, vector<1xi32>
        %collapsed_59 = tensor.collapse_shape %31 [[0, 1], [2]] : tensor<3x10x1xi64> into tensor<30x1xi64>
        %c1_i32 = arith.constant 1 : i32
        %inserted_60 = tensor.insert %c1_i32 into %5[%c2, %c2, %c0] : tensor<3x10x1xi32>
        %expanded_61 = tensor.expand_shape %7 [[0], [1, 2]] : tensor<1x8xi32> into tensor<1x8x1xi32>
        %271 = arith.remf %cst, %cst_5 : f16
        %272 = arith.cmpf ult, %cst_0, %cst_7 : f32
        %273 = math.round %cst_1 : f32
        %274 = math.rsqrt %15 : tensor<3xf16>
        %275 = math.ctlz %c4250_i16 : i16
        affine.store %false_6, %alloc_20[%c0, %c13] : memref<1x1xi1>
        %276 = index.divs %c10, %c8
        %277 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %20, %20, %c1_i32 : vector<1xi32>, vector<1xi32> into i32
        %alloc_62 = memref.alloc() : memref<1x1xf16>
        %278 = index.sub %c8, %c8
        %279 = math.powf %cst_2, %cst_5 : f16
        %280 = arith.remf %cst, %cst_2 : f16
        %281 = bufferization.clone %alloc_23 : memref<1xf16> to memref<1xf16>
        %282 = math.tanh %15 : tensor<3xf16>
        %alloc_63 = memref.alloc() : memref<1x1xf16>
        %283 = arith.divui %false_6, %false_6 : i1
        %284 = arith.floordivsi %c914149453_i64, %in : i64
        %285 = arith.remf %cst_3, %cst : f16
        %286 = arith.cmpf ugt, %cst_2, %cst_3 : f16
        %287 = arith.minui %c1559395282_i64, %c1559395282_i64 : i64
        affine.for %arg3 = 0 to 127 {
        }
        %288 = arith.maxui %c1_i32, %c1_i32 : i32
        %289 = math.absi %in_56 : i64
        %290 = arith.shrsi %in, %in_56 : i64
        %291 = arith.maxui %c-8649_i16, %c12206_i16 : i16
        memref.copy %alloc_23, %281 : memref<1xf16> to memref<1xf16>
        %292 = arith.shrsi %c-8649_i16, %c15988_i16 : i16
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %32 = math.expm1 %2 : tensor<1x1xf16>
    %33 = arith.muli %c12206_i16, %c15988_i16 : i16
    %34 = arith.shrsi %c12206_i16, %c12206_i16 : i16
    %c0_i32 = arith.constant 0 : i32
    %35 = math.fpowi %cst_7, %c0_i32 : f32, i32
    %alloc_26 = memref.alloc() : memref<3xi64>
    %36 = arith.ceildivsi %c914149453_i64, %c914149453_i64 : i64
    %37 = tensor.empty() : tensor<1x8xi32>
    %38 = linalg.matmul ins(%4, %7 : tensor<1x1xi32>, tensor<1x8xi32>) outs(%37 : tensor<1x8xi32>) -> tensor<1x8xi32>
    %39 = vector.create_mask %rank_25 : vector<3xi1>
    %40 = arith.andi %false, %false : i1
    %41 = index.ceildivs %rank_25, %c9
    %42 = tensor.empty(%c0, %c15) : tensor<?x?x1xi16>
    %43 = tensor.empty() : tensor<10x1xi32>
    %alloc_27 = memref.alloc() : memref<1xi32>
    %44 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%43, %alloc_27, %43 : tensor<10x1xi32>, memref<1xi32>, tensor<10x1xi32>) outs(%5 : tensor<3x10x1xi32>) {
    ^bb0(%in: i32, %in_56: i32, %in_57: i32, %out: i32):
      %269 = index.mul %c7, %c14
      %270 = index.sizeof
      %271 = affine.min affine_map<(d0, d1) -> ((d0 ceildiv 128 - 16) * 8, (d0 ceildiv 128) mod 32, 0)>(%c8, %c2)
      %272 = math.fma %11, %11, %11 : tensor<3xf32>
      %273 = arith.addf %cst_7, %cst_0 : f32
      %274 = math.expm1 %2 : tensor<1x1xf16>
      %275 = math.exp2 %15 : tensor<3xf16>
      %276 = vector.insert %out, %20 [0] : i32 into vector<1xi32>
      %277 = math.round %2 : tensor<1x1xf16>
      %278 = math.absf %cst_1 : f32
      %279 = arith.maxui %false, %false : i1
      %280 = arith.xori %out, %in : i32
      %splat = tensor.splat %c0_i32 : tensor<3xi32>
      %281 = index.divs %rank_25, %269
      %282 = vector.multi_reduction <minui>, %20, %out [0] : vector<1xi32> to i32
      %283 = arith.cmpi sle, %c-8649_i16, %c15988_i16 : i16
      %284 = math.powf %cst_2, %cst_3 : f16
      %285 = math.floor %2 : tensor<1x1xf16>
      %286 = math.tan %cst_5 : f16
      %287 = tensor.empty() : tensor<3xi64>
      %288 = arith.addi %c-8649_i16, %c15988_i16 : i16
      %289 = math.fpowi %cst_7, %in : f32, i32
      %290 = math.exp2 %15 : tensor<3xf16>
      %291 = vector.load %alloc_8[%c0, %c0] : memref<1x1xf32>, vector<1x8xf32>
      %292 = index.mul %c10, %281
      %293 = math.cos %cst_3 : f16
      %294 = math.ceil %11 : tensor<3xf32>
      %295 = math.log %15 : tensor<3xf16>
      %296 = math.log %11 : tensor<3xf32>
      %297 = arith.cmpf ogt, %cst_5, %cst_3 : f16
      %298 = vector.extract %20[0] : vector<1xi32>
      %alloc_58 = memref.alloc() : memref<i1>
      memref.tensor_store %22, %alloc_58 : memref<i1>
      linalg.yield %c0_i32 : i32
    } -> tensor<3x10x1xi32>
    %cast = tensor.cast %7 : tensor<1x8xi32> to tensor<?x?xi32>
    %45 = math.cos %cst_3 : f16
    %46 = vector.broadcast %c1559395282_i64 : i64 to vector<1x1x8xi64>
    %47 = vector.broadcast %c1559395282_i64 : i64 to vector<1x8xi64>
    %dest, %accumulated_value = vector.scan <and>, %46, %47 {inclusive = true, reduction_dim = 0 : i64} : vector<1x1x8xi64>, vector<1x8xi64>
    %48 = math.exp %15 : tensor<3xf16>
    %49 = math.log1p %3 : tensor<3xf16>
    %50 = math.roundeven %cst_7 : f32
    %51 = arith.minsi %c914149453_i64, %c914149453_i64 : i64
    memref.tensor_store %transposed, %alloc_12 : memref<1x1xi1>
    %52 = memref.realloc %alloc_23 : memref<1xf16> to memref<1xf16>
    %53 = math.absi %9 : tensor<3x10x1xi32>
    %54 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %39, %39, %false_6 : vector<3xi1>, vector<3xi1> into i1
    %55 = math.log %cst_1 : f32
    %56 = vector.broadcast %c0_i32 : i32 to vector<1x1xi32>
    %57 = vector.outerproduct %20, %20, %56 {kind = #vector.kind<xor>} : vector<1xi32>, vector<1xi32>
    %58 = vector.insert %false, %39 [2] : i1 into vector<3xi1>
    %59 = arith.addf %cst_1, %cst_1 : f32
    %60 = math.tanh %cst_2 : f16
    %61 = arith.shli %c4250_i16, %c4250_i16 : i16
    %62 = vector.broadcast %cst_5 : f16 to vector<3x1xf16>
    %63 = vector.broadcast %cst : f16 to vector<3xf16>
    %dest_28, %accumulated_value_29 = vector.scan <mul>, %62, %63 {inclusive = true, reduction_dim = 1 : i64} : vector<3x1xf16>, vector<3xf16>
    %64 = math.powf %cst, %cst_3 : f16
    %65 = bufferization.to_tensor %alloc_13 : memref<1x1xf32>
    %66 = math.exp %cst_7 : f32
    %67 = arith.ori %c4250_i16, %c12206_i16 : i16
    %68 = arith.remf %cst_3, %cst : f16
    %69 = math.atan2 %cst_4, %cst_4 : f32
    %70 = vector.matrix_multiply %20, %20 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
    %71 = vector.broadcast %c15988_i16 : i16 to vector<8xi16>
    vector.transfer_write %71, %alloc_14[%c13, %c2] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xi16>, memref<1x1xi16>
    %72 = math.absf %3 : tensor<3xf16>
    %73 = vector.extract_strided_slice %71 {offsets = [0], sizes = [3], strides = [1]} : vector<8xi16> to vector<3xi16>
    %74 = index.castu %c12 : index to i32
    %75 = math.cos %15 : tensor<3xf16>
    %76 = index.sizeof
    %77 = arith.remui %c1559395282_i64, %c914149453_i64 : i64
    %78 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %70, %20, %c0_i32 : vector<1xi32>, vector<1xi32> into i32
    %79 = vector.reduction <add>, %20 : vector<1xi32> into i32
    %80 = vector.bitcast %20 : vector<1xi32> to vector<1xi32>
    %81 = arith.andi %c-8649_i16, %c4250_i16 : i16
    %82 = vector.transpose %73, [0] : vector<3xi16> to vector<3xi16>
    %83 = bufferization.clone %alloc_14 : memref<1x1xi16> to memref<1x1xi16>
    %generated = tensor.generate %76, %c15 {
    ^bb0(%arg3: index, %arg4: index, %arg5: index):
      %269 = vector.broadcast %c0_i32 : i32 to vector<8x10x10xi32>
      %270 = vector.broadcast %c0_i32 : i32 to vector<10x10xi32>
      %dest_56, %accumulated_value_57 = vector.scan <or>, %269, %270 {inclusive = false, reduction_dim = 0 : i64} : vector<8x10x10xi32>, vector<10x10xi32>
      %271 = math.exp %cst_4 : f32
      %272 = vector.broadcast %c4250_i16 : i16 to vector<8x8xi16>
      %273 = vector.outerproduct %71, %71, %272 {kind = #vector.kind<maxui>} : vector<8xi16>, vector<8xi16>
      %274 = math.floor %cst_1 : f32
      tensor.yield %c914149453_i64 : i64
    } : tensor<?x?x1xi64>
    %84 = affine.load %alloc_14[%c5, %c2] : memref<1x1xi16>
    %85 = arith.shrsi %c914149453_i64, %c914149453_i64 : i64
    %86 = bufferization.clone %alloc_11 : memref<3x10x1xi64> to memref<3x10x1xi64>
    vector.print %39 : vector<3xi1>
    %87 = arith.ori %c4250_i16, %84 : i16
    affine.store %cst_0, %alloc_13[%c1, %c6] : memref<1x1xf32>
    %88 = math.fma %cst_2, %cst_5, %cst_3 : f16
    %89 = arith.remsi %c-8649_i16, %c15988_i16 : i16
    %90 = arith.floordivsi %c914149453_i64, %c914149453_i64 : i64
    %91 = math.copysign %11, %11 : tensor<3xf32>
    %alloc_30 = memref.alloc() : memref<1xi32>
    %92 = tensor.empty() : tensor<10x3xi32>
    %93 = tensor.empty() : tensor<10x1x3xi32>
    %94 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_30, %92, %93 : memref<1xi32>, tensor<10x3xi32>, tensor<10x1x3xi32>) outs(%5 : tensor<3x10x1xi32>) {
    ^bb0(%in: i32, %in_56: i32, %in_57: i32, %out: i32):
      %269 = index.castu %c5 : index to i32
      %270 = arith.mulf %cst_0, %cst_7 : f32
      %271 = arith.shrui %c1559395282_i64, %c914149453_i64 : i64
      %272 = vector.splat %cst_2 : vector<1x1xf16>
      %273 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%12 : tensor<3x10x1xi64>) {
      ^bb0(%out_62: i64):
        %301 = index.divu %c10, %rank
        memref.store %cst_3, %alloc_23[%c0] : memref<1xf16>
        %302 = arith.shrsi %out, %c0_i32 : i32
        %303 = arith.divui %c914149453_i64, %c914149453_i64 : i64
        %304 = vector.broadcast %c914149453_i64 : i64 to vector<1x3x3xi64>
        %305 = vector.broadcast %out_62 : i64 to vector<3x3xi64>
        %dest_63, %accumulated_value_64 = vector.scan <and>, %304, %305 {inclusive = true, reduction_dim = 0 : i64} : vector<1x3x3xi64>, vector<3x3xi64>
        %306 = vector.insertelement %in, %70[%c7 : index] : vector<1xi32>
        %307 = vector.load %alloc_24[%c2] : memref<3xi1>, vector<1x1xi1>
        %308 = vector.multi_reduction <maxui>, %73, %73 [] : vector<3xi16> to vector<3xi16>
        %309 = vector.bitcast %73 : vector<3xi16> to vector<3xi16>
        %310 = arith.negf %cst : f16
        %311 = math.sqrt %cst_1 : f32
        %312 = tensor.empty() : tensor<1x8xi16>
        %313 = math.roundeven %cst_2 : f16
        %cst_65 = arith.constant 0x4D0A4CE4 : f32
        %314 = vector.broadcast %false : i1 to vector<1x8xi1>
        %315 = arith.remsi %c-8649_i16, %c12206_i16 : i16
        %316 = vector.bitcast %307 : vector<1x1xi1> to vector<1x1xi1>
        %317 = tensor.empty() : tensor<3x10x1xi1>
        %318 = arith.shli %c12206_i16, %c12206_i16 : i16
        %319 = math.round %2 : tensor<1x1xf16>
        %320 = index.castu %c8 : index to i32
        %321 = bufferization.to_tensor %alloc_13 : memref<1x1xf32>
        %322 = math.cos %11 : tensor<3xf32>
        %323 = arith.ori %in, %in : i32
        %324 = arith.remsi %c1559395282_i64, %c914149453_i64 : i64
        %inserted_66 = tensor.insert %in into %5[%c1, %c7, %c0] : tensor<3x10x1xi32>
        %325 = index.ceildivu %c5, %c12
        %326 = vector.broadcast %rank_25 : index to vector<1xindex>
        %327 = vector.broadcast %false : i1 to vector<1xi1>
        vector.scatter %alloc_16[%c0] [%326], %327, %70 : memref<3xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
        %cast_67 = tensor.cast %7 : tensor<1x8xi32> to tensor<?x?xi32>
        %328 = math.round %3 : tensor<3xf16>
        %329 = arith.minsi %c0_i32, %in_57 : i32
        %330 = math.round %2 : tensor<1x1xf16>
        linalg.yield %c1559395282_i64 : i64
      } -> tensor<3x10x1xi64>
      %274 = vector.extract_strided_slice %20 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
      %275 = index.mul %41, %rank
      %276 = vector.transpose %70, [0] : vector<1xi32> to vector<1xi32>
      %277 = vector.broadcast %c-8649_i16 : i16 to vector<3x10x10xi16>
      %278 = vector.broadcast %c15988_i16 : i16 to vector<3x10xi16>
      %dest_58, %accumulated_value_59 = vector.scan <minui>, %277, %278 {inclusive = false, reduction_dim = 2 : i64} : vector<3x10x10xi16>, vector<3x10xi16>
      %279 = index.mul %rank_25, %rank
      %alloc_60 = memref.alloc() : memref<1x8xi32>
      memref.tensor_store %7, %alloc_60 : memref<1x8xi32>
      %280 = arith.maxf %cst_1, %cst_4 : f32
      affine.store %in_57, %alloc_16[%c15] : memref<3xi32>
      %281 = vector.bitcast %80 : vector<1xi32> to vector<1xi32>
      %282 = vector.broadcast %false_6 : i1 to vector<3x3xi1>
      %283 = vector.outerproduct %39, %39, %282 {kind = #vector.kind<minui>} : vector<3xi1>, vector<3xi1>
      %284 = arith.floordivsi %in, %in_57 : i32
      %285 = affine.load %alloc_14[%c7, %c2] : memref<1x1xi16>
      %286 = math.round %15 : tensor<3xf16>
      %287 = arith.divui %c12206_i16, %84 : i16
      %288 = arith.cmpf uge, %cst_0, %cst_0 : f32
      %289 = math.expm1 %cst : f16
      %290 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %274, %20, %in_57 : vector<1xi32>, vector<1xi32> into i32
      %291 = arith.remui %false, %false_6 : i1
      %292 = arith.shrsi %in, %out : i32
      %293 = index.add %c4, %c15
      %294 = tensor.empty() : tensor<1x1xf16>
      %295 = linalg.matmul ins(%2, %2 : tensor<1x1xf16>, tensor<1x1xf16>) outs(%294 : tensor<1x1xf16>) -> tensor<1x1xf16>
      memref.store %285, %alloc_9[%c2] : memref<3xi16>
      %296 = vector.broadcast %false_6 : i1 to vector<3x3xi1>
      %297 = vector.outerproduct %39, %39, %296 {kind = #vector.kind<add>} : vector<3xi1>, vector<3xi1>
      %298 = arith.shli %c-8649_i16, %c12206_i16 : i16
      %299 = vector.extract_strided_slice %80 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
      %rank_61 = tensor.rank %15 : tensor<3xf16>
      %300 = arith.divui %out, %in_57 : i32
      linalg.yield %in : i32
    } -> tensor<3x10x1xi32>
    %95 = math.round %3 : tensor<3xf16>
    %96 = math.round %3 : tensor<3xf16>
    %97 = arith.remf %cst_5, %cst_5 : f16
    %98 = bufferization.to_tensor %alloc_22 : memref<3xi32>
    %99 = vector.matrix_multiply %20, %70 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
    %100 = arith.remui %c0_i32, %c0_i32 : i32
    %101 = math.fma %15, %15, %3 : tensor<3xf16>
    %102 = vector.broadcast %c914149453_i64 : i64 to vector<8x8x8xi64>
    %103 = vector.broadcast %c1559395282_i64 : i64 to vector<8x8xi64>
    %dest_31, %accumulated_value_32 = vector.scan <maxsi>, %102, %103 {inclusive = true, reduction_dim = 1 : i64} : vector<8x8x8xi64>, vector<8x8xi64>
    %104 = vector.shuffle %70, %80 [0] : vector<1xi32>, vector<1xi32>
    %105 = math.exp %11 : tensor<3xf32>
    %106 = index.sizeof
    %107 = math.exp %15 : tensor<3xf16>
    %108 = tensor.empty() : tensor<3x10x1xi64>
    %mapped_33 = linalg.map ins(%6 : tensor<3x10x1xi64>) outs(%108 : tensor<3x10x1xi64>)
      (%in: i64) {
        %c0_i64 = arith.constant 0 : i64
        %269 = vector.transfer_read %6[%c2, %c14, %c4], %c0_i64 : tensor<3x10x1xi64>, vector<8xi64>
        %270 = index.mul %c0, %c5
        %271 = math.fma %cst_5, %cst_2, %cst_3 : f16
        %rank_56 = tensor.rank %10 : tensor<3xi32>
        %272 = vector.broadcast %c13 : index to vector<8xindex>
        %273 = vector.broadcast %false : i1 to vector<8xi1>
        vector.scatter %alloc_20[%c0, %c0] [%272], %273, %273 : memref<1x1xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
        %274 = math.log %2 : tensor<1x1xf16>
        %275 = vector.insertelement %false_6, %39[%106 : index] : vector<3xi1>
        %276 = bufferization.clone %83 : memref<1x1xi16> to memref<1x1xi16>
        %277 = arith.ceildivsi %c4250_i16, %c12206_i16 : i16
        %278 = index.casts %c15988_i16 : i16 to index
        %279 = math.copysign %3, %15 : tensor<3xf16>
        %280 = arith.floordivsi %false, %false : i1
        memref.store %84, %83[%c0, %c0] : memref<1x1xi16>
        %281 = math.atan2 %15, %3 : tensor<3xf16>
        %282 = bufferization.clone %276 : memref<1x1xi16> to memref<1x1xi16>
        %283 = affine.if affine_set<(d0, d1, d2, d3) : ((d0 - 1) floordiv 2 == 0, d0 == 0, (d2 - d0 + 32) * 32 == 0)>(%c4, %c10, %c6, %c4) -> memref<1x1xi64> {
          %297 = arith.shli %84, %c-8649_i16 : i16
          %inserted_62 = tensor.insert %c0_i32 into %10[%c1] : tensor<3xi32>
          %298 = arith.remf %cst_1, %cst_7 : f32
          %299 = bufferization.clone %alloc_21 : memref<3xi16> to memref<3xi16>
          %300 = tensor.empty() : tensor<1x8xi32>
          %301 = linalg.matmul ins(%4, %37 : tensor<1x1xi32>, tensor<1x8xi32>) outs(%300 : tensor<1x8xi32>) -> tensor<1x8xi32>
          %302 = vector.broadcast %c8 : index to vector<10xindex>
          %303 = vector.broadcast %false_6 : i1 to vector<10xi1>
          %304 = vector.broadcast %c-8649_i16 : i16 to vector<10xi16>
          vector.scatter %alloc_14[%c0, %c0] [%302], %303, %304 : memref<1x1xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
          %305 = arith.remf %cst_0, %cst_1 : f32
          %306 = arith.ori %c12206_i16, %c12206_i16 : i16
          affine.yield %alloc_15 : memref<1x1xi64>
        } else {
          %297 = vector.broadcast %c0_i32 : i32 to vector<3xi32>
          %298 = vector.gather %4[%c13, %106] [%297], %39, %297 : tensor<1x1xi32>, vector<3xi32>, vector<3xi1>, vector<3xi32> into vector<3xi32>
          %299 = math.tan %15 : tensor<3xf16>
          %300 = math.powf %15, %15 : tensor<3xf16>
          %301 = index.sizeof
          %302 = vector.load %alloc_24[%c0] : memref<3xi1>, vector<3xi1>
          %303 = math.tanh %15 : tensor<3xf16>
          %304 = arith.cmpi sle, %c-8649_i16, %c-8649_i16 : i16
          %305 = arith.mulf %cst, %cst_3 : f16
          affine.yield %alloc_15 : memref<1x1xi64>
        }
        %284 = affine.if affine_set<(d0, d1, d2, d3) : ((d2 - d3 - 128) * 2 - d1 mod 64 >= 0, d1 mod 64 - 16 >= 0)>(%c10, %c15, %c8, %c7) -> f32 {
          %297 = math.log10 %cst_2 : f16
          %collapsed_62 = tensor.collapse_shape %generated [[0, 1], [2]] : tensor<?x?x1xi64> into tensor<?x1xi64>
          %298 = index.ceildivs %c4, %c8
          %299 = bufferization.clone %86 : memref<3x10x1xi64> to memref<3x10x1xi64>
          %300 = math.tan %65 : tensor<1x1xf32>
          %301 = arith.shrsi %c15988_i16, %84 : i16
          %302 = arith.subi %c4250_i16, %c12206_i16 : i16
          %303 = math.expm1 %cst_2 : f16
          affine.yield %cst_0 : f32
        } else {
          %297 = arith.minsi %false, %false_6 : i1
          %298 = vector.broadcast %cst_7 : f32 to vector<1x1xf32>
          %299 = vector.fma %298, %298, %298 : vector<1x1xf32>
          %300 = math.rsqrt %15 : tensor<3xf16>
          %301 = arith.muli %c15988_i16, %c4250_i16 : i16
          %302 = index.ceildivs %c3, %106
          %303 = tensor.empty(%41) : tensor<3x10x?xf32>
          %304 = vector.broadcast %cst_7 : f32 to vector<1x8xf32>
          %305 = vector.fma %304, %304, %304 : vector<1x8xf32>
          %306 = arith.remui %in, %c0_i64 : i64
          affine.yield %cst_1 : f32
        }
        %285 = vector.multi_reduction <and>, %20, %99 [] : vector<1xi32> to vector<1xi32>
        %286 = vector.reduction <maxui>, %20 : vector<1xi32> into i32
        %cst_57 = arith.constant 1.2257975E+9 : f32
        %c17530_i16 = arith.constant 17530 : i16
        %287 = arith.mulf %cst, %cst_2 : f16
        %288 = arith.minsi %c12206_i16, %c12206_i16 : i16
        %289 = math.copysign %2, %2 : tensor<1x1xf16>
        %290 = arith.addi %false, %false_6 : i1
        %291 = math.rsqrt %cst_2 : f16
        %292 = affine.if affine_set<(d0, d1, d2, d3) : (0 == 0, (d0 ceildiv 32) floordiv 32 - 8 >= 0, d2 >= 0, 0 >= 0)>(%c5, %c12, %c14, %c11) -> memref<3xf32> {
          %297 = vector.broadcast %false_6 : i1 to vector<3x3xi1>
          %298 = vector.outerproduct %39, %39, %297 {kind = #vector.kind<minsi>} : vector<3xi1>, vector<3xi1>
          %299 = vector.insert %c0_i32, %20 [0] : i32 into vector<1xi32>
          vector.print %20 : vector<1xi32>
          %300 = vector.load %alloc_9[%c1] : memref<3xi16>, vector<3x10x1xi16>
          %301 = tensor.empty() : tensor<3x10x1xi32>
          %302 = index.maxs %c13, %c8
          %303 = vector.broadcast %cst_7 : f32 to vector<3xf32>
          %304 = vector.fma %303, %303, %303 : vector<3xf32>
          %305 = index.casts %false_6 : i1 to index
          %alloc_62 = memref.alloc() : memref<3xf32>
          affine.yield %alloc_62 : memref<3xf32>
        } else {
          %297 = index.ceildivs %c9, %c5
          %298 = arith.remsi %false, %false : i1
          %299 = math.cos %15 : tensor<3xf16>
          %300 = vector.insert %c0_i32, %70 [0] : i32 into vector<1xi32>
          %301 = arith.subi %false_6, %false_6 : i1
          %302 = arith.shrui %c0_i32, %c0_i32 : i32
          %303 = vector.broadcast %false_6 : i1 to vector<3x3xi1>
          %304 = vector.outerproduct %39, %39, %303 {kind = #vector.kind<or>} : vector<3xi1>, vector<3xi1>
          %305 = math.log1p %cst_0 : f32
          %alloc_62 = memref.alloc() : memref<3xf32>
          affine.yield %alloc_62 : memref<3xf32>
        }
        memref.copy %alloc_12, %alloc_20 : memref<1x1xi1> to memref<1x1xi1>
        %false_58 = arith.constant false
        %293 = vector.transfer_read %alloc_24[%c0], %false_58 : memref<3xi1>, vector<i1>
        memref.alloca_scope  {
          %297 = arith.ceildivsi %false_6, %false_6 : i1
          %298 = affine.min affine_map<(d0) -> (d0 mod 2, (((d0 mod 2) mod 8) ceildiv 8) * 8)>(%278)
          %299 = vector.extract %20[0] : vector<1xi32>
          %300 = index.mul %106, %c12
          %301 = vector.insert %c0_i32, %80 [0] : i32 into vector<1xi32>
          %302 = arith.addi %c12206_i16, %c12206_i16 : i16
          %303 = arith.ori %false, %false_58 : i1
          %304 = arith.floordivsi %c0_i32, %c0_i32 : i32
          %305 = arith.addi %c0_i32, %c0_i32 : i32
          %306 = arith.floordivsi %c1559395282_i64, %c1559395282_i64 : i64
          %307 = math.exp %cst_0 : f32
          %308 = index.divu %rank_25, %rank
          %309 = arith.andi %c4250_i16, %c15988_i16 : i16
          %310 = index.mul %c3, %c8
          %311 = bufferization.clone %alloc_12 : memref<1x1xi1> to memref<1x1xi1>
          %312 = arith.subi %false_58, %false_58 : i1
          %collapsed_62 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<3x10x1xi16> into tensor<30x1xi16>
          %313 = vector.broadcast %cst_3 : f16 to vector<3xf16>
          %314 = index.castu %310 : index to i32
          %315 = math.cos %15 : tensor<3xf16>
          %316 = arith.maxui %84, %c15988_i16 : i16
          %317 = vector.extract_strided_slice %70 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
          %318 = index.casts %rank_56 : index to i32
          %319 = arith.shrsi %false_58, %false : i1
          memref.tensor_store %8, %alloc_15 : memref<1x1xi64>
          vector.print %317 : vector<1xi32>
          %320 = arith.remui %c0_i32, %c0_i32 : i32
          %321 = arith.addi %c12206_i16, %c4250_i16 : i16
          %c1_i32 = arith.constant 1 : i32
          %322 = vector.transfer_read %alloc_16[%c13], %c1_i32 : memref<3xi32>, vector<i32>
          %323 = vector.insertelement %c0_i32, %70[%rank_25 : index] : vector<1xi32>
          %324 = bufferization.to_memref %8 : memref<1x1xi64>
          %325 = math.round %cst_1 : f32
        }
        %294 = vector.broadcast %c0_i32 : i32 to vector<3x10xi32>
        %295 = vector.broadcast %c0_i32 : i32 to vector<3xi32>
        %dest_59, %accumulated_value_60 = vector.scan <mul>, %294, %295 {inclusive = false, reduction_dim = 1 : i64} : vector<3x10xi32>, vector<3xi32>
        %296 = math.cttz %14 : tensor<3xi16>
        %c0_i64_61 = arith.constant 0 : i64
        linalg.yield %c0_i64_61 : i64
      }
    %109 = bufferization.to_tensor %alloc_17 : memref<1x8xi1>
    %110 = arith.remsi %false, %false_6 : i1
    %111 = arith.minf %cst_2, %cst_3 : f16
    %from_elements = tensor.from_elements %84 : tensor<1x1xi16>
    memref.alloca_scope  {
      %269 = math.round %11 : tensor<3xf32>
      %270 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %80, %20, %c0_i32 : vector<1xi32>, vector<1xi32> into i32
      %271 = arith.xori %c15988_i16, %c-8649_i16 : i16
      %272 = arith.minui %84, %c15988_i16 : i16
      %273 = arith.divui %c15988_i16, %84 : i16
      %274 = arith.andi %c1559395282_i64, %c914149453_i64 : i64
      %275 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %71, %71, %c-8649_i16 : vector<8xi16>, vector<8xi16> into i16
      %276 = math.exp %cst_0 : f32
      %277 = affine.min affine_map<(d0, d1, d2, d3) -> (0, d0)>(%c7, %c10, %c0, %41)
      %278 = math.tan %2 : tensor<1x1xf16>
      %279 = vector.broadcast %false : i1 to vector<3x3xi1>
      %280 = vector.outerproduct %39, %39, %279 {kind = #vector.kind<minui>} : vector<3xi1>, vector<3xi1>
      %281 = vector.load %alloc_13[%c0, %c0] : memref<1x1xf32>, vector<3x10x1xf32>
      memref.tensor_store %0, %alloc_17 : memref<1x8xi1>
      %282 = arith.minsi %84, %c-8649_i16 : i16
      %283 = index.mul %76, %c3
      %284 = math.log2 %3 : tensor<3xf16>
      %285 = arith.cmpf ugt, %cst_0, %cst_7 : f32
      %286 = math.roundeven %3 : tensor<3xf16>
      %287 = vector.broadcast %c1559395282_i64 : i64 to vector<1x3xi64>
      %288 = vector.transfer_write %287, %6[%c10, %c3, %c2] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<1x3xi64>, tensor<3x10x1xi64>
      %289 = arith.addf %cst_1, %cst_1 : f32
      %alloca_56 = memref.alloca() : memref<1x1xi1>
      %290 = bufferization.to_tensor %83 : memref<1x1xi16>
      %291 = math.absf %cst_5 : f16
      %292 = index.ceildivu %277, %c3
      %293 = vector.extract_strided_slice %80 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
      %294 = tensor.empty() : tensor<1x1xi16>
      %295 = linalg.matmul ins(%290, %290 : tensor<1x1xi16>, tensor<1x1xi16>) outs(%294 : tensor<1x1xi16>) -> tensor<1x1xi16>
      %296 = math.round %cst_5 : f16
      %splat = tensor.splat %false : tensor<3xi1>
      %297 = arith.ori %c12206_i16, %c-8649_i16 : i16
      %298 = affine.if affine_set<(d0) : ((d0 * 3) mod 2 >= 0, d0 * 3 >= 0, (d0 * 2) floordiv 32 >= 0, d0 * 4 >= 0)>(%c2) -> i32 {
        %302 = math.copysign %cst_7, %cst_4 : f32
        %303 = arith.shrsi %false, %false : i1
        %304 = index.casts %c1559395282_i64 : i64 to index
        %305 = index.sub %304, %c7
        %306 = math.cos %cst_5 : f16
        %inserted_57 = tensor.insert %false_6 into %18[%c0, %c0] : tensor<1x1xi1>
        %307 = arith.mulf %cst_1, %cst_0 : f32
        %308 = vector.extract_strided_slice %39 {offsets = [0], sizes = [1], strides = [1]} : vector<3xi1> to vector<1xi1>
        affine.yield %c0_i32 : i32
      } else {
        %302 = arith.shli %c12206_i16, %c12206_i16 : i16
        %303 = arith.floordivsi %c-8649_i16, %c15988_i16 : i16
        memref.tensor_store %18, %alloc_20 : memref<1x1xi1>
        %splat_57 = tensor.splat %cst_4 : tensor<1x1xf32>
        %collapsed_58 = tensor.collapse_shape %37 [[0, 1]] : tensor<1x8xi32> into tensor<8xi32>
        %304 = arith.mulf %cst_5, %cst_2 : f16
        %305 = arith.divui %84, %c12206_i16 : i16
        %306 = vector.transpose %73, [0] : vector<3xi16> to vector<3xi16>
        affine.yield %c0_i32 : i32
      }
      %299 = arith.muli %84, %c12206_i16 : i16
      %300 = vector.broadcast %c12206_i16 : i16 to vector<8x8xi16>
      %301 = vector.outerproduct %71, %71, %300 {kind = #vector.kind<add>} : vector<8xi16>, vector<8xi16>
    }
    %112 = memref.load %alloc_22[%c2] : memref<3xi32>
    %alloc_34 = memref.alloc() : memref<1x1xi32>
    memref.tensor_store %4, %alloc_34 : memref<1x1xi32>
    %113 = index.maxs %c9, %c4
    %114 = math.powf %cst_5, %cst_5 : f16
    %115 = math.atan %cst_2 : f16
    %116 = arith.mulf %cst_5, %cst_5 : f16
    %117 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %73, %73, %c12206_i16 : vector<3xi16>, vector<3xi16> into i16
    scf.execute_region {
      %splat = tensor.splat %c4250_i16 : tensor<3xi16>
      %269 = math.log %15 : tensor<3xf16>
      %270 = vector.multi_reduction <or>, %20, %70 [] : vector<1xi32> to vector<1xi32>
      %c1_i64 = arith.constant 1 : i64
      %c0_i64 = arith.constant 0 : i64
      %271 = vector.transfer_read %alloc_11[%c12, %c0, %c13], %c0_i64 {permutation_map = affine_map<(d0, d1, d2) -> (d0, 0)>} : memref<3x10x1xi64>, vector<8x1xi64>
      %272 = index.add %76, %106
      %273 = bufferization.clone %alloc_23 : memref<1xf16> to memref<1xf16>
      scf.execute_region {
        %285 = tensor.empty() : tensor<3xi16>
        %286 = math.log %cst_4 : f32
        %287 = arith.negf %cst_0 : f32
        %288 = math.cos %11 : tensor<3xf32>
        %289 = arith.mulf %cst_0, %cst_7 : f32
        %290 = bufferization.to_tensor %alloc_22 : memref<3xi32>
        %291 = math.fma %2, %2, %2 : tensor<1x1xf16>
        %292 = math.roundeven %cst_2 : f16
        %293 = index.mul %rank_25, %c5
        %294 = vector.broadcast %cst_5 : f16 to vector<10x1x1xf16>
        %295 = vector.broadcast %cst : f16 to vector<1x1xf16>
        %dest_56, %accumulated_value_57 = vector.scan <mul>, %294, %295 {inclusive = true, reduction_dim = 0 : i64} : vector<10x1x1xf16>, vector<1x1xf16>
        %296 = arith.cmpf oge, %cst_7, %cst_1 : f32
        %297 = math.rsqrt %cst_5 : f16
        %298 = arith.shrui %c12206_i16, %c-8649_i16 : i16
        %299 = bufferization.to_memref %37 : memref<1x8xi32>
        %300 = arith.mulf %cst_4, %cst_0 : f32
        %301 = math.log %15 : tensor<3xf16>
        scf.yield
      }
      %274 = math.copysign %cst_7, %cst_1 : f32
      %275 = arith.ori %c12206_i16, %c-8649_i16 : i16
      %276 = vector.broadcast %c0_i32 : i32 to vector<1x1xi32>
      %277 = vector.outerproduct %80, %80, %276 {kind = #vector.kind<minui>} : vector<1xi32>, vector<1xi32>
      %278 = arith.shli %c-8649_i16, %c4250_i16 : i16
      %279 = math.atan2 %cst_2, %cst_3 : f16
      %280 = vector.broadcast %c0_i32 : i32 to vector<8xi32>
      %281 = vector.transfer_write %280, %7[%c3, %c10] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xi32>, tensor<1x8xi32>
      %282 = arith.maxsi %c1559395282_i64, %c914149453_i64 : i64
      %283 = arith.cmpi ne, %c12206_i16, %c4250_i16 : i16
      %284 = math.fma %cst_7, %cst_7, %cst_7 : f32
      scf.yield
    }
    %118 = math.copysign %11, %11 : tensor<3xf32>
    %alloca = memref.alloca() : memref<3x10x1xf32>
    %119 = math.sqrt %11 : tensor<3xf32>
    %120 = arith.remf %cst_4, %cst_1 : f32
    %121 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %20, %99, %c0_i32 : vector<1xi32>, vector<1xi32> into i32
    %122 = index.maxs %c10, %c13
    %123 = math.ctlz %7 : tensor<1x8xi32>
    %124 = tensor.empty() : tensor<3x10x1xi64>
    %mapped_35 = linalg.map ins(%31 : tensor<3x10x1xi64>) outs(%124 : tensor<3x10x1xi64>)
      (%in: i64) {
        %269 = vector.insert %c-8649_i16, %73 [2] : i16 into vector<3xi16>
        %false_56 = arith.constant false
        %270 = vector.transfer_read %0[%c14, %106], %false_56 : tensor<1x8xi1>, vector<i1>
        %271 = math.log1p %cst : f16
        %272 = tensor.empty(%c14, %113) : tensor<?x10x?xi32>
        %273 = arith.cmpf ule, %cst_1, %cst_4 : f32
        memref.assume_alignment %alloc_11, 1 : memref<3x10x1xi64>
        %274 = math.rsqrt %cst_1 : f32
        %275 = scf.execute_region -> tensor<1x8xi16> {
          %299 = arith.maxui %c-8649_i16, %c12206_i16 : i16
          %300 = arith.divui %c-8649_i16, %c-8649_i16 : i16
          %301 = index.maxs %c14, %c4
          %302 = vector.broadcast %c0_i32 : i32 to vector<1x1xi32>
          %303 = vector.outerproduct %20, %80, %302 {kind = #vector.kind<or>} : vector<1xi32>, vector<1xi32>
          %304 = affine.min affine_map<(d0, d1) -> (d1 * 64 + d1 mod 4, 0, d0 - 128)>(%76, %c10)
          %305 = index.maxu %c3, %304
          %cast_58 = tensor.cast %7 : tensor<1x8xi32> to tensor<?x?xi32>
          %306 = affine.load %alloc_18[%c13, %c12] : memref<1x1xf32>
          %307 = arith.minsi %c4250_i16, %c12206_i16 : i16
          %308 = math.round %11 : tensor<3xf32>
          %309 = math.absi %22 : tensor<i1>
          %310 = vector.insert %c0_i32, %70 [0] : i32 into vector<1xi32>
          %311 = arith.negf %cst : f16
          %alloc_59 = memref.alloc() : memref<3xf32>
          memref.tensor_store %11, %alloc_59 : memref<3xf32>
          %312 = arith.cmpf ueq, %cst_2, %cst_5 : f16
          %313 = math.round %3 : tensor<3xf16>
          %314 = tensor.empty() : tensor<1x8xi16>
          scf.yield %314 : tensor<1x8xi16>
        }
        %276 = vector.broadcast %cst_2 : f16 to vector<3x10x1xf16>
        %277 = arith.maxui %c4250_i16, %c15988_i16 : i16
        %278 = arith.cmpi ugt, %c914149453_i64, %c1559395282_i64 : i64
        vector.print %71 : vector<8xi16>
        %splat = tensor.splat %c12206_i16 : tensor<3x10x1xi16>
        %279 = index.add %122, %122
        %280 = arith.maxui %c12206_i16, %c15988_i16 : i16
        %281 = math.atan %cst_7 : f32
        %282 = arith.cmpi sle, %false_6, %false_56 : i1
        %283 = memref.alloca_scope  -> (f16) {
          %299 = vector.broadcast %84 : i16 to vector<8x8xi16>
          %300 = vector.outerproduct %71, %71, %299 {kind = #vector.kind<maxsi>} : vector<8xi16>, vector<8xi16>
          %301 = arith.mulf %cst_5, %cst_2 : f16
          %302 = math.fpowi %11, %98 : tensor<3xf32>, tensor<3xi32>
          %303 = arith.remf %cst, %cst_3 : f16
          %304 = arith.minsi %false_56, %false : i1
          %305 = bufferization.to_tensor %alloc_20 : memref<1x1xi1>
          %306 = vector.broadcast %cst_3 : f16 to vector<3x10xf16>
          %dest_58, %accumulated_value_59 = vector.scan <maxf>, %276, %306 {inclusive = true, reduction_dim = 2 : i64} : vector<3x10x1xf16>, vector<3x10xf16>
          %307 = arith.ori %in, %in : i64
          %alloca_60 = memref.alloca() : memref<3xi1>
          %308 = arith.shli %false, %false_56 : i1
          %false_61 = arith.constant false
          %309 = vector.transfer_read %alloc_20[%c12, %rank_25], %false_61 : memref<1x1xi1>, vector<8xi1>
          %310 = vector.broadcast %c3 : index to vector<1xindex>
          %311 = vector.broadcast %false_6 : i1 to vector<1xi1>
          vector.scatter %alloc_20[%c0, %c0] [%310], %311, %311 : memref<1x1xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
          %312 = math.log %2 : tensor<1x1xf16>
          %313 = arith.maxui %c0_i32, %c0_i32 : i32
          %alloc_62 = memref.alloc() : memref<3x10x1xi64>
          %314 = arith.maxsi %c12206_i16, %c12206_i16 : i16
          %alloca_63 = memref.alloca() : memref<1x1xi16>
          %315 = arith.minsi %false_6, %false_6 : i1
          %316 = index.divs %c8, %41
          %317 = bufferization.to_tensor %alloc_15 : memref<1x1xi64>
          %318 = vector.splat %316 : vector<1x8xindex>
          %319 = arith.minsi %c914149453_i64, %c1559395282_i64 : i64
          %320 = vector.load %alloc_19[%c1] : memref<3xf16>, vector<1x1xf16>
          %321 = bufferization.clone %alloc_9 : memref<3xi16> to memref<3xi16>
          %322 = arith.remui %false_61, %false_61 : i1
          %323 = math.absi %transposed : tensor<1x1xi1>
          %expanded_64 = tensor.expand_shape %5 [[0], [1], [2, 3]] : tensor<3x10x1xi32> into tensor<3x10x1x1xi32>
          %324 = arith.minsi %c15988_i16, %c15988_i16 : i16
          %alloc_65 = memref.alloc() : memref<8x10xi32>
          %325 = tensor.empty() : tensor<1x10xi32>
          %326 = linalg.matmul ins(%37, %alloc_65 : tensor<1x8xi32>, memref<8x10xi32>) outs(%325 : tensor<1x10xi32>) -> tensor<1x10xi32>
          %327 = arith.subi %c12206_i16, %c12206_i16 : i16
          %328 = arith.ceildivsi %false_56, %false : i1
          %329 = arith.negf %cst_0 : f32
          memref.alloca_scope.return %cst_5 : f16
        }
        %284 = vector.broadcast %283 : f16 to vector<f16>
        vector.transfer_write %284, %alloc_23[%c12] : vector<f16>, memref<1xf16>
        %285 = vector.broadcast %c-8649_i16 : i16 to vector<3x3xi16>
        %286 = vector.outerproduct %73, %73, %285 {kind = #vector.kind<or>} : vector<3xi16>, vector<3xi16>
        %alloca_57 = memref.alloca() : memref<3xf16>
        %287 = math.exp %3 : tensor<3xf16>
        %288 = arith.ori %in, %in : i64
        %289 = index.sizeof
        %290 = scf.execute_region -> f16 {
          %collapsed_58 = tensor.collapse_shape %108 [[0, 1], [2]] : tensor<3x10x1xi64> into tensor<30x1xi64>
          vector.print %39 : vector<3xi1>
          %299 = math.atan %2 : tensor<1x1xf16>
          %300 = math.roundeven %cst_3 : f16
          %301 = arith.subi %c1559395282_i64, %c1559395282_i64 : i64
          bufferization.dealloc_tensor %1 : tensor<3xi1>
          %302 = math.copysign %cst_0, %cst_1 : f32
          %303 = math.round %cst_0 : f32
          %alloc_59 = memref.alloc() : memref<8x1xi1>
          %304 = tensor.empty() : tensor<1x1xi1>
          %305 = linalg.matmul ins(%0, %alloc_59 : tensor<1x8xi1>, memref<8x1xi1>) outs(%304 : tensor<1x1xi1>) -> tensor<1x1xi1>
          %306 = math.powf %11, %11 : tensor<3xf32>
          %307 = vector.flat_transpose %71 {columns = 4 : i32, rows = 2 : i32} : vector<8xi16> -> vector<8xi16>
          %308 = arith.subi %c15988_i16, %c-8649_i16 : i16
          %309 = index.maxs %c1, %c6
          %310 = math.log %2 : tensor<1x1xf16>
          %311 = arith.remui %c1559395282_i64, %c1559395282_i64 : i64
          %312 = math.fpowi %cst_2, %c0_i32 : f16, i32
          scf.yield %283 : f16
        }
        %291 = arith.divui %false, %false : i1
        %292 = arith.xori %c4250_i16, %c4250_i16 : i16
        %293 = arith.mulf %cst_3, %290 : f16
        %294 = arith.ceildivsi %false, %false_6 : i1
        %295 = vector.broadcast %c0_i32 : i32 to vector<1x1xi32>
        %296 = vector.outerproduct %99, %99, %295 {kind = #vector.kind<and>} : vector<1xi32>, vector<1xi32>
        %297 = arith.remf %cst_2, %cst_2 : f16
        %298 = arith.remf %cst_7, %cst_4 : f32
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %125 = math.exp2 %11 : tensor<3xf32>
    %126 = arith.cmpi sle, %false_6, %false : i1
    %alloc_36 = memref.alloc() : memref<3xi64>
    %127 = arith.maxf %cst_7, %cst_7 : f32
    %from_elements_37 = tensor.from_elements %cst_0, %cst_0, %cst_4 : tensor<3xf32>
    %128 = bufferization.to_tensor %alloc_13 : memref<1x1xf32>
    %129 = math.roundeven %128 : tensor<1x1xf32>
    %130 = index.divs %c14, %c6
    %131 = math.log2 %cst_7 : f32
    %132 = arith.shli %c1559395282_i64, %c1559395282_i64 : i64
    %133 = arith.remui %c12206_i16, %c-8649_i16 : i16
    %134 = index.sizeof
    %cast_38 = tensor.cast %1 : tensor<3xi1> to tensor<?xi1>
    %135 = arith.floordivsi %c15988_i16, %c12206_i16 : i16
    %136 = vector.broadcast %cst_7 : f32 to vector<1xf32>
    %137 = vector.transfer_write %136, %65[%c7, %122] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xf32>, tensor<1x1xf32>
    %generated_39 = tensor.generate %c8 {
    ^bb0(%arg3: index):
      %generated_56 = tensor.generate %c3 {
      ^bb0(%arg4: index, %arg5: index):
        %270 = math.log %128 : tensor<1x1xf32>
        %271 = arith.xori %84, %c-8649_i16 : i16
        %272 = math.expm1 %cst_0 : f32
        %273 = math.cttz %9 : tensor<3x10x1xi32>
        tensor.yield %false : i1
      } : tensor<?x1xi1>
      memref.store %c0_i32, %alloc_22[%c2] : memref<3xi32>
      %rank_57 = tensor.rank %4 : tensor<1x1xi32>
      %269 = math.fma %cst, %cst_2, %cst_5 : f16
      tensor.yield %cst_1 : f32
    } : tensor<?xf32>
    %138 = arith.shrui %c4250_i16, %c-8649_i16 : i16
    %139 = arith.ori %c-8649_i16, %c15988_i16 : i16
    %140 = vector.broadcast %cst_5 : f16 to vector<10x1xf16>
    %141 = vector.broadcast %cst_2 : f16 to vector<1xf16>
    %dest_40, %accumulated_value_41 = vector.scan <maxf>, %140, %141 {inclusive = false, reduction_dim = 0 : i64} : vector<10x1xf16>, vector<1xf16>
    %142 = math.cttz %c15988_i16 : i16
    %143 = memref.load %alloc[%c0, %c0] : memref<1x8xi64>
    %144 = arith.maxui %c-8649_i16, %c12206_i16 : i16
    %145 = vector.broadcast %cst_1 : f32 to vector<1x1xf32>
    %146 = math.ctlz %7 : tensor<1x8xi32>
    %147 = arith.floordivsi %c1559395282_i64, %c1559395282_i64 : i64
    %148 = math.copysign %cst, %cst_2 : f16
    %149 = arith.maxsi %c0_i32, %c0_i32 : i32
    %150 = vector.broadcast %c0_i32 : i32 to vector<1x1xi32>
    %151 = vector.outerproduct %70, %20, %150 {kind = #vector.kind<add>} : vector<1xi32>, vector<1xi32>
    %152 = bufferization.clone %alloc_24 : memref<3xi1> to memref<3xi1>
    %153 = index.ceildivs %c13, %113
    %154 = math.cos %cst_0 : f32
    %155 = vector.multi_reduction <add>, %73, %c15988_i16 [0] : vector<3xi16> to i16
    %156 = arith.addi %c15988_i16, %c4250_i16 : i16
    %157 = math.absf %cst_4 : f32
    %158 = math.log2 %15 : tensor<3xf16>
    %159 = vector.create_mask %c5 : vector<3xi1>
    %from_elements_42 = tensor.from_elements %c4250_i16, %155, %84, %c-8649_i16, %155, %84, %c-8649_i16, %c-8649_i16 : tensor<1x8xi16>
    %generated_43 = tensor.generate %c7 {
    ^bb0(%arg3: index):
      %269 = math.atan2 %15, %15 : tensor<3xf16>
      %270 = arith.divui %84, %c-8649_i16 : i16
      %cast_56 = tensor.cast %15 : tensor<3xf16> to tensor<?xf16>
      %271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_21, %14 : memref<3xi16>, tensor<3xi16>) outs(%13 : tensor<3x10x1xi16>) {
      ^bb0(%in: i16, %in_57: i16, %out: i16):
        %272 = bufferization.to_memref %2 : memref<1x1xf16>
        %273 = index.ceildivs %c13, %rank_25
        %274 = math.round %cst_5 : f16
        %275 = arith.cmpi ugt, %c15988_i16, %84 : i16
        %276 = arith.maxui %84, %c12206_i16 : i16
        %277 = math.round %3 : tensor<3xf16>
        %278 = math.copysign %cst_2, %cst : f16
        %279 = bufferization.clone %alloc_11 : memref<3x10x1xi64> to memref<3x10x1xi64>
        %280 = math.log %3 : tensor<3xf16>
        %rank_58 = tensor.rank %7 : tensor<1x8xi32>
        %extracted = tensor.extract %3[%c0] : tensor<3xf16>
        %281 = arith.minsi %c914149453_i64, %c914149453_i64 : i64
        %282 = vector.broadcast %c13 : index to vector<1xindex>
        %283 = vector.broadcast %false : i1 to vector<1xi1>
        vector.scatter %alloc_22[%c0] [%282], %283, %20 : memref<3xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
        %284 = tensor.empty() : tensor<1x1xi32>
        %285 = vector.broadcast %c0_i32 : i32 to vector<1x1xi32>
        %286 = vector.outerproduct %20, %70, %285 {kind = #vector.kind<or>} : vector<1xi32>, vector<1xi32>
        %c1_i16 = arith.constant 1 : i16
        %287 = vector.transfer_read %14[%rank_58], %c1_i16 : tensor<3xi16>, vector<i16>
        %dest_59, %accumulated_value_60 = vector.scan <add>, %145, %136 {inclusive = true, reduction_dim = 1 : i64} : vector<1x1xf32>, vector<1xf32>
        %288 = vector.extract_strided_slice %70 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
        memref.assume_alignment %alloc_22, 1 : memref<3xi32>
        %289 = math.atan %128 : tensor<1x1xf32>
        %290 = arith.cmpi slt, %c0_i32, %c0_i32 : i32
        %291 = math.tanh %cst_5 : f16
        %292 = vector.broadcast %c0_i32 : i32 to vector<3xi32>
        %293 = vector.transfer_write %292, %5[%arg3, %c1, %c1] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<3xi32>, tensor<3x10x1xi32>
        %294 = math.copysign %65, %128 : tensor<1x1xf32>
        %295 = math.absf %11 : tensor<3xf32>
        %rank_61 = tensor.rank %7 : tensor<1x8xi32>
        %296 = vector.broadcast %122 : index to vector<3xindex>
        %297 = vector.broadcast %cst_7 : f32 to vector<3xf32>
        vector.scatter %alloc_8[%c0, %c0] [%296], %159, %297 : memref<1x1xf32>, vector<3xindex>, vector<3xi1>, vector<3xf32>
        %298 = arith.andi %in, %c1_i16 : i16
        %299 = vector.transpose %70, [0] : vector<1xi32> to vector<1xi32>
        %300 = arith.maxsi %c1559395282_i64, %c1559395282_i64 : i64
        %301 = tensor.empty() : tensor<1x1xi64>
        %302 = index.castu %false_6 : i1 to index
        linalg.yield %155 : i16
      } -> tensor<3x10x1xi16>
      tensor.yield %false_6 : i1
    } : tensor<?xi1>
    %160 = arith.floordivsi %false_6, %false_6 : i1
    %expanded = tensor.expand_shape %4 [[0], [1, 2]] : tensor<1x1xi32> into tensor<1x1x1xi32>
    %161 = arith.ori %false_6, %false_6 : i1
    scf.if %false {
      %269 = math.log %3 : tensor<3xf16>
      %alloc_56 = memref.alloc() : memref<10x1xi32>
      %270 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_56 : memref<10x1xi32>) outs(%9 : tensor<3x10x1xi32>) {
      ^bb0(%in: i32, %out: i32):
        %277 = index.castu %c914149453_i64 : i64 to index
        %278 = bufferization.clone %152 : memref<3xi1> to memref<3xi1>
        %279 = math.absf %11 : tensor<3xf32>
        %280 = arith.xori %c-8649_i16, %c-8649_i16 : i16
        %281 = math.log1p %2 : tensor<1x1xf16>
        %282 = vector.multi_reduction <maxui>, %99, %c0_i32 [0] : vector<1xi32> to i32
        %alloc_58 = memref.alloc() : memref<1x8xi16>
        %283 = index.sizeof
        %284 = vector.extract_strided_slice %71 {offsets = [1], sizes = [3], strides = [1]} : vector<8xi16> to vector<3xi16>
        %285 = index.mul %76, %153
        %286 = arith.shrui %c12206_i16, %155 : i16
        %287 = arith.minsi %c1559395282_i64, %c1559395282_i64 : i64
        %288 = index.sizeof
        %289 = arith.negf %cst_2 : f16
        %290 = affine.min affine_map<(d0, d1) -> (d1 + 4)>(%c3, %76)
        %291 = vector.create_mask %113, %c0 : vector<1x1xi1>
        %292 = math.cos %3 : tensor<3xf16>
        %293 = vector.flat_transpose %284 {columns = 3 : i32, rows = 1 : i32} : vector<3xi16> -> vector<3xi16>
        %294 = arith.remf %cst_1, %cst_4 : f32
        %295 = arith.shrui %c4250_i16, %155 : i16
        %296 = vector.extract_strided_slice %284 {offsets = [1], sizes = [2], strides = [1]} : vector<3xi16> to vector<2xi16>
        %297 = arith.ceildivsi %84, %84 : i16
        %298 = math.round %cst : f16
        %inserted_59 = tensor.insert %282 into %5[%c2, %c4, %c0] : tensor<3x10x1xi32>
        %299 = memref.load %alloc_16[%c2] : memref<3xi32>
        %300 = arith.ceildivsi %false_6, %false_6 : i1
        %301 = index.mul %c11, %c13
        %302 = math.log %cst : f16
        %303 = math.copysign %cst_2, %cst_5 : f16
        %304 = arith.addi %c12206_i16, %c-8649_i16 : i16
        %305 = math.floor %128 : tensor<1x1xf32>
        %306 = math.tanh %11 : tensor<3xf32>
        linalg.yield %out : i32
      } -> tensor<3x10x1xi32>
      %271 = index.sizeof
      %alloc_57 = memref.alloc() : memref<3x10x1xi32>
      memref.tensor_store %9, %alloc_57 : memref<3x10x1xi32>
      %272 = arith.divui %c0_i32, %c0_i32 : i32
      %273 = arith.minui %84, %c4250_i16 : i16
      %274 = math.expm1 %cst_4 : f32
      %275 = vector.broadcast %cst_4 : f32 to vector<3x10x1xf32>
      %276 = vector.fma %275, %275, %275 : vector<3x10x1xf32>
    } else {
      %269 = vector.bitcast %20 : vector<1xi32> to vector<1xf32>
      %270 = arith.shli %84, %155 : i16
      scf.execute_region {
        %276 = arith.shli %155, %c4250_i16 : i16
        %277 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %71, %71, %c12206_i16 : vector<8xi16>, vector<8xi16> into i16
        %278 = index.maxu %106, %76
        %279 = arith.minui %false_6, %false_6 : i1
        %280 = arith.shli %84, %c15988_i16 : i16
        %281 = arith.floordivsi %c914149453_i64, %c914149453_i64 : i64
        %282 = arith.minui %84, %84 : i16
        %283 = math.copysign %from_elements_37, %11 : tensor<3xf32>
        %284 = vector.load %86[%c0, %c7, %c0] : memref<3x10x1xi64>, vector<3xi64>
        %285 = arith.mulf %cst_5, %cst_3 : f16
        %286 = vector.reduction <add>, %269 : vector<1xf32> into f32
        %extracted = tensor.extract %31[%c1, %c7, %c0] : tensor<3x10x1xi64>
        %287 = vector.outerproduct %136, %136, %145 {kind = #vector.kind<add>} : vector<1xf32>, vector<1xf32>
        %288 = vector.broadcast %c15988_i16 : i16 to vector<1x1xi16>
        %289 = vector.broadcast %false : i1 to vector<1x1xi1>
        %290 = vector.broadcast %c0_i32 : i32 to vector<1x1xi32>
        %291 = vector.gather %14[%c13] [%290], %289, %288 : tensor<3xi16>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xi16> into vector<1x1xi16>
        %292 = vector.load %alloc_21[%c2] : memref<3xi16>, vector<3xi16>
        %293 = arith.divui %155, %c15988_i16 : i16
        scf.yield
      }
      %271 = arith.remf %cst_0, %cst_1 : f32
      %272 = math.log %128 : tensor<1x1xf32>
      %273 = scf.execute_region -> f16 {
        %276 = vector.transpose %73, [0] : vector<3xi16> to vector<3xi16>
        %277 = math.cttz %5 : tensor<3x10x1xi32>
        %278 = math.floor %cst_0 : f32
        %279 = math.tanh %cst_4 : f32
        %280 = math.cttz %108 : tensor<3x10x1xi64>
        %281 = index.maxs %c15, %122
        %282 = vector.broadcast %c0_i32 : i32 to vector<1x1xi32>
        %283 = vector.outerproduct %80, %99, %282 {kind = #vector.kind<mul>} : vector<1xi32>, vector<1xi32>
        %284 = index.maxs %41, %130
        %285 = index.maxs %c7, %41
        %286 = index.ceildivs %c4, %c12
        %287 = vector.load %alloc_13[%c0, %c0] : memref<1x1xf32>, vector<1x8xf32>
        %alloc_56 = memref.alloc() : memref<8x1xi32>
        %288 = tensor.empty() : tensor<1x1xi32>
        %289 = linalg.matmul ins(%37, %alloc_56 : tensor<1x8xi32>, memref<8x1xi32>) outs(%288 : tensor<1x1xi32>) -> tensor<1x1xi32>
        %290 = index.divs %113, %41
        %291 = arith.andi %155, %c12206_i16 : i16
        %292 = math.log1p %cst : f16
        %293 = arith.mulf %cst_5, %cst : f16
        scf.yield %cst_3 : f16
      }
      %274 = math.exp %cst_4 : f32
      %275 = math.log %3 : tensor<3xf16>
    }
    %162 = math.round %cst_7 : f32
    %163 = memref.load %alloc_21[%c0] : memref<3xi16>
    %164 = arith.remf %cst_3, %cst_2 : f16
    %165 = math.absf %3 : tensor<3xf16>
    %166 = tensor.empty() : tensor<1x1xf16>
    %167 = linalg.matmul ins(%2, %2 : tensor<1x1xf16>, tensor<1x1xf16>) outs(%166 : tensor<1x1xf16>) -> tensor<1x1xf16>
    %168 = memref.alloca_scope  -> (memref<3x10x1xf16>) {
      %cast_56 = tensor.cast %1 : tensor<3xi1> to tensor<?xi1>
      %269 = vector.extract_strided_slice %39 {offsets = [1], sizes = [2], strides = [1]} : vector<3xi1> to vector<2xi1>
      %270 = index.sizeof
      %true = arith.constant true
      %271 = vector.transfer_read %16[%122], %true : tensor<3xi1>, vector<i1>
      %272 = arith.shrui %c1559395282_i64, %c914149453_i64 : i64
      %273 = vector.multi_reduction <or>, %80, %c0_i32 [0] : vector<1xi32> to i32
      affine.store %84, %alloc_14[%c11, %c13] : memref<1x1xi16>
      %274 = vector.broadcast %cst : f16 to vector<1x1xf16>
      %275 = tensor.empty() : tensor<8x1xi32>
      %276 = tensor.empty() : tensor<1x1xi32>
      %277 = linalg.matmul ins(%7, %275 : tensor<1x8xi32>, tensor<8x1xi32>) outs(%276 : tensor<1x1xi32>) -> tensor<1x1xi32>
      %278 = arith.addi %c4250_i16, %c-8649_i16 : i16
      %279 = arith.remsi %c-8649_i16, %c12206_i16 : i16
      %c551459042_i32 = arith.constant 551459042 : i32
      %280 = arith.cmpi sle, %84, %c15988_i16 : i16
      %281 = vector.broadcast %130 : index to vector<1xindex>
      %282 = vector.broadcast %false_6 : i1 to vector<1xi1>
      %283 = vector.broadcast %c15988_i16 : i16 to vector<1xi16>
      vector.scatter %alloc_21[%c0] [%281], %282, %283 : memref<3xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
      %dest_57, %accumulated_value_58 = vector.scan <mul>, %145, %136 {inclusive = false, reduction_dim = 0 : i64} : vector<1x1xf32>, vector<1xf32>
      %284 = arith.remf %cst_1, %cst_0 : f32
      %285 = math.ctlz %from_elements_42 : tensor<1x8xi16>
      %286 = arith.maxf %cst_0, %cst_7 : f32
      %287 = index.mul %c4, %rank
      %288 = vector.create_mask %287 : vector<3xi1>
      %289 = arith.negf %cst_5 : f16
      %alloca_59 = memref.alloca() : memref<3xi16>
      %290 = math.fma %128, %128, %65 : tensor<1x1xf32>
      %extracted = tensor.extract %8[%c0, %c0] : tensor<1x1xi64>
      %291 = math.cos %15 : tensor<3xf16>
      %292 = tensor.empty() : tensor<1x1xi64>
      %293 = linalg.matmul ins(%8, %8 : tensor<1x1xi64>, tensor<1x1xi64>) outs(%292 : tensor<1x1xi64>) -> tensor<1x1xi64>
      %294 = vector.reduction <mul>, %136 : vector<1xf32> into f32
      %295 = index.sub %153, %134
      %296 = math.exp2 %11 : tensor<3xf32>
      %297 = math.powf %2, %2 : tensor<1x1xf16>
      %298 = arith.minsi %c914149453_i64, %c914149453_i64 : i64
      %299 = math.cttz %9 : tensor<3x10x1xi32>
      %alloc_60 = memref.alloc() : memref<3x10x1xf16>
      memref.alloca_scope.return %alloc_60 : memref<3x10x1xf16>
    }
    %169 = math.tanh %128 : tensor<1x1xf32>
    %170 = vector.flat_transpose %136 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
    %171 = index.divs %c2, %c5
    %172 = math.ceil %166 : tensor<1x1xf16>
    %173 = index.mul %c13, %c0
    %174 = arith.cmpi ule, %c15988_i16, %84 : i16
    %175 = math.tan %15 : tensor<3xf16>
    %176 = math.tanh %15 : tensor<3xf16>
    %177 = index.casts %c9 : index to i32
    %alloca_44 = memref.alloca() : memref<3xi64>
    %178 = arith.floordivsi %false_6, %false_6 : i1
    %179 = math.log10 %128 : tensor<1x1xf32>
    %180 = math.atan %128 : tensor<1x1xf32>
    %181 = arith.remsi %84, %84 : i16
    %collapsed = tensor.collapse_shape %65 [[0, 1]] : tensor<1x1xf32> into tensor<1xf32>
    %182 = vector.extract_strided_slice %71 {offsets = [3], sizes = [3], strides = [1]} : vector<8xi16> to vector<3xi16>
    %183 = arith.minsi %false_6, %false_6 : i1
    %184 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %70, %70, %c0_i32 : vector<1xi32>, vector<1xi32> into i32
    %185 = scf.if %false_6 -> (memref<3x10x1xi1>) {
      %269 = math.sqrt %from_elements_37 : tensor<3xf32>
      %270 = vector.insertelement %c0_i32, %70[%113 : index] : vector<1xi32>
      %271 = arith.addi %84, %84 : i16
      %272 = affine.if affine_set<(d0, d1, d2, d3) : ((d2 - d3 - 128) * 2 - d1 mod 64 >= 0, d1 mod 64 - 16 >= 0)>(%c10, %c7, %c0, %c11) -> i32 {
        %279 = index.ceildivu %c12, %c5
        %280 = arith.shrui %false, %false : i1
        %281 = vector.insert %false, %159 [2] : i1 into vector<3xi1>
        %alloc_57 = memref.alloc() : memref<1x8xf16>
        %282 = arith.remsi %false_6, %false : i1
        %283 = arith.minui %false, %false_6 : i1
        %284 = vector.broadcast %rank : index to vector<10xindex>
        %285 = vector.broadcast %false : i1 to vector<10xi1>
        %286 = vector.broadcast %c12206_i16 : i16 to vector<10xi16>
        vector.scatter %alloc_14[%c0, %c0] [%284], %285, %286 : memref<1x1xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
        %collapsed_58 = tensor.collapse_shape %37 [[0, 1]] : tensor<1x8xi32> into tensor<8xi32>
        affine.yield %c0_i32 : i32
      } else {
        %cast_57 = tensor.cast %9 : tensor<3x10x1xi32> to tensor<?x?x?xi32>
        %279 = vector.broadcast %cst_2 : f16 to vector<1x8xf16>
        %280 = vector.broadcast %false_6 : i1 to vector<1x8xi1>
        %281 = vector.broadcast %c0_i32 : i32 to vector<1x8xi32>
        %282 = vector.gather %168[%134, %c10, %41] [%281], %280, %279 : memref<3x10x1xf16>, vector<1x8xi32>, vector<1x8xi1>, vector<1x8xf16> into vector<1x8xf16>
        %283 = arith.addi %c4250_i16, %c12206_i16 : i16
        %284 = arith.floordivsi %c4250_i16, %c4250_i16 : i16
        %285 = math.cttz %21 : tensor<i1>
        %286 = arith.mulf %cst_7, %cst_7 : f32
        %287 = tensor.empty() : tensor<1x1xf16>
        %288 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %182, %73, %84 : vector<3xi16>, vector<3xi16> into i16
        affine.yield %c0_i32 : i32
      }
      %273 = arith.remf %cst_1, %cst_4 : f32
      %274 = vector.reduction <add>, %99 : vector<1xi32> into i32
      %275 = arith.divui %c-8649_i16, %c4250_i16 : i16
      %276 = vector.broadcast %c1 : index to vector<1xindex>
      %277 = vector.broadcast %false : i1 to vector<1xi1>
      %278 = vector.broadcast %c914149453_i64 : i64 to vector<1xi64>
      vector.scatter %86[%c2, %c1, %c0] [%276], %277, %278 : memref<3x10x1xi64>, vector<1xindex>, vector<1xi1>, vector<1xi64>
      %alloc_56 = memref.alloc() : memref<3x10x1xi1>
      scf.yield %alloc_56 : memref<3x10x1xi1>
    } else {
      vector.print %39 : vector<3xi1>
      %269 = vector.broadcast %84 : i16 to vector<1x1xi16>
      %270 = memref.load %alloc_14[%c0, %c0] : memref<1x1xi16>
      %271 = math.cttz %16 : tensor<3xi1>
      %272 = math.expm1 %cst_0 : f32
      %273 = math.cos %3 : tensor<3xf16>
      %274 = arith.shli %false, %false : i1
      %275 = index.maxs %c7, %c15
      %alloc_56 = memref.alloc() : memref<3x10x1xi1>
      scf.yield %alloc_56 : memref<3x10x1xi1>
    }
    %186 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %70, %20, %c0_i32 : vector<1xi32>, vector<1xi32> into i32
    %187 = index.maxs %c9, %c9
    %188 = math.log1p %cst_0 : f32
    %189 = arith.remsi %c4250_i16, %155 : i16
    %190 = affine.min affine_map<(d0, d1) -> (d0)>(%122, %c3)
    %191 = bufferization.to_tensor %alloc_15 : memref<1x1xi64>
    %dest_45, %accumulated_value_46 = vector.scan <minf>, %145, %136 {inclusive = false, reduction_dim = 1 : i64} : vector<1x1xf32>, vector<1xf32>
    %192 = tensor.empty() : tensor<8x1xi1>
    %193 = tensor.empty() : tensor<1x1xi1>
    %194 = linalg.matmul ins(%109, %192 : tensor<1x8xi1>, tensor<8x1xi1>) outs(%193 : tensor<1x1xi1>) -> tensor<1x1xi1>
    %195 = tensor.empty(%c15) : tensor<?x8xi32>
    %196 = memref.alloca_scope  -> (f32) {
      %c18565_i16 = arith.constant 18565 : i16
      memref.alloca_scope  {
        %304 = memref.load %alloc_18[%c0, %c0] : memref<1x1xf32>
        %305 = tensor.empty() : tensor<3xi16>
        %306 = arith.ori %false, %false_6 : i1
        %307 = tensor.empty() : tensor<8x8xi16>
        %308 = tensor.empty() : tensor<1x8xi16>
        %309 = linalg.matmul ins(%from_elements_42, %307 : tensor<1x8xi16>, tensor<8x8xi16>) outs(%308 : tensor<1x8xi16>) -> tensor<1x8xi16>
        %310 = math.ctlz %9 : tensor<3x10x1xi32>
        %311 = math.expm1 %cst_2 : f16
        %312 = math.round %2 : tensor<1x1xf16>
        %313 = tensor.empty() : tensor<8x8xi32>
        %314 = tensor.empty() : tensor<1x8xi32>
        %315 = linalg.matmul ins(%7, %313 : tensor<1x8xi32>, tensor<8x8xi32>) outs(%314 : tensor<1x8xi32>) -> tensor<1x8xi32>
        %316 = index.casts %c4 : index to i32
        %317 = math.atan %cst_1 : f32
        %318 = math.round %cst_5 : f16
        %319 = bufferization.to_tensor %alloc_18 : memref<1x1xf32>
        %320 = bufferization.clone %alloc_9 : memref<3xi16> to memref<3xi16>
        %extracted = tensor.extract %308[%c0, %c1] : tensor<1x8xi16>
        %321 = index.mul %c8, %c15
        %322 = math.log1p %2 : tensor<1x1xf16>
        %323 = index.mul %134, %171
        %324 = vector.broadcast %155 : i16 to vector<3x3xi16>
        %325 = vector.outerproduct %182, %182, %324 {kind = #vector.kind<maxsi>} : vector<3xi16>, vector<3xi16>
        %326 = arith.shrsi %extracted, %c12206_i16 : i16
        %327 = math.floor %128 : tensor<1x1xf32>
        %328 = arith.minsi %84, %c15988_i16 : i16
        %329 = memref.load %alloc_9[%c2] : memref<3xi16>
        vector.print %136 : vector<1xf32>
        %330 = tensor.empty() : tensor<3x10x1xi1>
        %331 = vector.broadcast %false : i1 to vector<3x10x1xi1>
        %332 = vector.broadcast %c0_i32 : i32 to vector<3x10x1xi32>
        %333 = vector.gather %330[%173, %c12, %171] [%332], %331, %331 : tensor<3x10x1xi1>, vector<3x10x1xi32>, vector<3x10x1xi1>, vector<3x10x1xi1> into vector<3x10x1xi1>
        %334 = math.cos %3 : tensor<3xf16>
        %335 = arith.andi %false_6, %false_6 : i1
        memref.store %false_6, %alloc_17[%c0, %c0] : memref<1x8xi1>
        %336 = arith.shrui %c15988_i16, %c-8649_i16 : i16
        %337 = index.add %41, %41
        %338 = arith.maxui %false_6, %false_6 : i1
        %339 = vector.broadcast %84 : i16 to vector<i16>
        %340 = vector.transfer_write %339, %14[%c5] : vector<i16>, tensor<3xi16>
        %341 = arith.cmpf uge, %cst, %cst_3 : f16
      }
      %269 = math.absf %cst_0 : f32
      %270 = arith.ceildivsi %84, %c15988_i16 : i16
      %271 = vector.transpose %73, [0] : vector<3xi16> to vector<3xi16>
      %cst_56 = arith.constant 1.000000e+00 : f32
      %272 = vector.transfer_read %collapsed[%187], %cst_56 : tensor<1xf32>, vector<f32>
      %273 = tensor.empty() : tensor<3x10x1xi64>
      %274 = math.copysign %collapsed, %collapsed : tensor<1xf32>
      %275 = vector.broadcast %cst_56 : f32 to vector<f32>
      %276 = vector.transfer_write %275, %11[%122] : vector<f32>, tensor<3xf32>
      %277 = arith.muli %c15988_i16, %c-8649_i16 : i16
      %278 = math.exp2 %cst_4 : f32
      %279 = vector.broadcast %76 : index to vector<1xindex>
      %280 = vector.broadcast %false_6 : i1 to vector<1xi1>
      %281 = vector.broadcast %c12206_i16 : i16 to vector<1xi16>
      vector.scatter %alloc_9[%c2] [%279], %280, %281 : memref<3xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
      %282 = arith.ceildivsi %c1559395282_i64, %c1559395282_i64 : i64
      %283 = math.ceil %65 : tensor<1x1xf32>
      %284 = vector.broadcast %155 : i16 to vector<i16>
      vector.transfer_write %284, %alloc_21[%122] : vector<i16>, memref<3xi16>
      %285 = scf.execute_region -> index {
        %304 = math.powf %collapsed, %collapsed : tensor<1xf32>
        %alloca_58 = memref.alloca() : memref<1x8xf16>
        %extracted = tensor.extract %cast_38[%c0] : tensor<?xi1>
        %305 = arith.remsi %extracted, %false_6 : i1
        %306 = arith.minsi %false, %false_6 : i1
        %307 = arith.maxsi %c15988_i16, %c4250_i16 : i16
        %308 = arith.shrui %extracted, %false_6 : i1
        %309 = arith.addf %cst, %cst_2 : f16
        %310 = arith.andi %c12206_i16, %c4250_i16 : i16
        %311 = index.castu %c1559395282_i64 : i64 to index
        %312 = index.sub %c11, %c14
        %alloc_59 = memref.alloc() : memref<1x1xi64>
        %false_60 = arith.constant false
        %false_61 = arith.constant false
        %313 = vector.transfer_read %0[%rank_25, %173], %false_61 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<1x8xi1>, vector<10xi1>
        %314 = arith.remui %extracted, %false : i1
        %315 = index.sizeof
        %316 = arith.negf %cst_56 : f32
        scf.yield %c11 : index
      }
      %286 = math.log %cst_4 : f32
      %287 = vector.broadcast %false : i1 to vector<1x8xi1>
      %288 = vector.broadcast %c0_i32 : i32 to vector<1x8xi32>
      %289 = vector.gather %152[%c2] [%288], %287, %287 : memref<3xi1>, vector<1x8xi32>, vector<1x8xi1>, vector<1x8xi1> into vector<1x8xi1>
      %290 = math.tan %cst_1 : f32
      %291 = arith.shrui %c12206_i16, %c15988_i16 : i16
      %292 = math.ceil %cst : f16
      %293 = arith.negf %cst_5 : f16
      %294 = arith.shrsi %155, %c12206_i16 : i16
      %295 = math.ctlz %273 : tensor<3x10x1xi64>
      %296 = arith.maxsi %c12206_i16, %c15988_i16 : i16
      %297 = index.mul %134, %c14
      %298 = arith.cmpf ogt, %cst_56, %cst_56 : f32
      %299 = math.absi %14 : tensor<3xi16>
      %300 = arith.remf %cst_4, %cst_1 : f32
      %301 = index.sub %c7, %76
      %alloca_57 = memref.alloca() : memref<1x8xi1>
      %302 = vector.broadcast %c0_i32 : i32 to vector<1x1xi32>
      %303 = vector.outerproduct %99, %80, %302 {kind = #vector.kind<mul>} : vector<1xi32>, vector<1xi32>
      memref.alloca_scope.return %cst_56 : f32
    }
    memref.store %c914149453_i64, %alloc[%c0, %c4] : memref<1x8xi64>
    %collapsed_47 = tensor.collapse_shape %8 [[0, 1]] : tensor<1x1xi64> into tensor<1xi64>
    %197 = arith.maxui %155, %c-8649_i16 : i16
    %198 = bufferization.to_tensor %alloc_18 : memref<1x1xf32>
    %199 = arith.floordivsi %false, %false_6 : i1
    %inserted = tensor.insert %c914149453_i64 into %12[%c2, %c4, %c0] : tensor<3x10x1xi64>
    scf.index_switch %c13 
    case 1 {
      %269 = vector.transpose %182, [0] : vector<3xi16> to vector<3xi16>
      %270 = arith.remsi %c-8649_i16, %c4250_i16 : i16
      %271 = arith.shrui %c914149453_i64, %c914149453_i64 : i64
      %272 = arith.divf %cst, %cst : f16
      %c1671555751_i32 = arith.constant 1671555751 : i32
      %273 = math.fma %3, %3, %15 : tensor<3xf16>
      %splat = tensor.splat %c4250_i16 : tensor<1x1xi16>
      %alloca_56 = memref.alloca() : memref<1x1xf32>
      %274 = math.cos %65 : tensor<1x1xf32>
      %275 = arith.subi %84, %84 : i16
      %276 = vector.broadcast %rank_25 : index to vector<3xindex>
      %277 = vector.broadcast %cst_5 : f16 to vector<3xf16>
      vector.scatter %alloc_19[%c0] [%276], %39, %277 : memref<3xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
      %dest_57, %accumulated_value_58 = vector.scan <mul>, %145, %136 {inclusive = false, reduction_dim = 1 : i64} : vector<1x1xf32>, vector<1xf32>
      %278 = bufferization.clone %alloc_24 : memref<3xi1> to memref<3xi1>
      %279 = arith.addi %c0_i32, %c0_i32 : i32
      %280 = index.maxu %c9, %113
      %281 = affine.min affine_map<(d0, d1) -> (d0 + (d1 - 1) mod 64, -((d0 + (d1 - 1) mod 64) mod 32), d0, -(d1 floordiv 16))>(%153, %c2)
      scf.yield
    }
    case 2 {
      %dest_56, %accumulated_value_57 = vector.scan <mul>, %145, %170 {inclusive = true, reduction_dim = 0 : i64} : vector<1x1xf32>, vector<1xf32>
      %269 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %71, %71, %c-8649_i16 : vector<8xi16>, vector<8xi16> into i16
      %270 = math.round %65 : tensor<1x1xf32>
      %271 = tensor.empty(%c11) : tensor<?x8xi64>
      %272 = tensor.empty(%190) : tensor<1x?xi1>
      %273 = math.atan2 %11, %from_elements_37 : tensor<3xf32>
      %274 = arith.maxui %c4250_i16, %c12206_i16 : i16
      affine.store %c12206_i16, %alloc_9[%c1] : memref<3xi16>
      %275 = math.log %cst_4 : f32
      %276 = math.floor %15 : tensor<3xf16>
      %277 = bufferization.clone %alloc_17 : memref<1x8xi1> to memref<1x8xi1>
      %278 = math.roundeven %3 : tensor<3xf16>
      %dest_58, %accumulated_value_59 = vector.scan <minf>, %145, %170 {inclusive = false, reduction_dim = 0 : i64} : vector<1x1xf32>, vector<1xf32>
      %279 = arith.floordivsi %c1559395282_i64, %c1559395282_i64 : i64
      %280 = arith.subi %c1559395282_i64, %c1559395282_i64 : i64
      %281 = arith.divf %cst_4, %cst_0 : f32
      scf.yield
    }
    case 3 {
      %269 = math.log10 %cst_5 : f16
      %alloc_56 = memref.alloc() : memref<1x1xi32>
      %270 = vector.broadcast %c0_i32 : i32 to vector<3x10x1xi32>
      %271 = vector.broadcast %false : i1 to vector<3x10x1xi1>
      %272 = vector.gather %alloc_56[%c0, %c2] [%270], %271, %270 : memref<1x1xi32>, vector<3x10x1xi32>, vector<3x10x1xi1>, vector<3x10x1xi32> into vector<3x10x1xi32>
      %273 = memref.load %152[%c2] : memref<3xi1>
      %274 = math.round %collapsed : tensor<1xf32>
      %275 = arith.maxsi %c4250_i16, %c-8649_i16 : i16
      %276 = index.ceildivs %c12, %106
      %277 = bufferization.to_tensor %alloc_9 : memref<3xi16>
      %278 = math.cttz %from_elements_42 : tensor<1x8xi16>
      %279 = index.maxu %106, %c6
      %280 = index.mul %279, %c15
      %281 = math.absi %8 : tensor<1x1xi64>
      %282 = arith.divsi %c12206_i16, %c4250_i16 : i16
      %283 = vector.bitcast %99 : vector<1xi32> to vector<1xi32>
      %284 = index.floordivs %153, %c2
      %285 = scf.execute_region -> i1 {
        %287 = arith.shrui %c4250_i16, %c4250_i16 : i16
        %288 = math.tanh %166 : tensor<1x1xf16>
        %289 = math.sqrt %cst_7 : f32
        %290 = vector.shuffle %136, %170 [0] : vector<1xf32>, vector<1xf32>
        %291 = tensor.empty() : tensor<1x1xf16>
        %292 = linalg.matmul ins(%166, %2 : tensor<1x1xf16>, tensor<1x1xf16>) outs(%291 : tensor<1x1xf16>) -> tensor<1x1xf16>
        %293 = arith.floordivsi %155, %c-8649_i16 : i16
        %294 = math.log %3 : tensor<3xf16>
        %295 = vector.reduction <mul>, %170 : vector<1xf32> into f32
        %alloc_57 = memref.alloc() : memref<8x8xi32>
        %296 = tensor.empty() : tensor<1x8xi32>
        %297 = linalg.matmul ins(%37, %alloc_57 : tensor<1x8xi32>, memref<8x8xi32>) outs(%296 : tensor<1x8xi32>) -> tensor<1x8xi32>
        %298 = math.log1p %11 : tensor<3xf32>
        %299 = vector.broadcast %cst_4 : f32 to vector<f32>
        %300 = vector.transfer_write %299, %128[%134, %c9] : vector<f32>, tensor<1x1xf32>
        %301 = arith.cmpi sgt, %c914149453_i64, %c914149453_i64 : i64
        %302 = math.copysign %cst_7, %cst_0 : f32
        %303 = vector.broadcast %c0_i32 : i32 to vector<3x10xi32>
        %304 = vector.transfer_write %303, %9[%276, %173, %284] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<3x10xi32>, tensor<3x10x1xi32>
        %305 = arith.divui %c12206_i16, %155 : i16
        %cast_58 = tensor.cast %191 : tensor<1x1xi64> to tensor<?x?xi64>
        scf.yield %false : i1
      }
      %286 = math.rsqrt %3 : tensor<3xf16>
      scf.yield
    }
    default {
      %269 = vector.broadcast %cst_1 : f32 to vector<1x1xf32>
      %270 = vector.fma %269, %269, %145 : vector<1x1xf32>
      %271 = math.fpowi %cst_4, %c0_i32 : f32, i32
      %272 = vector.insertelement %c0_i32, %80[%130 : index] : vector<1xi32>
      %273 = arith.mulf %cst, %cst_2 : f16
      %274 = math.cttz %37 : tensor<1x8xi32>
      %275 = vector.insert %false, %159 [2] : i1 into vector<3xi1>
      %276 = arith.cmpi uge, %false_6, %false_6 : i1
      %277 = math.log2 %2 : tensor<1x1xf16>
      %cast_56 = tensor.cast %191 : tensor<1x1xi64> to tensor<?x?xi64>
      %278 = arith.ori %c4250_i16, %84 : i16
      %rank_57 = tensor.rank %128 : tensor<1x1xf32>
      %279 = math.tan %cst_3 : f16
      %280 = math.atan %15 : tensor<3xf16>
      %281 = math.absf %128 : tensor<1x1xf32>
      %true = arith.constant true
      %false_58 = arith.constant false
      %282 = vector.transfer_read %0[%rank, %rank_25], %false_58 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<1x8xi1>, vector<1xi1>
      %283 = arith.ceildivsi %c12206_i16, %84 : i16
    }
    %collapsed_48 = tensor.collapse_shape %191 [[0, 1]] : tensor<1x1xi64> into tensor<1xi64>
    %200 = vector.bitcast %73 : vector<3xi16> to vector<3xi16>
    %alloc_49 = memref.alloc() : memref<8x1xi32>
    %201 = tensor.empty() : tensor<1x1xi32>
    %202 = linalg.matmul ins(%7, %alloc_49 : tensor<1x8xi32>, memref<8x1xi32>) outs(%201 : tensor<1x1xi32>) -> tensor<1x1xi32>
    %generated_50 = tensor.generate %c1, %c4 {
    ^bb0(%arg3: index, %arg4: index):
      %269 = tensor.empty() : tensor<1x1xf16>
      %mapped_56 = linalg.map ins(%2, %166 : tensor<1x1xf16>, tensor<1x1xf16>) outs(%269 : tensor<1x1xf16>)
        (%in: f16, %in_58: f16) {
          %272 = arith.cmpf false, %cst_3, %in_58 : f16
          %273 = vector.broadcast %false : i1 to vector<1x1xi1>
          %274 = vector.broadcast %c0_i32 : i32 to vector<1x1xi32>
          %275 = vector.gather %from_elements_37[%c7] [%274], %273, %145 : tensor<3xf32>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xf32> into vector<1x1xf32>
          %276 = vector.create_mask %c9, %c3, %arg4 : vector<3x10x1xi1>
          %277 = arith.xori %155, %c15988_i16 : i16
          %278 = arith.maxf %cst_3, %cst : f16
          %c1_i32 = arith.constant 1 : i32
          %279 = vector.transfer_read %201[%c1, %c7], %c1_i32 : tensor<1x1xi32>, vector<i32>
          %280 = index.add %rank_25, %173
          %281 = tensor.empty() : tensor<3xf16>
          %282 = vector.load %alloc_10[%c0, %c4, %c0] : memref<3x10x1xi16>, vector<1x1xi16>
          %283 = arith.floordivsi %155, %c12206_i16 : i16
          %284 = arith.minsi %c15988_i16, %c15988_i16 : i16
          %285 = math.absf %196 : f32
          %splat = tensor.splat %cst_1 : tensor<1x8xf32>
          %286 = vector.broadcast %cst_7 : f32 to vector<1x8xf32>
          %287 = vector.broadcast %false_6 : i1 to vector<1x8xi1>
          %288 = vector.broadcast %c1_i32 : i32 to vector<1x8xi32>
          %289 = vector.gather %11[%41] [%288], %287, %286 : tensor<3xf32>, vector<1x8xi32>, vector<1x8xi1>, vector<1x8xf32> into vector<1x8xf32>
          %290 = index.add %c13, %130
          %291 = math.tanh %3 : tensor<3xf16>
          %292 = vector.extract_strided_slice %99 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
          %293 = vector.broadcast %cst_2 : f16 to vector<1x8xf16>
          %294 = arith.minsi %c914149453_i64, %c914149453_i64 : i64
          affine.store %196, %alloc_8[%c12, %c7] : memref<1x1xf32>
          %cast_59 = tensor.cast %4 : tensor<1x1xi32> to tensor<?x?xi32>
          %295 = math.ctlz %5 : tensor<3x10x1xi32>
          %296 = math.roundeven %2 : tensor<1x1xf16>
          %297 = math.floor %cst_4 : f32
          %298 = math.log1p %in_58 : f16
          %299 = arith.negf %cst_5 : f16
          %300 = vector.create_mask %122, %122 : vector<1x1xi1>
          %collapsed_60 = tensor.collapse_shape %37 [[0, 1]] : tensor<1x8xi32> into tensor<8xi32>
          %301 = bufferization.clone %alloc_24 : memref<3xi1> to memref<3xi1>
          %302 = vector.transpose %136, [0] : vector<1xf32> to vector<1xf32>
          %303 = arith.remsi %false_6, %false : i1
          %304 = index.casts %41 : index to i32
          %cst_61 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_61 : f16
        }
      %270 = vector.reduction <mul>, %200 : vector<3xi16> into i16
      %271 = math.absf %cst_2 : f16
      %rank_57 = tensor.rank %generated_39 : tensor<?xf32>
      tensor.yield %false_6 : i1
    } : tensor<?x?xi1>
    %203 = vector.insert %false_6, %159 [2] : i1 into vector<3xi1>
    %204 = vector.broadcast %c0_i32 : i32 to vector<1x1xi32>
    %205 = vector.outerproduct %20, %20, %204 {kind = #vector.kind<or>} : vector<1xi32>, vector<1xi32>
    %206 = bufferization.clone %168 : memref<3x10x1xf16> to memref<3x10x1xf16>
    %207 = math.cos %collapsed : tensor<1xf32>
    %inserted_51 = tensor.insert %false_6 into %16[%c1] : tensor<3xi1>
    %208 = arith.maxf %cst_4, %196 : f32
    %209 = math.round %3 : tensor<3xf16>
    %210 = vector.broadcast %c0_i32 : i32 to vector<1x1xi32>
    %211 = vector.outerproduct %99, %70, %210 {kind = #vector.kind<or>} : vector<1xi32>, vector<1xi32>
    %212 = math.round %cst_4 : f32
    %213 = arith.minf %cst_5, %cst_3 : f16
    %214 = math.log1p %collapsed : tensor<1xf32>
    %from_elements_52 = tensor.from_elements %c-8649_i16, %155, %84 : tensor<3xi16>
    %215 = math.tan %11 : tensor<3xf32>
    %216 = affine.if affine_set<(d0) : ((d0 * 3) mod 2 >= 0, d0 * 3 >= 0, (d0 * 2) floordiv 32 >= 0, d0 * 4 >= 0)>(%c0) -> memref<1x8xi16> {
      %269 = arith.remsi %c1559395282_i64, %c914149453_i64 : i64
      %270 = memref.load %alloc_18[%c0, %c0] : memref<1x1xf32>
      %271 = scf.execute_region -> memref<3x10x1xi16> {
        %278 = arith.remf %cst, %cst : f16
        %279 = bufferization.clone %alloc_19 : memref<3xf16> to memref<3xf16>
        %280 = arith.shli %c12206_i16, %c12206_i16 : i16
        %281 = arith.floordivsi %155, %84 : i16
        %282 = arith.subi %c914149453_i64, %c914149453_i64 : i64
        %283 = math.atan2 %2, %166 : tensor<1x1xf16>
        %284 = arith.maxsi %c1559395282_i64, %c914149453_i64 : i64
        %285 = vector.create_mask %c0, %rank, %c8 : vector<3x10x1xi1>
        %286 = arith.shli %c12206_i16, %c4250_i16 : i16
        %287 = vector.create_mask %c11, %187 : vector<1x8xi1>
        %288 = tensor.empty() : tensor<3x10x1xi16>
        %289 = math.powf %15, %3 : tensor<3xf16>
        %290 = index.sub %c4, %c7
        %291 = memref.load %alloc_11[%c0, %c8, %c0] : memref<3x10x1xi64>
        %292 = arith.ori %c15988_i16, %84 : i16
        %293 = index.mul %c12, %171
        scf.yield %alloc_10 : memref<3x10x1xi16>
      }
      %272 = vector.broadcast %c0_i32 : i32 to vector<1x1xi32>
      %273 = vector.outerproduct %70, %80, %272 {kind = #vector.kind<minsi>} : vector<1xi32>, vector<1xi32>
      %274 = arith.subi %c0_i32, %c0_i32 : i32
      %275 = vector.load %alloc_22[%c1] : memref<3xi32>, vector<1x8xi32>
      %276 = arith.remf %cst_1, %196 : f32
      %277 = arith.cmpf uno, %cst_3, %cst_3 : f16
      %alloc_56 = memref.alloc() : memref<1x8xi16>
      affine.yield %alloc_56 : memref<1x8xi16>
    } else {
      %269 = arith.minsi %c-8649_i16, %c4250_i16 : i16
      %270 = math.log %collapsed : tensor<1xf32>
      %271 = tensor.empty() : tensor<3x10x1xi64>
      %mapped_56 = linalg.map ins(%alloc_11, %108 : memref<3x10x1xi64>, tensor<3x10x1xi64>) outs(%271 : tensor<3x10x1xi64>)
        (%in: i64, %in_58: i64) {
          %277 = index.sizeof
          %278 = vector.transpose %136, [0] : vector<1xf32> to vector<1xf32>
          %279 = arith.remsi %c0_i32, %c0_i32 : i32
          %280 = vector.extract_strided_slice %136 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
          %c1_i16 = arith.constant 1 : i16
          %281 = vector.transfer_read %13[%173, %c9, %c3], %c1_i16 : tensor<3x10x1xi16>, vector<i16>
          %282 = bufferization.to_tensor %168 : memref<3x10x1xf16>
          %283 = arith.cmpi ule, %c0_i32, %c0_i32 : i32
          %284 = math.fpowi %3, %10 : tensor<3xf16>, tensor<3xi32>
          %285 = math.log1p %cst_3 : f16
          %c22817_i16 = arith.constant 22817 : i16
          %286 = index.castu %c15988_i16 : i16 to index
          %287 = vector.broadcast %c12 : index to vector<1xindex>
          %288 = vector.broadcast %false_6 : i1 to vector<1xi1>
          %289 = vector.broadcast %cst : f16 to vector<1xf16>
          vector.scatter %alloc_23[%c0] [%287], %288, %289 : memref<1xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
          %collapsed_59 = tensor.collapse_shape %generated_50 [[0, 1]] : tensor<?x?xi1> into tensor<?xi1>
          %290 = arith.negf %196 : f32
          %291 = math.exp2 %cst_4 : f32
          %292 = math.roundeven %282 : tensor<3x10x1xf16>
          %false_60 = arith.constant false
          %false_61 = arith.constant false
          %293 = vector.transfer_read %alloc_17[%rank, %c0], %false_61 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<1x8xi1>, vector<3xi1>
          %294 = arith.cmpi sge, %c-8649_i16, %c15988_i16 : i16
          %295 = vector.extract %39[2] : vector<3xi1>
          %296 = arith.maxui %c1_i16, %c15988_i16 : i16
          %297 = arith.addi %in, %in_58 : i64
          %298 = arith.maxf %cst_5, %cst_2 : f16
          %299 = math.tan %15 : tensor<3xf16>
          %300 = arith.shrui %c1559395282_i64, %c914149453_i64 : i64
          %collapsed_62 = tensor.collapse_shape %109 [[0, 1]] : tensor<1x8xi1> into tensor<8xi1>
          %301 = math.log1p %2 : tensor<1x1xf16>
          %302 = math.exp2 %cst_5 : f16
          %303 = index.sub %c9, %41
          %304 = arith.subi %c914149453_i64, %in : i64
          %305 = math.absi %collapsed_62 : tensor<8xi1>
          %306 = vector.insert %c15988_i16, %73 [0] : i16 into vector<3xi16>
          %307 = vector.broadcast %277 : index to vector<3xindex>
          vector.scatter %alloc_12[%c0, %c0] [%307], %159, %39 : memref<1x1xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
          %c1_i64 = arith.constant 1 : i64
          linalg.yield %c1_i64 : i64
        }
      %272 = vector.create_mask %173, %171, %c1 : vector<3x10x1xi1>
      %273 = arith.mulf %cst_1, %cst_1 : f32
      %274 = arith.andi %c1559395282_i64, %c1559395282_i64 : i64
      %275 = arith.maxsi %155, %155 : i16
      %276 = arith.negf %cst_5 : f16
      %alloc_57 = memref.alloc() : memref<1x8xi16>
      affine.yield %alloc_57 : memref<1x8xi16>
    }
    scf.execute_region {
      %269 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %136, %145, %136 : vector<1xf32>, vector<1x1xf32> into vector<1xf32>
      %270 = arith.remf %196, %196 : f32
      %271 = arith.remui %c-8649_i16, %c4250_i16 : i16
      %cst_56 = arith.constant 1.000000e+00 : f32
      %272 = vector.transfer_read %alloc_13[%c4, %153], %cst_56 : memref<1x1xf32>, vector<10xf32>
      %273 = arith.remf %cst_3, %cst_2 : f16
      %274 = vector.load %alloc_8[%c0, %c0] : memref<1x1xf32>, vector<3xf32>
      %275 = arith.maxsi %false, %false_6 : i1
      %collapsed_57 = tensor.collapse_shape %109 [[0, 1]] : tensor<1x8xi1> into tensor<8xi1>
      %276 = arith.maxf %cst_3, %cst : f16
      %277 = math.round %from_elements_37 : tensor<3xf32>
      %278 = arith.minui %false_6, %false_6 : i1
      %279 = vector.insert %c15988_i16, %73 [2] : i16 into vector<3xi16>
      %280 = vector.broadcast %196 : f32 to vector<3xf32>
      %281 = vector.fma %280, %280, %280 : vector<3xf32>
      %282 = vector.insert %c0_i32, %70 [0] : i32 into vector<1xi32>
      %283 = arith.shrui %c12206_i16, %c4250_i16 : i16
      %284 = bufferization.to_memref %7 : memref<1x8xi32>
      scf.yield
    }
    %217 = scf.while (%arg3 = %false_6) : (i1) -> i1 {
      %269 = math.cos %3 : tensor<3xf16>
      %270 = arith.remf %cst_5, %cst_2 : f16
      %271 = math.exp2 %cst_0 : f32
      %272 = math.expm1 %198 : tensor<1x1xf32>
      %273 = vector.extract %71[4] : vector<8xi16>
      %274 = index.divs %171, %c11
      %275 = math.log %cst_5 : f16
      %276 = arith.maxsi %c0_i32, %c0_i32 : i32
      scf.condition(%arg3) %false_6 : i1
    } do {
    ^bb0(%arg3: i1):
      %269 = arith.andi %c15988_i16, %c15988_i16 : i16
      memref.tensor_store %6, %86 : memref<3x10x1xi64>
      %extracted = tensor.extract %198[%c0, %c0] : tensor<1x1xf32>
      %270 = vector.insert %c12206_i16, %71 [4] : i16 into vector<8xi16>
      %271 = arith.shrui %false_6, %false : i1
      affine.store %196, %alloc_18[%c0, %c13] : memref<1x1xf32>
      %272 = index.divs %c14, %41
      %273 = arith.maxui %c12206_i16, %c-8649_i16 : i16
      %274 = vector.broadcast %false_6 : i1 to vector<1xi1>
      %275 = vector.maskedload %alloc_8[%c0, %c0], %274, %136 : memref<1x1xf32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
      %276 = bufferization.to_tensor %alloc_20 : memref<1x1xi1>
      %277 = arith.maxf %cst_7, %cst_4 : f32
      %278 = math.exp2 %166 : tensor<1x1xf16>
      %279 = index.maxs %272, %c12
      %280 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%13 : tensor<3x10x1xi16>) {
      ^bb0(%out: i16):
        %283 = tensor.empty() : tensor<8x10xi1>
        %284 = tensor.empty() : tensor<1x10xi1>
        %285 = linalg.matmul ins(%0, %283 : tensor<1x8xi1>, tensor<8x10xi1>) outs(%284 : tensor<1x10xi1>) -> tensor<1x10xi1>
        %286 = vector.broadcast %c14 : index to vector<10xindex>
        %287 = vector.broadcast %false : i1 to vector<10xi1>
        %288 = vector.broadcast %cst_4 : f32 to vector<10xf32>
        vector.scatter %alloc_18[%c0, %c0] [%286], %287, %288 : memref<1x1xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
        %289 = arith.remf %cst_2, %cst_5 : f16
        %290 = arith.negf %cst_1 : f32
        %291 = math.absf %cst_1 : f32
        %292 = tensor.empty() : tensor<8x8xi16>
        %293 = tensor.empty() : tensor<1x8xi16>
        %294 = linalg.matmul ins(%from_elements_42, %292 : tensor<1x8xi16>, tensor<8x8xi16>) outs(%293 : tensor<1x8xi16>) -> tensor<1x8xi16>
        %extracted_56 = tensor.extract %5[%c0, %c4, %c0] : tensor<3x10x1xi32>
        %295 = math.cttz %14 : tensor<3xi16>
        %296 = math.round %cst : f16
        %297 = math.atan %extracted : f32
        %298 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %200, %182, %155 : vector<3xi16>, vector<3xi16> into i16
        %299 = index.ceildivu %c6, %c4
        %300 = vector.broadcast %c0_i32 : i32 to vector<1x1xi32>
        %301 = vector.outerproduct %80, %80, %300 {kind = #vector.kind<add>} : vector<1xi32>, vector<1xi32>
        %302 = arith.maxui %84, %out : i16
        %303 = vector.create_mask %41 : vector<3xi1>
        %304 = arith.andi %155, %c15988_i16 : i16
        %305 = math.log %128 : tensor<1x1xf32>
        %306 = math.absf %from_elements_37 : tensor<3xf32>
        %307 = bufferization.to_tensor %alloc_9 : memref<3xi16>
        %308 = math.copysign %11, %11 : tensor<3xf32>
        %309 = math.cttz %from_elements_52 : tensor<3xi16>
        %310 = math.ctlz %out : i16
        %311 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %99, %80, %c0_i32 : vector<1xi32>, vector<1xi32> into i32
        %312 = arith.divui %84, %c-8649_i16 : i16
        %313 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %80, %80, %c0_i32 : vector<1xi32>, vector<1xi32> into i32
        %314 = math.log2 %cst_4 : f32
        %315 = index.maxs %c14, %122
        %316 = arith.minsi %c0_i32, %c0_i32 : i32
        %317 = arith.cmpi ne, %c12206_i16, %c4250_i16 : i16
        %318 = math.log1p %cst : f16
        %319 = arith.maxui %84, %c-8649_i16 : i16
        %320 = index.add %c12, %272
        linalg.yield %out : i16
      } -> tensor<3x10x1xi16>
      %281 = math.ipowi %transposed, %transposed : tensor<1x1xi1>
      %282 = index.ceildivu %c13, %c4
      scf.yield %false : i1
    }
    %218 = arith.remf %cst_5, %cst_3 : f16
    %219 = index.ceildivu %c3, %c2
    %alloc_53 = memref.alloc() : memref<3x10x1xi32>
    memref.tensor_store %9, %alloc_53 : memref<3x10x1xi32>
    %220 = vector.broadcast %c0_i32 : i32 to vector<3xi32>
    %221 = vector.gather %37[%c8, %187] [%220], %39, %220 : tensor<1x8xi32>, vector<3xi32>, vector<3xi1>, vector<3xi32> into vector<3xi32>
    %222 = arith.addi %false_6, %false_6 : i1
    %223 = affine.if affine_set<(d0, d1) : (d1 - 32 >= 0, d0 * 2 == 0, (d0 mod 8) ceildiv 4 == 0, (d0 * 2) floordiv 128 >= 0)>(%c7, %c14) -> i1 {
      %269 = arith.remsi %c15988_i16, %c12206_i16 : i16
      %270 = arith.maxui %c12206_i16, %84 : i16
      %271 = math.fma %15, %15, %3 : tensor<3xf16>
      %272 = arith.andi %c4250_i16, %c15988_i16 : i16
      %273 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %159, %39, %false_6 : vector<3xi1>, vector<3xi1> into i1
      %274 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%5 : tensor<3x10x1xi32>) {
      ^bb0(%out: i32):
        %276 = arith.floordivsi %c0_i32, %out : i32
        %277 = arith.minsi %false_6, %false_6 : i1
        %278 = arith.shrui %c15988_i16, %155 : i16
        %279 = vector.extract_strided_slice %136 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
        %280 = arith.cmpf ule, %196, %cst_0 : f32
        %281 = memref.load %alloc[%c0, %c5] : memref<1x8xi64>
        %282 = tensor.empty() : tensor<3x10x1xi32>
        %283 = vector.load %152[%c2] : memref<3xi1>, vector<1x8xi1>
        %284 = math.log %15 : tensor<3xf16>
        %285 = math.exp %cst_1 : f32
        %286 = math.cttz %13 : tensor<3x10x1xi16>
        %287 = arith.shrui %out, %out : i32
        affine.store %c1559395282_i64, %alloc[%c9, %c15] : memref<1x8xi64>
        %288 = index.ceildivu %c14, %rank_25
        %289 = math.expm1 %cst_3 : f16
        %290 = vector.broadcast %c0_i32 : i32 to vector<1x1xi32>
        %291 = vector.broadcast %false : i1 to vector<1x1xi1>
        %292 = vector.gather %282[%c9, %134, %rank_25] [%290], %291, %290 : tensor<3x10x1xi32>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xi32> into vector<1x1xi32>
        %293 = arith.addf %cst_3, %cst_2 : f16
        %294 = arith.minsi %c1559395282_i64, %c914149453_i64 : i64
        %295 = index.casts %c15988_i16 : i16 to index
        %296 = math.cos %15 : tensor<3xf16>
        %cst_57 = arith.constant 1.000000e+00 : f32
        %cst_58 = arith.constant 0.000000e+00 : f32
        %297 = vector.transfer_read %collapsed[%c6], %cst_58 : tensor<1xf32>, vector<f32>
        %alloca_59 = memref.alloca() : memref<3x10x1xf32>
        %extracted = tensor.extract %from_elements_42[%c0, %c2] : tensor<1x8xi16>
        %298 = arith.addi %84, %c4250_i16 : i16
        %299 = vector.load %alloc_22[%c1] : memref<3xi32>, vector<1x1xi32>
        %300 = arith.mulf %cst_3, %cst : f16
        vector.print %73 : vector<3xi16>
        %301 = vector.broadcast %false : i1 to vector<8xi1>
        %302 = vector.insert %301, %283 [0] : vector<8xi1> into vector<1x8xi1>
        %cst_60 = arith.constant 1.000000e+00 : f16
        %cst_61 = arith.constant 0.000000e+00 : f16
        %303 = vector.transfer_read %3[%288], %cst_61 : tensor<3xf16>, vector<f16>
        %304 = arith.addi %out, %out : i32
        %305 = math.copysign %collapsed, %collapsed : tensor<1xf32>
        %306 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %170, %279, %cst_57 : vector<1xf32>, vector<1xf32> into f32
        linalg.yield %c0_i32 : i32
      } -> tensor<3x10x1xi32>
      %generated_56 = tensor.generate %c15, %113 {
      ^bb0(%arg3: index, %arg4: index):
        %276 = arith.shli %c914149453_i64, %c914149453_i64 : i64
        %277 = vector.broadcast %155 : i16 to vector<3x10x1xi16>
        %278 = arith.remf %cst_1, %cst_4 : f32
        %279 = index.ceildivs %41, %153
        tensor.yield %cst_0 : f32
      } : tensor<?x?xf32>
      %275 = affine.for %arg3 = 0 to 10 iter_args(%arg4 = %173) -> (index) {
        affine.yield %171 : index
      }
      affine.yield %false : i1
    } else {
      %generated_56 = tensor.generate %rank {
      ^bb0(%arg3: index, %arg4: index, %arg5: index):
        %276 = vector.broadcast %c15 : index to vector<3xindex>
        vector.scatter %185[%c0, %c7, %c0] [%276], %39, %39 : memref<3x10x1xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
        %277 = tensor.empty() : tensor<1x8xi64>
        %278 = math.atan %cst_0 : f32
        %279 = arith.negf %cst_2 : f16
        tensor.yield %false_6 : i1
      } : tensor<?x10x1xi1>
      %269 = memref.realloc %alloc_23 : memref<1xf16> to memref<8xf16>
      %270 = arith.shli %84, %155 : i16
      %271 = index.ceildivu %c3, %41
      %272 = math.log %3 : tensor<3xf16>
      %273 = index.mul %c13, %rank
      %274 = math.tanh %cst : f16
      %275 = arith.divf %cst, %cst_3 : f16
      affine.yield %false_6 : i1
    }
    %224 = vector.reduction <or>, %39 : vector<3xi1> into i1
    %225 = vector.bitcast %182 : vector<3xi16> to vector<3xi16>
    %226 = math.absf %15 : tensor<3xf16>
    %227 = arith.ori %84, %c12206_i16 : i16
    %228 = arith.muli %84, %84 : i16
    %229 = index.castu %c12 : index to i32
    %230 = arith.shli %c0_i32, %c0_i32 : i32
    %231 = affine.if affine_set<(d0) : (-48 == 0, d0 == 0, -1 == 0)>(%c15) -> memref<3x10x1xi32> {
      %269 = math.log1p %196 : f32
      %270 = arith.shrui %c12206_i16, %155 : i16
      %271 = index.sizeof
      %272 = arith.andi %false_6, %false_6 : i1
      %273 = vector.broadcast %cst_7 : f32 to vector<3xf32>
      %274 = vector.gather %alloc_18[%c1, %130] [%220], %39, %273 : memref<1x1xf32>, vector<3xi32>, vector<3xi1>, vector<3xf32> into vector<3xf32>
      %275 = math.fma %15, %15, %3 : tensor<3xf16>
      %276 = vector.extract_strided_slice %73 {offsets = [1], sizes = [2], strides = [1]} : vector<3xi16> to vector<2xi16>
      %277 = math.rsqrt %15 : tensor<3xf16>
      %alloc_56 = memref.alloc() : memref<3x10x1xi32>
      affine.yield %alloc_56 : memref<3x10x1xi32>
    } else {
      %269 = vector.broadcast %106 : index to vector<10xindex>
      %270 = vector.broadcast %false : i1 to vector<10xi1>
      vector.scatter %185[%c0, %c7, %c0] [%269], %270, %270 : memref<3x10x1xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
      %271 = math.atan %65 : tensor<1x1xf32>
      bufferization.dealloc_tensor %collapsed : tensor<1xf32>
      %272 = math.round %cst_7 : f32
      %273 = vector.broadcast %c14 : index to vector<10xindex>
      %274 = vector.broadcast %false_6 : i1 to vector<10xi1>
      vector.scatter %alloc_20[%c0, %c0] [%273], %274, %274 : memref<1x1xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
      %275 = arith.remf %cst_2, %cst_5 : f16
      %276 = vector.load %alloc_18[%c0, %c0] : memref<1x1xf32>, vector<1x1xf32>
      %277 = math.fpowi %cst_5, %c0_i32 : f16, i32
      %alloc_56 = memref.alloc() : memref<3x10x1xi32>
      affine.yield %alloc_56 : memref<3x10x1xi32>
    }
    %232 = vector.bitcast %70 : vector<1xi32> to vector<1xf32>
    %233 = arith.maxui %c4250_i16, %84 : i16
    %234 = arith.remf %cst, %cst : f16
    %235 = index.sizeof
    %236 = memref.alloca_scope  -> (i32) {
      %269 = vector.create_mask %c2, %rank_25 : vector<1x1xi1>
      %270 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %20, %99, %c0_i32 : vector<1xi32>, vector<1xi32> into i32
      %271 = index.maxs %134, %187
      %272 = math.ceil %166 : tensor<1x1xf16>
      %273 = arith.remsi %c914149453_i64, %c1559395282_i64 : i64
      %274 = vector.outerproduct %232, %232, %145 {kind = #vector.kind<add>} : vector<1xf32>, vector<1xf32>
      %true = index.bool.constant true
      %275 = arith.remui %true, %false : i1
      %276 = memref.realloc %alloc_24 : memref<3xi1> to memref<3xi1>
      %277 = math.tan %198 : tensor<1x1xf32>
      %278 = arith.ori %false_6, %false_6 : i1
      %279 = math.exp2 %196 : f32
      %280 = tensor.empty() : tensor<3xi32>
      scf.if %false_6 {
        %300 = memref.load %152[%c1] : memref<3xi1>
        %301 = arith.ceildivsi %c12206_i16, %c4250_i16 : i16
        %302 = arith.remsi %false, %true : i1
        %303 = arith.andi %c914149453_i64, %c914149453_i64 : i64
        %304 = bufferization.to_memref %14 : memref<3xi16>
        %305 = math.absf %15 : tensor<3xf16>
        vector.print %232 : vector<1xf32>
        %306 = bufferization.to_tensor %alloc_20 : memref<1x1xi1>
      } else {
        %alloc_56 = memref.alloc() : memref<1x1xf16>
        %300 = tensor.empty() : tensor<8x3xi1>
        %301 = tensor.empty() : tensor<1x3xi1>
        %302 = linalg.matmul ins(%0, %300 : tensor<1x8xi1>, tensor<8x3xi1>) outs(%301 : tensor<1x3xi1>) -> tensor<1x3xi1>
        %303 = arith.minui %true, %false : i1
        %304 = index.divs %190, %41
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_57 = arith.constant 0 : i64
        %305 = vector.transfer_read %6[%rank_25, %c2, %rank_25], %c0_i64_57 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<3x10x1xi64>, vector<8xi64>
        %306 = memref.load %206[%c0, %c0, %c0] : memref<3x10x1xf16>
        %307 = arith.remf %cst_4, %cst_7 : f32
        %308 = math.tan %2 : tensor<1x1xf16>
      }
      %281 = arith.cmpi sgt, %c1559395282_i64, %c1559395282_i64 : i64
      %282 = arith.remui %84, %155 : i16
      %283 = index.maxs %c8, %c11
      %284 = arith.negf %cst_5 : f16
      %285 = arith.shli %c4250_i16, %84 : i16
      memref.assume_alignment %alloc_11, 1 : memref<3x10x1xi64>
      %286 = vector.broadcast %c0_i32 : i32 to vector<3x10x1xi32>
      %287 = vector.broadcast %false_6 : i1 to vector<3x10x1xi1>
      %288 = vector.gather %10[%c5] [%286], %287, %286 : tensor<3xi32>, vector<3x10x1xi32>, vector<3x10x1xi1>, vector<3x10x1xi32> into vector<3x10x1xi32>
      %289 = math.copysign %11, %from_elements_37 : tensor<3xf32>
      %290 = arith.remsi %true, %true : i1
      %291 = math.cos %cst_0 : f32
      %292 = arith.shrsi %false_6, %true : i1
      %293 = math.exp2 %collapsed : tensor<1xf32>
      %294 = arith.negf %cst_1 : f32
      %295 = arith.ori %false, %false_6 : i1
      %296 = vector.create_mask %c12, %173 : vector<1x1xi1>
      %297 = index.maxs %113, %106
      %298 = math.fma %2, %166, %166 : tensor<1x1xf16>
      %299 = math.ceil %cst : f16
      memref.alloca_scope.return %c0_i32 : i32
    }
    %237 = arith.divui %c914149453_i64, %c1559395282_i64 : i64
    %238 = math.log1p %11 : tensor<3xf32>
    %239 = math.absf %3 : tensor<3xf16>
    %240 = arith.remui %c-8649_i16, %c15988_i16 : i16
    %241 = bufferization.to_tensor %alloc_10 : memref<3x10x1xi16>
    %242 = arith.cmpf uno, %cst_2, %cst : f16
    %243 = math.exp %cst_5 : f16
    %244 = index.maxs %c15, %c7
    %245 = math.absf %198 : tensor<1x1xf32>
    %246 = arith.maxsi %false, %false : i1
    %247 = arith.mulf %cst_0, %196 : f32
    %248 = index.sizeof
    %249 = math.roundeven %198 : tensor<1x1xf32>
    %250 = arith.maxui %236, %c0_i32 : i32
    %251 = math.round %cst_7 : f32
    %252 = vector.broadcast %c13 : index to vector<1xindex>
    %253 = vector.broadcast %false : i1 to vector<1xi1>
    vector.scatter %alloc_17[%c0, %c6] [%252], %253, %253 : memref<1x8xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
    %254 = vector.broadcast %236 : i32 to vector<3x10xi32>
    %255 = vector.transfer_write %254, %9[%248, %c11, %c4] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<3x10xi32>, tensor<3x10x1xi32>
    %256 = math.floor %cst_1 : f32
    %257 = math.round %196 : f32
    %258 = vector.create_mask %235, %41 : vector<1x1xi1>
    %259 = arith.shrsi %c-8649_i16, %c4250_i16 : i16
    %260 = math.cttz %193 : tensor<1x1xi1>
    %261 = math.tan %2 : tensor<1x1xf16>
    %262 = index.casts %c4250_i16 : i16 to index
    %263 = index.sizeof
    %264 = arith.ori %false, %false_6 : i1
    %265 = tensor.empty() : tensor<1x1xf32>
    %266 = linalg.copy ins(%198 : tensor<1x1xf32>) outs(%265 : tensor<1x1xf32>) -> tensor<1x1xf32>
    %267 = tensor.empty(%173, %c11) : tensor<1x?x?xi64>
    %transposed_54 = linalg.transpose ins(%generated : tensor<?x?x1xi64>) outs(%267 : tensor<1x?x?xi64>) permutation = [2, 0, 1] 
    %alloc_55 = memref.alloc() : memref<1xi32>
    linalg.reduce ins(%4 : tensor<1x1xi32>) outs(%alloc_55 : memref<1xi32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %extracted = tensor.extract %3[%c2] : tensor<3xf16>
        %269 = math.absi %98 : tensor<3xi32>
        affine.store %false_6, %alloc_24[%c13] : memref<3xi1>
        %dest_56, %accumulated_value_57 = vector.scan <maxsi>, %254, %221 {inclusive = false, reduction_dim = 1 : i64} : vector<3x10xi32>, vector<3xi32>
        %270 = arith.cmpf ult, %196, %cst_4 : f32
        %271 = math.fma %cst_0, %196, %196 : f32
        %272 = vector.load %alloc_10[%c1, %c9, %c0] : memref<3x10x1xi16>, vector<3x10x1xi16>
        %273 = arith.xori %84, %c4250_i16 : i16
        %c0_i32_58 = arith.constant 0 : i32
        linalg.yield %c0_i32_58 : i32
      }
    scf.parallel (%arg3) = (%c3) to (%c1) step (%c14) {
      %269 = arith.divui %236, %c0_i32 : i32
      %270 = arith.shrui %84, %c-8649_i16 : i16
      %271 = math.atan %from_elements_37 : tensor<3xf32>
      %272 = memref.load %alloc_24[%c0] : memref<3xi1>
      %273 = arith.ori %c15988_i16, %c12206_i16 : i16
      %274 = index.sizeof
      %275 = math.tanh %2 : tensor<1x1xf16>
      %276 = affine.load %alloc_21[%c7] : memref<3xi16>
      %277 = math.powf %65, %65 : tensor<1x1xf32>
      %278 = tensor.empty() : tensor<1x1xi1>
      %279 = arith.shrsi %false_6, %false_6 : i1
      %280 = math.powf %collapsed, %collapsed : tensor<1xf32>
      %281 = math.round %15 : tensor<3xf16>
      %282 = arith.maxui %c914149453_i64, %c1559395282_i64 : i64
      %283 = arith.remf %cst_2, %cst_3 : f16
      %alloc_56 = memref.alloc() : memref<1x8xf32>
      %284 = vector.broadcast %c0_i32 : i32 to vector<1x1xi32>
      %285 = vector.gather %alloc_56[%c9, %219] [%284], %258, %145 : memref<1x8xf32>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xf32> into vector<1x1xf32>
      scf.yield
    }
    %268 = affine.vector_load %206[%153, %c6, %41] : memref<3x10x1xf16>, vector<10xf16>
    affine.vector_store %225, %alloc_10[%c8, %76, %c0] : memref<3x10x1xi16>, vector<3xi16>
    vector.print %20 : vector<1xi32>
    vector.print %39 : vector<3xi1>
    vector.print %70 : vector<1xi32>
    vector.print %71 : vector<8xi16>
    vector.print %73 : vector<3xi16>
    vector.print %80 : vector<1xi32>
    vector.print %99 : vector<1xi32>
    vector.print %136 : vector<1xf32>
    vector.print %145 : vector<1x1xf32>
    vector.print %159 : vector<3xi1>
    vector.print %170 : vector<1xf32>
    vector.print %182 : vector<3xi16>
    vector.print %200 : vector<3xi16>
    vector.print %220 : vector<3xi32>
    vector.print %221 : vector<3xi32>
    vector.print %225 : vector<3xi16>
    vector.print %232 : vector<1xf32>
    vector.print %254 : vector<3x10xi32>
    vector.print %258 : vector<1x1xi1>
    vector.print %268 : vector<10xf16>
    vector.print %false : i1
    vector.print %c914149453_i64 : i64
    vector.print %cst : f16
    vector.print %cst_0 : f32
    vector.print %c12206_i16 : i16
    vector.print %c4250_i16 : i16
    vector.print %cst_1 : f32
    vector.print %c-8649_i16 : i16
    vector.print %c15988_i16 : i16
    vector.print %cst_2 : f16
    vector.print %cst_3 : f16
    vector.print %cst_4 : f32
    vector.print %cst_5 : f16
    vector.print %false_6 : i1
    vector.print %c1559395282_i64 : i64
    vector.print %cst_7 : f32
    vector.print %c0_i32 : i32
    vector.print %84 : i16
    vector.print %155 : i16
    vector.print %196 : f32
    vector.print %236 : i32
    return %145 : vector<1x1xf32>
  }
}
