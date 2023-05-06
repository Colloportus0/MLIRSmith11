module {
  func.func @func1(%arg0: i1) {
    %cst = arith.constant 1.223200e+04 : f16
    %cst_0 = arith.constant 3.820800e+04 : f16
    %c16807_i16 = arith.constant 16807 : i16
    %c156554673_i64 = arith.constant 156554673 : i64
    %false = arith.constant false
    %false_1 = arith.constant false
    %true = arith.constant true
    %cst_2 = arith.constant 5.956000e+03 : f16
    %false_3 = arith.constant false
    %cst_4 = arith.constant 9.024000e+03 : f16
    %cst_5 = arith.constant 0x4D18F183 : f32
    %c1296085422_i64 = arith.constant 1296085422 : i64
    %cst_6 = arith.constant 2.14737856E+9 : f32
    %c189194650_i64 = arith.constant 189194650 : i64
    %cst_7 = arith.constant 0x4E4EA43D : f32
    %cst_8 = arith.constant 1.69989171E+9 : f32
    %0 = tensor.empty() : tensor<16x16xi32>
    %1 = tensor.empty() : tensor<16x16xi64>
    %2 = tensor.empty() : tensor<10x14xf16>
    %3 = tensor.empty() : tensor<16x16xi64>
    %4 = tensor.empty() : tensor<16x9xi16>
    %5 = tensor.empty() : tensor<10x14xi1>
    %6 = tensor.empty() : tensor<10x14xi16>
    %7 = tensor.empty() : tensor<16x16xi16>
    %8 = tensor.empty() : tensor<16x16xi64>
    %9 = tensor.empty() : tensor<10x14xi1>
    %10 = tensor.empty() : tensor<10x14xi64>
    %11 = tensor.empty() : tensor<16x16xi16>
    %12 = tensor.empty() : tensor<16x9xi64>
    %13 = tensor.empty() : tensor<10x14xi16>
    %14 = tensor.empty() : tensor<14x16xi1>
    %15 = tensor.empty() : tensor<16x9xf32>
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
    %alloc = memref.alloc() : memref<10x14xi64>
    %alloc_9 = memref.alloc() : memref<16x9xi32>
    %alloc_10 = memref.alloc() : memref<16x9xi64>
    %alloc_11 = memref.alloc() : memref<16x9xi16>
    %alloc_12 = memref.alloc() : memref<16x9xi16>
    %alloc_13 = memref.alloc() : memref<10x14xf32>
    %alloc_14 = memref.alloc() : memref<14x16xi32>
    %alloc_15 = memref.alloc() : memref<10x14xf16>
    %alloc_16 = memref.alloc() : memref<16x9xi16>
    %alloc_17 = memref.alloc() : memref<16x9xf32>
    %alloc_18 = memref.alloc() : memref<16x9xi16>
    %alloc_19 = memref.alloc() : memref<16x16xi64>
    %alloc_20 = memref.alloc() : memref<14x16xi1>
    %alloc_21 = memref.alloc() : memref<14x16xi64>
    %alloc_22 = memref.alloc() : memref<16x9xi16>
    %alloc_23 = memref.alloc() : memref<16x16xi64>
    %16 = tensor.empty() : tensor<10x14xi1>
    %17 = linalg.copy ins(%5 : tensor<10x14xi1>) outs(%16 : tensor<10x14xi1>) -> tensor<10x14xi1>
    %18 = tensor.empty() : tensor<16x16xi16>
    %transposed = linalg.transpose ins(%7 : tensor<16x16xi16>) outs(%18 : tensor<16x16xi16>) permutation = [1, 0] 
    %19 = tensor.empty() : tensor<9xf32>
    %reduced = linalg.reduce ins(%alloc_17 : memref<16x9xf32>) outs(%19 : tensor<9xf32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %expanded = tensor.expand_shape %13 [[0], [1, 2]] : tensor<10x14xi16> into tensor<10x14x1xi16>
        %expanded_46 = tensor.expand_shape %11 [[0], [1, 2]] : tensor<16x16xi16> into tensor<16x16x1xi16>
        %287 = arith.negf %cst : f16
        %288 = math.atan2 %19, %19 : tensor<9xf32>
        %289 = bufferization.to_tensor %alloc_10 : memref<16x9xi64>
        %c1_i32 = arith.constant 1 : i32
        %from_elements_47 = tensor.from_elements %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32 : tensor<14x16xi32>
        %290 = memref.atomic_rmw maxu %c1296085422_i64, %alloc_19[%c2, %c4] : (i64, memref<16x16xi64>) -> i64
        scf.execute_region {
          %291 = vector.splat %cst_2 : vector<16x9xf16>
          %292 = vector.broadcast %false_3 : i1 to vector<14xi1>
          %293 = vector.insertelement %false_1, %292[%c0 : index] : vector<14xi1>
          %294 = index.mul %c15, %c3
          %295 = vector.reduction <or>, %292 : vector<14xi1> into i1
          %296 = affine.apply affine_map<(d0, d1, d2) -> (-(d0 + 8))>(%c0, %c3, %c4)
          affine.store %c1_i32, %alloc_14[%c10, %c9] : memref<14x16xi32>
          %297 = math.ctlz %4 : tensor<16x9xi16>
          %298 = arith.muli %c189194650_i64, %c1296085422_i64 : i64
          %299 = arith.addf %cst_8, %init : f32
          %300 = arith.maxf %cst_7, %cst_8 : f32
          %301 = math.roundeven %cst_6 : f32
          %302 = tensor.empty() : tensor<10x16xi1>
          %303 = linalg.matmul ins(%9, %14 : tensor<10x14xi1>, tensor<14x16xi1>) outs(%302 : tensor<10x16xi1>) -> tensor<10x16xi1>
          %304 = math.exp2 %15 : tensor<16x9xf32>
          %305 = vector.splat %c14 : vector<16x9xindex>
          %306 = arith.minsi %true, %false_3 : i1
          %307 = vector.create_mask %c12, %c11 : vector<16x9xi1>
          scf.yield
        }
        %cst_48 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_48 : f32
      }
    %20 = scf.parallel (%arg1) = (%c13) to (%c15) step (%c15) init (%12) -> tensor<16x9xi64> {
      %287 = math.expm1 %19 : tensor<9xf32>
      %288 = arith.addi %c16807_i16, %c16807_i16 : i16
      %289 = vector.broadcast %c16807_i16 : i16 to vector<1xi16>
      %290 = vector.bitcast %289 : vector<1xi16> to vector<1xi16>
      %291 = vector.broadcast %c16807_i16 : i16 to vector<9xi16>
      %292 = vector.broadcast %false_1 : i1 to vector<9xi1>
      %293 = vector.maskedload %alloc_22[%c3, %c4], %292, %291 : memref<16x9xi16>, vector<9xi1>, vector<9xi16> into vector<9xi16>
      %294 = scf.execute_region -> tensor<16x9xf16> {
        %307 = vector.shuffle %293, %289 [1, 2, 4, 5, 7] : vector<9xi16>, vector<1xi16>
        %308 = math.log %reduced : tensor<9xf32>
        %309 = arith.shrsi %c1296085422_i64, %c1296085422_i64 : i64
        %310 = arith.mulf %cst_6, %cst_7 : f32
        %311 = math.powf %cst_0, %cst_4 : f16
        %312 = vector.broadcast %cst_5 : f32 to vector<10x9x9xf32>
        %313 = vector.broadcast %cst_5 : f32 to vector<10x9xf32>
        %dest_48, %accumulated_value_49 = vector.scan <mul>, %312, %313 {inclusive = false, reduction_dim = 1 : i64} : vector<10x9x9xf32>, vector<10x9xf32>
        %314 = vector.shuffle %292, %292 [0, 1, 3, 4, 5, 6, 7, 11, 12, 15, 16, 17] : vector<9xi1>, vector<9xi1>
        %315 = math.ipowi %10, %10 : tensor<10x14xi64>
        %316 = tensor.empty() : tensor<16x16xi32>
        %317 = linalg.matmul ins(%0, %0 : tensor<16x16xi32>, tensor<16x16xi32>) outs(%316 : tensor<16x16xi32>) -> tensor<16x16xi32>
        memref.copy %alloc_19, %alloc_23 : memref<16x16xi64> to memref<16x16xi64>
        %318 = vector.insertelement %true, %292[%c12 : index] : vector<9xi1>
        %319 = arith.cmpf ueq, %cst, %cst_2 : f16
        %320 = arith.addi %false, %true : i1
        %321 = arith.maxsi %c16807_i16, %c16807_i16 : i16
        %322 = arith.muli %false_1, %true : i1
        %323 = arith.remf %cst_0, %cst_4 : f16
        %324 = tensor.empty() : tensor<16x9xf16>
        scf.yield %324 : tensor<16x9xf16>
      }
      %295 = math.atan2 %cst_5, %cst_6 : f32
      %296 = bufferization.clone %alloc_17 : memref<16x9xf32> to memref<16x9xf32>
      %297 = arith.subi %false_3, %false_1 : i1
      %298 = math.exp2 %cst_2 : f16
      %299 = arith.minsi %true, %false_3 : i1
      %from_elements_46 = tensor.from_elements %c189194650_i64, %c1296085422_i64, %c1296085422_i64, %c156554673_i64, %c1296085422_i64, %c1296085422_i64, %c189194650_i64, %c189194650_i64, %c189194650_i64, %c189194650_i64, %c156554673_i64, %c1296085422_i64, %c156554673_i64, %c156554673_i64, %c189194650_i64, %c156554673_i64, %c1296085422_i64, %c189194650_i64, %c156554673_i64, %c189194650_i64, %c156554673_i64, %c1296085422_i64, %c189194650_i64, %c189194650_i64, %c156554673_i64, %c189194650_i64, %c1296085422_i64, %c189194650_i64, %c156554673_i64, %c1296085422_i64, %c189194650_i64, %c156554673_i64, %c1296085422_i64, %c1296085422_i64, %c156554673_i64, %c189194650_i64, %c156554673_i64, %c156554673_i64, %c189194650_i64, %c156554673_i64, %c156554673_i64, %c1296085422_i64, %c156554673_i64, %c1296085422_i64, %c189194650_i64, %c189194650_i64, %c156554673_i64, %c189194650_i64, %c189194650_i64, %c156554673_i64, %c1296085422_i64, %c189194650_i64, %c1296085422_i64, %c189194650_i64, %c189194650_i64, %c1296085422_i64, %c189194650_i64, %c1296085422_i64, %c156554673_i64, %c1296085422_i64, %c1296085422_i64, %c1296085422_i64, %c189194650_i64, %c156554673_i64, %c156554673_i64, %c189194650_i64, %c1296085422_i64, %c189194650_i64, %c1296085422_i64, %c156554673_i64, %c156554673_i64, %c1296085422_i64, %c1296085422_i64, %c189194650_i64, %c156554673_i64, %c156554673_i64, %c189194650_i64, %c1296085422_i64, %c1296085422_i64, %c156554673_i64, %c1296085422_i64, %c1296085422_i64, %c189194650_i64, %c1296085422_i64, %c156554673_i64, %c189194650_i64, %c189194650_i64, %c189194650_i64, %c1296085422_i64, %c1296085422_i64, %c189194650_i64, %c156554673_i64, %c1296085422_i64, %c156554673_i64, %c189194650_i64, %c1296085422_i64, %c156554673_i64, %c1296085422_i64, %c156554673_i64, %c1296085422_i64, %c1296085422_i64, %c156554673_i64, %c189194650_i64, %c156554673_i64, %c189194650_i64, %c189194650_i64, %c1296085422_i64, %c156554673_i64, %c156554673_i64, %c156554673_i64, %c156554673_i64, %c156554673_i64, %c1296085422_i64, %c156554673_i64, %c156554673_i64, %c189194650_i64, %c189194650_i64, %c156554673_i64, %c189194650_i64, %c1296085422_i64, %c189194650_i64, %c189194650_i64, %c156554673_i64, %c1296085422_i64, %c189194650_i64, %c1296085422_i64, %c189194650_i64, %c189194650_i64, %c189194650_i64, %c189194650_i64, %c156554673_i64, %c156554673_i64, %c1296085422_i64, %c189194650_i64, %c189194650_i64, %c156554673_i64, %c156554673_i64, %c189194650_i64, %c156554673_i64, %c156554673_i64, %c156554673_i64, %c156554673_i64, %c189194650_i64, %c156554673_i64, %c156554673_i64, %c1296085422_i64, %c189194650_i64, %c189194650_i64, %c189194650_i64, %c156554673_i64, %c156554673_i64, %c189194650_i64, %c189194650_i64, %c1296085422_i64, %c156554673_i64, %c1296085422_i64, %c1296085422_i64, %c189194650_i64, %c189194650_i64, %c189194650_i64, %c189194650_i64, %c189194650_i64, %c156554673_i64, %c156554673_i64, %c1296085422_i64, %c156554673_i64, %c156554673_i64, %c1296085422_i64, %c189194650_i64, %c189194650_i64, %c1296085422_i64, %c156554673_i64, %c1296085422_i64, %c189194650_i64, %c156554673_i64, %c189194650_i64, %c156554673_i64, %c189194650_i64, %c156554673_i64, %c156554673_i64, %c189194650_i64, %c1296085422_i64, %c156554673_i64, %c1296085422_i64, %c1296085422_i64, %c1296085422_i64, %c1296085422_i64, %c1296085422_i64, %c156554673_i64, %c1296085422_i64, %c156554673_i64, %c1296085422_i64, %c189194650_i64, %c156554673_i64, %c1296085422_i64, %c1296085422_i64, %c189194650_i64, %c189194650_i64, %c156554673_i64, %c1296085422_i64, %c189194650_i64, %c156554673_i64, %c189194650_i64, %c1296085422_i64, %c1296085422_i64, %c156554673_i64, %c1296085422_i64, %c189194650_i64, %c156554673_i64, %c189194650_i64, %c189194650_i64, %c189194650_i64, %c156554673_i64, %c1296085422_i64, %c156554673_i64, %c1296085422_i64, %c1296085422_i64, %c189194650_i64, %c156554673_i64, %c156554673_i64, %c156554673_i64, %c156554673_i64, %c1296085422_i64, %c156554673_i64 : tensor<14x16xi64>
      %from_elements_47 = tensor.from_elements %cst, %cst, %cst_4, %cst_4, %cst_0, %cst_4, %cst_0, %cst_0, %cst_4, %cst_0, %cst_0, %cst_2, %cst_0, %cst_2, %cst_4, %cst_4, %cst_0, %cst_0, %cst_2, %cst_0, %cst_4, %cst_0, %cst_2, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst_2, %cst, %cst, %cst, %cst_2, %cst_4, %cst_0, %cst_0, %cst_2, %cst_0, %cst, %cst_4, %cst_2, %cst_4, %cst_4, %cst, %cst_0, %cst, %cst_2, %cst_0, %cst_2, %cst_0, %cst, %cst, %cst_0, %cst_2, %cst, %cst_2, %cst_0, %cst_4, %cst_2, %cst_0, %cst, %cst_0, %cst_4, %cst_2, %cst_2, %cst_0, %cst_0, %cst_0, %cst_4, %cst, %cst_0, %cst_2, %cst, %cst_4, %cst_0, %cst_0, %cst_2, %cst_4, %cst_0, %cst_4, %cst, %cst_2, %cst_2, %cst, %cst_4, %cst, %cst_2, %cst_2, %cst, %cst, %cst_2, %cst_2, %cst_0, %cst_2, %cst_2, %cst_2, %cst_0, %cst, %cst, %cst, %cst, %cst_4, %cst, %cst_0, %cst_4, %cst_2, %cst_4, %cst_2, %cst_2, %cst_4, %cst_0, %cst_4, %cst_2, %cst_2, %cst_4, %cst_2, %cst_4, %cst_0, %cst, %cst, %cst, %cst_0, %cst_2, %cst, %cst_4, %cst_0, %cst, %cst_2, %cst_4, %cst_2, %cst_4, %cst_0, %cst_2, %cst_2, %cst_0, %cst_2, %cst, %cst, %cst_2, %cst_4, %cst_4, %cst_0, %cst, %cst_4, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst_2, %cst_0, %cst_2, %cst_4, %cst, %cst_4, %cst_2, %cst_4, %cst_4, %cst_4, %cst_2, %cst_4, %cst_2, %cst_0, %cst, %cst_4, %cst_4, %cst_4, %cst_2, %cst, %cst, %cst_0, %cst_4, %cst_2, %cst_4, %cst, %cst, %cst, %cst_4, %cst_2, %cst_2, %cst_4, %cst_0, %cst_4, %cst_0, %cst_0, %cst_4, %cst_0, %cst_2, %cst, %cst_0, %cst_2, %cst_4, %cst, %cst_4, %cst_4, %cst_4, %cst_4, %cst, %cst, %cst_2, %cst, %cst, %cst, %cst, %cst, %cst_0, %cst_4, %cst_0, %cst_4, %cst_0, %cst_2, %cst, %cst, %cst, %cst_4, %cst_2, %cst, %cst, %cst, %cst, %cst_2, %cst_4 : tensor<14x16xf16>
      %300 = index.sub %c13, %c14
      %301 = vector.broadcast %c16807_i16 : i16 to vector<9x9xi16>
      %302 = vector.outerproduct %291, %291, %301 {kind = #vector.kind<and>} : vector<9xi16>, vector<9xi16>
      %303 = tensor.empty() : tensor<16x9xi16>
      %304 = linalg.matmul ins(%transposed, %4 : tensor<16x16xi16>, tensor<16x9xi16>) outs(%303 : tensor<16x9xi16>) -> tensor<16x9xi16>
      %305 = math.log2 %cst_2 : f16
      %306 = tensor.empty() : tensor<16x9xi64>
      scf.reduce(%306)  : tensor<16x9xi64> {
      ^bb0(%arg2: tensor<16x9xi64>, %arg3: tensor<16x9xi64>):
        %307 = index.add %c9, %c6
        %308 = math.exp2 %15 : tensor<16x9xf32>
        %309 = arith.negf %cst_2 : f16
        %310 = index.castu %true : i1 to index
        %311 = math.powf %294, %294 : tensor<16x9xf16>
        %312 = arith.shrsi %true, %false : i1
        %313 = arith.negf %cst : f16
        %314 = math.ipowi %7, %7 : tensor<16x16xi16>
        %315 = tensor.empty() : tensor<16x9xi64>
        scf.reduce.return %315 : tensor<16x9xi64>
      }
      scf.yield
    }
    %21 = affine.vector_load %alloc_18[%c11, %c2] : memref<16x9xi16>, vector<9xi16>
    affine.vector_store %21, %alloc_22[%c15, %c15] : memref<16x9xi16>, vector<9xi16>
    %alloc_24 = memref.alloc() : memref<9xf32>
    %22 = tensor.empty() : tensor<f32>
    %23 = linalg.dot ins(%19, %alloc_24 : tensor<9xf32>, memref<9xf32>) outs(%22 : tensor<f32>) -> tensor<f32>
    %24 = memref.atomic_rmw muli %c16807_i16, %alloc_16[%c13, %c5] : (i16, memref<16x9xi16>) -> i16
    %25 = index.castu %c7 : index to i32
    %26 = math.cttz %3 : tensor<16x16xi64>
    %27 = affine.min affine_map<(d0, d1, d2) -> (-(d2 floordiv 8 + d1), d2 - 16)>(%c4, %c11, %c0)
    %28 = tensor.empty() : tensor<16x16xf16>
    %29 = vector.broadcast %cst_4 : f16 to vector<10x14xf16>
    %30 = vector.broadcast %false_3 : i1 to vector<10x14xi1>
    %c0_i32 = arith.constant 0 : i32
    %31 = vector.broadcast %c0_i32 : i32 to vector<10x14xi32>
    %32 = vector.gather %28[%c4, %c4] [%31], %30, %29 : tensor<16x16xf16>, vector<10x14xi32>, vector<10x14xi1>, vector<10x14xf16> into vector<10x14xf16>
    %inserted = tensor.insert %cst_6 into %22[] : tensor<f32>
    %33 = vector.insertelement %c16807_i16, %21[%c8 : index] : vector<9xi16>
    %34 = math.sqrt %cst_5 : f32
    %35 = vector.extract %32[5] : vector<10x14xf16>
    %36 = math.ctlz %false_1 : i1
    %37 = arith.maxsi %false_3, %false_3 : i1
    affine.for %arg1 = 0 to 113 {
    }
    %cast = tensor.cast %15 : tensor<16x9xf32> to tensor<?x?xf32>
    %38 = vector.reduction <maxf>, %35 : vector<14xf16> into f16
    %39 = vector.broadcast %c16807_i16 : i16 to vector<9x9xi16>
    %40 = vector.outerproduct %21, %21, %39 {kind = #vector.kind<minsi>} : vector<9xi16>, vector<9xi16>
    %41 = index.add %c0, %c8
    %42 = arith.minsi %true, %false_3 : i1
    %43 = math.ctlz %9 : tensor<10x14xi1>
    %44 = index.sub %c14, %41
    %45 = vector.broadcast %cst_7 : f32 to vector<16xf32>
    vector.transfer_write %45, %alloc_13[%c9, %c0] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<16xf32>, memref<10x14xf32>
    %46 = vector.broadcast %c16807_i16 : i16 to vector<10xi16>
    %47 = vector.broadcast %true : i1 to vector<10xi1>
    %48 = vector.maskedload %alloc_18[%c3, %c7], %47, %46 : memref<16x9xi16>, vector<10xi1>, vector<10xi16> into vector<10xi16>
    %49 = index.sizeof
    %50 = vector.broadcast %c156554673_i64 : i64 to vector<16x16xi64>
    %51 = arith.shrsi %c1296085422_i64, %c189194650_i64 : i64
    %52 = bufferization.clone %alloc_23 : memref<16x16xi64> to memref<16x16xi64>
    %53 = affine.if affine_set<(d0, d1, d2) : (0 == 0, d2 == 0, d2 + d2 - d0 + 128 == 0, d0 ceildiv 64 >= 0)>(%c12, %c10, %c11) -> memref<14x16xf16> {
      %287 = index.maxs %c5, %c6
      %288 = index.mul %41, %c10
      %289 = math.round %19 : tensor<9xf32>
      %290 = arith.ori %false_1, %true : i1
      %291 = arith.subi %c1296085422_i64, %c189194650_i64 : i64
      %292 = bufferization.clone %alloc_15 : memref<10x14xf16> to memref<10x14xf16>
      %293 = vector.broadcast %cst_2 : f16 to vector<14x14xf16>
      %294 = vector.outerproduct %35, %35, %293 {kind = #vector.kind<maxf>} : vector<14xf16>, vector<14xf16>
      %295 = math.log %28 : tensor<16x16xf16>
      %alloc_46 = memref.alloc() : memref<14x16xf16>
      affine.yield %alloc_46 : memref<14x16xf16>
    } else {
      %cast_46 = tensor.cast %13 : tensor<10x14xi16> to tensor<?x?xi16>
      %287 = vector.broadcast %cst_2 : f16 to vector<10xf16>
      %dest_47, %accumulated_value_48 = vector.scan <add>, %29, %287 {inclusive = false, reduction_dim = 1 : i64} : vector<10x14xf16>, vector<10xf16>
      %288 = math.floor %cst_2 : f16
      %289 = tensor.empty() : tensor<16x9xi64>
      %290 = linalg.matmul ins(%3, %12 : tensor<16x16xi64>, tensor<16x9xi64>) outs(%289 : tensor<16x9xi64>) -> tensor<16x9xi64>
      %291 = arith.maxf %cst_8, %cst_7 : f32
      %292 = arith.addf %cst_4, %cst_2 : f16
      %293 = math.log %15 : tensor<16x9xf32>
      %294 = arith.ori %false_3, %false_1 : i1
      %alloc_49 = memref.alloc() : memref<14x16xf16>
      affine.yield %alloc_49 : memref<14x16xf16>
    }
    %54 = index.floordivs %c15, %41
    %extracted = tensor.extract %16[%c5, %c7] : tensor<10x14xi1>
    %55 = arith.remui %extracted, %false : i1
    %56 = arith.muli %c189194650_i64, %c189194650_i64 : i64
    %57 = vector.broadcast %false_1 : i1 to vector<i1>
    %58 = vector.transfer_write %57, %9[%49, %c1] : vector<i1>, tensor<10x14xi1>
    %59 = affine.if affine_set<(d0, d1, d2) : (d1 - d2 >= 0, 0 >= 0)>(%c9, %c2, %c8) -> f16 {
      %alloc_46 = memref.alloc() : memref<10x14xf32>
      %287 = vector.broadcast %c156554673_i64 : i64 to vector<9xi64>
      %288 = vector.broadcast %true : i1 to vector<9xi1>
      %289 = vector.maskedload %alloc_23[%c2, %c7], %288, %287 : memref<16x16xi64>, vector<9xi1>, vector<9xi64> into vector<9xi64>
      %290 = vector.insertelement %c1296085422_i64, %289[%c15 : index] : vector<9xi64>
      %291 = index.divu %c3, %c9
      %cst_47 = arith.constant 1.7769353E+9 : f32
      %292 = arith.addf %cst_2, %cst_2 : f16
      %293 = math.log %2 : tensor<10x14xf16>
      %294 = math.ctpop %11 : tensor<16x16xi16>
      affine.yield %cst : f16
    } else {
      %287 = math.absi %10 : tensor<10x14xi64>
      %288 = math.powf %reduced, %reduced : tensor<9xf32>
      %289 = arith.subi %c156554673_i64, %c189194650_i64 : i64
      %290 = vector.broadcast %c156554673_i64 : i64 to vector<16xi64>
      %291 = vector.insert %290, %50 [6] : vector<16xi64> into vector<16x16xi64>
      %292 = arith.cmpf true, %cst, %cst_4 : f16
      %293 = vector.broadcast %cst_2 : f16 to vector<14x16xf16>
      %294 = vector.broadcast %cst : f16 to vector<14x14xf16>
      %295 = vector.outerproduct %35, %35, %294 {kind = #vector.kind<minf>} : vector<14xf16>, vector<14xf16>
      %296 = vector.transpose %293, [1, 0] : vector<14x16xf16> to vector<16x14xf16>
      affine.yield %cst_4 : f16
    }
    %inserted_25 = tensor.insert %cst_5 into %15[%c11, %c8] : tensor<16x9xf32>
    %from_elements = tensor.from_elements %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32 : tensor<14x16xi32>
    %60 = scf.while (%arg1 = %30) : (vector<10x14xi1>) -> vector<10x14xi1> {
      %287 = vector.extract %50[2] : vector<16x16xi64>
      %288 = vector.broadcast %cst_2 : f16 to vector<14x14xf16>
      %289 = vector.outerproduct %35, %35, %288 {kind = #vector.kind<add>} : vector<14xf16>, vector<14xf16>
      %290 = affine.max affine_map<(d0, d1) -> (d0 ceildiv 16 - 8, (d0 ceildiv 16) mod 32, (-d1 + d1 ceildiv 32) * -4, -d1)>(%44, %27)
      %291 = vector.load %alloc_9[%c8, %c2] : memref<16x9xi32>, vector<16x9xi32>
      %292 = scf.while (%arg2 = %47) : (vector<10xi1>) -> vector<10xi1> {
        %295 = index.mul %c5, %c1
        %296 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %48, %48, %c16807_i16 : vector<10xi16>, vector<10xi16> into i16
        %297 = math.powf %28, %28 : tensor<16x16xf16>
        %298 = math.powf %15, %15 : tensor<16x9xf32>
        %299 = arith.minsi %c156554673_i64, %c1296085422_i64 : i64
        %300 = math.tan %22 : tensor<f32>
        %301 = math.cos %cst_4 : f16
        %302 = math.cos %cst_2 : f16
        scf.condition(%true) %47 : vector<10xi1>
      } do {
      ^bb0(%arg2: vector<10xi1>):
        %295 = index.floordivs %44, %c6
        %296 = arith.remf %cst_2, %cst : f16
        %297 = math.rsqrt %19 : tensor<9xf32>
        %298 = arith.subi %c1296085422_i64, %c156554673_i64 : i64
        %299 = arith.addf %cst_2, %cst_4 : f16
        %300 = arith.shrsi %false_3, %extracted : i1
        memref.tensor_store %reduced, %alloc_24 : memref<9xf32>
        %301 = vector.insert %false_3, %47 [4] : i1 into vector<10xi1>
        %302 = arith.subi %extracted, %false_3 : i1
        %303 = vector.reduction <maxsi>, %287 : vector<16xi64> into i64
        %304 = math.ctpop %12 : tensor<16x9xi64>
        %305 = math.tanh %cst_4 : f16
        %306 = vector.flat_transpose %46 {columns = 5 : i32, rows = 2 : i32} : vector<10xi16> -> vector<10xi16>
        %307 = arith.negf %cst_8 : f32
        bufferization.dealloc_tensor %16 : tensor<10x14xi1>
        %308 = math.rsqrt %2 : tensor<10x14xf16>
        scf.yield %47 : vector<10xi1>
      }
      %293 = index.sub %44, %41
      %294 = bufferization.to_tensor %alloc_11 : memref<16x9xi16>
      %cst_46 = arith.constant 1.51083904E+9 : f32
      scf.condition(%false) %30 : vector<10x14xi1>
    } do {
    ^bb0(%arg1: vector<10x14xi1>):
      %from_elements_46 = tensor.from_elements %extracted, %false, %false_3, %false, %false_1, %true, %extracted, %false, %false_1, %extracted, %false_1, %extracted, %true, %false_1, %false_3, %false_1, %extracted, %true, %true, %extracted, %false_1, %extracted, %false, %false_1, %extracted, %false, %false_1, %false_3, %false_3, %false, %false_1, %false, %extracted, %false_1, %extracted, %extracted, %false_1, %extracted, %false, %false, %false, %extracted, %true, %false_1, %extracted, %extracted, %true, %extracted, %false, %false, %false, %false_1, %false_3, %extracted, %false, %false, %false, %extracted, %false_3, %true, %false_1, %extracted, %false_3, %extracted, %extracted, %false, %true, %extracted, %false_3, %true, %true, %false_3, %false, %extracted, %true, %true, %false_1, %false_1, %extracted, %extracted, %false_3, %false, %extracted, %true, %true, %false_1, %false_1, %true, %true, %false_1, %false_3, %true, %false_1, %extracted, %false, %false, %false_1, %true, %false_1, %false_1, %false, %extracted, %true, %false_3, %false_3, %false_1, %extracted, %true, %false, %false_3, %false_3, %false_1, %true, %extracted, %true, %false, %true, %extracted, %false, %false_1, %true, %false_3, %true, %false_1, %false_1, %extracted, %extracted, %extracted, %true, %false, %false, %extracted, %false_1, %true, %extracted, %false_3, %true, %false, %false, %false_1, %false_1, %true, %true, %false_1, %false_1, %extracted, %true, %false_3, %extracted, %false_3, %false_3, %false_3, %extracted, %extracted, %true, %true, %false_3, %false_3, %true, %extracted, %false_1, %false, %false_1, %extracted, %extracted, %extracted, %false, %extracted, %false_3, %false_1, %false_1, %true, %false_3, %extracted, %extracted, %false, %false_1, %true, %false_3, %false_3, %extracted, %extracted, %extracted, %extracted, %extracted, %false_3, %false_1, %false_1, %extracted, %extracted, %true, %false, %extracted, %extracted, %false_1, %false, %false_1, %false_1, %false, %true, %false_3, %extracted, %false_3, %false_3, %false, %true, %false_1, %extracted, %false_3, %false_1, %extracted, %false, %false_1, %extracted, %false_1, %false, %false_3, %extracted, %false_1, %false_1, %false, %extracted, %false_1, %extracted, %true, %extracted, %false_1, %false, %extracted, %false_3, %true, %false_1, %false_1, %extracted, %true, %extracted, %false_1, %false_3, %false_1, %true, %false_3, %true, %true, %true, %extracted, %false_1, %false_3, %false, %true, %false_1, %true, %false_1, %false_1, %false_1, %false, %true : tensor<16x16xi1>
      %287 = arith.muli %extracted, %false_1 : i1
      %288 = memref.realloc %alloc_24 : memref<9xf32> to memref<10xf32>
      %289 = arith.maxf %cst_2, %cst_0 : f16
      %290 = index.floordivs %c7, %c12
      %false_47 = index.bool.constant false
      %291 = arith.xori %false_3, %true : i1
      %292 = vector.bitcast %21 : vector<9xi16> to vector<9xi16>
      %293 = index.casts %c0 : index to i32
      %294 = arith.cmpi sgt, %false, %false : i1
      %295 = vector.bitcast %31 : vector<10x14xi32> to vector<10x14xi32>
      %296 = math.copysign %2, %2 : tensor<10x14xf16>
      %297 = arith.maxsi %false_47, %false_47 : i1
      %298 = math.tan %28 : tensor<16x16xf16>
      %299 = math.sqrt %2 : tensor<10x14xf16>
      %300 = affine.min affine_map<(d0) -> (d0, ((d0 floordiv 2) floordiv 32) * 2)>(%c13)
      scf.yield %30 : vector<10x14xi1>
    }
    %61 = math.exp %2 : tensor<10x14xf16>
    %62 = bufferization.clone %alloc_10 : memref<16x9xi64> to memref<16x9xi64>
    %63 = tensor.empty(%54, %c11) : tensor<?x?xi64>
    %64 = arith.remf %cst_7, %cst_8 : f32
    %alloc_26 = memref.alloc() : memref<16x9xi64>
    %65 = index.floordivs %44, %c3
    %66 = memref.realloc %alloc_24 : memref<9xf32> to memref<16xf32>
    %generated = tensor.generate %44, %c10 {
    ^bb0(%arg1: index, %arg2: index):
      %287 = index.casts %c0_i32 : i32 to index
      %288 = vector.flat_transpose %21 {columns = 3 : i32, rows = 3 : i32} : vector<9xi16> -> vector<9xi16>
      %289 = math.exp2 %28 : tensor<16x16xf16>
      %290 = scf.index_switch %c7 -> vector<16x16xi64> 
      case 1 {
        %alloca_46 = memref.alloca() : memref<10x14xf32>
        %291 = memref.atomic_rmw addf %cst_7, %alloc_24[%c6] : (f32, memref<9xf32>) -> f32
        %alloc_47 = memref.alloc() : memref<16x16xi16>
        memref.tensor_store %7, %alloc_47 : memref<16x16xi16>
        %292 = arith.muli %c156554673_i64, %c156554673_i64 : i64
        %293 = math.copysign %19, %19 : tensor<9xf32>
        %294 = arith.maxf %cst_0, %cst_0 : f16
        %295 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 - (d1 mod 16 + d1 + 16) - (-d2 + 1) + 1, d3)>(%c2, %arg1, %c1, %c8)
        %296 = arith.shrsi %c0_i32, %c0_i32 : i32
        %297 = vector.splat %c2 : vector<10x14xindex>
        %298 = index.castu %c6 : index to i32
        %expanded = tensor.expand_shape %18 [[0], [1, 2]] : tensor<16x16xi16> into tensor<16x16x1xi16>
        %299 = affine.load %alloc_13[%c4, %c12] : memref<10x14xf32>
        %300 = memref.load %alloc_13[%c5, %c2] : memref<10x14xf32>
        %301 = math.ctlz %from_elements : tensor<14x16xi32>
        %302 = arith.ori %c156554673_i64, %c1296085422_i64 : i64
        %303 = vector.reduction <minsi>, %47 : vector<10xi1> into i1
        scf.yield %50 : vector<16x16xi64>
      }
      default {
        %291 = affine.load %alloc_22[%c0, %c13] : memref<16x9xi16>
        %292 = arith.shli %c1296085422_i64, %c156554673_i64 : i64
        %293 = index.maxs %arg2, %41
        %294 = math.exp2 %2 : tensor<10x14xf16>
        %295 = math.log %reduced : tensor<9xf32>
        memref.store %c189194650_i64, %62[%c0, %c2] : memref<16x9xi64>
        %296 = arith.xori %false_1, %extracted : i1
        %297 = arith.maxf %cst_5, %cst_8 : f32
        %298 = affine.apply affine_map<(d0, d1, d2, d3) -> (-d1)>(%65, %41, %c12, %c10)
        %299 = math.roundeven %19 : tensor<9xf32>
        %300 = vector.shuffle %32, %32 [1, 3, 5, 6, 7, 8, 9, 10, 13, 18, 19] : vector<10x14xf16>, vector<10x14xf16>
        %301 = vector.shuffle %21, %288 [0, 3, 4, 5, 11, 13, 16] : vector<9xi16>, vector<9xi16>
        %302 = math.atan2 %23, %23 : tensor<f32>
        %303 = vector.broadcast %c0_i32 : i32 to vector<14xi32>
        %304 = vector.broadcast %extracted : i1 to vector<14xi1>
        %305 = vector.maskedload %alloc_9[%c5, %c7], %304, %303 : memref<16x9xi32>, vector<14xi1>, vector<14xi32> into vector<14xi32>
        %expanded = tensor.expand_shape %1 [[0], [1, 2]] : tensor<16x16xi64> into tensor<16x16x1xi64>
        %306 = math.exp %cst_6 : f32
        scf.yield %50 : vector<16x16xi64>
      }
      tensor.yield %c0_i32 : i32
    } : tensor<?x?xi32>
    %67 = index.divu %c14, %c11
    %68 = arith.remf %cst_7, %cst_6 : f32
    %69 = math.cos %19 : tensor<9xf32>
    %70 = affine.min affine_map<(d0, d1, d2, d3) -> ((d3 mod 2) * -64, (d1 mod 32) * 128 - 8, d2 mod 64, d3 mod 2)>(%c12, %44, %41, %c1)
    %71 = math.atan2 %cst_4, %cst : f16
    %72 = bufferization.clone %62 : memref<16x9xi64> to memref<16x9xi64>
    %alloc_27 = memref.alloc() : memref<10x14xi1>
    memref.tensor_store %5, %alloc_27 : memref<10x14xi1>
    %73 = vector.broadcast %c16807_i16 : i16 to vector<9xi16>
    vector.transfer_write %73, %alloc_22[%c13, %c11] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xi16>, memref<16x9xi16>
    %74 = arith.maxui %c16807_i16, %c16807_i16 : i16
    %75 = arith.andi %true, %false_1 : i1
    %generated_28 = tensor.generate %c2 {
    ^bb0(%arg1: index, %arg2: index):
      %287 = vector.flat_transpose %46 {columns = 5 : i32, rows = 2 : i32} : vector<10xi16> -> vector<10xi16>
      %from_elements_46 = tensor.from_elements %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32 : tensor<16x16xi32>
      %288 = vector.extract_strided_slice %46 {offsets = [7], sizes = [1], strides = [1]} : vector<10xi16> to vector<1xi16>
      %289 = arith.shrsi %c156554673_i64, %c189194650_i64 : i64
      tensor.yield %c0_i32 : i32
    } : tensor<?x16xi32>
    %76 = tensor.empty() : tensor<14x14x14xi32>
    %alloc_29 = memref.alloc() : memref<14x14xi32>
    %77 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_29 : memref<14x14xi32>) outs(%76 : tensor<14x14x14xi32>) {
    ^bb0(%in: i32, %out: i32):
      %287 = arith.muli %in, %in : i32
      %288 = vector.bitcast %46 : vector<10xi16> to vector<10xi16>
      %289 = index.castu %41 : index to i32
      %290 = arith.muli %extracted, %extracted : i1
      %291 = vector.create_mask %c11, %c9 : vector<16x16xi1>
      %292 = math.fma %23, %22, %22 : tensor<f32>
      %293 = vector.splat %c15 : vector<14x16xindex>
      %294 = math.log %cst_7 : f32
      %295 = vector.shuffle %31, %31 [0, 1, 2, 3, 5, 6, 7, 8, 9, 10, 11, 13, 14, 15, 17, 18, 19] : vector<10x14xi32>, vector<10x14xi32>
      %extracted_46 = tensor.extract %14[%c0, %c1] : tensor<14x16xi1>
      %296 = math.absi %11 : tensor<16x16xi16>
      %297 = math.expm1 %cst_6 : f32
      %298 = math.log %23 : tensor<f32>
      %299 = vector.reduction <mul>, %35 : vector<14xf16> into f16
      %300 = arith.shrsi %c1296085422_i64, %c1296085422_i64 : i64
      %301 = arith.remf %cst_2, %cst_4 : f16
      %302 = index.casts %false_3 : i1 to index
      %303 = index.ceildivs %65, %c2
      %304 = index.casts %41 : index to i32
      %305 = arith.addf %cst_6, %cst_6 : f32
      %306 = vector.extract_strided_slice %46 {offsets = [4], sizes = [6], strides = [1]} : vector<10xi16> to vector<6xi16>
      %307 = arith.maxf %cst_8, %cst_7 : f32
      %308 = index.castu %c4 : index to i32
      %309 = vector.insert %cst_0, %35 [13] : f16 into vector<14xf16>
      %310 = arith.shrsi %c0_i32, %c0_i32 : i32
      %311 = math.absi %10 : tensor<10x14xi64>
      %312 = index.sub %c1, %c10
      %313 = math.absf %cst_5 : f32
      %314 = tensor.empty() : tensor<16x16xi16>
      %315 = linalg.matmul ins(%11, %7 : tensor<16x16xi16>, tensor<16x16xi16>) outs(%314 : tensor<16x16xi16>) -> tensor<16x16xi16>
      %316 = vector.broadcast %cst_6 : f32 to vector<9xf32>
      %317 = vector.broadcast %true : i1 to vector<9xi1>
      %318 = vector.maskedload %alloc_17[%c0, %c4], %317, %316 : memref<16x9xf32>, vector<9xi1>, vector<9xf32> into vector<9xf32>
      %319 = math.sqrt %cst_5 : f32
      %320 = vector.broadcast %c1296085422_i64 : i64 to vector<16xi64>
      %dest_47, %accumulated_value_48 = vector.scan <or>, %50, %320 {inclusive = false, reduction_dim = 1 : i64} : vector<16x16xi64>, vector<16xi64>
      linalg.yield %c0_i32 : i32
    } -> tensor<14x14x14xi32>
    %78 = arith.cmpi ule, %false_1, %false_1 : i1
    %79 = math.ctlz %7 : tensor<16x16xi16>
    %80 = index.floordivs %c13, %c6
    %81 = math.powf %23, %23 : tensor<f32>
    %82 = math.log10 %cst_0 : f16
    %83 = math.cttz %4 : tensor<16x9xi16>
    %84 = arith.maxui %c0_i32, %c0_i32 : i32
    %85 = arith.muli %false_3, %extracted : i1
    %86 = index.casts %true : i1 to index
    %87 = vector.multi_reduction <or>, %73, %21 [] : vector<9xi16> to vector<9xi16>
    %88 = arith.xori %c1296085422_i64, %c156554673_i64 : i64
    %89 = bufferization.clone %alloc_17 : memref<16x9xf32> to memref<16x9xf32>
    %90 = math.atan2 %cst_8, %cst_6 : f32
    %91 = tensor.empty() : tensor<14x14x14xi32>
    %alloc_30 = memref.alloc() : memref<14xi32>
    %92 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_30 : memref<14xi32>) outs(%91 : tensor<14x14x14xi32>) {
    ^bb0(%in: i32, %out: i32):
      %287 = tensor.empty() : tensor<16x16xi64>
      %288 = scf.index_switch %c13 -> memref<10x14xf32> 
      case 1 {
        %320 = index.ceildivs %c7, %c6
        %321 = arith.minsi %true, %false : i1
        %322 = memref.atomic_rmw muli %c16807_i16, %alloc_22[%c6, %c2] : (i16, memref<16x9xi16>) -> i16
        %323 = vector.broadcast %out : i32 to vector<9xi32>
        %324 = vector.broadcast %false_3 : i1 to vector<9xi1>
        %325 = vector.maskedload %alloc_14[%c5, %c7], %324, %323 : memref<14x16xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
        %326 = arith.ori %true, %true : i1
        %alloca_47 = memref.alloca() : memref<14x16xi1>
        %327 = tensor.empty() : tensor<16x9xi32>
        %328 = math.fpowi %15, %327 : tensor<16x9xf32>, tensor<16x9xi32>
        %329 = math.exp2 %2 : tensor<10x14xf16>
        %330 = vector.load %alloc_10[%c11, %c0] : memref<16x9xi64>, vector<16x9xi64>
        %331 = vector.create_mask %67, %c14 : vector<14x16xi1>
        %332 = memref.realloc %alloc_24 : memref<9xf32> to memref<10xf32>
        %333 = math.log10 %22 : tensor<f32>
        %334 = math.atan2 %cst_2, %cst_4 : f16
        %335 = math.log10 %15 : tensor<16x9xf32>
        %336 = arith.subi %true, %false_1 : i1
        %337 = arith.cmpf une, %cst_8, %cst_7 : f32
        scf.yield %alloc_13 : memref<10x14xf32>
      }
      default {
        %320 = vector.broadcast %c0_i32 : i32 to vector<14x14xi32>
        %321 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %31, %31, %320 : vector<10x14xi32>, vector<10x14xi32> into vector<14x14xi32>
        %extracted_47 = tensor.extract %8[%c0, %c14] : tensor<16x16xi64>
        %322 = vector.multi_reduction <minsi>, %31, %31 [] : vector<10x14xi32> to vector<10x14xi32>
        %323 = arith.maxsi %c189194650_i64, %c1296085422_i64 : i64
        %324 = arith.negf %cst_2 : f16
        %325 = arith.addf %cst_2, %cst_2 : f16
        %326 = vector.flat_transpose %47 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
        %327 = math.ctpop %9 : tensor<10x14xi1>
        %inserted_48 = tensor.insert %cst_5 into %cast[%c0, %c0] : tensor<?x?xf32>
        %328 = math.log2 %15 : tensor<16x9xf32>
        %329 = vector.broadcast %c0_i32 : i32 to vector<16xi32>
        %330 = vector.broadcast %true : i1 to vector<16xi1>
        %331 = vector.maskedload %alloc_9[%c8, %c2], %330, %329 : memref<16x9xi32>, vector<16xi1>, vector<16xi32> into vector<16xi32>
        %332 = arith.negf %cst_0 : f16
        %333 = math.ctpop %7 : tensor<16x16xi16>
        %alloc_49 = memref.alloc() : memref<f32>
        memref.tensor_store %23, %alloc_49 : memref<f32>
        %334 = math.cttz %false_1 : i1
        %335 = math.tanh %2 : tensor<10x14xf16>
        scf.yield %alloc_13 : memref<10x14xf32>
      }
      %289 = vector.broadcast %c0 : index to vector<9xindex>
      %290 = vector.broadcast %false_3 : i1 to vector<9xi1>
      %291 = vector.broadcast %cst : f16 to vector<9xf16>
      vector.scatter %alloc_15[%c3, %c6] [%289], %290, %291 : memref<10x14xf16>, vector<9xindex>, vector<9xi1>, vector<9xf16>
      %292 = bufferization.clone %alloc_18 : memref<16x9xi16> to memref<16x9xi16>
      %293 = math.absi %false : i1
      %294 = arith.cmpf uge, %cst, %cst_4 : f16
      %295 = arith.minsi %in, %out : i32
      %296 = scf.index_switch %41 -> memref<16x16xf32> 
      case 1 {
        %320 = math.tan %15 : tensor<16x9xf32>
        %321 = index.casts %c8 : index to i32
        %322 = vector.broadcast %cst_5 : f32 to vector<16x9xf32>
        %323 = vector.fma %322, %322, %322 : vector<16x9xf32>
        %324 = index.castu %49 : index to i32
        %325 = arith.subi %false_1, %extracted : i1
        %326 = math.atan2 %2, %2 : tensor<10x14xf16>
        %327 = arith.subi %false_1, %false_3 : i1
        %328 = arith.maxf %cst, %cst_4 : f16
        %329 = memref.atomic_rmw ori %c1296085422_i64, %alloc_21[%c9, %c5] : (i64, memref<14x16xi64>) -> i64
        %330 = math.log %22 : tensor<f32>
        %331 = arith.ceildivsi %in, %in : i32
        %332 = index.divu %80, %c7
        %333 = arith.addi %out, %out : i32
        %334 = vector.insertelement %cst_2, %35[%c0 : index] : vector<14xf16>
        %335 = math.exp2 %28 : tensor<16x16xf16>
        %336 = vector.insert %c16807_i16, %46 [1] : i16 into vector<10xi16>
        %alloc_47 = memref.alloc() : memref<16x16xf32>
        scf.yield %alloc_47 : memref<16x16xf32>
      }
      default {
        %320 = math.exp2 %cst_7 : f32
        %321 = math.absi %c0_i32 : i32
        %false_47 = index.bool.constant false
        %322 = math.sqrt %cst_5 : f32
        %323 = vector.flat_transpose %73 {columns = 3 : i32, rows = 3 : i32} : vector<9xi16> -> vector<9xi16>
        %324 = math.ceil %cst_5 : f32
        %325 = vector.extract_strided_slice %48 {offsets = [1], sizes = [7], strides = [1]} : vector<10xi16> to vector<7xi16>
        %326 = arith.subi %false, %extracted : i1
        %from_elements_48 = tensor.from_elements %cst_0, %cst, %cst_0, %cst, %cst, %cst_2, %cst, %cst_0, %cst_0, %cst_2, %cst, %cst_0, %cst_0, %cst_0, %cst_4, %cst_2, %cst_0, %cst_2, %cst_2, %cst_4, %cst_0, %cst_2, %cst_2, %cst_0, %cst_0, %cst_2, %cst_2, %cst_4, %cst_2, %cst_4, %cst, %cst_2, %cst, %cst, %cst_4, %cst_2, %cst, %cst_0, %cst_4, %cst_0, %cst_2, %cst_0, %cst_2, %cst, %cst_0, %cst_2, %cst_0, %cst_4, %cst, %cst, %cst_2, %cst_4, %cst_2, %cst, %cst, %cst_0, %cst, %cst_4, %cst_4, %cst_2, %cst_4, %cst_0, %cst, %cst_2, %cst_4, %cst, %cst_0, %cst_4, %cst_0, %cst_0, %cst, %cst_4, %cst_0, %cst_2, %cst_4, %cst, %cst_0, %cst_4, %cst_2, %cst_4, %cst_4, %cst_4, %cst_4, %cst, %cst_2, %cst_0, %cst_4, %cst_4, %cst, %cst, %cst_2, %cst_0, %cst_2, %cst_2, %cst_0, %cst_0, %cst, %cst_0, %cst_4, %cst, %cst_2, %cst_4, %cst_4, %cst_2, %cst, %cst_2, %cst_4, %cst_2, %cst, %cst_0, %cst_0, %cst_2, %cst_4, %cst_2, %cst_0, %cst_4, %cst, %cst_2, %cst_0, %cst_2, %cst_4, %cst, %cst, %cst, %cst_4, %cst_0, %cst_0, %cst_2, %cst, %cst_4, %cst_4, %cst_0, %cst_0, %cst_4, %cst, %cst, %cst_2, %cst_2, %cst_4, %cst_2, %cst_0, %cst_2, %cst_4, %cst_2, %cst_0, %cst_0, %cst, %cst, %cst_2, %cst, %cst, %cst_0, %cst_0, %cst, %cst_4, %cst_2, %cst_2, %cst_2, %cst_2, %cst_0, %cst_2, %cst, %cst, %cst_4, %cst_4, %cst, %cst_0, %cst_2, %cst_2, %cst_4, %cst_0, %cst_0, %cst_2, %cst, %cst_4, %cst, %cst_4, %cst_4, %cst, %cst_2, %cst_4, %cst_2, %cst_0, %cst_2, %cst_4, %cst, %cst_4, %cst_4, %cst, %cst_2, %cst_0, %cst_0, %cst_2, %cst, %cst_4, %cst_0, %cst_2, %cst_2, %cst, %cst_2, %cst_2, %cst_4, %cst_4, %cst_4, %cst_0, %cst_2, %cst_4, %cst_4, %cst, %cst_4, %cst_2, %cst_2, %cst_4, %cst_4, %cst_0, %cst_2, %cst_4, %cst_0, %cst_4, %cst_0, %cst_0, %cst_4, %cst_4, %cst_0, %cst_2, %cst_4, %cst, %cst_0, %cst_0, %cst_4, %cst_2, %cst_4, %cst_4, %cst, %cst_0, %cst, %cst_0, %cst_4, %cst_2, %cst, %cst_0, %cst, %cst, %cst_0, %cst_2, %cst_0, %cst_4, %cst_0, %cst, %cst_0, %cst_4, %cst, %cst_0, %cst_0, %cst_4, %cst_4 : tensor<16x16xf16>
        %327 = affine.max affine_map<(d0, d1) -> (d0)>(%c4, %65)
        %328 = vector.broadcast %c189194650_i64 : i64 to vector<16x9xi64>
        %329 = vector.broadcast %false_3 : i1 to vector<16x9xi1>
        %330 = vector.broadcast %c0_i32 : i32 to vector<16x9xi32>
        %331 = vector.gather %alloc_10[%c1, %c3] [%330], %329, %328 : memref<16x9xi64>, vector<16x9xi32>, vector<16x9xi1>, vector<16x9xi64> into vector<16x9xi64>
        %332 = arith.divsi %c0_i32, %in : i32
        %alloca_49 = memref.alloca() : memref<16x16xi1>
        %333 = math.expm1 %cst_8 : f32
        %334 = bufferization.clone %alloc_21 : memref<14x16xi64> to memref<14x16xi64>
        %335 = math.log10 %cst : f16
        %alloc_50 = memref.alloc() : memref<16x16xf32>
        scf.yield %alloc_50 : memref<16x16xf32>
      }
      %297 = arith.divui %c1296085422_i64, %c189194650_i64 : i64
      memref.copy %72, %62 : memref<16x9xi64> to memref<16x9xi64>
      %298 = affine.if affine_set<(d0, d1, d2) : ((d2 + 16) * 2048 >= 0, d1 - 32 >= 0, d1 - 32 >= 0, d2 + 16 == 0)>(%c0, %c3, %c5) -> memref<16x16xf16> {
        %320 = arith.ori %c189194650_i64, %c156554673_i64 : i64
        %321 = vector.insert %cst_6, %45 [10] : f32 into vector<16xf32>
        %322 = arith.minsi %c1296085422_i64, %c189194650_i64 : i64
        %323 = affine.min affine_map<(d0, d1, d2) -> (d2 ceildiv 128, (d1 ceildiv 128) mod 8, (d1 ceildiv 128) mod 8, d0)>(%c6, %67, %67)
        affine.store %c156554673_i64, %alloc_19[%c14, %c7] : memref<16x16xi64>
        %324 = memref.atomic_rmw mins %c16807_i16, %alloc_18[%c6, %c4] : (i16, memref<16x9xi16>) -> i16
        %325 = memref.atomic_rmw assign %c156554673_i64, %alloc_10[%c11, %c8] : (i64, memref<16x9xi64>) -> i64
        %rank = tensor.rank %11 : tensor<16x16xi16>
        %alloc_47 = memref.alloc() : memref<16x16xf16>
        affine.yield %alloc_47 : memref<16x16xf16>
      } else {
        %320 = index.floordivs %c12, %80
        %321 = vector.broadcast %c6 : index to vector<9xindex>
        %322 = vector.broadcast %true : i1 to vector<9xi1>
        %323 = vector.broadcast %cst_7 : f32 to vector<9xf32>
        vector.scatter %alloc_13[%c3, %c13] [%321], %322, %323 : memref<10x14xf32>, vector<9xindex>, vector<9xi1>, vector<9xf32>
        %324 = index.divu %c9, %c1
        %325 = vector.broadcast %c189194650_i64 : i64 to vector<16xi64>
        %326 = vector.insert %325, %50 [8] : vector<16xi64> into vector<16x16xi64>
        %327 = math.ctlz %in : i32
        %328 = vector.broadcast %true : i1 to vector<9xi1>
        %329 = vector.transfer_write %328, %5[%c4, %54] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xi1>, tensor<10x14xi1>
        %330 = arith.maxsi %extracted, %false : i1
        %331 = vector.insertelement %c189194650_i64, %325[%324 : index] : vector<16xi64>
        %alloc_47 = memref.alloc() : memref<16x16xf16>
        affine.yield %alloc_47 : memref<16x16xf16>
      }
      %299 = vector.shuffle %73, %48 [1, 6, 7, 8, 9, 11, 14, 15, 16, 17] : vector<9xi16>, vector<10xi16>
      %300 = math.absf %cst_7 : f32
      %301 = math.exp2 %23 : tensor<f32>
      %302 = arith.mulf %cst_8, %cst_5 : f32
      %303 = vector.reduction <minui>, %21 : vector<9xi16> into i16
      %304 = math.exp2 %reduced : tensor<9xf32>
      %305 = tensor.empty() : tensor<16x16xi64>
      %306 = linalg.matmul ins(%3, %3 : tensor<16x16xi64>, tensor<16x16xi64>) outs(%305 : tensor<16x16xi64>) -> tensor<16x16xi64>
      %307 = math.rsqrt %reduced : tensor<9xf32>
      %308 = arith.maxf %cst_4, %cst : f16
      %alloca_46 = memref.alloca() : memref<16x9xi1>
      %309 = math.rsqrt %2 : tensor<10x14xf16>
      %310 = arith.remui %c189194650_i64, %c156554673_i64 : i64
      %311 = arith.cmpf ogt, %cst_5, %cst_5 : f32
      %312 = arith.maxsi %extracted, %false_3 : i1
      %313 = vector.splat %54 : vector<16x9xindex>
      %314 = vector.broadcast %c1296085422_i64 : i64 to vector<i64>
      vector.transfer_write %314, %alloc[%67, %c8] : vector<i64>, memref<10x14xi64>
      %315 = affine.apply affine_map<(d0, d1) -> ((-(d0 mod 64)) ceildiv 16)>(%c14, %c13)
      %316 = index.sizeof
      %317 = affine.min affine_map<(d0) -> (d0 - 96, d0 * 2 + 160, d0 mod 16, d0 mod 8 + 64)>(%c0)
      %318 = math.exp2 %cst_5 : f32
      %319 = arith.xori %false, %true : i1
      linalg.yield %in : i32
    } -> tensor<14x14x14xi32>
    %93 = index.add %c6, %49
    %94 = tensor.empty() : tensor<10x14xf32>
    %95 = arith.cmpi eq, %true, %false_3 : i1
    %96 = vector.insertelement %c16807_i16, %21[%c0 : index] : vector<9xi16>
    %97 = math.atan2 %cst_6, %cst_5 : f32
    %98 = math.rsqrt %2 : tensor<10x14xf16>
    affine.store %c189194650_i64, %alloc_23[%c3, %c6] : memref<16x16xi64>
    %99 = index.maxs %49, %c10
    %100 = vector.broadcast %c3 : index to vector<10xindex>
    vector.scatter %alloc_11[%c5, %c5] [%100], %47, %48 : memref<16x9xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
    %101 = arith.negf %cst_6 : f32
    %102 = tensor.empty() : tensor<14x14x14xi32>
    %alloc_31 = memref.alloc() : memref<14xi32>
    %103 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_31 : memref<14xi32>) outs(%102 : tensor<14x14x14xi32>) {
    ^bb0(%in: i32, %out: i32):
      %287 = bufferization.clone %alloc : memref<10x14xi64> to memref<10x14xi64>
      %288 = memref.realloc %alloc_24 : memref<9xf32> to memref<9xf32>
      %289 = index.maxs %67, %44
      %290 = math.log %cst_8 : f32
      %291 = arith.remui %in, %in : i32
      %292 = vector.reduction <add>, %48 : vector<10xi16> into i16
      %extracted_46 = tensor.extract %cast[%c0, %c0] : tensor<?x?xf32>
      %293 = vector.bitcast %21 : vector<9xi16> to vector<9xi16>
      %294 = arith.ori %c16807_i16, %c16807_i16 : i16
      %295 = vector.broadcast %c156554673_i64 : i64 to vector<16x16xi64>
      %296 = math.exp %15 : tensor<16x9xf32>
      %297 = vector.broadcast %cst_8 : f32 to vector<16x16xf32>
      %298 = vector.broadcast %true : i1 to vector<16x16xi1>
      %299 = vector.broadcast %out : i32 to vector<16x16xi32>
      %300 = vector.gather %15[%c12, %c1] [%299], %298, %297 : tensor<16x9xf32>, vector<16x16xi32>, vector<16x16xi1>, vector<16x16xf32> into vector<16x16xf32>
      %301 = vector.shuffle %35, %35 [0, 3, 4, 5, 8, 9, 10, 14, 21, 23, 24, 27] : vector<14xf16>, vector<14xf16>
      %302 = math.cttz %false : i1
      %303 = math.sqrt %cst_8 : f32
      %304 = math.rsqrt %extracted_46 : f32
      %305 = arith.addi %c156554673_i64, %c189194650_i64 : i64
      %306 = index.add %54, %54
      %307 = arith.addi %false_3, %true : i1
      %308 = math.powf %94, %94 : tensor<10x14xf32>
      %309 = vector.broadcast %cst_6 : f32 to vector<10x14xf32>
      %310 = vector.fma %309, %309, %309 : vector<10x14xf32>
      %311 = math.tan %cst : f16
      %312 = tensor.empty() : tensor<14x14x14xi32>
      %alloc_47 = memref.alloc() : memref<14xi32>
      %313 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_47 : memref<14xi32>) outs(%312 : tensor<14x14x14xi32>) {
      ^bb0(%in_48: i32, %out_49: i32):
        %324 = math.powf %23, %23 : tensor<f32>
        %325 = arith.shrsi %in_48, %c0_i32 : i32
        %326 = vector.transpose %310, [0, 1] : vector<10x14xf32> to vector<10x14xf32>
        %327 = index.maxu %65, %289
        %328 = math.round %cst_5 : f32
        %329 = bufferization.to_tensor %alloc_17 : memref<16x9xf32>
        %330 = math.exp2 %extracted_46 : f32
        %331 = math.ipowi %4, %4 : tensor<16x9xi16>
        %splat_50 = tensor.splat %cst : tensor<14x16xf16>
        %332 = vector.extract %309[1] : vector<10x14xf32>
        %333 = arith.cmpf ult, %cst_8, %extracted_46 : f32
        %334 = vector.broadcast %cst_8 : f32 to vector<14x16xf32>
        %335 = vector.fma %334, %334, %334 : vector<14x16xf32>
        %336 = math.rsqrt %cst_4 : f16
        %337 = vector.gather %12[%c15, %c12] [%299], %298, %50 : tensor<16x9xi64>, vector<16x16xi32>, vector<16x16xi1>, vector<16x16xi64> into vector<16x16xi64>
        %338 = bufferization.clone %62 : memref<16x9xi64> to memref<16x9xi64>
        %rank = tensor.rank %7 : tensor<16x16xi16>
        %339 = vector.insertelement %cst_5, %45[%c11 : index] : vector<16xf32>
        %340 = arith.ori %c1296085422_i64, %c1296085422_i64 : i64
        %341 = math.exp %cst_4 : f16
        %342 = math.log %splat_50 : tensor<14x16xf16>
        %343 = vector.extract %335[3] : vector<14x16xf32>
        %344 = arith.negf %cst_0 : f16
        %345 = bufferization.clone %alloc_11 : memref<16x9xi16> to memref<16x9xi16>
        %346 = vector.extract_strided_slice %29 {offsets = [1], sizes = [2], strides = [1]} : vector<10x14xf16> to vector<2x14xf16>
        %347 = math.atan2 %23, %22 : tensor<f32>
        %348 = arith.muli %extracted, %extracted : i1
        %349 = vector.broadcast %cst_8 : f32 to vector<9xf32>
        %350 = vector.broadcast %extracted : i1 to vector<9xi1>
        %351 = vector.maskedload %alloc_17[%c7, %c6], %350, %349 : memref<16x9xf32>, vector<9xi1>, vector<9xf32> into vector<9xf32>
        %352 = vector.transpose %297, [1, 0] : vector<16x16xf32> to vector<16x16xf32>
        %353 = vector.insertelement %c16807_i16, %46[%86 : index] : vector<10xi16>
        %354 = affine.min affine_map<(d0, d1, d2) -> (d1, d1 - 160)>(%67, %c12, %c15)
        memref.copy %52, %alloc_19 : memref<16x16xi64> to memref<16x16xi64>
        %355 = vector.broadcast %cst_6 : f32 to vector<10x14xf32>
        %356 = vector.fma %355, %309, %355 : vector<10x14xf32>
        linalg.yield %out : i32
      } -> tensor<14x14x14xi32>
      %314 = vector.broadcast %cst_5 : f32 to vector<14xf32>
      %315 = vector.insert %314, %309 [3] : vector<14xf32> into vector<10x14xf32>
      %316 = bufferization.to_memref %5 : memref<10x14xi1>
      %317 = vector.bitcast %314 : vector<14xf32> to vector<14xf32>
      %318 = arith.divsi %in, %out : i32
      %319 = affine.if affine_set<(d0) : (0 == 0, d0 - 16 >= 0)>(%c4) -> memref<10x14xi1> {
        %324 = arith.maxf %extracted_46, %cst_8 : f32
        %325 = tensor.empty() : tensor<16x16xi16>
        %326 = linalg.matmul ins(%transposed, %7 : tensor<16x16xi16>, tensor<16x16xi16>) outs(%325 : tensor<16x16xi16>) -> tensor<16x16xi16>
        %327 = vector.flat_transpose %314 {columns = 7 : i32, rows = 2 : i32} : vector<14xf32> -> vector<14xf32>
        %328 = arith.divsi %false_1, %false : i1
        %329 = vector.reduction <xor>, %47 : vector<10xi1> into i1
        %330 = math.expm1 %cst_4 : f16
        %331 = math.tan %2 : tensor<10x14xf16>
        %332 = index.casts %c5 : index to i32
        affine.yield %316 : memref<10x14xi1>
      } else {
        %324 = vector.shuffle %314, %317 [1, 3, 7, 8, 9, 11, 12, 15, 19, 20, 21, 23, 25] : vector<14xf32>, vector<14xf32>
        %325 = math.sqrt %cst_7 : f32
        %326 = memref.load %alloc_16[%c12, %c6] : memref<16x9xi16>
        %327 = arith.addf %cst_0, %cst_0 : f16
        %328 = vector.reduction <minf>, %314 : vector<14xf32> into f32
        %329 = math.ctpop %in : i32
        %alloc_48 = memref.alloc() : memref<14x16xf32>
        %330 = vector.gather %alloc_48[%70, %c7] [%31], %30, %309 : memref<14x16xf32>, vector<10x14xi32>, vector<10x14xi1>, vector<10x14xf32> into vector<10x14xf32>
        %331 = arith.negf %cst_4 : f16
        affine.yield %316 : memref<10x14xi1>
      }
      scf.execute_region {
        %324 = vector.multi_reduction <mul>, %297, %297 [] : vector<16x16xf32> to vector<16x16xf32>
        %325 = vector.transpose %314, [0] : vector<14xf32> to vector<14xf32>
        affine.store %c16807_i16, %alloc_11[%c10, %c2] : memref<16x9xi16>
        %from_elements_48 = tensor.from_elements %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16 : tensor<16x9xi16>
        %326 = arith.minsi %false_3, %false_3 : i1
        %327 = math.atan2 %cst_0, %cst_2 : f16
        %328 = math.roundeven %cst : f16
        %329 = vector.broadcast %cst_5 : f32 to vector<16x9xf32>
        %330 = vector.fma %329, %329, %329 : vector<16x9xf32>
        affine.store %c16807_i16, %alloc_22[%c1, %c0] : memref<16x9xi16>
        %331 = vector.create_mask %99, %306 : vector<16x9xi1>
        %332 = math.log1p %15 : tensor<16x9xf32>
        %333 = math.absi %from_elements : tensor<14x16xi32>
        %334 = arith.negf %cst_2 : f16
        %335 = arith.subi %c189194650_i64, %c1296085422_i64 : i64
        %336 = tensor.empty() : tensor<16x16xi16>
        %337 = linalg.matmul ins(%7, %7 : tensor<16x16xi16>, tensor<16x16xi16>) outs(%336 : tensor<16x16xi16>) -> tensor<16x16xi16>
        %338 = math.ipowi %from_elements_48, %4 : tensor<16x9xi16>
        scf.yield
      }
      %320 = vector.outerproduct %45, %45, %300 {kind = #vector.kind<minf>} : vector<16xf32>, vector<16xf32>
      %321 = vector.broadcast %cst_5 : f32 to vector<16x9xf32>
      %322 = vector.fma %321, %321, %321 : vector<16x9xf32>
      %323 = vector.splat %c1296085422_i64 : vector<16x9xi64>
      linalg.yield %in : i32
    } -> tensor<14x14x14xi32>
    %104 = math.log1p %cst_0 : f16
    %105 = tensor.empty() : tensor<16x16xi16>
    %106 = linalg.matmul ins(%11, %11 : tensor<16x16xi16>, tensor<16x16xi16>) outs(%105 : tensor<16x16xi16>) -> tensor<16x16xi16>
    %alloc_32 = memref.alloc() : memref<16x16xi1>
    %107 = vector.gather %alloc_32[%44, %c14] [%31], %30, %30 : memref<16x16xi1>, vector<10x14xi32>, vector<10x14xi1>, vector<10x14xi1> into vector<10x14xi1>
    %108 = index.maxu %c13, %c5
    %109 = math.round %23 : tensor<f32>
    %splat = tensor.splat %cst_6 : tensor<16x9xf32>
    %110 = arith.xori %c189194650_i64, %c156554673_i64 : i64
    %111 = math.floor %2 : tensor<10x14xf16>
    %112 = tensor.empty() : tensor<10x16xi1>
    %113 = linalg.matmul ins(%5, %14 : tensor<10x14xi1>, tensor<14x16xi1>) outs(%112 : tensor<10x16xi1>) -> tensor<10x16xi1>
    %114 = tensor.empty() : tensor<16x16xi32>
    %115 = linalg.matmul ins(%0, %0 : tensor<16x16xi32>, tensor<16x16xi32>) outs(%114 : tensor<16x16xi32>) -> tensor<16x16xi32>
    %116 = arith.xori %c0_i32, %c0_i32 : i32
    %117 = math.tanh %23 : tensor<f32>
    %c905160933_i32 = arith.constant 905160933 : i32
    %118 = index.add %70, %c14
    %119 = bufferization.to_memref %2 : memref<10x14xf16>
    %120 = memref.load %alloc_20[%c4, %c14] : memref<14x16xi1>
    %121 = math.sqrt %22 : tensor<f32>
    %122 = arith.muli %c189194650_i64, %c156554673_i64 : i64
    %123 = tensor.empty() : tensor<16x16xi16>
    %124 = linalg.matmul ins(%105, %transposed : tensor<16x16xi16>, tensor<16x16xi16>) outs(%123 : tensor<16x16xi16>) -> tensor<16x16xi16>
    %125 = vector.splat %c10 : vector<16x16xindex>
    %126 = tensor.empty() : tensor<14x14x14xi32>
    %127 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%126 : tensor<14x14x14xi32>) outs(%126 : tensor<14x14x14xi32>) {
    ^bb0(%in: i32, %out: i32):
      %287 = arith.muli %in, %out : i32
      %288 = vector.bitcast %107 : vector<10x14xi1> to vector<10x14xi1>
      %289 = memref.atomic_rmw andi %c16807_i16, %alloc_16[%c11, %c2] : (i16, memref<16x9xi16>) -> i16
      %290 = arith.subi %false_3, %false : i1
      %291 = index.maxu %c6, %80
      %292 = arith.subi %c1296085422_i64, %c156554673_i64 : i64
      %293 = math.sqrt %15 : tensor<16x9xf32>
      %from_elements_46 = tensor.from_elements %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16 : tensor<10x14xi16>
      memref.tensor_store %19, %alloc_24 : memref<9xf32>
      %294 = arith.andi %false, %false_1 : i1
      %295 = math.log %splat : tensor<16x9xf32>
      %296 = affine.min affine_map<(d0, d1, d2) -> (d0, d0 floordiv 8, 0, d1)>(%c1, %c6, %c5)
      %297 = vector.broadcast %extracted : i1 to vector<14xi1>
      %298 = vector.insert %297, %107 [9] : vector<14xi1> into vector<10x14xi1>
      %299 = math.ctpop %from_elements : tensor<14x16xi32>
      %300 = memref.atomic_rmw minu %c156554673_i64, %62[%c0, %c1] : (i64, memref<16x9xi64>) -> i64
      %301 = math.absi %9 : tensor<10x14xi1>
      %302 = scf.if %false_3 -> (memref<10x14xi1>) {
        %319 = affine.apply affine_map<(d0) -> (((d0 * 2) mod 32) * 128 - d0 ceildiv 16)>(%99)
        %320 = index.add %c6, %80
        %321 = math.sqrt %cst_8 : f32
        %322 = vector.broadcast %c0 : index to vector<16xindex>
        %323 = vector.broadcast %false_3 : i1 to vector<16xi1>
        %324 = vector.broadcast %c156554673_i64 : i64 to vector<16xi64>
        vector.scatter %72[%c5, %c7] [%322], %323, %324 : memref<16x9xi64>, vector<16xindex>, vector<16xi1>, vector<16xi64>
        %325 = arith.muli %false_1, %false : i1
        %326 = vector.reduction <maxf>, %35 : vector<14xf16> into f16
        %327 = index.floordivs %c7, %c1
        %328 = math.tan %2 : tensor<10x14xf16>
        %alloc_48 = memref.alloc() : memref<10x14xi1>
        scf.yield %alloc_48 : memref<10x14xi1>
      } else {
        %319 = math.log10 %15 : tensor<16x9xf32>
        %320 = index.divu %291, %c6
        %321 = arith.ori %extracted, %false : i1
        %322 = math.round %19 : tensor<9xf32>
        %323 = vector.shuffle %73, %73 [0, 1, 3, 8, 9, 11, 12, 14, 15, 17] : vector<9xi16>, vector<9xi16>
        %324 = vector.broadcast %c15 : index to vector<16xindex>
        %325 = vector.broadcast %false_1 : i1 to vector<16xi1>
        %326 = vector.broadcast %c1296085422_i64 : i64 to vector<16xi64>
        vector.scatter %alloc_23[%c7, %c12] [%324], %325, %326 : memref<16x16xi64>, vector<16xindex>, vector<16xi1>, vector<16xi64>
        %327 = arith.divsi %out, %in : i32
        %328 = vector.broadcast %false : i1 to vector<10x10xi1>
        %329 = vector.outerproduct %47, %47, %328 {kind = #vector.kind<minsi>} : vector<10xi1>, vector<10xi1>
        %alloc_48 = memref.alloc() : memref<10x14xi1>
        scf.yield %alloc_48 : memref<10x14xi1>
      }
      %303 = vector.reduction <minf>, %45 : vector<16xf32> into f32
      %304 = arith.divsi %in, %c0_i32 : i32
      %305 = vector.reduction <and>, %47 : vector<10xi1> into i1
      %alloca_47 = memref.alloca() : memref<14x16xf16>
      %306 = arith.maxf %cst_7, %cst_6 : f32
      %307 = arith.remf %cst_4, %cst : f16
      %308 = arith.negf %cst : f16
      %309 = affine.apply affine_map<(d0) -> (((d0 * 2) mod 32) * 128 - d0 ceildiv 16)>(%c4)
      %310 = math.cttz %10 : tensor<10x14xi64>
      %311 = math.ctlz %112 : tensor<10x16xi1>
      %312 = vector.insertelement %c16807_i16, %48[%54 : index] : vector<10xi16>
      %313 = vector.create_mask %c4, %80 : vector<14x16xi1>
      %314 = arith.addi %c16807_i16, %c16807_i16 : i16
      %315 = vector.broadcast %c12 : index to vector<9xindex>
      %316 = vector.broadcast %false_1 : i1 to vector<9xi1>
      %317 = vector.broadcast %cst : f16 to vector<9xf16>
      vector.scatter %alloc_15[%c3, %c13] [%315], %316, %317 : memref<10x14xf16>, vector<9xindex>, vector<9xi1>, vector<9xf16>
      %318 = memref.load %alloc_14[%c2, %c14] : memref<14x16xi32>
      linalg.yield %out : i32
    } -> tensor<14x14x14xi32>
    %128 = arith.cmpi eq, %false_3, %false_1 : i1
    %129 = bufferization.to_tensor %alloc_11 : memref<16x9xi16>
    %130 = vector.transpose %30, [0, 1] : vector<10x14xi1> to vector<10x14xi1>
    %131 = arith.addi %true, %false : i1
    %132 = arith.ori %c16807_i16, %c16807_i16 : i16
    %133 = math.atan2 %cst_0, %cst_2 : f16
    affine.store %c16807_i16, %alloc_11[%c7, %c9] : memref<16x9xi16>
    %134 = arith.cmpf uge, %cst_8, %cst_7 : f32
    %135 = vector.multi_reduction <add>, %31, %c0_i32 [0, 1] : vector<10x14xi32> to i32
    %136 = arith.xori %c156554673_i64, %c156554673_i64 : i64
    %alloc_33 = memref.alloc() : memref<14x9xi16>
    %137 = tensor.empty() : tensor<10x9xi16>
    %138 = linalg.matmul ins(%6, %alloc_33 : tensor<10x14xi16>, memref<14x9xi16>) outs(%137 : tensor<10x9xi16>) -> tensor<10x9xi16>
    %139 = math.absi %7 : tensor<16x16xi16>
    %140 = math.log10 %94 : tensor<10x14xf32>
    %141 = arith.cmpi eq, %c189194650_i64, %c1296085422_i64 : i64
    %142 = tensor.empty() : tensor<16x16xi64>
    %143 = vector.flat_transpose %21 {columns = 3 : i32, rows = 3 : i32} : vector<9xi16> -> vector<9xi16>
    %144 = math.ctpop %14 : tensor<14x16xi1>
    %145 = vector.broadcast %false : i1 to vector<10x10xi1>
    %146 = vector.outerproduct %47, %47, %145 {kind = #vector.kind<or>} : vector<10xi1>, vector<10xi1>
    %147 = arith.shrsi %c1296085422_i64, %c1296085422_i64 : i64
    %148 = arith.addi %c1296085422_i64, %c156554673_i64 : i64
    %149 = math.exp2 %15 : tensor<16x9xf32>
    %150 = arith.cmpi sle, %false_1, %extracted : i1
    %151 = index.divu %65, %65
    %152 = tensor.empty() : tensor<10x16xi1>
    %153 = linalg.matmul ins(%5, %14 : tensor<10x14xi1>, tensor<14x16xi1>) outs(%152 : tensor<10x16xi1>) -> tensor<10x16xi1>
    %154 = index.add %44, %41
    %155 = math.rsqrt %reduced : tensor<9xf32>
    %156 = math.sqrt %28 : tensor<16x16xf16>
    %157 = bufferization.clone %alloc_20 : memref<14x16xi1> to memref<14x16xi1>
    %158 = memref.realloc %alloc_24 : memref<9xf32> to memref<14xf32>
    %159 = vector.insert %cst_0, %35 [13] : f16 into vector<14xf16>
    %160 = memref.atomic_rmw assign %cst_7, %alloc_13[%c7, %c13] : (f32, memref<10x14xf32>) -> f32
    %161 = vector.multi_reduction <add>, %48, %c16807_i16 [0] : vector<10xi16> to i16
    %162 = index.add %c6, %86
    %163 = arith.addi %c0_i32, %135 : i32
    %164 = math.copysign %2, %2 : tensor<10x14xf16>
    %165 = math.log10 %15 : tensor<16x9xf32>
    %166 = index.casts %c4 : index to i32
    %167 = index.add %c4, %c11
    %168 = memref.atomic_rmw assign %cst_7, %alloc_13[%c4, %c4] : (f32, memref<10x14xf32>) -> f32
    %169 = math.expm1 %94 : tensor<10x14xf32>
    %false_34 = index.bool.constant false
    %170 = arith.negf %cst_5 : f32
    %171 = vector.insertelement %false, %47[%118 : index] : vector<10xi1>
    %172 = bufferization.to_tensor %72 : memref<16x9xi64>
    %173 = index.casts %118 : index to i32
    %174 = math.copysign %cst_7, %cst_8 : f32
    %175 = index.divu %86, %162
    %176 = vector.load %alloc_19[%c10, %c15] : memref<16x16xi64>, vector<10x14xi64>
    memref.copy %alloc_19, %52 : memref<16x16xi64> to memref<16x16xi64>
    %177 = vector.broadcast %c156554673_i64 : i64 to vector<9xi64>
    vector.transfer_write %177, %72[%c10, %49] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xi64>, memref<16x9xi64>
    %178 = arith.shrsi %c156554673_i64, %c156554673_i64 : i64
    %179 = index.castu %c0 : index to i32
    %180 = vector.bitcast %47 : vector<10xi1> to vector<10xi1>
    %181 = index.maxs %c2, %49
    %182 = arith.cmpi ult, %161, %161 : i16
    %cast_35 = tensor.cast %12 : tensor<16x9xi64> to tensor<?x?xi64>
    %183 = index.maxu %c9, %181
    %extracted_36 = tensor.extract %11[%c6, %c9] : tensor<16x16xi16>
    %184 = arith.negf %cst_7 : f32
    %185 = math.tanh %94 : tensor<10x14xf32>
    %186 = math.expm1 %23 : tensor<f32>
    %187 = affine.min affine_map<(d0, d1, d2, d3) -> (((-(d2 mod 128) + d2) floordiv 16) * 128, d2 mod 128, -(d2 mod 128))>(%c4, %c4, %162, %c11)
    %188 = math.exp2 %cst_6 : f32
    scf.if %extracted {
      %287 = arith.ori %extracted_36, %extracted_36 : i16
      %288 = vector.insert %extracted_36, %143 [3] : i16 into vector<9xi16>
      %289 = vector.load %alloc_13[%c1, %c10] : memref<10x14xf32>, vector<16x16xf32>
      %290 = math.log %2 : tensor<10x14xf16>
      %291 = math.log %2 : tensor<10x14xf16>
      %292 = index.divu %c1, %154
      %293 = math.copysign %15, %15 : tensor<16x9xf32>
      %294 = vector.broadcast %false_1 : i1 to vector<16x16xi1>
      %295 = vector.broadcast %135 : i32 to vector<16x16xi32>
      %296 = vector.gather %94[%c4, %c4] [%295], %294, %289 : tensor<10x14xf32>, vector<16x16xi32>, vector<16x16xi1>, vector<16x16xf32> into vector<16x16xf32>
    } else {
      %287 = math.log2 %23 : tensor<f32>
      %288 = math.log2 %cst_2 : f16
      %289 = vector.multi_reduction <minsi>, %73, %c16807_i16 [0] : vector<9xi16> to i16
      %290 = math.roundeven %cst_7 : f32
      %291 = vector.broadcast %false_1 : i1 to vector<10x10xi1>
      %292 = vector.outerproduct %47, %47, %291 {kind = #vector.kind<mul>} : vector<10xi1>, vector<10xi1>
      %alloc_46 = memref.alloc() : memref<14x14xi16>
      %293 = tensor.empty() : tensor<10x14xi16>
      %294 = linalg.matmul ins(%6, %alloc_46 : tensor<10x14xi16>, memref<14x14xi16>) outs(%293 : tensor<10x14xi16>) -> tensor<10x14xi16>
      %295 = arith.maxf %cst_5, %cst_8 : f32
      %296 = arith.negf %cst_7 : f32
    }
    %189 = vector.broadcast %c156554673_i64 : i64 to vector<9x9xi64>
    %190 = vector.outerproduct %177, %177, %189 {kind = #vector.kind<or>} : vector<9xi64>, vector<9xi64>
    %191 = vector.broadcast %true : i1 to vector<14xi1>
    %dest, %accumulated_value = vector.scan <add>, %30, %191 {inclusive = false, reduction_dim = 0 : i64} : vector<10x14xi1>, vector<14xi1>
    %192 = affine.min affine_map<(d0) -> ((d0 ceildiv 32) mod 64)>(%c3)
    %false_37 = index.bool.constant false
    %193 = arith.shrsi %c1296085422_i64, %c189194650_i64 : i64
    %194 = bufferization.clone %52 : memref<16x16xi64> to memref<16x16xi64>
    %195 = vector.flat_transpose %177 {columns = 3 : i32, rows = 3 : i32} : vector<9xi64> -> vector<9xi64>
    %196 = math.exp2 %23 : tensor<f32>
    %197 = vector.bitcast %177 : vector<9xi64> to vector<9xi64>
    %198 = affine.if affine_set<(d0, d1, d2, d3) : ((d0 * 2) mod 4 >= 0, d0 * 2 + 1 == 0)>(%c14, %c8, %c2, %c4) -> memref<10x14xi1> {
      %287 = arith.subi %true, %false_3 : i1
      %288 = vector.reduction <minui>, %195 : vector<9xi64> into i64
      %inserted_46 = tensor.insert %c1296085422_i64 into %3[%c5, %c12] : tensor<16x16xi64>
      %289 = bufferization.clone %52 : memref<16x16xi64> to memref<16x16xi64>
      %290 = math.roundeven %15 : tensor<16x9xf32>
      %291 = math.copysign %cst_4, %cst_0 : f16
      %292 = memref.load %alloc_18[%c9, %c2] : memref<16x9xi16>
      %293 = vector.bitcast %47 : vector<10xi1> to vector<10xi1>
      %alloc_47 = memref.alloc() : memref<10x14xi1>
      affine.yield %alloc_47 : memref<10x14xi1>
    } else {
      %287 = memref.load %alloc_16[%c10, %c3] : memref<16x9xi16>
      %288 = vector.splat %93 : vector<10x14xindex>
      %289 = arith.muli %161, %161 : i16
      %290 = vector.bitcast %32 : vector<10x14xf16> to vector<10x14xf16>
      %from_elements_46 = tensor.from_elements %extracted_36, %c16807_i16, %161, %c16807_i16, %extracted_36, %161, %161, %extracted_36, %161, %extracted_36, %extracted_36, %161, %extracted_36, %161, %161, %161, %161, %extracted_36, %extracted_36, %extracted_36, %c16807_i16, %161, %extracted_36, %161, %c16807_i16, %161, %c16807_i16, %extracted_36, %161, %c16807_i16, %extracted_36, %c16807_i16, %161, %extracted_36, %extracted_36, %161, %161, %161, %c16807_i16, %161, %extracted_36, %161, %extracted_36, %extracted_36, %161, %extracted_36, %c16807_i16, %161, %161, %c16807_i16, %161, %extracted_36, %extracted_36, %extracted_36, %c16807_i16, %extracted_36, %extracted_36, %161, %161, %c16807_i16, %extracted_36, %161, %extracted_36, %161, %c16807_i16, %161, %extracted_36, %extracted_36, %extracted_36, %extracted_36, %extracted_36, %c16807_i16, %c16807_i16, %161, %extracted_36, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %extracted_36, %extracted_36, %161, %extracted_36, %extracted_36, %extracted_36, %c16807_i16, %161, %161, %extracted_36, %extracted_36, %161, %161, %161, %c16807_i16, %161, %extracted_36, %c16807_i16, %c16807_i16, %c16807_i16, %161, %161, %c16807_i16, %161, %c16807_i16, %extracted_36, %161, %161, %161, %extracted_36, %c16807_i16, %161, %161, %c16807_i16, %c16807_i16, %extracted_36, %extracted_36, %extracted_36, %extracted_36, %extracted_36, %extracted_36, %extracted_36, %c16807_i16, %161, %extracted_36, %extracted_36, %extracted_36, %extracted_36, %extracted_36, %c16807_i16, %extracted_36, %161, %extracted_36, %extracted_36, %161, %extracted_36, %extracted_36, %c16807_i16, %161, %extracted_36, %161, %extracted_36, %extracted_36, %extracted_36, %c16807_i16, %extracted_36, %c16807_i16, %161, %extracted_36, %161, %extracted_36, %extracted_36, %c16807_i16, %161, %c16807_i16, %161, %extracted_36, %extracted_36, %extracted_36, %extracted_36, %161, %161, %c16807_i16, %161, %c16807_i16, %161, %c16807_i16, %c16807_i16, %c16807_i16, %161, %c16807_i16, %c16807_i16, %c16807_i16, %c16807_i16, %161, %c16807_i16, %c16807_i16, %161, %extracted_36, %extracted_36, %c16807_i16, %extracted_36, %161, %c16807_i16, %161, %c16807_i16, %extracted_36, %161, %c16807_i16, %extracted_36, %c16807_i16, %c16807_i16, %c16807_i16, %161, %extracted_36, %161, %c16807_i16, %161, %c16807_i16, %c16807_i16, %extracted_36, %extracted_36, %extracted_36, %extracted_36, %extracted_36, %c16807_i16, %161, %c16807_i16, %161, %extracted_36, %extracted_36, %161, %c16807_i16, %extracted_36, %161, %extracted_36, %c16807_i16, %161, %161, %extracted_36, %extracted_36, %c16807_i16, %extracted_36, %c16807_i16, %extracted_36 : tensor<14x16xi16>
      %291 = vector.transpose %57, [] : vector<i1> to vector<i1>
      %292 = vector.extract_strided_slice %50 {offsets = [1], sizes = [12], strides = [1]} : vector<16x16xi64> to vector<12x16xi64>
      %293 = vector.multi_reduction <minsi>, %47, %extracted [0] : vector<10xi1> to i1
      %alloc_47 = memref.alloc() : memref<10x14xi1>
      affine.yield %alloc_47 : memref<10x14xi1>
    }
    memref.store %c16807_i16, %alloc_12[%c2, %c2] : memref<16x9xi16>
    %199 = index.ceildivs %154, %44
    %200 = tensor.empty() : tensor<14x14x14xi32>
    %201 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%200 : tensor<14x14x14xi32>) {
    ^bb0(%out: i32):
      %287 = tensor.empty() : tensor<14x14x14xi32>
      %288 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%287 : tensor<14x14x14xi32>) {
      ^bb0(%out_49: i32):
        %316 = math.exp %reduced : tensor<9xf32>
        %from_elements_50 = tensor.from_elements %cst_8, %cst_7, %cst_6, %cst_7, %cst_8, %cst_6, %cst_7, %cst_7, %cst_8, %cst_8, %cst_7, %cst_7, %cst_5, %cst_5, %cst_8, %cst_6, %cst_7, %cst_6, %cst_7, %cst_8, %cst_6, %cst_8, %cst_8, %cst_6, %cst_8, %cst_7, %cst_8, %cst_5, %cst_7, %cst_7, %cst_8, %cst_8, %cst_5, %cst_5, %cst_6, %cst_8, %cst_8, %cst_6, %cst_8, %cst_7, %cst_7, %cst_5, %cst_6, %cst_5, %cst_5, %cst_6, %cst_7, %cst_5, %cst_7, %cst_5, %cst_5, %cst_6, %cst_7, %cst_7, %cst_5, %cst_5, %cst_6, %cst_8, %cst_5, %cst_7, %cst_6, %cst_8, %cst_6, %cst_7, %cst_5, %cst_7, %cst_8, %cst_8, %cst_6, %cst_8, %cst_7, %cst_8, %cst_5, %cst_7, %cst_6, %cst_6, %cst_5, %cst_7, %cst_5, %cst_5, %cst_5, %cst_5, %cst_6, %cst_5, %cst_7, %cst_8, %cst_5, %cst_5, %cst_5, %cst_6, %cst_7, %cst_5, %cst_5, %cst_5, %cst_8, %cst_6, %cst_8, %cst_7, %cst_6, %cst_8, %cst_8, %cst_5, %cst_6, %cst_8, %cst_7, %cst_8, %cst_5, %cst_8, %cst_7, %cst_5, %cst_6, %cst_6, %cst_8, %cst_6, %cst_7, %cst_5, %cst_5, %cst_5, %cst_5, %cst_8, %cst_6, %cst_7, %cst_7, %cst_6, %cst_7, %cst_7, %cst_8, %cst_8, %cst_7, %cst_7, %cst_7, %cst_7, %cst_7, %cst_8, %cst_8, %cst_5, %cst_7, %cst_6, %cst_6, %cst_6, %cst_8, %cst_7, %cst_7, %cst_5, %cst_7, %cst_6, %cst_6, %cst_7, %cst_8, %cst_7, %cst_6, %cst_7, %cst_7, %cst_8, %cst_6, %cst_7, %cst_8, %cst_8, %cst_6, %cst_7, %cst_7, %cst_5, %cst_8, %cst_5, %cst_6, %cst_5, %cst_6, %cst_6, %cst_6, %cst_7, %cst_6, %cst_8, %cst_5, %cst_7, %cst_6, %cst_7, %cst_8, %cst_5, %cst_6, %cst_6, %cst_7, %cst_5, %cst_5, %cst_8, %cst_7, %cst_5, %cst_7, %cst_8, %cst_6, %cst_6, %cst_6, %cst_8, %cst_6, %cst_5, %cst_8, %cst_6, %cst_8, %cst_6, %cst_8, %cst_7, %cst_8, %cst_5, %cst_7, %cst_5, %cst_6, %cst_7, %cst_5, %cst_5, %cst_5, %cst_6, %cst_6, %cst_6, %cst_5, %cst_6, %cst_8, %cst_6, %cst_6, %cst_5, %cst_7, %cst_8, %cst_7, %cst_7, %cst_8, %cst_5, %cst_7, %cst_8, %cst_5, %cst_6, %cst_7, %cst_5, %cst_6, %cst_5, %cst_5, %cst_7, %cst_6, %cst_6, %cst_7, %cst_6, %cst_7, %cst_6, %cst_8, %cst_6, %cst_5, %cst_5, %cst_5, %cst_5, %cst_7, %cst_8, %cst_6, %cst_5, %cst_7, %cst_6, %cst_7, %cst_7, %cst_6, %cst_6 : tensor<16x16xf32>
        %317 = affine.min affine_map<(d0, d1, d2, d3) -> (0, (-d3) mod 128)>(%27, %27, %c6, %183)
        %318 = arith.shrsi %c189194650_i64, %c189194650_i64 : i64
        %319 = vector.broadcast %cst_7 : f32 to vector<14x16xf32>
        %320 = vector.fma %319, %319, %319 : vector<14x16xf32>
        %321 = bufferization.to_memref %10 : memref<10x14xi64>
        %322 = index.castu %c4 : index to i32
        %323 = math.ctpop %c16807_i16 : i16
        %324 = arith.shrsi %out_49, %135 : i32
        %325 = arith.subi %c0_i32, %135 : i32
        %326 = math.rsqrt %19 : tensor<9xf32>
        %327 = vector.broadcast %c156554673_i64 : i64 to vector<10xi64>
        %dest_51, %accumulated_value_52 = vector.scan <add>, %176, %327 {inclusive = false, reduction_dim = 1 : i64} : vector<10x14xi64>, vector<10xi64>
        %328 = index.divs %c6, %118
        %329 = math.expm1 %15 : tensor<16x9xf32>
        %330 = index.sizeof
        %331 = math.cos %splat : tensor<16x9xf32>
        %332 = math.atan2 %cst_2, %cst_2 : f16
        %333 = arith.xori %true, %false : i1
        %334 = vector.broadcast %false_3 : i1 to vector<14xi1>
        %335 = vector.insert %334, %30 [1] : vector<14xi1> into vector<10x14xi1>
        %336 = vector.transpose %319, [0, 1] : vector<14x16xf32> to vector<14x16xf32>
        %337 = memref.load %alloc_16[%c10, %c7] : memref<16x9xi16>
        %338 = tensor.empty() : tensor<9x10xi64>
        %339 = tensor.empty() : tensor<16x10xi64>
        %340 = linalg.matmul ins(%172, %338 : tensor<16x9xi64>, tensor<9x10xi64>) outs(%339 : tensor<16x10xi64>) -> tensor<16x10xi64>
        %alloca_53 = memref.alloca() : memref<16x16xf32>
        %inserted_54 = tensor.insert %c189194650_i64 into %8[%c9, %c4] : tensor<16x16xi64>
        %341 = math.tan %cst : f16
        %rank = tensor.rank %14 : tensor<14x16xi1>
        %342 = vector.insert %c16807_i16, %143 [8] : i16 into vector<9xi16>
        %343 = math.copysign %cst_5, %cst_6 : f32
        %344 = memref.realloc %alloc_24 : memref<9xf32> to memref<9xf32>
        %345 = math.exp %cst_7 : f32
        %346 = math.sqrt %from_elements_50 : tensor<16x16xf32>
        %347 = math.ctpop %129 : tensor<16x9xi16>
        linalg.yield %out : i32
      } -> tensor<14x14x14xi32>
      %289 = vector.create_mask %c9, %c6 : vector<16x9xi1>
      %inserted_46 = tensor.insert %extracted into %9[%c2, %c13] : tensor<10x14xi1>
      %290 = arith.subi %c0_i32, %135 : i32
      %291 = vector.insertelement %c156554673_i64, %197[%c1 : index] : vector<9xi64>
      %alloc_47 = memref.alloc() : memref<16x16xi1>
      %292 = index.maxs %c7, %93
      %293 = math.absi %152 : tensor<10x16xi1>
      %294 = math.sqrt %splat : tensor<16x9xf32>
      memref.store %false_1, %157[%c5, %c7] : memref<14x16xi1>
      %295 = arith.remsi %false_34, %true : i1
      %296 = vector.broadcast %99 : index to vector<10xindex>
      vector.scatter %157[%c10, %c7] [%296], %47, %47 : memref<14x16xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
      %297 = math.atan2 %28, %28 : tensor<16x16xf16>
      %298 = math.copysign %15, %splat : tensor<16x9xf32>
      %299 = scf.index_switch %292 -> index 
      case 1 {
        %316 = affine.min affine_map<(d0, d1, d2) -> (d0, -(d0 mod 2) - d2, -d0, -d0 - (d0 mod 2 + 4))>(%151, %86, %99)
        %317 = arith.cmpf ult, %cst_7, %cst_8 : f32
        affine.store %135, %alloc_14[%c3, %c2] : memref<14x16xi32>
        %318 = arith.ori %c1296085422_i64, %c189194650_i64 : i64
        %319 = vector.create_mask %41, %c2 : vector<10x14xi1>
        %320 = memref.atomic_rmw maxu %c189194650_i64, %alloc_21[%c1, %c13] : (i64, memref<14x16xi64>) -> i64
        %321 = math.copysign %28, %28 : tensor<16x16xf16>
        %322 = math.exp2 %cst_7 : f32
        %323 = vector.flat_transpose %47 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
        %324 = vector.broadcast %cst_7 : f32 to vector<16x9xf32>
        %325 = vector.fma %324, %324, %324 : vector<16x9xf32>
        %326 = index.divu %c7, %c9
        %327 = arith.addi %false_1, %false_37 : i1
        %328 = index.add %192, %151
        %329 = vector.broadcast %c16807_i16 : i16 to vector<9x9xi16>
        %330 = vector.outerproduct %73, %21, %329 {kind = #vector.kind<minui>} : vector<9xi16>, vector<9xi16>
        %331 = arith.shrsi %out, %135 : i32
        %332 = math.sqrt %23 : tensor<f32>
        scf.yield %c12 : index
      }
      default {
        %316 = bufferization.clone %alloc_13 : memref<10x14xf32> to memref<10x14xf32>
        %317 = arith.addf %cst_4, %cst_4 : f16
        %318 = index.add %c2, %192
        %319 = vector.load %316[%c4, %c12] : memref<10x14xf32>, vector<10x14xf32>
        %320 = vector.reduction <minui>, %46 : vector<10xi16> into i16
        %321 = vector.extract_strided_slice %45 {offsets = [4], sizes = [10], strides = [1]} : vector<16xf32> to vector<10xf32>
        %322 = bufferization.clone %alloc_24 : memref<9xf32> to memref<9xf32>
        %323 = math.rsqrt %cst_8 : f32
        %324 = index.casts %false_37 : i1 to index
        %325 = arith.subi %c189194650_i64, %c1296085422_i64 : i64
        %326 = math.log10 %94 : tensor<10x14xf32>
        %327 = math.ctpop %161 : i16
        %328 = affine.min affine_map<(d0, d1, d2) -> (d1 + 8, d2 mod 128 - (d1 + 8))>(%c9, %183, %80)
        %329 = index.casts %c156554673_i64 : i64 to index
        %330 = vector.insertelement %false, %180[%162 : index] : vector<10xi1>
        %331 = math.absi %123 : tensor<16x16xi16>
        scf.yield %c14 : index
      }
      %300 = vector.broadcast %161 : i16 to vector<10x10xi16>
      %301 = vector.outerproduct %48, %46, %300 {kind = #vector.kind<minui>} : vector<10xi16>, vector<10xi16>
      %302 = math.cos %cst_7 : f32
      %303 = math.exp2 %28 : tensor<16x16xf16>
      scf.execute_region {
        %316 = index.add %93, %108
        %317 = math.tan %23 : tensor<f32>
        %318 = vector.broadcast %c3 : index to vector<10xindex>
        %319 = vector.broadcast %cst_5 : f32 to vector<10xf32>
        vector.scatter %alloc_24[%c6] [%318], %180, %319 : memref<9xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
        %320 = vector.splat %316 : vector<14x16xindex>
        %321 = math.absi %extracted_36 : i16
        %322 = math.log1p %94 : tensor<10x14xf32>
        %323 = arith.addf %cst_2, %cst : f16
        %324 = math.rsqrt %cst_8 : f32
        %325 = arith.subi %false_34, %extracted : i1
        %326 = vector.broadcast %c156554673_i64 : i64 to vector<16x9xi64>
        %327 = vector.broadcast %out : i32 to vector<16x9xi32>
        %328 = vector.gather %alloc[%c10, %54] [%327], %289, %326 : memref<10x14xi64>, vector<16x9xi32>, vector<16x9xi1>, vector<16x9xi64> into vector<16x9xi64>
        %329 = arith.addf %cst_2, %cst_0 : f16
        %330 = index.castu %false_1 : i1 to index
        %inserted_49 = tensor.insert %cst_8 into %22[] : tensor<f32>
        %331 = arith.minsi %extracted_36, %c16807_i16 : i16
        %332 = arith.maxf %cst_7, %cst_5 : f32
        %333 = vector.splat %c189194650_i64 : vector<14x16xi64>
        scf.yield
      }
      %304 = memref.atomic_rmw addi %c189194650_i64, %alloc_21[%c2, %c9] : (i64, memref<14x16xi64>) -> i64
      %305 = arith.negf %cst_7 : f32
      %306 = arith.maxui %false_37, %false : i1
      %307 = scf.execute_region -> tensor<10x14xf16> {
        %316 = vector.transpose %47, [0] : vector<10xi1> to vector<10xi1>
        %317 = arith.addi %false_1, %false_1 : i1
        bufferization.dealloc_tensor %generated : tensor<?x?xi32>
        %318 = vector.broadcast %cst_8 : f32 to vector<14xf32>
        %319 = vector.broadcast %false_37 : i1 to vector<14xi1>
        %320 = vector.maskedload %alloc_24[%c7], %319, %318 : memref<9xf32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
        %321 = arith.addi %135, %135 : i32
        %322 = math.fma %15, %15, %15 : tensor<16x9xf32>
        %323 = math.cos %cst_2 : f16
        %324 = math.rsqrt %reduced : tensor<9xf32>
        %325 = vector.broadcast %cst_7 : f32 to vector<16x16xf32>
        %326 = vector.broadcast %extracted : i1 to vector<16x16xi1>
        %327 = vector.broadcast %out : i32 to vector<16x16xi32>
        %328 = vector.gather %alloc_13[%c3, %154] [%327], %326, %325 : memref<10x14xf32>, vector<16x16xi32>, vector<16x16xi1>, vector<16x16xf32> into vector<16x16xf32>
        %expanded_49 = tensor.expand_shape %transposed [[0], [1, 2]] : tensor<16x16xi16> into tensor<16x16x1xi16>
        %329 = index.floordivs %c14, %187
        %330 = vector.extract %107[9] : vector<10x14xi1>
        %331 = arith.xori %false_3, %false_37 : i1
        %332 = arith.divui %135, %135 : i32
        %333 = math.tan %19 : tensor<9xf32>
        %334 = math.atan2 %15, %15 : tensor<16x9xf32>
        scf.yield %2 : tensor<10x14xf16>
      }
      %308 = math.powf %cst_6, %cst_6 : f32
      %309 = vector.multi_reduction <mul>, %177, %197 [] : vector<9xi64> to vector<9xi64>
      %alloc_48 = memref.alloc() : memref<10x14xi64>
      memref.copy %alloc, %alloc_48 : memref<10x14xi64> to memref<10x14xi64>
      %310 = index.sizeof
      %311 = math.exp %2 : tensor<10x14xf16>
      %312 = math.ceil %15 : tensor<16x9xf32>
      %313 = arith.cmpf false, %cst_6, %cst_8 : f32
      %expanded = tensor.expand_shape %5 [[0], [1, 2]] : tensor<10x14xi1> into tensor<10x14x1xi1>
      %314 = vector.broadcast %c189194650_i64 : i64 to vector<10xi64>
      %315 = vector.maskedload %alloc_23[%c7, %c8], %180, %314 : memref<16x16xi64>, vector<10xi1>, vector<10xi64> into vector<10xi64>
      linalg.yield %135 : i32
    } -> tensor<14x14x14xi32>
    %202 = vector.transpose %195, [0] : vector<9xi64> to vector<9xi64>
    %alloc_38 = memref.alloc() : memref<9x9xi16>
    %203 = tensor.empty() : tensor<16x9xi16>
    %204 = linalg.matmul ins(%129, %alloc_38 : tensor<16x9xi16>, memref<9x9xi16>) outs(%203 : tensor<16x9xi16>) -> tensor<16x9xi16>
    %205 = arith.divui %extracted_36, %161 : i16
    %alloc_39 = memref.alloc() : memref<f32>
    memref.tensor_store %22, %alloc_39 : memref<f32>
    %206 = vector.multi_reduction <and>, %73, %extracted_36 [0] : vector<9xi16> to i16
    %207 = arith.andi %extracted_36, %161 : i16
    %208 = arith.divsi %false_34, %false_3 : i1
    %209 = arith.shrsi %c0_i32, %135 : i32
    %210 = math.log %22 : tensor<f32>
    %211 = vector.multi_reduction <add>, %177, %c1296085422_i64 [0] : vector<9xi64> to i64
    %212 = bufferization.clone %alloc_15 : memref<10x14xf16> to memref<10x14xf16>
    %213 = math.rsqrt %cst_2 : f16
    %214 = tensor.empty() : tensor<14x14x14xi32>
    %215 = tensor.empty() : tensor<14x14xi32>
    %216 = tensor.empty() : tensor<14xi32>
    %217 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%215, %216, %216 : tensor<14x14xi32>, tensor<14xi32>, tensor<14xi32>) outs(%214 : tensor<14x14x14xi32>) {
    ^bb0(%in: i32, %in_46: i32, %in_47: i32, %out: i32):
      %287 = arith.shrsi %c156554673_i64, %c189194650_i64 : i64
      %288 = vector.gather %157[%181, %c8] [%31], %107, %107 : memref<14x16xi1>, vector<10x14xi32>, vector<10x14xi1>, vector<10x14xi1> into vector<10x14xi1>
      %289 = vector.insertelement %false, %57[] : vector<i1>
      %290 = vector.multi_reduction <maxsi>, %46, %161 [0] : vector<10xi16> to i16
      %291 = memref.realloc %alloc_24 : memref<9xf32> to memref<14xf32>
      %292 = vector.load %62[%c7, %c1] : memref<16x9xi64>, vector<10x14xi64>
      %293 = arith.subi %in_47, %in : i32
      %294 = scf.if %extracted -> (memref<16x16xf32>) {
        %320 = math.atan2 %reduced, %reduced : tensor<9xf32>
        %321 = vector.broadcast %c12 : index to vector<14xindex>
        %322 = vector.broadcast %false_1 : i1 to vector<14xi1>
        %323 = vector.broadcast %cst_5 : f32 to vector<14xf32>
        vector.scatter %alloc_17[%c10, %c0] [%321], %322, %323 : memref<16x9xf32>, vector<14xindex>, vector<14xi1>, vector<14xf32>
        %324 = vector.multi_reduction <maxui>, %46, %290 [0] : vector<10xi16> to i16
        %325 = vector.bitcast %288 : vector<10x14xi1> to vector<10x14xi1>
        %326 = vector.broadcast %false : i1 to vector<9xi1>
        %327 = vector.maskedload %alloc_10[%c2, %c1], %326, %177 : memref<16x9xi64>, vector<9xi1>, vector<9xi64> into vector<9xi64>
        %328 = arith.shrsi %true, %false_3 : i1
        %329 = vector.broadcast %192 : index to vector<14xindex>
        %330 = vector.broadcast %false_37 : i1 to vector<14xi1>
        %331 = vector.broadcast %extracted_36 : i16 to vector<14xi16>
        vector.scatter %alloc_12[%c6, %c5] [%329], %330, %331 : memref<16x9xi16>, vector<14xindex>, vector<14xi1>, vector<14xi16>
        %332 = memref.load %alloc_10[%c13, %c2] : memref<16x9xi64>
        %alloc_52 = memref.alloc() : memref<16x16xf32>
        scf.yield %alloc_52 : memref<16x16xf32>
      } else {
        %320 = bufferization.to_memref %19 : memref<9xf32>
        %321 = arith.remf %cst_2, %cst_0 : f16
        %322 = affine.max affine_map<(d0, d1, d2) -> (-(d0 - d2), d1, d0 - d2, 2)>(%65, %c8, %c8)
        %323 = math.ipowi %true, %false_1 : i1
        %splat_52 = tensor.splat %161 : tensor<16x9xi16>
        %324 = arith.subi %c1296085422_i64, %c156554673_i64 : i64
        %325 = memref.load %119[%c5, %c8] : memref<10x14xf16>
        %rank = tensor.rank %10 : tensor<10x14xi64>
        %alloc_53 = memref.alloc() : memref<16x16xf32>
        scf.yield %alloc_53 : memref<16x16xf32>
      }
      %c451181922_i32 = arith.constant 451181922 : i32
      %295 = tensor.empty() : tensor<16x16xi16>
      %296 = math.exp %cst : f16
      %extracted_48 = tensor.extract %11[%c11, %c7] : tensor<16x16xi16>
      %297 = vector.splat %cst : vector<16x9xf16>
      %298 = math.ipowi %7, %123 : tensor<16x16xi16>
      %299 = affine.min affine_map<(d0, d1) -> ((-d1) mod 64, d0 + d1 * 8 - 1)>(%c11, %c0)
      %300 = arith.shrsi %in_46, %in_46 : i32
      %301 = affine.load %72[%c15, %c3] : memref<16x9xi64>
      %302 = arith.remf %cst, %cst_4 : f16
      %303 = vector.insert %extracted_36, %46 [6] : i16 into vector<10xi16>
      %304 = bufferization.clone %alloc_10 : memref<16x9xi64> to memref<16x9xi64>
      %305 = index.maxs %c0, %41
      %306 = tensor.empty() : tensor<14x14x14xi32>
      %307 = tensor.empty() : tensor<14xi32>
      %308 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%307, %306 : tensor<14xi32>, tensor<14x14x14xi32>) outs(%306 : tensor<14x14x14xi32>) {
      ^bb0(%in_52: i32, %in_53: i32, %out_54: i32):
        %320 = index.add %c14, %70
        %321 = vector.broadcast %cst_8 : f32 to vector<10x14xf32>
        %322 = vector.fma %321, %321, %321 : vector<10x14xf32>
        %inserted_55 = tensor.insert %cst into %2[%c2, %c2] : tensor<10x14xf16>
        %323 = arith.ori %true, %false : i1
        %324 = math.ipowi %in_52, %in_52 : i32
        %325 = math.exp2 %cst_4 : f16
        %326 = vector.shuffle %35, %35 [0, 1, 2, 3, 6, 7, 11, 13, 14, 16, 17, 22, 23, 25, 26, 27] : vector<14xf16>, vector<14xf16>
        affine.store %206, %alloc_11[%c8, %c9] : memref<16x9xi16>
        %327 = arith.maxsi %c0_i32, %out : i32
        vector.print %31 : vector<10x14xi32>
        %alloc_56 = memref.alloc() : memref<10x14xi16>
        %328 = math.log10 %15 : tensor<16x9xf32>
        %329 = vector.bitcast %321 : vector<10x14xf32> to vector<10x14xf32>
        %330 = tensor.empty() : tensor<16x9xi32>
        %331 = math.fpowi %15, %330 : tensor<16x9xf32>, tensor<16x9xi32>
        %332 = math.exp %2 : tensor<10x14xf16>
        %333 = math.log %cst_8 : f32
        %334 = arith.negf %cst_8 : f32
        %alloca_57 = memref.alloca() : memref<16x16xi32>
        %335 = vector.create_mask %c1, %c6 : vector<10x14xi1>
        %336 = vector.broadcast %cst_0 : f16 to vector<16xf16>
        %337 = vector.broadcast %true : i1 to vector<16xi1>
        %338 = vector.maskedload %alloc_15[%c0, %c5], %337, %336 : memref<10x14xf16>, vector<16xi1>, vector<16xf16> into vector<16xf16>
        %339 = vector.bitcast %50 : vector<16x16xi64> to vector<16x16xi64>
        %340 = vector.extract %337[6] : vector<16xi1>
        %341 = arith.shrsi %161, %c16807_i16 : i16
        %342 = bufferization.clone %alloc_13 : memref<10x14xf32> to memref<10x14xf32>
        %343 = memref.load %194[%c11, %c15] : memref<16x16xi64>
        %344 = affine.min affine_map<(d0, d1) -> (d1 - d0 + 16, 0, d1 - d0 - 16, d1)>(%175, %199)
        %345 = vector.broadcast %false_3 : i1 to vector<14xi1>
        %346 = vector.transfer_write %345, %14[%c5, %167] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<14xi1>, tensor<14x16xi1>
        %347 = index.maxs %27, %65
        %348 = memref.load %294[%c11, %c5] : memref<16x16xf32>
        %349 = math.fma %cst_6, %cst_5, %cst_7 : f32
        %350 = arith.subi %135, %in_53 : i32
        %from_elements_58 = tensor.from_elements %cst, %cst_0, %cst_0, %cst_0, %cst_4, %cst_0, %cst, %cst_2, %cst_4, %cst_4, %cst_2, %cst_0, %cst_0, %cst_4, %cst, %cst_0, %cst, %cst_4, %cst_2, %cst, %cst_2, %cst_4, %cst, %cst_4, %cst, %cst_4, %cst_0, %cst_0, %cst, %cst_2, %cst, %cst_0, %cst_0, %cst_2, %cst, %cst_0, %cst, %cst_2, %cst_4, %cst, %cst, %cst_0, %cst, %cst, %cst, %cst, %cst_2, %cst_0, %cst_2, %cst_4, %cst_0, %cst_2, %cst_2, %cst_4, %cst_0, %cst, %cst_4, %cst_4, %cst, %cst_4, %cst_2, %cst_0, %cst_0, %cst_4, %cst_0, %cst_4, %cst, %cst, %cst_0, %cst_4, %cst_4, %cst, %cst, %cst_0, %cst_4, %cst_0, %cst_4, %cst_0, %cst, %cst_0, %cst, %cst, %cst_0, %cst_2, %cst, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst_2, %cst_2, %cst_0, %cst_2, %cst, %cst_4, %cst_4, %cst, %cst, %cst_2, %cst_4, %cst_4, %cst, %cst, %cst_2, %cst_0, %cst, %cst_0, %cst_4, %cst, %cst_4, %cst, %cst_4, %cst_4, %cst_4, %cst_4, %cst_0, %cst_2, %cst_2, %cst_2, %cst_4, %cst, %cst_4, %cst_2, %cst_0, %cst_0, %cst_0, %cst, %cst_2, %cst_4, %cst_0, %cst_4, %cst, %cst_4, %cst_4, %cst_2, %cst_0, %cst_4, %cst, %cst_2, %cst_4, %cst_2, %cst_0, %cst_0 : tensor<16x9xf16>
        linalg.yield %in_53 : i32
      } -> tensor<14x14x14xi32>
      %alloc_49 = memref.alloc() : memref<10x14xi16>
      memref.tensor_store %6, %alloc_49 : memref<10x14xi16>
      %splat_50 = tensor.splat %cst_8 : tensor<16x16xf32>
      %309 = index.divu %49, %c2
      %310 = memref.atomic_rmw assign %cst_5, %alloc_24[%c3] : (f32, memref<9xf32>) -> f32
      %alloc_51 = memref.alloc() : memref<14x16xi16>
      %311 = vector.broadcast %extracted_48 : i16 to vector<14x16xi16>
      %312 = vector.broadcast %extracted : i1 to vector<14x16xi1>
      %313 = vector.broadcast %out : i32 to vector<14x16xi32>
      %314 = vector.gather %alloc_51[%c10, %c8] [%313], %312, %311 : memref<14x16xi16>, vector<14x16xi32>, vector<14x16xi1>, vector<14x16xi16> into vector<14x16xi16>
      scf.execute_region {
        %320 = arith.negf %cst_8 : f32
        %321 = math.log %cst_6 : f32
        %322 = math.ctlz %14 : tensor<14x16xi1>
        %323 = arith.addf %cst_0, %cst : f16
        %324 = math.ceil %2 : tensor<10x14xf16>
        %325 = index.add %67, %67
        %326 = math.rsqrt %23 : tensor<f32>
        %327 = index.floordivs %c6, %181
        %328 = arith.cmpf olt, %cst_4, %cst_2 : f16
        %329 = math.tanh %15 : tensor<16x9xf32>
        %330 = vector.flat_transpose %180 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
        %331 = math.expm1 %cst_5 : f32
        %332 = math.atan2 %15, %splat : tensor<16x9xf32>
        %333 = tensor.empty() : tensor<16x14xi1>
        %334 = tensor.empty() : tensor<10x14xi1>
        %335 = linalg.matmul ins(%112, %333 : tensor<10x16xi1>, tensor<16x14xi1>) outs(%334 : tensor<10x14xi1>) -> tensor<10x14xi1>
        %336 = arith.shli %false_1, %false : i1
        %337 = index.add %c9, %44
        scf.yield
      }
      %315 = arith.subi %false_3, %false_1 : i1
      %316 = arith.addf %cst_4, %cst : f16
      %317 = vector.broadcast %99 : index to vector<16xindex>
      %318 = vector.broadcast %true : i1 to vector<16xi1>
      vector.scatter %alloc_13[%c4, %c7] [%317], %318, %45 : memref<10x14xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
      %319 = arith.cmpf false, %cst_7, %cst_5 : f32
      linalg.yield %in : i32
    } -> tensor<14x14x14xi32>
    %218 = vector.broadcast %cst_7 : f32 to vector<f32>
    vector.transfer_write %218, %alloc_13[%80, %154] : vector<f32>, memref<10x14xf32>
    %219 = vector.broadcast %c0_i32 : i32 to vector<14x16xi32>
    %220 = vector.broadcast %false_37 : i1 to vector<14x16xi1>
    %221 = vector.gather %from_elements[%c9, %118] [%219], %220, %219 : tensor<14x16xi32>, vector<14x16xi32>, vector<14x16xi1>, vector<14x16xi32> into vector<14x16xi32>
    %from_elements_40 = tensor.from_elements %false_37, %false_34, %true, %false_3, %false_37, %false_3, %false_34, %extracted, %false_37, %extracted, %false, %false_34, %true, %false_34, %false_1, %false_1, %false_1, %extracted, %false_3, %extracted, %false_3, %false_37, %false_1, %false_37, %false, %false_34, %false_37, %false_1, %extracted, %extracted, %false_34, %false, %extracted, %false_1, %false_1, %extracted, %true, %false_34, %extracted, %false_1, %false_34, %extracted, %true, %false_1, %false_34, %false_37, %false_3, %false_1, %false_37, %true, %true, %true, %false_1, %false_1, %false, %false_1, %false_3, %false, %false, %false_3, %true, %false_3, %true, %false_3, %true, %false_1, %false_37, %false, %false_3, %false_3, %false_1, %extracted, %false_37, %false_34, %false_1, %false_3, %false_34, %false, %false_34, %false_37, %false_34, %false_1, %false_1, %false_34, %false, %false_37, %false_34, %false_1, %true, %extracted, %false_1, %false_1, %false_3, %false_34, %false_37, %true, %extracted, %false_34, %false_3, %false, %false_34, %false_34, %extracted, %false, %false_37, %false_37, %false_37, %false, %false_34, %true, %false, %extracted, %false_34, %false_3, %false_1, %false, %false_37, %false, %false_37, %false_37, %false_34, %false_37, %false_3, %extracted, %false_1, %false_1, %false_1, %extracted, %true, %extracted, %false, %false_1, %true, %extracted, %false_3, %extracted, %false_1, %false_3, %false_1, %false_34, %false, %false_3, %extracted, %false, %true, %false, %false_1, %false_1, %false_34, %false_34, %false, %true, %false_37, %false_1, %false_1, %extracted, %false_34, %false_3, %extracted, %false_1, %extracted, %false_1, %extracted, %true, %extracted, %true, %false_1, %false_3, %extracted, %false_1, %false_1, %false_34, %false_34, %extracted, %true, %false_1, %false, %false_1, %false_1, %false_3, %false_1, %false_3, %false_34, %false_34, %false, %extracted, %false_37, %false_1, %false_1, %false_37, %true, %extracted, %false_3, %false_37, %false_37, %false_37, %false_34, %false_34, %false, %false, %false, %false_34, %extracted, %true, %false_34, %false_1, %false_3, %false_1, %true, %false_1, %true, %false_34, %true, %true, %false_3, %false, %extracted, %false_37, %true, %extracted, %false_3, %false_34, %true, %false_3 : tensor<14x16xi1>
    memref.store %cst_8, %alloc_17[%c15, %c5] : memref<16x9xf32>
    %222 = vector.splat %183 : vector<16x9xindex>
    %223 = arith.mulf %cst_5, %cst_5 : f32
    %224 = vector.insert %false_34, %180 [1] : i1 into vector<10xi1>
    %225 = vector.bitcast %221 : vector<14x16xi32> to vector<14x16xi32>
    %226 = index.floordivs %93, %44
    affine.store %c16807_i16, %alloc_18[%c15, %c0] : memref<16x9xi16>
    %227 = tensor.empty() : tensor<16x16xi32>
    %228 = linalg.matmul ins(%114, %0 : tensor<16x16xi32>, tensor<16x16xi32>) outs(%227 : tensor<16x16xi32>) -> tensor<16x16xi32>
    %229 = arith.shrui %c1296085422_i64, %211 : i64
    %230 = index.add %c5, %70
    %alloca = memref.alloca() : memref<16x9xf32>
    %231 = vector.bitcast %29 : vector<10x14xf16> to vector<10x14xf16>
    %232 = arith.xori %extracted, %false_34 : i1
    %233 = math.tanh %2 : tensor<10x14xf16>
    %234 = vector.broadcast %93 : index to vector<10xindex>
    %235 = vector.broadcast %c1296085422_i64 : i64 to vector<10xi64>
    vector.scatter %alloc[%c1, %c12] [%234], %47, %235 : memref<10x14xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
    %extracted_41 = tensor.extract %splat[%c9, %c6] : tensor<16x9xf32>
    %236 = memref.atomic_rmw mins %c156554673_i64, %72[%c8, %c2] : (i64, memref<16x9xi64>) -> i64
    %237 = vector.load %alloc_17[%c13, %c8] : memref<16x9xf32>, vector<16x9xf32>
    %238 = arith.remf %cst_4, %cst_4 : f16
    %239 = math.round %15 : tensor<16x9xf32>
    %240 = math.ctpop %from_elements_40 : tensor<14x16xi1>
    %241 = math.ctpop %false_37 : i1
    %242 = arith.divui %false, %extracted : i1
    %243 = memref.atomic_rmw maxu %c189194650_i64, %194[%c10, %c13] : (i64, memref<16x16xi64>) -> i64
    %244 = math.sqrt %cst : f16
    affine.for %arg1 = 0 to 109 {
    }
    %245 = vector.broadcast %extracted_36 : i16 to vector<9x9xi16>
    %246 = vector.outerproduct %21, %73, %245 {kind = #vector.kind<xor>} : vector<9xi16>, vector<9xi16>
    %247 = affine.apply affine_map<(d0, d1) -> ((-(d0 mod 64)) ceildiv 16)>(%199, %c13)
    %248 = index.divu %247, %167
    bufferization.dealloc_tensor %3 : tensor<16x16xi64>
    %inserted_42 = tensor.insert %extracted into %14[%c9, %c14] : tensor<14x16xi1>
    %249 = arith.minsi %211, %211 : i64
    %250 = math.cos %23 : tensor<f32>
    %251 = math.log1p %94 : tensor<10x14xf32>
    %252 = index.divu %c3, %c7
    %253 = index.sub %49, %c5
    %254 = arith.maxf %cst, %cst_0 : f16
    %255 = arith.maxf %cst, %cst_2 : f16
    %256 = vector.broadcast %93 : index to vector<14xindex>
    %257 = vector.broadcast %false_1 : i1 to vector<14xi1>
    %258 = vector.broadcast %cst_8 : f32 to vector<14xf32>
    vector.scatter %89[%c5, %c5] [%256], %257, %258 : memref<16x9xf32>, vector<14xindex>, vector<14xi1>, vector<14xf32>
    memref.copy %alloc_19, %194 : memref<16x16xi64> to memref<16x16xi64>
    %259 = arith.ori %c1296085422_i64, %c1296085422_i64 : i64
    %260 = index.casts %false_3 : i1 to index
    %261 = vector.insert %161, %73 [8] : i16 into vector<9xi16>
    %262 = index.floordivs %c14, %93
    bufferization.dealloc_tensor %2 : tensor<10x14xf16>
    %263 = vector.shuffle %50, %50 [3, 6, 7, 8, 10, 14, 16, 17, 22, 24, 27, 28, 30] : vector<16x16xi64>, vector<16x16xi64>
    %264 = memref.realloc %alloc_24 : memref<9xf32> to memref<14xf32>
    %265 = scf.execute_region -> index {
      %287 = math.cos %reduced : tensor<9xf32>
      %288 = arith.shrsi %c189194650_i64, %c156554673_i64 : i64
      %289 = scf.while (%arg1 = %45) : (vector<16xf32>) -> vector<16xf32> {
        %306 = index.floordivs %80, %c15
        %extracted_46 = tensor.extract %16[%c0, %c6] : tensor<10x14xi1>
        %307 = vector.create_mask %54, %247 : vector<16x16xi1>
        %308 = vector.load %52[%c1, %c7] : memref<16x16xi64>, vector<16x16xi64>
        %309 = memref.atomic_rmw minf %cst_2, %alloc_15[%c6, %c10] : (f16, memref<10x14xf16>) -> f16
        %310 = math.absi %true : i1
        %311 = arith.subi %c0_i32, %c0_i32 : i32
        %312 = vector.multi_reduction <xor>, %143, %extracted_36 [0] : vector<9xi16> to i16
        scf.condition(%true) %45 : vector<16xf32>
      } do {
      ^bb0(%arg1: vector<16xf32>):
        %306 = vector.broadcast %cst_5 : f32 to vector<10x14xf32>
        %307 = vector.fma %306, %306, %306 : vector<10x14xf32>
        %308 = index.divu %99, %c1
        %309 = arith.remsi %false_1, %true : i1
        %310 = math.exp2 %94 : tensor<10x14xf32>
        %311 = vector.flat_transpose %35 {columns = 7 : i32, rows = 2 : i32} : vector<14xf16> -> vector<14xf16>
        %312 = vector.multi_reduction <or>, %177, %c156554673_i64 [0] : vector<9xi64> to i64
        %313 = math.sqrt %cst_6 : f32
        %314 = math.exp2 %19 : tensor<9xf32>
        %315 = arith.divui %135, %c0_i32 : i32
        %316 = math.tan %splat : tensor<16x9xf32>
        %317 = index.add %162, %248
        %318 = vector.extract_strided_slice %176 {offsets = [2], sizes = [1], strides = [1]} : vector<10x14xi64> to vector<1x14xi64>
        %from_elements_46 = tensor.from_elements %c0_i32, %c0_i32, %c0_i32, %135, %c0_i32, %c0_i32, %135, %c0_i32, %135, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %135, %135, %135, %c0_i32, %c0_i32, %135, %135, %c0_i32, %135, %c0_i32, %c0_i32, %c0_i32, %135, %135, %135, %c0_i32, %135, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %135, %135, %c0_i32, %c0_i32, %c0_i32, %135, %c0_i32, %135, %c0_i32, %c0_i32, %135, %c0_i32, %135, %135, %135, %135, %c0_i32, %135, %c0_i32, %135, %135, %135, %135, %135, %135, %135, %c0_i32, %135, %135, %135, %c0_i32, %135, %135, %c0_i32, %c0_i32, %135, %c0_i32, %c0_i32, %c0_i32, %135, %c0_i32, %135, %c0_i32, %c0_i32, %135, %c0_i32, %c0_i32, %135, %c0_i32, %c0_i32, %c0_i32, %135, %135, %c0_i32, %135, %c0_i32, %135, %c0_i32, %c0_i32, %135, %c0_i32, %c0_i32, %135, %c0_i32, %c0_i32, %135, %c0_i32, %135, %135, %135, %c0_i32, %c0_i32, %135, %135, %135, %c0_i32, %c0_i32, %c0_i32, %135, %c0_i32, %c0_i32, %c0_i32, %135, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %135, %135, %135, %c0_i32, %135, %c0_i32, %c0_i32, %135, %135, %c0_i32, %135, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %135, %135, %c0_i32, %c0_i32, %c0_i32, %135, %135, %135, %135, %135, %135, %135, %135, %135, %c0_i32, %135, %135, %135, %135, %c0_i32, %c0_i32, %135, %c0_i32, %c0_i32, %135, %135, %135, %c0_i32, %135, %135, %135, %c0_i32, %c0_i32, %135, %c0_i32, %c0_i32, %c0_i32, %135, %c0_i32, %c0_i32, %135, %135, %135, %c0_i32, %135, %c0_i32, %135, %c0_i32, %c0_i32, %135, %135, %135, %135, %c0_i32, %c0_i32, %c0_i32, %135, %c0_i32, %135, %c0_i32, %c0_i32, %c0_i32, %135, %135, %c0_i32, %135, %135, %c0_i32, %135, %c0_i32, %c0_i32, %135, %c0_i32, %135, %135, %c0_i32, %c0_i32, %135, %135, %c0_i32, %135, %c0_i32, %135, %135, %135 : tensor<14x16xi32>
        %319 = arith.subi %c1296085422_i64, %c189194650_i64 : i64
        %320 = vector.broadcast %65 : index to vector<10xindex>
        vector.scatter %alloc_20[%c9, %c7] [%320], %47, %180 : memref<14x16xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
        %321 = vector.reduction <add>, %180 : vector<10xi1> into i1
        scf.yield %45 : vector<16xf32>
      }
      %290 = math.log %cst_4 : f16
      %291 = vector.broadcast %175 : index to vector<14xindex>
      %292 = vector.broadcast %extracted : i1 to vector<14xi1>
      %293 = vector.broadcast %c16807_i16 : i16 to vector<14xi16>
      vector.scatter %alloc_18[%c11, %c5] [%291], %292, %293 : memref<16x9xi16>, vector<14xindex>, vector<14xi1>, vector<14xi16>
      %294 = vector.transpose %195, [0] : vector<9xi64> to vector<9xi64>
      %295 = math.atan %15 : tensor<16x9xf32>
      %296 = math.ctpop %10 : tensor<10x14xi64>
      %297 = vector.broadcast %206 : i16 to vector<10x14xi16>
      %298 = vector.gather %13[%167, %181] [%31], %107, %297 : tensor<10x14xi16>, vector<10x14xi32>, vector<10x14xi1>, vector<10x14xi16> into vector<10x14xi16>
      %299 = affine.load %alloc_10[%c14, %c2] : memref<16x9xi64>
      %300 = vector.load %119[%c4, %c8] : memref<10x14xf16>, vector<14x16xf16>
      %301 = arith.addf %cst_2, %cst_0 : f16
      %302 = vector.create_mask %44, %183 : vector<14x16xi1>
      %303 = vector.multi_reduction <minf>, %231, %35 [0] : vector<10x14xf16> to vector<14xf16>
      %304 = math.rsqrt %94 : tensor<10x14xf32>
      %305 = vector.insert %206, %143 [7] : i16 into vector<9xi16>
      scf.yield %c9 : index
    }
    %266 = vector.extract %143[1] : vector<9xi16>
    %267 = math.log %cst_5 : f32
    %268 = vector.extract_strided_slice %32 {offsets = [6], sizes = [1], strides = [1]} : vector<10x14xf16> to vector<1x14xf16>
    %269 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 - 16, d2 floordiv 128)>(%c8, %154, %181, %c12)
    %270 = tensor.empty() : tensor<14x14x14xi32>
    %271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%270 : tensor<14x14x14xi32>) outs(%270 : tensor<14x14x14xi32>) {
    ^bb0(%in: i32, %out: i32):
      %287 = affine.load %alloc_17[%c5, %c8] : memref<16x9xf32>
      %288 = arith.remf %cst_2, %cst_4 : f16
      %289 = math.ctlz %8 : tensor<16x16xi64>
      %290 = index.divu %c5, %c6
      %291 = math.absi %false_1 : i1
      %292 = vector.insert %extracted_36, %21 [2] : i16 into vector<9xi16>
      %293 = index.sub %192, %c9
      %294 = arith.ori %false, %false : i1
      %extracted_46 = tensor.extract %from_elements_40[%c5, %c14] : tensor<14x16xi1>
      %295 = math.absi %10 : tensor<10x14xi64>
      %296 = arith.cmpf ole, %cst_6, %cst_8 : f32
      %297 = bufferization.clone %alloc_17 : memref<16x9xf32> to memref<16x9xf32>
      %298 = memref.realloc %alloc_24 : memref<9xf32> to memref<14xf32>
      %299 = vector.bitcast %47 : vector<10xi1> to vector<10xi1>
      %300 = index.ceildivs %80, %167
      %301 = math.ctpop %227 : tensor<16x16xi32>
      %false_47 = index.bool.constant false
      %302 = math.cttz %extracted : i1
      %303 = arith.ori %161, %c16807_i16 : i16
      %expanded = tensor.expand_shape %transposed [[0], [1, 2]] : tensor<16x16xi16> into tensor<16x16x1xi16>
      %true_48 = index.bool.constant true
      %304 = vector.splat %c6 : vector<10x14xindex>
      %305 = index.add %199, %c4
      %306 = arith.xori %135, %c0_i32 : i32
      %307 = bufferization.to_memref %10 : memref<10x14xi64>
      %308 = vector.create_mask %c12, %293 : vector<10x14xi1>
      %309 = arith.divsi %false_3, %false_47 : i1
      %310 = index.castu %extracted_36 : i16 to index
      %311 = index.floordivs %c15, %260
      %312 = vector.flat_transpose %177 {columns = 3 : i32, rows = 3 : i32} : vector<9xi64> -> vector<9xi64>
      %313 = vector.broadcast %211 : i64 to vector<10xi64>
      vector.transfer_write %313, %307[%c5, %49] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xi64>, memref<10x14xi64>
      %314 = math.round %cst_6 : f32
      linalg.yield %out : i32
    } -> tensor<14x14x14xi32>
    %272 = math.atan2 %cst_6, %cst_6 : f32
    %273 = vector.bitcast %29 : vector<10x14xf16> to vector<10x14xf16>
    %274 = vector.extract_strided_slice %45 {offsets = [1], sizes = [10], strides = [1]} : vector<16xf32> to vector<10xf32>
    %275 = vector.broadcast %cst_2 : f16 to vector<16x16xf16>
    %276 = vector.broadcast %false : i1 to vector<16x16xi1>
    %277 = vector.broadcast %c0_i32 : i32 to vector<16x16xi32>
    %278 = vector.gather %28[%230, %226] [%277], %276, %275 : tensor<16x16xf16>, vector<16x16xi32>, vector<16x16xi1>, vector<16x16xf16> into vector<16x16xf16>
    %279 = arith.negf %cst_8 : f32
    %generated_43 = tensor.generate %c1, %252 {
    ^bb0(%arg1: index, %arg2: index):
      %287 = tensor.empty() : tensor<16x9xi16>
      %288 = linalg.matmul ins(%123, %4 : tensor<16x16xi16>, tensor<16x9xi16>) outs(%287 : tensor<16x9xi16>) -> tensor<16x9xi16>
      %289 = memref.load %alloc_21[%c12, %c8] : memref<14x16xi64>
      %290 = vector.reduction <maxui>, %48 : vector<10xi16> into i16
      %291 = memref.load %alloc_11[%c6, %c6] : memref<16x9xi16>
      tensor.yield %c1296085422_i64 : i64
    } : tensor<?x?xi64>
    %280 = arith.subi %135, %c0_i32 : i32
    %281 = arith.shrsi %c16807_i16, %161 : i16
    %282 = math.atan2 %cst_6, %cst_8 : f32
    %283 = tensor.empty() : tensor<16x16xi16>
    %284 = linalg.copy ins(%105 : tensor<16x16xi16>) outs(%283 : tensor<16x16xi16>) -> tensor<16x16xi16>
    %alloc_44 = memref.alloc() : memref<14x10xf16>
    linalg.transpose ins(%alloc_15 : memref<10x14xf16>) outs(%alloc_44 : memref<14x10xf16>) permutation = [1, 0] 
    %alloc_45 = memref.alloc() : memref<i16>
    linalg.reduce ins(%137 : tensor<10x9xi16>) outs(%alloc_45 : memref<i16>) dimensions = [0, 1] 
      (%in: i16, %init: i16) {
        %alloca_46 = memref.alloca() : memref<10x14xi16>
        %287 = tensor.empty() : tensor<10x16xi1>
        %288 = linalg.matmul ins(%9, %14 : tensor<10x14xi1>, tensor<14x16xi1>) outs(%287 : tensor<10x16xi1>) -> tensor<10x16xi1>
        %289 = arith.addi %extracted_36, %extracted_36 : i16
        %290 = tensor.empty() : tensor<16x16xi32>
        %291 = linalg.matmul ins(%227, %227 : tensor<16x16xi32>, tensor<16x16xi32>) outs(%290 : tensor<16x16xi32>) -> tensor<16x16xi32>
        %292 = vector.bitcast %225 : vector<14x16xi32> to vector<14x16xi32>
        %alloc_47 = memref.alloc() : memref<9x16xi16>
        %293 = tensor.empty() : tensor<16x16xi16>
        %294 = linalg.matmul ins(%129, %alloc_47 : tensor<16x9xi16>, memref<9x16xi16>) outs(%293 : tensor<16x16xi16>) -> tensor<16x16xi16>
        %rank = tensor.rank %10 : tensor<10x14xi64>
        %295 = vector.insert %35, %32 [5] : vector<14xf16> into vector<10x14xf16>
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %285 = scf.parallel (%arg1, %arg2) = (%c10, %80) to (%41, %265) step (%c3, %c6) init (%alloc_44) -> memref<14x10xf16> {
      %287 = arith.subi %false_1, %true : i1
      %288 = index.maxu %187, %c2
      %289 = vector.reduction <maxf>, %45 : vector<16xf32> into f32
      %290 = vector.splat %206 : vector<16x16xi16>
      %291 = math.log2 %cst : f16
      %292 = math.log %23 : tensor<f32>
      %293 = math.floor %2 : tensor<10x14xf16>
      %294 = memref.realloc %alloc_24 : memref<9xf32> to memref<10xf32>
      affine.store %extracted, %157[%c12, %c1] : memref<14x16xi1>
      %295 = index.floordivs %c14, %252
      %296 = vector.extract %221[0] : vector<14x16xi32>
      %expanded = tensor.expand_shape %14 [[0], [1, 2]] : tensor<14x16xi1> into tensor<14x16x1xi1>
      %297 = math.tan %15 : tensor<16x9xf32>
      %298 = vector.broadcast %extracted_41 : f32 to vector<16x9xf32>
      %299 = vector.fma %298, %298, %298 : vector<16x9xf32>
      %300 = vector.insertelement %extracted, %180[%108 : index] : vector<10xi1>
      %true_46 = index.bool.constant true
      %alloc_47 = memref.alloc() : memref<14x10xf16>
      scf.reduce(%alloc_47)  : memref<14x10xf16> {
      ^bb0(%arg3: memref<14x10xf16>, %arg4: memref<14x10xf16>):
        %301 = math.exp2 %splat : tensor<16x9xf32>
        %302 = math.absi %from_elements_40 : tensor<14x16xi1>
        %303 = index.casts %extracted_36 : i16 to index
        %304 = vector.broadcast %extracted_41 : f32 to vector<9xf32>
        %305 = vector.broadcast %false_3 : i1 to vector<9xi1>
        %306 = vector.maskedload %alloc_13[%c1, %c3], %305, %304 : memref<10x14xf32>, vector<9xi1>, vector<9xf32> into vector<9xf32>
        bufferization.dealloc_tensor %8 : tensor<16x16xi64>
        %from_elements_48 = tensor.from_elements %c1296085422_i64, %211, %c189194650_i64, %c189194650_i64, %c189194650_i64, %c1296085422_i64, %211, %c189194650_i64, %c156554673_i64, %c189194650_i64, %c1296085422_i64, %c189194650_i64, %c189194650_i64, %c1296085422_i64, %211, %c1296085422_i64, %c1296085422_i64, %c156554673_i64, %211, %c189194650_i64, %c1296085422_i64, %c1296085422_i64, %c189194650_i64, %c156554673_i64, %c189194650_i64, %c189194650_i64, %c156554673_i64, %c156554673_i64, %211, %c156554673_i64, %c189194650_i64, %211, %211, %c189194650_i64, %211, %c156554673_i64, %c156554673_i64, %c156554673_i64, %c189194650_i64, %c1296085422_i64, %211, %211, %c156554673_i64, %211, %c1296085422_i64, %211, %c1296085422_i64, %211, %c189194650_i64, %211, %c189194650_i64, %c1296085422_i64, %c1296085422_i64, %c1296085422_i64, %c189194650_i64, %211, %c189194650_i64, %c1296085422_i64, %c189194650_i64, %211, %c156554673_i64, %211, %c156554673_i64, %c189194650_i64, %c1296085422_i64, %c156554673_i64, %c156554673_i64, %c189194650_i64, %211, %c1296085422_i64, %c1296085422_i64, %211, %211, %211, %c1296085422_i64, %c1296085422_i64, %c156554673_i64, %c189194650_i64, %211, %211, %c1296085422_i64, %c156554673_i64, %c189194650_i64, %c156554673_i64, %c1296085422_i64, %211, %c189194650_i64, %c189194650_i64, %c189194650_i64, %211, %211, %c156554673_i64, %c1296085422_i64, %c156554673_i64, %211, %c1296085422_i64, %211, %211, %211, %211, %c156554673_i64, %c189194650_i64, %c156554673_i64, %c1296085422_i64, %c189194650_i64, %c189194650_i64, %c1296085422_i64, %c1296085422_i64, %c1296085422_i64, %c189194650_i64, %c1296085422_i64, %c189194650_i64, %c156554673_i64, %c189194650_i64, %c156554673_i64, %211, %211, %211, %211, %c1296085422_i64, %c1296085422_i64, %211, %c189194650_i64, %c156554673_i64, %c189194650_i64, %c156554673_i64, %c189194650_i64, %c156554673_i64, %211, %c189194650_i64, %211, %c156554673_i64, %211, %c1296085422_i64, %c156554673_i64, %c156554673_i64, %c189194650_i64, %211, %c156554673_i64, %211, %c1296085422_i64, %c189194650_i64, %c189194650_i64, %c189194650_i64, %c156554673_i64, %c1296085422_i64, %c1296085422_i64, %c1296085422_i64, %c1296085422_i64, %211, %c1296085422_i64, %c189194650_i64, %211, %211, %c156554673_i64, %c189194650_i64, %c189194650_i64, %c1296085422_i64, %211, %211, %211, %211, %c189194650_i64, %c1296085422_i64, %211, %c156554673_i64, %c156554673_i64, %211, %211, %211, %c1296085422_i64, %c156554673_i64, %c189194650_i64, %c156554673_i64, %c156554673_i64, %c189194650_i64, %c156554673_i64, %c156554673_i64, %c189194650_i64, %c1296085422_i64, %c189194650_i64, %c189194650_i64, %211, %c189194650_i64, %c156554673_i64, %c1296085422_i64, %211, %c1296085422_i64, %211, %211, %c1296085422_i64, %211, %211, %211, %c156554673_i64, %211, %c1296085422_i64, %c189194650_i64, %c156554673_i64, %c189194650_i64, %c189194650_i64, %c189194650_i64, %c156554673_i64, %c189194650_i64, %c156554673_i64, %211, %211, %c189194650_i64, %c1296085422_i64, %c156554673_i64, %c1296085422_i64, %c156554673_i64, %c1296085422_i64, %c189194650_i64, %211, %c189194650_i64, %211, %c189194650_i64, %211, %211, %c189194650_i64, %c1296085422_i64, %c156554673_i64, %c156554673_i64, %c1296085422_i64, %211, %c156554673_i64, %c1296085422_i64, %c189194650_i64, %211, %c156554673_i64, %c189194650_i64, %c1296085422_i64, %211, %c156554673_i64, %211, %c1296085422_i64, %c1296085422_i64, %c156554673_i64, %211, %c189194650_i64, %211, %c189194650_i64, %211, %c156554673_i64, %c1296085422_i64, %211, %211, %211, %c156554673_i64, %c189194650_i64, %c189194650_i64, %c156554673_i64, %c1296085422_i64, %c1296085422_i64, %c1296085422_i64 : tensor<16x16xi64>
        %307 = vector.broadcast %cst_0 : f16 to vector<14x14xf16>
        %308 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %29, %231, %307 : vector<10x14xf16>, vector<10x14xf16> into vector<14x14xf16>
        %309 = vector.insert %296, %219 [7] : vector<16xi32> into vector<14x16xi32>
        %alloc_49 = memref.alloc() : memref<14x10xf16>
        scf.reduce.return %alloc_49 : memref<14x10xf16>
      }
      scf.yield
    }
    %286 = affine.vector_load %alloc_22[%27, %265] : memref<16x9xi16>, vector<16xi16>
    affine.vector_store %48, %alloc_12[%262, %162] : memref<16x9xi16>, vector<10xi16>
    vector.print %21 : vector<9xi16>
    vector.print %29 : vector<10x14xf16>
    vector.print %30 : vector<10x14xi1>
    vector.print %31 : vector<10x14xi32>
    vector.print %32 : vector<10x14xf16>
    vector.print %35 : vector<14xf16>
    vector.print %45 : vector<16xf32>
    vector.print %46 : vector<10xi16>
    vector.print %47 : vector<10xi1>
    vector.print %48 : vector<10xi16>
    vector.print %50 : vector<16x16xi64>
    vector.print %57 : vector<i1>
    vector.print %73 : vector<9xi16>
    vector.print %107 : vector<10x14xi1>
    vector.print %143 : vector<9xi16>
    vector.print %176 : vector<10x14xi64>
    vector.print %177 : vector<9xi64>
    vector.print %180 : vector<10xi1>
    vector.print %195 : vector<9xi64>
    vector.print %197 : vector<9xi64>
    vector.print %218 : vector<f32>
    vector.print %219 : vector<14x16xi32>
    vector.print %220 : vector<14x16xi1>
    vector.print %221 : vector<14x16xi32>
    vector.print %225 : vector<14x16xi32>
    vector.print %231 : vector<10x14xf16>
    vector.print %237 : vector<16x9xf32>
    vector.print %268 : vector<1x14xf16>
    vector.print %273 : vector<10x14xf16>
    vector.print %274 : vector<10xf32>
    vector.print %275 : vector<16x16xf16>
    vector.print %276 : vector<16x16xi1>
    vector.print %277 : vector<16x16xi32>
    vector.print %278 : vector<16x16xf16>
    vector.print %286 : vector<16xi16>
    vector.print %cst : f16
    vector.print %cst_0 : f16
    vector.print %c16807_i16 : i16
    vector.print %c156554673_i64 : i64
    vector.print %false : i1
    vector.print %false_1 : i1
    vector.print %true : i1
    vector.print %cst_2 : f16
    vector.print %false_3 : i1
    vector.print %cst_4 : f16
    vector.print %cst_5 : f32
    vector.print %c1296085422_i64 : i64
    vector.print %cst_6 : f32
    vector.print %c189194650_i64 : i64
    vector.print %cst_7 : f32
    vector.print %cst_8 : f32
    vector.print %c0_i32 : i32
    vector.print %extracted : i1
    vector.print %135 : i32
    vector.print %161 : i16
    vector.print %false_34 : i1
    vector.print %extracted_36 : i16
    vector.print %false_37 : i1
    vector.print %206 : i16
    vector.print %211 : i64
    vector.print %extracted_41 : f32
    return
  }
}
