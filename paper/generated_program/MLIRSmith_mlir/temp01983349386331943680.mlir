module {
  func.func private @func1(%arg0: memref<16x7x16xf32>, %arg1: vector<16x7x16xi32>) {
    %false = arith.constant false
    %c647337080_i32 = arith.constant 647337080 : i32
    %c1480477621_i32 = arith.constant 1480477621 : i32
    %c302691568_i64 = arith.constant 302691568 : i64
    %c1951499111_i32 = arith.constant 1951499111 : i32
    %false_0 = arith.constant false
    %c706296327_i32 = arith.constant 706296327 : i32
    %cst = arith.constant 1.0891817E+9 : f32
    %c619965047_i32 = arith.constant 619965047 : i32
    %c1138262349_i32 = arith.constant 1138262349 : i32
    %cst_1 = arith.constant 0x4E31877E : f32
    %true = arith.constant true
    %cst_2 = arith.constant 5.740800e+04 : f16
    %true_3 = arith.constant true
    %cst_4 = arith.constant 0x4B1E8CFA : f32
    %cst_5 = arith.constant 4.408000e+03 : f16
    %0 = tensor.empty() : tensor<16x7x16xi16>
    %1 = tensor.empty() : tensor<7x16x7xf32>
    %2 = tensor.empty() : tensor<7x16x7xi64>
    %3 = tensor.empty() : tensor<7x7xi64>
    %4 = tensor.empty() : tensor<7x16x7xf32>
    %5 = tensor.empty() : tensor<16xi16>
    %6 = tensor.empty() : tensor<16xf32>
    %7 = tensor.empty() : tensor<7x7xi1>
    %8 = tensor.empty() : tensor<16x7x16xi16>
    %9 = tensor.empty() : tensor<7x16x7xf32>
    %10 = tensor.empty() : tensor<7x7xf32>
    %11 = tensor.empty() : tensor<7x16x7xf16>
    %12 = tensor.empty() : tensor<16x7x16xi32>
    %13 = tensor.empty() : tensor<16x7x16xi64>
    %14 = tensor.empty() : tensor<16x7x16xi1>
    %15 = tensor.empty() : tensor<7x7xi32>
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
    %alloc = memref.alloc() : memref<16xi32>
    %alloc_6 = memref.alloc() : memref<7x7xf16>
    %alloc_7 = memref.alloc() : memref<7x7xf32>
    %alloc_8 = memref.alloc() : memref<7x16x7xf32>
    %alloc_9 = memref.alloc() : memref<7x7xf16>
    %alloc_10 = memref.alloc() : memref<7x16x7xf32>
    %alloc_11 = memref.alloc() : memref<7x7xi32>
    %alloc_12 = memref.alloc() : memref<7x7xi1>
    %alloc_13 = memref.alloc() : memref<7x7xi32>
    %alloc_14 = memref.alloc() : memref<7x16x7xi16>
    %alloc_15 = memref.alloc() : memref<7x7xi16>
    %alloc_16 = memref.alloc() : memref<7x16x7xi64>
    %alloc_17 = memref.alloc() : memref<7x7xi16>
    %alloc_18 = memref.alloc() : memref<16xf16>
    %alloc_19 = memref.alloc() : memref<16xi16>
    %alloc_20 = memref.alloc() : memref<7x7xi64>
    %16 = tensor.empty() : tensor<7x16x7xf16>
    %17 = linalg.copy ins(%11 : tensor<7x16x7xf16>) outs(%16 : tensor<7x16x7xf16>) -> tensor<7x16x7xf16>
    %18 = tensor.empty() : tensor<7x7xf32>
    %transposed = linalg.transpose ins(%10 : tensor<7x7xf32>) outs(%18 : tensor<7x7xf32>) permutation = [1, 0] 
    %alloc_21 = memref.alloc() : memref<f16>
    linalg.reduce ins(%alloc_18 : memref<16xf16>) outs(%alloc_21 : memref<f16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %257 = index.castu %c1 : index to i32
        %258 = arith.divf %cst, %cst_4 : f32
        %true_56 = arith.constant true
        %alloc_57 = memref.alloc() : memref<f16>
        memref.copy %alloc_21, %alloc_57 : memref<f16> to memref<f16>
        %259 = index.ceildivu %c10, %c0
        %260 = math.ctlz %8 : tensor<16x7x16xi16>
        %261 = arith.minsi %c1138262349_i32, %c647337080_i32 : i32
        %262 = math.fma %transposed, %10, %10 : tensor<7x7xf32>
        %cst_58 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_58 : f16
      }
    scf.parallel (%arg2) = (%c0) to (%c2) step (%c10) {
      memref.alloca_scope  {
        %271 = arith.remf %cst_4, %cst_1 : f32
        %272 = vector.broadcast %true_3 : i1 to vector<16x7x16xi1>
        %273 = vector.broadcast %cst : f32 to vector<7x7xf32>
        %274 = vector.fma %273, %273, %273 : vector<7x7xf32>
        %cst_60 = arith.constant 1.000000e+00 : f16
        %cst_61 = arith.constant 0.000000e+00 : f16
        %275 = vector.transfer_read %16[%c1, %c8, %c13], %cst_61 : tensor<7x16x7xf16>, vector<f16>
        %276 = index.floordivs %c5, %c1
        %c1_i16_62 = arith.constant 1 : i16
        %277 = vector.broadcast %c1_i16_62 : i16 to vector<7xi16>
        %278 = vector.broadcast %true_3 : i1 to vector<7xi1>
        %279 = vector.maskedload %alloc_14[%c3, %c9, %c2], %278, %277 : memref<7x16x7xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
        %280 = affine.max affine_map<(d0, d1) -> (((d0 + d1) mod 64) ceildiv 16, d0 + 2, d0, d0)>(%c0, %c0)
        %281 = memref.realloc %alloc_18 : memref<16xf16> to memref<7xf16>
        %282 = vector.broadcast %true_3 : i1 to vector<7x7xi1>
        %false_63 = index.bool.constant false
        %extracted_64 = tensor.extract %8[%c8, %c2, %c3] : tensor<16x7x16xi16>
        %283 = affine.max affine_map<(d0, d1, d2) -> (d2, d2 - d1 - (-d1 - d0))>(%c1, %c10, %c14)
        %284 = math.log1p %4 : tensor<7x16x7xf32>
        %285 = math.sqrt %6 : tensor<16xf32>
        %286 = memref.atomic_rmw minf %cst_5, %alloc_6[%c2, %c5] : (f16, memref<7x7xf16>) -> f16
        %287 = memref.atomic_rmw addf %cst_2, %alloc_9[%c4, %c4] : (f16, memref<7x7xf16>) -> f16
        %288 = math.absi %0 : tensor<16x7x16xi16>
        %289 = vector.transpose %277, [0] : vector<7xi16> to vector<7xi16>
        %expanded_65 = tensor.expand_shape %9 [[0], [1], [2, 3]] : tensor<7x16x7xf32> into tensor<7x16x7x1xf32>
        %290 = vector.multi_reduction <mul>, %274, %cst [0, 1] : vector<7x7xf32> to f32
        %291 = affine.min affine_map<(d0, d1, d2) -> (0, d1 - (d0 - 4) - 128)>(%c12, %c4, %c14)
        %292 = math.log %6 : tensor<16xf32>
        affine.store %cst_5, %alloc_21[] : memref<f16>
        %293 = math.cos %cst_2 : f16
        %collapsed_66 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<7x16x7xf32> into tensor<112x7xf32>
        %294 = arith.andi %true, %false_63 : i1
        %collapsed_67 = tensor.collapse_shape %10 [[0, 1]] : tensor<7x7xf32> into tensor<49xf32>
        %295 = math.ctlz %7 : tensor<7x7xi1>
        %296 = vector.broadcast %extracted_64 : i16 to vector<i16>
        vector.transfer_write %296, %alloc_15[%c13, %c6] : vector<i16>, memref<7x7xi16>
        %297 = memref.atomic_rmw minf %cst, %alloc_10[%c4, %c8, %c2] : (f32, memref<7x16x7xf32>) -> f32
        %298 = arith.divui %c1_i16_62, %extracted_64 : i16
        %extracted_68 = tensor.extract %4[%c3, %c8, %c0] : tensor<7x16x7xf32>
        %299 = arith.divui %c706296327_i32, %c1480477621_i32 : i32
      }
      %257 = vector.broadcast %c15 : index to vector<16xindex>
      %258 = vector.broadcast %true_3 : i1 to vector<16xi1>
      %259 = vector.broadcast %c302691568_i64 : i64 to vector<16xi64>
      vector.scatter %alloc_16[%c1, %c13, %c3] [%257], %258, %259 : memref<7x16x7xi64>, vector<16xindex>, vector<16xi1>, vector<16xi64>
      %260 = math.round %11 : tensor<7x16x7xf16>
      %extracted_56 = tensor.extract %16[%c4, %c13, %c0] : tensor<7x16x7xf16>
      %c1_i16_57 = arith.constant 1 : i16
      %261 = vector.broadcast %c1_i16_57 : i16 to vector<1xi16>
      %262 = vector.multi_reduction <mul>, %261, %c1_i16_57 [0] : vector<1xi16> to i16
      %263 = arith.maxui %false_0, %true_3 : i1
      %264 = arith.subi %true_3, %true : i1
      %extracted_58 = tensor.extract %0[%c13, %c3, %c11] : tensor<16x7x16xi16>
      %265 = affine.max affine_map<(d0, d1, d2, d3) -> ((-d3) mod 64, (-((d0 + d2) floordiv 4)) mod 16, (d0 + d2) floordiv 4)>(%c6, %c0, %c0, %c3)
      %266 = arith.remsi %262, %c1_i16_57 : i16
      %267 = index.ceildivu %c8, %c14
      %268 = arith.ori %262, %262 : i16
      %269 = scf.while (%arg3 = %c302691568_i64) : (i64) -> i64 {
        %271 = vector.broadcast %cst_1 : f32 to vector<16xf32>
        %272 = vector.broadcast %true : i1 to vector<16xi1>
        %273 = vector.maskedload %alloc_8[%c3, %c7, %c2], %272, %271 : memref<7x16x7xf32>, vector<16xi1>, vector<16xf32> into vector<16xf32>
        %collapsed_60 = tensor.collapse_shape %15 [[0, 1]] : tensor<7x7xi32> into tensor<49xi32>
        %274 = math.exp %cst_4 : f32
        %275 = vector.extract_strided_slice %271 {offsets = [8], sizes = [2], strides = [1]} : vector<16xf32> to vector<2xf32>
        %276 = arith.subi %c1138262349_i32, %c1951499111_i32 : i32
        %277 = index.maxu %265, %265
        %278 = arith.mulf %cst_4, %cst_1 : f32
        %279 = affine.max affine_map<(d0, d1, d2) -> (d1, d1 - (d0 - 2) + 32, d1 floordiv 32)>(%c8, %c3, %c15)
        scf.condition(%false) %arg3 : i64
      } do {
      ^bb0(%arg3: i64):
        %271 = vector.broadcast %c302691568_i64 : i64 to vector<7x16x7xi64>
        %from_elements_60 = tensor.from_elements %c647337080_i32, %c706296327_i32, %c1480477621_i32, %c1951499111_i32, %c706296327_i32, %c1480477621_i32, %c1138262349_i32, %c1138262349_i32, %c1138262349_i32, %c1480477621_i32, %c1951499111_i32, %c619965047_i32, %c706296327_i32, %c1951499111_i32, %c619965047_i32, %c619965047_i32 : tensor<16xi32>
        %expanded_61 = tensor.expand_shape %0 [[0], [1], [2, 3]] : tensor<16x7x16xi16> into tensor<16x7x16x1xi16>
        %272 = index.ceildivs %c6, %c12
        affine.store %cst_5, %alloc_21[] : memref<f16>
        %273 = math.cos %cst_2 : f16
        %274 = bufferization.to_tensor %alloc_9 : memref<7x7xf16>
        %275 = arith.ori %c706296327_i32, %c1480477621_i32 : i32
        %276 = index.casts %267 : index to i32
        %277 = index.casts %c302691568_i64 : i64 to index
        %278 = math.exp2 %11 : tensor<7x16x7xf16>
        %rank_62 = tensor.rank %6 : tensor<16xf32>
        %279 = arith.divsi %262, %c1_i16_57 : i16
        %cst_63 = arith.constant 1.000000e+00 : f32
        %cst_64 = arith.constant 0.000000e+00 : f32
        %280 = vector.transfer_read %transposed[%267, %c14], %cst_64 : tensor<7x7xf32>, vector<f32>
        %281 = vector.reduction <xor>, %261 : vector<1xi16> into i16
        %true_65 = index.bool.constant true
        scf.yield %c302691568_i64 : i64
      }
      affine.store %c1138262349_i32, %alloc_13[%c3, %c15] : memref<7x7xi32>
      %false_59 = arith.constant false
      %270 = arith.addi %c706296327_i32, %c1951499111_i32 : i32
      scf.yield
    }
    %19 = affine.vector_load %alloc_15[%c6, %c11] : memref<7x7xi16>, vector<7xi16>
    affine.vector_store %19, %alloc_19[%c6] : memref<16xi16>, vector<7xi16>
    %alloc_22 = memref.alloc() : memref<16xi16>
    %20 = tensor.empty() : tensor<i16>
    %21 = linalg.dot ins(%5, %alloc_22 : tensor<16xi16>, memref<16xi16>) outs(%20 : tensor<i16>) -> tensor<i16>
    %c1_i16 = arith.constant 1 : i16
    %22 = vector.insertelement %c1_i16, %19[%c2 : index] : vector<7xi16>
    affine.for %arg2 = 0 to 119 {
    }
    %false_23 = index.bool.constant false
    %23 = math.log10 %cst_4 : f32
    %24 = index.ceildivs %c4, %c9
    %rank = tensor.rank %7 : tensor<7x7xi1>
    %25 = math.cos %cst_2 : f16
    %26 = math.log1p %6 : tensor<16xf32>
    %27 = scf.execute_region -> index {
      %257 = math.ctlz %c1138262349_i32 : i32
      %258 = vector.splat %cst : vector<7x16x7xf32>
      %false_56 = arith.constant false
      %259 = math.tan %11 : tensor<7x16x7xf16>
      %260 = index.ceildivs %c1, %c3
      %261 = vector.broadcast %true_3 : i1 to vector<16xi1>
      %262 = index.maxu %260, %c1
      %263 = math.ceil %17 : tensor<7x16x7xf16>
      %264 = arith.shli %c619965047_i32, %c647337080_i32 : i32
      %265 = vector.multi_reduction <add>, %19, %19 [] : vector<7xi16> to vector<7xi16>
      %generated_57 = tensor.generate %c15 {
      ^bb0(%arg2: index):
        %270 = arith.minsi %false_23, %true_3 : i1
        %271 = math.log1p %16 : tensor<7x16x7xf16>
        %272 = vector.broadcast %c1_i16 : i16 to vector<7x7xi16>
        %273 = vector.outerproduct %19, %19, %272 {kind = #vector.kind<minsi>} : vector<7xi16>, vector<7xi16>
        %274 = index.castu %c619965047_i32 : i32 to index
        tensor.yield %c647337080_i32 : i32
      } : tensor<?xi32>
      %266 = vector.reduction <add>, %19 : vector<7xi16> into i16
      %267 = math.absi %c1480477621_i32 : i32
      %268 = affine.max affine_map<(d0, d1) -> ((d1 * 8) ceildiv 32, d1 + d0 + 16, d0 + 16)>(%c10, %c9)
      memref.store %cst_1, %alloc_8[%c0, %c2, %c2] : memref<7x16x7xf32>
      %269 = vector.reduction <and>, %261 : vector<16xi1> into i1
      scf.yield %c10 : index
    }
    %28 = math.ctpop %2 : tensor<7x16x7xi64>
    %29 = arith.remsi %c647337080_i32, %c1138262349_i32 : i32
    %30 = index.casts %c5 : index to i32
    %31 = vector.shuffle %19, %19 [2, 3, 5, 6, 11] : vector<7xi16>, vector<7xi16>
    %32 = vector.broadcast %cst_1 : f32 to vector<7xf32>
    %33 = vector.broadcast %true : i1 to vector<7xi1>
    %34 = vector.maskedload %alloc_10[%c3, %c15, %c3], %33, %32 : memref<7x16x7xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
    %35 = math.exp2 %cst_5 : f16
    %collapsed = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<7x16x7xf32> into tensor<112x7xf32>
    %36 = math.tanh %collapsed : tensor<112x7xf32>
    %37 = math.log %cst_5 : f16
    affine.store %cst_5, %alloc_18[%c15] : memref<16xf16>
    %38 = arith.muli %false_0, %true_3 : i1
    affine.store %cst, %alloc_7[%c15, %c14] : memref<7x7xf32>
    %39 = arith.andi %true_3, %true : i1
    %40 = arith.ori %c1_i16, %c1_i16 : i16
    %rank_24 = tensor.rank %5 : tensor<16xi16>
    %41 = arith.muli %false_23, %true_3 : i1
    %42 = math.cttz %8 : tensor<16x7x16xi16>
    %true_25 = index.bool.constant true
    %43 = vector.extract %33[5] : vector<7xi1>
    %expanded = tensor.expand_shape %16 [[0], [1], [2, 3]] : tensor<7x16x7xf16> into tensor<7x16x7x1xf16>
    %44 = vector.shuffle %33, %33 [1, 2, 3, 8, 10, 12] : vector<7xi1>, vector<7xi1>
    %45 = arith.muli %c1951499111_i32, %c647337080_i32 : i32
    %generated = tensor.generate %27, %c14, %c10 {
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      %257 = arith.ori %false_0, %false_23 : i1
      %258 = math.ceil %4 : tensor<7x16x7xf32>
      %259 = math.exp2 %10 : tensor<7x7xf32>
      bufferization.dealloc_tensor %6 : tensor<16xf32>
      tensor.yield %c1138262349_i32 : i32
    } : tensor<?x?x?xi32>
    %c0_i64 = arith.constant 0 : i64
    %46 = vector.transfer_read %2[%c3, %c8, %rank], %c0_i64 : tensor<7x16x7xi64>, vector<1xi64>
    %47 = math.log1p %1 : tensor<7x16x7xf32>
    %48 = arith.divui %true_25, %false : i1
    %49 = arith.remui %false_23, %true_3 : i1
    %50 = vector.reduction <and>, %33 : vector<7xi1> into i1
    %51 = math.fma %9, %4, %9 : tensor<7x16x7xf32>
    %splat = tensor.splat %false_0 : tensor<16xi1>
    %52 = arith.remf %cst_4, %cst : f32
    %53 = math.fma %cst, %cst, %cst : f32
    %54 = affine.min affine_map<(d0, d1, d2) -> (d1 * 8192, -d1, d2 + d1 * 16)>(%c9, %c0, %27)
    %55 = vector.create_mask %c8, %c1, %c10 : vector<16x7x16xi1>
    %56 = index.sub %c3, %54
    %rank_26 = tensor.rank %13 : tensor<16x7x16xi64>
    memref.copy %alloc_6, %alloc_9 : memref<7x7xf16> to memref<7x7xf16>
    %57 = math.ctpop %c302691568_i64 : i64
    %58 = memref.atomic_rmw addi %c1_i16, %alloc_17[%c1, %c2] : (i16, memref<7x7xi16>) -> i16
    %59 = arith.floordivsi %c1138262349_i32, %c647337080_i32 : i32
    %60 = index.maxu %c5, %c12
    %61 = scf.index_switch %24 -> vector<16x7x16xi32> 
    case 1 {
      %257 = vector.broadcast %c1_i16 : i16 to vector<16x1xi16>
      vector.transfer_write %257, %alloc_14[%c8, %24, %c1] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<16x1xi16>, memref<7x16x7xi16>
      %258 = vector.extract %34[6] : vector<7xf32>
      %259 = math.ctlz %true_3 : i1
      %260 = affine.min affine_map<(d0) -> (-(d0 + 32) + 4, (d0 - 32) * -8 + 4, (d0 - 32) * -8 + 4, d0 + 32)>(%c7)
      %261 = arith.ori %false, %true : i1
      %262 = arith.muli %c0_i64, %c302691568_i64 : i64
      %collapsed_56 = tensor.collapse_shape %10 [[0, 1]] : tensor<7x7xf32> into tensor<49xf32>
      %263 = index.ceildivs %56, %c0
      %264 = index.ceildivs %263, %c3
      %cast_57 = tensor.cast %10 : tensor<7x7xf32> to tensor<?x?xf32>
      %265 = math.roundeven %17 : tensor<7x16x7xf16>
      %generated_58 = tensor.generate %c0 {
      ^bb0(%arg2: index):
        %270 = math.log %9 : tensor<7x16x7xf32>
        %271 = arith.muli %c1480477621_i32, %c619965047_i32 : i32
        %272 = arith.divsi %c302691568_i64, %c302691568_i64 : i64
        %273 = index.casts %c0_i64 : i64 to index
        tensor.yield %c1_i16 : i16
      } : tensor<?xi16>
      %c1_i16_59 = arith.constant 1 : i16
      %266 = vector.transfer_read %0[%60, %c6, %24], %c1_i16_59 : tensor<16x7x16xi16>, vector<1x1xi16>
      %267 = vector.transpose %55, [2, 1, 0] : vector<16x7x16xi1> to vector<16x7x16xi1>
      memref.assume_alignment %alloc_6, 2 : memref<7x7xf16>
      %268 = math.atan %9 : tensor<7x16x7xf32>
      %269 = vector.broadcast %c1951499111_i32 : i32 to vector<16x7x16xi32>
      scf.yield %269 : vector<16x7x16xi32>
    }
    case 2 {
      %257 = vector.broadcast %c706296327_i32 : i32 to vector<i32>
      vector.transfer_write %257, %alloc_11[%c4, %c7] : vector<i32>, memref<7x7xi32>
      %258 = index.divu %c1, %56
      %259 = index.casts %true_3 : i1 to index
      scf.if %false_23 {
        %collapsed_57 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<16x7x16xi16> into tensor<112x16xi16>
        %274 = math.log1p %1 : tensor<7x16x7xf32>
        %275 = index.casts %c0 : index to i32
        %c-5201_i16 = arith.constant -5201 : i16
        %276 = index.sizeof
        %cast_58 = tensor.cast %10 : tensor<7x7xf32> to tensor<?x?xf32>
        %277 = arith.cmpi uge, %true, %true_3 : i1
        %true_59 = index.bool.constant true
      } else {
        %274 = vector.broadcast %cst_4 : f32 to vector<7x7xf32>
        %275 = vector.outerproduct %34, %34, %274 {kind = #vector.kind<minf>} : vector<7xf32>, vector<7xf32>
        %276 = arith.andi %false_0, %true_25 : i1
        %277 = index.maxu %c3, %c3
        %278 = math.ceil %expanded : tensor<7x16x7x1xf16>
        %extracted_57 = tensor.extract %4[%c1, %c6, %c3] : tensor<7x16x7xf32>
        %279 = tensor.empty() : tensor<7x7xi1>
        %280 = linalg.matmul ins(%7, %7 : tensor<7x7xi1>, tensor<7x7xi1>) outs(%279 : tensor<7x7xi1>) -> tensor<7x7xi1>
        %281 = math.powf %extracted_57, %cst_1 : f32
        %282 = math.ctlz %15 : tensor<7x7xi32>
      }
      %260 = vector.insertelement %cst, %32[%c7 : index] : vector<7xf32>
      %261 = vector.flat_transpose %32 {columns = 7 : i32, rows = 1 : i32} : vector<7xf32> -> vector<7xf32>
      %262 = math.fma %1, %4, %4 : tensor<7x16x7xf32>
      %263 = index.castu %c706296327_i32 : i32 to index
      %264 = arith.divui %false_23, %true_25 : i1
      %265 = arith.minsi %true_3, %true_3 : i1
      %266 = vector.broadcast %c647337080_i32 : i32 to vector<16xi32>
      %267 = scf.while (%arg2 = %alloc_10) : (memref<7x16x7xf32>) -> memref<7x16x7xf32> {
        %274 = math.tan %collapsed : tensor<112x7xf32>
        %expanded_57 = tensor.expand_shape %13 [[0], [1], [2, 3]] : tensor<16x7x16xi64> into tensor<16x7x16x1xi64>
        %275 = arith.divsi %true_25, %false_23 : i1
        %276 = arith.divui %c706296327_i32, %c1951499111_i32 : i32
        %277 = index.divs %c13, %c12
        memref.store %c302691568_i64, %alloc_20[%c4, %c0] : memref<7x7xi64>
        %278 = memref.atomic_rmw minf %cst_5, %alloc_9[%c4, %c5] : (f16, memref<7x7xf16>) -> f16
        %279 = affine.max affine_map<(d0, d1) -> (-d1, d1, 0)>(%c0, %rank_24)
        scf.condition(%false) %alloc_10 : memref<7x16x7xf32>
      } do {
      ^bb0(%arg2: memref<7x16x7xf32>):
        %274 = index.ceildivs %rank_24, %c3
        %from_elements_57 = tensor.from_elements %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16 : tensor<16xi16>
        %275 = vector.broadcast %c4 : index to vector<1xindex>
        %276 = vector.broadcast %true_3 : i1 to vector<1xi1>
        %277 = vector.broadcast %cst_4 : f32 to vector<1xf32>
        vector.scatter %arg2[%c1, %c15, %c6] [%275], %276, %277 : memref<7x16x7xf32>, vector<1xindex>, vector<1xi1>, vector<1xf32>
        %splat_58 = tensor.splat %cst_2 : tensor<7x7xf16>
        %rank_59 = tensor.rank %3 : tensor<7x7xi64>
        %278 = arith.maxui %true, %true_25 : i1
        %279 = memref.realloc %alloc : memref<16xi32> to memref<16xi32>
        %rank_60 = tensor.rank %7 : tensor<7x7xi1>
        %280 = tensor.empty() : tensor<7x7xf16>
        %281 = linalg.matmul ins(%splat_58, %splat_58 : tensor<7x7xf16>, tensor<7x7xf16>) outs(%280 : tensor<7x7xf16>) -> tensor<7x7xf16>
        %true_61 = index.bool.constant true
        %true_62 = index.bool.constant true
        %282 = index.divu %c11, %c9
        %283 = arith.negf %cst_5 : f16
        %284 = vector.reduction <maxf>, %261 : vector<7xf32> into f32
        %285 = arith.mulf %cst_4, %cst_1 : f32
        %286 = affine.min affine_map<(d0, d1, d2) -> (-d2 + (d2 ceildiv 128) floordiv 2)>(%rank_60, %c10, %24)
        scf.yield %alloc_8 : memref<7x16x7xf32>
      }
      %268 = vector.broadcast %cst_4 : f32 to vector<16xf32>
      %269 = vector.fma %268, %268, %268 : vector<16xf32>
      %true_56 = arith.constant true
      %270 = vector.transfer_read %14[%c3, %c3, %c3], %true_56 : tensor<16x7x16xi1>, vector<1xi1>
      %271 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 + d3 + 1)>(%c1, %rank_26, %c4, %c4)
      %272 = index.divu %c10, %c11
      %273 = vector.broadcast %c1138262349_i32 : i32 to vector<16x7x16xi32>
      scf.yield %273 : vector<16x7x16xi32>
    }
    default {
      %257 = arith.shli %c647337080_i32, %c619965047_i32 : i32
      %false_56 = arith.constant false
      %258 = vector.transfer_read %alloc_12[%c4, %27], %false_56 : memref<7x7xi1>, vector<7xi1>
      %259 = vector.broadcast %c1951499111_i32 : i32 to vector<16x7x16xi32>
      %260 = math.copysign %9, %1 : tensor<7x16x7xf32>
      %261 = arith.minsi %c1951499111_i32, %c1951499111_i32 : i32
      %c234108175_i64 = arith.constant 234108175 : i64
      %262 = arith.cmpi eq, %true, %true_25 : i1
      %263 = vector.extract_strided_slice %259 {offsets = [4], sizes = [8], strides = [1]} : vector<16x7x16xi32> to vector<8x7x16xi32>
      %alloc_57 = memref.alloc() : memref<7x7xi1>
      memref.copy %alloc_12, %alloc_57 : memref<7x7xi1> to memref<7x7xi1>
      memref.copy %alloc_22, %alloc_19 : memref<16xi16> to memref<16xi16>
      %264 = tensor.empty() : tensor<7x7xi64>
      %265 = linalg.matmul ins(%3, %3 : tensor<7x7xi64>, tensor<7x7xi64>) outs(%264 : tensor<7x7xi64>) -> tensor<7x7xi64>
      %266 = memref.load %alloc_16[%c4, %c6, %c2] : memref<7x16x7xi64>
      %267 = arith.addi %c706296327_i32, %c1480477621_i32 : i32
      %268 = vector.insertelement %cst_4, %32[%c11 : index] : vector<7xf32>
      %269 = vector.insertelement %cst_1, %34[%27 : index] : vector<7xf32>
      %270 = math.exp2 %6 : tensor<16xf32>
      scf.yield %259 : vector<16x7x16xi32>
    }
    %62 = math.tan %6 : tensor<16xf32>
    %63 = math.fma %11, %11, %11 : tensor<7x16x7xf16>
    %64 = math.log %18 : tensor<7x7xf32>
    %65 = math.sqrt %10 : tensor<7x7xf32>
    %66 = arith.minsi %c302691568_i64, %c0_i64 : i64
    %67 = arith.addi %c1138262349_i32, %c706296327_i32 : i32
    %68 = arith.minsi %c706296327_i32, %c647337080_i32 : i32
    %69 = vector.create_mask %rank_26, %c8, %c8 : vector<7x16x7xi1>
    %70 = arith.remui %c1_i16, %c1_i16 : i16
    %71 = index.floordivs %c2, %54
    %72 = math.powf %9, %1 : tensor<7x16x7xf32>
    %73 = vector.shuffle %34, %32 [2, 3, 5, 6, 8, 12, 13] : vector<7xf32>, vector<7xf32>
    %74 = math.atan2 %9, %1 : tensor<7x16x7xf32>
    %75 = tensor.empty() : tensor<7x16x7xi64>
    %mapped = linalg.map ins(%alloc_16, %alloc_16, %2 : memref<7x16x7xi64>, memref<7x16x7xi64>, tensor<7x16x7xi64>) outs(%75 : tensor<7x16x7xi64>)
      (%in: i64, %in_56: i64, %in_57: i64) {
        %257 = tensor.empty(%60, %c3) : tensor<?x16x?xi16>
        %258 = arith.negf %cst_4 : f32
        %259 = memref.atomic_rmw maxf %cst, %alloc_7[%c0, %c6] : (f32, memref<7x7xf32>) -> f32
        %260 = arith.muli %c1951499111_i32, %c706296327_i32 : i32
        %261 = vector.insert %cst_1, %34 [1] : f32 into vector<7xf32>
        %262 = index.sizeof
        %263 = memref.load %alloc_7[%c5, %c0] : memref<7x7xf32>
        %splat_58 = tensor.splat %c706296327_i32 : tensor<16x7x16xi32>
        %264 = tensor.empty() : tensor<7x16xi32>
        %alloc_59 = memref.alloc() : memref<7xi32>
        %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%12, %264, %alloc_59 : tensor<16x7x16xi32>, tensor<7x16xi32>, memref<7xi32>) outs(%12 : tensor<16x7x16xi32>) {
        ^bb0(%in_65: i32, %in_66: i32, %in_67: i32, %out: i32):
          %293 = math.round %18 : tensor<7x7xf32>
          %294 = vector.transpose %55, [0, 2, 1] : vector<16x7x16xi1> to vector<16x16x7xi1>
          %295 = vector.broadcast %c1_i16 : i16 to vector<1xi16>
          %296 = vector.broadcast %false_0 : i1 to vector<1xi1>
          %297 = vector.maskedload %alloc_14[%c4, %c6, %c4], %296, %295 : memref<7x16x7xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
          %298 = bufferization.clone %alloc_10 : memref<7x16x7xf32> to memref<7x16x7xf32>
          %299 = arith.ori %in_56, %c0_i64 : i64
          %300 = math.exp %4 : tensor<7x16x7xf32>
          %301 = index.divs %71, %c0
          %302 = index.castu %out : i32 to index
          %expanded_68 = tensor.expand_shape %11 [[0], [1], [2, 3]] : tensor<7x16x7xf16> into tensor<7x16x7x1xf16>
          %c182999499_i64 = arith.constant 182999499 : i64
          %303 = math.log %expanded : tensor<7x16x7x1xf16>
          %304 = memref.realloc %alloc_18 : memref<16xf16> to memref<1xf16>
          %305 = vector.load %alloc_11[%c5, %c4] : memref<7x7xi32>, vector<7x16x7xi32>
          %306 = index.maxs %54, %c6
          %307 = math.powf %cst, %cst_4 : f32
          %308 = math.log10 %cst_4 : f32
          %309 = arith.cmpi ne, %in_57, %c0_i64 : i64
          %cst_69 = arith.constant 1.000000e+00 : f16
          %cst_70 = arith.constant 0.000000e+00 : f16
          %310 = vector.transfer_read %alloc_6[%c0, %54], %cst_70 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<7x7xf16>, vector<16xf16>
          %false_71 = index.bool.constant false
          %311 = index.divs %c3, %rank_26
          %312 = math.exp %11 : tensor<7x16x7xf16>
          %true_72 = arith.constant true
          %313 = index.casts %c1138262349_i32 : i32 to index
          %314 = vector.reduction <minf>, %32 : vector<7xf32> into f32
          %315 = vector.multi_reduction <minui>, %69, %33 [1, 2] : vector<7x16x7xi1> to vector<7xi1>
          %316 = math.exp2 %16 : tensor<7x16x7xf16>
          %317 = memref.atomic_rmw mulf %cst_1, %298[%c4, %c4, %c1] : (f32, memref<7x16x7xf32>) -> f32
          %318 = math.cttz %12 : tensor<16x7x16xi32>
          %319 = index.sizeof
          %320 = arith.remsi %c1_i16, %c1_i16 : i16
          %321 = math.ceil %collapsed : tensor<112x7xf32>
          %322 = vector.insertelement %true_25, %33[%56 : index] : vector<7xi1>
          linalg.yield %c647337080_i32 : i32
        } -> tensor<16x7x16xi32>
        %266 = math.ctlz %12 : tensor<16x7x16xi32>
        %267 = tensor.empty() : tensor<7x7xi32>
        %268 = linalg.matmul ins(%15, %15 : tensor<7x7xi32>, tensor<7x7xi32>) outs(%267 : tensor<7x7xi32>) -> tensor<7x7xi32>
        %269 = affine.min affine_map<(d0) -> ((-d0) floordiv 32 + d0 + (-d0) floordiv 16 + (-d0) floordiv 64 - (-d0) floordiv 16, (-d0) floordiv 16 + (-d0) floordiv 64, ((-d0) floordiv 64) floordiv 64)>(%c12)
        %270 = arith.minf %cst, %cst : f32
        %271 = math.cttz %8 : tensor<16x7x16xi16>
        scf.if %false_23 {
          %293 = math.ctpop %0 : tensor<16x7x16xi16>
          %294 = arith.divui %false, %false : i1
          %295 = vector.insertelement %cst_4, %32[%c13 : index] : vector<7xf32>
          %296 = math.ipowi %2, %2 : tensor<7x16x7xi64>
          %297 = math.log1p %9 : tensor<7x16x7xf32>
          %from_elements_65 = tensor.from_elements %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5 : tensor<7x7xf16>
          %298 = vector.broadcast %c13 : index to vector<7xindex>
          vector.scatter %alloc_7[%c5, %c0] [%298], %33, %32 : memref<7x7xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
          %299 = index.ceildivu %c5, %rank
        } else {
          %293 = arith.minsi %true_25, %true_25 : i1
          %false_65 = index.bool.constant false
          %294 = tensor.empty() : tensor<7x7xf32>
          %295 = linalg.matmul ins(%18, %10 : tensor<7x7xf32>, tensor<7x7xf32>) outs(%294 : tensor<7x7xf32>) -> tensor<7x7xf32>
          %false_66 = index.bool.constant false
          %296 = arith.shli %c619965047_i32, %c619965047_i32 : i32
          %extracted_67 = tensor.extract %6[%c6] : tensor<16xf32>
          %297 = vector.load %alloc_21[] : memref<f16>, vector<16x7x16xf16>
          %298 = math.exp2 %1 : tensor<7x16x7xf32>
        }
        %272 = vector.broadcast %cst_4 : f32 to vector<1xf32>
        %273 = vector.broadcast %true : i1 to vector<1xi1>
        %274 = vector.maskedload %alloc_7[%c3, %c4], %273, %272 : memref<7x7xf32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
        %275 = tensor.empty() : tensor<16xi16>
        %alloc_60 = memref.alloc() : memref<16x7x16xf32>
        %276 = vector.broadcast %cst_1 : f32 to vector<16x7x16xf32>
        %277 = vector.broadcast %c1138262349_i32 : i32 to vector<16x7x16xi32>
        %278 = vector.gather %alloc_60[%269, %262, %c9] [%277], %55, %276 : memref<16x7x16xf32>, vector<16x7x16xi32>, vector<16x7x16xi1>, vector<16x7x16xf32> into vector<16x7x16xf32>
        %279 = affine.max affine_map<(d0, d1, d2) -> (d0 * -64, d0 * 63, d2 - 120)>(%54, %c4, %rank_24)
        %280 = math.exp2 %4 : tensor<7x16x7xf32>
        %281 = tensor.empty() : tensor<7xi16>
        %alloc_61 = memref.alloc() : memref<7x16xi16>
        %282 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%5, %281, %alloc_61 : tensor<16xi16>, tensor<7xi16>, memref<7x16xi16>) outs(%8 : tensor<16x7x16xi16>) {
        ^bb0(%in_65: i16, %in_66: i16, %in_67: i16, %out: i16):
          %293 = index.divu %c14, %56
          %expanded_68 = tensor.expand_shape %267 [[0], [1, 2]] : tensor<7x7xi32> into tensor<7x7x1xi32>
          %294 = tensor.empty() : tensor<7x7xi32>
          %295 = linalg.matmul ins(%15, %267 : tensor<7x7xi32>, tensor<7x7xi32>) outs(%294 : tensor<7x7xi32>) -> tensor<7x7xi32>
          %true_69 = arith.constant true
          %296 = vector.broadcast %cst : f32 to vector<16xf32>
          %297 = vector.insert %296, %276 [1, 0] : vector<16xf32> into vector<16x7x16xf32>
          %false_70 = index.bool.constant false
          %298 = arith.xori %true_25, %false : i1
          %299 = index.floordivs %c10, %rank_24
          %300 = tensor.empty() : tensor<7x16x7xi32>
          %301 = math.fpowi %11, %300 : tensor<7x16x7xf16>, tensor<7x16x7xi32>
          bufferization.dealloc_tensor %4 : tensor<7x16x7xf32>
          %rank_71 = tensor.rank %16 : tensor<7x16x7xf16>
          %302 = index.ceildivu %rank_26, %54
          %303 = tensor.empty() : tensor<7x7xi64>
          %304 = linalg.matmul ins(%3, %3 : tensor<7x7xi64>, tensor<7x7xi64>) outs(%303 : tensor<7x7xi64>) -> tensor<7x7xi64>
          %305 = index.divu %269, %56
          %306 = arith.ori %in_67, %in_66 : i16
          %307 = bufferization.clone %alloc_7 : memref<7x7xf32> to memref<7x7xf32>
          %308 = arith.cmpi uge, %c302691568_i64, %in : i64
          %collapsed_72 = tensor.collapse_shape %expanded [[0, 1], [2], [3]] : tensor<7x16x7x1xf16> into tensor<112x7x1xf16>
          %309 = math.ctpop %c1_i16 : i16
          %310 = arith.divsi %false_0, %false_0 : i1
          %311 = math.cttz %c619965047_i32 : i32
          %312 = vector.multi_reduction <minsi>, %19, %c1_i16 [0] : vector<7xi16> to i16
          %collapsed_73 = tensor.collapse_shape %generated [[0, 1], [2]] : tensor<?x?x?xi32> into tensor<?x?xi32>
          %rank_74 = tensor.rank %303 : tensor<7x7xi64>
          %cast_75 = tensor.cast %267 : tensor<7x7xi32> to tensor<?x?xi32>
          %313 = math.log %expanded : tensor<7x16x7x1xf16>
          %314 = math.powf %cst_5, %cst_5 : f16
          %315 = bufferization.to_memref %20 : memref<i16>
          %316 = vector.insert %true, %33 [6] : i1 into vector<7xi1>
          %317 = vector.bitcast %278 : vector<16x7x16xf32> to vector<16x7x16xf32>
          %c0_i64_76 = arith.constant 0 : i64
          %c0_i64_77 = arith.constant 0 : i64
          %318 = vector.transfer_read %alloc_20[%c5, %c9], %c0_i64_77 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<7x7xi64>, vector<7xi64>
          %319 = arith.remf %cst_4, %cst_1 : f32
          linalg.yield %in_65 : i16
        } -> tensor<16x7x16xi16>
        %283 = vector.broadcast %c0_i64 : i64 to vector<7x16x7xi64>
        %284 = vector.broadcast %262 : index to vector<16xindex>
        %285 = vector.broadcast %true_3 : i1 to vector<16xi1>
        %286 = vector.broadcast %c1_i16 : i16 to vector<16xi16>
        vector.scatter %alloc_17[%c6, %c4] [%284], %285, %286 : memref<7x7xi16>, vector<16xindex>, vector<16xi1>, vector<16xi16>
        %287 = arith.subi %in, %in_57 : i64
        %288 = vector.maskedload %alloc_15[%c2, %c4], %33, %19 : memref<7x7xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
        %289 = vector.broadcast %in_57 : i64 to vector<7x16x7xi64>
        memref.assume_alignment %alloc_15, 1 : memref<7x7xi16>
        %expanded_62 = tensor.expand_shape %8 [[0], [1], [2, 3]] : tensor<16x7x16xi16> into tensor<16x7x16x1xi16>
        %290 = scf.index_switch %c1 -> tensor<16x7x16xi32> 
        case 1 {
          %293 = affine.load %alloc_15[%c1, %c5] : memref<7x7xi16>
          %294 = arith.cmpi ne, %293, %293 : i16
          %295 = math.round %cst_2 : f16
          %296 = arith.mulf %cst_1, %cst_1 : f32
          %297 = arith.remsi %c302691568_i64, %c302691568_i64 : i64
          %298 = math.log1p %4 : tensor<7x16x7xf32>
          %rank_65 = tensor.rank %6 : tensor<16xf32>
          %299 = arith.minsi %false_0, %false_0 : i1
          %300 = math.absf %17 : tensor<7x16x7xf16>
          %301 = math.ctlz %20 : tensor<i16>
          %302 = index.ceildivs %c8, %c3
          %303 = vector.transpose %34, [0] : vector<7xf32> to vector<7xf32>
          %304 = index.castu %c14 : index to i32
          %305 = math.ceil %4 : tensor<7x16x7xf32>
          %306 = memref.atomic_rmw ori %c1_i16, %alloc_15[%c5, %c2] : (i16, memref<7x7xi16>) -> i16
          %307 = arith.maxui %true_3, %true_25 : i1
          scf.yield %12 : tensor<16x7x16xi32>
        }
        case 2 {
          %293 = vector.extract %273[0] : vector<1xi1>
          %294 = vector.broadcast %cst : f32 to vector<1xf32>
          vector.transfer_write %294, %alloc_8[%71, %rank, %c13] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<1xf32>, memref<7x16x7xf32>
          %295 = math.absi %13 : tensor<16x7x16xi64>
          %296 = arith.minf %cst_4, %cst : f32
          %297 = math.sqrt %cst_1 : f32
          %298 = math.tan %1 : tensor<7x16x7xf32>
          %299 = tensor.empty() : tensor<112x7xf32>
          %300 = linalg.matmul ins(%collapsed, %10 : tensor<112x7xf32>, tensor<7x7xf32>) outs(%299 : tensor<112x7xf32>) -> tensor<112x7xf32>
          %301 = arith.divf %cst_5, %cst_5 : f16
          %302 = arith.divf %cst_5, %cst_2 : f16
          %303 = arith.xori %in_56, %c0_i64 : i64
          %304 = arith.divsi %true_3, %true_25 : i1
          %305 = vector.multi_reduction <add>, %33, %33 [] : vector<7xi1> to vector<7xi1>
          %306 = math.log1p %cst : f32
          %307 = math.log1p %cst_4 : f32
          %308 = arith.maxsi %true_3, %false_0 : i1
          %309 = math.fma %10, %10, %transposed : tensor<7x7xf32>
          scf.yield %12 : tensor<16x7x16xi32>
        }
        case 3 {
          %293 = math.ceil %6 : tensor<16xf32>
          %cast_65 = tensor.cast %2 : tensor<7x16x7xi64> to tensor<?x?x?xi64>
          %from_elements_66 = tensor.from_elements %cst_1, %cst_1, %cst_1, %cst, %cst_4, %cst_4, %cst_1, %cst_4, %cst_1, %cst_1, %cst, %cst_1, %cst, %cst, %cst_1, %cst, %cst, %cst_4, %cst, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_1, %cst, %cst, %cst_1, %cst, %cst, %cst_4, %cst_1, %cst_1, %cst_1, %cst, %cst_1, %cst_4, %cst, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst_4, %cst, %cst, %cst, %cst_1 : tensor<7x7xf32>
          %294 = affine.load %alloc_20[%c0, %c15] : memref<7x7xi64>
          %295 = math.absf %1 : tensor<7x16x7xf32>
          %296 = math.log %11 : tensor<7x16x7xf16>
          %true_67 = index.bool.constant true
          %297 = vector.broadcast %cst_4 : f32 to vector<7x16x7xf32>
          %298 = vector.fma %297, %297, %297 : vector<7x16x7xf32>
          %c1_i32 = arith.constant 1 : i32
          %299 = vector.transfer_read %12[%c12, %c10, %56], %c1_i32 : tensor<16x7x16xi32>, vector<i32>
          %300 = math.fma %cst_1, %cst_4, %cst_4 : f32
          %301 = math.atan %cst_1 : f32
          %302 = arith.minsi %true_67, %true_67 : i1
          %303 = math.log1p %transposed : tensor<7x7xf32>
          %304 = math.absi %splat : tensor<16xi1>
          %305 = math.atan %11 : tensor<7x16x7xf16>
          %306 = arith.remf %cst_4, %cst_1 : f32
          scf.yield %12 : tensor<16x7x16xi32>
        }
        default {
          %293 = math.absf %16 : tensor<7x16x7xf16>
          %294 = vector.broadcast %in : i64 to vector<16x7xi64>
          %dest_65, %accumulated_value_66 = vector.scan <mul>, %289, %294 {inclusive = true, reduction_dim = 0 : i64} : vector<7x16x7xi64>, vector<16x7xi64>
          %295 = math.log %cst_5 : f16
          %296 = arith.cmpi sge, %false, %false : i1
          %297 = index.ceildivs %262, %c2
          %true_67 = arith.constant true
          %298 = vector.transfer_read %alloc_12[%71, %c12], %true_67 : memref<7x7xi1>, vector<i1>
          %299 = math.absi %expanded_62 : tensor<16x7x16x1xi16>
          %300 = math.sqrt %cst_5 : f16
          %301 = math.powf %9, %4 : tensor<7x16x7xf32>
          %302 = math.exp2 %18 : tensor<7x7xf32>
          %303 = arith.minf %cst, %cst : f32
          %304 = vector.extract_strided_slice %34 {offsets = [4], sizes = [3], strides = [1]} : vector<7xf32> to vector<3xf32>
          %305 = index.casts %true_25 : i1 to index
          %306 = arith.andi %false_0, %true_3 : i1
          %307 = math.absf %10 : tensor<7x7xf32>
          %308 = vector.broadcast %c619965047_i32 : i32 to vector<16xi32>
          %309 = vector.broadcast %false_0 : i1 to vector<16xi1>
          %310 = vector.maskedload %alloc_13[%c1, %c3], %309, %308 : memref<7x7xi32>, vector<16xi1>, vector<16xi32> into vector<16xi32>
          scf.yield %12 : tensor<16x7x16xi32>
        }
        %291 = arith.remf %cst_1, %cst : f32
        %292 = math.tanh %1 : tensor<7x16x7xf32>
        %collapsed_63 = tensor.collapse_shape %15 [[0, 1]] : tensor<7x7xi32> into tensor<49xi32>
        %c0_i64_64 = arith.constant 0 : i64
        linalg.yield %c0_i64_64 : i64
      }
    %76 = vector.insertelement %cst, %34[%c5 : index] : vector<7xf32>
    %77 = math.absi %0 : tensor<16x7x16xi16>
    %78 = index.ceildivu %c1, %c2
    %79 = math.powf %18, %10 : tensor<7x7xf32>
    %80 = vector.insertelement %false_23, %33[%c2 : index] : vector<7xi1>
    %81 = vector.broadcast %c1_i16 : i16 to vector<7x16x7xi16>
    %82 = vector.broadcast %c706296327_i32 : i32 to vector<7x16x7xi32>
    %83 = vector.gather %alloc_14[%71, %27, %54] [%82], %69, %81 : memref<7x16x7xi16>, vector<7x16x7xi32>, vector<7x16x7xi1>, vector<7x16x7xi16> into vector<7x16x7xi16>
    %84 = index.divu %54, %c15
    %85 = vector.broadcast %cst_4 : f32 to vector<16x7x16xf32>
    %86 = vector.fma %85, %85, %85 : vector<16x7x16xf32>
    scf.if %false_0 {
      %257 = arith.divf %cst_5, %cst_2 : f16
      %258 = tensor.empty() : tensor<7x7xf32>
      %259 = vector.reduction <add>, %32 : vector<7xf32> into f32
      %260 = math.exp2 %6 : tensor<16xf32>
      %from_elements_56 = tensor.from_elements %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64 : tensor<16x7x16xi64>
      %261 = arith.cmpi sge, %false_23, %true_3 : i1
      %262 = tensor.empty() : tensor<7x7xi1>
      %263 = linalg.matmul ins(%7, %7 : tensor<7x7xi1>, tensor<7x7xi1>) outs(%262 : tensor<7x7xi1>) -> tensor<7x7xi1>
      %264 = vector.broadcast %cst : f32 to vector<16x7x16xf32>
      %265 = vector.fma %264, %85, %85 : vector<16x7x16xf32>
    } else {
      %257 = vector.reduction <mul>, %32 : vector<7xf32> into f32
      %258 = math.ipowi %7, %7 : tensor<7x7xi1>
      %259 = vector.transpose %83, [2, 0, 1] : vector<7x16x7xi16> to vector<7x7x16xi16>
      %260 = affine.load %alloc_12[%c15, %c12] : memref<7x7xi1>
      %261 = vector.broadcast %c1_i16 : i16 to vector<i16>
      vector.transfer_write %261, %alloc_17[%c3, %71] : vector<i16>, memref<7x7xi16>
      %262 = math.absf %6 : tensor<16xf32>
      %263 = affine.max affine_map<(d0) -> (16, (d0 + 4) * 32, d0)>(%rank_26)
      %264 = scf.execute_region -> vector<7x7xf32> {
        %splat_56 = tensor.splat %true : tensor<7x7xi1>
        %265 = index.casts %c1_i16 : i16 to index
        %266 = math.tan %4 : tensor<7x16x7xf32>
        %267 = math.exp2 %4 : tensor<7x16x7xf32>
        %268 = arith.remui %c647337080_i32, %c647337080_i32 : i32
        %269 = math.atan2 %cst_5, %cst_2 : f16
        %alloc_57 = memref.alloc() : memref<16x7x16xi16>
        %cst_58 = arith.constant 1.000000e+00 : f32
        %cst_59 = arith.constant 0.000000e+00 : f32
        %270 = vector.transfer_read %alloc_7[%c5, %56], %cst_59 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<7x7xf32>, vector<7xf32>
        %c1067109375_i64 = arith.constant 1067109375 : i64
        %271 = arith.addi %false, %false_23 : i1
        %272 = arith.maxui %c647337080_i32, %c619965047_i32 : i32
        %273 = math.log1p %17 : tensor<7x16x7xf16>
        %274 = bufferization.to_memref %expanded : memref<7x16x7x1xf16>
        %275 = math.absi %7 : tensor<7x7xi1>
        %cast_60 = tensor.cast %4 : tensor<7x16x7xf32> to tensor<?x?x?xf32>
        %276 = math.sqrt %6 : tensor<16xf32>
        %277 = vector.broadcast %cst_4 : f32 to vector<7x7xf32>
        scf.yield %277 : vector<7x7xf32>
      }
    }
    %alloc_27 = memref.alloc() : memref<16x7xi1>
    %87 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_27 : memref<16x7xi1>) outs(%14 : tensor<16x7x16xi1>) {
    ^bb0(%in: i1, %out: i1):
      %257 = math.ctpop %7 : tensor<7x7xi1>
      %258 = vector.shuffle %55, %55 [0, 1, 2, 3, 4, 7, 10, 12, 16, 17, 18, 21, 22, 23, 24, 25, 27, 30] : vector<16x7x16xi1>, vector<16x7x16xi1>
      memref.alloca_scope  {
        %283 = arith.remf %cst_4, %cst : f32
        %284 = math.round %9 : tensor<7x16x7xf32>
        %285 = vector.reduction <add>, %34 : vector<7xf32> into f32
        %286 = vector.insertelement %c1_i16, %19[%60 : index] : vector<7xi16>
        %287 = index.sub %56, %rank_26
        %288 = arith.muli %c647337080_i32, %c1480477621_i32 : i32
        %289 = vector.broadcast %false_0 : i1 to vector<16xi1>
        %290 = vector.multi_reduction <maxsi>, %55, %289 [1, 2] : vector<16x7x16xi1> to vector<16xi1>
        %291 = index.maxs %c11, %c7
        %292 = arith.muli %c706296327_i32, %c1138262349_i32 : i32
        %293 = vector.broadcast %c1_i16 : i16 to vector<16x7x16x7xi16>
        %294 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %83, %83, %293 : vector<7x16x7xi16>, vector<7x16x7xi16> into vector<16x7x16x7xi16>
        %295 = math.log1p %cst_4 : f32
        %296 = math.log10 %9 : tensor<7x16x7xf32>
        affine.store %cst_5, %alloc_9[%c0, %c3] : memref<7x7xf16>
        %297 = arith.remui %c302691568_i64, %c302691568_i64 : i64
        %298 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d0 floordiv 32) floordiv 8)>(%c10, %c5, %27, %c9)
        %299 = arith.maxsi %in, %true : i1
        %300 = math.exp %11 : tensor<7x16x7xf16>
        %301 = arith.ori %c706296327_i32, %c1951499111_i32 : i32
        %302 = vector.broadcast %298 : index to vector<1xindex>
        %303 = vector.broadcast %true : i1 to vector<1xi1>
        %304 = vector.broadcast %c302691568_i64 : i64 to vector<1xi64>
        vector.scatter %alloc_20[%c4, %c6] [%302], %303, %304 : memref<7x7xi64>, vector<1xindex>, vector<1xi1>, vector<1xi64>
        %cast_64 = tensor.cast %3 : tensor<7x7xi64> to tensor<?x?xi64>
        affine.store %c302691568_i64, %alloc_16[%c6, %c7, %c5] : memref<7x16x7xi64>
        affine.store %c647337080_i32, %alloc[%c7] : memref<16xi32>
        %305 = vector.transpose %34, [0] : vector<7xf32> to vector<7xf32>
        %306 = math.tan %4 : tensor<7x16x7xf32>
        %307 = math.floor %9 : tensor<7x16x7xf32>
        %from_elements_65 = tensor.from_elements %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64 : tensor<16xi64>
        %308 = math.absf %6 : tensor<16xf32>
        %309 = index.maxu %71, %rank
        %from_elements_66 = tensor.from_elements %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5 : tensor<7x7xf16>
        %310 = index.ceildivs %54, %c11
        %311 = math.log %9 : tensor<7x16x7xf32>
        %312 = index.casts %c1138262349_i32 : i32 to index
      }
      %259 = index.divu %rank, %c5
      %rank_56 = tensor.rank %9 : tensor<7x16x7xf32>
      %true_57 = index.bool.constant true
      %260 = math.absi %0 : tensor<16x7x16xi16>
      %261 = math.fma %1, %4, %1 : tensor<7x16x7xf32>
      %262 = vector.insertelement %false_0, %33[%c8 : index] : vector<7xi1>
      %263 = vector.extract %83[1] : vector<7x16x7xi16>
      %264 = tensor.empty() : tensor<7x7xi32>
      %265 = linalg.matmul ins(%15, %15 : tensor<7x7xi32>, tensor<7x7xi32>) outs(%264 : tensor<7x7xi32>) -> tensor<7x7xi32>
      %collapsed_58 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<16x7x16xi16> into tensor<112x16xi16>
      %266 = math.tan %expanded : tensor<7x16x7x1xf16>
      %267 = math.powf %10, %18 : tensor<7x7xf32>
      %268 = vector.reduction <mul>, %34 : vector<7xf32> into f32
      %269 = math.fma %9, %4, %1 : tensor<7x16x7xf32>
      %270 = index.maxu %rank_56, %c5
      %271 = vector.reduction <add>, %34 : vector<7xf32> into f32
      %272 = vector.shuffle %33, %33 [0, 3, 6, 7, 10, 11, 12, 13] : vector<7xi1>, vector<7xi1>
      %false_59 = index.bool.constant false
      %expanded_60 = tensor.expand_shape %collapsed_58 [[0], [1, 2]] : tensor<112x16xi16> into tensor<112x16x1xi16>
      %collapsed_61 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<16x7x16xi32> into tensor<112x16xi32>
      %273 = math.log2 %cst_1 : f32
      %274 = scf.if %false_23 -> (f16) {
        %283 = vector.reduction <mul>, %34 : vector<7xf32> into f32
        %284 = index.maxu %c5, %c7
        %285 = vector.broadcast %c0_i64 : i64 to vector<16xi64>
        %286 = arith.minsi %false, %false_0 : i1
        %287 = arith.ceildivsi %c619965047_i32, %c706296327_i32 : i32
        %288 = math.roundeven %collapsed : tensor<112x7xf32>
        %289 = arith.ceildivsi %c1_i16, %c1_i16 : i16
        %290 = index.ceildivu %c6, %rank_24
        scf.yield %cst_2 : f16
      } else {
        %283 = math.absi %false_59 : i1
        %284 = vector.multi_reduction <maxsi>, %263, %263 [] : vector<16x7xi16> to vector<16x7xi16>
        %285 = math.tan %cst_2 : f16
        %286 = index.maxu %71, %rank_24
        %287 = math.ctpop %false : i1
        %288 = affine.max affine_map<(d0, d1, d2) -> ((d0 mod 16) mod 128, d0, (d1 floordiv 32 + 8) floordiv 32)>(%259, %c1, %78)
        %collapsed_64 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<16x7x16xi64> into tensor<112x16xi64>
        %289 = math.log1p %11 : tensor<7x16x7xf16>
        scf.yield %cst_2 : f16
      }
      %275 = math.cos %10 : tensor<7x7xf32>
      %276 = math.sqrt %10 : tensor<7x7xf32>
      %277 = affine.apply affine_map<(d0, d1) -> (d1 mod 64)>(%c11, %c7)
      %278 = math.tanh %4 : tensor<7x16x7xf32>
      %279 = math.roundeven %1 : tensor<7x16x7xf32>
      %280 = vector.broadcast %c1_i16 : i16 to vector<7x7xi16>
      %dest_62, %accumulated_value_63 = vector.scan <minsi>, %81, %280 {inclusive = false, reduction_dim = 1 : i64} : vector<7x16x7xi16>, vector<7x7xi16>
      %281 = arith.ceildivsi %true, %out : i1
      %282 = math.tan %cst : f32
      linalg.yield %true_25 : i1
    } -> tensor<16x7x16xi1>
    %88 = math.ceil %1 : tensor<7x16x7xf32>
    %89 = arith.divui %false_23, %false_0 : i1
    %90 = math.ipowi %c706296327_i32, %c1138262349_i32 : i32
    %91 = vector.transpose %69, [0, 1, 2] : vector<7x16x7xi1> to vector<7x16x7xi1>
    %92 = memref.alloca_scope  -> (i64) {
      %257 = vector.flat_transpose %19 {columns = 7 : i32, rows = 1 : i32} : vector<7xi16> -> vector<7xi16>
      %258 = math.exp %4 : tensor<7x16x7xf32>
      %259 = math.log %9 : tensor<7x16x7xf32>
      %260 = math.cos %transposed : tensor<7x7xf32>
      %extracted_56 = tensor.extract %2[%c1, %c7, %c1] : tensor<7x16x7xi64>
      %expanded_57 = tensor.expand_shape %11 [[0], [1], [2, 3]] : tensor<7x16x7xf16> into tensor<7x16x7x1xf16>
      %261 = index.floordivs %c3, %c9
      %262 = vector.insertelement %cst_1, %34[%rank_26 : index] : vector<7xf32>
      %263 = arith.shli %true_3, %true_25 : i1
      %264 = arith.cmpi slt, %c1_i16, %c1_i16 : i16
      %265 = vector.reduction <maxf>, %34 : vector<7xf32> into f32
      %266 = math.powf %9, %9 : tensor<7x16x7xf32>
      %rank_58 = tensor.rank %15 : tensor<7x7xi32>
      %267 = index.casts %true_3 : i1 to index
      %rank_59 = tensor.rank %3 : tensor<7x7xi64>
      %268 = tensor.empty() : tensor<7x7xi32>
      %269 = linalg.matmul ins(%15, %15 : tensor<7x7xi32>, tensor<7x7xi32>) outs(%268 : tensor<7x7xi32>) -> tensor<7x7xi32>
      %270 = math.ctpop %extracted_56 : i64
      %271 = affine.max affine_map<(d0, d1) -> (d0, (-((d1 - 8) mod 16)) ceildiv 8, ((d1 - 8) mod 16) ceildiv 8, 0)>(%c7, %rank_59)
      %272 = arith.mulf %cst, %cst : f32
      %273 = math.log1p %6 : tensor<16xf32>
      %274 = vector.broadcast %cst : f32 to vector<7x7xf32>
      %275 = vector.fma %274, %274, %274 : vector<7x7xf32>
      %276 = index.divu %rank_59, %c9
      %rank_60 = tensor.rank %0 : tensor<16x7x16xi16>
      %277 = arith.minsi %c1_i16, %c1_i16 : i16
      %278 = math.powf %9, %9 : tensor<7x16x7xf32>
      %generated_61 = tensor.generate %56, %56 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %286 = vector.broadcast %cst_4 : f32 to vector<16xf32>
        %287 = vector.insert %286, %85 [10, 4] : vector<16xf32> into vector<16x7x16xf32>
        %288 = arith.mulf %cst, %cst : f32
        %289 = index.divs %rank_59, %c0
        %290 = arith.ori %extracted_56, %c0_i64 : i64
        tensor.yield %c1_i16 : i16
      } : tensor<?x?x16xi16>
      %279 = math.cos %expanded : tensor<7x16x7x1xf16>
      %280 = index.maxs %c11, %c13
      %281 = vector.transpose %55, [0, 2, 1] : vector<16x7x16xi1> to vector<16x16x7xi1>
      %282 = math.tanh %11 : tensor<7x16x7xf16>
      %283 = tensor.empty() : tensor<7x7xf32>
      %284 = linalg.matmul ins(%18, %10 : tensor<7x7xf32>, tensor<7x7xf32>) outs(%283 : tensor<7x7xf32>) -> tensor<7x7xf32>
      %285 = memref.alloca_scope  -> (memref<7x7xi16>) {
        %286 = vector.broadcast %c1480477621_i32 : i32 to vector<16x7xi32>
        %287 = vector.insert %286, %82 [2] : vector<16x7xi32> into vector<7x16x7xi32>
        %288 = math.log %6 : tensor<16xf32>
        %289 = arith.remf %cst, %cst : f32
        %290 = math.absf %cst_1 : f32
        %291 = arith.muli %c647337080_i32, %c706296327_i32 : i32
        %c-22957_i16 = arith.constant -22957 : i16
        %292 = arith.maxsi %c1_i16, %c1_i16 : i16
        %293 = vector.broadcast %true_25 : i1 to vector<16x7x16xi1>
        %294 = index.ceildivu %54, %c7
        %295 = vector.broadcast %true_25 : i1 to vector<7x7xi1>
        %296 = vector.outerproduct %33, %33, %295 {kind = #vector.kind<and>} : vector<7xi1>, vector<7xi1>
        bufferization.dealloc_tensor %0 : tensor<16x7x16xi16>
        %297 = math.exp2 %cst_5 : f16
        %298 = math.tan %10 : tensor<7x7xf32>
        %299 = vector.bitcast %275 : vector<7x7xf32> to vector<7x7xf32>
        %300 = math.round %cst : f32
        %301 = bufferization.clone %alloc_12 : memref<7x7xi1> to memref<7x7xi1>
        %302 = math.sqrt %1 : tensor<7x16x7xf32>
        %303 = arith.remf %cst_4, %cst : f32
        %304 = vector.broadcast %271 : index to vector<16xindex>
        %305 = vector.broadcast %true_3 : i1 to vector<16xi1>
        %306 = vector.broadcast %c1_i16 : i16 to vector<16xi16>
        vector.scatter %alloc_17[%c6, %c3] [%304], %305, %306 : memref<7x7xi16>, vector<16xindex>, vector<16xi1>, vector<16xi16>
        %307 = tensor.empty() : tensor<7x7xf32>
        %308 = linalg.matmul ins(%283, %10 : tensor<7x7xf32>, tensor<7x7xf32>) outs(%307 : tensor<7x7xf32>) -> tensor<7x7xf32>
        %309 = arith.mulf %cst_2, %cst_2 : f16
        %310 = affine.max affine_map<(d0) -> (d0 floordiv 8 + 8, -d0, d0 floordiv 8 + 8)>(%276)
        %311 = arith.maxui %c1951499111_i32, %c1951499111_i32 : i32
        %312 = arith.remf %cst_5, %cst_5 : f16
        %313 = math.sqrt %17 : tensor<7x16x7xf16>
        %314 = arith.divui %c1951499111_i32, %c1138262349_i32 : i32
        %315 = index.castu %rank_24 : index to i32
        %316 = vector.create_mask %rank_60, %rank_58 : vector<7x7xi1>
        %317 = index.sizeof
        %318 = math.ctlz %20 : tensor<i16>
        %319 = vector.outerproduct %33, %33, %316 {kind = #vector.kind<xor>} : vector<7xi1>, vector<7xi1>
        %320 = index.divu %294, %317
        memref.alloca_scope.return %alloc_15 : memref<7x7xi16>
      }
      memref.alloca_scope.return %c302691568_i64 : i64
    }
    %93 = arith.muli %false_23, %false_23 : i1
    %94 = index.floordivs %c4, %60
    %95 = arith.muli %c706296327_i32, %c1951499111_i32 : i32
    %rank_28 = tensor.rank %7 : tensor<7x7xi1>
    %96 = arith.muli %c1951499111_i32, %c1951499111_i32 : i32
    %97 = math.tanh %expanded : tensor<7x16x7x1xf16>
    %98 = vector.broadcast %cst : f32 to vector<7x7xf32>
    %99 = vector.fma %98, %98, %98 : vector<7x7xf32>
    %splat_29 = tensor.splat %c1_i16 : tensor<7x16x7xi16>
    %100 = index.ceildivs %24, %60
    %101 = math.absf %16 : tensor<7x16x7xf16>
    %102 = tensor.empty() : tensor<7x7xf32>
    %103 = linalg.matmul ins(%10, %18 : tensor<7x7xf32>, tensor<7x7xf32>) outs(%102 : tensor<7x7xf32>) -> tensor<7x7xf32>
    %104 = vector.create_mask %c7, %27, %c10 : vector<16x7x16xi1>
    memref.alloca_scope  {
      affine.store %c1_i16, %alloc_14[%c0, %c5, %c14] : memref<7x16x7xi16>
      %257 = arith.muli %false_23, %true : i1
      %c1623044117_i32 = arith.constant 1623044117 : i32
      %258 = math.log1p %6 : tensor<16xf32>
      %259 = math.absi %8 : tensor<16x7x16xi16>
      %rank_56 = tensor.rank %8 : tensor<16x7x16xi16>
      %260 = memref.atomic_rmw assign %c1_i16, %alloc_15[%c1, %c0] : (i16, memref<7x7xi16>) -> i16
      %261 = vector.broadcast %c619965047_i32 : i32 to vector<7xi32>
      %262 = vector.maskedload %alloc_11[%c2, %c3], %33, %261 : memref<7x7xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
      %263 = arith.cmpi ugt, %c619965047_i32, %c1138262349_i32 : i32
      %264 = arith.maxui %c0_i64, %c0_i64 : i64
      %265 = arith.remf %cst_5, %cst_5 : f16
      %266 = affine.max affine_map<(d0) -> (0, -(d0 floordiv 32 - 16), -(d0 floordiv 32 + d0), d0 floordiv 32 + d0 + 112)>(%84)
      %267 = arith.addi %c619965047_i32, %c1951499111_i32 : i32
      %268 = vector.insert %cst, %32 [3] : f32 into vector<7xf32>
      %269 = math.exp2 %17 : tensor<7x16x7xf16>
      %270 = tensor.empty() : tensor<7xf32>
      %271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%270 : tensor<7xf32>) outs(%4 : tensor<7x16x7xf32>) {
      ^bb0(%in: f32, %out: f32):
        %287 = arith.divf %cst_2, %cst_5 : f16
        %288 = math.absi %c647337080_i32 : i32
        %289 = vector.maskedload %alloc_19[%c15], %33, %19 : memref<16xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
        %290 = math.copysign %cst_2, %cst_5 : f16
        %291 = affine.min affine_map<(d0) -> (-(d0 floordiv 16 - d0), d0 mod 8, d0 floordiv 32)>(%78)
        %292 = math.ctlz %12 : tensor<16x7x16xi32>
        %293 = math.absi %15 : tensor<7x7xi32>
        %294 = tensor.empty() : tensor<7x7xf32>
        %295 = linalg.matmul ins(%102, %10 : tensor<7x7xf32>, tensor<7x7xf32>) outs(%294 : tensor<7x7xf32>) -> tensor<7x7xf32>
        %296 = arith.maxsi %true_25, %true : i1
        %297 = math.ctpop %12 : tensor<16x7x16xi32>
        %extracted_57 = tensor.extract %4[%c0, %c1, %c0] : tensor<7x16x7xf32>
        %298 = math.tanh %10 : tensor<7x7xf32>
        %299 = vector.extract %82[5] : vector<7x16x7xi32>
        %300 = vector.bitcast %85 : vector<16x7x16xf32> to vector<16x7x16xf32>
        %301 = vector.broadcast %c1_i16 : i16 to vector<7x7xi16>
        %dest_58, %accumulated_value_59 = vector.scan <minui>, %83, %301 {inclusive = false, reduction_dim = 1 : i64} : vector<7x16x7xi16>, vector<7x7xi16>
        %302 = arith.divsi %c0_i64, %92 : i64
        %rank_60 = tensor.rank %0 : tensor<16x7x16xi16>
        %303 = arith.maxui %c647337080_i32, %c1951499111_i32 : i32
        %304 = arith.minsi %c1_i16, %c1_i16 : i16
        %305 = vector.broadcast %c4 : index to vector<1xindex>
        %306 = vector.broadcast %true : i1 to vector<1xi1>
        %307 = vector.broadcast %c302691568_i64 : i64 to vector<1xi64>
        vector.scatter %alloc_20[%c2, %c6] [%305], %306, %307 : memref<7x7xi64>, vector<1xindex>, vector<1xi1>, vector<1xi64>
        %308 = math.powf %16, %16 : tensor<7x16x7xf16>
        %309 = math.fma %10, %10, %transposed : tensor<7x7xf32>
        %310 = arith.minf %cst_2, %cst_5 : f16
        %311 = vector.broadcast %false : i1 to vector<7x16xi1>
        %dest_61, %accumulated_value_62 = vector.scan <add>, %104, %311 {inclusive = true, reduction_dim = 0 : i64} : vector<16x7x16xi1>, vector<7x16xi1>
        %312 = index.castu %266 : index to i32
        %alloc_63 = memref.alloc() : memref<7x16x7xi64>
        memref.copy %alloc_16, %alloc_63 : memref<7x16x7xi64> to memref<7x16x7xi64>
        %313 = index.divu %94, %c15
        %314 = arith.remf %cst, %cst_1 : f32
        %315 = math.log %cst_5 : f16
        %316 = index.ceildivs %rank_24, %c2
        %317 = index.maxu %94, %c9
        %318 = index.casts %313 : index to i32
        linalg.yield %cst_1 : f32
      } -> tensor<7x16x7xf32>
      %272 = math.ctpop %12 : tensor<16x7x16xi32>
      %273 = index.sizeof
      %274 = math.cos %11 : tensor<7x16x7xf16>
      %275 = math.powf %cst_5, %cst_5 : f16
      %276 = math.ctpop %75 : tensor<7x16x7xi64>
      %277 = arith.minsi %false_0, %true_25 : i1
      %278 = vector.flat_transpose %33 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
      %279 = arith.mulf %cst_5, %cst_5 : f16
      %280 = math.fma %9, %4, %1 : tensor<7x16x7xf32>
      %281 = index.casts %c0_i64 : i64 to index
      %282 = arith.divf %cst_5, %cst_5 : f16
      %283 = affine.max affine_map<(d0) -> ((d0 floordiv 4) * 2, ((d0 floordiv 4) * 2 + 2) * 2, (d0 floordiv 4) * 32)>(%rank_26)
      affine.store %cst_1, %alloc_7[%c2, %c13] : memref<7x7xf32>
      %284 = vector.insert %false, %33 [4] : i1 into vector<7xi1>
      %285 = math.fma %transposed, %10, %10 : tensor<7x7xf32>
      %286 = arith.remsi %c302691568_i64, %c0_i64 : i64
    }
    %105 = tensor.empty() : tensor<7x16x7xf16>
    %106 = math.cos %cst_1 : f32
    %107 = bufferization.to_tensor %alloc_19 : memref<16xi16>
    %108 = arith.minf %cst_4, %cst_4 : f32
    %cst_30 = arith.constant 1.000000e+00 : f32
    %109 = vector.transfer_read %6[%56], %cst_30 : tensor<16xf32>, vector<f32>
    %110 = memref.atomic_rmw mins %c1_i16, %alloc_15[%c4, %c0] : (i16, memref<7x7xi16>) -> i16
    %111 = arith.xori %c1138262349_i32, %c1951499111_i32 : i32
    %112 = math.round %1 : tensor<7x16x7xf32>
    %113 = math.absf %expanded : tensor<7x16x7x1xf16>
    %splat_31 = tensor.splat %false_23 : tensor<7x16x7xi1>
    %114 = vector.broadcast %cst_4 : f32 to vector<16x7x16xf32>
    %115 = vector.fma %114, %85, %86 : vector<16x7x16xf32>
    %116 = vector.insertelement %cst_30, %34[%71 : index] : vector<7xf32>
    %117 = index.casts %c1_i16 : i16 to index
    %118 = scf.while (%arg2 = %alloc_7) : (memref<7x7xf32>) -> memref<7x7xf32> {
      %257 = math.exp2 %6 : tensor<16xf32>
      bufferization.dealloc_tensor %9 : tensor<7x16x7xf32>
      %258 = tensor.empty() : tensor<7x7xf32>
      %mapped_56 = linalg.map ins(%102, %transposed : tensor<7x7xf32>, tensor<7x7xf32>) outs(%258 : tensor<7x7xf32>)
        (%in: f32, %in_57: f32) {
          %264 = arith.maxsi %c1480477621_i32, %c706296327_i32 : i32
          %265 = arith.minsi %c1_i16, %c1_i16 : i16
          %266 = arith.muli %c302691568_i64, %c302691568_i64 : i64
          %267 = math.exp %6 : tensor<16xf32>
          %splat_58 = tensor.splat %false : tensor<16x7x16xi1>
          %268 = math.cttz %false : i1
          %expanded_59 = tensor.expand_shape %17 [[0], [1], [2, 3]] : tensor<7x16x7xf16> into tensor<7x16x7x1xf16>
          %269 = math.log %4 : tensor<7x16x7xf32>
          %270 = math.log1p %105 : tensor<7x16x7xf16>
          %271 = affine.load %alloc_6[%c15, %c10] : memref<7x7xf16>
          %272 = math.sqrt %transposed : tensor<7x7xf32>
          %273 = arith.cmpi sgt, %false_23, %false : i1
          %274 = arith.andi %false_0, %true_25 : i1
          %275 = bufferization.to_memref %13 : memref<16x7x16xi64>
          %cast_60 = tensor.cast %15 : tensor<7x7xi32> to tensor<?x?xi32>
          %276 = math.ctlz %5 : tensor<16xi16>
          %277 = index.divs %c7, %c8
          %278 = math.cttz %14 : tensor<16x7x16xi1>
          %279 = arith.minsi %false_0, %true_3 : i1
          %280 = math.absi %true : i1
          %281 = tensor.empty(%c2, %c11) : tensor<?x7x?xi32>
          %282 = affine.load %alloc_19[%c12] : memref<16xi16>
          %283 = arith.maxui %c1480477621_i32, %c706296327_i32 : i32
          %284 = arith.cmpi sle, %c1138262349_i32, %c1480477621_i32 : i32
          %285 = arith.shli %c619965047_i32, %c1138262349_i32 : i32
          %286 = index.ceildivu %277, %c6
          %287 = arith.shli %false_0, %false : i1
          %288 = vector.load %alloc_18[%c15] : memref<16xf16>, vector<7x7xf16>
          %289 = vector.insertelement %c1_i16, %19[%117 : index] : vector<7xi16>
          %290 = affine.min affine_map<(d0, d1, d2) -> ((d0 - d1) floordiv 32, -d2, d0 - d1 + 1, d1)>(%c8, %rank_26, %c13)
          %291 = memref.atomic_rmw addf %271, %alloc_21[] : (f16, memref<f16>) -> f16
          %292 = math.tan %collapsed : tensor<112x7xf32>
          %cst_61 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_61 : f32
        }
      %259 = arith.maxsi %92, %c302691568_i64 : i64
      %260 = arith.ori %false_0, %false : i1
      %261 = tensor.empty() : tensor<7x16x7xi64>
      %262 = math.exp2 %6 : tensor<16xf32>
      %263 = math.round %11 : tensor<7x16x7xf16>
      scf.condition(%true_25) %alloc_7 : memref<7x7xf32>
    } do {
    ^bb0(%arg2: memref<7x7xf32>):
      %257 = bufferization.clone %alloc_12 : memref<7x7xi1> to memref<7x7xi1>
      %splat_56 = tensor.splat %false_0 : tensor<16x7x16xi1>
      %258 = math.round %cst_5 : f16
      %259 = math.exp2 %11 : tensor<7x16x7xf16>
      %260 = vector.broadcast %cst : f32 to vector<7x16xf32>
      %261 = vector.insert %260, %115 [3] : vector<7x16xf32> into vector<16x7x16xf32>
      %262 = index.casts %27 : index to i32
      %263 = index.maxu %rank_28, %78
      %264 = bufferization.to_memref %5 : memref<16xi16>
      %265 = arith.minsi %c0_i64, %c302691568_i64 : i64
      %266 = vector.reduction <add>, %33 : vector<7xi1> into i1
      %267 = vector.shuffle %115, %86 [3, 5, 6, 10, 11, 12, 13, 15, 17, 18, 20, 21, 23, 25, 26, 27, 28, 29, 30, 31] : vector<16x7x16xf32>, vector<16x7x16xf32>
      %268 = tensor.empty() : tensor<7x7xf32>
      %269 = linalg.matmul ins(%10, %102 : tensor<7x7xf32>, tensor<7x7xf32>) outs(%268 : tensor<7x7xf32>) -> tensor<7x7xf32>
      %270 = math.absf %cst_1 : f32
      %271 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %19, %19, %c1_i16 : vector<7xi16>, vector<7xi16> into i16
      %272 = vector.broadcast %cst : f32 to vector<16xf32>
      %cast_57 = tensor.cast %11 : tensor<7x16x7xf16> to tensor<?x?x?xf16>
      scf.yield %alloc_7 : memref<7x7xf32>
    }
    %119 = math.roundeven %10 : tensor<7x7xf32>
    %120 = vector.broadcast %cst_30 : f32 to vector<16x7xf32>
    %dest, %accumulated_value = vector.scan <maxf>, %86, %120 {inclusive = true, reduction_dim = 2 : i64} : vector<16x7x16xf32>, vector<16x7xf32>
    %121 = math.ctpop %21 : tensor<i16>
    %122 = tensor.empty() : tensor<16xf32>
    %mapped_32 = linalg.map ins(%6, %6, %6 : tensor<16xf32>, tensor<16xf32>, tensor<16xf32>) outs(%122 : tensor<16xf32>)
      (%in: f32, %in_56: f32, %in_57: f32) {
        %257 = math.floor %cst_5 : f16
        %258 = vector.shuffle %81, %81 [1, 2, 4, 6, 7, 8, 10, 11] : vector<7x16x7xi16>, vector<7x16x7xi16>
        %259 = index.divu %c8, %117
        %260 = vector.extract_strided_slice %83 {offsets = [1, 12], sizes = [1, 1], strides = [1, 1]} : vector<7x16x7xi16> to vector<1x1x7xi16>
        %261 = math.ceil %4 : tensor<7x16x7xf32>
        %262 = bufferization.to_tensor %alloc_22 : memref<16xi16>
        %263 = math.absi %true_25 : i1
        %collapsed_58 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<7x16x7xf32> into tensor<112x7xf32>
        %264 = tensor.empty() : tensor<7x16x7xi1>
        %splat_59 = tensor.splat %c647337080_i32 : tensor<16xi32>
        %265 = math.atan2 %cst_1, %cst_4 : f32
        %266 = math.exp2 %4 : tensor<7x16x7xf32>
        %267 = arith.mulf %in_57, %cst_1 : f32
        %268 = arith.maxui %true_3, %true_25 : i1
        %269 = vector.broadcast %cst_5 : f16 to vector<16xf16>
        %270 = math.tan %in_56 : f32
        %271 = vector.broadcast %in_57 : f32 to vector<7x16xf32>
        %dest_60, %accumulated_value_61 = vector.scan <minf>, %115, %271 {inclusive = true, reduction_dim = 0 : i64} : vector<16x7x16xf32>, vector<7x16xf32>
        %272 = arith.minsi %c706296327_i32, %c706296327_i32 : i32
        %273 = vector.insert %c1_i16, %19 [0] : i16 into vector<7xi16>
        %274 = math.cos %1 : tensor<7x16x7xf32>
        %expanded_62 = tensor.expand_shape %9 [[0], [1], [2, 3]] : tensor<7x16x7xf32> into tensor<7x16x7x1xf32>
        %275 = arith.minf %cst_30, %cst_30 : f32
        %276 = vector.broadcast %cst_2 : f16 to vector<f16>
        vector.transfer_write %276, %alloc_18[%259] : vector<f16>, memref<16xf16>
        %277 = math.log %6 : tensor<16xf32>
        %278 = vector.broadcast %cst_1 : f32 to vector<7x16xf32>
        %dest_63, %accumulated_value_64 = vector.scan <mul>, %114, %278 {inclusive = false, reduction_dim = 0 : i64} : vector<16x7x16xf32>, vector<7x16xf32>
        %279 = vector.extract_strided_slice %19 {offsets = [2], sizes = [2], strides = [1]} : vector<7xi16> to vector<2xi16>
        %280 = math.cos %17 : tensor<7x16x7xf16>
        %281 = vector.splat %c15 : vector<16x7x16xindex>
        %282 = math.cos %9 : tensor<7x16x7xf32>
        %283 = math.ipowi %14, %14 : tensor<16x7x16xi1>
        %284 = vector.broadcast %in_56 : f32 to vector<7x16x7x16xf32>
        %285 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %85, %115, %284 : vector<16x7x16xf32>, vector<16x7x16xf32> into vector<7x16x7x16xf32>
        %286 = arith.minsi %c706296327_i32, %c1480477621_i32 : i32
        %cst_65 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_65 : f32
      }
    %123 = index.casts %c1138262349_i32 : i32 to index
    %124 = arith.floordivsi %false_23, %true_25 : i1
    %125 = index.floordivs %c2, %c10
    %126 = math.powf %expanded, %expanded : tensor<7x16x7x1xf16>
    %127 = index.divu %c14, %c15
    %128 = vector.broadcast %c1951499111_i32 : i32 to vector<i32>
    %129 = vector.transfer_write %128, %15[%rank, %100] : vector<i32>, tensor<7x7xi32>
    %130 = vector.broadcast %c1_i16 : i16 to vector<16x7xi16>
    %131 = vector.multi_reduction <maxui>, %81, %130 [0] : vector<7x16x7xi16> to vector<16x7xi16>
    %false_33 = arith.constant false
    %132 = vector.transfer_read %14[%rank, %117, %127], %false_33 : tensor<16x7x16xi1>, vector<i1>
    %133 = vector.outerproduct %32, %34, %98 {kind = #vector.kind<mul>} : vector<7xf32>, vector<7xf32>
    %134 = vector.shuffle %33, %33 [0, 1, 2, 3, 5, 7, 13] : vector<7xi1>, vector<7xi1>
    %cast = tensor.cast %3 : tensor<7x7xi64> to tensor<?x?xi64>
    %135 = arith.shli %92, %c0_i64 : i64
    %136 = arith.mulf %cst_30, %cst_30 : f32
    %137 = math.ctpop %7 : tensor<7x7xi1>
    %138 = scf.if %true -> (memref<16xi1>) {
      %from_elements_56 = tensor.from_elements %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2 : tensor<7x7xf16>
      %257 = arith.maxsi %false, %false_0 : i1
      %258 = scf.while (%arg2 = %false) : (i1) -> i1 {
        %263 = math.log1p %cst_1 : f32
        %264 = vector.insertelement %false_23, %33[%c13 : index] : vector<7xi1>
        %rank_59 = tensor.rank %12 : tensor<16x7x16xi32>
        %cst_60 = arith.constant 1.000000e+00 : f32
        %265 = vector.transfer_read %transposed[%c12, %c9], %cst_60 : tensor<7x7xf32>, vector<7xf32>
        %266 = arith.divf %cst_2, %cst_2 : f16
        %267 = vector.extract %130[14] : vector<16x7xi16>
        %268 = math.log %4 : tensor<7x16x7xf32>
        %269 = memref.atomic_rmw minf %cst, %alloc_8[%c0, %c12, %c5] : (f32, memref<7x16x7xf32>) -> f32
        scf.condition(%true_25) %false_23 : i1
      } do {
      ^bb0(%arg2: i1):
        %263 = vector.broadcast %cst_1 : f32 to vector<7x7xf32>
        %264 = vector.fma %263, %98, %99 : vector<7x7xf32>
        %265 = tensor.empty() : tensor<7x16x7xi32>
        %266 = vector.broadcast %c1480477621_i32 : i32 to vector<16x7x16xi32>
        %267 = vector.gather %265[%123, %60, %c5] [%266], %55, %266 : tensor<7x16x7xi32>, vector<16x7x16xi32>, vector<16x7x16xi1>, vector<16x7x16xi32> into vector<16x7x16xi32>
        %268 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 * 128, d2 * 8)>(%125, %c11, %c1, %rank_26)
        %269 = vector.broadcast %c4 : index to vector<1xindex>
        %270 = vector.broadcast %true : i1 to vector<1xi1>
        %271 = vector.broadcast %c1_i16 : i16 to vector<1xi16>
        vector.scatter %alloc_14[%c1, %c1, %c6] [%269], %270, %271 : memref<7x16x7xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
        %272 = vector.broadcast %c12 : index to vector<7xindex>
        vector.scatter %alloc_8[%c5, %c8, %c5] [%272], %33, %32 : memref<7x16x7xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
        %273 = math.powf %1, %9 : tensor<7x16x7xf32>
        %274 = vector.broadcast %c0_i64 : i64 to vector<i64>
        vector.transfer_write %274, %alloc_20[%c6, %268] : vector<i64>, memref<7x7xi64>
        %275 = arith.cmpi eq, %c619965047_i32, %c619965047_i32 : i32
        %splat_59 = tensor.splat %false_23 : tensor<16x7x16xi1>
        %276 = math.log1p %17 : tensor<7x16x7xf16>
        %277 = arith.maxsi %true_3, %true_25 : i1
        %expanded_60 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<7x7xi32> into tensor<7x7x1xi32>
        %c-22490_i16 = arith.constant -22490 : i16
        %278 = math.ctlz %8 : tensor<16x7x16xi16>
        %279 = memref.load %alloc_13[%c2, %c5] : memref<7x7xi32>
        %280 = vector.broadcast %true_25 : i1 to vector<7x7xi1>
        scf.yield %true_3 : i1
      }
      %259 = tensor.empty() : tensor<7x16x7xi1>
      %collapsed_57 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<7x16x7xf32> into tensor<112x7xf32>
      %260 = math.log1p %cst_30 : f32
      %261 = index.casts %rank_26 : index to i32
      %262 = arith.ceildivsi %false_23, %false_0 : i1
      %alloc_58 = memref.alloc() : memref<16xi1>
      scf.yield %alloc_58 : memref<16xi1>
    } else {
      %257 = arith.subi %true, %false_23 : i1
      %258 = arith.minf %cst_1, %cst_4 : f32
      %259 = vector.broadcast %true_25 : i1 to vector<7x16xi1>
      %260 = vector.insert %259, %104 [1] : vector<7x16xi1> into vector<16x7x16xi1>
      %261 = vector.multi_reduction <minui>, %259, %33 [1] : vector<7x16xi1> to vector<7xi1>
      %262 = vector.insert %c1_i16, %19 [6] : i16 into vector<7xi16>
      %263 = index.ceildivu %54, %c5
      %264 = affine.load %alloc_18[%c12] : memref<16xf16>
      %from_elements_56 = tensor.from_elements %cst_4, %cst_4, %cst_30, %cst_4, %cst_1, %cst_30, %cst, %cst_4, %cst_1, %cst_4, %cst_4, %cst, %cst_4, %cst_30, %cst, %cst_30, %cst, %cst_1, %cst_4, %cst_30, %cst_1, %cst, %cst_4, %cst_1, %cst_30, %cst_30, %cst_1, %cst_4, %cst_1, %cst_30, %cst_1, %cst_30, %cst, %cst_4, %cst, %cst_4, %cst_30, %cst_30, %cst, %cst_1, %cst, %cst_4, %cst_1, %cst, %cst_4, %cst_30, %cst_4, %cst_4, %cst_4 : tensor<7x7xf32>
      %alloc_57 = memref.alloc() : memref<16xi1>
      scf.yield %alloc_57 : memref<16xi1>
    }
    %alloc_34 = memref.alloc() : memref<7x7xi1>
    memref.copy %alloc_12, %alloc_34 : memref<7x7xi1> to memref<7x7xi1>
    %rank_35 = tensor.rank %collapsed : tensor<112x7xf32>
    %139 = vector.insertelement %c1_i16, %19[%rank_28 : index] : vector<7xi16>
    %140 = vector.broadcast %cst_1 : f32 to vector<16x16xf32>
    %141 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %114, %34, %140 : vector<16x7x16xf32>, vector<7xf32> into vector<16x16xf32>
    %142 = memref.load %alloc_10[%c6, %c6, %c2] : memref<7x16x7xf32>
    %143 = math.absi %c0_i64 : i64
    %144 = arith.negf %cst_2 : f16
    %145 = math.log10 %10 : tensor<7x7xf32>
    %146 = vector.reduction <add>, %19 : vector<7xi16> into i16
    %c1498468902_i64 = arith.constant 1498468902 : i64
    %147 = math.absf %102 : tensor<7x7xf32>
    %148 = affine.max affine_map<(d0) -> (d0 * -64, ((d0 * -64) floordiv 128) ceildiv 32)>(%c6)
    %149 = memref.load %138[%c7] : memref<16xi1>
    %150 = scf.while (%arg2 = %98) : (vector<7x7xf32>) -> vector<7x7xf32> {
      %257 = affine.load %alloc_22[%c12] : memref<16xi16>
      %258 = arith.remsi %false_23, %false_0 : i1
      %259 = math.fma %collapsed, %collapsed, %collapsed : tensor<112x7xf32>
      %260 = affine.min affine_map<(d0, d1, d2) -> (d0, d0 floordiv 2)>(%84, %rank_24, %c9)
      %261 = math.ceil %cst_30 : f32
      %262 = arith.minsi %c706296327_i32, %c1138262349_i32 : i32
      %263 = index.maxu %rank_28, %123
      %264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_9 : memref<7x7xf16>) outs(%11 : tensor<7x16x7xf16>) {
      ^bb0(%in: f16, %out: f16):
        %265 = vector.reduction <add>, %32 : vector<7xf32> into f32
        %266 = index.castu %c619965047_i32 : i32 to index
        %splat_56 = tensor.splat %c0_i64 : tensor<7x16x7xi64>
        %267 = index.ceildivs %84, %c11
        %268 = vector.broadcast %true_3 : i1 to vector<7x16x7x16xi1>
        %269 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<or>} %104, %104, %268 : vector<16x7x16xi1>, vector<16x7x16xi1> into vector<7x16x7x16xi1>
        %270 = vector.transpose %82, [1, 0, 2] : vector<7x16x7xi32> to vector<16x7x7xi32>
        %271 = vector.insertelement %c1_i16, %19[%117 : index] : vector<7xi16>
        %272 = math.tan %1 : tensor<7x16x7xf32>
        %extracted_57 = tensor.extract %5[%c8] : tensor<16xi16>
        %extracted_58 = tensor.extract %17[%c4, %c4, %c2] : tensor<7x16x7xf16>
        %alloc_59 = memref.alloc() : memref<f16>
        memref.copy %alloc_21, %alloc_59 : memref<f16> to memref<f16>
        %273 = vector.broadcast %extracted_58 : f16 to vector<16x7x16xf16>
        %274 = math.log1p %6 : tensor<16xf32>
        %275 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 * 2, d2 * 128 - 1, d3 ceildiv 4 - 2, d3 ceildiv 4 - 2)>(%rank, %123, %rank_35, %148)
        %276 = index.divu %84, %c6
        %cast_60 = tensor.cast %14 : tensor<16x7x16xi1> to tensor<?x?x?xi1>
        %277 = arith.minui %c706296327_i32, %c706296327_i32 : i32
        %rank_61 = tensor.rank %11 : tensor<7x16x7xf16>
        %alloc_62 = memref.alloc() : memref<16x7x16xi16>
        %278 = vector.broadcast %c13 : index to vector<16xindex>
        %279 = vector.broadcast %true_25 : i1 to vector<16xi1>
        %280 = vector.broadcast %c302691568_i64 : i64 to vector<16xi64>
        vector.scatter %alloc_20[%c5, %c4] [%278], %279, %280 : memref<7x7xi64>, vector<16xindex>, vector<16xi1>, vector<16xi64>
        %281 = math.sqrt %out : f16
        %cast_63 = tensor.cast %6 : tensor<16xf32> to tensor<?xf32>
        %282 = math.log %in : f16
        %cst_64 = arith.constant 2.788800e+04 : f16
        %283 = math.tan %16 : tensor<7x16x7xf16>
        %284 = math.powf %extracted_58, %cst_2 : f16
        %285 = index.casts %148 : index to i32
        %286 = math.powf %18, %10 : tensor<7x7xf32>
        %287 = math.powf %cst_4, %cst_4 : f32
        %288 = arith.mulf %out, %out : f16
        %289 = math.ctlz %2 : tensor<7x16x7xi64>
        %290 = vector.broadcast %false_23 : i1 to vector<16x7x16x16xi1>
        %291 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d4, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<or>} %69, %55, %290 : vector<7x16x7xi1>, vector<16x7x16xi1> into vector<16x7x16x16xi1>
        linalg.yield %out : f16
      } -> tensor<7x16x7xf16>
      scf.condition(%true_25) %99 : vector<7x7xf32>
    } do {
    ^bb0(%arg2: vector<7x7xf32>):
      %257 = affine.apply affine_map<(d0, d1, d2) -> (d2 mod 128 - d1)>(%127, %c4, %100)
      %generated_56 = tensor.generate %54 {
      ^bb0(%arg3: index, %arg4: index):
        %270 = math.absi %c302691568_i64 : i64
        %271 = math.log %102 : tensor<7x7xf32>
        %272 = index.divs %56, %c4
        %273 = math.atan %6 : tensor<16xf32>
        tensor.yield %c1_i16 : i16
      } : tensor<?x7xi16>
      %258 = math.log %16 : tensor<7x16x7xf16>
      %c437650179_i32 = arith.constant 437650179 : i32
      %259 = math.powf %10, %transposed : tensor<7x7xf32>
      %260 = arith.xori %false, %false_0 : i1
      %261 = index.divs %27, %100
      %262 = arith.divsi %false, %true_3 : i1
      %alloca = memref.alloca() : memref<7x7xi32>
      %263 = index.ceildivs %60, %c8
      %264 = vector.shuffle %104, %55 [0, 4, 5, 7, 9, 13, 14, 15, 17, 19, 21, 22, 23, 24, 25, 26, 27, 28, 30, 31] : vector<16x7x16xi1>, vector<16x7x16xi1>
      %265 = arith.remf %cst_5, %cst_2 : f16
      %266 = index.ceildivu %127, %c4
      %267 = index.ceildivu %c4, %78
      %268 = vector.splat %100 : vector<16xindex>
      %269 = math.tan %collapsed : tensor<112x7xf32>
      scf.yield %99 : vector<7x7xf32>
    }
    %151 = math.log %11 : tensor<7x16x7xf16>
    %152 = index.ceildivs %c15, %94
    %153 = arith.muli %c0_i64, %c0_i64 : i64
    %154 = math.log %expanded : tensor<7x16x7x1xf16>
    %155 = memref.realloc %alloc_19 : memref<16xi16> to memref<7xi16>
    %collapsed_36 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<7x16x7xf16> into tensor<112x7xf16>
    %156 = math.round %4 : tensor<7x16x7xf32>
    %157 = vector.transpose %115, [0, 2, 1] : vector<16x7x16xf32> to vector<16x16x7xf32>
    scf.index_switch %54 
    case 1 {
      %257 = math.log10 %cst_2 : f16
      %258 = math.fma %9, %1, %1 : tensor<7x16x7xf32>
      %rank_56 = tensor.rank %12 : tensor<16x7x16xi32>
      %259 = vector.insert %19, %130 [11] : vector<7xi16> into vector<16x7xi16>
      %260 = vector.broadcast %cst_4 : f32 to vector<7x16x7xf32>
      %261 = vector.fma %260, %260, %260 : vector<7x16x7xf32>
      %262 = math.log %105 : tensor<7x16x7xf16>
      %rank_57 = tensor.rank %14 : tensor<16x7x16xi1>
      %263 = arith.cmpi ugt, %c0_i64, %c302691568_i64 : i64
      %264 = arith.xori %c0_i64, %c0_i64 : i64
      %265 = math.absf %1 : tensor<7x16x7xf32>
      %266 = math.sqrt %cst_5 : f16
      %cast_58 = tensor.cast %4 : tensor<7x16x7xf32> to tensor<?x?x?xf32>
      scf.execute_region {
        %270 = math.ctpop %false_0 : i1
        %271 = arith.maxsi %c1_i16, %c1_i16 : i16
        %272 = vector.broadcast %true : i1 to vector<16x7xi1>
        %273 = vector.insert %272, %69 [4] : vector<16x7xi1> into vector<7x16x7xi1>
        %274 = math.fma %18, %10, %10 : tensor<7x7xf32>
        %275 = math.powf %expanded, %expanded : tensor<7x16x7x1xf16>
        %276 = arith.minf %cst, %cst_4 : f32
        %277 = arith.subi %false_23, %true_3 : i1
        %278 = math.absi %7 : tensor<7x7xi1>
        %279 = arith.divf %cst_2, %cst_2 : f16
        %280 = math.fma %102, %10, %18 : tensor<7x7xf32>
        affine.store %true_3, %alloc_12[%c14, %c15] : memref<7x7xi1>
        %281 = affine.max affine_map<(d0, d1) -> ((d0 + d1) mod 32, d0 + d1)>(%rank_26, %rank_28)
        %282 = arith.minui %c1_i16, %c1_i16 : i16
        %283 = vector.insert %34, %98 [1] : vector<7xf32> into vector<7x7xf32>
        %284 = vector.broadcast %cst_2 : f16 to vector<1xf16>
        %285 = vector.transfer_write %284, %11[%c4, %c8, %c10] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<1xf16>, tensor<7x16x7xf16>
        %286 = vector.transpose %98, [1, 0] : vector<7x7xf32> to vector<7x7xf32>
        scf.yield
      }
      %267 = arith.remui %c647337080_i32, %c647337080_i32 : i32
      %268 = math.ctpop %8 : tensor<16x7x16xi16>
      %269 = arith.ceildivsi %c0_i64, %c0_i64 : i64
      scf.yield
    }
    case 2 {
      %257 = arith.mulf %cst_4, %cst_1 : f32
      %cast_56 = tensor.cast %16 : tensor<7x16x7xf16> to tensor<?x?x?xf16>
      %258 = index.casts %false_0 : i1 to index
      %259 = math.cos %17 : tensor<7x16x7xf16>
      %260 = scf.index_switch %117 -> memref<7x16x7xf16> 
      case 1 {
        %splat_58 = tensor.splat %cst_1 : tensor<7x7xf32>
        %272 = vector.shuffle %130, %130 [0, 2, 3, 4, 6, 8, 9, 16, 20, 21, 23, 24, 25, 27, 28] : vector<16x7xi16>, vector<16x7xi16>
        %rank_59 = tensor.rank %generated : tensor<?x?x?xi32>
        %273 = vector.multi_reduction <add>, %81, %19 [0, 1] : vector<7x16x7xi16> to vector<7xi16>
        %274 = affine.max affine_map<(d0, d1) -> (0, (d0 ceildiv 16) mod 16, d1)>(%c11, %123)
        %275 = vector.splat %152 : vector<7x7xindex>
        %276 = affine.min affine_map<(d0, d1) -> (d0, -d1)>(%78, %c11)
        %cst_60 = arith.constant 1.000000e+00 : f32
        %277 = vector.transfer_read %122[%c6], %cst_60 : tensor<16xf32>, vector<f32>
        %from_elements_61 = tensor.from_elements %c0_i64, %c302691568_i64, %92, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %92, %c0_i64, %c0_i64, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %92, %c0_i64, %c0_i64, %c302691568_i64, %92, %c302691568_i64, %92, %c302691568_i64, %c302691568_i64, %c0_i64, %92, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %92, %92, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %92, %92, %c302691568_i64, %c0_i64, %92, %92, %c302691568_i64, %92, %92, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %92, %c0_i64, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %92, %c302691568_i64, %92, %c302691568_i64, %c0_i64, %92, %92, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %92, %c302691568_i64, %92, %c0_i64, %c302691568_i64, %92, %c302691568_i64, %92, %92, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %c302691568_i64, %92, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %92, %92, %92, %92, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %92, %c0_i64, %c0_i64, %92, %c0_i64, %c0_i64, %c0_i64, %92, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %92, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %92, %c302691568_i64, %92, %92, %92, %92, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %92, %92, %c0_i64, %92, %c0_i64, %c0_i64, %92, %92, %92, %c302691568_i64, %92, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %92, %92, %92, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %92, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %92, %c302691568_i64, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %92, %c302691568_i64, %c302691568_i64, %92, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %c0_i64, %92, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %92, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %92, %c302691568_i64, %92, %c0_i64, %c0_i64, %c0_i64, %92, %c302691568_i64, %92, %92, %92, %c302691568_i64, %c0_i64, %92, %c0_i64, %c0_i64, %c0_i64, %92, %92, %c0_i64, %c0_i64, %c0_i64, %92, %92, %92, %92, %c0_i64, %c0_i64, %c0_i64, %92, %c0_i64, %c0_i64, %c0_i64, %92, %92, %c302691568_i64, %c0_i64, %92, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %c0_i64, %92, %92, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %c0_i64, %c0_i64, %92, %c0_i64, %c302691568_i64, %92, %c302691568_i64, %c0_i64, %92, %92, %c302691568_i64, %c302691568_i64, %92, %92, %c302691568_i64, %92, %92, %92, %92, %92, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %92, %92, %c0_i64, %c302691568_i64, %92, %92, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %92, %c0_i64, %92, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %c0_i64, %92, %c0_i64, %92, %92, %92, %c0_i64, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %92, %92, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %92, %c0_i64, %92, %92, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %92, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %92, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %92, %c0_i64, %92, %c0_i64, %c302691568_i64, %92, %c0_i64, %92, %92, %92, %92, %c302691568_i64, %92, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %92, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %c0_i64, %92, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %92, %92, %c302691568_i64, %92, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %c0_i64, %c302691568_i64, %92, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %c302691568_i64, %92, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %92, %92, %c302691568_i64, %92, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %92, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %92, %92, %c302691568_i64, %92, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %92, %92, %c0_i64, %c302691568_i64, %92, %92, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %c302691568_i64, %92, %92, %92, %c0_i64, %92, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %92, %92, %92, %c0_i64, %c302691568_i64, %c0_i64, %92, %c0_i64, %c302691568_i64, %c0_i64, %92, %92, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %92, %c302691568_i64, %92, %c302691568_i64, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %92, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %92, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %92, %92, %92, %92, %92, %c302691568_i64, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %c0_i64, %c302691568_i64, %92, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %92, %c0_i64, %92, %92, %c0_i64, %92, %92, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %92, %92, %c0_i64, %92, %c0_i64, %c302691568_i64, %92, %92, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %c0_i64, %c0_i64, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %c302691568_i64, %92, %92, %92, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %92, %c0_i64, %92, %c0_i64, %c302691568_i64, %c0_i64, %92, %c0_i64, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %92, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %92, %c302691568_i64, %92, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %92, %c0_i64, %92, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %92, %92, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %92, %c0_i64, %c302691568_i64, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %92, %c0_i64, %92, %92, %92, %92, %c302691568_i64, %c0_i64, %92, %92, %c302691568_i64, %c302691568_i64, %92, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %c302691568_i64, %92, %c0_i64, %c0_i64, %92, %92, %c0_i64, %92, %c302691568_i64, %92, %92, %92, %92, %92, %c0_i64, %92, %92, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %92, %92, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %92, %92, %c0_i64, %c0_i64, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %92, %c0_i64, %c0_i64, %92, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %92, %92, %92, %c0_i64, %c0_i64, %c302691568_i64, %92, %c302691568_i64, %c302691568_i64, %92, %92, %92, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %c0_i64, %c0_i64, %92, %c0_i64, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %92, %c0_i64, %c0_i64, %92, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %92, %c0_i64, %c0_i64, %92, %92, %92, %c302691568_i64, %92, %92, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %92, %92, %c0_i64, %92, %92, %c302691568_i64, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %92, %92, %c0_i64, %c0_i64, %92, %c0_i64, %c0_i64, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %92, %c0_i64, %c302691568_i64, %92, %92, %92, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %92, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %92, %c302691568_i64, %92, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %92, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %92, %92, %c302691568_i64, %c0_i64, %c0_i64, %92, %92, %c0_i64, %92, %c0_i64, %92, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %92, %c0_i64, %c0_i64, %92, %c0_i64, %c0_i64, %92, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %92, %c0_i64, %c302691568_i64, %c0_i64, %92, %92, %c0_i64, %c0_i64, %92, %c0_i64, %c0_i64, %c0_i64, %92, %c302691568_i64, %92, %c302691568_i64, %c0_i64, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %92, %92, %c302691568_i64, %92, %c0_i64, %92, %c302691568_i64, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %92, %92, %92, %c0_i64, %92, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %92, %92, %c0_i64, %c0_i64, %92, %92, %c0_i64, %c302691568_i64, %92, %c302691568_i64, %c0_i64, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %92, %92, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %92, %c302691568_i64, %92, %c302691568_i64, %92, %c302691568_i64, %92, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %92, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %92, %92, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %92, %92, %92, %c0_i64, %92, %92, %92, %c0_i64, %c0_i64, %c0_i64, %92, %c0_i64, %92, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %92, %c302691568_i64, %92, %c302691568_i64, %c302691568_i64, %92, %92, %c0_i64, %92, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %c0_i64, %92, %c0_i64, %92, %c0_i64, %92, %c302691568_i64, %92, %c302691568_i64, %92, %c0_i64, %c0_i64, %92, %92, %92, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %92, %92, %c0_i64, %92, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %92, %92, %c0_i64, %c0_i64, %92, %c0_i64, %c0_i64, %92, %92, %92, %92, %92, %c0_i64, %c302691568_i64, %92, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %92, %c0_i64, %92, %92, %c0_i64, %c302691568_i64, %c0_i64, %92, %92, %c302691568_i64, %92, %c0_i64, %c302691568_i64, %92, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %92, %92, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %c0_i64, %92, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %c0_i64, %92, %92, %92, %92, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %92, %92, %c0_i64, %92, %92, %c0_i64, %92, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %92, %92, %c302691568_i64, %92, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %c0_i64, %92, %92, %c302691568_i64, %92, %92, %92, %c302691568_i64, %92, %c302691568_i64, %c302691568_i64, %c0_i64, %92, %92, %c0_i64, %92, %c302691568_i64, %92, %c302691568_i64, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %92, %92, %92, %92, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %92, %92, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %92, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %92, %92, %c302691568_i64, %92, %92, %c302691568_i64, %92, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %92, %c302691568_i64, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %92, %c302691568_i64, %92, %92, %c302691568_i64, %c0_i64, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %92, %92, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %c0_i64, %92, %c302691568_i64, %92, %c302691568_i64, %92, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %c0_i64, %c0_i64, %92, %c302691568_i64, %c0_i64, %92, %92, %c302691568_i64, %92, %92, %c302691568_i64, %92, %c0_i64, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %92, %c302691568_i64, %92, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %92, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %92, %92, %92, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %92, %c0_i64, %c302691568_i64, %c0_i64, %92, %92, %92, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %92, %92, %c0_i64, %92, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %92, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %92, %92, %c0_i64, %c0_i64, %c302691568_i64, %92, %c0_i64, %c0_i64, %92, %c302691568_i64, %92, %c0_i64, %92, %c0_i64, %c302691568_i64, %92, %c0_i64, %92, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %92, %92, %c0_i64, %c302691568_i64, %c0_i64, %92, %c0_i64, %92, %c0_i64, %c302691568_i64, %c0_i64, %92, %92, %92, %92, %92, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %92, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %c302691568_i64, %92, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %92, %c0_i64, %c0_i64, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %92, %c0_i64, %92, %92, %c302691568_i64, %92, %92, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %92, %92, %c302691568_i64, %c0_i64, %c0_i64, %92, %c302691568_i64, %92, %c0_i64, %92, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %92, %c302691568_i64, %c0_i64, %92, %92, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %92, %92, %c302691568_i64, %c0_i64, %c0_i64, %92, %c0_i64, %92, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %92, %92, %c0_i64, %c0_i64, %92, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %92, %92, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %92, %92, %c0_i64, %c302691568_i64, %c0_i64, %92, %92, %c302691568_i64, %92, %c0_i64, %c0_i64, %c302691568_i64, %92, %c302691568_i64, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %92, %c0_i64, %c0_i64, %92, %92, %92, %92, %92, %92, %c0_i64, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %92, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %92, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %92, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %92, %c0_i64, %c0_i64, %c0_i64, %92, %c0_i64, %c0_i64, %92, %92, %c302691568_i64, %c0_i64, %c0_i64, %92, %c0_i64, %c0_i64, %c302691568_i64, %92, %92, %c0_i64, %c0_i64, %c0_i64, %92, %c0_i64, %c302691568_i64, %92, %c0_i64, %c0_i64, %c302691568_i64, %92, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %92, %92, %c0_i64, %c302691568_i64, %92, %92, %92, %92, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %92, %c0_i64, %c302691568_i64, %92, %92, %92, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %92, %92, %92, %c0_i64, %c0_i64, %92, %c302691568_i64, %c0_i64, %92, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %92, %c302691568_i64, %92, %c0_i64, %c302691568_i64, %92, %c302691568_i64 : tensor<16x7x16xi64>
        %278 = index.sizeof
        %279 = vector.broadcast %c1_i16 : i16 to vector<7x7xi16>
        %280 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %130, %130, %279 : vector<16x7xi16>, vector<16x7xi16> into vector<7x7xi16>
        %281 = vector.transpose %130, [1, 0] : vector<16x7xi16> to vector<7x16xi16>
        %from_elements_62 = tensor.from_elements %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2 : tensor<7x7xf16>
        %cst_63 = arith.constant 1.000000e+00 : f16
        %282 = vector.transfer_read %alloc_6[%c10, %127], %cst_63 : memref<7x7xf16>, vector<7xf16>
        %283 = vector.create_mask %278, %54, %258 : vector<16x7x16xi1>
        %284 = math.sqrt %6 : tensor<16xf32>
        %alloc_64 = memref.alloc() : memref<7x16x7xf16>
        scf.yield %alloc_64 : memref<7x16x7xf16>
      }
      case 2 {
        %272 = vector.broadcast %c1_i16 : i16 to vector<1xi16>
        vector.transfer_write %272, %alloc_14[%127, %78, %c10] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<1xi16>, memref<7x16x7xi16>
        %273 = index.divs %c10, %c6
        %rank_58 = tensor.rank %splat_31 : tensor<7x16x7xi1>
        %274 = arith.subi %c1_i16, %c1_i16 : i16
        %275 = vector.create_mask %27, %rank_24 : vector<7x7xi1>
        %276 = tensor.empty() : tensor<16xi32>
        %277 = math.fpowi %6, %276 : tensor<16xf32>, tensor<16xi32>
        %278 = arith.addi %c619965047_i32, %c619965047_i32 : i32
        %279 = arith.minf %cst_2, %cst_2 : f16
        %280 = arith.minsi %c1951499111_i32, %c647337080_i32 : i32
        %281 = bufferization.to_memref %17 : memref<7x16x7xf16>
        %282 = arith.divsi %c706296327_i32, %c706296327_i32 : i32
        %283 = affine.min affine_map<(d0, d1, d2) -> (d2 - 2)>(%c11, %c5, %c11)
        %284 = vector.splat %true : vector<16x7x16xi1>
        %285 = vector.matrix_multiply %32, %32 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf32>, vector<7xf32>) -> vector<1xf32>
        %splat_59 = tensor.splat %cst_2 : tensor<16xf16>
        %286 = arith.ori %c647337080_i32, %c619965047_i32 : i32
        scf.yield %281 : memref<7x16x7xf16>
      }
      case 3 {
        %272 = math.log2 %9 : tensor<7x16x7xf32>
        %273 = vector.reduction <minsi>, %19 : vector<7xi16> into i16
        %274 = vector.multi_reduction <minsi>, %19, %19 [] : vector<7xi16> to vector<7xi16>
        %collapsed_58 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<16x7x16xi64> into tensor<112x16xi64>
        %275 = arith.divui %false, %false_23 : i1
        %276 = arith.cmpi ult, %true_3, %true : i1
        memref.store %cst_1, %alloc_8[%c0, %c13, %c5] : memref<7x16x7xf32>
        %277 = arith.minsi %c647337080_i32, %c706296327_i32 : i32
        %278 = arith.maxui %c0_i64, %92 : i64
        %279 = math.log %11 : tensor<7x16x7xf16>
        %collapsed_59 = tensor.collapse_shape %7 [[0, 1]] : tensor<7x7xi1> into tensor<49xi1>
        %280 = index.ceildivu %c0, %c12
        %281 = vector.reduction <maxsi>, %33 : vector<7xi1> into i1
        %282 = tensor.empty() : tensor<7x7xf32>
        %283 = linalg.matmul ins(%102, %18 : tensor<7x7xf32>, tensor<7x7xf32>) outs(%282 : tensor<7x7xf32>) -> tensor<7x7xf32>
        %false_60 = index.bool.constant false
        %cst_61 = arith.constant 3.000000e+03 : f16
        %alloc_62 = memref.alloc() : memref<7x16x7xf16>
        scf.yield %alloc_62 : memref<7x16x7xf16>
      }
      default {
        %272 = vector.reduction <maxf>, %34 : vector<7xf32> into f32
        %273 = vector.broadcast %false_23 : i1 to vector<16x7xi1>
        %274 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %33, %69, %273 : vector<7xi1>, vector<7x16x7xi1> into vector<16x7xi1>
        %275 = index.add %78, %c14
        %276 = memref.load %alloc_9[%c6, %c6] : memref<7x7xf16>
        %collapsed_58 = tensor.collapse_shape %15 [[0, 1]] : tensor<7x7xi32> into tensor<49xi32>
        %277 = affine.max affine_map<(d0, d1, d2, d3) -> ((d2 - 60) floordiv 128, d3, d3)>(%rank_28, %54, %125, %c0)
        %278 = affine.load %alloc_18[%c13] : memref<16xf16>
        %279 = math.exp2 %expanded : tensor<7x16x7x1xf16>
        %280 = index.maxu %100, %rank_28
        %281 = arith.ceildivsi %false_23, %true : i1
        %282 = arith.minf %278, %cst_5 : f16
        %283 = arith.ori %true, %true : i1
        %284 = arith.xori %c302691568_i64, %92 : i64
        %285 = vector.broadcast %92 : i64 to vector<1x1xi64>
        vector.transfer_write %285, %alloc_16[%c13, %275, %rank_26] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<1x1xi64>, memref<7x16x7xi64>
        %286 = arith.muli %c1480477621_i32, %c1951499111_i32 : i32
        %287 = arith.minsi %false_0, %false_0 : i1
        %alloc_59 = memref.alloc() : memref<7x16x7xf16>
        scf.yield %alloc_59 : memref<7x16x7xf16>
      }
      %261 = index.floordivs %71, %rank
      %262 = arith.ori %false_33, %false_33 : i1
      %263 = arith.floordivsi %false_0, %false_33 : i1
      %264 = math.log2 %18 : tensor<7x7xf32>
      %265 = arith.remf %cst_4, %cst_30 : f32
      %266 = math.round %collapsed : tensor<112x7xf32>
      %cst_57 = arith.constant 1.000000e+00 : f32
      %267 = vector.transfer_read %122[%c5], %cst_57 : tensor<16xf32>, vector<f32>
      %268 = affine.apply affine_map<(d0, d1, d2) -> (d2 * 2)>(%c11, %rank_35, %c7)
      %269 = arith.ceildivsi %c647337080_i32, %c1951499111_i32 : i32
      %270 = index.floordivs %c7, %c12
      %271 = arith.cmpi uge, %c0_i64, %c0_i64 : i64
      scf.yield
    }
    default {
      %257 = math.powf %11, %17 : tensor<7x16x7xf16>
      %258 = bufferization.to_tensor %alloc_21 : memref<f16>
      %alloc_56 = memref.alloc() : memref<16xi16>
      %collapsed_57 = tensor.collapse_shape %cast [[0, 1]] : tensor<?x?xi64> into tensor<?xi64>
      affine.store %c1_i16, %alloc_14[%c3, %c9, %c10] : memref<7x16x7xi16>
      %259 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%1 : tensor<7x16x7xf32>) {
      ^bb0(%out: f32):
        %271 = arith.ori %true_3, %true : i1
        %272 = math.fma %10, %18, %18 : tensor<7x7xf32>
        %273 = arith.floordivsi %false_33, %false_23 : i1
        %274 = math.floor %1 : tensor<7x16x7xf32>
        %275 = vector.broadcast %out : f32 to vector<7x7xf32>
        %276 = vector.fma %275, %99, %275 : vector<7x7xf32>
        %277 = bufferization.to_tensor %alloc_22 : memref<16xi16>
        %278 = index.castu %c5 : index to i32
        %279 = math.fma %cst_2, %cst_2, %cst_5 : f16
        %280 = vector.create_mask %c10 : vector<16xi1>
        %281 = index.ceildivs %56, %c15
        %282 = affine.max affine_map<(d0, d1) -> ((d1 mod 2) mod 64, (d1 mod 2) mod 64 + 2, d1 + 128)>(%152, %c5)
        %283 = vector.broadcast %cst : f32 to vector<16x7x16xf32>
        %284 = vector.fma %283, %85, %114 : vector<16x7x16xf32>
        %285 = arith.xori %false_23, %false_23 : i1
        %splat_58 = tensor.splat %c619965047_i32 : tensor<7x7xi32>
        bufferization.dealloc_tensor %2 : tensor<7x16x7xi64>
        %286 = arith.subi %true, %false_23 : i1
        memref.copy %alloc_11, %alloc_13 : memref<7x7xi32> to memref<7x7xi32>
        %287 = math.absi %7 : tensor<7x7xi1>
        %288 = arith.muli %c619965047_i32, %c1480477621_i32 : i32
        affine.store %c0_i64, %alloc_20[%c4, %c7] : memref<7x7xi64>
        %289 = math.ceil %105 : tensor<7x16x7xf16>
        %290 = index.ceildivu %c3, %c3
        %collapsed_59 = tensor.collapse_shape %18 [[0, 1]] : tensor<7x7xf32> into tensor<49xf32>
        %291 = math.cttz %8 : tensor<16x7x16xi16>
        %292 = arith.maxf %cst_1, %cst : f32
        %293 = math.log10 %4 : tensor<7x16x7xf32>
        %294 = arith.cmpi sge, %c302691568_i64, %c0_i64 : i64
        %295 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 - d3, d1)>(%281, %290, %c2, %c10)
        %296 = index.ceildivs %c12, %rank_26
        %297 = vector.flat_transpose %34 {columns = 7 : i32, rows = 1 : i32} : vector<7xf32> -> vector<7xf32>
        %298 = arith.ori %false, %false_33 : i1
        %299 = index.divs %281, %c7
        linalg.yield %cst_4 : f32
      } -> tensor<7x16x7xf32>
      %260 = affine.min affine_map<(d0, d1, d2) -> (d1, d0 mod 64, -64)>(%56, %c4, %c14)
      %261 = vector.outerproduct %34, %32, %99 {kind = #vector.kind<minf>} : vector<7xf32>, vector<7xf32>
      %262 = memref.realloc %alloc : memref<16xi32> to memref<1xi32>
      %263 = affine.load %alloc_19[%c1] : memref<16xi16>
      %264 = arith.divf %cst_4, %cst_4 : f32
      %265 = math.ipowi %21, %21 : tensor<i16>
      %266 = math.tan %4 : tensor<7x16x7xf32>
      %267 = scf.while (%arg2 = %32) : (vector<7xf32>) -> vector<7xf32> {
        %271 = arith.ori %false, %true_25 : i1
        %272 = math.absi %0 : tensor<16x7x16xi16>
        %c0_i16_58 = arith.constant 0 : i16
        %c0_i16_59 = arith.constant 0 : i16
        %273 = vector.transfer_read %splat_29[%c6, %rank_24, %c10], %c0_i16_59 {permutation_map = affine_map<(d0, d1, d2) -> (0, d1)>} : tensor<7x16x7xi16>, vector<7x16xi16>
        %collapsed_60 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<16x7x16xi32> into tensor<112x16xi32>
        %274 = vector.insert %34, %99 [4] : vector<7xf32> into vector<7x7xf32>
        %275 = math.cos %collapsed_36 : tensor<112x7xf16>
        %276 = math.absf %9 : tensor<7x16x7xf32>
        %277 = arith.maxui %c1480477621_i32, %c1138262349_i32 : i32
        scf.condition(%false_33) %32 : vector<7xf32>
      } do {
      ^bb0(%arg2: vector<7xf32>):
        %271 = arith.remsi %false, %false_33 : i1
        %expanded_58 = tensor.expand_shape %transposed [[0], [1, 2]] : tensor<7x7xf32> into tensor<7x7x1xf32>
        %272 = index.floordivs %24, %c12
        %273 = math.cttz %263 : i16
        %274 = affine.max affine_map<(d0, d1) -> ((d0 ceildiv 8) mod 4)>(%c0, %c13)
        %275 = math.absf %6 : tensor<16xf32>
        %276 = vector.insertelement %c706296327_i32, %128[] : vector<i32>
        %277 = arith.remsi %false_33, %true : i1
        %278 = arith.maxui %c619965047_i32, %c647337080_i32 : i32
        %279 = index.sizeof
        %280 = vector.broadcast %c0_i64 : i64 to vector<7xi64>
        %281 = vector.maskedload %alloc_16[%c3, %c15, %c4], %33, %280 : memref<7x16x7xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
        %282 = bufferization.to_memref %258 : memref<f16>
        %283 = vector.extract %98[6] : vector<7x7xf32>
        %284 = arith.andi %false, %false_0 : i1
        %285 = tensor.empty() : tensor<7x7xi32>
        %286 = linalg.matmul ins(%15, %15 : tensor<7x7xi32>, tensor<7x7xi32>) outs(%285 : tensor<7x7xi32>) -> tensor<7x7xi32>
        %287 = math.absf %cst : f32
        scf.yield %32 : vector<7xf32>
      }
      %268 = math.cos %4 : tensor<7x16x7xf32>
      %269 = tensor.empty() : tensor<7x7xf32>
      %270 = linalg.matmul ins(%18, %10 : tensor<7x7xf32>, tensor<7x7xf32>) outs(%269 : tensor<7x7xf32>) -> tensor<7x7xf32>
    }
    %158 = vector.broadcast %cst_1 : f32 to vector<7x1xf32>
    %159 = vector.transfer_write %158, %4[%78, %c13, %c7] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<7x1xf32>, tensor<7x16x7xf32>
    %extracted = tensor.extract %1[%c0, %c4, %c5] : tensor<7x16x7xf32>
    %expanded_37 = tensor.expand_shape %4 [[0], [1], [2, 3]] : tensor<7x16x7xf32> into tensor<7x16x7x1xf32>
    %160 = vector.insertelement %c1_i16, %19[%c7 : index] : vector<7xi16>
    %161 = arith.maxsi %c619965047_i32, %c1138262349_i32 : i32
    affine.store %c1_i16, %alloc_14[%c0, %c15, %c12] : memref<7x16x7xi16>
    %162 = vector.shuffle %130, %130 [5, 8, 9, 10, 12, 13, 15, 17, 18, 22, 23, 24, 28, 29, 30, 31] : vector<16x7xi16>, vector<16x7xi16>
    %alloc_38 = memref.alloc() : memref<16xf16>
    memref.copy %alloc_18, %alloc_38 : memref<16xf16> to memref<16xf16>
    %163 = math.floor %105 : tensor<7x16x7xf16>
    %164 = math.absf %18 : tensor<7x7xf32>
    %165 = math.absi %splat_29 : tensor<7x16x7xi16>
    %166 = vector.extract_strided_slice %158 {offsets = [3], sizes = [4], strides = [1]} : vector<7x1xf32> to vector<4x1xf32>
    %167 = vector.broadcast %rank : index to vector<7xindex>
    %168 = vector.broadcast %92 : i64 to vector<7xi64>
    vector.scatter %alloc_20[%c0, %c2] [%167], %33, %168 : memref<7x7xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
    %169 = vector.insertelement %false_23, %33[%rank_24 : index] : vector<7xi1>
    %170 = math.fma %9, %4, %4 : tensor<7x16x7xf32>
    %171 = arith.maxf %cst_30, %cst_4 : f32
    %collapsed_39 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<7x16x7xf32> into tensor<112x7xf32>
    %c0_i16 = arith.constant 0 : i16
    %c0_i16_40 = arith.constant 0 : i16
    %172 = vector.transfer_read %alloc_19[%c11], %c0_i16_40 : memref<16xi16>, vector<i16>
    %from_elements = tensor.from_elements %extracted, %cst_1, %cst, %cst_4, %cst, %cst_1, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst_1, %cst_30, %cst_1, %cst_1, %cst_4, %extracted, %cst_1, %cst_1, %extracted, %cst_4, %cst_4, %extracted, %cst_1, %extracted, %cst_1, %cst_4, %cst_4, %cst, %cst_4, %cst, %cst_4, %extracted, %cst_4, %extracted, %cst_1, %cst_1, %extracted, %cst_1, %cst_30, %extracted, %extracted, %extracted, %cst_4, %extracted, %cst_1, %cst_4, %extracted, %cst_1 : tensor<7x7xf32>
    %173 = math.log %cst_2 : f16
    %174 = vector.broadcast %c0_i16 : i16 to vector<i16>
    %175 = vector.transfer_write %174, %5[%54] : vector<i16>, tensor<16xi16>
    %176 = index.casts %c15 : index to i32
    memref.store %cst, %alloc_8[%c5, %c5, %c0] : memref<7x16x7xf32>
    %177 = math.ipowi %8, %0 : tensor<16x7x16xi16>
    %splat_41 = tensor.splat %cst_4 : tensor<16x7x16xf32>
    %178 = arith.maxsi %false_33, %false_0 : i1
    %179 = vector.broadcast %cst_5 : f16 to vector<7x7xf16>
    %expanded_42 = tensor.expand_shape %splat_29 [[0], [1], [2, 3]] : tensor<7x16x7xi16> into tensor<7x16x7x1xi16>
    %180 = vector.bitcast %32 : vector<7xf32> to vector<7xi32>
    %181 = index.divu %c7, %c2
    memref.copy %alloc_9, %alloc_6 : memref<7x7xf16> to memref<7x7xf16>
    %182 = arith.minsi %false_23, %false_23 : i1
    %183 = memref.alloca_scope  -> (i1) {
      %257 = arith.divui %c647337080_i32, %c647337080_i32 : i32
      memref.store %c0_i16, %alloc_19[%c7] : memref<16xi16>
      %258 = vector.broadcast %c13 : index to vector<1xindex>
      %259 = vector.broadcast %false_33 : i1 to vector<1xi1>
      %260 = vector.broadcast %92 : i64 to vector<1xi64>
      vector.scatter %alloc_16[%c0, %c11, %c5] [%258], %259, %260 : memref<7x16x7xi64>, vector<1xindex>, vector<1xi1>, vector<1xi64>
      %261 = arith.ori %false_0, %false_33 : i1
      %262 = affine.max affine_map<(d0, d1, d2) -> ((d2 + 64) ceildiv 4, -(-d2 + 1), d2 + 64, d2 mod 16 + d0 ceildiv 8)>(%148, %24, %c15)
      %263 = math.round %cst_30 : f32
      %c817751138_i32 = arith.constant 817751138 : i32
      %264 = memref.load %alloc_6[%c3, %c0] : memref<7x7xf16>
      %265 = arith.cmpi sge, %c302691568_i64, %92 : i64
      %266 = arith.minf %cst, %cst_30 : f32
      %267 = math.tanh %collapsed_36 : tensor<112x7xf16>
      %268 = math.powf %collapsed, %collapsed : tensor<112x7xf32>
      %269 = math.log1p %102 : tensor<7x7xf32>
      %270 = arith.addi %false_23, %false_33 : i1
      %271 = bufferization.to_tensor %alloc_6 : memref<7x7xf16>
      %extracted_56 = tensor.extract %75[%c4, %c13, %c0] : tensor<7x16x7xi64>
      %272 = arith.cmpi sle, %c1138262349_i32, %c706296327_i32 : i32
      %273 = math.ctpop %c1951499111_i32 : i32
      %274 = index.divu %c3, %c8
      %275 = arith.minsi %c0_i64, %c0_i64 : i64
      %276 = math.log %collapsed : tensor<112x7xf32>
      %277 = arith.shli %false_0, %false_0 : i1
      %from_elements_57 = tensor.from_elements %false, %true_3, %false, %true_3, %true, %false, %true_3, %false, %true_25, %true_25, %false, %true, %false_23, %false_23, %false_23, %false_23, %false_23, %true_3, %true_3, %false_0, %false_33, %true_25, %false_0, %false_33, %false, %false, %false_33, %true, %false, %false_23, %false_33, %true, %false, %true, %false_23, %true, %true_3, %false_0, %false, %true_25, %false_23, %true, %false_33, %true_25, %false_33, %false_23, %true, %false_23, %true_3, %true, %false_33, %false, %false_23, %true_3, %true_3, %false_33, %true_3, %false, %false_33, %false_33, %false_33, %false_33, %false_0, %false, %false, %false_33, %true, %false, %false_0, %false_0, %false, %true_3, %false_0, %false_33, %false_0, %false_0, %true, %true, %false_0, %false_23, %false, %true, %false_33, %true_3, %true_25, %false_0, %false_23, %false, %true, %true, %false_33, %false, %true, %true_3, %true_3, %false_0, %false, %true_3, %false_0, %true_3, %false_33, %true_3, %false, %false, %false_33, %false_0, %true_25, %false_0, %false_23, %false_23, %true_25, %false_0, %false_0, %false, %true, %false_23, %true_25, %true_25, %true_25, %true_25, %false_23, %true_3, %false_23, %false, %true, %false_0, %true_25, %true_3, %true_25, %false_33, %false_33, %false_23, %true, %true_25, %true, %false_0, %false_33, %false_0, %true_3, %true_25, %true_3, %true, %false, %false_0, %true_3, %false_0, %true, %true_25, %false_0, %false_0, %true, %true_25, %false_23, %true_25, %false_33, %false_23, %true, %false_0, %true_3, %false_23, %false_33, %false_0, %true_25, %false_23, %true_3, %false_23, %false_33, %false, %false, %true_25, %true, %true_25, %false_0, %false_23, %false, %false_23, %false_33, %true, %false_0, %false, %true_3, %true_25, %true_25, %true, %false, %false_23, %false_23, %false, %true_3, %false_23, %true_3, %true_25, %true_25, %false_23, %false_23, %false_33, %false_23, %true_25, %false_23, %true_25, %false, %true_3, %true, %true_3, %true_25, %true_3, %false_33, %false_33, %true_25, %false_33, %true_3, %true_25, %true_25, %false_0, %false_0, %true, %false_23, %true_3, %false, %false_0, %true_25, %true_3, %false_0, %false, %false_33, %true, %false_33, %true_25, %false, %true, %false_0, %false, %true_25, %false, %true, %true_25, %false_23, %false_23, %false_0, %true_3, %true, %false, %false, %true, %false_0, %false_0, %false_23, %true, %true_25, %true_25, %false_33, %true, %true_3, %true, %true_3, %false_23, %false_0, %false_0, %true_25, %false_0, %false_23, %false_23, %false_0, %false_0, %true_25, %false, %true_25, %true, %true, %false_33, %true, %false_33, %true_25, %false_23, %false_33, %false, %false_33, %true_3, %false_33, %false_23, %false_23, %true_3, %false_33, %false_0, %false, %false, %false_23, %false, %false_0, %false_23, %true_3, %false, %false_33, %true_3, %true_3, %true_3, %false, %false, %false, %false_33, %true, %true_3, %false, %true, %false, %false_33, %false_0, %true_25, %true, %true_3, %false_23, %false, %false_33, %true, %true_3, %false_33, %true_3, %false_33, %true_25, %false_0, %true_25, %true, %false_0, %true_3, %false_0, %true_25, %true, %true_3, %false_23, %false_33, %false_33, %false_23, %true_25, %true_25, %false_0, %false_23, %false_23, %false, %false_23, %false, %false_23, %true_25, %false_23, %false_0, %false_23, %true_3, %false, %true, %true_25, %true_3, %true_25, %true_25, %true_3, %true, %false_33, %true, %false_0, %false_23, %true_3, %false_33, %true_25, %false_23, %true_3, %false_23, %true, %false, %true_25, %true_25, %false_0, %false_0, %false_0, %false, %true, %false_33, %false, %false_33, %false, %false_0, %false_23, %false_33, %false_33, %false_33, %true_3, %false_23, %true_3, %true_25, %false_33, %false, %false_33, %false, %true_25, %true, %true, %false_23, %true, %true_3, %false_23, %true_25, %true_25, %false_33, %true, %true_25, %true_25, %false_0, %true_3, %false_33, %true_25, %false_33, %false, %false_23, %false, %false_23, %false, %true_3, %false, %false, %false_0, %true_3, %false_0, %true, %false_23, %false, %true_3, %false_33, %true_25, %false, %false_33, %false_0, %true_25, %false_33, %true_25, %false_23, %true_3, %false, %false_0, %false_33, %true, %true, %false, %true_25, %false, %false, %true_25, %true, %false_0, %false_0, %false_33, %false_33, %false, %true, %true_25, %true_25, %false, %false_23, %false_0, %false_0, %true_3, %true_3, %true_25, %true, %false, %false_23, %false_23, %true_3, %false_0, %true, %false_0, %false_23, %true_25, %true_3, %false_23, %false_23, %false, %false_0, %false_33, %true, %false_0, %true_3, %false_23, %false_23, %true, %false_0, %false_23, %false_33, %false_23, %false_0, %false_0, %true, %true_25, %false_33, %true, %false, %false_0, %false_23, %false_0, %false, %false_33, %false_0, %false_0, %true_25, %false_23, %false_23, %true_3, %true, %false_0, %true_25, %true_25, %true, %true, %false_33, %false_33, %false_0, %true_3, %false_0, %true_3, %true_3, %false_33, %true_25, %true_25, %false, %true_25, %true_25, %false_23, %true_25, %false_0, %false_33, %false_23, %true, %false_0, %true_25, %true, %true, %false_33, %false_33, %true_25, %true_25, %false_0, %false, %false, %true, %false_0, %false_23, %true_25, %false, %true_3, %false_0, %false_33, %false, %false, %false_23, %false_33, %false_33, %true_3, %true_25, %true_25, %true_25, %false_33, %true, %true, %false_23, %false, %true, %false_23, %true_3, %false_0, %true_3, %false, %true, %true, %false, %true_25, %false_23, %true_3, %true_25, %false, %true, %false_0, %false_33, %true_25, %false_23, %false_23, %true_25, %false_23, %false_33, %false_23, %true_3, %false_23, %true_3, %true_25, %true_25, %false, %true, %true_3, %false_0, %false_23, %false_23, %true_3, %false, %false_0, %false_23, %true_25, %true, %true, %false_23, %false_23, %true, %false, %true_25, %false_33, %false_0, %true_25, %false, %true, %false, %true_25, %false_0, %false_33, %false_23, %true_25, %true_3, %true, %true_25, %true_3, %false_0, %true_3, %false, %false_0, %true, %false_23, %false_33, %true, %true_3, %false_0, %true_3, %true_3, %true, %false, %true, %false_33, %false, %true_25, %false_0, %false, %true_3, %false_33, %true_3, %true_25, %true_3, %true_3, %false, %false, %true_3, %true_3, %false_33, %true_3, %true, %true, %false_0, %true_3, %false, %true, %true, %false_23, %true, %false_23, %false, %false_0, %false_0, %true, %true_25, %true_25, %false_23, %false_0, %false_0, %true_3, %false_33, %true_3, %true_3, %false_23, %false, %false_23, %true, %false, %false, %false_0, %false_0, %false_0, %false_33, %true, %false, %false_33, %false, %false, %false_23, %true_3, %false_33, %false, %true, %false_0, %false_33, %true_3, %true_3, %false_23, %true_25, %true, %false, %false_23, %false, %false_23, %false_33, %false, %true, %true_3, %true_25, %true_25, %false_33, %true_3, %false, %true_3, %false_0, %false, %false_0, %true_3, %false_33, %false_23, %false_33, %false_33, %false, %false_23, %false_33, %false_23, %false, %false, %false, %false_0, %false_33, %true, %false_0, %false, %false, %false_23, %false_0, %false_33, %true_25, %false, %false_23, %true, %true_25, %true_25, %false_23, %false_0, %false, %true_25, %true_25, %true, %false_0, %true_3, %false_0, %true_25, %true, %true_3, %true_3, %true_25, %false_23, %false, %false_0, %true_25, %true_25, %false_33, %true_25, %false_23, %false_33, %true_3, %true, %true_25, %true_3, %false_33, %false_33, %true, %true, %false_23, %true_25, %false_0, %true, %true_25, %true_25, %true, %false_0, %true, %true_25, %false_0, %false_23, %false_0, %false_33, %false_33, %true, %true_25, %false, %false_33, %false_33, %true_25, %true_3, %true_25, %true, %false, %true_25, %false_0, %true_25, %true_25, %true_25, %false_33, %true_25, %true_25, %true_25, %false_23, %false_23, %true_3, %false_33, %true_25, %false, %false_0, %true_25, %true_3, %true_25, %false_0, %true_3, %false, %false, %true_3, %true, %true_25, %false_23, %false_33, %false_0, %false, %false_0, %true, %false, %false_33, %false_23, %false_0, %false_0, %false_0, %true_3, %true_25, %true_3, %true_3, %false_23, %true_3, %true, %true, %true_3, %true_25, %false_33, %true, %true_3, %true_25, %false, %false_23, %false_23, %false, %true, %false_0, %true, %true, %false_33, %true_25, %false, %false_33, %false_33, %false_23, %false, %false_23, %true_3, %false, %false_23, %false, %true, %false_33, %false_0, %false_0, %false_33, %true_25, %true_3, %false_0, %true, %false, %false_23, %false_23, %false_23, %true_3, %true, %true, %false_23, %true, %false_0, %true, %false_0, %true_3, %true_25, %false_33, %true_25, %false_23, %true, %true_3, %true_3, %false_33, %false, %false_0, %false_0, %false_33, %true_25, %true, %false_0, %true_25, %true_3, %false_0, %false_0, %false_33, %false_0, %true_3, %false_33, %false_23, %false_23, %false, %false_23, %false_0, %false, %false_0, %false, %true, %false_23, %false_0, %true, %false_33, %false_23, %true, %false_33, %false_33, %false_33, %true, %true_3, %false, %true, %true_25, %true, %true_3, %true, %false, %false_0, %false_0, %true, %false_33, %false_23, %true_25, %true, %true_3, %true_3, %false, %false_33, %false_0, %true, %true, %false_33, %false, %false_0, %false_0, %false_0, %true, %true_3, %true_25, %false, %true_25, %true, %true_3, %true, %false_23, %false_0, %true_3, %false, %false_33, %false_23, %true, %false_0, %false, %true_25, %true_3, %false_23, %false, %false_33, %false_23, %true_3, %false_0, %false_0, %true_25, %true_25, %true_3, %true_25, %true_25, %true_3, %true_3, %true_25, %false_23, %false_33, %false, %false_0, %false_23, %false_0, %true, %false_33, %false, %true_3, %false_33, %false, %false_33, %false_0, %true_25, %true, %true_3, %false_23, %true_3, %false, %false_0, %false_0, %false, %true_25, %false_0, %true, %false_0, %false_23, %true, %false_33, %false_0, %false_23, %true, %true_3, %true, %false_33, %false, %true, %true_3, %true, %true_3, %true_25, %false, %true, %false_23, %true_25, %false_23, %true_3, %false_33, %true_25, %true_25, %false, %false, %false_33, %false_23, %false_0, %false_23, %true_25, %false_0, %false_33, %true_25, %false_23, %true, %false_33, %true, %false_33, %false, %false_33, %true, %false_23, %true_25, %true_25, %false_33, %false, %false_33, %false_33, %false_33, %true_25, %true_3, %false_33, %true, %false_23, %false_33, %false_0, %true, %true_25, %true_3, %false, %false_23, %true_25, %false_23, %true_3, %false_23, %false_33, %true_25, %false, %false, %true_25, %true_25, %true_3, %true, %false_33, %true_25, %false_0, %true_3, %true_3, %false, %false_33, %true_25, %true_3, %false_0, %true_25, %true, %false_33, %false, %true_3, %false_23, %false_23, %false_23, %false, %false, %true, %true, %true, %true, %true_25, %false_0, %false_23, %false, %false_33, %false_33, %false_0, %true, %true, %false_0, %false_23, %false_0, %false, %false, %true_3, %false_33, %false_33, %false, %true_25, %false_33, %false_33, %true_3, %false_23, %true, %false_23, %true_25, %true_3, %true_25, %false, %false_0, %false_0, %true_25, %true, %true_3, %false_33, %false_23, %false, %false_33, %true, %false, %true_3, %true_3, %true, %true_25, %false_23, %true, %true_3, %false_33, %true, %false_33, %true, %true_25, %false_33, %false_0, %true, %false_0, %true_25, %true, %true, %false_33, %false_33, %false_0, %true_3, %false_0, %true, %true_3, %false_33, %false_23, %false, %true_3, %true_3, %true_3, %false_0, %false_0, %true_25, %false_0, %false_0, %false_23, %true_3, %false_0, %true, %false, %true_25, %true_3, %false_33, %false_33, %false_33, %false_0, %false_33, %false_33, %false_33, %true_3, %false_23, %true_25, %false_0, %true, %false_33, %true, %true_25, %false_0, %true, %false_33, %true, %false, %true, %false_0, %false, %true_25, %true_25, %false_33, %true, %true, %false_23, %true_25, %false, %true_3, %false, %true_25, %false_0, %false, %true_25, %true, %false_0, %false, %false_0, %false, %false_0, %false, %true, %false, %false_33, %true_25, %false_23, %true_3, %false, %false_23, %false, %false_0, %false_33, %true, %true, %false_0, %false_23, %false_0, %true_25, %false_0, %false_33, %false_33, %false_0, %false, %false, %false_23, %false_33, %false, %false_0, %false_23, %false_23, %false_0, %true, %false_23, %true_25, %false_0, %false_33, %true, %false_23, %false, %false, %true, %false_23, %false, %false_0, %true_3, %false_33, %true, %true_25, %false_0, %true, %false_0, %true, %false, %true_3, %true_25, %true_25, %true_3, %false, %true_3, %false_33, %true, %true, %false, %true, %true_3, %false_0, %false_33, %false_33, %true_3, %false_23, %false_23, %true_3, %false_33, %false_33, %true, %true, %false_23, %true_25, %false_0, %true_3, %false_0, %false_33, %true_25, %false_33, %false, %true_25, %false_0, %true, %true_3, %false_33, %false_23, %true_3, %true, %false_23, %true_3, %false, %false, %false, %false_33, %false_0, %true_3, %true, %false_0, %true_25, %true_25, %false_33, %false_33, %false_23, %false, %true_3, %false_23, %true_3, %false_23, %false, %true_25, %true, %false, %false_23, %true, %false_0, %false_0, %false, %false_0, %false_33, %true_25, %true, %false, %true_3, %false_0, %false, %true_3, %false, %true_25, %false_33, %true_25, %false_0, %true_3, %true_25, %true, %false_33, %false_0, %false_0, %false_23, %false_23, %true, %true, %false_0, %false_0, %true_25, %false, %true_3, %false_33, %false_33, %true, %false_23, %false, %false_23, %true_3, %true, %false_23, %true_25, %false_0, %true_3, %false_23, %false, %false_0, %true, %false_33, %false_0, %false_23, %true_25, %false, %true, %false_23, %false_23, %false_0, %false_23, %false, %true_3, %true, %true_25, %true_3, %false, %true_3, %false_0, %false_0, %true, %true, %true_25, %false_33, %false_0, %false_33, %false_23, %false_33, %true_25, %false_23, %false, %false_23, %false, %false_33, %false_23, %false_0, %true, %true_25, %false, %false_23, %false_33, %false_33, %true_25, %true, %false_0, %false, %true, %true, %false_0, %false_0, %false, %true, %true_25, %true, %true_25, %true_3, %false_23, %false, %false_33, %true_25, %false_0, %true_3, %true_3, %true_25, %false_23, %true, %false_23, %false_0, %true, %true_25, %false_33, %true_3, %false_33, %true, %false_33, %true_3, %false_0, %false_33, %false_0, %true, %false_33, %false_0, %false, %true_25, %false_0, %false_0, %false_23, %false_33, %false_33, %false_33, %false, %true, %false_33, %false_33, %true_25, %false_0, %false_0, %true_3, %false_0, %true, %false_33, %false, %true, %false, %false_23, %false_0, %false_0, %false, %true, %false_23, %false_0, %true, %false_23, %true, %false_23, %false_23, %false_23, %true, %true, %false_23, %false_0, %true, %true_25, %false_33, %false_0, %false_23, %false_23, %true, %false, %true_3, %true_3, %false_33, %true_25, %false_23, %false_23, %false_23, %true, %false_33, %false_0, %true_25, %false_23, %true, %false_33, %true_25, %false_33, %true_3, %false_23, %false_0, %true_3, %false_0, %true, %true_25, %true_25, %false, %false_0, %true_25, %false, %true_3, %true, %false, %false_0, %false_33, %true, %true, %true_25, %false, %true_25, %true_25, %false, %false_23, %false_0, %true, %true_3, %false, %true_25, %true, %true, %false_23, %true_25, %true_25, %false, %false_23, %true, %true_3, %false_0, %false, %true, %false, %true_3, %true_3, %false_0, %false_0, %false_0, %false, %true, %true_3, %true_3, %true, %false_0, %false_23, %false_0, %true, %true, %true_25, %false_33, %false, %false_33, %false, %false_23, %false_33, %true, %false_33, %false_0, %false_23, %true_3, %true_25, %true_25, %true_3, %false_33, %true, %false, %false_0, %false_0, %false_23, %true_3, %false, %true_3, %false_23, %false_0, %true, %false, %true, %true, %true, %false_33, %false_33, %false_33, %true_25, %false_33, %false, %true, %false_0, %false_23, %false_0, %false, %true_3, %true, %true, %false_23, %false_33, %true_3, %true, %false_33, %true, %false_33, %false_0, %false, %false_23, %true_3, %false_23, %true_25, %true, %false_33, %false_23, %true_3, %false_33, %true_25, %true_3, %true_25, %false_0, %false_33, %true, %true, %false_23, %true, %true_25, %true, %true_25, %true, %false, %true_3, %false_23, %false_23, %true, %false_0, %false_33, %false, %false, %true_25, %false_0, %true_25, %false_23, %false_33, %false_23, %true, %false_33, %false_23, %false_33, %false_33, %false_0, %false_0, %false_33, %true, %true_3, %false_33, %false_23, %false_23, %false_0, %false_0, %true_25, %false_33, %true_3, %true, %true, %true_25, %false, %false_23, %true_25, %false_23, %false_23, %true_25, %true_3, %true_25, %true_25, %false_33, %true_3, %false_0, %false_0, %true, %true, %false_0, %false_0, %false_0, %true_25, %true_3, %false, %true_3, %false_23, %true_25, %false_33, %false, %false_0, %true, %true_3, %true_3, %true, %true_3, %false, %true_3, %false_0, %true_25, %true, %false_33, %false_23, %false_23, %false_0, %true_3, %false, %false, %true_3, %false_23, %false_33, %true, %true_25, %true, %true_3, %true_25, %true, %true, %false_0, %false, %true_25 : tensor<16x7x16xi1>
      %278 = index.casts %rank_28 : index to i32
      %279 = arith.subi %c0_i16, %c1_i16 : i16
      %280 = vector.broadcast %cst_30 : f32 to vector<1xf32>
      vector.transfer_write %280, %alloc_10[%78, %125, %c2] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<1xf32>, memref<7x16x7xf32>
      %281 = math.log2 %4 : tensor<7x16x7xf32>
      %282 = memref.alloca_scope  -> (memref<7x7xi16>) {
        memref.copy %alloc_9, %alloc_6 : memref<7x7xf16> to memref<7x7xf16>
        %287 = index.ceildivs %c11, %274
        %rank_58 = tensor.rank %5 : tensor<16xi16>
        %288 = index.sub %c10, %c7
        affine.store %cst_5, %alloc_6[%c11, %c13] : memref<7x7xf16>
        %289 = arith.ori %false_23, %false : i1
        %290 = vector.flat_transpose %34 {columns = 7 : i32, rows = 1 : i32} : vector<7xf32> -> vector<7xf32>
        %true_59 = index.bool.constant true
        %291 = vector.multi_reduction <add>, %104, %33 [0, 2] : vector<16x7x16xi1> to vector<7xi1>
        %292 = math.log1p %extracted : f32
        %293 = arith.ori %c1951499111_i32, %c1480477621_i32 : i32
        %294 = arith.ori %true_25, %true_3 : i1
        %295 = vector.load %alloc_15[%c3, %c1] : memref<7x7xi16>, vector<16x7x16xi16>
        %296 = vector.extract_strided_slice %34 {offsets = [0], sizes = [2], strides = [1]} : vector<7xf32> to vector<2xf32>
        %297 = math.cttz %15 : tensor<7x7xi32>
        %298 = arith.ori %c1_i16, %c0_i16 : i16
        %299 = arith.minsi %false_0, %true : i1
        %alloc_60 = memref.alloc() : memref<16x7x16xi64>
        %300 = arith.cmpi ule, %c647337080_i32, %c1138262349_i32 : i32
        %301 = vector.reduction <or>, %180 : vector<7xi32> into i32
        %rank_61 = tensor.rank %21 : tensor<i16>
        %302 = math.ctlz %2 : tensor<7x16x7xi64>
        %303 = vector.shuffle %82, %82 [2, 3, 6, 8, 10, 11] : vector<7x16x7xi32>, vector<7x16x7xi32>
        %304 = index.ceildivu %c1, %c4
        %305 = math.ctlz %2 : tensor<7x16x7xi64>
        %306 = arith.remf %cst_30, %cst : f32
        %307 = math.cttz %true_3 : i1
        memref.store %cst_30, %alloc_10[%c5, %c8, %c5] : memref<7x16x7xf32>
        %308 = vector.shuffle %99, %98 [0, 2, 8, 10, 13] : vector<7x7xf32>, vector<7x7xf32>
        %309 = vector.broadcast %cst_2 : f16 to vector<7xf16>
        %310 = vector.multi_reduction <maxf>, %179, %309 [0] : vector<7x7xf16> to vector<7xf16>
        %311 = math.sqrt %122 : tensor<16xf32>
        %312 = math.absf %6 : tensor<16xf32>
        memref.alloca_scope.return %alloc_15 : memref<7x7xi16>
      }
      %283 = index.add %c5, %c4
      %284 = index.castu %c5 : index to i32
      %285 = bufferization.clone %alloc_12 : memref<7x7xi1> to memref<7x7xi1>
      %286 = arith.remf %cst_5, %cst_5 : f16
      memref.alloca_scope.return %false : i1
    }
    %collapsed_43 = tensor.collapse_shape %102 [[0, 1]] : tensor<7x7xf32> into tensor<49xf32>
    %184 = math.powf %collapsed_36, %collapsed_36 : tensor<112x7xf16>
    %185 = math.exp2 %4 : tensor<7x16x7xf32>
    %cst_44 = arith.constant 8.712000e+03 : f16
    %186 = vector.reduction <or>, %33 : vector<7xi1> into i1
    %187 = math.powf %cst_5, %cst_5 : f16
    %188 = vector.broadcast %cst_5 : f16 to vector<7xf16>
    %189 = vector.insert %188, %179 [5] : vector<7xf16> into vector<7x7xf16>
    %190 = arith.cmpi eq, %c1_i16, %c0_i16 : i16
    %191 = tensor.empty() : tensor<7x7xi1>
    %mapped_45 = linalg.map ins(%alloc_12, %alloc_12 : memref<7x7xi1>, memref<7x7xi1>) outs(%191 : tensor<7x7xi1>)
      (%in: i1, %in_56: i1) {
        %257 = math.log %expanded : tensor<7x16x7x1xf16>
        %258 = affine.min affine_map<(d0, d1, d2) -> (d2 + 128, d1 - 2, (d2 + 128) * 2, d1)>(%c12, %78, %c7)
        %alloc_57 = memref.alloc() : memref<7xi32>
        %259 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%12, %alloc_57 : tensor<16x7x16xi32>, memref<7xi32>) outs(%12 : tensor<16x7x16xi32>) {
        ^bb0(%in_62: i32, %in_63: i32, %out: i32):
          %283 = vector.shuffle %85, %85 [0, 5, 6, 9, 10, 11, 13, 15, 18, 19, 20, 21, 23, 25, 29, 31] : vector<16x7x16xf32>, vector<16x7x16xf32>
          %284 = vector.broadcast %cst_4 : f32 to vector<1xf32>
          %285 = vector.insert %284, %158 [5] : vector<1xf32> into vector<7x1xf32>
          %false_64 = index.bool.constant false
          %collapsed_65 = tensor.collapse_shape %2 [[0, 1], [2]] : tensor<7x16x7xi64> into tensor<112x7xi64>
          %true_66 = arith.constant true
          %286 = arith.shli %c1951499111_i32, %c619965047_i32 : i32
          affine.store %c1_i16, %alloc_19[%c13] : memref<16xi16>
          %287 = arith.andi %c619965047_i32, %c1951499111_i32 : i32
          %288 = math.copysign %105, %11 : tensor<7x16x7xf16>
          %289 = vector.extract %104[1] : vector<16x7x16xi1>
          %290 = vector.insert %34, %99 [3] : vector<7xf32> into vector<7x7xf32>
          %291 = arith.muli %false_64, %183 : i1
          %292 = vector.insertelement %c0_i16, %19[%27 : index] : vector<7xi16>
          %293 = arith.ceildivsi %false, %in : i1
          %294 = math.log2 %cst_30 : f32
          %rank_67 = tensor.rank %0 : tensor<16x7x16xi16>
          %295 = vector.bitcast %19 : vector<7xi16> to vector<7xi16>
          %296 = arith.muli %false_23, %false_33 : i1
          %297 = vector.transpose %32, [0] : vector<7xf32> to vector<7xf32>
          %298 = vector.multi_reduction <minf>, %99, %34 [1] : vector<7x7xf32> to vector<7xf32>
          %299 = index.divs %60, %c4
          %300 = math.log %collapsed_43 : tensor<49xf32>
          %false_68 = index.bool.constant false
          %301 = math.round %cst_5 : f16
          %302 = math.log10 %cst_1 : f32
          %303 = vector.broadcast %cst_4 : f32 to vector<16xf32>
          %304 = vector.fma %303, %303, %303 : vector<16xf32>
          %305 = vector.reduction <minf>, %304 : vector<16xf32> into f32
          %306 = math.absi %false_33 : i1
          %307 = math.sqrt %11 : tensor<7x16x7xf16>
          %308 = index.maxu %258, %c11
          %309 = index.ceildivs %308, %100
          %310 = tensor.empty() : tensor<7x16x7xi32>
          %311 = math.fpowi %11, %310 : tensor<7x16x7xf16>, tensor<7x16x7xi32>
          linalg.yield %c706296327_i32 : i32
        } -> tensor<16x7x16xi32>
        %260 = tensor.empty() : tensor<16x7x16xf16>
        %261 = index.maxs %c10, %c13
        %262 = index.castu %c7 : index to i32
        %263 = scf.while (%arg2 = %alloc_7) : (memref<7x7xf32>) -> memref<7x7xf32> {
          %283 = vector.shuffle %128, %128 [0, 1] : vector<i32>, vector<i32>
          %284 = vector.maskedload %alloc_22[%c12], %33, %19 : memref<16xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
          %285 = math.ceil %expanded_37 : tensor<7x16x7x1xf32>
          %286 = affine.min affine_map<(d0) -> ((d0 + d0 ceildiv 2) ceildiv 64, -d0)>(%148)
          %287 = affine.apply affine_map<(d0, d1) -> (d1 mod 64)>(%78, %rank_26)
          %288 = vector.insertelement %c0_i16, %174[] : vector<i16>
          %289 = arith.remf %cst_4, %cst_4 : f32
          %290 = index.divs %261, %c7
          scf.condition(%false_23) %alloc_7 : memref<7x7xf32>
        } do {
        ^bb0(%arg2: memref<7x7xf32>):
          %283 = index.ceildivu %181, %c1
          %284 = index.ceildivs %c0, %c14
          %splat_62 = tensor.splat %in_56 : tensor<16xi1>
          %285 = vector.broadcast %cst : f32 to vector<7xf32>
          %286 = vector.transfer_write %285, %10[%c3, %c13] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xf32>, tensor<7x7xf32>
          %287 = arith.divui %true_25, %true_3 : i1
          %288 = arith.maxsi %c706296327_i32, %c647337080_i32 : i32
          %289 = affine.max affine_map<(d0, d1) -> (d0 ceildiv 128, d0 * 4 + d1 + 64, d0 * 4 - 64)>(%54, %c13)
          %290 = affine.min affine_map<(d0, d1) -> (d1 + d1 * 4 + 1, d1 * 4, (-(d1 * 4 + 1)) ceildiv 4)>(%rank_26, %125)
          %rank_63 = tensor.rank %expanded_42 : tensor<7x16x7x1xi16>
          %291 = arith.remsi %c302691568_i64, %c302691568_i64 : i64
          %292 = vector.create_mask %127, %rank_63 : vector<7x7xi1>
          %293 = index.divs %181, %rank_24
          %294 = index.mul %c0, %c14
          %295 = math.exp2 %102 : tensor<7x7xf32>
          %296 = math.tan %splat_41 : tensor<16x7x16xf32>
          %c179249318_i64 = arith.constant 179249318 : i64
          scf.yield %alloc_7 : memref<7x7xf32>
        }
        %expanded_58 = tensor.expand_shape %3 [[0], [1, 2]] : tensor<7x7xi64> into tensor<7x7x1xi64>
        %false_59 = index.bool.constant false
        %264 = math.tanh %collapsed_43 : tensor<49xf32>
        memref.copy %alloc_13, %alloc_11 : memref<7x7xi32> to memref<7x7xi32>
        %265 = math.tanh %18 : tensor<7x7xf32>
        %266 = math.cos %expanded_37 : tensor<7x16x7x1xf32>
        %267 = scf.if %in_56 -> (i64) {
          %283 = arith.divsi %c706296327_i32, %c706296327_i32 : i32
          %284 = index.ceildivu %261, %125
          %285 = arith.negf %cst : f32
          %286 = arith.addi %true_25, %false : i1
          %287 = vector.broadcast %cst_2 : f16 to vector<f16>
          vector.transfer_write %287, %alloc_9[%c11, %c12] : vector<f16>, memref<7x7xf16>
          %288 = vector.maskedload %alloc_9[%c1, %c3], %33, %188 : memref<7x7xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
          %289 = arith.minsi %c1138262349_i32, %c647337080_i32 : i32
          %290 = arith.ceildivsi %c1138262349_i32, %c647337080_i32 : i32
          scf.yield %92 : i64
        } else {
          %283 = vector.extract_strided_slice %69 {offsets = [3, 0], sizes = [2, 10], strides = [1, 1]} : vector<7x16x7xi1> to vector<2x10x7xi1>
          %284 = arith.floordivsi %true_25, %false_23 : i1
          %285 = vector.multi_reduction <minf>, %34, %cst_1 [0] : vector<7xf32> to f32
          %286 = vector.broadcast %cst : f32 to vector<1xf32>
          %287 = vector.insert %286, %166 [3] : vector<1xf32> into vector<4x1xf32>
          %alloc_62 = memref.alloc() : memref<112x7xf32>
          memref.tensor_store %collapsed, %alloc_62 : memref<112x7xf32>
          %288 = arith.andi %183, %183 : i1
          affine.store %c619965047_i32, %alloc_13[%c13, %c6] : memref<7x7xi32>
          %289 = arith.maxsi %c619965047_i32, %c1138262349_i32 : i32
          scf.yield %92 : i64
        }
        %268 = vector.multi_reduction <mul>, %114, %85 [] : vector<16x7x16xf32> to vector<16x7x16xf32>
        %269 = arith.andi %c706296327_i32, %c706296327_i32 : i32
        %270 = arith.muli %c0_i16, %c1_i16 : i16
        %271 = math.log %collapsed_39 : tensor<112x7xf32>
        %272 = vector.insertelement %183, %33[%181 : index] : vector<7xi1>
        %273 = affine.max affine_map<(d0, d1) -> (d0 * 2 - 4, (d0 + 2) * 2, d0 + d0 * 2 - 4 - 8)>(%c0, %c7)
        %expanded_60 = tensor.expand_shape %from_elements [[0], [1, 2]] : tensor<7x7xf32> into tensor<7x7x1xf32>
        %274 = affine.min affine_map<(d0, d1, d2, d3) -> (((d2 - 1) ceildiv 16) * 2, d2 floordiv 2 + 64)>(%c1, %c8, %rank, %c9)
        %275 = memref.load %alloc_9[%c5, %c3] : memref<7x7xf16>
        %276 = math.absi %0 : tensor<16x7x16xi16>
        %277 = vector.maskedload %alloc_10[%c3, %c11, %c6], %33, %34 : memref<7x16x7xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
        %278 = arith.ceildivsi %in, %in : i1
        %279 = arith.maxui %c647337080_i32, %c1138262349_i32 : i32
        %280 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%0 : tensor<16x7x16xi16>) {
        ^bb0(%out: i16):
          %283 = vector.insertelement %cst_2, %188[%60 : index] : vector<7xf16>
          %284 = vector.extract_strided_slice %104 {offsets = [4], sizes = [2], strides = [1]} : vector<16x7x16xi1> to vector<2x7x16xi1>
          %285 = arith.cmpi sgt, %c619965047_i32, %c619965047_i32 : i32
          %from_elements_62 = tensor.from_elements %c302691568_i64, %c0_i64, %c0_i64, %267, %c0_i64, %267, %267, %c0_i64, %92, %92, %c302691568_i64, %92, %267, %267, %c302691568_i64, %267, %c302691568_i64, %c0_i64, %92, %c0_i64, %c0_i64, %c0_i64, %267, %92, %267, %c302691568_i64, %c0_i64, %c0_i64, %267, %c302691568_i64, %267, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %267, %c0_i64, %c0_i64, %92, %c0_i64, %267, %c302691568_i64, %c302691568_i64, %92, %92, %267, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %267, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %c302691568_i64, %c0_i64, %267, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %267, %c0_i64, %267, %267, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %92, %92, %c302691568_i64, %267, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %267, %92, %92, %c0_i64, %267, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %92, %92, %92, %267, %92, %267, %92, %c302691568_i64, %267, %c302691568_i64, %92, %267, %c0_i64, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %92, %92, %267, %267, %267, %c302691568_i64, %c302691568_i64, %c0_i64, %267, %c0_i64, %267, %c0_i64, %92, %c0_i64, %c302691568_i64, %267, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %267, %c302691568_i64, %92, %267, %92, %c302691568_i64, %c0_i64, %c0_i64, %267, %92, %c0_i64, %267, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %c0_i64, %92, %c0_i64, %92, %267, %267, %c302691568_i64, %c302691568_i64, %92, %267, %92, %267, %92, %92, %c0_i64, %92, %c302691568_i64, %92, %92, %c0_i64, %267, %c0_i64, %c0_i64, %267, %c302691568_i64, %267, %c302691568_i64, %c302691568_i64, %92, %267, %c0_i64, %c0_i64, %92, %267, %c302691568_i64, %c0_i64, %c0_i64, %267, %c302691568_i64, %92, %c302691568_i64, %92, %c302691568_i64, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %92, %92, %267, %267, %c0_i64, %267, %267, %92, %267, %92, %92, %267, %c302691568_i64, %267, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %92, %267, %c302691568_i64, %267, %267, %c0_i64, %92, %c0_i64, %267, %c302691568_i64, %267, %c0_i64, %92, %267, %92, %267, %92, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %267, %c0_i64, %267, %c0_i64, %c302691568_i64, %267, %267, %92, %92, %92, %c302691568_i64, %267, %267, %c302691568_i64, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %267, %c302691568_i64, %c0_i64, %92, %92, %267, %267, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %267, %c302691568_i64, %92, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %92, %267, %c0_i64, %92, %92, %267, %267, %267, %c302691568_i64, %c0_i64, %92, %267, %92, %92, %267, %267, %92, %c0_i64, %92, %c302691568_i64, %267, %92, %267, %92, %267, %c302691568_i64, %92, %c0_i64, %92, %c302691568_i64, %92, %92, %267, %c302691568_i64, %267, %c0_i64, %267, %c302691568_i64, %c302691568_i64, %267, %c0_i64, %c0_i64, %267, %c302691568_i64, %92, %267, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %267, %c0_i64, %267, %92, %c302691568_i64, %92, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %267, %267, %92, %c0_i64, %c0_i64, %c0_i64, %92, %c0_i64, %267, %c302691568_i64, %267, %92, %267, %c302691568_i64, %c0_i64, %267, %c302691568_i64, %c302691568_i64, %267, %92, %267, %c0_i64, %92, %267, %92, %c0_i64, %92, %c0_i64, %92, %c302691568_i64, %92, %267, %92, %c0_i64, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %c0_i64, %267, %c302691568_i64, %267, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %267, %c302691568_i64, %c0_i64, %267, %267, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %267, %c302691568_i64, %c0_i64, %c302691568_i64, %267, %267, %c0_i64, %267, %92, %267, %92, %267, %267, %c0_i64, %c0_i64, %267, %c0_i64, %267, %c302691568_i64, %267, %267, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %267, %267, %267, %92, %c0_i64, %c0_i64, %92, %c0_i64, %267, %92, %267, %92, %c0_i64, %92, %267, %92, %267, %c0_i64, %c0_i64, %267, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %92, %c302691568_i64, %267, %c0_i64, %c0_i64, %92, %c0_i64, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %267, %92, %92, %92, %92, %c302691568_i64, %267, %c302691568_i64, %267, %c302691568_i64, %c302691568_i64, %c302691568_i64, %267, %92, %92, %92, %267, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %267, %c302691568_i64, %c0_i64, %c0_i64, %92, %c0_i64, %c302691568_i64, %267, %c302691568_i64, %267, %c302691568_i64, %c302691568_i64, %267, %92, %267, %c0_i64, %92, %c0_i64, %92, %c0_i64, %92, %c0_i64, %92, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %267, %c0_i64, %92, %267, %92, %267, %c0_i64, %267, %c0_i64, %c0_i64, %92, %267, %c302691568_i64, %92, %92, %267, %c302691568_i64, %92, %c302691568_i64, %92, %267, %c0_i64, %c302691568_i64, %c0_i64, %267, %92, %267, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %92, %92, %c302691568_i64, %267, %267, %c302691568_i64, %c302691568_i64, %92, %267, %c0_i64, %92, %267, %267, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %92, %92, %92, %c302691568_i64, %267, %c0_i64, %92, %c0_i64, %c302691568_i64, %267, %c0_i64, %267, %267, %267, %267, %c0_i64, %c302691568_i64, %267, %c0_i64, %c302691568_i64, %c302691568_i64, %267, %92, %92, %267, %92, %c302691568_i64, %267, %c0_i64, %c302691568_i64, %92, %92, %c0_i64, %c0_i64, %c0_i64, %267, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %c302691568_i64, %92, %c302691568_i64, %267, %267, %92, %c0_i64, %c0_i64, %92, %c0_i64, %c302691568_i64, %c0_i64, %267, %267, %c302691568_i64, %267, %267, %c302691568_i64, %92, %c0_i64, %c302691568_i64, %267, %c302691568_i64, %c302691568_i64, %267, %92, %c0_i64, %c302691568_i64, %c0_i64, %92, %267, %92, %92, %c0_i64, %267, %c0_i64, %267, %c302691568_i64, %c0_i64, %92, %c0_i64, %c302691568_i64, %267, %267, %267, %267, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %267, %267, %267, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %92, %92, %c302691568_i64, %267, %92, %92, %267, %267, %92, %267, %c302691568_i64, %c302691568_i64, %c0_i64, %267, %c0_i64, %267, %c302691568_i64, %c0_i64, %267, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %92, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %92, %92, %c302691568_i64, %92, %92, %c302691568_i64, %c302691568_i64, %267, %c302691568_i64, %c302691568_i64, %92, %267, %c0_i64, %267, %92, %267, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %92, %c0_i64, %92, %92, %c0_i64, %267, %92, %267, %92, %92, %92, %c0_i64, %92, %267, %267, %c302691568_i64, %c0_i64, %267, %92, %92, %c0_i64, %c302691568_i64, %267, %92, %c0_i64, %92, %92, %92, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %267, %267, %267, %92, %267, %267, %c0_i64, %c302691568_i64, %c0_i64, %92, %92, %c302691568_i64, %92, %267, %92, %267, %c0_i64, %c302691568_i64, %267, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %267, %c302691568_i64, %c0_i64, %267, %92, %92, %c0_i64, %c0_i64, %267, %92, %267, %c0_i64, %c302691568_i64, %267, %92, %267, %92, %267, %92, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %92, %92, %92, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %267, %92, %92, %92, %267, %267, %92, %267, %92, %92, %c0_i64, %267, %c302691568_i64, %c302691568_i64, %267, %c302691568_i64, %267, %c302691568_i64, %92, %267, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %267, %92, %c302691568_i64, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %267, %c0_i64, %92, %267, %267, %c302691568_i64, %c302691568_i64, %92, %267, %c302691568_i64, %c302691568_i64, %267, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %267, %267, %92, %c0_i64, %267, %267, %92, %c0_i64, %c0_i64, %92, %c0_i64, %92, %92, %c0_i64, %c302691568_i64, %267, %c302691568_i64, %267, %92, %c302691568_i64, %267, %c0_i64, %267, %c302691568_i64, %92, %267, %c0_i64, %c302691568_i64, %c302691568_i64, %267, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %267, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %267, %c0_i64, %92, %c302691568_i64, %92, %267, %c0_i64, %92, %267, %c302691568_i64, %92, %92, %c0_i64, %c302691568_i64, %267, %267, %92, %92, %c0_i64, %c302691568_i64, %92, %92, %267, %92, %c0_i64, %c0_i64, %92, %267, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %267, %c302691568_i64, %c302691568_i64, %c302691568_i64, %267, %92, %92, %c302691568_i64, %267, %267, %c302691568_i64, %c0_i64, %c0_i64, %92, %c0_i64, %c302691568_i64, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %267, %92, %267, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %267, %92, %c302691568_i64, %92, %c302691568_i64, %c0_i64, %92, %92, %92, %92, %92, %267, %c302691568_i64, %267, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %267, %92, %c302691568_i64, %c302691568_i64, %c0_i64, %92, %267, %c302691568_i64, %c0_i64, %c0_i64, %267, %c0_i64, %92, %c302691568_i64, %92, %267, %92, %c302691568_i64, %c0_i64, %c0_i64, %92, %92, %267, %92, %c0_i64, %92, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %92, %92, %267, %c302691568_i64, %c302691568_i64, %267, %267, %c0_i64, %c0_i64, %92, %c0_i64, %267, %267, %c0_i64, %92, %267, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %267, %c302691568_i64, %c0_i64, %c0_i64, %267, %c302691568_i64, %92, %92, %267, %c302691568_i64, %267, %267, %c0_i64, %267, %c302691568_i64, %c0_i64, %267, %267, %c302691568_i64, %92, %92, %92, %267, %c302691568_i64, %92, %92, %c302691568_i64, %c302691568_i64, %92, %267, %c302691568_i64, %92, %92, %c302691568_i64, %92, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %267, %c302691568_i64, %267, %267, %267, %267, %267, %267, %267, %267, %267, %267, %92, %c0_i64, %c0_i64, %267, %c302691568_i64, %92, %c302691568_i64, %267, %92, %92, %92, %267, %92, %c0_i64, %c302691568_i64, %267, %c0_i64, %c302691568_i64, %92, %267, %267, %267, %267, %267, %c0_i64, %c302691568_i64, %92, %c302691568_i64, %92, %c0_i64, %92, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %92, %267, %92, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %92, %c302691568_i64, %c0_i64, %267, %c302691568_i64, %c302691568_i64, %267, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %267, %c302691568_i64, %267, %c0_i64, %c302691568_i64, %c302691568_i64, %267, %267, %92, %c302691568_i64, %92, %c0_i64, %92, %c302691568_i64, %267, %92, %92, %92, %c0_i64, %c0_i64, %267, %92, %267, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %267, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %92, %c302691568_i64, %c302691568_i64, %c302691568_i64, %267, %c0_i64, %267, %c0_i64, %267, %92, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %267, %c0_i64, %267, %92, %267, %267, %c0_i64, %c0_i64, %92, %c302691568_i64, %267, %c302691568_i64, %92, %92, %c302691568_i64, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %267, %267, %c302691568_i64, %c302691568_i64, %267, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %267, %c302691568_i64, %267, %c302691568_i64, %267, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %267, %c0_i64, %267, %c0_i64, %c0_i64, %92, %c0_i64, %92, %c302691568_i64, %267, %267, %267, %c302691568_i64, %92, %c302691568_i64, %c0_i64, %92, %c0_i64, %267, %92, %c302691568_i64, %c0_i64, %92, %92, %267, %92, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %267, %267, %c0_i64, %c302691568_i64, %267, %92, %267, %c0_i64, %92, %c0_i64, %c0_i64, %267, %c302691568_i64, %c0_i64, %267, %92, %267, %267, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %267, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %267, %c0_i64, %92, %92, %c302691568_i64, %92, %267, %92, %267, %267, %267, %92, %c302691568_i64, %c0_i64, %267, %267, %267, %c302691568_i64, %c0_i64, %c302691568_i64, %92, %92, %c302691568_i64, %267, %c0_i64, %c302691568_i64, %267, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %c0_i64, %c0_i64, %92, %c302691568_i64, %c0_i64, %92, %c0_i64, %c302691568_i64, %267, %267, %267, %c302691568_i64, %92, %c302691568_i64, %267, %267, %92, %267, %c302691568_i64, %c0_i64, %c302691568_i64, %267, %92, %92, %92, %c302691568_i64, %c302691568_i64, %92, %c302691568_i64, %267, %92, %c0_i64, %267, %c0_i64, %267, %c0_i64, %92, %c0_i64, %267, %92, %c0_i64, %c302691568_i64, %267, %c0_i64, %c302691568_i64, %267, %267, %267, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %267, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %267, %c302691568_i64, %92, %c0_i64, %c302691568_i64, %267, %c302691568_i64, %c302691568_i64, %c302691568_i64, %267, %92, %92, %267, %92, %c302691568_i64, %c0_i64, %c0_i64, %92, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %267, %c302691568_i64, %92, %267, %267, %267, %92, %c0_i64, %92, %267, %c0_i64, %92, %267, %c302691568_i64, %267, %92, %92, %267, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %c0_i64, %92, %c302691568_i64, %92, %c302691568_i64, %92, %92, %92, %267, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %267, %c302691568_i64, %267, %c302691568_i64, %c302691568_i64, %92, %267, %c302691568_i64, %92, %92, %267, %92, %92, %c0_i64, %92, %c0_i64, %92, %c0_i64, %267, %c302691568_i64, %92, %92, %c0_i64, %267, %c0_i64, %267, %267, %c302691568_i64, %267, %c302691568_i64, %267, %267, %92, %267, %267, %92, %92, %267, %267, %92, %c302691568_i64, %c0_i64, %267, %c302691568_i64, %267, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %92, %267, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %267, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %92, %c0_i64, %92, %92, %92, %c302691568_i64, %92, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %c302691568_i64, %92, %92, %c0_i64, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %c302691568_i64, %c0_i64, %267, %92, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %c0_i64, %c0_i64, %267, %c302691568_i64, %92, %c0_i64, %267, %c302691568_i64, %c0_i64, %92, %c0_i64, %267, %92, %267, %92, %c302691568_i64, %c0_i64, %c0_i64, %267, %c0_i64, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %267, %267, %92, %92, %92, %92, %267, %267, %267, %c0_i64, %92, %c302691568_i64, %c0_i64, %92, %92, %267, %c302691568_i64, %c0_i64, %c0_i64, %92, %c0_i64, %267, %92, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %267, %92, %c0_i64, %267, %92, %c302691568_i64, %92, %267, %c0_i64, %c0_i64, %c302691568_i64, %267, %c0_i64, %c0_i64, %92, %c0_i64, %92, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %c0_i64, %92, %267, %c302691568_i64, %c302691568_i64, %267, %267, %267, %c0_i64, %267, %92, %92, %c0_i64, %c0_i64, %c302691568_i64, %267, %c302691568_i64, %92, %c0_i64, %267, %c302691568_i64, %c0_i64, %267, %267, %c0_i64, %267, %267, %267, %c302691568_i64, %267, %c0_i64, %267, %c0_i64, %c302691568_i64, %c302691568_i64, %c302691568_i64, %92, %267, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %267, %c0_i64, %c302691568_i64, %c302691568_i64, %267, %267, %c0_i64, %267, %267, %92, %c302691568_i64, %92, %c302691568_i64, %267, %c302691568_i64, %c302691568_i64, %c302691568_i64, %267, %92, %c0_i64, %267, %92, %c302691568_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %c0_i64, %c0_i64, %c0_i64, %c0_i64, %c302691568_i64, %c0_i64, %267, %c302691568_i64, %c302691568_i64, %267, %92, %267, %92, %c0_i64, %c302691568_i64, %92, %267, %92, %267, %92, %c0_i64, %267, %c302691568_i64, %92, %c302691568_i64, %267, %92, %c302691568_i64, %267, %92, %92, %c302691568_i64, %267, %92, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %267, %c0_i64, %c302691568_i64, %92, %267, %267, %c302691568_i64, %c0_i64, %92, %c302691568_i64, %267, %c302691568_i64, %267, %c302691568_i64, %92, %c302691568_i64, %92, %c0_i64, %267, %c0_i64, %267, %c0_i64, %c0_i64, %92, %c302691568_i64, %c0_i64, %c0_i64, %c302691568_i64, %92, %c302691568_i64, %c302691568_i64, %92, %92, %c0_i64, %267, %c302691568_i64, %92, %92, %267, %267, %267, %267, %c0_i64, %c0_i64, %c302691568_i64, %c302691568_i64, %92, %267, %92, %92 : tensor<16x7x16xi64>
          %286 = index.ceildivs %78, %c8
          %287 = vector.insertelement %c619965047_i32, %128[] : vector<i32>
          %288 = math.ctpop %183 : i1
          %289 = arith.subi %in_56, %true_25 : i1
          %290 = vector.broadcast %cst_1 : f32 to vector<16xf32>
          %291 = vector.fma %290, %290, %290 : vector<16xf32>
          %extracted_63 = tensor.extract %7[%c6, %c3] : tensor<7x7xi1>
          %292 = vector.insertelement %c647337080_i32, %128[] : vector<i32>
          %293 = math.fma %cst_5, %cst_5, %cst_2 : f16
          %294 = vector.broadcast %cst_30 : f32 to vector<f32>
          %295 = vector.transfer_write %294, %collapsed_43[%c13] : vector<f32>, tensor<49xf32>
          %296 = index.ceildivu %c6, %c6
          %297 = vector.multi_reduction <mul>, %33, %33 [] : vector<7xi1> to vector<7xi1>
          %298 = math.tan %expanded_60 : tensor<7x7x1xf32>
          %299 = tensor.empty() : tensor<112x7xf32>
          %300 = linalg.matmul ins(%collapsed_39, %from_elements : tensor<112x7xf32>, tensor<7x7xf32>) outs(%299 : tensor<112x7xf32>) -> tensor<112x7xf32>
          %301 = vector.extract_strided_slice %69 {offsets = [3, 4], sizes = [3, 8], strides = [1, 1]} : vector<7x16x7xi1> to vector<3x8x7xi1>
          memref.copy %alloc_15, %alloc_17 : memref<7x7xi16> to memref<7x7xi16>
          %302 = math.log %6 : tensor<16xf32>
          %303 = arith.ori %267, %92 : i64
          %304 = affine.max affine_map<(d0) -> ((d0 - 4) * 16, d0 * 8)>(%71)
          %splat_64 = tensor.splat %c706296327_i32 : tensor<7x7xi32>
          %305 = affine.min affine_map<(d0, d1, d2, d3) -> (d1, d2 - (d3 ceildiv 32) ceildiv 2, d1 + d3)>(%c10, %78, %60, %c4)
          %306 = vector.broadcast %false_23 : i1 to vector<7x7xi1>
          %307 = vector.outerproduct %33, %33, %306 {kind = #vector.kind<maxsi>} : vector<7xi1>, vector<7xi1>
          %308 = vector.broadcast %cst : f32 to vector<1xf32>
          %309 = vector.insert %308, %166 [3] : vector<1xf32> into vector<4x1xf32>
          %310 = math.powf %10, %102 : tensor<7x7xf32>
          %rank_65 = tensor.rank %1 : tensor<7x16x7xf32>
          %311 = math.tan %expanded_37 : tensor<7x16x7x1xf32>
          %312 = arith.maxsi %out, %c1_i16 : i16
          %313 = math.fma %9, %9, %1 : tensor<7x16x7xf32>
          %314 = math.exp2 %expanded_60 : tensor<7x7x1xf32>
          linalg.yield %out : i16
        } -> tensor<16x7x16xi16>
        %281 = math.log1p %splat_41 : tensor<16x7x16xf32>
        scf.if %in {
          %283 = vector.shuffle %158, %158 [1, 2, 7, 8, 10] : vector<7x1xf32>, vector<7x1xf32>
          %expanded_62 = tensor.expand_shape %18 [[0], [1, 2]] : tensor<7x7xf32> into tensor<7x7x1xf32>
          %284 = math.cos %from_elements : tensor<7x7xf32>
          %285 = math.fma %9, %9, %4 : tensor<7x16x7xf32>
          %286 = vector.broadcast %cst_1 : f32 to vector<16x7x16xf32>
          %287 = vector.fma %286, %86, %114 : vector<16x7x16xf32>
          %288 = memref.load %alloc_9[%c5, %c5] : memref<7x7xf16>
          %289 = arith.remf %cst_30, %cst_30 : f32
          %cast_63 = tensor.cast %14 : tensor<16x7x16xi1> to tensor<?x?x?xi1>
        } else {
          %283 = affine.min affine_map<(d0, d1) -> (d1 mod 4)>(%rank, %c10)
          %284 = arith.minsi %true_3, %false_59 : i1
          %285 = vector.flat_transpose %34 {columns = 7 : i32, rows = 1 : i32} : vector<7xf32> -> vector<7xf32>
          %286 = arith.ori %c706296327_i32, %c1480477621_i32 : i32
          memref.assume_alignment %alloc_13, 2 : memref<7x7xi32>
          %287 = math.round %expanded : tensor<7x16x7x1xf16>
          %splat_62 = tensor.splat %cst : tensor<16x7x16xf32>
          %288 = index.maxs %127, %c0
        }
        affine.store %cst_4, %alloc_10[%c6, %c3, %c0] : memref<7x16x7xf32>
        %282 = vector.reduction <minsi>, %180 : vector<7xi32> into i32
        %true_61 = arith.constant true
        linalg.yield %true_61 : i1
      }
    %192 = index.sub %c11, %rank_26
    %193 = vector.broadcast %false_33 : i1 to vector<16xi1>
    %194 = index.ceildivs %c6, %c5
    %false_46 = index.bool.constant false
    %195 = math.log2 %18 : tensor<7x7xf32>
    bufferization.dealloc_tensor %8 : tensor<16x7x16xi16>
    %196 = tensor.empty() : tensor<7x16x7xi64>
    %mapped_47 = linalg.map ins(%2, %alloc_16, %2 : tensor<7x16x7xi64>, memref<7x16x7xi64>, tensor<7x16x7xi64>) outs(%196 : tensor<7x16x7xi64>)
      (%in: i64, %in_56: i64, %in_57: i64) {
        %rank_58 = tensor.rank %9 : tensor<7x16x7xf32>
        %257 = affine.load %alloc_8[%c12, %c6, %c5] : memref<7x16x7xf32>
        %258 = vector.multi_reduction <mul>, %98, %98 [] : vector<7x7xf32> to vector<7x7xf32>
        %259 = vector.reduction <mul>, %32 : vector<7xf32> into f32
        %260 = math.cos %122 : tensor<16xf32>
        %261 = arith.minui %true_3, %false_23 : i1
        %262 = tensor.empty() : tensor<7x7xi32>
        %263 = linalg.matmul ins(%15, %15 : tensor<7x7xi32>, tensor<7x7xi32>) outs(%262 : tensor<7x7xi32>) -> tensor<7x7xi32>
        %264 = vector.outerproduct %34, %34, %99 {kind = #vector.kind<maxf>} : vector<7xf32>, vector<7xf32>
        %265 = vector.insertelement %c1480477621_i32, %128[] : vector<i32>
        %expanded_59 = tensor.expand_shape %splat_29 [[0], [1], [2, 3]] : tensor<7x16x7xi16> into tensor<7x16x7x1xi16>
        %266 = math.tan %extracted : f32
        %267 = math.fma %10, %18, %10 : tensor<7x7xf32>
        %268 = arith.minsi %c706296327_i32, %c647337080_i32 : i32
        %extracted_60 = tensor.extract %8[%c12, %c3, %c9] : tensor<16x7x16xi16>
        %269 = arith.minsi %c1138262349_i32, %c706296327_i32 : i32
        %270 = arith.maxsi %c0_i64, %92 : i64
        %271 = arith.ceildivsi %c1138262349_i32, %c619965047_i32 : i32
        %272 = arith.remf %cst_2, %cst_5 : f16
        %273 = math.ctlz %false_0 : i1
        %274 = arith.cmpi uge, %c0_i64, %c302691568_i64 : i64
        %alloc_61 = memref.alloc() : memref<16xi64>
        %false_62 = arith.constant false
        memref.alloca_scope  {
          %alloc_64 = memref.alloc() : memref<16xf16>
          memref.copy %alloc_18, %alloc_64 : memref<16xf16> to memref<16xf16>
          %286 = arith.maxf %cst_1, %cst_30 : f32
          %287 = math.round %10 : tensor<7x7xf32>
          %288 = math.log1p %9 : tensor<7x16x7xf32>
          %289 = math.fma %collapsed_39, %collapsed_39, %collapsed : tensor<112x7xf32>
          %290 = index.maxu %c6, %rank
          affine.store %183, %alloc_12[%c7, %c15] : memref<7x7xi1>
          %291 = index.ceildivs %192, %27
          %292 = math.round %4 : tensor<7x16x7xf32>
          %293 = vector.insertelement %c706296327_i32, %128[] : vector<i32>
          %294 = vector.broadcast %c647337080_i32 : i32 to vector<1xi32>
          %295 = vector.broadcast %false : i1 to vector<1xi1>
          %296 = vector.maskedload %alloc[%c10], %295, %294 : memref<16xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
          %297 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %19, %81, %130 : vector<7xi16>, vector<7x16x7xi16> into vector<16x7xi16>
          %298 = math.atan %17 : tensor<7x16x7xf16>
          %rank_65 = tensor.rank %75 : tensor<7x16x7xi64>
          %299 = vector.insert %c1951499111_i32, %294 [0] : i32 into vector<1xi32>
          %cst_66 = arith.constant 2.854400e+04 : f16
          %300 = index.maxu %123, %c13
          %alloc_67 = memref.alloc() : memref<7x7xi64>
          %301 = memref.load %alloc_7[%c0, %c1] : memref<7x7xf32>
          affine.store %c0_i16, %alloc_17[%c11, %c14] : memref<7x7xi16>
          %302 = arith.maxsi %c1480477621_i32, %c1138262349_i32 : i32
          %303 = vector.broadcast %cst_4 : f32 to vector<7x16xf32>
          %304 = vector.multi_reduction <mul>, %115, %303 [0] : vector<16x7x16xf32> to vector<7x16xf32>
          %305 = arith.cmpi ugt, %c1_i16, %c0_i16 : i16
          %306 = index.maxu %181, %c6
          %307 = math.powf %extracted, %257 : f32
          %308 = index.divu %c13, %100
          %309 = vector.broadcast %c0_i16 : i16 to vector<7x7xi16>
          %dest_68, %accumulated_value_69 = vector.scan <xor>, %83, %309 {inclusive = false, reduction_dim = 1 : i64} : vector<7x16x7xi16>, vector<7x7xi16>
          %310 = arith.negf %cst_1 : f32
          %311 = math.tanh %105 : tensor<7x16x7xf16>
          %312 = vector.reduction <minui>, %296 : vector<1xi32> into i32
          %313 = arith.minf %extracted, %extracted : f32
          %false_70 = index.bool.constant false
        }
        %275 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 + d1)>(%c15, %152, %192, %rank_58)
        %276 = math.atan2 %expanded, %expanded : tensor<7x16x7x1xf16>
        %277 = index.divu %c14, %c5
        %278 = math.fma %transposed, %102, %10 : tensor<7x7xf32>
        %279 = vector.broadcast %257 : f32 to vector<7x16x7xf32>
        %280 = vector.gather %9[%c10, %c1, %181] [%82], %69, %279 : tensor<7x16x7xf32>, vector<7x16x7xi32>, vector<7x16x7xi1>, vector<7x16x7xf32> into vector<7x16x7xf32>
        %281 = arith.addi %c0_i16, %c0_i16 : i16
        %282 = arith.divui %c1138262349_i32, %c647337080_i32 : i32
        %283 = vector.broadcast %257 : f32 to vector<16xf32>
        %284 = vector.fma %283, %283, %283 : vector<16xf32>
        %285 = vector.insertelement %cst_1, %283[%c10 : index] : vector<16xf32>
        %c0_i64_63 = arith.constant 0 : i64
        linalg.yield %c0_i64_63 : i64
      }
    %197 = math.ipowi %splat_29, %splat_29 : tensor<7x16x7xi16>
    %198 = math.sqrt %11 : tensor<7x16x7xf16>
    %199 = arith.muli %c619965047_i32, %c647337080_i32 : i32
    %200 = tensor.empty() : tensor<7x16x7xf32>
    %mapped_48 = linalg.map ins(%4, %1 : tensor<7x16x7xf32>, tensor<7x16x7xf32>) outs(%200 : tensor<7x16x7xf32>)
      (%in: f32, %in_56: f32) {
        %257 = arith.divui %c1_i16, %c1_i16 : i16
        %258 = math.tan %collapsed_43 : tensor<49xf32>
        %259 = bufferization.to_memref %5 : memref<16xi16>
        %260 = vector.broadcast %cst_30 : f32 to vector<7x4xf32>
        %261 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %158, %166, %260 : vector<7x1xf32>, vector<4x1xf32> into vector<7x4xf32>
        %262 = vector.shuffle %115, %115 [0, 2, 4, 6, 8, 9, 10, 13, 17, 18, 19, 20, 21, 22, 23, 27, 30] : vector<16x7x16xf32>, vector<16x7x16xf32>
        %263 = arith.negf %cst_5 : f16
        %rank_57 = tensor.rank %17 : tensor<7x16x7xf16>
        %264 = vector.broadcast %false_0 : i1 to vector<7x16xi1>
        %265 = vector.insert %264, %104 [7] : vector<7x16xi1> into vector<16x7x16xi1>
        %alloc_58 = memref.alloc() : memref<16xi32>
        memref.copy %alloc, %alloc_58 : memref<16xi32> to memref<16xi32>
        %266 = math.powf %102, %10 : tensor<7x7xf32>
        %267 = arith.negf %in : f32
        memref.alloca_scope  {
          %288 = arith.divf %cst, %in_56 : f32
          %289 = vector.extract %33[2] : vector<7xi1>
          %290 = math.cos %4 : tensor<7x16x7xf32>
          %291 = math.fma %6, %122, %122 : tensor<16xf32>
          %292 = vector.broadcast %in : f32 to vector<16xf32>
          %293 = vector.broadcast %c647337080_i32 : i32 to vector<16xi32>
          %294 = vector.gather %from_elements[%94, %rank_28] [%293], %193, %292 : tensor<7x7xf32>, vector<16xi32>, vector<16xi1>, vector<16xf32> into vector<16xf32>
          %295 = vector.load %alloc_12[%c4, %c5] : memref<7x7xi1>, vector<16xi1>
          %296 = vector.multi_reduction <minsi>, %293, %293 [] : vector<16xi32> to vector<16xi32>
          %297 = memref.realloc %alloc_18 : memref<16xf16> to memref<7xf16>
          %298 = arith.muli %c647337080_i32, %c1951499111_i32 : i32
          affine.store %183, %alloc_12[%c9, %c13] : memref<7x7xi1>
          %299 = index.sizeof
          %300 = math.ctpop %14 : tensor<16x7x16xi1>
          %301 = tensor.empty() : tensor<112x7xf32>
          %302 = linalg.matmul ins(%collapsed, %transposed : tensor<112x7xf32>, tensor<7x7xf32>) outs(%301 : tensor<112x7xf32>) -> tensor<112x7xf32>
          %303 = tensor.empty(%192) : tensor<7x?xf32>
          %304 = math.cttz %12 : tensor<16x7x16xi32>
          %305 = index.maxu %27, %c6
          %cst_64 = arith.constant 3.529600e+04 : f16
          %alloc_65 = memref.alloc() : memref<7x16x7xf32>
          %alloc_66 = memref.alloc() : memref<7x16x7xi16>
          %306 = vector.splat %100 : vector<16x7x16xindex>
          %307 = affine.max affine_map<(d0, d1, d2) -> (d1 - ((d1 ceildiv 32) * 2) mod 64)>(%c6, %56, %305)
          %308 = arith.floordivsi %c1138262349_i32, %c1138262349_i32 : i32
          %309 = vector.multi_reduction <maxui>, %55, %193 [0, 1] : vector<16x7x16xi1> to vector<16xi1>
          %extracted_67 = tensor.extract %14[%c15, %c0, %c12] : tensor<16x7x16xi1>
          %from_elements_68 = tensor.from_elements %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst_2 : tensor<16x7x16xf16>
          %310 = tensor.empty() : tensor<7x7xf16>
          %311 = tensor.empty() : tensor<112x7xf16>
          %312 = linalg.matmul ins(%collapsed_36, %310 : tensor<112x7xf16>, tensor<7x7xf16>) outs(%311 : tensor<112x7xf16>) -> tensor<112x7xf16>
          %313 = tensor.empty(%c4, %rank_24) : tensor<?x?x16xi16>
          %true_69 = index.bool.constant true
          %314 = vector.broadcast %extracted : f32 to vector<7x16x7xf32>
          %315 = vector.fma %314, %314, %314 : vector<7x16x7xf32>
          %316 = arith.divui %c1138262349_i32, %c619965047_i32 : i32
          %317 = vector.broadcast %c302691568_i64 : i64 to vector<7x16x7xi64>
          %318 = math.cos %cst : f32
        }
        %c13406_i16 = arith.constant 13406 : i16
        %268 = math.powf %10, %transposed : tensor<7x7xf32>
        %269 = vector.broadcast %c0_i64 : i64 to vector<i64>
        vector.transfer_write %269, %alloc_20[%123, %54] : vector<i64>, memref<7x7xi64>
        %alloc_59 = memref.alloc() : memref<16x7x16xf32>
        %270 = vector.broadcast %183 : i1 to vector<7x7xi1>
        %271 = vector.broadcast %c1480477621_i32 : i32 to vector<7x7xi32>
        %272 = vector.gather %alloc_59[%c2, %c6, %rank_24] [%271], %270, %99 : memref<16x7x16xf32>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xf32> into vector<7x7xf32>
        %273 = vector.flat_transpose %19 {columns = 7 : i32, rows = 1 : i32} : vector<7xi16> -> vector<7xi16>
        %274 = math.exp2 %expanded_37 : tensor<7x16x7x1xf32>
        %275 = vector.shuffle %99, %272 [0, 1, 2, 3, 4, 5, 6, 7, 10, 11] : vector<7x7xf32>, vector<7x7xf32>
        %276 = arith.remsi %false, %false_33 : i1
        %277 = arith.floordivsi %92, %c302691568_i64 : i64
        %278 = index.divs %c1, %c9
        %279 = arith.ori %false, %false_23 : i1
        %280 = index.sub %181, %71
        %281 = math.tanh %1 : tensor<7x16x7xf32>
        %282 = arith.maxsi %c1138262349_i32, %c1138262349_i32 : i32
        %283 = math.cos %collapsed : tensor<112x7xf32>
        %false_60 = arith.constant false
        %false_61 = arith.constant false
        %284 = vector.transfer_read %splat_31[%60, %c11, %194], %false_61 : tensor<7x16x7xi1>, vector<i1>
        %285 = vector.extract %34[3] : vector<7xf32>
        %286 = index.casts %c647337080_i32 : i32 to index
        %expanded_62 = tensor.expand_shape %5 [[0, 1]] : tensor<16xi16> into tensor<16x1xi16>
        %287 = math.absi %2 : tensor<7x16x7xi64>
        %cst_63 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_63 : f32
      }
    %201 = math.log %9 : tensor<7x16x7xf32>
    %202 = arith.remsi %183, %true : i1
    %203 = bufferization.to_memref %0 : memref<16x7x16xi16>
    %204 = memref.load %alloc_15[%c0, %c4] : memref<7x7xi16>
    %205 = arith.minsi %c706296327_i32, %c706296327_i32 : i32
    %from_elements_49 = tensor.from_elements %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16 : tensor<16x7x16xi16>
    %206 = vector.broadcast %cst : f32 to vector<16xf32>
    scf.index_switch %c11 
    case 1 {
      %generated_56 = tensor.generate %94, %24 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %270 = index.casts %56 : index to i32
        %271 = arith.ceildivsi %c1480477621_i32, %c706296327_i32 : i32
        %272 = arith.maxui %c302691568_i64, %c0_i64 : i64
        %273 = arith.cmpi uge, %c1_i16, %c0_i16 : i16
        tensor.yield %cst_2 : f16
      } : tensor<?x?x7xf16>
      affine.store %cst, %alloc_7[%c12, %c7] : memref<7x7xf32>
      %257 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %81, %19, %130 : vector<7x16x7xi16>, vector<7xi16> into vector<16x7xi16>
      %258 = arith.cmpi eq, %c302691568_i64, %c0_i64 : i64
      %259 = arith.maxui %false_46, %true : i1
      %260 = tensor.empty(%c15) : tensor<?xf16>
      %alloc_57 = memref.alloc() : memref<16x7x16xi16>
      memref.copy %203, %alloc_57 : memref<16x7x16xi16> to memref<16x7x16xi16>
      %261 = math.cttz %true : i1
      %262 = affine.load %alloc_11[%c0, %c7] : memref<7x7xi32>
      %263 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %188, %179, %188 : vector<7xf16>, vector<7x7xf16> into vector<7xf16>
      %264 = math.absf %cst_2 : f16
      %265 = arith.minsi %false_23, %false : i1
      %266 = memref.load %alloc_6[%c1, %c1] : memref<7x7xf16>
      %267 = arith.remsi %c302691568_i64, %c302691568_i64 : i64
      %268 = arith.muli %false_33, %false_0 : i1
      %269 = math.cos %200 : tensor<7x16x7xf32>
      scf.yield
    }
    case 2 {
      %257 = affine.max affine_map<(d0, d1, d2) -> ((d2 - 2) * 128, d2 mod 128, d1 floordiv 128 - d1 + 1, 0)>(%24, %c5, %c9)
      %258 = math.ctlz %2 : tensor<7x16x7xi64>
      %extracted_56 = tensor.extract %16[%c3, %c5, %c2] : tensor<7x16x7xf16>
      memref.alloca_scope  {
        %273 = arith.divui %c1_i16, %c1_i16 : i16
        %274 = vector.multi_reduction <minf>, %98, %98 [] : vector<7x7xf32> to vector<7x7xf32>
        %275 = arith.floordivsi %false_46, %true_3 : i1
        %cst_57 = arith.constant 0x4DAB52E5 : f32
        %276 = arith.mulf %cst, %cst_1 : f32
        %expanded_58 = tensor.expand_shape %0 [[0], [1], [2, 3]] : tensor<16x7x16xi16> into tensor<16x7x16x1xi16>
        %277 = math.tan %6 : tensor<16xf32>
        %alloc_59 = memref.alloc() : memref<f16>
        memref.copy %alloc_21, %alloc_59 : memref<f16> to memref<f16>
        %278 = math.powf %17, %17 : tensor<7x16x7xf16>
        %rank_60 = tensor.rank %splat_29 : tensor<7x16x7xi16>
        %279 = math.sqrt %cst : f32
        %280 = memref.atomic_rmw assign %cst_5, %alloc_9[%c0, %c2] : (f16, memref<7x7xf16>) -> f16
        %281 = bufferization.clone %alloc_8 : memref<7x16x7xf32> to memref<7x16x7xf32>
        %282 = math.powf %200, %4 : tensor<7x16x7xf32>
        %283 = arith.ori %true_3, %true_3 : i1
        %284 = arith.minui %c1951499111_i32, %c619965047_i32 : i32
        %285 = math.log1p %4 : tensor<7x16x7xf32>
        %true_61 = arith.constant true
        %286 = memref.load %alloc_13[%c6, %c5] : memref<7x7xi32>
        %287 = math.log %cst : f32
        %288 = vector.insert %cst, %206 [13] : f32 into vector<16xf32>
        %289 = vector.shuffle %83, %81 [0, 4, 5, 6, 9, 13] : vector<7x16x7xi16>, vector<7x16x7xi16>
        %290 = math.roundeven %122 : tensor<16xf32>
        %291 = math.ctpop %14 : tensor<16x7x16xi1>
        %292 = math.log2 %collapsed_36 : tensor<112x7xf16>
        %alloc_62 = memref.alloc() : memref<7x16x7xi64>
        memref.copy %alloc_16, %alloc_62 : memref<7x16x7xi64> to memref<7x16x7xi64>
        %293 = index.sub %c6, %c1
        %294 = arith.maxsi %true_3, %true_3 : i1
        %295 = index.ceildivs %181, %100
        %296 = math.atan2 %collapsed_36, %collapsed_36 : tensor<112x7xf16>
        %297 = vector.broadcast %cst : f32 to vector<7x7xf32>
        %298 = vector.fma %297, %99, %98 : vector<7x7xf32>
        %299 = math.sqrt %10 : tensor<7x7xf32>
      }
      %259 = math.tanh %from_elements : tensor<7x7xf32>
      %260 = tensor.empty() : tensor<7x16x7x1xi32>
      %261 = math.fpowi %expanded, %260 : tensor<7x16x7x1xf16>, tensor<7x16x7x1xi32>
      %262 = math.round %from_elements : tensor<7x7xf32>
      %263 = affine.apply affine_map<(d0, d1, d2) -> (d2 * 2)>(%c8, %123, %c13)
      %264 = scf.while (%arg2 = %alloc_6) : (memref<7x7xf16>) -> memref<7x7xf16> {
        %273 = arith.remf %cst_5, %extracted_56 : f16
        %274 = vector.splat %78 : vector<16xindex>
        %c581031853_i32 = arith.constant 581031853 : i32
        %275 = math.log10 %1 : tensor<7x16x7xf32>
        %276 = vector.broadcast %extracted_56 : f16 to vector<16xf16>
        %collapsed_57 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<16x7x16xi16> into tensor<112x16xi16>
        %277 = vector.broadcast %c647337080_i32 : i32 to vector<1xi32>
        %278 = vector.broadcast %false_33 : i1 to vector<1xi1>
        %279 = vector.maskedload %alloc[%c12], %278, %277 : memref<16xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
        %280 = math.fma %cst_5, %extracted_56, %extracted_56 : f16
        scf.condition(%false_46) %alloc_6 : memref<7x7xf16>
      } do {
      ^bb0(%arg2: memref<7x7xf16>):
        %273 = math.log10 %cst_30 : f32
        %274 = math.sqrt %6 : tensor<16xf32>
        %275 = vector.flat_transpose %188 {columns = 7 : i32, rows = 1 : i32} : vector<7xf16> -> vector<7xf16>
        %276 = math.fma %expanded, %expanded, %expanded : tensor<7x16x7x1xf16>
        %277 = vector.insert %206, %114 [15, 5] : vector<16xf32> into vector<16x7x16xf32>
        %278 = vector.reduction <or>, %180 : vector<7xi32> into i32
        %279 = vector.extract %85[15] : vector<16x7x16xf32>
        %alloc_57 = memref.alloc() : memref<7x16x7xf32>
        %280 = math.sqrt %expanded_37 : tensor<7x16x7x1xf32>
        %281 = math.ctpop %splat : tensor<16xi1>
        %282 = index.maxu %c7, %c4
        %c1_i64 = arith.constant 1 : i64
        %283 = vector.transfer_read %13[%rank_35, %117, %152], %c1_i64 : tensor<16x7x16xi64>, vector<i64>
        %284 = vector.reduction <mul>, %193 : vector<16xi1> into i1
        %285 = arith.maxf %cst_30, %cst_1 : f32
        %286 = vector.bitcast %188 : vector<7xf16> to vector<7xf16>
        %287 = vector.outerproduct %32, %32, %99 {kind = #vector.kind<mul>} : vector<7xf32>, vector<7xf32>
        scf.yield %alloc_6 : memref<7x7xf16>
      }
      %265 = arith.remf %cst_30, %cst_30 : f32
      %266 = math.floor %4 : tensor<7x16x7xf32>
      %267 = vector.broadcast %cst_4 : f32 to vector<7xf32>
      %268 = vector.transfer_write %267, %10[%c10, %c13] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xf32>, tensor<7x7xf32>
      %269 = scf.while (%arg2 = %cst_2) : (f16) -> f16 {
        %273 = math.powf %cst_2, %arg2 : f16
        %274 = math.fma %10, %18, %10 : tensor<7x7xf32>
        %275 = arith.cmpi ne, %c1_i16, %c0_i16 : i16
        %276 = math.ctlz %13 : tensor<16x7x16xi64>
        %277 = arith.shli %c1480477621_i32, %c1138262349_i32 : i32
        %278 = math.cos %collapsed_39 : tensor<112x7xf32>
        %279 = tensor.empty() : tensor<7x16x7xf16>
        %expanded_57 = tensor.expand_shape %11 [[0], [1], [2, 3]] : tensor<7x16x7xf16> into tensor<7x16x7x1xf16>
        scf.condition(%true) %cst_2 : f16
      } do {
      ^bb0(%arg2: f16):
        %rank_57 = tensor.rank %20 : tensor<i16>
        %273 = math.log %collapsed : tensor<112x7xf32>
        %274 = vector.broadcast %cst_5 : f16 to vector<7xf16>
        %275 = vector.transfer_write %274, %105[%192, %84, %c13] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<7xf16>, tensor<7x16x7xf16>
        %276 = math.fma %105, %11, %11 : tensor<7x16x7xf16>
        %277 = arith.ceildivsi %false_33, %183 : i1
        %278 = math.atan %200 : tensor<7x16x7xf32>
        %splat_58 = tensor.splat %false_46 : tensor<7x16x7xi1>
        %279 = arith.minsi %c0_i64, %c302691568_i64 : i64
        %280 = affine.min affine_map<(d0, d1, d2) -> (d0 + 2)>(%56, %c7, %78)
        %281 = arith.minsi %false, %true : i1
        %282 = arith.remui %false_0, %183 : i1
        %283 = math.sqrt %transposed : tensor<7x7xf32>
        %284 = math.absi %c647337080_i32 : i32
        %285 = math.absi %75 : tensor<7x16x7xi64>
        affine.store %c0_i64, %alloc_20[%c14, %c10] : memref<7x7xi64>
        %286 = index.divs %27, %c2
        scf.yield %extracted_56 : f16
      }
      %270 = arith.maxui %true_3, %false_46 : i1
      %271 = vector.reduction <maxf>, %206 : vector<16xf32> into f32
      %272 = arith.andi %c647337080_i32, %c706296327_i32 : i32
      scf.yield
    }
    case 3 {
      %257 = vector.insert %193, %55 [10, 3] : vector<16xi1> into vector<16x7x16xi1>
      %true_56 = arith.constant true
      %258 = vector.reduction <or>, %193 : vector<16xi1> into i1
      %259 = math.powf %collapsed_43, %collapsed_43 : tensor<49xf32>
      %260 = arith.minf %cst_1, %extracted : f32
      %261 = math.log1p %9 : tensor<7x16x7xf32>
      %262 = arith.maxui %true_25, %false_23 : i1
      %263 = arith.maxsi %false_46, %false : i1
      %splat_57 = tensor.splat %cst_4 : tensor<16x7x16xf32>
      %alloc_58 = memref.alloc() : memref<16xi64>
      %alloc_59 = memref.alloc() : memref<7x16xi64>
      %264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_58, %alloc_59 : memref<16xi64>, memref<7x16xi64>) outs(%13 : tensor<16x7x16xi64>) {
      ^bb0(%in: i64, %in_61: i64, %out: i64):
        %272 = vector.broadcast %cst_4 : f32 to vector<7x16x7xf32>
        %273 = vector.fma %272, %272, %272 : vector<7x16x7xf32>
        %274 = arith.maxsi %c1480477621_i32, %c1138262349_i32 : i32
        %275 = vector.broadcast %extracted : f32 to vector<7x16x7xf32>
        %c1_i16_62 = arith.constant 1 : i16
        %276 = vector.transfer_read %203[%84, %c9, %c1], %c1_i16_62 : memref<16x7x16xi16>, vector<16xi16>
        %277 = arith.cmpi ult, %c302691568_i64, %out : i64
        %alloc_63 = memref.alloc() : memref<f16>
        memref.copy %alloc_21, %alloc_63 : memref<f16> to memref<f16>
        memref.assume_alignment %alloc_9, 4 : memref<7x7xf16>
        %278 = index.maxu %c8, %c1
        %collapsed_64 = tensor.collapse_shape %splat_31 [[0, 1], [2]] : tensor<7x16x7xi1> into tensor<112x7xi1>
        %279 = vector.broadcast %cst_4 : f32 to vector<16xf32>
        %280 = vector.fma %279, %279, %279 : vector<16xf32>
        %281 = arith.maxui %92, %92 : i64
        %282 = arith.maxui %false_23, %true_3 : i1
        %alloc_65 = memref.alloc() : memref<7x7xi64>
        memref.copy %alloc_20, %alloc_65 : memref<7x7xi64> to memref<7x7xi64>
        %283 = bufferization.to_memref %3 : memref<7x7xi64>
        %284 = index.ceildivu %c5, %c4
        %285 = math.log10 %expanded_37 : tensor<7x16x7x1xf32>
        %286 = index.maxu %rank_35, %rank_28
        %287 = math.ceil %4 : tensor<7x16x7xf32>
        %288 = vector.extract %158[5] : vector<7x1xf32>
        %289 = arith.divf %extracted, %cst_4 : f32
        %290 = memref.atomic_rmw muli %c1951499111_i32, %alloc_11[%c0, %c6] : (i32, memref<7x7xi32>) -> i32
        %291 = vector.maskedload %alloc_18[%c0], %33, %188 : memref<16xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
        %292 = math.round %cst : f32
        %293 = arith.shli %c1_i16, %c1_i16 : i16
        %294 = vector.broadcast %cst : f32 to vector<4x7xf32>
        %295 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %166, %158, %294 : vector<4x1xf32>, vector<7x1xf32> into vector<4x7xf32>
        %296 = arith.minsi %false_0, %183 : i1
        %297 = vector.reduction <minsi>, %33 : vector<7xi1> into i1
        %expanded_66 = tensor.expand_shape %collapsed_39 [[0], [1, 2]] : tensor<112x7xf32> into tensor<112x7x1xf32>
        %298 = tensor.empty() : tensor<7x7xi32>
        %299 = math.ctpop %20 : tensor<i16>
        %300 = math.ctpop %c0_i16 : i16
        %301 = math.log1p %expanded : tensor<7x16x7x1xf16>
        linalg.yield %out : i64
      } -> tensor<16x7x16xi64>
      %265 = memref.alloca_scope  -> (memref<16xf32>) {
        %272 = math.cos %105 : tensor<7x16x7xf16>
        %273 = math.powf %102, %from_elements : tensor<7x7xf32>
        %274 = vector.create_mask %c4 : vector<16xi1>
        %275 = tensor.empty() : tensor<7x7xi64>
        %276 = linalg.matmul ins(%3, %3 : tensor<7x7xi64>, tensor<7x7xi64>) outs(%275 : tensor<7x7xi64>) -> tensor<7x7xi64>
        %277 = index.maxu %123, %c13
        %278 = math.absf %10 : tensor<7x7xf32>
        %279 = math.powf %collapsed_36, %collapsed_36 : tensor<112x7xf16>
        %280 = arith.ceildivsi %c302691568_i64, %c0_i64 : i64
        %281 = memref.realloc %alloc_22 : memref<16xi16> to memref<1xi16>
        %282 = math.ctpop %3 : tensor<7x7xi64>
        %283 = index.ceildivu %71, %84
        %284 = math.log10 %1 : tensor<7x16x7xf32>
        %285 = arith.andi %false_0, %false_46 : i1
        %286 = math.fma %200, %1, %4 : tensor<7x16x7xf32>
        %287 = math.round %16 : tensor<7x16x7xf16>
        %288 = bufferization.to_tensor %alloc_20 : memref<7x7xi64>
        %289 = vector.insert %false_46, %274 [14] : i1 into vector<16xi1>
        %290 = vector.insertelement %c1_i16, %19[%rank_24 : index] : vector<7xi16>
        %from_elements_61 = tensor.from_elements %cst, %cst_30, %cst, %cst_30, %cst_4, %cst_30, %extracted, %cst, %cst_30, %cst_30, %cst, %cst, %cst_1, %cst, %cst, %cst, %cst_1, %cst_1, %extracted, %cst_4, %extracted, %cst_1, %extracted, %cst_30, %cst_4, %cst_1, %cst_1, %cst_30, %cst_4, %cst_4, %extracted, %cst_4, %extracted, %cst_30, %cst_1, %cst_4, %cst_1, %extracted, %cst_30, %cst_4, %cst_1, %cst_1, %cst_30, %cst, %cst_1, %cst_30, %cst_1, %extracted, %cst_30 : tensor<7x7xf32>
        %291 = arith.cmpi uge, %183, %false_23 : i1
        %292 = math.ipowi %from_elements_49, %0 : tensor<16x7x16xi16>
        %293 = arith.minf %cst_5, %cst_2 : f16
        %294 = index.casts %192 : index to i32
        %295 = vector.extract_strided_slice %274 {offsets = [13], sizes = [1], strides = [1]} : vector<16xi1> to vector<1xi1>
        %296 = index.divu %c4, %c5
        %297 = arith.floordivsi %92, %92 : i64
        %298 = math.ipowi %expanded_42, %expanded_42 : tensor<7x16x7x1xi16>
        %299 = math.roundeven %cst_1 : f32
        %300 = arith.remui %c1480477621_i32, %c706296327_i32 : i32
        %301 = index.divs %123, %c2
        %302 = arith.ceildivsi %c706296327_i32, %c1138262349_i32 : i32
        %303 = memref.load %alloc_7[%c4, %c5] : memref<7x7xf32>
        %alloc_62 = memref.alloc() : memref<16xf32>
        memref.alloca_scope.return %alloc_62 : memref<16xf32>
      }
      %266 = vector.broadcast %rank_28 : index to vector<1xindex>
      %267 = vector.broadcast %true_25 : i1 to vector<1xi1>
      %268 = vector.broadcast %extracted : f32 to vector<1xf32>
      vector.scatter %alloc_8[%c6, %c13, %c0] [%266], %267, %268 : memref<7x16x7xf32>, vector<1xindex>, vector<1xi1>, vector<1xf32>
      %269 = arith.ori %false_0, %183 : i1
      %270 = arith.divui %183, %true_25 : i1
      %271 = index.ceildivu %c4, %c15
      %collapsed_60 = tensor.collapse_shape %from_elements [[0, 1]] : tensor<7x7xf32> into tensor<49xf32>
      scf.yield
    }
    default {
      %257 = tensor.empty() : tensor<112x7xf16>
      %mapped_56 = linalg.map ins(%collapsed_36, %collapsed_36, %collapsed_36 : tensor<112x7xf16>, tensor<112x7xf16>, tensor<112x7xf16>) outs(%257 : tensor<112x7xf16>)
        (%in: f16, %in_58: f16, %in_59: f16) {
          %273 = vector.extract %114[4, 4] : vector<16x7x16xf32>
          %274 = math.exp %17 : tensor<7x16x7xf16>
          %275 = arith.ori %false_0, %false_33 : i1
          %276 = vector.reduction <add>, %34 : vector<7xf32> into f32
          %277 = math.tan %in_59 : f16
          %extracted_60 = tensor.extract %15[%c6, %c5] : tensor<7x7xi32>
          %278 = index.add %56, %71
          %extracted_61 = tensor.extract %4[%c2, %c4, %c6] : tensor<7x16x7xf32>
          %279 = arith.divui %false_33, %183 : i1
          %280 = vector.broadcast %c1951499111_i32 : i32 to vector<1xi32>
          %281 = vector.transfer_write %280, %12[%c10, %c9, %c2] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<1xi32>, tensor<16x7x16xi32>
          %282 = vector.insert %130, %83 [0] : vector<16x7xi16> into vector<7x16x7xi16>
          %283 = vector.insert %true_3, %33 [0] : i1 into vector<7xi1>
          %284 = vector.multi_reduction <add>, %34, %34 [] : vector<7xf32> to vector<7xf32>
          %285 = vector.broadcast %rank_26 : index to vector<16xindex>
          vector.scatter %alloc_10[%c6, %c0, %c4] [%285], %193, %206 : memref<7x16x7xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
          %286 = vector.transpose %115, [2, 0, 1] : vector<16x7x16xf32> to vector<16x16x7xf32>
          %collapsed_62 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<16x7x16xi64> into tensor<112x16xi64>
          %287 = vector.reduction <maxsi>, %180 : vector<7xi32> into i32
          %288 = math.powf %11, %105 : tensor<7x16x7xf16>
          %289 = vector.insertelement %c1_i16, %19[%c9 : index] : vector<7xi16>
          %cst_63 = arith.constant 1.000000e+00 : f32
          %cst_64 = arith.constant 0.000000e+00 : f32
          %290 = vector.transfer_read %from_elements[%100, %278], %cst_64 : tensor<7x7xf32>, vector<f32>
          %291 = vector.extract_strided_slice %19 {offsets = [4], sizes = [3], strides = [1]} : vector<7xi16> to vector<3xi16>
          %collapsed_65 = tensor.collapse_shape %collapsed_39 [[0, 1]] : tensor<112x7xf32> into tensor<784xf32>
          %292 = math.cos %in : f16
          %293 = tensor.empty() : tensor<7x7xf16>
          %294 = tensor.empty() : tensor<112x7xf16>
          %295 = linalg.matmul ins(%collapsed_36, %293 : tensor<112x7xf16>, tensor<7x7xf16>) outs(%294 : tensor<112x7xf16>) -> tensor<112x7xf16>
          %296 = arith.ceildivsi %true, %183 : i1
          %297 = arith.minsi %true_3, %false : i1
          %298 = index.castu %c0 : index to i32
          %299 = tensor.empty() : tensor<7x7xf32>
          %300 = linalg.matmul ins(%10, %10 : tensor<7x7xf32>, tensor<7x7xf32>) outs(%299 : tensor<7x7xf32>) -> tensor<7x7xf32>
          %301 = math.fma %6, %122, %6 : tensor<16xf32>
          %302 = index.castu %c10 : index to i32
          %303 = index.casts %c0_i16 : i16 to index
          %304 = math.log2 %4 : tensor<7x16x7xf32>
          %cst_66 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_66 : f16
        }
      %258 = memref.atomic_rmw assign %cst_30, %alloc_10[%c3, %c6, %c3] : (f32, memref<7x16x7xf32>) -> f32
      %259 = vector.broadcast %extracted : f32 to vector<7x16xf32>
      %260 = vector.insert %259, %114 [9] : vector<7x16xf32> into vector<16x7x16xf32>
      %261 = vector.insert %c0_i16, %19 [2] : i16 into vector<7xi16>
      %262 = math.sqrt %18 : tensor<7x7xf32>
      %263 = affine.min affine_map<(d0, d1) -> (d0 - d1 - d0 * 8, d0 - d1 - d0 * 8, d0 * 128 + 2, d0 * 8)>(%c15, %rank)
      %264 = math.log %9 : tensor<7x16x7xf32>
      %265 = arith.shli %false, %false_46 : i1
      %266 = math.log2 %6 : tensor<16xf32>
      %extracted_57 = tensor.extract %5[%c9] : tensor<16xi16>
      %267 = math.cttz %splat_29 : tensor<7x16x7xi16>
      %268 = scf.index_switch %125 -> vector<7x16x7xf32> 
      case 1 {
        %splat_58 = tensor.splat %cst_4 : tensor<7x7xf32>
        %273 = arith.remui %false_0, %true_3 : i1
        affine.store %c0_i16, %alloc_19[%c2] : memref<16xi16>
        %extracted_59 = tensor.extract %4[%c0, %c14, %c4] : tensor<7x16x7xf32>
        %274 = math.ctpop %2 : tensor<7x16x7xi64>
        %275 = arith.divf %extracted, %extracted : f32
        %276 = vector.transpose %104, [2, 1, 0] : vector<16x7x16xi1> to vector<16x7x16xi1>
        %true_60 = index.bool.constant true
        %277 = arith.cmpi sgt, %c1_i16, %c1_i16 : i16
        %278 = arith.mulf %extracted_59, %cst : f32
        memref.copy %alloc_6, %alloc_9 : memref<7x7xf16> to memref<7x7xf16>
        %279 = index.floordivs %c7, %c5
        %280 = arith.ceildivsi %92, %c0_i64 : i64
        %281 = index.maxs %279, %c13
        %282 = arith.mulf %extracted, %cst_30 : f32
        %283 = vector.insert %259, %86 [15] : vector<7x16xf32> into vector<16x7x16xf32>
        %284 = vector.broadcast %cst_4 : f32 to vector<7x16x7xf32>
        scf.yield %284 : vector<7x16x7xf32>
      }
      case 2 {
        %273 = vector.insertelement %cst_30, %206[%78 : index] : vector<16xf32>
        %274 = math.cttz %3 : tensor<7x7xi64>
        %275 = math.exp2 %16 : tensor<7x16x7xf16>
        %276 = math.log %1 : tensor<7x16x7xf32>
        %277 = vector.bitcast %180 : vector<7xi32> to vector<7xi32>
        %278 = arith.remf %cst_1, %cst_4 : f32
        %279 = math.exp %257 : tensor<112x7xf16>
        %280 = arith.remsi %false, %false_23 : i1
        %281 = vector.broadcast %cst : f32 to vector<16xf32>
        %282 = vector.fma %281, %281, %206 : vector<16xf32>
        %283 = math.absi %14 : tensor<16x7x16xi1>
        %284 = arith.maxsi %c619965047_i32, %c1138262349_i32 : i32
        affine.store %cst_2, %alloc_6[%c9, %c4] : memref<7x7xf16>
        %cst_58 = arith.constant 1.000000e+00 : f32
        %cst_59 = arith.constant 0.000000e+00 : f32
        %285 = vector.transfer_read %4[%100, %27, %c15], %cst_59 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<7x16x7xf32>, vector<7xf32>
        %286 = arith.ceildivsi %c647337080_i32, %c1138262349_i32 : i32
        %287 = math.ctlz %8 : tensor<16x7x16xi16>
        %288 = math.ipowi %2, %75 : tensor<7x16x7xi64>
        %289 = vector.broadcast %extracted : f32 to vector<7x16x7xf32>
        scf.yield %289 : vector<7x16x7xf32>
      }
      case 3 {
        %273 = affine.load %alloc_17[%c2, %c8] : memref<7x7xi16>
        %274 = tensor.empty() : tensor<16xf32>
        %275 = arith.muli %c619965047_i32, %c619965047_i32 : i32
        %276 = math.ipowi %13, %13 : tensor<16x7x16xi64>
        %277 = index.divu %c3, %152
        %278 = math.tanh %11 : tensor<7x16x7xf16>
        %279 = arith.cmpi slt, %extracted_57, %extracted_57 : i16
        %280 = math.absi %c706296327_i32 : i32
        %281 = arith.maxui %c1138262349_i32, %c647337080_i32 : i32
        %282 = arith.muli %c302691568_i64, %92 : i64
        %283 = index.divs %24, %c2
        %284 = arith.muli %c706296327_i32, %c1951499111_i32 : i32
        %285 = memref.load %alloc_19[%c2] : memref<16xi16>
        %286 = arith.addi %false_46, %183 : i1
        %287 = math.tan %from_elements : tensor<7x7xf32>
        %288 = vector.maskedload %203[%c5, %c6, %c8], %33, %19 : memref<16x7x16xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
        %289 = vector.broadcast %cst_4 : f32 to vector<7x16x7xf32>
        scf.yield %289 : vector<7x16x7xf32>
      }
      default {
        %273 = index.divu %54, %78
        %274 = vector.matrix_multiply %193, %33 {lhs_columns = 1 : i32, lhs_rows = 16 : i32, rhs_columns = 7 : i32} : (vector<16xi1>, vector<7xi1>) -> vector<112xi1>
        %275 = math.fma %transposed, %10, %10 : tensor<7x7xf32>
        %276 = affine.apply affine_map<(d0) -> (d0 ceildiv 64 + d0 + 32)>(%263)
        %277 = arith.cmpi sle, %false_23, %false : i1
        %278 = affine.min affine_map<(d0, d1, d2) -> ((d2 mod 4) * 64 + d1 * 64, d1 * 64 + 8)>(%27, %123, %rank)
        %279 = vector.transpose %55, [2, 0, 1] : vector<16x7x16xi1> to vector<16x16x7xi1>
        %280 = math.ctlz %196 : tensor<7x16x7xi64>
        %281 = vector.broadcast %c1480477621_i32 : i32 to vector<7x7xi32>
        %282 = vector.outerproduct %180, %180, %281 {kind = #vector.kind<or>} : vector<7xi32>, vector<7xi32>
        %283 = index.maxu %127, %c15
        %alloc_58 = memref.alloc() : memref<16xi1>
        %284 = math.absi %3 : tensor<7x7xi64>
        %285 = index.floordivs %181, %117
        %286 = math.log %6 : tensor<16xf32>
        %287 = bufferization.to_tensor %alloc_12 : memref<7x7xi1>
        %288 = index.divu %263, %c8
        %289 = vector.broadcast %cst_1 : f32 to vector<7x16x7xf32>
        scf.yield %289 : vector<7x16x7xf32>
      }
      %269 = math.ctlz %21 : tensor<i16>
      %270 = vector.shuffle %158, %158 [0, 2, 3, 4, 6, 7, 8, 11, 13] : vector<7x1xf32>, vector<7x1xf32>
      %271 = math.log %200 : tensor<7x16x7xf32>
      %272 = index.maxu %78, %c8
    }
    %207 = math.ctlz %true_3 : i1
    %208 = index.floordivs %56, %78
    %209 = index.divu %24, %c2
    %210 = arith.remsi %183, %183 : i1
    %211 = tensor.empty() : tensor<i16>
    %mapped_50 = linalg.map ins(%21, %20, %20 : tensor<i16>, tensor<i16>, tensor<i16>) outs(%211 : tensor<i16>)
      (%in: i16, %in_56: i16, %in_57: i16) {
        %257 = arith.ori %false_46, %true_25 : i1
        %alloc_58 = memref.alloc() : memref<16xf16>
        %258 = scf.execute_region -> index {
          %280 = math.ceil %9 : tensor<7x16x7xf32>
          %281 = math.log1p %expanded_37 : tensor<7x16x7x1xf32>
          %282 = vector.maskedload %alloc_10[%c2, %c4, %c4], %33, %34 : memref<7x16x7xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
          %283 = arith.cmpi uge, %true_25, %true_25 : i1
          %284 = memref.atomic_rmw addi %in_56, %alloc_22[%c4] : (i16, memref<16xi16>) -> i16
          %285 = memref.atomic_rmw muli %c0_i64, %alloc_16[%c3, %c1, %c1] : (i64, memref<7x16x7xi64>) -> i64
          %286 = affine.max affine_map<(d0) -> ((d0 + 32) * 2)>(%rank_35)
          %collapsed_66 = tensor.collapse_shape %generated [[0, 1], [2]] : tensor<?x?x?xi32> into tensor<?x?xi32>
          %287 = arith.divui %183, %false_33 : i1
          %288 = index.maxu %c11, %c2
          %289 = index.maxs %56, %286
          %290 = tensor.empty() : tensor<112x7xf32>
          %291 = linalg.matmul ins(%collapsed_39, %from_elements : tensor<112x7xf32>, tensor<7x7xf32>) outs(%290 : tensor<112x7xf32>) -> tensor<112x7xf32>
          %292 = vector.broadcast %rank_35 : index to vector<1xindex>
          %293 = vector.broadcast %false : i1 to vector<1xi1>
          %294 = vector.broadcast %cst_2 : f16 to vector<1xf16>
          vector.scatter %alloc_18[%c4] [%292], %293, %294 : memref<16xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
          %295 = vector.insert %188, %179 [0] : vector<7xf16> into vector<7x7xf16>
          %296 = tensor.empty() : tensor<16x7x16xf16>
          %splat_67 = tensor.splat %c706296327_i32 : tensor<16x7x16xi32>
          scf.yield %c1 : index
        }
        %259 = math.log1p %9 : tensor<7x16x7xf32>
        %260 = affine.max affine_map<(d0) -> ((d0 mod 128) * 128)>(%c7)
        %splat_59 = tensor.splat %in_56 : tensor<7x7xi16>
        %261 = index.maxu %c4, %181
        %262 = vector.flat_transpose %180 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
        %263 = vector.broadcast %148 : index to vector<7xindex>
        vector.scatter %203[%c13, %c5, %c10] [%263], %33, %19 : memref<16x7x16xi16>, vector<7xindex>, vector<7xi1>, vector<7xi16>
        %264 = memref.alloca_scope  -> (memref<7x7xi1>) {
          %280 = arith.cmpi ugt, %false_23, %false : i1
          %collapsed_66 = tensor.collapse_shape %7 [[0, 1]] : tensor<7x7xi1> into tensor<49xi1>
          %281 = memref.realloc %138 : memref<16xi1> to memref<7xi1>
          %282 = arith.floordivsi %false, %false_33 : i1
          %283 = arith.remf %cst_30, %cst_1 : f32
          %284 = arith.ori %false, %false_0 : i1
          %285 = math.fma %cst_1, %extracted, %extracted : f32
          %286 = vector.multi_reduction <add>, %98, %34 [0] : vector<7x7xf32> to vector<7xf32>
          %287 = index.casts %71 : index to i32
          %288 = arith.maxsi %c1_i16, %in : i16
          %expanded_67 = tensor.expand_shape %191 [[0], [1, 2]] : tensor<7x7xi1> into tensor<7x7x1xi1>
          %289 = index.casts %152 : index to i32
          %290 = math.log %6 : tensor<16xf32>
          %291 = arith.remf %cst_1, %cst : f32
          %292 = arith.shli %c1138262349_i32, %c1480477621_i32 : i32
          %cast_68 = tensor.cast %collapsed : tensor<112x7xf32> to tensor<?x?xf32>
          %293 = vector.insert %false_33, %193 [8] : i1 into vector<16xi1>
          %294 = index.floordivs %c10, %258
          %295 = arith.maxui %in, %in_57 : i16
          %296 = math.ceil %extracted : f32
          %297 = math.absf %105 : tensor<7x16x7xf16>
          %298 = math.roundeven %9 : tensor<7x16x7xf32>
          %299 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %98, %99, %99 : vector<7x7xf32>, vector<7x7xf32> into vector<7x7xf32>
          %alloc_69 = memref.alloc() : memref<16x7x16xf32>
          %300 = vector.broadcast %c1138262349_i32 : i32 to vector<16x7x16xi32>
          %301 = vector.gather %alloc_69[%c12, %c8, %100] [%300], %104, %86 : memref<16x7x16xf32>, vector<16x7x16xi32>, vector<16x7x16xi1>, vector<16x7x16xf32> into vector<16x7x16xf32>
          %302 = math.atan %cst_5 : f16
          %303 = arith.remsi %in, %c0_i16 : i16
          %304 = vector.broadcast %183 : i1 to vector<7x16xi1>
          %305 = vector.insert %304, %55 [10] : vector<7x16xi1> into vector<16x7x16xi1>
          %rank_70 = tensor.rank %transposed : tensor<7x7xf32>
          %306 = math.log %105 : tensor<7x16x7xf16>
          %307 = arith.minsi %false_46, %false : i1
          %308 = math.exp2 %4 : tensor<7x16x7xf32>
          %309 = memref.atomic_rmw mulf %cst_5, %alloc_21[] : (f16, memref<f16>) -> f16
          memref.alloca_scope.return %alloc_12 : memref<7x7xi1>
        }
        %265 = vector.insert %true_25, %33 [0] : i1 into vector<7xi1>
        %266 = arith.minf %cst_2, %cst_2 : f16
        %267 = math.powf %cst_4, %cst_30 : f32
        %268 = math.cos %6 : tensor<16xf32>
        %269 = vector.insert %34, %99 [4] : vector<7xf32> into vector<7x7xf32>
        %270 = vector.outerproduct %32, %32, %98 {kind = #vector.kind<add>} : vector<7xf32>, vector<7xf32>
        %alloc_60 = memref.alloc() : memref<f16>
        memref.copy %alloc_21, %alloc_60 : memref<f16> to memref<f16>
        %true_61 = arith.constant true
        %271 = vector.insertelement %cst_4, %206[%c9 : index] : vector<16xf32>
        %expanded_62 = tensor.expand_shape %196 [[0], [1], [2, 3]] : tensor<7x16x7xi64> into tensor<7x16x7x1xi64>
        memref.store %cst_2, %alloc_18[%c11] : memref<16xf16>
        %272 = vector.create_mask %rank_26, %27, %rank_24 : vector<7x16x7xi1>
        %rank_63 = tensor.rank %collapsed : tensor<112x7xf32>
        %273 = index.sizeof
        %splat_64 = tensor.splat %in : tensor<16xi16>
        %274 = math.powf %122, %6 : tensor<16xf32>
        %275 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%splat_59, %alloc_17 : tensor<7x7xi16>, memref<7x7xi16>) outs(%splat_29 : tensor<7x16x7xi16>) {
        ^bb0(%in_66: i16, %in_67: i16, %out: i16):
          %true_68 = index.bool.constant true
          %280 = vector.insert %188, %179 [1] : vector<7xf16> into vector<7x7xf16>
          %281 = math.sqrt %18 : tensor<7x7xf32>
          %282 = index.floordivs %192, %c5
          %283 = arith.remsi %c0_i16, %in_56 : i16
          %284 = index.divu %60, %rank
          %expanded_69 = tensor.expand_shape %5 [[0, 1]] : tensor<16xi16> into tensor<16x1xi16>
          %285 = bufferization.to_tensor %alloc_12 : memref<7x7xi1>
          %286 = arith.maxui %c302691568_i64, %c0_i64 : i64
          %287 = affine.max affine_map<(d0, d1) -> (-(d0 - 1), d1 - 128, -d0 - (d1 - (d0 - 1) ceildiv 64) * 2, d0 mod 64)>(%rank_26, %c5)
          %288 = arith.mulf %cst_30, %cst_4 : f32
          %289 = index.casts %rank_35 : index to i32
          %290 = affine.min affine_map<(d0, d1) -> (0)>(%209, %rank_28)
          %291 = math.cttz %splat_29 : tensor<7x16x7xi16>
          %292 = math.tan %collapsed : tensor<112x7xf32>
          %293 = index.divu %123, %c4
          %294 = vector.extract_strided_slice %193 {offsets = [10], sizes = [5], strides = [1]} : vector<16xi1> to vector<5xi1>
          %295 = affine.min affine_map<(d0, d1, d2, d3) -> (((-d2) ceildiv 2) * 8, d0, d1)>(%152, %rank_35, %c4, %rank_26)
          %false_70 = index.bool.constant false
          %alloc_71 = memref.alloc() : memref<7x7xi32>
          %rank_72 = tensor.rank %expanded_69 : tensor<16x1xi16>
          %296 = vector.transpose %34, [0] : vector<7xf32> to vector<7xf32>
          %297 = vector.broadcast %cst_30 : f32 to vector<7x7xf32>
          %298 = vector.fma %297, %297, %297 : vector<7x7xf32>
          %299 = arith.muli %in, %in : i16
          %300 = affine.max affine_map<(d0, d1) -> ((d0 + d1 ceildiv 128) * 64, 0)>(%c2, %c11)
          %301 = bufferization.to_memref %1 : memref<7x16x7xf32>
          %cst_73 = arith.constant 4.092800e+04 : f16
          %302 = vector.broadcast %false_70 : i1 to vector<16x16xi1>
          %303 = vector.outerproduct %193, %193, %302 {kind = #vector.kind<or>} : vector<16xi1>, vector<16xi1>
          %304 = bufferization.to_memref %generated : memref<?x?x?xi32>
          %305 = vector.flat_transpose %193 {columns = 4 : i32, rows = 4 : i32} : vector<16xi1> -> vector<16xi1>
          affine.store %cst_2, %alloc_21[] : memref<f16>
          %306 = math.log1p %collapsed_39 : tensor<112x7xf32>
          linalg.yield %c1_i16 : i16
        } -> tensor<7x16x7xi16>
        %c-15850_i16 = arith.constant -15850 : i16
        %276 = index.ceildivu %24, %rank
        %277 = math.sqrt %from_elements : tensor<7x7xf32>
        %278 = index.casts %rank : index to i32
        %279 = math.log10 %1 : tensor<7x16x7xf32>
        %c1_i16_65 = arith.constant 1 : i16
        linalg.yield %c1_i16_65 : i16
      }
    %212 = arith.remui %c302691568_i64, %c302691568_i64 : i64
    %213 = math.ctpop %c706296327_i32 : i32
    %214 = vector.shuffle %115, %114 [0, 1, 2, 10, 12, 18, 21, 24, 25, 26, 29, 30, 31] : vector<16x7x16xf32>, vector<16x7x16xf32>
    %215 = math.ipowi %c302691568_i64, %c302691568_i64 : i64
    %216 = arith.floordivsi %c0_i64, %c302691568_i64 : i64
    %217 = scf.index_switch %100 -> tensor<7x7xi16> 
    case 1 {
      %257 = vector.reduction <add>, %34 : vector<7xf32> into f32
      %258 = tensor.empty() : tensor<7x7xf32>
      %259 = linalg.matmul ins(%10, %10 : tensor<7x7xf32>, tensor<7x7xf32>) outs(%258 : tensor<7x7xf32>) -> tensor<7x7xf32>
      %rank_56 = tensor.rank %5 : tensor<16xi16>
      %260 = arith.divui %183, %true : i1
      %261 = math.ipowi %c647337080_i32, %c1951499111_i32 : i32
      %from_elements_57 = tensor.from_elements %cst_4, %cst, %extracted, %cst_30, %cst_4, %cst_30, %extracted, %extracted, %cst_1, %cst_1, %cst_1, %cst_30, %cst, %cst_30, %cst_4, %cst : tensor<16xf32>
      %262 = index.divu %c4, %c10
      %collapsed_58 = tensor.collapse_shape %cast [[0, 1]] : tensor<?x?xi64> into tensor<?xi64>
      %263 = vector.reduction <maxf>, %32 : vector<7xf32> into f32
      %264 = vector.matrix_multiply %188, %188 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf16>, vector<7xf16>) -> vector<1xf16>
      %265 = index.divs %54, %56
      %266 = index.ceildivs %c13, %c1
      %267 = vector.reduction <mul>, %180 : vector<7xi32> into i32
      %268 = vector.flat_transpose %264 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
      %from_elements_59 = tensor.from_elements %false, %false_23, %true_25, %183, %false_23, %true_25, %false_0, %false_0, %false, %true, %false, %true_3, %false, %false_46, %false_0, %183, %false, %false_33, %183, %false_23, %true_3, %false, %false_33, %false_0, %false_46, %183, %true_25, %false_0, %false_0, %true, %183, %false_33, %true_3, %false_33, %true_25, %false_46, %false_23, %false, %true_3, %183, %true_3, %false_33, %false, %183, %183, %false_33, %false, %false_0, %false_46, %false, %true, %false, %false_33, %183, %183, %false_33, %true, %true_25, %false_33, %false_33, %true_3, %false_46, %true_3, %false_33, %false_33, %183, %false_23, %false_23, %true_25, %false_46, %false, %true_25, %false_46, %false, %true_3, %false_46, %true_25, %false, %false_33, %183, %false_46, %true_25, %false_46, %true, %false, %183, %false_0, %true_25, %true_3, %false_0, %183, %true, %true_25, %false, %false_33, %false_33, %false_23, %true, %183, %true_3, %true, %true_25, %true_25, %false_23, %true, %true, %false_23, %true, %true_3, %false_0, %true_3, %false_0, %false_23, %false, %true_3, %183, %false, %false_33, %false_23, %false_0, %true, %false_46, %false_46, %false_0, %false_0, %false_33, %false_46, %true_3, %false_23, %false_46, %false_46, %true_3, %183, %false_46, %false_0, %false_0, %false, %true_3, %false_23, %false_23, %false_23, %false_46, %false_46, %false_33, %183, %true_25, %false_33, %false_46, %false_33, %false_46, %false_23, %false_0, %true_3, %true, %true_3, %true, %183, %true, %false_0, %false_46, %false_23, %false_33, %false_23, %true_25, %false_33, %false_46, %true, %false_23, %false_46, %false_23, %183, %true_3, %true_25, %false, %false_0, %false, %false_0, %false_0, %true_25, %false_0, %false, %false, %true_25, %false_0, %false_46, %false_46, %false, %false_23, %true_25, %false_33, %false_23, %false_0, %true_3, %183, %false_33, %false_23, %false_0, %false_46, %false, %true, %183, %false, %true, %false_46, %true_3, %true, %true_25, %false_23, %false_46, %false_23, %false_23, %false_46, %false_23, %183, %183, %false_33, %true_25, %183, %false, %false_0, %true_25, %true_25, %true, %false_46, %true_25, %false, %true, %false_33, %183, %false_23, %183, %true_25, %true_25, %false, %false_46, %true_3, %true_3, %true_25, %183, %false_0, %true, %true_3, %183, %false_23, %false, %true_3, %false_0, %false, %false_33, %false_23, %false_23, %true_25, %true_25, %false, %false, %183, %false, %false_46, %false, %false_0, %true_3, %false, %false_0, %false, %true_3, %true_25, %true_25, %true_3, %183, %false, %false_46, %true_3, %true, %true, %false, %false_33, %true_3, %false_0, %true_25, %false_33, %false, %true, %true_25, %true_3, %183, %false_0, %false, %true_3, %false_46, %false_46, %true_25, %false_0, %true_3, %false_33, %false_0, %true_3, %false_0, %false_0, %true, %true, %false_33, %false, %false, %false_23, %false_23, %false, %true_25, %false_23, %183, %false_46, %false_0, %true_25, %false_0, %false_46, %true_3, %false_33, %false, %183, %false, %false_33, %true, %true_3, %false_23, %true, %true, %false_33, %false, %183, %false_46, %true_25, %183, %true, %false_46, %false_46, %true_25, %false_33, %true, %false, %false_23, %true_3, %false_46, %183, %true_3, %true_25, %false, %false_33, %false_46, %true_3, %true_25, %true_25, %183, %false_33, %false_46, %false_0, %true, %false_46, %true_25, %true, %true_3, %true_25, %true_25, %false_46, %183, %true_25, %true_25, %false_33, %true, %true, %true_25, %true_3, %false, %183, %true_3, %false, %true_3, %false, %true, %false, %false_0, %183, %false_33, %true_25, %183, %false_0, %false, %false_46, %false, %true, %183, %false_33, %false_46, %true_3, %false_23, %false_23, %false, %false, %true_3, %false_33, %false_0, %false_33, %false, %183, %false_0, %false_46, %false_0, %false_46, %true_3, %false_33, %true_25, %true, %false_23, %true_25, %false_0, %false_0, %false, %183, %true_3, %true_3, %false_23, %true, %false, %183, %false_23, %false_0, %false, %true_25, %false_33, %true, %true_3, %false_33, %false, %true_25, %true_3, %false_33, %false_33, %true, %false, %true, %false, %false_23, %false, %false_23, %true_3, %false_0, %true_25, %true, %false_0, %false_46, %true, %false_0, %true_25, %183, %true, %true_25, %false_46, %183, %true_3, %false_46, %false_46, %183, %true_25, %false_0, %true, %true_25, %false_23, %false_23, %false_46, %false_46, %false_0, %true, %true, %183, %false_23, %false_46, %true_25, %true_3, %false_0, %183, %false_23, %false_0, %true_3, %false_46, %true_25, %false_46, %false, %false_23, %true_25, %false_0, %false_46, %183, %false_33, %true_3, %true_3, %true_25, %true_3, %false, %183, %false, %false_33, %true_25, %false_46, %false_46, %true_25, %183, %183, %true, %false_33, %true, %183, %false_46, %false_33, %true_25, %false_33, %false_33, %false_46, %true, %false_33, %false_23, %true_25, %true, %false_46, %false_46, %false_23, %true_3, %false, %false_46, %false, %false_23, %false, %false_0, %false_46, %false, %183, %true, %183, %false_46, %false_0, %true, %true_25, %false, %false_0, %false_33, %false_23, %true_3, %true, %false_33, %true, %false_23, %false_33, %false_23, %false_23, %true, %false_46, %true, %true_25, %true, %false_0, %false_0, %false, %true, %183, %false, %false_0, %false, %false_0, %true_3, %true_3, %false_0, %true_25, %false_33, %false_33, %true, %true, %true_25, %true_25, %true_3, %false_33, %false_46, %false, %183, %true, %false_46, %false_46, %183, %true_3, %true_25, %false_33, %false_33, %true_3, %false_46, %false_23, %false_33, %true_25, %true_3, %false_23, %true_3, %true, %false_0, %true, %true, %true_3, %false_23, %false_46, %false_46, %true_25, %true, %false_46, %false_46, %true, %false_33, %true_25, %true_3, %false_23, %false_23, %false_0, %true, %183, %false_46, %183, %false_46, %true_3, %183, %false_23, %false_33, %false, %true_25, %false_23, %false_46, %false_0, %true_25, %false_46, %false, %true_25, %true_3, %false_0, %true_3, %183, %false_46, %false_0, %true, %true_3, %true_3, %false_0, %183, %false_33, %false_33, %true_3, %false_46, %false_46, %true, %false_46, %183, %183, %true_25, %true_3, %true_25, %false, %true_25, %false_0, %false_0, %false_33, %true_25, %false_46, %false_33, %false_46, %true, %true_3, %false_0, %true_25, %183, %true_25, %true, %true_3, %true_25, %false_23, %false_0, %true_3, %true_3, %true_3, %true, %false, %false_33, %false_33, %true_3, %true_25, %false_0, %183, %183, %true, %false_46, %true_3, %183, %false, %false_0, %false_33, %183, %true, %false_33, %true_25, %183, %false_23, %true, %false, %false_23, %false_33, %false_0, %false_46, %false_46, %true_25, %183, %false_46, %false_0, %false, %false, %false_0, %true, %false_33, %false_46, %false, %false_46, %false_0, %false, %false_33, %true, %true_3, %false_46, %false_46, %false_23, %false_23, %false_46, %false, %true_25, %false_23, %false_33, %true, %false_33, %true_25, %true_25, %false, %false_33, %false_0, %false_0, %false_33, %false_0, %false_33, %true, %false_0, %false_0, %true, %true_3, %false, %false_33, %true_25, %false_33, %true_25, %false_46, %false, %true_3, %false_0, %true_3, %183, %true, %false, %true_3, %true_25, %true, %true_25, %true_3, %false_23, %false_0, %false_33, %false_33, %false_0, %true_3, %true, %183, %false_46, %183, %false_23, %false_33, %183, %false_0, %false_0, %true_3 : tensor<7x16x7xi1>
      %269 = vector.load %alloc_21[] : memref<f16>, vector<16x7x16xf16>
      %270 = tensor.empty() : tensor<7x7xi16>
      scf.yield %270 : tensor<7x7xi16>
    }
    default {
      %257 = math.fma %11, %17, %105 : tensor<7x16x7xf16>
      %258 = arith.shli %c302691568_i64, %c0_i64 : i64
      %259 = math.round %cst_4 : f32
      %260 = vector.insert %c0_i16, %19 [0] : i16 into vector<7xi16>
      %261 = index.casts %false_33 : i1 to index
      scf.if %false_33 {
        %271 = vector.reduction <minf>, %34 : vector<7xf32> into f32
        %272 = arith.mulf %cst_5, %cst_5 : f16
        %273 = math.exp2 %102 : tensor<7x7xf32>
        %274 = arith.floordivsi %c0_i16, %c1_i16 : i16
        %275 = vector.flat_transpose %32 {columns = 7 : i32, rows = 1 : i32} : vector<7xf32> -> vector<7xf32>
        %276 = vector.extract %158[5] : vector<7x1xf32>
        %277 = arith.maxsi %c619965047_i32, %c1951499111_i32 : i32
        %278 = math.sqrt %collapsed_39 : tensor<112x7xf32>
      }
      %262 = index.casts %c11 : index to i32
      %263 = vector.broadcast %c1951499111_i32 : i32 to vector<16xi32>
      scf.if %false_0 {
        %271 = arith.minsi %c647337080_i32, %c706296327_i32 : i32
        %272 = math.roundeven %expanded_37 : tensor<7x16x7x1xf32>
        %true_57 = index.bool.constant true
        %273 = math.round %cst_2 : f16
        %274 = arith.divui %false_23, %true_3 : i1
        %275 = index.divu %117, %c6
        %276 = index.divu %148, %275
        %cst_58 = arith.constant 1.000000e+00 : f16
        %277 = vector.transfer_read %alloc_9[%100, %194], %cst_58 : memref<7x7xf16>, vector<1xf16>
      } else {
        %dest_57, %accumulated_value_58 = vector.scan <add>, %83, %130 {inclusive = false, reduction_dim = 0 : i64} : vector<7x16x7xi16>, vector<16x7xi16>
        %271 = vector.broadcast %extracted : f32 to vector<f32>
        %272 = vector.transfer_write %271, %6[%c13] : vector<f32>, tensor<16xf32>
        %273 = vector.splat %cst_1 : vector<16xf32>
        %274 = index.divs %209, %60
        %275 = arith.ori %c1_i16, %c0_i16 : i16
        %276 = math.log10 %collapsed_39 : tensor<112x7xf32>
        %277 = math.ctpop %15 : tensor<7x7xi32>
        %278 = vector.shuffle %128, %128 [0, 1] : vector<i32>, vector<i32>
      }
      %264 = arith.minsi %false_33, %true : i1
      %265 = math.ctlz %191 : tensor<7x7xi1>
      memref.assume_alignment %alloc_21, 1 : memref<f16>
      %266 = math.absf %cst : f32
      scf.index_switch %117 
      case 1 {
        %271 = arith.maxui %false_33, %false_0 : i1
        %272 = math.exp2 %10 : tensor<7x7xf32>
        %273 = vector.reduction <add>, %180 : vector<7xi32> into i32
        %274 = index.casts %c706296327_i32 : i32 to index
        %275 = math.cos %9 : tensor<7x16x7xf32>
        memref.assume_alignment %alloc_11, 16 : memref<7x7xi32>
        %276 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d0 floordiv 32) floordiv 8)>(%261, %c3, %rank_26, %c1)
        %277 = math.ctpop %false : i1
        %278 = bufferization.to_memref %from_elements : memref<7x7xf32>
        %279 = arith.ceildivsi %false_23, %false_33 : i1
        %280 = vector.flat_transpose %33 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
        %true_57 = index.bool.constant true
        %281 = math.sqrt %collapsed_39 : tensor<112x7xf32>
        %282 = arith.ceildivsi %c302691568_i64, %c302691568_i64 : i64
        %283 = math.exp %11 : tensor<7x16x7xf16>
        %284 = math.cos %transposed : tensor<7x7xf32>
        scf.yield
      }
      case 2 {
        %271 = index.casts %rank_35 : index to i32
        %272 = vector.splat %27 : vector<7x7xindex>
        %273 = vector.reduction <add>, %193 : vector<16xi1> into i1
        %274 = math.log %18 : tensor<7x7xf32>
        %275 = memref.load %alloc_11[%c2, %c3] : memref<7x7xi32>
        %false_57 = index.bool.constant false
        %276 = vector.insertelement %c1480477621_i32, %128[] : vector<i32>
        %277 = arith.minf %cst_2, %cst_5 : f16
        affine.store %false, %138[%c9] : memref<16xi1>
        %collapsed_58 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<16x7x16xi16> into tensor<112x16xi16>
        %collapsed_59 = tensor.collapse_shape %18 [[0, 1]] : tensor<7x7xf32> into tensor<49xf32>
        %278 = math.cttz %from_elements_49 : tensor<16x7x16xi16>
        %279 = arith.divui %c0_i64, %c302691568_i64 : i64
        memref.assume_alignment %alloc, 4 : memref<16xi32>
        %280 = index.maxu %208, %rank
        %collapsed_60 = tensor.collapse_shape %7 [[0, 1]] : tensor<7x7xi1> into tensor<49xi1>
        scf.yield
      }
      default {
        %271 = math.fma %cst_5, %cst_2, %cst_5 : f16
        %272 = arith.maxui %false_23, %false_23 : i1
        %273 = math.round %cst_5 : f16
        %alloc_57 = memref.alloc() : memref<7x16x7xi16>
        memref.copy %alloc_14, %alloc_57 : memref<7x16x7xi16> to memref<7x16x7xi16>
        %collapsed_58 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<7x16x7xf16> into tensor<112x7xf16>
        %274 = arith.ceildivsi %c619965047_i32, %c1138262349_i32 : i32
        %275 = math.log1p %200 : tensor<7x16x7xf32>
        %276 = math.fma %4, %9, %1 : tensor<7x16x7xf32>
        %277 = vector.extract_strided_slice %32 {offsets = [4], sizes = [2], strides = [1]} : vector<7xf32> to vector<2xf32>
        %278 = arith.shli %false_46, %true_3 : i1
        %279 = math.log %cst : f32
        %280 = math.ctlz %true_25 : i1
        %281 = math.absi %12 : tensor<16x7x16xi32>
        affine.store %true, %138[%c11] : memref<16xi1>
        %false_59 = index.bool.constant false
        %282 = vector.insertelement %c1_i16, %174[] : vector<i16>
      }
      %267 = memref.atomic_rmw mins %c0_i16, %alloc_17[%c3, %c2] : (i16, memref<7x7xi16>) -> i16
      %268 = tensor.empty() : tensor<16x7xf32>
      %alloc_56 = memref.alloc() : memref<7xf32>
      %269 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed, %268, %alloc_56 : tensor<7x7xf32>, tensor<16x7xf32>, memref<7xf32>) outs(%1 : tensor<7x16x7xf32>) {
      ^bb0(%in: f32, %in_57: f32, %in_58: f32, %out: f32):
        %271 = index.casts %rank : index to i32
        %272 = math.round %in : f32
        bufferization.dealloc_tensor %8 : tensor<16x7x16xi16>
        %collapsed_59 = tensor.collapse_shape %expanded [[0, 1], [2], [3]] : tensor<7x16x7x1xf16> into tensor<112x7x1xf16>
        %alloc_60 = memref.alloc() : memref<7x16x7xi64>
        memref.copy %alloc_16, %alloc_60 : memref<7x16x7xi64> to memref<7x16x7xi64>
        %273 = math.powf %in_58, %cst_4 : f32
        %alloc_61 = memref.alloc() : memref<7x16x7xf16>
        %274 = vector.reduction <minf>, %34 : vector<7xf32> into f32
        %275 = index.divu %c9, %125
        %alloc_62 = memref.alloc() : memref<f16>
        memref.copy %alloc_21, %alloc_62 : memref<f16> to memref<f16>
        %276 = affine.min affine_map<(d0, d1) -> (d0 + d1 + d1, d1 + (d0 + d1) mod 128 + (d0 + d1) floordiv 8, d0 + d1, d1)>(%c0, %c6)
        %277 = index.ceildivu %c14, %rank
        %c0_i64_63 = arith.constant 0 : i64
        %278 = vector.transfer_read %75[%125, %c7, %276], %c0_i64_63 : tensor<7x16x7xi64>, vector<16x16xi64>
        %279 = affine.load %alloc_7[%c0, %c10] : memref<7x7xf32>
        %280 = arith.subi %true, %true_3 : i1
        %281 = bufferization.to_tensor %alloc_6 : memref<7x7xf16>
        %282 = arith.ori %c0_i64, %92 : i64
        %283 = math.log10 %122 : tensor<16xf32>
        %284 = arith.subi %c0_i16, %c0_i16 : i16
        %285 = index.castu %100 : index to i32
        %286 = vector.broadcast %extracted : f32 to vector<7x16x7xf32>
        %287 = vector.fma %286, %286, %286 : vector<7x16x7xf32>
        %288 = math.fma %1, %9, %1 : tensor<7x16x7xf32>
        %false_64 = index.bool.constant false
        %cast_65 = tensor.cast %expanded_42 : tensor<7x16x7x1xi16> to tensor<?x?x?x?xi16>
        %289 = arith.muli %c1951499111_i32, %c619965047_i32 : i32
        %290 = index.ceildivs %c9, %94
        %291 = arith.floordivsi %c1951499111_i32, %c619965047_i32 : i32
        %292 = arith.maxsi %false_46, %183 : i1
        %293 = index.maxs %276, %276
        %rank_66 = tensor.rank %from_elements : tensor<7x7xf32>
        %294 = vector.broadcast %290 : index to vector<16xindex>
        %295 = vector.broadcast %cst_5 : f16 to vector<16xf16>
        vector.scatter %alloc_18[%c2] [%294], %193, %295 : memref<16xf16>, vector<16xindex>, vector<16xi1>, vector<16xf16>
        %296 = vector.broadcast %out : f32 to vector<7x16xf32>
        %297 = vector.insert %296, %85 [14] : vector<7x16xf32> into vector<16x7x16xf32>
        linalg.yield %out : f32
      } -> tensor<7x16x7xf32>
      %270 = tensor.empty() : tensor<7x7xi16>
      scf.yield %270 : tensor<7x7xi16>
    }
    %218 = affine.max affine_map<(d0, d1) -> (-(d1 + d0 * 16) - 8, d0, d1 + d0 * 16, d1 ceildiv 2)>(%181, %rank)
    %219 = math.absi %75 : tensor<7x16x7xi64>
    %220 = arith.ori %true_25, %false_0 : i1
    %221 = arith.maxsi %false, %false_46 : i1
    %222 = vector.insert %cst_2, %188 [3] : f16 into vector<7xf16>
    %223 = vector.insert %cst_4, %206 [12] : f32 into vector<16xf32>
    scf.if %false_46 {
      %257 = arith.floordivsi %false_33, %true_3 : i1
      %258 = vector.insert %c0_i16, %19 [4] : i16 into vector<7xi16>
      %259 = math.fma %cst_4, %cst_1, %cst_1 : f32
      %260 = tensor.empty() : tensor<16xf32>
      %261 = arith.ori %c0_i64, %c0_i64 : i64
      %262 = arith.minsi %c1480477621_i32, %c1138262349_i32 : i32
      %263 = vector.reduction <minui>, %19 : vector<7xi16> into i16
      affine.store %cst_4, %alloc_10[%c7, %c15, %c5] : memref<7x16x7xf32>
    } else {
      %257 = index.sub %c6, %181
      %258 = memref.realloc %alloc : memref<16xi32> to memref<7xi32>
      %259 = arith.addi %true, %false_0 : i1
      %260 = math.log10 %200 : tensor<7x16x7xf32>
      %dest_56, %accumulated_value_57 = vector.scan <add>, %179, %188 {inclusive = false, reduction_dim = 0 : i64} : vector<7x7xf16>, vector<7xf16>
      %261 = index.divu %257, %c13
      %262 = math.log10 %1 : tensor<7x16x7xf32>
      %c1267750900_i32 = arith.constant 1267750900 : i32
    }
    %224 = tensor.empty() : tensor<7x7xi1>
    %225 = linalg.matmul ins(%7, %7 : tensor<7x7xi1>, tensor<7x7xi1>) outs(%224 : tensor<7x7xi1>) -> tensor<7x7xi1>
    %226 = math.cos %6 : tensor<16xf32>
    %227 = math.round %4 : tensor<7x16x7xf32>
    %228 = math.fma %11, %105, %17 : tensor<7x16x7xf16>
    %229 = vector.reduction <maxf>, %206 : vector<16xf32> into f32
    %230 = tensor.empty() : tensor<16xi64>
    %231 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_20, %alloc_20, %230 : memref<7x7xi64>, memref<7x7xi64>, tensor<16xi64>) outs(%2 : tensor<7x16x7xi64>) {
    ^bb0(%in: i64, %in_56: i64, %in_57: i64, %out: i64):
      %cast_58 = tensor.cast %18 : tensor<7x7xf32> to tensor<?x?xf32>
      %257 = arith.ceildivsi %in_57, %in : i64
      %258 = math.ipowi %211, %211 : tensor<i16>
      %259 = math.exp %cst_4 : f32
      %260 = math.absf %11 : tensor<7x16x7xf16>
      %rank_59 = tensor.rank %8 : tensor<16x7x16xi16>
      %261 = math.log2 %16 : tensor<7x16x7xf16>
      %262 = arith.addi %c302691568_i64, %92 : i64
      %263 = affine.for %arg2 = 0 to 85 iter_args(%arg3 = %105) -> (tensor<7x16x7xf16>) {
        affine.yield %11 : tensor<7x16x7xf16>
      }
      %264 = vector.shuffle %158, %158 [1, 2, 4, 8, 10, 11] : vector<7x1xf32>, vector<7x1xf32>
      %splat_60 = tensor.splat %out : tensor<7x16x7xi64>
      %265 = memref.load %alloc_6[%c2, %c0] : memref<7x7xf16>
      %266 = vector.insertelement %c0_i16, %174[] : vector<i16>
      %collapsed_61 = tensor.collapse_shape %7 [[0, 1]] : tensor<7x7xi1> into tensor<49xi1>
      affine.store %in, %alloc_16[%c15, %c12, %c13] : memref<7x16x7xi64>
      %267 = math.ceil %cst_5 : f16
      %collapsed_62 = tensor.collapse_shape %2 [[0, 1], [2]] : tensor<7x16x7xi64> into tensor<112x7xi64>
      %268 = math.log %cst_4 : f32
      %269 = vector.reduction <add>, %34 : vector<7xf32> into f32
      %270 = memref.alloca_scope  -> (i1) {
        %extracted_64 = tensor.extract %8[%c13, %c0, %c8] : tensor<16x7x16xi16>
        %280 = vector.broadcast %cst_1 : f32 to vector<7x7xf32>
        %281 = vector.fma %280, %280, %99 : vector<7x7xf32>
        %collapsed_65 = tensor.collapse_shape %collapsed_39 [[0, 1]] : tensor<112x7xf32> into tensor<784xf32>
        %282 = arith.muli %c0_i64, %in_57 : i64
        %283 = arith.minf %cst, %extracted : f32
        %284 = bufferization.clone %alloc_18 : memref<16xf16> to memref<16xf16>
        %285 = index.ceildivs %56, %rank_28
        %286 = index.maxu %c2, %208
        %287 = tensor.empty() : tensor<7x7xi1>
        %288 = linalg.matmul ins(%191, %224 : tensor<7x7xi1>, tensor<7x7xi1>) outs(%287 : tensor<7x7xi1>) -> tensor<7x7xi1>
        %289 = arith.minf %cst_2, %cst_2 : f16
        %290 = vector.insertelement %c1951499111_i32, %180[%94 : index] : vector<7xi32>
        %291 = vector.reduction <maxui>, %193 : vector<16xi1> into i1
        %292 = tensor.empty() : tensor<112x7xf32>
        %293 = linalg.matmul ins(%collapsed_39, %transposed : tensor<112x7xf32>, tensor<7x7xf32>) outs(%292 : tensor<112x7xf32>) -> tensor<112x7xf32>
        %294 = affine.apply affine_map<(d0, d1) -> (((d0 mod 32) floordiv 8) * 4)>(%c13, %181)
        %collapsed_66 = tensor.collapse_shape %3 [[0, 1]] : tensor<7x7xi64> into tensor<49xi64>
        %295 = affine.max affine_map<(d0, d1) -> ((d0 ceildiv 4) floordiv 4, d0 ceildiv 8, (d0 ceildiv 4) floordiv 4 - 9)>(%94, %rank_28)
        %296 = vector.broadcast %in_56 : i64 to vector<16xi64>
        %297 = vector.broadcast %c1480477621_i32 : i32 to vector<16xi32>
        %298 = vector.gather %alloc_16[%c15, %125, %194] [%297], %193, %296 : memref<7x16x7xi64>, vector<16xi32>, vector<16xi1>, vector<16xi64> into vector<16xi64>
        %299 = index.floordivs %c3, %286
        %300 = index.maxu %100, %78
        %301 = index.divu %192, %rank_24
        %302 = arith.minf %cst_1, %cst : f32
        %303 = index.maxu %117, %rank_26
        %304 = vector.insertelement %true_3, %193[%rank_59 : index] : vector<16xi1>
        %false_67 = index.bool.constant false
        %alloc_68 = memref.alloc() : memref<16x7x16xi64>
        %305 = arith.muli %true, %true_3 : i1
        %306 = tensor.empty() : tensor<112x7xf32>
        %307 = linalg.matmul ins(%292, %10 : tensor<112x7xf32>, tensor<7x7xf32>) outs(%306 : tensor<112x7xf32>) -> tensor<112x7xf32>
        %308 = vector.broadcast %c0_i16 : i16 to vector<i16>
        %309 = vector.transfer_write %308, %splat_29[%c15, %100, %c13] : vector<i16>, tensor<7x16x7xi16>
        %alloc_69 = memref.alloc() : memref<f16>
        memref.copy %alloc_21, %alloc_69 : memref<f16> to memref<f16>
        %310 = arith.minui %in_57, %out : i64
        affine.store %extracted_64, %alloc_14[%c8, %c1, %c15] : memref<7x16x7xi16>
        %311 = vector.multi_reduction <mul>, %34, %cst_30 [0] : vector<7xf32> to f32
        memref.alloca_scope.return %183 : i1
      }
      %271 = index.maxs %c2, %125
      %272 = arith.muli %92, %out : i64
      %273 = vector.transpose %99, [0, 1] : vector<7x7xf32> to vector<7x7xf32>
      %expanded_63 = tensor.expand_shape %collapsed_62 [[0], [1, 2]] : tensor<112x7xi64> into tensor<112x7x1xi64>
      %274 = scf.while (%arg2 = %alloc) : (memref<16xi32>) -> memref<16xi32> {
        %280 = arith.maxf %cst_1, %cst_4 : f32
        %281 = math.exp %expanded_37 : tensor<7x16x7x1xf32>
        %282 = arith.remf %extracted, %cst_1 : f32
        %283 = vector.broadcast %in_56 : i64 to vector<16x7x16xi64>
        %284 = arith.minf %cst_5, %cst_2 : f16
        %285 = index.ceildivu %60, %c4
        %splat_64 = tensor.splat %cst_4 : tensor<16xf32>
        memref.store %cst_5, %alloc_21[] : memref<f16>
        scf.condition(%false_33) %arg2 : memref<16xi32>
      } do {
      ^bb0(%arg2: memref<16xi32>):
        %280 = affine.min affine_map<(d0) -> (((d0 * 9) ceildiv 16) floordiv 2, ((d0 * 9) ceildiv 16) floordiv 2, d0 * 9, d0)>(%71)
        %281 = math.log1p %105 : tensor<7x16x7xf16>
        %282 = arith.minsi %true_3, %true : i1
        %283 = arith.divui %false_0, %false_46 : i1
        %rank_64 = tensor.rank %collapsed_62 : tensor<112x7xi64>
        %284 = vector.reduction <minf>, %188 : vector<7xf16> into f16
        %285 = arith.ori %true, %false_33 : i1
        %286 = arith.muli %c0_i16, %c1_i16 : i16
        %287 = index.sizeof
        %288 = vector.broadcast %extracted : f32 to vector<16xf32>
        %289 = vector.fma %288, %288, %206 : vector<16xf32>
        %290 = arith.addi %c1480477621_i32, %c619965047_i32 : i32
        %291 = math.log %9 : tensor<7x16x7xf32>
        %292 = vector.broadcast %cst_4 : f32 to vector<16x16xf32>
        %293 = vector.outerproduct %206, %289, %292 {kind = #vector.kind<mul>} : vector<16xf32>, vector<16xf32>
        memref.assume_alignment %alloc_13, 2 : memref<7x7xi32>
        memref.assume_alignment %alloc_22, 8 : memref<16xi16>
        %294 = math.log %collapsed_43 : tensor<49xf32>
        scf.yield %arg2 : memref<16xi32>
      }
      %275 = bufferization.to_memref %2 : memref<7x16x7xi64>
      %276 = arith.minsi %in, %c302691568_i64 : i64
      %277 = math.absi %12 : tensor<16x7x16xi32>
      memref.assume_alignment %alloc_16, 1 : memref<7x16x7xi64>
      %278 = arith.remsi %c1_i16, %c0_i16 : i16
      memref.copy %alloc_9, %alloc_6 : memref<7x7xf16> to memref<7x7xf16>
      %279 = vector.extract_strided_slice %98 {offsets = [0], sizes = [3], strides = [1]} : vector<7x7xf32> to vector<3x7xf32>
      linalg.yield %c0_i64 : i64
    } -> tensor<7x16x7xi64>
    %232 = math.powf %6, %6 : tensor<16xf32>
    %233 = math.exp %9 : tensor<7x16x7xf32>
    %234 = memref.atomic_rmw minu %c619965047_i32, %alloc_13[%c6, %c6] : (i32, memref<7x7xi32>) -> i32
    %235 = math.log1p %extracted : f32
    %236 = arith.mulf %cst_5, %cst_2 : f16
    %c1581818067_i32 = arith.constant 1581818067 : i32
    %237 = vector.bitcast %130 : vector<16x7xi16> to vector<16x7xi16>
    %238 = vector.insertelement %c1138262349_i32, %180[%rank_24 : index] : vector<7xi32>
    %239 = index.ceildivu %c11, %24
    %240 = index.casts %c0_i16 : i16 to index
    %241 = math.cos %6 : tensor<16xf32>
    %242 = math.sqrt %11 : tensor<7x16x7xf16>
    %243 = math.powf %122, %6 : tensor<16xf32>
    %244 = arith.maxf %cst_30, %cst_30 : f32
    %245 = vector.broadcast %c1_i16 : i16 to vector<16xi16>
    %dest_51, %accumulated_value_52 = vector.scan <minui>, %130, %245 {inclusive = true, reduction_dim = 1 : i64} : vector<16x7xi16>, vector<16xi16>
    %246 = math.sqrt %cst_1 : f32
    %247 = math.absf %4 : tensor<7x16x7xf32>
    %248 = memref.atomic_rmw maxs %c0_i16, %203[%c7, %c5, %c3] : (i16, memref<16x7x16xi16>) -> i16
    %249 = arith.ori %true_25, %false_23 : i1
    %250 = affine.max affine_map<(d0, d1, d2) -> (d1 + d0 + 32, -(d1 mod 4))>(%24, %c7, %rank)
    %251 = vector.shuffle %180, %180 [0, 2, 6, 8, 9, 10, 12, 13] : vector<7xi32>, vector<7xi32>
    %dest_53, %accumulated_value_54 = vector.scan <minf>, %99, %32 {inclusive = false, reduction_dim = 0 : i64} : vector<7x7xf32>, vector<7xf32>
    %252 = tensor.empty() : tensor<7x16x7xf32>
    %253 = linalg.copy ins(%9 : tensor<7x16x7xf32>) outs(%252 : tensor<7x16x7xf32>) -> tensor<7x16x7xf32>
    %alloc_55 = memref.alloc() : memref<7x112xf32>
    linalg.transpose ins(%collapsed_39 : tensor<112x7xf32>) outs(%alloc_55 : memref<7x112xf32>) permutation = [1, 0] 
    %254 = tensor.empty() : tensor<7xi32>
    %reduced = linalg.reduce ins(%alloc_11 : memref<7x7xi32>) outs(%254 : tensor<7xi32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        affine.store %cst_5, %alloc_9[%c1, %c7] : memref<7x7xf16>
        %false_56 = arith.constant false
        %257 = vector.transfer_read %191[%c11, %c14], %false_56 : tensor<7x7xi1>, vector<i1>
        %258 = index.divs %94, %c10
        %259 = arith.maxsi %false, %false : i1
        affine.store %cst_5, %alloc_6[%c15, %c9] : memref<7x7xf16>
        bufferization.dealloc_tensor %13 : tensor<16x7x16xi64>
        %260 = arith.divui %false_33, %true : i1
        %261 = vector.shuffle %237, %130 [3, 4, 6, 7, 8, 12, 14, 15, 16, 18, 19, 20, 21, 24, 25, 27, 30] : vector<16x7xi16>, vector<16x7xi16>
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    %255 = scf.parallel (%arg2) = (%100) to (%c6) step (%c15) init (%7) -> tensor<7x7xi1> {
      %257 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%12 : tensor<16x7x16xi32>) {
      ^bb0(%out: i32):
        %272 = index.divs %218, %239
        %273 = vector.broadcast %cst_4 : f32 to vector<16xf32>
        %274 = vector.fma %273, %273, %273 : vector<16xf32>
        %275 = math.ctpop %c1138262349_i32 : i32
        %276 = arith.ceildivsi %c302691568_i64, %c0_i64 : i64
        %cst_60 = arith.constant 1.77339546E+9 : f32
        %277 = math.log10 %9 : tensor<7x16x7xf32>
        %278 = arith.divui %c1_i16, %c0_i16 : i16
        %279 = math.log %16 : tensor<7x16x7xf16>
        %280 = math.round %extracted : f32
        %281 = math.cos %cst_30 : f32
        %dest_61, %accumulated_value_62 = vector.scan <minui>, %130, %19 {inclusive = true, reduction_dim = 0 : i64} : vector<16x7xi16>, vector<7xi16>
        %282 = arith.floordivsi %true_25, %true_3 : i1
        %283 = affine.max affine_map<(d0, d1, d2, d3) -> (0)>(%54, %c1, %rank_26, %c14)
        %284 = tensor.empty() : tensor<16xi1>
        %285 = vector.reduction <add>, %273 : vector<16xf32> into f32
        %286 = vector.extract %115[0] : vector<16x7x16xf32>
        %287 = vector.maskedload %alloc_13[%c6, %c3], %33, %180 : memref<7x7xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
        %288 = arith.maxsi %c1_i16, %c1_i16 : i16
        %289 = math.fma %expanded, %expanded, %expanded : tensor<7x16x7x1xf16>
        %290 = math.round %9 : tensor<7x16x7xf32>
        %291 = arith.negf %cst_30 : f32
        %292 = math.atan %4 : tensor<7x16x7xf32>
        %293 = arith.divf %cst_4, %cst_4 : f32
        %294 = math.sqrt %cst_30 : f32
        %295 = index.ceildivu %208, %240
        %collapsed_63 = tensor.collapse_shape %7 [[0, 1]] : tensor<7x7xi1> into tensor<49xi1>
        %from_elements_64 = tensor.from_elements %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c1_i16, %c0_i16, %c0_i16, %c1_i16, %c0_i16 : tensor<7x16x7xi16>
        %296 = arith.remf %cst_5, %cst_5 : f16
        %297 = index.mul %192, %239
        %298 = arith.ori %c1138262349_i32, %c619965047_i32 : i32
        %299 = math.log10 %252 : tensor<7x16x7xf32>
        %300 = memref.load %alloc_7[%c6, %c0] : memref<7x7xf32>
        linalg.yield %c647337080_i32 : i32
      } -> tensor<16x7x16xi32>
      %258 = arith.maxsi %c1480477621_i32, %c1138262349_i32 : i32
      %true_56 = index.bool.constant true
      %259 = scf.while (%arg3 = %false) : (i1) -> i1 {
        %272 = index.casts %true_56 : i1 to index
        %273 = arith.floordivsi %false_33, %false : i1
        %274 = arith.cmpi ult, %183, %true_3 : i1
        %275 = vector.broadcast %c1_i16 : i16 to vector<16xi16>
        %276 = vector.multi_reduction <minui>, %83, %275 [0, 2] : vector<7x16x7xi16> to vector<16xi16>
        %277 = bufferization.to_tensor %alloc_14 : memref<7x16x7xi16>
        %278 = math.powf %16, %105 : tensor<7x16x7xf16>
        %279 = math.exp2 %from_elements : tensor<7x7xf32>
        %280 = math.log10 %11 : tensor<7x16x7xf16>
        scf.condition(%false_23) %false_0 : i1
      } do {
      ^bb0(%arg3: i1):
        %extracted_60 = tensor.extract %0[%c5, %c1, %c7] : tensor<16x7x16xi16>
        %272 = arith.shli %extracted_60, %extracted_60 : i16
        %273 = math.tan %cst_5 : f16
        %274 = vector.outerproduct %188, %188, %179 {kind = #vector.kind<maxf>} : vector<7xf16>, vector<7xf16>
        %275 = index.casts %c1138262349_i32 : i32 to index
        %276 = vector.shuffle %188, %188 [1, 4, 7, 8, 13] : vector<7xf16>, vector<7xf16>
        bufferization.dealloc_tensor %75 : tensor<7x16x7xi64>
        %277 = vector.broadcast %cst_1 : f32 to vector<7x7xf32>
        %278 = vector.fma %277, %98, %277 : vector<7x7xf32>
        %279 = index.casts %c706296327_i32 : i32 to index
        %rank_61 = tensor.rank %5 : tensor<16xi16>
        %280 = arith.mulf %cst_30, %cst : f32
        %281 = index.divs %c4, %181
        %282 = math.cos %9 : tensor<7x16x7xf32>
        %283 = memref.atomic_rmw addf %cst_4, %alloc_7[%c0, %c3] : (f32, memref<7x7xf32>) -> f32
        %284 = arith.cmpi sge, %183, %false_46 : i1
        %285 = arith.addi %c619965047_i32, %c647337080_i32 : i32
        scf.yield %true : i1
      }
      %260 = vector.broadcast %cst_4 : f32 to vector<16x7x16xf32>
      %261 = vector.fma %260, %115, %114 : vector<16x7x16xf32>
      %262 = vector.extract %237[9] : vector<16x7xi16>
      %263 = vector.extract_strided_slice %81 {offsets = [3], sizes = [3], strides = [1]} : vector<7x16x7xi16> to vector<3x16x7xi16>
      %264 = vector.shuffle %262, %19 [1, 4, 6, 11, 12] : vector<7xi16>, vector<7xi16>
      %265 = arith.negf %cst_1 : f32
      %266 = tensor.empty() : tensor<7x16x7xi16>
      %rank_57 = tensor.rank %196 : tensor<7x16x7xi64>
      %267 = tensor.empty() : tensor<7x7xf32>
      %268 = linalg.matmul ins(%10, %from_elements : tensor<7x7xf32>, tensor<7x7xf32>) outs(%267 : tensor<7x7xf32>) -> tensor<7x7xf32>
      %from_elements_58 = tensor.from_elements %false, %183, %false, %false_33, %183, %false_0, %false_46, %false_33, %true_25, %true_56, %false_23, %true_25, %true_56, %false_0, %true_25, %183, %183, %true, %false, %183, %false_33, %false_23, %false_33, %183, %false, %false_33, %false_46, %183, %false_33, %false_46, %false_46, %false, %true_25, %false_0, %false_0, %false, %false_33, %true_25, %false_33, %false_46, %true, %true_56, %true_56, %true_3, %183, %false_46, %false, %true_56, %false_0 : tensor<7x7xi1>
      %generated_59 = tensor.generate %rank_57, %125 {
      ^bb0(%arg3: index, %arg4: index):
        %272 = index.sub %60, %117
        %273 = vector.insertelement %true_56, %33[%c3 : index] : vector<7xi1>
        %expanded_60 = tensor.expand_shape %191 [[0], [1, 2]] : tensor<7x7xi1> into tensor<7x7x1xi1>
        %274 = math.ctpop %15 : tensor<7x7xi32>
        tensor.yield %c0_i16 : i16
      } : tensor<?x?xi16>
      %269 = scf.index_switch %27 -> index 
      case 1 {
        %272 = math.log %102 : tensor<7x7xf32>
        %273 = index.maxu %rank_35, %rank_26
        %274 = affine.load %alloc_15[%c6, %c4] : memref<7x7xi16>
        %275 = vector.outerproduct %34, %34, %98 {kind = #vector.kind<maxf>} : vector<7xf32>, vector<7xf32>
        %276 = arith.floordivsi %false_23, %false_46 : i1
        %277 = arith.maxsi %false_0, %false_23 : i1
        affine.store %extracted, %alloc_10[%c3, %c5, %c0] : memref<7x16x7xf32>
        %278 = arith.xori %92, %c0_i64 : i64
        %279 = bufferization.to_tensor %alloc_16 : memref<7x16x7xi64>
        %280 = vector.reduction <minf>, %206 : vector<16xf32> into f32
        %281 = memref.atomic_rmw assign %274, %alloc_19[%c12] : (i16, memref<16xi16>) -> i16
        %282 = tensor.empty() : tensor<7x7xi64>
        %283 = linalg.matmul ins(%3, %3 : tensor<7x7xi64>, tensor<7x7xi64>) outs(%282 : tensor<7x7xi64>) -> tensor<7x7xi64>
        %284 = math.log1p %cst_4 : f32
        %285 = math.exp2 %9 : tensor<7x16x7xf32>
        %286 = arith.divf %cst_4, %cst : f32
        %287 = vector.broadcast %extracted : f32 to vector<7x7xf32>
        %288 = vector.fma %287, %98, %287 : vector<7x7xf32>
        scf.yield %240 : index
      }
      case 2 {
        %272 = math.absf %18 : tensor<7x7xf32>
        %273 = math.sqrt %1 : tensor<7x16x7xf32>
        %274 = arith.divui %c647337080_i32, %c647337080_i32 : i32
        %275 = math.ctpop %254 : tensor<7xi32>
        %expanded_60 = tensor.expand_shape %from_elements_49 [[0], [1], [2, 3]] : tensor<16x7x16xi16> into tensor<16x7x16x1xi16>
        %expanded_61 = tensor.expand_shape %0 [[0], [1], [2, 3]] : tensor<16x7x16xi16> into tensor<16x7x16x1xi16>
        %rank_62 = tensor.rank %transposed : tensor<7x7xf32>
        %276 = math.log %collapsed : tensor<112x7xf32>
        %277 = math.fma %122, %122, %122 : tensor<16xf32>
        %278 = math.absi %20 : tensor<i16>
        %279 = vector.multi_reduction <mul>, %262, %19 [] : vector<7xi16> to vector<7xi16>
        %280 = tensor.empty() : tensor<49xi32>
        %281 = math.fpowi %collapsed_43, %280 : tensor<49xf32>, tensor<49xi32>
        %282 = index.divu %rank, %c5
        %283 = math.log1p %collapsed : tensor<112x7xf32>
        %284 = arith.floordivsi %true_56, %183 : i1
        %285 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 floordiv 128 + 128, ((d3 floordiv 128) floordiv 2) mod 8 + 8, ((d3 floordiv 128) floordiv 2) mod 8 + 8, (d3 floordiv 128) floordiv 2 - 8)>(%c2, %125, %84, %127)
        scf.yield %194 : index
      }
      case 3 {
        %272 = index.sizeof
        %273 = vector.matrix_multiply %32, %32 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf32>, vector<7xf32>) -> vector<1xf32>
        %collapsed_60 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<16x7x16xi64> into tensor<112x16xi64>
        %splat_61 = tensor.splat %c1_i16 : tensor<7x16x7xi16>
        %274 = index.sizeof
        %275 = math.ceil %from_elements : tensor<7x7xf32>
        %276 = arith.muli %c1480477621_i32, %c1951499111_i32 : i32
        %cst_62 = arith.constant 0x4E422C4E : f32
        %277 = vector.maskedload %alloc_7[%c0, %c1], %33, %34 : memref<7x7xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
        affine.store %c647337080_i32, %alloc[%c7] : memref<16xi32>
        %278 = vector.transpose %55, [2, 0, 1] : vector<16x7x16xi1> to vector<16x16x7xi1>
        %279 = index.maxu %71, %209
        %280 = math.cttz %c1480477621_i32 : i32
        %from_elements_63 = tensor.from_elements %false, %false, %true_56, %true_25, %false_23, %false_23, %true, %false_46, %true_25, %true_56, %false_33, %false_23, %false, %false_46, %true_25, %true_3, %false, %false_23, %false_0, %false_0, %true, %false_33, %true_25, %183, %true_3, %false_23, %false_46, %false_33, %false_33, %true, %true, %false_33, %false_33, %false_23, %true_56, %false_33, %true_25, %true_25, %183, %true_25, %false_46, %true_25, %true_25, %true_56, %false_0, %false, %true, %false_33, %true_25 : tensor<7x7xi1>
        %281 = arith.divui %c619965047_i32, %c619965047_i32 : i32
        %282 = arith.xori %true_25, %183 : i1
        scf.yield %c10 : index
      }
      case 4 {
        %rank_60 = tensor.rank %15 : tensor<7x7xi32>
        %272 = vector.insertelement %c0_i16, %262[%78 : index] : vector<7xi16>
        %273 = tensor.empty() : tensor<7x7xi1>
        %274 = linalg.matmul ins(%7, %224 : tensor<7x7xi1>, tensor<7x7xi1>) outs(%273 : tensor<7x7xi1>) -> tensor<7x7xi1>
        affine.store %c1_i16, %alloc_19[%c10] : memref<16xi16>
        %275 = math.cos %11 : tensor<7x16x7xf16>
        %276 = tensor.empty() : tensor<7x7xf32>
        %277 = linalg.matmul ins(%18, %10 : tensor<7x7xf32>, tensor<7x7xf32>) outs(%276 : tensor<7x7xf32>) -> tensor<7x7xf32>
        %cst_61 = arith.constant 1.59106266E+9 : f32
        %278 = math.log2 %1 : tensor<7x16x7xf32>
        %279 = arith.maxsi %c0_i64, %c0_i64 : i64
        %280 = math.fma %102, %102, %18 : tensor<7x7xf32>
        %281 = vector.reduction <mul>, %206 : vector<16xf32> into f32
        %282 = math.cos %11 : tensor<7x16x7xf16>
        %cast_62 = tensor.cast %4 : tensor<7x16x7xf32> to tensor<?x?x?xf32>
        %283 = arith.minsi %false_23, %true_3 : i1
        %284 = vector.insertelement %cst_1, %34[%94 : index] : vector<7xf32>
        %285 = arith.maxsi %c302691568_i64, %c302691568_i64 : i64
        scf.yield %100 : index
      }
      default {
        %272 = math.sqrt %cst_4 : f32
        %273 = arith.subi %false_46, %false_23 : i1
        %274 = vector.broadcast %239 : index to vector<16xindex>
        vector.scatter %alloc_8[%c6, %c0, %c1] [%274], %193, %206 : memref<7x16x7xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
        %275 = math.log1p %from_elements : tensor<7x7xf32>
        %276 = vector.broadcast %c647337080_i32 : i32 to vector<7x16xi32>
        %dest_60, %accumulated_value_61 = vector.scan <mul>, %82, %276 {inclusive = false, reduction_dim = 2 : i64} : vector<7x16x7xi32>, vector<7x16xi32>
        %277 = affine.load %alloc_6[%c6, %c5] : memref<7x7xf16>
        %extracted_62 = tensor.extract %splat_31[%c3, %c2, %c1] : tensor<7x16x7xi1>
        %278 = math.powf %9, %253 : tensor<7x16x7xf32>
        memref.assume_alignment %alloc_15, 1 : memref<7x7xi16>
        %cst_63 = arith.constant 1.000000e+00 : f32
        %cst_64 = arith.constant 0.000000e+00 : f32
        %279 = vector.transfer_read %102[%54, %94], %cst_64 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<7x7xf32>, vector<7xf32>
        %280 = index.maxs %c11, %c12
        %281 = math.fma %9, %9, %200 : tensor<7x16x7xf32>
        %282 = math.powf %splat_41, %splat_41 : tensor<16x7x16xf32>
        %283 = arith.minsi %c619965047_i32, %c1138262349_i32 : i32
        %284 = math.cos %11 : tensor<7x16x7xf16>
        %285 = vector.broadcast %true_56 : i1 to vector<16x7xi1>
        %dest_65, %accumulated_value_66 = vector.scan <and>, %55, %285 {inclusive = true, reduction_dim = 2 : i64} : vector<16x7x16xi1>, vector<16x7xi1>
        scf.yield %100 : index
      }
      %270 = affine.max affine_map<(d0, d1) -> (d0 + 64)>(%c1, %c9)
      %271 = tensor.empty() : tensor<7x7xi1>
      scf.reduce(%271)  : tensor<7x7xi1> {
      ^bb0(%arg3: tensor<7x7xi1>, %arg4: tensor<7x7xi1>):
        %272 = math.cos %cst_2 : f16
        %273 = math.tanh %4 : tensor<7x16x7xf32>
        %274 = arith.minsi %true_3, %true_25 : i1
        %275 = math.log10 %collapsed_43 : tensor<49xf32>
        %276 = arith.muli %c0_i64, %c0_i64 : i64
        %277 = memref.atomic_rmw maxs %c0_i16, %alloc_22[%c4] : (i16, memref<16xi16>) -> i16
        %278 = arith.remf %cst_30, %cst : f32
        %279 = index.divu %c1, %56
        %280 = tensor.empty() : tensor<7x7xi1>
        scf.reduce.return %280 : tensor<7x7xi1>
      }
      scf.yield
    }
    %256 = affine.vector_load %alloc_10[%218, %125, %192] : memref<7x16x7xf32>, vector<7xf32>
    affine.vector_store %33, %138[%125] : memref<16xi1>, vector<7xi1>
    vector.print %19 : vector<7xi16>
    vector.print %32 : vector<7xf32>
    vector.print %33 : vector<7xi1>
    vector.print %34 : vector<7xf32>
    vector.print %55 : vector<16x7x16xi1>
    vector.print %69 : vector<7x16x7xi1>
    vector.print %81 : vector<7x16x7xi16>
    vector.print %82 : vector<7x16x7xi32>
    vector.print %83 : vector<7x16x7xi16>
    vector.print %85 : vector<16x7x16xf32>
    vector.print %86 : vector<16x7x16xf32>
    vector.print %98 : vector<7x7xf32>
    vector.print %99 : vector<7x7xf32>
    vector.print %104 : vector<16x7x16xi1>
    vector.print %114 : vector<16x7x16xf32>
    vector.print %115 : vector<16x7x16xf32>
    vector.print %128 : vector<i32>
    vector.print %130 : vector<16x7xi16>
    vector.print %158 : vector<7x1xf32>
    vector.print %166 : vector<4x1xf32>
    vector.print %174 : vector<i16>
    vector.print %179 : vector<7x7xf16>
    vector.print %180 : vector<7xi32>
    vector.print %188 : vector<7xf16>
    vector.print %193 : vector<16xi1>
    vector.print %206 : vector<16xf32>
    vector.print %237 : vector<16x7xi16>
    vector.print %256 : vector<7xf32>
    vector.print %false : i1
    vector.print %c647337080_i32 : i32
    vector.print %c1480477621_i32 : i32
    vector.print %c302691568_i64 : i64
    vector.print %c1951499111_i32 : i32
    vector.print %false_0 : i1
    vector.print %c706296327_i32 : i32
    vector.print %cst : f32
    vector.print %c619965047_i32 : i32
    vector.print %c1138262349_i32 : i32
    vector.print %cst_1 : f32
    vector.print %true : i1
    vector.print %cst_2 : f16
    vector.print %true_3 : i1
    vector.print %cst_4 : f32
    vector.print %cst_5 : f16
    vector.print %c1_i16 : i16
    vector.print %false_23 : i1
    vector.print %true_25 : i1
    vector.print %c0_i64 : i64
    vector.print %92 : i64
    vector.print %cst_30 : f32
    vector.print %false_33 : i1
    vector.print %extracted : f32
    vector.print %c0_i16 : i16
    vector.print %183 : i1
    vector.print %false_46 : i1
    return
  }
}
