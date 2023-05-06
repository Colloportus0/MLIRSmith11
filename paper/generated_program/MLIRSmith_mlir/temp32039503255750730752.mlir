module {
  func.func @func1(%arg0: memref<1xi64>, %arg1: tensor<1x12xi1>) {
    %c-17379_i16 = arith.constant -17379 : i16
    %false = arith.constant false
    %cst = arith.constant 4.979200e+04 : f16
    %c519730330_i32 = arith.constant 519730330 : i32
    %cst_0 = arith.constant 3.846400e+04 : f16
    %c690093038_i64 = arith.constant 690093038 : i64
    %c272311582_i32 = arith.constant 272311582 : i32
    %c1785724393_i64 = arith.constant 1785724393 : i64
    %c1399235909_i64 = arith.constant 1399235909 : i64
    %c-12050_i16 = arith.constant -12050 : i16
    %c4909_i16 = arith.constant 4909 : i16
    %c14762_i16 = arith.constant 14762 : i16
    %false_1 = arith.constant false
    %c22184_i16 = arith.constant 22184 : i16
    %c1241810288_i32 = arith.constant 1241810288 : i32
    %c22122_i16 = arith.constant 22122 : i16
    %0 = tensor.empty() : tensor<1xf16>
    %1 = tensor.empty() : tensor<1x12xi32>
    %2 = tensor.empty() : tensor<1xi16>
    %3 = tensor.empty() : tensor<1x12xi32>
    %4 = tensor.empty() : tensor<7x7x7xi64>
    %5 = tensor.empty() : tensor<1xf32>
    %6 = tensor.empty() : tensor<1x5xf16>
    %7 = tensor.empty() : tensor<1x5xi16>
    %8 = tensor.empty() : tensor<1x5xi64>
    %9 = tensor.empty() : tensor<1xf32>
    %10 = tensor.empty() : tensor<7x7x7xf32>
    %11 = tensor.empty() : tensor<7x7x7xi1>
    %12 = tensor.empty() : tensor<7x7x7xf16>
    %13 = tensor.empty() : tensor<1x5xi16>
    %14 = tensor.empty() : tensor<1x5xf32>
    %15 = tensor.empty() : tensor<1xf32>
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
    %alloc = memref.alloc() : memref<1x12xi1>
    %alloc_2 = memref.alloc() : memref<1x12xi64>
    %alloc_3 = memref.alloc() : memref<7x7x7xf32>
    %alloc_4 = memref.alloc() : memref<1x5xf32>
    %alloc_5 = memref.alloc() : memref<1x5xi1>
    %alloc_6 = memref.alloc() : memref<1xi16>
    %alloc_7 = memref.alloc() : memref<1x12xi1>
    %alloc_8 = memref.alloc() : memref<1x5xi32>
    %alloc_9 = memref.alloc() : memref<1x5xi32>
    %alloc_10 = memref.alloc() : memref<7x7x7xf32>
    %alloc_11 = memref.alloc() : memref<1x12xi1>
    %alloc_12 = memref.alloc() : memref<1x5xi1>
    %alloc_13 = memref.alloc() : memref<1xf16>
    %alloc_14 = memref.alloc() : memref<1x12xi1>
    %alloc_15 = memref.alloc() : memref<1x5xi32>
    %alloc_16 = memref.alloc() : memref<7x7x7xi16>
    %16 = tensor.empty() : tensor<7x7x7xi64>
    %17 = linalg.copy ins(%4 : tensor<7x7x7xi64>) outs(%16 : tensor<7x7x7xi64>) -> tensor<7x7x7xi64>
    %alloc_17 = memref.alloc() : memref<5x1xi64>
    linalg.transpose ins(%8 : tensor<1x5xi64>) outs(%alloc_17 : memref<5x1xi64>) permutation = [1, 0] 
    %alloc_18 = memref.alloc() : memref<f32>
    linalg.reduce ins(%5 : tensor<1xf32>) outs(%alloc_18 : memref<f32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %265 = arith.muli %c272311582_i32, %c1241810288_i32 : i32
        %266 = math.log1p %15 : tensor<1xf32>
        %alloc_37 = memref.alloc() : memref<1x12xi64>
        memref.copy %alloc_2, %alloc_37 : memref<1x12xi64> to memref<1x12xi64>
        %267 = arith.maxf %init, %in : f32
        %alloc_38 = memref.alloc() : memref<1x5xi16>
        memref.tensor_store %7, %alloc_38 : memref<1x5xi16>
        %268 = vector.broadcast %cst : f16 to vector<1x5xf16>
        memref.assume_alignment %alloc_4, 8 : memref<1x5xf32>
        %269 = arith.shrui %c1241810288_i32, %c272311582_i32 : i32
        %cst_39 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_39 : f32
      }
    scf.parallel (%arg2) = (%c7) to (%c6) step (%c13) {
      %collapsed = tensor.collapse_shape %14 [[0, 1]] : tensor<1x5xf32> into tensor<5xf32>
      %265 = vector.broadcast %c10 : index to vector<5xindex>
      %266 = vector.broadcast %false : i1 to vector<5xi1>
      %cst_37 = arith.constant 1.000000e+00 : f32
      %267 = vector.broadcast %cst_37 : f32 to vector<5xf32>
      vector.scatter %alloc_4[%c0, %c3] [%265], %266, %267 : memref<1x5xf32>, vector<5xindex>, vector<5xi1>, vector<5xf32>
      %cst_38 = arith.constant 1.000000e+00 : f32
      %268 = vector.broadcast %cst_38 : f32 to vector<7x7x7xf32>
      %269 = vector.broadcast %cst_38 : f32 to vector<7x7x7xf32>
      %270 = vector.fma %269, %268, %268 : vector<7x7x7xf32>
      %cst_39 = arith.constant 1.000000e+00 : f32
      %271 = vector.transfer_read %9[%c1], %cst_39 : tensor<1xf32>, vector<f32>
      %272 = arith.floordivsi %c22184_i16, %c14762_i16 : i16
      %273 = math.powf %15, %5 : tensor<1xf32>
      %274 = arith.maxf %cst_38, %cst_39 : f32
      %generated_40 = tensor.generate %c2, %c15 {
      ^bb0(%arg3: index, %arg4: index):
        %285 = arith.ceildivsi %c14762_i16, %c14762_i16 : i16
        %alloca_44 = memref.alloca() : memref<1x5xf16>
        %286 = index.maxs %arg3, %c5
        %287 = arith.remf %cst_0, %cst_0 : f16
        tensor.yield %cst_0 : f16
      } : tensor<?x?xf16>
      %275 = math.tan %12 : tensor<7x7x7xf16>
      %276 = memref.load %alloc_9[%c0, %c4] : memref<1x5xi32>
      %alloc_41 = memref.alloc() : memref<1xi1>
      %277 = vector.broadcast %false_1 : i1 to vector<7x7x7xi1>
      %278 = vector.broadcast %c272311582_i32 : i32 to vector<7x7x7xi32>
      %279 = vector.gather %alloc_41[%c7] [%278], %277, %277 : memref<1xi1>, vector<7x7x7xi32>, vector<7x7x7xi1>, vector<7x7x7xi1> into vector<7x7x7xi1>
      %280 = index.ceildivu %c10, %c2
      %281 = vector.broadcast %cst_38 : f32 to vector<7x7xf32>
      %dest_42, %accumulated_value_43 = vector.scan <mul>, %270, %281 {inclusive = true, reduction_dim = 2 : i64} : vector<7x7x7xf32>, vector<7x7xf32>
      %282 = index.add %c2, %c15
      %283 = vector.extract %278[4] : vector<7x7x7xi32>
      %284 = arith.addf %cst_0, %cst : f16
      scf.yield
    }
    %18 = affine.vector_load %alloc_10[%c1, %c1, %c3] : memref<7x7x7xf32>, vector<5xf32>
    affine.vector_store %18, %alloc_3[%c0, %c5, %c5] : memref<7x7x7xf32>, vector<5xf32>
    %19 = tensor.empty() : tensor<1xf32>
    %20 = tensor.empty() : tensor<f32>
    %21 = linalg.dot ins(%15, %19 : tensor<1xf32>, tensor<1xf32>) outs(%20 : tensor<f32>) -> tensor<f32>
    %22 = arith.remui %c519730330_i32, %c519730330_i32 : i32
    %23 = arith.negf %cst_0 : f16
    %24 = scf.if %false -> (memref<1xi32>) {
      %expanded_37 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<1x5xi64> into tensor<1x5x1xi64>
      %265 = math.exp %14 : tensor<1x5xf32>
      %266 = vector.extract_strided_slice %18 {offsets = [1], sizes = [1], strides = [1]} : vector<5xf32> to vector<1xf32>
      memref.assume_alignment %alloc_8, 16 : memref<1x5xi32>
      %267 = vector.transpose %18, [0] : vector<5xf32> to vector<5xf32>
      %268 = arith.negf %cst : f16
      %269 = bufferization.clone %alloc_18 : memref<f32> to memref<f32>
      bufferization.dealloc_tensor %6 : tensor<1x5xf16>
      %alloc_38 = memref.alloc() : memref<1xi32>
      scf.yield %alloc_38 : memref<1xi32>
    } else {
      %265 = arith.divf %cst, %cst_0 : f16
      vector.print %18 : vector<5xf32>
      %266 = arith.addi %false_1, %false_1 : i1
      %267 = index.mul %c6, %c9
      bufferization.dealloc_tensor %14 : tensor<1x5xf32>
      scf.if %false {
        %270 = affine.max affine_map<(d0, d1) -> (d0, d1, d1, ((d1 + d1 + 16) floordiv 4) * 128)>(%c4, %267)
        %271 = vector.create_mask %c0 : vector<1xi1>
        %272 = math.fpowi %cst, %c1241810288_i32 : f16, i32
        %273 = math.roundeven %0 : tensor<1xf16>
        %274 = arith.maxsi %c1399235909_i64, %c1399235909_i64 : i64
        %275 = vector.broadcast %false_1 : i1 to vector<12xi1>
        %276 = vector.maskedload %alloc_14[%c0, %c2], %275, %275 : memref<1x12xi1>, vector<12xi1>, vector<12xi1> into vector<12xi1>
        %277 = vector.extract_strided_slice %276 {offsets = [6], sizes = [5], strides = [1]} : vector<12xi1> to vector<5xi1>
        %278 = arith.minui %c22184_i16, %c-12050_i16 : i16
      }
      %268 = affine.if affine_set<(d0) : (d0 floordiv 2 >= 0)>(%c8) -> i32 {
        %270 = math.atan %15 : tensor<1xf32>
        %271 = affine.min affine_map<(d0, d1) -> ((d0 * -16) ceildiv 32)>(%c2, %c4)
        %272 = arith.mulf %cst, %cst_0 : f16
        affine.store %false_1, %alloc_11[%c15, %c4] : memref<1x12xi1>
        %273 = index.ceildivu %c8, %c5
        %274 = index.castu %c272311582_i32 : i32 to index
        %collapsed = tensor.collapse_shape %7 [[0, 1]] : tensor<1x5xi16> into tensor<5xi16>
        %inserted_38 = tensor.insert %c690093038_i64 into %16[%c5, %c0, %c5] : tensor<7x7x7xi64>
        affine.yield %c272311582_i32 : i32
      } else {
        %from_elements_38 = tensor.from_elements %cst_0, %cst, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst, %cst, %cst_0, %cst, %cst, %cst, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst, %cst, %cst, %cst, %cst_0, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst, %cst, %cst_0, %cst, %cst_0, %cst, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst, %cst_0, %cst_0, %cst, %cst, %cst, %cst_0, %cst, %cst, %cst_0, %cst, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst, %cst, %cst, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst, %cst, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst, %cst_0, %cst, %cst, %cst, %cst_0, %cst, %cst, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst, %cst_0, %cst, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst, %cst, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst : tensor<7x7x7xf16>
        %270 = bufferization.to_tensor %alloc_8 : memref<1x5xi32>
        %271 = tensor.empty() : tensor<1xi32>
        %272 = math.fpowi %0, %271 : tensor<1xf16>, tensor<1xi32>
        %273 = arith.shrui %false_1, %false : i1
        %alloc_39 = memref.alloc() : memref<7x7x7xf16>
        memref.tensor_store %from_elements_38, %alloc_39 : memref<7x7x7xf16>
        %274 = index.add %c12, %c10
        %275 = arith.divui %c22184_i16, %c4909_i16 : i16
        %276 = index.add %c14, %c2
        affine.yield %c1241810288_i32 : i32
      }
      %269 = arith.shrsi %c22122_i16, %c4909_i16 : i16
      %alloc_37 = memref.alloc() : memref<1xi32>
      scf.yield %alloc_37 : memref<1xi32>
    }
    %25 = arith.divf %cst, %cst : f16
    %26 = math.copysign %0, %0 : tensor<1xf16>
    %27 = math.copysign %6, %6 : tensor<1x5xf16>
    %28 = math.cttz %false : i1
    %29 = index.divs %c1, %c15
    %cst_19 = arith.constant 1.000000e+00 : f32
    %30 = vector.insertelement %cst_19, %18[%c9 : index] : vector<5xf32>
    memref.assume_alignment %alloc_6, 4 : memref<1xi16>
    %31 = arith.remsi %c1241810288_i32, %c1241810288_i32 : i32
    %32 = vector.extract %18[2] : vector<5xf32>
    %33 = vector.broadcast %c4 : index to vector<1xindex>
    %34 = vector.broadcast %false : i1 to vector<1xi1>
    %35 = vector.broadcast %c1399235909_i64 : i64 to vector<1xi64>
    vector.scatter %alloc_17[%c2, %c0] [%33], %34, %35 : memref<5x1xi64>, vector<1xindex>, vector<1xi1>, vector<1xi64>
    %36 = index.divu %c13, %c1
    %37 = math.roundeven %15 : tensor<1xf32>
    %38 = index.divs %c1, %c1
    %cast = tensor.cast %3 : tensor<1x12xi32> to tensor<?x?xi32>
    %39 = arith.subi %c22122_i16, %c14762_i16 : i16
    %40 = math.copysign %cst, %cst_0 : f16
    %41 = tensor.empty() : tensor<1xf32>
    %mapped = linalg.map ins(%5 : tensor<1xf32>) outs(%41 : tensor<1xf32>)
      (%in: f32) {
        %265 = index.divs %c2, %c15
        %266 = arith.remf %cst, %cst : f16
        %267 = affine.min affine_map<(d0, d1, d2) -> ((-d1) floordiv 4, (d0 + 64) * 16)>(%c6, %c13, %29)
        %268 = affine.apply affine_map<(d0, d1, d2) -> (d2 + d0)>(%36, %36, %36)
        %269 = affine.if affine_set<(d0) : (-d0 == 0, (d0 floordiv 4 + 8) * 16 - d0 - d0 floordiv 16 >= 0)>(%c11) -> i32 {
          %295 = tensor.empty() : tensor<5x12xi16>
          %296 = tensor.empty() : tensor<1x12xi16>
          %297 = linalg.matmul ins(%13, %295 : tensor<1x5xi16>, tensor<5x12xi16>) outs(%296 : tensor<1x12xi16>) -> tensor<1x12xi16>
          %298 = arith.subi %c-12050_i16, %c22184_i16 : i16
          %299 = math.floor %in : f32
          %300 = index.ceildivu %36, %36
          %301 = math.atan2 %21, %20 : tensor<f32>
          %302 = math.log1p %9 : tensor<1xf32>
          %303 = index.add %c7, %c12
          %304 = vector.broadcast %c-12050_i16 : i16 to vector<1x7x7xi16>
          %305 = vector.broadcast %c22184_i16 : i16 to vector<1x7xi16>
          %dest_42, %accumulated_value_43 = vector.scan <minui>, %304, %305 {inclusive = false, reduction_dim = 2 : i64} : vector<1x7x7xi16>, vector<1x7xi16>
          affine.yield %c519730330_i32 : i32
        } else {
          %295 = vector.shuffle %18, %18 [0, 1, 5, 6, 7, 8] : vector<5xf32>, vector<5xf32>
          %296 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %18, %18, %cst_19 : vector<5xf32>, vector<5xf32> into f32
          %297 = arith.mulf %cst, %cst_0 : f16
          %298 = arith.divui %c-17379_i16, %c-12050_i16 : i16
          %299 = arith.negf %cst : f16
          %300 = vector.reduction <minf>, %18 : vector<5xf32> into f32
          %301 = math.expm1 %9 : tensor<1xf32>
          vector.print %18 : vector<5xf32>
          affine.yield %c519730330_i32 : i32
        }
        %270 = memref.load %alloc_14[%c0, %c1] : memref<1x12xi1>
        %271 = scf.execute_region -> index {
          %295 = arith.minsi %c519730330_i32, %c519730330_i32 : i32
          %296 = math.floor %10 : tensor<7x7x7xf32>
          %297 = arith.subi %false, %false : i1
          %298 = arith.remf %in, %cst_19 : f32
          %299 = math.exp2 %14 : tensor<1x5xf32>
          bufferization.dealloc_tensor %20 : tensor<f32>
          %300 = vector.bitcast %18 : vector<5xf32> to vector<5xf32>
          %from_elements_42 = tensor.from_elements %c1399235909_i64 : tensor<1xi64>
          %301 = bufferization.clone %alloc_9 : memref<1x5xi32> to memref<1x5xi32>
          %302 = vector.multi_reduction <add>, %18, %300 [] : vector<5xf32> to vector<5xf32>
          %303 = vector.bitcast %300 : vector<5xf32> to vector<5xf32>
          %from_elements_43 = tensor.from_elements %c1785724393_i64, %c1785724393_i64, %c1785724393_i64, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %c690093038_i64, %c1785724393_i64, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c690093038_i64, %c1785724393_i64, %c690093038_i64, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c690093038_i64, %c1399235909_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c690093038_i64, %c1399235909_i64, %c690093038_i64, %c1785724393_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %c1785724393_i64, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c1785724393_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c690093038_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %c1785724393_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c1785724393_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %c1785724393_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %c1785724393_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64 : tensor<7x7x7xi64>
          %304 = arith.cmpi sle, %c22184_i16, %c22184_i16 : i16
          %alloca_44 = memref.alloca() : memref<1xf32>
          bufferization.dealloc_tensor %6 : tensor<1x5xf16>
          %305 = index.divs %38, %29
          scf.yield %c4 : index
        }
        %272 = arith.floordivsi %c1399235909_i64, %c1785724393_i64 : i64
        %273 = vector.broadcast %cst : f16 to vector<5x12x7xf16>
        %274 = vector.broadcast %cst : f16 to vector<5x12xf16>
        %dest_37, %accumulated_value_38 = vector.scan <mul>, %273, %274 {inclusive = false, reduction_dim = 2 : i64} : vector<5x12x7xf16>, vector<5x12xf16>
        vector.print %18 : vector<5xf32>
        %275 = index.add %c1, %c2
        %276 = tensor.empty() : tensor<1x12xi1>
        %mapped_39 = linalg.map ins(%alloc_11, %alloc_14 : memref<1x12xi1>, memref<1x12xi1>) outs(%276 : tensor<1x12xi1>)
          (%in_42: i1, %in_43: i1) {
            %295 = index.ceildivu %c13, %c6
            affine.store %cst_19, %alloc_3[%c10, %c4, %c11] : memref<7x7x7xf32>
            %296 = vector.broadcast %c-17379_i16 : i16 to vector<1x1xi16>
            %297 = vector.broadcast %c-17379_i16 : i16 to vector<1xi16>
            %dest_44, %accumulated_value_45 = vector.scan <xor>, %296, %297 {inclusive = true, reduction_dim = 0 : i64} : vector<1x1xi16>, vector<1xi16>
            %298 = math.ceil %10 : tensor<7x7x7xf32>
            %299 = vector.create_mask %c13 : vector<1xi1>
            %300 = math.absf %9 : tensor<1xf32>
            %301 = math.tanh %9 : tensor<1xf32>
            %302 = arith.ori %c-12050_i16, %c14762_i16 : i16
            %303 = bufferization.clone %alloc_16 : memref<7x7x7xi16> to memref<7x7x7xi16>
            %304 = arith.minsi %c4909_i16, %c14762_i16 : i16
            %305 = vector.multi_reduction <minf>, %18, %18 [] : vector<5xf32> to vector<5xf32>
            %306 = arith.addf %in, %cst_19 : f32
            %307 = arith.ori %c22122_i16, %c22184_i16 : i16
            %308 = vector.extract_strided_slice %299 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
            %309 = vector.bitcast %18 : vector<5xf32> to vector<5xf32>
            %310 = index.divs %c0, %c13
            %311 = arith.divf %in, %in : f32
            %312 = arith.subi %c-17379_i16, %c-12050_i16 : i16
            %313 = tensor.empty() : tensor<1x5xi32>
            %314 = vector.broadcast %c272311582_i32 : i32 to vector<1x12xi32>
            %315 = vector.broadcast %false : i1 to vector<1x12xi1>
            %316 = vector.gather %313[%c11, %310] [%314], %315, %314 : tensor<1x5xi32>, vector<1x12xi32>, vector<1x12xi1>, vector<1x12xi32> into vector<1x12xi32>
            %317 = math.floor %10 : tensor<7x7x7xf32>
            vector.print %314 : vector<1x12xi32>
            %318 = arith.subi %c690093038_i64, %c1399235909_i64 : i64
            %319 = math.atan %12 : tensor<7x7x7xf16>
            %320 = math.round %5 : tensor<1xf32>
            %321 = index.casts %c4909_i16 : i16 to index
            %322 = arith.shrsi %in_43, %in_42 : i1
            %323 = vector.broadcast %in : f32 to vector<1xf32>
            %324 = vector.fma %323, %323, %323 : vector<1xf32>
            %325 = math.ipowi %17, %4 : tensor<7x7x7xi64>
            %alloc_46 = memref.alloc() : memref<1x12xi32>
            %326 = vector.gather %alloc_46[%c2, %29] [%314], %315, %314 : memref<1x12xi32>, vector<1x12xi32>, vector<1x12xi1>, vector<1x12xi32> into vector<1x12xi32>
            %327 = bufferization.to_tensor %alloc_12 : memref<1x5xi1>
            %328 = vector.broadcast %c272311582_i32 : i32 to vector<1xi32>
            %dest_47, %accumulated_value_48 = vector.scan <xor>, %316, %328 {inclusive = true, reduction_dim = 1 : i64} : vector<1x12xi32>, vector<1xi32>
            %329 = affine.max affine_map<(d0, d1, d2) -> (-d0 + 4, d1, d2 + 2, d2 - 32)>(%c1, %c11, %c0)
            %false_49 = arith.constant false
            linalg.yield %false_49 : i1
          }
        %alloc_40 = memref.alloc() : memref<1xf32>
        memref.tensor_store %5, %alloc_40 : memref<1xf32>
        %277 = vector.create_mask %c2, %c3 : vector<1x12xi1>
        %278 = vector.matrix_multiply %18, %18 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<5xf32>) -> vector<1xf32>
        %279 = index.divs %268, %c2
        %280 = math.atan %5 : tensor<1xf32>
        %281 = math.ctpop %16 : tensor<7x7x7xi64>
        %282 = index.add %c6, %c4
        %283 = arith.divui %c1241810288_i32, %c272311582_i32 : i32
        %284 = arith.maxf %cst, %cst_0 : f16
        %285 = arith.remsi %c22122_i16, %c-17379_i16 : i16
        %286 = math.round %6 : tensor<1x5xf16>
        %287 = arith.remf %in, %cst_19 : f32
        %288 = arith.remf %cst, %cst : f16
        %289 = math.log1p %cst_0 : f16
        %290 = vector.insertelement %in, %278[%c11 : index] : vector<1xf32>
        %291 = math.tan %10 : tensor<7x7x7xf32>
        %292 = arith.ceildivsi %c22122_i16, %c4909_i16 : i16
        %293 = vector.broadcast %279 : index to vector<5xindex>
        %294 = vector.broadcast %false : i1 to vector<5xi1>
        vector.scatter %alloc_14[%c0, %c6] [%293], %294, %294 : memref<1x12xi1>, vector<5xindex>, vector<5xi1>, vector<5xi1>
        %c30575_i16 = arith.constant 30575 : i16
        affine.for %arg2 = 0 to 77 {
        }
        %cst_41 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_41 : f32
      }
    %42 = math.log1p %6 : tensor<1x5xf16>
    %43 = tensor.empty() : tensor<1x12xi64>
    %mapped_20 = linalg.map ins(%alloc_2, %alloc_2 : memref<1x12xi64>, memref<1x12xi64>) outs(%43 : tensor<1x12xi64>)
      (%in: i64, %in_37: i64) {
        %265 = math.fma %12, %12, %12 : tensor<7x7x7xf16>
        %266 = math.powf %10, %10 : tensor<7x7x7xf32>
        %267 = math.log10 %19 : tensor<1xf32>
        %268 = memref.realloc %alloc_13 : memref<1xf16> to memref<5xf16>
        %269 = affine.if affine_set<(d0, d1, d2) : (d1 == 0)>(%c9, %c13, %c14) -> f32 {
          %splat = tensor.splat %c22184_i16 : tensor<1x12xi16>
          %297 = vector.reduction <mul>, %18 : vector<5xf32> into f32
          %298 = memref.realloc %24 : memref<1xi32> to memref<1xi32>
          %299 = math.tan %41 : tensor<1xf32>
          memref.copy %alloc_9, %alloc_8 : memref<1x5xi32> to memref<1x5xi32>
          %300 = vector.extract_strided_slice %18 {offsets = [1], sizes = [3], strides = [1]} : vector<5xf32> to vector<3xf32>
          %301 = affine.min affine_map<(d0, d1, d2, d3) -> (-(d2 ceildiv 8), d0 + d3 + 1)>(%c5, %c6, %c11, %c8)
          %302 = arith.maxui %c1241810288_i32, %c1241810288_i32 : i32
          affine.yield %cst_19 : f32
        } else {
          %297 = math.log10 %12 : tensor<7x7x7xf16>
          %inserted_40 = tensor.insert %cst_19 into %20[] : tensor<f32>
          %298 = arith.addf %cst_0, %cst_0 : f16
          %299 = bufferization.to_tensor %alloc_6 : memref<1xi16>
          %300 = arith.shrui %in, %c690093038_i64 : i64
          %301 = math.tan %cst_0 : f16
          %302 = vector.broadcast %cst_19 : f32 to vector<1x5xf32>
          %303 = vector.fma %302, %302, %302 : vector<1x5xf32>
          %304 = math.tan %21 : tensor<f32>
          affine.yield %cst_19 : f32
        }
        %270 = index.mul %38, %c10
        %271 = arith.maxui %c519730330_i32, %c519730330_i32 : i32
        %272 = math.cos %41 : tensor<1xf32>
        %273 = arith.ceildivsi %c272311582_i32, %c519730330_i32 : i32
        %274 = arith.shrui %c1399235909_i64, %c1399235909_i64 : i64
        %275 = bufferization.clone %24 : memref<1xi32> to memref<1xi32>
        %276 = arith.remf %cst, %cst : f16
        %277 = vector.broadcast %c1241810288_i32 : i32 to vector<5x1xi32>
        %278 = vector.broadcast %c272311582_i32 : i32 to vector<1xi32>
        %dest_38, %accumulated_value_39 = vector.scan <minui>, %277, %278 {inclusive = true, reduction_dim = 0 : i64} : vector<5x1xi32>, vector<1xi32>
        %279 = arith.subi %c22122_i16, %c22122_i16 : i16
        %280 = memref.load %alloc_11[%c0, %c6] : memref<1x12xi1>
        %281 = memref.realloc %alloc_6 : memref<1xi16> to memref<5xi16>
        vector.print %18 : vector<5xf32>
        %282 = arith.remui %c14762_i16, %c22122_i16 : i16
        %283 = arith.maxui %c-12050_i16, %c14762_i16 : i16
        %284 = vector.multi_reduction <add>, %18, %cst_19 [0] : vector<5xf32> to f32
        %285 = vector.reduction <mul>, %18 : vector<5xf32> into f32
        %286 = math.absf %41 : tensor<1xf32>
        %287 = vector.load %alloc_10[%c5, %c1, %c4] : memref<7x7x7xf32>, vector<1x5xf32>
        %288 = affine.load %alloc[%c0, %c5] : memref<1x12xi1>
        %289 = index.sub %c4, %c0
        %290 = arith.shrui %c519730330_i32, %c1241810288_i32 : i32
        %291 = bufferization.to_memref %1 : memref<1x12xi32>
        %292 = affine.min affine_map<(d0) -> (-130, -130, d0 floordiv 8, (d0 + 2) mod 8)>(%c5)
        %293 = vector.broadcast %cst : f16 to vector<1xf16>
        %294 = vector.transfer_write %293, %12[%c13, %c9, %292] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<1xf16>, tensor<7x7x7xf16>
        %295 = vector.shuffle %287, %287 [1] : vector<1x5xf32>, vector<1x5xf32>
        %296 = arith.cmpf ule, %cst_19, %284 : f32
        memref.store %284, %alloc_10[%c5, %c0, %c2] : memref<7x7x7xf32>
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %44 = math.sqrt %0 : tensor<1xf16>
    %45 = index.maxs %38, %c0
    vector.print %18 : vector<5xf32>
    bufferization.dealloc_tensor %1 : tensor<1x12xi32>
    %46 = bufferization.to_tensor %alloc_10 : memref<7x7x7xf32>
    %alloc_21 = memref.alloc() : memref<5x7xi16>
    %47 = tensor.empty() : tensor<1x7xi16>
    %48 = linalg.matmul ins(%7, %alloc_21 : tensor<1x5xi16>, memref<5x7xi16>) outs(%47 : tensor<1x7xi16>) -> tensor<1x7xi16>
    %49 = math.powf %46, %10 : tensor<7x7x7xf32>
    %50 = math.floor %6 : tensor<1x5xf16>
    %51 = arith.subi %c519730330_i32, %c1241810288_i32 : i32
    %52 = arith.cmpi sge, %c272311582_i32, %c272311582_i32 : i32
    %53 = math.cos %cst_0 : f16
    %54 = vector.broadcast %cst_0 : f16 to vector<12x1xf16>
    %55 = vector.broadcast %cst : f16 to vector<12xf16>
    %dest, %accumulated_value = vector.scan <mul>, %54, %55 {inclusive = true, reduction_dim = 1 : i64} : vector<12x1xf16>, vector<12xf16>
    %56 = memref.alloca_scope  -> (memref<1x12xf16>) {
      %265 = arith.divf %cst_0, %cst_0 : f16
      %266 = arith.shrui %c22184_i16, %c22184_i16 : i16
      %267 = index.ceildivu %c15, %c13
      %268 = arith.remui %false_1, %false : i1
      %269 = vector.broadcast %c6 : index to vector<1xindex>
      %270 = vector.broadcast %false_1 : i1 to vector<1xi1>
      vector.scatter %alloc_11[%c0, %c4] [%269], %270, %270 : memref<1x12xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
      %271 = vector.broadcast %c22184_i16 : i16 to vector<1xi16>
      %272 = vector.create_mask %c14 : vector<1xi1>
      %273 = arith.divf %cst_19, %cst_19 : f32
      %274 = math.tan %9 : tensor<1xf32>
      %275 = index.divs %c3, %c8
      affine.store %false_1, %alloc_11[%c6, %c2] : memref<1x12xi1>
      %276 = index.mul %c8, %c5
      %277 = arith.cmpi sgt, %c22122_i16, %c14762_i16 : i16
      %278 = vector.multi_reduction <maxsi>, %271, %c-17379_i16 [0] : vector<1xi16> to i16
      %279 = math.absi %1 : tensor<1x12xi32>
      %280 = arith.negf %cst : f16
      %281 = vector.create_mask %c11, %c2 : vector<1x5xi1>
      %282 = bufferization.to_tensor %alloc_15 : memref<1x5xi32>
      %283 = arith.ceildivsi %c519730330_i32, %c519730330_i32 : i32
      %splat = tensor.splat %c1785724393_i64 : tensor<7x7x7xi64>
      %284 = arith.ceildivsi %c690093038_i64, %c1785724393_i64 : i64
      scf.if %false_1 {
        %293 = arith.divsi %278, %c-17379_i16 : i16
        %294 = index.ceildivu %267, %c9
        %295 = arith.minui %c22184_i16, %c4909_i16 : i16
        %296 = vector.broadcast %c9 : index to vector<5xindex>
        %297 = vector.broadcast %false_1 : i1 to vector<5xi1>
        vector.scatter %alloc_5[%c0, %c0] [%296], %297, %297 : memref<1x5xi1>, vector<5xindex>, vector<5xi1>, vector<5xi1>
        %extracted = tensor.extract %2[%c0] : tensor<1xi16>
        %298 = arith.divui %c272311582_i32, %c272311582_i32 : i32
        %299 = bufferization.clone %alloc_9 : memref<1x5xi32> to memref<1x5xi32>
        %300 = arith.mulf %cst_0, %cst : f16
      } else {
        %293 = math.log1p %6 : tensor<1x5xf16>
        %294 = memref.realloc %24 : memref<1xi32> to memref<5xi32>
        %295 = arith.maxui %c22122_i16, %c22122_i16 : i16
        %296 = tensor.empty(%45) : tensor<?xi32>
        %false_40 = index.bool.constant false
        %297 = index.add %36, %c7
        %false_41 = index.bool.constant false
        %298 = math.sqrt %5 : tensor<1xf32>
      }
      %285 = tensor.empty() : tensor<1xi32>
      %286 = math.fpowi %15, %285 : tensor<1xf32>, tensor<1xi32>
      memref.copy %alloc_5, %alloc_12 : memref<1x5xi1> to memref<1x5xi1>
      %287 = vector.matrix_multiply %271, %271 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
      %288 = arith.ori %c14762_i16, %c22122_i16 : i16
      %289 = index.floordivs %c11, %c6
      %c1_i16 = arith.constant 1 : i16
      %290 = vector.transfer_read %7[%c15, %c5], %c1_i16 : tensor<1x5xi16>, vector<i16>
      affine.store %false, %alloc[%c15, %c1] : memref<1x12xi1>
      %291 = vector.create_mask %c9, %c13 : vector<1x5xi1>
      %dest_37, %accumulated_value_38 = vector.scan <maxui>, %281, %272 {inclusive = true, reduction_dim = 1 : i64} : vector<1x5xi1>, vector<1xi1>
      %292 = arith.ceildivsi %c690093038_i64, %c1399235909_i64 : i64
      %alloc_39 = memref.alloc() : memref<1x12xf16>
      memref.alloca_scope.return %alloc_39 : memref<1x12xf16>
    }
    %57 = index.divs %c3, %c12
    bufferization.dealloc_tensor %9 : tensor<1xf32>
    %58 = affine.min affine_map<(d0, d1) -> (d0 * 4 - 4, -2)>(%c13, %38)
    %from_elements = tensor.from_elements %c4909_i16, %c14762_i16, %c22122_i16, %c22184_i16, %c-17379_i16, %c22122_i16, %c14762_i16, %c-17379_i16, %c-17379_i16, %c22184_i16, %c-17379_i16, %c4909_i16 : tensor<1x12xi16>
    %59 = math.ceil %10 : tensor<7x7x7xf32>
    %60 = arith.divui %c4909_i16, %c-12050_i16 : i16
    %cast_22 = tensor.cast %41 : tensor<1xf32> to tensor<?xf32>
    %61 = bufferization.clone %alloc_4 : memref<1x5xf32> to memref<1x5xf32>
    %62 = arith.divf %cst, %cst : f16
    %63 = memref.realloc %alloc_13 : memref<1xf16> to memref<12xf16>
    %64 = arith.shli %c-17379_i16, %c22184_i16 : i16
    %65 = affine.load %alloc[%c15, %c6] : memref<1x12xi1>
    %66 = arith.divf %cst_19, %cst_19 : f32
    %67 = index.add %c6, %c10
    %68 = tensor.empty() : tensor<1xi64>
    %69 = arith.remf %cst_19, %cst_19 : f32
    %70 = math.absf %0 : tensor<1xf16>
    %71 = bufferization.to_tensor %alloc_3 : memref<7x7x7xf32>
    %72 = vector.reduction <mul>, %18 : vector<5xf32> into f32
    %73 = bufferization.to_tensor %24 : memref<1xi32>
    %74 = bufferization.clone %alloc_5 : memref<1x5xi1> to memref<1x5xi1>
    %75 = math.fpowi %19, %73 : tensor<1xf32>, tensor<1xi32>
    %76 = index.add %c4, %c1
    %77 = vector.broadcast %cst_19 : f32 to vector<1x12xf32>
    %78 = vector.fma %77, %77, %77 : vector<1x12xf32>
    bufferization.dealloc_tensor %73 : tensor<1xi32>
    %79 = vector.broadcast %cst_19 : f32 to vector<1x5xf32>
    %80 = vector.fma %79, %79, %79 : vector<1x5xf32>
    %81 = arith.minf %cst, %cst_0 : f16
    %expanded = tensor.expand_shape %14 [[0], [1, 2]] : tensor<1x5xf32> into tensor<1x5x1xf32>
    %82 = arith.divf %cst_19, %cst_19 : f32
    %83 = bufferization.clone %alloc_5 : memref<1x5xi1> to memref<1x5xi1>
    %84 = arith.cmpi sgt, %c-17379_i16, %c22122_i16 : i16
    %85 = arith.divf %cst_19, %cst_19 : f32
    %86 = index.maxu %c8, %c7
    %87 = vector.extract_strided_slice %80 {offsets = [0], sizes = [1], strides = [1]} : vector<1x5xf32> to vector<1x5xf32>
    %88 = math.tan %cst_19 : f32
    %89 = vector.bitcast %78 : vector<1x12xf32> to vector<1x12xi32>
    %90 = affine.apply affine_map<(d0, d1) -> (0)>(%c6, %86)
    scf.execute_region {
      %265 = vector.broadcast %cst_19 : f32 to vector<1xf32>
      %266 = vector.broadcast %false : i1 to vector<1xi1>
      %267 = vector.broadcast %c272311582_i32 : i32 to vector<1xi32>
      %268 = vector.gather %alloc_3[%c11, %c1, %c0] [%267], %266, %265 : memref<7x7x7xf32>, vector<1xi32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
      %269 = affine.min affine_map<(d0, d1, d2) -> (0, d1, (d1 - d1 floordiv 16) * 2 - d0)>(%c12, %c10, %c5)
      %270 = math.log2 %6 : tensor<1x5xf16>
      %271 = vector.broadcast %cst_19 : f32 to vector<7x7x7xf32>
      %272 = vector.broadcast %false_1 : i1 to vector<7x7x7xi1>
      %273 = vector.broadcast %c519730330_i32 : i32 to vector<7x7x7xi32>
      %274 = vector.gather %71[%c5, %76, %c1] [%273], %272, %271 : tensor<7x7x7xf32>, vector<7x7x7xi32>, vector<7x7x7xi1>, vector<7x7x7xf32> into vector<7x7x7xf32>
      %275 = affine.max affine_map<(d0, d1, d2) -> (-(d2 floordiv 4), (d1 floordiv 32) ceildiv 8, (d2 + 2) floordiv 16, d2)>(%36, %29, %c10)
      %276 = arith.shrui %c22122_i16, %c4909_i16 : i16
      vector.print %18 : vector<5xf32>
      %277 = tensor.empty(%45) : tensor<1x?xi32>
      %278 = vector.broadcast %cst : f16 to vector<1xf16>
      %rank_37 = tensor.rank %21 : tensor<f32>
      %279 = math.log10 %14 : tensor<1x5xf32>
      %280 = index.ceildivu %90, %c14
      %281 = bufferization.clone %61 : memref<1x5xf32> to memref<1x5xf32>
      %282 = arith.subi %c272311582_i32, %c1241810288_i32 : i32
      %283 = arith.subi %65, %false_1 : i1
      %284 = math.floor %10 : tensor<7x7x7xf32>
      scf.yield
    }
    %91 = vector.multi_reduction <add>, %80, %18 [0] : vector<1x5xf32> to vector<5xf32>
    %92 = index.add %86, %c10
    %93 = index.castu %c690093038_i64 : i64 to index
    %94 = math.floor %71 : tensor<7x7x7xf32>
    %95 = arith.shrsi %c1399235909_i64, %c1785724393_i64 : i64
    %96 = arith.addf %cst_0, %cst_0 : f16
    %97 = vector.broadcast %c1785724393_i64 : i64 to vector<7x7x7xi64>
    %98 = vector.broadcast %c4909_i16 : i16 to vector<1x5xi16>
    %99 = vector.broadcast %false_1 : i1 to vector<1x5xi1>
    %100 = vector.broadcast %c519730330_i32 : i32 to vector<1x5xi32>
    %101 = vector.gather %from_elements[%29, %45] [%100], %99, %98 : tensor<1x12xi16>, vector<1x5xi32>, vector<1x5xi1>, vector<1x5xi16> into vector<1x5xi16>
    %102 = vector.broadcast %cst_19 : f32 to vector<7x7x7xf32>
    %103 = vector.fma %102, %102, %102 : vector<7x7x7xf32>
    memref.assume_alignment %alloc_4, 16 : memref<1x5xf32>
    %104 = math.log1p %20 : tensor<f32>
    %105 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d1 - 1) ceildiv 16)>(%c3, %c0, %57, %58)
    affine.store %65, %74[%c5, %c12] : memref<1x5xi1>
    %106 = vector.broadcast %cst : f16 to vector<f16>
    vector.transfer_write %106, %56[%c12, %c2] : vector<f16>, memref<1x12xf16>
    %107 = index.mul %93, %c6
    %108 = arith.minsi %c1785724393_i64, %c1785724393_i64 : i64
    %109 = arith.maxf %cst_19, %cst_19 : f32
    %110 = arith.subi %c22184_i16, %c-17379_i16 : i16
    %111 = arith.andi %c519730330_i32, %c519730330_i32 : i32
    %112 = arith.minsi %c690093038_i64, %c1399235909_i64 : i64
    %113 = memref.load %alloc_17[%c4, %c0] : memref<5x1xi64>
    scf.if %65 {
      %alloc_37 = memref.alloc() : memref<7x7x7xi64>
      memref.tensor_store %16, %alloc_37 : memref<7x7x7xi64>
      %265 = affine.load %alloc_14[%c8, %c1] : memref<1x12xi1>
      %266 = index.castu %c690093038_i64 : i64 to index
      %267 = vector.broadcast %c690093038_i64 : i64 to vector<7x7xi64>
      %dest_38, %accumulated_value_39 = vector.scan <mul>, %97, %267 {inclusive = true, reduction_dim = 2 : i64} : vector<7x7x7xi64>, vector<7x7xi64>
      %268 = index.maxs %c11, %c1
      %269 = vector.bitcast %103 : vector<7x7x7xf32> to vector<7x7x7xf32>
      %270 = arith.cmpi uge, %c22184_i16, %c4909_i16 : i16
      %271 = arith.divsi %c690093038_i64, %c1399235909_i64 : i64
    } else {
      memref.assume_alignment %56, 1 : memref<1x12xf16>
      %alloca_37 = memref.alloca() : memref<1xi32>
      %265 = math.exp %6 : tensor<1x5xf16>
      %266 = arith.addi %c22184_i16, %c-12050_i16 : i16
      %267 = arith.mulf %cst_19, %cst_19 : f32
      %268 = math.fpowi %0, %73 : tensor<1xf16>, tensor<1xi32>
      scf.if %false_1 {
        %270 = arith.shrsi %c272311582_i32, %c519730330_i32 : i32
        %271 = vector.create_mask %c1, %57 : vector<1x5xi1>
        %rank_38 = tensor.rank %1 : tensor<1x12xi32>
        %272 = vector.broadcast %cst_19 : f32 to vector<5x5xf32>
        %273 = vector.outerproduct %18, %18, %272 {kind = #vector.kind<maxf>} : vector<5xf32>, vector<5xf32>
        %274 = tensor.empty() : tensor<7x7x7xi32>
        %275 = math.fpowi %10, %274 : tensor<7x7x7xf32>, tensor<7x7x7xi32>
        %276 = memref.load %alloc_4[%c0, %c0] : memref<1x5xf32>
        %277 = vector.reduction <minf>, %18 : vector<5xf32> into f32
        %278 = bufferization.to_tensor %alloc : memref<1x12xi1>
      } else {
        %270 = math.log10 %21 : tensor<f32>
        %271 = arith.addf %cst_0, %cst : f16
        %272 = math.powf %71, %46 : tensor<7x7x7xf32>
        %273 = arith.xori %65, %false : i1
        %274 = math.tan %15 : tensor<1xf32>
        %c0_i32 = arith.constant 0 : i32
        %275 = vector.transfer_read %3[%38, %36], %c0_i32 : tensor<1x12xi32>, vector<i32>
        %276 = vector.broadcast %cst_19 : f32 to vector<1x12xf32>
        %277 = vector.fma %276, %78, %77 : vector<1x12xf32>
        %278 = vector.broadcast %c4909_i16 : i16 to vector<1xi16>
        %dest_38, %accumulated_value_39 = vector.scan <and>, %101, %278 {inclusive = false, reduction_dim = 1 : i64} : vector<1x5xi16>, vector<1xi16>
      }
      %269 = arith.remf %cst, %cst_0 : f16
    }
    %114 = tensor.empty() : tensor<1x5xi1>
    %mapped_23 = linalg.map ins(%alloc_5, %83 : memref<1x5xi1>, memref<1x5xi1>) outs(%114 : tensor<1x5xi1>)
      (%in: i1, %in_37: i1) {
        affine.store %cst_19, %alloc_4[%c7, %c0] : memref<1x5xf32>
        %265 = affine.apply affine_map<(d0, d1) -> (-(d1 ceildiv 2 - 4))>(%107, %c15)
        %266 = math.cos %12 : tensor<7x7x7xf16>
        %267 = scf.index_switch %c12 -> tensor<1x5xi16> 
        case 1 {
          %293 = math.ctpop %114 : tensor<1x5xi1>
          %294 = arith.muli %c22184_i16, %c-12050_i16 : i16
          %295 = index.add %105, %76
          %296 = arith.negf %cst_0 : f16
          %from_elements_42 = tensor.from_elements %c1399235909_i64, %c1785724393_i64, %c690093038_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %c690093038_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c1785724393_i64, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c1785724393_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %c1785724393_i64, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %c1785724393_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %c1785724393_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %c1785724393_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %c690093038_i64, %c1785724393_i64, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %c690093038_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c690093038_i64, %c1785724393_i64, %c690093038_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %c690093038_i64, %c1399235909_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %c690093038_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c1785724393_i64, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %c1399235909_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c1785724393_i64, %c1785724393_i64, %c1785724393_i64, %c1785724393_i64, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %c1399235909_i64 : tensor<7x7x7xi64>
          affine.store %in_37, %alloc_5[%c3, %c8] : memref<1x5xi1>
          vector.print %79 : vector<1x5xf32>
          %297 = arith.remf %cst, %cst_0 : f16
          %298 = memref.realloc %alloc_13 : memref<1xf16> to memref<12xf16>
          %299 = index.mul %c10, %38
          affine.store %c1785724393_i64, %alloc_17[%c1, %c12] : memref<5x1xi64>
          memref.assume_alignment %74, 4 : memref<1x5xi1>
          %300 = vector.broadcast %false_1 : i1 to vector<1xi1>
          %dest_43, %accumulated_value_44 = vector.scan <and>, %99, %300 {inclusive = true, reduction_dim = 1 : i64} : vector<1x5xi1>, vector<1xi1>
          memref.assume_alignment %alloc_16, 1 : memref<7x7x7xi16>
          %301 = vector.extract_strided_slice %103 {offsets = [2], sizes = [4], strides = [1]} : vector<7x7x7xf32> to vector<4x7x7xf32>
          affine.store %false, %alloc_7[%c0, %c4] : memref<1x12xi1>
          scf.yield %7 : tensor<1x5xi16>
        }
        default {
          %293 = arith.divf %cst, %cst_0 : f16
          %294 = arith.shrui %c22122_i16, %c-17379_i16 : i16
          %295 = math.tanh %21 : tensor<f32>
          %296 = math.log1p %cst : f16
          %297 = vector.flat_transpose %18 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
          %alloc_42 = memref.alloc() : memref<1x12xf32>
          %298 = vector.matrix_multiply %18, %297 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<5xf32>) -> vector<1xf32>
          %299 = math.sqrt %21 : tensor<f32>
          %300 = math.log10 %21 : tensor<f32>
          %301 = vector.broadcast %45 : index to vector<12xindex>
          %302 = vector.broadcast %in_37 : i1 to vector<12xi1>
          %303 = vector.broadcast %cst_19 : f32 to vector<12xf32>
          vector.scatter %alloc_10[%c5, %c5, %c5] [%301], %302, %303 : memref<7x7x7xf32>, vector<12xindex>, vector<12xi1>, vector<12xf32>
          %304 = math.ctlz %2 : tensor<1xi16>
          %alloc_43 = memref.alloc() : memref<7x7x7xi1>
          memref.tensor_store %11, %alloc_43 : memref<7x7x7xi1>
          %305 = vector.reduction <minf>, %18 : vector<5xf32> into f32
          %306 = arith.divf %cst_0, %cst_0 : f16
          %307 = arith.andi %c272311582_i32, %c272311582_i32 : i32
          %308 = arith.shrui %c14762_i16, %c22184_i16 : i16
          scf.yield %7 : tensor<1x5xi16>
        }
        scf.if %in {
          %alloc_42 = memref.alloc() : memref<7x7x7xi1>
          %293 = bufferization.clone %24 : memref<1xi32> to memref<1xi32>
          %294 = arith.minf %cst, %cst_0 : f16
          %295 = arith.shrui %c-17379_i16, %c4909_i16 : i16
          %296 = index.casts %92 : index to i32
          %297 = vector.create_mask %36, %c14 : vector<1x12xi1>
          %298 = vector.insertelement %cst, %106[] : vector<f16>
          %299 = affine.load %alloc_11[%c12, %c2] : memref<1x12xi1>
        }
        %268 = vector.broadcast %c1399235909_i64 : i64 to vector<7x7xi64>
        %dest_38, %accumulated_value_39 = vector.scan <maxsi>, %97, %268 {inclusive = true, reduction_dim = 1 : i64} : vector<7x7x7xi64>, vector<7x7xi64>
        %269 = math.log1p %15 : tensor<1xf32>
        %extracted = tensor.extract %4[%c4, %c1, %c2] : tensor<7x7x7xi64>
        %270 = arith.ceildivsi %false, %false_1 : i1
        %271 = math.copysign %14, %14 : tensor<1x5xf32>
        %272 = arith.floordivsi %c1399235909_i64, %c690093038_i64 : i64
        %273 = arith.divf %cst, %cst : f16
        %274 = index.casts %86 : index to i32
        %275 = vector.broadcast %c1785724393_i64 : i64 to vector<7x7x7x7xi64>
        %276 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<or>} %97, %97, %275 : vector<7x7x7xi64>, vector<7x7x7xi64> into vector<7x7x7x7xi64>
        %277 = arith.negf %cst_0 : f16
        %278 = math.powf %10, %46 : tensor<7x7x7xf32>
        %279 = bufferization.clone %alloc_17 : memref<5x1xi64> to memref<5x1xi64>
        %280 = tensor.empty() : tensor<7x7x7xi32>
        %281 = vector.broadcast %c10 : index to vector<5xindex>
        %282 = vector.broadcast %false : i1 to vector<5xi1>
        %283 = vector.broadcast %c272311582_i32 : i32 to vector<5xi32>
        vector.scatter %alloc_15[%c0, %c3] [%281], %282, %283 : memref<1x5xi32>, vector<5xindex>, vector<5xi1>, vector<5xi32>
        %284 = vector.broadcast %c10 : index to vector<5xindex>
        %285 = vector.broadcast %65 : i1 to vector<5xi1>
        vector.scatter %alloc_7[%c0, %c6] [%284], %285, %285 : memref<1x12xi1>, vector<5xindex>, vector<5xi1>, vector<5xi1>
        %286 = math.tanh %10 : tensor<7x7x7xf32>
        %287 = math.cos %19 : tensor<1xf32>
        %cast_40 = tensor.cast %17 : tensor<7x7x7xi64> to tensor<?x?x?xi64>
        vector.print %103 : vector<7x7x7xf32>
        %288 = math.fpowi %5, %73 : tensor<1xf32>, tensor<1xi32>
        bufferization.dealloc_tensor %cast : tensor<?x?xi32>
        %alloc_41 = memref.alloc() : memref<7x7x7xf16>
        memref.tensor_store %12, %alloc_41 : memref<7x7x7xf16>
        %289 = scf.execute_region -> index {
          %293 = arith.remsi %false, %in_37 : i1
          %294 = vector.bitcast %101 : vector<1x5xi16> to vector<1x5xi16>
          %295 = affine.load %alloc_6[%c6] : memref<1xi16>
          %296 = arith.ceildivsi %false, %in_37 : i1
          %297 = math.tan %cst : f16
          %298 = tensor.empty(%c9, %45) : tensor<?x7x?xf32>
          %299 = index.ceildivu %c11, %c9
          %rank_42 = tensor.rank %from_elements : tensor<1x12xi16>
          %300 = affine.max affine_map<(d0) -> ((d0 mod 32) floordiv 4, d0 mod 32, (d0 mod 32) floordiv 4 + 124, (d0 mod 32) floordiv 4 + (d0 mod 32) floordiv 4 - ((d0 mod 32) floordiv 4) ceildiv 2 - 4 + 124)>(%107)
          bufferization.dealloc_tensor %13 : tensor<1x5xi16>
          %301 = vector.broadcast %c1399235909_i64 : i64 to vector<7x7x7xi64>
          %302 = bufferization.to_tensor %alloc_5 : memref<1x5xi1>
          %303 = arith.andi %c1785724393_i64, %extracted : i64
          %304 = index.mul %299, %38
          %305 = math.fpowi %10, %280 : tensor<7x7x7xf32>, tensor<7x7x7xi32>
          %306 = affine.max affine_map<(d0, d1, d2, d3) -> (0, d2 ceildiv 4 + (d1 - 8) ceildiv 16 + 1, (d1 - 8) ceildiv 16)>(%36, %90, %265, %38)
          scf.yield %306 : index
        }
        %290 = arith.remf %cst_19, %cst_19 : f32
        %291 = index.mul %86, %c11
        scf.index_switch %c0 
        case 1 {
          %293 = math.roundeven %cst_19 : f32
          %294 = index.mul %c10, %92
          %295 = math.powf %41, %5 : tensor<1xf32>
          %296 = math.log2 %46 : tensor<7x7x7xf32>
          %collapsed = tensor.collapse_shape %6 [[0, 1]] : tensor<1x5xf16> into tensor<5xf16>
          %297 = math.round %expanded : tensor<1x5x1xf32>
          %298 = arith.muli %c-12050_i16, %c22122_i16 : i16
          %299 = arith.ori %c272311582_i32, %c1241810288_i32 : i32
          %300 = index.divs %c9, %93
          %301 = index.sub %105, %c12
          %302 = vector.create_mask %90, %294 : vector<1x5xi1>
          %303 = arith.cmpi ne, %c22184_i16, %c14762_i16 : i16
          %304 = index.add %92, %86
          %305 = affine.load %alloc_11[%c6, %c13] : memref<1x12xi1>
          %306 = index.maxu %291, %c1
          %307 = vector.insert %18, %79 [0] : vector<5xf32> into vector<1x5xf32>
          scf.yield
        }
        default {
          %293 = arith.subi %extracted, %c1785724393_i64 : i64
          %294 = vector.bitcast %89 : vector<1x12xi32> to vector<1x12xi32>
          %295 = vector.extract_strided_slice %77 {offsets = [0], sizes = [1], strides = [1]} : vector<1x12xf32> to vector<1x12xf32>
          %296 = arith.addi %false_1, %in_37 : i1
          %297 = arith.divf %cst_19, %cst_19 : f32
          memref.tensor_store %43, %alloc_2 : memref<1x12xi64>
          %298 = arith.divf %cst, %cst_0 : f16
          %299 = math.floor %expanded : tensor<1x5x1xf32>
          vector.print %97 : vector<7x7x7xi64>
          %300 = math.ceil %21 : tensor<f32>
          %301 = math.tan %41 : tensor<1xf32>
          %302 = arith.shli %extracted, %extracted : i64
          %303 = math.log2 %0 : tensor<1xf16>
          %304 = vector.multi_reduction <add>, %98, %101 [] : vector<1x5xi16> to vector<1x5xi16>
          %false_42 = arith.constant false
          %305 = vector.transfer_read %alloc_7[%c10, %c11], %false_42 : memref<1x12xi1>, vector<5xi1>
          affine.store %c272311582_i32, %alloc_8[%c15, %c9] : memref<1x5xi32>
        }
        %292 = arith.maxf %cst_0, %cst_0 : f16
        %true = arith.constant true
        linalg.yield %true : i1
      }
    %115 = arith.ceildivsi %c14762_i16, %c-17379_i16 : i16
    %116 = math.log1p %6 : tensor<1x5xf16>
    %117 = math.ceil %19 : tensor<1xf32>
    %118 = vector.broadcast %false_1 : i1 to vector<5xi1>
    %119 = vector.insert %118, %99 [0] : vector<5xi1> into vector<1x5xi1>
    %120 = arith.maxui %c519730330_i32, %c519730330_i32 : i32
    memref.store %65, %alloc_5[%c0, %c3] : memref<1x5xi1>
    %from_elements_24 = tensor.from_elements %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19, %cst_19 : tensor<7x7x7xf32>
    %from_elements_25 = tensor.from_elements %c272311582_i32, %c519730330_i32, %c1241810288_i32, %c519730330_i32, %c1241810288_i32, %c272311582_i32, %c272311582_i32, %c272311582_i32, %c272311582_i32, %c1241810288_i32, %c519730330_i32, %c272311582_i32 : tensor<1x12xi32>
    %121 = arith.minsi %65, %false : i1
    %122 = vector.extract_strided_slice %87 {offsets = [0], sizes = [1], strides = [1]} : vector<1x5xf32> to vector<1x5xf32>
    %123 = vector.broadcast %cst : f16 to vector<1xf16>
    %124 = vector.broadcast %65 : i1 to vector<1xi1>
    %125 = vector.broadcast %c272311582_i32 : i32 to vector<1xi32>
    %126 = vector.gather %6[%90, %67] [%125], %124, %123 : tensor<1x5xf16>, vector<1xi32>, vector<1xi1>, vector<1xf16> into vector<1xf16>
    %127 = affine.load %alloc_2[%c11, %c9] : memref<1x12xi64>
    %128 = vector.broadcast %cst_0 : f16 to vector<f16>
    vector.transfer_write %128, %alloc_13[%c3] : vector<f16>, memref<1xf16>
    %129 = vector.insertelement %cst_0, %128[] : vector<f16>
    %130 = math.ctpop %c-17379_i16 : i16
    affine.store %cst_0, %alloc_13[%c10] : memref<1xf16>
    %131 = arith.maxui %false, %false_1 : i1
    %132 = arith.shli %c14762_i16, %c22184_i16 : i16
    %133 = arith.cmpi ugt, %c14762_i16, %c-12050_i16 : i16
    %134 = math.tanh %12 : tensor<7x7x7xf16>
    %135 = arith.shrui %c690093038_i64, %c690093038_i64 : i64
    %136 = arith.maxui %c690093038_i64, %c690093038_i64 : i64
    %alloca = memref.alloca() : memref<7x7x7xi1>
    %137 = math.ctpop %7 : tensor<1x5xi16>
    %138 = arith.addf %cst_0, %cst_0 : f16
    %139 = arith.ceildivsi %c272311582_i32, %c272311582_i32 : i32
    %140 = vector.broadcast %cst_19 : f32 to vector<5xf32>
    %141 = vector.transfer_write %140, %10[%c13, %c2, %c1] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<5xf32>, tensor<7x7x7xf32>
    %142 = tensor.empty(%c13) : tensor<1x?xi1>
    %143 = arith.cmpi ne, %c1399235909_i64, %c690093038_i64 : i64
    %144 = index.maxs %36, %c14
    %145 = index.add %c8, %c5
    %146 = vector.broadcast %c22184_i16 : i16 to vector<7x7x7xi16>
    %147 = math.cos %5 : tensor<1xf32>
    %148 = index.sizeof
    %149 = arith.maxf %cst, %cst_0 : f16
    %150 = affine.min affine_map<(d0) -> ((d0 ceildiv 2) * 4, d0 ceildiv 2)>(%c2)
    %151 = arith.divsi %c22184_i16, %c-12050_i16 : i16
    %152 = tensor.empty() : tensor<7x7x7xi64>
    %mapped_26 = linalg.map ins(%4, %17, %17 : tensor<7x7x7xi64>, tensor<7x7x7xi64>, tensor<7x7x7xi64>) outs(%152 : tensor<7x7x7xi64>)
      (%in: i64, %in_37: i64, %in_38: i64) {
        %265 = arith.ceildivsi %c272311582_i32, %c272311582_i32 : i32
        %266 = arith.divf %cst_0, %cst : f16
        %267 = bufferization.clone %alloc_18 : memref<f32> to memref<f32>
        %268 = index.castu %c1785724393_i64 : i64 to index
        %269 = vector.extract %102[0] : vector<7x7x7xf32>
        %270 = arith.ceildivsi %65, %65 : i1
        %271 = arith.minf %cst_0, %cst_0 : f16
        %272 = bufferization.clone %alloc_18 : memref<f32> to memref<f32>
        %273 = tensor.empty() : tensor<1xi16>
        bufferization.dealloc_tensor %0 : tensor<1xf16>
        %274 = arith.maxui %c22122_i16, %c22184_i16 : i16
        %275 = math.log1p %5 : tensor<1xf32>
        %from_elements_39 = tensor.from_elements %in_37, %127, %in, %127, %127, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %127, %in_37, %in_37, %in, %127, %in_38, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %in, %127, %in, %c1785724393_i64, %in_37, %127, %in_37, %c690093038_i64, %in, %c690093038_i64, %in, %c1785724393_i64, %in, %c1399235909_i64, %c1399235909_i64, %in_37, %127, %in_37, %in_37, %127, %in_38, %in_37, %in, %c1785724393_i64, %127, %c1399235909_i64, %127, %c1785724393_i64, %in_37, %in, %in_37, %127, %in, %in_38, %127, %c1399235909_i64, %c690093038_i64, %c1785724393_i64, %in, %127, %c1785724393_i64, %in_38, %c690093038_i64, %c1785724393_i64, %c690093038_i64, %c1785724393_i64, %c1785724393_i64, %in_38, %c690093038_i64, %c1785724393_i64, %in_38, %c690093038_i64, %in, %in_38, %c1399235909_i64, %127, %127, %in_38, %in, %127, %127, %c1399235909_i64, %in, %in_37, %127, %in_37, %c1785724393_i64, %127, %c1399235909_i64, %c690093038_i64, %in, %in_38, %in_37, %in_38, %in_38, %in_37, %in_38, %in, %c1399235909_i64, %127, %in_37, %c1399235909_i64, %in_38, %in_37, %in_38, %in, %in, %c1785724393_i64, %c690093038_i64, %in_37, %c1785724393_i64, %in_38, %in_37, %in, %in_37, %in_38, %in, %127, %c1785724393_i64, %in_38, %127, %c1785724393_i64, %c1399235909_i64, %in_37, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c690093038_i64, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %in_37, %c1399235909_i64, %c690093038_i64, %in_38, %127, %in_38, %c1785724393_i64, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %in_38, %c1785724393_i64, %in_38, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %127, %in_38, %in_38, %in, %c1399235909_i64, %in_37, %c1785724393_i64, %in, %in_37, %in_37, %c1399235909_i64, %c690093038_i64, %c1399235909_i64, %in, %in_38, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %in_37, %in, %127, %in, %c1785724393_i64, %in_38, %c690093038_i64, %in_38, %c1785724393_i64, %127, %in, %in_37, %c1785724393_i64, %c1399235909_i64, %in, %in, %c1785724393_i64, %in, %c1785724393_i64, %c690093038_i64, %in, %c690093038_i64, %in_38, %c690093038_i64, %in, %in_37, %in_37, %in_38, %c690093038_i64, %in_38, %in_38, %in_38, %127, %in, %in_38, %in_38, %127, %in_37, %in, %in, %c1399235909_i64, %in_37, %c690093038_i64, %in, %in_37, %in_37, %in_38, %c690093038_i64, %c1785724393_i64, %in_38, %in_37, %c690093038_i64, %in_37, %in_38, %127, %in_37, %in_37, %in_37, %c1399235909_i64, %in_38, %in, %c1399235909_i64, %c1399235909_i64, %in, %c1785724393_i64, %in_37, %c1785724393_i64, %127, %c1785724393_i64, %c1399235909_i64, %127, %127, %c690093038_i64, %c690093038_i64, %127, %in_38, %c1785724393_i64, %in, %127, %in, %c1399235909_i64, %in_38, %in_37, %c690093038_i64, %c690093038_i64, %in_38, %c1785724393_i64, %in, %in_37, %in, %c1785724393_i64, %c1399235909_i64, %c1399235909_i64, %in_37, %in_38, %in_37, %in_38, %in, %c1399235909_i64, %in_38, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %127, %c1399235909_i64, %127, %c1399235909_i64, %c1399235909_i64, %in_37, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %c1785724393_i64, %in_37, %c1399235909_i64, %in_37, %c1399235909_i64, %in_38, %127, %in_37, %in_37, %in_38, %in_37, %c1785724393_i64, %in_38, %in_37, %c1399235909_i64, %in_38, %127, %c690093038_i64, %127, %in_38, %in, %in_37, %in, %127, %in, %in_37, %127, %in, %c1399235909_i64, %127, %c1785724393_i64, %c1785724393_i64, %in, %in_38, %in_38, %c1785724393_i64, %127, %in, %c1399235909_i64, %in, %127, %c690093038_i64, %127, %in_37, %c1399235909_i64, %in, %c1785724393_i64, %in, %c1785724393_i64, %in, %in_38, %in_38, %in_38, %c690093038_i64, %127, %127, %in, %c1785724393_i64, %in_37, %c1399235909_i64, %c1785724393_i64, %in_38, %in, %c1785724393_i64, %in, %c1785724393_i64, %in_38 : tensor<7x7x7xi64>
        %276 = math.absf %14 : tensor<1x5xf32>
        %277 = vector.multi_reduction <add>, %18, %cst_19 [0] : vector<5xf32> to f32
        %278 = arith.maxf %cst_19, %cst_19 : f32
        %279 = math.cttz %c1241810288_i32 : i32
        %280 = index.casts %in_37 : i64 to index
        %281 = math.fma %expanded, %expanded, %expanded : tensor<1x5x1xf32>
        %282 = tensor.empty() : tensor<12x1xi16>
        %283 = tensor.empty() : tensor<1x1xi16>
        %284 = linalg.matmul ins(%from_elements, %282 : tensor<1x12xi16>, tensor<12x1xi16>) outs(%283 : tensor<1x1xi16>) -> tensor<1x1xi16>
        %285 = arith.ceildivsi %false_1, %65 : i1
        %286 = affine.for %arg2 = 0 to 8 iter_args(%arg3 = %c15) -> (index) {
          affine.yield %c6 : index
        }
        %287 = vector.reduction <minui>, %118 : vector<5xi1> into i1
        %288 = scf.index_switch %c7 -> i16 
        case 1 {
          %297 = vector.broadcast %c4 : index to vector<1xindex>
          vector.scatter %alloc_14[%c0, %c2] [%297], %124, %124 : memref<1x12xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
          %298 = arith.minsi %c22184_i16, %c22184_i16 : i16
          %299 = arith.remf %cst_0, %cst : f16
          %300 = index.add %148, %280
          %301 = arith.mulf %277, %cst_19 : f32
          %alloca_40 = memref.alloca() : memref<7x7x7xf32>
          %302 = tensor.empty() : tensor<1xf32>
          %303 = arith.addf %cst, %cst_0 : f16
          %304 = affine.min affine_map<(d0, d1) -> (d1, d1 - 2, d1 - 3, d1 + d0 - d1)>(%58, %c10)
          %305 = arith.remsi %c1785724393_i64, %c1785724393_i64 : i64
          %306 = math.roundeven %cst_19 : f32
          %307 = vector.broadcast %277 : f32 to vector<7x7x7xf32>
          %308 = vector.fma %307, %307, %102 : vector<7x7x7xf32>
          %alloc_41 = memref.alloc() : memref<1x5xi64>
          memref.tensor_store %8, %alloc_41 : memref<1x5xi64>
          %309 = arith.ori %c22184_i16, %c-17379_i16 : i16
          %310 = vector.broadcast %277 : f32 to vector<7x7x7xf32>
          %311 = vector.fma %310, %308, %103 : vector<7x7x7xf32>
          %312 = vector.load %alloc_17[%c4, %c0] : memref<5x1xi64>, vector<1x5xi64>
          scf.yield %c4909_i16 : i16
        }
        case 2 {
          %297 = arith.ori %c22184_i16, %c4909_i16 : i16
          %298 = math.powf %15, %9 : tensor<1xf32>
          %c8124_i16 = arith.constant 8124 : i16
          %299 = arith.divsi %c22184_i16, %c-12050_i16 : i16
          %300 = vector.reduction <add>, %18 : vector<5xf32> into f32
          %301 = math.round %41 : tensor<1xf32>
          %302 = math.roundeven %12 : tensor<7x7x7xf16>
          %303 = vector.shuffle %100, %100 [0] : vector<1x5xi32>, vector<1x5xi32>
          memref.store %cst_0, %56[%c0, %c2] : memref<1x12xf16>
          %304 = index.ceildivu %58, %c13
          %305 = arith.andi %c519730330_i32, %c519730330_i32 : i32
          %306 = math.tan %12 : tensor<7x7x7xf16>
          %inserted_40 = tensor.insert %c1399235909_i64 into %17[%c1, %c5, %c4] : tensor<7x7x7xi64>
          %307 = math.log2 %from_elements_24 : tensor<7x7x7xf32>
          %308 = vector.create_mask %76, %280 : vector<1x5xi1>
          %309 = math.tan %cst_0 : f16
          scf.yield %c14762_i16 : i16
        }
        case 3 {
          %c74979015_i64 = arith.constant 74979015 : i64
          %297 = math.log1p %14 : tensor<1x5xf32>
          %298 = math.log10 %21 : tensor<f32>
          %299 = index.add %c15, %145
          %from_elements_40 = tensor.from_elements %c22122_i16, %c4909_i16, %c-12050_i16, %c-17379_i16, %c14762_i16, %c14762_i16, %c-12050_i16, %c22122_i16, %c22122_i16, %c22184_i16, %c22122_i16, %c-12050_i16, %c22184_i16, %c-12050_i16, %c22184_i16, %c14762_i16, %c22184_i16, %c22184_i16, %c22184_i16, %c22184_i16, %c4909_i16, %c-17379_i16, %c-12050_i16, %c14762_i16, %c-12050_i16, %c-12050_i16, %c-12050_i16, %c-17379_i16, %c-12050_i16, %c4909_i16, %c14762_i16, %c22122_i16, %c-17379_i16, %c-12050_i16, %c22184_i16, %c4909_i16, %c4909_i16, %c14762_i16, %c-17379_i16, %c22184_i16, %c22122_i16, %c14762_i16, %c22184_i16, %c22122_i16, %c22184_i16, %c-17379_i16, %c22122_i16, %c4909_i16, %c-12050_i16, %c4909_i16, %c4909_i16, %c22122_i16, %c-12050_i16, %c22184_i16, %c22122_i16, %c22122_i16, %c4909_i16, %c-17379_i16, %c22122_i16, %c14762_i16, %c22122_i16, %c4909_i16, %c22122_i16, %c22184_i16, %c-17379_i16, %c22122_i16, %c-17379_i16, %c14762_i16, %c22184_i16, %c4909_i16, %c14762_i16, %c-17379_i16, %c-17379_i16, %c14762_i16, %c4909_i16, %c22184_i16, %c-17379_i16, %c-17379_i16, %c-12050_i16, %c22122_i16, %c4909_i16, %c14762_i16, %c22184_i16, %c4909_i16, %c14762_i16, %c22184_i16, %c22184_i16, %c4909_i16, %c-17379_i16, %c22184_i16, %c-17379_i16, %c-17379_i16, %c-12050_i16, %c22122_i16, %c22184_i16, %c-12050_i16, %c22184_i16, %c-17379_i16, %c22122_i16, %c14762_i16, %c14762_i16, %c-12050_i16, %c-17379_i16, %c22184_i16, %c4909_i16, %c22122_i16, %c22184_i16, %c14762_i16, %c-12050_i16, %c14762_i16, %c14762_i16, %c22122_i16, %c22122_i16, %c-17379_i16, %c4909_i16, %c4909_i16, %c-17379_i16, %c22122_i16, %c22184_i16, %c22122_i16, %c-12050_i16, %c4909_i16, %c14762_i16, %c22122_i16, %c-17379_i16, %c22122_i16, %c-12050_i16, %c-17379_i16, %c4909_i16, %c4909_i16, %c14762_i16, %c4909_i16, %c22122_i16, %c14762_i16, %c-12050_i16, %c-12050_i16, %c22122_i16, %c14762_i16, %c14762_i16, %c14762_i16, %c-12050_i16, %c22184_i16, %c-12050_i16, %c14762_i16, %c14762_i16, %c22122_i16, %c22122_i16, %c22184_i16, %c22184_i16, %c22122_i16, %c4909_i16, %c-17379_i16, %c22122_i16, %c14762_i16, %c22184_i16, %c14762_i16, %c14762_i16, %c-17379_i16, %c-17379_i16, %c14762_i16, %c4909_i16, %c22122_i16, %c4909_i16, %c-12050_i16, %c-12050_i16, %c4909_i16, %c4909_i16, %c-17379_i16, %c-17379_i16, %c4909_i16, %c4909_i16, %c22122_i16, %c22122_i16, %c-12050_i16, %c22184_i16, %c22184_i16, %c-12050_i16, %c22122_i16, %c14762_i16, %c-17379_i16, %c-17379_i16, %c-17379_i16, %c22184_i16, %c14762_i16, %c-12050_i16, %c4909_i16, %c-12050_i16, %c22122_i16, %c4909_i16, %c14762_i16, %c-12050_i16, %c-17379_i16, %c-17379_i16, %c-12050_i16, %c-12050_i16, %c-12050_i16, %c-12050_i16, %c14762_i16, %c4909_i16, %c22184_i16, %c22184_i16, %c-12050_i16, %c22122_i16, %c22122_i16, %c4909_i16, %c-12050_i16, %c14762_i16, %c22122_i16, %c4909_i16, %c14762_i16, %c4909_i16, %c-17379_i16, %c4909_i16, %c22184_i16, %c22122_i16, %c-17379_i16, %c-12050_i16, %c-17379_i16, %c-12050_i16, %c22122_i16, %c-12050_i16, %c-12050_i16, %c14762_i16, %c22184_i16, %c22122_i16, %c22184_i16, %c4909_i16, %c4909_i16, %c22122_i16, %c4909_i16, %c4909_i16, %c-17379_i16, %c14762_i16, %c22184_i16, %c22184_i16, %c-17379_i16, %c-17379_i16, %c-17379_i16, %c22122_i16, %c22122_i16, %c22184_i16, %c-12050_i16, %c-17379_i16, %c4909_i16, %c14762_i16, %c22122_i16, %c14762_i16, %c14762_i16, %c4909_i16, %c22122_i16, %c4909_i16, %c22122_i16, %c4909_i16, %c22184_i16, %c4909_i16, %c22184_i16, %c22184_i16, %c22184_i16, %c22184_i16, %c-17379_i16, %c-17379_i16, %c14762_i16, %c14762_i16, %c4909_i16, %c4909_i16, %c-17379_i16, %c22184_i16, %c22122_i16, %c-12050_i16, %c-12050_i16, %c22122_i16, %c-12050_i16, %c-12050_i16, %c-17379_i16, %c14762_i16, %c14762_i16, %c4909_i16, %c22122_i16, %c-12050_i16, %c-17379_i16, %c-17379_i16, %c4909_i16, %c-17379_i16, %c4909_i16, %c4909_i16, %c4909_i16, %c-12050_i16, %c-12050_i16, %c22184_i16, %c22122_i16, %c-17379_i16, %c-12050_i16, %c22122_i16, %c22122_i16, %c14762_i16, %c22122_i16, %c-17379_i16, %c14762_i16, %c22184_i16, %c22184_i16, %c4909_i16, %c22122_i16, %c-17379_i16, %c22122_i16, %c-17379_i16, %c22184_i16, %c22184_i16, %c-17379_i16, %c14762_i16, %c22122_i16, %c22184_i16, %c22122_i16, %c-17379_i16, %c-17379_i16, %c14762_i16, %c22184_i16, %c14762_i16, %c4909_i16, %c-12050_i16, %c22122_i16, %c-12050_i16, %c-12050_i16, %c-12050_i16, %c14762_i16, %c-17379_i16, %c-12050_i16, %c14762_i16, %c-17379_i16, %c22122_i16, %c14762_i16, %c22184_i16, %c-17379_i16, %c-17379_i16, %c-17379_i16, %c14762_i16, %c14762_i16, %c4909_i16, %c22184_i16, %c22184_i16, %c-17379_i16, %c22122_i16, %c-12050_i16, %c14762_i16 : tensor<7x7x7xi16>
          %inserted_41 = tensor.insert %c690093038_i64 into %4[%c5, %c0, %c2] : tensor<7x7x7xi64>
          %300 = arith.minui %65, %false : i1
          %301 = index.add %c11, %c6
          %302 = vector.create_mask %93, %93 : vector<1x5xi1>
          %303 = arith.subi %c4909_i16, %c-17379_i16 : i16
          %304 = arith.shrsi %c22122_i16, %c22122_i16 : i16
          %305 = arith.maxui %c1785724393_i64, %c690093038_i64 : i64
          %306 = arith.maxsi %c1399235909_i64, %in_38 : i64
          %307 = math.absi %c1399235909_i64 : i64
          %inserted_42 = tensor.insert %cst_19 into %14[%c0, %c4] : tensor<1x5xf32>
          %308 = arith.remf %cst_19, %277 : f32
          scf.yield %c-12050_i16 : i16
        }
        default {
          %inserted_40 = tensor.insert %c272311582_i32 into %cast[%c0, %c0] : tensor<?x?xi32>
          %297 = arith.subi %127, %in_37 : i64
          %298 = affine.load %83[%c11, %c5] : memref<1x5xi1>
          %false_41 = arith.constant false
          %299 = arith.minf %cst_19, %277 : f32
          %300 = math.cos %10 : tensor<7x7x7xf32>
          %301 = memref.realloc %alloc_6 : memref<1xi16> to memref<5xi16>
          %302 = math.log10 %9 : tensor<1xf32>
          %303 = arith.cmpi sge, %in, %c690093038_i64 : i64
          %304 = index.mul %c6, %c14
          %305 = math.cttz %c1785724393_i64 : i64
          %306 = vector.broadcast %c519730330_i32 : i32 to vector<1x1xi32>
          %307 = vector.outerproduct %125, %125, %306 {kind = #vector.kind<and>} : vector<1xi32>, vector<1xi32>
          %308 = memref.load %alloc_14[%c0, %c9] : memref<1x12xi1>
          %309 = math.exp %41 : tensor<1xf32>
          %310 = math.ctpop %1 : tensor<1x12xi32>
          %311 = arith.shli %c272311582_i32, %c519730330_i32 : i32
          scf.yield %c-12050_i16 : i16
        }
        %289 = vector.splat %c11 : vector<1xindex>
        %290 = math.log2 %14 : tensor<1x5xf32>
        bufferization.dealloc_tensor %0 : tensor<1xf16>
        %291 = affine.max affine_map<(d0) -> (d0 mod 16 + d0 + 36, 0, d0)>(%76)
        %292 = vector.broadcast %c7 : index to vector<7xindex>
        %293 = vector.broadcast %false_1 : i1 to vector<7xi1>
        vector.scatter %alloc_7[%c0, %c3] [%292], %293, %293 : memref<1x12xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
        %294 = math.fpowi %0, %73 : tensor<1xf16>, tensor<1xi32>
        %295 = index.sizeof
        %296 = vector.gather %11[%c9, %c8, %90] [%125], %124, %124 : tensor<7x7x7xi1>, vector<1xi32>, vector<1xi1>, vector<1xi1> into vector<1xi1>
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %153 = memref.realloc %alloc_13 : memref<1xf16> to memref<1xf16>
    %154 = bufferization.clone %alloc : memref<1x12xi1> to memref<1x12xi1>
    %155 = math.log1p %46 : tensor<7x7x7xf32>
    %156 = math.ceil %41 : tensor<1xf32>
    %157 = arith.remsi %c519730330_i32, %c519730330_i32 : i32
    %158 = math.ctpop %false : i1
    %159 = arith.shrsi %false_1, %false_1 : i1
    %160 = arith.subi %c272311582_i32, %c519730330_i32 : i32
    %161 = math.cos %14 : tensor<1x5xf32>
    %162 = affine.load %alloc_3[%c0, %c9, %c0] : memref<7x7x7xf32>
    %163 = vector.insertelement %c272311582_i32, %125[%c5 : index] : vector<1xi32>
    %164 = math.tan %14 : tensor<1x5xf32>
    %165 = math.sqrt %41 : tensor<1xf32>
    %166 = affine.load %alloc_15[%c9, %c8] : memref<1x5xi32>
    %167 = bufferization.clone %24 : memref<1xi32> to memref<1xi32>
    %168 = arith.muli %c-12050_i16, %c14762_i16 : i16
    %169 = index.sub %58, %144
    %170 = arith.divf %162, %cst_19 : f32
    %171 = index.mul %c2, %86
    %172 = math.sqrt %12 : tensor<7x7x7xf16>
    %173 = arith.divf %162, %162 : f32
    %174 = tensor.empty() : tensor<1x12xi32>
    %mapped_27 = linalg.map ins(%1, %3, %1 : tensor<1x12xi32>, tensor<1x12xi32>, tensor<1x12xi32>) outs(%174 : tensor<1x12xi32>)
      (%in: i32, %in_37: i32, %in_38: i32) {
        %265 = arith.remui %c519730330_i32, %in_37 : i32
        %266 = arith.shrsi %c-12050_i16, %c22122_i16 : i16
        %267 = index.maxu %c2, %c7
        vector.print %103 : vector<7x7x7xf32>
        %268 = arith.mulf %cst_19, %cst_19 : f32
        affine.for %arg2 = 0 to 5 {
        }
        %269 = affine.apply affine_map<(d0, d1) -> (d0 floordiv 128 - 16)>(%c11, %c8)
        %270 = affine.if affine_set<(d0, d1, d2) : (d2 >= 0, (d1 * 2) ceildiv 32 >= 0, d1 floordiv 128 == 0, (d1 * 2) ceildiv 32 == 0)>(%c8, %c9, %c5) -> i1 {
          %292 = arith.addf %cst_0, %cst : f16
          %293 = index.sizeof
          %294 = arith.shrui %c14762_i16, %c22122_i16 : i16
          %c1432039343_i32 = arith.constant 1432039343 : i32
          memref.assume_alignment %alloc_6, 8 : memref<1xi16>
          %295 = bufferization.to_tensor %alloc_4 : memref<1x5xf32>
          %296 = index.add %171, %269
          memref.copy %alloc_12, %83 : memref<1x5xi1> to memref<1x5xi1>
          affine.yield %false : i1
        } else {
          memref.copy %alloc_5, %74 : memref<1x5xi1> to memref<1x5xi1>
          %292 = math.powf %expanded, %expanded : tensor<1x5x1xf32>
          %293 = vector.shuffle %101, %98 [0] : vector<1x5xi16>, vector<1x5xi16>
          %294 = affine.min affine_map<(d0, d1, d2) -> (d0 - d0 mod 16, d2 + d1)>(%c0, %36, %36)
          %295 = vector.extract %102[0, 3] : vector<7x7x7xf32>
          %296 = vector.extract_strided_slice %97 {offsets = [2], sizes = [1], strides = [1]} : vector<7x7x7xi64> to vector<1x7x7xi64>
          bufferization.dealloc_tensor %13 : tensor<1x5xi16>
          %297 = vector.broadcast %c22122_i16 : i16 to vector<5xi16>
          %dest_40, %accumulated_value_41 = vector.scan <maxui>, %101, %297 {inclusive = false, reduction_dim = 0 : i64} : vector<1x5xi16>, vector<5xi16>
          affine.yield %65 : i1
        }
        %271 = arith.divui %c1399235909_i64, %c1399235909_i64 : i64
        %272 = arith.ori %c272311582_i32, %in : i32
        %273 = arith.mulf %162, %cst_19 : f32
        %274 = memref.realloc %24 : memref<1xi32> to memref<5xi32>
        %275 = index.castu %38 : index to i32
        %276 = affine.max affine_map<(d0, d1) -> (d1)>(%c6, %c9)
        %277 = bufferization.to_tensor %74 : memref<1x5xi1>
        %278 = vector.matrix_multiply %123, %126 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
        %279 = math.cos %cst_0 : f16
        %280 = arith.negf %cst : f16
        scf.if %false_1 {
          %alloc_40 = memref.alloc() : memref<1x12xi32>
          %292 = vector.broadcast %in : i32 to vector<7x7x7xi32>
          %293 = vector.broadcast %65 : i1 to vector<7x7x7xi1>
          %294 = vector.gather %alloc_40[%c6, %148] [%292], %293, %292 : memref<1x12xi32>, vector<7x7x7xi32>, vector<7x7x7xi1>, vector<7x7x7xi32> into vector<7x7x7xi32>
          %295 = arith.remf %cst_0, %cst_0 : f16
          %296 = math.tan %0 : tensor<1xf16>
          vector.print %98 : vector<1x5xi16>
          %cast_41 = tensor.cast %4 : tensor<7x7x7xi64> to tensor<?x?x?xi64>
          %alloca_42 = memref.alloca() : memref<1xi16>
          %inserted_43 = tensor.insert %c14762_i16 into %47[%c0, %c4] : tensor<1x7xi16>
          %from_elements_44 = tensor.from_elements %c4909_i16, %c-12050_i16, %c-12050_i16, %c14762_i16, %c14762_i16 : tensor<1x5xi16>
        }
        %281 = vector.multi_reduction <minf>, %18, %162 [0] : vector<5xf32> to f32
        %282 = tensor.empty() : tensor<1x5xi1>
        %mapped_39 = linalg.map ins(%83, %277 : memref<1x5xi1>, tensor<1x5xi1>) outs(%282 : tensor<1x5xi1>)
          (%in_40: i1, %in_41: i1) {
            %292 = arith.mulf %cst_19, %cst_19 : f32
            %alloc_42 = memref.alloc() : memref<1x5xf16>
            %dest_43, %accumulated_value_44 = vector.scan <minf>, %79, %18 {inclusive = false, reduction_dim = 0 : i64} : vector<1x5xf32>, vector<5xf32>
            %293 = arith.divf %cst_0, %cst_0 : f16
            %294 = math.log2 %10 : tensor<7x7x7xf32>
            %295 = vector.matrix_multiply %18, %18 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<5xf32>) -> vector<1xf32>
            %296 = vector.reduction <mul>, %18 : vector<5xf32> into f32
            %297 = vector.load %alloc_8[%c0, %c4] : memref<1x5xi32>, vector<1xi32>
            %298 = vector.broadcast %171 : index to vector<12xindex>
            %299 = vector.broadcast %false_1 : i1 to vector<12xi1>
            %300 = vector.broadcast %in_38 : i32 to vector<12xi32>
            vector.scatter %alloc_8[%c0, %c3] [%298], %299, %300 : memref<1x5xi32>, vector<12xindex>, vector<12xi1>, vector<12xi32>
            %301 = arith.minsi %166, %in : i32
            %302 = vector.insertelement %cst, %123[%105 : index] : vector<1xf16>
            %alloc_45 = memref.alloc() : memref<1xi1>
            %303 = vector.broadcast %cst_19 : f32 to vector<7xf32>
            %304 = vector.insert %303, %102 [2, 2] : vector<7xf32> into vector<7x7x7xf32>
            %305 = arith.subi %65, %in_41 : i1
            %306 = math.absi %in : i32
            %307 = vector.broadcast %162 : f32 to vector<12xf32>
            %dest_46, %accumulated_value_47 = vector.scan <maxf>, %78, %307 {inclusive = false, reduction_dim = 0 : i64} : vector<1x12xf32>, vector<12xf32>
            %308 = arith.shrsi %c1785724393_i64, %c690093038_i64 : i64
            %c1_i16 = arith.constant 1 : i16
            %c0_i16 = arith.constant 0 : i16
            %309 = vector.transfer_read %from_elements[%36, %57], %c0_i16 : tensor<1x12xi16>, vector<i16>
            %310 = vector.broadcast %c690093038_i64 : i64 to vector<1x12xi64>
            %311 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d1 - 1) ceildiv 16)>(%45, %c3, %144, %c11)
            %312 = math.log1p %0 : tensor<1xf16>
            %313 = affine.load %alloc_16[%c12, %c2, %c5] : memref<7x7x7xi16>
            %314 = tensor.empty(%c5) : tensor<1x?xi64>
            %alloc_48 = memref.alloc() : memref<1x12xi1>
            %315 = affine.min affine_map<(d0) -> (-1, 0, d0 * 64, -(d0 mod 64) - 64)>(%148)
            %316 = affine.load %alloc_15[%c7, %c9] : memref<1x5xi32>
            %317 = arith.cmpi ult, %in, %316 : i32
            %318 = math.log1p %21 : tensor<f32>
            %319 = math.absf %5 : tensor<1xf32>
            %320 = arith.minui %c14762_i16, %c22184_i16 : i16
            bufferization.dealloc_tensor %13 : tensor<1x5xi16>
            %321 = math.copysign %14, %14 : tensor<1x5xf32>
            %true = arith.constant true
            linalg.yield %true : i1
          }
        %283 = math.cos %162 : f32
        bufferization.dealloc_tensor %12 : tensor<7x7x7xf16>
        %284 = arith.subi %c22184_i16, %c4909_i16 : i16
        %285 = math.exp %6 : tensor<1x5xf16>
        %286 = arith.divsi %65, %65 : i1
        %287 = vector.matrix_multiply %278, %278 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
        %288 = arith.xori %false, %65 : i1
        %289 = affine.max affine_map<(d0) -> (d0 ceildiv 4 - 64)>(%c9)
        %290 = vector.create_mask %c14, %c14 : vector<1x12xi1>
        vector.print %89 : vector<1x12xi32>
        %291 = scf.execute_region -> tensor<1x12xi16> {
          %292 = vector.transpose %97, [2, 0, 1] : vector<7x7x7xi64> to vector<7x7x7xi64>
          %293 = index.add %c8, %86
          %294 = math.cos %10 : tensor<7x7x7xf32>
          %295 = vector.create_mask %c8, %c0, %67 : vector<7x7x7xi1>
          %296 = index.divu %67, %c10
          %297 = math.fpowi %15, %73 : tensor<1xf32>, tensor<1xi32>
          %298 = arith.remui %false_1, %false_1 : i1
          %299 = memref.realloc %alloc_13 : memref<1xf16> to memref<12xf16>
          %300 = math.log10 %5 : tensor<1xf32>
          %301 = math.floor %46 : tensor<7x7x7xf32>
          bufferization.dealloc_tensor %2 : tensor<1xi16>
          %alloc_40 = memref.alloc() : memref<5x5xi16>
          %302 = tensor.empty() : tensor<1x5xi16>
          %303 = linalg.matmul ins(%7, %alloc_40 : tensor<1x5xi16>, memref<5x5xi16>) outs(%302 : tensor<1x5xi16>) -> tensor<1x5xi16>
          %304 = arith.subi %c690093038_i64, %c1399235909_i64 : i64
          %alloc_41 = memref.alloc() : memref<1xi1>
          %305 = vector.gather %alloc_41[%58] [%100], %99, %99 : memref<1xi1>, vector<1x5xi32>, vector<1x5xi1>, vector<1x5xi1> into vector<1x5xi1>
          %306 = vector.extract %295[6, 5] : vector<7x7x7xi1>
          %307 = arith.remf %cst, %cst_0 : f16
          scf.yield %from_elements : tensor<1x12xi16>
        }
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %inserted = tensor.insert %c519730330_i32 into %cast[%c0, %c0] : tensor<?x?xi32>
    %generated = tensor.generate %57, %45, %c12 {
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      %265 = arith.addf %cst, %cst_0 : f16
      %266 = vector.bitcast %101 : vector<1x5xi16> to vector<1x5xi16>
      %267 = index.mul %c15, %171
      %268 = vector.broadcast %c1399235909_i64 : i64 to vector<7x7xi64>
      %dest_37, %accumulated_value_38 = vector.scan <and>, %97, %268 {inclusive = false, reduction_dim = 0 : i64} : vector<7x7x7xi64>, vector<7x7xi64>
      tensor.yield %162 : f32
    } : tensor<?x?x?xf32>
    %175 = arith.divf %cst_0, %cst : f16
    memref.store %c1399235909_i64, %alloc_2[%c0, %c4] : memref<1x12xi64>
    vector.print %87 : vector<1x5xf32>
    %176 = arith.remui %c519730330_i32, %c1241810288_i32 : i32
    %177 = affine.if affine_set<(d0) : (d0 floordiv 2 >= 0)>(%c12) -> memref<1x5xf16> {
      %265 = affine.load %alloc_9[%c13, %c5] : memref<1x5xi32>
      %266 = arith.remsi %166, %c1241810288_i32 : i32
      %267 = math.powf %6, %6 : tensor<1x5xf16>
      %268 = vector.broadcast %c22122_i16 : i16 to vector<7x7xi16>
      %dest_37, %accumulated_value_38 = vector.scan <xor>, %146, %268 {inclusive = true, reduction_dim = 1 : i64} : vector<7x7x7xi16>, vector<7x7xi16>
      %269 = arith.maxf %162, %162 : f32
      %270 = memref.realloc %alloc_13 : memref<1xf16> to memref<7xf16>
      %271 = affine.if affine_set<(d0, d1, d2) : (d1 == 0)>(%c15, %c0, %c14) -> memref<1x12xf16> {
        %c1516970592_i64 = arith.constant 1516970592 : i64
        %273 = vector.extract_strided_slice %98 {offsets = [0], sizes = [1], strides = [1]} : vector<1x5xi16> to vector<1x5xi16>
        %274 = arith.shli %c519730330_i32, %c519730330_i32 : i32
        %275 = math.exp %0 : tensor<1xf16>
        %276 = vector.insertelement %false_1, %124[%171 : index] : vector<1xi1>
        %277 = arith.shli %false_1, %false : i1
        %278 = math.roundeven %19 : tensor<1xf32>
        %splat = tensor.splat %c22122_i16 : tensor<1x5xi16>
        affine.yield %56 : memref<1x12xf16>
      } else {
        %273 = math.roundeven %20 : tensor<f32>
        %274 = vector.shuffle %77, %78 [0] : vector<1x12xf32>, vector<1x12xf32>
        %275 = vector.insertelement %162, %18[%67 : index] : vector<5xf32>
        %276 = arith.subi %127, %c1399235909_i64 : i64
        %277 = tensor.empty() : tensor<1x5xi32>
        %278 = math.fpowi %6, %277 : tensor<1x5xf16>, tensor<1x5xi32>
        %279 = math.log %5 : tensor<1xf32>
        %280 = arith.maxui %false_1, %65 : i1
        %cst_40 = arith.constant 1.000000e+00 : f32
        %cst_41 = arith.constant 0.000000e+00 : f32
        %281 = vector.transfer_read %alloc_4[%57, %38], %cst_41 : memref<1x5xf32>, vector<f32>
        affine.yield %56 : memref<1x12xf16>
      }
      %272 = arith.remui %c-12050_i16, %c22122_i16 : i16
      %alloc_39 = memref.alloc() : memref<1x5xf16>
      affine.yield %alloc_39 : memref<1x5xf16>
    } else {
      vector.print %79 : vector<1x5xf32>
      scf.execute_region {
        %270 = vector.load %167[%c0] : memref<1xi32>, vector<1x12xi32>
        %271 = vector.reduction <minf>, %126 : vector<1xf16> into f16
        memref.assume_alignment %83, 2 : memref<1x5xi1>
        %272 = math.ceil %41 : tensor<1xf32>
        %273 = arith.shrui %166, %c272311582_i32 : i32
        %274 = arith.negf %162 : f32
        %275 = vector.create_mask %145, %57, %107 : vector<7x7x7xi1>
        %276 = vector.broadcast %c0 : index to vector<7xindex>
        %277 = vector.broadcast %65 : i1 to vector<7xi1>
        vector.scatter %alloc_11[%c0, %c4] [%276], %277, %277 : memref<1x12xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
        %278 = arith.shrui %c1785724393_i64, %c1785724393_i64 : i64
        %279 = vector.broadcast %cst_19 : f32 to vector<12x5xf32>
        %280 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %78, %79, %279 : vector<1x12xf32>, vector<1x5xf32> into vector<12x5xf32>
        %281 = math.log10 %10 : tensor<7x7x7xf32>
        %282 = bufferization.clone %24 : memref<1xi32> to memref<1xi32>
        %283 = arith.negf %cst : f16
        %284 = arith.shli %c1399235909_i64, %127 : i64
        %285 = bufferization.to_memref %3 : memref<1x12xi32>
        %286 = vector.broadcast %cst_19 : f32 to vector<f32>
        %287 = vector.transfer_write %286, %19[%105] : vector<f32>, tensor<1xf32>
        scf.yield
      }
      %265 = arith.maxui %c1785724393_i64, %c690093038_i64 : i64
      %266 = vector.broadcast %162 : f32 to vector<12xf32>
      %dest_37, %accumulated_value_38 = vector.scan <add>, %77, %266 {inclusive = false, reduction_dim = 0 : i64} : vector<1x12xf32>, vector<12xf32>
      %267 = arith.cmpf one, %162, %cst_19 : f32
      memref.assume_alignment %alloc_12, 8 : memref<1x5xi1>
      %268 = vector.bitcast %103 : vector<7x7x7xf32> to vector<7x7x7xf32>
      %269 = arith.xori %c272311582_i32, %c272311582_i32 : i32
      %alloc_39 = memref.alloc() : memref<1x5xf16>
      affine.yield %alloc_39 : memref<1x5xf16>
    }
    %178 = arith.subi %c-17379_i16, %c4909_i16 : i16
    %179 = vector.create_mask %c9, %150, %c3 : vector<7x7x7xi1>
    %180 = scf.index_switch %c14 -> vector<1xi1> 
    case 1 {
      %265 = math.roundeven %12 : tensor<7x7x7xf16>
      memref.assume_alignment %alloc_3, 1 : memref<7x7x7xf32>
      %266 = tensor.empty() : tensor<7x12xi16>
      %267 = tensor.empty() : tensor<1x12xi16>
      %268 = linalg.matmul ins(%47, %266 : tensor<1x7xi16>, tensor<7x12xi16>) outs(%267 : tensor<1x12xi16>) -> tensor<1x12xi16>
      %269 = vector.matrix_multiply %18, %140 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<5xf32>) -> vector<1xf32>
      %from_elements_37 = tensor.from_elements %127, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64 : tensor<1x5xi64>
      %270 = math.copysign %19, %9 : tensor<1xf32>
      %271 = vector.load %74[%c0, %c2] : memref<1x5xi1>, vector<7x7x7xi1>
      %272 = bufferization.to_memref %5 : memref<1xf32>
      %273 = math.log10 %15 : tensor<1xf32>
      %274 = math.absi %7 : tensor<1x5xi16>
      %275 = vector.load %alloc_9[%c0, %c1] : memref<1x5xi32>, vector<1x12xi32>
      %276 = index.ceildivu %76, %c8
      %277 = vector.shuffle %87, %122 [0] : vector<1x5xf32>, vector<1x5xf32>
      %278 = index.floordivs %92, %105
      %279 = index.add %29, %276
      %280 = bufferization.clone %154 : memref<1x12xi1> to memref<1x12xi1>
      scf.yield %124 : vector<1xi1>
    }
    case 2 {
      %265 = index.casts %c13 : index to i32
      scf.index_switch %c15 
      case 1 {
        %280 = arith.subi %c4909_i16, %c22184_i16 : i16
        %281 = math.tanh %6 : tensor<1x5xf16>
        %282 = arith.divf %cst_0, %cst : f16
        %alloca_40 = memref.alloca() : memref<1x5xi16>
        %283 = arith.ori %c1241810288_i32, %c1241810288_i32 : i32
        %284 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d1 - 1) ceildiv 16)>(%c1, %c8, %c7, %92)
        %285 = arith.ori %c4909_i16, %c22122_i16 : i16
        %286 = index.maxs %171, %284
        %287 = math.absf %21 : tensor<f32>
        bufferization.dealloc_tensor %1 : tensor<1x12xi32>
        %288 = arith.addf %162, %cst_19 : f32
        %289 = math.ctpop %17 : tensor<7x7x7xi64>
        %290 = math.roundeven %41 : tensor<1xf32>
        %291 = arith.ori %c22184_i16, %c-17379_i16 : i16
        %292 = arith.addf %cst_0, %cst_0 : f16
        %293 = math.ceil %9 : tensor<1xf32>
        scf.yield
      }
      case 2 {
        %280 = arith.divf %162, %cst_19 : f32
        %281 = bufferization.to_memref %1 : memref<1x12xi32>
        %282 = arith.subi %c22184_i16, %c-17379_i16 : i16
        %283 = index.sub %93, %c11
        memref.store %c1241810288_i32, %167[%c0] : memref<1xi32>
        %284 = vector.create_mask %283, %144, %38 : vector<7x7x7xi1>
        %285 = index.ceildivu %c5, %45
        %286 = arith.mulf %cst_0, %cst_0 : f16
        vector.print %284 : vector<7x7x7xi1>
        %287 = affine.max affine_map<(d0, d1, d2, d3) -> ((d3 ceildiv 16) * 4, d0, d2)>(%38, %285, %148, %145)
        %288 = index.maxu %90, %107
        %289 = affine.max affine_map<(d0) -> (d0, d0 * 128)>(%287)
        %290 = vector.broadcast %c519730330_i32 : i32 to vector<12xi32>
        %291 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %125, %89, %290 : vector<1xi32>, vector<1x12xi32> into vector<12xi32>
        %292 = vector.broadcast %162 : f32 to vector<7x7x7xf32>
        %293 = vector.fma %292, %103, %103 : vector<7x7x7xf32>
        %294 = bufferization.clone %alloc_8 : memref<1x5xi32> to memref<1x5xi32>
        %cast_40 = tensor.cast %174 : tensor<1x12xi32> to tensor<?x?xi32>
        scf.yield
      }
      case 3 {
        %from_elements_40 = tensor.from_elements %false, %false, %false, %65, %65, %false, %65, %false, %false_1, %65, %65, %false_1 : tensor<1x12xi1>
        %280 = index.add %169, %c5
        %281 = arith.maxsi %c1785724393_i64, %127 : i64
        %282 = vector.matrix_multiply %118, %124 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 1 : i32} : (vector<5xi1>, vector<1xi1>) -> vector<5xi1>
        memref.store %c519730330_i32, %alloc_9[%c0, %c2] : memref<1x5xi32>
        vector.print %99 : vector<1x5xi1>
        %283 = arith.minsi %false, %65 : i1
        %284 = arith.remf %cst_0, %cst_0 : f16
        %285 = index.mul %76, %c4
        %286 = bufferization.to_memref %9 : memref<1xf32>
        %287 = math.expm1 %20 : tensor<f32>
        %288 = math.cos %from_elements_24 : tensor<7x7x7xf32>
        %289 = arith.mulf %162, %cst_19 : f32
        %290 = index.add %c8, %171
        %291 = arith.shrui %c690093038_i64, %c1399235909_i64 : i64
        %292 = vector.bitcast %125 : vector<1xi32> to vector<1xi32>
        scf.yield
      }
      case 4 {
        memref.assume_alignment %alloc_8, 8 : memref<1x5xi32>
        %280 = arith.divsi %c14762_i16, %c22122_i16 : i16
        %281 = math.log1p %5 : tensor<1xf32>
        %from_elements_40 = tensor.from_elements %c272311582_i32, %c519730330_i32, %c519730330_i32, %c519730330_i32, %c272311582_i32 : tensor<1x5xi32>
        %282 = arith.mulf %cst_19, %162 : f32
        %283 = arith.mulf %cst, %cst : f16
        %284 = math.floor %0 : tensor<1xf16>
        %285 = arith.minsi %c22122_i16, %c-17379_i16 : i16
        %286 = arith.divf %cst, %cst_0 : f16
        %287 = arith.maxui %127, %c690093038_i64 : i64
        %288 = tensor.empty() : tensor<7x7x7xi16>
        %289 = memref.load %alloc[%c0, %c3] : memref<1x12xi1>
        %290 = math.tanh %15 : tensor<1xf32>
        %291 = math.exp %19 : tensor<1xf32>
        %292 = arith.subi %c690093038_i64, %c1785724393_i64 : i64
        %293 = math.exp %9 : tensor<1xf32>
        scf.yield
      }
      default {
        %280 = affine.load %alloc_16[%c15, %c12, %c7] : memref<7x7x7xi16>
        %281 = math.tan %15 : tensor<1xf32>
        %282 = math.tan %14 : tensor<1x5xf32>
        %283 = index.mul %92, %c14
        %284 = vector.create_mask %58 : vector<1xi1>
        %285 = arith.negf %162 : f32
        %286 = arith.cmpf ult, %162, %cst_19 : f32
        %287 = memref.atomic_rmw muli %127, %alloc_2[%c0, %c6] : (i64, memref<1x12xi64>) -> i64
        %288 = vector.load %24[%c0] : memref<1xi32>, vector<1xi32>
        %289 = math.log1p %21 : tensor<f32>
        %290 = math.tanh %14 : tensor<1x5xf32>
        %291 = arith.cmpi sle, %false, %false_1 : i1
        %292 = arith.mulf %162, %cst_19 : f32
        %293 = vector.create_mask %86 : vector<1xi1>
        %294 = tensor.empty() : tensor<1xf16>
        memref.store %65, %alloc_12[%c0, %c2] : memref<1x5xi1>
      }
      %266 = vector.broadcast %c8 : index to vector<1xindex>
      %267 = vector.broadcast %162 : f32 to vector<1xf32>
      vector.scatter %alloc_18[] [%266], %124, %267 : memref<f32>, vector<1xindex>, vector<1xi1>, vector<1xf32>
      %268 = bufferization.to_tensor %74 : memref<1x5xi1>
      %269 = arith.minui %c272311582_i32, %c519730330_i32 : i32
      %270 = arith.shrsi %c1241810288_i32, %166 : i32
      %cst_37 = arith.constant 1.000000e+00 : f32
      %cst_38 = arith.constant 0.000000e+00 : f32
      %271 = vector.transfer_read %14[%c8, %c1], %cst_38 : tensor<1x5xf32>, vector<f32>
      %272 = index.mul %76, %c2
      %273 = index.casts %c1 : index to i32
      %274 = arith.remf %cst, %cst_0 : f16
      %275 = arith.subi %c690093038_i64, %127 : i64
      %276 = index.castu %c14762_i16 : i16 to index
      %cast_39 = tensor.cast %expanded : tensor<1x5x1xf32> to tensor<?x?x?xf32>
      %277 = arith.xori %c4909_i16, %c22184_i16 : i16
      %278 = math.exp2 %71 : tensor<7x7x7xf32>
      %279 = math.ctpop %17 : tensor<7x7x7xi64>
      scf.yield %124 : vector<1xi1>
    }
    default {
      %265 = math.roundeven %0 : tensor<1xf16>
      %266 = arith.xori %c14762_i16, %c-12050_i16 : i16
      %267 = math.absf %20 : tensor<f32>
      memref.assume_alignment %154, 1 : memref<1x12xi1>
      %268 = bufferization.clone %alloc_4 : memref<1x5xf32> to memref<1x5xf32>
      %269 = math.round %19 : tensor<1xf32>
      %270 = math.expm1 %10 : tensor<7x7x7xf32>
      %271 = math.log1p %15 : tensor<1xf32>
      %inserted_37 = tensor.insert %c272311582_i32 into %1[%c0, %c11] : tensor<1x12xi32>
      %272 = affine.apply affine_map<(d0, d1) -> (0)>(%150, %c10)
      %273 = vector.load %56[%c0, %c1] : memref<1x12xf16>, vector<7x7x7xf16>
      memref.assume_alignment %alloc_3, 16 : memref<7x7x7xf32>
      %274 = arith.shrui %c4909_i16, %c4909_i16 : i16
      %275 = math.tanh %5 : tensor<1xf32>
      %276 = math.log1p %46 : tensor<7x7x7xf32>
      %277 = index.castu %c22184_i16 : i16 to index
      scf.yield %124 : vector<1xi1>
    }
    %181 = arith.maxui %c22122_i16, %c22184_i16 : i16
    %182 = math.cos %6 : tensor<1x5xf16>
    %183 = arith.remf %cst, %cst : f16
    memref.copy %alloc, %alloc_11 : memref<1x12xi1> to memref<1x12xi1>
    %184 = vector.insertelement %false_1, %118[%93 : index] : vector<5xi1>
    %185 = arith.ceildivsi %c-17379_i16, %c4909_i16 : i16
    %186 = scf.execute_region -> vector<1x5xi32> {
      %265 = vector.create_mask %58, %c4 : vector<1x12xi1>
      %266 = math.roundeven %71 : tensor<7x7x7xf32>
      %267 = tensor.empty() : tensor<1x12xi32>
      %mapped_37 = linalg.map ins(%1, %3 : tensor<1x12xi32>, tensor<1x12xi32>) outs(%267 : tensor<1x12xi32>)
        (%in: i32, %in_41: i32) {
          bufferization.dealloc_tensor %47 : tensor<1x7xi16>
          %284 = affine.load %alloc_5[%c11, %c13] : memref<1x5xi1>
          %splat = tensor.splat %65 : tensor<1x12xi1>
          %false_42 = arith.constant false
          %285 = arith.remui %in, %c519730330_i32 : i32
          %286 = arith.floordivsi %c690093038_i64, %c1399235909_i64 : i64
          %287 = math.cos %12 : tensor<7x7x7xf16>
          %288 = math.tanh %10 : tensor<7x7x7xf32>
          %289 = arith.addf %cst_0, %cst : f16
          %290 = arith.ceildivsi %false_1, %false : i1
          %291 = vector.load %alloc_3[%c2, %c1, %c2] : memref<7x7x7xf32>, vector<7x7x7xf32>
          %alloc_43 = memref.alloc() : memref<1x12xi32>
          %292 = affine.min affine_map<(d0) -> (d0 ceildiv 128 - 128)>(%105)
          %293 = affine.max affine_map<(d0) -> (d0 - 16)>(%c7)
          %294 = math.cos %0 : tensor<1xf16>
          %295 = arith.addi %c14762_i16, %c4909_i16 : i16
          %296 = math.expm1 %6 : tensor<1x5xf16>
          %297 = vector.broadcast %c1785724393_i64 : i64 to vector<1xi64>
          %298 = math.cos %6 : tensor<1x5xf16>
          %299 = math.log1p %15 : tensor<1xf32>
          %dest_44, %accumulated_value_45 = vector.scan <maxsi>, %100, %125 {inclusive = false, reduction_dim = 1 : i64} : vector<1x5xi32>, vector<1xi32>
          %300 = math.exp %15 : tensor<1xf32>
          %301 = index.casts %c-17379_i16 : i16 to index
          %302 = math.ctpop %2 : tensor<1xi16>
          %303 = arith.cmpf une, %cst, %cst_0 : f16
          %304 = arith.maxf %cst, %cst_0 : f16
          %305 = vector.transpose %140, [0] : vector<5xf32> to vector<5xf32>
          %c0_i64 = arith.constant 0 : i64
          %306 = vector.transfer_read %16[%c12, %145, %148], %c0_i64 : tensor<7x7x7xi64>, vector<i64>
          %307 = arith.ori %in_41, %c1241810288_i32 : i32
          %308 = vector.load %alloc[%c0, %c10] : memref<1x12xi1>, vector<1x12xi1>
          %309 = index.casts %67 : index to i32
          %310 = index.castu %c1785724393_i64 : i64 to index
          %c0_i32 = arith.constant 0 : i32
          linalg.yield %c0_i32 : i32
        }
      %268 = vector.create_mask %c8, %c4 : vector<1x5xi1>
      %269 = arith.addf %162, %cst_19 : f32
      %270 = tensor.empty() : tensor<1x5xi32>
      %271 = math.fpowi %6, %270 : tensor<1x5xf16>, tensor<1x5xi32>
      %272 = bufferization.clone %alloc_18 : memref<f32> to memref<f32>
      %273 = index.castu %c519730330_i32 : i32 to index
      %274 = tensor.empty() : tensor<i32>
      %275 = math.fpowi %20, %274 : tensor<f32>, tensor<i32>
      %276 = vector.reduction <maxf>, %123 : vector<1xf16> into f16
      %277 = math.log1p %cst_19 : f32
      %alloc_38 = memref.alloc() : memref<1xi64>
      %278 = vector.broadcast %127 : i64 to vector<1xi64>
      %279 = vector.gather %alloc_38[%c5] [%125], %124, %278 : memref<1xi64>, vector<1xi32>, vector<1xi1>, vector<1xi64> into vector<1xi64>
      %280 = vector.broadcast %162 : f32 to vector<7x7xf32>
      %dest_39, %accumulated_value_40 = vector.scan <maxf>, %103, %280 {inclusive = false, reduction_dim = 0 : i64} : vector<7x7x7xf32>, vector<7x7xf32>
      %281 = vector.load %alloc[%c0, %c1] : memref<1x12xi1>, vector<1xi1>
      %282 = math.absf %20 : tensor<f32>
      %283 = vector.create_mask %145, %c7, %c8 : vector<7x7x7xi1>
      scf.yield %100 : vector<1x5xi32>
    }
    memref.copy %alloc_4, %61 : memref<1x5xf32> to memref<1x5xf32>
    %187 = vector.broadcast %162 : f32 to vector<1xf32>
    %188 = vector.fma %187, %187, %187 : vector<1xf32>
    %alloc_28 = memref.alloc() : memref<1x5xi64>
    memref.tensor_store %8, %alloc_28 : memref<1x5xi64>
    %189 = math.tan %cst_0 : f16
    %190 = affine.load %alloc_15[%c0, %c10] : memref<1x5xi32>
    %191 = math.floor %9 : tensor<1xf32>
    %192 = vector.reduction <minf>, %140 : vector<5xf32> into f32
    %193 = math.absi %c14762_i16 : i16
    %194 = arith.addi %c690093038_i64, %c690093038_i64 : i64
    %195 = tensor.empty() : tensor<1x5xf32>
    %mapped_29 = linalg.map ins(%61 : memref<1x5xf32>) outs(%195 : tensor<1x5xf32>)
      (%in: f32) {
        %265 = affine.if affine_set<(d0) : (-d0 == 0, (d0 floordiv 4 + 8) * 16 - d0 - d0 floordiv 16 >= 0)>(%c12) -> f16 {
          %296 = arith.cmpf uno, %cst_0, %cst : f16
          %297 = math.log2 %14 : tensor<1x5xf32>
          %298 = math.cttz %2 : tensor<1xi16>
          %299 = arith.shrui %166, %c1241810288_i32 : i32
          %300 = math.tanh %71 : tensor<7x7x7xf32>
          %alloca_43 = memref.alloca() : memref<1xf16>
          %301 = affine.min affine_map<(d0) -> ((d0 + 2) floordiv 8 + 32, -(d0 + d0 + 2), -8)>(%93)
          %302 = math.ceil %9 : tensor<1xf32>
          affine.yield %cst_0 : f16
        } else {
          memref.store %c519730330_i32, %24[%c0] : memref<1xi32>
          %296 = index.divs %c0, %107
          %expanded_43 = tensor.expand_shape %9 [[0, 1]] : tensor<1xf32> into tensor<1x1xf32>
          %297 = affine.min affine_map<(d0, d1, d2) -> ((d1 + 2) ceildiv 8)>(%c15, %c7, %c2)
          %298 = arith.negf %cst : f16
          %299 = vector.create_mask %c10, %67 : vector<1x5xi1>
          %300 = math.ceil %from_elements_24 : tensor<7x7x7xf32>
          %301 = arith.mulf %cst_19, %cst_19 : f32
          affine.yield %cst : f16
        }
        %266 = index.divs %c1, %29
        %267 = affine.if affine_set<(d0) : (d0 == 0, d0 >= 0)>(%c3) -> i32 {
          %296 = vector.extract_strided_slice %102 {offsets = [3, 0], sizes = [4, 3], strides = [1, 1]} : vector<7x7x7xf32> to vector<4x3x7xf32>
          %297 = arith.negf %cst_0 : f16
          %298 = arith.negf %162 : f32
          %299 = vector.insertelement %c519730330_i32, %125[%90 : index] : vector<1xi32>
          %300 = arith.shrui %c1241810288_i32, %190 : i32
          %301 = math.tan %14 : tensor<1x5xf32>
          %302 = arith.subi %c1785724393_i64, %c1785724393_i64 : i64
          bufferization.dealloc_tensor %6 : tensor<1x5xf16>
          affine.yield %166 : i32
        } else {
          %296 = arith.addf %cst, %cst_0 : f16
          %297 = index.add %c9, %58
          %298 = vector.broadcast %c4909_i16 : i16 to vector<5xi16>
          %dest_43, %accumulated_value_44 = vector.scan <add>, %101, %298 {inclusive = false, reduction_dim = 0 : i64} : vector<1x5xi16>, vector<5xi16>
          %alloc_45 = memref.alloc() : memref<1x12xi32>
          memref.tensor_store %3, %alloc_45 : memref<1x12xi32>
          %299 = vector.broadcast %c519730330_i32 : i32 to vector<7x7x7xi32>
          %300 = vector.gather %alloc_6[%c5] [%299], %179, %146 : memref<1xi16>, vector<7x7x7xi32>, vector<7x7x7xi1>, vector<7x7x7xi16> into vector<7x7x7xi16>
          %301 = arith.addf %cst_0, %cst_0 : f16
          %302 = arith.minsi %190, %190 : i32
          %303 = arith.ceildivsi %190, %166 : i32
          affine.yield %190 : i32
        }
        %268 = bufferization.clone %alloc_18 : memref<f32> to memref<f32>
        %269 = math.exp %195 : tensor<1x5xf32>
        %270 = math.tan %from_elements_24 : tensor<7x7x7xf32>
        %271 = math.exp %14 : tensor<1x5xf32>
        %272 = vector.broadcast %cst_19 : f32 to vector<7x7xf32>
        %dest_37, %accumulated_value_38 = vector.scan <minf>, %102, %272 {inclusive = true, reduction_dim = 2 : i64} : vector<7x7x7xf32>, vector<7x7xf32>
        %273 = vector.matrix_multiply %124, %118 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 5 : i32} : (vector<1xi1>, vector<5xi1>) -> vector<5xi1>
        %274 = math.absi %from_elements : tensor<1x12xi16>
        %275 = arith.divf %162, %162 : f32
        bufferization.dealloc_tensor %from_elements : tensor<1x12xi16>
        %276 = vector.broadcast %cst_0 : f16 to vector<5xf16>
        %277 = vector.maskedload %alloc_13[%c0], %118, %276 : memref<1xf16>, vector<5xi1>, vector<5xf16> into vector<5xf16>
        %generated_39 = tensor.generate %36, %150 {
        ^bb0(%arg2: index, %arg3: index):
          %296 = index.add %c14, %90
          %297 = vector.broadcast %false_1 : i1 to vector<7x7xi1>
          %298 = vector.multi_reduction <xor>, %179, %297 [0] : vector<7x7x7xi1> to vector<7x7xi1>
          %299 = arith.divsi %false_1, %false_1 : i1
          %300 = arith.remf %in, %162 : f32
          tensor.yield %127 : i64
        } : tensor<?x?xi64>
        %278 = tensor.empty() : tensor<1x5x1xi32>
        %279 = math.fpowi %expanded, %278 : tensor<1x5x1xf32>, tensor<1x5x1xi32>
        %280 = math.fpowi %162, %c1241810288_i32 : f32, i32
        %281 = vector.splat %c8 : vector<1xindex>
        %282 = math.sqrt %20 : tensor<f32>
        %283 = arith.remui %c-17379_i16, %c22184_i16 : i16
        %284 = affine.load %alloc_17[%c2, %c7] : memref<5x1xi64>
        %285 = arith.shli %false, %65 : i1
        %286 = index.divu %58, %c9
        %inserted_40 = tensor.insert %in into %cast_22[%c0] : tensor<?xf32>
        %287 = index.sub %c13, %145
        %288 = arith.divf %162, %162 : f32
        %289 = tensor.empty() : tensor<7x7x7xf32>
        %mapped_41 = linalg.map ins(%alloc_3 : memref<7x7x7xf32>) outs(%289 : tensor<7x7x7xf32>)
          (%in_43: f32) {
            %296 = arith.ori %c-17379_i16, %c4909_i16 : i16
            vector.print %97 : vector<7x7x7xi64>
            %297 = vector.broadcast %in : f32 to vector<5x5xf32>
            %298 = vector.outerproduct %140, %140, %297 {kind = #vector.kind<maxf>} : vector<5xf32>, vector<5xf32>
            memref.tensor_store %195, %61 : memref<1x5xf32>
            %299 = vector.broadcast %c-12050_i16 : i16 to vector<1xi16>
            %300 = vector.maskedload %alloc_6[%c0], %124, %299 : memref<1xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
            vector.print %122 : vector<1x5xf32>
            %301 = index.sizeof
            %302 = arith.minsi %65, %false_1 : i1
            %303 = math.tanh %162 : f32
            %304 = math.log1p %162 : f32
            %305 = math.atan %71 : tensor<7x7x7xf32>
            %306 = arith.divui %c4909_i16, %c22122_i16 : i16
            %307 = math.tanh %6 : tensor<1x5xf16>
            %308 = arith.remf %cst_0, %cst : f16
            %309 = index.castu %92 : index to i32
            %310 = index.ceildivu %286, %c9
            affine.store %190, %167[%c13] : memref<1xi32>
            %311 = math.copysign %289, %10 : tensor<7x7x7xf32>
            %312 = vector.broadcast %false : i1 to vector<7xi1>
            %313 = vector.maskedload %alloc_11[%c0, %c3], %312, %312 : memref<1x12xi1>, vector<7xi1>, vector<7xi1> into vector<7xi1>
            %314 = arith.xori %c1399235909_i64, %284 : i64
            %315 = arith.shrsi %284, %c1785724393_i64 : i64
            %316 = arith.maxui %c1785724393_i64, %c1785724393_i64 : i64
            %317 = vector.extract %313[2] : vector<7xi1>
            %318 = arith.shli %65, %false : i1
            %319 = bufferization.to_tensor %alloc_12 : memref<1x5xi1>
            %320 = arith.maxf %cst, %cst_0 : f16
            %321 = math.exp %expanded : tensor<1x5x1xf32>
            %322 = vector.matrix_multiply %187, %187 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
            %323 = tensor.empty(%286) : tensor<1x?xi64>
            %324 = bufferization.clone %alloc_2 : memref<1x12xi64> to memref<1x12xi64>
            %325 = math.cos %15 : tensor<1xf32>
            %326 = vector.broadcast %127 : i64 to vector<7x7xi64>
            %327 = vector.multi_reduction <minsi>, %97, %326 [0] : vector<7x7x7xi64> to vector<7x7xi64>
            %cst_44 = arith.constant 1.000000e+00 : f32
            linalg.yield %cst_44 : f32
          }
        %290 = index.divu %c7, %38
        %291 = affine.if affine_set<(d0, d1, d2) : ((-(-d1 + 2)) floordiv 8 >= 0, d2 + 1 == 0, (-(-d1 + 2)) floordiv 8 == 0)>(%c10, %c12, %c14) -> i16 {
          %296 = arith.cmpf ord, %cst_19, %in : f32
          %297 = math.tanh %12 : tensor<7x7x7xf16>
          %298 = vector.load %83[%c0, %c0] : memref<1x5xi1>, vector<1x5xi1>
          %299 = math.absi %11 : tensor<7x7x7xi1>
          %300 = affine.load %61[%c4, %c6] : memref<1x5xf32>
          %301 = arith.divui %c272311582_i32, %c272311582_i32 : i32
          %302 = arith.addi %127, %127 : i64
          vector.print %78 : vector<1x12xf32>
          affine.yield %c14762_i16 : i16
        } else {
          %from_elements_43 = tensor.from_elements %false_1, %false, %false, %false, %65 : tensor<1x5xi1>
          %296 = arith.divf %162, %cst_19 : f32
          %297 = affine.load %alloc_2[%c1, %c15] : memref<1x12xi64>
          %298 = memref.load %24[%c0] : memref<1xi32>
          %299 = arith.mulf %in, %162 : f32
          %inserted_44 = tensor.insert %cst_0 into %6[%c0, %c0] : tensor<1x5xf16>
          %alloca_45 = memref.alloca() : memref<1x12xf16>
          %300 = math.round %20 : tensor<f32>
          affine.yield %c-17379_i16 : i16
        }
        %292 = math.atan %5 : tensor<1xf32>
        %293 = math.roundeven %14 : tensor<1x5xf32>
        %294 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 + 64, 0)>(%286, %171, %67, %145)
        %295 = arith.ceildivsi %65, %false_1 : i1
        %cst_42 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_42 : f32
      }
    %196 = memref.realloc %167 : memref<1xi32> to memref<7xi32>
    %197 = vector.broadcast %cst_19 : f32 to vector<12xf32>
    %198 = vector.insert %197, %77 [0] : vector<12xf32> into vector<1x12xf32>
    %inserted_30 = tensor.insert %cst_19 into %expanded[%c0, %c0, %c0] : tensor<1x5x1xf32>
    %199 = arith.shrsi %false_1, %false : i1
    %200 = index.casts %c22184_i16 : i16 to index
    memref.copy %alloc_8, %alloc_15 : memref<1x5xi32> to memref<1x5xi32>
    %201 = arith.divf %cst_19, %cst_19 : f32
    %202 = memref.load %alloc_3[%c4, %c6, %c6] : memref<7x7x7xf32>
    %203 = math.copysign %6, %6 : tensor<1x5xf16>
    %204 = math.ceil %12 : tensor<7x7x7xf16>
    %205 = bufferization.clone %alloc_2 : memref<1x12xi64> to memref<1x12xi64>
    %206 = vector.create_mask %148, %90 : vector<1x5xi1>
    %207 = vector.extract %124[0] : vector<1xi1>
    %208 = vector.insertelement %cst_0, %128[] : vector<f16>
    %209 = index.maxu %c11, %76
    %210 = vector.create_mask %169, %c3, %c7 : vector<7x7x7xi1>
    %211 = math.fpowi %0, %73 : tensor<1xf16>, tensor<1xi32>
    %212 = vector.extract %78[0] : vector<1x12xf32>
    %213 = vector.matrix_multiply %126, %123 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
    vector.print %103 : vector<7x7x7xf32>
    %214 = vector.shuffle %118, %124 [3, 4] : vector<5xi1>, vector<1xi1>
    %215 = affine.load %alloc_4[%c15, %c11] : memref<1x5xf32>
    %216 = arith.ori %c14762_i16, %c22184_i16 : i16
    %217 = math.rsqrt %195 : tensor<1x5xf32>
    %218 = math.ctpop %2 : tensor<1xi16>
    %219 = index.mul %c9, %169
    %220 = arith.negf %215 : f32
    %221 = arith.addi %127, %c1785724393_i64 : i64
    %222 = vector.gather %alloc_7[%c0, %c7] [%125], %124, %124 : memref<1x12xi1>, vector<1xi32>, vector<1xi1>, vector<1xi1> into vector<1xi1>
    %223 = math.ctpop %c1241810288_i32 : i32
    %224 = vector.broadcast %c11 : index to vector<12xindex>
    %225 = vector.broadcast %false : i1 to vector<12xi1>
    %226 = vector.broadcast %127 : i64 to vector<12xi64>
    vector.scatter %alloc_2[%c0, %c0] [%224], %225, %226 : memref<1x12xi64>, vector<12xindex>, vector<12xi1>, vector<12xi64>
    %227 = affine.max affine_map<(d0, d1) -> (d1, d0 ceildiv 32, 0)>(%148, %38)
    %228 = index.divs %92, %144
    %229 = math.cos %19 : tensor<1xf32>
    %230 = vector.broadcast %65 : i1 to vector<7xi1>
    %231 = vector.multi_reduction <add>, %210, %230 [1, 2] : vector<7x7x7xi1> to vector<7xi1>
    %cst_31 = arith.constant 1.000000e+00 : f16
    %232 = vector.transfer_read %12[%92, %c4, %c2], %cst_31 : tensor<7x7x7xf16>, vector<f16>
    %233 = math.log1p %195 : tensor<1x5xf32>
    %234 = arith.negf %215 : f32
    scf.if %false_1 {
      %265 = index.maxu %c9, %c11
      %266 = math.ceil %19 : tensor<1xf32>
      %267 = affine.load %alloc_12[%c4, %c8] : memref<1x5xi1>
      %268 = index.castu %58 : index to i32
      %269 = math.absi %166 : i32
      %c0_i16 = arith.constant 0 : i16
      %c0_i16_37 = arith.constant 0 : i16
      %270 = vector.transfer_read %47[%171, %67], %c0_i16_37 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<1x7xi16>, vector<7xi16>
      %271 = math.cos %14 : tensor<1x5xf32>
      %272 = affine.load %56[%c4, %c11] : memref<1x12xf16>
    }
    affine.store %162, %61[%c13, %c0] : memref<1x5xf32>
    %235 = math.log1p %5 : tensor<1xf32>
    memref.assume_alignment %alloc_9, 1 : memref<1x5xi32>
    %236 = arith.divf %cst_19, %cst_19 : f32
    %237 = math.log2 %71 : tensor<7x7x7xf32>
    %alloc_32 = memref.alloc() : memref<7x7x7xi64>
    memref.tensor_store %4, %alloc_32 : memref<7x7x7xi64>
    %238 = scf.if %false_1 -> (memref<1x12xi64>) {
      %265 = arith.divf %cst_31, %cst_31 : f16
      %generated_37 = tensor.generate %76, %58 {
      ^bb0(%arg2: index, %arg3: index):
        %272 = math.tanh %5 : tensor<1xf32>
        %273 = math.tan %20 : tensor<f32>
        %274 = arith.shrsi %c4909_i16, %c4909_i16 : i16
        %275 = vector.matrix_multiply %140, %197 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 12 : i32} : (vector<5xf32>, vector<12xf32>) -> vector<60xf32>
        tensor.yield %false : i1
      } : tensor<?x?xi1>
      %266 = math.log2 %from_elements_24 : tensor<7x7x7xf32>
      %267 = vector.bitcast %102 : vector<7x7x7xf32> to vector<7x7x7xi32>
      %268 = vector.extract_strided_slice %188 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
      %269 = index.add %93, %171
      %270 = arith.negf %cst_31 : f16
      %271 = index.floordivs %93, %86
      scf.yield %alloc_2 : memref<1x12xi64>
    } else {
      %265 = arith.minsi %166, %166 : i32
      %266 = vector.broadcast %162 : f32 to vector<f32>
      vector.transfer_write %266, %alloc_10[%c4, %209, %209] : vector<f32>, memref<7x7x7xf32>
      %267 = math.atan %46 : tensor<7x7x7xf32>
      %cst_37 = arith.constant 1.000000e+00 : f32
      %cst_38 = arith.constant 0.000000e+00 : f32
      %268 = vector.transfer_read %71[%c9, %c6, %57], %cst_38 {permutation_map = affine_map<(d0, d1, d2) -> (0, 0)>} : tensor<7x7x7xf32>, vector<7x5xf32>
      %269 = tensor.empty() : tensor<1x5xi32>
      %270 = vector.gather %269[%219, %c12] [%125], %222, %125 : tensor<1x5xi32>, vector<1xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
      %271 = vector.broadcast %215 : f32 to vector<7x7xf32>
      %dest_39, %accumulated_value_40 = vector.scan <minf>, %103, %271 {inclusive = true, reduction_dim = 1 : i64} : vector<7x7x7xf32>, vector<7x7xf32>
      %272 = math.absf %14 : tensor<1x5xf32>
      %273 = affine.load %alloc[%c4, %c15] : memref<1x12xi1>
      scf.yield %205 : memref<1x12xi64>
    }
    %239 = vector.multi_reduction <maxui>, %206, %118 [0] : vector<1x5xi1> to vector<5xi1>
    %240 = bufferization.clone %alloc_4 : memref<1x5xf32> to memref<1x5xf32>
    %241 = arith.shrui %c22184_i16, %c14762_i16 : i16
    %242 = vector.extract_strided_slice %102 {offsets = [3], sizes = [3], strides = [1]} : vector<7x7x7xf32> to vector<3x7x7xf32>
    %243 = bufferization.clone %56 : memref<1x12xf16> to memref<1x12xf16>
    %244 = scf.if %65 -> (i64) {
      %265 = arith.maxf %cst, %cst : f16
      %266 = vector.bitcast %242 : vector<3x7x7xf32> to vector<3x7x7xf32>
      %267 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %213, %213, %cst : vector<1xf16>, vector<1xf16> into f16
      %268 = math.cos %0 : tensor<1xf16>
      %269 = arith.cmpf ugt, %cst, %cst_31 : f16
      %270 = bufferization.to_tensor %alloc : memref<1x12xi1>
      %271 = arith.maxf %cst_19, %cst_19 : f32
      %272 = bufferization.clone %56 : memref<1x12xf16> to memref<1x12xf16>
      scf.yield %127 : i64
    } else {
      %265 = bufferization.clone %83 : memref<1x5xi1> to memref<1x5xi1>
      %266 = math.log2 %9 : tensor<1xf32>
      %267 = affine.max affine_map<(d0, d1, d2) -> (d0 floordiv 8, d0 + 8, d0 * 8, d2 mod 4)>(%c13, %c3, %c8)
      %268 = arith.cmpi ult, %c690093038_i64, %c1399235909_i64 : i64
      %true = index.bool.constant true
      %269 = math.powf %20, %21 : tensor<f32>
      %270 = vector.create_mask %90 : vector<1xi1>
      %271 = arith.remf %cst_31, %cst : f16
      scf.yield %c1399235909_i64 : i64
    }
    %245 = math.log2 %14 : tensor<1x5xf32>
    %rank = tensor.rank %15 : tensor<1xf32>
    %246 = vector.create_mask %67, %90 : vector<1x5xi1>
    memref.copy %alloc_7, %alloc_11 : memref<1x12xi1> to memref<1x12xi1>
    %247 = tensor.empty(%150) : tensor<1x?xf16>
    %248 = vector.extract_strided_slice %103 {offsets = [0], sizes = [6], strides = [1]} : vector<7x7x7xf32> to vector<6x7x7xf32>
    %249 = affine.max affine_map<(d0, d1, d2, d3) -> (-(d3 - 2))>(%148, %171, %93, %145)
    %250 = index.mul %rank, %86
    %251 = arith.divf %215, %215 : f32
    %252 = affine.if affine_set<(d0) : (((d0 mod 8) * 2) floordiv 4 == 0, d0 mod 8 - d0 ceildiv 2 >= 0, d0 mod 4 == 0, (((d0 mod 8) * 2) floordiv 4) mod 2 >= 0)>(%c7) -> i64 {
      %265 = index.ceildivu %57, %57
      %266 = tensor.empty() : tensor<1x5xi32>
      %mapped_37 = linalg.map ins(%alloc_15 : memref<1x5xi32>) outs(%266 : tensor<1x5xi32>)
        (%in: i32) {
          %272 = tensor.empty() : tensor<5x5xf32>
          %273 = tensor.empty() : tensor<1x5xf32>
          %274 = linalg.matmul ins(%195, %272 : tensor<1x5xf32>, tensor<5x5xf32>) outs(%273 : tensor<1x5xf32>) -> tensor<1x5xf32>
          %275 = affine.load %alloc_6[%c5] : memref<1xi16>
          %276 = arith.mulf %cst_31, %cst_0 : f16
          %277 = index.floordivs %105, %36
          %278 = arith.negf %cst : f16
          %279 = bufferization.to_tensor %alloc_7 : memref<1x12xi1>
          %280 = math.round %9 : tensor<1xf32>
          %281 = math.ceil %14 : tensor<1x5xf32>
          %from_elements_38 = tensor.from_elements %c-12050_i16 : tensor<1xi16>
          %282 = memref.realloc %alloc_6 : memref<1xi16> to memref<12xi16>
          %cast_39 = tensor.cast %12 : tensor<7x7x7xf16> to tensor<?x?x?xf16>
          %283 = index.sizeof
          %284 = math.copysign %0, %0 : tensor<1xf16>
          %inserted_40 = tensor.insert %215 into %41[%c0] : tensor<1xf32>
          %285 = affine.apply affine_map<(d0, d1) -> (d0 floordiv 128 - 16)>(%209, %76)
          %286 = math.floor %21 : tensor<f32>
          %287 = arith.maxui %166, %c1241810288_i32 : i32
          %288 = math.log2 %cst_19 : f32
          %289 = vector.shuffle %210, %210 [3, 4, 5, 6, 7, 9, 10, 13] : vector<7x7x7xi1>, vector<7x7x7xi1>
          %inserted_41 = tensor.insert %166 into %1[%c0, %c11] : tensor<1x12xi32>
          %290 = arith.shrsi %c14762_i16, %c4909_i16 : i16
          %291 = bufferization.clone %83 : memref<1x5xi1> to memref<1x5xi1>
          %from_elements_42 = tensor.from_elements %c690093038_i64, %244, %244, %244, %c1399235909_i64, %c1399235909_i64, %127, %244, %127, %244, %244, %c1785724393_i64 : tensor<1x12xi64>
          %292 = math.log2 %10 : tensor<7x7x7xf32>
          %293 = math.copysign %41, %9 : tensor<1xf32>
          %294 = math.ctlz %73 : tensor<1xi32>
          %inserted_43 = tensor.insert %c690093038_i64 into %8[%c0, %c0] : tensor<1x5xi64>
          %295 = vector.reduction <minui>, %230 : vector<7xi1> into i1
          %296 = vector.create_mask %107, %150 : vector<1x12xi1>
          %297 = arith.ceildivsi %c-12050_i16, %c4909_i16 : i16
          %298 = vector.broadcast %c22184_i16 : i16 to vector<7x7xi16>
          %dest_44, %accumulated_value_45 = vector.scan <add>, %146, %298 {inclusive = false, reduction_dim = 2 : i64} : vector<7x7x7xi16>, vector<7x7xi16>
          %299 = affine.max affine_map<(d0) -> (((d0 * 16) ceildiv 128) * 8 + 127)>(%29)
          %c0_i32 = arith.constant 0 : i32
          linalg.yield %c0_i32 : i32
        }
      affine.store %false_1, %alloc_5[%c8, %c1] : memref<1x5xi1>
      %267 = math.round %21 : tensor<f32>
      %268 = vector.extract %80[0] : vector<1x5xf32>
      %269 = vector.matrix_multiply %268, %187 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<1xf32>) -> vector<5xf32>
      %270 = vector.extract_strided_slice %206 {offsets = [0], sizes = [1], strides = [1]} : vector<1x5xi1> to vector<1x5xi1>
      %271 = arith.floordivsi %false_1, %false_1 : i1
      affine.yield %c1399235909_i64 : i64
    } else {
      %265 = vector.broadcast %215 : f32 to vector<7x7x7xf32>
      %266 = vector.fma %265, %103, %103 : vector<7x7x7xf32>
      %267 = index.add %92, %c15
      memref.store %162, %alloc_10[%c3, %c5, %c2] : memref<7x7x7xf32>
      %268 = bufferization.clone %alloc_18 : memref<f32> to memref<f32>
      %269 = arith.divf %215, %215 : f32
      %alloc_37 = memref.alloc() : memref<12x12xi32>
      %270 = tensor.empty() : tensor<1x12xi32>
      %271 = linalg.matmul ins(%3, %alloc_37 : tensor<1x12xi32>, memref<12x12xi32>) outs(%270 : tensor<1x12xi32>) -> tensor<1x12xi32>
      %272 = tensor.empty() : tensor<7x7x7xi1>
      %273 = arith.maxf %cst, %cst : f16
      affine.yield %c1399235909_i64 : i64
    }
    scf.execute_region {
      %cst_37 = arith.constant 0x4C05CE6C : f32
      %265 = vector.extract_strided_slice %246 {offsets = [0], sizes = [1], strides = [1]} : vector<1x5xi1> to vector<1x5xi1>
      %266 = math.fpowi %cst, %c519730330_i32 : f16, i32
      %267 = affine.max affine_map<(d0, d1) -> (d0 * 2 - 64, d0 + 64, d0 * -2, d1 floordiv 8)>(%250, %c5)
      %268 = index.add %c4, %rank
      %269 = arith.cmpf one, %cst_0, %cst_31 : f16
      %rank_38 = tensor.rank %4 : tensor<7x7x7xi64>
      %270 = index.casts %c1399235909_i64 : i64 to index
      %271 = arith.maxf %cst, %cst_0 : f16
      vector.print %102 : vector<7x7x7xf32>
      %272 = math.roundeven %71 : tensor<7x7x7xf32>
      %273 = vector.insertelement %cst_31, %126[%268 : index] : vector<1xf16>
      affine.store %c519730330_i32, %alloc_15[%c10, %c8] : memref<1x5xi32>
      %274 = vector.multi_reduction <maxf>, %78, %197 [0] : vector<1x12xf32> to vector<12xf32>
      memref.copy %alloc_14, %alloc_7 : memref<1x12xi1> to memref<1x12xi1>
      %275 = math.roundeven %20 : tensor<f32>
      scf.yield
    }
    %253 = arith.maxui %c14762_i16, %c-12050_i16 : i16
    %254 = arith.floordivsi %c1241810288_i32, %c1241810288_i32 : i32
    %255 = vector.extract_strided_slice %97 {offsets = [5], sizes = [2], strides = [1]} : vector<7x7x7xi64> to vector<2x7x7xi64>
    %256 = arith.shli %c22122_i16, %c-12050_i16 : i16
    %257 = math.cos %10 : tensor<7x7x7xf32>
    %258 = index.castu %false : i1 to index
    %259 = affine.load %alloc_15[%c15, %c1] : memref<1x5xi32>
    %alloc_33 = memref.alloc() : memref<7x7x7xf16>
    memref.tensor_store %12, %alloc_33 : memref<7x7x7xf16>
    %260 = vector.create_mask %90, %c14, %219 : vector<7x7x7xi1>
    %generated_34 = tensor.generate %107 {
    ^bb0(%arg2: index):
      %265 = vector.broadcast %162 : f32 to vector<7x7xf32>
      %dest_37, %accumulated_value_38 = vector.scan <minf>, %102, %265 {inclusive = false, reduction_dim = 1 : i64} : vector<7x7x7xf32>, vector<7x7xf32>
      %266 = tensor.empty() : tensor<7x7x7xf16>
      %mapped_39 = linalg.map ins(%12, %12, %12 : tensor<7x7x7xf16>, tensor<7x7x7xf16>, tensor<7x7x7xf16>) outs(%266 : tensor<7x7x7xf16>)
        (%in: f16, %in_40: f16, %in_41: f16) {
          %269 = math.roundeven %in_40 : f16
          %270 = math.tan %in_41 : f16
          %271 = arith.shrui %false, %false_1 : i1
          %272 = math.ctpop %2 : tensor<1xi16>
          %273 = tensor.empty() : tensor<1xf16>
          %274 = arith.minsi %c1399235909_i64, %c690093038_i64 : i64
          %275 = math.ctlz %13 : tensor<1x5xi16>
          %276 = arith.ori %259, %c1241810288_i32 : i32
          %from_elements_42 = tensor.from_elements %244, %127, %c1785724393_i64, %c690093038_i64, %244 : tensor<1x5xi64>
          %277 = vector.multi_reduction <maxsi>, %179, %230 [0, 1] : vector<7x7x7xi1> to vector<7xi1>
          %278 = affine.apply affine_map<(d0) -> (d0 - (-d0 - 8) - d0 * 2)>(%90)
          %279 = math.log1p %266 : tensor<7x7x7xf16>
          vector.print %101 : vector<1x5xi16>
          %280 = bufferization.clone %alloc_18 : memref<f32> to memref<f32>
          %281 = math.log10 %cst_0 : f16
          %282 = arith.maxui %c22122_i16, %c22184_i16 : i16
          %283 = vector.extract_strided_slice %197 {offsets = [4], sizes = [3], strides = [1]} : vector<12xf32> to vector<3xf32>
          %284 = math.round %from_elements_24 : tensor<7x7x7xf32>
          %285 = arith.remui %259, %166 : i32
          %286 = math.round %14 : tensor<1x5xf32>
          %287 = tensor.empty() : tensor<12x7xi64>
          %288 = tensor.empty() : tensor<1x7xi64>
          %289 = linalg.matmul ins(%43, %287 : tensor<1x12xi64>, tensor<12x7xi64>) outs(%288 : tensor<1x7xi64>) -> tensor<1x7xi64>
          %290 = index.mul %36, %107
          %291 = math.roundeven %15 : tensor<1xf32>
          %292 = arith.minsi %c272311582_i32, %c1241810288_i32 : i32
          %293 = vector.extract_strided_slice %98 {offsets = [0], sizes = [1], strides = [1]} : vector<1x5xi16> to vector<1x5xi16>
          %294 = tensor.empty() : tensor<12x5xi64>
          %295 = tensor.empty() : tensor<1x5xi64>
          %296 = linalg.matmul ins(%43, %294 : tensor<1x12xi64>, tensor<12x5xi64>) outs(%295 : tensor<1x5xi64>) -> tensor<1x5xi64>
          %297 = arith.mulf %in_41, %cst_31 : f16
          %inserted_43 = tensor.insert %162 into %10[%c1, %c5, %c3] : tensor<7x7x7xf32>
          %298 = vector.reduction <add>, %197 : vector<12xf32> into f32
          %299 = math.absf %19 : tensor<1xf32>
          %300 = arith.ori %false, %65 : i1
          %301 = affine.max affine_map<(d0, d1, d2) -> (d2 + d2 * 4 - (d1 - 4) - d2 + 80)>(%38, %93, %90)
          %cst_44 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_44 : f16
        }
      %267 = math.round %21 : tensor<f32>
      %268 = math.ctpop %259 : i32
      tensor.yield %c-12050_i16 : i16
    } : tensor<?xi16>
    %261 = tensor.empty() : tensor<1x12xi32>
    %262 = linalg.copy ins(%3 : tensor<1x12xi32>) outs(%261 : tensor<1x12xi32>) -> tensor<1x12xi32>
    %alloc_35 = memref.alloc() : memref<5x1xi1>
    linalg.transpose ins(%alloc_5 : memref<1x5xi1>) outs(%alloc_35 : memref<5x1xi1>) permutation = [1, 0] 
    %alloc_36 = memref.alloc() : memref<i32>
    linalg.reduce ins(%24 : memref<1xi32>) outs(%alloc_36 : memref<i32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %265 = arith.cmpf oeq, %cst, %cst : f16
        memref.tensor_store %from_elements_24, %alloc_3 : memref<7x7x7xf32>
        %alloc_37 = memref.alloc() : memref<1xi16>
        memref.copy %alloc_6, %alloc_37 : memref<1xi16> to memref<1xi16>
        memref.assume_alignment %240, 4 : memref<1x5xf32>
        memref.alloca_scope  {
          %268 = arith.remf %cst_31, %cst : f16
          %269 = math.log1p %12 : tensor<7x7x7xf16>
          %270 = math.cos %9 : tensor<1xf32>
          %271 = arith.ori %false_1, %false_1 : i1
          %272 = arith.cmpi slt, %c22122_i16, %c22184_i16 : i16
          %273 = index.mul %c10, %45
          %cast_39 = tensor.cast %2 : tensor<1xi16> to tensor<?xi16>
          %274 = vector.insertelement %cst_19, %197[%29 : index] : vector<12xf32>
          %275 = vector.matrix_multiply %125, %125 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
          %cst_40 = arith.constant 1.000000e+00 : f32
          %276 = vector.transfer_read %14[%86, %c8], %cst_40 : tensor<1x5xf32>, vector<f32>
          %277 = arith.mulf %215, %cst_19 : f32
          memref.copy %74, %alloc_12 : memref<1x5xi1> to memref<1x5xi1>
          %278 = arith.subi %c22184_i16, %c4909_i16 : i16
          %279 = vector.load %238[%c0, %c0] : memref<1x12xi64>, vector<7x7x7xi64>
          %280 = arith.divf %cst, %cst_31 : f16
          %281 = vector.reduction <or>, %230 : vector<7xi1> into i1
          %alloc_41 = memref.alloc() : memref<7x7x7xi64>
          %282 = math.sqrt %0 : tensor<1xf16>
          %283 = arith.negf %162 : f32
          %284 = arith.cmpi sge, %166, %c1241810288_i32 : i32
          %285 = math.atan %10 : tensor<7x7x7xf32>
          %286 = math.roundeven %215 : f32
          %287 = index.castu %c4909_i16 : i16 to index
          %288 = arith.addf %cst, %cst_31 : f16
          %289 = index.casts %c272311582_i32 : i32 to index
          %290 = vector.bitcast %222 : vector<1xi1> to vector<1xi1>
          vector.print %103 : vector<7x7x7xf32>
          %rank_42 = tensor.rank %generated_34 : tensor<?xi16>
          %from_elements_43 = tensor.from_elements %244, %127, %c1785724393_i64, %127, %244, %c1785724393_i64, %c690093038_i64, %127, %c690093038_i64, %c1785724393_i64, %127, %244, %127, %127, %c1399235909_i64, %c1785724393_i64, %c690093038_i64, %127, %c1785724393_i64, %c690093038_i64, %244, %c690093038_i64, %c1785724393_i64, %244, %c1399235909_i64, %c690093038_i64, %244, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %127, %127, %c1785724393_i64, %c1399235909_i64, %127, %244, %c1399235909_i64, %244, %c1785724393_i64, %127, %c1785724393_i64, %127, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %127, %c690093038_i64, %c1785724393_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %127, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %244, %c690093038_i64, %244, %c1785724393_i64, %c1785724393_i64, %c1785724393_i64, %127, %c690093038_i64, %127, %c1399235909_i64, %127, %c1399235909_i64, %244, %c1785724393_i64, %127, %c690093038_i64, %244, %c1785724393_i64, %244, %127, %244, %c690093038_i64, %244, %c1785724393_i64, %c1399235909_i64, %244, %c1399235909_i64, %c1399235909_i64, %127, %c1399235909_i64, %127, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %127, %c690093038_i64, %c690093038_i64, %127, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %c690093038_i64, %127, %c690093038_i64, %c690093038_i64, %127, %127, %127, %c690093038_i64, %c1785724393_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c690093038_i64, %c690093038_i64, %244, %c690093038_i64, %127, %127, %c1785724393_i64, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %244, %c1785724393_i64, %244, %244, %c690093038_i64, %244, %244, %127, %c1399235909_i64, %244, %c1399235909_i64, %127, %244, %c690093038_i64, %127, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %127, %c1785724393_i64, %244, %244, %c1399235909_i64, %127, %c1399235909_i64, %244, %c690093038_i64, %c1785724393_i64, %c690093038_i64, %244, %127, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %c690093038_i64, %127, %244, %127, %c1785724393_i64, %244, %c1785724393_i64, %127, %c1785724393_i64, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %c1785724393_i64, %c1399235909_i64, %244, %c1399235909_i64, %127, %244, %244, %c690093038_i64, %127, %c1399235909_i64, %c1399235909_i64, %127, %c690093038_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %127, %c690093038_i64, %c1399235909_i64, %127, %127, %c690093038_i64, %c1785724393_i64, %c690093038_i64, %244, %127, %244, %127, %244, %127, %c690093038_i64, %c1785724393_i64, %127, %c1785724393_i64, %c690093038_i64, %244, %244, %244, %c1399235909_i64, %c690093038_i64, %244, %c1785724393_i64, %244, %127, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %127, %244, %c690093038_i64, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %c690093038_i64, %c1785724393_i64, %c690093038_i64, %244, %c690093038_i64, %127, %127, %244, %c1785724393_i64, %127, %c1399235909_i64, %244, %c690093038_i64, %244, %244, %c1399235909_i64, %127, %c690093038_i64, %c690093038_i64, %244, %244, %244, %c1399235909_i64, %c1785724393_i64, %c1399235909_i64, %244, %244, %244, %127, %127, %244, %127, %244, %244, %c1785724393_i64, %c1399235909_i64, %127, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c690093038_i64, %c1785724393_i64, %244, %127, %c1399235909_i64, %c1785724393_i64, %127, %127, %c1399235909_i64, %c1399235909_i64, %244, %c1785724393_i64, %127, %c1399235909_i64, %c690093038_i64, %c690093038_i64, %c1399235909_i64, %c1785724393_i64, %244, %c690093038_i64, %127, %244, %127, %c1399235909_i64, %244, %244, %c690093038_i64, %c690093038_i64, %c1785724393_i64, %127, %127, %c1785724393_i64, %c690093038_i64, %c1399235909_i64, %244, %127, %244, %244, %127, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %244, %c1399235909_i64, %127, %c1399235909_i64, %244, %127, %127, %127, %244, %c1785724393_i64, %c1785724393_i64, %c1785724393_i64, %c1399235909_i64, %c1785724393_i64, %127, %c690093038_i64, %c1399235909_i64, %c1399235909_i64, %c1785724393_i64, %127, %c690093038_i64, %127, %c690093038_i64, %244, %127, %c1399235909_i64, %c1399235909_i64, %c690093038_i64, %244, %127, %127 : tensor<7x7x7xi64>
          %291 = arith.subi %c22184_i16, %c-17379_i16 : i16
          %292 = index.castu %90 : index to i32
          affine.store %65, %alloc[%c1, %c13] : memref<1x12xi1>
        }
        %266 = arith.maxui %c1399235909_i64, %c1399235909_i64 : i64
        %267 = arith.shrsi %c1785724393_i64, %127 : i64
        %generated_38 = tensor.generate %90, %67 {
        ^bb0(%arg2: index, %arg3: index, %arg4: index):
          %268 = vector.extract_strided_slice %79 {offsets = [0], sizes = [1], strides = [1]} : vector<1x5xf32> to vector<1x5xf32>
          %269 = arith.addf %215, %cst_19 : f32
          %alloca_39 = memref.alloca() : memref<7x7x7xf16>
          %270 = math.absf %162 : f32
          tensor.yield %cst_0 : f16
        } : tensor<?x?x7xf16>
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    %263 = scf.parallel (%arg2, %arg3) = (%c1, %228) to (%29, %209) step (%c8, %c4) init (%71) -> tensor<7x7x7xf32> {
      %alloc_37 = memref.alloc() : memref<7x7x7xi64>
      memref.tensor_store %152, %alloc_37 : memref<7x7x7xi64>
      %265 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d1 - 1) ceildiv 16)>(%c8, %c9, %105, %76)
      %266 = arith.addf %215, %162 : f32
      %267 = math.absi %c14762_i16 : i16
      %collapsed = tensor.collapse_shape %262 [[0, 1]] : tensor<1x12xi32> into tensor<12xi32>
      %268 = affine.max affine_map<(d0, d1) -> (0, -16)>(%67, %76)
      %269 = affine.min affine_map<(d0) -> ((((-d0) mod 32) floordiv 16) mod 32, -d0, (((-d0) mod 32) floordiv 16) mod 32 + ((-d0) mod 32) floordiv 16, d0 - (-d0) mod 32)>(%58)
      %270 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2)>(%c2, %29, %arg3, %c0)
      %271 = math.log1p %0 : tensor<1xf16>
      %272 = math.exp %0 : tensor<1xf16>
      %273 = arith.minsi %c1241810288_i32, %259 : i32
      %274 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minsi>} %222, %246, %118 : vector<1xi1>, vector<1x5xi1> into vector<5xi1>
      %275 = arith.maxsi %c22184_i16, %c-17379_i16 : i16
      %276 = math.log2 %46 : tensor<7x7x7xf32>
      %277 = vector.broadcast %127 : i64 to vector<i64>
      vector.transfer_write %277, %alloc_2[%c5, %c9] : vector<i64>, memref<1x12xi64>
      %278 = arith.shli %c1399235909_i64, %c1785724393_i64 : i64
      %279 = tensor.empty() : tensor<7x7x7xf32>
      scf.reduce(%279)  : tensor<7x7x7xf32> {
      ^bb0(%arg4: tensor<7x7x7xf32>, %arg5: tensor<7x7x7xf32>):
        %280 = tensor.empty(%c1) : tensor<7x7x?xi16>
        %281 = math.fma %162, %cst_19, %162 : f32
        %282 = math.ctpop %262 : tensor<1x12xi32>
        %283 = arith.remf %cst_31, %cst : f16
        %284 = math.fma %10, %10, %46 : tensor<7x7x7xf32>
        %285 = math.absf %expanded : tensor<1x5x1xf32>
        %286 = arith.minsi %c1241810288_i32, %166 : i32
        %287 = vector.multi_reduction <minf>, %78, %162 [0, 1] : vector<1x12xf32> to f32
        %288 = tensor.empty() : tensor<7x7x7xf32>
        scf.reduce.return %288 : tensor<7x7x7xf32>
      }
      scf.yield
    }
    %264 = affine.vector_load %alloc_15[%144, %76] : memref<1x5xi32>, vector<12xi32>
    affine.vector_store %124, %alloc_12[%228, %200] : memref<1x5xi1>, vector<1xi1>
    vector.print %18 : vector<5xf32>
    vector.print %77 : vector<1x12xf32>
    vector.print %78 : vector<1x12xf32>
    vector.print %79 : vector<1x5xf32>
    vector.print %80 : vector<1x5xf32>
    vector.print %87 : vector<1x5xf32>
    vector.print %89 : vector<1x12xi32>
    vector.print %97 : vector<7x7x7xi64>
    vector.print %98 : vector<1x5xi16>
    vector.print %99 : vector<1x5xi1>
    vector.print %100 : vector<1x5xi32>
    vector.print %101 : vector<1x5xi16>
    vector.print %102 : vector<7x7x7xf32>
    vector.print %103 : vector<7x7x7xf32>
    vector.print %106 : vector<f16>
    vector.print %118 : vector<5xi1>
    vector.print %122 : vector<1x5xf32>
    vector.print %123 : vector<1xf16>
    vector.print %124 : vector<1xi1>
    vector.print %125 : vector<1xi32>
    vector.print %126 : vector<1xf16>
    vector.print %128 : vector<f16>
    vector.print %140 : vector<5xf32>
    vector.print %146 : vector<7x7x7xi16>
    vector.print %179 : vector<7x7x7xi1>
    vector.print %187 : vector<1xf32>
    vector.print %188 : vector<1xf32>
    vector.print %197 : vector<12xf32>
    vector.print %206 : vector<1x5xi1>
    vector.print %210 : vector<7x7x7xi1>
    vector.print %212 : vector<12xf32>
    vector.print %213 : vector<1xf16>
    vector.print %222 : vector<1xi1>
    vector.print %230 : vector<7xi1>
    vector.print %242 : vector<3x7x7xf32>
    vector.print %246 : vector<1x5xi1>
    vector.print %248 : vector<6x7x7xf32>
    vector.print %255 : vector<2x7x7xi64>
    vector.print %260 : vector<7x7x7xi1>
    vector.print %264 : vector<12xi32>
    vector.print %c-17379_i16 : i16
    vector.print %false : i1
    vector.print %cst : f16
    vector.print %c519730330_i32 : i32
    vector.print %cst_0 : f16
    vector.print %c690093038_i64 : i64
    vector.print %c272311582_i32 : i32
    vector.print %c1785724393_i64 : i64
    vector.print %c1399235909_i64 : i64
    vector.print %c-12050_i16 : i16
    vector.print %c4909_i16 : i16
    vector.print %c14762_i16 : i16
    vector.print %false_1 : i1
    vector.print %c22184_i16 : i16
    vector.print %c1241810288_i32 : i32
    vector.print %c22122_i16 : i16
    vector.print %cst_19 : f32
    vector.print %65 : i1
    vector.print %127 : i64
    vector.print %162 : f32
    vector.print %166 : i32
    vector.print %190 : i32
    vector.print %215 : f32
    vector.print %cst_31 : f16
    vector.print %244 : i64
    vector.print %259 : i32
    return
  }
}
