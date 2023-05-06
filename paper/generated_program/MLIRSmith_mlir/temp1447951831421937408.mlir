module {
  func.func nested @func1(%arg0: memref<14xi1>) {
    %cst = arith.constant 1.450000e+03 : f16
    %cst_0 = arith.constant 1.3417207E+9 : f32
    %c424612358_i64 = arith.constant 424612358 : i64
    %c122117168_i32 = arith.constant 122117168 : i32
    %c678836041_i32 = arith.constant 678836041 : i32
    %c9234456_i32 = arith.constant 9234456 : i32
    %false = arith.constant false
    %c-22309_i16 = arith.constant -22309 : i16
    %c396481855_i32 = arith.constant 396481855 : i32
    %cst_1 = arith.constant 5.363200e+04 : f16
    %c542023153_i32 = arith.constant 542023153 : i32
    %true = arith.constant true
    %cst_2 = arith.constant 1.66572275E+9 : f32
    %c1165341599_i32 = arith.constant 1165341599 : i32
    %cst_3 = arith.constant 0x4DB55192 : f32
    %c-31621_i16 = arith.constant -31621 : i16
    %0 = tensor.empty() : tensor<14x14xi64>
    %1 = tensor.empty() : tensor<14x14xf32>
    %2 = tensor.empty() : tensor<14xi16>
    %3 = tensor.empty() : tensor<14xf16>
    %4 = tensor.empty() : tensor<14x14xf32>
    %5 = tensor.empty() : tensor<14xi64>
    %6 = tensor.empty() : tensor<14x14xf32>
    %7 = tensor.empty() : tensor<14x14xi64>
    %8 = tensor.empty() : tensor<14x14xi64>
    %9 = tensor.empty() : tensor<16x1xi64>
    %10 = tensor.empty() : tensor<14x14xi16>
    %11 = tensor.empty() : tensor<14x14xi32>
    %12 = tensor.empty() : tensor<14x14xf32>
    %13 = tensor.empty() : tensor<14x14xi64>
    %14 = tensor.empty() : tensor<16x1xi32>
    %15 = tensor.empty() : tensor<14xi16>
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
    %alloc = memref.alloc() : memref<16x1xi32>
    %alloc_4 = memref.alloc() : memref<16x1xi16>
    %alloc_5 = memref.alloc() : memref<14x14xi32>
    %alloc_6 = memref.alloc() : memref<16x1xi1>
    %alloc_7 = memref.alloc() : memref<14xi64>
    %alloc_8 = memref.alloc() : memref<14xf32>
    %alloc_9 = memref.alloc() : memref<16x1xf32>
    %alloc_10 = memref.alloc() : memref<16x1xi32>
    %alloc_11 = memref.alloc() : memref<14x14xi32>
    %alloc_12 = memref.alloc() : memref<14x14xf16>
    %alloc_13 = memref.alloc() : memref<14x14xi16>
    %alloc_14 = memref.alloc() : memref<14x14xf32>
    %alloc_15 = memref.alloc() : memref<14x14xf16>
    %alloc_16 = memref.alloc() : memref<14xf16>
    %alloc_17 = memref.alloc() : memref<16x1xf32>
    %alloc_18 = memref.alloc() : memref<14x14xi64>
    %16 = tensor.empty() : tensor<14x14xi16>
    %17 = linalg.copy ins(%10 : tensor<14x14xi16>) outs(%16 : tensor<14x14xi16>) -> tensor<14x14xi16>
    %alloc_19 = memref.alloc() : memref<1x16xi16>
    linalg.transpose ins(%alloc_4 : memref<16x1xi16>) outs(%alloc_19 : memref<1x16xi16>) permutation = [1, 0] 
    %18 = tensor.empty() : tensor<14xi16>
    %reduced = linalg.reduce ins(%16 : tensor<14x14xi16>) outs(%18 : tensor<14xi16>) dimensions = [1] 
      (%in: i16, %init: i16) {
        %254 = math.powf %3, %3 : tensor<14xf16>
        %255 = math.cttz %17 : tensor<14x14xi16>
        %256 = vector.broadcast %c424612358_i64 : i64 to vector<14x14xi64>
        %257 = vector.broadcast %cst_2 : f32 to vector<14xf32>
        %258 = vector.fma %257, %257, %257 : vector<14xf32>
        %259 = arith.divui %c1165341599_i32, %c678836041_i32 : i32
        %260 = vector.broadcast %c9 : index to vector<3xindex>
        %261 = vector.broadcast %true : i1 to vector<3xi1>
        %262 = vector.broadcast %c-22309_i16 : i16 to vector<3xi16>
        vector.scatter %alloc_13[%c12, %c13] [%260], %261, %262 : memref<14x14xi16>, vector<3xindex>, vector<3xi1>, vector<3xi16>
        %263 = arith.shli %c122117168_i32, %c122117168_i32 : i32
        %264 = tensor.empty() : tensor<14x14xi16>
        %265 = linalg.matmul ins(%17, %10 : tensor<14x14xi16>, tensor<14x14xi16>) outs(%264 : tensor<14x14xi16>) -> tensor<14x14xi16>
        %266 = vector.multi_reduction <add>, %256, %c424612358_i64 [0, 1] : vector<14x14xi64> to i64
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    scf.parallel (%arg1, %arg2) = (%c0, %c7) to (%c13, %c3) step (%c10, %c3) {
      %254 = math.copysign %12, %6 : tensor<14x14xf32>
      %from_elements_36 = tensor.from_elements %c-31621_i16, %c-22309_i16, %c-22309_i16, %c-22309_i16, %c-22309_i16, %c-31621_i16, %c-22309_i16, %c-31621_i16, %c-31621_i16, %c-31621_i16, %c-31621_i16, %c-22309_i16, %c-31621_i16, %c-22309_i16 : tensor<14xi16>
      %255 = vector.broadcast %true : i1 to vector<1xi1>
      %256 = vector.multi_reduction <minui>, %255, %true [0] : vector<1xi1> to i1
      %257 = arith.negf %cst_3 : f32
      %258 = vector.broadcast %c424612358_i64 : i64 to vector<i64>
      %259 = vector.transfer_write %258, %8[%c14, %c7] : vector<i64>, tensor<14x14xi64>
      %260 = affine.if affine_set<(d0, d1) : (d1 + 50 == 0, (d1 + 66) ceildiv 128 + d1 == 0, (d1 + 66) ceildiv 128 + d1 == 0)>(%c8, %c4) -> i32 {
        vector.print %258 : vector<i64>
        %270 = index.maxs %c10, %c12
        %271 = math.sqrt %cst_3 : f32
        %272 = vector.reduction <add>, %255 : vector<1xi1> into i1
        %273 = arith.cmpi ule, %c-22309_i16, %c-22309_i16 : i16
        %274 = arith.shrui %false, %true : i1
        %275 = arith.divsi %256, %false : i1
        %276 = memref.atomic_rmw assign %c-31621_i16, %alloc_19[%c0, %c7] : (i16, memref<1x16xi16>) -> i16
        affine.yield %c1165341599_i32 : i32
      } else {
        %from_elements_37 = tensor.from_elements %c1165341599_i32, %c122117168_i32, %c678836041_i32, %c542023153_i32, %c9234456_i32, %c542023153_i32, %c1165341599_i32, %c678836041_i32, %c122117168_i32, %c542023153_i32, %c1165341599_i32, %c542023153_i32, %c1165341599_i32, %c396481855_i32 : tensor<14xi32>
        %270 = vector.splat %c7 : vector<14x14xindex>
        %271 = arith.floordivsi %c-22309_i16, %c-31621_i16 : i16
        %272 = vector.bitcast %255 : vector<1xi1> to vector<1xi1>
        %273 = index.maxs %c2, %c15
        %274 = math.cttz %2 : tensor<14xi16>
        %275 = index.sizeof
        %276 = math.log2 %6 : tensor<14x14xf32>
        affine.yield %c678836041_i32 : i32
      }
      %261 = arith.shrsi %c396481855_i32, %c1165341599_i32 : i32
      %262 = index.floordivs %c9, %arg1
      %263 = index.divs %c9, %c12
      %264 = tensor.empty() : tensor<14xi64>
      %265 = arith.floordivsi %c9234456_i32, %c396481855_i32 : i32
      %266 = vector.bitcast %255 : vector<1xi1> to vector<1xi1>
      %267 = arith.shrui %c424612358_i64, %c424612358_i64 : i64
      memref.copy %alloc_5, %alloc_11 : memref<14x14xi32> to memref<14x14xi32>
      %268 = arith.divui %c-31621_i16, %c-22309_i16 : i16
      %269 = math.exp %3 : tensor<14xf16>
      scf.yield
    }
    %19 = affine.vector_load %alloc_6[%c5, %c9] : memref<16x1xi1>, vector<3xi1>
    affine.vector_store %19, %alloc_6[%c0, %c6] : memref<16x1xi1>, vector<3xi1>
    %alloc_20 = memref.alloc() : memref<14xi16>
    %20 = tensor.empty() : tensor<i16>
    %21 = linalg.dot ins(%2, %alloc_20 : tensor<14xi16>, memref<14xi16>) outs(%20 : tensor<i16>) -> tensor<i16>
    %22 = arith.shrsi %c542023153_i32, %c1165341599_i32 : i32
    %23 = math.exp %6 : tensor<14x14xf32>
    %24 = math.atan2 %cst_1, %cst : f16
    %25 = index.add %c8, %c9
    %26 = bufferization.clone %alloc_17 : memref<16x1xf32> to memref<16x1xf32>
    %27 = memref.load %alloc_14[%c11, %c7] : memref<14x14xf32>
    %28 = math.floor %3 : tensor<14xf16>
    %29 = vector.broadcast %c15 : index to vector<1xindex>
    %30 = vector.broadcast %true : i1 to vector<1xi1>
    %31 = vector.broadcast %c-22309_i16 : i16 to vector<1xi16>
    vector.scatter %alloc_13[%c12, %c13] [%29], %30, %31 : memref<14x14xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
    %32 = memref.alloca_scope  -> (memref<14xi16>) {
      %254 = vector.broadcast %c1165341599_i32 : i32 to vector<3x16xi32>
      %255 = vector.broadcast %c1165341599_i32 : i32 to vector<3xi32>
      %dest, %accumulated_value = vector.scan <or>, %254, %255 {inclusive = false, reduction_dim = 1 : i64} : vector<3x16xi32>, vector<3xi32>
      %256 = scf.index_switch %c10 -> memref<16x1xf16> 
      case 1 {
        %280 = tensor.empty() : tensor<14x14xf32>
        %281 = linalg.matmul ins(%4, %4 : tensor<14x14xf32>, tensor<14x14xf32>) outs(%280 : tensor<14x14xf32>) -> tensor<14x14xf32>
        %282 = vector.load %alloc_18[%c2, %c6] : memref<14x14xi64>, vector<16x1xi64>
        %283 = vector.load %alloc_13[%c3, %c7] : memref<14x14xi16>, vector<14x14xi16>
        %284 = math.cttz %c542023153_i32 : i32
        memref.store %c424612358_i64, %alloc_18[%c11, %c3] : memref<14x14xi64>
        %285 = math.exp %1 : tensor<14x14xf32>
        %286 = math.exp %6 : tensor<14x14xf32>
        %287 = index.sizeof
        %288 = vector.load %alloc[%c14, %c0] : memref<16x1xi32>, vector<14xi32>
        %289 = math.exp %1 : tensor<14x14xf32>
        %290 = arith.remsi %c-31621_i16, %c-31621_i16 : i16
        %291 = math.round %4 : tensor<14x14xf32>
        %292 = arith.minsi %false, %false : i1
        %293 = affine.max affine_map<(d0, d1, d2) -> ((d1 + d0 + d0 mod 64) mod 128, d0 - 128, d1 + d0)>(%c7, %c11, %c0)
        %294 = math.tan %4 : tensor<14x14xf32>
        %295 = math.expm1 %3 : tensor<14xf16>
        %alloc_41 = memref.alloc() : memref<16x1xf16>
        scf.yield %alloc_41 : memref<16x1xf16>
      }
      default {
        %280 = memref.atomic_rmw mins %c424612358_i64, %alloc_7[%c12] : (i64, memref<14xi64>) -> i64
        %281 = vector.extract %19[0] : vector<3xi1>
        %282 = arith.muli %c9234456_i32, %c542023153_i32 : i32
        %283 = vector.broadcast %false : i1 to vector<3x3xi1>
        %284 = vector.outerproduct %19, %19, %283 {kind = #vector.kind<maxsi>} : vector<3xi1>, vector<3xi1>
        %285 = index.add %c2, %c5
        %286 = math.expm1 %cst : f16
        %287 = index.sizeof
        %288 = arith.shrsi %c-22309_i16, %c-31621_i16 : i16
        %289 = arith.remf %cst_3, %cst_3 : f32
        memref.tensor_store %5, %alloc_7 : memref<14xi64>
        memref.tensor_store %16, %alloc_13 : memref<14x14xi16>
        %290 = math.absi %false : i1
        %291 = math.cttz %0 : tensor<14x14xi64>
        %alloca_41 = memref.alloca() : memref<16x1xi32>
        %292 = vector.insertelement %false, %19[%c10 : index] : vector<3xi1>
        %293 = math.exp %4 : tensor<14x14xf32>
        %alloc_42 = memref.alloc() : memref<16x1xf16>
        scf.yield %alloc_42 : memref<16x1xf16>
      }
      %alloc_36 = memref.alloc() : memref<i16>
      memref.tensor_store %21, %alloc_36 : memref<i16>
      %257 = arith.divsi %c424612358_i64, %c424612358_i64 : i64
      %258 = math.roundeven %cst : f16
      %259 = index.floordivs %c12, %c8
      %260 = math.roundeven %6 : tensor<14x14xf32>
      %alloca_37 = memref.alloca() : memref<14x14xi32>
      %261 = index.floordivs %259, %c1
      %262 = math.absi %15 : tensor<14xi16>
      %263 = index.castu %261 : index to i32
      %264 = arith.muli %false, %true : i1
      %265 = vector.load %alloc_4[%c6, %c0] : memref<16x1xi16>, vector<14x14xi16>
      scf.if %true {
        %280 = math.powf %3, %3 : tensor<14xf16>
        %281 = index.sizeof
        vector.print %19 : vector<3xi1>
        %282 = index.mul %261, %c12
        %283 = arith.divui %c-31621_i16, %c-22309_i16 : i16
        %284 = math.log10 %3 : tensor<14xf16>
        %285 = vector.broadcast %c-31621_i16 : i16 to vector<14xi16>
        %dest_41, %accumulated_value_42 = vector.scan <and>, %265, %285 {inclusive = false, reduction_dim = 0 : i64} : vector<14x14xi16>, vector<14xi16>
        %286 = arith.cmpf false, %cst_1, %cst : f16
      } else {
        %280 = arith.shrui %c-31621_i16, %c-31621_i16 : i16
        %281 = math.expm1 %6 : tensor<14x14xf32>
        %alloca_41 = memref.alloca() : memref<16x1xi32>
        %282 = arith.negf %cst : f16
        %true_42 = index.bool.constant true
        %283 = arith.andi %c122117168_i32, %c678836041_i32 : i32
        %284 = math.atan2 %cst_1, %cst : f16
        %285 = vector.load %alloc_14[%c7, %c11] : memref<14x14xf32>, vector<16x1xf32>
      }
      %266 = vector.broadcast %c-22309_i16 : i16 to vector<14xi16>
      %267 = vector.multi_reduction <minsi>, %265, %266 [0] : vector<14x14xi16> to vector<14xi16>
      %268 = math.tan %4 : tensor<14x14xf32>
      %c0_i16 = arith.constant 0 : i16
      %269 = vector.transfer_read %16[%c13, %259], %c0_i16 : tensor<14x14xi16>, vector<16xi16>
      %270 = arith.mulf %cst_3, %cst_0 : f32
      %collapsed_38 = tensor.collapse_shape %17 [[0, 1]] : tensor<14x14xi16> into tensor<196xi16>
      %271 = vector.outerproduct %266, %266, %265 {kind = #vector.kind<and>} : vector<14xi16>, vector<14xi16>
      %collapsed_39 = tensor.collapse_shape %7 [[0, 1]] : tensor<14x14xi64> into tensor<196xi64>
      %272 = arith.remsi %c678836041_i32, %c1165341599_i32 : i32
      memref.alloca_scope  {
        %280 = vector.multi_reduction <maxui>, %266, %266 [] : vector<14xi16> to vector<14xi16>
        %281 = vector.broadcast %cst_2 : f32 to vector<14x14xf32>
        %282 = vector.fma %281, %281, %281 : vector<14x14xf32>
        %283 = math.log1p %6 : tensor<14x14xf32>
        %284 = vector.extract %19[1] : vector<3xi1>
        %c1857226899_i64 = arith.constant 1857226899 : i64
        %285 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 ceildiv 2)>(%c15, %c4, %c3, %c1)
        %c1_i16 = arith.constant 1 : i16
        %286 = vector.transfer_read %15[%c1], %c1_i16 : tensor<14xi16>, vector<i16>
        %287 = vector.broadcast %c13 : index to vector<14xindex>
        %288 = vector.broadcast %true : i1 to vector<14xi1>
        vector.scatter %alloc_13[%c12, %c4] [%287], %288, %266 : memref<14x14xi16>, vector<14xindex>, vector<14xi1>, vector<14xi16>
        %289 = math.round %6 : tensor<14x14xf32>
        %290 = vector.splat %c15 : vector<14x14xindex>
        %291 = arith.divsi %c-22309_i16, %c1_i16 : i16
        %292 = math.tan %4 : tensor<14x14xf32>
        %293 = arith.minsi %c1_i16, %c-22309_i16 : i16
        %294 = vector.multi_reduction <minui>, %265, %c-22309_i16 [0, 1] : vector<14x14xi16> to i16
        %295 = math.expm1 %cst_0 : f32
        %296 = tensor.empty() : tensor<14x14xf16>
        %297 = index.ceildivs %c9, %c14
        %298 = index.add %c12, %c8
        %alloca_41 = memref.alloca() : memref<14x14xi32>
        %299 = vector.outerproduct %266, %266, %265 {kind = #vector.kind<xor>} : vector<14xi16>, vector<14xi16>
        %300 = math.expm1 %296 : tensor<14x14xf16>
        %collapsed_42 = tensor.collapse_shape %8 [[0, 1]] : tensor<14x14xi64> into tensor<196xi64>
        %301 = vector.multi_reduction <minsi>, %265, %265 [] : vector<14x14xi16> to vector<14x14xi16>
        %302 = memref.realloc %alloc_7 : memref<14xi64> to memref<1xi64>
        bufferization.dealloc_tensor %3 : tensor<14xf16>
        %303 = vector.multi_reduction <mul>, %19, %false [0] : vector<3xi1> to i1
        %304 = vector.broadcast %cst_2 : f32 to vector<14xf32>
        %dest_43, %accumulated_value_44 = vector.scan <mul>, %281, %304 {inclusive = false, reduction_dim = 1 : i64} : vector<14x14xf32>, vector<14xf32>
        %305 = arith.andi %c1165341599_i32, %c9234456_i32 : i32
        %306 = arith.ceildivsi %c1165341599_i32, %c9234456_i32 : i32
        memref.assume_alignment %alloc_6, 1 : memref<16x1xi1>
        vector.print %265 : vector<14x14xi16>
        %307 = arith.minsi %c396481855_i32, %c396481855_i32 : i32
      }
      %273 = arith.maxsi %c678836041_i32, %c542023153_i32 : i32
      %274 = arith.ceildivsi %c-31621_i16, %c-31621_i16 : i16
      %275 = arith.negf %cst_2 : f32
      %276 = index.sizeof
      %c353733574_i32 = arith.constant 353733574 : i32
      %cast_40 = tensor.cast %12 : tensor<14x14xf32> to tensor<?x?xf32>
      %277 = arith.remsi %c-31621_i16, %c-31621_i16 : i16
      %278 = math.cos %6 : tensor<14x14xf32>
      %279 = index.sub %25, %c7
      memref.alloca_scope.return %alloc_20 : memref<14xi16>
    }
    %alloc_21 = memref.alloc() : memref<16x1xi1>
    memref.copy %alloc_6, %alloc_21 : memref<16x1xi1> to memref<16x1xi1>
    %33 = bufferization.to_tensor %alloc_11 : memref<14x14xi32>
    %34 = bufferization.to_tensor %alloc_16 : memref<14xf16>
    %35 = arith.remsi %c-22309_i16, %c-22309_i16 : i16
    %36 = math.copysign %6, %12 : tensor<14x14xf32>
    %37 = index.ceildivs %c0, %c10
    affine.store %cst_0, %alloc_17[%c0, %c12] : memref<16x1xf32>
    %38 = memref.realloc %alloc_7 : memref<14xi64> to memref<1xi64>
    %39 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 mod 2 + 64, d3 mod 2 + d1, d2 ceildiv 64, d0)>(%c8, %c7, %c2, %c9)
    %40 = arith.divsi %c9234456_i32, %c396481855_i32 : i32
    %41 = math.absi %c396481855_i32 : i32
    %alloc_22 = memref.alloc() : memref<14x14xi64>
    %42 = math.rsqrt %cst_3 : f32
    %43 = math.sqrt %1 : tensor<14x14xf32>
    %44 = arith.negf %cst_3 : f32
    %45 = vector.extract_strided_slice %19 {offsets = [0], sizes = [1], strides = [1]} : vector<3xi1> to vector<1xi1>
    memref.tensor_store %5, %alloc_7 : memref<14xi64>
    %46 = index.ceildivs %c0, %c11
    %47 = vector.broadcast %false : i1 to vector<1x1xi1>
    %48 = vector.outerproduct %45, %45, %47 {kind = #vector.kind<xor>} : vector<1xi1>, vector<1xi1>
    %49 = math.ceil %cst_1 : f16
    %50 = index.add %25, %c11
    %51 = index.sizeof
    %52 = index.add %c7, %c13
    %53 = arith.ceildivsi %c9234456_i32, %c396481855_i32 : i32
    %54 = arith.shrsi %false, %false : i1
    %55 = arith.shli %false, %false : i1
    %56 = arith.maxsi %c9234456_i32, %c542023153_i32 : i32
    scf.index_switch %c12 
    case 1 {
      %254 = math.absf %3 : tensor<14xf16>
      %255 = math.sqrt %3 : tensor<14xf16>
      %256 = index.maxs %39, %39
      %257 = memref.alloca_scope  -> (memref<16x1xi1>) {
        %268 = math.round %12 : tensor<14x14xf32>
        %269 = index.maxs %39, %c3
        %270 = vector.shuffle %45, %19 [1] : vector<1xi1>, vector<3xi1>
        %collapsed_38 = tensor.collapse_shape %9 [[0, 1]] : tensor<16x1xi64> into tensor<16xi64>
        %271 = arith.remsi %c396481855_i32, %c1165341599_i32 : i32
        %272 = vector.load %alloc_8[%c4] : memref<14xf32>, vector<14xf32>
        %273 = math.ipowi %14, %14 : tensor<16x1xi32>
        %274 = math.powf %cst_0, %cst_3 : f32
        %275 = memref.realloc %32 : memref<14xi16> to memref<3xi16>
        %276 = memref.atomic_rmw maxf %cst_1, %alloc_15[%c7, %c3] : (f16, memref<14x14xf16>) -> f16
        %277 = math.cttz %5 : tensor<14xi64>
        %collapsed_39 = tensor.collapse_shape %13 [[0, 1]] : tensor<14x14xi64> into tensor<196xi64>
        %from_elements_40 = tensor.from_elements %c542023153_i32, %c122117168_i32, %c122117168_i32, %c9234456_i32, %c396481855_i32, %c122117168_i32, %c1165341599_i32, %c542023153_i32, %c9234456_i32, %c9234456_i32, %c542023153_i32, %c9234456_i32, %c678836041_i32, %c1165341599_i32, %c1165341599_i32, %c542023153_i32 : tensor<16x1xi32>
        %278 = arith.cmpi sge, %c1165341599_i32, %c122117168_i32 : i32
        %279 = index.casts %c5 : index to i32
        %280 = index.maxs %c12, %c0
        %281 = vector.broadcast %cst_3 : f32 to vector<14x14xf32>
        %282 = vector.outerproduct %272, %272, %281 {kind = #vector.kind<add>} : vector<14xf32>, vector<14xf32>
        %false_41 = arith.constant false
        vector.print %272 : vector<14xf32>
        %inserted_42 = tensor.insert %c424612358_i64 into %5[%c6] : tensor<14xi64>
        %283 = arith.maxui %c-31621_i16, %c-31621_i16 : i16
        %284 = math.log1p %1 : tensor<14x14xf32>
        %285 = memref.atomic_rmw mulf %cst_1, %alloc_15[%c7, %c9] : (f16, memref<14x14xf16>) -> f16
        %286 = vector.multi_reduction <minf>, %272, %272 [] : vector<14xf32> to vector<14xf32>
        %287 = math.floor %cst : f16
        %288 = math.log1p %3 : tensor<14xf16>
        %289 = index.floordivs %c14, %269
        %290 = affine.min affine_map<(d0, d1, d2) -> (d2 ceildiv 32, d1 - (d0 mod 128) * 2 + 2)>(%c14, %269, %c12)
        %c1_i64 = arith.constant 1 : i64
        %291 = vector.transfer_read %13[%37, %c14], %c1_i64 : tensor<14x14xi64>, vector<i64>
        %292 = memref.atomic_rmw minu %c-31621_i16, %alloc_20[%c10] : (i16, memref<14xi16>) -> i16
        %293 = math.powf %34, %3 : tensor<14xf16>
        %294 = math.round %6 : tensor<14x14xf32>
        memref.alloca_scope.return %alloc_6 : memref<16x1xi1>
      }
      %258 = bufferization.clone %alloc_9 : memref<16x1xf32> to memref<16x1xf32>
      %259 = vector.broadcast %false : i1 to vector<1x1xi1>
      %260 = vector.outerproduct %45, %45, %259 {kind = #vector.kind<maxui>} : vector<1xi1>, vector<1xi1>
      %collapsed_36 = tensor.collapse_shape %12 [[0, 1]] : tensor<14x14xf32> into tensor<196xf32>
      %261 = index.mul %c14, %50
      %262 = vector.bitcast %45 : vector<1xi1> to vector<1xi1>
      %263 = math.round %3 : tensor<14xf16>
      %264 = affine.for %arg1 = 0 to 38 iter_args(%arg2 = %c678836041_i32) -> (i32) {
        affine.yield %c542023153_i32 : i32
      }
      %265 = math.floor %4 : tensor<14x14xf32>
      %collapsed_37 = tensor.collapse_shape %8 [[0, 1]] : tensor<14x14xi64> into tensor<196xi64>
      %266 = affine.apply affine_map<(d0, d1, d2, d3) -> (((d3 + (d2 mod 8) * 2 + 128) * 32 - 64) ceildiv 32)>(%c8, %261, %25, %39)
      memref.store %cst_2, %alloc_9[%c7, %c0] : memref<16x1xf32>
      %267 = bufferization.clone %alloc_12 : memref<14x14xf16> to memref<14x14xf16>
      scf.yield
    }
    default {
      %254 = math.absf %cst_3 : f32
      %255 = arith.remsi %c396481855_i32, %c396481855_i32 : i32
      %cst_36 = arith.constant 5.203200e+04 : f16
      %false_37 = index.bool.constant false
      bufferization.dealloc_tensor %11 : tensor<14x14xi32>
      %256 = index.add %c1, %c14
      %257 = index.floordivs %c8, %c1
      %258 = vector.reduction <mul>, %45 : vector<1xi1> into i1
      %259 = vector.shuffle %45, %45 [0] : vector<1xi1>, vector<1xi1>
      bufferization.dealloc_tensor %13 : tensor<14x14xi64>
      %inserted_38 = tensor.insert %cst_3 into %12[%c13, %c11] : tensor<14x14xf32>
      %260 = bufferization.to_memref %7 : memref<14x14xi64>
      %261 = vector.broadcast %c424612358_i64 : i64 to vector<14x14xi64>
      %262 = arith.ceildivsi %true, %true : i1
      %263 = tensor.empty() : tensor<14x14xf32>
      %264 = linalg.matmul ins(%1, %4 : tensor<14x14xf32>, tensor<14x14xf32>) outs(%263 : tensor<14x14xf32>) -> tensor<14x14xf32>
      %265 = arith.divf %cst_2, %cst_0 : f32
    }
    %57 = arith.minsi %c-22309_i16, %c-22309_i16 : i16
    %58 = arith.andi %c9234456_i32, %c1165341599_i32 : i32
    %59 = tensor.empty() : tensor<14x14x14xi64>
    %60 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%8 : tensor<14x14xi64>) outs(%59 : tensor<14x14x14xi64>) {
    ^bb0(%in: i64, %out: i64):
      %254 = arith.shrui %true, %false : i1
      %255 = vector.bitcast %19 : vector<3xi1> to vector<3xi1>
      %256 = index.sub %c7, %c6
      %257 = math.cos %cst_1 : f16
      %258 = vector.shuffle %19, %45 [0, 2, 3] : vector<3xi1>, vector<1xi1>
      %259 = vector.reduction <mul>, %19 : vector<3xi1> into i1
      %260 = index.add %52, %c6
      %cst_36 = arith.constant 1.66796262E+9 : f32
      %261 = math.absf %4 : tensor<14x14xf32>
      %262 = math.roundeven %3 : tensor<14xf16>
      %263 = arith.floordivsi %c424612358_i64, %in : i64
      %264 = memref.realloc %alloc_20 : memref<14xi16> to memref<1xi16>
      %265 = vector.create_mask %25 : vector<14xi1>
      %266 = math.copysign %1, %12 : tensor<14x14xf32>
      scf.if %true {
        %280 = vector.broadcast %out : i64 to vector<14x14xi64>
        %collapsed_39 = tensor.collapse_shape %1 [[0, 1]] : tensor<14x14xf32> into tensor<196xf32>
        %281 = arith.minsi %true, %true : i1
        %282 = vector.broadcast %c-31621_i16 : i16 to vector<i16>
        %283 = vector.transfer_write %282, %16[%c2, %c13] : vector<i16>, tensor<14x14xi16>
        %284 = arith.addf %cst_3, %cst_2 : f32
        %alloc_40 = memref.alloc() : memref<16x1xi16>
        memref.copy %alloc_4, %alloc_40 : memref<16x1xi16> to memref<16x1xi16>
        %285 = arith.muli %c-31621_i16, %c-31621_i16 : i16
        %286 = math.copysign %3, %34 : tensor<14xf16>
      } else {
        memref.copy %alloc_17, %alloc_9 : memref<16x1xf32> to memref<16x1xf32>
        %280 = math.powf %34, %3 : tensor<14xf16>
        %281 = math.log10 %cst_3 : f32
        %cast_39 = tensor.cast %3 : tensor<14xf16> to tensor<?xf16>
        %282 = vector.broadcast %c6 : index to vector<16xindex>
        %283 = vector.broadcast %false : i1 to vector<16xi1>
        %284 = vector.broadcast %cst : f16 to vector<16xf16>
        vector.scatter %alloc_16[%c1] [%282], %283, %284 : memref<14xf16>, vector<16xindex>, vector<16xi1>, vector<16xf16>
        %extracted = tensor.extract %14[%c8, %c0] : tensor<16x1xi32>
        %285 = vector.flat_transpose %19 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
        affine.store %c678836041_i32, %alloc_5[%c5, %c4] : memref<14x14xi32>
      }
      memref.alloca_scope  {
        %280 = math.exp2 %cst_3 : f32
        %281 = vector.load %alloc_7[%c8] : memref<14xi64>, vector<14x14xi64>
        %282 = math.ipowi %8, %0 : tensor<14x14xi64>
        %283 = arith.shrui %c122117168_i32, %c122117168_i32 : i32
        %284 = math.sqrt %cst_1 : f16
        %285 = vector.broadcast %false : i1 to vector<1x1xi1>
        %286 = vector.outerproduct %45, %45, %285 {kind = #vector.kind<mul>} : vector<1xi1>, vector<1xi1>
        %287 = vector.create_mask %c13, %52 : vector<16x1xi1>
        %288 = math.tanh %cst_3 : f32
        %289 = vector.extract_strided_slice %255 {offsets = [1], sizes = [1], strides = [1]} : vector<3xi1> to vector<1xi1>
        %290 = arith.remui %c396481855_i32, %c122117168_i32 : i32
        %291 = tensor.empty() : tensor<14x14xf32>
        %292 = linalg.matmul ins(%1, %6 : tensor<14x14xf32>, tensor<14x14xf32>) outs(%291 : tensor<14x14xf32>) -> tensor<14x14xf32>
        %extracted = tensor.extract %291[%c11, %c6] : tensor<14x14xf32>
        %293 = vector.broadcast %false : i1 to vector<16xi1>
        %dest, %accumulated_value = vector.scan <minui>, %287, %293 {inclusive = true, reduction_dim = 1 : i64} : vector<16x1xi1>, vector<16xi1>
        %294 = math.log2 %cst_0 : f32
        %from_elements_39 = tensor.from_elements %cst_2, %cst_3, %extracted, %cst_0, %cst_3, %cst_3, %cst_0, %cst_2, %extracted, %cst_3, %cst_0, %cst_0, %extracted, %cst_0 : tensor<14xf32>
        %295 = math.fpowi %291, %33 : tensor<14x14xf32>, tensor<14x14xi32>
        vector.print %281 : vector<14x14xi64>
        %296 = math.absi %c-31621_i16 : i16
        memref.assume_alignment %alloc_9, 2 : memref<16x1xf32>
        %297 = vector.broadcast %true : i1 to vector<1x1xi1>
        %298 = vector.outerproduct %45, %289, %297 {kind = #vector.kind<and>} : vector<1xi1>, vector<1xi1>
        %299 = arith.remsi %c9234456_i32, %c396481855_i32 : i32
        %300 = vector.broadcast %true : i1 to vector<1x1xi1>
        %301 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %287, %287, %300 : vector<16x1xi1>, vector<16x1xi1> into vector<1x1xi1>
        %302 = arith.andi %true, %false : i1
        memref.store %c122117168_i32, %alloc_10[%c2, %c0] : memref<16x1xi32>
        %303 = index.add %51, %39
        %304 = index.castu %c678836041_i32 : i32 to index
        %305 = vector.multi_reduction <xor>, %289, %45 [] : vector<1xi1> to vector<1xi1>
        %306 = affine.max affine_map<(d0, d1, d2, d3) -> (8, d0 ceildiv 16 + 4, d3, 8)>(%37, %c14, %c15, %c1)
        %307 = math.tanh %34 : tensor<14xf16>
        %308 = index.ceildivu %c15, %c15
        %309 = bufferization.clone %alloc_19 : memref<1x16xi16> to memref<1x16xi16>
        %310 = math.floor %12 : tensor<14x14xf32>
      }
      %267 = index.castu %c6 : index to i32
      memref.assume_alignment %alloc_6, 16 : memref<16x1xi1>
      %268 = arith.shrui %in, %c424612358_i64 : i64
      %269 = arith.ceildivsi %c122117168_i32, %c122117168_i32 : i32
      %270 = math.floor %cst_2 : f32
      %271 = bufferization.to_tensor %alloc_20 : memref<14xi16>
      %c51128250_i32 = arith.constant 51128250 : i32
      %272 = vector.multi_reduction <or>, %255, %19 [] : vector<3xi1> to vector<3xi1>
      %273 = index.sizeof
      %274 = arith.divf %cst_0, %cst_3 : f32
      %275 = affine.if affine_set<(d0, d1) : (d0 * -17 >= 0, d0 == 0, -d0 + 6 == 0, -d0 == 0)>(%c9, %c13) -> i16 {
        %280 = math.absf %cst_0 : f32
        %true_39 = index.bool.constant true
        memref.tensor_store %12, %alloc_14 : memref<14x14xf32>
        %281 = index.add %46, %c14
        %282 = math.copysign %4, %4 : tensor<14x14xf32>
        %283 = bufferization.to_memref %5 : memref<14xi64>
        %inserted_40 = tensor.insert %cst_2 into %12[%c1, %c13] : tensor<14x14xf32>
        %284 = math.log10 %cst_0 : f32
        affine.yield %c-31621_i16 : i16
      } else {
        %280 = index.maxs %c13, %c10
        %281 = vector.bitcast %45 : vector<1xi1> to vector<1xi1>
        %282 = vector.splat %cst_0 : vector<14x14xf32>
        %283 = math.absf %cst_2 : f32
        %284 = tensor.empty() : tensor<14x14xi64>
        %285 = math.cos %1 : tensor<14x14xf32>
        %cst_39 = arith.constant 1.000000e+00 : f32
        %286 = vector.transfer_read %alloc_14[%c1, %c11], %cst_39 : memref<14x14xf32>, vector<1xf32>
        %287 = math.round %3 : tensor<14xf16>
        affine.yield %c-22309_i16 : i16
      }
      %276 = tensor.empty() : tensor<14x14xi16>
      %mapped_37 = linalg.map ins(%10, %10 : tensor<14x14xi16>, tensor<14x14xi16>) outs(%276 : tensor<14x14xi16>)
        (%in_39: i16, %in_40: i16) {
          %280 = math.absi %14 : tensor<16x1xi32>
          %281 = arith.addi %in_40, %c-31621_i16 : i16
          %282 = math.tan %12 : tensor<14x14xf32>
          %283 = math.roundeven %4 : tensor<14x14xf32>
          vector.print %255 : vector<3xi1>
          %284 = vector.matrix_multiply %45, %265 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 14 : i32} : (vector<1xi1>, vector<14xi1>) -> vector<14xi1>
          %285 = math.tan %cst : f16
          affine.store %cst, %alloc_16[%c1] : memref<14xf16>
          affine.store %cst_2, %alloc_17[%c9, %c2] : memref<16x1xf32>
          %286 = index.sub %c10, %c9
          %287 = arith.divsi %in_39, %c-22309_i16 : i16
          %288 = math.round %34 : tensor<14xf16>
          %289 = index.add %c1, %c14
          %290 = bufferization.to_tensor %alloc_4 : memref<16x1xi16>
          %291 = vector.broadcast %c396481855_i32 : i32 to vector<1x3xi32>
          %292 = vector.broadcast %c122117168_i32 : i32 to vector<1xi32>
          %dest, %accumulated_value = vector.scan <minsi>, %291, %292 {inclusive = true, reduction_dim = 1 : i64} : vector<1x3xi32>, vector<1xi32>
          %293 = math.log1p %12 : tensor<14x14xf32>
          %294 = math.floor %3 : tensor<14xf16>
          %295 = math.absi %13 : tensor<14x14xi64>
          %296 = math.atan2 %cst_2, %cst_2 : f32
          %297 = index.add %c6, %c0
          %298 = index.ceildivs %260, %52
          %299 = vector.broadcast %cst_3 : f32 to vector<3x3xf32>
          %300 = vector.broadcast %cst_0 : f32 to vector<3xf32>
          %dest_41, %accumulated_value_42 = vector.scan <minf>, %299, %300 {inclusive = false, reduction_dim = 0 : i64} : vector<3x3xf32>, vector<3xf32>
          %301 = arith.divf %cst_0, %cst_0 : f32
          %302 = affine.apply affine_map<(d0, d1) -> (d0)>(%298, %c4)
          %303 = vector.bitcast %284 : vector<14xi1> to vector<14xi1>
          vector.print %45 : vector<1xi1>
          %304 = math.absf %cst_2 : f32
          %305 = arith.divsi %c396481855_i32, %c9234456_i32 : i32
          %306 = arith.minsi %true, %true : i1
          %307 = math.expm1 %cst_2 : f32
          %308 = arith.remui %in_40, %in_40 : i16
          %309 = vector.shuffle %284, %19 [0, 2, 3, 4, 9, 10, 11, 12, 14, 16] : vector<14xi1>, vector<3xi1>
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      %277 = arith.divf %cst_1, %cst_1 : f16
      memref.alloca_scope  {
        %280 = tensor.empty() : tensor<14x14xf16>
        %281 = vector.broadcast %c3 : index to vector<3xindex>
        %282 = vector.broadcast %c9234456_i32 : i32 to vector<3xi32>
        vector.scatter %alloc_10[%c14, %c0] [%281], %255, %282 : memref<16x1xi32>, vector<3xindex>, vector<3xi1>, vector<3xi32>
        %283 = math.log %12 : tensor<14x14xf32>
        %284 = arith.shli %out, %out : i64
        %285 = vector.broadcast %52 : index to vector<3xindex>
        %286 = vector.broadcast %c122117168_i32 : i32 to vector<3xi32>
        vector.scatter %alloc_5[%c6, %c9] [%285], %255, %286 : memref<14x14xi32>, vector<3xindex>, vector<3xi1>, vector<3xi32>
        %287 = math.log10 %cst_2 : f32
        %288 = vector.extract %255[2] : vector<3xi1>
        %289 = arith.andi %c424612358_i64, %out : i64
        %290 = arith.cmpi ne, %false, %true : i1
        %291 = math.log %3 : tensor<14xf16>
        %292 = math.expm1 %6 : tensor<14x14xf32>
        %293 = math.tan %cst : f16
        %294 = index.sub %51, %25
        %295 = vector.load %alloc_20[%c10] : memref<14xi16>, vector<14xi16>
        %296 = math.floor %12 : tensor<14x14xf32>
        %297 = math.tanh %1 : tensor<14x14xf32>
        %298 = arith.addf %cst_3, %cst_3 : f32
        %299 = math.exp %6 : tensor<14x14xf32>
        %300 = arith.andi %true, %true : i1
        %301 = arith.maxsi %c9234456_i32, %c678836041_i32 : i32
        %302 = vector.splat %c4 : vector<16x1xindex>
        %303 = vector.bitcast %19 : vector<3xi1> to vector<3xi1>
        %304 = bufferization.to_tensor %alloc_10 : memref<16x1xi32>
        %305 = arith.maxui %true, %false : i1
        %306 = math.ctlz %271 : tensor<14xi16>
        %307 = index.castu %in : i64 to index
        %308 = math.log10 %280 : tensor<14x14xf16>
        %309 = vector.load %26[%c2, %c0] : memref<16x1xf32>, vector<14x14xf32>
        %310 = math.log1p %3 : tensor<14xf16>
        %311 = memref.realloc %alloc_16 : memref<14xf16> to memref<16xf16>
        %312 = arith.shrui %c-22309_i16, %c-31621_i16 : i16
        %313 = vector.shuffle %255, %255 [1, 2, 4, 5] : vector<3xi1>, vector<3xi1>
      }
      %278 = vector.multi_reduction <minsi>, %265, %true [0] : vector<14xi1> to i1
      %279 = tensor.empty() : tensor<14x14xi16>
      %mapped_38 = linalg.map ins(%alloc_13 : memref<14x14xi16>) outs(%279 : tensor<14x14xi16>)
        (%in_39: i16) {
          %280 = arith.maxf %cst_1, %cst : f16
          %281 = math.tan %cst_0 : f32
          %282 = index.sizeof
          %283 = arith.divf %cst_1, %cst : f16
          %284 = tensor.empty() : tensor<14x14xi64>
          %285 = linalg.matmul ins(%8, %13 : tensor<14x14xi64>, tensor<14x14xi64>) outs(%284 : tensor<14x14xi64>) -> tensor<14x14xi64>
          %286 = arith.muli %c9234456_i32, %c678836041_i32 : i32
          %287 = arith.divf %cst_2, %cst_2 : f32
          %288 = math.absi %5 : tensor<14xi64>
          %289 = vector.broadcast %c424612358_i64 : i64 to vector<14x14xi64>
          %290 = arith.addf %cst_3, %cst_0 : f32
          %291 = math.powf %cst_0, %cst_2 : f32
          %292 = bufferization.clone %alloc_20 : memref<14xi16> to memref<14xi16>
          %293 = index.casts %c9234456_i32 : i32 to index
          %294 = vector.broadcast %278 : i1 to vector<3x3xi1>
          %295 = vector.outerproduct %19, %255, %294 {kind = #vector.kind<add>} : vector<3xi1>, vector<3xi1>
          %296 = math.absf %cst_2 : f32
          %297 = math.log1p %4 : tensor<14x14xf32>
          %298 = math.atan2 %4, %1 : tensor<14x14xf32>
          %299 = math.log1p %4 : tensor<14x14xf32>
          %rank_40 = tensor.rank %0 : tensor<14x14xi64>
          %300 = math.absf %3 : tensor<14xf16>
          %301 = arith.cmpi sge, %c122117168_i32, %c122117168_i32 : i32
          %302 = index.floordivs %c14, %c5
          %303 = vector.splat %c8 : vector<14xindex>
          %alloc_41 = memref.alloc() : memref<16x1xi64>
          memref.tensor_store %9, %alloc_41 : memref<16x1xi64>
          %304 = vector.reduction <minsi>, %19 : vector<3xi1> into i1
          %305 = vector.broadcast %c678836041_i32 : i32 to vector<14xi32>
          %306 = vector.gather %11[%260, %46] [%305], %265, %305 : tensor<14x14xi32>, vector<14xi32>, vector<14xi1>, vector<14xi32> into vector<14xi32>
          %307 = vector.extract %45[0] : vector<1xi1>
          %308 = affine.max affine_map<(d0) -> (((d0 - 1) mod 16 + 16) ceildiv 2, (d0 - 1) mod 16 - d0, d0 + (d0 - 1) mod 16 + 64, (d0 - 1) mod 16 + 48)>(%c7)
          %309 = math.tan %3 : tensor<14xf16>
          %310 = vector.broadcast %true : i1 to vector<14x14xi1>
          %311 = arith.divui %c-22309_i16, %c-22309_i16 : i16
          %312 = index.add %39, %c5
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      linalg.yield %out : i64
    } -> tensor<14x14x14xi64>
    %inserted = tensor.insert %c-22309_i16 into %10[%c7, %c2] : tensor<14x14xi16>
    %61 = bufferization.clone %alloc_7 : memref<14xi64> to memref<14xi64>
    %62 = bufferization.clone %alloc_14 : memref<14x14xf32> to memref<14x14xf32>
    %from_elements = tensor.from_elements %cst_3, %cst_0, %cst_3, %cst_3, %cst_0, %cst_3, %cst_3, %cst_2, %cst_0, %cst_2, %cst_3, %cst_3, %cst_0, %cst_2, %cst_2, %cst_3 : tensor<16x1xf32>
    %63 = affine.load %alloc_11[%c6, %c1] : memref<14x14xi32>
    %64 = vector.multi_reduction <or>, %45, %false [0] : vector<1xi1> to i1
    %65 = math.absf %cst_2 : f32
    %66 = math.log2 %3 : tensor<14xf16>
    %67 = arith.maxui %c9234456_i32, %c9234456_i32 : i32
    %68 = vector.create_mask %c12 : vector<14xi1>
    %69 = math.expm1 %cst_1 : f16
    %70 = math.atan %4 : tensor<14x14xf32>
    %71 = arith.shli %c-31621_i16, %c-22309_i16 : i16
    %72 = arith.addf %cst_0, %cst_3 : f32
    %73 = vector.transpose %68, [0] : vector<14xi1> to vector<14xi1>
    %74 = math.atan2 %3, %34 : tensor<14xf16>
    vector.print %68 : vector<14xi1>
    %75 = math.absf %4 : tensor<14x14xf32>
    %76 = math.ipowi %c1165341599_i32, %c542023153_i32 : i32
    %77 = math.absf %cst_1 : f16
    vector.print %45 : vector<1xi1>
    %78 = vector.shuffle %19, %45 [1, 2, 3] : vector<3xi1>, vector<1xi1>
    %79 = index.ceildivs %c7, %c4
    %80 = tensor.empty() : tensor<14x14xf32>
    %81 = linalg.matmul ins(%6, %12 : tensor<14x14xf32>, tensor<14x14xf32>) outs(%80 : tensor<14x14xf32>) -> tensor<14x14xf32>
    %82 = vector.broadcast %c8 : index to vector<16xindex>
    %83 = vector.broadcast %64 : i1 to vector<16xi1>
    vector.scatter %alloc_6[%c7, %c0] [%82], %83, %83 : memref<16x1xi1>, vector<16xindex>, vector<16xi1>, vector<16xi1>
    %collapsed = tensor.collapse_shape %14 [[0, 1]] : tensor<16x1xi32> into tensor<16xi32>
    %84 = arith.subi %c542023153_i32, %c9234456_i32 : i32
    memref.assume_alignment %alloc_16, 1 : memref<14xf16>
    %inserted_23 = tensor.insert %c-31621_i16 into %15[%c7] : tensor<14xi16>
    %85 = vector.extract_strided_slice %19 {offsets = [0], sizes = [1], strides = [1]} : vector<3xi1> to vector<1xi1>
    %86 = index.casts %c9 : index to i32
    memref.store %c1165341599_i32, %alloc_11[%c3, %c0] : memref<14x14xi32>
    %87 = math.absf %4 : tensor<14x14xf32>
    %88 = memref.atomic_rmw andi %c424612358_i64, %alloc_18[%c9, %c13] : (i64, memref<14x14xi64>) -> i64
    memref.alloca_scope  {
      %254 = math.ctpop %c-31621_i16 : i16
      %255 = index.maxs %c5, %c15
      %256 = vector.multi_reduction <or>, %68, %64 [0] : vector<14xi1> to i1
      %257 = index.add %c0, %255
      memref.tensor_store %7, %alloc_18 : memref<14x14xi64>
      %258 = arith.divf %cst_3, %cst_2 : f32
      %259 = vector.multi_reduction <xor>, %68, %68 [] : vector<14xi1> to vector<14xi1>
      %260 = arith.remsi %c424612358_i64, %c424612358_i64 : i64
      %261 = arith.maxf %cst_0, %cst_2 : f32
      %262 = math.roundeven %cst : f16
      %263 = arith.minui %c542023153_i32, %c678836041_i32 : i32
      %264 = scf.execute_region -> index {
        %278 = vector.insertelement %256, %19[%257 : index] : vector<3xi1>
        %279 = affine.apply affine_map<(d0, d1, d2) -> ((d1 mod 4) ceildiv 8)>(%255, %c15, %c3)
        %280 = math.rsqrt %34 : tensor<14xf16>
        %281 = vector.broadcast %c-31621_i16 : i16 to vector<i16>
        vector.transfer_write %281, %32[%c13] : vector<i16>, memref<14xi16>
        %282 = arith.addf %cst_1, %cst_1 : f16
        %283 = math.log10 %from_elements : tensor<16x1xf32>
        %284 = affine.apply affine_map<(d0, d1, d2) -> ((d1 mod 4) ceildiv 8)>(%52, %52, %79)
        %285 = arith.minsi %false, %256 : i1
        %false_42 = index.bool.constant false
        %286 = affine.max affine_map<(d0, d1) -> (d1 * -1024)>(%52, %c14)
        %287 = math.log %12 : tensor<14x14xf32>
        %288 = arith.shrui %64, %false_42 : i1
        %rank_43 = tensor.rank %6 : tensor<14x14xf32>
        %289 = memref.realloc %alloc_8 : memref<14xf32> to memref<14xf32>
        %290 = index.sub %255, %c9
        %291 = arith.divsi %c396481855_i32, %c678836041_i32 : i32
        scf.yield %286 : index
      }
      %265 = vector.insertelement %256, %19[%46 : index] : vector<3xi1>
      %rank_36 = tensor.rank %17 : tensor<14x14xi16>
      %266 = math.log10 %from_elements : tensor<16x1xf32>
      %267 = math.absi %0 : tensor<14x14xi64>
      %cast_37 = tensor.cast %8 : tensor<14x14xi64> to tensor<?x?xi64>
      %268 = math.atan2 %3, %3 : tensor<14xf16>
      %269 = arith.mulf %cst, %cst : f16
      %270 = vector.shuffle %68, %68 [0, 1, 3, 5, 6, 7, 8, 10, 12, 18, 20, 24, 27] : vector<14xi1>, vector<14xi1>
      %cast_38 = tensor.cast %21 : tensor<i16> to tensor<i16>
      %rank_39 = tensor.rank %15 : tensor<14xi16>
      %271 = memref.atomic_rmw assign %c-31621_i16, %32[%c13] : (i16, memref<14xi16>) -> i16
      %alloc_40 = memref.alloc() : memref<14xf16>
      %272 = arith.maxsi %c-31621_i16, %c-31621_i16 : i16
      vector.print %68 : vector<14xi1>
      %inserted_41 = tensor.insert %c-31621_i16 into %20[] : tensor<i16>
      %273 = math.tan %34 : tensor<14xf16>
      %274 = affine.load %62[%c3, %c7] : memref<14x14xf32>
      %275 = vector.broadcast %cst_0 : f32 to vector<14x14xf32>
      %276 = index.sizeof
      %277 = math.log10 %6 : tensor<14x14xf32>
    }
    %rank = tensor.rank %0 : tensor<14x14xi64>
    %89 = vector.broadcast %c9 : index to vector<3xindex>
    %90 = vector.broadcast %c424612358_i64 : i64 to vector<3xi64>
    vector.scatter %61[%c3] [%89], %19, %90 : memref<14xi64>, vector<3xindex>, vector<3xi1>, vector<3xi64>
    %91 = vector.load %alloc_16[%c8] : memref<14xf16>, vector<14x14xf16>
    %92 = tensor.empty() : tensor<i16>
    %mapped = linalg.map ins(%21, %21, %20 : tensor<i16>, tensor<i16>, tensor<i16>) outs(%92 : tensor<i16>)
      (%in: i16, %in_36: i16, %in_37: i16) {
        %254 = math.rsqrt %1 : tensor<14x14xf32>
        %255 = scf.if %true -> (memref<14x14xi64>) {
          %283 = arith.andi %c122117168_i32, %c122117168_i32 : i32
          %284 = math.log10 %1 : tensor<14x14xf32>
          %285 = tensor.empty() : tensor<14x14xf32>
          %286 = memref.load %alloc_13[%c5, %c3] : memref<14x14xi16>
          %287 = index.casts %c10 : index to i32
          %288 = math.floor %1 : tensor<14x14xf32>
          %289 = math.absf %1 : tensor<14x14xf32>
          %290 = arith.maxsi %c-22309_i16, %c-31621_i16 : i16
          scf.yield %alloc_18 : memref<14x14xi64>
        } else {
          %283 = math.copysign %cst_3, %cst_3 : f32
          %284 = index.castu %51 : index to i32
          %285 = vector.broadcast %in : i16 to vector<i16>
          %286 = vector.transfer_write %285, %15[%79] : vector<i16>, tensor<14xi16>
          %287 = arith.ori %c1165341599_i32, %c9234456_i32 : i32
          %288 = memref.realloc %61 : memref<14xi64> to memref<1xi64>
          %289 = vector.reduction <maxsi>, %85 : vector<1xi1> into i1
          %290 = index.floordivs %c3, %c11
          %inserted_42 = tensor.insert %c-31621_i16 into %20[] : tensor<i16>
          scf.yield %alloc_18 : memref<14x14xi64>
        }
        scf.index_switch %c11 
        case 1 {
          %283 = memref.realloc %alloc_7 : memref<14xi64> to memref<3xi64>
          %284 = vector.shuffle %19, %85 [0, 1, 2, 3] : vector<3xi1>, vector<1xi1>
          %285 = arith.floordivsi %c-31621_i16, %in : i16
          %286 = arith.divsi %c396481855_i32, %c122117168_i32 : i32
          %c1_i32 = arith.constant 1 : i32
          %c0_i32 = arith.constant 0 : i32
          %287 = vector.transfer_read %11[%c8, %50], %c0_i32 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<14x14xi32>, vector<3xi32>
          %288 = math.sqrt %1 : tensor<14x14xf32>
          %289 = memref.atomic_rmw ori %in_37, %32[%c4] : (i16, memref<14xi16>) -> i16
          %290 = tensor.empty(%46) : tensor<?x1xf16>
          %291 = vector.multi_reduction <minsi>, %68, %false [0] : vector<14xi1> to i1
          %292 = index.maxs %50, %51
          %293 = math.absi %14 : tensor<16x1xi32>
          %294 = vector.broadcast %c-31621_i16 : i16 to vector<i16>
          %295 = vector.transfer_write %294, %18[%c5] : vector<i16>, tensor<14xi16>
          %296 = math.log %cst_0 : f32
          %297 = index.floordivs %rank, %c7
          vector.print %91 : vector<14x14xf16>
          bufferization.dealloc_tensor %12 : tensor<14x14xf32>
          scf.yield
        }
        default {
          %283 = math.cttz %collapsed : tensor<16xi32>
          %284 = math.absi %c396481855_i32 : i32
          %285 = vector.extract %68[11] : vector<14xi1>
          %286 = arith.cmpi sge, %c122117168_i32, %c678836041_i32 : i32
          %287 = memref.atomic_rmw maxf %cst, %alloc_12[%c9, %c11] : (f16, memref<14x14xf16>) -> f16
          %288 = arith.floordivsi %64, %false : i1
          %289 = math.ceil %cst_3 : f32
          %from_elements_42 = tensor.from_elements %c542023153_i32, %c542023153_i32, %c396481855_i32, %c678836041_i32, %c1165341599_i32, %c1165341599_i32, %c9234456_i32, %c1165341599_i32, %c542023153_i32, %63, %c9234456_i32, %c9234456_i32, %c396481855_i32, %c9234456_i32, %c122117168_i32, %c542023153_i32, %63, %63, %c678836041_i32, %c678836041_i32, %c9234456_i32, %c122117168_i32, %c542023153_i32, %c396481855_i32, %c9234456_i32, %c122117168_i32, %c9234456_i32, %63, %63, %c542023153_i32, %63, %c396481855_i32, %63, %c396481855_i32, %c396481855_i32, %c1165341599_i32, %c1165341599_i32, %63, %c122117168_i32, %c122117168_i32, %c396481855_i32, %c1165341599_i32, %c396481855_i32, %63, %c542023153_i32, %c678836041_i32, %c678836041_i32, %c9234456_i32, %c542023153_i32, %c1165341599_i32, %63, %c542023153_i32, %c396481855_i32, %c542023153_i32, %c1165341599_i32, %c9234456_i32, %c396481855_i32, %c122117168_i32, %63, %c678836041_i32, %c122117168_i32, %63, %c122117168_i32, %c396481855_i32, %c9234456_i32, %c542023153_i32, %c396481855_i32, %c678836041_i32, %c1165341599_i32, %c542023153_i32, %c1165341599_i32, %c678836041_i32, %c9234456_i32, %63, %c122117168_i32, %c9234456_i32, %c9234456_i32, %c678836041_i32, %c9234456_i32, %c122117168_i32, %c678836041_i32, %c1165341599_i32, %63, %c122117168_i32, %c396481855_i32, %c542023153_i32, %63, %63, %c122117168_i32, %c542023153_i32, %c122117168_i32, %c122117168_i32, %c1165341599_i32, %63, %63, %c1165341599_i32, %c396481855_i32, %63, %c396481855_i32, %c1165341599_i32, %c396481855_i32, %c9234456_i32, %c396481855_i32, %c122117168_i32, %c396481855_i32, %63, %63, %c122117168_i32, %c1165341599_i32, %c396481855_i32, %c542023153_i32, %c396481855_i32, %63, %c122117168_i32, %c396481855_i32, %c122117168_i32, %c9234456_i32, %c1165341599_i32, %c542023153_i32, %c396481855_i32, %c678836041_i32, %c542023153_i32, %c678836041_i32, %c542023153_i32, %c122117168_i32, %c542023153_i32, %c542023153_i32, %63, %c396481855_i32, %c9234456_i32, %c1165341599_i32, %c1165341599_i32, %c542023153_i32, %c1165341599_i32, %63, %c396481855_i32, %c542023153_i32, %c678836041_i32, %c542023153_i32, %c396481855_i32, %c678836041_i32, %c9234456_i32, %c122117168_i32, %c9234456_i32, %63, %c9234456_i32, %c9234456_i32, %63, %c678836041_i32, %63, %c678836041_i32, %63, %c542023153_i32, %c396481855_i32, %63, %c9234456_i32, %63, %c396481855_i32, %c678836041_i32, %c678836041_i32, %c542023153_i32, %c122117168_i32, %c678836041_i32, %c122117168_i32, %c678836041_i32, %c1165341599_i32, %c9234456_i32, %c9234456_i32, %c396481855_i32, %c542023153_i32, %c678836041_i32, %c542023153_i32, %c122117168_i32, %c542023153_i32, %63, %c9234456_i32, %c396481855_i32, %c122117168_i32, %c122117168_i32, %c542023153_i32, %c122117168_i32, %c542023153_i32, %c1165341599_i32, %63, %c678836041_i32, %c122117168_i32, %63, %c678836041_i32, %c396481855_i32, %c122117168_i32, %c122117168_i32, %c678836041_i32, %c122117168_i32, %c122117168_i32, %c9234456_i32, %c396481855_i32 : tensor<14x14xi32>
          %290 = vector.load %alloc_9[%c15, %c0] : memref<16x1xf32>, vector<14x14xf32>
          %collapsed_43 = tensor.collapse_shape %6 [[0, 1]] : tensor<14x14xf32> into tensor<196xf32>
          %291 = index.castu %63 : i32 to index
          %292 = math.atan2 %6, %80 : tensor<14x14xf32>
          %293 = arith.shrsi %c1165341599_i32, %c542023153_i32 : i32
          %294 = index.casts %79 : index to i32
          %295 = arith.shrsi %in, %c-31621_i16 : i16
          %296 = arith.divui %c122117168_i32, %c542023153_i32 : i32
        }
        %false_38 = index.bool.constant false
        %256 = vector.broadcast %rank : index to vector<3xindex>
        %257 = vector.broadcast %in_36 : i16 to vector<3xi16>
        vector.scatter %alloc_4[%c9, %c0] [%256], %19, %257 : memref<16x1xi16>, vector<3xindex>, vector<3xi1>, vector<3xi16>
        %258 = arith.divsi %64, %false_38 : i1
        %259 = arith.ceildivsi %c-31621_i16, %c-22309_i16 : i16
        %false_39 = arith.constant false
        %260 = index.add %c1, %c15
        %261 = tensor.empty() : tensor<14xi16>
        %collapsed_40 = tensor.collapse_shape %4 [[0, 1]] : tensor<14x14xf32> into tensor<196xf32>
        %262 = math.log %4 : tensor<14x14xf32>
        %263 = index.divu %c3, %51
        %264 = tensor.empty() : tensor<14x14x14xi64>
        %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%264 : tensor<14x14x14xi64>) {
        ^bb0(%out: i64):
          %283 = index.divs %c8, %c11
          %284 = arith.shrsi %c122117168_i32, %c396481855_i32 : i32
          %285 = math.round %cst_1 : f16
          %286 = vector.broadcast %cst : f16 to vector<14xf16>
          %dest_42, %accumulated_value_43 = vector.scan <add>, %91, %286 {inclusive = true, reduction_dim = 0 : i64} : vector<14x14xf16>, vector<14xf16>
          %287 = vector.extract_strided_slice %19 {offsets = [0], sizes = [2], strides = [1]} : vector<3xi1> to vector<2xi1>
          %288 = index.casts %c542023153_i32 : i32 to index
          vector.print %45 : vector<1xi1>
          %289 = math.cos %1 : tensor<14x14xf32>
          %290 = arith.remsi %c-22309_i16, %c-31621_i16 : i16
          %291 = math.round %3 : tensor<14xf16>
          %292 = arith.maxui %in_37, %c-22309_i16 : i16
          %293 = index.add %c11, %50
          %294 = arith.remui %c-31621_i16, %in_36 : i16
          %295 = vector.broadcast %c-31621_i16 : i16 to vector<16xi16>
          %296 = vector.transfer_write %295, %10[%c13, %79] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<16xi16>, tensor<14x14xi16>
          %297 = math.fma %12, %4, %80 : tensor<14x14xf32>
          %298 = math.powf %cst_3, %cst_0 : f32
          %299 = affine.max affine_map<(d0, d1, d2) -> (d2 + d1)>(%263, %c14, %c9)
          %300 = vector.broadcast %in_37 : i16 to vector<14x14xi16>
          %301 = index.add %263, %c12
          memref.copy %alloc_14, %62 : memref<14x14xf32> to memref<14x14xf32>
          %302 = vector.load %alloc_11[%c3, %c11] : memref<14x14xi32>, vector<14x14xi32>
          %303 = vector.load %62[%c1, %c0] : memref<14x14xf32>, vector<14x14xf32>
          %304 = math.log %12 : tensor<14x14xf32>
          %305 = math.sqrt %3 : tensor<14xf16>
          %306 = arith.minf %cst_1, %cst_1 : f16
          %307 = vector.insertelement %false, %68[%299 : index] : vector<14xi1>
          %alloc_44 = memref.alloc() : memref<i16>
          memref.tensor_store %92, %alloc_44 : memref<i16>
          %308 = tensor.empty() : tensor<14x14xi16>
          %309 = linalg.matmul ins(%16, %17 : tensor<14x14xi16>, tensor<14x14xi16>) outs(%308 : tensor<14x14xi16>) -> tensor<14x14xi16>
          %310 = math.sqrt %4 : tensor<14x14xf32>
          %311 = arith.maxui %c424612358_i64, %c424612358_i64 : i64
          %312 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 ceildiv 8 + 32)>(%50, %c10, %c13, %37)
          %313 = affine.max affine_map<(d0, d1, d2) -> (d0 mod 4 - d0 * 8, d0, (d2 + d1) mod 16, d0 mod 4 - d0 * 8)>(%288, %c2, %25)
          linalg.yield %c424612358_i64 : i64
        } -> tensor<14x14x14xi64>
        %266 = index.ceildivs %c9, %51
        %267 = math.atan %1 : tensor<14x14xf32>
        %268 = vector.broadcast %in : i16 to vector<14x14xi16>
        %269 = arith.divsi %in_37, %in_36 : i16
        %inserted_41 = tensor.insert %c9234456_i32 into %11[%c4, %c4] : tensor<14x14xi32>
        %270 = math.round %12 : tensor<14x14xf32>
        %271 = index.floordivs %rank, %c2
        %272 = math.log %cst : f16
        %273 = math.copysign %6, %12 : tensor<14x14xf32>
        %274 = math.log1p %1 : tensor<14x14xf32>
        %275 = math.fma %cst_2, %cst_0, %cst_3 : f32
        %276 = scf.index_switch %51 -> index 
        case 1 {
          %283 = index.mul %c14, %c3
          %284 = arith.andi %c424612358_i64, %c424612358_i64 : i64
          %285 = math.cttz %c122117168_i32 : i32
          %c692864174_i64 = arith.constant 692864174 : i64
          %286 = arith.minui %in_36, %in_36 : i16
          %287 = index.casts %271 : index to i32
          %288 = vector.reduction <add>, %19 : vector<3xi1> into i1
          %289 = math.absi %false : i1
          %290 = arith.remui %c678836041_i32, %c1165341599_i32 : i32
          %291 = vector.splat %c13 : vector<16x1xindex>
          %collapsed_42 = tensor.collapse_shape %6 [[0, 1]] : tensor<14x14xf32> into tensor<196xf32>
          %292 = arith.minsi %c-22309_i16, %c-22309_i16 : i16
          %293 = arith.muli %false_38, %false_38 : i1
          %294 = index.castu %c9234456_i32 : i32 to index
          %cast_43 = tensor.cast %from_elements : tensor<16x1xf32> to tensor<?x?xf32>
          %collapsed_44 = tensor.collapse_shape %12 [[0, 1]] : tensor<14x14xf32> into tensor<196xf32>
          scf.yield %50 : index
        }
        case 2 {
          %283 = vector.extract %85[0] : vector<1xi1>
          %284 = math.copysign %80, %4 : tensor<14x14xf32>
          %285 = arith.ceildivsi %c1165341599_i32, %c678836041_i32 : i32
          %286 = math.tan %12 : tensor<14x14xf32>
          %287 = vector.extract_strided_slice %268 {offsets = [3], sizes = [1], strides = [1]} : vector<14x14xi16> to vector<1x14xi16>
          %cast_42 = tensor.cast %2 : tensor<14xi16> to tensor<?xi16>
          %288 = arith.minsi %true, %true : i1
          %289 = math.sqrt %collapsed_40 : tensor<196xf32>
          %290 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %91, %91, %91 : vector<14x14xf16>, vector<14x14xf16> into vector<14x14xf16>
          %291 = math.round %4 : tensor<14x14xf32>
          %alloc_43 = memref.alloc() : memref<14x14xi16>
          memref.copy %alloc_13, %alloc_43 : memref<14x14xi16> to memref<14x14xi16>
          %292 = index.mul %c6, %271
          %293 = index.floordivs %292, %c14
          %294 = math.absf %6 : tensor<14x14xf32>
          %295 = math.sqrt %1 : tensor<14x14xf32>
          %296 = math.floor %12 : tensor<14x14xf32>
          scf.yield %c15 : index
        }
        default {
          %collapsed_42 = tensor.collapse_shape %13 [[0, 1]] : tensor<14x14xi64> into tensor<196xi64>
          %283 = math.sqrt %3 : tensor<14xf16>
          %284 = index.castu %rank : index to i32
          %285 = math.ctlz %collapsed : tensor<16xi32>
          %286 = math.atan %collapsed_40 : tensor<196xf32>
          %287 = math.floor %4 : tensor<14x14xf32>
          %288 = vector.broadcast %63 : i32 to vector<16x1xi32>
          %inserted_43 = tensor.insert %c424612358_i64 into %13[%c6, %c0] : tensor<14x14xi64>
          %289 = arith.divui %false, %false : i1
          %290 = math.ipowi %16, %10 : tensor<14x14xi16>
          %291 = memref.realloc %alloc_7 : memref<14xi64> to memref<3xi64>
          %292 = math.roundeven %cst_0 : f32
          %293 = vector.create_mask %c3 : vector<14xi1>
          %294 = memref.load %alloc_20[%c3] : memref<14xi16>
          %295 = vector.broadcast %c396481855_i32 : i32 to vector<1xi32>
          %296 = vector.transfer_write %295, %14[%25, %c8] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xi32>, tensor<16x1xi32>
          %297 = index.castu %c14 : index to i32
          scf.yield %c2 : index
        }
        %277 = arith.maxf %cst, %cst : f16
        %278 = affine.if affine_set<(d0, d1) : (d0 * -17 >= 0, d0 == 0, -d0 + 6 == 0, -d0 == 0)>(%c0, %c2) -> memref<14x14xf32> {
          %283 = tensor.empty() : tensor<14x14xi64>
          %284 = linalg.matmul ins(%13, %0 : tensor<14x14xi64>, tensor<14x14xi64>) outs(%283 : tensor<14x14xi64>) -> tensor<14x14xi64>
          %285 = arith.remsi %64, %false_38 : i1
          %286 = index.casts %39 : index to i32
          %287 = index.maxs %c8, %c4
          vector.print %268 : vector<14x14xi16>
          %288 = arith.divsi %c-31621_i16, %c-22309_i16 : i16
          %289 = math.copysign %cst_2, %cst_0 : f32
          %290 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 - 8, d3 - ((d0 * 8) mod 128 + 8) + 8)>(%287, %266, %c4, %287)
          affine.yield %62 : memref<14x14xf32>
        } else {
          %283 = math.absi %13 : tensor<14x14xi64>
          %284 = arith.remf %cst_3, %cst_3 : f32
          %rank_42 = tensor.rank %12 : tensor<14x14xf32>
          %285 = math.ipowi %11, %11 : tensor<14x14xi32>
          memref.copy %alloc_11, %alloc_5 : memref<14x14xi32> to memref<14x14xi32>
          %286 = math.rsqrt %4 : tensor<14x14xf32>
          %287 = affine.apply affine_map<(d0, d1, d2) -> (d1 - d0 + 16)>(%c11, %rank_42, %50)
          %288 = math.copysign %12, %6 : tensor<14x14xf32>
          affine.yield %alloc_14 : memref<14x14xf32>
        }
        %279 = vector.broadcast %false_38 : i1 to vector<1x1xi1>
        %280 = vector.outerproduct %45, %45, %279 {kind = #vector.kind<minsi>} : vector<1xi1>, vector<1xi1>
        %281 = vector.create_mask %c12, %39 : vector<14x14xi1>
        %282 = index.floordivs %c2, %50
        %dest, %accumulated_value = vector.scan <xor>, %281, %68 {inclusive = false, reduction_dim = 0 : i64} : vector<14x14xi1>, vector<14xi1>
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %93 = memref.load %alloc_7[%c1] : memref<14xi64>
    %94 = index.sub %c4, %c6
    %95 = arith.shrsi %c678836041_i32, %63 : i32
    %96 = vector.broadcast %cst_1 : f16 to vector<14xf16>
    %97 = vector.multi_reduction <add>, %91, %96 [1] : vector<14x14xf16> to vector<14xf16>
    memref.assume_alignment %alloc_19, 4 : memref<1x16xi16>
    %98 = math.sqrt %12 : tensor<14x14xf32>
    scf.index_switch %c4 
    case 1 {
      %254 = vector.multi_reduction <mul>, %91, %96 [0] : vector<14x14xf16> to vector<14xf16>
      %collapsed_36 = tensor.collapse_shape %6 [[0, 1]] : tensor<14x14xf32> into tensor<196xf32>
      %255 = math.atan %cst_1 : f16
      %256 = memref.atomic_rmw andi %c122117168_i32, %alloc[%c6, %c0] : (i32, memref<16x1xi32>) -> i32
      %257 = bufferization.to_tensor %alloc_19 : memref<1x16xi16>
      %258 = affine.max affine_map<(d0, d1, d2) -> ((d0 * 4) floordiv 32 - 32, d0 - d1 - 16, d1 * 128, ((d0 - d1) * 2) mod 4)>(%25, %c2, %c11)
      %259 = math.cos %6 : tensor<14x14xf32>
      %260 = bufferization.to_tensor %alloc_14 : memref<14x14xf32>
      %collapsed_37 = tensor.collapse_shape %0 [[0, 1]] : tensor<14x14xi64> into tensor<196xi64>
      %261 = vector.load %alloc_9[%c14, %c0] : memref<16x1xf32>, vector<14x14xf32>
      %262 = math.rsqrt %1 : tensor<14x14xf32>
      %263 = index.sizeof
      %264 = arith.cmpf false, %cst_0, %cst_2 : f32
      %265 = tensor.empty() : tensor<14x14xi64>
      %266 = linalg.matmul ins(%7, %13 : tensor<14x14xi64>, tensor<14x14xi64>) outs(%265 : tensor<14x14xi64>) -> tensor<14x14xi64>
      %267 = math.log %12 : tensor<14x14xf32>
      %268 = vector.splat %c8 : vector<16x1xindex>
      scf.yield
    }
    default {
      %254 = math.ipowi %c424612358_i64, %c424612358_i64 : i64
      %255 = arith.remui %true, %false : i1
      %256 = vector.create_mask %c9, %52 : vector<14x14xi1>
      %257 = math.rsqrt %1 : tensor<14x14xf32>
      memref.tensor_store %18, %32 : memref<14xi16>
      %258 = scf.index_switch %c7 -> index 
      case 1 {
        %270 = vector.create_mask %c12, %25 : vector<14x14xi1>
        %271 = bufferization.to_tensor %alloc_8 : memref<14xf32>
        %272 = bufferization.to_tensor %alloc_6 : memref<16x1xi1>
        %273 = arith.andi %c678836041_i32, %c678836041_i32 : i32
        %274 = arith.addf %cst_2, %cst_3 : f32
        %275 = math.floor %4 : tensor<14x14xf32>
        %276 = index.maxs %c10, %c8
        %277 = arith.ceildivsi %64, %false : i1
        %278 = math.atan2 %from_elements, %from_elements : tensor<16x1xf32>
        %279 = math.exp %80 : tensor<14x14xf32>
        %280 = vector.shuffle %96, %96 [4, 7, 9, 10, 11, 13, 17, 21, 22, 24, 26] : vector<14xf16>, vector<14xf16>
        bufferization.dealloc_tensor %12 : tensor<14x14xf32>
        %281 = math.fpowi %4, %33 : tensor<14x14xf32>, tensor<14x14xi32>
        %282 = arith.divsi %c122117168_i32, %c678836041_i32 : i32
        %283 = math.cttz %10 : tensor<14x14xi16>
        %alloc_37 = memref.alloc() : memref<14xf16>
        memref.copy %alloc_16, %alloc_37 : memref<14xf16> to memref<14xf16>
        scf.yield %c0 : index
      }
      case 2 {
        %cst_37 = arith.constant 3.376000e+04 : f16
        %270 = bufferization.to_memref %12 : memref<14x14xf32>
        %271 = arith.divsi %false, %true : i1
        %272 = index.divs %51, %c3
        %273 = vector.flat_transpose %19 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
        %274 = math.floor %12 : tensor<14x14xf32>
        %275 = arith.addf %cst_2, %cst_2 : f32
        %276 = vector.broadcast %cst_0 : f32 to vector<14x14xf32>
        %277 = vector.broadcast %true : i1 to vector<3x3xi1>
        %278 = vector.outerproduct %19, %273, %277 {kind = #vector.kind<xor>} : vector<3xi1>, vector<3xi1>
        %279 = math.log10 %from_elements : tensor<16x1xf32>
        %280 = arith.shrui %c9234456_i32, %c396481855_i32 : i32
        %281 = arith.mulf %cst_0, %cst_3 : f32
        %282 = math.powf %1, %6 : tensor<14x14xf32>
        %283 = math.rsqrt %cst_0 : f32
        %284 = arith.remsi %c-31621_i16, %c-31621_i16 : i16
        %285 = vector.outerproduct %96, %96, %91 {kind = #vector.kind<minf>} : vector<14xf16>, vector<14xf16>
        scf.yield %c3 : index
      }
      case 3 {
        %270 = math.cos %cst_0 : f32
        %271 = arith.addf %cst, %cst : f16
        %dest, %accumulated_value = vector.scan <maxui>, %256, %68 {inclusive = true, reduction_dim = 1 : i64} : vector<14x14xi1>, vector<14xi1>
        %272 = vector.load %alloc_17[%c0, %c0] : memref<16x1xf32>, vector<14xf32>
        %273 = arith.addf %cst_0, %cst_2 : f32
        %274 = memref.atomic_rmw addi %c-22309_i16, %32[%c12] : (i16, memref<14xi16>) -> i16
        %275 = index.maxs %c14, %c10
        %276 = vector.create_mask %c4, %c0 : vector<14x14xi1>
        %277 = arith.mulf %cst_0, %cst_2 : f32
        %278 = arith.mulf %cst_3, %cst_0 : f32
        %279 = arith.shrsi %true, %false : i1
        %280 = math.ceil %cst_3 : f32
        %281 = math.ipowi %8, %7 : tensor<14x14xi64>
        %282 = math.log10 %from_elements : tensor<16x1xf32>
        %283 = arith.negf %cst_2 : f32
        %284 = arith.muli %true, %64 : i1
        scf.yield %c10 : index
      }
      case 4 {
        %270 = arith.shrsi %63, %c542023153_i32 : i32
        %271 = math.powf %80, %1 : tensor<14x14xf32>
        %272 = arith.shli %c424612358_i64, %c424612358_i64 : i64
        %273 = index.castu %false : i1 to index
        %274 = arith.cmpi ne, %c-22309_i16, %c-31621_i16 : i16
        %275 = arith.addf %cst_2, %cst_3 : f32
        %splat = tensor.splat %c1165341599_i32 : tensor<14x14xi32>
        %276 = affine.max affine_map<(d0, d1) -> (d1)>(%51, %c10)
        %277 = math.floor %from_elements : tensor<16x1xf32>
        %278 = vector.reduction <maxsi>, %19 : vector<3xi1> into i1
        %279 = arith.minsi %64, %true : i1
        %280 = arith.maxui %c424612358_i64, %c424612358_i64 : i64
        %281 = math.ceil %6 : tensor<14x14xf32>
        %282 = memref.atomic_rmw maxs %c-31621_i16, %alloc_4[%c3, %c0] : (i16, memref<16x1xi16>) -> i16
        %283 = arith.muli %c1165341599_i32, %c122117168_i32 : i32
        %284 = index.ceildivs %c5, %c5
        scf.yield %276 : index
      }
      default {
        %270 = arith.maxsi %c-31621_i16, %c-22309_i16 : i16
        %dest, %accumulated_value = vector.scan <minf>, %91, %96 {inclusive = false, reduction_dim = 1 : i64} : vector<14x14xf16>, vector<14xf16>
        %271 = arith.divui %true, %false : i1
        %272 = vector.shuffle %45, %19 [0, 1, 2, 3] : vector<1xi1>, vector<3xi1>
        %273 = vector.load %alloc_14[%c12, %c6] : memref<14x14xf32>, vector<16x1xf32>
        %274 = memref.atomic_rmw maxf %cst_1, %alloc_16[%c2] : (f16, memref<14xf16>) -> f16
        %275 = math.absi %false : i1
        %cast_37 = tensor.cast %4 : tensor<14x14xf32> to tensor<?x?xf32>
        %276 = math.roundeven %6 : tensor<14x14xf32>
        %277 = affine.max affine_map<(d0, d1) -> (d0 floordiv 16)>(%c4, %50)
        %278 = index.add %c4, %94
        %279 = index.maxs %c11, %37
        %280 = index.castu %c9234456_i32 : i32 to index
        %281 = index.add %c11, %rank
        %282 = vector.broadcast %63 : i32 to vector<16x1xi32>
        %283 = vector.reduction <maxf>, %96 : vector<14xf16> into f16
        scf.yield %280 : index
      }
      %259 = index.ceildivs %c3, %c6
      %260 = math.absf %cst_3 : f32
      %261 = vector.broadcast %cst_3 : f32 to vector<16x1xf32>
      %262 = vector.fma %261, %261, %261 : vector<16x1xf32>
      %263 = math.absi %7 : tensor<14x14xi64>
      %264 = math.copysign %6, %12 : tensor<14x14xf32>
      %265 = bufferization.to_tensor %61 : memref<14xi64>
      %c0_i32 = arith.constant 0 : i32
      %c0_i32_36 = arith.constant 0 : i32
      %266 = vector.transfer_read %collapsed[%c1], %c0_i32_36 : tensor<16xi32>, vector<i32>
      %267 = math.log1p %cst_1 : f16
      %268 = index.floordivs %39, %c5
      %269 = index.add %c0, %c9
    }
    %99 = arith.andi %true, %true : i1
    %100 = index.casts %false : i1 to index
    %101 = arith.divf %cst_3, %cst_0 : f32
    memref.copy %alloc_7, %61 : memref<14xi64> to memref<14xi64>
    %102 = index.sub %c12, %c13
    %103 = vector.broadcast %cst_2 : f32 to vector<14xf32>
    %104 = vector.fma %103, %103, %103 : vector<14xf32>
    %105 = arith.remsi %true, %true : i1
    %106 = arith.remui %c542023153_i32, %c9234456_i32 : i32
    vector.print %85 : vector<1xi1>
    %107 = vector.multi_reduction <mul>, %96, %96 [] : vector<14xf16> to vector<14xf16>
    %108 = arith.remui %c-22309_i16, %c-22309_i16 : i16
    %109 = vector.shuffle %103, %103 [0, 1, 2, 3, 5, 6, 11, 14, 15, 17, 21, 22, 23, 25, 27] : vector<14xf32>, vector<14xf32>
    %110 = arith.minf %cst_0, %cst_2 : f32
    %111 = bufferization.to_memref %7 : memref<14x14xi64>
    %112 = math.atan2 %6, %1 : tensor<14x14xf32>
    %113 = math.absf %cst : f16
    %114 = math.rsqrt %4 : tensor<14x14xf32>
    %115 = vector.broadcast %cst_2 : f32 to vector<14x14xf32>
    %116 = vector.fma %115, %115, %115 : vector<14x14xf32>
    %117 = vector.shuffle %19, %19 [4] : vector<3xi1>, vector<3xi1>
    %118 = vector.flat_transpose %45 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
    %119 = affine.max affine_map<(d0, d1, d2) -> (d0 floordiv 4)>(%c2, %rank, %25)
    %120 = arith.ori %64, %64 : i1
    %121 = arith.divui %c-31621_i16, %c-31621_i16 : i16
    %122 = index.add %c10, %c7
    %123 = arith.addf %cst_1, %cst : f16
    %collapsed_24 = tensor.collapse_shape %14 [[0, 1]] : tensor<16x1xi32> into tensor<16xi32>
    %124 = memref.realloc %alloc_16 : memref<14xf16> to memref<1xf16>
    %125 = arith.maxui %c9234456_i32, %c9234456_i32 : i32
    %126 = arith.cmpi ugt, %c424612358_i64, %c424612358_i64 : i64
    %127 = math.cos %from_elements : tensor<16x1xf32>
    %128 = arith.shrsi %63, %c1165341599_i32 : i32
    memref.copy %61, %alloc_7 : memref<14xi64> to memref<14xi64>
    scf.execute_region {
      memref.store %c-22309_i16, %alloc_4[%c15, %c0] : memref<16x1xi16>
      %254 = math.copysign %80, %4 : tensor<14x14xf32>
      %255 = math.absi %reduced : tensor<14xi16>
      %256 = math.copysign %cst_2, %cst_2 : f32
      %257 = vector.flat_transpose %68 {columns = 7 : i32, rows = 2 : i32} : vector<14xi1> -> vector<14xi1>
      %258 = bufferization.clone %62 : memref<14x14xf32> to memref<14x14xf32>
      %259 = tensor.empty() : tensor<14x14xi16>
      %260 = linalg.matmul ins(%10, %10 : tensor<14x14xi16>, tensor<14x14xi16>) outs(%259 : tensor<14x14xi16>) -> tensor<14x14xi16>
      %261 = vector.multi_reduction <xor>, %68, %68 [] : vector<14xi1> to vector<14xi1>
      %262 = math.ipowi %reduced, %2 : tensor<14xi16>
      %263 = math.cos %cst_3 : f32
      %264 = vector.splat %c9 : vector<16x1xindex>
      %265 = arith.divf %cst_3, %cst_2 : f32
      %266 = vector.reduction <add>, %85 : vector<1xi1> into i1
      %267 = memref.load %alloc_20[%c9] : memref<14xi16>
      %true_36 = index.bool.constant true
      %268 = scf.execute_region -> i16 {
        %269 = vector.splat %63 : vector<14x14xi32>
        %270 = math.ceil %3 : tensor<14xf16>
        %271 = memref.realloc %alloc_16 : memref<14xf16> to memref<16xf16>
        %272 = math.tanh %12 : tensor<14x14xf32>
        %273 = arith.remsi %true, %false : i1
        %274 = vector.broadcast %c-22309_i16 : i16 to vector<14x14xi16>
        %275 = index.add %94, %c6
        %collapsed_37 = tensor.collapse_shape %80 [[0, 1]] : tensor<14x14xf32> into tensor<196xf32>
        %276 = math.round %1 : tensor<14x14xf32>
        %277 = index.mul %c9, %c14
        %278 = index.casts %c6 : index to i32
        %279 = arith.ceildivsi %false, %false : i1
        %280 = bufferization.clone %alloc_19 : memref<1x16xi16> to memref<1x16xi16>
        %281 = index.sizeof
        %282 = affine.min affine_map<(d0) -> (d0, d0 floordiv 8 + 1)>(%c10)
        %cast_38 = tensor.cast %3 : tensor<14xf16> to tensor<?xf16>
        scf.yield %c-22309_i16 : i16
      }
      scf.yield
    }
    %129 = vector.splat %c9234456_i32 : vector<14x14xi32>
    memref.store %c-22309_i16, %alloc_4[%c3, %c0] : memref<16x1xi16>
    %from_elements_25 = tensor.from_elements %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64, %c424612358_i64 : tensor<14x14xi64>
    %130 = math.log10 %cst_2 : f32
    %131 = math.tanh %cst_1 : f16
    %132 = vector.broadcast %c11 : index to vector<14xindex>
    %133 = vector.broadcast %c9234456_i32 : i32 to vector<14xi32>
    vector.scatter %alloc_11[%c0, %c0] [%132], %68, %133 : memref<14x14xi32>, vector<14xindex>, vector<14xi1>, vector<14xi32>
    %134 = math.exp %80 : tensor<14x14xf32>
    %inserted_26 = tensor.insert %c-31621_i16 into %10[%c4, %c13] : tensor<14x14xi16>
    %135 = tensor.empty() : tensor<14x14xi16>
    %136 = linalg.matmul ins(%17, %10 : tensor<14x14xi16>, tensor<14x14xi16>) outs(%135 : tensor<14x14xi16>) -> tensor<14x14xi16>
    %collapsed_27 = tensor.collapse_shape %10 [[0, 1]] : tensor<14x14xi16> into tensor<196xi16>
    %137 = arith.minui %63, %c122117168_i32 : i32
    %138 = math.log1p %cst_0 : f32
    %139 = memref.realloc %alloc_8 : memref<14xf32> to memref<3xf32>
    %140 = vector.broadcast %cst_2 : f32 to vector<f32>
    vector.transfer_write %140, %62[%c9, %100] : vector<f32>, memref<14x14xf32>
    %141 = index.add %25, %25
    %142 = math.log2 %6 : tensor<14x14xf32>
    %inserted_28 = tensor.insert %cst_0 into %80[%c12, %c1] : tensor<14x14xf32>
    %143 = vector.broadcast %c8 : index to vector<3xindex>
    %144 = vector.broadcast %c9234456_i32 : i32 to vector<3xi32>
    vector.scatter %alloc[%c8, %c0] [%143], %19, %144 : memref<16x1xi32>, vector<3xindex>, vector<3xi1>, vector<3xi32>
    %145 = index.castu %25 : index to i32
    %146 = math.copysign %cst_2, %cst_0 : f32
    %147 = math.round %4 : tensor<14x14xf32>
    %cast = tensor.cast %3 : tensor<14xf16> to tensor<?xf16>
    affine.store %c424612358_i64, %111[%c11, %c6] : memref<14x14xi64>
    %148 = index.add %c8, %c1
    %149 = vector.splat %c678836041_i32 : vector<16x1xi32>
    %150 = arith.andi %c-22309_i16, %c-31621_i16 : i16
    %151 = math.tanh %34 : tensor<14xf16>
    %152 = vector.broadcast %c-31621_i16 : i16 to vector<14x14xi16>
    %153 = tensor.empty() : tensor<16x1xi32>
    %mapped_29 = linalg.map ins(%14 : tensor<16x1xi32>) outs(%153 : tensor<16x1xi32>)
      (%in: i32) {
        %254 = math.powf %80, %12 : tensor<14x14xf32>
        %255 = affine.for %arg1 = 0 to 87 iter_args(%arg2 = %52) -> (index) {
          affine.yield %46 : index
        }
        %256 = arith.remui %c-31621_i16, %c-31621_i16 : i16
        %257 = math.absi %c424612358_i64 : i64
        %258 = arith.negf %cst : f16
        %259 = arith.andi %64, %64 : i1
        affine.store %c-31621_i16, %alloc_19[%c5, %c2] : memref<1x16xi16>
        %260 = vector.broadcast %cst_0 : f32 to vector<14xf32>
        %261 = arith.shrui %c-22309_i16, %c-22309_i16 : i16
        %262 = math.sqrt %cst : f16
        %263 = math.log10 %cst_0 : f32
        %264 = math.cos %cst_2 : f32
        %265 = math.cos %cst_3 : f32
        vector.print %96 : vector<14xf16>
        %266 = arith.cmpi sgt, %c-22309_i16, %c-31621_i16 : i16
        %267 = vector.broadcast %c424612358_i64 : i64 to vector<14x14xi64>
        %268 = vector.insertelement %cst_2, %103[%c4 : index] : vector<14xf32>
        %269 = math.tanh %6 : tensor<14x14xf32>
        %270 = vector.insertelement %true, %85[%c15 : index] : vector<1xi1>
        %271 = math.log2 %6 : tensor<14x14xf32>
        %expanded = tensor.expand_shape %1 [[0], [1, 2]] : tensor<14x14xf32> into tensor<14x14x1xf32>
        %collapsed_36 = tensor.collapse_shape %135 [[0, 1]] : tensor<14x14xi16> into tensor<196xi16>
        %272 = index.ceildivs %c15, %c5
        %273 = bufferization.clone %alloc_18 : memref<14x14xi64> to memref<14x14xi64>
        %274 = vector.insertelement %true, %19[%c7 : index] : vector<3xi1>
        %275 = index.add %c11, %52
        %276 = index.maxs %100, %c5
        %277 = memref.load %273[%c6, %c8] : memref<14x14xi64>
        %278 = arith.remsi %c542023153_i32, %c122117168_i32 : i32
        %279 = scf.execute_region -> index {
          %282 = affine.apply affine_map<(d0) -> (d0 * -256)>(%c4)
          %283 = math.floor %3 : tensor<14xf16>
          %284 = math.floor %12 : tensor<14x14xf32>
          %285 = math.powf %12, %6 : tensor<14x14xf32>
          %286 = index.sub %50, %119
          bufferization.dealloc_tensor %from_elements : tensor<16x1xf32>
          %dest, %accumulated_value = vector.scan <maxf>, %116, %104 {inclusive = true, reduction_dim = 0 : i64} : vector<14x14xf32>, vector<14xf32>
          %287 = arith.maxui %c-22309_i16, %c-22309_i16 : i16
          %288 = math.atan %cst_0 : f32
          %289 = arith.maxui %c542023153_i32, %c1165341599_i32 : i32
          %290 = math.log1p %6 : tensor<14x14xf32>
          %291 = arith.addi %c122117168_i32, %c542023153_i32 : i32
          %292 = math.floor %3 : tensor<14xf16>
          %293 = vector.create_mask %50 : vector<14xi1>
          %294 = bufferization.to_tensor %alloc_15 : memref<14x14xf16>
          %295 = math.atan2 %cst_1, %cst_1 : f16
          scf.yield %25 : index
        }
        %280 = math.copysign %6, %1 : tensor<14x14xf32>
        %281 = vector.outerproduct %103, %103, %116 {kind = #vector.kind<maxf>} : vector<14xf32>, vector<14xf32>
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    %154 = bufferization.clone %alloc_6 : memref<16x1xi1> to memref<16x1xi1>
    %155 = arith.andi %c1165341599_i32, %c542023153_i32 : i32
    %156 = math.atan %80 : tensor<14x14xf32>
    %157 = arith.cmpi ugt, %c424612358_i64, %c424612358_i64 : i64
    %158 = index.floordivs %c15, %122
    %159 = bufferization.to_tensor %alloc_19 : memref<1x16xi16>
    %160 = math.tan %1 : tensor<14x14xf32>
    %161 = vector.multi_reduction <xor>, %85, %false [0] : vector<1xi1> to i1
    %162 = memref.alloca_scope  -> (memref<16x1xf32>) {
      %254 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %118, %118, %64 : vector<1xi1>, vector<1xi1> into i1
      %255 = memref.atomic_rmw minf %cst, %alloc_15[%c0, %c7] : (f16, memref<14x14xf16>) -> f16
      %256 = arith.minsi %63, %c678836041_i32 : i32
      %c1_i32 = arith.constant 1 : i32
      %257 = vector.transfer_read %153[%94, %c0], %c1_i32 : tensor<16x1xi32>, vector<i32>
      %258 = math.fpowi %cst_1, %c1165341599_i32 : f16, i32
      scf.execute_region {
        %279 = arith.maxf %cst, %cst : f16
        %280 = vector.insert %true, %118 [0] : i1 into vector<1xi1>
        %281 = arith.andi %c122117168_i32, %c678836041_i32 : i32
        %282 = vector.broadcast %cst_3 : f32 to vector<f32>
        vector.transfer_write %282, %alloc_8[%119] : vector<f32>, memref<14xf32>
        %283 = arith.divsi %true, %64 : i1
        %284 = arith.remsi %c122117168_i32, %c1_i32 : i32
        %285 = math.log1p %cst_3 : f32
        %286 = arith.maxsi %c424612358_i64, %c424612358_i64 : i64
        %287 = arith.andi %c9234456_i32, %63 : i32
        %dest, %accumulated_value = vector.scan <minf>, %115, %103 {inclusive = false, reduction_dim = 0 : i64} : vector<14x14xf32>, vector<14xf32>
        %288 = math.log10 %6 : tensor<14x14xf32>
        %289 = arith.shrui %true, %161 : i1
        %290 = math.fpowi %12, %11 : tensor<14x14xf32>, tensor<14x14xi32>
        %291 = vector.splat %c1 : vector<14x14xindex>
        %inserted_39 = tensor.insert %c-22309_i16 into %17[%c8, %c10] : tensor<14x14xi16>
        memref.tensor_store %8, %alloc_18 : memref<14x14xi64>
        scf.yield
      }
      %c1_i32_36 = arith.constant 1 : i32
      %c0_i32 = arith.constant 0 : i32
      %259 = vector.transfer_read %33[%119, %c15], %c0_i32 : tensor<14x14xi32>, vector<i32>
      %260 = arith.remsi %64, %64 : i1
      %261 = math.cos %from_elements : tensor<16x1xf32>
      scf.execute_region {
        %279 = bufferization.clone %alloc : memref<16x1xi32> to memref<16x1xi32>
        %280 = affine.apply affine_map<(d0, d1, d2, d3) -> (-(d3 - 16))>(%100, %52, %c1, %c8)
        %281 = math.round %cst_0 : f32
        %282 = tensor.empty() : tensor<14x14xi16>
        %283 = linalg.matmul ins(%17, %10 : tensor<14x14xi16>, tensor<14x14xi16>) outs(%282 : tensor<14x14xi16>) -> tensor<14x14xi16>
        %284 = math.ceil %12 : tensor<14x14xf32>
        %285 = math.round %cst : f16
        %286 = index.floordivs %c2, %c12
        %287 = arith.divsi %c1_i32, %c678836041_i32 : i32
        %288 = vector.outerproduct %104, %103, %115 {kind = #vector.kind<maxf>} : vector<14xf32>, vector<14xf32>
        %289 = math.cttz %collapsed : tensor<16xi32>
        %290 = math.ctpop %from_elements_25 : tensor<14x14xi64>
        %291 = math.copysign %1, %4 : tensor<14x14xf32>
        %rank_39 = tensor.rank %10 : tensor<14x14xi16>
        %292 = arith.minui %false, %false : i1
        %293 = math.exp2 %cst_2 : f32
        bufferization.dealloc_tensor %282 : tensor<14x14xi16>
        scf.yield
      }
      %262 = memref.atomic_rmw mulf %cst_2, %alloc_9[%c13, %c0] : (f32, memref<16x1xf32>) -> f32
      %263 = affine.load %alloc_16[%c1] : memref<14xf16>
      %264 = math.log10 %cst_3 : f32
      %265 = arith.maxf %cst_0, %cst_0 : f32
      %266 = vector.multi_reduction <add>, %152, %152 [] : vector<14x14xi16> to vector<14x14xi16>
      %inserted_37 = tensor.insert %cst_3 into %4[%c0, %c13] : tensor<14x14xf32>
      %267 = memref.realloc %alloc_7 : memref<14xi64> to memref<16xi64>
      %268 = memref.realloc %alloc_20 : memref<14xi16> to memref<14xi16>
      %splat = tensor.splat %cst_1 : tensor<14x14xf16>
      %269 = math.copysign %cst, %cst : f16
      %270 = arith.remf %263, %263 : f16
      %alloca_38 = memref.alloca() : memref<14x14xi32>
      %271 = arith.muli %c-31621_i16, %c-22309_i16 : i16
      %272 = arith.mulf %263, %cst : f16
      memref.tensor_store %159, %alloc_19 : memref<1x16xi16>
      %273 = vector.insertelement %161, %45[%c7 : index] : vector<1xi1>
      %274 = affine.if affine_set<(d0, d1) : (d1 + 50 == 0, (d1 + 66) ceildiv 128 + d1 == 0, (d1 + 66) ceildiv 128 + d1 == 0)>(%c2, %c15) -> memref<14xi32> {
        %279 = vector.load %alloc_13[%c7, %c4] : memref<14x14xi16>, vector<14xi16>
        %280 = arith.addf %cst_3, %cst_2 : f32
        %281 = math.ipowi %c9234456_i32, %c9234456_i32 : i32
        %282 = math.powf %1, %1 : tensor<14x14xf32>
        %283 = arith.divui %c396481855_i32, %c542023153_i32 : i32
        %284 = arith.floordivsi %c-31621_i16, %c-22309_i16 : i16
        %285 = math.copysign %6, %4 : tensor<14x14xf32>
        %286 = vector.create_mask %c6, %rank : vector<14x14xi1>
        %alloc_39 = memref.alloc() : memref<14xi32>
        affine.yield %alloc_39 : memref<14xi32>
      } else {
        %279 = arith.negf %cst_2 : f32
        %collapsed_39 = tensor.collapse_shape %11 [[0, 1]] : tensor<14x14xi32> into tensor<196xi32>
        bufferization.dealloc_tensor %6 : tensor<14x14xf32>
        %true_40 = index.bool.constant true
        %280 = math.atan2 %6, %6 : tensor<14x14xf32>
        %281 = math.log %6 : tensor<14x14xf32>
        %282 = index.sub %141, %c9
        %283 = vector.extract_strided_slice %45 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
        %alloc_41 = memref.alloc() : memref<14xi32>
        affine.yield %alloc_41 : memref<14xi32>
      }
      memref.copy %61, %alloc_7 : memref<14xi64> to memref<14xi64>
      %275 = arith.shrui %c122117168_i32, %c542023153_i32 : i32
      %276 = arith.remsi %false, %false : i1
      %277 = vector.multi_reduction <maxf>, %104, %cst_2 [0] : vector<14xf32> to f32
      %278 = math.powf %cst_1, %cst_1 : f16
      memref.alloca_scope.return %alloc_9 : memref<16x1xf32>
    }
    %163 = index.add %c8, %25
    %164 = arith.divsi %c-31621_i16, %c-31621_i16 : i16
    %165 = arith.remf %cst_2, %cst_0 : f32
    %alloca = memref.alloca() : memref<14x14xi64>
    %cast_30 = tensor.cast %1 : tensor<14x14xf32> to tensor<?x?xf32>
    %166 = vector.broadcast %c-22309_i16 : i16 to vector<i16>
    vector.transfer_write %166, %alloc_4[%c4, %c3] : vector<i16>, memref<16x1xi16>
    memref.store %true, %alloc_6[%c5, %c0] : memref<16x1xi1>
    %167 = math.fpowi %1, %11 : tensor<14x14xf32>, tensor<14x14xi32>
    memref.store %cst_3, %62[%c7, %c7] : memref<14x14xf32>
    %168 = affine.if affine_set<(d0, d1) : (((d1 mod 2) * -8) ceildiv 32 == 0)>(%c12, %c15) -> memref<16x1xi32> {
      %254 = arith.cmpi uge, %c542023153_i32, %c678836041_i32 : i32
      %255 = math.rsqrt %3 : tensor<14xf16>
      %alloc_36 = memref.alloc() : memref<14x14xi16>
      memref.copy %alloc_13, %alloc_36 : memref<14x14xi16> to memref<14x14xi16>
      %256 = math.absi %7 : tensor<14x14xi64>
      %257 = vector.broadcast %cst_0 : f32 to vector<14x14xf32>
      %258 = vector.fma %257, %257, %115 : vector<14x14xf32>
      %259 = memref.realloc %alloc_8 : memref<14xf32> to memref<16xf32>
      %260 = index.add %c15, %141
      %261 = bufferization.clone %alloc_11 : memref<14x14xi32> to memref<14x14xi32>
      affine.yield %alloc : memref<16x1xi32>
    } else {
      %254 = tensor.empty() : tensor<14xi16>
      %mapped_36 = linalg.map ins(%15, %2 : tensor<14xi16>, tensor<14xi16>) outs(%254 : tensor<14xi16>)
        (%in: i16, %in_38: i16) {
          %262 = math.round %12 : tensor<14x14xf32>
          %263 = arith.divsi %false, %false : i1
          %264 = arith.cmpi slt, %c396481855_i32, %c122117168_i32 : i32
          %265 = vector.load %26[%c3, %c0] : memref<16x1xf32>, vector<14x14xf32>
          %266 = vector.shuffle %166, %166 [0, 1] : vector<i16>, vector<i16>
          %267 = math.round %cst_2 : f32
          %268 = vector.broadcast %c542023153_i32 : i32 to vector<14xi32>
          %269 = affine.apply affine_map<(d0, d1, d2, d3) -> (-d0)>(%c13, %39, %c14, %c1)
          %270 = arith.remsi %c1165341599_i32, %c1165341599_i32 : i32
          %cast_39 = tensor.cast %12 : tensor<14x14xf32> to tensor<?x?xf32>
          %271 = math.sqrt %34 : tensor<14xf16>
          %272 = index.add %119, %c2
          %273 = vector.shuffle %104, %104 [0, 1, 4, 6, 7, 8, 9, 15, 16, 18, 19, 20, 21, 22, 26] : vector<14xf32>, vector<14xf32>
          %274 = math.cos %12 : tensor<14x14xf32>
          %275 = bufferization.to_memref %92 : memref<i16>
          %276 = vector.broadcast %c12 : index to vector<14xindex>
          vector.scatter %alloc_9[%c7, %c0] [%276], %68, %103 : memref<16x1xf32>, vector<14xindex>, vector<14xi1>, vector<14xf32>
          %277 = math.tanh %6 : tensor<14x14xf32>
          %278 = memref.atomic_rmw mins %in, %alloc_13[%c0, %c2] : (i16, memref<14x14xi16>) -> i16
          %cast_40 = tensor.cast %14 : tensor<16x1xi32> to tensor<?x?xi32>
          %279 = arith.maxsi %c1165341599_i32, %c122117168_i32 : i32
          %280 = vector.create_mask %c2 : vector<14xi1>
          %281 = vector.broadcast %161 : i1 to vector<1x1xi1>
          %282 = vector.outerproduct %45, %118, %281 {kind = #vector.kind<minui>} : vector<1xi1>, vector<1xi1>
          %283 = tensor.empty() : tensor<14x14xi32>
          %284 = linalg.matmul ins(%11, %33 : tensor<14x14xi32>, tensor<14x14xi32>) outs(%283 : tensor<14x14xi32>) -> tensor<14x14xi32>
          %285 = arith.minui %c542023153_i32, %c396481855_i32 : i32
          %286 = math.round %4 : tensor<14x14xf32>
          %287 = arith.remui %161, %64 : i1
          %288 = math.log %cst_3 : f32
          %289 = memref.realloc %alloc_16 : memref<14xf16> to memref<14xf16>
          %290 = bufferization.clone %alloc_19 : memref<1x16xi16> to memref<1x16xi16>
          %inserted_41 = tensor.insert %c1165341599_i32 into %cast_40[%c0, %c0] : tensor<?x?xi32>
          %291 = math.rsqrt %3 : tensor<14xf16>
          affine.store %c424612358_i64, %alloc_18[%c3, %c14] : memref<14x14xi64>
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %255 = math.absf %12 : tensor<14x14xf32>
      %collapsed_37 = tensor.collapse_shape %6 [[0, 1]] : tensor<14x14xf32> into tensor<196xf32>
      %256 = math.fma %34, %3, %3 : tensor<14xf16>
      %257 = arith.maxsi %c1165341599_i32, %c396481855_i32 : i32
      %258 = arith.maxui %c396481855_i32, %c1165341599_i32 : i32
      %259 = memref.realloc %61 : memref<14xi64> to memref<16xi64>
      %260 = tensor.empty() : tensor<196xi32>
      %261 = math.fpowi %collapsed_37, %260 : tensor<196xf32>, tensor<196xi32>
      affine.yield %alloc_10 : memref<16x1xi32>
    }
    %169 = math.powf %4, %1 : tensor<14x14xf32>
    vector.print %85 : vector<1xi1>
    %170 = bufferization.clone %alloc_20 : memref<14xi16> to memref<14xi16>
    %inserted_31 = tensor.insert %cst_2 into %6[%c7, %c13] : tensor<14x14xf32>
    %171 = affine.apply affine_map<(d0, d1, d2) -> ((d1 mod 4) ceildiv 8)>(%c10, %c5, %148)
    %172 = bufferization.clone %154 : memref<16x1xi1> to memref<16x1xi1>
    %173 = bufferization.clone %alloc_4 : memref<16x1xi16> to memref<16x1xi16>
    %174 = index.sub %c2, %39
    %175 = arith.negf %cst_0 : f32
    %176 = index.castu %c396481855_i32 : i32 to index
    memref.alloca_scope  {
      %254 = arith.minsi %63, %c122117168_i32 : i32
      %collapsed_36 = tensor.collapse_shape %1 [[0, 1]] : tensor<14x14xf32> into tensor<196xf32>
      %255 = vector.load %alloc[%c2, %c0] : memref<16x1xi32>, vector<14x14xi32>
      %256 = scf.if %false -> (memref<14xf16>) {
        %280 = vector.insert %96, %91 [3] : vector<14xf16> into vector<14x14xf16>
        %281 = bufferization.to_tensor %162 : memref<16x1xf32>
        %282 = math.atan2 %1, %4 : tensor<14x14xf32>
        memref.copy %170, %alloc_20 : memref<14xi16> to memref<14xi16>
        %283 = index.maxs %c13, %163
        %284 = vector.broadcast %161 : i1 to vector<3x3xi1>
        %285 = vector.outerproduct %19, %19, %284 {kind = #vector.kind<maxui>} : vector<3xi1>, vector<3xi1>
        %286 = math.tanh %collapsed_36 : tensor<196xf32>
        %287 = arith.remsi %false, %false : i1
        scf.yield %alloc_16 : memref<14xf16>
      } else {
        %280 = index.castu %c678836041_i32 : i32 to index
        %281 = math.ctlz %21 : tensor<i16>
        %282 = vector.create_mask %c9, %c4 : vector<14x14xi1>
        %283 = vector.shuffle %115, %116 [0, 3, 5, 6, 10, 13, 14, 15, 18, 19, 20, 23, 24, 26, 27] : vector<14x14xf32>, vector<14x14xf32>
        %284 = arith.remsi %c9234456_i32, %c122117168_i32 : i32
        %285 = bufferization.to_memref %20 : memref<i16>
        %286 = arith.mulf %cst_1, %cst_1 : f16
        %287 = index.mul %c3, %148
        scf.yield %alloc_16 : memref<14xf16>
      }
      %257 = vector.reduction <mul>, %103 : vector<14xf32> into f32
      %258 = math.round %6 : tensor<14x14xf32>
      %259 = vector.create_mask %c1 : vector<14xi1>
      %260 = math.copysign %6, %4 : tensor<14x14xf32>
      %261 = vector.multi_reduction <xor>, %259, %259 [] : vector<14xi1> to vector<14xi1>
      %262 = arith.minsi %c9234456_i32, %c678836041_i32 : i32
      %263 = math.exp2 %cst_1 : f16
      %264 = math.powf %from_elements, %from_elements : tensor<16x1xf32>
      %265 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %152, %152, %152 : vector<14x14xi16>, vector<14x14xi16> into vector<14x14xi16>
      %266 = math.ipowi %5, %5 : tensor<14xi64>
      %267 = math.cttz %63 : i32
      %268 = math.atan %cst_0 : f32
      affine.store %64, %154[%c1, %c3] : memref<16x1xi1>
      %269 = vector.bitcast %259 : vector<14xi1> to vector<14xi1>
      %270 = affine.if affine_set<(d0, d1, d2) : (d0 mod 64 + 1 == 0, (d2 - d1 + 128) ceildiv 4 == 0)>(%c1, %c4, %c9) -> memref<14x14xi1> {
        %from_elements_39 = tensor.from_elements %c1165341599_i32, %c122117168_i32, %c9234456_i32, %c122117168_i32, %c9234456_i32, %c1165341599_i32, %c678836041_i32, %c396481855_i32, %63, %c122117168_i32, %c9234456_i32, %c678836041_i32, %63, %c542023153_i32, %c542023153_i32, %63 : tensor<16x1xi32>
        %280 = index.sizeof
        %c29105_i16 = arith.constant 29105 : i16
        %281 = vector.shuffle %255, %255 [0, 2, 4, 5, 7, 9, 10, 11, 16, 19, 21, 24, 26] : vector<14x14xi32>, vector<14x14xi32>
        %282 = arith.shrui %c-31621_i16, %c-22309_i16 : i16
        %283 = vector.broadcast %cst_0 : f32 to vector<14x14xf32>
        bufferization.dealloc_tensor %collapsed_27 : tensor<196xi16>
        %284 = index.mul %c13, %c0
        %alloc_40 = memref.alloc() : memref<14x14xi1>
        affine.yield %alloc_40 : memref<14x14xi1>
      } else {
        %280 = vector.insertelement %c-22309_i16, %166[] : vector<i16>
        %281 = math.powf %12, %6 : tensor<14x14xf32>
        %282 = index.floordivs %94, %122
        memref.assume_alignment %alloc_16, 2 : memref<14xf16>
        %283 = math.cttz %63 : i32
        %284 = math.powf %80, %12 : tensor<14x14xf32>
        %285 = arith.andi %c9234456_i32, %c122117168_i32 : i32
        %286 = index.sizeof
        %alloc_39 = memref.alloc() : memref<14x14xi1>
        affine.yield %alloc_39 : memref<14x14xi1>
      }
      %271 = math.log10 %4 : tensor<14x14xf32>
      %272 = math.tan %collapsed_36 : tensor<196xf32>
      %collapsed_37 = tensor.collapse_shape %12 [[0, 1]] : tensor<14x14xf32> into tensor<196xf32>
      %dest, %accumulated_value = vector.scan <minf>, %91, %96 {inclusive = true, reduction_dim = 0 : i64} : vector<14x14xf16>, vector<14xf16>
      %273 = index.castu %148 : index to i32
      bufferization.dealloc_tensor %cast : tensor<?xf16>
      %274 = vector.extract_strided_slice %152 {offsets = [7], sizes = [1], strides = [1]} : vector<14x14xi16> to vector<1x14xi16>
      %275 = math.fpowi %cst_3, %c1165341599_i32 : f32, i32
      %276 = math.sqrt %80 : tensor<14x14xf32>
      %277 = vector.extract_strided_slice %91 {offsets = [0], sizes = [8], strides = [1]} : vector<14x14xf16> to vector<8x14xf16>
      %278 = vector.splat %c-22309_i16 : vector<14x14xi16>
      %inserted_38 = tensor.insert %c-22309_i16 into %135[%c9, %c4] : tensor<14x14xi16>
      %279 = math.atan2 %1, %4 : tensor<14x14xf32>
    }
    %177 = math.tanh %cst_3 : f32
    %178 = index.maxs %c1, %c15
    %179 = arith.shrui %false, %true : i1
    %180 = affine.max affine_map<(d0, d1) -> (0, 0, 64)>(%c1, %c13)
    %181 = math.ctlz %63 : i32
    %182 = math.log10 %cst_0 : f32
    %183 = memref.realloc %alloc_7 : memref<14xi64> to memref<16xi64>
    %cst_32 = arith.constant 4.956800e+04 : f16
    %184 = vector.transpose %91, [0, 1] : vector<14x14xf16> to vector<14x14xf16>
    %c1402651505_i64 = arith.constant 1402651505 : i64
    %c605573695_i64 = arith.constant 605573695 : i64
    %185 = math.cttz %15 : tensor<14xi16>
    bufferization.dealloc_tensor %21 : tensor<i16>
    %186 = math.log1p %cst_2 : f32
    %187 = math.powf %1, %4 : tensor<14x14xf32>
    %188 = memref.realloc %alloc_20 : memref<14xi16> to memref<3xi16>
    %189 = math.powf %4, %12 : tensor<14x14xf32>
    %190 = scf.index_switch %rank -> vector<16x1xi1> 
    case 1 {
      %254 = math.round %3 : tensor<14xf16>
      %255 = math.absi %5 : tensor<14xi64>
      %256 = math.round %12 : tensor<14x14xf32>
      %257 = math.log1p %3 : tensor<14xf16>
      %258 = tensor.empty() : tensor<14x14xf32>
      %mapped_36 = linalg.map ins(%12 : tensor<14x14xf32>) outs(%258 : tensor<14x14xf32>)
        (%in: f32) {
          bufferization.dealloc_tensor %11 : tensor<14x14xi32>
          %cast_37 = tensor.cast %7 : tensor<14x14xi64> to tensor<?x?xi64>
          %271 = index.castu %c678836041_i32 : i32 to index
          %272 = memref.atomic_rmw minu %c678836041_i32, %alloc_11[%c4, %c9] : (i32, memref<14x14xi32>) -> i32
          %273 = math.fpowi %from_elements, %14 : tensor<16x1xf32>, tensor<16x1xi32>
          %274 = math.floor %258 : tensor<14x14xf32>
          %275 = vector.outerproduct %103, %104, %115 {kind = #vector.kind<minf>} : vector<14xf32>, vector<14xf32>
          %276 = arith.addf %cst_1, %cst : f16
          %277 = arith.shli %c542023153_i32, %c678836041_i32 : i32
          %278 = arith.divui %true, %161 : i1
          %279 = vector.reduction <add>, %96 : vector<14xf16> into f16
          %280 = arith.ceildivsi %c-22309_i16, %c-31621_i16 : i16
          %281 = math.powf %80, %12 : tensor<14x14xf32>
          bufferization.dealloc_tensor %8 : tensor<14x14xi64>
          %282 = math.sqrt %3 : tensor<14xf16>
          %cast_38 = tensor.cast %collapsed : tensor<16xi32> to tensor<?xi32>
          %283 = arith.minsi %c396481855_i32, %c9234456_i32 : i32
          %284 = arith.remsi %c9234456_i32, %63 : i32
          %285 = math.copysign %1, %12 : tensor<14x14xf32>
          %286 = arith.negf %cst_0 : f32
          %287 = math.round %80 : tensor<14x14xf32>
          %288 = index.floordivs %148, %174
          %289 = math.ipowi %c678836041_i32, %c9234456_i32 : i32
          %290 = index.casts %c2 : index to i32
          %291 = vector.insertelement %cst_0, %104[%288 : index] : vector<14xf32>
          %292 = vector.extract %96[0] : vector<14xf16>
          %293 = math.tan %4 : tensor<14x14xf32>
          %294 = arith.addf %cst_2, %cst_0 : f32
          %295 = math.sqrt %cst_3 : f32
          %296 = vector.broadcast %c-22309_i16 : i16 to vector<16x1xi16>
          %297 = tensor.empty() : tensor<14x14xi16>
          %298 = linalg.matmul ins(%135, %17 : tensor<14x14xi16>, tensor<14x14xi16>) outs(%297 : tensor<14x14xi16>) -> tensor<14x14xi16>
          %299 = memref.load %alloc_5[%c1, %c2] : memref<14x14xi32>
          %cst_39 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_39 : f32
        }
      %259 = vector.transpose %45, [0] : vector<1xi1> to vector<1xi1>
      %260 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %104, %116, %104 : vector<14xf32>, vector<14x14xf32> into vector<14xf32>
      %261 = math.expm1 %258 : tensor<14x14xf32>
      %262 = math.atan %1 : tensor<14x14xf32>
      %263 = vector.shuffle %96, %96 [0, 3, 5, 7, 8, 10, 11, 12, 14, 15, 16, 19, 25] : vector<14xf16>, vector<14xf16>
      %264 = math.log1p %4 : tensor<14x14xf32>
      %265 = arith.shrsi %161, %false : i1
      %266 = vector.insert %cst_0, %103 [3] : f32 into vector<14xf32>
      %267 = index.castu %c424612358_i64 : i64 to index
      %268 = math.log1p %1 : tensor<14x14xf32>
      %269 = affine.for %arg1 = 0 to 119 iter_args(%arg2 = %c11) -> (index) {
        affine.yield %176 : index
      }
      %270 = vector.broadcast %64 : i1 to vector<16x1xi1>
      scf.yield %270 : vector<16x1xi1>
    }
    default {
      %254 = index.casts %true : i1 to index
      %255 = arith.minsi %c678836041_i32, %c396481855_i32 : i32
      %256 = math.atan %cst_2 : f32
      %dest, %accumulated_value = vector.scan <add>, %116, %103 {inclusive = true, reduction_dim = 1 : i64} : vector<14x14xf32>, vector<14xf32>
      %257 = vector.shuffle %152, %152 [1, 2, 4, 7, 8, 10, 12, 13, 15, 19, 21, 23, 26] : vector<14x14xi16>, vector<14x14xi16>
      %258 = arith.minsi %c-31621_i16, %c-31621_i16 : i16
      %alloc_36 = memref.alloc() : memref<14xf16>
      memref.copy %alloc_16, %alloc_36 : memref<14xf16> to memref<14xf16>
      %259 = vector.transpose %152, [0, 1] : vector<14x14xi16> to vector<14x14xi16>
      %260 = math.copysign %4, %4 : tensor<14x14xf32>
      %261 = arith.remui %c542023153_i32, %c678836041_i32 : i32
      %262 = vector.broadcast %c-22309_i16 : i16 to vector<i16>
      vector.transfer_write %262, %alloc_20[%46] : vector<i16>, memref<14xi16>
      %263 = index.castu %c8 : index to i32
      %264 = index.sub %51, %52
      bufferization.dealloc_tensor %collapsed : tensor<16xi32>
      %265 = math.ipowi %2, %2 : tensor<14xi16>
      %266 = affine.min affine_map<(d0) -> (-(d0 ceildiv 16 - 32))>(%c3)
      %267 = vector.broadcast %true : i1 to vector<16x1xi1>
      scf.yield %267 : vector<16x1xi1>
    }
    %191 = bufferization.clone %alloc_18 : memref<14x14xi64> to memref<14x14xi64>
    %192 = math.atan2 %12, %6 : tensor<14x14xf32>
    %193 = vector.broadcast %true : i1 to vector<3x3xi1>
    %194 = vector.outerproduct %19, %19, %193 {kind = #vector.kind<maxui>} : vector<3xi1>, vector<3xi1>
    %c195922600_i64 = arith.constant 195922600 : i64
    %195 = bufferization.to_tensor %alloc_6 : memref<16x1xi1>
    %196 = vector.insertelement %cst, %96[%141 : index] : vector<14xf16>
    %197 = vector.extract %91[9] : vector<14x14xf16>
    %198 = arith.shrui %c424612358_i64, %c424612358_i64 : i64
    %199 = arith.maxsi %c-31621_i16, %c-31621_i16 : i16
    %200 = math.ceil %cst_0 : f32
    %201 = index.castu %c13 : index to i32
    %202 = math.atan2 %1, %12 : tensor<14x14xf32>
    %203 = vector.extract %68[13] : vector<14xi1>
    %204 = vector.broadcast %51 : index to vector<16xindex>
    %205 = vector.broadcast %161 : i1 to vector<16xi1>
    %206 = vector.broadcast %c1165341599_i32 : i32 to vector<16xi32>
    vector.scatter %alloc_11[%c13, %c9] [%204], %205, %206 : memref<14x14xi32>, vector<16xindex>, vector<16xi1>, vector<16xi32>
    %207 = arith.andi %false, %true : i1
    %208 = vector.extract %104[1] : vector<14xf32>
    %209 = scf.if %161 -> (memref<14xi16>) {
      %254 = arith.shrsi %63, %63 : i32
      %255 = tensor.empty() : tensor<14x14xi64>
      %mapped_36 = linalg.map ins(%13 : tensor<14x14xi64>) outs(%255 : tensor<14x14xi64>)
        (%in: i64) {
          %dest, %accumulated_value = vector.scan <minf>, %91, %96 {inclusive = true, reduction_dim = 1 : i64} : vector<14x14xf16>, vector<14xf16>
          %262 = arith.shrui %c424612358_i64, %c424612358_i64 : i64
          %263 = vector.splat %c5 : vector<16x1xindex>
          %264 = vector.splat %c6 : vector<14xindex>
          %265 = arith.divsi %c678836041_i32, %c542023153_i32 : i32
          %266 = vector.multi_reduction <mul>, %118, %false [0] : vector<1xi1> to i1
          %267 = vector.flat_transpose %197 {columns = 7 : i32, rows = 2 : i32} : vector<14xf16> -> vector<14xf16>
          %268 = arith.andi %c678836041_i32, %c122117168_i32 : i32
          %269 = vector.shuffle %91, %91 [0, 5, 7, 9, 12, 13, 17, 18, 19, 21, 24, 27] : vector<14x14xf16>, vector<14x14xf16>
          %270 = vector.transpose %85, [0] : vector<1xi1> to vector<1xi1>
          %271 = tensor.empty() : tensor<14x14xi64>
          %272 = linalg.matmul ins(%13, %from_elements_25 : tensor<14x14xi64>, tensor<14x14xi64>) outs(%271 : tensor<14x14xi64>) -> tensor<14x14xi64>
          %273 = affine.load %alloc_12[%c11, %c8] : memref<14x14xf16>
          %274 = math.exp %cst_1 : f16
          %275 = vector.splat %c-31621_i16 : vector<14xi16>
          %276 = arith.maxf %cst_1, %cst_1 : f16
          %277 = arith.divsi %161, %161 : i1
          %278 = math.powf %cst, %cst : f16
          vector.print %103 : vector<14xf32>
          %279 = math.absf %from_elements : tensor<16x1xf32>
          %280 = bufferization.to_memref %collapsed_27 : memref<196xi16>
          %281 = arith.minf %cst, %cst : f16
          %282 = math.tan %cst_1 : f16
          %283 = vector.multi_reduction <maxf>, %267, %cst_1 [0] : vector<14xf16> to f16
          %284 = math.absf %cst : f16
          %285 = index.mul %c3, %50
          %286 = index.floordivs %c10, %119
          %287 = arith.remsi %c1165341599_i32, %c1165341599_i32 : i32
          affine.store %266, %154[%c10, %c12] : memref<16x1xi1>
          %288 = math.atan2 %cst_0, %cst_0 : f32
          %collapsed_38 = tensor.collapse_shape %1 [[0, 1]] : tensor<14x14xf32> into tensor<196xf32>
          %289 = math.round %80 : tensor<14x14xf32>
          %290 = vector.broadcast %163 : index to vector<1xindex>
          vector.scatter %154[%c11, %c0] [%290], %118, %45 : memref<16x1xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
          %c0_i64 = arith.constant 0 : i64
          linalg.yield %c0_i64 : i64
        }
      %256 = math.sqrt %from_elements : tensor<16x1xf32>
      %inserted_37 = tensor.insert %c-22309_i16 into %reduced[%c4] : tensor<14xi16>
      %257 = vector.create_mask %46 : vector<14xi1>
      %258 = tensor.empty() : tensor<14x14xi64>
      %259 = linalg.matmul ins(%8, %8 : tensor<14x14xi64>, tensor<14x14xi64>) outs(%258 : tensor<14x14xi64>) -> tensor<14x14xi64>
      %260 = arith.andi %c-31621_i16, %c-22309_i16 : i16
      %261 = arith.minui %c542023153_i32, %c122117168_i32 : i32
      scf.yield %170 : memref<14xi16>
    } else {
      %254 = bufferization.to_memref %92 : memref<i16>
      %255 = arith.negf %cst : f16
      %256 = index.divs %171, %c10
      %257 = arith.shrsi %64, %161 : i1
      %258 = arith.shrsi %c-31621_i16, %c-31621_i16 : i16
      %259 = vector.outerproduct %104, %104, %115 {kind = #vector.kind<mul>} : vector<14xf32>, vector<14xf32>
      %260 = vector.shuffle %140, %140 [0, 1] : vector<f32>, vector<f32>
      %261 = vector.splat %c9234456_i32 : vector<14x14xi32>
      scf.yield %170 : memref<14xi16>
    }
    %210 = arith.divui %64, %161 : i1
    %211 = math.atan2 %cst_3, %cst_3 : f32
    %212 = math.cttz %9 : tensor<16x1xi64>
    %213 = arith.shli %c678836041_i32, %c678836041_i32 : i32
    %214 = index.floordivs %39, %c0
    %215 = math.ceil %4 : tensor<14x14xf32>
    %216 = vector.broadcast %cst_3 : f32 to vector<1xf32>
    %217 = vector.transfer_write %216, %6[%214, %c4] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xf32>, tensor<14x14xf32>
    %218 = math.ctpop %161 : i1
    %219 = bufferization.clone %alloc_19 : memref<1x16xi16> to memref<1x16xi16>
    %220 = math.ceil %12 : tensor<14x14xf32>
    bufferization.dealloc_tensor %from_elements_25 : tensor<14x14xi64>
    bufferization.dealloc_tensor %92 : tensor<i16>
    %221 = memref.atomic_rmw addi %c-22309_i16, %alloc_19[%c0, %c13] : (i16, memref<1x16xi16>) -> i16
    %222 = math.round %from_elements : tensor<16x1xf32>
    %true_33 = index.bool.constant true
    %223 = vector.reduction <or>, %19 : vector<3xi1> into i1
    %224 = math.log1p %12 : tensor<14x14xf32>
    %225 = math.log10 %6 : tensor<14x14xf32>
    %226 = math.log %12 : tensor<14x14xf32>
    %227 = arith.remui %true, %false : i1
    %228 = vector.load %alloc_15[%c9, %c10] : memref<14x14xf16>, vector<14x14xf16>
    vector.print %116 : vector<14x14xf32>
    %229 = index.sub %46, %c3
    %230 = index.casts %true : i1 to index
    %231 = vector.create_mask %c13 : vector<14xi1>
    %232 = math.absf %from_elements : tensor<16x1xf32>
    %233 = bufferization.to_tensor %alloc_14 : memref<14x14xf32>
    %234 = math.log1p %6 : tensor<14x14xf32>
    affine.store %c-22309_i16, %alloc_4[%c3, %c9] : memref<16x1xi16>
    %235 = math.log1p %233 : tensor<14x14xf32>
    %236 = vector.transpose %140, [] : vector<f32> to vector<f32>
    %237 = math.absf %cst_2 : f32
    %238 = math.powf %1, %233 : tensor<14x14xf32>
    %239 = vector.extract %116[7] : vector<14x14xf32>
    %240 = math.ceil %233 : tensor<14x14xf32>
    %241 = math.ceil %cst : f16
    affine.store %c424612358_i64, %alloc_18[%c11, %c6] : memref<14x14xi64>
    %242 = math.tan %cst_2 : f32
    %243 = bufferization.clone %alloc_19 : memref<1x16xi16> to memref<1x16xi16>
    %244 = memref.atomic_rmw maxs %c-31621_i16, %32[%c2] : (i16, memref<14xi16>) -> i16
    bufferization.dealloc_tensor %153 : tensor<16x1xi32>
    %245 = scf.index_switch %c11 -> tensor<14x14xf32> 
    case 1 {
      %254 = scf.index_switch %141 -> f32 
      case 1 {
        %268 = arith.remsi %161, %true : i1
        %269 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 - d0 - d2)>(%c13, %c7, %37, %c12)
        %270 = vector.broadcast %cst_0 : f32 to vector<14xf32>
        %271 = vector.fma %270, %270, %239 : vector<14xf32>
        %272 = vector.flat_transpose %231 {columns = 7 : i32, rows = 2 : i32} : vector<14xi1> -> vector<14xi1>
        %273 = math.absi %15 : tensor<14xi16>
        %274 = math.copysign %1, %1 : tensor<14x14xf32>
        %275 = math.log2 %cst : f16
        %276 = vector.shuffle %45, %68 [1, 4, 5, 6, 7, 11, 13, 14] : vector<1xi1>, vector<14xi1>
        %277 = arith.divf %cst_0, %cst_0 : f32
        %278 = math.log2 %12 : tensor<14x14xf32>
        %279 = arith.cmpi eq, %c678836041_i32, %c678836041_i32 : i32
        memref.store %cst, %alloc_15[%c8, %c10] : memref<14x14xf16>
        %280 = arith.shrui %true, %64 : i1
        %281 = affine.max affine_map<(d0, d1, d2) -> (d1 mod 8 - ((d1 mod 8) ceildiv 16 + 2) + 1, (d1 mod 8) floordiv 32 - ((d1 mod 8) ceildiv 16 + 8))>(%180, %79, %37)
        %282 = vector.multi_reduction <minf>, %270, %cst_2 [0] : vector<14xf32> to f32
        %283 = vector.broadcast %c-31621_i16 : i16 to vector<14xi16>
        scf.yield %cst_2 : f32
      }
      case 2 {
        %268 = index.casts %c9 : index to i32
        %269 = arith.negf %cst : f16
        %270 = arith.divsi %c1165341599_i32, %c9234456_i32 : i32
        %271 = vector.splat %c8 : vector<14x14xindex>
        %272 = math.ipowi %5, %5 : tensor<14xi64>
        %273 = vector.load %173[%c7, %c0] : memref<16x1xi16>, vector<14x14xi16>
        %274 = bufferization.clone %173 : memref<16x1xi16> to memref<16x1xi16>
        %275 = vector.broadcast %64 : i1 to vector<1x1xi1>
        %276 = vector.outerproduct %118, %85, %275 {kind = #vector.kind<xor>} : vector<1xi1>, vector<1xi1>
        %277 = index.add %100, %c5
        %278 = vector.broadcast %true : i1 to vector<14x14xi1>
        %279 = vector.outerproduct %68, %231, %278 {kind = #vector.kind<and>} : vector<14xi1>, vector<14xi1>
        memref.tensor_store %11, %alloc_11 : memref<14x14xi32>
        %280 = vector.extract %68[6] : vector<14xi1>
        %281 = arith.remsi %c-31621_i16, %c-31621_i16 : i16
        bufferization.dealloc_tensor %7 : tensor<14x14xi64>
        %282 = math.exp2 %34 : tensor<14xf16>
        affine.store %cst, %alloc_12[%c8, %c1] : memref<14x14xf16>
        scf.yield %cst_2 : f32
      }
      case 3 {
        %268 = math.copysign %12, %1 : tensor<14x14xf32>
        %269 = math.absf %4 : tensor<14x14xf32>
        %270 = memref.atomic_rmw addi %c-22309_i16, %219[%c0, %c9] : (i16, memref<1x16xi16>) -> i16
        affine.store %c424612358_i64, %111[%c4, %c4] : memref<14x14xi64>
        %271 = math.expm1 %cst_1 : f16
        %272 = math.floor %cst : f16
        %273 = arith.andi %c542023153_i32, %c9234456_i32 : i32
        %274 = vector.splat %174 : vector<14x14xindex>
        %275 = arith.divui %c424612358_i64, %c424612358_i64 : i64
        %276 = vector.broadcast %cst_2 : f32 to vector<14xf32>
        %277 = vector.fma %276, %276, %239 : vector<14xf32>
        %278 = arith.addf %cst_3, %cst_3 : f32
        %279 = vector.splat %c8 : vector<14x14xindex>
        %280 = memref.atomic_rmw mulf %cst_2, %alloc_9[%c12, %c0] : (f32, memref<16x1xf32>) -> f32
        %281 = math.sqrt %cst_3 : f32
        %282 = index.floordivs %50, %52
        %283 = index.divu %c1, %171
        scf.yield %cst_0 : f32
      }
      default {
        %268 = index.add %171, %c6
        %269 = arith.maxf %cst_1, %cst : f16
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_37 = arith.constant 0 : i64
        %270 = vector.transfer_read %0[%c9, %37], %c0_i64_37 : tensor<14x14xi64>, vector<i64>
        %271 = math.roundeven %1 : tensor<14x14xf32>
        %dest_38, %accumulated_value_39 = vector.scan <minf>, %91, %96 {inclusive = true, reduction_dim = 1 : i64} : vector<14x14xf16>, vector<14xf16>
        %272 = math.rsqrt %233 : tensor<14x14xf32>
        %273 = math.ceil %4 : tensor<14x14xf32>
        %274 = arith.addf %cst_3, %cst_3 : f32
        %275 = vector.multi_reduction <maxf>, %104, %cst_2 [0] : vector<14xf32> to f32
        %276 = vector.matrix_multiply %19, %45 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 1 : i32} : (vector<3xi1>, vector<1xi1>) -> vector<3xi1>
        %277 = arith.addf %cst_1, %cst_1 : f16
        %278 = math.round %275 : f32
        %279 = index.floordivs %141, %230
        %280 = math.ipowi %c0_i64, %c424612358_i64 : i64
        %281 = vector.load %62[%c3, %c6] : memref<14x14xf32>, vector<14x14xf32>
        %c223580791_i64 = arith.constant 223580791 : i64
        scf.yield %cst_3 : f32
      }
      %255 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d0 mod 64) * 2 + d0 - 2)>(%c1, %94, %c0, %148)
      %256 = arith.shrsi %c9234456_i32, %c678836041_i32 : i32
      %257 = math.round %6 : tensor<14x14xf32>
      %258 = math.fpowi %1, %11 : tensor<14x14xf32>, tensor<14x14xi32>
      %259 = math.floor %3 : tensor<14xf16>
      %260 = memref.atomic_rmw addf %cst_3, %26[%c9, %c0] : (f32, memref<16x1xf32>) -> f32
      %261 = math.round %12 : tensor<14x14xf32>
      %262 = arith.ceildivsi %63, %c9234456_i32 : i32
      %dest, %accumulated_value = vector.scan <mul>, %115, %104 {inclusive = false, reduction_dim = 0 : i64} : vector<14x14xf32>, vector<14xf32>
      %263 = arith.negf %cst_0 : f32
      %264 = vector.shuffle %19, %118 [0, 1, 3] : vector<3xi1>, vector<1xi1>
      %265 = math.log2 %4 : tensor<14x14xf32>
      %266 = math.cttz %10 : tensor<14x14xi16>
      %true_36 = index.bool.constant true
      %267 = bufferization.to_tensor %62 : memref<14x14xf32>
      scf.yield %12 : tensor<14x14xf32>
    }
    case 2 {
      %254 = math.log1p %cst_0 : f32
      %255 = math.cos %1 : tensor<14x14xf32>
      %256 = bufferization.to_tensor %alloc_6 : memref<16x1xi1>
      %257 = vector.multi_reduction <maxsi>, %85, %161 [0] : vector<1xi1> to i1
      %258 = index.maxu %c3, %94
      %259 = math.cos %3 : tensor<14xf16>
      %cast_36 = tensor.cast %6 : tensor<14x14xf32> to tensor<?x?xf32>
      %260 = math.round %from_elements : tensor<16x1xf32>
      %261 = math.atan2 %233, %80 : tensor<14x14xf32>
      %262 = vector.flat_transpose %103 {columns = 7 : i32, rows = 2 : i32} : vector<14xf32> -> vector<14xf32>
      %263 = math.ceil %3 : tensor<14xf16>
      %264 = arith.shrsi %true, %64 : i1
      %265 = index.casts %c14 : index to i32
      %266 = arith.remsi %c678836041_i32, %c1165341599_i32 : i32
      %267 = math.fpowi %cst, %63 : f16, i32
      %268 = bufferization.clone %alloc_16 : memref<14xf16> to memref<14xf16>
      scf.yield %4 : tensor<14x14xf32>
    }
    case 3 {
      %254 = math.round %80 : tensor<14x14xf32>
      %255 = math.log %from_elements : tensor<16x1xf32>
      %256 = memref.atomic_rmw maxf %cst_1, %alloc_16[%c0] : (f16, memref<14xf16>) -> f16
      %257 = arith.floordivsi %64, %64 : i1
      %258 = bufferization.clone %62 : memref<14x14xf32> to memref<14x14xf32>
      %259 = index.maxs %148, %c4
      %260 = math.exp %80 : tensor<14x14xf32>
      %261 = arith.divf %cst_1, %cst_1 : f16
      %262 = math.ceil %4 : tensor<14x14xf32>
      %263 = bufferization.to_tensor %32 : memref<14xi16>
      %264 = math.log1p %cst : f16
      %265 = affine.if affine_set<(d0, d1, d2, d3) : (0 >= 0, ((d3 * 64) floordiv 128) ceildiv 128 >= 0, -d3 == 0, (d3 * 64) floordiv 128 >= 0)>(%c14, %c6, %c3, %c12) -> memref<16x1xf32> {
        %269 = affine.min affine_map<(d0, d1) -> (d1 mod 64, d0 ceildiv 32)>(%214, %c2)
        %dest, %accumulated_value = vector.scan <maxf>, %116, %104 {inclusive = true, reduction_dim = 0 : i64} : vector<14x14xf32>, vector<14xf32>
        %270 = tensor.empty() : tensor<14x14xi16>
        %271 = linalg.matmul ins(%135, %16 : tensor<14x14xi16>, tensor<14x14xi16>) outs(%270 : tensor<14x14xi16>) -> tensor<14x14xi16>
        %272 = bufferization.to_tensor %alloc_11 : memref<14x14xi32>
        %273 = vector.broadcast %c11 : index to vector<14xindex>
        vector.scatter %62[%c10, %c6] [%273], %68, %239 : memref<14x14xf32>, vector<14xindex>, vector<14xi1>, vector<14xf32>
        %274 = vector.multi_reduction <add>, %45, %64 [0] : vector<1xi1> to i1
        %275 = vector.broadcast %c424612358_i64 : i64 to vector<14x14xi64>
        %276 = index.sizeof
        affine.yield %alloc_17 : memref<16x1xf32>
      } else {
        memref.copy %258, %alloc_14 : memref<14x14xf32> to memref<14x14xf32>
        %269 = vector.broadcast %c4 : index to vector<1xindex>
        %270 = vector.broadcast %cst : f16 to vector<1xf16>
        vector.scatter %alloc_16[%c5] [%269], %85, %270 : memref<14xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
        %271 = arith.remui %c424612358_i64, %c424612358_i64 : i64
        %272 = vector.splat %163 : vector<14x14xindex>
        %273 = index.maxu %39, %51
        %274 = arith.minsi %c396481855_i32, %c678836041_i32 : i32
        %alloca_37 = memref.alloca() : memref<14x14xi1>
        %275 = arith.remsi %c122117168_i32, %c396481855_i32 : i32
        affine.yield %alloc_17 : memref<16x1xf32>
      }
      %266 = arith.muli %161, %161 : i1
      %267 = bufferization.clone %243 : memref<1x16xi16> to memref<1x16xi16>
      %268 = arith.cmpi eq, %64, %64 : i1
      %collapsed_36 = tensor.collapse_shape %from_elements [[0, 1]] : tensor<16x1xf32> into tensor<16xf32>
      scf.yield %1 : tensor<14x14xf32>
    }
    case 4 {
      %254 = math.tan %12 : tensor<14x14xf32>
      %255 = scf.index_switch %94 -> vector<14x14xf16> 
      case 1 {
        %267 = math.log1p %3 : tensor<14xf16>
        %268 = math.absf %6 : tensor<14x14xf32>
        affine.store %c678836041_i32, %alloc[%c10, %c4] : memref<16x1xi32>
        %collapsed_40 = tensor.collapse_shape %1 [[0, 1]] : tensor<14x14xf32> into tensor<196xf32>
        %269 = math.round %4 : tensor<14x14xf32>
        %270 = arith.maxui %true_33, %64 : i1
        %271 = vector.reduction <or>, %19 : vector<3xi1> into i1
        %272 = index.sizeof
        %273 = arith.ceildivsi %63, %c678836041_i32 : i32
        %274 = bufferization.clone %alloc_14 : memref<14x14xf32> to memref<14x14xf32>
        %275 = index.floordivs %94, %119
        %276 = math.fpowi %1, %33 : tensor<14x14xf32>, tensor<14x14xi32>
        %277 = index.sizeof
        %278 = arith.divui %c542023153_i32, %c542023153_i32 : i32
        %279 = math.powf %4, %6 : tensor<14x14xf32>
        %280 = vector.splat %230 : vector<14x14xindex>
        scf.yield %228 : vector<14x14xf16>
      }
      case 2 {
        %267 = affine.max affine_map<(d0) -> (d0 * 2 - d0 ceildiv 16, d0, -d0 + -d0 - 2 - d0)>(%51)
        %268 = memref.atomic_rmw assign %cst_2, %alloc_8[%c6] : (f32, memref<14xf32>) -> f32
        %269 = arith.ceildivsi %c424612358_i64, %c424612358_i64 : i64
        %dest, %accumulated_value = vector.scan <maxf>, %116, %239 {inclusive = false, reduction_dim = 0 : i64} : vector<14x14xf32>, vector<14xf32>
        %270 = vector.insert %true, %118 [0] : i1 into vector<1xi1>
        %271 = math.log %12 : tensor<14x14xf32>
        %272 = math.tan %3 : tensor<14xf16>
        %273 = math.absf %cst_2 : f32
        %274 = tensor.empty() : tensor<14x14xf32>
        %275 = linalg.matmul ins(%12, %12 : tensor<14x14xf32>, tensor<14x14xf32>) outs(%274 : tensor<14x14xf32>) -> tensor<14x14xf32>
        %dest_40, %accumulated_value_41 = vector.scan <minf>, %228, %197 {inclusive = false, reduction_dim = 0 : i64} : vector<14x14xf16>, vector<14xf16>
        memref.assume_alignment %alloc_13, 8 : memref<14x14xi16>
        %276 = vector.load %172[%c7, %c0] : memref<16x1xi1>, vector<16x1xi1>
        %277 = math.absi %8 : tensor<14x14xi64>
        %278 = arith.cmpi ule, %c542023153_i32, %c1165341599_i32 : i32
        %279 = math.floor %34 : tensor<14xf16>
        %280 = arith.divui %false, %161 : i1
        scf.yield %91 : vector<14x14xf16>
      }
      case 3 {
        %267 = math.ceil %1 : tensor<14x14xf32>
        %268 = math.log1p %cst_3 : f32
        %269 = index.castu %c-31621_i16 : i16 to index
        %270 = bufferization.to_memref %18 : memref<14xi16>
        %271 = arith.floordivsi %c9234456_i32, %c396481855_i32 : i32
        %272 = vector.broadcast %c424612358_i64 : i64 to vector<i64>
        %273 = vector.transfer_write %272, %9[%c11, %119] : vector<i64>, tensor<16x1xi64>
        %cst_40 = arith.constant 1.000000e+00 : f32
        %cst_41 = arith.constant 0.000000e+00 : f32
        %274 = vector.transfer_read %from_elements[%229, %c14], %cst_41 : tensor<16x1xf32>, vector<f32>
        %275 = vector.insertelement %cst_3, %216[%c10 : index] : vector<1xf32>
        %276 = arith.addf %cst_0, %cst_3 : f32
        %277 = arith.ori %c122117168_i32, %c1165341599_i32 : i32
        %278 = math.log1p %from_elements : tensor<16x1xf32>
        %279 = math.powf %233, %6 : tensor<14x14xf32>
        %280 = arith.divui %c678836041_i32, %c542023153_i32 : i32
        %281 = affine.apply affine_map<(d0, d1, d2, d3) -> (((d3 + (d2 mod 8) * 2 + 128) * 32 - 64) ceildiv 32)>(%c12, %rank, %c12, %c15)
        %282 = arith.cmpi eq, %c-31621_i16, %c-31621_i16 : i16
        %283 = arith.cmpi slt, %c1165341599_i32, %c542023153_i32 : i32
        scf.yield %228 : vector<14x14xf16>
      }
      case 4 {
        %267 = arith.divf %cst_2, %cst_2 : f32
        %268 = math.rsqrt %80 : tensor<14x14xf32>
        %269 = vector.flat_transpose %45 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %270 = arith.maxui %c-31621_i16, %c-31621_i16 : i16
        %271 = arith.divui %64, %64 : i1
        %272 = index.castu %c3 : index to i32
        %273 = arith.divui %161, %true_33 : i1
        %274 = index.floordivs %50, %c11
        %275 = bufferization.clone %alloc_17 : memref<16x1xf32> to memref<16x1xf32>
        %276 = arith.negf %cst_0 : f32
        bufferization.dealloc_tensor %cast_30 : tensor<?x?xf32>
        %277 = math.atan2 %12, %80 : tensor<14x14xf32>
        %extracted = tensor.extract %6[%c4, %c9] : tensor<14x14xf32>
        memref.assume_alignment %alloc_18, 8 : memref<14x14xi64>
        %278 = arith.andi %161, %64 : i1
        %279 = vector.broadcast %extracted : f32 to vector<14x14xf32>
        %280 = vector.fma %279, %115, %279 : vector<14x14xf32>
        scf.yield %228 : vector<14x14xf16>
      }
      default {
        %267 = index.divs %c4, %171
        bufferization.dealloc_tensor %0 : tensor<14x14xi64>
        %268 = vector.splat %c-22309_i16 : vector<14x14xi16>
        %269 = index.castu %c7 : index to i32
        %270 = affine.load %26[%c0, %c13] : memref<16x1xf32>
        %271 = arith.shrui %true, %true_33 : i1
        %272 = arith.ceildivsi %c678836041_i32, %c1165341599_i32 : i32
        %273 = vector.create_mask %148, %c15 : vector<14x14xi1>
        vector.print %197 : vector<14xf16>
        %274 = vector.splat %63 : vector<14x14xi32>
        %275 = math.absi %7 : tensor<14x14xi64>
        %276 = bufferization.clone %alloc_15 : memref<14x14xf16> to memref<14x14xf16>
        %277 = bufferization.clone %276 : memref<14x14xf16> to memref<14x14xf16>
        %278 = math.atan2 %4, %6 : tensor<14x14xf32>
        %inserted_40 = tensor.insert %c424612358_i64 into %0[%c5, %c5] : tensor<14x14xi64>
        bufferization.dealloc_tensor %3 : tensor<14xf16>
        scf.yield %91 : vector<14x14xf16>
      }
      %256 = arith.addf %cst_0, %cst_0 : f32
      %257 = math.sqrt %6 : tensor<14x14xf32>
      %258 = vector.broadcast %c122117168_i32 : i32 to vector<i32>
      %259 = vector.transfer_write %258, %153[%51, %163] : vector<i32>, tensor<16x1xi32>
      %rank_36 = tensor.rank %from_elements : tensor<16x1xf32>
      %260 = math.floor %4 : tensor<14x14xf32>
      %261 = vector.insertelement %cst_2, %239[%119 : index] : vector<14xf32>
      %collapsed_37 = tensor.collapse_shape %11 [[0, 1]] : tensor<14x14xi32> into tensor<196xi32>
      %c1_i16 = arith.constant 1 : i16
      %262 = vector.transfer_read %18[%46], %c1_i16 : tensor<14xi16>, vector<i16>
      %263 = math.absf %cst_0 : f32
      %264 = math.ceil %80 : tensor<14x14xf32>
      %265 = math.absi %14 : tensor<16x1xi32>
      %266 = affine.if affine_set<(d0, d1) : (d1 * 2 - 1 == 0, (d1 - 1) floordiv 2 >= 0, d1 - 1 == 0)>(%c4, %c4) -> i16 {
        %267 = math.copysign %1, %12 : tensor<14x14xf32>
        %dest, %accumulated_value = vector.scan <maxf>, %115, %239 {inclusive = false, reduction_dim = 1 : i64} : vector<14x14xf32>, vector<14xf32>
        %268 = vector.broadcast %122 : index to vector<16xindex>
        %269 = vector.broadcast %false : i1 to vector<16xi1>
        %270 = vector.broadcast %c1165341599_i32 : i32 to vector<16xi32>
        vector.scatter %alloc_11[%c4, %c12] [%268], %269, %270 : memref<14x14xi32>, vector<16xindex>, vector<16xi1>, vector<16xi32>
        %271 = vector.broadcast %c396481855_i32 : i32 to vector<i32>
        %272 = vector.transfer_write %271, %collapsed_37[%51] : vector<i32>, tensor<196xi32>
        %c1_i32 = arith.constant 1 : i32
        %c0_i32 = arith.constant 0 : i32
        %273 = vector.transfer_read %alloc[%174, %230], %c0_i32 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<16x1xi32>, vector<1xi32>
        %274 = math.ipowi %11, %11 : tensor<14x14xi32>
        %275 = arith.shrui %false, %false : i1
        %276 = math.cttz %7 : tensor<14x14xi64>
        affine.yield %c-31621_i16 : i16
      } else {
        %267 = bufferization.clone %alloc_14 : memref<14x14xf32> to memref<14x14xf32>
        %268 = index.maxs %100, %180
        %269 = arith.shrui %63, %c122117168_i32 : i32
        %270 = arith.minui %c1_i16, %c1_i16 : i16
        %271 = math.atan %34 : tensor<14xf16>
        %272 = math.round %cst : f16
        %273 = affine.max affine_map<(d0, d1, d2, d3) -> (-d1, -d1, -d1, d3 - d0 floordiv 2 + 65)>(%c9, %c2, %102, %230)
        %274 = arith.divui %63, %63 : i32
        affine.yield %c-22309_i16 : i16
      }
      %rank_38 = tensor.rank %12 : tensor<14x14xf32>
      %alloc_39 = memref.alloc() : memref<14x14xi64>
      scf.yield %4 : tensor<14x14xf32>
    }
    default {
      %254 = math.rsqrt %12 : tensor<14x14xf32>
      %255 = math.floor %1 : tensor<14x14xf32>
      memref.store %true_33, %alloc_6[%c0, %c0] : memref<16x1xi1>
      %256 = math.absi %c-22309_i16 : i16
      %257 = bufferization.to_tensor %alloc_12 : memref<14x14xf16>
      affine.for %arg1 = 0 to 106 {
      }
      %258 = math.tan %cst_0 : f32
      %259 = math.atan %4 : tensor<14x14xf32>
      %260 = arith.andi %c424612358_i64, %c424612358_i64 : i64
      %true_36 = index.bool.constant true
      %261 = index.sub %230, %178
      %262 = vector.load %alloc_20[%c2] : memref<14xi16>, vector<14x14xi16>
      %263 = arith.shrui %c678836041_i32, %c9234456_i32 : i32
      %264 = arith.mulf %cst_1, %cst : f16
      %265 = affine.max affine_map<(d0, d1, d2) -> (d2 + 64, -d1, (d1 ceildiv 2) mod 128, (d2 + 64) ceildiv 32 - 1)>(%119, %230, %c10)
      %266 = math.copysign %4, %12 : tensor<14x14xf32>
      scf.yield %233 : tensor<14x14xf32>
    }
    %246 = vector.broadcast %c424612358_i64 : i64 to vector<16x1xi64>
    %247 = vector.broadcast %true : i1 to vector<16x1xi1>
    %248 = vector.broadcast %c1165341599_i32 : i32 to vector<16x1xi32>
    %249 = vector.gather %from_elements_25[%51, %180] [%248], %247, %246 : tensor<14x14xi64>, vector<16x1xi32>, vector<16x1xi1>, vector<16x1xi64> into vector<16x1xi64>
    %250 = tensor.empty() : tensor<14x14xf32>
    %251 = linalg.copy ins(%80 : tensor<14x14xf32>) outs(%250 : tensor<14x14xf32>) -> tensor<14x14xf32>
    %alloc_34 = memref.alloc() : memref<1x16xi1>
    linalg.transpose ins(%alloc_6 : memref<16x1xi1>) outs(%alloc_34 : memref<1x16xi1>) permutation = [1, 0] 
    %252 = tensor.empty() : tensor<14xi32>
    %reduced_35 = linalg.reduce ins(%alloc_5 : memref<14x14xi32>) outs(%252 : tensor<14xi32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %254 = vector.broadcast %c-22309_i16 : i16 to vector<14xi16>
        %dest, %accumulated_value = vector.scan <xor>, %152, %254 {inclusive = true, reduction_dim = 0 : i64} : vector<14x14xi16>, vector<14xi16>
        %255 = arith.negf %cst : f16
        memref.alloca_scope  {
          %261 = math.round %233 : tensor<14x14xf32>
          memref.store %c424612358_i64, %alloc_18[%c4, %c13] : memref<14x14xi64>
          %262 = math.exp %12 : tensor<14x14xf32>
          %263 = vector.shuffle %104, %239 [4, 5, 7, 8, 9, 10, 11, 12, 13, 16, 17, 19, 21, 22, 24, 25] : vector<14xf32>, vector<14xf32>
          %264 = tensor.empty() : tensor<14x14xi64>
          %265 = linalg.matmul ins(%from_elements_25, %13 : tensor<14x14xi64>, tensor<14x14xi64>) outs(%264 : tensor<14x14xi64>) -> tensor<14x14xi64>
          %collapsed_37 = tensor.collapse_shape %1 [[0, 1]] : tensor<14x14xf32> into tensor<196xf32>
          %266 = arith.andi %c678836041_i32, %63 : i32
          %267 = arith.negf %cst_3 : f32
          %268 = math.exp %collapsed_37 : tensor<196xf32>
          %269 = math.log10 %cst_2 : f32
          %270 = bufferization.clone %172 : memref<16x1xi1> to memref<16x1xi1>
          %271 = vector.multi_reduction <mul>, %104, %cst_3 [0] : vector<14xf32> to f32
          %272 = bufferization.to_memref %264 : memref<14x14xi64>
          %273 = vector.broadcast %230 : index to vector<16xindex>
          %274 = vector.broadcast %64 : i1 to vector<16xi1>
          %275 = vector.broadcast %c542023153_i32 : i32 to vector<16xi32>
          vector.scatter %alloc_5[%c7, %c1] [%273], %274, %275 : memref<14x14xi32>, vector<16xindex>, vector<16xi1>, vector<16xi32>
          %cst_38 = arith.constant 3.942400e+04 : f16
          %276 = index.castu %c7 : index to i32
          %277 = math.ipowi %64, %161 : i1
          %278 = arith.divui %c396481855_i32, %c1165341599_i32 : i32
          %cast_39 = tensor.cast %264 : tensor<14x14xi64> to tensor<?x?xi64>
          %279 = math.absf %250 : tensor<14x14xf32>
          %280 = arith.minf %271, %cst_3 : f32
          %281 = math.ceil %1 : tensor<14x14xf32>
          affine.store %c424612358_i64, %alloc_7[%c6] : memref<14xi64>
          %282 = arith.remf %271, %cst_2 : f32
          %283 = vector.extract %96[5] : vector<14xf16>
          %284 = arith.cmpi uge, %init, %c122117168_i32 : i32
          %285 = vector.bitcast %45 : vector<1xi1> to vector<1xi1>
          %286 = arith.divsi %c396481855_i32, %in : i32
          %287 = math.log2 %cst_2 : f32
          %288 = math.exp %6 : tensor<14x14xf32>
          %289 = bufferization.to_tensor %alloc_9 : memref<16x1xf32>
          %290 = vector.insertelement %true_33, %285[%46 : index] : vector<1xi1>
        }
        %256 = vector.multi_reduction <add>, %103, %cst_0 [0] : vector<14xf32> to f32
        %257 = arith.minui %c122117168_i32, %c678836041_i32 : i32
        %inserted_36 = tensor.insert %cst_0 into %6[%c9, %c3] : tensor<14x14xf32>
        %258 = vector.broadcast %25 : index to vector<3xindex>
        %259 = vector.broadcast %c424612358_i64 : i64 to vector<3xi64>
        vector.scatter %alloc_7[%c10] [%258], %19, %259 : memref<14xi64>, vector<3xindex>, vector<3xi1>, vector<3xi64>
        %260 = bufferization.to_tensor %alloc_7 : memref<14xi64>
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    scf.parallel (%arg1, %arg2) = (%39, %c8) to (%c9, %174) step (%c7, %c15) {
      %254 = math.cttz %195 : tensor<16x1xi1>
      %255 = math.log1p %from_elements : tensor<16x1xf32>
      %256 = math.log %cst_3 : f32
      %257 = math.sqrt %250 : tensor<14x14xf32>
      %258 = arith.maxsi %c396481855_i32, %c542023153_i32 : i32
      %259 = math.log1p %6 : tensor<14x14xf32>
      %260 = math.sqrt %3 : tensor<14xf16>
      %261 = math.copysign %233, %233 : tensor<14x14xf32>
      %262 = vector.broadcast %c424612358_i64 : i64 to vector<1xi64>
      %dest, %accumulated_value = vector.scan <and>, %246, %262 {inclusive = true, reduction_dim = 0 : i64} : vector<16x1xi64>, vector<1xi64>
      %263 = arith.remf %cst_0, %cst_2 : f32
      %264 = memref.atomic_rmw mins %c-31621_i16, %173[%c7, %c0] : (i16, memref<16x1xi16>) -> i16
      %265 = index.ceildivu %c0, %c6
      %c236762793_i64 = arith.constant 236762793 : i64
      %266 = index.add %122, %158
      %267 = math.absf %1 : tensor<14x14xf32>
      %268 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 ceildiv 8 + 32)>(%37, %c5, %c4, %c14)
      scf.yield
    }
    %253 = affine.vector_load %alloc_16[%c0] : memref<14xf16>, vector<1xf16>
    affine.vector_store %96, %alloc_15[%c12, %46] : memref<14x14xf16>, vector<14xf16>
    vector.print %19 : vector<3xi1>
    vector.print %45 : vector<1xi1>
    vector.print %68 : vector<14xi1>
    vector.print %85 : vector<1xi1>
    vector.print %91 : vector<14x14xf16>
    vector.print %96 : vector<14xf16>
    vector.print %103 : vector<14xf32>
    vector.print %104 : vector<14xf32>
    vector.print %115 : vector<14x14xf32>
    vector.print %116 : vector<14x14xf32>
    vector.print %118 : vector<1xi1>
    vector.print %140 : vector<f32>
    vector.print %152 : vector<14x14xi16>
    vector.print %166 : vector<i16>
    vector.print %197 : vector<14xf16>
    vector.print %216 : vector<1xf32>
    vector.print %228 : vector<14x14xf16>
    vector.print %231 : vector<14xi1>
    vector.print %239 : vector<14xf32>
    vector.print %246 : vector<16x1xi64>
    vector.print %247 : vector<16x1xi1>
    vector.print %248 : vector<16x1xi32>
    vector.print %249 : vector<16x1xi64>
    vector.print %253 : vector<1xf16>
    vector.print %cst : f16
    vector.print %cst_0 : f32
    vector.print %c424612358_i64 : i64
    vector.print %c122117168_i32 : i32
    vector.print %c678836041_i32 : i32
    vector.print %c9234456_i32 : i32
    vector.print %false : i1
    vector.print %c-22309_i16 : i16
    vector.print %c396481855_i32 : i32
    vector.print %cst_1 : f16
    vector.print %c542023153_i32 : i32
    vector.print %true : i1
    vector.print %cst_2 : f32
    vector.print %c1165341599_i32 : i32
    vector.print %cst_3 : f32
    vector.print %c-31621_i16 : i16
    vector.print %63 : i32
    vector.print %64 : i1
    vector.print %161 : i1
    vector.print %true_33 : i1
    return
  }
}
