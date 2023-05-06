module {
  func.func nested @func1(%arg0: i32, %arg1: index) {
    %cst = arith.constant 1.74501542E+9 : f32
    %false = arith.constant false
    %false_0 = arith.constant false
    %c27303_i16 = arith.constant 27303 : i16
    %c131246616_i32 = arith.constant 131246616 : i32
    %c1289410718_i64 = arith.constant 1289410718 : i64
    %cst_1 = arith.constant 5.344000e+04 : f16
    %cst_2 = arith.constant 3.884800e+04 : f16
    %c351828036_i64 = arith.constant 351828036 : i64
    %c1402345042_i64 = arith.constant 1402345042 : i64
    %c-19390_i16 = arith.constant -19390 : i16
    %c1003442951_i64 = arith.constant 1003442951 : i64
    %c32441890_i64 = arith.constant 32441890 : i64
    %c1298104246_i64 = arith.constant 1298104246 : i64
    %cst_3 = arith.constant 0x4E0AF3C1 : f32
    %c-178_i16 = arith.constant -178 : i16
    %0 = tensor.empty() : tensor<1x12x4xi64>
    %1 = tensor.empty() : tensor<1xi32>
    %2 = tensor.empty() : tensor<1x12x4xi1>
    %3 = tensor.empty() : tensor<1x12x4xi16>
    %4 = tensor.empty() : tensor<1x12x4xi16>
    %5 = tensor.empty() : tensor<1xi64>
    %6 = tensor.empty() : tensor<1x12xi32>
    %7 = tensor.empty() : tensor<1xi64>
    %8 = tensor.empty() : tensor<1x12xf16>
    %9 = tensor.empty() : tensor<1xf16>
    %10 = tensor.empty() : tensor<1x12x4xf32>
    %11 = tensor.empty() : tensor<1xi1>
    %12 = tensor.empty() : tensor<4x1xi1>
    %13 = tensor.empty() : tensor<1xf32>
    %14 = tensor.empty() : tensor<1xi64>
    %15 = tensor.empty() : tensor<1xf16>
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
    %alloc = memref.alloc() : memref<1x12xi16>
    %alloc_4 = memref.alloc() : memref<1x12x4xi16>
    %alloc_5 = memref.alloc() : memref<1x12xf32>
    %alloc_6 = memref.alloc() : memref<1xf32>
    %alloc_7 = memref.alloc() : memref<4x1xf32>
    %alloc_8 = memref.alloc() : memref<1x12xf16>
    %alloc_9 = memref.alloc() : memref<4x1xi32>
    %alloc_10 = memref.alloc() : memref<1xi16>
    %alloc_11 = memref.alloc() : memref<1xi32>
    %alloc_12 = memref.alloc() : memref<1xi16>
    %alloc_13 = memref.alloc() : memref<4x1xi16>
    %alloc_14 = memref.alloc() : memref<1x12xf32>
    %alloc_15 = memref.alloc() : memref<1x12x4xi1>
    %alloc_16 = memref.alloc() : memref<4x1xi64>
    %alloc_17 = memref.alloc() : memref<1xi32>
    %alloc_18 = memref.alloc() : memref<4x1xi16>
    %16 = tensor.empty() : tensor<1xi1>
    %17 = linalg.copy ins(%11 : tensor<1xi1>) outs(%16 : tensor<1xi1>) -> tensor<1xi1>
    %18 = tensor.empty() : tensor<1xi64>
    %transposed = linalg.transpose ins(%7 : tensor<1xi64>) outs(%18 : tensor<1xi64>) permutation = [0] 
    %19 = tensor.empty() : tensor<i16>
    %reduced = linalg.reduce ins(%alloc_10 : memref<1xi16>) outs(%19 : tensor<i16>) dimensions = [0] 
      (%in: i16, %init: i16) {
        %270 = arith.shrsi %c1289410718_i64, %c1298104246_i64 : i64
        memref.tensor_store %13, %alloc_6 : memref<1xf32>
        %271 = arith.remf %cst_1, %cst_1 : f16
        %272 = math.log10 %8 : tensor<1x12xf16>
        %273 = arith.mulf %cst_1, %cst_2 : f16
        %274 = math.ctpop %1 : tensor<1xi32>
        %alloc_33 = memref.alloc() : memref<1x4xi1>
        %275 = tensor.empty() : tensor<4x4xi1>
        %276 = linalg.matmul ins(%12, %alloc_33 : tensor<4x1xi1>, memref<1x4xi1>) outs(%275 : tensor<4x4xi1>) -> tensor<4x4xi1>
        %277 = vector.broadcast %c131246616_i32 : i32 to vector<1x12xi32>
        vector.print %277 : vector<1x12xi32>
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %20 = scf.parallel (%arg2, %arg3) = (%c15, %c12) to (%c4, %c6) step (%c13, %c13) init (%alloc_6) -> memref<1xf32> {
      %false_33 = index.bool.constant false
      %270 = tensor.empty(%c13) : tensor<1x12x?xi64>
      %271 = arith.mulf %cst_3, %cst_3 : f32
      %272 = math.exp %13 : tensor<1xf32>
      affine.for %arg4 = 0 to 88 {
      }
      %rank_34 = tensor.rank %6 : tensor<1x12xi32>
      %273 = vector.broadcast %false_0 : i1 to vector<12xi1>
      %274 = vector.broadcast %false : i1 to vector<12x12xi1>
      %275 = vector.outerproduct %273, %273, %274 {kind = #vector.kind<maxui>} : vector<12xi1>, vector<12xi1>
      %extracted_35 = tensor.extract %14[%c0] : tensor<1xi64>
      %276 = vector.broadcast %c131246616_i32 : i32 to vector<10xi32>
      %277 = vector.broadcast %false_0 : i1 to vector<10xi1>
      %278 = vector.maskedload %alloc_11[%c0], %277, %276 : memref<1xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
      %279 = vector.flat_transpose %278 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
      %280 = tensor.empty() : tensor<1x12xf32>
      %mapped_36 = linalg.map ins(%alloc_14 : memref<1x12xf32>) outs(%280 : tensor<1x12xf32>)
        (%in: f32) {
          %285 = arith.divf %in, %cst : f32
          %286 = index.maxs %c9, %c6
          %287 = math.atan %cst_2 : f16
          %288 = index.divu %286, %c10
          %289 = vector.bitcast %279 : vector<10xi32> to vector<10xi32>
          bufferization.dealloc_tensor %10 : tensor<1x12x4xf32>
          %290 = math.fma %cst_1, %cst_2, %cst_1 : f16
          %291 = math.copysign %13, %13 : tensor<1xf32>
          %from_elements_38 = tensor.from_elements %c131246616_i32 : tensor<1xi32>
          %292 = math.ceil %8 : tensor<1x12xf16>
          %293 = arith.minsi %false_0, %false_33 : i1
          %294 = vector.broadcast %c131246616_i32 : i32 to vector<10x10xi32>
          %295 = vector.outerproduct %279, %278, %294 {kind = #vector.kind<add>} : vector<10xi32>, vector<10xi32>
          %296 = vector.multi_reduction <xor>, %289, %c131246616_i32 [0] : vector<10xi32> to i32
          %297 = arith.shrsi %extracted_35, %extracted_35 : i64
          %expanded = tensor.expand_shape %7 [[0, 1]] : tensor<1xi64> into tensor<1x1xi64>
          %298 = arith.maxui %false_0, %false : i1
          %299 = arith.mulf %in, %in : f32
          %300 = index.casts %c4 : index to i32
          %301 = math.exp %13 : tensor<1xf32>
          %302 = arith.maxui %false, %false_0 : i1
          %303 = arith.divsi %c1289410718_i64, %c1402345042_i64 : i64
          %304 = bufferization.clone %alloc_18 : memref<4x1xi16> to memref<4x1xi16>
          %305 = index.maxu %c11, %c6
          memref.assume_alignment %alloc_9, 16 : memref<4x1xi32>
          %306 = affine.apply affine_map<(d0, d1) -> (d0 floordiv 16)>(%c6, %c3)
          vector.print %277 : vector<10xi1>
          %from_elements_39 = tensor.from_elements %c1298104246_i64 : tensor<1xi64>
          %307 = vector.insert %c131246616_i32, %289 [4] : i32 into vector<10xi32>
          %308 = math.round %cst_2 : f16
          %309 = arith.negf %in : f32
          %310 = index.mul %c15, %c0
          %311 = math.ipowi %7, %5 : tensor<1xi64>
          %cst_40 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_40 : f32
        }
      memref.assume_alignment %alloc_8, 16 : memref<1x12xf16>
      %281 = index.mul %c1, %c11
      %282 = arith.divui %c27303_i16, %c27303_i16 : i16
      %283 = vector.broadcast %c1003442951_i64 : i64 to vector<1xi64>
      %284 = index.maxu %c11, %c8
      %alloc_37 = memref.alloc() : memref<1xf32>
      scf.reduce(%alloc_37)  : memref<1xf32> {
      ^bb0(%arg4: memref<1xf32>, %arg5: memref<1xf32>):
        %285 = bufferization.clone %alloc_37 : memref<1xf32> to memref<1xf32>
        %286 = math.atan2 %cst_3, %cst_3 : f32
        %287 = math.round %cst_3 : f32
        %288 = vector.broadcast %c131246616_i32 : i32 to vector<10x10xi32>
        %289 = vector.outerproduct %278, %276, %288 {kind = #vector.kind<maxsi>} : vector<10xi32>, vector<10xi32>
        %290 = index.floordivs %c7, %c7
        %291 = arith.mulf %cst_3, %cst_3 : f32
        %292 = bufferization.clone %alloc_4 : memref<1x12x4xi16> to memref<1x12x4xi16>
        %293 = bufferization.to_memref %11 : memref<1xi1>
        %alloc_38 = memref.alloc() : memref<1xf32>
        scf.reduce.return %alloc_38 : memref<1xf32>
      }
      scf.yield
    }
    %21 = affine.vector_load %alloc_5[%c3, %c5] : memref<1x12xf32>, vector<4xf32>
    affine.vector_store %21, %alloc_14[%c2, %c13] : memref<1x12xf32>, vector<4xf32>
    %22 = tensor.empty() : tensor<1xi64>
    %23 = tensor.empty() : tensor<i64>
    %24 = linalg.dot ins(%18, %22 : tensor<1xi64>, tensor<1xi64>) outs(%23 : tensor<i64>) -> tensor<i64>
    %25 = arith.minsi %c-19390_i16, %c27303_i16 : i16
    %26 = arith.muli %c-178_i16, %c-178_i16 : i16
    %27 = math.copysign %13, %13 : tensor<1xf32>
    %28 = vector.transpose %21, [0] : vector<4xf32> to vector<4xf32>
    %29 = math.log1p %cst_2 : f16
    %30 = affine.for %arg2 = 0 to 56 iter_args(%arg3 = %c351828036_i64) -> (i64) {
      affine.yield %c1402345042_i64 : i64
    }
    %31 = math.tanh %cst_1 : f16
    %32 = scf.while (%arg2 = %cst_3) : (f32) -> f32 {
      %270 = vector.broadcast %c32441890_i64 : i64 to vector<i64>
      %271 = vector.transfer_write %270, %5[%c0] : vector<i64>, tensor<1xi64>
      %272 = math.ceil %9 : tensor<1xf16>
      %273 = math.floor %15 : tensor<1xf16>
      %274 = math.round %cst_1 : f16
      %275 = math.ceil %cst : f32
      %276 = math.cos %cst_2 : f16
      %cst_33 = arith.constant 1.000000e+00 : f32
      %cst_34 = arith.constant 0.000000e+00 : f32
      %277 = vector.transfer_read %alloc_14[%c9, %c14], %cst_34 : memref<1x12xf32>, vector<f32>
      %278 = math.powf %8, %8 : tensor<1x12xf16>
      scf.condition(%false_0) %cst_3 : f32
    } do {
    ^bb0(%arg2: f32):
      %270 = tensor.empty() : tensor<1x12xi64>
      %alloc_33 = memref.alloc() : memref<12x1xi1>
      %271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%16, %alloc_33 : tensor<1xi1>, memref<12x1xi1>) outs(%2 : tensor<1x12x4xi1>) {
      ^bb0(%in: i1, %in_34: i1, %out: i1):
        %rank_35 = tensor.rank %22 : tensor<1xi64>
        %285 = math.log10 %cst_3 : f32
        %286 = math.fpowi %cst_3, %c131246616_i32 : f32, i32
        bufferization.dealloc_tensor %11 : tensor<1xi1>
        %true_36 = index.bool.constant true
        %287 = arith.xori %out, %true_36 : i1
        %288 = arith.maxui %out, %in_34 : i1
        %289 = vector.matrix_multiply %21, %21 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %from_elements_37 = tensor.from_elements %true_36 : tensor<1xi1>
        %290 = arith.ori %false_0, %in : i1
        %291 = arith.minsi %false, %false : i1
        %292 = arith.negf %arg2 : f32
        %293 = arith.maxui %c27303_i16, %c-19390_i16 : i16
        %294 = math.log10 %8 : tensor<1x12xf16>
        %295 = arith.addi %false_0, %true_36 : i1
        %false_38 = arith.constant false
        %296 = tensor.empty() : tensor<1x12x4xi32>
        %297 = vector.broadcast %c131246616_i32 : i32 to vector<1xi32>
        %298 = vector.broadcast %in_34 : i1 to vector<1xi1>
        %299 = vector.gather %296[%c12, %c7, %c11] [%297], %298, %297 : tensor<1x12x4xi32>, vector<1xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
        %300 = arith.divui %c-178_i16, %c-19390_i16 : i16
        %301 = arith.remf %cst, %arg2 : f32
        %302 = math.tanh %cst_3 : f32
        %303 = bufferization.clone %alloc_6 : memref<1xf32> to memref<1xf32>
        %304 = vector.bitcast %299 : vector<1xi32> to vector<1xi32>
        %305 = arith.remf %cst, %cst_3 : f32
        %306 = index.divu %c11, %c12
        %307 = index.ceildivs %c3, %c8
        %308 = affine.apply affine_map<(d0, d1) -> (d1 - 128)>(%c8, %rank_35)
        %309 = index.sub %c4, %c6
        %310 = vector.create_mask %306, %c0 : vector<4x1xi1>
        %311 = arith.xori %in_34, %true_36 : i1
        %from_elements_39 = tensor.from_elements %cst_3, %cst, %cst, %cst_3, %arg2, %cst, %cst, %cst, %cst_3, %arg2, %cst, %arg2 : tensor<1x12xf32>
        %312 = math.ctpop %c32441890_i64 : i64
        %313 = index.divs %c6, %c13
        linalg.yield %false : i1
      } -> tensor<1x12x4xi1>
      %272 = vector.shuffle %21, %21 [2, 3, 4, 5, 6] : vector<4xf32>, vector<4xf32>
      %273 = arith.subi %c1298104246_i64, %c32441890_i64 : i64
      %274 = vector.extract_strided_slice %21 {offsets = [1], sizes = [3], strides = [1]} : vector<4xf32> to vector<3xf32>
      %275 = vector.broadcast %cst : f32 to vector<4x1xf32>
      %276 = math.cttz %5 : tensor<1xi64>
      memref.store %cst, %alloc_14[%c0, %c1] : memref<1x12xf32>
      %277 = arith.ceildivsi %c27303_i16, %c27303_i16 : i16
      %278 = math.ctlz %4 : tensor<1x12x4xi16>
      %279 = index.ceildivu %c9, %c3
      memref.store %c-19390_i16, %alloc_4[%c0, %c10, %c2] : memref<1x12x4xi16>
      %280 = arith.remsi %c27303_i16, %c27303_i16 : i16
      %281 = math.cttz %transposed : tensor<1xi64>
      %282 = vector.broadcast %false : i1 to vector<10x10xi1>
      %283 = vector.transfer_write %282, %2[%c9, %c15, %c5] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<10x10xi1>, tensor<1x12x4xi1>
      %284 = index.maxu %c6, %c10
      scf.yield %cst_3 : f32
    }
    %33 = math.atan %13 : tensor<1xf32>
    %collapsed = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<1x12x4xi64> into tensor<12x4xi64>
    %34 = affine.load %alloc_14[%c7, %c5] : memref<1x12xf32>
    memref.copy %alloc_18, %alloc_13 : memref<4x1xi16> to memref<4x1xi16>
    %35 = math.tan %10 : tensor<1x12x4xf32>
    %36 = vector.reduction <mul>, %21 : vector<4xf32> into f32
    %37 = arith.remsi %c1003442951_i64, %c351828036_i64 : i64
    %38 = math.cttz %2 : tensor<1x12x4xi1>
    %39 = arith.remsi %c1402345042_i64, %c1298104246_i64 : i64
    %40 = math.exp2 %9 : tensor<1xf16>
    %c0_i16 = arith.constant 0 : i16
    %41 = vector.transfer_read %alloc[%c0, %c11], %c0_i16 : memref<1x12xi16>, vector<10xi16>
    %42 = vector.broadcast %c6 : index to vector<1xindex>
    %43 = vector.broadcast %false : i1 to vector<1xi1>
    %44 = vector.broadcast %c27303_i16 : i16 to vector<1xi16>
    vector.scatter %alloc_4[%c0, %c9, %c3] [%42], %43, %44 : memref<1x12x4xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
    %45 = affine.min affine_map<(d0, d1) -> (d0 * -8, d0 + d1 + 128, d0)>(%c12, %c0)
    %rank = tensor.rank %12 : tensor<4x1xi1>
    %46 = arith.ceildivsi %false, %false : i1
    %47 = scf.while (%arg2 = %alloc_6) : (memref<1xf32>) -> memref<1xf32> {
      %270 = tensor.empty() : tensor<1xi64>
      %271 = index.casts %c3 : index to i32
      %272 = math.exp2 %8 : tensor<1x12xf16>
      %273 = arith.minui %c351828036_i64, %c351828036_i64 : i64
      %274 = memref.realloc %alloc_17 : memref<1xi32> to memref<12xi32>
      %275 = arith.negf %cst : f32
      %276 = arith.minsi %c-19390_i16, %c27303_i16 : i16
      %277 = vector.create_mask %c9, %c15 : vector<4x1xi1>
      scf.condition(%false_0) %alloc_6 : memref<1xf32>
    } do {
    ^bb0(%arg2: memref<1xf32>):
      %270 = math.ipowi %2, %2 : tensor<1x12x4xi1>
      %271 = math.absi %1 : tensor<1xi32>
      memref.assume_alignment %alloc_9, 8 : memref<4x1xi32>
      %extracted_33 = tensor.extract %16[%c0] : tensor<1xi1>
      %272 = affine.load %alloc_12[%c4] : memref<1xi16>
      %273 = index.sub %c10, %c3
      %274 = arith.mulf %cst_2, %cst_2 : f16
      %275 = scf.while (%arg3 = %alloc_17) : (memref<1xi32>) -> memref<1xi32> {
        %283 = math.powf %cst, %34 : f32
        vector.print %21 : vector<4xf32>
        %284 = math.fpowi %34, %c131246616_i32 : f32, i32
        %285 = arith.ceildivsi %c131246616_i32, %c131246616_i32 : i32
        %286 = vector.multi_reduction <mul>, %21, %34 [0] : vector<4xf32> to f32
        %287 = vector.multi_reduction <minf>, %21, %34 [0] : vector<4xf32> to f32
        %288 = vector.insert %cst_3, %21 [3] : f32 into vector<4xf32>
        %289 = arith.remui %c1402345042_i64, %c351828036_i64 : i64
        scf.condition(%false_0) %alloc_17 : memref<1xi32>
      } do {
      ^bb0(%arg3: memref<1xi32>):
        bufferization.dealloc_tensor %15 : tensor<1xf16>
        vector.print %21 : vector<4xf32>
        %283 = arith.andi %272, %c0_i16 : i16
        %284 = arith.remsi %false_0, %false : i1
        memref.assume_alignment %alloc_9, 1 : memref<4x1xi32>
        %285 = arith.cmpi sge, %c27303_i16, %272 : i16
        %286 = memref.realloc %alloc_12 : memref<1xi16> to memref<12xi16>
        %287 = math.ceil %10 : tensor<1x12x4xf32>
        %288 = vector.broadcast %false_0 : i1 to vector<4x1xi1>
        %289 = memref.realloc %alloc_12 : memref<1xi16> to memref<4xi16>
        %290 = arith.minui %c-19390_i16, %c-19390_i16 : i16
        %291 = vector.broadcast %cst_3 : f32 to vector<1x12x4xf32>
        %292 = vector.broadcast %false_0 : i1 to vector<1x12x4xi1>
        %293 = vector.broadcast %c131246616_i32 : i32 to vector<1x12x4xi32>
        %294 = vector.gather %alloc_6[%c4] [%293], %292, %291 : memref<1xf32>, vector<1x12x4xi32>, vector<1x12x4xi1>, vector<1x12x4xf32> into vector<1x12x4xf32>
        %295 = arith.mulf %cst_3, %cst : f32
        memref.copy %alloc_11, %arg3 : memref<1xi32> to memref<1xi32>
        %296 = math.absi %7 : tensor<1xi64>
        %alloc_34 = memref.alloc() : memref<1x12xi32>
        %297 = vector.broadcast %c131246616_i32 : i32 to vector<1x12xi32>
        %298 = vector.broadcast %extracted_33 : i1 to vector<1x12xi1>
        %299 = vector.gather %alloc_34[%c0, %c1] [%297], %298, %297 : memref<1x12xi32>, vector<1x12xi32>, vector<1x12xi1>, vector<1x12xi32> into vector<1x12xi32>
        scf.yield %alloc_11 : memref<1xi32>
      }
      %276 = vector.extract_strided_slice %21 {offsets = [0], sizes = [4], strides = [1]} : vector<4xf32> to vector<4xf32>
      %277 = index.ceildivu %c11, %c5
      scf.index_switch %c12 
      case 1 {
        %from_elements_34 = tensor.from_elements %false_0, %false_0, %false_0, %false_0, %false, %false_0, %extracted_33, %false, %extracted_33, %extracted_33, %false, %false : tensor<1x12xi1>
        %false_35 = index.bool.constant false
        %283 = math.ipowi %1, %1 : tensor<1xi32>
        %284 = arith.minsi %c351828036_i64, %c351828036_i64 : i64
        %285 = arith.minsi %c1298104246_i64, %c1402345042_i64 : i64
        %286 = math.log10 %13 : tensor<1xf32>
        %expanded = tensor.expand_shape %22 [[0, 1]] : tensor<1xi64> into tensor<1x1xi64>
        %287 = vector.broadcast %false : i1 to vector<i1>
        %288 = vector.transfer_write %287, %from_elements_34[%273, %c3] : vector<i1>, tensor<1x12xi1>
        %289 = bufferization.clone %alloc_14 : memref<1x12xf32> to memref<1x12xf32>
        %290 = math.ipowi %272, %c27303_i16 : i16
        %291 = arith.remui %false_0, %false_0 : i1
        affine.store %272, %alloc_10[%c7] : memref<1xi16>
        %292 = math.log1p %cst_2 : f16
        %293 = arith.remf %cst, %cst : f32
        %294 = arith.minui %c1298104246_i64, %c351828036_i64 : i64
        %295 = math.log10 %8 : tensor<1x12xf16>
        scf.yield
      }
      case 2 {
        %c0_i16_34 = arith.constant 0 : i16
        %c0_i16_35 = arith.constant 0 : i16
        %283 = vector.transfer_read %alloc_18[%c3, %277], %c0_i16_35 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<4x1xi16>, vector<4xi16>
        %284 = index.divs %c9, %rank
        memref.assume_alignment %alloc_7, 4 : memref<4x1xf32>
        %285 = index.castu %c131246616_i32 : i32 to index
        %286 = arith.maxsi %c32441890_i64, %c1003442951_i64 : i64
        %287 = arith.remui %c27303_i16, %c27303_i16 : i16
        %alloc_36 = memref.alloc() : memref<4x1xf32>
        memref.copy %alloc_7, %alloc_36 : memref<4x1xf32> to memref<4x1xf32>
        %288 = arith.andi %c-19390_i16, %c-19390_i16 : i16
        %289 = math.ceil %cst_2 : f16
        %290 = math.atan %cst_2 : f16
        %291 = arith.ceildivsi %c131246616_i32, %c131246616_i32 : i32
        %292 = vector.broadcast %cst_3 : f32 to vector<4x4xf32>
        %293 = vector.outerproduct %276, %21, %292 {kind = #vector.kind<add>} : vector<4xf32>, vector<4xf32>
        %294 = vector.broadcast %cst_3 : f32 to vector<4x4xf32>
        %295 = vector.outerproduct %21, %276, %294 {kind = #vector.kind<mul>} : vector<4xf32>, vector<4xf32>
        %296 = arith.ori %c1402345042_i64, %c351828036_i64 : i64
        %297 = arith.cmpf une, %cst_2, %cst_1 : f16
        %298 = memref.load %alloc_10[%c0] : memref<1xi16>
        scf.yield
      }
      case 3 {
        %283 = index.maxu %c9, %45
        %284 = math.ctpop %c1289410718_i64 : i64
        %285 = math.tanh %9 : tensor<1xf16>
        bufferization.dealloc_tensor %8 : tensor<1x12xf16>
        %286 = vector.broadcast %cst_3 : f32 to vector<4x4xf32>
        %287 = vector.outerproduct %21, %276, %286 {kind = #vector.kind<mul>} : vector<4xf32>, vector<4xf32>
        %collapsed_34 = tensor.collapse_shape %3 [[0, 1], [2]] : tensor<1x12x4xi16> into tensor<12x4xi16>
        %288 = math.fma %8, %8, %8 : tensor<1x12xf16>
        %289 = arith.remf %34, %cst : f32
        %from_elements_35 = tensor.from_elements %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2 : tensor<1x12xf16>
        vector.print %276 : vector<4xf32>
        %290 = arith.shrsi %272, %c0_i16 : i16
        %291 = math.ctlz %4 : tensor<1x12x4xi16>
        %292 = vector.broadcast %cst_3 : f32 to vector<4x4xf32>
        %293 = vector.outerproduct %276, %276, %292 {kind = #vector.kind<mul>} : vector<4xf32>, vector<4xf32>
        %294 = math.exp2 %10 : tensor<1x12x4xf32>
        %295 = arith.remf %cst_3, %34 : f32
        %296 = index.casts %c8 : index to i32
        scf.yield
      }
      default {
        memref.tensor_store %13, %arg2 : memref<1xf32>
        %true_34 = arith.constant true
        %283 = vector.reduction <mul>, %21 : vector<4xf32> into f32
        %284 = vector.broadcast %34 : f32 to vector<4x4xf32>
        %285 = vector.outerproduct %276, %276, %284 {kind = #vector.kind<mul>} : vector<4xf32>, vector<4xf32>
        %286 = index.divu %c5, %c3
        %collapsed_35 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<1x12x4xi16> into tensor<12x4xi16>
        %287 = index.castu %c10 : index to i32
        %288 = math.fpowi %15, %1 : tensor<1xf16>, tensor<1xi32>
        %289 = math.log1p %15 : tensor<1xf16>
        %290 = arith.shrsi %272, %272 : i16
        %291 = arith.floordivsi %c1298104246_i64, %c32441890_i64 : i64
        %extracted_36 = tensor.extract %10[%c0, %c4, %c2] : tensor<1x12x4xf32>
        %292 = vector.shuffle %276, %276 [2, 6, 7] : vector<4xf32>, vector<4xf32>
        %293 = arith.negf %extracted_36 : f32
        %294 = index.ceildivu %c2, %c2
        %295 = arith.remf %cst_1, %cst_2 : f16
      }
      %278 = arith.remui %c1003442951_i64, %c1289410718_i64 : i64
      %279 = math.round %13 : tensor<1xf32>
      %280 = math.ctpop %c1298104246_i64 : i64
      %281 = arith.andi %c131246616_i32, %c131246616_i32 : i32
      %282 = arith.negf %cst_3 : f32
      scf.yield %alloc_6 : memref<1xf32>
    }
    %48 = arith.remf %cst_3, %cst : f32
    %49 = arith.divf %cst, %cst : f32
    %50 = math.log %9 : tensor<1xf16>
    %51 = arith.divsi %false, %false : i1
    %52 = index.mul %c8, %c11
    %53 = affine.if affine_set<(d0, d1, d2, d3) : (-(d1 + d2 floordiv 64) == 0, d3 == 0)>(%c1, %c1, %c10, %c5) -> i16 {
      %270 = math.round %8 : tensor<1x12xf16>
      %271 = arith.negf %cst_3 : f32
      %272 = math.floor %15 : tensor<1xf16>
      %273 = scf.while (%arg2 = %21) : (vector<4xf32>) -> vector<4xf32> {
        %277 = math.log1p %15 : tensor<1xf16>
        %278 = math.ctlz %c-19390_i16 : i16
        %279 = math.log %13 : tensor<1xf32>
        %280 = index.sub %c10, %c8
        %281 = affine.min affine_map<(d0) -> (-((d0 ceildiv 4) floordiv 128) + 4)>(%rank)
        %282 = arith.muli %c1289410718_i64, %c1003442951_i64 : i64
        %283 = math.tanh %34 : f32
        vector.print %21 : vector<4xf32>
        scf.condition(%false) %21 : vector<4xf32>
      } do {
      ^bb0(%arg2: vector<4xf32>):
        %277 = math.floor %15 : tensor<1xf16>
        %278 = vector.bitcast %21 : vector<4xf32> to vector<4xf32>
        %279 = arith.mulf %cst_3, %cst_3 : f32
        %280 = memref.realloc %alloc_10 : memref<1xi16> to memref<1xi16>
        %c2070227775_i32 = arith.constant 2070227775 : i32
        %281 = math.fma %cst_1, %cst_2, %cst_1 : f16
        %282 = vector.matrix_multiply %278, %278 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %283 = index.divu %c7, %c6
        %284 = bufferization.clone %alloc_5 : memref<1x12xf32> to memref<1x12xf32>
        %285 = arith.remui %c32441890_i64, %c1289410718_i64 : i64
        %286 = memref.realloc %alloc_11 : memref<1xi32> to memref<4xi32>
        %287 = index.castu %c-178_i16 : i16 to index
        %288 = vector.load %alloc_4[%c0, %c4, %c0] : memref<1x12x4xi16>, vector<1x12x4xi16>
        %289 = math.ctpop %false_0 : i1
        %290 = arith.minui %c27303_i16, %c27303_i16 : i16
        %291 = math.cos %10 : tensor<1x12x4xf32>
        scf.yield %21 : vector<4xf32>
      }
      %274 = math.fma %9, %15, %15 : tensor<1xf16>
      %inserted = tensor.insert %c1003442951_i64 into %18[%c0] : tensor<1xi64>
      %275 = index.divs %45, %c5
      %276 = arith.divsi %c27303_i16, %c0_i16 : i16
      affine.yield %c0_i16 : i16
    } else {
      %270 = affine.min affine_map<(d0, d1) -> ((-d0) floordiv 2, -d0, d0 ceildiv 32)>(%c10, %c8)
      %271 = math.ipowi %3, %4 : tensor<1x12x4xi16>
      %272 = arith.minf %34, %cst : f32
      %273 = arith.cmpi sge, %c-178_i16, %c0_i16 : i16
      %274 = bufferization.clone %alloc_18 : memref<4x1xi16> to memref<4x1xi16>
      %275 = vector.reduction <minf>, %21 : vector<4xf32> into f32
      %276 = vector.load %alloc_11[%c0] : memref<1xi32>, vector<4x1xi32>
      %277 = arith.minf %cst_2, %cst_1 : f16
      affine.yield %c0_i16 : i16
    }
    scf.index_switch %52 
    case 1 {
      %270 = arith.shli %c32441890_i64, %c1289410718_i64 : i64
      %271 = scf.while (%arg2 = %c1402345042_i64) : (i64) -> i64 {
        %c1_i16 = arith.constant 1 : i16
        %283 = vector.transfer_read %alloc_4[%c10, %c13, %c6], %c1_i16 : memref<1x12x4xi16>, vector<12xi16>
        %284 = arith.minf %cst_1, %cst_1 : f16
        %285 = arith.maxsi %c1298104246_i64, %c1289410718_i64 : i64
        %286 = arith.remsi %c0_i16, %c27303_i16 : i16
        %287 = index.divs %52, %c10
        %288 = arith.remf %cst, %cst_3 : f32
        %289 = arith.andi %c32441890_i64, %c1298104246_i64 : i64
        %290 = math.fma %cst_2, %cst_1, %cst_1 : f16
        scf.condition(%false) %c1003442951_i64 : i64
      } do {
      ^bb0(%arg2: i64):
        %283 = arith.remf %cst_3, %cst_3 : f32
        %284 = math.floor %9 : tensor<1xf16>
        %285 = vector.flat_transpose %21 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        %from_elements_34 = tensor.from_elements %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1 : tensor<1x12xf16>
        %286 = math.absf %15 : tensor<1xf16>
        %287 = vector.flat_transpose %21 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        %288 = vector.broadcast %c2 : index to vector<4xindex>
        %289 = vector.broadcast %false_0 : i1 to vector<4xi1>
        %290 = vector.broadcast %c351828036_i64 : i64 to vector<4xi64>
        vector.scatter %alloc_16[%c0, %c0] [%288], %289, %290 : memref<4x1xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
        %alloc_35 = memref.alloc() : memref<1x12xi64>
        %291 = vector.broadcast %c351828036_i64 : i64 to vector<1xi64>
        %292 = vector.broadcast %false_0 : i1 to vector<1xi1>
        %293 = vector.broadcast %c131246616_i32 : i32 to vector<1xi32>
        %294 = vector.gather %alloc_35[%c12, %c9] [%293], %292, %291 : memref<1x12xi64>, vector<1xi32>, vector<1xi1>, vector<1xi64> into vector<1xi64>
        %295 = arith.remf %cst_1, %cst_2 : f16
        %296 = index.sub %c14, %c12
        vector.print %287 : vector<4xf32>
        %297 = math.cttz %c0_i16 : i16
        memref.store %c131246616_i32, %alloc_17[%c0] : memref<1xi32>
        %298 = arith.ori %c1003442951_i64, %c351828036_i64 : i64
        %299 = bufferization.to_memref %2 : memref<1x12x4xi1>
        %300 = arith.ceildivsi %false_0, %false : i1
        scf.yield %c1003442951_i64 : i64
      }
      %272 = arith.muli %c131246616_i32, %c131246616_i32 : i32
      %273 = index.divu %c15, %c14
      %274 = math.log1p %cst_2 : f16
      %275 = math.log1p %cst_1 : f16
      %276 = vector.matrix_multiply %21, %21 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
      %277 = index.ceildivu %45, %c0
      %278 = scf.while (%arg2 = %alloc_12) : (memref<1xi16>) -> memref<1xi16> {
        %283 = bufferization.clone %alloc_16 : memref<4x1xi64> to memref<4x1xi64>
        bufferization.dealloc_tensor %15 : tensor<1xf16>
        %284 = arith.shrsi %c1402345042_i64, %c1289410718_i64 : i64
        %285 = memref.realloc %alloc_17 : memref<1xi32> to memref<4xi32>
        %rank_34 = tensor.rank %14 : tensor<1xi64>
        %rank_35 = tensor.rank %12 : tensor<4x1xi1>
        %286 = arith.ori %c1402345042_i64, %c32441890_i64 : i64
        %287 = vector.broadcast %c27303_i16 : i16 to vector<4x1xi16>
        %288 = vector.broadcast %false_0 : i1 to vector<4x1xi1>
        %289 = vector.broadcast %c131246616_i32 : i32 to vector<4x1xi32>
        %290 = vector.gather %alloc[%c10, %273] [%289], %288, %287 : memref<1x12xi16>, vector<4x1xi32>, vector<4x1xi1>, vector<4x1xi16> into vector<4x1xi16>
        scf.condition(%false_0) %alloc_10 : memref<1xi16>
      } do {
      ^bb0(%arg2: memref<1xi16>):
        %283 = vector.broadcast %34 : f32 to vector<4x4xf32>
        %284 = vector.outerproduct %21, %21, %283 {kind = #vector.kind<minf>} : vector<4xf32>, vector<4xf32>
        %285 = memref.realloc %arg2 : memref<1xi16> to memref<1xi16>
        %286 = bufferization.clone %alloc_10 : memref<1xi16> to memref<1xi16>
        %287 = math.tanh %8 : tensor<1x12xf16>
        %c828776477_i32 = arith.constant 828776477 : i32
        %288 = tensor.empty() : tensor<4x1xf16>
        %289 = math.cttz %reduced : tensor<i16>
        %290 = index.maxu %277, %c2
        %291 = vector.matrix_multiply %276, %276 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
        bufferization.dealloc_tensor %7 : tensor<1xi64>
        %292 = arith.remsi %c1298104246_i64, %c1402345042_i64 : i64
        %293 = arith.shrui %c351828036_i64, %c1003442951_i64 : i64
        %294 = vector.insert %cst_3, %291 [0] : f32 into vector<1xf32>
        %295 = vector.reduction <add>, %276 : vector<1xf32> into f32
        %296 = index.divu %c5, %277
        %297 = vector.extract_strided_slice %21 {offsets = [0], sizes = [1], strides = [1]} : vector<4xf32> to vector<1xf32>
        scf.yield %286 : memref<1xi16>
      }
      bufferization.dealloc_tensor %10 : tensor<1x12x4xf32>
      %279 = arith.ori %c1298104246_i64, %c1003442951_i64 : i64
      %alloca_33 = memref.alloca() : memref<1x12x4xi16>
      %280 = arith.muli %false, %false : i1
      %281 = index.divu %c4, %c8
      vector.print %21 : vector<4xf32>
      %282 = vector.create_mask %45, %c2, %c14 : vector<1x12x4xi1>
      scf.yield
    }
    default {
      %270 = math.round %cst_2 : f16
      scf.if %false_0 {
        %283 = math.log10 %9 : tensor<1xf16>
        %284 = vector.extract_strided_slice %21 {offsets = [2], sizes = [2], strides = [1]} : vector<4xf32> to vector<2xf32>
        %285 = bufferization.clone %alloc_9 : memref<4x1xi32> to memref<4x1xi32>
        %286 = math.log %cst_3 : f32
        %c1_i64 = arith.constant 1 : i64
        %287 = vector.transfer_read %7[%c3], %c1_i64 : tensor<1xi64>, vector<i64>
        %alloc_35 = memref.alloc() : memref<1x12xi32>
        memref.tensor_store %6, %alloc_35 : memref<1x12xi32>
        %288 = arith.minf %34, %34 : f32
        %289 = arith.remsi %c1003442951_i64, %c1298104246_i64 : i64
      }
      %271 = math.copysign %cst_3, %cst : f32
      %272 = arith.shrui %c131246616_i32, %c131246616_i32 : i32
      %273 = tensor.empty() : tensor<4x1xi64>
      %mapped_33 = linalg.map ins(%alloc_16, %alloc_16, %alloc_16 : memref<4x1xi64>, memref<4x1xi64>, memref<4x1xi64>) outs(%273 : tensor<4x1xi64>)
        (%in: i64, %in_35: i64, %in_36: i64) {
          %283 = vector.broadcast %c1003442951_i64 : i64 to vector<12xi64>
          %284 = vector.transfer_write %283, %0[%rank, %c9, %45] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<12xi64>, tensor<1x12x4xi64>
          %285 = vector.insertelement %cst_3, %21[%c13 : index] : vector<4xf32>
          %from_elements_37 = tensor.from_elements %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1 : tensor<1x12x4xf16>
          %286 = memref.load %alloc_8[%c0, %c2] : memref<1x12xf16>
          vector.print %283 : vector<12xi64>
          %alloc_38 = memref.alloc() : memref<1xf16>
          memref.tensor_store %15, %alloc_38 : memref<1xf16>
          %287 = arith.minsi %c1298104246_i64, %c1003442951_i64 : i64
          %288 = math.tanh %from_elements_37 : tensor<1x12x4xf16>
          %cst_39 = arith.constant 1.49317581E+9 : f32
          %289 = affine.load %alloc_5[%c7, %c5] : memref<1x12xf32>
          %290 = math.log10 %10 : tensor<1x12x4xf32>
          %291 = arith.ori %c1289410718_i64, %in_35 : i64
          %292 = arith.cmpf oge, %289, %34 : f32
          %293 = index.divu %c12, %c0
          %294 = arith.minui %false, %false : i1
          %295 = index.maxu %c2, %c11
          %296 = math.powf %cst_3, %289 : f32
          %297 = memref.load %alloc[%c0, %c10] : memref<1x12xi16>
          %298 = math.tanh %15 : tensor<1xf16>
          %299 = index.sub %c13, %c4
          %300 = vector.shuffle %283, %283 [0, 3, 6, 8, 10, 12, 13, 15, 16, 17, 20, 21, 22, 23] : vector<12xi64>, vector<12xi64>
          %301 = vector.flat_transpose %283 {columns = 3 : i32, rows = 4 : i32} : vector<12xi64> -> vector<12xi64>
          %302 = arith.remsi %false, %false_0 : i1
          %303 = math.powf %13, %13 : tensor<1xf32>
          %304 = vector.broadcast %289 : f32 to vector<4x4xf32>
          %305 = vector.outerproduct %21, %21, %304 {kind = #vector.kind<maxf>} : vector<4xf32>, vector<4xf32>
          %306 = math.ceil %15 : tensor<1xf16>
          %307 = memref.realloc %alloc_10 : memref<1xi16> to memref<1xi16>
          %308 = vector.splat %c9 : vector<1x12x4xindex>
          %309 = arith.minf %cst_2, %cst_1 : f16
          %310 = arith.remui %c-19390_i16, %c-19390_i16 : i16
          %true_40 = arith.constant true
          %false_41 = arith.constant false
          %311 = vector.transfer_read %11[%c4], %false_41 : tensor<1xi1>, vector<i1>
          %312 = math.absi %5 : tensor<1xi64>
          %c0_i64 = arith.constant 0 : i64
          linalg.yield %c0_i64 : i64
        }
      %274 = index.sub %c14, %c12
      %275 = math.fpowi %9, %1 : tensor<1xf16>, tensor<1xi32>
      %276 = scf.index_switch %c9 -> f16 
      case 1 {
        bufferization.dealloc_tensor %6 : tensor<1x12xi32>
        %283 = arith.remf %34, %34 : f32
        %284 = arith.addf %cst, %34 : f32
        vector.print %21 : vector<4xf32>
        %285 = math.tanh %cst_3 : f32
        memref.tensor_store %1, %alloc_17 : memref<1xi32>
        %286 = math.fma %cst, %cst, %cst : f32
        vector.print %21 : vector<4xf32>
        %287 = math.atan2 %13, %13 : tensor<1xf32>
        %collapsed_35 = tensor.collapse_shape %6 [[0, 1]] : tensor<1x12xi32> into tensor<12xi32>
        %288 = arith.minsi %c1402345042_i64, %c1003442951_i64 : i64
        %289 = vector.broadcast %c-19390_i16 : i16 to vector<4xi16>
        %290 = vector.broadcast %false_0 : i1 to vector<4xi1>
        %291 = vector.maskedload %alloc_4[%c0, %c8, %c1], %290, %289 : memref<1x12x4xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
        %292 = vector.broadcast %c10 : index to vector<10xindex>
        %293 = vector.broadcast %false_0 : i1 to vector<10xi1>
        %294 = vector.broadcast %c27303_i16 : i16 to vector<10xi16>
        vector.scatter %alloc_12[%c0] [%292], %293, %294 : memref<1xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
        bufferization.dealloc_tensor %24 : tensor<i64>
        %295 = arith.remf %cst_1, %cst_1 : f16
        %296 = vector.broadcast %c2 : index to vector<10xindex>
        %297 = vector.broadcast %false : i1 to vector<10xi1>
        %298 = vector.broadcast %c131246616_i32 : i32 to vector<10xi32>
        vector.scatter %alloc_11[%c0] [%296], %297, %298 : memref<1xi32>, vector<10xindex>, vector<10xi1>, vector<10xi32>
        scf.yield %cst_2 : f16
      }
      case 2 {
        %true_35 = index.bool.constant true
        %283 = memref.load %alloc[%c0, %c11] : memref<1x12xi16>
        %284 = vector.create_mask %c3, %c4, %rank : vector<1x12x4xi1>
        %285 = index.ceildivs %c5, %c1
        %alloc_36 = memref.alloc() : memref<1x12x4xi1>
        memref.copy %alloc_15, %alloc_36 : memref<1x12x4xi1> to memref<1x12x4xi1>
        %286 = vector.create_mask %52 : vector<1xi1>
        %287 = arith.divsi %c351828036_i64, %c1003442951_i64 : i64
        %288 = affine.min affine_map<(d0) -> (d0, d0 mod 16, (d0 mod 16 + 4) ceildiv 4)>(%c1)
        %289 = memref.realloc %alloc_12 : memref<1xi16> to memref<1xi16>
        %extracted_37 = tensor.extract %2[%c0, %c10, %c2] : tensor<1x12x4xi1>
        %290 = arith.shli %c27303_i16, %c0_i16 : i16
        %true_38 = arith.constant true
        %291 = arith.muli %c32441890_i64, %c1298104246_i64 : i64
        %292 = math.exp %cst_1 : f16
        %293 = tensor.empty() : tensor<4x1xi16>
        %expanded = tensor.expand_shape %1 [[0, 1]] : tensor<1xi32> into tensor<1x1xi32>
        scf.yield %cst_2 : f16
      }
      case 3 {
        %283 = math.round %8 : tensor<1x12xf16>
        %284 = math.round %8 : tensor<1x12xf16>
        %285 = arith.shrsi %c1289410718_i64, %c351828036_i64 : i64
        bufferization.dealloc_tensor %273 : tensor<4x1xi64>
        %286 = index.ceildivs %c3, %c2
        %287 = vector.matrix_multiply %21, %21 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        memref.store %false_0, %alloc_15[%c0, %c1, %c1] : memref<1x12x4xi1>
        %288 = vector.matrix_multiply %287, %287 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
        %289 = arith.cmpi sge, %c1402345042_i64, %c351828036_i64 : i64
        %290 = affine.apply affine_map<(d0) -> (0)>(%c8)
        %rank_35 = tensor.rank %14 : tensor<1xi64>
        %291 = vector.multi_reduction <minf>, %288, %34 [0] : vector<1xf32> to f32
        %292 = bufferization.clone %alloc_17 : memref<1xi32> to memref<1xi32>
        %293 = arith.addf %cst, %cst_3 : f32
        %294 = arith.shrsi %c0_i16, %c-19390_i16 : i16
        %295 = bufferization.clone %alloc_18 : memref<4x1xi16> to memref<4x1xi16>
        scf.yield %cst_1 : f16
      }
      case 4 {
        %283 = index.maxu %c0, %c9
        %284 = affine.max affine_map<(d0, d1) -> (d1 floordiv 2 - d0, 0)>(%45, %c7)
        %285 = math.absf %cst_2 : f16
        %286 = memref.realloc %alloc_6 : memref<1xf32> to memref<10xf32>
        %287 = index.castu %c7 : index to i32
        %alloc_35 = memref.alloc() : memref<1xf16>
        memref.tensor_store %15, %alloc_35 : memref<1xf16>
        %288 = affine.load %alloc_18[%c9, %c14] : memref<4x1xi16>
        %289 = math.log10 %cst_3 : f32
        %290 = arith.remf %cst, %cst : f32
        memref.assume_alignment %alloc_11, 1 : memref<1xi32>
        %291 = vector.load %alloc_12[%c0] : memref<1xi16>, vector<1x12x4xi16>
        %292 = vector.matrix_multiply %21, %21 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %293 = index.divs %c7, %c9
        %294 = arith.cmpf ugt, %cst, %cst : f32
        %295 = index.sub %c6, %c15
        %296 = vector.broadcast %cst : f32 to vector<4x4xf32>
        %297 = vector.outerproduct %21, %21, %296 {kind = #vector.kind<maxf>} : vector<4xf32>, vector<4xf32>
        scf.yield %cst_1 : f16
      }
      default {
        %from_elements_35 = tensor.from_elements %c1298104246_i64, %c351828036_i64, %c1003442951_i64, %c1003442951_i64, %c1402345042_i64, %c351828036_i64, %c1298104246_i64, %c1298104246_i64, %c32441890_i64, %c1402345042_i64, %c1003442951_i64, %c1003442951_i64 : tensor<1x12xi64>
        %283 = math.tanh %8 : tensor<1x12xf16>
        %284 = affine.apply affine_map<(d0) -> (0)>(%c14)
        %285 = arith.mulf %cst, %cst_3 : f32
        %286 = arith.remsi %c-19390_i16, %c0_i16 : i16
        %287 = memref.realloc %alloc_11 : memref<1xi32> to memref<12xi32>
        %288 = tensor.empty(%284) : tensor<4x?xi64>
        %289 = affine.apply affine_map<(d0, d1) -> (d0 floordiv 16)>(%284, %45)
        %290 = arith.muli %false, %false : i1
        %291 = math.log10 %9 : tensor<1xf16>
        %292 = vector.extract_strided_slice %21 {offsets = [0], sizes = [3], strides = [1]} : vector<4xf32> to vector<3xf32>
        %extracted_36 = tensor.extract %11[%c0] : tensor<1xi1>
        %293 = math.log1p %8 : tensor<1x12xf16>
        %294 = arith.muli %c351828036_i64, %c32441890_i64 : i64
        %295 = math.copysign %cst_1, %cst_2 : f16
        %296 = vector.reduction <mul>, %292 : vector<3xf32> into f32
        scf.yield %cst_1 : f16
      }
      %277 = vector.flat_transpose %21 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
      %278 = scf.while (%arg2 = %alloc_8) : (memref<1x12xf16>) -> memref<1x12xf16> {
        %283 = math.ipowi %3, %3 : tensor<1x12x4xi16>
        %284 = vector.create_mask %c10, %c7 : vector<1x12xi1>
        %285 = vector.broadcast %34 : f32 to vector<4x4xf32>
        %286 = vector.outerproduct %21, %21, %285 {kind = #vector.kind<add>} : vector<4xf32>, vector<4xf32>
        memref.assume_alignment %alloc_16, 4 : memref<4x1xi64>
        %287 = arith.remui %c1003442951_i64, %c32441890_i64 : i64
        %true_35 = arith.constant true
        %288 = index.maxs %c5, %52
        %c30151_i16 = arith.constant 30151 : i16
        scf.condition(%false) %alloc_8 : memref<1x12xf16>
      } do {
      ^bb0(%arg2: memref<1x12xf16>):
        %283 = arith.minui %c32441890_i64, %c32441890_i64 : i64
        %284 = index.maxu %c8, %c5
        %285 = index.sub %c15, %45
        %286 = arith.divsi %c-178_i16, %c-178_i16 : i16
        %287 = arith.minui %c1003442951_i64, %c351828036_i64 : i64
        %288 = memref.realloc %alloc_10 : memref<1xi16> to memref<1xi16>
        %289 = math.log1p %cst_1 : f16
        %290 = vector.splat %cst_3 : vector<1x12x4xf32>
        %291 = math.fma %8, %8, %8 : tensor<1x12xf16>
        %292 = math.exp2 %10 : tensor<1x12x4xf32>
        memref.assume_alignment %alloc_7, 16 : memref<4x1xf32>
        %293 = math.ctlz %11 : tensor<1xi1>
        %294 = arith.remui %c1003442951_i64, %c351828036_i64 : i64
        vector.print %21 : vector<4xf32>
        %rank_35 = tensor.rank %4 : tensor<1x12x4xi16>
        %295 = arith.divsi %c1003442951_i64, %c1402345042_i64 : i64
        scf.yield %alloc_8 : memref<1x12xf16>
      }
      %rank_34 = tensor.rank %0 : tensor<1x12x4xi64>
      %279 = vector.extract %21[0] : vector<4xf32>
      %280 = bufferization.clone %alloc_6 : memref<1xf32> to memref<1xf32>
      %281 = math.exp2 %8 : tensor<1x12xf16>
      %generated = tensor.generate %c15, %c13 {
      ^bb0(%arg2: index, %arg3: index):
        %283 = arith.shrsi %false, %false : i1
        %284 = bufferization.clone %alloc_7 : memref<4x1xf32> to memref<4x1xf32>
        %285 = index.mul %c14, %45
        %286 = affine.load %alloc_7[%c14, %c13] : memref<4x1xf32>
        tensor.yield %c1003442951_i64 : i64
      } : tensor<?x?xi64>
      %282 = index.castu %c11 : index to i32
    }
    %54 = arith.cmpf oeq, %cst_3, %cst_3 : f32
    %55 = vector.create_mask %c14, %c15 : vector<4x1xi1>
    %56 = affine.max affine_map<(d0, d1, d2, d3) -> ((d1 mod 2) * 64, -d3 + d1 mod 2, -(d1 mod 2), d2 + d1 mod 2)>(%52, %c6, %c11, %c9)
    %57 = index.ceildivu %c15, %45
    %58 = arith.negf %34 : f32
    %alloc_19 = memref.alloc() : memref<12x1xi1>
    %59 = tensor.empty() : tensor<4xi1>
    %60 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_19, %59, %59 : memref<12x1xi1>, tensor<4xi1>, tensor<4xi1>) outs(%2 : tensor<1x12x4xi1>) {
    ^bb0(%in: i1, %in_33: i1, %in_34: i1, %out: i1):
      %270 = arith.ori %out, %false : i1
      %271 = vector.broadcast %cst : f32 to vector<1x12xf32>
      %272 = vector.fma %271, %271, %271 : vector<1x12xf32>
      %273 = arith.remui %c-178_i16, %c27303_i16 : i16
      %274 = arith.shrsi %c27303_i16, %c0_i16 : i16
      %275 = math.copysign %13, %13 : tensor<1xf32>
      %276 = bufferization.clone %alloc_13 : memref<4x1xi16> to memref<4x1xi16>
      %c1_i16 = arith.constant 1 : i16
      %277 = vector.transfer_read %alloc_12[%c10], %c1_i16 : memref<1xi16>, vector<i16>
      %278 = vector.bitcast %55 : vector<4x1xi1> to vector<4x1xi1>
      %279 = vector.broadcast %c32441890_i64 : i64 to vector<10xi64>
      %280 = vector.transfer_write %279, %0[%c13, %c8, %c8] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<10xi64>, tensor<1x12x4xi64>
      %281 = index.sub %c7, %56
      %282 = math.log %8 : tensor<1x12xf16>
      %283 = arith.negf %cst_2 : f16
      %284 = vector.bitcast %278 : vector<4x1xi1> to vector<4x1xi1>
      %285 = math.log10 %cst_3 : f32
      %286 = arith.shrui %in_33, %in : i1
      affine.for %arg2 = 0 to 22 {
      }
      memref.assume_alignment %alloc_9, 16 : memref<4x1xi32>
      %287 = arith.shrsi %c1_i16, %c0_i16 : i16
      %288 = tensor.empty() : tensor<1x12x4xi64>
      %289 = tensor.empty() : tensor<1xi64>
      %mapped_35 = linalg.map ins(%22 : tensor<1xi64>) outs(%289 : tensor<1xi64>)
        (%in_37: i64) {
          %301 = index.divu %c2, %c7
          memref.assume_alignment %alloc_11, 4 : memref<1xi32>
          %cst_38 = arith.constant 1.000000e+00 : f16
          %302 = vector.transfer_read %8[%c4, %c1], %cst_38 : tensor<1x12xf16>, vector<f16>
          %303 = tensor.empty(%c11) : tensor<?xi32>
          bufferization.dealloc_tensor %12 : tensor<4x1xi1>
          %304 = arith.minf %cst_1, %cst_1 : f16
          %305 = index.ceildivu %45, %c1
          %306 = vector.insertelement %cst, %21[%c10 : index] : vector<4xf32>
          %307 = math.tan %13 : tensor<1xf32>
          %308 = arith.minsi %in_37, %c1298104246_i64 : i64
          %309 = vector.broadcast %c9 : index to vector<10xindex>
          %310 = vector.broadcast %in_34 : i1 to vector<10xi1>
          %311 = vector.broadcast %c1_i16 : i16 to vector<10xi16>
          vector.scatter %alloc_13[%c0, %c0] [%309], %310, %311 : memref<4x1xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
          %312 = vector.matrix_multiply %21, %21 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
          memref.store %c0_i16, %alloc_12[%c0] : memref<1xi16>
          %313 = vector.broadcast %in_33 : i1 to vector<1xi1>
          %dest, %accumulated_value = vector.scan <minsi>, %278, %313 {inclusive = true, reduction_dim = 0 : i64} : vector<4x1xi1>, vector<1xi1>
          %314 = bufferization.to_memref %12 : memref<4x1xi1>
          %315 = arith.shrui %c32441890_i64, %c1289410718_i64 : i64
          %316 = vector.create_mask %c3, %c3, %57 : vector<1x12x4xi1>
          %317 = index.mul %c14, %c13
          %318 = math.copysign %8, %8 : tensor<1x12xf16>
          %319 = math.ctlz %false : i1
          %320 = arith.remf %34, %34 : f32
          %from_elements_39 = tensor.from_elements %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32 : tensor<4x1xi32>
          %321 = index.maxs %305, %c14
          %322 = math.ctpop %12 : tensor<4x1xi1>
          %323 = math.atan %cst : f32
          %324 = arith.minsi %c0_i16, %c27303_i16 : i16
          vector.print %284 : vector<4x1xi1>
          %325 = vector.bitcast %279 : vector<10xi64> to vector<10xi64>
          %326 = arith.remsi %in_34, %out : i1
          %dest_40, %accumulated_value_41 = vector.scan <mul>, %272, %312 {inclusive = false, reduction_dim = 1 : i64} : vector<1x12xf32>, vector<1xf32>
          %327 = arith.minf %cst_1, %cst_1 : f16
          %328 = math.fma %cst_3, %cst_3, %34 : f32
          %c0_i64 = arith.constant 0 : i64
          linalg.yield %c0_i64 : i64
        }
      %290 = arith.minf %34, %34 : f32
      %291 = math.cttz %6 : tensor<1x12xi32>
      %292 = math.ctlz %reduced : tensor<i16>
      affine.store %out, %alloc_15[%c5, %c6, %c9] : memref<1x12x4xi1>
      %293 = index.ceildivs %c4, %c13
      %294 = math.floor %cst_3 : f32
      %295 = arith.maxsi %c-178_i16, %c-178_i16 : i16
      %296 = arith.andi %c0_i16, %c1_i16 : i16
      %297 = arith.remf %cst_2, %cst_2 : f16
      %298 = vector.broadcast %c131246616_i32 : i32 to vector<4x1xi32>
      %299 = vector.gather %6[%c7, %c2] [%298], %55, %298 : tensor<1x12xi32>, vector<4x1xi32>, vector<4x1xi1>, vector<4x1xi32> into vector<4x1xi32>
      %cst_36 = arith.constant 6.544000e+04 : f16
      %300 = vector.matrix_multiply %279, %279 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi64>, vector<10xi64>) -> vector<1xi64>
      linalg.yield %out : i1
    } -> tensor<1x12x4xi1>
    %61 = vector.broadcast %cst_3 : f32 to vector<4x1xf32>
    %62 = vector.fma %61, %61, %61 : vector<4x1xf32>
    %63 = arith.remui %c0_i16, %c-178_i16 : i16
    %64 = vector.multi_reduction <maxui>, %55, %55 [] : vector<4x1xi1> to vector<4x1xi1>
    %65 = math.ceil %9 : tensor<1xf16>
    %66 = vector.extract_strided_slice %55 {offsets = [1], sizes = [1], strides = [1]} : vector<4x1xi1> to vector<1x1xi1>
    %67 = arith.divui %c1402345042_i64, %c1003442951_i64 : i64
    %68 = arith.remf %cst_3, %cst_3 : f32
    vector.print %62 : vector<4x1xf32>
    %69 = math.log %15 : tensor<1xf16>
    %70 = arith.minf %cst_2, %cst_1 : f16
    %71 = vector.matrix_multiply %21, %21 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
    %72 = vector.broadcast %34 : f32 to vector<1x1xf32>
    %73 = vector.outerproduct %71, %71, %72 {kind = #vector.kind<minf>} : vector<1xf32>, vector<1xf32>
    %74 = vector.multi_reduction <minsi>, %55, %false [0, 1] : vector<4x1xi1> to i1
    %75 = math.atan2 %13, %13 : tensor<1xf32>
    %from_elements = tensor.from_elements %false, %false_0, %false_0, %74, %74, %false, %false_0, %74, %false_0, %false_0, %false, %false, %74, %false_0, %74, %false, %false, %74, %false_0, %74, %false_0, %false, %false_0, %false, %false, %74, %false, %false, %false_0, %74, %false, %false_0, %false_0, %74, %false, %false_0, %false, %false, %false_0, %74, %false, %false, %74, %false, %false_0, %74, %74, %74 : tensor<1x12x4xi1>
    %from_elements_20 = tensor.from_elements %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32 : tensor<1x12x4xi32>
    %76 = vector.broadcast %34 : f32 to vector<1x1xf32>
    %77 = vector.outerproduct %71, %71, %76 {kind = #vector.kind<maxf>} : vector<1xf32>, vector<1xf32>
    %78 = arith.shrsi %c1298104246_i64, %c1289410718_i64 : i64
    %rank_21 = tensor.rank %0 : tensor<1x12x4xi64>
    %79 = vector.extract_strided_slice %55 {offsets = [1], sizes = [1], strides = [1]} : vector<4x1xi1> to vector<1x1xi1>
    %rank_22 = tensor.rank %reduced : tensor<i16>
    %80 = arith.remf %cst_1, %cst_2 : f16
    %81 = arith.maxsi %c1402345042_i64, %c32441890_i64 : i64
    %82 = vector.broadcast %c1289410718_i64 : i64 to vector<1x12xi64>
    %83 = vector.load %alloc_5[%c0, %c9] : memref<1x12xf32>, vector<1x12xf32>
    %84 = math.copysign %10, %10 : tensor<1x12x4xf32>
    %85 = math.ctpop %false : i1
    %86 = math.cttz %14 : tensor<1xi64>
    %87 = vector.broadcast %c131246616_i32 : i32 to vector<1xi32>
    %88 = vector.broadcast %false_0 : i1 to vector<1xi1>
    %89 = vector.maskedload %alloc_17[%c0], %88, %87 : memref<1xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
    affine.store %c-178_i16, %alloc_18[%c10, %c3] : memref<4x1xi16>
    %90 = vector.extract_strided_slice %55 {offsets = [0], sizes = [1], strides = [1]} : vector<4x1xi1> to vector<1x1xi1>
    %91 = math.ctlz %false : i1
    %92 = vector.broadcast %c131246616_i32 : i32 to vector<1x12x4xi32>
    %93 = vector.broadcast %74 : i1 to vector<1x12x4xi1>
    %94 = vector.gather %alloc_9[%c10, %rank] [%92], %93, %92 : memref<4x1xi32>, vector<1x12x4xi32>, vector<1x12x4xi1>, vector<1x12x4xi32> into vector<1x12x4xi32>
    vector.print %66 : vector<1x1xi1>
    %95 = bufferization.clone %alloc_11 : memref<1xi32> to memref<1xi32>
    %96 = math.round %9 : tensor<1xf16>
    %97 = tensor.empty() : tensor<1xi32>
    %mapped = linalg.map ins(%alloc_17 : memref<1xi32>) outs(%97 : tensor<1xi32>)
      (%in: i32) {
        %270 = math.powf %cst_1, %cst_2 : f16
        %271 = memref.atomic_rmw addf %34, %alloc_7[%c1, %c0] : (f32, memref<4x1xf32>) -> f32
        %272 = arith.remsi %c1289410718_i64, %c1402345042_i64 : i64
        %273 = vector.broadcast %cst : f32 to vector<1x12x4xf32>
        %274 = vector.gather %alloc_5[%c5, %c11] [%94], %93, %273 : memref<1x12xf32>, vector<1x12x4xi32>, vector<1x12x4xi1>, vector<1x12x4xf32> into vector<1x12x4xf32>
        %extracted_33 = tensor.extract %6[%c0, %c11] : tensor<1x12xi32>
        %275 = vector.splat %false_0 : vector<1x12xi1>
        %276 = arith.andi %c0_i16, %c0_i16 : i16
        %277 = math.ctpop %1 : tensor<1xi32>
        memref.tensor_store %3, %alloc_4 : memref<1x12x4xi16>
        %278 = arith.remui %extracted_33, %c131246616_i32 : i32
        %279 = math.copysign %10, %10 : tensor<1x12x4xf32>
        %280 = vector.create_mask %52 : vector<1xi1>
        %281 = math.tanh %cst_2 : f16
        %282 = math.floor %10 : tensor<1x12x4xf32>
        %283 = vector.extract %90[0] : vector<1x1xi1>
        %284 = vector.broadcast %c-19390_i16 : i16 to vector<12xi16>
        %285 = vector.broadcast %74 : i1 to vector<12xi1>
        %286 = vector.maskedload %alloc_10[%c0], %285, %284 : memref<1xi16>, vector<12xi1>, vector<12xi16> into vector<12xi16>
        %287 = arith.shrui %c32441890_i64, %c351828036_i64 : i64
        vector.print %83 : vector<1x12xf32>
        %288 = index.maxu %57, %c7
        %289 = index.mul %57, %rank_22
        %290 = arith.ori %74, %74 : i1
        bufferization.dealloc_tensor %0 : tensor<1x12x4xi64>
        %291 = affine.for %arg2 = 0 to 29 iter_args(%arg3 = %c2) -> (index) {
          affine.yield %arg3 : index
        }
        %alloc_34 = memref.alloc() : memref<1xf16>
        %292 = vector.broadcast %cst_1 : f16 to vector<1x12x4xf16>
        %293 = vector.gather %alloc_34[%c14] [%92], %93, %292 : memref<1xf16>, vector<1x12x4xi32>, vector<1x12x4xi1>, vector<1x12x4xf16> into vector<1x12x4xf16>
        %294 = math.ctlz %7 : tensor<1xi64>
        %295 = math.tan %13 : tensor<1xf32>
        %296 = scf.while (%arg2 = %c131246616_i32) : (i32) -> i32 {
          %301 = tensor.empty() : tensor<1xi16>
          %302 = arith.remf %cst_3, %34 : f32
          %303 = arith.addf %34, %cst : f32
          %304 = tensor.empty(%c6, %c8) : tensor<?x?xi16>
          %from_elements_35 = tensor.from_elements %c1402345042_i64, %c1003442951_i64, %c32441890_i64, %c1289410718_i64, %c1003442951_i64, %c32441890_i64, %c32441890_i64, %c1298104246_i64, %c1298104246_i64, %c1003442951_i64, %c1402345042_i64, %c1289410718_i64 : tensor<1x12xi64>
          %305 = arith.ceildivsi %c32441890_i64, %c32441890_i64 : i64
          %306 = index.sub %c7, %57
          %alloca_36 = memref.alloca() : memref<1xi16>
          scf.condition(%false) %c131246616_i32 : i32
        } do {
        ^bb0(%arg2: i32):
          %301 = math.cos %13 : tensor<1xf32>
          %302 = math.ipowi %97, %1 : tensor<1xi32>
          %303 = memref.realloc %alloc_11 : memref<1xi32> to memref<1xi32>
          %304 = tensor.empty() : tensor<4x1xi32>
          %305 = vector.broadcast %c131246616_i32 : i32 to vector<4x1xi32>
          %306 = vector.gather %304[%c3, %c14] [%305], %55, %305 : tensor<4x1xi32>, vector<4x1xi32>, vector<4x1xi1>, vector<4x1xi32> into vector<4x1xi32>
          memref.tensor_store %15, %alloc_34 : memref<1xf16>
          %alloca_35 = memref.alloca() : memref<1x12x4xi64>
          %307 = arith.divsi %c-19390_i16, %c-178_i16 : i16
          %308 = math.absi %false : i1
          %309 = tensor.empty() : tensor<1xi16>
          %310 = vector.broadcast %c-178_i16 : i16 to vector<1x12x4xi16>
          %311 = vector.gather %309[%c7] [%94], %93, %310 : tensor<1xi16>, vector<1x12x4xi32>, vector<1x12x4xi1>, vector<1x12x4xi16> into vector<1x12x4xi16>
          vector.print %305 : vector<4x1xi32>
          %312 = math.round %15 : tensor<1xf16>
          %313 = arith.minsi %c1298104246_i64, %c1298104246_i64 : i64
          %314 = vector.shuffle %280, %283 [1] : vector<1xi1>, vector<1xi1>
          %315 = math.ctlz %304 : tensor<4x1xi32>
          %316 = math.round %10 : tensor<1x12x4xf32>
          %317 = arith.remsi %c0_i16, %c-178_i16 : i16
          scf.yield %in : i32
        }
        %297 = math.atan %cst : f32
        %298 = scf.execute_region -> i1 {
          affine.store %c131246616_i32, %alloc_17[%c3] : memref<1xi32>
          %301 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 * 32)>(%rank, %c0, %52, %rank_21)
          %302 = index.mul %301, %rank_22
          memref.tensor_store %3, %alloc_4 : memref<1x12x4xi16>
          %c3242_i16 = arith.constant 3242 : i16
          %303 = arith.xori %in, %in : i32
          %304 = math.atan %15 : tensor<1xf16>
          %305 = math.ctpop %c1298104246_i64 : i64
          %306 = index.ceildivu %rank_22, %c2
          memref.assume_alignment %alloc_13, 1 : memref<4x1xi16>
          %307 = index.divu %c0, %c8
          %308 = arith.ceildivsi %c-178_i16, %c-19390_i16 : i16
          %c741024497_i32 = arith.constant 741024497 : i32
          %309 = arith.remsi %c-19390_i16, %c0_i16 : i16
          %310 = arith.maxui %c131246616_i32, %extracted_33 : i32
          %311 = arith.maxsi %c131246616_i32, %in : i32
          scf.yield %false : i1
        }
        vector.print %280 : vector<1xi1>
        %299 = math.copysign %13, %13 : tensor<1xf32>
        %300 = math.fma %15, %15, %9 : tensor<1xf16>
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    %98 = index.divs %45, %c9
    %99 = arith.shli %74, %74 : i1
    bufferization.dealloc_tensor %15 : tensor<1xf16>
    %100 = bufferization.to_memref %19 : memref<i16>
    %101 = memref.atomic_rmw andi %c131246616_i32, %alloc_17[%c0] : (i32, memref<1xi32>) -> i32
    %c1293051477_i32 = arith.constant 1293051477 : i32
    %102 = vector.matrix_multiply %71, %71 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
    %103 = vector.reduction <mul>, %102 : vector<1xf32> into f32
    %104 = math.fpowi %15, %1 : tensor<1xf16>, tensor<1xi32>
    %105 = math.ctpop %19 : tensor<i16>
    %106 = math.cttz %c1298104246_i64 : i64
    %107 = math.ceil %9 : tensor<1xf16>
    %108 = arith.ceildivsi %c27303_i16, %c27303_i16 : i16
    %109 = vector.splat %c14 : vector<1x12xindex>
    %110 = arith.floordivsi %c1402345042_i64, %c1298104246_i64 : i64
    %111 = math.fpowi %13, %1 : tensor<1xf32>, tensor<1xi32>
    %112 = math.exp2 %cst : f32
    %113 = vector.broadcast %cst_3 : f32 to vector<1x12xf32>
    %114 = vector.fma %113, %83, %113 : vector<1x12xf32>
    %115 = index.castu %c131246616_i32 : i32 to index
    %116 = math.log1p %cst_2 : f16
    %117 = index.ceildivs %98, %c3
    %118 = tensor.empty() : tensor<4x12xf32>
    %119 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%118, %13 : tensor<4x12xf32>, tensor<1xf32>) outs(%10 : tensor<1x12x4xf32>) {
    ^bb0(%in: f32, %in_33: f32, %out: f32):
      %270 = arith.remf %in, %out : f32
      %271 = vector.insert %false, %88 [0] : i1 into vector<1xi1>
      %272 = arith.remf %in_33, %out : f32
      %273 = index.floordivs %c15, %c0
      %274 = arith.mulf %cst, %in : f32
      %275 = arith.remf %cst_1, %cst_2 : f16
      memref.assume_alignment %alloc_6, 8 : memref<1xf32>
      %276 = math.cos %9 : tensor<1xf16>
      %277 = math.cttz %16 : tensor<1xi1>
      %278 = math.cttz %c32441890_i64 : i64
      %279 = tensor.empty() : tensor<4x1xi32>
      %280 = vector.broadcast %c131246616_i32 : i32 to vector<1x1xi32>
      %281 = vector.outerproduct %89, %87, %280 {kind = #vector.kind<or>} : vector<1xi32>, vector<1xi32>
      %282 = affine.load %alloc_10[%c12] : memref<1xi16>
      %283 = index.ceildivs %52, %45
      %284 = math.cttz %19 : tensor<i16>
      %285 = index.ceildivu %57, %45
      %286 = arith.remf %34, %34 : f32
      %287 = math.log2 %cst_1 : f16
      %288 = arith.shli %c0_i16, %c-19390_i16 : i16
      %289 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 floordiv 8 - 2, d2 - (d1 + 1) + 36, d0, (d1 floordiv 8 - 2) ceildiv 4)>(%c0, %rank_21, %273, %c5)
      %290 = tensor.empty() : tensor<1xi64>
      %mapped_34 = linalg.map ins(%14, %7, %transposed : tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) outs(%290 : tensor<1xi64>)
        (%in_36: i64, %in_37: i64, %in_38: i64) {
          %304 = math.log10 %8 : tensor<1x12xf16>
          %305 = arith.divui %in_38, %in_38 : i64
          %306 = bufferization.clone %alloc : memref<1x12xi16> to memref<1x12xi16>
          %307 = math.atan2 %8, %8 : tensor<1x12xf16>
          %dest, %accumulated_value = vector.scan <add>, %66, %88 {inclusive = false, reduction_dim = 0 : i64} : vector<1x1xi1>, vector<1xi1>
          %true_39 = index.bool.constant true
          %308 = vector.flat_transpose %89 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
          %309 = arith.minsi %c-19390_i16, %c0_i16 : i16
          %310 = arith.xori %in_36, %c1289410718_i64 : i64
          %311 = math.log10 %15 : tensor<1xf16>
          %312 = arith.maxui %c-19390_i16, %c-178_i16 : i16
          %313 = vector.reduction <and>, %87 : vector<1xi32> into i32
          %314 = arith.remf %cst, %34 : f32
          %315 = math.atan2 %15, %9 : tensor<1xf16>
          %316 = vector.broadcast %c351828036_i64 : i64 to vector<1x12x4xi64>
          %317 = math.round %in : f32
          %318 = arith.minsi %282, %c27303_i16 : i16
          %319 = arith.muli %c27303_i16, %c-19390_i16 : i16
          %320 = math.atan2 %cst, %in_33 : f32
          %321 = math.ctlz %1 : tensor<1xi32>
          %322 = vector.broadcast %74 : i1 to vector<1x1x12xi1>
          %323 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %55, %93, %322 : vector<4x1xi1>, vector<1x12x4xi1> into vector<1x1x12xi1>
          %324 = arith.ori %in_37, %c1289410718_i64 : i64
          %alloc_40 = memref.alloc() : memref<1x12x4xf16>
          %325 = vector.broadcast %cst_2 : f16 to vector<1x12x4xf16>
          %326 = vector.gather %alloc_40[%c15, %285, %c9] [%92], %93, %325 : memref<1x12x4xf16>, vector<1x12x4xi32>, vector<1x12x4xi1>, vector<1x12x4xf16> into vector<1x12x4xf16>
          bufferization.dealloc_tensor %1 : tensor<1xi32>
          %327 = arith.mulf %cst_1, %cst_2 : f16
          %328 = index.mul %c14, %56
          %329 = math.tan %15 : tensor<1xf16>
          %330 = index.divu %117, %c11
          %331 = math.log10 %15 : tensor<1xf16>
          %332 = index.maxu %115, %c15
          %333 = arith.minsi %in_37, %c1289410718_i64 : i64
          %334 = math.rsqrt %10 : tensor<1x12x4xf32>
          %c0_i64 = arith.constant 0 : i64
          linalg.yield %c0_i64 : i64
        }
      %291 = arith.ceildivsi %c351828036_i64, %c1003442951_i64 : i64
      %292 = math.log10 %cst_2 : f16
      %293 = math.cttz %5 : tensor<1xi64>
      %294 = vector.matrix_multiply %21, %71 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<1xf32>) -> vector<4xf32>
      %295 = vector.matrix_multiply %87, %89 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
      %296 = arith.shrsi %false, %false_0 : i1
      %expanded = tensor.expand_shape %6 [[0], [1, 2]] : tensor<1x12xi32> into tensor<1x12x1xi32>
      %297 = vector.broadcast %c12 : index to vector<10xindex>
      %298 = vector.broadcast %false_0 : i1 to vector<10xi1>
      %299 = vector.broadcast %in_33 : f32 to vector<10xf32>
      vector.scatter %alloc_6[%c0] [%297], %298, %299 : memref<1xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
      %alloc_35 = memref.alloc() : memref<12x4xf16>
      %300 = tensor.empty() : tensor<1x4xf16>
      %301 = linalg.matmul ins(%8, %alloc_35 : tensor<1x12xf16>, memref<12x4xf16>) outs(%300 : tensor<1x4xf16>) -> tensor<1x4xf16>
      %302 = vector.multi_reduction <mul>, %55, %88 [0] : vector<4x1xi1> to vector<1xi1>
      %303 = math.atan2 %300, %300 : tensor<1x4xf16>
      linalg.yield %cst : f32
    } -> tensor<1x12x4xf32>
    %120 = index.maxu %c11, %c14
    %alloca = memref.alloca() : memref<4x1xi64>
    %121 = tensor.empty() : tensor<4x1xf32>
    %122 = vector.broadcast %74 : i1 to vector<1x12xi1>
    %123 = vector.broadcast %c131246616_i32 : i32 to vector<1x12xi32>
    %124 = vector.gather %121[%c12, %115] [%123], %122, %114 : tensor<4x1xf32>, vector<1x12xi32>, vector<1x12xi1>, vector<1x12xf32> into vector<1x12xf32>
    %125 = arith.shrui %c-19390_i16, %c0_i16 : i16
    %126 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 floordiv 2 + 8)>(%56, %rank_22, %c2, %c14)
    %127 = math.exp2 %8 : tensor<1x12xf16>
    %128 = arith.remf %cst_1, %cst_1 : f16
    %129 = bufferization.clone %95 : memref<1xi32> to memref<1xi32>
    %130 = memref.realloc %alloc_12 : memref<1xi16> to memref<12xi16>
    %131 = math.copysign %15, %9 : tensor<1xf16>
    %132 = arith.divf %cst_2, %cst_1 : f16
    %133 = math.log %cst_2 : f16
    %134 = index.divs %rank_22, %c0
    %135 = math.fpowi %10, %from_elements_20 : tensor<1x12x4xf32>, tensor<1x12x4xi32>
    %136 = math.log10 %13 : tensor<1xf32>
    %137 = math.tanh %121 : tensor<4x1xf32>
    %138 = vector.reduction <add>, %102 : vector<1xf32> into f32
    %139 = arith.mulf %cst, %cst : f32
    %140 = math.cttz %c131246616_i32 : i32
    %141 = index.divu %120, %c8
    %142 = arith.ceildivsi %c1298104246_i64, %c1402345042_i64 : i64
    %143 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 floordiv 16, (d3 ceildiv 16) mod 16, -((d2 floordiv 16) floordiv 16), -((d2 floordiv 16) floordiv 16))>(%c6, %c6, %c3, %c2)
    %144 = arith.maxui %c0_i16, %c-178_i16 : i16
    affine.for %arg2 = 0 to 14 {
    }
    %145 = index.divs %c6, %c12
    %146 = arith.remui %c1289410718_i64, %c32441890_i64 : i64
    %147 = vector.broadcast %cst_1 : f16 to vector<1xf16>
    %148 = math.atan2 %cst_2, %cst_2 : f16
    %149 = index.maxu %141, %143
    %150 = math.log10 %10 : tensor<1x12x4xf32>
    %151 = index.maxu %126, %52
    %152 = index.mul %120, %rank_21
    %153 = math.tan %8 : tensor<1x12xf16>
    %154 = arith.maxui %c1289410718_i64, %c351828036_i64 : i64
    %155 = vector.broadcast %cst : f32 to vector<1x12x4xf32>
    %156 = bufferization.clone %alloc_5 : memref<1x12xf32> to memref<1x12xf32>
    %157 = arith.ceildivsi %c1289410718_i64, %c1402345042_i64 : i64
    %158 = bufferization.clone %156 : memref<1x12xf32> to memref<1x12xf32>
    %159 = affine.apply affine_map<(d0) -> ((((d0 floordiv 16) mod 2) floordiv 128) ceildiv 64)>(%151)
    %160 = math.powf %15, %9 : tensor<1xf16>
    %161 = arith.remui %c351828036_i64, %c1003442951_i64 : i64
    %from_elements_23 = tensor.from_elements %c-19390_i16, %c-178_i16, %c-19390_i16, %c0_i16, %c27303_i16, %c-178_i16, %c-178_i16, %c-19390_i16, %c-19390_i16, %c-178_i16, %c-178_i16, %c-19390_i16, %c27303_i16, %c-19390_i16, %c27303_i16, %c27303_i16, %c0_i16, %c-178_i16, %c-178_i16, %c-19390_i16, %c27303_i16, %c-178_i16, %c27303_i16, %c-178_i16, %c0_i16, %c27303_i16, %c27303_i16, %c27303_i16, %c0_i16, %c27303_i16, %c-19390_i16, %c-19390_i16, %c0_i16, %c27303_i16, %c-178_i16, %c27303_i16, %c-19390_i16, %c-19390_i16, %c-178_i16, %c0_i16, %c-19390_i16, %c0_i16, %c27303_i16, %c-19390_i16, %c-19390_i16, %c27303_i16, %c0_i16, %c-178_i16 : tensor<1x12x4xi16>
    %162 = math.exp2 %34 : f32
    %rank_24 = tensor.rank %1 : tensor<1xi32>
    %163 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 - 8)>(%c7, %c6, %c2, %c10)
    %164 = vector.matrix_multiply %89, %89 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
    %165 = bufferization.clone %158 : memref<1x12xf32> to memref<1x12xf32>
    %166 = arith.remf %34, %cst_3 : f32
    %167 = math.log1p %10 : tensor<1x12x4xf32>
    %168 = vector.matrix_multiply %71, %71 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
    %169 = math.ctpop %c-19390_i16 : i16
    %170 = index.sizeof
    %171 = math.cos %15 : tensor<1xf16>
    memref.copy %alloc_10, %alloc_12 : memref<1xi16> to memref<1xi16>
    %false_25 = index.bool.constant false
    %172 = vector.broadcast %cst_3 : f32 to vector<1x1xf32>
    %173 = vector.outerproduct %168, %102, %172 {kind = #vector.kind<add>} : vector<1xf32>, vector<1xf32>
    %174 = math.tanh %10 : tensor<1x12x4xf32>
    %175 = math.floor %8 : tensor<1x12xf16>
    %176 = arith.negf %cst_1 : f16
    %177 = affine.max affine_map<(d0) -> ((d0 - 56) ceildiv 16, d0 ceildiv 64 + d0, d0 ceildiv 64 - 128)>(%120)
    %178 = math.fpowi %10, %from_elements_20 : tensor<1x12x4xf32>, tensor<1x12x4xi32>
    %179 = index.maxu %c1, %c12
    %180 = arith.divf %cst_2, %cst_2 : f16
    %181 = arith.andi %c0_i16, %c-19390_i16 : i16
    %182 = tensor.empty() : tensor<4x1xi32>
    %183 = math.fpowi %121, %182 : tensor<4x1xf32>, tensor<4x1xi32>
    %184 = math.cos %121 : tensor<4x1xf32>
    %185 = bufferization.clone %alloc_17 : memref<1xi32> to memref<1xi32>
    %186 = index.divs %149, %rank_21
    %187 = math.log1p %cst_3 : f32
    scf.index_switch %c8 
    case 1 {
      %270 = vector.broadcast %c131246616_i32 : i32 to vector<4xi32>
      %271 = vector.insert %270, %92 [0, 8] : vector<4xi32> into vector<1x12x4xi32>
      %272 = math.atan %8 : tensor<1x12xf16>
      %273 = math.tan %10 : tensor<1x12x4xf32>
      %274 = math.fma %34, %34, %cst : f32
      %275 = arith.muli %c131246616_i32, %c131246616_i32 : i32
      %276 = index.maxu %c8, %rank_22
      %277 = arith.shrsi %c-19390_i16, %c-19390_i16 : i16
      %278 = index.ceildivu %170, %c10
      %279 = arith.shrsi %c1402345042_i64, %c351828036_i64 : i64
      %280 = vector.broadcast %145 : index to vector<4xindex>
      %281 = vector.broadcast %false_25 : i1 to vector<4xi1>
      vector.scatter %alloc_17[%c0] [%280], %281, %270 : memref<1xi32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
      scf.if %false_25 {
        %286 = vector.reduction <minui>, %89 : vector<1xi32> into i32
        %287 = vector.broadcast %177 : index to vector<4xindex>
        %288 = vector.broadcast %false_0 : i1 to vector<4xi1>
        %289 = vector.broadcast %c27303_i16 : i16 to vector<4xi16>
        vector.scatter %alloc_13[%c1, %c0] [%287], %288, %289 : memref<4x1xi16>, vector<4xindex>, vector<4xi1>, vector<4xi16>
        %290 = math.floor %8 : tensor<1x12xf16>
        %291 = math.ctlz %12 : tensor<4x1xi1>
        %292 = arith.remf %cst_2, %cst_2 : f16
        %293 = math.copysign %cst_1, %cst_1 : f16
        %294 = vector.create_mask %c3, %45 : vector<4x1xi1>
        %295 = vector.reduction <and>, %87 : vector<1xi32> into i32
      } else {
        bufferization.dealloc_tensor %3 : tensor<1x12x4xi16>
        %286 = math.ctlz %2 : tensor<1x12x4xi1>
        bufferization.dealloc_tensor %collapsed : tensor<12x4xi64>
        %287 = affine.min affine_map<(d0, d1, d2) -> (d2 - (d2 + 4), -(d2 - (d2 + 4)), (d2 + 4) * 64)>(%c6, %152, %c11)
        %288 = arith.xori %c0_i16, %c0_i16 : i16
        %289 = affine.min affine_map<(d0, d1) -> ((d1 - d0) floordiv 16)>(%278, %117)
        %290 = vector.broadcast %c1289410718_i64 : i64 to vector<1xi64>
        %291 = vector.gather %18[%143] [%164], %88, %290 : tensor<1xi64>, vector<1xi32>, vector<1xi1>, vector<1xi64> into vector<1xi64>
        %292 = index.mul %c7, %c13
      }
      %282 = arith.floordivsi %c351828036_i64, %c1003442951_i64 : i64
      %283 = memref.load %158[%c0, %c3] : memref<1x12xf32>
      %284 = math.powf %9, %15 : tensor<1xf16>
      %from_elements_33 = tensor.from_elements %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32 : tensor<4x1xi32>
      %285 = tensor.empty() : tensor<1x12x4xi1>
      %mapped_34 = linalg.map ins(%2 : tensor<1x12x4xi1>) outs(%285 : tensor<1x12x4xi1>)
        (%in: i1) {
          %286 = arith.divui %false, %false_25 : i1
          %287 = arith.divsi %74, %in : i1
          %288 = math.log %13 : tensor<1xf32>
          %289 = index.sub %117, %56
          %290 = math.tanh %cst_2 : f16
          bufferization.dealloc_tensor %3 : tensor<1x12x4xi16>
          %291 = index.divu %c11, %289
          %292 = arith.shrui %c131246616_i32, %c131246616_i32 : i32
          %293 = vector.multi_reduction <add>, %94, %c131246616_i32 [0, 1, 2] : vector<1x12x4xi32> to i32
          memref.assume_alignment %alloc_4, 1 : memref<1x12x4xi16>
          %294 = vector.broadcast %cst : f32 to vector<f32>
          vector.transfer_write %294, %alloc_5[%c15, %45] : vector<f32>, memref<1x12xf32>
          %295 = tensor.empty() : tensor<4x1xi64>
          %296 = vector.broadcast %c1003442951_i64 : i64 to vector<4x1xi64>
          %297 = vector.broadcast %c131246616_i32 : i32 to vector<4x1xi32>
          %298 = vector.gather %295[%151, %c7] [%297], %55, %296 : tensor<4x1xi64>, vector<4x1xi32>, vector<4x1xi1>, vector<4x1xi64> into vector<4x1xi64>
          vector.print %55 : vector<4x1xi1>
          %299 = vector.broadcast %c351828036_i64 : i64 to vector<4x1xi64>
          %alloc_35 = memref.alloc() : memref<1xf32>
          memref.copy %alloc_6, %alloc_35 : memref<1xf32> to memref<1xf32>
          %300 = vector.multi_reduction <maxui>, %88, %false [0] : vector<1xi1> to i1
          memref.tensor_store %from_elements, %alloc_15 : memref<1x12x4xi1>
          %301 = math.cos %cst_1 : f16
          %false_36 = index.bool.constant false
          %302 = arith.minf %34, %cst : f32
          %303 = math.atan2 %8, %8 : tensor<1x12xf16>
          %expanded = tensor.expand_shape %transposed [[0, 1]] : tensor<1xi64> into tensor<1x1xi64>
          %304 = arith.remf %cst_1, %cst_1 : f16
          %305 = math.fma %15, %15, %15 : tensor<1xf16>
          %306 = affine.apply affine_map<(d0, d1, d2) -> (d0 * 2 - (d0 ceildiv 128 + 4))>(%141, %c5, %c9)
          %307 = affine.apply affine_map<(d0) -> (-(d0 - 4))>(%57)
          %308 = arith.ceildivsi %c1289410718_i64, %c1402345042_i64 : i64
          %309 = index.divs %117, %c14
          %310 = vector.multi_reduction <maxf>, %62, %cst_3 [0, 1] : vector<4x1xf32> to f32
          %311 = index.ceildivs %rank_22, %rank_21
          %312 = index.floordivs %52, %c7
          %313 = arith.mulf %cst_1, %cst_2 : f16
          %true_37 = arith.constant true
          linalg.yield %true_37 : i1
        }
      scf.yield
    }
    case 2 {
      %270 = memref.load %165[%c0, %c10] : memref<1x12xf32>
      %271 = index.ceildivu %141, %rank_24
      %272 = arith.cmpi uge, %c-178_i16, %c27303_i16 : i16
      memref.assume_alignment %alloc_6, 8 : memref<1xf32>
      bufferization.dealloc_tensor %23 : tensor<i64>
      affine.store %c131246616_i32, %alloc_17[%c13] : memref<1xi32>
      %273 = scf.while (%arg2 = %alloc_14) : (memref<1x12xf32>) -> memref<1x12xf32> {
        %281 = arith.minsi %false_25, %74 : i1
        %282 = arith.divsi %c131246616_i32, %c131246616_i32 : i32
        %283 = vector.broadcast %c131246616_i32 : i32 to vector<i32>
        vector.transfer_write %283, %95[%c12] : vector<i32>, memref<1xi32>
        %284 = math.log10 %34 : f32
        %285 = arith.andi %c-178_i16, %c0_i16 : i16
        %286 = index.add %143, %56
        %287 = index.mul %c13, %120
        %288 = arith.cmpi sle, %c1298104246_i64, %c1003442951_i64 : i64
        scf.condition(%false) %alloc_5 : memref<1x12xf32>
      } do {
      ^bb0(%arg2: memref<1x12xf32>):
        %281 = vector.reduction <add>, %21 : vector<4xf32> into f32
        %282 = arith.shrui %c131246616_i32, %c131246616_i32 : i32
        %283 = index.floordivs %rank, %c11
        %284 = vector.gather %17[%163] [%123], %122, %122 : tensor<1xi1>, vector<1x12xi32>, vector<1x12xi1>, vector<1x12xi1> into vector<1x12xi1>
        %285 = math.roundeven %9 : tensor<1xf16>
        %286 = memref.realloc %alloc_11 : memref<1xi32> to memref<10xi32>
        vector.print %284 : vector<1x12xi1>
        %287 = math.tan %15 : tensor<1xf16>
        memref.tensor_store %121, %alloc_7 : memref<4x1xf32>
        %288 = arith.remf %cst_2, %cst_1 : f16
        %289 = math.exp2 %15 : tensor<1xf16>
        %290 = bufferization.clone %alloc_16 : memref<4x1xi64> to memref<4x1xi64>
        %291 = math.round %15 : tensor<1xf16>
        %292 = vector.shuffle %93, %93 [0] : vector<1x12x4xi1>, vector<1x12x4xi1>
        %293 = index.maxu %c10, %134
        %294 = vector.broadcast %c131246616_i32 : i32 to vector<1x1xi32>
        %295 = vector.outerproduct %87, %89, %294 {kind = #vector.kind<mul>} : vector<1xi32>, vector<1xi32>
        scf.yield %arg2 : memref<1x12xf32>
      }
      %splat = tensor.splat %cst : tensor<4x1xf32>
      %alloc_33 = memref.alloc() : memref<4xi32>
      %274 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%129, %alloc_33 : memref<1xi32>, memref<4xi32>) outs(%from_elements_20 : tensor<1x12x4xi32>) {
      ^bb0(%in: i32, %in_34: i32, %out: i32):
        %281 = memref.realloc %185 : memref<1xi32> to memref<4xi32>
        %282 = index.divs %126, %149
        %false_35 = index.bool.constant false
        %283 = bufferization.to_tensor %100 : memref<i16>
        %284 = math.ceil %15 : tensor<1xf16>
        memref.assume_alignment %alloc_4, 1 : memref<1x12x4xi16>
        %285 = vector.broadcast %cst_1 : f16 to vector<12xf16>
        %286 = vector.transfer_write %285, %8[%c2, %c5] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<12xf16>, tensor<1x12xf16>
        %287 = math.fpowi %121, %182 : tensor<4x1xf32>, tensor<4x1xi32>
        %288 = index.divs %c9, %151
        %289 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minf>} %168, %62, %21 : vector<1xf32>, vector<4x1xf32> into vector<4xf32>
        %290 = vector.multi_reduction <minf>, %102, %102 [] : vector<1xf32> to vector<1xf32>
        %291 = math.exp %cst_1 : f16
        %292 = vector.broadcast %c1298104246_i64 : i64 to vector<i64>
        %293 = vector.transfer_write %292, %5[%c14] : vector<i64>, tensor<1xi64>
        %294 = math.tanh %cst_3 : f32
        %295 = math.fma %cst, %cst, %34 : f32
        %296 = math.atan2 %9, %9 : tensor<1xf16>
        %297 = index.ceildivu %170, %143
        %298 = math.floor %34 : f32
        %299 = arith.minsi %c1289410718_i64, %c32441890_i64 : i64
        %300 = vector.broadcast %out : i32 to vector<10xi32>
        %301 = vector.broadcast %false_25 : i1 to vector<10xi1>
        %302 = vector.maskedload %alloc_11[%c0], %301, %300 : memref<1xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
        %303 = index.castu %c-19390_i16 : i16 to index
        vector.print %94 : vector<1x12x4xi32>
        %304 = memref.atomic_rmw mins %c-19390_i16, %alloc_10[%c0] : (i16, memref<1xi16>) -> i16
        %305 = arith.remf %cst_2, %cst_2 : f16
        %306 = vector.transpose %94, [2, 1, 0] : vector<1x12x4xi32> to vector<4x12x1xi32>
        %307 = math.absf %cst_2 : f16
        %308 = vector.broadcast %in : i32 to vector<i32>
        vector.transfer_write %308, %alloc_11[%177] : vector<i32>, memref<1xi32>
        memref.tensor_store %97, %129 : memref<1xi32>
        %309 = vector.shuffle %147, %285 [7, 8, 12] : vector<1xf16>, vector<12xf16>
        %310 = math.cttz %4 : tensor<1x12x4xi16>
        %true_36 = arith.constant true
        %311 = arith.remf %cst, %cst : f32
        linalg.yield %in_34 : i32
      } -> tensor<1x12x4xi32>
      %275 = math.tanh %13 : tensor<1xf32>
      %276 = index.casts %271 : index to i32
      %277 = arith.xori %c-19390_i16, %c0_i16 : i16
      %278 = scf.index_switch %c3 -> i64 
      case 1 {
        %281 = index.divs %143, %170
        %282 = vector.load %alloc_15[%c0, %c6, %c3] : memref<1x12x4xi1>, vector<1x12x4xi1>
        %283 = vector.bitcast %61 : vector<4x1xf32> to vector<4x1xf32>
        %284 = arith.ceildivsi %c1402345042_i64, %c1402345042_i64 : i64
        %285 = arith.minui %74, %false : i1
        %extracted_34 = tensor.extract %from_elements_23[%c0, %c6, %c1] : tensor<1x12x4xi16>
        %286 = arith.remui %c1289410718_i64, %c32441890_i64 : i64
        %287 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %71, %71, %cst : vector<1xf32>, vector<1xf32> into f32
        %288 = math.ctpop %extracted_34 : i16
        %289 = arith.ori %c-178_i16, %c-178_i16 : i16
        %alloca_35 = memref.alloca() : memref<1xi32>
        %290 = vector.matrix_multiply %71, %168 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
        %291 = index.mul %141, %52
        %292 = math.ipowi %12, %12 : tensor<4x1xi1>
        %extracted_36 = tensor.extract %4[%c0, %c1, %c0] : tensor<1x12x4xi16>
        %293 = arith.remf %cst, %34 : f32
        scf.yield %c1298104246_i64 : i64
      }
      case 2 {
        %281 = vector.broadcast %c32441890_i64 : i64 to vector<12xi64>
        %dest, %accumulated_value = vector.scan <xor>, %82, %281 {inclusive = false, reduction_dim = 0 : i64} : vector<1x12xi64>, vector<12xi64>
        %282 = arith.ceildivsi %c131246616_i32, %c131246616_i32 : i32
        %283 = vector.broadcast %cst_1 : f16 to vector<1xf16>
        %284 = math.tan %121 : tensor<4x1xf32>
        %285 = vector.broadcast %74 : i1 to vector<1xi1>
        %286 = arith.divf %34, %cst_3 : f32
        %287 = arith.maxsi %false_25, %false_0 : i1
        %288 = math.fpowi %10, %from_elements_20 : tensor<1x12x4xf32>, tensor<1x12x4xi32>
        %289 = arith.remui %false, %false_0 : i1
        %290 = index.divs %c9, %163
        %291 = math.tanh %13 : tensor<1xf32>
        %alloca_34 = memref.alloca() : memref<1x12xf32>
        %292 = index.divs %c1, %c13
        %293 = arith.remui %c-178_i16, %c0_i16 : i16
        %294 = vector.matrix_multiply %71, %102 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
        %295 = bufferization.to_memref %11 : memref<1xi1>
        scf.yield %c1298104246_i64 : i64
      }
      case 3 {
        %281 = math.absi %collapsed : tensor<12x4xi64>
        %282 = math.ipowi %c1402345042_i64, %c32441890_i64 : i64
        %283 = math.atan %13 : tensor<1xf32>
        %alloc_34 = memref.alloc() : memref<1xi1>
        memref.tensor_store %16, %alloc_34 : memref<1xi1>
        %284 = arith.floordivsi %c1003442951_i64, %c1003442951_i64 : i64
        %285 = math.tan %10 : tensor<1x12x4xf32>
        %286 = math.exp2 %cst : f32
        %287 = memref.atomic_rmw assign %cst_3, %alloc_5[%c0, %c6] : (f32, memref<1x12xf32>) -> f32
        %288 = vector.broadcast %cst_3 : f32 to vector<12x4xf32>
        %289 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %113, %61, %288 : vector<1x12xf32>, vector<4x1xf32> into vector<12x4xf32>
        %290 = math.floor %13 : tensor<1xf32>
        %291 = vector.reduction <maxsi>, %89 : vector<1xi32> into i32
        %292 = vector.bitcast %164 : vector<1xi32> to vector<1xi32>
        %293 = math.copysign %8, %8 : tensor<1x12xf16>
        %294 = math.exp2 %15 : tensor<1xf16>
        %295 = bufferization.clone %alloc_10 : memref<1xi16> to memref<1xi16>
        %296 = math.tan %34 : f32
        scf.yield %c1402345042_i64 : i64
      }
      case 4 {
        %281 = math.cos %cst_1 : f16
        %282 = vector.multi_reduction <minf>, %168, %34 [0] : vector<1xf32> to f32
        %283 = arith.remsi %false, %false_0 : i1
        %c27237_i16 = arith.constant 27237 : i16
        %284 = arith.mulf %cst, %34 : f32
        %285 = arith.remsi %c1003442951_i64, %c32441890_i64 : i64
        %286 = vector.broadcast %c131246616_i32 : i32 to vector<12xi32>
        %287 = vector.broadcast %false_0 : i1 to vector<12xi1>
        %288 = vector.maskedload %alloc_11[%c0], %287, %286 : memref<1xi32>, vector<12xi1>, vector<12xi32> into vector<12xi32>
        %289 = vector.broadcast %c0_i16 : i16 to vector<i16>
        vector.transfer_write %289, %alloc_18[%151, %163] : vector<i16>, memref<4x1xi16>
        %290 = math.round %10 : tensor<1x12x4xf32>
        %291 = vector.create_mask %c1 : vector<1xi1>
        %extracted_34 = tensor.extract %12[%c2, %c0] : tensor<4x1xi1>
        %292 = index.castu %c351828036_i64 : i64 to index
        %293 = vector.reduction <maxui>, %89 : vector<1xi32> into i32
        %294 = arith.divsi %c-19390_i16, %c-178_i16 : i16
        %295 = math.log %15 : tensor<1xf16>
        %296 = arith.shrsi %c-178_i16, %c0_i16 : i16
        scf.yield %c1003442951_i64 : i64
      }
      default {
        %281 = memref.realloc %185 : memref<1xi32> to memref<4xi32>
        %282 = math.cttz %6 : tensor<1x12xi32>
        %c1_i16 = arith.constant 1 : i16
        %283 = vector.transfer_read %alloc_10[%56], %c1_i16 : memref<1xi16>, vector<i16>
        %284 = vector.shuffle %123, %123 [0] : vector<1x12xi32>, vector<1x12xi32>
        %285 = vector.bitcast %79 : vector<1x1xi1> to vector<1x1xi1>
        %286 = math.log1p %34 : f32
        %287 = arith.remf %cst_3, %cst : f32
        %288 = bufferization.clone %alloc_18 : memref<4x1xi16> to memref<4x1xi16>
        %289 = vector.broadcast %c7 : index to vector<12xindex>
        %290 = vector.broadcast %false : i1 to vector<12xi1>
        %291 = vector.broadcast %c-178_i16 : i16 to vector<12xi16>
        vector.scatter %alloc_12[%c0] [%289], %290, %291 : memref<1xi16>, vector<12xindex>, vector<12xi1>, vector<12xi16>
        %292 = index.divu %170, %163
        %293 = index.maxs %c5, %c9
        %294 = arith.ceildivsi %c27303_i16, %c-19390_i16 : i16
        %295 = math.exp2 %15 : tensor<1xf16>
        %true_34 = index.bool.constant true
        %296 = vector.broadcast %c32441890_i64 : i64 to vector<12xi64>
        %dest, %accumulated_value = vector.scan <mul>, %82, %296 {inclusive = false, reduction_dim = 0 : i64} : vector<1x12xi64>, vector<12xi64>
        %297 = math.atan2 %cst_1, %cst_1 : f16
        scf.yield %c351828036_i64 : i64
      }
      %279 = index.add %c3, %145
      memref.assume_alignment %alloc_5, 2 : memref<1x12xf32>
      %280 = affine.min affine_map<(d0) -> (-(d0 - 64) + 10, d0 + -(d0 - 64) + d0 - 128)>(%c0)
      scf.yield
    }
    case 3 {
      %270 = vector.load %alloc_5[%c0, %c8] : memref<1x12xf32>, vector<4x1xf32>
      %271 = arith.minf %cst_3, %34 : f32
      %272 = scf.index_switch %c4 -> i32 
      case 1 {
        %285 = math.atan %8 : tensor<1x12xf16>
        %286 = memref.atomic_rmw addf %34, %alloc_14[%c0, %c7] : (f32, memref<1x12xf32>) -> f32
        %287 = vector.broadcast %rank_24 : index to vector<4xindex>
        %288 = vector.broadcast %false : i1 to vector<4xi1>
        vector.scatter %alloc_5[%c0, %c5] [%287], %288, %21 : memref<1x12xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
        %289 = math.log10 %34 : f32
        %290 = math.round %15 : tensor<1xf16>
        %291 = vector.broadcast %34 : f32 to vector<4x1xf32>
        %292 = vector.fma %291, %61, %62 : vector<4x1xf32>
        %293 = vector.load %alloc_13[%c0, %c0] : memref<4x1xi16>, vector<1x12xi16>
        %294 = index.ceildivu %rank_24, %56
        %295 = vector.reduction <add>, %89 : vector<1xi32> into i32
        %296 = vector.broadcast %c0_i16 : i16 to vector<12xi16>
        %297 = vector.insert %296, %293 [0] : vector<12xi16> into vector<1x12xi16>
        %298 = vector.load %alloc_4[%c0, %c5, %c2] : memref<1x12x4xi16>, vector<1x12x4xi16>
        %299 = vector.multi_reduction <maxf>, %114, %168 [1] : vector<1x12xf32> to vector<1xf32>
        %300 = arith.shrui %c1298104246_i64, %c1003442951_i64 : i64
        %301 = arith.muli %c1289410718_i64, %c1289410718_i64 : i64
        %rank_33 = tensor.rank %8 : tensor<1x12xf16>
        memref.assume_alignment %alloc_6, 8 : memref<1xf32>
        scf.yield %c131246616_i32 : i32
      }
      case 2 {
        %285 = vector.bitcast %270 : vector<4x1xf32> to vector<4x1xf32>
        %286 = vector.extract_strided_slice %66 {offsets = [0], sizes = [1], strides = [1]} : vector<1x1xi1> to vector<1x1xi1>
        %287 = arith.cmpf oge, %cst, %cst_3 : f32
        %288 = bufferization.to_memref %0 : memref<1x12x4xi64>
        %289 = math.ctpop %from_elements : tensor<1x12x4xi1>
        %290 = arith.mulf %cst, %cst : f32
        %c-29474_i16 = arith.constant -29474 : i16
        %291 = math.floor %15 : tensor<1xf16>
        %292 = math.atan %8 : tensor<1x12xf16>
        %from_elements_33 = tensor.from_elements %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1 : tensor<1x12x4xf16>
        %293 = arith.shrsi %false_0, %false_25 : i1
        %294 = arith.mulf %cst, %cst_3 : f32
        %295 = math.exp2 %9 : tensor<1xf16>
        %296 = arith.minf %cst_3, %cst_3 : f32
        %inserted = tensor.insert %c131246616_i32 into %182[%c0, %c0] : tensor<4x1xi32>
        %297 = arith.remf %cst_2, %cst_1 : f16
        scf.yield %c131246616_i32 : i32
      }
      case 3 {
        %285 = arith.ori %c131246616_i32, %c131246616_i32 : i32
        %dest, %accumulated_value = vector.scan <xor>, %79, %88 {inclusive = true, reduction_dim = 0 : i64} : vector<1x1xi1>, vector<1xi1>
        %286 = bufferization.to_tensor %165 : memref<1x12xf32>
        %287 = index.divs %177, %c2
        %288 = arith.xori %c1003442951_i64, %c1289410718_i64 : i64
        %289 = math.atan %13 : tensor<1xf32>
        %290 = bufferization.to_memref %from_elements : memref<1x12x4xi1>
        %291 = vector.create_mask %rank_21, %177, %rank_22 : vector<1x12x4xi1>
        %292 = arith.divsi %false_0, %false_0 : i1
        %293 = vector.flat_transpose %102 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
        %294 = arith.muli %c0_i16, %c27303_i16 : i16
        %alloc_33 = memref.alloc() : memref<i16>
        memref.copy %100, %alloc_33 : memref<i16> to memref<i16>
        %295 = index.mul %c3, %126
        %296 = affine.apply affine_map<(d0, d1, d2) -> (d0 * 2 - (d0 ceildiv 128 + 4))>(%c3, %141, %52)
        %297 = index.mul %115, %152
        %298 = math.cos %13 : tensor<1xf32>
        scf.yield %c131246616_i32 : i32
      }
      default {
        %285 = vector.matrix_multiply %147, %147 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
        %286 = arith.divui %74, %false : i1
        %287 = math.fma %cst, %cst, %34 : f32
        %288 = affine.max affine_map<(d0) -> ((d0 + 64) * 2, ((d0 ceildiv 4) mod 128) * -8, d0 + 62)>(%120)
        %289 = arith.ori %c-178_i16, %c-19390_i16 : i16
        %290 = bufferization.to_memref %182 : memref<4x1xi32>
        %291 = math.fpowi %9, %1 : tensor<1xf16>, tensor<1xi32>
        %292 = math.fma %15, %9, %15 : tensor<1xf16>
        %293 = memref.atomic_rmw addi %c1003442951_i64, %alloc_16[%c0, %c0] : (i64, memref<4x1xi64>) -> i64
        %294 = math.exp2 %34 : f32
        %295 = vector.create_mask %rank, %98 : vector<1x12xi1>
        %alloc_33 = memref.alloc() : memref<4x1xi64>
        %296 = tensor.empty() : tensor<12x1xi64>
        %297 = linalg.matmul ins(%collapsed, %alloc_33 : tensor<12x4xi64>, memref<4x1xi64>) outs(%296 : tensor<12x1xi64>) -> tensor<12x1xi64>
        %298 = vector.create_mask %159, %177 : vector<1x12xi1>
        %299 = math.ceil %121 : tensor<4x1xf32>
        %300 = vector.broadcast %c-178_i16 : i16 to vector<12x4xi16>
        vector.transfer_write %300, %alloc_4[%45, %c12, %c2] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<12x4xi16>, memref<1x12x4xi16>
        %301 = math.ctpop %1 : tensor<1xi32>
        scf.yield %c131246616_i32 : i32
      }
      %273 = math.fma %9, %15, %9 : tensor<1xf16>
      %274 = index.divu %c15, %rank_24
      %275 = arith.maxsi %c1298104246_i64, %c1289410718_i64 : i64
      %276 = arith.negf %34 : f32
      %277 = arith.shli %false_25, %false : i1
      %278 = arith.remf %cst_1, %cst_2 : f16
      %279 = vector.reduction <mul>, %147 : vector<1xf16> into f16
      %280 = memref.realloc %alloc_10 : memref<1xi16> to memref<10xi16>
      memref.tensor_store %97, %alloc_11 : memref<1xi32>
      %281 = arith.minui %c351828036_i64, %c1289410718_i64 : i64
      %282 = arith.addf %cst_3, %34 : f32
      %283 = bufferization.to_tensor %156 : memref<1x12xf32>
      %284 = vector.gather %8[%126, %45] [%164], %88, %147 : tensor<1x12xf16>, vector<1xi32>, vector<1xi1>, vector<1xf16> into vector<1xf16>
      scf.yield
    }
    default {
      %270 = affine.if affine_set<(d0, d1) : (d0 * -129 >= 0, d0 floordiv 16 >= 0, -d0 >= 0, d0 floordiv 128 - 128 == 0)>(%c15, %c6) -> memref<1x12x4xi1> {
        %286 = index.mul %c10, %c13
        memref.copy %129, %185 : memref<1xi32> to memref<1xi32>
        %287 = math.fpowi %cst_1, %c131246616_i32 : f16, i32
        %288 = memref.atomic_rmw ori %c0_i16, %alloc_13[%c2, %c0] : (i16, memref<4x1xi16>) -> i16
        %289 = arith.ori %c0_i16, %c27303_i16 : i16
        %290 = bufferization.clone %129 : memref<1xi32> to memref<1xi32>
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_35 = arith.constant 0 : i64
        %291 = vector.transfer_read %5[%170], %c0_i64_35 : tensor<1xi64>, vector<i64>
        %292 = math.fpowi %8, %6 : tensor<1x12xf16>, tensor<1x12xi32>
        affine.yield %alloc_15 : memref<1x12x4xi1>
      } else {
        %286 = math.ipowi %3, %3 : tensor<1x12x4xi16>
        %287 = math.atan %cst_2 : f16
        %288 = arith.minui %false_0, %false_0 : i1
        %289 = arith.remf %cst, %34 : f32
        bufferization.dealloc_tensor %4 : tensor<1x12x4xi16>
        %290 = bufferization.clone %95 : memref<1xi32> to memref<1xi32>
        memref.copy %alloc_5, %156 : memref<1x12xf32> to memref<1x12xf32>
        %291 = index.maxu %c0, %56
        affine.yield %alloc_15 : memref<1x12x4xi1>
      }
      %271 = arith.floordivsi %c1289410718_i64, %c351828036_i64 : i64
      %272 = math.round %cst_1 : f16
      %273 = index.divu %c5, %152
      %274 = bufferization.to_memref %13 : memref<1xf32>
      %extracted_33 = tensor.extract %121[%c0, %c0] : tensor<4x1xf32>
      %275 = arith.shrui %false_0, %false : i1
      %276 = vector.create_mask %rank_24, %179 : vector<4x1xi1>
      %277 = index.ceildivs %163, %c15
      %278 = arith.minui %c27303_i16, %c27303_i16 : i16
      %279 = arith.maxui %c1289410718_i64, %c351828036_i64 : i64
      %280 = memref.realloc %alloc_17 : memref<1xi32> to memref<4xi32>
      %281 = vector.load %alloc_17[%c0] : memref<1xi32>, vector<1x12xi32>
      %alloc_34 = memref.alloc() : memref<1x1xi1>
      %282 = tensor.empty() : tensor<4x1xi1>
      %283 = linalg.matmul ins(%12, %alloc_34 : tensor<4x1xi1>, memref<1x1xi1>) outs(%282 : tensor<4x1xi1>) -> tensor<4x1xi1>
      %284 = arith.maxui %c-178_i16, %c-178_i16 : i16
      %285 = arith.remf %extracted_33, %cst_3 : f32
    }
    %188 = arith.negf %34 : f32
    %189 = vector.shuffle %122, %122 [0] : vector<1x12xi1>, vector<1x12xi1>
    %190 = arith.remf %34, %34 : f32
    %191 = arith.addf %cst_1, %cst_1 : f16
    %192 = affine.max affine_map<(d0, d1) -> (d1 * 2 + d0 floordiv 8, d1 * 16 + d0, -d0, -d0 - d1 + 4)>(%179, %120)
    memref.assume_alignment %alloc_17, 4 : memref<1xi32>
    %193 = bufferization.to_tensor %alloc_4 : memref<1x12x4xi16>
    %194 = index.divu %c15, %143
    %195 = arith.xori %false_0, %74 : i1
    %196 = arith.remf %cst_3, %cst_3 : f32
    %197 = arith.mulf %cst_1, %cst_1 : f16
    %198 = index.sub %56, %c13
    %199 = arith.remf %cst, %cst_3 : f32
    %200 = tensor.empty(%56) : tensor<?xf16>
    %201 = bufferization.to_memref %10 : memref<1x12x4xf32>
    memref.copy %156, %alloc_5 : memref<1x12xf32> to memref<1x12xf32>
    %202 = math.roundeven %15 : tensor<1xf16>
    %203 = arith.cmpf olt, %cst_2, %cst_2 : f16
    %204 = index.divs %c15, %120
    %205 = vector.splat %rank_24 : vector<1x12x4xindex>
    %206 = vector.extract %61[3] : vector<4x1xf32>
    %207 = arith.xori %c1298104246_i64, %c351828036_i64 : i64
    %208 = vector.bitcast %94 : vector<1x12x4xi32> to vector<1x12x4xi32>
    %209 = math.powf %10, %10 : tensor<1x12x4xf32>
    %from_elements_26 = tensor.from_elements %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2 : tensor<1x12x4xf16>
    %210 = arith.maxui %c1289410718_i64, %c1289410718_i64 : i64
    %211 = arith.minf %cst_1, %cst_2 : f16
    scf.index_switch %c2 
    case 1 {
      %alloc_33 = memref.alloc() : memref<12x1xi16>
      %alloc_34 = memref.alloc() : memref<1x4x12xi16>
      %270 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_33, %alloc_34 : memref<12x1xi16>, memref<1x4x12xi16>) outs(%4 : tensor<1x12x4xi16>) {
      ^bb0(%in: i16, %in_35: i16, %out: i16):
        %286 = math.floor %34 : f32
        %287 = vector.create_mask %c8, %c9, %204 : vector<1x12x4xi1>
        %288 = index.floordivs %rank_24, %c5
        %289 = vector.broadcast %56 : index to vector<12xindex>
        %290 = vector.broadcast %74 : i1 to vector<12xi1>
        %291 = vector.broadcast %c1289410718_i64 : i64 to vector<12xi64>
        vector.scatter %alloc_16[%c0, %c0] [%289], %290, %291 : memref<4x1xi64>, vector<12xindex>, vector<12xi1>, vector<12xi64>
        %292 = math.cos %cst_2 : f16
        %293 = math.ceil %cst_1 : f16
        %294 = vector.shuffle %87, %164 [0, 1] : vector<1xi32>, vector<1xi32>
        memref.assume_alignment %alloc_8, 4 : memref<1x12xf16>
        %295 = affine.min affine_map<(d0, d1) -> (((d1 floordiv 2) mod 8) * 4)>(%163, %rank_21)
        %296 = affine.load %alloc[%c12, %c8] : memref<1x12xi16>
        %splat = tensor.splat %c1003442951_i64 : tensor<4x1xi64>
        %297 = tensor.empty(%rank_24) : tensor<?x12xf16>
        %298 = vector.broadcast %c1298104246_i64 : i64 to vector<4x1xi64>
        %299 = vector.broadcast %c131246616_i32 : i32 to vector<4x1xi32>
        %300 = vector.gather %14[%c0] [%299], %55, %298 : tensor<1xi64>, vector<4x1xi32>, vector<4x1xi1>, vector<4x1xi64> into vector<4x1xi64>
        %301 = vector.broadcast %c-178_i16 : i16 to vector<1xi16>
        %302 = vector.gather %alloc[%152, %c10] [%164], %88, %301 : memref<1x12xi16>, vector<1xi32>, vector<1xi1>, vector<1xi16> into vector<1xi16>
        %303 = math.round %121 : tensor<4x1xf32>
        %304 = math.fpowi %8, %6 : tensor<1x12xf16>, tensor<1x12xi32>
        %305 = tensor.empty() : tensor<12x12xi32>
        %306 = tensor.empty() : tensor<1x12xi32>
        %307 = linalg.matmul ins(%6, %305 : tensor<1x12xi32>, tensor<12x12xi32>) outs(%306 : tensor<1x12xi32>) -> tensor<1x12xi32>
        %308 = math.exp2 %15 : tensor<1xf16>
        vector.print %113 : vector<1x12xf32>
        %309 = arith.maxui %out, %in_35 : i16
        %310 = index.maxs %288, %c14
        %311 = vector.extract_strided_slice %83 {offsets = [0], sizes = [1], strides = [1]} : vector<1x12xf32> to vector<1x12xf32>
        %312 = arith.xori %c1003442951_i64, %c32441890_i64 : i64
        %313 = math.copysign %10, %10 : tensor<1x12x4xf32>
        %314 = math.atan2 %15, %15 : tensor<1xf16>
        vector.print %208 : vector<1x12x4xi32>
        %315 = math.floor %from_elements_26 : tensor<1x12x4xf16>
        %316 = math.fpowi %cst_3, %c131246616_i32 : f32, i32
        %from_elements_36 = tensor.from_elements %c351828036_i64, %c351828036_i64, %c1298104246_i64, %c32441890_i64 : tensor<4x1xi64>
        %dest, %accumulated_value = vector.scan <maxui>, %66, %88 {inclusive = false, reduction_dim = 1 : i64} : vector<1x1xi1>, vector<1xi1>
        %alloc_37 = memref.alloc() : memref<1xi64>
        memref.tensor_store %5, %alloc_37 : memref<1xi64>
        %extracted_38 = tensor.extract %182[%c3, %c0] : tensor<4x1xi32>
        linalg.yield %c-178_i16 : i16
      } -> tensor<1x12x4xi16>
      vector.print %114 : vector<1x12xf32>
      %271 = math.atan2 %from_elements_26, %from_elements_26 : tensor<1x12x4xf16>
      %272 = index.ceildivs %c2, %115
      %273 = vector.gather %transposed[%c15] [%123], %122, %82 : tensor<1xi64>, vector<1x12xi32>, vector<1x12xi1>, vector<1x12xi64> into vector<1x12xi64>
      %274 = vector.broadcast %c131246616_i32 : i32 to vector<i32>
      %275 = vector.transfer_write %274, %from_elements_20[%c15, %52, %c9] : vector<i32>, tensor<1x12x4xi32>
      %276 = math.cttz %182 : tensor<4x1xi32>
      %277 = index.sub %163, %rank_24
      %278 = arith.minui %c0_i16, %c0_i16 : i16
      memref.copy %158, %156 : memref<1x12xf32> to memref<1x12xf32>
      %279 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %89, %164, %c131246616_i32 : vector<1xi32>, vector<1xi32> into i32
      %c924401067_i32 = arith.constant 924401067 : i32
      %280 = arith.cmpi ugt, %c1298104246_i64, %c1289410718_i64 : i64
      %281 = vector.broadcast %177 : index to vector<12xindex>
      %282 = vector.broadcast %false : i1 to vector<12xi1>
      %283 = vector.broadcast %cst_2 : f16 to vector<12xf16>
      vector.scatter %alloc_8[%c0, %c7] [%281], %282, %283 : memref<1x12xf16>, vector<12xindex>, vector<12xi1>, vector<12xf16>
      %284 = math.floor %10 : tensor<1x12x4xf32>
      %285 = bufferization.clone %alloc_5 : memref<1x12xf32> to memref<1x12xf32>
      scf.yield
    }
    default {
      %270 = math.powf %121, %121 : tensor<4x1xf32>
      %271 = index.sub %177, %186
      %272 = vector.broadcast %c131246616_i32 : i32 to vector<1x1xi32>
      %273 = vector.outerproduct %87, %164, %272 {kind = #vector.kind<minui>} : vector<1xi32>, vector<1xi32>
      %274 = arith.divsi %c1003442951_i64, %c1003442951_i64 : i64
      %275 = math.tan %8 : tensor<1x12xf16>
      %alloc_33 = memref.alloc() : memref<1x12xi32>
      %276 = vector.gather %alloc_33[%145, %149] [%123], %122, %123 : memref<1x12xi32>, vector<1x12xi32>, vector<1x12xi1>, vector<1x12xi32> into vector<1x12xi32>
      %277 = vector.matrix_multiply %102, %168 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
      %278 = math.roundeven %9 : tensor<1xf16>
      %279 = index.ceildivu %141, %192
      %280 = arith.minsi %c27303_i16, %c27303_i16 : i16
      %281 = arith.minsi %c1289410718_i64, %c351828036_i64 : i64
      %generated = tensor.generate %163 {
      ^bb0(%arg2: index):
        %285 = math.ctlz %0 : tensor<1x12x4xi64>
        %286 = vector.splat %cst : vector<1x12x4xf32>
        %287 = index.sub %c15, %45
        %extracted_34 = tensor.extract %10[%c0, %c0, %c0] : tensor<1x12x4xf32>
        tensor.yield %c27303_i16 : i16
      } : tensor<?xi16>
      %282 = math.round %cst_3 : f32
      affine.for %arg2 = 0 to 103 {
      }
      %283 = index.ceildivu %c9, %271
      %284 = arith.remf %34, %34 : f32
    }
    %212 = vector.bitcast %114 : vector<1x12xf32> to vector<1x12xf32>
    %213 = arith.mulf %cst_1, %cst_1 : f16
    %alloc_27 = memref.alloc() : memref<1xf16>
    memref.tensor_store %15, %alloc_27 : memref<1xf16>
    %214 = arith.ceildivsi %74, %false : i1
    %215 = bufferization.clone %alloc_12 : memref<1xi16> to memref<1xi16>
    %216 = memref.load %alloc_4[%c0, %c0, %c0] : memref<1x12x4xi16>
    %alloc_28 = memref.alloc() : memref<12x1xi32>
    %217 = tensor.empty() : tensor<1x1xi32>
    %218 = linalg.matmul ins(%6, %alloc_28 : tensor<1x12xi32>, memref<12x1xi32>) outs(%217 : tensor<1x1xi32>) -> tensor<1x1xi32>
    %219 = math.exp2 %13 : tensor<1xf32>
    %extracted = tensor.extract %7[%c0] : tensor<1xi64>
    %220 = memref.alloca_scope  -> (i16) {
      %270 = index.maxu %rank_21, %c11
      %271 = arith.maxui %c1298104246_i64, %c1298104246_i64 : i64
      %272 = index.ceildivu %145, %52
      %273 = arith.ori %c351828036_i64, %c32441890_i64 : i64
      %274 = math.roundeven %13 : tensor<1xf32>
      %275 = arith.maxui %false_0, %false_25 : i1
      %276 = memref.realloc %alloc_17 : memref<1xi32> to memref<12xi32>
      %277 = affine.max affine_map<(d0, d1, d2) -> (d1 - d0, d0)>(%170, %143, %270)
      %278 = arith.xori %false_25, %74 : i1
      %279 = math.copysign %10, %10 : tensor<1x12x4xf32>
      %280 = arith.minui %c1289410718_i64, %extracted : i64
      %281 = arith.xori %extracted, %c1003442951_i64 : i64
      %282 = index.maxu %c6, %117
      %283 = vector.create_mask %282, %52 : vector<4x1xi1>
      %284 = arith.remui %c27303_i16, %c27303_i16 : i16
      %285 = math.log10 %15 : tensor<1xf16>
      %286 = memref.load %156[%c0, %c3] : memref<1x12xf32>
      %false_33 = arith.constant false
      %alloca_34 = memref.alloca() : memref<1x12xi64>
      %287 = math.cttz %c0_i16 : i16
      %288 = math.round %from_elements_26 : tensor<1x12x4xf16>
      %289 = bufferization.clone %alloc_7 : memref<4x1xf32> to memref<4x1xf32>
      %290 = memref.load %alloc_17[%c0] : memref<1xi32>
      %291 = math.log1p %9 : tensor<1xf16>
      memref.alloca_scope  {
        %297 = arith.ceildivsi %false_25, %false : i1
        %298 = arith.addf %34, %34 : f32
        %from_elements_36 = tensor.from_elements %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32, %c131246616_i32 : tensor<1x12x4xi32>
        %299 = vector.matrix_multiply %71, %21 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<1xf32>, vector<4xf32>) -> vector<4xf32>
        %300 = arith.ceildivsi %c0_i16, %c0_i16 : i16
        %301 = arith.floordivsi %c1402345042_i64, %c351828036_i64 : i64
        %302 = memref.load %alloc_12[%c0] : memref<1xi16>
        %303 = math.ceil %10 : tensor<1x12x4xf32>
        %304 = math.round %34 : f32
        %305 = index.ceildivu %c13, %204
        %cst_37 = arith.constant 5.142400e+04 : f16
        %306 = math.cttz %11 : tensor<1xi1>
        %cst_38 = arith.constant 1.000000e+00 : f32
        %307 = vector.transfer_read %165[%277, %177], %cst_38 : memref<1x12xf32>, vector<10xf32>
        %alloca_39 = memref.alloca() : memref<1x12xf16>
        %308 = vector.flat_transpose %168 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
        %309 = vector.broadcast %cst_2 : f16 to vector<f16>
        %310 = vector.transfer_write %309, %9[%c15] : vector<f16>, tensor<1xf16>
        %311 = vector.broadcast %false_25 : i1 to vector<1x12xi1>
        %312 = bufferization.to_tensor %289 : memref<4x1xf32>
        %313 = math.ctpop %7 : tensor<1xi64>
        %314 = math.tan %121 : tensor<4x1xf32>
        %315 = arith.ori %c27303_i16, %c-19390_i16 : i16
        %316 = math.round %cst_2 : f16
        %317 = vector.broadcast %c131246616_i32 : i32 to vector<10xi32>
        %318 = vector.broadcast %false_0 : i1 to vector<10xi1>
        %319 = vector.maskedload %185[%c0], %318, %317 : memref<1xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
        %320 = math.copysign %8, %8 : tensor<1x12xf16>
        %321 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 - 1, d2 ceildiv 16, d1, -(d2 - 2))>(%159, %277, %c2, %179)
        %322 = math.ipowi %c1289410718_i64, %c351828036_i64 : i64
        %323 = vector.create_mask %rank_24, %c10 : vector<1x12xi1>
        %324 = arith.floordivsi %c1298104246_i64, %c1298104246_i64 : i64
        %325 = vector.broadcast %rank : index to vector<12xindex>
        %326 = vector.broadcast %false_25 : i1 to vector<12xi1>
        %327 = vector.broadcast %cst_3 : f32 to vector<12xf32>
        vector.scatter %alloc_7[%c2, %c0] [%325], %326, %327 : memref<4x1xf32>, vector<12xindex>, vector<12xi1>, vector<12xf32>
        %328 = math.floor %312 : tensor<4x1xf32>
        %329 = vector.bitcast %318 : vector<10xi1> to vector<10xi1>
        %330 = bufferization.to_tensor %100 : memref<i16>
      }
      %292 = index.floordivs %143, %126
      %extracted_35 = tensor.extract %8[%c0, %c4] : tensor<1x12xf16>
      %293 = math.ipowi %5, %18 : tensor<1xi64>
      %294 = arith.remsi %c131246616_i32, %c131246616_i32 : i32
      memref.assume_alignment %alloc_16, 4 : memref<4x1xi64>
      %295 = bufferization.clone %158 : memref<1x12xf32> to memref<1x12xf32>
      %296 = arith.divf %cst_1, %cst_2 : f16
      memref.alloca_scope.return %c0_i16 : i16
    }
    %221 = math.log1p %8 : tensor<1x12xf16>
    %222 = arith.remf %cst, %cst_3 : f32
    %223 = index.mul %c7, %117
    %224 = math.copysign %9, %9 : tensor<1xf16>
    %alloc_29 = memref.alloc() : memref<1xi64>
    memref.tensor_store %7, %alloc_29 : memref<1xi64>
    %225 = vector.gather %alloc_15[%186, %c5, %149] [%94], %93, %93 : memref<1x12x4xi1>, vector<1x12x4xi32>, vector<1x12x4xi1>, vector<1x12x4xi1> into vector<1x12x4xi1>
    %226 = index.casts %c1402345042_i64 : i64 to index
    %227 = math.log1p %8 : tensor<1x12xf16>
    %228 = vector.matrix_multiply %147, %147 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
    %229 = arith.ori %extracted, %c32441890_i64 : i64
    %230 = arith.remf %34, %cst : f32
    %231 = math.cos %13 : tensor<1xf32>
    %232 = vector.shuffle %21, %206 [0, 3, 4] : vector<4xf32>, vector<1xf32>
    %233 = arith.remf %cst, %cst_3 : f32
    %234 = arith.shrui %extracted, %c32441890_i64 : i64
    memref.alloca_scope  {
      %270 = arith.shli %false_25, %false_25 : i1
      %271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%10 : tensor<1x12x4xf32>) outs(%10 : tensor<1x12x4xf32>) {
      ^bb0(%in: f32, %out: f32):
        %295 = vector.broadcast %c351828036_i64 : i64 to vector<1xi64>
        %alloc_33 = memref.alloc() : memref<1x12x4xi1>
        memref.copy %alloc_15, %alloc_33 : memref<1x12x4xi1> to memref<1x12x4xi1>
        %296 = arith.floordivsi %c0_i16, %c0_i16 : i16
        %297 = bufferization.to_tensor %alloc_14 : memref<1x12xf32>
        %298 = math.fma %8, %8, %8 : tensor<1x12xf16>
        %299 = index.ceildivs %194, %rank_24
        %300 = vector.load %185[%c0] : memref<1xi32>, vector<1x12x4xi32>
        %301 = arith.shrsi %false_0, %false_0 : i1
        %302 = math.log10 %13 : tensor<1xf32>
        %303 = math.log %8 : tensor<1x12xf16>
        %304 = arith.negf %34 : f32
        %305 = math.ctpop %1 : tensor<1xi32>
        %306 = math.log10 %8 : tensor<1x12xf16>
        %307 = arith.minsi %false_25, %false_25 : i1
        affine.store %c-19390_i16, %alloc_10[%c4] : memref<1xi16>
        %308 = arith.remf %cst_1, %cst_2 : f16
        %309 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%c5, %c7, %c10)
        %alloca_34 = memref.alloca() : memref<4x1xi32>
        %310 = memref.realloc %129 : memref<1xi32> to memref<4xi32>
        %311 = vector.broadcast %false : i1 to vector<1x12x4xi1>
        vector.print %92 : vector<1x12x4xi32>
        %312 = vector.broadcast %c131246616_i32 : i32 to vector<1x1xi32>
        %313 = vector.outerproduct %164, %164, %312 {kind = #vector.kind<and>} : vector<1xi32>, vector<1xi32>
        %314 = arith.ori %c131246616_i32, %c131246616_i32 : i32
        %true_35 = arith.constant true
        %false_36 = arith.constant false
        %315 = vector.transfer_read %2[%98, %149, %226], %false_36 {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : tensor<1x12x4xi1>, vector<12x12xi1>
        %316 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %168, %206, %in : vector<1xf32>, vector<1xf32> into f32
        %317 = memref.realloc %95 : memref<1xi32> to memref<12xi32>
        %318 = vector.extract_strided_slice %124 {offsets = [0], sizes = [1], strides = [1]} : vector<1x12xf32> to vector<1x12xf32>
        %expanded = tensor.expand_shape %from_elements_20 [[0], [1], [2, 3]] : tensor<1x12x4xi32> into tensor<1x12x4x1xi32>
        %splat = tensor.splat %out : tensor<1xf32>
        %319 = math.log1p %34 : f32
        %320 = math.copysign %8, %8 : tensor<1x12xf16>
        %321 = index.sub %c0, %rank_22
        linalg.yield %in : f32
      } -> tensor<1x12x4xf32>
      %272 = arith.maxsi %c0_i16, %220 : i16
      %273 = math.log %10 : tensor<1x12x4xf32>
      %274 = index.sub %rank_24, %98
      %275 = vector.bitcast %124 : vector<1x12xf32> to vector<1x12xf32>
      %276 = math.powf %cst_2, %cst_2 : f16
      %generated = tensor.generate %134, %c11 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %295 = bufferization.to_tensor %129 : memref<1xi32>
        %296 = math.round %13 : tensor<1xf32>
        %297 = arith.remui %extracted, %c1298104246_i64 : i64
        %298 = arith.remui %220, %c27303_i16 : i16
        tensor.yield %false_0 : i1
      } : tensor<?x?x4xi1>
      %277 = memref.load %alloc_17[%c0] : memref<1xi32>
      %278 = arith.maxui %c32441890_i64, %c1402345042_i64 : i64
      %279 = arith.ceildivsi %false_25, %false_25 : i1
      %280 = math.ctlz %c131246616_i32 : i32
      bufferization.dealloc_tensor %2 : tensor<1x12x4xi1>
      %281 = arith.divsi %c-178_i16, %c-178_i16 : i16
      memref.assume_alignment %129, 4 : memref<1xi32>
      %282 = vector.shuffle %225, %93 [0, 1] : vector<1x12x4xi1>, vector<1x12x4xi1>
      %283 = math.ctlz %from_elements : tensor<1x12x4xi1>
      %284 = index.sub %c5, %98
      affine.store %c-19390_i16, %alloc[%c0, %c7] : memref<1x12xi16>
      %285 = math.copysign %cst_1, %cst_2 : f16
      %286 = vector.shuffle %168, %206 [0, 1] : vector<1xf32>, vector<1xf32>
      %287 = math.ipowi %193, %from_elements_23 : tensor<1x12x4xi16>
      %288 = vector.gather %17[%rank] [%208], %93, %93 : tensor<1xi1>, vector<1x12x4xi32>, vector<1x12x4xi1>, vector<1x12x4xi1> into vector<1x12x4xi1>
      %289 = arith.negf %cst : f32
      %290 = affine.apply affine_map<(d0, d1) -> (d1 - 128)>(%152, %98)
      memref.copy %156, %165 : memref<1x12xf32> to memref<1x12xf32>
      memref.alloca_scope  {
        %295 = arith.remf %cst_3, %34 : f32
        %collapsed_33 = tensor.collapse_shape %from_elements [[0, 1], [2]] : tensor<1x12x4xi1> into tensor<12x4xi1>
        %296 = bufferization.clone %156 : memref<1x12xf32> to memref<1x12xf32>
        %297 = arith.subi %c27303_i16, %c27303_i16 : i16
        %298 = arith.remf %cst_3, %cst_3 : f32
        %splat = tensor.splat %74 : tensor<4x1xi1>
        %299 = vector.multi_reduction <mul>, %61, %61 [] : vector<4x1xf32> to vector<4x1xf32>
        %300 = arith.cmpi ult, %false, %false_0 : i1
        %splat_34 = tensor.splat %34 : tensor<1x12xf32>
        %cst_35 = arith.constant 1.000000e+00 : f32
        %cst_36 = arith.constant 0.000000e+00 : f32
        %301 = vector.transfer_read %296[%226, %c6], %cst_36 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<1x12xf32>, vector<1xf32>
        %302 = index.ceildivu %284, %56
        %303 = arith.remf %cst_1, %cst_2 : f16
        memref.store %c131246616_i32, %95[%c0] : memref<1xi32>
        %304 = arith.minui %c351828036_i64, %c32441890_i64 : i64
        %305 = memref.realloc %alloc_11 : memref<1xi32> to memref<4xi32>
        affine.store %c-178_i16, %100[] : memref<i16>
        %306 = arith.shli %extracted, %c1402345042_i64 : i64
        %307 = vector.create_mask %rank_22, %143, %c5 : vector<1x12x4xi1>
        %dest, %accumulated_value = vector.scan <maxui>, %225, %122 {inclusive = false, reduction_dim = 2 : i64} : vector<1x12x4xi1>, vector<1x12xi1>
        %308 = arith.floordivsi %extracted, %c1402345042_i64 : i64
        %309 = vector.bitcast %62 : vector<4x1xf32> to vector<4x1xi32>
        %310 = index.add %143, %rank_22
        %c413487192_i64 = arith.constant 413487192 : i64
        %311 = bufferization.to_tensor %215 : memref<1xi16>
        %312 = arith.maxsi %c1298104246_i64, %c1003442951_i64 : i64
        %313 = arith.minsi %c131246616_i32, %c131246616_i32 : i32
        %314 = bufferization.to_tensor %185 : memref<1xi32>
        %315 = math.log1p %cst : f32
        %316 = math.tan %cst_1 : f16
        %317 = vector.maskedload %alloc_11[%c0], %88, %89 : memref<1xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
        %318 = memref.atomic_rmw andi %c131246616_i32, %alloc_9[%c1, %c0] : (i32, memref<4x1xi32>) -> i32
        %319 = arith.ceildivsi %c-178_i16, %c-178_i16 : i16
      }
      %291 = affine.apply affine_map<(d0) -> (-(d0 - 4))>(%c3)
      %292 = arith.negf %cst_3 : f32
      memref.copy %158, %156 : memref<1x12xf32> to memref<1x12xf32>
      %293 = math.round %8 : tensor<1x12xf16>
      %294 = index.maxu %143, %c7
    }
    %235 = math.round %10 : tensor<1x12x4xf32>
    %236 = arith.floordivsi %c32441890_i64, %c1298104246_i64 : i64
    %237 = arith.shli %c1402345042_i64, %c351828036_i64 : i64
    %238 = arith.remf %cst_2, %cst_2 : f16
    %239 = vector.broadcast %cst_3 : f32 to vector<1x12xf32>
    %240 = math.log1p %10 : tensor<1x12x4xf32>
    bufferization.dealloc_tensor %217 : tensor<1x1xi32>
    %241 = memref.realloc %alloc_17 : memref<1xi32> to memref<12xi32>
    %242 = arith.divsi %220, %c-178_i16 : i16
    %243 = math.log1p %9 : tensor<1xf16>
    %244 = arith.ori %c1402345042_i64, %c1298104246_i64 : i64
    %cst_30 = arith.constant 1.57635622E+9 : f32
    %245 = math.log %8 : tensor<1x12xf16>
    %246 = math.tanh %cst_2 : f16
    scf.index_switch %c0 
    case 1 {
      %270 = index.maxu %117, %rank
      %271 = math.ctlz %193 : tensor<1x12x4xi16>
      %272 = index.ceildivu %143, %57
      %273 = vector.broadcast %170 : index to vector<1xindex>
      vector.scatter %129[%c0] [%273], %88, %89 : memref<1xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
      %274 = vector.create_mask %159, %143 : vector<4x1xi1>
      %275 = math.copysign %15, %15 : tensor<1xf16>
      %276 = tensor.empty() : tensor<4xi64>
      %277 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%276 : tensor<4xi64>) outs(%0 : tensor<1x12x4xi64>) {
      ^bb0(%in: i64, %out: i64):
        %288 = vector.broadcast %cst : f32 to vector<f32>
        %289 = vector.transfer_write %288, %13[%c6] : vector<f32>, tensor<1xf32>
        %290 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 * 2 - 16, d0 - 8, d1, d3)>(%rank, %179, %c4, %145)
        %291 = math.fpowi %cst_3, %c131246616_i32 : f32, i32
        %292 = math.ctpop %5 : tensor<1xi64>
        %alloc_33 = memref.alloc() : memref<1x12x4xf32>
        memref.copy %201, %alloc_33 : memref<1x12x4xf32> to memref<1x12x4xf32>
        %293 = affine.min affine_map<(d0, d1) -> (-((d1 mod 4) mod 16))>(%115, %163)
        %294 = vector.reduction <minsi>, %164 : vector<1xi32> into i32
        memref.assume_alignment %alloc_13, 1 : memref<4x1xi16>
        %alloc_34 = memref.alloc() : memref<12x4xi32>
        %295 = tensor.empty() : tensor<1x4xi32>
        %296 = linalg.matmul ins(%6, %alloc_34 : tensor<1x12xi32>, memref<12x4xi32>) outs(%295 : tensor<1x4xi32>) -> tensor<1x4xi32>
        %297 = arith.xori %false_25, %false_0 : i1
        %298 = vector.create_mask %117 : vector<1xi1>
        %299 = arith.maxui %extracted, %c1402345042_i64 : i64
        %300 = arith.shrsi %220, %c-19390_i16 : i16
        %301 = math.ctpop %12 : tensor<4x1xi1>
        %302 = arith.divsi %c-178_i16, %220 : i16
        %303 = arith.muli %false, %false : i1
        %304 = vector.broadcast %cst : f32 to vector<12xf32>
        %dest, %accumulated_value = vector.scan <mul>, %124, %304 {inclusive = false, reduction_dim = 0 : i64} : vector<1x12xf32>, vector<12xf32>
        %305 = vector.broadcast %56 : index to vector<12xindex>
        %306 = vector.broadcast %false : i1 to vector<12xi1>
        %307 = vector.broadcast %c0_i16 : i16 to vector<12xi16>
        vector.scatter %alloc_18[%c3, %c0] [%305], %306, %307 : memref<4x1xi16>, vector<12xindex>, vector<12xi1>, vector<12xi16>
        %308 = vector.transpose %164, [0] : vector<1xi32> to vector<1xi32>
        %expanded = tensor.expand_shape %4 [[0], [1], [2, 3]] : tensor<1x12x4xi16> into tensor<1x12x4x1xi16>
        %false_35 = arith.constant false
        %309 = math.ctpop %reduced : tensor<i16>
        %310 = bufferization.to_tensor %156 : memref<1x12xf32>
        %311 = math.log10 %9 : tensor<1xf16>
        %312 = arith.remf %cst, %cst_3 : f32
        %313 = arith.divsi %c351828036_i64, %out : i64
        memref.tensor_store %13, %alloc_6 : memref<1xf32>
        %314 = arith.divsi %c1298104246_i64, %c1003442951_i64 : i64
        %c15464_i16 = arith.constant 15464 : i16
        %alloca_36 = memref.alloca() : memref<4x1xi1>
        %315 = bufferization.to_memref %3 : memref<1x12x4xi16>
        memref.assume_alignment %100, 4 : memref<i16>
        linalg.yield %c351828036_i64 : i64
      } -> tensor<1x12x4xi64>
      %278 = arith.mulf %cst_1, %cst_2 : f16
      %279 = index.divs %141, %c1
      %280 = math.log1p %13 : tensor<1xf32>
      %281 = math.fpowi %13, %97 : tensor<1xf32>, tensor<1xi32>
      %282 = vector.broadcast %cst_3 : f32 to vector<1x1xf32>
      %283 = vector.outerproduct %102, %71, %282 {kind = #vector.kind<add>} : vector<1xf32>, vector<1xf32>
      %284 = arith.remui %extracted, %extracted : i64
      %285 = index.divu %134, %145
      %286 = arith.shrsi %c1003442951_i64, %c1298104246_i64 : i64
      %287 = vector.load %alloc_5[%c0, %c11] : memref<1x12xf32>, vector<1x12xf32>
      scf.yield
    }
    default {
      %from_elements_33 = tensor.from_elements %34, %34, %34, %cst, %34, %cst_3, %cst, %34, %34, %34, %34, %34, %cst_3, %34, %cst_3, %34, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst, %cst_3, %cst, %cst, %34, %cst, %34, %cst, %cst, %cst_3, %34, %34, %34, %cst, %cst_3, %cst_3, %cst, %34, %cst_3, %34, %cst_3, %34, %34 : tensor<1x12x4xf32>
      %270 = vector.broadcast %223 : index to vector<12xindex>
      %271 = vector.broadcast %false_25 : i1 to vector<12xi1>
      %272 = vector.broadcast %c131246616_i32 : i32 to vector<12xi32>
      vector.scatter %alloc_9[%c0, %c0] [%270], %271, %272 : memref<4x1xi32>, vector<12xindex>, vector<12xi1>, vector<12xi32>
      %273 = math.cos %34 : f32
      %274 = vector.multi_reduction <xor>, %87, %c131246616_i32 [0] : vector<1xi32> to i32
      %275 = bufferization.to_memref %12 : memref<4x1xi1>
      %276 = arith.mulf %cst_1, %cst_2 : f16
      %277 = math.powf %15, %15 : tensor<1xf16>
      %278 = arith.negf %34 : f32
      %279 = tensor.empty() : tensor<1xi64>
      %mapped_34 = linalg.map ins(%5, %5, %18 : tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) outs(%279 : tensor<1xi64>)
        (%in: i64, %in_35: i64, %in_36: i64) {
          %286 = vector.broadcast %220 : i16 to vector<i16>
          %287 = vector.transfer_write %286, %3[%c6, %57, %c6] : vector<i16>, tensor<1x12x4xi16>
          %extracted_37 = tensor.extract %5[%c0] : tensor<1xi64>
          %288 = index.maxu %rank_21, %179
          %289 = vector.broadcast %c131246616_i32 : i32 to vector<12xi32>
          %290 = vector.multi_reduction <xor>, %123, %289 [0] : vector<1x12xi32> to vector<12xi32>
          %291 = index.divs %198, %rank_21
          %rank_38 = tensor.rank %7 : tensor<1xi64>
          %292 = affine.load %alloc_8[%c3, %c4] : memref<1x12xf16>
          memref.assume_alignment %275, 1 : memref<4x1xi1>
          %293 = affine.apply affine_map<(d0, d1) -> ((d1 - 128) * 32)>(%52, %c12)
          %294 = arith.andi %220, %c0_i16 : i16
          %295 = arith.shrui %c1298104246_i64, %extracted : i64
          %296 = vector.broadcast %cst_1 : f16 to vector<10xf16>
          %297 = vector.broadcast %false_0 : i1 to vector<10xi1>
          %298 = vector.maskedload %alloc_8[%c0, %c8], %297, %296 : memref<1x12xf16>, vector<10xi1>, vector<10xf16> into vector<10xf16>
          %299 = math.fpowi %292, %274 : f16, i32
          %300 = index.ceildivu %198, %c10
          %301 = index.castu %c3 : index to i32
          %302 = affine.min affine_map<(d0) -> (d0 mod 16 - 64, d0 mod 16, d0 mod 16 - d0, d0 ceildiv 128 + 4)>(%rank_22)
          %303 = arith.minui %c1003442951_i64, %c1289410718_i64 : i64
          %304 = vector.matrix_multiply %296, %298 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xf16>, vector<10xf16>) -> vector<1xf16>
          %305 = index.castu %220 : i16 to index
          %306 = arith.xori %c1003442951_i64, %c1003442951_i64 : i64
          %307 = arith.minsi %false, %74 : i1
          %308 = arith.mulf %cst, %cst_3 : f32
          %309 = arith.floordivsi %in_35, %in_36 : i64
          %310 = arith.muli %in_36, %c1298104246_i64 : i64
          %311 = vector.broadcast %274 : i32 to vector<i32>
          vector.transfer_write %311, %alloc_11[%186] : vector<i32>, memref<1xi32>
          %312 = vector.broadcast %274 : i32 to vector<4x1xi32>
          %313 = vector.gather %alloc_15[%rank_21, %192, %204] [%312], %55, %55 : memref<1x12x4xi1>, vector<4x1xi32>, vector<4x1xi1>, vector<4x1xi1> into vector<4x1xi1>
          %314 = index.maxu %45, %288
          %315 = arith.remf %cst_2, %cst_2 : f16
          memref.store %c27303_i16, %alloc[%c0, %c1] : memref<1x12xi16>
          %316 = arith.floordivsi %c1003442951_i64, %c1289410718_i64 : i64
          bufferization.dealloc_tensor %11 : tensor<1xi1>
          %317 = index.sub %c15, %134
          %c1_i64 = arith.constant 1 : i64
          linalg.yield %c1_i64 : i64
        }
      %280 = scf.if %false -> (memref<1x12xi32>) {
        %from_elements_35 = tensor.from_elements %c-19390_i16, %c-19390_i16, %c-19390_i16, %220 : tensor<4x1xi16>
        %286 = arith.shrsi %c1298104246_i64, %c32441890_i64 : i64
        %287 = math.ipowi %false_25, %false : i1
        %288 = bufferization.to_memref %8 : memref<1x12xf16>
        %289 = vector.broadcast %274 : i32 to vector<4xi32>
        %290 = vector.insert %289, %94 [0, 10] : vector<4xi32> into vector<1x12x4xi32>
        %rank_36 = tensor.rank %2 : tensor<1x12x4xi1>
        %291 = memref.load %215[%c0] : memref<1xi16>
        %292 = arith.ceildivsi %c-19390_i16, %c-19390_i16 : i16
        %alloc_37 = memref.alloc() : memref<1x12xi32>
        scf.yield %alloc_37 : memref<1x12xi32>
      } else {
        %286 = index.casts %rank_24 : index to i32
        %false_35 = index.bool.constant false
        %287 = index.ceildivs %134, %145
        %288 = math.ceil %8 : tensor<1x12xf16>
        %289 = math.copysign %cst_3, %cst_3 : f32
        %290 = math.atan %121 : tensor<4x1xf32>
        %291 = index.divu %179, %120
        %292 = vector.matrix_multiply %88, %88 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
        %alloc_36 = memref.alloc() : memref<1x12xi32>
        scf.yield %alloc_36 : memref<1x12xi32>
      }
      %281 = arith.remf %cst, %cst_3 : f32
      memref.alloca_scope  {
        %286 = arith.divsi %220, %c27303_i16 : i16
        %287 = vector.matrix_multiply %102, %71 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
        %288 = affine.max affine_map<(d0, d1, d2, d3) -> (16)>(%rank, %c6, %rank_24, %rank_22)
        %289 = vector.insertelement %cst, %71[%56 : index] : vector<1xf32>
        %290 = vector.broadcast %cst_1 : f16 to vector<1x1xf16>
        %291 = vector.outerproduct %147, %147, %290 {kind = #vector.kind<maxf>} : vector<1xf16>, vector<1xf16>
        %292 = arith.mulf %cst_3, %cst_3 : f32
        %293 = arith.muli %274, %c131246616_i32 : i32
        %294 = bufferization.clone %alloc_17 : memref<1xi32> to memref<1xi32>
        %295 = arith.ceildivsi %c131246616_i32, %c131246616_i32 : i32
        vector.print %228 : vector<1xf16>
        %296 = bufferization.clone %95 : memref<1xi32> to memref<1xi32>
        %297 = math.log1p %cst_2 : f16
        %298 = tensor.empty() : tensor<1xi16>
        %299 = arith.shli %74, %74 : i1
        %300 = vector.extract %113[0] : vector<1x12xf32>
        %301 = memref.realloc %alloc_6 : memref<1xf32> to memref<12xf32>
        %302 = vector.broadcast %false : i1 to vector<1xi1>
        %303 = vector.transfer_write %302, %12[%45, %194] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xi1>, tensor<4x1xi1>
        %304 = vector.shuffle %164, %87 [0] : vector<1xi32>, vector<1xi32>
        %305 = vector.insertelement %c131246616_i32, %164[%rank_24 : index] : vector<1xi32>
        %306 = arith.minui %c1003442951_i64, %c351828036_i64 : i64
        %307 = vector.shuffle %212, %113 [0, 1] : vector<1x12xf32>, vector<1x12xf32>
        memref.store %false_25, %275[%c1, %c0] : memref<4x1xi1>
        %308 = vector.transpose %147, [0] : vector<1xf16> to vector<1xf16>
        %309 = arith.cmpi ult, %c-19390_i16, %c27303_i16 : i16
        %310 = math.cttz %182 : tensor<4x1xi32>
        %311 = math.atan %13 : tensor<1xf32>
        %312 = arith.addf %cst_3, %34 : f32
        %313 = arith.remf %cst, %cst : f32
        %314 = arith.xori %c-19390_i16, %c27303_i16 : i16
        %alloca_35 = memref.alloca() : memref<1x12xf32>
        %315 = arith.mulf %cst_1, %cst_1 : f16
        %316 = arith.remsi %274, %c131246616_i32 : i32
      }
      %282 = arith.ori %274, %c131246616_i32 : i32
      %283 = vector.multi_reduction <maxui>, %55, %55 [] : vector<4x1xi1> to vector<4x1xi1>
      %284 = math.fma %121, %121, %121 : tensor<4x1xf32>
      %285 = index.divs %143, %117
    }
    %247 = arith.muli %74, %74 : i1
    %248 = vector.broadcast %115 : index to vector<10xindex>
    %249 = vector.broadcast %false : i1 to vector<10xi1>
    vector.scatter %alloc_15[%c0, %c7, %c3] [%248], %249, %249 : memref<1x12x4xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
    %250 = arith.remf %cst, %cst_3 : f32
    memref.copy %alloc_10, %alloc_12 : memref<1xi16> to memref<1xi16>
    %251 = vector.load %alloc_10[%c0] : memref<1xi16>, vector<1x12x4xi16>
    %252 = vector.create_mask %rank : vector<1xi1>
    %253 = vector.create_mask %c15, %c4 : vector<1x12xi1>
    %254 = arith.shrsi %false, %false_0 : i1
    %255 = vector.broadcast %c-19390_i16 : i16 to vector<4x1xi16>
    %256 = affine.max affine_map<(d0, d1, d2) -> (-d0, (d0 * -2) mod 8, d2)>(%rank_24, %c10, %226)
    %257 = arith.divf %cst_2, %cst_1 : f16
    %258 = arith.subi %c-178_i16, %c27303_i16 : i16
    %true = index.bool.constant true
    %259 = index.add %rank_21, %c10
    %260 = arith.ceildivsi %true, %true : i1
    %261 = arith.remf %cst_1, %cst_1 : f16
    %262 = vector.shuffle %21, %71 [1, 2, 3, 4] : vector<4xf32>, vector<1xf32>
    affine.store %c0_i16, %215[%c1] : memref<1xi16>
    %263 = bufferization.to_tensor %alloc : memref<1x12xi16>
    %264 = math.exp2 %cst : f32
    %265 = vector.insert %cst_3, %168 [0] : f32 into vector<1xf32>
    %266 = tensor.empty() : tensor<1x12x4xi16>
    %267 = linalg.copy ins(%4 : tensor<1x12x4xi16>) outs(%266 : tensor<1x12x4xi16>) -> tensor<1x12x4xi16>
    %268 = tensor.empty() : tensor<1xi32>
    %transposed_31 = linalg.transpose ins(%1 : tensor<1xi32>) outs(%268 : tensor<1xi32>) permutation = [0] 
    %alloc_32 = memref.alloc() : memref<f16>
    linalg.reduce ins(%alloc_8 : memref<1x12xf16>) outs(%alloc_32 : memref<f16>) dimensions = [0, 1] 
      (%in: f16, %init: f16) {
        %270 = vector.broadcast %c-19390_i16 : i16 to vector<1xi16>
        %271 = vector.transfer_write %270, %263[%56, %rank_21] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xi16>, tensor<1x12xi16>
        %272 = vector.create_mask %177 : vector<1xi1>
        %273 = math.floor %13 : tensor<1xf32>
        %274 = arith.negf %cst_1 : f16
        %275 = arith.mulf %in, %init : f16
        memref.assume_alignment %95, 2 : memref<1xi32>
        %276 = math.log1p %from_elements_26 : tensor<1x12x4xf16>
        %277 = math.tanh %121 : tensor<4x1xf32>
        %cst_33 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_33 : f16
      }
    scf.parallel (%arg2, %arg3) = (%226, %149) to (%259, %57) step (%c4, %c10) {
      %270 = arith.remf %cst_1, %cst_2 : f16
      %271 = vector.broadcast %c5 : index to vector<4xindex>
      %272 = vector.broadcast %true : i1 to vector<4xi1>
      %273 = vector.broadcast %c131246616_i32 : i32 to vector<4xi32>
      vector.scatter %185[%c0] [%271], %272, %273 : memref<1xi32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
      %274 = index.sub %c4, %163
      %275 = memref.realloc %95 : memref<1xi32> to memref<4xi32>
      %276 = vector.flat_transpose %206 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      %277 = math.tan %34 : f32
      %278 = vector.gather %7[%c1] [%123], %122, %82 : tensor<1xi64>, vector<1x12xi32>, vector<1x12xi1>, vector<1x12xi64> into vector<1x12xi64>
      %279 = math.tanh %from_elements_26 : tensor<1x12x4xf16>
      %280 = arith.shrsi %c1003442951_i64, %c1289410718_i64 : i64
      %281 = index.divs %170, %159
      %282 = arith.andi %c1298104246_i64, %c1402345042_i64 : i64
      %283 = math.cos %13 : tensor<1xf32>
      %284 = math.fpowi %15, %268 : tensor<1xf16>, tensor<1xi32>
      %expanded = tensor.expand_shape %268 [[0, 1]] : tensor<1xi32> into tensor<1x1xi32>
      %285 = arith.addf %cst_2, %cst_1 : f16
      %286 = arith.shli %c351828036_i64, %c351828036_i64 : i64
      scf.yield
    }
    %269 = affine.vector_load %165[%256, %c5] : memref<1x12xf32>, vector<10xf32>
    affine.vector_store %147, %alloc_32[] : memref<f16>, vector<1xf16>
    vector.print %21 : vector<4xf32>
    vector.print %55 : vector<4x1xi1>
    vector.print %61 : vector<4x1xf32>
    vector.print %62 : vector<4x1xf32>
    vector.print %66 : vector<1x1xi1>
    vector.print %71 : vector<1xf32>
    vector.print %79 : vector<1x1xi1>
    vector.print %82 : vector<1x12xi64>
    vector.print %83 : vector<1x12xf32>
    vector.print %87 : vector<1xi32>
    vector.print %88 : vector<1xi1>
    vector.print %89 : vector<1xi32>
    vector.print %90 : vector<1x1xi1>
    vector.print %92 : vector<1x12x4xi32>
    vector.print %93 : vector<1x12x4xi1>
    vector.print %94 : vector<1x12x4xi32>
    vector.print %102 : vector<1xf32>
    vector.print %113 : vector<1x12xf32>
    vector.print %114 : vector<1x12xf32>
    vector.print %122 : vector<1x12xi1>
    vector.print %123 : vector<1x12xi32>
    vector.print %124 : vector<1x12xf32>
    vector.print %147 : vector<1xf16>
    vector.print %155 : vector<1x12x4xf32>
    vector.print %164 : vector<1xi32>
    vector.print %168 : vector<1xf32>
    vector.print %206 : vector<1xf32>
    vector.print %208 : vector<1x12x4xi32>
    vector.print %212 : vector<1x12xf32>
    vector.print %225 : vector<1x12x4xi1>
    vector.print %228 : vector<1xf16>
    vector.print %239 : vector<1x12xf32>
    vector.print %251 : vector<1x12x4xi16>
    vector.print %252 : vector<1xi1>
    vector.print %253 : vector<1x12xi1>
    vector.print %255 : vector<4x1xi16>
    vector.print %269 : vector<10xf32>
    vector.print %cst : f32
    vector.print %false : i1
    vector.print %false_0 : i1
    vector.print %c27303_i16 : i16
    vector.print %c131246616_i32 : i32
    vector.print %c1289410718_i64 : i64
    vector.print %cst_1 : f16
    vector.print %cst_2 : f16
    vector.print %c351828036_i64 : i64
    vector.print %c1402345042_i64 : i64
    vector.print %c-19390_i16 : i16
    vector.print %c1003442951_i64 : i64
    vector.print %c32441890_i64 : i64
    vector.print %c1298104246_i64 : i64
    vector.print %cst_3 : f32
    vector.print %c-178_i16 : i16
    vector.print %34 : f32
    vector.print %c0_i16 : i16
    vector.print %74 : i1
    vector.print %false_25 : i1
    vector.print %extracted : i64
    vector.print %220 : i16
    vector.print %true : i1
    return
  }
}
