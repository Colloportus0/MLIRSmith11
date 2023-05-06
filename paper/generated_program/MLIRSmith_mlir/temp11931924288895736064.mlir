module {
  func.func nested @func1() {
    %c1628282844_i32 = arith.constant 1628282844 : i32
    %cst = arith.constant 0x4C04C4DA : f32
    %c1782730757_i64 = arith.constant 1782730757 : i64
    %c579351088_i32 = arith.constant 579351088 : i32
    %cst_0 = arith.constant 6.467200e+04 : f16
    %c800218915_i64 = arith.constant 800218915 : i64
    %cst_1 = arith.constant 0x4D8086AB : f32
    %cst_2 = arith.constant 0x4D2F3110 : f32
    %cst_3 = arith.constant 0x4E1757FF : f32
    %c1643693251_i32 = arith.constant 1643693251 : i32
    %c1812353962_i32 = arith.constant 1812353962 : i32
    %cst_4 = arith.constant 0x4DFFA431 : f32
    %cst_5 = arith.constant 6.099200e+04 : f16
    %c705075243_i64 = arith.constant 705075243 : i64
    %c901048850_i32 = arith.constant 901048850 : i32
    %cst_6 = arith.constant 0x4E0100B0 : f32
    %0 = tensor.empty() : tensor<3x14x14xi1>
    %1 = tensor.empty() : tensor<3x3xf16>
    %2 = tensor.empty() : tensor<3x14x14xf16>
    %3 = tensor.empty() : tensor<7xf16>
    %4 = tensor.empty() : tensor<7xi16>
    %5 = tensor.empty() : tensor<3x14x7xf32>
    %6 = tensor.empty() : tensor<3x3xi1>
    %7 = tensor.empty() : tensor<3x14x7xf32>
    %8 = tensor.empty() : tensor<3x3xi16>
    %9 = tensor.empty() : tensor<3x14x14xi16>
    %10 = tensor.empty() : tensor<3x14x7xi64>
    %11 = tensor.empty() : tensor<7xi32>
    %12 = tensor.empty() : tensor<3x3xf32>
    %13 = tensor.empty() : tensor<7xf16>
    %14 = tensor.empty() : tensor<3x14x7xi16>
    %15 = tensor.empty() : tensor<3x3xi32>
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
    %alloc = memref.alloc() : memref<3x14x7xf32>
    %alloc_7 = memref.alloc() : memref<3x3xi32>
    %alloc_8 = memref.alloc() : memref<3x3xf16>
    %alloc_9 = memref.alloc() : memref<3x14x7xi64>
    %alloc_10 = memref.alloc() : memref<3x3xf16>
    %alloc_11 = memref.alloc() : memref<3x3xi32>
    %alloc_12 = memref.alloc() : memref<3x3xf16>
    %alloc_13 = memref.alloc() : memref<3x14x7xf32>
    %alloc_14 = memref.alloc() : memref<7xi32>
    %alloc_15 = memref.alloc() : memref<3x3xf32>
    %alloc_16 = memref.alloc() : memref<7xf16>
    %alloc_17 = memref.alloc() : memref<3x14x7xf32>
    %alloc_18 = memref.alloc() : memref<3x14x7xi16>
    %alloc_19 = memref.alloc() : memref<7xf32>
    %alloc_20 = memref.alloc() : memref<3x3xi1>
    %alloc_21 = memref.alloc() : memref<3x3xi64>
    %16 = tensor.empty() : tensor<3x14x14xi16>
    %17 = linalg.copy ins(%9 : tensor<3x14x14xi16>) outs(%16 : tensor<3x14x14xi16>) -> tensor<3x14x14xi16>
    %18 = tensor.empty() : tensor<7xi32>
    %transposed = linalg.transpose ins(%11 : tensor<7xi32>) outs(%18 : tensor<7xi32>) permutation = [0] 
    %19 = tensor.empty() : tensor<f32>
    %reduced = linalg.reduce ins(%alloc_13 : memref<3x14x7xf32>) outs(%19 : tensor<f32>) dimensions = [0, 1, 2] 
      (%in: f32, %init: f32) {
        %289 = vector.broadcast %cst_5 : f16 to vector<3x14x7xf16>
        %false_42 = arith.constant false
        %290 = vector.broadcast %false_42 : i1 to vector<3x14x7xi1>
        %291 = vector.broadcast %c579351088_i32 : i32 to vector<3x14x7xi32>
        %292 = vector.gather %alloc_8[%c8, %c4] [%291], %290, %289 : memref<3x3xf16>, vector<3x14x7xi32>, vector<3x14x7xi1>, vector<3x14x7xf16> into vector<3x14x7xf16>
        %293 = math.tan %5 : tensor<3x14x7xf32>
        %splat_43 = tensor.splat %c1643693251_i32 : tensor<3x14x7xi32>
        %294 = index.sub %c6, %c5
        %295 = math.fpowi %cst_6, %c1628282844_i32 : f32, i32
        %296 = memref.realloc %alloc_19 : memref<7xf32> to memref<14xf32>
        %297 = math.copysign %in, %cst_1 : f32
        %c1_i32 = arith.constant 1 : i32
        %298 = vector.transfer_read %alloc_11[%c1, %294], %c1_i32 : memref<3x3xi32>, vector<7xi32>
        %cst_44 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_44 : f32
      }
    scf.parallel (%arg0) = (%c14) to (%c9) step (%c1) {
      %289 = bufferization.to_tensor %alloc_17 : memref<3x14x7xf32>
      %290 = math.atan2 %reduced, %19 : tensor<f32>
      %291 = arith.xori %c579351088_i32, %c1628282844_i32 : i32
      %292 = arith.maxsi %c1812353962_i32, %c1812353962_i32 : i32
      %293 = vector.broadcast %cst_1 : f32 to vector<3x3xf32>
      vector.print %293 : vector<3x3xf32>
      %294 = vector.broadcast %cst : f32 to vector<7xf32>
      %295 = vector.fma %294, %294, %294 : vector<7xf32>
      %296 = vector.multi_reduction <add>, %295, %cst_2 [0] : vector<7xf32> to f32
      %297 = math.fpowi %13, %11 : tensor<7xf16>, tensor<7xi32>
      %298 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%2 : tensor<3x14x14xf16>) {
      ^bb0(%out: f16):
        %308 = math.round %5 : tensor<3x14x7xf32>
        %309 = math.fpowi %12, %15 : tensor<3x3xf32>, tensor<3x3xi32>
        %310 = vector.broadcast %cst_5 : f16 to vector<f16>
        %311 = vector.transfer_write %310, %3[%c11] : vector<f16>, tensor<7xf16>
        %extracted_43 = tensor.extract %17[%c1, %c3, %c3] : tensor<3x14x14xi16>
        %312 = tensor.empty() : tensor<3x14x7xi64>
        %splat_44 = tensor.splat %c1628282844_i32 : tensor<3x14x14xi32>
        %313 = vector.matrix_multiply %294, %295 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf32>, vector<7xf32>) -> vector<1xf32>
        %inserted_45 = tensor.insert %c705075243_i64 into %312[%c2, %c1, %c5] : tensor<3x14x7xi64>
        memref.store %296, %alloc_19[%c5] : memref<7xf32>
        %314 = math.log %cst_5 : f16
        %315 = affine.load %alloc[%c14, %c7, %c5] : memref<3x14x7xf32>
        %316 = math.absi %18 : tensor<7xi32>
        %317 = index.divs %c3, %c0
        %318 = arith.shrui %c1643693251_i32, %c1628282844_i32 : i32
        %319 = affine.max affine_map<(d0, d1, d2) -> (((-d0) ceildiv 128) mod 16)>(%c13, %c5, %c7)
        %320 = math.tan %13 : tensor<7xf16>
        %321 = vector.insert %cst_2, %294 [0] : f32 into vector<7xf32>
        %322 = math.expm1 %out : f16
        %323 = arith.muli %c1782730757_i64, %c705075243_i64 : i64
        %324 = arith.divsi %extracted_43, %extracted_43 : i16
        %325 = memref.realloc %alloc_16 : memref<7xf16> to memref<14xf16>
        %326 = vector.extract %313[0] : vector<1xf32>
        %c645484208_i64 = arith.constant 645484208 : i64
        %327 = vector.insertelement %out, %310[] : vector<f16>
        %328 = math.tan %cst_0 : f16
        %329 = vector.broadcast %cst_1 : f32 to vector<3xf32>
        %dest_46, %accumulated_value_47 = vector.scan <mul>, %293, %329 {inclusive = true, reduction_dim = 1 : i64} : vector<3x3xf32>, vector<3xf32>
        %330 = arith.divsi %c901048850_i32, %c1643693251_i32 : i32
        %331 = math.log %296 : f32
        %332 = math.log %cst_2 : f32
        %false_48 = arith.constant false
        %333 = vector.broadcast %false_48 : i1 to vector<7xi1>
        %334 = vector.maskedload %alloc_20[%c2, %c2], %333, %333 : memref<3x3xi1>, vector<7xi1>, vector<7xi1> into vector<7xi1>
        %335 = arith.xori %c901048850_i32, %c579351088_i32 : i32
        %336 = arith.maxf %315, %296 : f32
        linalg.yield %cst_0 : f16
      } -> tensor<3x14x14xf16>
      %299 = index.divu %c3, %c9
      %300 = arith.divui %c800218915_i64, %c1782730757_i64 : i64
      %301 = vector.broadcast %c1 : index to vector<3xindex>
      %false_42 = arith.constant false
      %302 = vector.broadcast %false_42 : i1 to vector<3xi1>
      %303 = vector.broadcast %c901048850_i32 : i32 to vector<3xi32>
      vector.scatter %alloc_11[%c0, %c2] [%301], %302, %303 : memref<3x3xi32>, vector<3xindex>, vector<3xi1>, vector<3xi32>
      %304 = math.cttz %15 : tensor<3x3xi32>
      %305 = arith.maxsi %c1812353962_i32, %c1812353962_i32 : i32
      %306 = arith.minf %cst_0, %cst_0 : f16
      %307 = index.mul %c13, %c9
      scf.yield
    }
    %20 = affine.vector_load %alloc_18[%c3, %c8, %c5] : memref<3x14x7xi16>, vector<7xi16>
    affine.vector_store %20, %alloc_18[%c2, %c0, %c13] : memref<3x14x7xi16>, vector<7xi16>
    %21 = tensor.empty() : tensor<7xf16>
    %22 = tensor.empty() : tensor<f16>
    %23 = linalg.dot ins(%13, %21 : tensor<7xf16>, tensor<7xf16>) outs(%22 : tensor<f16>) -> tensor<f16>
    %24 = arith.maxui %c800218915_i64, %c705075243_i64 : i64
    %false = arith.constant false
    %25 = vector.broadcast %false : i1 to vector<3x3xi1>
    %26 = vector.broadcast %c1812353962_i32 : i32 to vector<3x3xi32>
    %27 = vector.gather %6[%c3, %c10] [%26], %25, %25 : tensor<3x3xi1>, vector<3x3xi32>, vector<3x3xi1>, vector<3x3xi1> into vector<3x3xi1>
    %28 = arith.xori %c579351088_i32, %c1628282844_i32 : i32
    %29 = arith.shrui %c800218915_i64, %c1782730757_i64 : i64
    %30 = vector.broadcast %c1812353962_i32 : i32 to vector<i32>
    vector.transfer_write %30, %alloc_14[%c13] : vector<i32>, memref<7xi32>
    %31 = vector.insertelement %c1643693251_i32, %30[] : vector<i32>
    %32 = arith.andi %c901048850_i32, %c1628282844_i32 : i32
    %33 = vector.extract %20[3] : vector<7xi16>
    %34 = math.log1p %cst_4 : f32
    %35 = arith.remsi %false, %false : i1
    %36 = scf.while (%arg0 = %c1643693251_i32) : (i32) -> i32 {
      %rank_42 = tensor.rank %11 : tensor<7xi32>
      %289 = arith.shli %c800218915_i64, %c705075243_i64 : i64
      %inserted_43 = tensor.insert %arg0 into %15[%c1, %c2] : tensor<3x3xi32>
      %290 = vector.splat %c13 : vector<7xindex>
      %291 = math.atan %7 : tensor<3x14x7xf32>
      %292 = arith.maxui %c800218915_i64, %c1782730757_i64 : i64
      %293 = vector.insertelement %c579351088_i32, %30[] : vector<i32>
      %294 = scf.execute_region -> memref<3x3xi32> {
        %295 = arith.xori %arg0, %c1812353962_i32 : i32
        %296 = arith.divsi %c579351088_i32, %c1643693251_i32 : i32
        %297 = math.sqrt %21 : tensor<7xf16>
        %298 = arith.maxsi %c1643693251_i32, %c1643693251_i32 : i32
        %splat_44 = tensor.splat %arg0 : tensor<3x14x7xi32>
        %c0_i32 = arith.constant 0 : i32
        %299 = vector.transfer_read %15[%c2, %c1], %c0_i32 : tensor<3x3xi32>, vector<3xi32>
        %cast_45 = tensor.cast %10 : tensor<3x14x7xi64> to tensor<?x?x?xi64>
        %300 = index.mul %c8, %c7
        %cst_46 = arith.constant 1.000000e+00 : f16
        %301 = vector.transfer_read %13[%c4], %cst_46 : tensor<7xf16>, vector<f16>
        %302 = tensor.empty() : tensor<3x3xi1>
        %303 = linalg.matmul ins(%6, %6 : tensor<3x3xi1>, tensor<3x3xi1>) outs(%302 : tensor<3x3xi1>) -> tensor<3x3xi1>
        %304 = arith.divsi %c1812353962_i32, %c0_i32 : i32
        %splat_47 = tensor.splat %c1812353962_i32 : tensor<3x14x14xi32>
        %305 = math.log2 %2 : tensor<3x14x14xf16>
        %306 = math.log1p %21 : tensor<7xf16>
        %307 = vector.broadcast %cst_46 : f16 to vector<7xf16>
        %308 = vector.broadcast %false : i1 to vector<7xi1>
        %309 = vector.maskedload %alloc_12[%c0, %c2], %308, %307 : memref<3x3xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
        %310 = index.divu %c8, %c1
        scf.yield %alloc_11 : memref<3x3xi32>
      }
      scf.condition(%false) %c579351088_i32 : i32
    } do {
    ^bb0(%arg0: i32):
      %289 = arith.xori %c1643693251_i32, %c1628282844_i32 : i32
      %290 = tensor.empty() : tensor<3x14x7xi32>
      %291 = math.fpowi %7, %290 : tensor<3x14x7xf32>, tensor<3x14x7xi32>
      %c1_i16_42 = arith.constant 1 : i16
      %292 = vector.broadcast %c1_i16_42 : i16 to vector<7x7xi16>
      %293 = vector.outerproduct %20, %20, %292 {kind = #vector.kind<minui>} : vector<7xi16>, vector<7xi16>
      %294 = bufferization.to_tensor %alloc_11 : memref<3x3xi32>
      %295 = math.absi %c800218915_i64 : i64
      %296 = tensor.empty() : tensor<i32>
      %297 = math.fpowi %19, %296 : tensor<f32>, tensor<i32>
      %298 = vector.broadcast %c1628282844_i32 : i32 to vector<i32>
      %299 = vector.transfer_write %298, %290[%c6, %c0, %c12] : vector<i32>, tensor<3x14x7xi32>
      %300 = math.exp %19 : tensor<f32>
      %301 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_19, %alloc_19 : memref<7xf32>, memref<7xf32>) outs(%7 : tensor<3x14x7xf32>) {
      ^bb0(%in: f32, %in_44: f32, %out: f32):
        %308 = vector.matrix_multiply %20, %20 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi16>, vector<7xi16>) -> vector<1xi16>
        %309 = math.powf %cst, %in_44 : f32
        %310 = arith.muli %c800218915_i64, %c1782730757_i64 : i64
        %311 = math.log2 %reduced : tensor<f32>
        %alloc_45 = memref.alloc() : memref<3x3xi64>
        memref.copy %alloc_21, %alloc_45 : memref<3x3xi64> to memref<3x3xi64>
        %312 = math.atan2 %in_44, %cst_3 : f32
        %313 = math.log %19 : tensor<f32>
        %314 = vector.broadcast %c4 : index to vector<14xindex>
        %315 = vector.broadcast %false : i1 to vector<14xi1>
        %316 = vector.broadcast %cst_5 : f16 to vector<14xf16>
        vector.scatter %alloc_16[%c6] [%314], %315, %316 : memref<7xf16>, vector<14xindex>, vector<14xi1>, vector<14xf16>
        %317 = tensor.empty() : tensor<3x14x14xf32>
        %318 = vector.broadcast %cst_4 : f32 to vector<3x14x14xf32>
        %319 = vector.broadcast %false : i1 to vector<3x14x14xi1>
        %320 = vector.broadcast %c901048850_i32 : i32 to vector<3x14x14xi32>
        %321 = vector.gather %317[%c15, %c1, %c5] [%320], %319, %318 : tensor<3x14x14xf32>, vector<3x14x14xi32>, vector<3x14x14xi1>, vector<3x14x14xf32> into vector<3x14x14xf32>
        %322 = arith.muli %c1782730757_i64, %c1782730757_i64 : i64
        %323 = vector.create_mask %c12, %c9 : vector<3x3xi1>
        %324 = math.atan %7 : tensor<3x14x7xf32>
        %325 = memref.realloc %alloc_14 : memref<7xi32> to memref<14xi32>
        %326 = index.maxs %c7, %c6
        %327 = index.sub %c9, %326
        %328 = arith.remsi %c901048850_i32, %c1812353962_i32 : i32
        %329 = arith.floordivsi %false, %false : i1
        %330 = arith.ori %c1812353962_i32, %c579351088_i32 : i32
        %331 = math.exp2 %2 : tensor<3x14x14xf16>
        %332 = memref.atomic_rmw ori %c1643693251_i32, %alloc_11[%c0, %c0] : (i32, memref<3x3xi32>) -> i32
        %333 = index.castu %c3 : index to i32
        %334 = math.ctlz %9 : tensor<3x14x14xi16>
        %cst_46 = arith.constant 1.000000e+00 : f32
        %cst_47 = arith.constant 0.000000e+00 : f32
        %335 = vector.transfer_read %alloc_17[%c13, %c7, %c8], %cst_47 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : memref<3x14x7xf32>, vector<14xf32>
        %336 = math.sqrt %in : f32
        %337 = arith.remui %c1628282844_i32, %c1812353962_i32 : i32
        %338 = vector.broadcast %c1643693251_i32 : i32 to vector<14x14x3xi32>
        %339 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0, d1)>, affine_map<(d0, d1, d2, d3) -> (d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %320, %26, %338 : vector<3x14x14xi32>, vector<3x3xi32> into vector<14x14x3xi32>
        %340 = tensor.empty() : tensor<3x14x14xi32>
        %341 = math.fpowi %2, %340 : tensor<3x14x14xf16>, tensor<3x14x14xi32>
        %342 = math.exp %3 : tensor<7xf16>
        %343 = math.fpowi %1, %294 : tensor<3x3xf16>, tensor<3x3xi32>
        %344 = math.floor %cst_2 : f32
        %345 = arith.xori %c1628282844_i32, %c1643693251_i32 : i32
        %346 = arith.divf %cst_2, %cst_2 : f32
        linalg.yield %in : f32
      } -> tensor<3x14x7xf32>
      vector.print %30 : vector<i32>
      %302 = memref.realloc %alloc_16 : memref<7xf16> to memref<14xf16>
      %303 = arith.ori %c1628282844_i32, %c1812353962_i32 : i32
      %304 = math.tan %cst : f32
      %305 = affine.load %alloc_21[%c0, %c9] : memref<3x3xi64>
      %cst_43 = arith.constant 1.000000e+00 : f16
      %306 = vector.transfer_read %2[%c7, %c0, %c15], %cst_43 : tensor<3x14x14xf16>, vector<14xf16>
      %307 = arith.minf %cst_2, %cst_2 : f32
      scf.yield %c1812353962_i32 : i32
    }
    %37 = vector.broadcast %c7 : index to vector<14xindex>
    %38 = vector.broadcast %false : i1 to vector<14xi1>
    %39 = vector.broadcast %c579351088_i32 : i32 to vector<14xi32>
    vector.scatter %alloc_11[%c0, %c0] [%37], %38, %39 : memref<3x3xi32>, vector<14xindex>, vector<14xi1>, vector<14xi32>
    memref.store %cst_5, %alloc_12[%c1, %c1] : memref<3x3xf16>
    %40 = arith.divui %c1643693251_i32, %c901048850_i32 : i32
    memref.copy %alloc_10, %alloc_12 : memref<3x3xf16> to memref<3x3xf16>
    %41 = math.fpowi %13, %11 : tensor<7xf16>, tensor<7xi32>
    %42 = math.atan2 %7, %7 : tensor<3x14x7xf32>
    %c1_i16 = arith.constant 1 : i16
    %43 = vector.insertelement %c1_i16, %20[%c12 : index] : vector<7xi16>
    %44 = tensor.empty() : tensor<3x14x14xi1>
    memref.tensor_store %5, %alloc : memref<3x14x7xf32>
    %45 = math.ctpop %transposed : tensor<7xi32>
    %46 = vector.multi_reduction <minui>, %20, %20 [] : vector<7xi16> to vector<7xi16>
    %47 = vector.broadcast %c1_i16 : i16 to vector<3xi16>
    %48 = vector.broadcast %false : i1 to vector<3xi1>
    %49 = vector.maskedload %alloc_18[%c2, %c11, %c1], %48, %47 : memref<3x14x7xi16>, vector<3xi1>, vector<3xi16> into vector<3xi16>
    %50 = arith.ori %c579351088_i32, %c1628282844_i32 : i32
    %51 = bufferization.to_tensor %alloc_13 : memref<3x14x7xf32>
    %52 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%17 : tensor<3x14x14xi16>) {
    ^bb0(%out: i16):
      %289 = arith.maxf %cst_4, %cst_6 : f32
      affine.store %false, %alloc_20[%c5, %c0] : memref<3x3xi1>
      %290 = math.ctpop %44 : tensor<3x14x14xi1>
      %291 = math.cttz %c901048850_i32 : i32
      %292 = vector.broadcast %c1812353962_i32 : i32 to vector<i32>
      %293 = vector.transfer_write %292, %transposed[%c5] : vector<i32>, tensor<7xi32>
      %true_42 = arith.constant true
      %294 = vector.transfer_read %0[%c14, %c7, %c15], %true_42 : tensor<3x14x14xi1>, vector<7x14xi1>
      %295 = memref.load %alloc_14[%c3] : memref<7xi32>
      %splat_43 = tensor.splat %c1_i16 : tensor<3x14x7xi16>
      %296 = index.divu %c6, %c10
      %297 = arith.minsi %c1812353962_i32, %c1643693251_i32 : i32
      %298 = math.ctpop %4 : tensor<7xi16>
      %299 = math.rsqrt %5 : tensor<3x14x7xf32>
      %300 = index.divu %c13, %c4
      %301 = vector.insertelement %true_42, %48[%300 : index] : vector<3xi1>
      %inserted_44 = tensor.insert %out into %9[%c2, %c9, %c7] : tensor<3x14x14xi16>
      %302 = memref.atomic_rmw maxf %cst_4, %alloc_15[%c0, %c0] : (f32, memref<3x3xf32>) -> f32
      %303 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %20, %20, %out : vector<7xi16>, vector<7xi16> into i16
      %304 = vector.multi_reduction <mul>, %47, %c1_i16 [0] : vector<3xi16> to i16
      %305 = math.roundeven %cst_3 : f32
      %306 = index.divu %296, %c8
      %307 = arith.minsi %c579351088_i32, %c901048850_i32 : i32
      %cst_45 = arith.constant 1.000000e+00 : f16
      %308 = vector.transfer_read %alloc_16[%306], %cst_45 : memref<7xf16>, vector<f16>
      %309 = math.ctpop %splat_43 : tensor<3x14x7xi16>
      %310 = arith.ceildivsi %false, %true_42 : i1
      %311 = arith.maxsi %c1812353962_i32, %c1628282844_i32 : i32
      %312 = vector.insertelement %c1812353962_i32, %292[] : vector<i32>
      %313 = math.log %19 : tensor<f32>
      %314 = math.rsqrt %23 : tensor<f16>
      %315 = index.ceildivs %c2, %c0
      %316 = index.sizeof
      %317 = affine.load %alloc_17[%c4, %c15, %c1] : memref<3x14x7xf32>
      %318 = math.tan %3 : tensor<7xf16>
      linalg.yield %out : i16
    } -> tensor<3x14x14xi16>
    %53 = scf.while (%arg0 = %cst_4) : (f32) -> f32 {
      %289 = arith.xori %c705075243_i64, %c1782730757_i64 : i64
      %290 = vector.broadcast %c0 : index to vector<3xindex>
      %291 = vector.broadcast %cst_0 : f16 to vector<3xf16>
      vector.scatter %alloc_12[%c1, %c2] [%290], %48, %291 : memref<3x3xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
      %292 = vector.splat %c11 : vector<3x14x7xindex>
      %293 = arith.remsi %c1782730757_i64, %c800218915_i64 : i64
      %294 = vector.broadcast %c14 : index to vector<14xindex>
      %295 = vector.broadcast %false : i1 to vector<14xi1>
      %296 = vector.broadcast %cst_0 : f16 to vector<14xf16>
      vector.scatter %alloc_12[%c0, %c2] [%294], %295, %296 : memref<3x3xf16>, vector<14xindex>, vector<14xi1>, vector<14xf16>
      %297 = index.maxs %c14, %c5
      %298 = arith.ceildivsi %c800218915_i64, %c800218915_i64 : i64
      %299 = vector.load %alloc_12[%c0, %c0] : memref<3x3xf16>, vector<3x14x7xf16>
      scf.condition(%false) %cst_1 : f32
    } do {
    ^bb0(%arg0: f32):
      %splat_42 = tensor.splat %c1782730757_i64 : tensor<3x14x7xi64>
      %289 = arith.shrui %c1812353962_i32, %c1643693251_i32 : i32
      %290 = math.log2 %1 : tensor<3x3xf16>
      %rank_43 = tensor.rank %15 : tensor<3x3xi32>
      %alloc_44 = memref.alloc() : memref<3x14x14xi32>
      %291 = index.divs %c11, %c15
      %alloc_45 = memref.alloc() : memref<3x14xi1>
      %alloc_46 = memref.alloc() : memref<14x14xi1>
      %292 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_45, %alloc_46 : memref<3x14xi1>, memref<14x14xi1>) outs(%44 : tensor<3x14x14xi1>) {
      ^bb0(%in: i1, %in_48: i1, %out: i1):
        %300 = bufferization.to_tensor %alloc_7 : memref<3x3xi32>
        %301 = arith.addf %cst_1, %arg0 : f32
        %302 = index.ceildivs %c6, %c5
        %303 = vector.broadcast %cst_0 : f16 to vector<14xf16>
        %304 = vector.broadcast %in_48 : i1 to vector<14xi1>
        %305 = vector.maskedload %alloc_12[%c0, %c0], %304, %303 : memref<3x3xf16>, vector<14xi1>, vector<14xf16> into vector<14xf16>
        %306 = index.divu %c0, %c15
        %307 = math.log2 %2 : tensor<3x14x14xf16>
        %308 = vector.load %alloc_17[%c1, %c0, %c0] : memref<3x14x7xf32>, vector<7xf32>
        %309 = index.castu %rank_43 : index to i32
        %310 = index.sub %c2, %c11
        %311 = index.casts %c0 : index to i32
        %312 = index.add %302, %310
        %313 = index.divu %c9, %c11
        %314 = arith.maxf %cst_2, %cst_6 : f32
        %315 = vector.multi_reduction <add>, %303, %303 [] : vector<14xf16> to vector<14xf16>
        %316 = arith.remsi %c1812353962_i32, %c1812353962_i32 : i32
        %317 = vector.create_mask %313, %313, %rank_43 : vector<3x14x7xi1>
        %318 = vector.matrix_multiply %304, %304 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi1>, vector<14xi1>) -> vector<1xi1>
        %319 = arith.muli %c901048850_i32, %c901048850_i32 : i32
        %320 = vector.create_mask %c15 : vector<7xi1>
        %321 = vector.broadcast %cst_0 : f16 to vector<14x14xf16>
        %322 = vector.outerproduct %303, %303, %321 {kind = #vector.kind<mul>} : vector<14xf16>, vector<14xf16>
        %323 = vector.broadcast %c8 : index to vector<7xindex>
        vector.scatter %alloc_18[%c1, %c5, %c4] [%323], %320, %20 : memref<3x14x7xi16>, vector<7xindex>, vector<7xi1>, vector<7xi16>
        %324 = arith.cmpf ord, %cst_4, %cst_3 : f32
        %325 = arith.addf %cst_3, %cst_6 : f32
        %326 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %308, %308, %cst : vector<7xf32>, vector<7xf32> into f32
        %splat_49 = tensor.splat %c705075243_i64 : tensor<3x14x7xi64>
        %327 = math.sqrt %2 : tensor<3x14x14xf16>
        %328 = bufferization.to_tensor %alloc : memref<3x14x7xf32>
        %329 = arith.floordivsi %c901048850_i32, %c579351088_i32 : i32
        %330 = index.maxu %c6, %c9
        %331 = vector.splat %c5 : vector<3x14x7xindex>
        %332 = vector.matrix_multiply %49, %49 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi16>, vector<3xi16>) -> vector<1xi16>
        %333 = vector.insert %false, %304 [1] : i1 into vector<14xi1>
        linalg.yield %false : i1
      } -> tensor<3x14x14xi1>
      %293 = vector.insertelement %c1628282844_i32, %30[] : vector<i32>
      %294 = index.add %c1, %c15
      %295 = index.sub %c10, %c14
      %splat_47 = tensor.splat %false : tensor<3x14x14xi1>
      %296 = math.sqrt %reduced : tensor<f32>
      %297 = vector.bitcast %47 : vector<3xi16> to vector<3xf16>
      %298 = vector.shuffle %47, %49 [0, 2, 3] : vector<3xi16>, vector<3xi16>
      scf.execute_region {
        %300 = math.fpowi %13, %transposed : tensor<7xf16>, tensor<7xi32>
        %301 = arith.minsi %c1628282844_i32, %c901048850_i32 : i32
        %302 = vector.maskedload %alloc_18[%c0, %c6, %c5], %48, %47 : memref<3x14x7xi16>, vector<3xi1>, vector<3xi16> into vector<3xi16>
        %303 = vector.broadcast %c1643693251_i32 : i32 to vector<3xi32>
        %304 = vector.multi_reduction <minui>, %26, %303 [0] : vector<3x3xi32> to vector<3xi32>
        %305 = arith.divf %cst_2, %cst_6 : f32
        %306 = index.mul %c11, %c12
        %collapsed = tensor.collapse_shape %9 [[0, 1], [2]] : tensor<3x14x14xi16> into tensor<42x14xi16>
        %307 = vector.splat %cst_6 : vector<3x14x7xf32>
        %308 = vector.broadcast %false : i1 to vector<14xi1>
        %309 = vector.transfer_write %308, %0[%306, %c15, %c0] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<14xi1>, tensor<3x14x14xi1>
        %c2064705090_i64 = arith.constant 2064705090 : i64
        %310 = vector.bitcast %302 : vector<3xi16> to vector<3xf16>
        memref.copy %alloc_13, %alloc : memref<3x14x7xf32> to memref<3x14x7xf32>
        %311 = vector.insert %cst_5, %310 [1] : f16 into vector<3xf16>
        %312 = math.round %19 : tensor<f32>
        %313 = math.atan2 %cst_1, %arg0 : f32
        %314 = arith.maxf %cst_2, %cst : f32
        scf.yield
      }
      %299 = arith.addf %cst_5, %cst_5 : f16
      scf.yield %arg0 : f32
    }
    %54 = math.sqrt %13 : tensor<7xf16>
    %55 = vector.create_mask %c3 : vector<7xi1>
    %56 = arith.remf %cst_3, %cst_6 : f32
    %57 = index.divu %c7, %c6
    %58 = arith.remf %cst_0, %cst_0 : f16
    %59 = math.absi %18 : tensor<7xi32>
    %60 = vector.broadcast %57 : index to vector<14xindex>
    %61 = vector.broadcast %false : i1 to vector<14xi1>
    %62 = vector.broadcast %c1_i16 : i16 to vector<14xi16>
    vector.scatter %alloc_18[%c0, %c2, %c1] [%60], %61, %62 : memref<3x14x7xi16>, vector<14xindex>, vector<14xi1>, vector<14xi16>
    %63 = index.maxu %c7, %c6
    %64 = index.divs %c15, %c0
    %extracted = tensor.extract %8[%c0, %c2] : tensor<3x3xi16>
    %true = index.bool.constant true
    %65 = index.mul %c5, %c15
    %alloc_22 = memref.alloc() : memref<14x14x3xi16>
    %66 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_22 : memref<14x14x3xi16>) outs(%9 : tensor<3x14x14xi16>) {
    ^bb0(%in: i16, %out: i16):
      %289 = arith.minsi %in, %out : i16
      %rank_42 = tensor.rank %44 : tensor<3x14x14xi1>
      %290 = arith.divf %cst_4, %cst_4 : f32
      %291 = bufferization.clone %alloc_11 : memref<3x3xi32> to memref<3x3xi32>
      %292 = index.mul %c15, %c0
      %293 = vector.load %alloc_18[%c1, %c7, %c0] : memref<3x14x7xi16>, vector<3x14x14xi16>
      %cst_43 = arith.constant 1.000000e+00 : f32
      %cst_44 = arith.constant 0.000000e+00 : f32
      %294 = vector.transfer_read %7[%c4, %c14, %rank_42], %cst_44 : tensor<3x14x7xf32>, vector<f32>
      %295 = math.absf %cst_5 : f16
      %296 = vector.bitcast %293 : vector<3x14x14xi16> to vector<3x14x14xi16>
      %297 = math.roundeven %cst_1 : f32
      %298 = math.cttz %17 : tensor<3x14x14xi16>
      %299 = math.copysign %cst_2, %cst_2 : f32
      %rank_45 = tensor.rank %23 : tensor<f16>
      %300 = vector.broadcast %in : i16 to vector<14x14xi16>
      %dest_46, %accumulated_value_47 = vector.scan <mul>, %293, %300 {inclusive = true, reduction_dim = 0 : i64} : vector<3x14x14xi16>, vector<14x14xi16>
      %301 = math.log2 %cst_2 : f32
      %302 = arith.remsi %c1812353962_i32, %c1643693251_i32 : i32
      %303 = arith.maxui %c1812353962_i32, %c1643693251_i32 : i32
      %304 = math.rsqrt %cst_6 : f32
      %305 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%17 : tensor<3x14x14xi16>) {
      ^bb0(%out_49: i16):
        %317 = vector.broadcast %c579351088_i32 : i32 to vector<i32>
        %318 = vector.transfer_write %317, %transposed[%c3] : vector<i32>, tensor<7xi32>
        %319 = vector.broadcast %c3 : index to vector<3xindex>
        vector.scatter %alloc_18[%c0, %c7, %c2] [%319], %48, %49 : memref<3x14x7xi16>, vector<3xindex>, vector<3xi1>, vector<3xi16>
        %320 = arith.xori %c901048850_i32, %c1812353962_i32 : i32
        %321 = math.atan %13 : tensor<7xf16>
        %322 = math.round %22 : tensor<f16>
        affine.store %cst_43, %alloc_19[%c13] : memref<7xf32>
        %323 = vector.load %alloc_9[%c1, %c2, %c3] : memref<3x14x7xi64>, vector<3x14x7xi64>
        %324 = vector.multi_reduction <mul>, %27, %false [0, 1] : vector<3x3xi1> to i1
        %325 = math.atan2 %2, %2 : tensor<3x14x14xf16>
        %cast_50 = tensor.cast %19 : tensor<f32> to tensor<f32>
        %326 = vector.create_mask %c15, %65, %c4 : vector<3x14x7xi1>
        %alloc_51 = memref.alloc() : memref<3x14x14xi1>
        memref.tensor_store %0, %alloc_51 : memref<3x14x14xi1>
        %327 = index.sizeof
        %328 = math.tanh %13 : tensor<7xf16>
        %329 = index.divu %rank_45, %c3
        %330 = arith.remf %cst, %cst_43 : f32
        %331 = math.ctpop %extracted : i16
        %332 = vector.broadcast %false : i1 to vector<7x7xi1>
        %333 = vector.outerproduct %55, %55, %332 {kind = #vector.kind<add>} : vector<7xi1>, vector<7xi1>
        %334 = arith.minui %c1_i16, %c1_i16 : i16
        %335 = arith.divsi %false, %false : i1
        %336 = vector.create_mask %c2, %c1, %c2 : vector<3x14x14xi1>
        %337 = math.floor %7 : tensor<3x14x7xf32>
        %338 = arith.ceildivsi %c1643693251_i32, %c1812353962_i32 : i32
        %alloc_52 = memref.alloc() : memref<f16>
        memref.tensor_store %22, %alloc_52 : memref<f16>
        %339 = arith.minsi %c579351088_i32, %c1643693251_i32 : i32
        %340 = math.log2 %12 : tensor<3x3xf32>
        %341 = math.tanh %7 : tensor<3x14x7xf32>
        %342 = vector.splat %c4 : vector<3x14x14xindex>
        %343 = memref.load %alloc_17[%c1, %c10, %c5] : memref<3x14x7xf32>
        %alloc_53 = memref.alloc() : memref<7xf16>
        memref.copy %alloc_16, %alloc_53 : memref<7xf16> to memref<7xf16>
        %344 = math.exp %7 : tensor<3x14x7xf32>
        %345 = vector.broadcast %cst_3 : f32 to vector<f32>
        vector.transfer_write %345, %alloc_19[%c13] : vector<f32>, memref<7xf32>
        linalg.yield %out : i16
      } -> tensor<3x14x14xi16>
      %306 = math.sqrt %13 : tensor<7xf16>
      %307 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %25, %27, %25 : vector<3x3xi1>, vector<3x3xi1> into vector<3x3xi1>
      %308 = arith.minsi %c1643693251_i32, %c1643693251_i32 : i32
      %309 = vector.reduction <and>, %49 : vector<3xi16> into i16
      %310 = vector.outerproduct %48, %48, %25 {kind = #vector.kind<maxsi>} : vector<3xi1>, vector<3xi1>
      %311 = arith.muli %c579351088_i32, %c901048850_i32 : i32
      %312 = math.ipowi %44, %0 : tensor<3x14x14xi1>
      %313 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %27, %25, %27 : vector<3x3xi1>, vector<3x3xi1> into vector<3x3xi1>
      %314 = scf.while (%arg0 = %alloc_11) : (memref<3x3xi32>) -> memref<3x3xi32> {
        %317 = vector.broadcast %cst_1 : f32 to vector<7xf32>
        %318 = vector.fma %317, %317, %317 : vector<7xf32>
        %319 = math.log %cst_2 : f32
        %320 = math.ceil %1 : tensor<3x3xf16>
        memref.store %c705075243_i64, %alloc_9[%c1, %c0, %c4] : memref<3x14x7xi64>
        %cast_49 = tensor.cast %15 : tensor<3x3xi32> to tensor<?x?xi32>
        %alloca = memref.alloca() : memref<3x14x7xf32>
        %321 = math.atan2 %cst_4, %cst_4 : f32
        %322 = arith.remf %cst_1, %cst_6 : f32
        scf.condition(%true) %alloc_11 : memref<3x3xi32>
      } do {
      ^bb0(%arg0: memref<3x3xi32>):
        %317 = arith.andi %c1_i16, %c1_i16 : i16
        %cast_49 = tensor.cast %11 : tensor<7xi32> to tensor<?xi32>
        %318 = math.ipowi %11, %18 : tensor<7xi32>
        %319 = arith.muli %c1643693251_i32, %c901048850_i32 : i32
        %320 = vector.broadcast %in : i16 to vector<14x14xi16>
        %321 = vector.transfer_write %320, %17[%c7, %c6, %c5] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<14x14xi16>, tensor<3x14x14xi16>
        %322 = index.divs %c8, %c14
        %323 = vector.broadcast %c1628282844_i32 : i32 to vector<14xi32>
        vector.transfer_write %323, %alloc_7[%c12, %c15] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<14xi32>, memref<3x3xi32>
        %324 = vector.broadcast %false : i1 to vector<14xi1>
        %325 = vector.maskedload %291[%c1, %c0], %324, %323 : memref<3x3xi32>, vector<14xi1>, vector<14xi32> into vector<14xi32>
        %326 = math.floor %12 : tensor<3x3xf32>
        %327 = math.atan %cst_5 : f16
        %328 = arith.andi %c901048850_i32, %c1812353962_i32 : i32
        %329 = math.atan2 %51, %7 : tensor<3x14x7xf32>
        %330 = math.atan2 %21, %13 : tensor<7xf16>
        %331 = index.sub %57, %64
        %332 = index.add %c0, %c11
        %333 = index.ceildivs %c6, %c14
        scf.yield %alloc_11 : memref<3x3xi32>
      }
      affine.store %cst_3, %alloc[%c2, %c5, %c13] : memref<3x14x7xf32>
      %315 = index.mul %c11, %c7
      %316 = arith.remsi %c1643693251_i32, %c1643693251_i32 : i32
      %alloc_48 = memref.alloc() : memref<3x14x7xi16>
      memref.copy %alloc_18, %alloc_48 : memref<3x14x7xi16> to memref<3x14x7xi16>
      linalg.yield %out : i16
    } -> tensor<3x14x14xi16>
    %67 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%14 : tensor<3x14x7xi16>) {
    ^bb0(%out: i16):
      %289 = arith.maxsi %c1782730757_i64, %c1782730757_i64 : i64
      %290 = vector.maskedload %alloc_18[%c2, %c1, %c2], %48, %49 : memref<3x14x7xi16>, vector<3xi1>, vector<3xi16> into vector<3xi16>
      %291 = index.divu %63, %c15
      %292 = index.sub %c9, %c7
      %293 = math.cttz %14 : tensor<3x14x7xi16>
      %294 = math.log1p %3 : tensor<7xf16>
      %295 = affine.if affine_set<(d0, d1) : (48 >= 0)>(%c8, %c2) -> f32 {
        %318 = arith.addf %cst_5, %cst_0 : f16
        %319 = affine.apply affine_map<(d0, d1) -> (((-((d1 - d0) * 8 - 30)) ceildiv 16) ceildiv 2)>(%65, %65)
        %320 = arith.ceildivsi %c1643693251_i32, %c579351088_i32 : i32
        %321 = vector.broadcast %false : i1 to vector<7x7xi1>
        %322 = vector.outerproduct %55, %55, %321 {kind = #vector.kind<add>} : vector<7xi1>, vector<7xi1>
        %323 = vector.matrix_multiply %47, %49 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi16>, vector<3xi16>) -> vector<1xi16>
        %324 = math.round %cst_0 : f16
        %325 = math.round %2 : tensor<3x14x14xf16>
        %326 = vector.insertelement %extracted, %323[%c11 : index] : vector<1xi16>
        affine.yield %cst : f32
      } else {
        %318 = math.ceil %22 : tensor<f16>
        %319 = bufferization.to_memref %8 : memref<3x3xi16>
        %320 = arith.addf %cst_3, %cst_4 : f32
        %321 = vector.broadcast %64 : index to vector<7xindex>
        %322 = vector.broadcast %c579351088_i32 : i32 to vector<7xi32>
        vector.scatter %alloc_14[%c5] [%321], %55, %322 : memref<7xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
        %323 = arith.cmpf true, %cst_5, %cst_0 : f16
        %324 = index.sub %c4, %c2
        %325 = memref.realloc %alloc_19 : memref<7xf32> to memref<7xf32>
        %326 = arith.negf %cst_3 : f32
        affine.yield %cst_3 : f32
      }
      %296 = math.tan %cst_3 : f32
      %297 = vector.matrix_multiply %48, %55 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 7 : i32} : (vector<3xi1>, vector<7xi1>) -> vector<21xi1>
      %298 = math.round %7 : tensor<3x14x7xf32>
      %299 = math.rsqrt %cst_5 : f16
      %300 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %49, %47, %extracted : vector<3xi16>, vector<3xi16> into i16
      %301 = scf.execute_region -> vector<3x14x14xi32> {
        %dest_44, %accumulated_value_45 = vector.scan <xor>, %27, %48 {inclusive = false, reduction_dim = 0 : i64} : vector<3x3xi1>, vector<3xi1>
        %318 = index.casts %extracted : i16 to index
        %inserted_46 = tensor.insert %true into %0[%c1, %c7, %c8] : tensor<3x14x14xi1>
        %319 = index.sub %c15, %57
        %320 = tensor.empty() : tensor<3x3xi64>
        %321 = vector.broadcast %cst : f32 to vector<3x14x7xf32>
        %322 = arith.cmpf true, %cst, %cst_3 : f32
        %323 = index.ceildivs %c2, %c5
        %324 = index.ceildivu %318, %c10
        %325 = math.atan %cst_1 : f32
        %326 = bufferization.clone %alloc : memref<3x14x7xf32> to memref<3x14x7xf32>
        %327 = index.add %319, %63
        %328 = math.absi %9 : tensor<3x14x14xi16>
        %c0_i16 = arith.constant 0 : i16
        %329 = vector.transfer_read %8[%c14, %318], %c0_i16 : tensor<3x3xi16>, vector<i16>
        %330 = vector.broadcast %cst_5 : f16 to vector<3x14x7xf16>
        %331 = arith.divsi %c1643693251_i32, %c579351088_i32 : i32
        %332 = vector.broadcast %c1812353962_i32 : i32 to vector<3x14x14xi32>
        scf.yield %332 : vector<3x14x14xi32>
      }
      %302 = arith.divf %cst_6, %cst_2 : f32
      vector.print %55 : vector<7xi1>
      %303 = math.roundeven %23 : tensor<f16>
      %extracted_42 = tensor.extract %5[%c2, %c10, %c3] : tensor<3x14x7xf32>
      %304 = index.maxs %64, %292
      %305 = arith.remsi %c1812353962_i32, %c901048850_i32 : i32
      %splat_43 = tensor.splat %cst_4 : tensor<7xf32>
      %306 = vector.broadcast %cst_5 : f16 to vector<f16>
      %307 = vector.transfer_write %306, %3[%c2] : vector<f16>, tensor<7xf16>
      %308 = math.round %12 : tensor<3x3xf32>
      %309 = arith.floordivsi %c800218915_i64, %c1782730757_i64 : i64
      %310 = math.sqrt %3 : tensor<7xf16>
      %311 = math.copysign %cst_4, %cst_1 : f32
      %312 = index.casts %c3 : index to i32
      %c1948872987_i32 = arith.constant 1948872987 : i32
      %313 = arith.muli %c1_i16, %extracted : i16
      %314 = affine.if affine_set<(d0, d1, d2) : (d1 == 0)>(%c8, %c14, %c8) -> f16 {
        %318 = vector.insertelement %c1643693251_i32, %30[] : vector<i32>
        %319 = bufferization.to_memref %splat_43 : memref<7xf32>
        %320 = arith.divsi %c1643693251_i32, %c901048850_i32 : i32
        %321 = memref.realloc %alloc_19 : memref<7xf32> to memref<7xf32>
        %322 = arith.divsi %c1812353962_i32, %c1812353962_i32 : i32
        %323 = arith.minf %cst_3, %cst_4 : f32
        %324 = arith.cmpi ugt, %c579351088_i32, %c1643693251_i32 : i32
        %c-13546_i16 = arith.constant -13546 : i16
        affine.yield %cst_0 : f16
      } else {
        %318 = math.log10 %13 : tensor<7xf16>
        %319 = math.rsqrt %cst_1 : f32
        %320 = memref.realloc %alloc_19 : memref<7xf32> to memref<14xf32>
        %321 = tensor.empty() : tensor<3x3xf16>
        %322 = vector.bitcast %20 : vector<7xi16> to vector<7xi16>
        %323 = index.divu %292, %57
        %324 = index.sizeof
        %325 = math.round %reduced : tensor<f32>
        affine.yield %cst_0 : f16
      }
      %315 = vector.matrix_multiply %55, %297 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 3 : i32} : (vector<7xi1>, vector<21xi1>) -> vector<3xi1>
      %316 = math.roundeven %2 : tensor<3x14x14xf16>
      %317 = math.tan %cst_0 : f16
      linalg.yield %out : i16
    } -> tensor<3x14x7xi16>
    %68 = arith.minsi %c705075243_i64, %c800218915_i64 : i64
    %69 = index.maxu %c5, %c3
    %70 = math.ctlz %c705075243_i64 : i64
    %alloc_23 = memref.alloc() : memref<3x14x14xi32>
    %71 = vector.broadcast %c8 : index to vector<7xindex>
    %72 = vector.broadcast %c1628282844_i32 : i32 to vector<7xi32>
    vector.scatter %alloc_14[%c1] [%71], %55, %72 : memref<7xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
    %73 = arith.addi %c705075243_i64, %c705075243_i64 : i64
    %74 = arith.remf %cst_2, %cst_3 : f32
    %75 = math.fma %cst_6, %cst_6, %cst_6 : f32
    %76 = arith.divf %cst_4, %cst_4 : f32
    %cast = tensor.cast %51 : tensor<3x14x7xf32> to tensor<?x?x?xf32>
    %77 = index.mul %c6, %c1
    %alloc_24 = memref.alloc() : memref<3x14x14xi1>
    %78 = vector.broadcast %false : i1 to vector<3x14x14xi1>
    %79 = vector.broadcast %c1643693251_i32 : i32 to vector<3x14x14xi32>
    %80 = vector.gather %alloc_24[%c1, %77, %c6] [%79], %78, %78 : memref<3x14x14xi1>, vector<3x14x14xi32>, vector<3x14x14xi1>, vector<3x14x14xi1> into vector<3x14x14xi1>
    %81 = arith.ceildivsi %c705075243_i64, %c1782730757_i64 : i64
    %82 = index.ceildivu %c2, %c11
    %83 = tensor.empty() : tensor<7xf32>
    %dest, %accumulated_value = vector.scan <minui>, %27, %48 {inclusive = false, reduction_dim = 0 : i64} : vector<3x3xi1>, vector<3xi1>
    %84 = index.casts %c8 : index to i32
    %85 = arith.minf %cst_5, %cst_0 : f16
    %86 = vector.multi_reduction <maxui>, %20, %20 [] : vector<7xi16> to vector<7xi16>
    %87 = memref.alloca_scope  -> (memref<7xi64>) {
      %289 = vector.broadcast %c1_i16 : i16 to vector<3x3xi16>
      %290 = vector.outerproduct %49, %49, %289 {kind = #vector.kind<minui>} : vector<3xi16>, vector<3xi16>
      %291 = vector.matrix_multiply %47, %20 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 7 : i32} : (vector<3xi16>, vector<7xi16>) -> vector<21xi16>
      %292 = math.atan2 %2, %2 : tensor<3x14x14xf16>
      %293 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%0 : tensor<3x14x14xi1>) {
      ^bb0(%out: i1):
        %325 = math.log10 %1 : tensor<3x3xf16>
        %326 = arith.remf %cst_5, %cst_0 : f16
        %327 = arith.minsi %c1_i16, %c1_i16 : i16
        %extracted_45 = tensor.extract %44[%c0, %c12, %c12] : tensor<3x14x14xi1>
        %328 = arith.addi %c1628282844_i32, %c1643693251_i32 : i32
        %329 = vector.load %alloc_15[%c1, %c2] : memref<3x3xf32>, vector<7xf32>
        %cst_46 = arith.constant 4.819200e+04 : f16
        %330 = vector.insert %48, %27 [1] : vector<3xi1> into vector<3x3xi1>
        %331 = vector.load %alloc_7[%c0, %c1] : memref<3x3xi32>, vector<3x14x7xi32>
        %332 = arith.minsi %c1782730757_i64, %c800218915_i64 : i64
        %333 = vector.load %alloc_21[%c1, %c2] : memref<3x3xi64>, vector<3x14x7xi64>
        %334 = vector.bitcast %26 : vector<3x3xi32> to vector<3x3xf32>
        memref.copy %alloc_8, %alloc_12 : memref<3x3xf16> to memref<3x3xf16>
        %335 = index.add %57, %c3
        %336 = affine.load %alloc_18[%c8, %c13, %c0] : memref<3x14x7xi16>
        %337 = math.log1p %5 : tensor<3x14x7xf32>
        %338 = tensor.empty(%77, %335) : tensor<?x?xi32>
        %339 = math.atan %21 : tensor<7xf16>
        %340 = arith.addf %cst_2, %cst_6 : f32
        %alloc_47 = memref.alloc() : memref<7xi16>
        %341 = vector.broadcast %336 : i16 to vector<3x14x14xi16>
        %342 = vector.gather %alloc_47[%c10] [%79], %78, %341 : memref<7xi16>, vector<3x14x14xi32>, vector<3x14x14xi1>, vector<3x14x14xi16> into vector<3x14x14xi16>
        affine.store %cst_2, %alloc_15[%c10, %c15] : memref<3x3xf32>
        %343 = vector.broadcast %335 : index to vector<7xindex>
        %344 = vector.broadcast %c800218915_i64 : i64 to vector<7xi64>
        vector.scatter %alloc_21[%c2, %c0] [%343], %55, %344 : memref<3x3xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
        %345 = vector.broadcast %c1_i16 : i16 to vector<3x3xi16>
        %346 = vector.outerproduct %47, %49, %345 {kind = #vector.kind<maxsi>} : vector<3xi16>, vector<3xi16>
        %347 = arith.addf %cst_1, %cst_1 : f32
        %348 = vector.broadcast %c1812353962_i32 : i32 to vector<14x14xi32>
        %349 = vector.multi_reduction <add>, %79, %348 [0] : vector<3x14x14xi32> to vector<14x14xi32>
        %350 = vector.broadcast %c11 : index to vector<7xindex>
        vector.scatter %alloc_24[%c0, %c9, %c13] [%350], %55, %55 : memref<3x14x14xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
        %351 = math.exp2 %cst_3 : f32
        %352 = vector.gather %alloc_20[%64, %c11] [%79], %80, %78 : memref<3x3xi1>, vector<3x14x14xi32>, vector<3x14x14xi1>, vector<3x14x14xi1> into vector<3x14x14xi1>
        %353 = bufferization.clone %alloc_8 : memref<3x3xf16> to memref<3x3xf16>
        %354 = math.absf %5 : tensor<3x14x7xf32>
        %355 = arith.muli %c1812353962_i32, %c579351088_i32 : i32
        %356 = math.ceil %1 : tensor<3x3xf16>
        linalg.yield %false : i1
      } -> tensor<3x14x14xi1>
      %294 = vector.reduction <minsi>, %291 : vector<21xi16> into i16
      %alloc_42 = memref.alloc() : memref<14xi1>
      %295 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_42 : memref<14xi1>) outs(%0 : tensor<3x14x14xi1>) {
      ^bb0(%in: i1, %out: i1):
        %325 = vector.create_mask %c1, %c9 : vector<3x3xi1>
        %326 = vector.broadcast %cst_0 : f16 to vector<f16>
        %327 = vector.transfer_write %326, %3[%69] : vector<f16>, tensor<7xf16>
        %cast_45 = tensor.cast %23 : tensor<f16> to tensor<f16>
        %328 = bufferization.clone %alloc_14 : memref<7xi32> to memref<7xi32>
        %329 = vector.insert %false, %55 [2] : i1 into vector<7xi1>
        %330 = affine.load %alloc_16[%c2] : memref<7xf16>
        %extracted_46 = tensor.extract %18[%c3] : tensor<7xi32>
        %331 = index.add %c3, %c9
        %332 = math.log1p %cst_0 : f16
        %333 = math.sqrt %5 : tensor<3x14x7xf32>
        %334 = bufferization.to_memref %12 : memref<3x3xf32>
        %335 = math.absf %3 : tensor<7xf16>
        %336 = arith.cmpf olt, %cst, %cst : f32
        %337 = vector.insert %48, %25 [1] : vector<3xi1> into vector<3x3xi1>
        %338 = math.log %cst_1 : f32
        %339 = arith.maxsi %c1628282844_i32, %c901048850_i32 : i32
        %340 = arith.minui %c1643693251_i32, %extracted_46 : i32
        %341 = arith.muli %false, %out : i1
        %cst_47 = arith.constant 1.58688896E+9 : f32
        %342 = arith.cmpi ule, %c705075243_i64, %c800218915_i64 : i64
        %alloc_48 = memref.alloc() : memref<3x3xi16>
        %343 = affine.apply affine_map<(d0, d1) -> (d0)>(%65, %c3)
        %344 = math.absi %c1782730757_i64 : i64
        %345 = arith.andi %extracted_46, %c1812353962_i32 : i32
        %346 = arith.maxsi %extracted, %extracted : i16
        %347 = vector.broadcast %65 : index to vector<3xindex>
        %348 = vector.broadcast %c1782730757_i64 : i64 to vector<3xi64>
        vector.scatter %alloc_21[%c2, %c2] [%347], %48, %348 : memref<3x3xi64>, vector<3xindex>, vector<3xi1>, vector<3xi64>
        %349 = vector.create_mask %c13, %c5, %77 : vector<3x14x14xi1>
        %350 = math.exp2 %19 : tensor<f32>
        %351 = math.rsqrt %1 : tensor<3x3xf16>
        %352 = arith.minui %out, %out : i1
        %353 = arith.floordivsi %c579351088_i32, %c579351088_i32 : i32
        %354 = index.add %c7, %69
        linalg.yield %true : i1
      } -> tensor<3x14x14xi1>
      %296 = arith.minui %c901048850_i32, %c1643693251_i32 : i32
      %297 = vector.broadcast %77 : index to vector<14xindex>
      %298 = vector.broadcast %false : i1 to vector<14xi1>
      %299 = vector.broadcast %cst_6 : f32 to vector<14xf32>
      vector.scatter %alloc[%c1, %c8, %c1] [%297], %298, %299 : memref<3x14x7xf32>, vector<14xindex>, vector<14xi1>, vector<14xf32>
      %300 = math.tan %reduced : tensor<f32>
      %301 = math.rsqrt %7 : tensor<3x14x7xf32>
      %302 = math.fpowi %21, %18 : tensor<7xf16>, tensor<7xi32>
      %303 = arith.muli %c901048850_i32, %c1812353962_i32 : i32
      %304 = vector.broadcast %c705075243_i64 : i64 to vector<3x3xi64>
      %305 = vector.gather %alloc_9[%c14, %82, %c9] [%26], %25, %304 : memref<3x14x7xi64>, vector<3x3xi32>, vector<3x3xi1>, vector<3x3xi64> into vector<3x3xi64>
      %306 = scf.while (%arg0 = %alloc_24) : (memref<3x14x14xi1>) -> memref<3x14x14xi1> {
        %325 = math.roundeven %7 : tensor<3x14x7xf32>
        %alloc_45 = memref.alloc() : memref<7xi1>
        %326 = index.maxs %c2, %c8
        %327 = vector.broadcast %extracted : i16 to vector<7x7xi16>
        %328 = vector.outerproduct %20, %20, %327 {kind = #vector.kind<xor>} : vector<7xi16>, vector<7xi16>
        %cst_46 = arith.constant 1.000000e+00 : f16
        %cst_47 = arith.constant 0.000000e+00 : f16
        %329 = vector.transfer_read %1[%c8, %c11], %cst_47 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<3x3xf16>, vector<14xf16>
        %330 = memref.realloc %alloc_14 : memref<7xi32> to memref<14xi32>
        %dest_48, %accumulated_value_49 = vector.scan <minui>, %27, %48 {inclusive = true, reduction_dim = 1 : i64} : vector<3x3xi1>, vector<3xi1>
        %331 = vector.splat %cst_0 : vector<3x14x14xf16>
        scf.condition(%false) %arg0 : memref<3x14x14xi1>
      } do {
      ^bb0(%arg0: memref<3x14x14xi1>):
        %cast_45 = tensor.cast %2 : tensor<3x14x14xf16> to tensor<?x?x?xf16>
        affine.store %cst_0, %alloc_16[%c1] : memref<7xf16>
        %325 = math.cos %5 : tensor<3x14x7xf32>
        %326 = math.ctpop %c1812353962_i32 : i32
        %327 = arith.divf %cst_6, %cst_4 : f32
        %328 = math.atan %21 : tensor<7xf16>
        %329 = math.log10 %cst_5 : f16
        %330 = tensor.empty() : tensor<3x14x7xi32>
        %331 = math.fpowi %7, %330 : tensor<3x14x7xf32>, tensor<3x14x7xi32>
        %332 = math.log2 %19 : tensor<f32>
        %333 = arith.maxui %c1812353962_i32, %c1628282844_i32 : i32
        %334 = arith.remui %c579351088_i32, %c901048850_i32 : i32
        %335 = math.cttz %330 : tensor<3x14x7xi32>
        %336 = math.atan2 %5, %51 : tensor<3x14x7xf32>
        %337 = math.ctpop %6 : tensor<3x3xi1>
        %338 = vector.bitcast %78 : vector<3x14x14xi1> to vector<3x14x14xi1>
        %339 = arith.minui %c1782730757_i64, %c705075243_i64 : i64
        scf.yield %arg0 : memref<3x14x14xi1>
      }
      %307 = math.atan %19 : tensor<f32>
      %308 = arith.andi %c1812353962_i32, %c1643693251_i32 : i32
      %309 = tensor.empty(%c1, %c10, %c14) : tensor<?x?x?xi1>
      %310 = scf.while (%arg0 = %cst_1) : (f32) -> f32 {
        %325 = arith.maxui %extracted, %c1_i16 : i16
        %326 = arith.remf %cst_1, %cst_1 : f32
        vector.print %304 : vector<3x3xi64>
        %327 = math.cttz %true : i1
        %328 = vector.bitcast %47 : vector<3xi16> to vector<3xi16>
        %329 = math.ctlz %c1643693251_i32 : i32
        %330 = arith.divui %false, %false : i1
        %331 = tensor.empty() : tensor<7xi64>
        %332 = vector.broadcast %c705075243_i64 : i64 to vector<7xi64>
        %333 = vector.broadcast %c1643693251_i32 : i32 to vector<7xi32>
        %334 = vector.gather %331[%c0] [%333], %55, %332 : tensor<7xi64>, vector<7xi32>, vector<7xi1>, vector<7xi64> into vector<7xi64>
        scf.condition(%false) %cst_3 : f32
      } do {
      ^bb0(%arg0: f32):
        %325 = vector.splat %77 : vector<3x3xindex>
        %326 = index.divs %63, %64
        %327 = affine.load %alloc_12[%c10, %c15] : memref<3x3xf16>
        %328 = math.tan %5 : tensor<3x14x7xf32>
        %c1542752381_i32 = arith.constant 1542752381 : i32
        %from_elements = tensor.from_elements %c901048850_i32, %c579351088_i32, %c1643693251_i32, %c1628282844_i32, %c1628282844_i32, %c1628282844_i32, %c1643693251_i32, %c1812353962_i32, %c579351088_i32, %c1812353962_i32, %c579351088_i32, %c901048850_i32, %c579351088_i32, %c1643693251_i32, %c579351088_i32, %c901048850_i32, %c1643693251_i32, %c1643693251_i32, %c1812353962_i32, %c1643693251_i32, %c1812353962_i32, %c1643693251_i32, %c901048850_i32, %c579351088_i32, %c579351088_i32, %c1643693251_i32, %c1812353962_i32, %c1628282844_i32, %c579351088_i32, %c1643693251_i32, %c1812353962_i32, %c579351088_i32, %c1812353962_i32, %c1643693251_i32, %c1628282844_i32, %c901048850_i32, %c579351088_i32, %c1628282844_i32, %c1643693251_i32, %c579351088_i32, %c1628282844_i32, %c579351088_i32, %c1812353962_i32, %c1628282844_i32, %c579351088_i32, %c579351088_i32, %c901048850_i32, %c1643693251_i32, %c1812353962_i32, %c579351088_i32, %c1628282844_i32, %c1812353962_i32, %c1812353962_i32, %c1643693251_i32, %c1628282844_i32, %c901048850_i32, %c1643693251_i32, %c1628282844_i32, %c1812353962_i32, %c1628282844_i32, %c579351088_i32, %c1628282844_i32, %c579351088_i32, %c1643693251_i32, %c579351088_i32, %c1628282844_i32, %c901048850_i32, %c901048850_i32, %c1628282844_i32, %c1812353962_i32, %c1628282844_i32, %c901048850_i32, %c1812353962_i32, %c1643693251_i32, %c1812353962_i32, %c1628282844_i32, %c1812353962_i32, %c1812353962_i32, %c1812353962_i32, %c1628282844_i32, %c1643693251_i32, %c579351088_i32, %c1628282844_i32, %c1643693251_i32, %c901048850_i32, %c901048850_i32, %c1812353962_i32, %c901048850_i32, %c901048850_i32, %c901048850_i32, %c579351088_i32, %c579351088_i32, %c579351088_i32, %c1812353962_i32, %c579351088_i32, %c1643693251_i32, %c901048850_i32, %c1812353962_i32, %c1628282844_i32, %c579351088_i32, %c1628282844_i32, %c579351088_i32, %c1812353962_i32, %c1812353962_i32, %c901048850_i32, %c1643693251_i32, %c1812353962_i32, %c579351088_i32, %c579351088_i32, %c579351088_i32, %c901048850_i32, %c1643693251_i32, %c901048850_i32, %c1628282844_i32, %c1628282844_i32, %c579351088_i32, %c579351088_i32, %c901048850_i32, %c1643693251_i32, %c579351088_i32, %c1812353962_i32, %c901048850_i32, %c901048850_i32, %c1643693251_i32, %c901048850_i32, %c901048850_i32, %c1643693251_i32, %c1643693251_i32, %c901048850_i32, %c1812353962_i32, %c901048850_i32, %c1628282844_i32, %c1812353962_i32, %c901048850_i32, %c1628282844_i32, %c579351088_i32, %c579351088_i32, %c901048850_i32, %c1643693251_i32, %c901048850_i32, %c1628282844_i32, %c1812353962_i32, %c1628282844_i32, %c901048850_i32, %c901048850_i32, %c1643693251_i32, %c579351088_i32, %c1812353962_i32, %c1643693251_i32, %c579351088_i32, %c579351088_i32, %c1643693251_i32, %c579351088_i32, %c1643693251_i32, %c1628282844_i32, %c579351088_i32, %c579351088_i32, %c1628282844_i32, %c1812353962_i32, %c1628282844_i32, %c901048850_i32, %c1628282844_i32, %c1643693251_i32, %c1628282844_i32, %c901048850_i32, %c901048850_i32, %c579351088_i32, %c1812353962_i32, %c1643693251_i32, %c579351088_i32, %c1643693251_i32, %c901048850_i32, %c1628282844_i32, %c1628282844_i32, %c1643693251_i32, %c901048850_i32, %c1628282844_i32, %c1628282844_i32, %c579351088_i32, %c1812353962_i32, %c1643693251_i32, %c1812353962_i32, %c1628282844_i32, %c1628282844_i32, %c1643693251_i32, %c1812353962_i32, %c901048850_i32, %c579351088_i32, %c579351088_i32, %c1643693251_i32, %c579351088_i32, %c1628282844_i32, %c1628282844_i32, %c901048850_i32, %c579351088_i32, %c1628282844_i32, %c1643693251_i32, %c901048850_i32, %c1643693251_i32, %c1643693251_i32, %c1643693251_i32, %c1628282844_i32, %c1628282844_i32, %c901048850_i32, %c1643693251_i32, %c579351088_i32, %c579351088_i32, %c901048850_i32, %c901048850_i32, %c1812353962_i32, %c901048850_i32, %c1812353962_i32, %c579351088_i32, %c901048850_i32, %c1628282844_i32, %c1628282844_i32, %c1628282844_i32, %c901048850_i32, %c1628282844_i32, %c579351088_i32, %c579351088_i32, %c1628282844_i32, %c1643693251_i32, %c901048850_i32, %c1628282844_i32, %c579351088_i32, %c1643693251_i32, %c1628282844_i32, %c901048850_i32, %c901048850_i32, %c901048850_i32, %c1812353962_i32, %c1812353962_i32, %c579351088_i32, %c1812353962_i32, %c1812353962_i32, %c1812353962_i32, %c1812353962_i32, %c1812353962_i32, %c1628282844_i32, %c1643693251_i32, %c1628282844_i32, %c1628282844_i32, %c1643693251_i32, %c579351088_i32, %c1628282844_i32, %c579351088_i32, %c1628282844_i32, %c1628282844_i32, %c1812353962_i32, %c579351088_i32, %c1643693251_i32, %c1643693251_i32, %c1628282844_i32, %c1643693251_i32, %c1628282844_i32, %c1628282844_i32, %c901048850_i32, %c579351088_i32, %c901048850_i32, %c1628282844_i32, %c1628282844_i32, %c901048850_i32, %c1628282844_i32, %c901048850_i32, %c1643693251_i32, %c1643693251_i32, %c1812353962_i32, %c1643693251_i32, %c901048850_i32, %c1812353962_i32, %c1812353962_i32, %c1812353962_i32, %c1812353962_i32, %c1812353962_i32, %c1628282844_i32, %c901048850_i32, %c579351088_i32, %c579351088_i32, %c1812353962_i32, %c901048850_i32, %c1643693251_i32, %c579351088_i32, %c1812353962_i32, %c1628282844_i32, %c901048850_i32, %c1812353962_i32, %c1812353962_i32, %c901048850_i32, %c1628282844_i32, %c1643693251_i32, %c1643693251_i32, %c1812353962_i32, %c579351088_i32, %c1643693251_i32, %c901048850_i32, %c901048850_i32, %c579351088_i32, %c1643693251_i32, %c579351088_i32, %c579351088_i32, %c901048850_i32, %c901048850_i32, %c1643693251_i32, %c1628282844_i32, %c1812353962_i32, %c579351088_i32, %c579351088_i32, %c1628282844_i32, %c579351088_i32, %c1643693251_i32, %c1643693251_i32, %c1628282844_i32, %c1628282844_i32, %c901048850_i32, %c1812353962_i32, %c1812353962_i32, %c579351088_i32, %c579351088_i32, %c1643693251_i32, %c579351088_i32, %c1628282844_i32, %c1812353962_i32, %c901048850_i32, %c1812353962_i32, %c1812353962_i32, %c579351088_i32, %c579351088_i32, %c1628282844_i32, %c1628282844_i32, %c579351088_i32, %c579351088_i32, %c1628282844_i32, %c1628282844_i32, %c1643693251_i32, %c579351088_i32, %c901048850_i32, %c1812353962_i32, %c1643693251_i32, %c1643693251_i32, %c1812353962_i32, %c579351088_i32, %c1628282844_i32, %c1628282844_i32, %c579351088_i32, %c1812353962_i32, %c1628282844_i32, %c1812353962_i32, %c579351088_i32, %c579351088_i32, %c579351088_i32, %c579351088_i32, %c579351088_i32, %c901048850_i32, %c901048850_i32, %c1812353962_i32, %c901048850_i32, %c1628282844_i32, %c901048850_i32, %c901048850_i32, %c1628282844_i32, %c901048850_i32, %c1812353962_i32, %c579351088_i32, %c579351088_i32, %c901048850_i32, %c1812353962_i32, %c1643693251_i32, %c901048850_i32, %c1643693251_i32, %c1812353962_i32, %c1812353962_i32, %c1812353962_i32, %c901048850_i32, %c901048850_i32, %c901048850_i32, %c1628282844_i32, %c1628282844_i32, %c579351088_i32, %c1628282844_i32, %c1628282844_i32, %c1812353962_i32, %c901048850_i32, %c901048850_i32, %c579351088_i32, %c1812353962_i32, %c1812353962_i32, %c1628282844_i32, %c1812353962_i32, %c579351088_i32, %c901048850_i32, %c1812353962_i32, %c579351088_i32, %c1643693251_i32, %c1628282844_i32, %c1628282844_i32, %c579351088_i32, %c1812353962_i32, %c1643693251_i32, %c579351088_i32, %c901048850_i32, %c901048850_i32, %c1643693251_i32, %c901048850_i32, %c1812353962_i32, %c901048850_i32, %c1812353962_i32, %c579351088_i32, %c1628282844_i32, %c1643693251_i32, %c1643693251_i32, %c901048850_i32, %c1643693251_i32, %c579351088_i32, %c579351088_i32, %c1812353962_i32, %c1628282844_i32, %c1812353962_i32, %c1643693251_i32, %c1643693251_i32, %c1643693251_i32, %c1812353962_i32, %c1812353962_i32, %c1812353962_i32, %c579351088_i32, %c1643693251_i32, %c901048850_i32, %c1628282844_i32, %c579351088_i32, %c579351088_i32, %c1628282844_i32, %c1812353962_i32, %c901048850_i32, %c901048850_i32, %c579351088_i32, %c579351088_i32, %c1643693251_i32, %c1812353962_i32, %c579351088_i32, %c579351088_i32, %c1812353962_i32, %c1628282844_i32, %c579351088_i32, %c1628282844_i32, %c1643693251_i32, %c1812353962_i32, %c1643693251_i32, %c579351088_i32, %c1812353962_i32, %c901048850_i32, %c579351088_i32, %c1812353962_i32, %c901048850_i32, %c1643693251_i32, %c1628282844_i32, %c901048850_i32, %c1643693251_i32, %c1812353962_i32, %c1812353962_i32, %c579351088_i32, %c901048850_i32, %c1812353962_i32, %c1812353962_i32, %c579351088_i32, %c901048850_i32, %c1643693251_i32, %c901048850_i32, %c1643693251_i32, %c579351088_i32, %c1812353962_i32, %c1812353962_i32, %c1812353962_i32, %c1812353962_i32, %c579351088_i32, %c901048850_i32, %c1628282844_i32, %c1643693251_i32, %c1643693251_i32, %c901048850_i32, %c1643693251_i32, %c1628282844_i32, %c901048850_i32, %c579351088_i32, %c901048850_i32, %c1812353962_i32, %c1628282844_i32, %c1628282844_i32, %c1812353962_i32, %c1643693251_i32, %c901048850_i32, %c1812353962_i32, %c1812353962_i32, %c1643693251_i32, %c901048850_i32, %c1628282844_i32, %c1643693251_i32, %c579351088_i32, %c1812353962_i32, %c901048850_i32, %c1643693251_i32, %c1643693251_i32, %c1628282844_i32, %c1812353962_i32, %c579351088_i32, %c1643693251_i32, %c579351088_i32, %c1628282844_i32, %c1643693251_i32, %c1628282844_i32, %c1628282844_i32, %c1643693251_i32, %c1643693251_i32, %c1812353962_i32, %c1628282844_i32, %c901048850_i32, %c1643693251_i32, %c579351088_i32, %c579351088_i32, %c1812353962_i32, %c579351088_i32, %c579351088_i32, %c1628282844_i32, %c1812353962_i32, %c901048850_i32, %c1628282844_i32, %c1812353962_i32, %c1812353962_i32, %c1628282844_i32, %c1643693251_i32, %c1812353962_i32, %c1643693251_i32, %c1812353962_i32, %c1643693251_i32, %c1628282844_i32, %c1812353962_i32, %c901048850_i32, %c579351088_i32, %c901048850_i32, %c1628282844_i32, %c901048850_i32, %c1643693251_i32, %c1628282844_i32, %c1628282844_i32, %c1812353962_i32, %c1628282844_i32, %c1628282844_i32, %c1643693251_i32, %c1643693251_i32, %c1643693251_i32, %c1812353962_i32, %c1643693251_i32, %c901048850_i32, %c1628282844_i32, %c901048850_i32, %c1812353962_i32, %c1643693251_i32, %c579351088_i32, %c579351088_i32, %c1643693251_i32, %c901048850_i32, %c901048850_i32, %c1812353962_i32, %c1643693251_i32, %c901048850_i32, %c1628282844_i32, %c1643693251_i32, %c1628282844_i32, %c1628282844_i32, %c1643693251_i32, %c1628282844_i32, %c1628282844_i32, %c901048850_i32, %c1812353962_i32, %c1643693251_i32, %c901048850_i32, %c901048850_i32, %c1812353962_i32, %c1628282844_i32, %c1643693251_i32, %c1628282844_i32, %c1643693251_i32, %c901048850_i32, %c1628282844_i32, %c1812353962_i32, %c1812353962_i32, %c1628282844_i32, %c579351088_i32, %c1643693251_i32 : tensor<3x14x14xi32>
        %329 = math.sqrt %cst : f32
        %splat_45 = tensor.splat %c579351088_i32 : tensor<3x3xi32>
        %330 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %55, %55, %false : vector<7xi1>, vector<7xi1> into i1
        %331 = index.sizeof
        %332 = math.expm1 %23 : tensor<f16>
        affine.store %327, %alloc_8[%c4, %c1] : memref<3x3xf16>
        %333 = vector.broadcast %true : i1 to vector<7x7xi1>
        %334 = vector.outerproduct %55, %55, %333 {kind = #vector.kind<minsi>} : vector<7xi1>, vector<7xi1>
        %335 = arith.muli %c1643693251_i32, %c901048850_i32 : i32
        %336 = math.ctpop %8 : tensor<3x3xi16>
        %337 = arith.shli %c1628282844_i32, %c579351088_i32 : i32
        scf.yield %cst_4 : f32
      }
      %311 = index.divs %c2, %57
      %312 = tensor.empty() : tensor<14x3xi16>
      %313 = tensor.empty() : tensor<14x14x3xi16>
      %314 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%312, %313, %313 : tensor<14x3xi16>, tensor<14x14x3xi16>, tensor<14x14x3xi16>) outs(%9 : tensor<3x14x14xi16>) {
      ^bb0(%in: i16, %in_45: i16, %in_46: i16, %out: i16):
        %325 = math.rsqrt %1 : tensor<3x3xf16>
        %326 = arith.divui %c705075243_i64, %c1782730757_i64 : i64
        %327 = arith.divui %false, %false : i1
        %328 = arith.negf %cst_5 : f16
        %329 = bufferization.clone %alloc_18 : memref<3x14x7xi16> to memref<3x14x7xi16>
        %330 = arith.xori %c705075243_i64, %c1782730757_i64 : i64
        %331 = vector.broadcast %c6 : index to vector<3xindex>
        %332 = vector.broadcast %cst_5 : f16 to vector<3xf16>
        vector.scatter %alloc_8[%c0, %c2] [%331], %48, %332 : memref<3x3xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
        %333 = math.log2 %12 : tensor<3x3xf32>
        %334 = math.cttz %11 : tensor<7xi32>
        %335 = index.sizeof
        %336 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %27, %80, %80 : vector<3x3xi1>, vector<3x14x14xi1> into vector<3x14x14xi1>
        %337 = memref.realloc %alloc_14 : memref<7xi32> to memref<3xi32>
        %alloc_47 = memref.alloc() : memref<3x14x7xf32>
        %338 = math.tan %51 : tensor<3x14x7xf32>
        %339 = bufferization.to_memref %23 : memref<f16>
        %cast_48 = tensor.cast %10 : tensor<3x14x7xi64> to tensor<?x?x?xi64>
        %340 = bufferization.clone %alloc_17 : memref<3x14x7xf32> to memref<3x14x7xf32>
        %341 = math.cttz %10 : tensor<3x14x7xi64>
        %342 = index.divs %c14, %69
        %collapsed_49 = tensor.collapse_shape %6 [[0, 1]] : tensor<3x3xi1> into tensor<9xi1>
        %343 = arith.minsi %c705075243_i64, %c800218915_i64 : i64
        %extracted_50 = tensor.extract %51[%c0, %c0, %c3] : tensor<3x14x7xf32>
        %344 = index.sub %c5, %63
        %345 = vector.matrix_multiply %55, %55 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi1>, vector<7xi1>) -> vector<1xi1>
        %346 = memref.atomic_rmw muli %c705075243_i64, %alloc_21[%c0, %c0] : (i64, memref<3x3xi64>) -> i64
        %347 = vector.broadcast %false : i1 to vector<i1>
        %348 = vector.transfer_write %347, %6[%335, %c11] : vector<i1>, tensor<3x3xi1>
        %349 = vector.load %alloc_8[%c1, %c0] : memref<3x3xf16>, vector<3x14x7xf16>
        %350 = math.ipowi %0, %0 : tensor<3x14x14xi1>
        %351 = math.log2 %13 : tensor<7xf16>
        %352 = index.casts %c5 : index to i32
        %353 = arith.remsi %c901048850_i32, %c1628282844_i32 : i32
        %354 = index.ceildivu %82, %344
        linalg.yield %c1_i16 : i16
      } -> tensor<3x14x14xi16>
      %collapsed = tensor.collapse_shape %8 [[0, 1]] : tensor<3x3xi16> into tensor<9xi16>
      %315 = vector.broadcast %c5 : index to vector<3xindex>
      %316 = vector.broadcast %cst_0 : f16 to vector<3xf16>
      vector.scatter %alloc_10[%c1, %c2] [%315], %48, %316 : memref<3x3xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
      memref.copy %alloc_11, %alloc_7 : memref<3x3xi32> to memref<3x3xi32>
      %317 = math.round %cst_4 : f32
      %318 = math.cttz %14 : tensor<3x14x7xi16>
      %319 = math.tan %7 : tensor<3x14x7xf32>
      %320 = arith.maxsi %c800218915_i64, %c705075243_i64 : i64
      %alloc_43 = memref.alloc() : memref<7xi64>
      %321 = index.divu %c11, %c14
      %322 = index.ceildivs %c2, %311
      %323 = index.divs %c1, %321
      %324 = math.floor %1 : tensor<3x3xf16>
      %alloc_44 = memref.alloc() : memref<7xi64>
      memref.alloca_scope.return %alloc_44 : memref<7xi64>
    }
    %88 = affine.load %alloc_17[%c7, %c11, %c10] : memref<3x14x7xf32>
    %89 = vector.broadcast %c579351088_i32 : i32 to vector<14x14xi32>
    %90 = vector.insert %89, %79 [0] : vector<14x14xi32> into vector<3x14x14xi32>
    %91 = bufferization.clone %alloc_15 : memref<3x3xf32> to memref<3x3xf32>
    %92 = math.cttz %17 : tensor<3x14x14xi16>
    %93 = arith.xori %c1812353962_i32, %c1628282844_i32 : i32
    %94 = index.sizeof
    %alloc_25 = memref.alloc() : memref<3x3xi1>
    %95 = index.add %c15, %c2
    %96 = memref.load %alloc_16[%c0] : memref<7xf16>
    %97 = arith.remf %cst_2, %cst_1 : f32
    %98 = math.atan2 %cst_4, %cst_1 : f32
    %99 = math.sqrt %88 : f32
    %100 = index.casts %c14 : index to i32
    %101 = vector.broadcast %cst_0 : f16 to vector<3xf16>
    %102 = vector.maskedload %alloc_16[%c5], %48, %101 : memref<7xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
    %103 = math.roundeven %cst_2 : f32
    %104 = vector.broadcast %extracted : i16 to vector<3x3xi16>
    %105 = vector.outerproduct %47, %49, %104 {kind = #vector.kind<add>} : vector<3xi16>, vector<3xi16>
    %106 = memref.alloca_scope  -> (i64) {
      %289 = bufferization.to_tensor %alloc_18 : memref<3x14x7xi16>
      %290 = math.expm1 %13 : tensor<7xf16>
      %291 = vector.bitcast %78 : vector<3x14x14xi1> to vector<3x14x14xi1>
      %292 = affine.max affine_map<(d0, d1) -> ((d0 - 4) mod 64 - (d0 + 132), d0 ceildiv 8, d0 ceildiv 8)>(%c13, %c11)
      %293 = math.exp %22 : tensor<f16>
      %alloc_42 = memref.alloc() : memref<7xf32>
      memref.copy %alloc_19, %alloc_42 : memref<7xf32> to memref<7xf32>
      %294 = index.castu %c1782730757_i64 : i64 to index
      %295 = vector.broadcast %c11 : index to vector<14xindex>
      %296 = vector.broadcast %true : i1 to vector<14xi1>
      %297 = vector.broadcast %c901048850_i32 : i32 to vector<14xi32>
      vector.scatter %alloc_14[%c6] [%295], %296, %297 : memref<7xi32>, vector<14xindex>, vector<14xi1>, vector<14xi32>
      %298 = index.mul %c5, %c3
      %collapsed = tensor.collapse_shape %15 [[0, 1]] : tensor<3x3xi32> into tensor<9xi32>
      %299 = bufferization.to_tensor %alloc_10 : memref<3x3xf16>
      %300 = index.sub %c4, %c12
      %301 = index.add %c11, %c7
      %302 = arith.andi %false, %true : i1
      %collapsed_43 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<3x14x7xi16> into tensor<42x7xi16>
      %303 = math.tanh %3 : tensor<7xf16>
      %304 = vector.insertelement %c1_i16, %49[%82 : index] : vector<3xi16>
      %305 = memref.load %alloc_15[%c1, %c0] : memref<3x3xf32>
      %306 = index.casts %c14 : index to i32
      %307 = index.sub %c10, %c11
      %308 = math.log10 %cst_6 : f32
      %309 = math.fpowi %cst_3, %c901048850_i32 : f32, i32
      %from_elements = tensor.from_elements %cst_3, %cst_6, %cst_2, %cst_4, %cst_3, %cst, %cst_1, %88, %cst_3, %cst_6, %cst_2, %88, %cst_4, %cst_4, %cst_2, %cst_3, %cst_1, %cst_3, %cst_3, %88, %cst_3, %cst_6, %88, %cst_1, %cst_3, %cst_3, %cst_1, %cst_3, %cst_2, %cst_6, %cst, %cst_6, %cst, %cst_1, %cst, %cst, %cst_1, %cst, %cst_1, %cst_3, %cst, %cst_6, %cst_2, %cst_6, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_4, %cst_6, %cst_1, %cst_3, %88, %88, %cst_4, %cst_2, %cst_4, %cst_2, %cst_2, %cst, %88, %cst_6, %88, %cst_6, %cst_2, %cst, %cst_2, %cst_2, %cst_4, %cst_4, %cst_6, %cst, %cst_3, %cst, %88, %cst_4, %cst_3, %cst_2, %cst_3, %cst_1, %cst_1, %cst_3, %cst, %88, %cst_3, %cst, %cst_3, %cst_3, %cst_2, %cst_3, %88, %cst, %cst_4, %cst, %cst_6, %88, %cst_4, %cst_3, %cst_4, %cst_3, %88, %cst_4, %cst_3, %cst_1, %cst_2, %cst_1, %cst_6, %cst_3, %cst_6, %cst_1, %cst_4, %cst_4, %88, %cst_3, %cst_6, %cst, %cst_1, %cst_1, %cst_2, %cst, %cst, %cst_4, %cst_4, %cst_2, %cst_3, %cst_2, %cst_2, %cst_2, %cst_1, %cst_3, %cst_4, %cst, %cst_3, %cst, %cst, %88, %cst_3, %cst, %cst_6, %88, %cst_3, %cst_3, %cst_1, %88, %cst_2, %cst, %cst_1, %88, %cst_4, %cst_3, %cst_4, %cst_2, %cst_2, %cst_3, %cst_2, %cst, %cst_6, %cst_3, %cst_2, %cst, %cst, %cst_3, %cst, %cst_2, %cst_2, %cst_2, %cst_4, %88, %88, %cst_4, %cst, %cst_4, %cst_2, %cst_2, %cst_4, %88, %cst_4, %cst_2, %cst_1, %88, %cst_4, %cst_2, %cst_3, %cst_1, %cst_3, %88, %88, %88, %cst_1, %cst, %cst_4, %88, %cst_6, %cst_1, %cst_3, %cst_6, %cst_4, %cst_6, %cst_2, %88, %cst, %cst_2, %cst_1, %88, %cst_2, %cst_1, %cst_1, %cst_6, %cst_4, %cst_6, %cst_6, %cst_1, %cst_4, %88, %cst_3, %cst_6, %cst_3, %cst_2, %cst_1, %cst_6, %cst_4, %cst_4, %cst_1, %cst_3, %cst_6, %cst_2, %cst_4, %cst_6, %cst_3, %88, %cst_6, %cst_3, %88, %cst_3, %cst_3, %cst_6, %cst_2, %cst_3, %cst, %cst_6, %cst, %cst_2, %88, %cst_3, %cst_4, %cst_3, %cst_3, %cst_4, %cst_6, %cst_2, %88, %cst, %cst_3, %cst_2, %cst_2, %cst_2, %cst_4, %88, %cst_6, %88, %cst_2, %88, %cst, %cst_2, %cst, %cst_1, %cst_2, %cst_4, %cst_3, %cst_6, %cst_4, %cst_1, %cst_6, %cst_2, %cst_4, %cst_3, %cst_6, %cst, %cst, %cst, %cst_6, %88, %cst_4, %88, %cst_6, %88, %cst, %cst_6, %cst_2, %cst_3, %cst_3, %cst_2, %cst_6 : tensor<3x14x7xf32>
      %310 = memref.realloc %alloc_16 : memref<7xf16> to memref<7xf16>
      %311 = index.floordivs %65, %c4
      %rank_44 = tensor.rank %3 : tensor<7xf16>
      %cast_45 = tensor.cast %9 : tensor<3x14x14xi16> to tensor<?x?x?xi16>
      %312 = vector.reduction <maxf>, %102 : vector<3xf16> into f16
      %313 = arith.minf %cst_1, %cst_3 : f32
      %314 = math.ctpop %4 : tensor<7xi16>
      vector.print %102 : vector<3xf16>
      %expanded = tensor.expand_shape %12 [[0], [1, 2]] : tensor<3x3xf32> into tensor<3x3x1xf32>
      memref.alloca_scope.return %c800218915_i64 : i64
    }
    %107 = bufferization.clone %alloc_13 : memref<3x14x7xf32> to memref<3x14x7xf32>
    %108 = math.expm1 %12 : tensor<3x3xf32>
    %109 = vector.broadcast %c0 : index to vector<14xindex>
    %110 = vector.broadcast %false : i1 to vector<14xi1>
    %111 = vector.broadcast %cst_4 : f32 to vector<14xf32>
    vector.scatter %91[%c1, %c2] [%109], %110, %111 : memref<3x3xf32>, vector<14xindex>, vector<14xi1>, vector<14xf32>
    %112 = vector.broadcast %cst_5 : f16 to vector<7xf16>
    %113 = vector.maskedload %alloc_10[%c2, %c1], %55, %112 : memref<3x3xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
    %114 = vector.multi_reduction <maxsi>, %78, %80 [] : vector<3x14x14xi1> to vector<3x14x14xi1>
    %115 = math.tan %23 : tensor<f16>
    %116 = index.add %c4, %65
    %117 = arith.maxf %cst_3, %cst_2 : f32
    scf.execute_region {
      %289 = index.ceildivu %63, %c6
      %290 = vector.insertelement %cst_5, %113[%116 : index] : vector<7xf16>
      %291 = index.maxs %c13, %57
      %292 = arith.divf %cst_5, %cst_5 : f16
      %293 = tensor.empty() : tensor<3x3xi1>
      %294 = arith.maxsi %c1812353962_i32, %c579351088_i32 : i32
      %295 = arith.ori %c1812353962_i32, %c1812353962_i32 : i32
      %296 = scf.while (%arg0 = %27) : (vector<3x3xi1>) -> vector<3x3xi1> {
        %305 = index.ceildivu %82, %c8
        %306 = math.floor %7 : tensor<3x14x7xf32>
        %307 = memref.realloc %alloc_14 : memref<7xi32> to memref<14xi32>
        %308 = arith.cmpi ule, %c901048850_i32, %c1628282844_i32 : i32
        %309 = arith.remf %cst_1, %cst_1 : f32
        %alloc_43 = memref.alloc() : memref<7xf32>
        %310 = math.fma %23, %22, %22 : tensor<f16>
        %311 = math.tanh %cst_2 : f32
        scf.condition(%false) %25 : vector<3x3xi1>
      } do {
      ^bb0(%arg0: vector<3x3xi1>):
        %305 = vector.insertelement %c1_i16, %49[%64 : index] : vector<3xi16>
        %306 = index.add %c0, %c12
        %307 = index.sizeof
        %308 = arith.xori %c1643693251_i32, %c901048850_i32 : i32
        %309 = index.ceildivu %77, %65
        %310 = math.tan %7 : tensor<3x14x7xf32>
        %311 = vector.bitcast %55 : vector<7xi1> to vector<7xi1>
        %312 = memref.atomic_rmw andi %c1_i16, %alloc_18[%c2, %c12, %c2] : (i16, memref<3x14x7xi16>) -> i16
        %313 = vector.broadcast %cst_0 : f16 to vector<3x3xf16>
        %314 = vector.outerproduct %102, %101, %313 {kind = #vector.kind<mul>} : vector<3xf16>, vector<3xf16>
        %315 = vector.load %alloc_12[%c1, %c0] : memref<3x3xf16>, vector<3x14x14xf16>
        %316 = index.ceildivs %289, %c10
        %317 = index.ceildivs %c15, %c15
        %318 = arith.cmpi eq, %c1628282844_i32, %c1643693251_i32 : i32
        %319 = arith.addi %c1812353962_i32, %c1628282844_i32 : i32
        %320 = index.ceildivu %94, %64
        %321 = arith.floordivsi %c1_i16, %c1_i16 : i16
        scf.yield %27 : vector<3x3xi1>
      }
      %297 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 + 132)>(%289, %116, %64, %c12)
      %splat_42 = tensor.splat %extracted : tensor<3x14x14xi16>
      %298 = vector.bitcast %48 : vector<3xi1> to vector<3xi1>
      %299 = arith.muli %extracted, %extracted : i16
      %300 = vector.broadcast %cst_0 : f16 to vector<3x3xf16>
      %301 = vector.gather %21[%c13] [%26], %25, %300 : tensor<7xf16>, vector<3x3xi32>, vector<3x3xi1>, vector<3x3xf16> into vector<3x3xf16>
      %302 = index.ceildivs %291, %c5
      %303 = math.floor %22 : tensor<f16>
      %304 = math.floor %5 : tensor<3x14x7xf32>
      scf.yield
    }
    %118 = math.tan %2 : tensor<3x14x14xf16>
    %119 = vector.load %107[%c1, %c8, %c4] : memref<3x14x7xf32>, vector<3x14x7xf32>
    %120 = math.round %7 : tensor<3x14x7xf32>
    %121 = index.ceildivs %94, %c4
    %122 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%17 : tensor<3x14x14xi16>) {
    ^bb0(%out: i16):
      %289 = index.ceildivu %c4, %116
      %290 = arith.cmpf ule, %cst_5, %cst_5 : f16
      %291 = arith.minsi %106, %c800218915_i64 : i64
      %292 = arith.cmpi ule, %true, %true : i1
      %293 = vector.broadcast %c800218915_i64 : i64 to vector<14x14xi64>
      %294 = vector.transfer_write %293, %10[%c4, %289, %c13] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<14x14xi64>, tensor<3x14x7xi64>
      %295 = math.expm1 %1 : tensor<3x3xf16>
      %rank_42 = tensor.rank %12 : tensor<3x3xf32>
      %296 = arith.remsi %c901048850_i32, %c1628282844_i32 : i32
      %297 = math.tanh %3 : tensor<7xf16>
      %splat_43 = tensor.splat %cst : tensor<3x14x14xf32>
      %298 = vector.broadcast %82 : index to vector<3xindex>
      vector.scatter %alloc_8[%c1, %c0] [%298], %48, %101 : memref<3x3xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
      %cast_44 = tensor.cast %51 : tensor<3x14x7xf32> to tensor<?x?x?xf32>
      %299 = vector.broadcast %88 : f32 to vector<3x7xf32>
      %300 = vector.multi_reduction <minf>, %119, %299 [1] : vector<3x14x7xf32> to vector<3x7xf32>
      %301 = math.atan2 %2, %2 : tensor<3x14x14xf16>
      %302 = vector.insertelement %c1_i16, %47[%c3 : index] : vector<3xi16>
      %splat_45 = tensor.splat %cst_0 : tensor<3x14x7xf16>
      %303 = vector.bitcast %113 : vector<7xf16> to vector<7xf16>
      %304 = arith.cmpi ult, %c1782730757_i64, %c800218915_i64 : i64
      %305 = arith.minsi %false, %true : i1
      %306 = arith.divsi %extracted, %out : i16
      %307 = math.ctlz %0 : tensor<3x14x14xi1>
      %308 = vector.multi_reduction <mul>, %112, %cst_5 [0] : vector<7xf16> to f16
      %309 = index.ceildivu %c4, %c8
      %310 = index.mul %c5, %309
      %311 = math.floor %1 : tensor<3x3xf16>
      %312 = memref.realloc %alloc_14 : memref<7xi32> to memref<14xi32>
      %cst_46 = arith.constant 6.035200e+04 : f16
      %313 = math.copysign %splat_43, %splat_43 : tensor<3x14x14xf32>
      %314 = math.tan %7 : tensor<3x14x7xf32>
      %315 = math.tanh %3 : tensor<7xf16>
      %316 = math.log2 %23 : tensor<f16>
      %c17286_i16 = arith.constant 17286 : i16
      linalg.yield %c1_i16 : i16
    } -> tensor<3x14x14xi16>
    %123 = vector.splat %c7 : vector<3x14x14xindex>
    %124 = vector.splat %c4 : vector<3x14x14xindex>
    %125 = affine.load %alloc_24[%c1, %c1, %c8] : memref<3x14x14xi1>
    %126 = arith.maxf %cst_1, %cst_2 : f32
    %127 = arith.addi %c1628282844_i32, %c1628282844_i32 : i32
    %128 = vector.broadcast %extracted : i16 to vector<14xi16>
    vector.transfer_write %128, %alloc_18[%69, %c9, %c7] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<14xi16>, memref<3x14x7xi16>
    %129 = vector.load %87[%c1] : memref<7xi64>, vector<3x14x7xi64>
    %inserted = tensor.insert %c579351088_i32 into %11[%c4] : tensor<7xi32>
    %130 = vector.broadcast %cst_5 : f16 to vector<3x14x14xf16>
    %131 = vector.gather %13[%64] [%79], %80, %130 : tensor<7xf16>, vector<3x14x14xi32>, vector<3x14x14xi1>, vector<3x14x14xf16> into vector<3x14x14xf16>
    %132 = index.mul %c0, %c0
    %133 = math.expm1 %19 : tensor<f32>
    %134 = math.sqrt %cst_6 : f32
    %135 = index.mul %c13, %c7
    %136 = vector.create_mask %69, %c3 : vector<3x3xi1>
    %137 = vector.broadcast %false : i1 to vector<14xi1>
    %138 = vector.insert %137, %78 [0, 9] : vector<14xi1> into vector<3x14x14xi1>
    %139 = scf.execute_region -> tensor<3x14x14xf16> {
      %289 = tensor.empty() : tensor<i32>
      %290 = math.fpowi %19, %289 : tensor<f32>, tensor<i32>
      %291 = index.maxs %77, %c3
      %292 = memref.realloc %87 : memref<7xi64> to memref<3xi64>
      %293 = vector.broadcast %cst_2 : f32 to vector<3xf32>
      %294 = vector.transfer_write %293, %5[%c15, %c13, %c5] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<3xf32>, tensor<3x14x7xf32>
      %295 = vector.insertelement %c579351088_i32, %30[] : vector<i32>
      %296 = index.divs %c15, %c15
      %c1_i16_42 = arith.constant 1 : i16
      %c0_i16 = arith.constant 0 : i16
      %297 = vector.transfer_read %alloc_18[%c6, %c14, %c5], %c0_i16 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : memref<3x14x7xi16>, vector<14xi16>
      %298 = vector.broadcast %106 : i64 to vector<3xi64>
      %299 = vector.maskedload %alloc_9[%c2, %c0, %c1], %48, %298 : memref<3x14x7xi64>, vector<3xi1>, vector<3xi64> into vector<3xi64>
      %300 = index.divs %c3, %94
      %301 = arith.xori %c1_i16_42, %extracted : i16
      %302 = vector.insert %c705075243_i64, %298 [0] : i64 into vector<3xi64>
      %303 = index.divu %c0, %c11
      %304 = affine.apply affine_map<(d0, d1, d2) -> (d0 + d1 + d2 - (d1 + d2 + 2))>(%69, %c3, %303)
      %305 = arith.negf %88 : f32
      %306 = arith.addi %c1_i16_42, %c1_i16 : i16
      %307 = arith.xori %c800218915_i64, %c1782730757_i64 : i64
      scf.yield %2 : tensor<3x14x14xf16>
    }
    %140 = arith.maxf %cst_0, %cst_0 : f16
    %141 = arith.divui %c1_i16, %c1_i16 : i16
    %142 = math.ctpop %9 : tensor<3x14x14xi16>
    %143 = index.divu %c13, %94
    %144 = math.round %2 : tensor<3x14x14xf16>
    %145 = vector.broadcast %cst_5 : f16 to vector<14x14x14x14xf16>
    %146 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %130, %131, %145 : vector<3x14x14xf16>, vector<3x14x14xf16> into vector<14x14x14x14xf16>
    %147 = math.atan %cst_2 : f32
    %148 = math.rsqrt %13 : tensor<7xf16>
    memref.tensor_store %3, %alloc_16 : memref<7xf16>
    %149 = math.tanh %7 : tensor<3x14x7xf32>
    %150 = vector.broadcast %c1643693251_i32 : i32 to vector<3xi32>
    %151 = vector.maskedload %alloc_7[%c2, %c1], %48, %150 : memref<3x3xi32>, vector<3xi1>, vector<3xi32> into vector<3xi32>
    %152 = math.log1p %cst : f32
    %153 = math.rsqrt %3 : tensor<7xf16>
    %154 = index.divu %94, %143
    %155 = arith.xori %c1628282844_i32, %c1628282844_i32 : i32
    %156 = math.round %12 : tensor<3x3xf32>
    %157 = math.log2 %13 : tensor<7xf16>
    %158 = vector.broadcast %c1643693251_i32 : i32 to vector<14xi32>
    %159 = vector.insert %158, %89 [0] : vector<14xi32> into vector<14x14xi32>
    %160 = vector.broadcast %cst_6 : f32 to vector<14xf32>
    %161 = vector.maskedload %alloc_17[%c1, %c4, %c5], %137, %160 : memref<3x14x7xf32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
    %rank = tensor.rank %8 : tensor<3x3xi16>
    %162 = arith.xori %c1628282844_i32, %c1643693251_i32 : i32
    %163 = math.tanh %cst_1 : f32
    memref.alloca_scope  {
      %289 = affine.if affine_set<(d0, d1) : (((-((-d0) floordiv 8)) floordiv 4) * 64 >= 0, -d0 - (-d0 + 64) + 48 >= 0, d0 * 64 - 32 >= 0)>(%c9, %c11) -> memref<3x14x14xi64> {
        %322 = index.ceildivu %77, %63
        %323 = vector.reduction <xor>, %20 : vector<7xi16> into i16
        %324 = arith.muli %c1812353962_i32, %c1643693251_i32 : i32
        %325 = math.roundeven %cst_4 : f32
        bufferization.dealloc_tensor %19 : tensor<f32>
        %326 = vector.create_mask %116, %121 : vector<3x3xi1>
        %327 = tensor.empty(%69, %82) : tensor<3x?x?xf32>
        %328 = index.divs %c10, %c8
        %alloc_44 = memref.alloc() : memref<3x14x14xi64>
        affine.yield %alloc_44 : memref<3x14x14xi64>
      } else {
        %322 = arith.addf %cst_0, %cst_5 : f16
        %323 = bufferization.to_tensor %alloc_19 : memref<7xf32>
        %324 = arith.xori %c1628282844_i32, %c1628282844_i32 : i32
        %325 = index.ceildivu %121, %c7
        %326 = math.log1p %1 : tensor<3x3xf16>
        %327 = bufferization.to_memref %11 : memref<7xi32>
        %328 = math.log %23 : tensor<f16>
        %329 = index.divu %c3, %c9
        %alloc_44 = memref.alloc() : memref<3x14x14xi64>
        affine.yield %alloc_44 : memref<3x14x14xi64>
      }
      %290 = arith.maxui %c901048850_i32, %c579351088_i32 : i32
      %291 = math.copysign %3, %13 : tensor<7xf16>
      %292 = index.add %c10, %c6
      %293 = vector.reduction <minf>, %112 : vector<7xf16> into f16
      %294 = index.sizeof
      %295 = math.sqrt %cst : f32
      %296 = math.floor %2 : tensor<3x14x14xf16>
      %297 = affine.apply affine_map<(d0, d1) -> (((d1 + d0 - 2) floordiv 4) mod 8)>(%132, %294)
      %298 = math.absf %7 : tensor<3x14x7xf32>
      %299 = index.sizeof
      %300 = index.add %c5, %c6
      %301 = vector.multi_reduction <maxui>, %136, %136 [] : vector<3x3xi1> to vector<3x3xi1>
      %expanded = tensor.expand_shape %2 [[0], [1], [2, 3]] : tensor<3x14x14xf16> into tensor<3x14x14x1xf16>
      %302 = math.cttz %4 : tensor<7xi16>
      %303 = math.absi %18 : tensor<7xi32>
      %304 = arith.maxf %cst_1, %cst : f32
      %305 = affine.if affine_set<(d0) : (d0 floordiv 8 >= 0, 32 >= 0, 32 == 0, d0 floordiv 8 == 0)>(%c7) -> memref<3x14x7xf16> {
        memref.tensor_store %14, %alloc_18 : memref<3x14x7xi16>
        memref.copy %91, %alloc_15 : memref<3x3xf32> to memref<3x3xf32>
        %322 = index.add %c2, %c5
        %323 = vector.bitcast %137 : vector<14xi1> to vector<14xi1>
        %324 = index.ceildivu %c10, %294
        %325 = arith.maxf %cst_4, %cst_3 : f32
        %326 = index.casts %c15 : index to i32
        %327 = math.log1p %1 : tensor<3x3xf16>
        %alloc_44 = memref.alloc() : memref<3x14x7xf16>
        affine.yield %alloc_44 : memref<3x14x7xf16>
      } else {
        %322 = affine.load %alloc_12[%c15, %c5] : memref<3x3xf16>
        %323 = math.atan2 %21, %21 : tensor<7xf16>
        %324 = arith.minf %cst_2, %cst_2 : f32
        %325 = vector.insertelement %88, %161[%57 : index] : vector<14xf32>
        %326 = arith.shrsi %c705075243_i64, %c1782730757_i64 : i64
        %327 = math.round %7 : tensor<3x14x7xf32>
        %328 = math.ctpop %4 : tensor<7xi16>
        %329 = affine.max affine_map<(d0, d1, d2) -> (-d1, d1 ceildiv 2, (d0 + d2 ceildiv 16 + 128 - 2) floordiv 8, d0 mod 64 + d1 ceildiv 2)>(%65, %65, %c7)
        %alloc_44 = memref.alloc() : memref<3x14x7xf16>
        affine.yield %alloc_44 : memref<3x14x7xf16>
      }
      %306 = math.tan %12 : tensor<3x3xf32>
      %307 = arith.divf %cst_3, %cst_2 : f32
      %308 = vector.broadcast %125 : i1 to vector<3x14x7xi1>
      %309 = vector.broadcast %c1628282844_i32 : i32 to vector<3x14x7xi32>
      %310 = vector.gather %87[%c13] [%309], %308, %129 : memref<7xi64>, vector<3x14x7xi32>, vector<3x14x7xi1>, vector<3x14x7xi64> into vector<3x14x7xi64>
      %311 = vector.broadcast %88 : f32 to vector<7xf32>
      %312 = vector.fma %311, %311, %311 : vector<7xf32>
      %313 = arith.maxsi %false, %false : i1
      %314 = vector.broadcast %cst_6 : f32 to vector<3x14x14xf32>
      %315 = vector.gather %alloc_19[%c8] [%79], %80, %314 : memref<7xf32>, vector<3x14x14xi32>, vector<3x14x14xi1>, vector<3x14x14xf32> into vector<3x14x14xf32>
      %316 = math.ctpop %15 : tensor<3x3xi32>
      %317 = math.log2 %12 : tensor<3x3xf32>
      %alloc_42 = memref.alloc() : memref<3x14x7xi1>
      %318 = index.ceildivs %65, %c10
      %319 = vector.load %alloc_21[%c2, %c2] : memref<3x3xi64>, vector<3x3xi64>
      %320 = math.absi %17 : tensor<3x14x14xi16>
      %321 = math.log %2 : tensor<3x14x14xf16>
      %splat_43 = tensor.splat %c1628282844_i32 : tensor<7xi32>
    }
    %164 = bufferization.clone %alloc_24 : memref<3x14x14xi1> to memref<3x14x14xi1>
    %165 = vector.broadcast %c13 : index to vector<7xindex>
    %166 = vector.broadcast %88 : f32 to vector<7xf32>
    vector.scatter %alloc_19[%c2] [%165], %55, %166 : memref<7xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
    %cst_26 = arith.constant 1.000000e+00 : f16
    %cst_27 = arith.constant 0.000000e+00 : f16
    %167 = vector.transfer_read %13[%c15], %cst_27 : tensor<7xf16>, vector<f16>
    %168 = index.add %c15, %116
    %169 = math.round %3 : tensor<7xf16>
    %170 = arith.divf %cst_2, %cst_2 : f32
    %171 = index.sizeof
    %172 = arith.maxsi %c901048850_i32, %c1628282844_i32 : i32
    %173 = arith.maxf %cst_1, %cst_3 : f32
    %174 = index.maxs %65, %c8
    %175 = math.atan %3 : tensor<7xf16>
    %176 = scf.execute_region -> index {
      %289 = scf.while (%arg0 = %alloc_19) : (memref<7xf32>) -> memref<7xf32> {
        %alloc_44 = memref.alloc() : memref<7xi16>
        memref.tensor_store %4, %alloc_44 : memref<7xi16>
        %splat_45 = tensor.splat %106 : tensor<3x14x14xi64>
        %304 = affine.max affine_map<(d0, d1) -> (-(d1 - d0))>(%c15, %116)
        %305 = arith.ori %c800218915_i64, %c1782730757_i64 : i64
        %306 = vector.broadcast %116 : index to vector<14xindex>
        vector.scatter %alloc_18[%c2, %c6, %c6] [%306], %137, %128 : memref<3x14x7xi16>, vector<14xindex>, vector<14xi1>, vector<14xi16>
        vector.print %101 : vector<3xf16>
        %inserted_46 = tensor.insert %cst_6 into %7[%c2, %c7, %c2] : tensor<3x14x7xf32>
        %307 = vector.load %alloc_9[%c1, %c10, %c0] : memref<3x14x7xi64>, vector<3x14x7xi64>
        scf.condition(%true) %alloc_19 : memref<7xf32>
      } do {
      ^bb0(%arg0: memref<7xf32>):
        %304 = index.add %143, %94
        %305 = arith.minsi %c1643693251_i32, %c1628282844_i32 : i32
        %306 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%121, %57, %rank, %174)
        %307 = arith.cmpi ult, %extracted, %extracted : i16
        %308 = affine.load %alloc_19[%c13] : memref<7xf32>
        %309 = arith.shrui %c1643693251_i32, %c1628282844_i32 : i32
        %310 = vector.broadcast %c901048850_i32 : i32 to vector<i32>
        %311 = vector.transfer_write %310, %18[%c8] : vector<i32>, tensor<7xi32>
        %312 = bufferization.to_tensor %alloc_10 : memref<3x3xf16>
        %c0_i32 = arith.constant 0 : i32
        %313 = vector.transfer_read %alloc_14[%c4], %c0_i32 : memref<7xi32>, vector<i32>
        %314 = memref.load %alloc_18[%c1, %c1, %c6] : memref<3x14x7xi16>
        %315 = index.maxs %132, %c8
        %316 = arith.xori %c1812353962_i32, %c1628282844_i32 : i32
        %alloc_44 = memref.alloc() : memref<3x3xi32>
        %317 = index.sub %174, %174
        %318 = math.ctpop %10 : tensor<3x14x7xi64>
        %319 = vector.create_mask %94, %c2, %63 : vector<3x14x14xi1>
        scf.yield %alloc_19 : memref<7xf32>
      }
      %290 = index.castu %125 : i1 to index
      %291 = arith.ori %c901048850_i32, %c1812353962_i32 : i32
      %292 = math.log10 %5 : tensor<3x14x7xf32>
      %293 = arith.divsi %c579351088_i32, %c579351088_i32 : i32
      %294 = math.ctpop %false : i1
      %295 = vector.broadcast %c1782730757_i64 : i64 to vector<14x7xi64>
      %296 = vector.multi_reduction <maxui>, %129, %295 [0] : vector<3x14x7xi64> to vector<14x7xi64>
      %297 = math.absi %c1628282844_i32 : i32
      %cast_42 = tensor.cast %11 : tensor<7xi32> to tensor<?xi32>
      %298 = math.fpowi %1, %15 : tensor<3x3xf16>, tensor<3x3xi32>
      %299 = index.casts %c0 : index to i32
      %300 = vector.broadcast %82 : index to vector<3xindex>
      vector.scatter %alloc_8[%c0, %c0] [%300], %48, %101 : memref<3x3xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
      %collapsed = tensor.collapse_shape %7 [[0, 1], [2]] : tensor<3x14x7xf32> into tensor<42x7xf32>
      %301 = vector.broadcast %true : i1 to vector<14x14xi1>
      %302 = vector.insert %301, %80 [2] : vector<14x14xi1> into vector<3x14x14xi1>
      %generated_43 = tensor.generate %c5, %135, %135 {
      ^bb0(%arg0: index, %arg1: index, %arg2: index):
        %dest_44, %accumulated_value_45 = vector.scan <mul>, %89, %158 {inclusive = true, reduction_dim = 1 : i64} : vector<14x14xi32>, vector<14xi32>
        %304 = math.ceil %5 : tensor<3x14x7xf32>
        %305 = math.tanh %cst : f32
        %306 = memref.load %alloc_21[%c2, %c0] : memref<3x3xi64>
        tensor.yield %c705075243_i64 : i64
      } : tensor<?x?x?xi64>
      %303 = math.absi %transposed : tensor<7xi32>
      scf.yield %c12 : index
    }
    %177 = math.round %cst_26 : f16
    %178 = vector.insertelement %c1643693251_i32, %158[%c8 : index] : vector<14xi32>
    %179 = vector.broadcast %false : i1 to vector<14x14xi1>
    %180 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %78, %48, %179 : vector<3x14x14xi1>, vector<3xi1> into vector<14x14xi1>
    %181 = vector.insertelement %cst_5, %102[%c6 : index] : vector<3xf16>
    %182 = arith.remsi %extracted, %c1_i16 : i16
    %183 = vector.flat_transpose %48 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
    memref.alloca_scope  {
      %289 = math.roundeven %3 : tensor<7xf16>
      %290 = vector.gather %2[%c12, %168, %154] [%79], %80, %131 : tensor<3x14x14xf16>, vector<3x14x14xi32>, vector<3x14x14xi1>, vector<3x14x14xf16> into vector<3x14x14xf16>
      %291 = math.copysign %7, %51 : tensor<3x14x7xf32>
      %292 = arith.muli %c705075243_i64, %c705075243_i64 : i64
      %cst_42 = arith.constant 3.096000e+04 : f16
      %293 = math.rsqrt %21 : tensor<7xf16>
      %294 = tensor.empty() : tensor<14x14xi1>
      %alloc_43 = memref.alloc() : memref<3x14xi1>
      %295 = tensor.empty() : tensor<14x14x3xi1>
      %296 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%294, %alloc_43, %295 : tensor<14x14xi1>, memref<3x14xi1>, tensor<14x14x3xi1>) outs(%0 : tensor<3x14x14xi1>) {
      ^bb0(%in: i1, %in_51: i1, %in_52: i1, %out: i1):
        %317 = math.rsqrt %1 : tensor<3x3xf16>
        %318 = math.round %cst_3 : f32
        %cst_53 = arith.constant 1.000000e+00 : f32
        %cst_54 = arith.constant 0.000000e+00 : f32
        %319 = vector.transfer_read %7[%c7, %65, %c13], %cst_54 : tensor<3x14x7xf32>, vector<f32>
        %320 = math.atan %cst_5 : f16
        %c1616246739_i32 = arith.constant 1616246739 : i32
        %321 = vector.outerproduct %48, %48, %25 {kind = #vector.kind<maxsi>} : vector<3xi1>, vector<3xi1>
        %alloc_55 = memref.alloc() : memref<3x14x14xi32>
        %322 = vector.broadcast %c579351088_i32 : i32 to vector<3x14x7xi32>
        %323 = vector.broadcast %out : i1 to vector<3x14x7xi1>
        %324 = vector.gather %alloc_55[%65, %c7, %77] [%322], %323, %322 : memref<3x14x14xi32>, vector<3x14x7xi32>, vector<3x14x7xi1>, vector<3x14x7xi32> into vector<3x14x7xi32>
        %325 = vector.broadcast %c1628282844_i32 : i32 to vector<3x14xi32>
        %dest_56, %accumulated_value_57 = vector.scan <xor>, %79, %325 {inclusive = false, reduction_dim = 1 : i64} : vector<3x14x14xi32>, vector<3x14xi32>
        memref.copy %alloc_8, %alloc_12 : memref<3x3xf16> to memref<3x3xf16>
        %326 = arith.remsi %c1643693251_i32, %c1628282844_i32 : i32
        %c1_i64 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %327 = vector.transfer_read %alloc_21[%132, %c14], %c0_i64 : memref<3x3xi64>, vector<i64>
        %328 = vector.bitcast %322 : vector<3x14x7xi32> to vector<3x14x7xi32>
        %329 = math.log %2 : tensor<3x14x14xf16>
        %330 = math.log %cst_53 : f32
        %331 = vector.multi_reduction <and>, %128, %extracted [0] : vector<14xi16> to i16
        %332 = index.divu %69, %c9
        %333 = math.ceil %5 : tensor<3x14x7xf32>
        %334 = math.fpowi %88, %c1643693251_i32 : f32, i32
        %335 = vector.gather %alloc_55[%135, %c13, %95] [%324], %323, %328 : memref<3x14x14xi32>, vector<3x14x7xi32>, vector<3x14x7xi1>, vector<3x14x7xi32> into vector<3x14x7xi32>
        %336 = vector.maskedload %alloc_20[%c0, %c1], %55, %55 : memref<3x3xi1>, vector<7xi1>, vector<7xi1> into vector<7xi1>
        %337 = math.tan %cst_53 : f32
        %338 = arith.maxui %c1782730757_i64, %c800218915_i64 : i64
        %339 = arith.divui %c1_i64, %c1_i64 : i64
        %340 = index.add %332, %c5
        %341 = arith.maxf %cst_53, %cst_6 : f32
        %342 = memref.realloc %alloc_19 : memref<7xf32> to memref<14xf32>
        %343 = math.tanh %5 : tensor<3x14x7xf32>
        %344 = arith.ori %331, %extracted : i16
        %345 = affine.max affine_map<(d0) -> (d0 - 192, d0)>(%77)
        %346 = vector.broadcast %cst_1 : f32 to vector<7xf32>
        %347 = vector.maskedload %alloc[%c2, %c4, %c6], %336, %346 : memref<3x14x7xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
        %348 = math.copysign %5, %5 : tensor<3x14x7xf32>
        %collapsed_58 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<3x14x14xi1> into tensor<42x14xi1>
        linalg.yield %in : i1
      } -> tensor<3x14x14xi1>
      %297 = math.atan %1 : tensor<3x3xf16>
      %298 = vector.broadcast %c705075243_i64 : i64 to vector<i64>
      vector.transfer_write %298, %87[%c15] : vector<i64>, memref<7xi64>
      %299 = math.expm1 %13 : tensor<7xf16>
      %300 = arith.ceildivsi %c579351088_i32, %c901048850_i32 : i32
      %cst_44 = arith.constant 1.000000e+00 : f16
      %cst_45 = arith.constant 0.000000e+00 : f16
      %301 = vector.transfer_read %2[%c12, %168, %132], %cst_45 {permutation_map = affine_map<(d0, d1, d2) -> (0, d1)>} : tensor<3x14x14xf16>, vector<14x14xf16>
      %302 = math.ipowi %9, %16 : tensor<3x14x14xi16>
      %splat_46 = tensor.splat %c800218915_i64 : tensor<3x14x14xi64>
      affine.store %88, %alloc[%c15, %c0, %c4] : memref<3x14x7xf32>
      scf.execute_region {
        %317 = arith.addf %cst_3, %cst_4 : f32
        %318 = math.fpowi %cst_44, %c1643693251_i32 : f16, i32
        %319 = math.atan2 %1, %1 : tensor<3x3xf16>
        %320 = tensor.empty() : tensor<7xi64>
        %321 = index.castu %135 : index to i32
        %322 = arith.mulf %88, %cst_2 : f32
        %323 = math.expm1 %13 : tensor<7xf16>
        %324 = arith.maxsi %c705075243_i64, %c1782730757_i64 : i64
        %325 = math.atan %1 : tensor<3x3xf16>
        %326 = vector.broadcast %cst_26 : f16 to vector<14xf16>
        %327 = vector.maskedload %alloc_8[%c2, %c2], %137, %326 : memref<3x3xf16>, vector<14xi1>, vector<14xf16> into vector<14xf16>
        %dest_51, %accumulated_value_52 = vector.scan <or>, %26, %151 {inclusive = true, reduction_dim = 1 : i64} : vector<3x3xi32>, vector<3xi32>
        %328 = vector.insert %cst_5, %102 [0] : f16 into vector<3xf16>
        %329 = index.ceildivu %c11, %168
        %330 = math.tanh %13 : tensor<7xf16>
        %331 = arith.xori %true, %true : i1
        %332 = arith.addf %cst_3, %cst_6 : f32
        scf.yield
      }
      %303 = math.round %1 : tensor<3x3xf16>
      %304 = arith.divsi %c901048850_i32, %c579351088_i32 : i32
      %305 = vector.broadcast %cst : f32 to vector<3xf32>
      %306 = vector.maskedload %107[%c0, %c2, %c1], %48, %305 : memref<3x14x7xf32>, vector<3xi1>, vector<3xf32> into vector<3xf32>
      %splat_47 = tensor.splat %cst : tensor<3x14x7xf32>
      %307 = arith.divui %c1782730757_i64, %c705075243_i64 : i64
      %308 = memref.realloc %87 : memref<7xi64> to memref<14xi64>
      %collapsed = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<3x14x7xi16> into tensor<42x7xi16>
      %309 = arith.minui %c579351088_i32, %c579351088_i32 : i32
      %310 = arith.ori %c1643693251_i32, %c1643693251_i32 : i32
      %311 = arith.remf %cst, %cst_1 : f32
      %312 = math.floor %23 : tensor<f16>
      %dest_48, %accumulated_value_49 = vector.scan <or>, %89, %158 {inclusive = true, reduction_dim = 1 : i64} : vector<14x14xi32>, vector<14xi32>
      %313 = affine.for %arg0 = 0 to 106 iter_args(%arg1 = %151) -> (vector<3xi32>) {
        affine.yield %151 : vector<3xi32>
      }
      %314 = tensor.empty() : tensor<14x7x3xi64>
      %315 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%314, %314, %87 : tensor<14x7x3xi64>, tensor<14x7x3xi64>, memref<7xi64>) outs(%10 : tensor<3x14x7xi64>) {
      ^bb0(%in: i64, %in_51: i64, %in_52: i64, %out: i64):
        %317 = math.log1p %cst_0 : f16
        %318 = arith.cmpi sle, %c1628282844_i32, %c1628282844_i32 : i32
        %319 = vector.broadcast %cst_2 : f32 to vector<3x14x7xf32>
        %320 = vector.fma %319, %319, %119 : vector<3x14x7xf32>
        %expanded = tensor.expand_shape %4 [[0, 1]] : tensor<7xi16> into tensor<7x1xi16>
        %321 = affine.load %91[%c7, %c7] : memref<3x3xf32>
        %true_53 = arith.constant true
        %322 = vector.transfer_read %alloc_20[%c10, %c8], %true_53 : memref<3x3xi1>, vector<14xi1>
        %323 = bufferization.to_memref %44 : memref<3x14x14xi1>
        %324 = arith.andi %c1_i16, %c1_i16 : i16
        %325 = math.floor %139 : tensor<3x14x14xf16>
        %326 = arith.cmpi sgt, %true_53, %125 : i1
        %327 = affine.apply affine_map<(d0, d1) -> (d0)>(%77, %168)
        %328 = arith.xori %in_51, %c705075243_i64 : i64
        %329 = vector.broadcast %in_51 : i64 to vector<7xi64>
        %330 = vector.maskedload %alloc_9[%c0, %c2, %c2], %55, %329 : memref<3x14x7xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
        %331 = math.log10 %51 : tensor<3x14x7xf32>
        %332 = math.copysign %splat_47, %splat_47 : tensor<3x14x7xf32>
        %333 = index.divu %rank, %135
        %334 = math.tanh %3 : tensor<7xf16>
        %335 = vector.broadcast %cst_5 : f16 to vector<14xf16>
        %336 = vector.insert %335, %290 [2, 6] : vector<14xf16> into vector<3x14x14xf16>
        %337 = index.sub %c14, %c15
        %338 = vector.extract %150[1] : vector<3xi32>
        %339 = vector.broadcast %in_52 : i64 to vector<7xi64>
        %cast_54 = tensor.cast %1 : tensor<3x3xf16> to tensor<?x?xf16>
        %340 = affine.apply affine_map<(d0) -> (d0 + 72)>(%154)
        %rank_55 = tensor.rank %expanded : tensor<7x1xi16>
        %341 = vector.broadcast %c1643693251_i32 : i32 to vector<14xi32>
        %342 = vector.transfer_write %341, %15[%132, %c1] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<14xi32>, tensor<3x3xi32>
        %343 = vector.insert %125, %137 [0] : i1 into vector<14xi1>
        %344 = arith.minf %cst_1, %cst_6 : f32
        %345 = arith.maxsi %c1_i16, %c1_i16 : i16
        memref.store %cst_1, %alloc_15[%c2, %c1] : memref<3x3xf32>
        %346 = arith.remf %cst_2, %cst_2 : f32
        %347 = arith.remf %cst_1, %cst_2 : f32
        %348 = math.log %3 : tensor<7xf16>
        linalg.yield %in_51 : i64
      } -> tensor<3x14x7xi64>
      %316 = vector.load %alloc_19[%c5] : memref<7xf32>, vector<3x3xf32>
      %cst_50 = arith.constant 2.864000e+04 : f16
    }
    %184 = math.roundeven %23 : tensor<f16>
    %185 = math.atan %3 : tensor<7xf16>
    %186 = arith.remsi %c1_i16, %extracted : i16
    %187 = index.ceildivu %rank, %c15
    %dest_28, %accumulated_value_29 = vector.scan <maxui>, %25, %183 {inclusive = false, reduction_dim = 1 : i64} : vector<3x3xi1>, vector<3xi1>
    %188 = index.maxs %187, %171
    %189 = math.sqrt %23 : tensor<f16>
    %190 = index.ceildivs %188, %168
    %rank_30 = tensor.rank %5 : tensor<3x14x7xf32>
    %191 = math.round %2 : tensor<3x14x14xf16>
    %192 = math.sqrt %13 : tensor<7xf16>
    %193 = math.absi %6 : tensor<3x3xi1>
    %194 = vector.broadcast %65 : index to vector<3xindex>
    vector.scatter %alloc_16[%c0] [%194], %48, %101 : memref<7xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
    %195 = arith.maxf %cst_0, %cst_0 : f16
    %196 = arith.andi %c1643693251_i32, %c1643693251_i32 : i32
    %splat = tensor.splat %125 : tensor<3x14x14xi1>
    %197 = math.log %22 : tensor<f16>
    %198 = vector.insertelement %extracted, %47[%135 : index] : vector<3xi16>
    %199 = arith.andi %false, %false : i1
    %200 = math.tan %3 : tensor<7xf16>
    %splat_31 = tensor.splat %cst_0 : tensor<3x14x7xf16>
    %201 = vector.broadcast %121 : index to vector<3xindex>
    %202 = vector.broadcast %cst : f32 to vector<3xf32>
    vector.scatter %107[%c1, %c8, %c3] [%201], %48, %202 : memref<3x14x7xf32>, vector<3xindex>, vector<3xi1>, vector<3xf32>
    %203 = math.roundeven %1 : tensor<3x3xf16>
    %204 = arith.ceildivsi %106, %c705075243_i64 : i64
    %205 = arith.maxsi %false, %false : i1
    %206 = math.expm1 %2 : tensor<3x14x14xf16>
    %207 = arith.addf %cst_0, %cst_26 : f16
    %cst_32 = arith.constant 0x4C2512F0 : f32
    scf.execute_region {
      %289 = math.expm1 %19 : tensor<f32>
      %290 = vector.create_mask %121, %95 : vector<3x3xi1>
      %291 = math.expm1 %5 : tensor<3x14x7xf32>
      %292 = arith.muli %c705075243_i64, %c705075243_i64 : i64
      %293 = index.divs %187, %65
      %alloc_42 = memref.alloc() : memref<3x14x7xi32>
      %294 = vector.multi_reduction <mul>, %130, %131 [] : vector<3x14x14xf16> to vector<3x14x14xf16>
      %295 = math.atan2 %cst_6, %cst_2 : f32
      %296 = vector.matrix_multiply %47, %49 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi16>, vector<3xi16>) -> vector<1xi16>
      %297 = vector.create_mask %c11, %121 : vector<3x3xi1>
      %298 = arith.ori %c1643693251_i32, %c901048850_i32 : i32
      %299 = math.expm1 %cst_0 : f16
      %dest_43, %accumulated_value_44 = vector.scan <mul>, %25, %48 {inclusive = true, reduction_dim = 1 : i64} : vector<3x3xi1>, vector<3xi1>
      %300 = memref.atomic_rmw minf %cst_0, %alloc_12[%c1, %c2] : (f16, memref<3x3xf16>) -> f16
      memref.tensor_store %0, %164 : memref<3x14x14xi1>
      %301 = affine.apply affine_map<(d0) -> (0)>(%95)
      scf.yield
    }
    %208 = arith.addf %cst_1, %cst : f32
    %209 = arith.andi %c705075243_i64, %106 : i64
    %210 = math.log1p %21 : tensor<7xf16>
    %211 = arith.muli %106, %c1782730757_i64 : i64
    %alloc_33 = memref.alloc() : memref<3x14x7xi16>
    %212 = arith.shrsi %c901048850_i32, %c579351088_i32 : i32
    %213 = arith.andi %c1782730757_i64, %c705075243_i64 : i64
    %214 = arith.minf %cst_5, %cst_26 : f16
    %215 = arith.cmpf true, %cst_3, %cst : f32
    %216 = vector.extract %161[1] : vector<14xf32>
    %217 = tensor.empty(%121, %168) : tensor<?x?xf32>
    %true_34 = arith.constant true
    %false_35 = arith.constant false
    %218 = vector.transfer_read %44[%c0, %143, %c5], %false_35 {permutation_map = affine_map<(d0, d1, d2) -> (0, 0)>} : tensor<3x14x14xi1>, vector<14x14xi1>
    %219 = math.sqrt %1 : tensor<3x3xf16>
    %220 = arith.floordivsi %c1812353962_i32, %c579351088_i32 : i32
    %221 = bufferization.clone %alloc_14 : memref<7xi32> to memref<7xi32>
    %222 = scf.while (%arg0 = %cst) : (f32) -> f32 {
      %289 = arith.addf %cst_0, %cst_0 : f16
      %290 = vector.broadcast %cst_0 : f16 to vector<14x14x14x14xf16>
      %291 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %131, %131, %290 : vector<3x14x14xf16>, vector<3x14x14xf16> into vector<14x14x14x14xf16>
      memref.store %cst_4, %alloc_13[%c1, %c1, %c3] : memref<3x14x7xf32>
      %292 = vector.broadcast %cst_5 : f16 to vector<14x14xf16>
      %dest_42, %accumulated_value_43 = vector.scan <minf>, %130, %292 {inclusive = false, reduction_dim = 0 : i64} : vector<3x14x14xf16>, vector<14x14xf16>
      %293 = arith.maxf %cst_6, %88 : f32
      %294 = arith.minsi %extracted, %extracted : i16
      %295 = arith.maxsi %c1643693251_i32, %c579351088_i32 : i32
      %296 = vector.bitcast %89 : vector<14x14xi32> to vector<14x14xi32>
      scf.condition(%false) %cst_4 : f32
    } do {
    ^bb0(%arg0: f32):
      %289 = index.castu %true_34 : i1 to index
      %290 = arith.cmpi sgt, %extracted, %c1_i16 : i16
      %291 = vector.extract %160[8] : vector<14xf32>
      %292 = scf.while (%arg1 = %c1628282844_i32) : (i32) -> i32 {
        %305 = math.round %13 : tensor<7xf16>
        %306 = affine.apply affine_map<(d0, d1, d2) -> ((d2 floordiv 16) floordiv 8 + 2)>(%c13, %c15, %c0)
        %307 = math.roundeven %cst_26 : f16
        %308 = vector.maskedload %107[%c1, %c13, %c2], %137, %160 : memref<3x14x7xf32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
        %309 = index.ceildivs %190, %187
        %310 = arith.negf %cst_1 : f32
        %311 = math.absi %c1_i16 : i16
        vector.print %128 : vector<14xi16>
        scf.condition(%125) %c1643693251_i32 : i32
      } do {
      ^bb0(%arg1: i32):
        %305 = vector.splat %cst_0 : vector<3x14x7xf16>
        %306 = math.cttz %6 : tensor<3x3xi1>
        %307 = arith.ori %c1812353962_i32, %arg1 : i32
        %308 = arith.addf %cst_5, %cst_26 : f16
        %cast_42 = tensor.cast %11 : tensor<7xi32> to tensor<?xi32>
        %309 = vector.splat %c705075243_i64 : vector<3x14x7xi64>
        %310 = vector.broadcast %true_34 : i1 to vector<3x14x7xi1>
        %311 = vector.broadcast %c1628282844_i32 : i32 to vector<3x14x7xi32>
        %312 = vector.gather %91[%289, %187] [%311], %310, %119 : memref<3x3xf32>, vector<3x14x7xi32>, vector<3x14x7xi1>, vector<3x14x7xf32> into vector<3x14x7xf32>
        %313 = vector.extract %150[0] : vector<3xi32>
        %alloc_43 = memref.alloc() : memref<7xi64>
        memref.copy %87, %alloc_43 : memref<7xi64> to memref<7xi64>
        %314 = math.log2 %3 : tensor<7xf16>
        %315 = vector.broadcast %106 : i64 to vector<14x7x14x7xi64>
        %316 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %129, %129, %315 : vector<3x14x7xi64>, vector<3x14x7xi64> into vector<14x7x14x7xi64>
        %317 = index.sub %188, %95
        %318 = vector.gather %alloc_11[%64, %64] [%26], %136, %26 : memref<3x3xi32>, vector<3x3xi32>, vector<3x3xi1>, vector<3x3xi32> into vector<3x3xi32>
        %319 = math.atan %cst_4 : f32
        %alloc_44 = memref.alloc() : memref<7xi64>
        %320 = tensor.empty(%c14, %57) : tensor<?x?xf32>
        scf.yield %c1812353962_i32 : i32
      }
      %293 = memref.atomic_rmw assign %88, %alloc_19[%c3] : (f32, memref<7xf32>) -> f32
      %294 = memref.alloca_scope  -> (memref<3x14x14xi64>) {
        %305 = math.atan2 %51, %7 : tensor<3x14x7xf32>
        %306 = arith.xori %c705075243_i64, %c1782730757_i64 : i64
        %307 = memref.atomic_rmw assign %cst_5, %alloc_8[%c1, %c1] : (f16, memref<3x3xf16>) -> f16
        %splat_42 = tensor.splat %cst_26 : tensor<3x14x7xf16>
        %308 = math.floor %22 : tensor<f16>
        %309 = vector.broadcast %extracted : i16 to vector<3x3xi16>
        %310 = vector.outerproduct %47, %49, %309 {kind = #vector.kind<and>} : vector<3xi16>, vector<3xi16>
        %311 = index.ceildivu %c7, %c1
        %312 = index.ceildivs %187, %c4
        %313 = index.divu %c6, %57
        %314 = arith.maxsi %c1_i16, %c1_i16 : i16
        %cast_43 = tensor.cast %8 : tensor<3x3xi16> to tensor<?x?xi16>
        %315 = tensor.empty() : tensor<7xi1>
        %316 = vector.broadcast %c1643693251_i32 : i32 to vector<7xi32>
        %317 = vector.gather %315[%57] [%316], %55, %55 : tensor<7xi1>, vector<7xi32>, vector<7xi1>, vector<7xi1> into vector<7xi1>
        %318 = index.mul %94, %c10
        %319 = arith.divsi %c1782730757_i64, %c705075243_i64 : i64
        %320 = math.powf %cst_1, %cst_2 : f32
        %splat_44 = tensor.splat %cst_0 : tensor<7xf16>
        %321 = arith.andi %125, %true_34 : i1
        %322 = vector.broadcast %c1643693251_i32 : i32 to vector<3x14xi32>
        %dest_45, %accumulated_value_46 = vector.scan <maxsi>, %79, %322 {inclusive = false, reduction_dim = 1 : i64} : vector<3x14x14xi32>, vector<3x14xi32>
        %323 = math.sqrt %13 : tensor<7xf16>
        %324 = arith.subi %c1643693251_i32, %c1812353962_i32 : i32
        %325 = index.sub %187, %64
        %326 = vector.bitcast %136 : vector<3x3xi1> to vector<3x3xi1>
        %327 = math.tan %88 : f32
        %328 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minsi>} %183, %136, %183 : vector<3xi1>, vector<3x3xi1> into vector<3xi1>
        %329 = arith.minf %cst_6, %cst_2 : f32
        %330 = vector.outerproduct %151, %151, %26 {kind = #vector.kind<mul>} : vector<3xi32>, vector<3xi32>
        %331 = memref.load %alloc_16[%c3] : memref<7xf16>
        %332 = vector.bitcast %161 : vector<14xf32> to vector<14xf32>
        %collapsed = tensor.collapse_shape %15 [[0, 1]] : tensor<3x3xi32> into tensor<9xi32>
        %333 = arith.muli %106, %c705075243_i64 : i64
        %334 = arith.divsi %125, %true : i1
        %335 = vector.broadcast %extracted : i16 to vector<3x3xi16>
        %336 = vector.outerproduct %49, %47, %335 {kind = #vector.kind<maxui>} : vector<3xi16>, vector<3xi16>
        %alloc_47 = memref.alloc() : memref<3x14x14xi64>
        memref.alloca_scope.return %alloc_47 : memref<3x14x14xi64>
      }
      %295 = arith.minf %arg0, %cst : f32
      %296 = arith.minf %cst_1, %cst_1 : f32
      %297 = tensor.empty() : tensor<7xi1>
      %298 = math.log2 %cst_2 : f32
      %299 = math.exp %19 : tensor<f32>
      %300 = math.log %reduced : tensor<f32>
      %301 = math.log1p %88 : f32
      %302 = index.ceildivu %65, %77
      %303 = arith.shrui %false, %125 : i1
      %304 = math.log %splat_31 : tensor<3x14x7xf16>
      scf.yield %cst_3 : f32
    }
    %223 = index.add %c14, %c15
    %224 = math.expm1 %cst_0 : f16
    %225 = math.cttz %9 : tensor<3x14x14xi16>
    %false_36 = index.bool.constant false
    %226 = math.ctlz %0 : tensor<3x14x14xi1>
    %227 = vector.maskedload %alloc_14[%c1], %137, %158 : memref<7xi32>, vector<14xi1>, vector<14xi32> into vector<14xi32>
    %228 = arith.divf %cst_6, %cst_3 : f32
    affine.store %c579351088_i32, %alloc_14[%c6] : memref<7xi32>
    %229 = arith.divf %88, %cst_4 : f32
    %230 = math.expm1 %88 : f32
    %231 = math.cttz %10 : tensor<3x14x7xi64>
    %232 = vector.insertelement %c1_i16, %47[%65 : index] : vector<3xi16>
    %233 = index.sub %64, %188
    %234 = math.atan2 %reduced, %19 : tensor<f32>
    %235 = math.round %7 : tensor<3x14x7xf32>
    %236 = tensor.empty() : tensor<3x14x7xi32>
    %237 = math.fpowi %51, %236 : tensor<3x14x7xf32>, tensor<3x14x7xi32>
    %238 = vector.insertelement %c579351088_i32, %151[%c2 : index] : vector<3xi32>
    %239 = arith.floordivsi %c1812353962_i32, %c901048850_i32 : i32
    %240 = scf.execute_region -> i32 {
      %289 = arith.divsi %c1782730757_i64, %106 : i64
      %290 = tensor.empty() : tensor<3x14x7xi1>
      %291 = vector.gather %290[%c0, %95, %188] [%79], %80, %78 : tensor<3x14x7xi1>, vector<3x14x14xi32>, vector<3x14x14xi1>, vector<3x14x14xi1> into vector<3x14x14xi1>
      %292 = math.log1p %1 : tensor<3x3xf16>
      %293 = math.round %12 : tensor<3x3xf32>
      affine.store %extracted, %alloc_18[%c14, %c15, %c10] : memref<3x14x7xi16>
      %294 = vector.outerproduct %150, %151, %26 {kind = #vector.kind<maxui>} : vector<3xi32>, vector<3xi32>
      %295 = vector.matrix_multiply %113, %112 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf16>, vector<7xf16>) -> vector<1xf16>
      %rank_42 = tensor.rank %13 : tensor<7xf16>
      %296 = math.copysign %cst_1, %88 : f32
      %297 = vector.broadcast %cst_0 : f16 to vector<14x14xf16>
      %dest_43, %accumulated_value_44 = vector.scan <maxf>, %130, %297 {inclusive = true, reduction_dim = 0 : i64} : vector<3x14x14xf16>, vector<14x14xf16>
      %298 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %47, %47, %extracted : vector<3xi16>, vector<3xi16> into i16
      %299 = index.add %c13, %57
      %300 = affine.load %alloc_15[%c0, %c13] : memref<3x3xf32>
      %301 = math.ipowi %9, %16 : tensor<3x14x14xi16>
      %302 = affine.apply affine_map<(d0, d1, d2) -> (d2 - 2)>(%c12, %188, %63)
      %303 = index.ceildivs %95, %c3
      scf.yield %c1812353962_i32 : i32
    }
    %241 = arith.divsi %106, %c1782730757_i64 : i64
    %242 = vector.create_mask %77 : vector<7xi1>
    %243 = vector.broadcast %extracted : i16 to vector<3x3xi16>
    %244 = vector.outerproduct %49, %47, %243 {kind = #vector.kind<xor>} : vector<3xi16>, vector<3xi16>
    %245 = index.divu %c10, %77
    %246 = vector.maskedload %221[%c4], %137, %227 : memref<7xi32>, vector<14xi1>, vector<14xi32> into vector<14xi32>
    %247 = memref.load %alloc_21[%c2, %c1] : memref<3x3xi64>
    %generated = tensor.generate %c10 {
    ^bb0(%arg0: index, %arg1: index, %arg2: index):
      memref.copy %107, %alloc_17 : memref<3x14x7xf32> to memref<3x14x7xf32>
      %289 = index.mul %c12, %c6
      %290 = math.floor %2 : tensor<3x14x14xf16>
      %291 = math.fma %cst_0, %cst_5, %cst_0 : f16
      tensor.yield %125 : i1
    } : tensor<?x14x7xi1>
    %248 = affine.apply affine_map<(d0) -> (0)>(%c8)
    %249 = vector.splat %c11 : vector<3x14x14xindex>
    %250 = bufferization.to_tensor %alloc_24 : memref<3x14x14xi1>
    %251 = arith.minsi %true_34, %true : i1
    %generated_37 = tensor.generate %94 {
    ^bb0(%arg0: index, %arg1: index):
      %289 = arith.divsi %c800218915_i64, %c1782730757_i64 : i64
      %290 = arith.maxui %extracted, %c1_i16 : i16
      %291 = arith.ori %c1_i16, %extracted : i16
      %292 = math.atan2 %139, %2 : tensor<3x14x14xf16>
      tensor.yield %c1_i16 : i16
    } : tensor<?x3xi16>
    %cst_38 = arith.constant 1.000000e+00 : f32
    %252 = vector.transfer_read %91[%132, %176], %cst_38 : memref<3x3xf32>, vector<14xf32>
    %253 = index.casts %57 : index to i32
    %254 = math.atan2 %splat_31, %splat_31 : tensor<3x14x7xf16>
    %255 = vector.insertelement %cst_5, %113[%57 : index] : vector<7xf16>
    %256 = math.expm1 %cst_2 : f32
    %257 = bufferization.to_tensor %alloc_11 : memref<3x3xi32>
    %258 = math.cttz %125 : i1
    %259 = math.log1p %cst_1 : f32
    %260 = bufferization.to_memref %11 : memref<7xi32>
    %261 = math.fpowi %cst_3, %c579351088_i32 : f32, i32
    %262 = math.absi %false_36 : i1
    %263 = math.log2 %cst_38 : f32
    %264 = bufferization.to_memref %4 : memref<7xi16>
    %265 = math.log1p %cst_3 : f32
    %266 = arith.floordivsi %c1_i16, %c1_i16 : i16
    %267 = index.add %c4, %rank_30
    %268 = math.ctpop %250 : tensor<3x14x14xi1>
    %269 = tensor.empty() : tensor<3x14x14xi64>
    %270 = vector.broadcast %c1782730757_i64 : i64 to vector<3x14x14xi64>
    %271 = vector.gather %269[%64, %267, %267] [%79], %78, %270 : tensor<3x14x14xi64>, vector<3x14x14xi32>, vector<3x14x14xi1>, vector<3x14x14xi64> into vector<3x14x14xi64>
    %272 = math.ctpop %c800218915_i64 : i64
    %273 = memref.alloca_scope  -> (i32) {
      %289 = vector.broadcast %cst_0 : f16 to vector<14x14xf16>
      %290 = vector.insert %289, %130 [1] : vector<14x14xf16> into vector<3x14x14xf16>
      %291 = arith.shrui %c1812353962_i32, %c1628282844_i32 : i32
      %292 = vector.splat %c1643693251_i32 : vector<7xi32>
      %293 = arith.maxsi %extracted, %c1_i16 : i16
      %294 = arith.xori %c1643693251_i32, %c901048850_i32 : i32
      memref.store %c1643693251_i32, %alloc_7[%c1, %c0] : memref<3x3xi32>
      %295 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %113, %112, %cst_5 : vector<7xf16>, vector<7xf16> into f16
      %296 = arith.muli %false, %false_36 : i1
      %297 = scf.execute_region -> vector<3x14x14xf16> {
        %313 = math.round %13 : tensor<7xf16>
        %314 = arith.andi %c705075243_i64, %c800218915_i64 : i64
        %315 = index.sub %135, %c10
        %316 = vector.insertelement %c901048850_i32, %151[%143 : index] : vector<3xi32>
        %317 = bufferization.to_memref %139 : memref<3x14x14xf16>
        %318 = math.roundeven %reduced : tensor<f32>
        %319 = math.roundeven %19 : tensor<f32>
        %cst_48 = arith.constant 1.000000e+00 : f16
        %320 = vector.transfer_read %3[%c9], %cst_48 : tensor<7xf16>, vector<f16>
        %321 = math.log %cst_2 : f32
        %322 = math.roundeven %5 : tensor<3x14x7xf32>
        %323 = arith.cmpi sgt, %c579351088_i32, %c1643693251_i32 : i32
        %324 = tensor.empty() : tensor<i32>
        %325 = math.fpowi %22, %324 : tensor<f16>, tensor<i32>
        %326 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 - 4)>(%223, %190, %c0, %116)
        %327 = memref.realloc %alloc_16 : memref<7xf16> to memref<14xf16>
        %328 = index.add %116, %c2
        %329 = math.fma %2, %139, %139 : tensor<3x14x14xf16>
        scf.yield %131 : vector<3x14x14xf16>
      }
      %alloc_42 = memref.alloc() : memref<3x14x14xf32>
      %298 = math.tanh %22 : tensor<f16>
      %alloc_43 = memref.alloc() : memref<3x14x7xi32>
      %299 = memref.realloc %264 : memref<7xi16> to memref<14xi16>
      %300 = vector.insert %extracted, %49 [2] : i16 into vector<3xi16>
      %301 = math.cttz %15 : tensor<3x3xi32>
      %302 = vector.broadcast %c1812353962_i32 : i32 to vector<i32>
      vector.transfer_write %302, %alloc_14[%c6] : vector<i32>, memref<7xi32>
      %cst_44 = arith.constant 3.980800e+04 : f16
      %splat_45 = tensor.splat %c800218915_i64 : tensor<3x14x14xi64>
      %303 = arith.negf %cst_1 : f32
      %304 = arith.maxsi %c1_i16, %extracted : i16
      %305 = math.copysign %cst_3, %cst_2 : f32
      %306 = vector.multi_reduction <xor>, %136, %48 [1] : vector<3x3xi1> to vector<3xi1>
      %307 = math.round %3 : tensor<7xf16>
      %308 = vector.multi_reduction <and>, %47, %49 [] : vector<3xi16> to vector<3xi16>
      %309 = math.atan2 %19, %reduced : tensor<f32>
      %c619845618_i32 = arith.constant 619845618 : i32
      %alloc_46 = memref.alloc() : memref<3x14x7xf32>
      %310 = vector.splat %c800218915_i64 : vector<3x14x14xi64>
      %311 = math.ctpop %c579351088_i32 : i32
      scf.execute_region {
        %313 = bufferization.to_tensor %107 : memref<3x14x7xf32>
        %splat_48 = tensor.splat %cst_26 : tensor<3x14x14xf16>
        %314 = vector.reduction <xor>, %246 : vector<14xi32> into i32
        %315 = arith.minsi %true_34, %false_36 : i1
        %316 = math.copysign %cst_3, %cst_4 : f32
        %317 = vector.reduction <maxf>, %161 : vector<14xf32> into f32
        %c372375041_i32 = arith.constant 372375041 : i32
        %318 = vector.matrix_multiply %137, %242 {lhs_columns = 7 : i32, lhs_rows = 2 : i32, rhs_columns = 1 : i32} : (vector<14xi1>, vector<7xi1>) -> vector<2xi1>
        %319 = math.atan2 %13, %21 : tensor<7xf16>
        %320 = index.mul %135, %176
        %321 = index.sizeof
        %cst_49 = arith.constant 1.6391383E+9 : f32
        %322 = vector.broadcast %cst_5 : f16 to vector<7x7xf16>
        %323 = vector.outerproduct %112, %112, %322 {kind = #vector.kind<add>} : vector<7xf16>, vector<7xf16>
        %324 = vector.splat %c3 : vector<3x14x14xindex>
        %325 = arith.ori %c1628282844_i32, %240 : i32
        %326 = vector.broadcast %c579351088_i32 : i32 to vector<7xi32>
        %327 = vector.gather %8[%154, %190] [%326], %55, %20 : tensor<3x3xi16>, vector<7xi32>, vector<7xi1>, vector<7xi16> into vector<7xi16>
        scf.yield
      }
      %312 = math.expm1 %51 : tensor<3x14x7xf32>
      %cast_47 = tensor.cast %13 : tensor<7xf16> to tensor<?xf16>
      memref.alloca_scope.return %c901048850_i32 : i32
    }
    %274 = math.copysign %cst_0, %cst_0 : f16
    %alloc_39 = memref.alloc() : memref<7xi1>
    %275 = vector.broadcast %true : i1 to vector<3x14x7xi1>
    %276 = vector.broadcast %c1643693251_i32 : i32 to vector<3x14x7xi32>
    %277 = vector.gather %alloc_39[%143] [%276], %275, %275 : memref<7xi1>, vector<3x14x7xi32>, vector<3x14x7xi1>, vector<3x14x7xi1> into vector<3x14x7xi1>
    %278 = arith.divsi %c1_i16, %c1_i16 : i16
    %279 = memref.realloc %221 : memref<7xi32> to memref<14xi32>
    %280 = arith.remf %cst_38, %cst_1 : f32
    %281 = index.casts %77 : index to i32
    %282 = index.divu %94, %63
    %283 = arith.xori %true_34, %true_34 : i1
    %284 = vector.broadcast %132 : index to vector<14xindex>
    vector.scatter %alloc_18[%c2, %c12, %c6] [%284], %137, %128 : memref<3x14x7xi16>, vector<14xindex>, vector<14xi1>, vector<14xi16>
    %c1774548043_i32 = arith.constant 1774548043 : i32
    %285 = tensor.empty() : tensor<3x3xf32>
    %286 = linalg.copy ins(%12 : tensor<3x3xf32>) outs(%285 : tensor<3x3xf32>) -> tensor<3x3xf32>
    %alloc_40 = memref.alloc() : memref<7xi32>
    linalg.transpose ins(%transposed : tensor<7xi32>) outs(%alloc_40 : memref<7xi32>) permutation = [0] 
    %287 = tensor.empty() : tensor<3x7xf32>
    %reduced_41 = linalg.reduce ins(%51 : tensor<3x14x7xf32>) outs(%287 : tensor<3x7xf32>) dimensions = [1] 
      (%in: f32, %init: f32) {
        %289 = index.sub %c11, %65
        %290 = math.cttz %c1_i16 : i16
        %291 = arith.addi %false, %true_34 : i1
        %292 = vector.insertelement %cst_0, %113[%174 : index] : vector<7xf16>
        %293 = math.tanh %cst_2 : f32
        %294 = arith.floordivsi %c1643693251_i32, %c901048850_i32 : i32
        %alloc_42 = memref.alloc() : memref<14xi1>
        %alloc_43 = memref.alloc() : memref<14x14xi1>
        %295 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_42, %alloc_43 : memref<14xi1>, memref<14x14xi1>) outs(%0 : tensor<3x14x14xi1>) {
        ^bb0(%in_45: i1, %in_46: i1, %out: i1):
          %alloc_47 = memref.alloc() : memref<3x14x14xf32>
          %297 = vector.broadcast %cst_38 : f32 to vector<3x3xf32>
          %298 = vector.gather %alloc_47[%rank, %65, %c12] [%26], %25, %297 : memref<3x14x14xf32>, vector<3x3xi32>, vector<3x3xi1>, vector<3x3xf32> into vector<3x3xf32>
          %299 = index.casts %true : i1 to index
          %300 = arith.negf %cst_5 : f16
          %c757803937_i32 = arith.constant 757803937 : i32
          %301 = math.expm1 %5 : tensor<3x14x7xf32>
          memref.copy %221, %alloc_14 : memref<7xi32> to memref<7xi32>
          %302 = memref.load %alloc_47[%c0, %c1, %c4] : memref<3x14x14xf32>
          %303 = math.round %cst_1 : f32
          %304 = index.divu %174, %c12
          %305 = vector.broadcast %88 : f32 to vector<14x14xf32>
          %306 = vector.outerproduct %161, %160, %305 {kind = #vector.kind<add>} : vector<14xf32>, vector<14xf32>
          %307 = math.sqrt %init : f32
          %308 = math.log1p %cst_0 : f16
          %309 = bufferization.to_tensor %260 : memref<7xi32>
          %310 = index.ceildivs %95, %c8
          %311 = tensor.empty() : tensor<3x14x14xi32>
          %312 = math.fpowi %139, %311 : tensor<3x14x14xf16>, tensor<3x14x14xi32>
          %c5146_i16 = arith.constant 5146 : i16
          %inserted_48 = tensor.insert %true into %splat[%c2, %c8, %c5] : tensor<3x14x14xi1>
          %313 = vector.splat %in : vector<7xf32>
          %314 = vector.broadcast %c1_i16 : i16 to vector<3x14x7xi16>
          %315 = vector.gather %alloc_18[%267, %c14, %c10] [%276], %277, %314 : memref<3x14x7xi16>, vector<3x14x7xi32>, vector<3x14x7xi1>, vector<3x14x7xi16> into vector<3x14x7xi16>
          memref.tensor_store %10, %alloc_9 : memref<3x14x7xi64>
          %316 = arith.remsi %false_36, %true_34 : i1
          %317 = bufferization.to_tensor %alloc_15 : memref<3x3xf32>
          %318 = arith.divsi %in_45, %false_36 : i1
          %319 = math.copysign %12, %286 : tensor<3x3xf32>
          %320 = arith.minui %false_36, %true : i1
          %splat_49 = tensor.splat %false_36 : tensor<3x14x14xi1>
          %321 = vector.insertelement %out, %137[%267 : index] : vector<14xi1>
          %322 = vector.broadcast %cst_26 : f16 to vector<7xf16>
          %323 = vector.transfer_write %322, %139[%c8, %176, %82] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<7xf16>, tensor<3x14x14xf16>
          %324 = arith.maxui %extracted, %extracted : i16
          %325 = index.mul %267, %299
          %326 = vector.broadcast %c1782730757_i64 : i64 to vector<3x14xi64>
          %dest_50, %accumulated_value_51 = vector.scan <and>, %129, %326 {inclusive = false, reduction_dim = 2 : i64} : vector<3x14x7xi64>, vector<3x14xi64>
          %327 = tensor.empty() : tensor<7xi64>
          %328 = vector.broadcast %c800218915_i64 : i64 to vector<3x3xi64>
          %329 = vector.gather %327[%69] [%26], %27, %328 : tensor<7xi64>, vector<3x3xi32>, vector<3x3xi1>, vector<3x3xi64> into vector<3x3xi64>
          linalg.yield %true_34 : i1
        } -> tensor<3x14x14xi1>
        %296 = vector.broadcast %c1628282844_i32 : i32 to vector<7xi32>
        vector.transfer_write %296, %alloc_7[%245, %168] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi32>, memref<3x3xi32>
        %cst_44 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_44 : f32
      }
    scf.parallel (%arg0, %arg1) = (%c14, %282) to (%c14, %c3) step (%c10, %c14) {
      %289 = memref.realloc %alloc_19 : memref<7xf32> to memref<14xf32>
      %290 = arith.subi %true_34, %125 : i1
      %291 = vector.reduction <and>, %158 : vector<14xi32> into i32
      %292 = math.round %splat_31 : tensor<3x14x7xf16>
      %false_42 = arith.constant false
      %293 = vector.transfer_read %250[%c0, %245, %c11], %false_42 : tensor<3x14x14xi1>, vector<14x14xi1>
      %294 = index.casts %false : i1 to index
      %295 = math.cttz %11 : tensor<7xi32>
      %296 = index.ceildivs %c6, %c10
      %297 = arith.minsi %c1782730757_i64, %c800218915_i64 : i64
      %298 = math.atan %1 : tensor<3x3xf16>
      %299 = vector.insert %cst_5, %113 [0] : f16 into vector<7xf16>
      %alloc_43 = memref.alloc() : memref<7xi16>
      memref.copy %264, %alloc_43 : memref<7xi16> to memref<7xi16>
      %300 = tensor.empty(%c4) : tensor<3x?xf16>
      %rank_44 = tensor.rank %3 : tensor<7xf16>
      %301 = arith.divf %cst_26, %cst_26 : f16
      %302 = arith.minsi %c1_i16, %c1_i16 : i16
      scf.yield
    }
    %288 = affine.vector_load %alloc_11[%132, %c2] : memref<3x3xi32>, vector<14xi32>
    affine.vector_store %158, %260[%116] : memref<7xi32>, vector<14xi32>
    vector.print %20 : vector<7xi16>
    vector.print %25 : vector<3x3xi1>
    vector.print %26 : vector<3x3xi32>
    vector.print %27 : vector<3x3xi1>
    vector.print %30 : vector<i32>
    vector.print %47 : vector<3xi16>
    vector.print %48 : vector<3xi1>
    vector.print %49 : vector<3xi16>
    vector.print %55 : vector<7xi1>
    vector.print %78 : vector<3x14x14xi1>
    vector.print %79 : vector<3x14x14xi32>
    vector.print %80 : vector<3x14x14xi1>
    vector.print %89 : vector<14x14xi32>
    vector.print %101 : vector<3xf16>
    vector.print %102 : vector<3xf16>
    vector.print %112 : vector<7xf16>
    vector.print %113 : vector<7xf16>
    vector.print %119 : vector<3x14x7xf32>
    vector.print %128 : vector<14xi16>
    vector.print %129 : vector<3x14x7xi64>
    vector.print %130 : vector<3x14x14xf16>
    vector.print %131 : vector<3x14x14xf16>
    vector.print %136 : vector<3x3xi1>
    vector.print %137 : vector<14xi1>
    vector.print %150 : vector<3xi32>
    vector.print %151 : vector<3xi32>
    vector.print %158 : vector<14xi32>
    vector.print %160 : vector<14xf32>
    vector.print %161 : vector<14xf32>
    vector.print %183 : vector<3xi1>
    vector.print %227 : vector<14xi32>
    vector.print %242 : vector<7xi1>
    vector.print %246 : vector<14xi32>
    vector.print %270 : vector<3x14x14xi64>
    vector.print %271 : vector<3x14x14xi64>
    vector.print %275 : vector<3x14x7xi1>
    vector.print %276 : vector<3x14x7xi32>
    vector.print %277 : vector<3x14x7xi1>
    vector.print %288 : vector<14xi32>
    vector.print %c1628282844_i32 : i32
    vector.print %cst : f32
    vector.print %c1782730757_i64 : i64
    vector.print %c579351088_i32 : i32
    vector.print %cst_0 : f16
    vector.print %c800218915_i64 : i64
    vector.print %cst_1 : f32
    vector.print %cst_2 : f32
    vector.print %cst_3 : f32
    vector.print %c1643693251_i32 : i32
    vector.print %c1812353962_i32 : i32
    vector.print %cst_4 : f32
    vector.print %cst_5 : f16
    vector.print %c705075243_i64 : i64
    vector.print %c901048850_i32 : i32
    vector.print %cst_6 : f32
    vector.print %false : i1
    vector.print %c1_i16 : i16
    vector.print %extracted : i16
    vector.print %true : i1
    vector.print %88 : f32
    vector.print %106 : i64
    vector.print %125 : i1
    vector.print %cst_26 : f16
    vector.print %true_34 : i1
    vector.print %false_36 : i1
    vector.print %240 : i32
    vector.print %cst_38 : f32
    vector.print %273 : i32
    return
  }
}
