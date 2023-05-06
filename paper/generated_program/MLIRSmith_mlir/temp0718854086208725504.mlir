module {
  func.func nested @func1(%arg0: memref<14x3xf16>, %arg1: index, %arg2: vector<14x3xi1>) -> tensor<4xi32> {
    %cst = arith.constant 1.62992947E+9 : f32
    %c31641_i16 = arith.constant 31641 : i16
    %c171434000_i64 = arith.constant 171434000 : i64
    %c-15060_i16 = arith.constant -15060 : i16
    %c748652137_i64 = arith.constant 748652137 : i64
    %false = arith.constant false
    %false_0 = arith.constant false
    %cst_1 = arith.constant 0x4DD39AFE : f32
    %false_2 = arith.constant false
    %c-12810_i16 = arith.constant -12810 : i16
    %c1123592564_i64 = arith.constant 1123592564 : i64
    %c1690777272_i32 = arith.constant 1690777272 : i32
    %c496720484_i32 = arith.constant 496720484 : i32
    %cst_3 = arith.constant 0x4DE43B16 : f32
    %c-27964_i16 = arith.constant -27964 : i16
    %c2143169797_i64 = arith.constant 2143169797 : i64
    %0 = tensor.empty() : tensor<14x3xf16>
    %1 = tensor.empty() : tensor<4xi32>
    %2 = tensor.empty() : tensor<4xi64>
    %3 = tensor.empty() : tensor<14x3xi1>
    %4 = tensor.empty() : tensor<14x3xi64>
    %5 = tensor.empty() : tensor<14x3xf16>
    %6 = tensor.empty() : tensor<4x3x4xi16>
    %7 = tensor.empty() : tensor<4xi32>
    %8 = tensor.empty() : tensor<14x3xi32>
    %9 = tensor.empty() : tensor<4x3x4xi32>
    %10 = tensor.empty() : tensor<4x3x4xf16>
    %11 = tensor.empty() : tensor<4x3x4xf32>
    %12 = tensor.empty() : tensor<4x3x4xf32>
    %13 = tensor.empty() : tensor<14x3xi32>
    %14 = tensor.empty() : tensor<4xf16>
    %15 = tensor.empty() : tensor<14x3xf16>
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
    %alloc = memref.alloc() : memref<4x3x4xf16>
    %alloc_4 = memref.alloc() : memref<14x3xi64>
    %alloc_5 = memref.alloc() : memref<4xf16>
    %alloc_6 = memref.alloc() : memref<4xi32>
    %alloc_7 = memref.alloc() : memref<14x3xf32>
    %alloc_8 = memref.alloc() : memref<4xi32>
    %alloc_9 = memref.alloc() : memref<4xi64>
    %alloc_10 = memref.alloc() : memref<4xi64>
    %alloc_11 = memref.alloc() : memref<4xf16>
    %alloc_12 = memref.alloc() : memref<4x3x4xi1>
    %alloc_13 = memref.alloc() : memref<4xf16>
    %alloc_14 = memref.alloc() : memref<14x3xi1>
    %alloc_15 = memref.alloc() : memref<14x3xi16>
    %alloc_16 = memref.alloc() : memref<4xf16>
    %alloc_17 = memref.alloc() : memref<4x3x4xf16>
    %alloc_18 = memref.alloc() : memref<4xf32>
    %16 = tensor.empty() : tensor<14x3xi32>
    %17 = linalg.copy ins(%8 : tensor<14x3xi32>) outs(%16 : tensor<14x3xi32>) -> tensor<14x3xi32>
    %alloc_19 = memref.alloc() : memref<4xi32>
    linalg.transpose ins(%1 : tensor<4xi32>) outs(%alloc_19 : memref<4xi32>) permutation = [0] 
    %alloc_20 = memref.alloc() : memref<i32>
    linalg.reduce ins(%7 : tensor<4xi32>) outs(%alloc_20 : memref<i32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %255 = affine.for %arg3 = 0 to 105 iter_args(%arg4 = %alloc_17) -> (memref<4x3x4xf16>) {
          affine.yield %arg4 : memref<4x3x4xf16>
        }
        %splat_46 = tensor.splat %c-15060_i16 : tensor<4xi16>
        %256 = arith.shrsi %init, %init : i32
        %257 = math.ipowi %false, %false_2 : i1
        %258 = memref.realloc %alloc_16 : memref<4xf16> to memref<14xf16>
        %259 = bufferization.clone %alloc_15 : memref<14x3xi16> to memref<14x3xi16>
        %cst_47 = arith.constant 1.000000e+00 : f16
        %from_elements_48 = tensor.from_elements %cst_47, %cst_47, %cst_47, %cst_47 : tensor<4xf16>
        %260 = math.log10 %5 : tensor<14x3xf16>
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %18 = scf.parallel (%arg3) = (%c10) to (%c7) step (%c14) init (%c1123592564_i64) -> i64 {
      %255 = index.casts %c14 : index to i32
      %256 = math.powf %15, %5 : tensor<14x3xf16>
      %257 = arith.ceildivsi %false, %false : i1
      memref.alloca_scope  {
        %cast_47 = tensor.cast %0 : tensor<14x3xf16> to tensor<?x?xf16>
        %275 = math.expm1 %5 : tensor<14x3xf16>
        %276 = math.log1p %5 : tensor<14x3xf16>
        %expanded_48 = tensor.expand_shape %14 [[0, 1]] : tensor<4xf16> into tensor<4x1xf16>
        %277 = affine.load %alloc_5[%c13] : memref<4xf16>
        %278 = index.castu %c1123592564_i64 : i64 to index
        %279 = arith.shli %false, %false_0 : i1
        %280 = math.rsqrt %14 : tensor<4xf16>
        %281 = math.exp %11 : tensor<4x3x4xf32>
        %282 = math.tan %11 : tensor<4x3x4xf32>
        %283 = affine.min affine_map<(d0, d1) -> (d0 - d1, 0)>(%c10, %c14)
        %cast_49 = tensor.cast %1 : tensor<4xi32> to tensor<?xi32>
        %284 = arith.remf %cst_3, %cst_3 : f32
        %285 = math.ctpop %3 : tensor<14x3xi1>
        %286 = vector.broadcast %c9 : index to vector<14xindex>
        %287 = vector.broadcast %false_0 : i1 to vector<14xi1>
        %288 = vector.broadcast %c1690777272_i32 : i32 to vector<14xi32>
        vector.scatter %alloc_19[%c3] [%286], %287, %288 : memref<4xi32>, vector<14xindex>, vector<14xi1>, vector<14xi32>
        %289 = bufferization.to_tensor %alloc_7 : memref<14x3xf32>
        %290 = arith.andi %c-12810_i16, %c-12810_i16 : i16
        %291 = math.copysign %14, %14 : tensor<4xf16>
        %292 = math.ceil %cst_1 : f32
        %293 = arith.ceildivsi %c-27964_i16, %c31641_i16 : i16
        %from_elements_50 = tensor.from_elements %c171434000_i64, %c171434000_i64, %c1123592564_i64, %c171434000_i64 : tensor<4xi64>
        %294 = math.powf %5, %5 : tensor<14x3xf16>
        %295 = vector.broadcast %277 : f16 to vector<1xf16>
        %296 = vector.multi_reduction <minf>, %295, %295 [] : vector<1xf16> to vector<1xf16>
        %297 = math.absf %0 : tensor<14x3xf16>
        %298 = index.castu %c8 : index to i32
        %299 = arith.addf %cst_1, %cst : f32
        %300 = index.ceildivu %c1, %c9
        %301 = arith.remui %false_2, %false_2 : i1
        %302 = index.sizeof
        %303 = vector.reduction <mul>, %295 : vector<1xf16> into f16
        %304 = arith.addf %cst_1, %cst_1 : f32
        %extracted_51 = tensor.extract %14[%c2] : tensor<4xf16>
      }
      %258 = math.expm1 %10 : tensor<4x3x4xf16>
      %259 = vector.broadcast %c-27964_i16 : i16 to vector<4xi16>
      %260 = vector.transpose %259, [0] : vector<4xi16> to vector<4xi16>
      %261 = vector.insert %c-12810_i16, %259 [1] : i16 into vector<4xi16>
      %262 = math.ctpop %17 : tensor<14x3xi32>
      %263 = vector.load %alloc_4[%c9, %c0] : memref<14x3xi64>, vector<4xi64>
      %264 = arith.divui %c1690777272_i32, %c496720484_i32 : i32
      %cst_46 = arith.constant 1.000000e+00 : f16
      %265 = vector.broadcast %cst_46 : f16 to vector<f16>
      %266 = vector.transfer_write %265, %15[%c12, %c12] : vector<f16>, tensor<14x3xf16>
      %267 = math.absi %1 : tensor<4xi32>
      %268 = math.log2 %5 : tensor<14x3xf16>
      %269 = vector.load %alloc_5[%c1] : memref<4xf16>, vector<14x3xf16>
      %270 = math.expm1 %cst_3 : f32
      %271 = vector.broadcast %c171434000_i64 : i64 to vector<14x3xi64>
      %272 = vector.broadcast %false_0 : i1 to vector<14x3xi1>
      %273 = vector.broadcast %c496720484_i32 : i32 to vector<14x3xi32>
      %274 = vector.gather %alloc_10[%c3] [%273], %272, %271 : memref<4xi64>, vector<14x3xi32>, vector<14x3xi1>, vector<14x3xi64> into vector<14x3xi64>
      %c1_i64 = arith.constant 1 : i64
      scf.reduce(%c1_i64)  : i64 {
      ^bb0(%arg4: i64, %arg5: i64):
        %275 = arith.minsi %false, %false_0 : i1
        %276 = math.powf %10, %10 : tensor<4x3x4xf16>
        %alloca_47 = memref.alloca() : memref<4x3x4xi1>
        %277 = bufferization.to_memref %14 : memref<4xf16>
        %278 = vector.reduction <add>, %259 : vector<4xi16> into i16
        %279 = math.ctlz %16 : tensor<14x3xi32>
        %280 = math.ceil %12 : tensor<4x3x4xf32>
        %from_elements_48 = tensor.from_elements %cst, %cst_1, %cst_3, %cst, %cst_1, %cst_1, %cst_1, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_1, %cst, %cst_1, %cst_3, %cst, %cst_3, %cst, %cst_1, %cst, %cst_1, %cst, %cst_1, %cst_1, %cst, %cst, %cst_3, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst_3 : tensor<14x3xf32>
        %c0_i64 = arith.constant 0 : i64
        scf.reduce.return %c0_i64 : i64
      }
      scf.yield
    }
    %19 = affine.vector_load %alloc_15[%c12, %c4] : memref<14x3xi16>, vector<14xi16>
    affine.vector_store %19, %alloc_15[%c14, %c4] : memref<14x3xi16>, vector<14xi16>
    %alloc_21 = memref.alloc() : memref<4xf16>
    %20 = tensor.empty() : tensor<f16>
    %21 = linalg.dot ins(%alloc_16, %alloc_21 : memref<4xf16>, memref<4xf16>) outs(%20 : tensor<f16>) -> tensor<f16>
    %22 = arith.minui %c-12810_i16, %c-27964_i16 : i16
    %cst_22 = arith.constant 1.000000e+00 : f16
    affine.store %cst_22, %alloc[%c12, %c12, %c11] : memref<4x3x4xf16>
    %23 = index.maxs %c10, %c15
    %24 = arith.minui %c1123592564_i64, %c1123592564_i64 : i64
    %25 = math.absf %cst_1 : f32
    %26 = index.sizeof
    %27 = math.exp %12 : tensor<4x3x4xf32>
    %28 = vector.broadcast %cst_22 : f16 to vector<9x14xf16>
    %29 = vector.broadcast %cst_22 : f16 to vector<9xf16>
    %dest, %accumulated_value = vector.scan <mul>, %28, %29 {inclusive = false, reduction_dim = 1 : i64} : vector<9x14xf16>, vector<9xf16>
    %30 = vector.broadcast %c14 : index to vector<9xindex>
    %31 = vector.broadcast %false : i1 to vector<9xi1>
    %32 = vector.broadcast %cst_22 : f16 to vector<9xf16>
    vector.scatter %alloc_17[%c3, %c1, %c3] [%30], %31, %32 : memref<4x3x4xf16>, vector<9xindex>, vector<9xi1>, vector<9xf16>
    %33 = math.rsqrt %12 : tensor<4x3x4xf32>
    %34 = math.tan %0 : tensor<14x3xf16>
    %35 = math.log2 %11 : tensor<4x3x4xf32>
    %36 = arith.addf %cst_22, %cst_22 : f16
    %37 = math.ctlz %c31641_i16 : i16
    %from_elements = tensor.from_elements %c1123592564_i64, %c748652137_i64, %c748652137_i64, %c171434000_i64, %c171434000_i64, %c2143169797_i64, %c171434000_i64, %c748652137_i64, %c2143169797_i64, %c1123592564_i64, %c1123592564_i64, %c171434000_i64, %c171434000_i64, %c1123592564_i64, %c1123592564_i64, %c1123592564_i64, %c1123592564_i64, %c1123592564_i64, %c2143169797_i64, %c748652137_i64, %c748652137_i64, %c171434000_i64, %c1123592564_i64, %c2143169797_i64, %c1123592564_i64, %c2143169797_i64, %c171434000_i64, %c1123592564_i64, %c748652137_i64, %c2143169797_i64, %c748652137_i64, %c2143169797_i64, %c748652137_i64, %c2143169797_i64, %c748652137_i64, %c171434000_i64, %c748652137_i64, %c2143169797_i64, %c2143169797_i64, %c171434000_i64, %c2143169797_i64, %c748652137_i64, %c2143169797_i64, %c2143169797_i64, %c171434000_i64, %c2143169797_i64, %c171434000_i64, %c171434000_i64 : tensor<4x3x4xi64>
    %38 = math.absf %20 : tensor<f16>
    %39 = vector.insert %c-15060_i16, %19 [10] : i16 into vector<14xi16>
    %40 = math.absf %0 : tensor<14x3xf16>
    %41 = arith.minf %cst_1, %cst_1 : f32
    %42 = math.copysign %10, %10 : tensor<4x3x4xf16>
    %43 = affine.if affine_set<(d0) : ((d0 - 2) * 2 >= 0)>(%c1) -> memref<14x3xf16> {
      %255 = arith.floordivsi %false, %false_2 : i1
      %256 = math.ipowi %8, %16 : tensor<14x3xi32>
      %257 = arith.addf %cst_3, %cst_3 : f32
      %258 = vector.flat_transpose %19 {columns = 7 : i32, rows = 2 : i32} : vector<14xi16> -> vector<14xi16>
      %259 = memref.realloc %alloc_13 : memref<4xf16> to memref<4xf16>
      %inserted_46 = tensor.insert %cst_22 into %5[%c3, %c1] : tensor<14x3xf16>
      %260 = index.maxu %c4, %c2
      %261 = index.sizeof
      %alloc_47 = memref.alloc() : memref<14x3xf16>
      affine.yield %alloc_47 : memref<14x3xf16>
    } else {
      %255 = vector.bitcast %19 : vector<14xi16> to vector<14xi16>
      %256 = scf.while (%arg3 = %c1123592564_i64) : (i64) -> i64 {
        %262 = arith.minf %cst_1, %cst : f32
        %263 = vector.multi_reduction <or>, %255, %c-27964_i16 [0] : vector<14xi16> to i16
        %264 = arith.cmpf olt, %cst_1, %cst : f32
        %265 = math.expm1 %20 : tensor<f16>
        %266 = arith.maxf %cst_22, %cst_22 : f16
        affine.store %c31641_i16, %alloc_15[%c8, %c4] : memref<14x3xi16>
        %267 = index.mul %c1, %c3
        %268 = index.divs %c0, %c0
        scf.condition(%false_0) %arg3 : i64
      } do {
      ^bb0(%arg3: i64):
        %262 = vector.broadcast %cst_22 : f16 to vector<9xf16>
        %263 = vector.broadcast %false_0 : i1 to vector<9xi1>
        %264 = vector.maskedload %alloc_17[%c3, %c0, %c3], %263, %262 : memref<4x3x4xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
        %alloc_48 = memref.alloc() : memref<14x3xf16>
        %265 = vector.broadcast %cst_22 : f16 to vector<14x3xf16>
        %266 = vector.broadcast %false_0 : i1 to vector<14x3xi1>
        %267 = vector.broadcast %c496720484_i32 : i32 to vector<14x3xi32>
        %268 = vector.gather %alloc_48[%23, %c10] [%267], %266, %265 : memref<14x3xf16>, vector<14x3xi32>, vector<14x3xi1>, vector<14x3xf16> into vector<14x3xf16>
        %269 = arith.remf %cst_22, %cst_22 : f16
        %270 = math.absf %cst_1 : f32
        %271 = math.atan2 %10, %10 : tensor<4x3x4xf16>
        %alloca_49 = memref.alloca() : memref<4xi32>
        %272 = math.ctpop %false : i1
        %273 = math.atan %cst : f32
        %from_elements_50 = tensor.from_elements %c-12810_i16, %c-27964_i16, %c-15060_i16, %c-15060_i16, %c31641_i16, %c-15060_i16, %c-15060_i16, %c-27964_i16, %c-15060_i16, %c-12810_i16, %c-27964_i16, %c-27964_i16, %c-15060_i16, %c31641_i16, %c-15060_i16, %c-12810_i16, %c-15060_i16, %c-12810_i16, %c31641_i16, %c-15060_i16, %c-27964_i16, %c-27964_i16, %c-15060_i16, %c-12810_i16, %c-15060_i16, %c31641_i16, %c31641_i16, %c-27964_i16, %c-12810_i16, %c-12810_i16, %c-12810_i16, %c-12810_i16, %c-27964_i16, %c-15060_i16, %c31641_i16, %c31641_i16, %c-15060_i16, %c31641_i16, %c-15060_i16, %c-15060_i16, %c-12810_i16, %c-12810_i16 : tensor<14x3xi16>
        %rank_51 = tensor.rank %3 : tensor<14x3xi1>
        %274 = math.copysign %10, %10 : tensor<4x3x4xf16>
        %275 = math.tan %0 : tensor<14x3xf16>
        %276 = math.ipowi %8, %8 : tensor<14x3xi32>
        %277 = math.fma %5, %5, %0 : tensor<14x3xf16>
        %278 = index.ceildivu %c12, %c3
        %279 = math.cttz %c496720484_i32 : i32
        scf.yield %c171434000_i64 : i64
      }
      %257 = vector.extract %255[4] : vector<14xi16>
      %258 = index.maxu %c9, %c3
      %259 = index.maxs %c15, %26
      %260 = index.ceildivu %26, %c4
      %extracted_46 = tensor.extract %6[%c1, %c2, %c0] : tensor<4x3x4xi16>
      %261 = index.divs %c13, %c3
      %alloc_47 = memref.alloc() : memref<14x3xf16>
      affine.yield %alloc_47 : memref<14x3xf16>
    }
    %44 = scf.while (%arg3 = %alloc_6) : (memref<4xi32>) -> memref<4xi32> {
      %alloca_46 = memref.alloca() : memref<4xi64>
      %255 = index.sizeof
      %256 = arith.negf %cst_1 : f32
      %257 = arith.divui %c1690777272_i32, %c1690777272_i32 : i32
      %258 = arith.divui %c1690777272_i32, %c1690777272_i32 : i32
      %259 = vector.insertelement %c-15060_i16, %19[%c4 : index] : vector<14xi16>
      %260 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %19, %19, %c-15060_i16 : vector<14xi16>, vector<14xi16> into i16
      %261 = math.round %11 : tensor<4x3x4xf32>
      scf.condition(%false) %alloc_6 : memref<4xi32>
    } do {
    ^bb0(%arg3: memref<4xi32>):
      %255 = bufferization.to_memref %0 : memref<14x3xf16>
      %256 = index.sub %c11, %c15
      %257 = bufferization.to_memref %5 : memref<14x3xf16>
      %258 = vector.transpose %19, [0] : vector<14xi16> to vector<14xi16>
      %259 = math.atan %10 : tensor<4x3x4xf16>
      %260 = vector.insertelement %c-12810_i16, %19[%c1 : index] : vector<14xi16>
      %261 = math.floor %15 : tensor<14x3xf16>
      %262 = arith.remf %cst, %cst : f32
      %263 = arith.muli %c1690777272_i32, %c1690777272_i32 : i32
      %264 = math.ceil %21 : tensor<f16>
      %265 = bufferization.to_memref %2 : memref<4xi64>
      %266 = index.maxu %c2, %c9
      %267 = bufferization.to_tensor %alloc_9 : memref<4xi64>
      %268 = index.maxu %c11, %c15
      %269 = math.expm1 %5 : tensor<14x3xf16>
      %270 = math.ipowi %7, %1 : tensor<4xi32>
      scf.yield %alloc_8 : memref<4xi32>
    }
    %45 = index.mul %c14, %c5
    memref.store %false_0, %alloc_12[%c2, %c1, %c1] : memref<4x3x4xi1>
    %46 = vector.insertelement %c-12810_i16, %19[%26 : index] : vector<14xi16>
    %47 = arith.xori %c171434000_i64, %c2143169797_i64 : i64
    %extracted = tensor.extract %8[%c4, %c1] : tensor<14x3xi32>
    %alloca = memref.alloca() : memref<4x3x4xi64>
    %48 = bufferization.to_tensor %alloc_20 : memref<i32>
    %49 = affine.for %arg3 = 0 to 117 iter_args(%arg4 = %alloc_18) -> (memref<4xf32>) {
      affine.yield %alloc_18 : memref<4xf32>
    }
    %50 = index.maxu %c2, %c2
    %51 = math.fma %12, %12, %12 : tensor<4x3x4xf32>
    %52 = arith.remsi %c1690777272_i32, %c1690777272_i32 : i32
    %53 = math.log1p %0 : tensor<14x3xf16>
    %54 = arith.maxui %false_0, %false : i1
    %55 = index.ceildivu %c10, %c7
    %56 = arith.minsi %c2143169797_i64, %c2143169797_i64 : i64
    %from_elements_23 = tensor.from_elements %cst_22, %cst_22, %cst_22, %cst_22 : tensor<4xf16>
    %from_elements_24 = tensor.from_elements %c-27964_i16, %c31641_i16, %c31641_i16, %c-12810_i16, %c-27964_i16, %c-27964_i16, %c-15060_i16, %c-12810_i16, %c-15060_i16, %c-27964_i16, %c-12810_i16, %c31641_i16, %c-12810_i16, %c-27964_i16, %c31641_i16, %c-12810_i16, %c31641_i16, %c-15060_i16, %c-12810_i16, %c-12810_i16, %c-15060_i16, %c-15060_i16, %c-15060_i16, %c31641_i16, %c-27964_i16, %c31641_i16, %c-27964_i16, %c-15060_i16, %c-12810_i16, %c-27964_i16, %c-15060_i16, %c-15060_i16, %c31641_i16, %c-12810_i16, %c-15060_i16, %c-15060_i16, %c-12810_i16, %c-12810_i16, %c-12810_i16, %c-12810_i16, %c-12810_i16, %c-12810_i16, %c-27964_i16, %c-12810_i16, %c-27964_i16, %c-27964_i16, %c-27964_i16, %c-15060_i16 : tensor<4x3x4xi16>
    %57 = vector.insert %c-27964_i16, %19 [12] : i16 into vector<14xi16>
    %58 = vector.bitcast %19 : vector<14xi16> to vector<14xf16>
    %59 = vector.insert %cst_22, %58 [2] : f16 into vector<14xf16>
    %60 = math.ceil %20 : tensor<f16>
    %61 = vector.shuffle %58, %58 [2, 5, 7, 8, 9, 12, 14, 15, 16, 17, 19, 21, 26, 27] : vector<14xf16>, vector<14xf16>
    %62 = index.ceildivu %c3, %c11
    %63 = arith.addf %cst_22, %cst_22 : f16
    scf.execute_region {
      %255 = vector.multi_reduction <add>, %19, %c31641_i16 [0] : vector<14xi16> to i16
      %alloc_46 = memref.alloc() : memref<4x3x4xi64>
      %256 = index.casts %23 : index to i32
      %257 = memref.realloc %alloc_19 : memref<4xi32> to memref<9xi32>
      %258 = index.add %45, %c0
      %259 = math.ctpop %c748652137_i64 : i64
      %260 = math.tan %5 : tensor<14x3xf16>
      %261 = scf.index_switch %c7 -> i1 
      case 1 {
        %splat_47 = tensor.splat %cst : tensor<4xf32>
        %false_48 = index.bool.constant false
        %inserted_49 = tensor.insert %c1123592564_i64 into %2[%c1] : tensor<4xi64>
        %270 = index.castu %c-12810_i16 : i16 to index
        %271 = math.atan %0 : tensor<14x3xf16>
        %272 = arith.addf %cst_22, %cst_22 : f16
        %273 = tensor.empty() : tensor<3x14xf16>
        %274 = tensor.empty() : tensor<14x14xf16>
        %275 = linalg.matmul ins(%0, %273 : tensor<14x3xf16>, tensor<3x14xf16>) outs(%274 : tensor<14x14xf16>) -> tensor<14x14xf16>
        %276 = bufferization.clone %alloc_5 : memref<4xf16> to memref<4xf16>
        %277 = math.sqrt %15 : tensor<14x3xf16>
        %278 = index.divs %50, %c8
        %279 = math.log2 %11 : tensor<4x3x4xf32>
        %280 = vector.load %alloc_14[%c9, %c2] : memref<14x3xi1>, vector<4x3x4xi1>
        %281 = arith.shrsi %false_2, %false : i1
        %282 = arith.addi %c1123592564_i64, %c1123592564_i64 : i64
        %283 = arith.maxf %cst_1, %cst_1 : f32
        %284 = vector.multi_reduction <xor>, %19, %19 [] : vector<14xi16> to vector<14xi16>
        scf.yield %false_2 : i1
      }
      default {
        %270 = arith.maxui %c496720484_i32, %c1690777272_i32 : i32
        %271 = math.log %0 : tensor<14x3xf16>
        %272 = arith.ceildivsi %false_0, %false : i1
        %273 = arith.addf %cst_22, %cst_22 : f16
        %274 = arith.divsi %extracted, %c496720484_i32 : i32
        %275 = index.sizeof
        %276 = bufferization.to_memref %16 : memref<14x3xi32>
        %collapsed = tensor.collapse_shape %15 [[0, 1]] : tensor<14x3xf16> into tensor<42xf16>
        %277 = math.tan %cst : f32
        %278 = math.log2 %11 : tensor<4x3x4xf32>
        %279 = arith.divsi %c-27964_i16, %c31641_i16 : i16
        %280 = index.maxs %c10, %c15
        %281 = affine.min affine_map<(d0, d1) -> (-(d0 mod 128) - d0, (d1 - 4) * 32)>(%c9, %62)
        %282 = vector.broadcast %extracted : i32 to vector<9x3x14xi32>
        %283 = vector.broadcast %extracted : i32 to vector<9x14xi32>
        %dest_47, %accumulated_value_48 = vector.scan <maxsi>, %282, %283 {inclusive = true, reduction_dim = 1 : i64} : vector<9x3x14xi32>, vector<9x14xi32>
        %284 = bufferization.to_tensor %alloc_4 : memref<14x3xi64>
        %285 = arith.minf %cst_1, %cst_3 : f32
        scf.yield %false_0 : i1
      }
      affine.store %cst_22, %alloc_16[%c14] : memref<4xf16>
      %262 = vector.broadcast %cst_22 : f16 to vector<14x14xf16>
      %263 = vector.outerproduct %58, %58, %262 {kind = #vector.kind<maxf>} : vector<14xf16>, vector<14xf16>
      %264 = math.exp %12 : tensor<4x3x4xf32>
      %265 = arith.divui %c2143169797_i64, %c748652137_i64 : i64
      %266 = arith.shrsi %255, %c-27964_i16 : i16
      %267 = vector.bitcast %58 : vector<14xf16> to vector<14xf16>
      %268 = vector.insert %cst_22, %58 [9] : f16 into vector<14xf16>
      %269 = arith.maxui %extracted, %c1690777272_i32 : i32
      scf.yield
    }
    %64 = vector.extract_strided_slice %58 {offsets = [12], sizes = [1], strides = [1]} : vector<14xf16> to vector<1xf16>
    %65 = affine.apply affine_map<(d0) -> (d0 + d0 + 8 + 128)>(%c10)
    %66 = vector.load %alloc_10[%c2] : memref<4xi64>, vector<14x3xi64>
    %alloc_25 = memref.alloc() : memref<14x3xi32>
    %67 = vector.broadcast %c1690777272_i32 : i32 to vector<4xi32>
    %68 = vector.broadcast %false : i1 to vector<4xi1>
    %69 = vector.gather %alloc_25[%26, %50] [%67], %68, %67 : memref<14x3xi32>, vector<4xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
    %70 = vector.broadcast %cst_22 : f16 to vector<4xf16>
    %71 = vector.gather %alloc[%50, %23, %c6] [%69], %68, %70 : memref<4x3x4xf16>, vector<4xi32>, vector<4xi1>, vector<4xf16> into vector<4xf16>
    %72 = arith.minf %cst_1, %cst_1 : f32
    %73 = scf.index_switch %c2 -> vector<4xi64> 
    case 1 {
      %255 = arith.minui %false_0, %false : i1
      %256 = arith.remf %cst_1, %cst_3 : f32
      affine.store %cst_22, %alloc_16[%c1] : memref<4xf16>
      %expanded_46 = tensor.expand_shape %16 [[0], [1, 2]] : tensor<14x3xi32> into tensor<14x3x1xi32>
      %257 = math.exp %5 : tensor<14x3xf16>
      %258 = arith.shrsi %c2143169797_i64, %c171434000_i64 : i64
      %259 = vector.extract %68[2] : vector<4xi1>
      %260 = vector.matrix_multiply %68, %68 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
      %261 = index.sizeof
      %262 = math.sqrt %12 : tensor<4x3x4xf32>
      %263 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %260, %260, %false_2 : vector<1xi1>, vector<1xi1> into i1
      %264 = vector.reduction <minui>, %67 : vector<4xi32> into i32
      %265 = math.tan %15 : tensor<14x3xf16>
      %266 = math.exp2 %14 : tensor<4xf16>
      %267 = math.rsqrt %cst : f32
      %268 = index.casts %261 : index to i32
      %269 = vector.broadcast %c748652137_i64 : i64 to vector<4xi64>
      scf.yield %269 : vector<4xi64>
    }
    case 2 {
      %255 = vector.shuffle %66, %66 [1, 2, 4, 7, 12, 15, 16, 21, 22, 23, 25, 27] : vector<14x3xi64>, vector<14x3xi64>
      %256 = math.rsqrt %11 : tensor<4x3x4xf32>
      %257 = arith.minui %false, %false : i1
      affine.store %extracted, %alloc_20[] : memref<i32>
      %258 = math.copysign %0, %5 : tensor<14x3xf16>
      %259 = math.exp2 %20 : tensor<f16>
      %260 = math.absf %15 : tensor<14x3xf16>
      %261 = math.round %21 : tensor<f16>
      %262 = arith.muli %c496720484_i32, %extracted : i32
      %263 = memref.atomic_rmw assign %cst_22, %alloc_21[%c3] : (f16, memref<4xf16>) -> f16
      %264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%10 : tensor<4x3x4xf16>) {
      ^bb0(%out: f16):
        %269 = memref.load %alloc_14[%c8, %c1] : memref<14x3xi1>
        %270 = math.powf %12, %12 : tensor<4x3x4xf32>
        %271 = index.floordivs %c10, %c10
        bufferization.dealloc_tensor %1 : tensor<4xi32>
        %272 = math.rsqrt %cst_22 : f16
        %273 = arith.andi %extracted, %extracted : i32
        affine.store %false, %alloc_12[%c13, %c5, %c1] : memref<4x3x4xi1>
        %274 = math.exp2 %5 : tensor<14x3xf16>
        %275 = math.absf %20 : tensor<f16>
        %276 = index.add %c13, %c15
        %277 = math.ctpop %c748652137_i64 : i64
        %278 = vector.extract %64[0] : vector<1xf16>
        %279 = math.powf %12, %12 : tensor<4x3x4xf32>
        %280 = arith.shli %c2143169797_i64, %c748652137_i64 : i64
        %281 = memref.load %alloc_21[%c0] : memref<4xf16>
        %282 = tensor.empty() : tensor<4xi1>
        %283 = vector.broadcast %false_0 : i1 to vector<4x3x4xi1>
        %284 = vector.broadcast %c1690777272_i32 : i32 to vector<4x3x4xi32>
        %285 = vector.gather %282[%c5] [%284], %283, %283 : tensor<4xi1>, vector<4x3x4xi32>, vector<4x3x4xi1>, vector<4x3x4xi1> into vector<4x3x4xi1>
        %286 = math.ipowi %3, %3 : tensor<14x3xi1>
        %287 = math.expm1 %0 : tensor<14x3xf16>
        %288 = arith.maxui %false, %false : i1
        %289 = arith.ceildivsi %extracted, %extracted : i32
        %alloca_46 = memref.alloca() : memref<4xi64>
        %290 = vector.broadcast %c2143169797_i64 : i64 to vector<4x3x4xi64>
        %291 = vector.extract_strided_slice %284 {offsets = [1], sizes = [1], strides = [1]} : vector<4x3x4xi32> to vector<1x3x4xi32>
        %292 = math.ctlz %c2143169797_i64 : i64
        %293 = vector.broadcast %cst_22 : f16 to vector<14x14xf16>
        %294 = vector.outerproduct %58, %58, %293 {kind = #vector.kind<minf>} : vector<14xf16>, vector<14xf16>
        %295 = vector.broadcast %false_2 : i1 to vector<3x4x3x4xi1>
        %296 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %283, %283, %295 : vector<4x3x4xi1>, vector<4x3x4xi1> into vector<3x4x3x4xi1>
        %297 = arith.addf %cst_3, %cst_1 : f32
        %298 = index.maxu %c14, %23
        %299 = bufferization.to_memref %1 : memref<4xi32>
        %300 = math.ctlz %9 : tensor<4x3x4xi32>
        %301 = index.ceildivu %c12, %45
        memref.store %cst_22, %alloc_17[%c1, %c1, %c3] : memref<4x3x4xf16>
        linalg.yield %out : f16
      } -> tensor<4x3x4xf16>
      %265 = vector.insert %cst_22, %64 [0] : f16 into vector<1xf16>
      memref.store %c1690777272_i32, %alloc_8[%c3] : memref<4xi32>
      %266 = arith.remf %cst, %cst_3 : f32
      affine.store %extracted, %alloc_19[%c9] : memref<4xi32>
      %267 = arith.addi %c1690777272_i32, %extracted : i32
      %268 = vector.broadcast %c171434000_i64 : i64 to vector<4xi64>
      scf.yield %268 : vector<4xi64>
    }
    case 3 {
      %255 = index.ceildivu %c12, %c14
      %256 = arith.remui %c748652137_i64, %c171434000_i64 : i64
      %257 = math.tanh %15 : tensor<14x3xf16>
      %258 = math.ceil %5 : tensor<14x3xf16>
      %259 = arith.addi %c1690777272_i32, %c496720484_i32 : i32
      %260 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %67, %69, %extracted : vector<4xi32>, vector<4xi32> into i32
      %261 = arith.remsi %c-12810_i16, %c-27964_i16 : i16
      %262 = index.divs %c1, %c6
      %inserted_46 = tensor.insert %extracted into %7[%c3] : tensor<4xi32>
      %263 = math.floor %0 : tensor<14x3xf16>
      %264 = memref.atomic_rmw mins %c1690777272_i32, %alloc_6[%c3] : (i32, memref<4xi32>) -> i32
      %alloca_47 = memref.alloca() : memref<4xi1>
      %265 = arith.xori %c-12810_i16, %c31641_i16 : i16
      %extracted_48 = tensor.extract %7[%c1] : tensor<4xi32>
      %266 = math.exp2 %11 : tensor<4x3x4xf32>
      %267 = memref.alloca_scope  -> (memref<4x3x4xf32>) {
        %269 = index.casts %false : i1 to index
        %270 = math.powf %cst_1, %cst : f32
        %271 = math.cttz %false_2 : i1
        %from_elements_49 = tensor.from_elements %c171434000_i64, %c171434000_i64, %c748652137_i64, %c2143169797_i64, %c2143169797_i64, %c2143169797_i64, %c2143169797_i64, %c748652137_i64, %c748652137_i64, %c748652137_i64, %c748652137_i64, %c2143169797_i64, %c748652137_i64, %c171434000_i64, %c748652137_i64, %c1123592564_i64, %c1123592564_i64, %c171434000_i64, %c171434000_i64, %c748652137_i64, %c748652137_i64, %c748652137_i64, %c2143169797_i64, %c2143169797_i64, %c748652137_i64, %c1123592564_i64, %c748652137_i64, %c171434000_i64, %c2143169797_i64, %c171434000_i64, %c2143169797_i64, %c748652137_i64, %c171434000_i64, %c1123592564_i64, %c171434000_i64, %c2143169797_i64, %c2143169797_i64, %c2143169797_i64, %c1123592564_i64, %c1123592564_i64, %c1123592564_i64, %c1123592564_i64 : tensor<14x3xi64>
        %272 = math.rsqrt %14 : tensor<4xf16>
        %273 = arith.cmpi slt, %c496720484_i32, %c496720484_i32 : i32
        %274 = index.ceildivu %c11, %c3
        %275 = arith.divui %c1690777272_i32, %c1690777272_i32 : i32
        %276 = arith.ceildivsi %c-12810_i16, %c-15060_i16 : i16
        %277 = arith.maxui %c-27964_i16, %c-27964_i16 : i16
        %278 = math.absi %9 : tensor<4x3x4xi32>
        %279 = math.exp %0 : tensor<14x3xf16>
        %280 = arith.ceildivsi %c496720484_i32, %extracted : i32
        %281 = arith.addf %cst_3, %cst_1 : f32
        %282 = arith.minsi %extracted_48, %extracted_48 : i32
        %283 = vector.matrix_multiply %69, %67 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi32>, vector<4xi32>) -> vector<1xi32>
        %284 = math.rsqrt %cst_22 : f16
        %from_elements_50 = tensor.from_elements %cst_1, %cst, %cst_3, %cst_3, %cst_1, %cst_3, %cst, %cst_3, %cst, %cst, %cst_1, %cst, %cst, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst, %cst_1, %cst, %cst_3, %cst_1, %cst_3, %cst_3, %cst, %cst_1, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst_1, %cst, %cst_3 : tensor<14x3xf32>
        %285 = math.tan %5 : tensor<14x3xf16>
        %286 = arith.shrsi %false_0, %false : i1
        %287 = index.casts %c-15060_i16 : i16 to index
        %288 = math.absf %10 : tensor<4x3x4xf16>
        %289 = math.tan %15 : tensor<14x3xf16>
        %290 = vector.insertelement %cst_22, %64[%c14 : index] : vector<1xf16>
        %291 = arith.maxsi %c496720484_i32, %c496720484_i32 : i32
        %292 = math.log10 %10 : tensor<4x3x4xf16>
        %293 = math.exp %21 : tensor<f16>
        %cast_51 = tensor.cast %2 : tensor<4xi64> to tensor<?xi64>
        %294 = memref.atomic_rmw assign %cst_22, %alloc_17[%c2, %c0, %c0] : (f16, memref<4x3x4xf16>) -> f16
        %295 = index.mul %23, %50
        %296 = index.add %50, %295
        %297 = math.powf %0, %5 : tensor<14x3xf16>
        %alloc_52 = memref.alloc() : memref<4x3x4xf32>
        memref.alloca_scope.return %alloc_52 : memref<4x3x4xf32>
      }
      %268 = vector.broadcast %c748652137_i64 : i64 to vector<4xi64>
      scf.yield %268 : vector<4xi64>
    }
    default {
      %255 = arith.remsi %false_0, %false_2 : i1
      %256 = vector.broadcast %cst : f32 to vector<4xf32>
      %257 = vector.maskedload %alloc_7[%c12, %c0], %68, %256 : memref<14x3xf32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
      %258 = vector.flat_transpose %58 {columns = 7 : i32, rows = 2 : i32} : vector<14xf16> -> vector<14xf16>
      %259 = vector.insert %cst_3, %256 [2] : f32 into vector<4xf32>
      %260 = affine.min affine_map<(d0, d1, d2) -> (d2, d1 floordiv 2 + 8)>(%65, %c10, %c12)
      %261 = tensor.empty() : tensor<3x4xf16>
      %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%261, %alloc, %alloc_5 : tensor<3x4xf16>, memref<4x3x4xf16>, memref<4xf16>) outs(%10 : tensor<4x3x4xf16>) {
      ^bb0(%in: f16, %in_46: f16, %in_47: f16, %out: f16):
        %273 = index.casts %c7 : index to i32
        %274 = math.atan2 %14, %14 : tensor<4xf16>
        %275 = vector.insert %cst, %257 [0] : f32 into vector<4xf32>
        %276 = index.maxu %50, %45
        %277 = arith.shrsi %false_0, %false_0 : i1
        %278 = math.exp2 %12 : tensor<4x3x4xf32>
        %279 = vector.broadcast %false_0 : i1 to vector<4xi1>
        %280 = index.maxu %c8, %276
        %281 = vector.extract %279[2] : vector<4xi1>
        %282 = index.add %c14, %23
        %283 = arith.addf %out, %in : f16
        %284 = arith.minui %c171434000_i64, %c171434000_i64 : i64
        %true = index.bool.constant true
        %285 = vector.broadcast %in : f16 to vector<4x4xf16>
        %286 = vector.outerproduct %71, %71, %285 {kind = #vector.kind<minf>} : vector<4xf16>, vector<4xf16>
        %287 = arith.addf %in_46, %in : f16
        %288 = arith.remf %out, %out : f16
        %289 = math.tan %cst_22 : f16
        %290 = math.absf %15 : tensor<14x3xf16>
        %291 = vector.insert %true, %279 [1] : i1 into vector<4xi1>
        memref.store %c1123592564_i64, %alloc_4[%c5, %c0] : memref<14x3xi64>
        %292 = math.ctlz %1 : tensor<4xi32>
        %293 = arith.minui %false_0, %false_2 : i1
        %294 = arith.addf %in_46, %in_47 : f16
        %295 = arith.maxui %c-27964_i16, %c-15060_i16 : i16
        %296 = arith.addi %c2143169797_i64, %c171434000_i64 : i64
        %297 = math.exp %from_elements_23 : tensor<4xf16>
        %298 = vector.insert %in, %71 [2] : f16 into vector<4xf16>
        %299 = math.ctpop %8 : tensor<14x3xi32>
        %300 = vector.shuffle %19, %19 [2, 3, 5, 7, 8, 9, 12, 15, 16, 20, 21, 22, 25, 26, 27] : vector<14xi16>, vector<14xi16>
        %from_elements_48 = tensor.from_elements %c748652137_i64, %c1123592564_i64, %c2143169797_i64, %c1123592564_i64 : tensor<4xi64>
        %301 = math.powf %11, %12 : tensor<4x3x4xf32>
        %302 = vector.shuffle %66, %66 [0, 1, 3, 5, 7, 8, 9, 10, 21, 22, 23, 25, 26] : vector<14x3xi64>, vector<14x3xi64>
        linalg.yield %in_47 : f16
      } -> tensor<4x3x4xf16>
      %263 = arith.minui %c-15060_i16, %c-15060_i16 : i16
      affine.store %cst_22, %alloc_16[%c13] : memref<4xf16>
      %264 = vector.flat_transpose %69 {columns = 2 : i32, rows = 2 : i32} : vector<4xi32> -> vector<4xi32>
      %265 = math.ipowi %1, %1 : tensor<4xi32>
      %266 = arith.shrsi %c1123592564_i64, %c748652137_i64 : i64
      %267 = math.cttz %7 : tensor<4xi32>
      %268 = affine.load %alloc_21[%c3] : memref<4xf16>
      %269 = math.cos %cst_22 : f16
      %270 = vector.bitcast %70 : vector<4xf16> to vector<4xf16>
      %271 = math.ceil %15 : tensor<14x3xf16>
      %272 = vector.broadcast %c171434000_i64 : i64 to vector<4xi64>
      scf.yield %272 : vector<4xi64>
    }
    %alloca_26 = memref.alloca() : memref<4xi64>
    %74 = index.add %23, %c13
    %75 = arith.shrsi %c2143169797_i64, %c171434000_i64 : i64
    %expanded = tensor.expand_shape %10 [[0], [1], [2, 3]] : tensor<4x3x4xf16> into tensor<4x3x4x1xf16>
    %76 = memref.realloc %alloc_11 : memref<4xf16> to memref<14xf16>
    %77 = arith.negf %cst : f32
    %78 = math.powf %21, %20 : tensor<f16>
    bufferization.dealloc_tensor %from_elements_23 : tensor<4xf16>
    %alloc_27 = memref.alloc() : memref<4x3x4xf32>
    %79 = arith.remui %c31641_i16, %c-12810_i16 : i16
    %80 = tensor.empty() : tensor<4xi1>
    %81 = vector.gather %80[%c6] [%67], %68, %68 : tensor<4xi1>, vector<4xi32>, vector<4xi1>, vector<4xi1> into vector<4xi1>
    %82 = math.ctlz %false_0 : i1
    %83 = math.ipowi %2, %2 : tensor<4xi64>
    %84 = arith.shrsi %false, %false_0 : i1
    %85 = math.exp2 %12 : tensor<4x3x4xf32>
    %86 = math.log2 %14 : tensor<4xf16>
    %87 = index.maxs %65, %c2
    %88 = math.exp %21 : tensor<f16>
    %89 = index.maxu %c1, %c10
    %90 = vector.insert %c1690777272_i32, %69 [1] : i32 into vector<4xi32>
    %91 = bufferization.to_memref %from_elements_24 : memref<4x3x4xi16>
    %92 = vector.bitcast %69 : vector<4xi32> to vector<4xi32>
    %93 = math.copysign %14, %14 : tensor<4xf16>
    %94 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %67, %92, %c1690777272_i32 : vector<4xi32>, vector<4xi32> into i32
    %rank = tensor.rank %0 : tensor<14x3xf16>
    %95 = vector.bitcast %64 : vector<1xf16> to vector<1xf16>
    %96 = arith.divf %cst_1, %cst_3 : f32
    %97 = arith.cmpi ule, %c1690777272_i32, %extracted : i32
    %98 = index.maxu %c7, %c6
    %99 = arith.maxf %cst, %cst_3 : f32
    %100 = scf.index_switch %c7 -> memref<14x3xi32> 
    case 1 {
      %255 = arith.divsi %false, %false_2 : i1
      %256 = vector.load %alloc_4[%c4, %c0] : memref<14x3xi64>, vector<4xi64>
      %257 = bufferization.clone %alloc_18 : memref<4xf32> to memref<4xf32>
      %258 = index.ceildivu %62, %98
      %259 = arith.xori %c496720484_i32, %c496720484_i32 : i32
      %260 = math.powf %expanded, %expanded : tensor<4x3x4x1xf16>
      %261 = math.round %cst_3 : f32
      %262 = vector.broadcast %false_2 : i1 to vector<4x4xi1>
      %263 = vector.outerproduct %81, %81, %262 {kind = #vector.kind<or>} : vector<4xi1>, vector<4xi1>
      %264 = affine.for %arg3 = 0 to 126 iter_args(%arg4 = %11) -> (tensor<4x3x4xf32>) {
        affine.yield %11 : tensor<4x3x4xf32>
      }
      %265 = vector.flat_transpose %64 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
      %266 = vector.flat_transpose %58 {columns = 7 : i32, rows = 2 : i32} : vector<14xf16> -> vector<14xf16>
      %267 = arith.mulf %cst_3, %cst_1 : f32
      %268 = math.ctpop %c-12810_i16 : i16
      memref.assume_alignment %alloc_7, 16 : memref<14x3xf32>
      %269 = memref.realloc %257 : memref<4xf32> to memref<14xf32>
      %270 = index.ceildivu %c5, %c14
      scf.yield %alloc_25 : memref<14x3xi32>
    }
    case 2 {
      %255 = math.tanh %cst_1 : f32
      %256 = arith.andi %false, %false_0 : i1
      %257 = vector.multi_reduction <minsi>, %66, %66 [] : vector<14x3xi64> to vector<14x3xi64>
      %258 = index.mul %55, %c9
      scf.index_switch %26 
      case 1 {
        %false_47 = index.bool.constant false
        %268 = arith.negf %cst_3 : f32
        %269 = arith.mulf %cst_3, %cst : f32
        %rank_48 = tensor.rank %7 : tensor<4xi32>
        %270 = math.absf %10 : tensor<4x3x4xf16>
        %271 = arith.minf %cst_1, %cst : f32
        %false_49 = index.bool.constant false
        %272 = math.ipowi %6, %from_elements_24 : tensor<4x3x4xi16>
        %273 = vector.flat_transpose %70 {columns = 2 : i32, rows = 2 : i32} : vector<4xf16> -> vector<4xf16>
        %274 = math.ceil %11 : tensor<4x3x4xf32>
        %275 = arith.addi %c496720484_i32, %c496720484_i32 : i32
        %276 = math.ctpop %c748652137_i64 : i64
        %277 = math.atan %15 : tensor<14x3xf16>
        %true = index.bool.constant true
        %278 = vector.broadcast %extracted : i32 to vector<4x4xi32>
        %279 = vector.outerproduct %92, %92, %278 {kind = #vector.kind<or>} : vector<4xi32>, vector<4xi32>
        %280 = vector.insert %cst_22, %95 [0] : f16 into vector<1xf16>
        scf.yield
      }
      case 2 {
        %extracted_47 = tensor.extract %2[%c0] : tensor<4xi64>
        %from_elements_48 = tensor.from_elements %cst_22, %cst_22, %cst_22, %cst_22 : tensor<4xf16>
        %268 = vector.flat_transpose %69 {columns = 2 : i32, rows = 2 : i32} : vector<4xi32> -> vector<4xi32>
        %269 = arith.minf %cst_22, %cst_22 : f16
        %270 = arith.remsi %c31641_i16, %c-27964_i16 : i16
        %271 = math.exp %from_elements_23 : tensor<4xf16>
        %272 = arith.maxf %cst_1, %cst_1 : f32
        %273 = math.round %12 : tensor<4x3x4xf32>
        %274 = arith.remsi %c496720484_i32, %c496720484_i32 : i32
        %275 = math.log2 %14 : tensor<4xf16>
        %276 = affine.min affine_map<(d0) -> (0)>(%55)
        %277 = arith.maxui %c1690777272_i32, %c1690777272_i32 : i32
        %alloc_49 = memref.alloc() : memref<14x3xi16>
        memref.copy %alloc_15, %alloc_49 : memref<14x3xi16> to memref<14x3xi16>
        %278 = index.sizeof
        %279 = math.tanh %cst_3 : f32
        %280 = math.round %cst : f32
        scf.yield
      }
      case 3 {
        %268 = arith.ceildivsi %c-12810_i16, %c-12810_i16 : i16
        %269 = vector.broadcast %cst_22 : f16 to vector<14x14xf16>
        %270 = vector.outerproduct %58, %58, %269 {kind = #vector.kind<maxf>} : vector<14xf16>, vector<14xf16>
        %271 = arith.mulf %cst_22, %cst_22 : f16
        %rank_47 = tensor.rank %17 : tensor<14x3xi32>
        %272 = arith.divui %c1690777272_i32, %c1690777272_i32 : i32
        %273 = vector.load %alloc_5[%c1] : memref<4xf16>, vector<4xf16>
        %274 = vector.shuffle %19, %19 [0, 1, 4, 5, 7, 9, 11, 13, 14, 15, 17, 18, 19, 20, 22, 24, 25, 27] : vector<14xi16>, vector<14xi16>
        %275 = math.exp2 %cst_3 : f32
        %276 = vector.broadcast %c31641_i16 : i16 to vector<4x3x4xi16>
        %277 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 - 4, d3 - 68, d3 - 69)>(%c10, %c10, %62, %87)
        %278 = math.copysign %10, %10 : tensor<4x3x4xf16>
        %279 = math.tan %cst : f32
        %280 = arith.addf %cst_1, %cst_3 : f32
        %281 = arith.andi %c2143169797_i64, %c1123592564_i64 : i64
        %282 = math.log1p %14 : tensor<4xf16>
        %from_elements_48 = tensor.from_elements %cst_1, %cst_1, %cst_1, %cst : tensor<4xf32>
        scf.yield
      }
      case 4 {
        %268 = math.ipowi %c-15060_i16, %c-12810_i16 : i16
        %269 = vector.load %alloc_9[%c1] : memref<4xi64>, vector<14x3xi64>
        %270 = index.add %c4, %62
        %extracted_47 = tensor.extract %14[%c2] : tensor<4xf16>
        affine.store %cst_22, %alloc_5[%c6] : memref<4xf16>
        %271 = vector.insert %extracted_47, %95 [0] : f16 into vector<1xf16>
        %272 = math.rsqrt %cst : f32
        %273 = arith.addi %c1690777272_i32, %extracted : i32
        %274 = bufferization.clone %alloc_21 : memref<4xf16> to memref<4xf16>
        %275 = arith.shrsi %c2143169797_i64, %c748652137_i64 : i64
        %276 = math.round %14 : tensor<4xf16>
        %277 = math.ctpop %c496720484_i32 : i32
        %278 = bufferization.to_memref %from_elements_23 : memref<4xf16>
        %279 = vector.broadcast %c4 : index to vector<4xindex>
        vector.scatter %alloc_20[] [%279], %68, %69 : memref<i32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
        %280 = math.powf %15, %0 : tensor<14x3xf16>
        %alloca_48 = memref.alloca() : memref<14x3xi16>
        scf.yield
      }
      default {
        %268 = memref.realloc %alloc_5 : memref<4xf16> to memref<3xf16>
        %extracted_47 = tensor.extract %6[%c0, %c1, %c1] : tensor<4x3x4xi16>
        %269 = vector.insert %cst_22, %64 [0] : f16 into vector<1xf16>
        %270 = index.ceildivu %55, %c15
        %271 = arith.addf %cst_3, %cst_1 : f32
        %272 = math.exp %15 : tensor<14x3xf16>
        %273 = arith.addf %cst, %cst : f32
        %274 = vector.extract %95[0] : vector<1xf16>
        %275 = math.tan %cst_1 : f32
        %276 = arith.shli %c496720484_i32, %c496720484_i32 : i32
        %277 = math.ceil %12 : tensor<4x3x4xf32>
        %278 = vector.extract_strided_slice %58 {offsets = [4], sizes = [10], strides = [1]} : vector<14xf16> to vector<10xf16>
        %279 = math.floor %11 : tensor<4x3x4xf32>
        %280 = index.ceildivs %23, %c12
        %281 = index.divs %62, %258
        %c1111284447_i32 = arith.constant 1111284447 : i32
      }
      %259 = math.exp %15 : tensor<14x3xf16>
      %260 = arith.maxui %false_0, %false_0 : i1
      %261 = vector.insert %false, %68 [1] : i1 into vector<4xi1>
      %262 = index.sub %c15, %50
      %263 = math.tan %10 : tensor<4x3x4xf16>
      %cast_46 = tensor.cast %4 : tensor<14x3xi64> to tensor<?x?xi64>
      %264 = math.atan2 %15, %5 : tensor<14x3xf16>
      %265 = index.ceildivu %c4, %65
      %266 = math.absf %5 : tensor<14x3xf16>
      %267 = index.casts %false : i1 to index
      affine.for %arg3 = 0 to 60 {
      }
      scf.yield %alloc_25 : memref<14x3xi32>
    }
    case 3 {
      %255 = math.rsqrt %cst_1 : f32
      %256 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %70, %70, %cst_22 : vector<4xf16>, vector<4xf16> into f16
      %257 = memref.load %alloc_20[] : memref<i32>
      memref.store %cst, %alloc_18[%c0] : memref<4xf32>
      %258 = index.divs %55, %c15
      %259 = arith.divf %cst, %cst_1 : f32
      %260 = affine.for %arg3 = 0 to 23 iter_args(%arg4 = %c-12810_i16) -> (i16) {
        affine.yield %c-15060_i16 : i16
      }
      %261 = vector.extract_strided_slice %68 {offsets = [1], sizes = [3], strides = [1]} : vector<4xi1> to vector<3xi1>
      %262 = vector.matrix_multiply %58, %58 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xf16>, vector<14xf16>) -> vector<1xf16>
      %263 = arith.shli %c1123592564_i64, %c171434000_i64 : i64
      %from_elements_46 = tensor.from_elements %cst, %cst, %cst_3, %cst_1, %cst_1, %cst_3, %cst, %cst_3, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst, %cst_1, %cst_3, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst, %cst_3, %cst_3, %cst_1, %cst_3, %cst, %cst, %cst, %cst_3, %cst_3, %cst_1, %cst, %cst_3, %cst_3 : tensor<4x3x4xf32>
      %264 = bufferization.to_memref %10 : memref<4x3x4xf16>
      %265 = math.cos %11 : tensor<4x3x4xf32>
      %266 = math.exp %from_elements_23 : tensor<4xf16>
      %267 = math.fma %0, %0, %0 : tensor<14x3xf16>
      %268 = affine.for %arg3 = 0 to 97 iter_args(%arg4 = %48) -> (tensor<i32>) {
        affine.yield %arg4 : tensor<i32>
      }
      scf.yield %alloc_25 : memref<14x3xi32>
    }
    case 4 {
      %255 = arith.minui %false_0, %false_2 : i1
      %256 = math.tan %15 : tensor<14x3xf16>
      %257 = index.sizeof
      %258 = math.rsqrt %10 : tensor<4x3x4xf16>
      %259 = arith.remsi %c-27964_i16, %c-27964_i16 : i16
      %260 = arith.remui %c31641_i16, %c-27964_i16 : i16
      %rank_46 = tensor.rank %11 : tensor<4x3x4xf32>
      %261 = arith.maxf %cst, %cst_3 : f32
      %262 = arith.muli %c496720484_i32, %c496720484_i32 : i32
      %263 = vector.maskedload %alloc_19[%c2], %81, %92 : memref<4xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
      %264 = memref.atomic_rmw muli %c748652137_i64, %alloc_10[%c2] : (i64, memref<4xi64>) -> i64
      %265 = arith.maxf %cst_1, %cst_3 : f32
      %266 = math.powf %from_elements_23, %14 : tensor<4xf16>
      %267 = vector.broadcast %cst_3 : f32 to vector<4x3x4xf32>
      %268 = index.sizeof
      %269 = math.ctpop %7 : tensor<4xi32>
      scf.yield %alloc_25 : memref<14x3xi32>
    }
    default {
      %255 = vector.bitcast %92 : vector<4xi32> to vector<4xi32>
      %256 = vector.flat_transpose %81 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
      %257 = vector.gather %3[%62, %26] [%69], %68, %68 : tensor<14x3xi1>, vector<4xi32>, vector<4xi1>, vector<4xi1> into vector<4xi1>
      %collapsed = tensor.collapse_shape %6 [[0, 1], [2]] : tensor<4x3x4xi16> into tensor<12x4xi16>
      %258 = arith.minui %c1123592564_i64, %c2143169797_i64 : i64
      %259 = math.rsqrt %12 : tensor<4x3x4xf32>
      %260 = math.fma %11, %11, %11 : tensor<4x3x4xf32>
      %261 = vector.insert %false_0, %257 [0] : i1 into vector<4xi1>
      %262 = vector.broadcast %c11 : index to vector<14xindex>
      %263 = vector.broadcast %false : i1 to vector<14xi1>
      vector.scatter %alloc_12[%c0, %c1, %c2] [%262], %263, %263 : memref<4x3x4xi1>, vector<14xindex>, vector<14xi1>, vector<14xi1>
      %264 = arith.andi %c31641_i16, %c-15060_i16 : i16
      %265 = tensor.empty() : tensor<4xi64>
      %266 = vector.extract_strided_slice %66 {offsets = [3], sizes = [1], strides = [1]} : vector<14x3xi64> to vector<1x3xi64>
      %267 = index.castu %c0 : index to i32
      %268 = index.castu %55 : index to i32
      %269 = index.mul %c12, %55
      %270 = index.castu %c1123592564_i64 : i64 to index
      scf.yield %alloc_25 : memref<14x3xi32>
    }
    %101 = math.tan %cst_3 : f32
    %102 = vector.bitcast %71 : vector<4xf16> to vector<4xi16>
    %103 = math.ceil %15 : tensor<14x3xf16>
    %104 = math.round %5 : tensor<14x3xf16>
    memref.store %false_2, %alloc_12[%c1, %c2, %c1] : memref<4x3x4xi1>
    memref.store %cst_22, %alloc_5[%c0] : memref<4xf16>
    %105 = affine.min affine_map<(d0, d1) -> (d0 mod 8, (d0 floordiv 2) * 16 + 15, d1 floordiv 4, d1 ceildiv 128 - d0)>(%50, %c1)
    %106 = math.absf %15 : tensor<14x3xf16>
    %107 = math.rsqrt %cst_1 : f32
    %108 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %67, %67, %c496720484_i32 : vector<4xi32>, vector<4xi32> into i32
    %109 = arith.xori %false_2, %false : i1
    %110 = math.ctlz %4 : tensor<14x3xi64>
    %111 = vector.insert %c1690777272_i32, %67 [2] : i32 into vector<4xi32>
    %112 = arith.shrsi %c-27964_i16, %c-15060_i16 : i16
    %113 = math.atan %15 : tensor<14x3xf16>
    %114 = math.fma %20, %20, %20 : tensor<f16>
    %115 = index.sizeof
    %116 = index.sizeof
    %117 = memref.atomic_rmw addi %c1690777272_i32, %alloc_8[%c2] : (i32, memref<4xi32>) -> i32
    %118 = vector.extract_strided_slice %102 {offsets = [1], sizes = [3], strides = [1]} : vector<4xi16> to vector<3xi16>
    %119 = vector.flat_transpose %64 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
    scf.index_switch %115 
    case 1 {
      %255 = vector.extract_strided_slice %119 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
      %256 = index.maxu %115, %c15
      affine.store %cst_3, %alloc_7[%c2, %c8] : memref<14x3xf32>
      %257 = index.floordivs %74, %26
      affine.store %c496720484_i32, %alloc_25[%c5, %c4] : memref<14x3xi32>
      %258 = math.rsqrt %5 : tensor<14x3xf16>
      %259 = vector.maskedload %alloc_17[%c0, %c0, %c3], %81, %71 : memref<4x3x4xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
      %260 = arith.andi %extracted, %c496720484_i32 : i32
      %261 = index.ceildivu %c9, %23
      %262 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %19, %19, %c-27964_i16 : vector<14xi16>, vector<14xi16> into i16
      %263 = math.cos %11 : tensor<4x3x4xf32>
      %264 = arith.muli %false_2, %false : i1
      %265 = arith.maxui %c1123592564_i64, %c1123592564_i64 : i64
      memref.assume_alignment %alloc_8, 4 : memref<4xi32>
      %266 = arith.addf %cst, %cst : f32
      %267 = index.sizeof
      scf.yield
    }
    case 2 {
      %255 = math.absi %8 : tensor<14x3xi32>
      %256 = index.castu %c13 : index to i32
      %257 = index.castu %c748652137_i64 : i64 to index
      %alloc_46 = memref.alloc() : memref<14x3xi32>
      affine.store %c2143169797_i64, %alloc_9[%c10] : memref<4xi64>
      memref.store %c1690777272_i32, %alloc_8[%c2] : memref<4xi32>
      %258 = memref.load %alloc_5[%c1] : memref<4xf16>
      %259 = index.sub %45, %rank
      %260 = memref.realloc %alloc_11 : memref<4xf16> to memref<14xf16>
      %261 = index.casts %c496720484_i32 : i32 to index
      %262 = arith.divui %c31641_i16, %c-15060_i16 : i16
      %263 = arith.remf %cst, %cst_3 : f32
      scf.execute_region {
        %267 = arith.divui %c-15060_i16, %c-15060_i16 : i16
        %268 = memref.atomic_rmw minu %c-27964_i16, %alloc_15[%c9, %c0] : (i16, memref<14x3xi16>) -> i16
        %269 = bufferization.to_tensor %alloc_9 : memref<4xi64>
        affine.store %cst_1, %alloc_7[%c2, %c2] : memref<14x3xf32>
        %270 = vector.flat_transpose %19 {columns = 7 : i32, rows = 2 : i32} : vector<14xi16> -> vector<14xi16>
        %271 = math.ipowi %c-27964_i16, %c31641_i16 : i16
        %272 = affine.max affine_map<(d0, d1, d2) -> (d0 * 2, -d2, -d2, d0 + 16)>(%c7, %116, %45)
        %273 = bufferization.to_memref %2 : memref<4xi64>
        %274 = math.exp %cst : f32
        %275 = math.exp %21 : tensor<f16>
        %276 = vector.flat_transpose %102 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %277 = math.sqrt %20 : tensor<f16>
        %278 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %68, %81, %false : vector<4xi1>, vector<4xi1> into i1
        %279 = index.add %105, %62
        %280 = arith.minui %c1123592564_i64, %c1123592564_i64 : i64
        %281 = arith.addi %c-27964_i16, %c-12810_i16 : i16
        scf.yield
      }
      %264 = vector.broadcast %cst : f32 to vector<4xf32>
      %265 = vector.load %alloc_21[%c1] : memref<4xf16>, vector<4xf16>
      %266 = vector.extract %67[0] : vector<4xi32>
      scf.yield
    }
    default {
      %255 = index.castu %105 : index to i32
      %256 = memref.atomic_rmw andi %extracted, %alloc_6[%c1] : (i32, memref<4xi32>) -> i32
      %257 = vector.splat %55 : vector<4xindex>
      %258 = arith.divui %c2143169797_i64, %c748652137_i64 : i64
      %259 = math.log %expanded : tensor<4x3x4x1xf16>
      %260 = arith.negf %cst_1 : f32
      %261 = index.sub %116, %55
      %262 = arith.remui %false_0, %false : i1
      %263 = bufferization.to_memref %from_elements : memref<4x3x4xi64>
      %cast_46 = tensor.cast %12 : tensor<4x3x4xf32> to tensor<?x?x?xf32>
      %264 = arith.shli %c-12810_i16, %c-15060_i16 : i16
      %265 = math.log10 %12 : tensor<4x3x4xf32>
      %266 = math.round %cst_22 : f16
      %splat_47 = tensor.splat %cst_3 : tensor<4xf32>
      %267 = math.absf %0 : tensor<14x3xf16>
      %268 = index.maxu %74, %115
    }
    %120 = arith.minui %false_2, %false : i1
    %121 = math.ctlz %false_2 : i1
    %122 = math.rsqrt %15 : tensor<14x3xf16>
    %123 = math.absf %12 : tensor<4x3x4xf32>
    %124 = index.maxu %45, %c10
    %125 = bufferization.to_tensor %alloc_15 : memref<14x3xi16>
    %126 = arith.xori %c1123592564_i64, %c1123592564_i64 : i64
    %127 = vector.flat_transpose %64 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
    %128 = math.ctlz %extracted : i32
    %129 = arith.addf %cst, %cst_3 : f32
    %130 = math.ctlz %false_2 : i1
    %131 = math.round %20 : tensor<f16>
    %132 = vector.gather %alloc_15[%c1, %c4] [%92], %68, %102 : memref<14x3xi16>, vector<4xi32>, vector<4xi1>, vector<4xi16> into vector<4xi16>
    %133 = vector.maskedload %alloc_25[%c13, %c2], %68, %92 : memref<14x3xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
    %134 = index.sub %c7, %55
    %inserted = tensor.insert %c496720484_i32 into %8[%c4, %c0] : tensor<14x3xi32>
    %135 = math.ctlz %c496720484_i32 : i32
    affine.for %arg3 = 0 to 101 {
    }
    %extracted_28 = tensor.extract %5[%c4, %c0] : tensor<14x3xf16>
    %136 = arith.ceildivsi %c1123592564_i64, %c1123592564_i64 : i64
    %137 = arith.minui %c-12810_i16, %c-15060_i16 : i16
    %138 = index.floordivs %c9, %c6
    %139 = vector.multi_reduction <add>, %132, %c-15060_i16 [0] : vector<4xi16> to i16
    %140 = math.exp2 %10 : tensor<4x3x4xf16>
    %141 = affine.for %arg3 = 0 to 66 iter_args(%arg4 = %alloc_21) -> (memref<4xf16>) {
      affine.yield %alloc_21 : memref<4xf16>
    }
    %142 = math.exp2 %cst_3 : f32
    %143 = vector.broadcast %c171434000_i64 : i64 to vector<9xi64>
    %144 = vector.broadcast %false : i1 to vector<9xi1>
    %145 = vector.maskedload %alloc_10[%c2], %144, %143 : memref<4xi64>, vector<9xi1>, vector<9xi64> into vector<9xi64>
    %146 = index.ceildivu %23, %45
    %147 = arith.minf %cst_1, %cst_3 : f32
    %148 = arith.addf %extracted_28, %extracted_28 : f16
    %149 = index.maxu %23, %c4
    %150 = math.tanh %cst_1 : f32
    %151 = vector.shuffle %92, %69 [2, 3, 4, 6] : vector<4xi32>, vector<4xi32>
    %152 = vector.shuffle %133, %92 [6] : vector<4xi32>, vector<4xi32>
    %153 = tensor.empty() : tensor<4xf16>
    %mapped = linalg.map ins(%alloc_5, %14 : memref<4xf16>, tensor<4xf16>) outs(%153 : tensor<4xf16>)
      (%in: f16, %in_46: f16) {
        %255 = math.exp %in : f16
        %extracted_47 = tensor.extract %from_elements[%c0, %c1, %c0] : tensor<4x3x4xi64>
        %256 = math.ipowi %c496720484_i32, %c496720484_i32 : i32
        %257 = arith.minsi %false, %false_2 : i1
        %258 = math.absf %cst_3 : f32
        %alloc_48 = memref.alloc() : memref<4xi64>
        %259 = math.atan %0 : tensor<14x3xf16>
        %260 = arith.addf %cst_22, %cst_22 : f16
        %261 = vector.broadcast %c171434000_i64 : i64 to vector<3x3xi64>
        %262 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %66, %66, %261 : vector<14x3xi64>, vector<14x3xi64> into vector<3x3xi64>
        %263 = index.casts %c2 : index to i32
        %264 = index.floordivs %c7, %c5
        %cast_49 = tensor.cast %from_elements : tensor<4x3x4xi64> to tensor<?x?x?xi64>
        %265 = index.casts %62 : index to i32
        %266 = vector.broadcast %in_46 : f16 to vector<9xf16>
        %267 = vector.maskedload %alloc_16[%c1], %144, %266 : memref<4xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
        %268 = math.rsqrt %20 : tensor<f16>
        %269 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %19, %19, %139 : vector<14xi16>, vector<14xi16> into i16
        %270 = index.ceildivu %c8, %45
        %271 = vector.broadcast %98 : index to vector<14xindex>
        %272 = vector.broadcast %false : i1 to vector<14xi1>
        %273 = vector.broadcast %c171434000_i64 : i64 to vector<14xi64>
        vector.scatter %alloc_4[%c13, %c1] [%271], %272, %273 : memref<14x3xi64>, vector<14xindex>, vector<14xi1>, vector<14xi64>
        %from_elements_50 = tensor.from_elements %false_2, %false_0, %false_0, %false_2, %false, %false_2, %false_2, %false_2, %false_0, %false_2, %false, %false, %false_2, %false, %false_2, %false, %false_0, %false_0, %false, %false, %false, %false, %false, %false, %false, %false_0, %false_2, %false, %false_2, %false_0, %false_0, %false, %false, %false_2, %false_0, %false_0, %false, %false_2, %false_2, %false_2, %false_0, %false_0, %false, %false, %false_0, %false_2, %false, %false_2 : tensor<4x3x4xi1>
        %274 = index.sub %134, %c4
        %275 = bufferization.to_memref %10 : memref<4x3x4xf16>
        %276 = scf.while (%arg3 = %alloc_10) : (memref<4xi64>) -> memref<4xi64> {
          %288 = vector.load %alloc_21[%c1] : memref<4xf16>, vector<4xf16>
          %289 = math.powf %10, %10 : tensor<4x3x4xf16>
          %290 = math.log2 %21 : tensor<f16>
          %291 = index.ceildivu %26, %274
          %292 = arith.addi %c748652137_i64, %extracted_47 : i64
          %293 = vector.matrix_multiply %68, %144 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 9 : i32} : (vector<4xi1>, vector<9xi1>) -> vector<36xi1>
          %alloc_52 = memref.alloc() : memref<3x4xf16>
          %294 = tensor.empty() : tensor<14x4xf16>
          %295 = linalg.matmul ins(%0, %alloc_52 : tensor<14x3xf16>, memref<3x4xf16>) outs(%294 : tensor<14x4xf16>) -> tensor<14x4xf16>
          %296 = arith.ceildivsi %c-15060_i16, %c-27964_i16 : i16
          scf.condition(%false_0) %arg3 : memref<4xi64>
        } do {
        ^bb0(%arg3: memref<4xi64>):
          %288 = math.floor %0 : tensor<14x3xf16>
          %289 = index.mul %45, %149
          %cast_52 = tensor.cast %4 : tensor<14x3xi64> to tensor<?x?xi64>
          %expanded_53 = tensor.expand_shape %2 [[0, 1]] : tensor<4xi64> into tensor<4x1xi64>
          %290 = math.exp2 %5 : tensor<14x3xf16>
          %291 = index.maxu %98, %c13
          %292 = arith.maxf %cst_1, %cst_1 : f32
          %293 = arith.muli %c31641_i16, %c-15060_i16 : i16
          %294 = arith.negf %cst : f32
          %inserted_54 = tensor.insert %c-15060_i16 into %125[%c5, %c0] : tensor<14x3xi16>
          %splat_55 = tensor.splat %c2143169797_i64 : tensor<4x3x4xi64>
          %295 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %71, %70, %extracted_28 : vector<4xf16>, vector<4xf16> into f16
          %296 = math.rsqrt %cst_22 : f16
          %297 = index.ceildivu %c12, %74
          %298 = bufferization.to_memref %5 : memref<14x3xf16>
          %299 = vector.multi_reduction <xor>, %144, %false [0] : vector<9xi1> to i1
          scf.yield %alloc_10 : memref<4xi64>
        }
        %277 = math.log %cst_1 : f32
        %278 = math.tan %0 : tensor<14x3xf16>
        %279 = arith.divui %extracted_47, %c171434000_i64 : i64
        %280 = math.expm1 %cst_3 : f32
        %281 = index.casts %c2 : index to i32
        %282 = memref.atomic_rmw minf %cst, %alloc_7[%c9, %c0] : (f32, memref<14x3xf32>) -> f32
        %283 = vector.broadcast %false_0 : i1 to vector<4x4xi1>
        %284 = vector.outerproduct %68, %68, %283 {kind = #vector.kind<mul>} : vector<4xi1>, vector<4xi1>
        %285 = index.mul %146, %124
        %286 = arith.minui %139, %c-15060_i16 : i16
        %287 = arith.divui %false_0, %false_2 : i1
        %cst_51 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_51 : f16
      }
    %154 = math.floor %15 : tensor<14x3xf16>
    %155 = arith.shrsi %false_2, %false_2 : i1
    %156 = arith.minsi %139, %c31641_i16 : i16
    %157 = arith.ceildivsi %c1690777272_i32, %extracted : i32
    %158 = index.add %c6, %c10
    %159 = math.roundeven %15 : tensor<14x3xf16>
    %160 = memref.atomic_rmw mulf %cst_22, %alloc_11[%c3] : (f16, memref<4xf16>) -> f16
    %161 = scf.while (%arg3 = %c1690777272_i32) : (i32) -> i32 {
      %255 = arith.ceildivsi %false_2, %false_0 : i1
      %256 = math.rsqrt %153 : tensor<4xf16>
      %257 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %68, %81, %false_2 : vector<4xi1>, vector<4xi1> into i1
      scf.index_switch %87 
      case 1 {
        %262 = memref.realloc %alloc_19 : memref<4xi32> to memref<14xi32>
        %263 = vector.insert %c1690777272_i32, %67 [0] : i32 into vector<4xi32>
        %264 = math.log2 %cst_22 : f16
        %from_elements_46 = tensor.from_elements %extracted_28, %extracted_28, %cst_22, %cst_22 : tensor<4xf16>
        %265 = bufferization.clone %alloc_21 : memref<4xf16> to memref<4xf16>
        %from_elements_47 = tensor.from_elements %cst, %cst_1, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst, %cst, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst, %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst, %cst_3, %cst_1, %cst, %cst, %cst_3, %cst_3, %cst_1, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_1, %cst_3, %cst, %cst_3, %cst_1, %cst : tensor<4x3x4xf32>
        %cast_48 = tensor.cast %4 : tensor<14x3xi64> to tensor<?x?xi64>
        %266 = memref.realloc %alloc_10 : memref<4xi64> to memref<3xi64>
        %267 = vector.transpose %58, [0] : vector<14xf16> to vector<14xf16>
        %268 = vector.shuffle %145, %143 [0, 1, 2, 5, 6, 9, 10, 14, 15] : vector<9xi64>, vector<9xi64>
        %269 = vector.extract_strided_slice %133 {offsets = [2], sizes = [2], strides = [1]} : vector<4xi32> to vector<2xi32>
        %c1727536797_i32 = arith.constant 1727536797 : i32
        %270 = vector.insert %c496720484_i32, %92 [3] : i32 into vector<4xi32>
        %271 = vector.insert %false_0, %68 [1] : i1 into vector<4xi1>
        %272 = vector.flat_transpose %69 {columns = 2 : i32, rows = 2 : i32} : vector<4xi32> -> vector<4xi32>
        %extracted_49 = tensor.extract %14[%c1] : tensor<4xf16>
        scf.yield
      }
      case 2 {
        %262 = math.absf %cst_22 : f16
        %263 = arith.addf %cst_3, %cst : f32
        %264 = math.log2 %11 : tensor<4x3x4xf32>
        %extracted_46 = tensor.extract %4[%c12, %c2] : tensor<14x3xi64>
        %265 = index.ceildivs %74, %149
        %266 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %119, %95, %extracted_28 : vector<1xf16>, vector<1xf16> into f16
        %267 = arith.minf %cst, %cst_1 : f32
        %268 = index.maxs %c4, %55
        %269 = arith.maxf %extracted_28, %extracted_28 : f16
        %270 = math.rsqrt %15 : tensor<14x3xf16>
        affine.store %cst_22, %alloc_17[%c5, %c2, %c14] : memref<4x3x4xf16>
        %271 = bufferization.clone %alloc_15 : memref<14x3xi16> to memref<14x3xi16>
        %272 = index.mul %c10, %c5
        %273 = math.ctlz %arg3 : i32
        %274 = memref.atomic_rmw muli %arg3, %alloc_6[%c0] : (i32, memref<4xi32>) -> i32
        %275 = affine.min affine_map<(d0, d1) -> (d0, d1 ceildiv 16 + d1 - 124)>(%65, %26)
        scf.yield
      }
      default {
        %262 = bufferization.to_tensor %alloc_18 : memref<4xf32>
        %expanded_46 = tensor.expand_shape %7 [[0, 1]] : tensor<4xi32> into tensor<4x1xi32>
        %263 = math.cos %from_elements_23 : tensor<4xf16>
        %alloc_47 = memref.alloc() : memref<4xf16>
        %264 = index.maxu %87, %105
        %265 = index.sub %c15, %c0
        %266 = index.divu %158, %c3
        memref.assume_alignment %alloc_14, 2 : memref<14x3xi1>
        %267 = vector.shuffle %132, %132 [0, 1, 3, 4, 5, 7] : vector<4xi16>, vector<4xi16>
        %268 = vector.extract %66[3] : vector<14x3xi64>
        %alloca_48 = memref.alloca() : memref<4xf32>
        %269 = math.roundeven %20 : tensor<f16>
        %270 = math.cos %11 : tensor<4x3x4xf32>
        %alloc_49 = memref.alloc() : memref<3x4xf16>
        %271 = tensor.empty() : tensor<14x4xf16>
        %272 = linalg.matmul ins(%5, %alloc_49 : tensor<14x3xf16>, memref<3x4xf16>) outs(%271 : tensor<14x4xf16>) -> tensor<14x4xf16>
        %273 = math.ceil %cst_3 : f32
        %274 = vector.broadcast %c5 : index to vector<9xindex>
        %275 = vector.broadcast %cst_22 : f16 to vector<9xf16>
        vector.scatter %alloc[%c2, %c1, %c3] [%274], %144, %275 : memref<4x3x4xf16>, vector<9xindex>, vector<9xi1>, vector<9xf16>
      }
      %258 = index.divs %c2, %65
      %259 = vector.insert %c1690777272_i32, %92 [2] : i32 into vector<4xi32>
      %260 = index.maxs %50, %138
      %261 = vector.multi_reduction <or>, %66, %c1123592564_i64 [0, 1] : vector<14x3xi64> to i64
      scf.condition(%false_2) %arg3 : i32
    } do {
    ^bb0(%arg3: i32):
      %255 = math.exp2 %153 : tensor<4xf16>
      %256 = math.ipowi %c1690777272_i32, %c496720484_i32 : i32
      affine.store %cst, %alloc_7[%c11, %c6] : memref<14x3xf32>
      %257 = vector.shuffle %81, %144 [3, 5, 7, 8, 9] : vector<4xi1>, vector<9xi1>
      %258 = tensor.empty() : tensor<3xi64>
      %259 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%258, %2 : tensor<3xi64>, tensor<4xi64>) outs(%from_elements : tensor<4x3x4xi64>) {
      ^bb0(%in: i64, %in_46: i64, %out: i64):
        %272 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %58, %58, %cst_22 : vector<14xf16>, vector<14xf16> into f16
        %273 = index.ceildivs %87, %c5
        %274 = index.sub %26, %c11
        %275 = memref.atomic_rmw maxu %arg3, %alloc_6[%c0] : (i32, memref<4xi32>) -> i32
        %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %92, %133, %arg3 : vector<4xi32>, vector<4xi32> into i32
        %277 = arith.divui %in, %c1123592564_i64 : i64
        %278 = vector.insert %cst_22, %70 [2] : f16 into vector<4xf16>
        %279 = index.sub %124, %116
        %280 = math.ctlz %8 : tensor<14x3xi32>
        %281 = memref.atomic_rmw assign %in_46, %alloc_10[%c1] : (i64, memref<4xi64>) -> i64
        %282 = arith.ceildivsi %c-12810_i16, %139 : i16
        %283 = memref.atomic_rmw mulf %cst_22, %alloc_13[%c1] : (f16, memref<4xf16>) -> f16
        %alloca_47 = memref.alloca() : memref<4xi32>
        %284 = index.castu %c2143169797_i64 : i64 to index
        %285 = vector.insert %c-27964_i16, %102 [1] : i16 into vector<4xi16>
        %286 = math.tan %11 : tensor<4x3x4xf32>
        %287 = arith.shrsi %extracted, %extracted : i32
        %288 = arith.addi %extracted, %arg3 : i32
        %expanded_48 = tensor.expand_shape %11 [[0], [1], [2, 3]] : tensor<4x3x4xf32> into tensor<4x3x4x1xf32>
        %289 = arith.addi %c748652137_i64, %in : i64
        %290 = math.ipowi %8, %13 : tensor<14x3xi32>
        %291 = math.log1p %cst_3 : f32
        %292 = bufferization.to_memref %14 : memref<4xf16>
        %293 = memref.realloc %alloc_5 : memref<4xf16> to memref<14xf16>
        %294 = arith.negf %cst_1 : f32
        %295 = vector.broadcast %45 : index to vector<3xindex>
        %296 = vector.broadcast %false_0 : i1 to vector<3xi1>
        %297 = vector.broadcast %extracted_28 : f16 to vector<3xf16>
        vector.scatter %alloc_5[%c2] [%295], %296, %297 : memref<4xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
        %298 = math.absi %9 : tensor<4x3x4xi32>
        %299 = math.log2 %10 : tensor<4x3x4xf16>
        %300 = math.cttz %2 : tensor<4xi64>
        %301 = vector.broadcast %c748652137_i64 : i64 to vector<3xi64>
        %dest_49, %accumulated_value_50 = vector.scan <maxsi>, %66, %301 {inclusive = true, reduction_dim = 0 : i64} : vector<14x3xi64>, vector<3xi64>
        %302 = math.tan %20 : tensor<f16>
        %303 = vector.broadcast %c748652137_i64 : i64 to vector<14xi64>
        %dest_51, %accumulated_value_52 = vector.scan <minsi>, %66, %303 {inclusive = false, reduction_dim = 1 : i64} : vector<14x3xi64>, vector<14xi64>
        linalg.yield %c1123592564_i64 : i64
      } -> tensor<4x3x4xi64>
      %260 = vector.insert %extracted_28, %71 [1] : f16 into vector<4xf16>
      %261 = math.log2 %21 : tensor<f16>
      %262 = arith.remf %cst_3, %cst_1 : f32
      %263 = index.sub %115, %146
      %264 = math.floor %14 : tensor<4xf16>
      %265 = math.tan %10 : tensor<4x3x4xf16>
      %266 = vector.broadcast %extracted_28 : f16 to vector<1x1xf16>
      %267 = vector.outerproduct %95, %119, %266 {kind = #vector.kind<maxf>} : vector<1xf16>, vector<1xf16>
      %268 = math.round %cst_3 : f32
      %269 = index.ceildivu %c12, %c5
      %270 = arith.minui %c2143169797_i64, %c748652137_i64 : i64
      %271 = vector.shuffle %95, %127 [1] : vector<1xf16>, vector<1xf16>
      scf.yield %c496720484_i32 : i32
    }
    %162 = math.atan %12 : tensor<4x3x4xf32>
    affine.store %cst_22, %alloc_16[%c5] : memref<4xf16>
    %alloc_29 = memref.alloc() : memref<4xf32>
    %alloc_30 = memref.alloc() : memref<3x9xi32>
    %163 = tensor.empty() : tensor<14x9xi32>
    %164 = linalg.matmul ins(%8, %alloc_30 : tensor<14x3xi32>, memref<3x9xi32>) outs(%163 : tensor<14x9xi32>) -> tensor<14x9xi32>
    %165 = math.floor %0 : tensor<14x3xf16>
    %166 = math.powf %12, %12 : tensor<4x3x4xf32>
    %167 = affine.load %alloc_5[%c2] : memref<4xf16>
    %168 = vector.broadcast %c748652137_i64 : i64 to vector<14xi64>
    %dest_31, %accumulated_value_32 = vector.scan <and>, %66, %168 {inclusive = true, reduction_dim = 1 : i64} : vector<14x3xi64>, vector<14xi64>
    %169 = vector.extract %144[4] : vector<9xi1>
    %170 = index.divs %c15, %c15
    %171 = arith.remf %cst_3, %cst_3 : f32
    %172 = index.sub %23, %89
    %173 = arith.maxf %cst_1, %cst_3 : f32
    %174 = arith.minf %cst_1, %cst : f32
    %175 = affine.min affine_map<(d0, d1, d2) -> (d1 + 32, d2 + d0 mod 64 - 32)>(%c1, %c0, %105)
    %176 = math.log1p %5 : tensor<14x3xf16>
    %177 = math.log10 %14 : tensor<4xf16>
    %178 = index.ceildivs %c14, %c12
    %179 = vector.multi_reduction <minui>, %81, %false_0 [0] : vector<4xi1> to i1
    %180 = math.exp2 %5 : tensor<14x3xf16>
    %181 = index.divs %c9, %98
    %182 = math.rsqrt %extracted_28 : f16
    %183 = scf.while (%arg3 = %c171434000_i64) : (i64) -> i64 {
      %255 = math.ctpop %false : i1
      %256 = arith.divui %c-15060_i16, %139 : i16
      %257 = arith.minui %c171434000_i64, %c2143169797_i64 : i64
      %258 = affine.if affine_set<(d0, d1, d2, d3) : (d2 == 0, d0 >= 0)>(%c10, %c11, %c11, %c11) -> memref<4xi64> {
        %261 = vector.splat %false_0 : vector<4x3x4xi1>
        %262 = arith.minsi %false_2, %false_0 : i1
        %cst_46 = arith.constant 2.395200e+04 : f16
        affine.store %179, %alloc_14[%c0, %c14] : memref<14x3xi1>
        %263 = math.log2 %153 : tensor<4xf16>
        %264 = arith.divf %cst_3, %cst_1 : f32
        %265 = math.exp2 %15 : tensor<14x3xf16>
        %266 = math.exp %12 : tensor<4x3x4xf32>
        affine.yield %alloc_10 : memref<4xi64>
      } else {
        %261 = arith.remsi %false_0, %179 : i1
        %262 = index.divs %c15, %178
        %263 = math.cttz %7 : tensor<4xi32>
        %264 = memref.atomic_rmw addf %extracted_28, %alloc_16[%c1] : (f16, memref<4xf16>) -> f16
        %265 = arith.cmpi ne, %c1690777272_i32, %c1690777272_i32 : i32
        %expanded_46 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<14x3xi32> into tensor<14x3x1xi32>
        affine.store %cst_22, %alloc_16[%c1] : memref<4xf16>
        %266 = vector.extract_strided_slice %66 {offsets = [0], sizes = [13], strides = [1]} : vector<14x3xi64> to vector<13x3xi64>
        affine.yield %alloc_9 : memref<4xi64>
      }
      memref.store %cst_22, %alloc_16[%c1] : memref<4xf16>
      affine.for %arg4 = 0 to 53 {
      }
      %259 = arith.minui %c171434000_i64, %c1123592564_i64 : i64
      %260 = math.cos %cst_22 : f16
      scf.condition(%false_0) %c748652137_i64 : i64
    } do {
    ^bb0(%arg3: i64):
      %255 = math.log2 %cst : f32
      %256 = arith.minf %extracted_28, %167 : f16
      %257 = math.log2 %extracted_28 : f16
      %258 = vector.insertelement %cst_22, %127[%105 : index] : vector<1xf16>
      %259 = vector.insertelement %167, %58[%c7 : index] : vector<14xf16>
      %260 = vector.matrix_multiply %102, %102 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
      %261 = vector.insert %c496720484_i32, %69 [0] : i32 into vector<4xi32>
      %262 = tensor.empty() : tensor<4xi32>
      %mapped_46 = linalg.map ins(%alloc_19, %1, %alloc_8 : memref<4xi32>, tensor<4xi32>, memref<4xi32>) outs(%262 : tensor<4xi32>)
        (%in: i32, %in_49: i32, %in_50: i32) {
          %267 = vector.broadcast %c748652137_i64 : i64 to vector<3xi64>
          %dest_51, %accumulated_value_52 = vector.scan <maxui>, %66, %267 {inclusive = true, reduction_dim = 0 : i64} : vector<14x3xi64>, vector<3xi64>
          %268 = vector.broadcast %cst : f32 to vector<4x3x4xf32>
          %269 = arith.divui %false_0, %179 : i1
          %270 = arith.remui %c31641_i16, %c-15060_i16 : i16
          memref.assume_alignment %alloc_5, 8 : memref<4xf16>
          %271 = math.log2 %cst_1 : f32
          %272 = vector.broadcast %in_49 : i32 to vector<14xi32>
          %273 = vector.broadcast %false_2 : i1 to vector<14xi1>
          %274 = vector.maskedload %alloc_8[%c0], %273, %272 : memref<4xi32>, vector<14xi1>, vector<14xi32> into vector<14xi32>
          %275 = vector.insert %c1123592564_i64, %145 [0] : i64 into vector<9xi64>
          %extracted_53 = tensor.extract %2[%c0] : tensor<4xi64>
          %276 = math.tan %12 : tensor<4x3x4xf32>
          %splat_54 = tensor.splat %cst_3 : tensor<4x3x4xf32>
          %277 = math.log2 %20 : tensor<f16>
          %278 = math.log %cst : f32
          %279 = arith.ceildivsi %c-15060_i16, %c31641_i16 : i16
          %280 = arith.shrsi %c748652137_i64, %c171434000_i64 : i64
          %281 = vector.broadcast %in_49 : i32 to vector<4x3x4xi32>
          %282 = vector.broadcast %179 : i1 to vector<4x3x4xi1>
          %283 = vector.gather %alloc_25[%c15, %rank] [%281], %282, %281 : memref<14x3xi32>, vector<4x3x4xi32>, vector<4x3x4xi1>, vector<4x3x4xi32> into vector<4x3x4xi32>
          %284 = arith.addi %c-27964_i16, %c31641_i16 : i16
          %285 = memref.atomic_rmw addf %cst_22, %alloc_17[%c0, %c2, %c2] : (f16, memref<4x3x4xf16>) -> f16
          %splat_55 = tensor.splat %cst : tensor<4x3x4xf32>
          %286 = math.ceil %expanded : tensor<4x3x4x1xf16>
          %287 = math.ctpop %from_elements_24 : tensor<4x3x4xi16>
          %288 = arith.andi %c-27964_i16, %c-12810_i16 : i16
          %289 = arith.minui %c171434000_i64, %c2143169797_i64 : i64
          %290 = index.ceildivs %146, %26
          %291 = math.cos %15 : tensor<14x3xf16>
          %292 = arith.shli %c-15060_i16, %c31641_i16 : i16
          %293 = arith.minf %cst_22, %167 : f16
          %294 = vector.broadcast %false_2 : i1 to vector<4x4xi1>
          %295 = vector.outerproduct %81, %68, %294 {kind = #vector.kind<minsi>} : vector<4xi1>, vector<4xi1>
          %296 = arith.ceildivsi %179, %false_0 : i1
          %expanded_56 = tensor.expand_shape %1 [[0, 1]] : tensor<4xi32> into tensor<4x1xi32>
          %297 = vector.extract %69[3] : vector<4xi32>
          %298 = vector.shuffle %102, %260 [0, 4] : vector<4xi16>, vector<1xi16>
          %c1_i32 = arith.constant 1 : i32
          linalg.yield %c1_i32 : i32
        }
      %263 = arith.maxf %cst_1, %cst_3 : f32
      %264 = index.ceildivs %172, %55
      %expanded_47 = tensor.expand_shape %3 [[0], [1, 2]] : tensor<14x3xi1> into tensor<14x3x1xi1>
      affine.store %cst_1, %alloc_18[%c13] : memref<4xf32>
      %265 = arith.minsi %c-15060_i16, %c31641_i16 : i16
      %splat_48 = tensor.splat %cst : tensor<4xf32>
      %266 = arith.remsi %c-15060_i16, %c31641_i16 : i16
      %true = index.bool.constant true
      scf.yield %c748652137_i64 : i64
    }
    %184 = math.absi %139 : i16
    %cast = tensor.cast %8 : tensor<14x3xi32> to tensor<?x?xi32>
    %185 = arith.minsi %c1690777272_i32, %c1690777272_i32 : i32
    %186 = math.log10 %expanded : tensor<4x3x4x1xf16>
    %187 = vector.broadcast %c1 : index to vector<3xindex>
    %188 = vector.broadcast %false_2 : i1 to vector<3xi1>
    %189 = vector.broadcast %cst_3 : f32 to vector<3xf32>
    vector.scatter %alloc_18[%c3] [%187], %188, %189 : memref<4xf32>, vector<3xindex>, vector<3xi1>, vector<3xf32>
    memref.assume_alignment %alloc, 1 : memref<4x3x4xf16>
    %190 = bufferization.to_tensor %alloc_14 : memref<14x3xi1>
    %191 = arith.remf %cst_1, %cst_3 : f32
    %cast_33 = tensor.cast %13 : tensor<14x3xi32> to tensor<?x?xi32>
    %192 = arith.remf %167, %167 : f16
    %rank_34 = tensor.rank %7 : tensor<4xi32>
    %193 = index.divu %98, %c4
    %194 = math.exp2 %0 : tensor<14x3xf16>
    %195 = arith.ceildivsi %c748652137_i64, %c171434000_i64 : i64
    %196 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%12 : tensor<4x3x4xf32>) outs(%11 : tensor<4x3x4xf32>) {
    ^bb0(%in: f32, %out: f32):
      %255 = index.casts %146 : index to i32
      %256 = index.floordivs %c10, %45
      %257 = tensor.empty() : tensor<3xi16>
      %258 = tensor.empty() : tensor<4x4xi16>
      %259 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%257, %257, %258 : tensor<3xi16>, tensor<3xi16>, tensor<4x4xi16>) outs(%from_elements_24 : tensor<4x3x4xi16>) {
      ^bb0(%in_50: i16, %in_51: i16, %in_52: i16, %out_53: i16):
        %285 = index.sizeof
        %286 = vector.broadcast %c2143169797_i64 : i64 to vector<3xi64>
        %dest_54, %accumulated_value_55 = vector.scan <xor>, %66, %286 {inclusive = false, reduction_dim = 0 : i64} : vector<14x3xi64>, vector<3xi64>
        %alloca_56 = memref.alloca() : memref<4xi1>
        %287 = vector.shuffle %143, %145 [0, 2, 4, 6, 7, 9, 10, 14, 17] : vector<9xi64>, vector<9xi64>
        %288 = index.ceildivu %c14, %c4
        %289 = arith.maxsi %out_53, %in_52 : i16
        %290 = vector.broadcast %c748652137_i64 : i64 to vector<14xi64>
        %dest_57, %accumulated_value_58 = vector.scan <and>, %66, %290 {inclusive = false, reduction_dim = 1 : i64} : vector<14x3xi64>, vector<14xi64>
        %from_elements_59 = tensor.from_elements %c1690777272_i32, %c496720484_i32, %extracted, %extracted, %extracted, %c1690777272_i32, %extracted, %c496720484_i32, %c496720484_i32, %c496720484_i32, %extracted, %c1690777272_i32, %c1690777272_i32, %c1690777272_i32, %c1690777272_i32, %c1690777272_i32, %c1690777272_i32, %c1690777272_i32, %extracted, %c1690777272_i32, %extracted, %extracted, %c1690777272_i32, %c496720484_i32, %extracted, %extracted, %extracted, %c496720484_i32, %extracted, %c1690777272_i32, %c1690777272_i32, %c496720484_i32, %extracted, %c1690777272_i32, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %c1690777272_i32 : tensor<14x3xi32>
        %291 = memref.atomic_rmw addf %cst_22, %alloc_17[%c2, %c1, %c2] : (f16, memref<4x3x4xf16>) -> f16
        %cst_60 = arith.constant 2.624000e+04 : f16
        %292 = math.exp2 %153 : tensor<4xf16>
        %293 = index.divs %175, %181
        %294 = math.ceil %10 : tensor<4x3x4xf16>
        %295 = arith.minsi %c171434000_i64, %c171434000_i64 : i64
        %296 = math.exp2 %21 : tensor<f16>
        %297 = math.absi %1 : tensor<4xi32>
        %298 = vector.shuffle %68, %81 [0, 4, 6] : vector<4xi1>, vector<4xi1>
        %299 = vector.reduction <add>, %58 : vector<14xf16> into f16
        memref.assume_alignment %alloc_16, 4 : memref<4xf16>
        %300 = index.ceildivs %c8, %45
        %301 = vector.maskedload %alloc_12[%c3, %c2, %c2], %81, %81 : memref<4x3x4xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
        %alloca_61 = memref.alloca() : memref<4xf32>
        affine.store %c2143169797_i64, %alloc_9[%c13] : memref<4xi64>
        %302 = vector.broadcast %in_50 : i16 to vector<4x3x4xi16>
        %303 = math.cos %12 : tensor<4x3x4xf32>
        %304 = vector.flat_transpose %145 {columns = 3 : i32, rows = 3 : i32} : vector<9xi64> -> vector<9xi64>
        %305 = arith.floordivsi %false_0, %false_2 : i1
        %306 = vector.bitcast %64 : vector<1xf16> to vector<1xf16>
        %307 = memref.atomic_rmw addi %c496720484_i32, %alloc_8[%c1] : (i32, memref<4xi32>) -> i32
        %splat_62 = tensor.splat %c-12810_i16 : tensor<4x3x4xi16>
        %308 = arith.mulf %167, %cst_22 : f16
        %309 = vector.broadcast %c496720484_i32 : i32 to vector<9xi32>
        %310 = vector.maskedload %alloc_8[%c0], %144, %309 : memref<4xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
        linalg.yield %c-12810_i16 : i16
      } -> tensor<4x3x4xi16>
      %260 = vector.extract_strided_slice %119 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
      %261 = scf.while (%arg3 = %c1123592564_i64) : (i64) -> i64 {
        %285 = index.sub %c6, %26
        memref.store %extracted_28, %alloc_21[%c3] : memref<4xf16>
        %286 = vector.flat_transpose %67 {columns = 2 : i32, rows = 2 : i32} : vector<4xi32> -> vector<4xi32>
        %287 = math.exp %15 : tensor<14x3xf16>
        %288 = vector.reduction <add>, %119 : vector<1xf16> into f16
        %289 = bufferization.clone %alloc_25 : memref<14x3xi32> to memref<14x3xi32>
        %290 = math.cos %11 : tensor<4x3x4xf32>
        %291 = arith.shrsi %false_0, %false_2 : i1
        scf.condition(%179) %c2143169797_i64 : i64
      } do {
      ^bb0(%arg3: i64):
        %285 = arith.minsi %arg3, %c1123592564_i64 : i64
        %286 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %260, %260, %cst_22 : vector<1xf16>, vector<1xf16> into f16
        memref.store %c2143169797_i64, %alloc_9[%c2] : memref<4xi64>
        %extracted_50 = tensor.extract %9[%c3, %c2, %c0] : tensor<4x3x4xi32>
        %287 = math.ctpop %c1690777272_i32 : i32
        %288 = bufferization.clone %alloc_12 : memref<4x3x4xi1> to memref<4x3x4xi1>
        %from_elements_51 = tensor.from_elements %c-27964_i16, %c-15060_i16, %c-27964_i16, %c-12810_i16, %c31641_i16, %c-15060_i16, %139, %c-27964_i16, %c-15060_i16, %139, %c-27964_i16, %c31641_i16, %c-15060_i16, %c-12810_i16, %c31641_i16, %c31641_i16, %c-27964_i16, %c31641_i16, %c31641_i16, %139, %c-27964_i16, %c-15060_i16, %c-12810_i16, %c-15060_i16, %c-15060_i16, %c-27964_i16, %c31641_i16, %c-12810_i16, %c-12810_i16, %c31641_i16, %c-15060_i16, %c-12810_i16, %c-27964_i16, %c31641_i16, %c-15060_i16, %139, %c31641_i16, %c-12810_i16, %c-12810_i16, %c-12810_i16, %139, %c31641_i16, %c-12810_i16, %139, %c-12810_i16, %c-27964_i16, %139, %c-15060_i16 : tensor<4x3x4xi16>
        %289 = vector.multi_reduction <minf>, %58, %167 [0] : vector<14xf16> to f16
        %290 = affine.load %alloc_14[%c6, %c15] : memref<14x3xi1>
        %extracted_52 = tensor.extract %5[%c2, %c0] : tensor<14x3xf16>
        %291 = affine.min affine_map<(d0, d1, d2) -> (d2, d0 + 136)>(%74, %256, %50)
        %292 = math.round %5 : tensor<14x3xf16>
        %from_elements_53 = tensor.from_elements %false_0, %179, %290, %false, %false_2, %false_0, %290, %179, %false_2, %false, %false_0, %179, %false_0, %179, %false_2, %false_0, %290, %290, %false_2, %290, %179, %false_2, %false, %290, %290, %290, %false_0, %false_2, %false_2, %false_0, %false_2, %false_2, %290, %290, %290, %false, %290, %false_2, %false, %false_0, %false_2, %false_2, %false, %290, %179, %false, %false_0, %290 : tensor<4x3x4xi1>
        %293 = vector.flat_transpose %67 {columns = 2 : i32, rows = 2 : i32} : vector<4xi32> -> vector<4xi32>
        %294 = vector.insert %false_2, %68 [1] : i1 into vector<4xi1>
        %from_elements_54 = tensor.from_elements %c1690777272_i32, %extracted, %c1690777272_i32, %extracted : tensor<4xi32>
        scf.yield %c1123592564_i64 : i64
      }
      %alloc_46 = memref.alloc() : memref<4xi32>
      %262 = math.absf %14 : tensor<4xf16>
      %263 = index.floordivs %50, %c9
      memref.assume_alignment %91, 4 : memref<4x3x4xi16>
      %264 = math.powf %21, %20 : tensor<f16>
      %265 = affine.for %arg3 = 0 to 90 iter_args(%arg4 = %from_elements_23) -> (tensor<4xf16>) {
        affine.yield %14 : tensor<4xf16>
      }
      %266 = math.exp2 %11 : tensor<4x3x4xf32>
      %267 = vector.broadcast %extracted : i32 to vector<4x4xi32>
      %268 = vector.outerproduct %92, %92, %267 {kind = #vector.kind<xor>} : vector<4xi32>, vector<4xi32>
      %269 = index.sub %c14, %c7
      %270 = math.exp %11 : tensor<4x3x4xf32>
      %271 = vector.broadcast %c2143169797_i64 : i64 to vector<14xi64>
      %dest_47, %accumulated_value_48 = vector.scan <and>, %66, %271 {inclusive = false, reduction_dim = 1 : i64} : vector<14x3xi64>, vector<14xi64>
      %rank_49 = tensor.rank %125 : tensor<14x3xi16>
      %272 = vector.load %91[%c2, %c2, %c3] : memref<4x3x4xi16>, vector<4x3x4xi16>
      %273 = math.tan %14 : tensor<4xf16>
      %274 = arith.minui %c748652137_i64, %c1123592564_i64 : i64
      %275 = arith.divf %167, %extracted_28 : f16
      %276 = vector.insert %extracted_28, %71 [1] : f16 into vector<4xf16>
      %277 = scf.index_switch %263 -> i64 
      case 1 {
        %285 = arith.addi %false_0, %false_2 : i1
        %286 = bufferization.clone %alloc_15 : memref<14x3xi16> to memref<14x3xi16>
        %287 = math.ceil %12 : tensor<4x3x4xf32>
        %288 = math.ceil %cst_22 : f16
        %289 = math.log2 %167 : f16
        %290 = vector.load %alloc_18[%c0] : memref<4xf32>, vector<14x3xf32>
        memref.store %167, %alloc_17[%c2, %c2, %c2] : memref<4x3x4xf16>
        %291 = math.cos %expanded : tensor<4x3x4x1xf16>
        %292 = vector.extract_strided_slice %67 {offsets = [2], sizes = [2], strides = [1]} : vector<4xi32> to vector<2xi32>
        %293 = math.ctlz %c-27964_i16 : i16
        %294 = vector.broadcast %c-15060_i16 : i16 to vector<4xi16>
        %295 = arith.minf %cst_22, %cst_22 : f16
        %296 = vector.broadcast %c2143169797_i64 : i64 to vector<3xi64>
        %dest_50, %accumulated_value_51 = vector.scan <mul>, %66, %296 {inclusive = true, reduction_dim = 0 : i64} : vector<14x3xi64>, vector<3xi64>
        %297 = memref.load %alloc_17[%c2, %c1, %c2] : memref<4x3x4xf16>
        %298 = index.maxu %c7, %74
        %299 = memref.atomic_rmw assign %c2143169797_i64, %alloc_4[%c12, %c1] : (i64, memref<14x3xi64>) -> i64
        scf.yield %c2143169797_i64 : i64
      }
      default {
        %285 = math.log2 %21 : tensor<f16>
        %286 = vector.bitcast %133 : vector<4xi32> to vector<4xi32>
        %287 = bufferization.to_memref %from_elements_24 : memref<4x3x4xi16>
        %rank_50 = tensor.rank %10 : tensor<4x3x4xf16>
        %extracted_51 = tensor.extract %from_elements_23[%c1] : tensor<4xf16>
        %inserted_52 = tensor.insert %extracted into %48[] : tensor<i32>
        %288 = arith.andi %c2143169797_i64, %c748652137_i64 : i64
        %289 = arith.maxf %cst_1, %cst_1 : f32
        %290 = arith.addi %false, %false_2 : i1
        %291 = index.ceildivs %62, %rank_50
        %alloca_53 = memref.alloca() : memref<4xf16>
        %292 = tensor.empty() : tensor<14x3xf16>
        affine.store %cst_22, %alloc_5[%c7] : memref<4xf16>
        %293 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %92, %286, %c496720484_i32 : vector<4xi32>, vector<4xi32> into i32
        %294 = affine.min affine_map<(d0, d1, d2) -> (-d1, d2 - 1, d2 - 5, (-d1) mod 4)>(%c0, %c13, %c12)
        %295 = index.mul %c2, %146
        scf.yield %c1123592564_i64 : i64
      }
      scf.index_switch %c7 
      case 1 {
        %285 = affine.min affine_map<(d0, d1, d2, d3) -> (d0, d1 ceildiv 8, d2 - 16)>(%115, %50, %138, %c1)
        %286 = math.expm1 %14 : tensor<4xf16>
        %287 = arith.addi %false_0, %179 : i1
        %288 = arith.negf %167 : f16
        %289 = arith.remf %cst_22, %167 : f16
        %290 = arith.andi %c496720484_i32, %c1690777272_i32 : i32
        affine.store %out, %alloc_18[%c13] : memref<4xf32>
        %291 = math.ctlz %3 : tensor<14x3xi1>
        %292 = vector.bitcast %145 : vector<9xi64> to vector<9xi64>
        %293 = index.divs %193, %138
        %294 = vector.insert %extracted_28, %71 [1] : f16 into vector<4xf16>
        %295 = math.round %cst_1 : f32
        %296 = vector.broadcast %c496720484_i32 : i32 to vector<4xi32>
        %297 = vector.transfer_write %296, %13[%89, %c9] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi32>, tensor<14x3xi32>
        %298 = arith.remsi %c748652137_i64, %c1123592564_i64 : i64
        %299 = arith.divui %c171434000_i64, %c748652137_i64 : i64
        %300 = arith.negf %167 : f16
        scf.yield
      }
      case 2 {
        affine.store %c1123592564_i64, %alloc_9[%c5] : memref<4xi64>
        %285 = bufferization.clone %alloc_14 : memref<14x3xi1> to memref<14x3xi1>
        %286 = index.ceildivs %175, %c14
        %cast_50 = tensor.cast %20 : tensor<f16> to tensor<f16>
        %collapsed = tensor.collapse_shape %10 [[0, 1], [2]] : tensor<4x3x4xf16> into tensor<12x4xf16>
        %287 = vector.extract_strided_slice %67 {offsets = [1], sizes = [1], strides = [1]} : vector<4xi32> to vector<1xi32>
        %288 = arith.cmpi slt, %c1690777272_i32, %c496720484_i32 : i32
        %289 = bufferization.to_tensor %alloc_7 : memref<14x3xf32>
        %290 = index.add %c0, %c12
        %291 = vector.multi_reduction <minui>, %67, %extracted [0] : vector<4xi32> to i32
        %292 = index.maxu %172, %rank
        %rank_51 = tensor.rank %17 : tensor<14x3xi32>
        %293 = math.ceil %10 : tensor<4x3x4xf16>
        %294 = index.ceildivu %65, %c4
        %295 = vector.multi_reduction <minsi>, %118, %c31641_i16 [0] : vector<3xi16> to i16
        %296 = index.ceildivu %65, %rank
        scf.yield
      }
      case 3 {
        %285 = math.rsqrt %expanded : tensor<4x3x4x1xf16>
        %286 = bufferization.to_tensor %alloc_10 : memref<4xi64>
        affine.store %cst_22, %alloc[%c4, %c8, %c6] : memref<4x3x4xf16>
        %287 = affine.load %alloc_18[%c9] : memref<4xf32>
        %splat_50 = tensor.splat %179 : tensor<14x3xi1>
        %288 = memref.atomic_rmw minu %extracted, %alloc_6[%c0] : (i32, memref<4xi32>) -> i32
        %289 = math.exp %cst_3 : f32
        %290 = arith.remui %c748652137_i64, %c171434000_i64 : i64
        %291 = math.tan %in : f32
        %alloc_51 = memref.alloc() : memref<i32>
        memref.copy %alloc_20, %alloc_51 : memref<i32> to memref<i32>
        %292 = math.ctpop %false_2 : i1
        %293 = index.floordivs %c11, %c14
        %294 = vector.broadcast %124 : index to vector<9xindex>
        %295 = vector.broadcast %c1690777272_i32 : i32 to vector<9xi32>
        vector.scatter %alloc_20[] [%294], %144, %295 : memref<i32>, vector<9xindex>, vector<9xi1>, vector<9xi32>
        %296 = index.mul %193, %c4
        memref.assume_alignment %alloc_18, 4 : memref<4xf32>
        %cast_52 = tensor.cast %2 : tensor<4xi64> to tensor<?xi64>
        scf.yield
      }
      default {
        %285 = vector.splat %extracted : vector<14x3xi32>
        %286 = memref.atomic_rmw addf %extracted_28, %alloc_5[%c2] : (f16, memref<4xf16>) -> f16
        %287 = math.log10 %0 : tensor<14x3xf16>
        %288 = index.maxu %193, %c5
        %289 = math.cos %12 : tensor<4x3x4xf32>
        %290 = vector.shuffle %19, %102 [6, 7, 9, 10, 12, 14, 15, 16] : vector<14xi16>, vector<4xi16>
        %291 = vector.maskedload %alloc_14[%c6, %c1], %68, %81 : memref<14x3xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
        memref.assume_alignment %91, 4 : memref<4x3x4xi16>
        %292 = bufferization.to_memref %6 : memref<4x3x4xi16>
        %293 = math.tan %5 : tensor<14x3xf16>
        %294 = vector.broadcast %c5 : index to vector<3xindex>
        %295 = vector.broadcast %false_2 : i1 to vector<3xi1>
        %296 = vector.broadcast %extracted_28 : f16 to vector<3xf16>
        vector.scatter %alloc_11[%c1] [%294], %295, %296 : memref<4xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
        %297 = math.copysign %0, %15 : tensor<14x3xf16>
        %298 = math.round %cst_3 : f32
        %alloca_50 = memref.alloca() : memref<4x3x4xi32>
        %299 = vector.multi_reduction <add>, %71, %70 [] : vector<4xf16> to vector<4xf16>
        %300 = vector.flat_transpose %71 {columns = 2 : i32, rows = 2 : i32} : vector<4xf16> -> vector<4xf16>
      }
      %278 = arith.shrsi %extracted, %c1690777272_i32 : i32
      %279 = math.log2 %cst_1 : f32
      %280 = vector.load %alloc_16[%c3] : memref<4xf16>, vector<4xf16>
      %281 = index.add %74, %c0
      %282 = math.round %15 : tensor<14x3xf16>
      affine.for %arg3 = 0 to 1 {
      }
      %283 = arith.mulf %cst, %in : f32
      %284 = index.maxu %193, %45
      linalg.yield %in : f32
    } -> tensor<4x3x4xf32>
    %197 = vector.multi_reduction <minf>, %119, %extracted_28 [0] : vector<1xf16> to f16
    %198 = math.cos %14 : tensor<4xf16>
    %199 = vector.extract %92[2] : vector<4xi32>
    %200 = index.divs %c7, %74
    %201 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%11 : tensor<4x3x4xf32>) {
    ^bb0(%out: f32):
      %255 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %64, %95, %167 : vector<1xf16>, vector<1xf16> into f16
      %false_46 = index.bool.constant false
      %alloc_47 = memref.alloc() : memref<3x4xf32>
      %256 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_47 : memref<3x4xf32>) outs(%11 : tensor<4x3x4xf32>) {
      ^bb0(%in: f32, %out_50: f32):
        %286 = math.atan %5 : tensor<14x3xf16>
        %alloca_51 = memref.alloca() : memref<4xf16>
        %287 = vector.broadcast %87 : index to vector<4xindex>
        %288 = vector.broadcast %cst : f32 to vector<4xf32>
        vector.scatter %alloc_18[%c3] [%287], %68, %288 : memref<4xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
        %289 = vector.broadcast %rank : index to vector<4xindex>
        %290 = vector.broadcast %c748652137_i64 : i64 to vector<4xi64>
        vector.scatter %alloc_10[%c0] [%289], %68, %290 : memref<4xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
        %291 = vector.broadcast %200 : index to vector<4xindex>
        vector.scatter %alloc_12[%c1, %c2, %c3] [%291], %81, %68 : memref<4x3x4xi1>, vector<4xindex>, vector<4xi1>, vector<4xi1>
        %292 = bufferization.to_memref %163 : memref<14x9xi32>
        %293 = arith.remui %extracted, %c1690777272_i32 : i32
        %from_elements_52 = tensor.from_elements %179, %false_46, %false_2, %false : tensor<4xi1>
        %294 = arith.ceildivsi %c1690777272_i32, %c1690777272_i32 : i32
        %false_53 = index.bool.constant false
        %295 = arith.divui %extracted, %c496720484_i32 : i32
        %296 = arith.addf %out_50, %out_50 : f32
        %297 = arith.addi %c-12810_i16, %c-12810_i16 : i16
        %alloc_54 = memref.alloc() : memref<4x3x4xi64>
        %cast_55 = tensor.cast %15 : tensor<14x3xf16> to tensor<?x?xf16>
        %298 = vector.flat_transpose %81 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
        affine.store %197, %alloc[%c8, %c6, %c15] : memref<4x3x4xf16>
        %299 = math.exp %11 : tensor<4x3x4xf32>
        %300 = index.sizeof
        %301 = arith.divui %c1123592564_i64, %c748652137_i64 : i64
        %302 = vector.multi_reduction <mul>, %70, %71 [] : vector<4xf16> to vector<4xf16>
        %303 = index.sub %45, %c14
        %304 = vector.flat_transpose %132 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %305 = index.maxs %134, %rank_34
        %306 = arith.minui %c748652137_i64, %c748652137_i64 : i64
        %307 = math.expm1 %153 : tensor<4xf16>
        %308 = arith.andi %c-27964_i16, %c-12810_i16 : i16
        %309 = vector.multi_reduction <or>, %19, %c-15060_i16 [0] : vector<14xi16> to i16
        %310 = index.divs %124, %146
        %311 = arith.andi %309, %139 : i16
        %312 = vector.broadcast %179 : i1 to vector<4xi1>
        %from_elements_56 = tensor.from_elements %c748652137_i64, %c748652137_i64, %c2143169797_i64, %c171434000_i64, %c1123592564_i64, %c171434000_i64, %c171434000_i64, %c1123592564_i64, %c748652137_i64, %c171434000_i64, %c748652137_i64, %c171434000_i64, %c1123592564_i64, %c748652137_i64, %c1123592564_i64, %c171434000_i64, %c748652137_i64, %c2143169797_i64, %c2143169797_i64, %c748652137_i64, %c171434000_i64, %c748652137_i64, %c1123592564_i64, %c1123592564_i64, %c1123592564_i64, %c2143169797_i64, %c171434000_i64, %c1123592564_i64, %c171434000_i64, %c171434000_i64, %c2143169797_i64, %c748652137_i64, %c748652137_i64, %c1123592564_i64, %c2143169797_i64, %c2143169797_i64, %c748652137_i64, %c171434000_i64, %c171434000_i64, %c2143169797_i64, %c748652137_i64, %c1123592564_i64 : tensor<14x3xi64>
        linalg.yield %out_50 : f32
      } -> tensor<4x3x4xf32>
      %rank_48 = tensor.rank %16 : tensor<14x3xi32>
      %257 = memref.realloc %alloc_11 : memref<4xf16> to memref<9xf16>
      %258 = scf.index_switch %116 -> index 
      case 1 {
        %286 = arith.minui %c496720484_i32, %c1690777272_i32 : i32
        %287 = math.tan %12 : tensor<4x3x4xf32>
        %alloc_50 = memref.alloc() : memref<14x3xf16>
        %288 = arith.ceildivsi %179, %false : i1
        %289 = arith.maxui %c171434000_i64, %c1123592564_i64 : i64
        %290 = math.roundeven %cst_22 : f16
        %291 = arith.divui %extracted, %c1690777272_i32 : i32
        %292 = arith.addf %cst_1, %out : f32
        memref.assume_alignment %alloc_19, 1 : memref<4xi32>
        %293 = index.ceildivs %45, %c4
        %294 = vector.load %alloc_8[%c3] : memref<4xi32>, vector<4xi32>
        %295 = arith.shrsi %c748652137_i64, %c1123592564_i64 : i64
        %296 = math.rsqrt %5 : tensor<14x3xf16>
        %297 = tensor.empty() : tensor<3x9xi32>
        %298 = tensor.empty() : tensor<14x9xi32>
        %299 = linalg.matmul ins(%13, %297 : tensor<14x3xi32>, tensor<3x9xi32>) outs(%298 : tensor<14x9xi32>) -> tensor<14x9xi32>
        %300 = memref.realloc %alloc_13 : memref<4xf16> to memref<3xf16>
        %alloca_51 = memref.alloca() : memref<14x3xi32>
        scf.yield %115 : index
      }
      case 2 {
        %286 = index.mul %c5, %c9
        %cast_50 = tensor.cast %from_elements_23 : tensor<4xf16> to tensor<?xf16>
        %287 = index.ceildivu %rank_48, %134
        %288 = index.maxu %c10, %158
        %289 = index.divs %c3, %115
        %290 = index.maxu %74, %116
        memref.store %139, %91[%c0, %c2, %c3] : memref<4x3x4xi16>
        %291 = vector.broadcast %c1123592564_i64 : i64 to vector<14xi64>
        %dest_51, %accumulated_value_52 = vector.scan <maxsi>, %66, %291 {inclusive = false, reduction_dim = 1 : i64} : vector<14x3xi64>, vector<14xi64>
        %292 = index.mul %26, %87
        %rank_53 = tensor.rank %from_elements_23 : tensor<4xf16>
        %293 = vector.multi_reduction <minui>, %19, %19 [] : vector<14xi16> to vector<14xi16>
        affine.store %c748652137_i64, %alloc_4[%c10, %c11] : memref<14x3xi64>
        %294 = memref.atomic_rmw maxu %c748652137_i64, %alloc_4[%c0, %c1] : (i64, memref<14x3xi64>) -> i64
        %295 = tensor.empty() : tensor<3x14xf16>
        %296 = tensor.empty() : tensor<14x14xf16>
        %297 = linalg.matmul ins(%15, %295 : tensor<14x3xf16>, tensor<3x14xf16>) outs(%296 : tensor<14x14xf16>) -> tensor<14x14xf16>
        %cast_54 = tensor.cast %8 : tensor<14x3xi32> to tensor<?x?xi32>
        %298 = memref.realloc %alloc_16 : memref<4xf16> to memref<9xf16>
        scf.yield %138 : index
      }
      case 3 {
        %286 = memref.realloc %alloc_10 : memref<4xi64> to memref<9xi64>
        %287 = arith.remf %167, %167 : f16
        %from_elements_50 = tensor.from_elements %c496720484_i32, %c496720484_i32, %extracted, %extracted, %c1690777272_i32, %c1690777272_i32, %extracted, %extracted, %c1690777272_i32, %c496720484_i32, %c1690777272_i32, %c496720484_i32, %c1690777272_i32, %c1690777272_i32, %extracted, %c1690777272_i32, %c496720484_i32, %extracted, %c496720484_i32, %c496720484_i32, %c1690777272_i32, %extracted, %c1690777272_i32, %c1690777272_i32, %c1690777272_i32, %extracted, %c496720484_i32, %extracted, %c496720484_i32, %c1690777272_i32, %extracted, %c1690777272_i32, %c496720484_i32, %c1690777272_i32, %c496720484_i32, %c496720484_i32, %c1690777272_i32, %c496720484_i32, %c496720484_i32, %extracted, %c496720484_i32, %c496720484_i32, %c1690777272_i32, %extracted, %c496720484_i32, %extracted, %c1690777272_i32, %c1690777272_i32 : tensor<4x3x4xi32>
        %288 = arith.remui %139, %139 : i16
        %289 = index.maxu %115, %c0
        %290 = math.exp2 %15 : tensor<14x3xf16>
        %291 = vector.broadcast %false_2 : i1 to vector<4x3x4xi1>
        %292 = math.rsqrt %extracted_28 : f16
        memref.store %197, %alloc_17[%c2, %c0, %c1] : memref<4x3x4xf16>
        %293 = index.divs %172, %c8
        %294 = arith.remf %cst, %cst_3 : f32
        %295 = arith.minsi %c31641_i16, %c-15060_i16 : i16
        %296 = math.tan %197 : f16
        %297 = memref.realloc %alloc_5 : memref<4xf16> to memref<9xf16>
        %298 = arith.remf %167, %cst_22 : f16
        %299 = arith.andi %c2143169797_i64, %c2143169797_i64 : i64
        scf.yield %172 : index
      }
      case 4 {
        %286 = arith.cmpi slt, %false_2, %179 : i1
        %287 = math.rsqrt %12 : tensor<4x3x4xf32>
        %splat_50 = tensor.splat %false_2 : tensor<14x3xi1>
        %288 = index.sub %172, %rank_48
        affine.store %c496720484_i32, %alloc_19[%c0] : memref<4xi32>
        %289 = vector.multi_reduction <maxf>, %58, %cst_22 [0] : vector<14xf16> to f16
        %290 = arith.muli %c31641_i16, %c31641_i16 : i16
        %291 = index.castu %179 : i1 to index
        %292 = index.casts %c15 : index to i32
        %293 = math.ipowi %139, %c-12810_i16 : i16
        %294 = vector.broadcast %c171434000_i64 : i64 to vector<14xi64>
        %295 = vector.broadcast %false_0 : i1 to vector<14xi1>
        %296 = vector.maskedload %alloc_10[%c3], %295, %294 : memref<4xi64>, vector<14xi1>, vector<14xi64> into vector<14xi64>
        %cast_51 = tensor.cast %15 : tensor<14x3xf16> to tensor<?x?xf16>
        %297 = vector.broadcast %cst_22 : f16 to vector<3xf16>
        %298 = vector.broadcast %false_2 : i1 to vector<3xi1>
        %299 = vector.maskedload %alloc_11[%c2], %298, %297 : memref<4xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
        %300 = math.fma %15, %0, %15 : tensor<14x3xf16>
        %301 = math.powf %cst_22, %167 : f16
        %302 = vector.broadcast %149 : index to vector<3xindex>
        vector.scatter %alloc_12[%c3, %c2, %c0] [%302], %298, %298 : memref<4x3x4xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
        scf.yield %c9 : index
      }
      default {
        %286 = math.log %12 : tensor<4x3x4xf32>
        %alloc_50 = memref.alloc() : memref<3x3xi64>
        %287 = tensor.empty() : tensor<14x3xi64>
        %288 = linalg.matmul ins(%4, %alloc_50 : tensor<14x3xi64>, memref<3x3xi64>) outs(%287 : tensor<14x3xi64>) -> tensor<14x3xi64>
        %289 = vector.broadcast %c2143169797_i64 : i64 to vector<14xi64>
        %290 = vector.broadcast %false_2 : i1 to vector<14xi1>
        %291 = vector.maskedload %alloc_9[%c0], %290, %289 : memref<4xi64>, vector<14xi1>, vector<14xi64> into vector<14xi64>
        %292 = index.sub %158, %c5
        %293 = index.maxu %170, %175
        %294 = vector.broadcast %c-27964_i16 : i16 to vector<4x4xi16>
        %295 = vector.outerproduct %132, %132, %294 {kind = #vector.kind<add>} : vector<4xi16>, vector<4xi16>
        %296 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %145, %143, %c1123592564_i64 : vector<9xi64>, vector<9xi64> into i64
        %297 = math.sqrt %0 : tensor<14x3xf16>
        %extracted_51 = tensor.extract %20[] : tensor<f16>
        memref.store %false, %alloc_14[%c2, %c0] : memref<14x3xi1>
        %298 = memref.load %alloc_9[%c3] : memref<4xi64>
        %299 = math.atan2 %10, %10 : tensor<4x3x4xf16>
        %300 = arith.andi %c31641_i16, %c-15060_i16 : i16
        %301 = arith.minsi %c1123592564_i64, %c2143169797_i64 : i64
        %alloca_52 = memref.alloca() : memref<4x3x4xf32>
        %302 = math.expm1 %5 : tensor<14x3xf16>
        scf.yield %146 : index
      }
      %259 = vector.insert %extracted_28, %64 [0] : f16 into vector<1xf16>
      %260 = index.maxu %c15, %193
      %261 = math.round %153 : tensor<4xf16>
      %262 = math.tan %14 : tensor<4xf16>
      %263 = vector.extract %64[0] : vector<1xf16>
      %264 = arith.andi %false, %false_2 : i1
      %265 = arith.remf %cst_3, %cst_1 : f32
      %266 = arith.addf %cst, %cst_1 : f32
      %267 = vector.insert %197, %119 [0] : f16 into vector<1xf16>
      %268 = memref.realloc %alloc_16 : memref<4xf16> to memref<9xf16>
      %269 = math.tan %11 : tensor<4x3x4xf32>
      %270 = scf.while (%arg3 = %c1123592564_i64) : (i64) -> i64 {
        %286 = math.tan %14 : tensor<4xf16>
        %287 = math.absf %197 : f16
        %cast_50 = tensor.cast %13 : tensor<14x3xi32> to tensor<?x?xi32>
        %288 = math.ctpop %139 : i16
        %289 = affine.min affine_map<(d0, d1, d2) -> (-d0 - 2)>(%87, %200, %65)
        %290 = index.ceildivu %c14, %124
        %291 = math.ipowi %8, %16 : tensor<14x3xi32>
        %292 = math.exp2 %153 : tensor<4xf16>
        scf.condition(%179) %c2143169797_i64 : i64
      } do {
      ^bb0(%arg3: i64):
        %286 = tensor.empty(%116) : tensor<?x3xi1>
        %inserted_50 = tensor.insert %c1690777272_i32 into %163[%c11, %c1] : tensor<14x9xi32>
        %287 = index.divs %98, %260
        %288 = index.mul %178, %172
        %289 = math.floor %21 : tensor<f16>
        %290 = arith.andi %c-12810_i16, %c-15060_i16 : i16
        %291 = math.round %12 : tensor<4x3x4xf32>
        %292 = math.exp2 %extracted_28 : f16
        %alloca_51 = memref.alloca() : memref<4xi32>
        %293 = index.ceildivu %134, %65
        %294 = math.rsqrt %10 : tensor<4x3x4xf16>
        %295 = math.powf %21, %21 : tensor<f16>
        %296 = math.expm1 %out : f32
        %297 = vector.transpose %68, [0] : vector<4xi1> to vector<4xi1>
        %298 = vector.multi_reduction <minui>, %68, %false_2 [0] : vector<4xi1> to i1
        %299 = vector.broadcast %c748652137_i64 : i64 to vector<14xi64>
        %dest_52, %accumulated_value_53 = vector.scan <maxsi>, %66, %299 {inclusive = false, reduction_dim = 1 : i64} : vector<14x3xi64>, vector<14xi64>
        scf.yield %c748652137_i64 : i64
      }
      %271 = arith.maxsi %c2143169797_i64, %c171434000_i64 : i64
      %272 = arith.maxsi %139, %c31641_i16 : i16
      %273 = arith.remf %extracted_28, %cst_22 : f16
      %274 = vector.broadcast %c2143169797_i64 : i64 to vector<3xi64>
      %275 = vector.broadcast %false_2 : i1 to vector<3xi1>
      %276 = vector.maskedload %alloc_9[%c1], %275, %274 : memref<4xi64>, vector<3xi1>, vector<3xi64> into vector<3xi64>
      %277 = vector.broadcast %extracted : i32 to vector<4xi32>
      %278 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%6 : tensor<4x3x4xi16>) outs(%6 : tensor<4x3x4xi16>) {
      ^bb0(%in: i16, %out_50: i16):
        %286 = vector.broadcast %146 : index to vector<3xindex>
        %287 = vector.broadcast %197 : f16 to vector<3xf16>
        vector.scatter %alloc_5[%c3] [%286], %275, %287 : memref<4xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
        %alloca_51 = memref.alloca() : memref<4x3x4xi64>
        %288 = arith.shli %in, %c-12810_i16 : i16
        %289 = arith.shli %c-27964_i16, %c-27964_i16 : i16
        %290 = arith.divui %out_50, %in : i16
        %291 = index.sizeof
        %292 = arith.minui %c31641_i16, %c-27964_i16 : i16
        %293 = arith.cmpi ule, %c-27964_i16, %c-12810_i16 : i16
        %294 = vector.multi_reduction <or>, %275, %false [0] : vector<3xi1> to i1
        %295 = vector.broadcast %c6 : index to vector<4xindex>
        vector.scatter %alloc_19[%c3] [%295], %68, %67 : memref<4xi32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
        %alloc_52 = memref.alloc() : memref<14x3xi16>
        %296 = arith.ceildivsi %179, %179 : i1
        %297 = bufferization.clone %alloc_12 : memref<4x3x4xi1> to memref<4x3x4xi1>
        %298 = math.ctpop %179 : i1
        %cast_53 = tensor.cast %5 : tensor<14x3xf16> to tensor<?x?xf16>
        %299 = vector.insertelement %c1123592564_i64, %145[%rank : index] : vector<9xi64>
        %300 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %69, %69, %c1690777272_i32 : vector<4xi32>, vector<4xi32> into i32
        %301 = arith.shli %c748652137_i64, %c171434000_i64 : i64
        %302 = vector.extract %132[0] : vector<4xi16>
        %303 = bufferization.to_tensor %alloc_25 : memref<14x3xi32>
        %304 = arith.divf %cst_22, %extracted_28 : f16
        %305 = arith.remf %197, %extracted_28 : f16
        %false_54 = index.bool.constant false
        %306 = bufferization.clone %alloc_6 : memref<4xi32> to memref<4xi32>
        %307 = math.exp %cst_3 : f32
        %308 = bufferization.to_memref %190 : memref<14x3xi1>
        %309 = math.copysign %21, %21 : tensor<f16>
        %310 = arith.floordivsi %c2143169797_i64, %c748652137_i64 : i64
        %311 = vector.broadcast %extracted_28 : f16 to vector<1x1xf16>
        %312 = vector.outerproduct %64, %95, %311 {kind = #vector.kind<minf>} : vector<1xf16>, vector<1xf16>
        %313 = math.exp2 %5 : tensor<14x3xf16>
        %314 = math.ipowi %c31641_i16, %in : i16
        %315 = vector.extract_strided_slice %95 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
        linalg.yield %c31641_i16 : i16
      } -> tensor<4x3x4xi16>
      %279 = math.ceil %11 : tensor<4x3x4xf32>
      %280 = vector.create_mask %62 : vector<4xi1>
      %alloc_49 = memref.alloc() : memref<4xi1>
      %281 = vector.broadcast %extracted : i32 to vector<4x4xi32>
      %282 = vector.outerproduct %277, %133, %281 {kind = #vector.kind<xor>} : vector<4xi32>, vector<4xi32>
      %283 = index.maxu %181, %c13
      %284 = math.rsqrt %10 : tensor<4x3x4xf16>
      %true = index.bool.constant true
      %285 = math.copysign %from_elements_23, %153 : tensor<4xf16>
      linalg.yield %cst_1 : f32
    } -> tensor<4x3x4xf32>
    %202 = math.exp2 %12 : tensor<4x3x4xf32>
    %203 = arith.floordivsi %179, %false : i1
    %204 = math.expm1 %21 : tensor<f16>
    %205 = vector.matrix_multiply %133, %133 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi32>, vector<4xi32>) -> vector<1xi32>
    %206 = arith.muli %extracted, %c496720484_i32 : i32
    %207 = math.ipowi %13, %8 : tensor<14x3xi32>
    %expanded_35 = tensor.expand_shape %11 [[0], [1], [2, 3]] : tensor<4x3x4xf32> into tensor<4x3x4x1xf32>
    %false_36 = index.bool.constant false
    %208 = math.cos %21 : tensor<f16>
    %209 = index.ceildivu %98, %170
    %210 = arith.andi %false_36, %false_0 : i1
    %211 = arith.floordivsi %c-12810_i16, %c-15060_i16 : i16
    %alloc_37 = memref.alloc() : memref<4x4xi64>
    %212 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_37, %from_elements : memref<4x4xi64>, tensor<4x3x4xi64>) outs(%from_elements : tensor<4x3x4xi64>) {
    ^bb0(%in: i64, %in_46: i64, %out: i64):
      %splat_47 = tensor.splat %cst : tensor<14x3xf32>
      %255 = vector.load %alloc_12[%c3, %c1, %c2] : memref<4x3x4xi1>, vector<4x3x4xi1>
      %256 = arith.maxf %167, %197 : f16
      memref.copy %alloc_8, %alloc_19 : memref<4xi32> to memref<4xi32>
      %257 = arith.minf %cst_1, %cst_3 : f32
      %258 = arith.shrsi %c1123592564_i64, %out : i64
      %259 = arith.minf %extracted_28, %cst_22 : f16
      %260 = memref.load %alloc_19[%c2] : memref<4xi32>
      %261 = math.ipowi %1, %1 : tensor<4xi32>
      %262 = arith.cmpi sgt, %c-15060_i16, %c-15060_i16 : i16
      %263 = bufferization.clone %alloc_11 : memref<4xf16> to memref<4xf16>
      affine.store %cst, %alloc_7[%c11, %c3] : memref<14x3xf32>
      %264 = math.log10 %5 : tensor<14x3xf16>
      %265 = math.ctpop %c496720484_i32 : i32
      %266 = arith.shrsi %in, %out : i64
      %267 = index.castu %in_46 : i64 to index
      %268 = vector.flat_transpose %64 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
      %269 = math.round %14 : tensor<4xf16>
      %270 = vector.insert %197, %95 [0] : f16 into vector<1xf16>
      %271 = vector.splat %c1 : vector<4xindex>
      %272 = affine.min affine_map<(d0, d1) -> (d0 * 64 - 2)>(%c5, %146)
      %c11420_i16 = arith.constant 11420 : i16
      %273 = arith.maxsi %c748652137_i64, %in : i64
      %274 = scf.while (%arg3 = %false) : (i1) -> i1 {
        %280 = index.sizeof
        %from_elements_50 = tensor.from_elements %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst, %cst_3, %cst, %cst_1, %cst, %cst, %cst_1, %cst, %cst, %cst_3, %cst_1, %cst, %cst, %cst_1, %cst_3, %cst_1, %cst_1, %cst, %cst, %cst_3, %cst_1, %cst, %cst_1, %cst, %cst, %cst_1, %cst, %cst_3, %cst_3, %cst_1, %cst_1, %cst_3, %cst_3, %cst_3, %cst_1 : tensor<14x3xf32>
        %alloc_51 = memref.alloc() : memref<4xi64>
        %281 = bufferization.to_memref %11 : memref<4x3x4xf32>
        %282 = arith.ceildivsi %179, %179 : i1
        %283 = math.log2 %cst_22 : f16
        %284 = math.exp %21 : tensor<f16>
        %285 = arith.divui %c171434000_i64, %c748652137_i64 : i64
        scf.condition(%false_0) %false_2 : i1
      } do {
      ^bb0(%arg3: i1):
        %280 = index.sub %c3, %65
        %alloca_50 = memref.alloca() : memref<4x3x4xi1>
        %281 = index.ceildivu %c9, %65
        %282 = memref.realloc %alloc_9 : memref<4xi64> to memref<14xi64>
        %283 = arith.minf %cst_1, %cst : f32
        %284 = vector.broadcast %23 : index to vector<3xindex>
        %285 = vector.broadcast %false_0 : i1 to vector<3xi1>
        %286 = vector.broadcast %c496720484_i32 : i32 to vector<3xi32>
        vector.scatter %alloc_6[%c1] [%284], %285, %286 : memref<4xi32>, vector<3xindex>, vector<3xi1>, vector<3xi32>
        %extracted_51 = tensor.extract %12[%c3, %c2, %c1] : tensor<4x3x4xf32>
        %287 = index.floordivs %134, %149
        %288 = bufferization.clone %alloc_6 : memref<4xi32> to memref<4xi32>
        %289 = vector.splat %c5 : vector<14x3xindex>
        %290 = index.sizeof
        %291 = math.expm1 %14 : tensor<4xf16>
        %292 = math.round %cst_1 : f32
        %293 = math.exp %cst_3 : f32
        %294 = math.exp %11 : tensor<4x3x4xf32>
        memref.store %c1690777272_i32, %288[%c0] : memref<4xi32>
        scf.yield %179 : i1
      }
      %275 = math.absf %5 : tensor<14x3xf16>
      %276 = index.casts %c1 : index to i32
      %false_48 = index.bool.constant false
      %true = index.bool.constant true
      %277 = math.ctpop %8 : tensor<14x3xi32>
      %false_49 = index.bool.constant false
      %278 = vector.flat_transpose %133 {columns = 2 : i32, rows = 2 : i32} : vector<4xi32> -> vector<4xi32>
      %279 = vector.flat_transpose %67 {columns = 2 : i32, rows = 2 : i32} : vector<4xi32> -> vector<4xi32>
      linalg.yield %in_46 : i64
    } -> tensor<4x3x4xi64>
    %213 = math.log1p %0 : tensor<14x3xf16>
    %214 = arith.addi %139, %c-12810_i16 : i16
    memref.store %c-27964_i16, %alloc_15[%c12, %c2] : memref<14x3xi16>
    %extracted_38 = tensor.extract %16[%c11, %c2] : tensor<14x3xi32>
    %215 = vector.matrix_multiply %58, %70 {lhs_columns = 2 : i32, lhs_rows = 7 : i32, rhs_columns = 2 : i32} : (vector<14xf16>, vector<4xf16>) -> vector<14xf16>
    %216 = arith.shli %false, %false : i1
    %alloc_39 = memref.alloc() : memref<4xi16>
    %217 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_39, %alloc_39, %6 : memref<4xi16>, memref<4xi16>, tensor<4x3x4xi16>) outs(%6 : tensor<4x3x4xi16>) {
    ^bb0(%in: i16, %in_46: i16, %in_47: i16, %out: i16):
      %255 = vector.extract %102[2] : vector<4xi16>
      %256 = index.divs %175, %c5
      %257 = index.add %c4, %74
      %258 = arith.divui %c31641_i16, %139 : i16
      %259 = arith.muli %c2143169797_i64, %c171434000_i64 : i64
      %260 = affine.min affine_map<(d0, d1) -> (d0 ceildiv 16 + d1 mod 2 - d0, (d1 mod 2 - d0) * 32, (-d1) ceildiv 16)>(%c10, %rank)
      %261 = index.ceildivs %c12, %146
      %262 = arith.andi %in_47, %in_46 : i16
      %263 = math.cos %21 : tensor<f16>
      %264 = vector.insert %c1690777272_i32, %92 [0] : i32 into vector<4xi32>
      %265 = arith.muli %in_46, %in_47 : i16
      %266 = index.sizeof
      %267 = math.exp2 %5 : tensor<14x3xf16>
      %268 = math.exp2 %cst : f32
      %269 = math.tan %expanded_35 : tensor<4x3x4x1xf32>
      %270 = math.fma %15, %0, %15 : tensor<14x3xf16>
      %271 = vector.multi_reduction <add>, %215, %58 [] : vector<14xf16> to vector<14xf16>
      %272 = math.ctpop %false : i1
      %273 = scf.index_switch %26 -> index 
      case 1 {
        %285 = arith.andi %c-15060_i16, %in : i16
        %286 = vector.broadcast %c748652137_i64 : i64 to vector<14xi64>
        %dest_51, %accumulated_value_52 = vector.scan <maxui>, %66, %286 {inclusive = false, reduction_dim = 1 : i64} : vector<14x3xi64>, vector<14xi64>
        %287 = math.exp2 %from_elements_23 : tensor<4xf16>
        %288 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 floordiv 2, d1)>(%193, %105, %c4, %c9)
        %289 = vector.broadcast %c171434000_i64 : i64 to vector<14xi64>
        %dest_53, %accumulated_value_54 = vector.scan <maxsi>, %66, %289 {inclusive = false, reduction_dim = 1 : i64} : vector<14x3xi64>, vector<14xi64>
        %290 = math.ctpop %c-15060_i16 : i16
        %291 = vector.broadcast %c-15060_i16 : i16 to vector<3x3xi16>
        %292 = vector.outerproduct %118, %118, %291 {kind = #vector.kind<maxsi>} : vector<3xi16>, vector<3xi16>
        %alloc_55 = memref.alloc() : memref<3x9xi1>
        %293 = tensor.empty() : tensor<14x9xi1>
        %294 = linalg.matmul ins(%3, %alloc_55 : tensor<14x3xi1>, memref<3x9xi1>) outs(%293 : tensor<14x9xi1>) -> tensor<14x9xi1>
        %from_elements_56 = tensor.from_elements %extracted, %extracted, %extracted_38, %extracted : tensor<4xi32>
        %alloca_57 = memref.alloca() : memref<4x3x4xf32>
        %alloc_58 = memref.alloc() : memref<4x3x4xi32>
        %295 = math.expm1 %cst_3 : f32
        %296 = vector.broadcast %false_36 : i1 to vector<14xi1>
        %297 = vector.maskedload %alloc_21[%c3], %296, %58 : memref<4xf16>, vector<14xi1>, vector<14xf16> into vector<14xf16>
        %extracted_59 = tensor.extract %cast[%c0, %c0] : tensor<?x?xi32>
        %alloc_60 = memref.alloc() : memref<14x3xf32>
        %298 = arith.remui %c1123592564_i64, %c171434000_i64 : i64
        scf.yield %c15 : index
      }
      case 2 {
        %285 = arith.minf %cst_1, %cst_1 : f32
        %286 = arith.minui %extracted, %extracted_38 : i32
        %287 = bufferization.clone %alloc_15 : memref<14x3xi16> to memref<14x3xi16>
        affine.store %in_46, %alloc_15[%c12, %c10] : memref<14x3xi16>
        %288 = math.expm1 %11 : tensor<4x3x4xf32>
        %289 = memref.atomic_rmw maxs %c1690777272_i32, %alloc_6[%c1] : (i32, memref<4xi32>) -> i32
        %290 = math.log2 %12 : tensor<4x3x4xf32>
        %291 = vector.transpose %71, [0] : vector<4xf16> to vector<4xf16>
        %292 = vector.broadcast %extracted : i32 to vector<3xi32>
        %293 = vector.broadcast %179 : i1 to vector<3xi1>
        %294 = vector.maskedload %alloc_19[%c1], %293, %292 : memref<4xi32>, vector<3xi1>, vector<3xi32> into vector<3xi32>
        %295 = bufferization.to_memref %3 : memref<14x3xi1>
        %cast_51 = tensor.cast %15 : tensor<14x3xf16> to tensor<?x?xf16>
        %296 = math.exp2 %153 : tensor<4xf16>
        %297 = vector.broadcast %167 : f16 to vector<9xf16>
        %298 = vector.maskedload %alloc_21[%c2], %144, %297 : memref<4xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
        %299 = math.exp2 %15 : tensor<14x3xf16>
        affine.store %c31641_i16, %287[%c1, %c10] : memref<14x3xi16>
        %300 = arith.remf %197, %197 : f16
        scf.yield %87 : index
      }
      case 3 {
        %285 = arith.maxf %167, %167 : f16
        %286 = bufferization.to_tensor %alloc_17 : memref<4x3x4xf16>
        %287 = tensor.empty() : tensor<3x3xi1>
        %288 = tensor.empty() : tensor<14x3xi1>
        %289 = linalg.matmul ins(%3, %287 : tensor<14x3xi1>, tensor<3x3xi1>) outs(%288 : tensor<14x3xi1>) -> tensor<14x3xi1>
        %290 = arith.floordivsi %extracted, %extracted : i32
        %expanded_51 = tensor.expand_shape %14 [[0, 1]] : tensor<4xf16> into tensor<4x1xf16>
        %291 = vector.maskedload %alloc_12[%c2, %c1, %c2], %68, %68 : memref<4x3x4xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
        %292 = affine.load %alloc_11[%c14] : memref<4xf16>
        %293 = vector.broadcast %c171434000_i64 : i64 to vector<14xi64>
        %dest_52, %accumulated_value_53 = vector.scan <maxsi>, %66, %293 {inclusive = false, reduction_dim = 1 : i64} : vector<14x3xi64>, vector<14xi64>
        %294 = arith.addf %cst_3, %cst_1 : f32
        %295 = math.absf %12 : tensor<4x3x4xf32>
        %296 = bufferization.clone %alloc_10 : memref<4xi64> to memref<4xi64>
        memref.copy %alloc_21, %alloc_11 : memref<4xf16> to memref<4xf16>
        %297 = math.powf %5, %5 : tensor<14x3xf16>
        %298 = vector.splat %292 : vector<4x3x4xf16>
        %299 = arith.minf %cst_22, %extracted_28 : f16
        %300 = arith.ceildivsi %c748652137_i64, %c748652137_i64 : i64
        scf.yield %178 : index
      }
      case 4 {
        %285 = math.cos %cst_3 : f32
        %286 = memref.load %91[%c1, %c1, %c0] : memref<4x3x4xi16>
        %287 = arith.negf %cst_22 : f16
        %true = index.bool.constant true
        %288 = bufferization.clone %alloc_19 : memref<4xi32> to memref<4xi32>
        %289 = math.absf %167 : f16
        %from_elements_51 = tensor.from_elements %c1123592564_i64, %c1123592564_i64, %c1123592564_i64, %c748652137_i64, %c748652137_i64, %c171434000_i64, %c748652137_i64, %c1123592564_i64, %c2143169797_i64, %c2143169797_i64, %c1123592564_i64, %c2143169797_i64, %c171434000_i64, %c171434000_i64, %c1123592564_i64, %c171434000_i64, %c171434000_i64, %c2143169797_i64, %c748652137_i64, %c1123592564_i64, %c1123592564_i64, %c171434000_i64, %c171434000_i64, %c1123592564_i64, %c1123592564_i64, %c1123592564_i64, %c2143169797_i64, %c171434000_i64, %c171434000_i64, %c171434000_i64, %c1123592564_i64, %c2143169797_i64, %c171434000_i64, %c748652137_i64, %c2143169797_i64, %c2143169797_i64, %c1123592564_i64, %c748652137_i64, %c748652137_i64, %c1123592564_i64, %c748652137_i64, %c171434000_i64, %c748652137_i64, %c2143169797_i64, %c171434000_i64, %c2143169797_i64, %c748652137_i64, %c748652137_i64 : tensor<4x3x4xi64>
        %290 = arith.divui %179, %false_36 : i1
        %291 = vector.broadcast %55 : index to vector<4xindex>
        %292 = vector.broadcast %c2143169797_i64 : i64 to vector<4xi64>
        vector.scatter %alloc_4[%c13, %c1] [%291], %81, %292 : memref<14x3xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
        %293 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, d0 + d1 * 2)>(%c11, %26, %c10, %c11)
        %294 = vector.extract %119[0] : vector<1xf16>
        %295 = tensor.empty() : tensor<14x3xf16>
        %296 = index.divs %256, %26
        %297 = math.sqrt %15 : tensor<14x3xf16>
        %298 = math.ctlz %c496720484_i32 : i32
        %299 = index.divs %74, %158
        scf.yield %rank : index
      }
      default {
        %285 = memref.atomic_rmw ori %c2143169797_i64, %alloc_10[%c0] : (i64, memref<4xi64>) -> i64
        %extracted_51 = tensor.extract %13[%c6, %c2] : tensor<14x3xi32>
        %286 = vector.insert %139, %19 [11] : i16 into vector<14xi16>
        %287 = arith.andi %c31641_i16, %c-15060_i16 : i16
        %288 = memref.atomic_rmw assign %c1690777272_i32, %alloc_8[%c1] : (i32, memref<4xi32>) -> i32
        %289 = index.mul %c0, %c9
        %290 = math.ctlz %c-12810_i16 : i16
        %alloc_52 = memref.alloc() : memref<14x3xi64>
        %alloca_53 = memref.alloca() : memref<4x3x4xi16>
        %291 = arith.cmpi ugt, %c-15060_i16, %in : i16
        %292 = arith.minui %179, %false : i1
        %293 = memref.load %alloc_15[%c8, %c0] : memref<14x3xi16>
        %294 = vector.multi_reduction <and>, %145, %143 [] : vector<9xi64> to vector<9xi64>
        %295 = math.ipowi %extracted_51, %extracted_51 : i32
        affine.store %cst_1, %alloc_7[%c4, %c14] : memref<14x3xf32>
        %296 = math.atan %14 : tensor<4xf16>
        scf.yield %c10 : index
      }
      %274 = math.atan2 %cst_1, %cst_3 : f32
      %extracted_48 = tensor.extract %10[%c1, %c1, %c0] : tensor<4x3x4xf16>
      %275 = vector.insert %extracted_38, %133 [2] : i32 into vector<4xi32>
      %alloc_49 = memref.alloc() : memref<4x4xi64>
      %276 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2, %alloc_49 : tensor<4xi64>, memref<4x4xi64>) outs(%from_elements : tensor<4x3x4xi64>) {
      ^bb0(%in_51: i64, %in_52: i64, %out_53: i64):
        %285 = math.absf %167 : f16
        %286 = index.floordivs %172, %c5
        %287 = math.expm1 %expanded : tensor<4x3x4x1xf16>
        %288 = vector.load %alloc_9[%c0] : memref<4xi64>, vector<4xi64>
        %289 = vector.insertelement %cst_22, %58[%rank : index] : vector<14xf16>
        %290 = arith.remsi %false, %false_2 : i1
        %291 = bufferization.to_tensor %alloc_14 : memref<14x3xi1>
        %292 = math.expm1 %21 : tensor<f16>
        %293 = arith.floordivsi %c31641_i16, %in : i16
        %294 = index.ceildivu %50, %178
        %295 = math.exp2 %5 : tensor<14x3xf16>
        %296 = vector.extract %215[8] : vector<14xf16>
        %297 = math.floor %cst : f32
        %298 = index.maxu %c15, %c1
        %extracted_54 = tensor.extract %from_elements_23[%c0] : tensor<4xf16>
        %299 = math.exp %0 : tensor<14x3xf16>
        %300 = index.divs %266, %266
        %301 = math.powf %5, %5 : tensor<14x3xf16>
        %302 = math.ipowi %c1123592564_i64, %c171434000_i64 : i64
        %303 = arith.remui %c-27964_i16, %139 : i16
        %304 = bufferization.to_memref %2 : memref<4xi64>
        %inserted_55 = tensor.insert %c1690777272_i32 into %9[%c1, %c1, %c3] : tensor<4x3x4xi32>
        %305 = index.maxu %200, %294
        %alloca_56 = memref.alloca() : memref<4xi16>
        %306 = index.sub %87, %178
        %307 = math.exp %14 : tensor<4xf16>
        %308 = arith.maxsi %in_46, %out : i16
        %309 = vector.flat_transpose %133 {columns = 2 : i32, rows = 2 : i32} : vector<4xi32> -> vector<4xi32>
        %310 = arith.andi %c748652137_i64, %c748652137_i64 : i64
        %311 = math.expm1 %cst : f32
        %312 = index.mul %261, %124
        %313 = math.log10 %15 : tensor<14x3xf16>
        linalg.yield %in_52 : i64
      } -> tensor<4x3x4xi64>
      %277 = memref.realloc %alloc_19 : memref<4xi32> to memref<3xi32>
      %278 = memref.atomic_rmw andi %c31641_i16, %alloc_15[%c3, %c1] : (i16, memref<14x3xi16>) -> i16
      %279 = arith.remf %cst_1, %cst : f32
      %280 = arith.mulf %cst_1, %cst_1 : f32
      %alloc_50 = memref.alloc() : memref<14x3xf16>
      %281 = scf.index_switch %175 -> i64 
      case 1 {
        %285 = index.ceildivs %c9, %c1
        %286 = index.maxu %98, %50
        %287 = vector.broadcast %in : i16 to vector<14x3xi16>
        %288 = affine.min affine_map<(d0) -> ((d0 floordiv 4 + 32) * 2, (d0 floordiv 4 + 32) * 2)>(%124)
        %289 = arith.maxf %cst_1, %cst : f32
        %290 = math.exp2 %extracted_48 : f16
        %291 = arith.remf %extracted_28, %cst_22 : f16
        %292 = index.maxu %260, %c3
        %293 = math.round %5 : tensor<14x3xf16>
        %294 = vector.load %alloc_7[%c4, %c1] : memref<14x3xf32>, vector<4xf32>
        %295 = math.rsqrt %20 : tensor<f16>
        %296 = vector.broadcast %c748652137_i64 : i64 to vector<3xi64>
        %297 = vector.insert %296, %66 [11] : vector<3xi64> into vector<14x3xi64>
        %298 = vector.reduction <minui>, %68 : vector<4xi1> into i1
        %dest_51, %accumulated_value_52 = vector.scan <minsi>, %287, %118 {inclusive = false, reduction_dim = 0 : i64} : vector<14x3xi16>, vector<3xi16>
        %alloc_53 = memref.alloc() : memref<14x3xf32>
        %299 = math.round %11 : tensor<4x3x4xf32>
        scf.yield %c2143169797_i64 : i64
      }
      case 2 {
        %285 = memref.atomic_rmw addf %cst_22, %alloc_13[%c1] : (f16, memref<4xf16>) -> f16
        %286 = math.atan2 %21, %21 : tensor<f16>
        %cast_51 = tensor.cast %12 : tensor<4x3x4xf32> to tensor<?x?x?xf32>
        %287 = vector.splat %c-27964_i16 : vector<4xi16>
        %288 = memref.realloc %alloc_5 : memref<4xf16> to memref<14xf16>
        memref.store %false_0, %alloc_12[%c1, %c0, %c1] : memref<4x3x4xi1>
        %289 = index.ceildivu %c8, %193
        %290 = vector.broadcast %c2143169797_i64 : i64 to vector<14xi64>
        %dest_52, %accumulated_value_53 = vector.scan <or>, %66, %290 {inclusive = true, reduction_dim = 1 : i64} : vector<14x3xi64>, vector<14xi64>
        %291 = index.ceildivu %256, %138
        %c26762_i16 = arith.constant 26762 : i16
        %292 = arith.floordivsi %extracted_38, %extracted_38 : i32
        %293 = index.casts %89 : index to i32
        %294 = math.round %expanded_35 : tensor<4x3x4x1xf32>
        %295 = arith.maxf %extracted_28, %cst_22 : f16
        %296 = vector.broadcast %c11 : index to vector<9xindex>
        %297 = vector.broadcast %c496720484_i32 : i32 to vector<9xi32>
        vector.scatter %alloc_19[%c3] [%296], %144, %297 : memref<4xi32>, vector<9xindex>, vector<9xi1>, vector<9xi32>
        %298 = index.divs %c6, %98
        scf.yield %c1123592564_i64 : i64
      }
      default {
        %285 = arith.cmpi ne, %false, %179 : i1
        affine.store %c748652137_i64, %alloc_9[%c3] : memref<4xi64>
        %286 = vector.broadcast %c2143169797_i64 : i64 to vector<3xi64>
        %dest_51, %accumulated_value_52 = vector.scan <minui>, %66, %286 {inclusive = false, reduction_dim = 0 : i64} : vector<14x3xi64>, vector<3xi64>
        %287 = vector.extract_strided_slice %92 {offsets = [2], sizes = [2], strides = [1]} : vector<4xi32> to vector<2xi32>
        %alloca_53 = memref.alloca() : memref<14x3xi16>
        %288 = math.ctpop %48 : tensor<i32>
        %289 = arith.maxf %167, %167 : f16
        %290 = arith.maxf %cst_3, %cst : f32
        %extracted_54 = tensor.extract %5[%c7, %c0] : tensor<14x3xf16>
        %from_elements_55 = tensor.from_elements %c-12810_i16, %c-12810_i16, %c-15060_i16, %out : tensor<4xi16>
        %291 = math.cos %cst_22 : f16
        %292 = index.maxs %62, %266
        %alloc_56 = memref.alloc() : memref<4xi16>
        %293 = arith.floordivsi %false_36, %false : i1
        %expanded_57 = tensor.expand_shape %11 [[0], [1], [2, 3]] : tensor<4x3x4xf32> into tensor<4x3x4x1xf32>
        %294 = vector.splat %c0 : vector<4x3x4xindex>
        scf.yield %c748652137_i64 : i64
      }
      %282 = math.absf %15 : tensor<14x3xf16>
      %283 = math.round %197 : f16
      %284 = vector.load %alloc_18[%c0] : memref<4xf32>, vector<14x3xf32>
      linalg.yield %out : i16
    } -> tensor<4x3x4xi16>
    %218 = vector.insertelement %extracted_28, %64[%c15 : index] : vector<1xf16>
    %219 = index.divu %c12, %149
    %220 = vector.flat_transpose %143 {columns = 3 : i32, rows = 3 : i32} : vector<9xi64> -> vector<9xi64>
    affine.store %extracted, %alloc_6[%c4] : memref<4xi32>
    %221 = memref.atomic_rmw assign %c748652137_i64, %alloc_4[%c9, %c0] : (i64, memref<14x3xi64>) -> i64
    %222 = bufferization.to_memref %10 : memref<4x3x4xf16>
    %223 = bufferization.clone %alloc_4 : memref<14x3xi64> to memref<14x3xi64>
    %224 = math.cos %cst : f32
    %225 = arith.remf %197, %extracted_28 : f16
    %226 = math.ipowi %false_0, %179 : i1
    %227 = affine.min affine_map<(d0, d1) -> ((d1 * 4) ceildiv 64)>(%45, %149)
    %alloc_40 = memref.alloc() : memref<4x3x4xi16>
    %alloc_41 = memref.alloc() : memref<4xi16>
    %228 = affine.for %arg3 = 0 to 77 iter_args(%arg4 = %26) -> (index) {
      affine.yield %50 : index
    }
    %229 = math.ctpop %7 : tensor<4xi32>
    %230 = math.log10 %11 : tensor<4x3x4xf32>
    %inserted_42 = tensor.insert %167 into %0[%c4, %c2] : tensor<14x3xf16>
    %alloca_43 = memref.alloca() : memref<14x3xf16>
    affine.for %arg3 = 0 to 76 {
    }
    %231 = arith.shrsi %c1123592564_i64, %c171434000_i64 : i64
    %232 = index.ceildivu %193, %227
    %233 = arith.andi %c31641_i16, %139 : i16
    %234 = index.ceildivs %c9, %65
    %235 = math.atan2 %14, %from_elements_23 : tensor<4xf16>
    %236 = index.castu %98 : index to i32
    %237 = math.powf %cst_22, %cst_22 : f16
    %238 = arith.addf %extracted_28, %cst_22 : f16
    %from_elements_44 = tensor.from_elements %167, %167, %cst_22, %cst_22 : tensor<4xf16>
    %239 = math.log2 %cst_22 : f16
    %240 = index.divs %c4, %181
    memref.assume_alignment %alloc_11, 8 : memref<4xf16>
    %241 = vector.flat_transpose %58 {columns = 7 : i32, rows = 2 : i32} : vector<14xf16> -> vector<14xf16>
    %242 = math.ctpop %c1690777272_i32 : i32
    %splat = tensor.splat %179 : tensor<4x3x4xi1>
    %243 = arith.remf %cst_22, %extracted_28 : f16
    %244 = vector.broadcast %c31641_i16 : i16 to vector<14x3xi16>
    %245 = index.divs %87, %26
    scf.index_switch %89 
    case 1 {
      %true = index.bool.constant true
      memref.store %false_36, %alloc_12[%c0, %c2, %c0] : memref<4x3x4xi1>
      %false_46 = index.bool.constant false
      %255 = arith.divsi %c2143169797_i64, %c2143169797_i64 : i64
      %256 = math.atan2 %cst, %cst_3 : f32
      %257 = arith.shrsi %false_36, %true : i1
      %258 = math.expm1 %expanded : tensor<4x3x4x1xf16>
      %cast_47 = tensor.cast %9 : tensor<4x3x4xi32> to tensor<?x?x?xi32>
      affine.for %arg3 = 0 to 42 {
      }
      %259 = vector.broadcast %cst : f32 to vector<14xf32>
      vector.transfer_write %259, %alloc_7[%146, %c9] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<14xf32>, memref<14x3xf32>
      %260 = arith.divui %179, %false : i1
      %261 = math.expm1 %from_elements_44 : tensor<4xf16>
      %262 = math.floor %12 : tensor<4x3x4xf32>
      %expanded_48 = tensor.expand_shape %5 [[0], [1, 2]] : tensor<14x3xf16> into tensor<14x3x1xf16>
      %263 = index.sub %c7, %146
      %264 = memref.atomic_rmw maxs %extracted_38, %alloc_8[%c1] : (i32, memref<4xi32>) -> i32
      scf.yield
    }
    case 2 {
      %255 = math.exp %15 : tensor<14x3xf16>
      %splat_46 = tensor.splat %cst : tensor<14x3xf32>
      %256 = index.mul %c9, %rank_34
      %257 = arith.minui %false_0, %179 : i1
      %258 = affine.load %alloc_15[%c10, %c13] : memref<14x3xi16>
      %259 = arith.mulf %cst_3, %cst : f32
      %260 = vector.insert %179, %144 [7] : i1 into vector<9xi1>
      %261 = math.rsqrt %14 : tensor<4xf16>
      %262 = arith.addf %cst_1, %cst_3 : f32
      %263 = math.ipowi %splat, %splat : tensor<4x3x4xi1>
      %264 = arith.andi %c-12810_i16, %c-27964_i16 : i16
      %265 = arith.maxf %cst, %cst : f32
      %266 = arith.divsi %c2143169797_i64, %c171434000_i64 : i64
      %267 = math.absf %cst_3 : f32
      %268 = math.roundeven %cst_3 : f32
      %cast_47 = tensor.cast %15 : tensor<14x3xf16> to tensor<?x?xf16>
      scf.yield
    }
    case 3 {
      %255 = arith.remf %cst_3, %cst : f32
      %256 = math.ctpop %16 : tensor<14x3xi32>
      %257 = memref.realloc %alloc_6 : memref<4xi32> to memref<4xi32>
      %258 = math.round %14 : tensor<4xf16>
      %259 = math.exp %15 : tensor<14x3xf16>
      %260 = index.castu %c-27964_i16 : i16 to index
      %261 = arith.cmpi uge, %extracted_38, %c496720484_i32 : i32
      %262 = index.divu %rank, %193
      %false_46 = index.bool.constant false
      %263 = bufferization.clone %alloc_21 : memref<4xf16> to memref<4xf16>
      affine.for %arg3 = 0 to 87 {
      }
      %cast_47 = tensor.cast %2 : tensor<4xi64> to tensor<?xi64>
      %264 = arith.minf %cst, %cst : f32
      %dest_48, %accumulated_value_49 = vector.scan <mul>, %244, %118 {inclusive = false, reduction_dim = 0 : i64} : vector<14x3xi16>, vector<3xi16>
      %splat_50 = tensor.splat %c-15060_i16 : tensor<4x3x4xi16>
      %265 = math.expm1 %cst_1 : f32
      scf.yield
    }
    case 4 {
      %255 = arith.remsi %false_0, %false : i1
      %256 = arith.maxsi %c1690777272_i32, %c496720484_i32 : i32
      %true = index.bool.constant true
      %257 = math.rsqrt %0 : tensor<14x3xf16>
      %258 = vector.broadcast %c748652137_i64 : i64 to vector<9x9xi64>
      %259 = vector.outerproduct %143, %145, %258 {kind = #vector.kind<add>} : vector<9xi64>, vector<9xi64>
      %inserted_46 = tensor.insert %extracted into %7[%c1] : tensor<4xi32>
      %alloca_47 = memref.alloca() : memref<14x3xi32>
      %260 = bufferization.to_tensor %alloc_9 : memref<4xi64>
      %261 = arith.addf %extracted_28, %cst_22 : f16
      %262 = math.ctpop %2 : tensor<4xi64>
      %263 = arith.xori %179, %false_36 : i1
      %dest_48, %accumulated_value_49 = vector.scan <or>, %244, %118 {inclusive = false, reduction_dim = 0 : i64} : vector<14x3xi16>, vector<3xi16>
      %264 = math.cos %11 : tensor<4x3x4xf32>
      %265 = math.expm1 %5 : tensor<14x3xf16>
      %266 = affine.for %arg3 = 0 to 42 iter_args(%arg4 = %alloc_18) -> (memref<4xf32>) {
        affine.yield %arg4 : memref<4xf32>
      }
      %267 = arith.ceildivsi %false_2, %false_0 : i1
      scf.yield
    }
    default {
      %255 = math.exp %extracted_28 : f16
      %256 = math.atan %expanded_35 : tensor<4x3x4x1xf32>
      %257 = index.floordivs %219, %227
      memref.assume_alignment %223, 8 : memref<14x3xi64>
      %258 = index.maxu %26, %105
      %259 = math.exp2 %cst : f32
      %260 = arith.remui %c1690777272_i32, %c496720484_i32 : i32
      %261 = arith.ceildivsi %c2143169797_i64, %c2143169797_i64 : i64
      %262 = vector.matrix_multiply %220, %143 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<9xi64>) -> vector<1xi64>
      scf.index_switch %c13 
      case 1 {
        affine.store %extracted_38, %alloc_20[] : memref<i32>
        %266 = arith.remf %cst_1, %cst_1 : f32
        %267 = vector.broadcast %c6 : index to vector<3xindex>
        %268 = vector.broadcast %false_0 : i1 to vector<3xi1>
        vector.scatter %alloc_12[%c2, %c1, %c1] [%267], %268, %268 : memref<4x3x4xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
        %269 = memref.atomic_rmw assign %c2143169797_i64, %alloc_9[%c3] : (i64, memref<4xi64>) -> i64
        %270 = index.sizeof
        %271 = vector.multi_reduction <maxf>, %71, %extracted_28 [0] : vector<4xf16> to f16
        %272 = vector.shuffle %92, %92 [1, 2, 3, 6] : vector<4xi32>, vector<4xi32>
        %273 = math.tan %from_elements_23 : tensor<4xf16>
        %274 = vector.broadcast %c2 : index to vector<3xindex>
        %275 = vector.broadcast %false : i1 to vector<3xi1>
        %276 = vector.broadcast %197 : f16 to vector<3xf16>
        vector.scatter %222[%c1, %c0, %c3] [%274], %275, %276 : memref<4x3x4xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
        %277 = vector.broadcast %c1123592564_i64 : i64 to vector<14xi64>
        %dest_48, %accumulated_value_49 = vector.scan <minsi>, %66, %277 {inclusive = true, reduction_dim = 1 : i64} : vector<14x3xi64>, vector<14xi64>
        %278 = math.rsqrt %cst_1 : f32
        %279 = math.log2 %153 : tensor<4xf16>
        %alloca_50 = memref.alloca() : memref<4x3x4xi16>
        %280 = math.atan %0 : tensor<14x3xf16>
        %expanded_51 = tensor.expand_shape %153 [[0, 1]] : tensor<4xf16> into tensor<4x1xf16>
        %281 = index.castu %c748652137_i64 : i64 to index
        scf.yield
      }
      default {
        %266 = vector.extract %132[2] : vector<4xi16>
        memref.store %extracted_38, %alloc_8[%c0] : memref<4xi32>
        %267 = arith.remf %cst_1, %cst_3 : f32
        memref.store %c496720484_i32, %alloc_25[%c1, %c2] : memref<14x3xi32>
        vector.print %241 : vector<14xf16>
        %268 = arith.divsi %c31641_i16, %c-27964_i16 : i16
        %269 = index.maxu %c15, %rank_34
        %270 = index.sizeof
        %271 = math.rsqrt %12 : tensor<4x3x4xf32>
        %272 = vector.insertelement %c496720484_i32, %69[%200 : index] : vector<4xi32>
        %273 = vector.broadcast %c171434000_i64 : i64 to vector<3xi64>
        %dest_48, %accumulated_value_49 = vector.scan <minsi>, %66, %273 {inclusive = true, reduction_dim = 0 : i64} : vector<14x3xi64>, vector<3xi64>
        %splat_50 = tensor.splat %extracted_28 : tensor<14x3xf16>
        %274 = index.mul %87, %98
        %275 = arith.ceildivsi %c2143169797_i64, %c1123592564_i64 : i64
        %276 = index.mul %149, %c2
        %277 = vector.broadcast %197 : f16 to vector<3xf16>
        %278 = vector.transfer_write %277, %5[%257, %209] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xf16>, tensor<14x3xf16>
      }
      %from_elements_46 = tensor.from_elements %c31641_i16, %c-12810_i16, %c-12810_i16, %139 : tensor<4xi16>
      %true = arith.constant true
      %263 = index.maxu %65, %219
      %splat_47 = tensor.splat %c748652137_i64 : tensor<4x3x4xi64>
      %264 = arith.minui %c496720484_i32, %c1690777272_i32 : i32
      %265 = arith.divui %179, %false : i1
    }
    %246 = index.maxs %209, %c14
    %247 = index.mul %200, %23
    %248 = bufferization.to_memref %21 : memref<f16>
    %249 = math.exp %10 : tensor<4x3x4xf16>
    %250 = vector.extract %127[0] : vector<1xf16>
    %251 = tensor.empty() : tensor<4x3x4xf16>
    %252 = linalg.copy ins(%10 : tensor<4x3x4xf16>) outs(%251 : tensor<4x3x4xf16>) -> tensor<4x3x4xf16>
    %alloc_45 = memref.alloc() : memref<4xi32>
    linalg.transpose ins(%7 : tensor<4xi32>) outs(%alloc_45 : memref<4xi32>) permutation = [0] 
    %253 = tensor.empty() : tensor<f16>
    %reduced = linalg.reduce ins(%alloc_13 : memref<4xf16>) outs(%253 : tensor<f16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %dest_46, %accumulated_value_47 = vector.scan <and>, %244, %19 {inclusive = true, reduction_dim = 1 : i64} : vector<14x3xi16>, vector<14xi16>
        %255 = math.exp2 %21 : tensor<f16>
        %256 = bufferization.clone %alloc_13 : memref<4xf16> to memref<4xf16>
        %257 = math.tanh %5 : tensor<14x3xf16>
        %258 = math.roundeven %from_elements_23 : tensor<4xf16>
        %expanded_48 = tensor.expand_shape %2 [[0, 1]] : tensor<4xi64> into tensor<4x1xi64>
        bufferization.dealloc_tensor %13 : tensor<14x3xi32>
        %259 = math.absf %in : f16
        %cst_49 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_49 : f16
      }
    scf.parallel (%arg3, %arg4) = (%124, %138) to (%rank_34, %c4) step (%c11, %c8) {
      %255 = arith.remf %167, %cst_22 : f16
      %256 = vector.transpose %81, [0] : vector<4xi1> to vector<4xi1>
      %257 = arith.remsi %c1123592564_i64, %c748652137_i64 : i64
      %258 = vector.broadcast %cst : f32 to vector<14x3xf32>
      %259 = vector.fma %258, %258, %258 : vector<14x3xf32>
      %260 = scf.while (%arg5 = %alloc_7) : (memref<14x3xf32>) -> memref<14x3xf32> {
        %273 = index.casts %extracted_38 : i32 to index
        %274 = index.sizeof
        %275 = math.expm1 %cst_1 : f32
        %276 = vector.maskedload %alloc_20[], %68, %69 : memref<i32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
        %277 = math.ctpop %c1690777272_i32 : i32
        %278 = arith.remf %cst_22, %167 : f16
        %279 = arith.addi %false_0, %false : i1
        %280 = math.sqrt %0 : tensor<14x3xf16>
        scf.condition(%false_2) %alloc_7 : memref<14x3xf32>
      } do {
      ^bb0(%arg5: memref<14x3xf32>):
        %273 = math.tan %11 : tensor<4x3x4xf32>
        %274 = math.rsqrt %252 : tensor<4x3x4xf16>
        %275 = math.ctlz %1 : tensor<4xi32>
        %276 = vector.load %alloc_14[%c7, %c1] : memref<14x3xi1>, vector<4x3x4xi1>
        %277 = memref.atomic_rmw assign %cst_22, %222[%c0, %c1, %c0] : (f16, memref<4x3x4xf16>) -> f16
        %278 = arith.minui %179, %false_2 : i1
        %279 = index.ceildivu %rank, %c9
        %280 = vector.multi_reduction <mul>, %19, %c31641_i16 [0] : vector<14xi16> to i16
        %281 = vector.broadcast %false_36 : i1 to vector<4x3xi1>
        %dest_48, %accumulated_value_49 = vector.scan <and>, %276, %281 {inclusive = true, reduction_dim = 2 : i64} : vector<4x3x4xi1>, vector<4x3xi1>
        %282 = bufferization.to_memref %cast : memref<?x?xi32>
        %283 = index.divs %158, %62
        %284 = math.rsqrt %5 : tensor<14x3xf16>
        %expanded_50 = tensor.expand_shape %80 [[0, 1]] : tensor<4xi1> into tensor<4x1xi1>
        %285 = arith.ceildivsi %c1123592564_i64, %c2143169797_i64 : i64
        %alloca_51 = memref.alloca() : memref<4x3x4xi16>
        %alloca_52 = memref.alloca() : memref<4xf16>
        scf.yield %alloc_7 : memref<14x3xf32>
      }
      %261 = math.copysign %0, %0 : tensor<14x3xf16>
      %262 = vector.shuffle %127, %241 [0, 4, 5, 8, 9, 10, 12, 13] : vector<1xf16>, vector<14xf16>
      %263 = vector.extract_strided_slice %145 {offsets = [4], sizes = [1], strides = [1]} : vector<9xi64> to vector<1xi64>
      %alloc_46 = memref.alloc() : memref<14x3xi1>
      %alloc_47 = memref.alloc() : memref<4x4xf16>
      %264 = tensor.empty() : tensor<3xf16>
      %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_47, %264, %alloc_47 : memref<4x4xf16>, tensor<3xf16>, memref<4x4xf16>) outs(%251 : tensor<4x3x4xf16>) {
      ^bb0(%in: f16, %in_48: f16, %in_49: f16, %out: f16):
        %273 = math.expm1 %in : f16
        %274 = math.ctlz %c-27964_i16 : i16
        %275 = index.sizeof
        %276 = index.sizeof
        %277 = math.absf %15 : tensor<14x3xf16>
        %278 = index.mul %45, %146
        %279 = arith.minf %in_49, %out : f16
        %280 = memref.atomic_rmw maxu %c171434000_i64, %alloc_4[%c3, %c1] : (i64, memref<14x3xi64>) -> i64
        %281 = tensor.empty() : tensor<3x4xi32>
        %282 = tensor.empty() : tensor<14x4xi32>
        %283 = linalg.matmul ins(%16, %281 : tensor<14x3xi32>, tensor<3x4xi32>) outs(%282 : tensor<14x4xi32>) -> tensor<14x4xi32>
        %284 = arith.maxsi %c-15060_i16, %c-27964_i16 : i16
        %285 = arith.addf %cst_22, %out : f16
        affine.store %extracted_28, %alloc_5[%c8] : memref<4xf16>
        %286 = arith.addi %c1123592564_i64, %c1123592564_i64 : i64
        %287 = arith.xori %extracted, %c496720484_i32 : i32
        %expanded_50 = tensor.expand_shape %80 [[0, 1]] : tensor<4xi1> into tensor<4x1xi1>
        %288 = arith.remf %extracted_28, %out : f16
        %289 = memref.atomic_rmw muli %c1123592564_i64, %223[%c7, %c1] : (i64, memref<14x3xi64>) -> i64
        %alloca_51 = memref.alloca() : memref<4xf16>
        %290 = vector.reduction <maxui>, %68 : vector<4xi1> into i1
        %291 = arith.shli %c31641_i16, %c-27964_i16 : i16
        %292 = vector.broadcast %cst_1 : f32 to vector<14xf32>
        %dest_52, %accumulated_value_53 = vector.scan <add>, %259, %292 {inclusive = false, reduction_dim = 1 : i64} : vector<14x3xf32>, vector<14xf32>
        %293 = math.ctpop %3 : tensor<14x3xi1>
        %294 = tensor.empty() : tensor<14x3xi1>
        %295 = index.casts %c3 : index to i32
        %296 = math.absf %cst_1 : f32
        %297 = vector.extract_strided_slice %241 {offsets = [1], sizes = [9], strides = [1]} : vector<14xf16> to vector<9xf16>
        %298 = index.sizeof
        %from_elements_54 = tensor.from_elements %c496720484_i32, %c496720484_i32, %extracted, %extracted : tensor<4xi32>
        %cst_55 = arith.constant 1.85074893E+9 : f32
        %299 = affine.min affine_map<(d0, d1) -> (d0 mod 2, d0 mod 2, d0)>(%c10, %c8)
        %300 = vector.transpose %70, [0] : vector<4xf16> to vector<4xf16>
        %from_elements_56 = tensor.from_elements %extracted_28, %197, %extracted_28, %in : tensor<4xf16>
        linalg.yield %in_49 : f16
      } -> tensor<4x3x4xf16>
      %266 = bufferization.to_tensor %alloc_12 : memref<4x3x4xi1>
      %267 = vector.broadcast %197 : f16 to vector<9xf16>
      %268 = vector.maskedload %alloc_21[%c0], %144, %267 : memref<4xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
      %269 = vector.shuffle %268, %268 [0, 1, 4, 6, 7, 8, 12, 13, 15, 17] : vector<9xf16>, vector<9xf16>
      %270 = index.divu %247, %rank_34
      %271 = index.ceildivu %c0, %26
      %272 = index.sizeof
      scf.yield
    }
    %254 = affine.vector_load %alloc_16[%c8] : memref<4xf16>, vector<3xf16>
    affine.vector_store %133, %alloc_25[%26, %87] : memref<14x3xi32>, vector<4xi32>
    vector.print %19 : vector<14xi16>
    vector.print %58 : vector<14xf16>
    vector.print %64 : vector<1xf16>
    vector.print %66 : vector<14x3xi64>
    vector.print %67 : vector<4xi32>
    vector.print %68 : vector<4xi1>
    vector.print %69 : vector<4xi32>
    vector.print %70 : vector<4xf16>
    vector.print %71 : vector<4xf16>
    vector.print %81 : vector<4xi1>
    vector.print %92 : vector<4xi32>
    vector.print %95 : vector<1xf16>
    vector.print %102 : vector<4xi16>
    vector.print %118 : vector<3xi16>
    vector.print %119 : vector<1xf16>
    vector.print %127 : vector<1xf16>
    vector.print %132 : vector<4xi16>
    vector.print %133 : vector<4xi32>
    vector.print %143 : vector<9xi64>
    vector.print %144 : vector<9xi1>
    vector.print %145 : vector<9xi64>
    vector.print %205 : vector<1xi32>
    vector.print %215 : vector<14xf16>
    vector.print %220 : vector<9xi64>
    vector.print %241 : vector<14xf16>
    vector.print %244 : vector<14x3xi16>
    vector.print %254 : vector<3xf16>
    vector.print %cst : f32
    vector.print %c31641_i16 : i16
    vector.print %c171434000_i64 : i64
    vector.print %c-15060_i16 : i16
    vector.print %c748652137_i64 : i64
    vector.print %false : i1
    vector.print %false_0 : i1
    vector.print %cst_1 : f32
    vector.print %false_2 : i1
    vector.print %c-12810_i16 : i16
    vector.print %c1123592564_i64 : i64
    vector.print %c1690777272_i32 : i32
    vector.print %c496720484_i32 : i32
    vector.print %cst_3 : f32
    vector.print %c-27964_i16 : i16
    vector.print %c2143169797_i64 : i64
    vector.print %cst_22 : f16
    vector.print %extracted : i32
    vector.print %extracted_28 : f16
    vector.print %139 : i16
    vector.print %167 : f16
    vector.print %179 : i1
    vector.print %197 : f16
    vector.print %false_36 : i1
    vector.print %extracted_38 : i32
    return %1 : tensor<4xi32>
  }
}
