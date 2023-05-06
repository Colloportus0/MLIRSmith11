module {
  func.func @func1(%arg0: memref<4xi16>) -> tensor<4xi64> {
    %c13047_i16 = arith.constant 13047 : i16
    %cst = arith.constant 1.067200e+04 : f16
    %c1745170826_i64 = arith.constant 1745170826 : i64
    %c1600468613_i32 = arith.constant 1600468613 : i32
    %cst_0 = arith.constant 4.595200e+04 : f16
    %c1489009748_i32 = arith.constant 1489009748 : i32
    %false = arith.constant false
    %c540632740_i32 = arith.constant 540632740 : i32
    %true = arith.constant true
    %cst_1 = arith.constant 1.16790336E+9 : f32
    %true_2 = arith.constant true
    %cst_3 = arith.constant 4.854400e+04 : f16
    %c913_i16 = arith.constant 913 : i16
    %c418092245_i32 = arith.constant 418092245 : i32
    %c361752391_i64 = arith.constant 361752391 : i64
    %cst_4 = arith.constant 0x4D3A6A0B : f32
    %0 = tensor.empty() : tensor<2x11x11xf32>
    %1 = tensor.empty() : tensor<2x11xf16>
    %2 = tensor.empty() : tensor<4xi64>
    %3 = tensor.empty() : tensor<4xf16>
    %4 = tensor.empty() : tensor<4xi16>
    %5 = tensor.empty() : tensor<4xf16>
    %6 = tensor.empty() : tensor<4xi64>
    %7 = tensor.empty() : tensor<2x11x11xi64>
    %8 = tensor.empty() : tensor<2x11xi1>
    %9 = tensor.empty() : tensor<4xi16>
    %10 = tensor.empty() : tensor<4xf32>
    %11 = tensor.empty() : tensor<2x11x11xi64>
    %12 = tensor.empty() : tensor<4xf16>
    %13 = tensor.empty() : tensor<4xi16>
    %14 = tensor.empty() : tensor<2x11xf16>
    %15 = tensor.empty() : tensor<2x11xi32>
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
    %alloc = memref.alloc() : memref<2x11xi32>
    %alloc_5 = memref.alloc() : memref<2x11x11xi32>
    %alloc_6 = memref.alloc() : memref<2x11xf16>
    %alloc_7 = memref.alloc() : memref<4xi64>
    %alloc_8 = memref.alloc() : memref<4xf32>
    %alloc_9 = memref.alloc() : memref<2x11x11xi16>
    %alloc_10 = memref.alloc() : memref<2x11x11xi16>
    %alloc_11 = memref.alloc() : memref<4xi64>
    %alloc_12 = memref.alloc() : memref<2x11xf16>
    %alloc_13 = memref.alloc() : memref<2x11xi64>
    %alloc_14 = memref.alloc() : memref<2x11x11xi16>
    %alloc_15 = memref.alloc() : memref<4xi32>
    %alloc_16 = memref.alloc() : memref<2x11xf16>
    %alloc_17 = memref.alloc() : memref<2x11x11xi64>
    %alloc_18 = memref.alloc() : memref<2x11xi32>
    %alloc_19 = memref.alloc() : memref<4xf16>
    %16 = tensor.empty() : tensor<2x11x11xf32>
    %17 = linalg.copy ins(%0 : tensor<2x11x11xf32>) outs(%16 : tensor<2x11x11xf32>) -> tensor<2x11x11xf32>
    %18 = tensor.empty() : tensor<11x2xi32>
    %transposed = linalg.transpose ins(%alloc_18 : memref<2x11xi32>) outs(%18 : tensor<11x2xi32>) permutation = [1, 0] 
    %alloc_20 = memref.alloc() : memref<f16>
    linalg.reduce ins(%14 : tensor<2x11xf16>) outs(%alloc_20 : memref<f16>) dimensions = [0, 1] 
      (%in: f16, %init: f16) {
        %255 = arith.mulf %cst_3, %cst_3 : f16
        %256 = vector.broadcast %false : i1 to vector<1xi1>
        %257 = vector.multi_reduction <mul>, %256, %true [0] : vector<1xi1> to i1
        %258 = vector.transpose %256, [0] : vector<1xi1> to vector<1xi1>
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %259 = vector.transfer_read %13[%c4], %c0_i16 : tensor<4xi16>, vector<i16>
        %260 = index.sizeof
        %261 = memref.realloc %alloc_19 : memref<4xf16> to memref<4xf16>
        %262 = math.atan2 %16, %0 : tensor<2x11x11xf32>
        %263 = arith.remsi %c418092245_i32, %c540632740_i32 : i32
        %cst_53 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_53 : f16
      }
    scf.parallel (%arg1, %arg2) = (%c11, %c5) to (%c1, %c12) step (%c7, %c1) {
      %255 = tensor.empty() : tensor<4xi16>
      %256 = affine.apply affine_map<(d0, d1) -> (-d0)>(%c8, %c14)
      %257 = math.roundeven %cst_4 : f32
      %258 = math.log2 %1 : tensor<2x11xf16>
      %259 = index.mul %c3, %c5
      %260 = vector.broadcast %cst_3 : f16 to vector<2x11xf16>
      %261 = vector.transpose %260, [0, 1] : vector<2x11xf16> to vector<2x11xf16>
      %262 = index.ceildivs %arg1, %arg1
      %263 = vector.broadcast %cst : f16 to vector<f16>
      %264 = vector.transfer_write %263, %12[%c9] : vector<f16>, tensor<4xf16>
      %265 = vector.splat %cst_0 : vector<4xf16>
      %266 = vector.multi_reduction <maxf>, %260, %260 [] : vector<2x11xf16> to vector<2x11xf16>
      %267 = index.divs %c9, %c3
      %268 = vector.load %alloc_11[%c1] : memref<4xi64>, vector<2x11xi64>
      %269 = arith.maxf %cst_4, %cst_4 : f32
      %c839592654_i32 = arith.constant 839592654 : i32
      %cast_53 = tensor.cast %3 : tensor<4xf16> to tensor<?xf16>
      %270 = vector.broadcast %c361752391_i64 : i64 to vector<2xi64>
      %271 = vector.matrix_multiply %270, %270 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi64>, vector<2xi64>) -> vector<1xi64>
      scf.yield
    }
    %19 = affine.vector_load %alloc_8[%c12] : memref<4xf32>, vector<4xf32>
    affine.vector_store %19, %alloc_8[%c3] : memref<4xf32>, vector<4xf32>
    %alloc_21 = memref.alloc() : memref<4xf16>
    %20 = tensor.empty() : tensor<f16>
    %21 = linalg.dot ins(%3, %alloc_21 : tensor<4xf16>, memref<4xf16>) outs(%20 : tensor<f16>) -> tensor<f16>
    %22 = vector.matrix_multiply %19, %19 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
    %23 = arith.remsi %c1600468613_i32, %c1600468613_i32 : i32
    %24 = vector.load %alloc_17[%c0, %c2, %c0] : memref<2x11x11xi64>, vector<2x11x11xi64>
    %25 = arith.minui %c361752391_i64, %c361752391_i64 : i64
    %26 = math.round %10 : tensor<4xf32>
    %27 = math.sqrt %0 : tensor<2x11x11xf32>
    %true_22 = index.bool.constant true
    %cst_23 = arith.constant 1.000000e+00 : f16
    %28 = vector.transfer_read %1[%c12, %c15], %cst_23 : tensor<2x11xf16>, vector<f16>
    %29 = vector.splat %c1600468613_i32 : vector<4xi32>
    %30 = index.casts %c7 : index to i32
    %31 = math.round %5 : tensor<4xf16>
    memref.alloca_scope  {
      %false_53 = index.bool.constant false
      %255 = tensor.empty() : tensor<2x11xi64>
      %256 = math.cos %5 : tensor<4xf16>
      %257 = math.ipowi %c361752391_i64, %c1745170826_i64 : i64
      %258 = vector.reduction <add>, %22 : vector<1xf32> into f32
      %expanded_54 = tensor.expand_shape %transposed [[0], [1, 2]] : tensor<11x2xi32> into tensor<11x2x1xi32>
      %259 = index.divs %c14, %c2
      %260 = math.rsqrt %cst_3 : f16
      %261 = affine.apply affine_map<(d0, d1) -> (-d0)>(%c13, %c3)
      %262 = index.add %c2, %c4
      scf.if %false_53 {
        %285 = math.ctpop %6 : tensor<4xi64>
        %286 = vector.broadcast %c1745170826_i64 : i64 to vector<11xi64>
        %287 = vector.broadcast %true_2 : i1 to vector<11xi1>
        %288 = vector.maskedload %alloc_17[%c0, %c3, %c0], %287, %286 : memref<2x11x11xi64>, vector<11xi1>, vector<11xi64> into vector<11xi64>
        bufferization.dealloc_tensor %12 : tensor<4xf16>
        %289 = vector.multi_reduction <minui>, %288, %288 [] : vector<11xi64> to vector<11xi64>
        %290 = memref.atomic_rmw muli %c1745170826_i64, %alloc_7[%c2] : (i64, memref<4xi64>) -> i64
        %291 = vector.flat_transpose %287 {columns = 11 : i32, rows = 1 : i32} : vector<11xi1> -> vector<11xi1>
        %292 = arith.divf %cst_0, %cst : f16
        %293 = vector.broadcast %c361752391_i64 : i64 to vector<i64>
        vector.transfer_write %293, %alloc_7[%c4] : vector<i64>, memref<4xi64>
      } else {
        %285 = math.sqrt %cst_4 : f32
        %cast_57 = tensor.cast %3 : tensor<4xf16> to tensor<?xf16>
        %from_elements_58 = tensor.from_elements %c1745170826_i64, %c1745170826_i64, %c361752391_i64, %c1745170826_i64, %c1745170826_i64, %c1745170826_i64, %c361752391_i64, %c1745170826_i64, %c1745170826_i64, %c361752391_i64, %c361752391_i64, %c361752391_i64, %c361752391_i64, %c1745170826_i64, %c361752391_i64, %c361752391_i64, %c361752391_i64, %c1745170826_i64, %c1745170826_i64, %c361752391_i64, %c361752391_i64, %c1745170826_i64 : tensor<2x11xi64>
        %286 = math.round %12 : tensor<4xf16>
        %287 = arith.mulf %cst_23, %cst_23 : f16
        %288 = math.ctlz %11 : tensor<2x11x11xi64>
        %289 = index.sub %c6, %c4
        %290 = vector.broadcast %cst_3 : f16 to vector<4xf16>
        %291 = vector.broadcast %true_2 : i1 to vector<4xi1>
        %292 = vector.maskedload %alloc_12[%c1, %c5], %291, %290 : memref<2x11xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
      }
      scf.if %true_2 {
        %285 = vector.broadcast %c1745170826_i64 : i64 to vector<2x11xi64>
        %dest_57, %accumulated_value_58 = vector.scan <maxui>, %24, %285 {inclusive = false, reduction_dim = 1 : i64} : vector<2x11x11xi64>, vector<2x11xi64>
        %inserted_59 = tensor.insert %c1745170826_i64 into %2[%c3] : tensor<4xi64>
        %286 = math.absi %9 : tensor<4xi16>
        memref.store %c361752391_i64, %alloc_17[%c1, %c10, %c7] : memref<2x11x11xi64>
        %287 = math.rsqrt %10 : tensor<4xf32>
        %288 = index.maxs %c4, %c1
        %289 = vector.broadcast %c13047_i16 : i16 to vector<4xi16>
        %290 = vector.broadcast %true_2 : i1 to vector<4xi1>
        %291 = vector.maskedload %alloc_9[%c1, %c5, %c0], %290, %289 : memref<2x11x11xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
        %292 = index.divs %c0, %c0
      }
      %263 = index.ceildivs %c9, %c7
      %264 = affine.for %arg1 = 0 to 5 iter_args(%arg2 = %true_2) -> (i1) {
        affine.yield %true : i1
      }
      %265 = arith.addi %true_22, %true_22 : i1
      %266 = arith.remf %cst_23, %cst_0 : f16
      %267 = tensor.empty() : tensor<2x11x11xi16>
      %268 = arith.minf %cst, %cst_3 : f16
      %269 = math.round %0 : tensor<2x11x11xf32>
      %from_elements_55 = tensor.from_elements %cst_3, %cst_0, %cst_23, %cst, %cst_23, %cst_0, %cst_0, %cst_23, %cst_0, %cst_23, %cst, %cst_23, %cst_3, %cst_0, %cst_23, %cst_0, %cst_23, %cst_23, %cst_3, %cst_23, %cst_23, %cst_0 : tensor<2x11xf16>
      %270 = index.maxu %259, %c12
      %271 = vector.broadcast %cst : f16 to vector<2xf16>
      %272 = vector.broadcast %false_53 : i1 to vector<2xi1>
      %273 = vector.maskedload %alloc_6[%c1, %c3], %272, %271 : memref<2x11xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
      %extracted_56 = tensor.extract %20[] : tensor<f16>
      %274 = math.round %3 : tensor<4xf16>
      %275 = math.log2 %0 : tensor<2x11x11xf32>
      %276 = vector.broadcast %c1600468613_i32 : i32 to vector<12xi32>
      %277 = vector.broadcast %true_22 : i1 to vector<12xi1>
      %278 = vector.maskedload %alloc_5[%c0, %c7, %c0], %277, %276 : memref<2x11x11xi32>, vector<12xi1>, vector<12xi32> into vector<12xi32>
      %279 = arith.remsi %c540632740_i32, %c1489009748_i32 : i32
      %280 = math.round %17 : tensor<2x11x11xf32>
      %281 = arith.remui %c418092245_i32, %c1489009748_i32 : i32
      %282 = memref.atomic_rmw addf %cst_4, %alloc_8[%c0] : (f32, memref<4xf32>) -> f32
      %283 = bufferization.to_memref %255 : memref<2x11xi64>
      %284 = vector.broadcast %c1745170826_i64 : i64 to vector<i64>
      vector.transfer_write %284, %alloc_11[%c6] : vector<i64>, memref<4xi64>
    }
    %32 = arith.maxsi %c361752391_i64, %c361752391_i64 : i64
    %33 = arith.andi %true_22, %true_2 : i1
    %34 = arith.addf %cst_1, %cst_1 : f32
    %35 = math.rsqrt %cst_3 : f16
    %36 = vector.reduction <add>, %22 : vector<1xf32> into f32
    %37 = memref.atomic_rmw minf %cst_4, %alloc_8[%c2] : (f32, memref<4xf32>) -> f32
    %38 = arith.remf %cst_4, %cst_1 : f32
    %39 = affine.for %arg1 = 0 to 59 iter_args(%arg2 = %cst_3) -> (f16) {
      affine.yield %cst_0 : f16
    }
    %40 = math.sqrt %0 : tensor<2x11x11xf32>
    %41 = vector.transpose %19, [0] : vector<4xf32> to vector<4xf32>
    %42 = math.ctlz %7 : tensor<2x11x11xi64>
    %43 = vector.broadcast %c913_i16 : i16 to vector<i16>
    %44 = vector.transfer_write %43, %13[%c11] : vector<i16>, tensor<4xi16>
    %45 = index.ceildivs %c15, %c10
    %46 = math.ipowi %6, %2 : tensor<4xi64>
    %47 = math.log1p %1 : tensor<2x11xf16>
    %48 = vector.bitcast %24 : vector<2x11x11xi64> to vector<2x11x11xi64>
    %49 = math.roundeven %10 : tensor<4xf32>
    %50 = arith.remf %cst_1, %cst_1 : f32
    %expanded = tensor.expand_shape %12 [[0, 1]] : tensor<4xf16> into tensor<4x1xf16>
    %51 = index.ceildivs %c3, %c12
    %52 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 floordiv 128 - 64, d3 mod 4 + 16, d3 mod 4 + 128)>(%c8, %c14, %c1, %c5)
    %53 = vector.bitcast %19 : vector<4xf32> to vector<4xf32>
    %54 = arith.remsi %true, %true : i1
    %55 = arith.remsi %c913_i16, %c913_i16 : i16
    %56 = arith.shrui %c418092245_i32, %c418092245_i32 : i32
    %57 = index.divs %c5, %c0
    %58 = scf.while (%arg1 = %alloc_17) : (memref<2x11x11xi64>) -> memref<2x11x11xi64> {
      %255 = math.fma %5, %3, %3 : tensor<4xf16>
      %256 = memref.realloc %alloc_15 : memref<4xi32> to memref<11xi32>
      %257 = math.ctpop %13 : tensor<4xi16>
      %258 = math.log10 %cst_3 : f16
      %259 = vector.broadcast %c540632740_i32 : i32 to vector<2x11xi32>
      %260 = memref.realloc %alloc_11 : memref<4xi64> to memref<2xi64>
      %261 = vector.flat_transpose %19 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
      %c0_i32 = arith.constant 0 : i32
      %c0_i32_53 = arith.constant 0 : i32
      %262 = vector.transfer_read %18[%c6, %c13], %c0_i32_53 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<11x2xi32>, vector<4xi32>
      scf.condition(%true_2) %alloc_17 : memref<2x11x11xi64>
    } do {
    ^bb0(%arg1: memref<2x11x11xi64>):
      %cast_53 = tensor.cast %7 : tensor<2x11x11xi64> to tensor<?x?x?xi64>
      %255 = vector.broadcast %c1745170826_i64 : i64 to vector<2x11xi64>
      %dest_54, %accumulated_value_55 = vector.scan <maxsi>, %48, %255 {inclusive = false, reduction_dim = 2 : i64} : vector<2x11x11xi64>, vector<2x11xi64>
      %256 = arith.minf %cst_1, %cst_1 : f32
      %257 = math.powf %1, %1 : tensor<2x11xf16>
      %258 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %53, %53, %cst_4 : vector<4xf32>, vector<4xf32> into f32
      %259 = math.tanh %10 : tensor<4xf32>
      %260 = vector.load %alloc_18[%c1, %c9] : memref<2x11xi32>, vector<2x11x11xi32>
      %261 = index.maxu %c6, %c12
      %262 = vector.load %alloc_5[%c1, %c2, %c6] : memref<2x11x11xi32>, vector<4xi32>
      %263 = scf.while (%arg2 = %alloc_9) : (memref<2x11x11xi16>) -> memref<2x11x11xi16> {
        %from_elements_56 = tensor.from_elements %cst_1, %cst_1, %cst_1, %cst_4, %cst_1, %cst_1, %cst_1, %cst_1, %cst_4, %cst_4, %cst_1, %cst_4, %cst_1, %cst_1, %cst_1, %cst_4, %cst_1, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_1, %cst_4, %cst_4, %cst_1, %cst_4, %cst_4, %cst_1, %cst_1, %cst_1, %cst_4, %cst_1, %cst_4, %cst_1, %cst_1, %cst_1, %cst_4, %cst_4, %cst_4, %cst_1, %cst_1, %cst_1, %cst_4, %cst_1, %cst_4, %cst_4, %cst_1, %cst_4, %cst_4, %cst_1, %cst_4, %cst_4, %cst_1, %cst_1, %cst_4, %cst_4, %cst_4, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_4, %cst_4, %cst_1, %cst_4, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_4, %cst_4, %cst_1, %cst_4, %cst_4, %cst_1, %cst_1, %cst_1, %cst_4, %cst_4, %cst_1, %cst_1, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_1, %cst_4, %cst_1, %cst_4, %cst_1, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_1, %cst_4, %cst_1, %cst_1, %cst_1, %cst_1, %cst_4, %cst_1, %cst_4, %cst_4, %cst_4, %cst_4, %cst_1, %cst_4, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_4, %cst_4, %cst_4, %cst_1, %cst_4, %cst_4, %cst_1, %cst_1, %cst_4, %cst_4, %cst_4, %cst_1, %cst_4, %cst_4, %cst_4, %cst_1, %cst_1, %cst_1, %cst_1, %cst_4, %cst_1, %cst_1, %cst_1, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_1, %cst_1, %cst_4, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_4, %cst_4, %cst_4, %cst_1, %cst_1, %cst_1, %cst_4, %cst_1, %cst_1, %cst_4, %cst_1, %cst_4, %cst_1, %cst_4, %cst_4, %cst_1, %cst_1, %cst_1, %cst_4, %cst_4, %cst_4, %cst_1, %cst_4, %cst_1, %cst_1, %cst_4, %cst_1, %cst_1, %cst_4, %cst_4, %cst_4, %cst_4, %cst_1, %cst_4, %cst_1, %cst_1, %cst_4, %cst_1, %cst_1, %cst_4, %cst_1, %cst_1, %cst_4, %cst_1, %cst_4, %cst_4, %cst_4, %cst_1, %cst_4, %cst_1, %cst_4, %cst_4, %cst_4, %cst_1, %cst_4, %cst_1, %cst_4, %cst_1, %cst_1, %cst_4, %cst_1, %cst_4, %cst_4, %cst_4, %cst_1, %cst_1, %cst_1, %cst_4, %cst_4, %cst_1, %cst_1, %cst_1, %cst_4, %cst_1, %cst_4, %cst_1, %cst_4 : tensor<2x11x11xf32>
        %273 = index.castu %c11 : index to i32
        %274 = bufferization.to_memref %expanded : memref<4x1xf16>
        %275 = index.mul %c13, %c7
        %276 = vector.create_mask %c13 : vector<4xi1>
        %277 = index.mul %c15, %c7
        %278 = vector.broadcast %cst_0 : f16 to vector<2x11x11xf16>
        %279 = math.log2 %1 : tensor<2x11xf16>
        scf.condition(%true) %alloc_10 : memref<2x11x11xi16>
      } do {
      ^bb0(%arg2: memref<2x11x11xi16>):
        %273 = bufferization.to_memref %12 : memref<4xf16>
        %274 = math.ctpop %4 : tensor<4xi16>
        %275 = math.log2 %cst : f16
        %276 = math.exp %17 : tensor<2x11x11xf32>
        %277 = math.round %12 : tensor<4xf16>
        %expanded_56 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<2x11xi32> into tensor<2x11x1xi32>
        %true_57 = arith.constant true
        %278 = affine.min affine_map<(d0, d1, d2) -> (d0 * 16384, d0 ceildiv 32, d0 * 128 + d2 - 128)>(%45, %c15, %c6)
        %279 = math.log10 %cst : f16
        %280 = vector.broadcast %cst_4 : f32 to vector<2x11xf32>
        %281 = vector.fma %280, %280, %280 : vector<2x11xf32>
        %282 = vector.multi_reduction <maxf>, %19, %cst_1 [0] : vector<4xf32> to f32
        %283 = vector.splat %c1745170826_i64 : vector<2x11x11xi64>
        %284 = arith.remui %c1745170826_i64, %c1745170826_i64 : i64
        %285 = index.ceildivu %57, %c4
        %286 = memref.load %alloc_9[%c0, %c0, %c1] : memref<2x11x11xi16>
        %287 = arith.ceildivsi %false, %true_22 : i1
        scf.yield %alloc_14 : memref<2x11x11xi16>
      }
      %264 = tensor.empty() : tensor<11xf32>
      %265 = tensor.empty() : tensor<11x11xf32>
      %266 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%264, %265, %16 : tensor<11xf32>, tensor<11x11xf32>, tensor<2x11x11xf32>) outs(%0 : tensor<2x11x11xf32>) {
      ^bb0(%in: f32, %in_56: f32, %in_57: f32, %out: f32):
        %273 = arith.maxf %out, %out : f32
        %274 = index.sub %c4, %c9
        %275 = vector.matrix_multiply %19, %53 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %276 = vector.broadcast %c1745170826_i64 : i64 to vector<11x11xi64>
        %277 = vector.multi_reduction <xor>, %48, %276 [0] : vector<2x11x11xi64> to vector<11x11xi64>
        %278 = tensor.empty() : tensor<4xi32>
        %279 = math.fpowi %5, %278 : tensor<4xf16>, tensor<4xi32>
        %280 = vector.transpose %43, [] : vector<i16> to vector<i16>
        %281 = vector.flat_transpose %262 {columns = 2 : i32, rows = 2 : i32} : vector<4xi32> -> vector<4xi32>
        %282 = arith.maxf %cst_3, %cst_23 : f16
        %283 = vector.matrix_multiply %22, %19 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<1xf32>, vector<4xf32>) -> vector<4xf32>
        %284 = arith.shrui %c540632740_i32, %c418092245_i32 : i32
        %285 = math.roundeven %0 : tensor<2x11x11xf32>
        %286 = index.ceildivs %c9, %c5
        %287 = arith.cmpf ord, %cst_4, %cst_4 : f32
        %288 = bufferization.clone %alloc_9 : memref<2x11x11xi16> to memref<2x11x11xi16>
        %289 = index.divs %c12, %c11
        %290 = math.absi %c1745170826_i64 : i64
        %291 = vector.matrix_multiply %19, %19 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %292 = vector.broadcast %cst : f16 to vector<2xf16>
        vector.transfer_write %292, %alloc_6[%c14, %c7] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<2xf16>, memref<2x11xf16>
        memref.tensor_store %21, %alloc_20 : memref<f16>
        %true_58 = index.bool.constant true
        memref.copy %alloc_19, %alloc_21 : memref<4xf16> to memref<4xf16>
        %293 = arith.muli %c913_i16, %c913_i16 : i16
        %294 = index.ceildivs %c7, %c10
        %295 = vector.load %alloc_20[] : memref<f16>, vector<2x11xf16>
        %296 = vector.flat_transpose %262 {columns = 2 : i32, rows = 2 : i32} : vector<4xi32> -> vector<4xi32>
        %cast_59 = tensor.cast %8 : tensor<2x11xi1> to tensor<?x?xi1>
        %297 = vector.broadcast %c361752391_i64 : i64 to vector<11xi64>
        %298 = vector.broadcast %false : i1 to vector<11xi1>
        %299 = vector.maskedload %arg1[%c0, %c10, %c1], %298, %297 : memref<2x11x11xi64>, vector<11xi1>, vector<11xi64> into vector<11xi64>
        %300 = arith.divf %cst_23, %cst : f16
        %301 = vector.load %alloc[%c1, %c9] : memref<2x11xi32>, vector<4xi32>
        %302 = index.castu %true : i1 to index
        %303 = arith.maxsi %true_58, %true_22 : i1
        %304 = math.ctlz %true_58 : i1
        linalg.yield %out : f32
      } -> tensor<2x11x11xf32>
      %267 = vector.broadcast %c1600468613_i32 : i32 to vector<11xi32>
      %268 = vector.insert %267, %260 [1, 5] : vector<11xi32> into vector<2x11x11xi32>
      %269 = memref.realloc %alloc_8 : memref<4xf32> to memref<12xf32>
      %270 = vector.create_mask %52, %c8 : vector<2x11xi1>
      %271 = index.mul %c7, %c4
      %272 = math.ctpop %6 : tensor<4xi64>
      scf.yield %arg1 : memref<2x11x11xi64>
    }
    %59 = vector.broadcast %false : i1 to vector<2x11x11xi1>
    %60 = index.castu %c361752391_i64 : i64 to index
    %61 = math.floor %1 : tensor<2x11xf16>
    %62 = math.roundeven %cst_1 : f32
    %63 = vector.transpose %53, [0] : vector<4xf32> to vector<4xf32>
    %alloca = memref.alloca() : memref<4xi32>
    memref.assume_alignment %alloc_13, 8 : memref<2x11xi64>
    %64 = vector.broadcast %false : i1 to vector<12xi1>
    %65 = vector.transfer_write %64, %8[%c0, %c9] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<12xi1>, tensor<2x11xi1>
    %66 = arith.subi %false, %true_2 : i1
    %67 = tensor.empty(%c8) : tensor<?xi64>
    %68 = bufferization.to_memref %16 : memref<2x11x11xf32>
    %69 = vector.create_mask %c14, %c4, %51 : vector<2x11x11xi1>
    %70 = scf.execute_region -> index {
      %255 = math.sqrt %1 : tensor<2x11xf16>
      %256 = math.tanh %5 : tensor<4xf16>
      %257 = math.round %cst_4 : f32
      %258 = arith.ori %c361752391_i64, %c361752391_i64 : i64
      %extracted_53 = tensor.extract %16[%c0, %c0, %c2] : tensor<2x11x11xf32>
      %259 = vector.broadcast %c361752391_i64 : i64 to vector<2x11xi64>
      %dest_54, %accumulated_value_55 = vector.scan <mul>, %24, %259 {inclusive = true, reduction_dim = 1 : i64} : vector<2x11x11xi64>, vector<2x11xi64>
      memref.copy %alloc_19, %alloc_21 : memref<4xf16> to memref<4xf16>
      %260 = math.ceil %cst_3 : f16
      %261 = index.sizeof
      %262 = affine.if affine_set<(d0, d1, d2, d3) : (d3 mod 32 >= 0, (d1 + d3) floordiv 8 + 16 >= 0, d1 - 64 == 0)>(%c2, %c2, %c15, %c9) -> i64 {
        %268 = index.maxs %c0, %c7
        %269 = vector.multi_reduction <maxsi>, %48, %c361752391_i64 [0, 1, 2] : vector<2x11x11xi64> to i64
        %270 = index.ceildivs %c5, %52
        %271 = vector.broadcast %true_2 : i1 to vector<11x11xi1>
        %272 = vector.insert %271, %59 [1] : vector<11x11xi1> into vector<2x11x11xi1>
        %273 = index.castu %c361752391_i64 : i64 to index
        %274 = vector.load %alloc_12[%c0, %c2] : memref<2x11xf16>, vector<4xf16>
        memref.copy %alloc_12, %alloc_6 : memref<2x11xf16> to memref<2x11xf16>
        %275 = bufferization.to_memref %4 : memref<4xi16>
        affine.yield %269 : i64
      } else {
        %268 = arith.remf %cst_4, %cst_4 : f32
        %alloc_56 = memref.alloc() : memref<4xi1>
        %269 = math.ctpop %11 : tensor<2x11x11xi64>
        %270 = vector.transpose %64, [0] : vector<12xi1> to vector<12xi1>
        %271 = math.roundeven %cst_4 : f32
        %272 = vector.broadcast %extracted_53 : f32 to vector<2x11x11xf32>
        %273 = vector.fma %272, %272, %272 : vector<2x11x11xf32>
        %274 = math.ctlz %2 : tensor<4xi64>
        %275 = math.ceil %12 : tensor<4xf16>
        affine.yield %c1745170826_i64 : i64
      }
      %263 = vector.load %alloc_12[%c0, %c10] : memref<2x11xf16>, vector<4xf16>
      %264 = math.atan %cst_1 : f32
      %c25351_i16 = arith.constant 25351 : i16
      %265 = math.roundeven %1 : tensor<2x11xf16>
      %266 = math.ceil %16 : tensor<2x11x11xf32>
      %267 = vector.matrix_multiply %64, %64 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
      scf.yield %45 : index
    }
    %71 = vector.broadcast %cst_1 : f32 to vector<2xf32>
    %72 = vector.broadcast %false : i1 to vector<2xi1>
    %73 = vector.maskedload %alloc_8[%c1], %72, %71 : memref<4xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
    memref.assume_alignment %alloc_18, 2 : memref<2x11xi32>
    %74 = math.fma %0, %0, %17 : tensor<2x11x11xf32>
    %75 = vector.shuffle %53, %73 [0, 1, 5] : vector<4xf32>, vector<2xf32>
    %76 = math.rsqrt %cst_1 : f32
    %77 = vector.broadcast %cst_0 : f16 to vector<f16>
    vector.transfer_write %77, %alloc_12[%52, %c15] : vector<f16>, memref<2x11xf16>
    %78 = vector.broadcast %cst_4 : f32 to vector<2x2xf32>
    %79 = vector.outerproduct %73, %71, %78 {kind = #vector.kind<minf>} : vector<2xf32>, vector<2xf32>
    %80 = math.ctlz %false : i1
    %81 = bufferization.to_memref %20 : memref<f16>
    %82 = bufferization.clone %alloc : memref<2x11xi32> to memref<2x11xi32>
    %83 = arith.remf %cst_4, %cst_4 : f32
    %84 = index.sub %60, %c8
    %85 = arith.minsi %true, %true : i1
    %86 = math.log1p %12 : tensor<4xf16>
    %87 = arith.cmpi slt, %c540632740_i32, %c1600468613_i32 : i32
    %88 = arith.muli %true_22, %true : i1
    %89 = arith.addf %cst_23, %cst_3 : f16
    %90 = math.powf %20, %21 : tensor<f16>
    %91 = math.round %1 : tensor<2x11xf16>
    %rank = tensor.rank %16 : tensor<2x11x11xf32>
    %92 = arith.cmpi ne, %c13047_i16, %c913_i16 : i16
    %alloc_24 = memref.alloc() : memref<11x11xi64>
    %alloc_25 = memref.alloc() : memref<11xi64>
    %93 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_24, %alloc_25, %alloc_25 : memref<11x11xi64>, memref<11xi64>, memref<11xi64>) outs(%7 : tensor<2x11x11xi64>) {
    ^bb0(%in: i64, %in_53: i64, %in_54: i64, %out: i64):
      %255 = index.ceildivs %c14, %c13
      %256 = math.log2 %17 : tensor<2x11x11xf32>
      %257 = affine.apply affine_map<(d0) -> (d0 * 64)>(%c7)
      %258 = math.ceil %1 : tensor<2x11xf16>
      %259 = index.divs %c3, %c4
      %260 = index.divs %60, %57
      %cst_55 = arith.constant 3.092800e+04 : f16
      %cast_56 = tensor.cast %3 : tensor<4xf16> to tensor<?xf16>
      %261 = arith.shrui %true_22, %true : i1
      %262 = affine.if affine_set<(d0, d1, d2, d3) : (d2 mod 2 + 128 >= 0, -(d0 mod 4) == 0, d2 mod 2 == 0)>(%c3, %c13, %c1, %c10) -> memref<2x11xi64> {
        %281 = arith.ceildivsi %in_53, %in_54 : i64
        %282 = arith.remui %c1600468613_i32, %c540632740_i32 : i32
        %splat_60 = tensor.splat %false : tensor<4xi1>
        %283 = vector.load %82[%c1, %c4] : memref<2x11xi32>, vector<4xi32>
        %284 = index.ceildivu %c1, %45
        %285 = index.mul %52, %c12
        %from_elements_61 = tensor.from_elements %cst_1, %cst_4, %cst_1, %cst_1 : tensor<4xf32>
        %286 = vector.flat_transpose %73 {columns = 1 : i32, rows = 2 : i32} : vector<2xf32> -> vector<2xf32>
        affine.yield %alloc_13 : memref<2x11xi64>
      } else {
        %281 = math.ctlz %false : i1
        %282 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 floordiv 32)>(%c4, %c2, %c11, %c7)
        %283 = affine.apply affine_map<(d0) -> (d0 mod 2 - d0)>(%c10)
        %284 = memref.load %alloc_15[%c2] : memref<4xi32>
        %285 = math.round %10 : tensor<4xf32>
        %splat_60 = tensor.splat %cst_3 : tensor<4xf16>
        %286 = affine.min affine_map<(d0) -> (-160, (d0 ceildiv 32) floordiv 16, -4)>(%51)
        %287 = arith.negf %cst : f16
        affine.yield %alloc_13 : memref<2x11xi64>
      }
      %263 = math.sqrt %1 : tensor<2x11xf16>
      %264 = arith.remui %c1745170826_i64, %c361752391_i64 : i64
      %265 = arith.negf %cst_3 : f16
      %266 = vector.broadcast %true_2 : i1 to vector<4xi1>
      %267 = vector.broadcast %c13047_i16 : i16 to vector<4xi16>
      bufferization.dealloc_tensor %4 : tensor<4xi16>
      %false_57 = index.bool.constant false
      %268 = arith.mulf %cst_1, %cst_1 : f32
      %269 = math.tanh %3 : tensor<4xf16>
      %270 = arith.remf %cst_3, %cst : f16
      %271 = affine.apply affine_map<(d0, d1) -> (d1 - 2)>(%c11, %c0)
      %272 = index.sub %c12, %c12
      %273 = arith.cmpi ule, %c418092245_i32, %c1600468613_i32 : i32
      %274 = vector.bitcast %267 : vector<4xi16> to vector<4xi16>
      %275 = arith.addi %c418092245_i32, %c1489009748_i32 : i32
      %276 = index.sub %c5, %60
      %cast_58 = tensor.cast %11 : tensor<2x11x11xi64> to tensor<?x?x?xi64>
      %rank_59 = tensor.rank %4 : tensor<4xi16>
      %277 = affine.apply affine_map<(d0, d1) -> (d1 + d1 - 1 - 30)>(%51, %c10)
      %278 = vector.load %alloc_16[%c1, %c9] : memref<2x11xf16>, vector<4xf16>
      %279 = math.log2 %1 : tensor<2x11xf16>
      %280 = memref.atomic_rmw assign %c13047_i16, %alloc_9[%c0, %c8, %c0] : (i16, memref<2x11x11xi16>) -> i16
      linalg.yield %c361752391_i64 : i64
    } -> tensor<2x11x11xi64>
    %94 = vector.broadcast %c1745170826_i64 : i64 to vector<4xi64>
    %95 = vector.broadcast %true : i1 to vector<4xi1>
    %96 = vector.maskedload %alloc_13[%c1, %c7], %95, %94 : memref<2x11xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
    %97 = vector.insertelement %cst_4, %22[%c7 : index] : vector<1xf32>
    %98 = arith.remsi %true_2, %false : i1
    %true_26 = index.bool.constant true
    %99 = math.exp %20 : tensor<f16>
    %100 = math.atan %17 : tensor<2x11x11xf32>
    %true_27 = index.bool.constant true
    %alloca_28 = memref.alloca() : memref<4xi16>
    %101 = arith.divf %cst_4, %cst_4 : f32
    %102 = tensor.empty() : tensor<11x11xi64>
    %103 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%11, %102 : tensor<2x11x11xi64>, tensor<11x11xi64>) outs(%11 : tensor<2x11x11xi64>) {
    ^bb0(%in: i64, %in_53: i64, %out: i64):
      %255 = vector.matrix_multiply %72, %64 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 6 : i32} : (vector<2xi1>, vector<12xi1>) -> vector<6xi1>
      %256 = math.tanh %12 : tensor<4xf16>
      %257 = bufferization.to_tensor %alloc_14 : memref<2x11x11xi16>
      %258 = arith.negf %cst_3 : f16
      %from_elements_54 = tensor.from_elements %cst_0, %cst_23, %cst_23, %cst_23 : tensor<4xf16>
      %259 = math.round %cst_4 : f32
      %260 = arith.mulf %cst, %cst_23 : f16
      %261 = arith.addf %cst_4, %cst_1 : f32
      %262 = arith.mulf %cst_1, %cst_1 : f32
      %263 = vector.broadcast %c13047_i16 : i16 to vector<i16>
      %264 = vector.transfer_write %263, %13[%c13] : vector<i16>, tensor<4xi16>
      %265 = math.log %10 : tensor<4xf32>
      %266 = vector.broadcast %cst_4 : f32 to vector<4xf32>
      %267 = vector.fma %266, %266, %53 : vector<4xf32>
      %268 = bufferization.clone %alloc_7 : memref<4xi64> to memref<4xi64>
      %269 = arith.minf %cst_1, %cst_4 : f32
      %270 = index.maxs %c4, %c9
      scf.execute_region {
        %286 = math.atan %20 : tensor<f16>
        %287 = arith.muli %c540632740_i32, %c540632740_i32 : i32
        %from_elements_56 = tensor.from_elements %true_27, %true_22, %true_22, %true, %true_26, %true, %true_2, %true_26, %false, %false, %true, %false, %true_26, %true_22, %false, %true_27, %true_22, %true_27, %true_22, %true_22, %true, %true_27, %true_22, %true_22, %true, %true_22, %true, %true_2, %true_26, %false, %true_26, %true_26, %true_2, %true_27, %true_22, %true_27, %true_22, %true_27, %true_27, %true_2, %true_2, %true_22, %true_22, %true_2, %false, %true_26, %false, %false, %true, %true, %true_27, %false, %true_2, %true_22, %true_26, %true_2, %true_27, %true, %false, %true_26, %true_22, %true, %true_22, %true_27, %false, %true_26, %true, %true, %true_2, %true_22, %true, %true, %true_2, %true_22, %true_22, %true_22, %true_22, %true_2, %true_2, %true, %true, %true_27, %true_26, %true_26, %true_2, %true, %true_22, %true_27, %true, %true_2, %true, %true, %false, %true_26, %true_26, %true, %true_27, %true_22, %true_22, %true_2, %true_26, %true_2, %true_2, %true_27, %true_26, %true_22, %true_27, %true_22, %true_22, %true_2, %true_2, %true_26, %true, %true_26, %true, %false, %true_2, %true_27, %true, %true_22, %false, %true_22, %true_22, %true, %true_22, %true, %false, %true_26, %true, %true_27, %false, %true_2, %true_2, %true_2, %true_27, %true, %true_2, %false, %true, %false, %true_22, %true_2, %true, %true, %true_2, %true_26, %true_2, %true_22, %true_22, %false, %true_27, %true, %true_27, %true, %true_26, %true, %false, %true_27, %true_26, %true_22, %true_22, %true, %true_2, %true_27, %true, %true_22, %false, %true_2, %true_22, %false, %false, %true, %true_27, %false, %true_2, %true_22, %true_27, %true_26, %true_2, %true_2, %true_22, %true_27, %true_27, %false, %false, %true_27, %true_2, %true_27, %false, %false, %true_2, %true_2, %true_26, %true_2, %true_22, %true_22, %true_22, %true_26, %false, %false, %true, %true_27, %false, %true_2, %true, %true, %true_27, %false, %true, %true_26, %false, %false, %true_27, %true_22, %true_27, %false, %false, %true_22, %true_26, %true, %true_22, %true_2, %true_2, %true_22, %true_2, %true_22, %true_27, %true_27, %true, %true_26, %true_22, %true_22, %false, %true_26, %true_2, %true_27, %true_22, %true_26, %true_27, %true_27, %true, %true_27 : tensor<2x11x11xi1>
        %288 = index.add %52, %270
        %cast_57 = tensor.cast %21 : tensor<f16> to tensor<f16>
        %289 = vector.broadcast %in : i64 to vector<2xi64>
        %290 = vector.maskedload %alloc_11[%c1], %72, %289 : memref<4xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
        %291 = bufferization.to_tensor %alloc_13 : memref<2x11xi64>
        %292 = vector.broadcast %in : i64 to vector<11x11xi64>
        %dest_58, %accumulated_value_59 = vector.scan <and>, %24, %292 {inclusive = false, reduction_dim = 0 : i64} : vector<2x11x11xi64>, vector<11x11xi64>
        %293 = math.exp %expanded : tensor<4x1xf16>
        %294 = math.exp %12 : tensor<4xf16>
        %295 = arith.remui %c418092245_i32, %c1600468613_i32 : i32
        %296 = math.sqrt %cst : f16
        %297 = index.sub %70, %52
        %298 = arith.maxsi %c540632740_i32, %c418092245_i32 : i32
        affine.store %cst_3, %alloc_16[%c4, %c3] : memref<2x11xf16>
        %299 = vector.broadcast %out : i64 to vector<2x11xi64>
        %dest_60, %accumulated_value_61 = vector.scan <xor>, %48, %299 {inclusive = true, reduction_dim = 2 : i64} : vector<2x11x11xi64>, vector<2x11xi64>
        scf.yield
      }
      %271 = arith.remui %c13047_i16, %c913_i16 : i16
      %272 = math.log2 %20 : tensor<f16>
      %273 = memref.load %alloc_12[%c1, %c10] : memref<2x11xf16>
      %from_elements_55 = tensor.from_elements %true_26, %true_26, %false, %true, %false, %true_26, %true_27, %true_27, %false, %true_27, %true_2, %true_27, %true, %true_26, %true, %true, %true_2, %true_2, %true, %true_22, %true, %true_2, %false, %true_26, %true_22, %true_26, %false, %true, %true_27, %true_26, %true_27, %true_22, %true_2, %true_27, %false, %true_27, %true_22, %true_27, %true_2, %true_2, %true_27, %true_22, %true_26, %true_26, %true_2, %true, %true, %false, %true_27, %true_2, %true_22, %true_2, %true_27, %true, %true_22, %true_26, %true_22, %true, %false, %true_22, %true_27, %true_27, %true_27, %true_27, %true_26, %true_27, %true_27, %true, %true_22, %true_27, %false, %true_27, %true_26, %true_27, %true_22, %true_26, %false, %true_26, %true_2, %true_2, %true_27, %true_27, %true_27, %true_22, %true_22, %true_22, %true, %true_27, %true_22, %true_26, %true_2, %true, %false, %true_2, %true_27, %true, %true_27, %false, %true_22, %true_27, %false, %false, %true_26, %true_2, %true, %true_26, %true, %true_22, %true_2, %true, %true_22, %true, %true_22, %true_2, %true_2, %true_27, %true_27, %true_2, %true_26, %true, %true_27, %true_26, %true_2, %true_26, %true_26, %false, %true_26, %true, %false, %true_2, %true_22, %true_2, %true, %true_26, %true_22, %true_27, %true, %true_22, %true_26, %true, %true, %true_22, %true_22, %true_26, %true, %true, %true_27, %true_27, %true_22, %true_26, %true_22, %true, %true_2, %true, %true, %true_26, %true_27, %true_22, %true_22, %false, %true_27, %true_27, %false, %true_26, %true_27, %true, %true, %false, %false, %true_22, %true, %true_26, %true_26, %true_27, %true_2, %true, %true_2, %true_22, %false, %true_22, %true_26, %true, %true_22, %false, %true_26, %true_27, %true_26, %true_22, %true_26, %true_22, %true_22, %true_22, %true_22, %true_22, %true_27, %true_26, %false, %true, %true_26, %true_27, %true, %true, %true_2, %false, %true_27, %true_2, %true, %true, %true_22, %true_26, %false, %true, %true_27, %true_26, %true_26, %true_22, %true_2, %true_26, %true_27, %true_27, %false, %true_27, %true_27, %false, %true, %true_27, %true_27, %false, %true_27, %false, %true_26, %true, %true_26, %true_27, %true_2, %true, %true, %true_26, %true_27, %true, %true_26, %true_22 : tensor<2x11x11xi1>
      %274 = arith.minsi %c1489009748_i32, %c540632740_i32 : i32
      %275 = math.absi %false : i1
      %276 = math.ctpop %9 : tensor<4xi16>
      %277 = bufferization.to_memref %3 : memref<4xf16>
      %278 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%7 : tensor<2x11x11xi64>) {
      ^bb0(%out_56: i64):
        %286 = index.ceildivu %c6, %52
        %287 = arith.shrui %out, %out : i64
        %288 = vector.broadcast %c913_i16 : i16 to vector<2x11x11xi16>
        %289 = vector.broadcast %c1600468613_i32 : i32 to vector<2x11x11xi32>
        %290 = vector.gather %13[%c13] [%289], %59, %288 : tensor<4xi16>, vector<2x11x11xi32>, vector<2x11x11xi1>, vector<2x11x11xi16> into vector<2x11x11xi16>
        %291 = bufferization.clone %alloc : memref<2x11xi32> to memref<2x11xi32>
        %292 = arith.shrsi %true, %true_27 : i1
        %alloc_57 = memref.alloc() : memref<2x11x11xi64>
        %293 = vector.flat_transpose %95 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
        %alloca_58 = memref.alloca() : memref<2x11xf32>
        %294 = vector.broadcast %cst_0 : f16 to vector<f16>
        %295 = vector.transfer_write %294, %14[%c5, %57] : vector<f16>, tensor<2x11xf16>
        %splat_59 = tensor.splat %c540632740_i32 : tensor<4xi32>
        %296 = vector.insert %cst_1, %73 [0] : f32 into vector<2xf32>
        %cst_60 = arith.constant 1.000000e+00 : f16
        %297 = vector.transfer_read %alloc_6[%c10, %45], %cst_60 : memref<2x11xf16>, vector<f16>
        %298 = arith.ori %c361752391_i64, %out_56 : i64
        %299 = math.sqrt %21 : tensor<f16>
        %300 = vector.flat_transpose %266 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        %301 = bufferization.clone %alloc_8 : memref<4xf32> to memref<4xf32>
        %cast_61 = tensor.cast %transposed : tensor<11x2xi32> to tensor<?x?xi32>
        %302 = index.sizeof
        memref.copy %277, %alloc_21 : memref<4xf16> to memref<4xf16>
        %splat_62 = tensor.splat %c1745170826_i64 : tensor<4xi64>
        memref.assume_alignment %alloc_18, 1 : memref<2x11xi32>
        %303 = vector.matrix_multiply %255, %64 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<6xi1>, vector<12xi1>) -> vector<2xi1>
        %304 = vector.flat_transpose %22 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
        %305 = vector.broadcast %cst_0 : f16 to vector<f16>
        %306 = vector.transfer_write %305, %5[%c4] : vector<f16>, tensor<4xf16>
        %307 = vector.multi_reduction <minui>, %96, %in_53 [0] : vector<4xi64> to i64
        %308 = vector.reduction <or>, %96 : vector<4xi64> into i64
        %309 = arith.cmpf uno, %cst_3, %cst_23 : f16
        %310 = memref.load %alloc_15[%c0] : memref<4xi32>
        %311 = vector.load %68[%c0, %c8, %c8] : memref<2x11x11xf32>, vector<4xf32>
        %312 = vector.shuffle %293, %293 [0, 1, 2, 6] : vector<4xi1>, vector<4xi1>
        %313 = bufferization.clone %301 : memref<4xf32> to memref<4xf32>
        %from_elements_63 = tensor.from_elements %true_27, %true, %true, %false, %true_22, %true_22, %true_27, %false, %true_22, %false, %true, %true_22, %true_2, %true_27, %true_27, %true_2, %true_2, %false, %true_27, %true, %true_26, %true_26, %true_26, %false, %true_26, %true_26, %true_26, %true_2, %true_22, %true_2, %true_22, %true_27, %true_2, %true_27, %true_26, %true, %true_27, %true_22, %true_26, %false, %true_2, %true_27, %false, %true_26, %false, %true_2, %true_27, %true_22, %true_27, %true_2, %true_22, %true, %true_26, %true, %true_22, %false, %true_27, %true_22, %true_27, %true_2, %true_26, %true, %true_26, %true_22, %true_22, %true_2, %true_26, %true_2, %true_22, %true_27, %true_2, %true_26, %true_26, %true_22, %true_27, %true_22, %true_26, %true_2, %true_27, %true, %true_22, %false, %false, %true_27, %true_22, %true_22, %true_26, %true_22, %true_27, %true_2, %true_2, %true_22, %true_2, %true_26, %true_27, %false, %true_2, %true_22, %true_22, %true_27, %true_26, %true_26, %true_2, %true, %true_26, %true_27, %true_22, %false, %true, %true, %true, %true_26, %true_27, %true, %true_22, %true, %true_26, %false, %true_22, %true_22, %true, %true, %false, %true_26, %true, %true_22, %true_27, %true_27, %true_2, %true_22, %true_26, %true_2, %true_2, %true, %true_22, %true, %true_22, %true, %true_26, %true_26, %false, %true_26, %false, %true_2, %true_2, %true, %true_26, %true_26, %false, %true_2, %false, %false, %true, %true_2, %false, %true_22, %true_22, %false, %true_2, %true_27, %true_2, %true_27, %true_22, %true_27, %true_27, %true_22, %true, %true, %false, %true_2, %true_27, %true_27, %true, %true_27, %true_26, %false, %true_26, %true_22, %true_22, %true_2, %true_2, %true_22, %true_22, %false, %true_2, %true_2, %true, %true_26, %true_26, %true_26, %true_26, %false, %true_26, %true_22, %true_2, %true_22, %true_26, %true_22, %true_22, %true_27, %true_27, %true_26, %true_26, %true_26, %true_2, %true_27, %true_22, %true_2, %true_27, %true_26, %true_2, %true_27, %true_22, %true_2, %true_2, %true_27, %true_26, %false, %true_27, %true_26, %true, %true_27, %true_27, %true, %true_26, %true_27, %true_2, %true_2, %true, %false, %true, %true_2, %true_26, %true_22, %true, %false, %false, %false, %true_26, %true_26, %true_2, %true_2 : tensor<2x11x11xi1>
        linalg.yield %c361752391_i64 : i64
      } -> tensor<2x11x11xi64>
      %279 = bufferization.clone %alloc_10 : memref<2x11x11xi16> to memref<2x11x11xi16>
      %280 = vector.broadcast %rank : index to vector<4xindex>
      vector.scatter %alloc_17[%c0, %c4, %c6] [%280], %95, %94 : memref<2x11x11xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
      %281 = index.castu %c14 : index to i32
      %282 = index.sub %c7, %52
      %283 = arith.remsi %c361752391_i64, %c1745170826_i64 : i64
      %284 = vector.shuffle %24, %24 [2] : vector<2x11x11xi64>, vector<2x11x11xi64>
      %285 = affine.if affine_set<(d0, d1, d2, d3) : (d3 + 16 == 0, d1 >= 0, d2 == 0)>(%c6, %c9, %c0, %c9) -> memref<2x11xi32> {
        %286 = math.cttz %7 : tensor<2x11x11xi64>
        %from_elements_56 = tensor.from_elements %true, %true_22, %true_22, %true, %true_27, %true_26, %true_22, %true, %true_2, %true_22, %true, %true_26, %true_26, %false, %false, %true_26, %false, %true_2, %true_27, %true, %true_26, %true_27 : tensor<2x11xi1>
        %287 = arith.remf %cst_4, %cst_1 : f32
        %288 = math.sqrt %12 : tensor<4xf16>
        %289 = arith.remf %cst_4, %cst_4 : f32
        %rank_57 = tensor.rank %11 : tensor<2x11x11xi64>
        %290 = arith.maxsi %true_2, %true_27 : i1
        %291 = arith.maxui %false, %true_22 : i1
        affine.yield %82 : memref<2x11xi32>
      } else {
        %splat_56 = tensor.splat %true_2 : tensor<4xi1>
        %286 = math.log2 %cst : f16
        %287 = index.sizeof
        %288 = affine.apply affine_map<(d0) -> (d0 mod 2 - d0)>(%c5)
        %289 = arith.maxui %true_26, %true_27 : i1
        %290 = index.mul %c4, %270
        %291 = arith.divf %cst_4, %cst_1 : f32
        %292 = arith.andi %c913_i16, %c13047_i16 : i16
        affine.yield %alloc_18 : memref<2x11xi32>
      }
      linalg.yield %in_53 : i64
    } -> tensor<2x11x11xi64>
    %104 = vector.broadcast %cst_4 : f32 to vector<4x11xf32>
    %105 = vector.transfer_write %104, %0[%c7, %c13, %70] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<4x11xf32>, tensor<2x11x11xf32>
    %106 = arith.addf %cst_23, %cst : f16
    %107 = tensor.empty() : tensor<4xi32>
    %108 = math.fpowi %12, %107 : tensor<4xf16>, tensor<4xi32>
    %109 = tensor.empty(%c12) : tensor<?xi1>
    %extracted = tensor.extract %0[%c0, %c1, %c3] : tensor<2x11x11xf32>
    %110 = memref.atomic_rmw assign %cst, %alloc_12[%c1, %c9] : (f16, memref<2x11xf16>) -> f16
    %rank_29 = tensor.rank %2 : tensor<4xi64>
    affine.store %c361752391_i64, %alloc_17[%c10, %c11, %c9] : memref<2x11x11xi64>
    %111 = tensor.empty() : tensor<2x11x11xi64>
    %mapped = linalg.map ins(%11, %11, %alloc_17 : tensor<2x11x11xi64>, tensor<2x11x11xi64>, memref<2x11x11xi64>) outs(%111 : tensor<2x11x11xi64>)
      (%in: i64, %in_53: i64, %in_54: i64) {
        %255 = arith.addf %cst_3, %cst_0 : f16
        %256 = math.log2 %1 : tensor<2x11xf16>
        %257 = vector.create_mask %51 : vector<4xi1>
        %258 = vector.broadcast %extracted : f32 to vector<4xf32>
        %259 = vector.fma %258, %19, %53 : vector<4xf32>
        %splat_55 = tensor.splat %c1600468613_i32 : tensor<4xi32>
        %260 = scf.if %true_22 -> (memref<2x11x11xf32>) {
          %283 = index.maxu %c1, %51
          %284 = math.atan %extracted : f32
          %285 = vector.broadcast %c540632740_i32 : i32 to vector<4xi32>
          %286 = vector.transfer_write %285, %15[%rank_29, %c8] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi32>, tensor<2x11xi32>
          %287 = vector.reduction <minf>, %19 : vector<4xf32> into f32
          %288 = math.ctlz %c913_i16 : i16
          %c1351087947_i32 = arith.constant 1351087947 : i32
          %alloca_61 = memref.alloca() : memref<4xi16>
          %289 = index.mul %c12, %c9
          scf.yield %68 : memref<2x11x11xf32>
        } else {
          %283 = math.tanh %cst_1 : f32
          %284 = vector.flat_transpose %258 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
          %c1272230649_i32 = arith.constant 1272230649 : i32
          memref.store %c13047_i16, %alloc_14[%c0, %c3, %c10] : memref<2x11x11xi16>
          %285 = tensor.empty() : tensor<4xf32>
          %286 = index.ceildivs %c5, %c10
          %287 = bufferization.clone %alloc_18 : memref<2x11xi32> to memref<2x11xi32>
          %288 = vector.create_mask %286 : vector<4xi1>
          scf.yield %68 : memref<2x11x11xf32>
        }
        %261 = math.round %1 : tensor<2x11xf16>
        %262 = bufferization.to_memref %8 : memref<2x11xi1>
        %263 = arith.remsi %in, %c361752391_i64 : i64
        %264 = affine.apply affine_map<(d0, d1, d2) -> (d0)>(%c0, %c5, %70)
        %265 = memref.realloc %alloc_19 : memref<4xf16> to memref<4xf16>
        %266 = arith.subi %c913_i16, %c913_i16 : i16
        %267 = arith.remf %extracted, %extracted : f32
        %268 = vector.broadcast %c8 : index to vector<11xindex>
        %269 = vector.broadcast %true : i1 to vector<11xi1>
        %270 = vector.broadcast %c1600468613_i32 : i32 to vector<11xi32>
        vector.scatter %alloc_15[%c2] [%268], %269, %270 : memref<4xi32>, vector<11xindex>, vector<11xi1>, vector<11xi32>
        %271 = tensor.empty(%c10) : tensor<?xf32>
        %collapsed = tensor.collapse_shape %8 [[0, 1]] : tensor<2x11xi1> into tensor<22xi1>
        %272 = arith.maxf %cst, %cst_23 : f16
        %cast_56 = tensor.cast %111 : tensor<2x11x11xi64> to tensor<?x?x?xi64>
        %273 = vector.create_mask %52 : vector<4xi1>
        %true_57 = index.bool.constant true
        %274 = vector.broadcast %in_53 : i64 to vector<2x11xi64>
        %275 = vector.multi_reduction <maxui>, %24, %274 [2] : vector<2x11x11xi64> to vector<2x11xi64>
        %276 = math.ctpop %111 : tensor<2x11x11xi64>
        %277 = math.log1p %17 : tensor<2x11x11xf32>
        %278 = vector.broadcast %c418092245_i32 : i32 to vector<4xi32>
        %279 = vector.gather %10[%c14] [%278], %273, %259 : tensor<4xf32>, vector<4xi32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
        %280 = arith.cmpi ult, %in_53, %c1745170826_i64 : i64
        %from_elements_58 = tensor.from_elements %extracted, %cst_4, %cst_4, %cst_4 : tensor<4xf32>
        %281 = index.sizeof
        scf.execute_region {
          %283 = vector.broadcast %cst_1 : f32 to vector<2x11x11xf32>
          %284 = vector.fma %283, %283, %283 : vector<2x11x11xf32>
          %285 = affine.apply affine_map<(d0) -> (d0 * 64)>(%c11)
          %286 = math.tanh %14 : tensor<2x11xf16>
          %287 = vector.extract_strided_slice %72 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi1> to vector<1xi1>
          %288 = vector.broadcast %cst_4 : f32 to vector<11x11xf32>
          %289 = vector.insert %288, %284 [0] : vector<11x11xf32> into vector<2x11x11xf32>
          %290 = arith.negf %cst_3 : f16
          %rank_61 = tensor.rank %9 : tensor<4xi16>
          %291 = math.atan %5 : tensor<4xf16>
          %c-10531_i16 = arith.constant -10531 : i16
          %292 = vector.broadcast %c3 : index to vector<4xindex>
          vector.scatter %262[%c1, %c3] [%292], %95, %95 : memref<2x11xi1>, vector<4xindex>, vector<4xi1>, vector<4xi1>
          %293 = arith.remf %cst_23, %cst_3 : f16
          %rank_62 = tensor.rank %4 : tensor<4xi16>
          %294 = index.sizeof
          %295 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 floordiv 32)>(%c9, %c6, %rank, %c4)
          %dest_63, %accumulated_value_64 = vector.scan <mul>, %104, %53 {inclusive = false, reduction_dim = 1 : i64} : vector<4x11xf32>, vector<4xf32>
          %296 = math.rsqrt %extracted : f32
          scf.yield
        }
        %282 = math.log %10 : tensor<4xf32>
        memref.alloca_scope  {
          %283 = arith.mulf %cst_23, %cst : f16
          %284 = vector.broadcast %c15 : index to vector<4xindex>
          vector.scatter %alloc_7[%c2] [%284], %95, %94 : memref<4xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
          %285 = math.atan %1 : tensor<2x11xf16>
          %286 = math.roundeven %14 : tensor<2x11xf16>
          %287 = vector.broadcast %cst : f16 to vector<11xf16>
          %288 = vector.broadcast %true_2 : i1 to vector<11xi1>
          %289 = vector.maskedload %alloc_6[%c0, %c3], %288, %287 : memref<2x11xf16>, vector<11xi1>, vector<11xf16> into vector<11xf16>
          %290 = vector.broadcast %c913_i16 : i16 to vector<4xi16>
          %291 = vector.maskedload %alloc_10[%c1, %c7, %c10], %257, %290 : memref<2x11x11xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
          %292 = math.roundeven %expanded : tensor<4x1xf16>
          %293 = math.log10 %cst_0 : f16
          memref.copy %alloc_14, %alloc_9 : memref<2x11x11xi16> to memref<2x11x11xi16>
          %294 = arith.remsi %c913_i16, %c13047_i16 : i16
          %295 = arith.divf %cst_3, %cst_23 : f16
          %296 = affine.min affine_map<(d0, d1, d2, d3) -> (d0)>(%57, %70, %c9, %60)
          %297 = math.cttz %111 : tensor<2x11x11xi64>
          %298 = math.tanh %0 : tensor<2x11x11xf32>
          %splat_61 = tensor.splat %in_54 : tensor<2x11x11xi64>
          %299 = arith.mulf %cst_3, %cst_0 : f16
          %false_62 = index.bool.constant false
          %300 = arith.ceildivsi %in, %c361752391_i64 : i64
          %301 = vector.transpose %77, [] : vector<f16> to vector<f16>
          %302 = math.log2 %0 : tensor<2x11x11xf32>
          memref.assume_alignment %alloc_6, 4 : memref<2x11xf16>
          %303 = memref.load %81[] : memref<f16>
          %304 = math.log %cst_1 : f32
          %305 = vector.broadcast %true_2 : i1 to vector<2x11xi1>
          %dest_63, %accumulated_value_64 = vector.scan <minsi>, %69, %305 {inclusive = false, reduction_dim = 2 : i64} : vector<2x11x11xi1>, vector<2x11xi1>
          %306 = math.powf %expanded, %expanded : tensor<4x1xf16>
          %c0_i64_65 = arith.constant 0 : i64
          %307 = vector.transfer_read %alloc_17[%52, %c9, %52], %c0_i64_65 : memref<2x11x11xi64>, vector<i64>
          %308 = math.exp %12 : tensor<4xf16>
          %309 = index.sizeof
          %310 = math.ctpop %15 : tensor<2x11xi32>
          %311 = index.sub %c9, %c12
          %312 = math.exp %5 : tensor<4xf16>
          %313 = arith.remf %cst_1, %extracted : f32
        }
        %rank_59 = tensor.rank %7 : tensor<2x11x11xi64>
        memref.store %c913_i16, %alloc_14[%c1, %c2, %c6] : memref<2x11x11xi16>
        %c1_i64_60 = arith.constant 1 : i64
        linalg.yield %c1_i64_60 : i64
      }
    %alloca_30 = memref.alloca() : memref<2x11xi16>
    %112 = bufferization.clone %alloc_6 : memref<2x11xf16> to memref<2x11xf16>
    %113 = index.sub %c8, %c6
    %114 = vector.broadcast %true_26 : i1 to vector<2x11xi1>
    %dest, %accumulated_value = vector.scan <xor>, %59, %114 {inclusive = false, reduction_dim = 1 : i64} : vector<2x11x11xi1>, vector<2x11xi1>
    %115 = vector.broadcast %c913_i16 : i16 to vector<4xi16>
    %116 = vector.maskedload %alloc_10[%c0, %c2, %c6], %95, %115 : memref<2x11x11xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
    memref.copy %alloc_16, %alloc_6 : memref<2x11xf16> to memref<2x11xf16>
    affine.store %cst_0, %81[] : memref<f16>
    %117 = math.cttz %c913_i16 : i16
    %118 = index.ceildivs %c1, %c0
    %119 = vector.broadcast %cst : f16 to vector<11xf16>
    %120 = vector.transfer_write %119, %1[%c10, %c6] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<11xf16>, tensor<2x11xf16>
    %121 = arith.shrui %c361752391_i64, %c361752391_i64 : i64
    %122 = arith.remsi %c418092245_i32, %c540632740_i32 : i32
    %123 = index.ceildivs %c15, %118
    %rank_31 = tensor.rank %9 : tensor<4xi16>
    %124 = arith.cmpf ole, %cst_1, %extracted : f32
    %125 = math.log %5 : tensor<4xf16>
    %126 = memref.load %alloc_19[%c3] : memref<4xf16>
    %127 = math.fpowi %10, %107 : tensor<4xf32>, tensor<4xi32>
    %128 = math.sqrt %12 : tensor<4xf16>
    %cst_32 = arith.constant 6.092800e+04 : f16
    %129 = math.round %5 : tensor<4xf16>
    memref.tensor_store %5, %alloc_19 : memref<4xf16>
    %130 = math.ctlz %4 : tensor<4xi16>
    %131 = math.round %10 : tensor<4xf32>
    %132 = vector.matrix_multiply %115, %115 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
    %133 = index.divs %113, %113
    %134 = index.ceildivs %rank_29, %rank_31
    %135 = memref.realloc %alloc_7 : memref<4xi64> to memref<12xi64>
    %136 = vector.flat_transpose %19 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
    %137 = affine.load %alloc_7[%c3] : memref<4xi64>
    scf.execute_region {
      %255 = memref.realloc %alloc_11 : memref<4xi64> to memref<4xi64>
      %256 = vector.broadcast %cst : f16 to vector<2xf16>
      %257 = vector.maskedload %alloc_6[%c1, %c9], %72, %256 : memref<2x11xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
      %258 = math.ctpop %2 : tensor<4xi64>
      scf.if %true {
        %268 = vector.broadcast %c1745170826_i64 : i64 to vector<11x11xi64>
        %dest_56, %accumulated_value_57 = vector.scan <xor>, %24, %268 {inclusive = true, reduction_dim = 0 : i64} : vector<2x11x11xi64>, vector<11x11xi64>
        %269 = arith.divf %cst_0, %cst_3 : f16
        %270 = vector.transpose %59, [2, 0, 1] : vector<2x11x11xi1> to vector<11x2x11xi1>
        %cst_58 = arith.constant 1.59027789E+9 : f32
        %271 = vector.broadcast %cst_4 : f32 to vector<2x11xf32>
        %272 = vector.fma %271, %271, %271 : vector<2x11xf32>
        %273 = arith.mulf %cst_4, %cst_1 : f32
        %274 = arith.remsi %true_22, %true_2 : i1
        %275 = index.ceildivu %c6, %rank_31
      }
      %alloca_53 = memref.alloca() : memref<2x11xi1>
      %259 = vector.insertelement %cst_23, %257[%c5 : index] : vector<2xf16>
      %260 = arith.ceildivsi %false, %true : i1
      %261 = affine.if affine_set<(d0, d1, d2, d3) : (d2 * 64 >= 0, -(d3 ceildiv 16) == 0, d3 ceildiv 16 >= 0, -(d3 ceildiv 16) == 0)>(%c13, %c4, %c8, %c2) -> memref<4xf16> {
        %268 = arith.remsi %137, %137 : i64
        %269 = vector.load %alloc_9[%c0, %c5, %c8] : memref<2x11x11xi16>, vector<4xi16>
        %270 = math.ctpop %false : i1
        %271 = vector.load %alloc_20[] : memref<f16>, vector<4xf16>
        vector.print %256 : vector<2xf16>
        %272 = index.divs %c0, %rank_29
        %273 = vector.create_mask %c4 : vector<4xi1>
        %274 = index.ceildivs %52, %c4
        affine.yield %alloc_19 : memref<4xf16>
      } else {
        %268 = math.ctpop %true_26 : i1
        %269 = index.divs %123, %c1
        %270 = math.sqrt %cst_0 : f16
        %271 = affine.min affine_map<(d0, d1) -> ((d1 floordiv 64 - 2) ceildiv 64 + d0 - d1, d0 ceildiv 128)>(%269, %c3)
        %272 = vector.broadcast %true_27 : i1 to vector<11x11xi1>
        %dest_56, %accumulated_value_57 = vector.scan <xor>, %59, %272 {inclusive = true, reduction_dim = 0 : i64} : vector<2x11x11xi1>, vector<11x11xi1>
        %true_58 = index.bool.constant true
        %273 = vector.broadcast %c1600468613_i32 : i32 to vector<11xi32>
        %274 = vector.broadcast %true_22 : i1 to vector<11xi1>
        %275 = vector.maskedload %alloc_5[%c0, %c1, %c5], %274, %273 : memref<2x11x11xi32>, vector<11xi1>, vector<11xi32> into vector<11xi32>
        %276 = math.cttz %9 : tensor<4xi16>
        affine.yield %alloc_21 : memref<4xf16>
      }
      %262 = math.tan %cst_0 : f16
      scf.execute_region {
        %268 = math.log %1 : tensor<2x11xf16>
        %269 = math.log10 %21 : tensor<f16>
        %rank_56 = tensor.rank %7 : tensor<2x11x11xi64>
        %270 = vector.extract_strided_slice %19 {offsets = [2], sizes = [2], strides = [1]} : vector<4xf32> to vector<2xf32>
        %271 = math.ctpop %c361752391_i64 : i64
        %272 = math.log %10 : tensor<4xf32>
        %273 = vector.broadcast %c1745170826_i64 : i64 to vector<4x12xi64>
        %274 = vector.transfer_write %273, %111[%c8, %c1, %70] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<4x12xi64>, tensor<2x11x11xi64>
        %275 = vector.load %alloc_7[%c3] : memref<4xi64>, vector<2x11x11xi64>
        %276 = index.divs %c11, %113
        %277 = index.divs %c13, %c10
        %278 = arith.remf %cst, %cst : f16
        %expanded_57 = tensor.expand_shape %12 [[0, 1]] : tensor<4xf16> into tensor<4x1xf16>
        %from_elements_58 = tensor.from_elements %c361752391_i64, %c361752391_i64, %137, %c1745170826_i64, %137, %c1745170826_i64, %137, %c1745170826_i64, %137, %137, %137, %c1745170826_i64, %c1745170826_i64, %c1745170826_i64, %c361752391_i64, %137, %c1745170826_i64, %c361752391_i64, %137, %137, %c1745170826_i64, %c361752391_i64, %c361752391_i64, %c361752391_i64, %137, %c361752391_i64, %c361752391_i64, %c1745170826_i64, %137, %c1745170826_i64, %c1745170826_i64, %c361752391_i64, %c1745170826_i64, %c361752391_i64, %c361752391_i64, %137, %137, %137, %137, %c1745170826_i64, %c361752391_i64, %137, %c361752391_i64, %c361752391_i64, %c361752391_i64, %137, %c361752391_i64, %c361752391_i64, %c1745170826_i64, %137, %c361752391_i64, %c361752391_i64, %137, %c1745170826_i64, %c1745170826_i64, %c361752391_i64, %c361752391_i64, %137, %c1745170826_i64, %c361752391_i64, %c361752391_i64, %137, %c1745170826_i64, %137, %137, %137, %c1745170826_i64, %c1745170826_i64, %137, %c361752391_i64, %137, %137, %c361752391_i64, %137, %c361752391_i64, %c1745170826_i64, %c361752391_i64, %137, %c1745170826_i64, %c361752391_i64, %137, %137, %c361752391_i64, %c361752391_i64, %137, %c1745170826_i64, %c361752391_i64, %c361752391_i64, %c361752391_i64, %c361752391_i64, %137, %c1745170826_i64, %c1745170826_i64, %c1745170826_i64, %c361752391_i64, %137, %c1745170826_i64, %137, %c1745170826_i64, %c1745170826_i64, %137, %137, %137, %137, %c361752391_i64, %137, %137, %c361752391_i64, %c361752391_i64, %137, %c1745170826_i64, %c1745170826_i64, %c1745170826_i64, %c361752391_i64, %c1745170826_i64, %c1745170826_i64, %c361752391_i64, %c361752391_i64, %c1745170826_i64, %c1745170826_i64, %c361752391_i64, %c1745170826_i64, %c1745170826_i64, %137, %137, %c361752391_i64, %c1745170826_i64, %137, %c1745170826_i64, %c1745170826_i64, %c361752391_i64, %c361752391_i64, %c361752391_i64, %c1745170826_i64, %c361752391_i64, %137, %c361752391_i64, %c361752391_i64, %c1745170826_i64, %c361752391_i64, %c361752391_i64, %c361752391_i64, %c361752391_i64, %137, %c1745170826_i64, %c1745170826_i64, %c1745170826_i64, %137, %c1745170826_i64, %c361752391_i64, %c361752391_i64, %c361752391_i64, %c1745170826_i64, %137, %137, %c1745170826_i64, %137, %137, %c361752391_i64, %c361752391_i64, %137, %137, %c1745170826_i64, %c1745170826_i64, %137, %c1745170826_i64, %c1745170826_i64, %c361752391_i64, %c361752391_i64, %c361752391_i64, %c361752391_i64, %c361752391_i64, %137, %c361752391_i64, %c361752391_i64, %c361752391_i64, %c1745170826_i64, %137, %c361752391_i64, %137, %c1745170826_i64, %c1745170826_i64, %137, %137, %137, %137, %c1745170826_i64, %c1745170826_i64, %c361752391_i64, %137, %c361752391_i64, %c1745170826_i64, %c1745170826_i64, %137, %c361752391_i64, %137, %c361752391_i64, %c1745170826_i64, %c1745170826_i64, %c361752391_i64, %c1745170826_i64, %c1745170826_i64, %c1745170826_i64, %c361752391_i64, %137, %c1745170826_i64, %c1745170826_i64, %137, %137, %c361752391_i64, %137, %c1745170826_i64, %137, %c361752391_i64, %137, %c361752391_i64, %137, %137, %137, %c361752391_i64, %c361752391_i64, %137, %c1745170826_i64, %137, %c361752391_i64, %c361752391_i64, %137, %c361752391_i64, %c361752391_i64, %c1745170826_i64, %c361752391_i64, %c361752391_i64, %c361752391_i64, %c361752391_i64, %c361752391_i64, %c361752391_i64, %137, %c1745170826_i64, %c361752391_i64, %137, %c361752391_i64, %c1745170826_i64 : tensor<2x11x11xi64>
        %279 = index.ceildivs %52, %c8
        %280 = vector.load %alloc_7[%c3] : memref<4xi64>, vector<2x11x11xi64>
        %alloc_59 = memref.alloc() : memref<11x2xi1>
        %281 = tensor.empty() : tensor<2x2xi1>
        %282 = linalg.matmul ins(%8, %alloc_59 : tensor<2x11xi1>, memref<11x2xi1>) outs(%281 : tensor<2x2xi1>) -> tensor<2x2xi1>
        scf.yield
      }
      %263 = index.sub %rank_29, %c13
      %264 = index.divs %c12, %c1
      %265 = math.sqrt %16 : tensor<2x11x11xf32>
      %dest_54, %accumulated_value_55 = vector.scan <add>, %104, %136 {inclusive = true, reduction_dim = 1 : i64} : vector<4x11xf32>, vector<4xf32>
      %266 = vector.load %alloc[%c0, %c4] : memref<2x11xi32>, vector<4xi32>
      %267 = memref.realloc %alloc_15 : memref<4xi32> to memref<2xi32>
      scf.yield
    }
    %138 = math.rsqrt %20 : tensor<f16>
    %139 = arith.remui %false, %true_27 : i1
    memref.copy %alloc_11, %alloc_7 : memref<4xi64> to memref<4xi64>
    %140 = arith.negf %cst_23 : f16
    %c1_i64 = arith.constant 1 : i64
    %c0_i64 = arith.constant 0 : i64
    %141 = vector.transfer_read %alloc_13[%c10, %c1], %c0_i64 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<2x11xi64>, vector<11xi64>
    %from_elements = tensor.from_elements %c13047_i16, %c913_i16, %c913_i16, %c13047_i16, %c913_i16, %c913_i16, %c13047_i16, %c13047_i16, %c13047_i16, %c913_i16, %c13047_i16, %c13047_i16, %c913_i16, %c913_i16, %c913_i16, %c913_i16, %c13047_i16, %c13047_i16, %c913_i16, %c913_i16, %c913_i16, %c13047_i16 : tensor<2x11xi16>
    %142 = affine.max affine_map<(d0, d1, d2) -> ((d0 - 1) mod 4, (d0 - 1) mod 4, d1)>(%45, %c13, %c0)
    %143 = arith.cmpi sge, %c1745170826_i64, %c1745170826_i64 : i64
    scf.if %true_2 {
      %255 = math.absi %2 : tensor<4xi64>
      %256 = math.log2 %cst_1 : f32
      %257 = index.mul %134, %c13
      %258 = affine.min affine_map<(d0) -> (d0, ((d0 + 1) floordiv 128) mod 2)>(%c6)
      %259 = arith.maxf %cst_4, %extracted : f32
      memref.store %c418092245_i32, %82[%c1, %c2] : memref<2x11xi32>
      %alloc_53 = memref.alloc() : memref<4xi32>
      %260 = math.round %5 : tensor<4xf16>
    }
    %144 = math.log10 %1 : tensor<2x11xf16>
    %145 = math.tanh %5 : tensor<4xf16>
    %146 = tensor.empty() : tensor<11x12xi16>
    %147 = tensor.empty() : tensor<2x12xi16>
    %148 = linalg.matmul ins(%from_elements, %146 : tensor<2x11xi16>, tensor<11x12xi16>) outs(%147 : tensor<2x12xi16>) -> tensor<2x12xi16>
    %149 = arith.remsi %c13047_i16, %c13047_i16 : i16
    %150 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%111 : tensor<2x11x11xi64>) outs(%7 : tensor<2x11x11xi64>) {
    ^bb0(%in: i64, %out: i64):
      %255 = math.ctlz %c13047_i16 : i16
      %256 = math.log %cst_0 : f16
      %257 = vector.broadcast %cst_3 : f16 to vector<4xf16>
      %258 = vector.maskedload %alloc_21[%c1], %95, %257 : memref<4xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
      %259 = math.round %14 : tensor<2x11xf16>
      %260 = math.atan %3 : tensor<4xf16>
      %261 = arith.remsi %false, %true_2 : i1
      %262 = bufferization.clone %alloc_18 : memref<2x11xi32> to memref<2x11xi32>
      %263 = index.ceildivu %c0, %70
      %264 = arith.addf %cst_0, %cst_3 : f16
      %265 = vector.transpose %132, [0] : vector<1xi16> to vector<1xi16>
      %266 = arith.addi %c1489009748_i32, %c1600468613_i32 : i32
      %267 = math.ceil %extracted : f32
      %268 = vector.broadcast %true_22 : i1 to vector<2x11xi1>
      %dest_53, %accumulated_value_54 = vector.scan <mul>, %69, %268 {inclusive = true, reduction_dim = 2 : i64} : vector<2x11x11xi1>, vector<2x11xi1>
      %269 = vector.transpose %72, [0] : vector<2xi1> to vector<2xi1>
      %270 = memref.realloc %alloc_11 : memref<4xi64> to memref<4xi64>
      %271 = memref.alloca_scope  -> (i64) {
        %285 = tensor.empty() : tensor<1x4xf16>
        %286 = tensor.empty() : tensor<4x4xf16>
        %287 = linalg.matmul ins(%expanded, %285 : tensor<4x1xf16>, tensor<1x4xf16>) outs(%286 : tensor<4x4xf16>) -> tensor<4x4xf16>
        %288 = vector.broadcast %cst_23 : f16 to vector<f16>
        %289 = vector.transfer_write %288, %3[%c12] : vector<f16>, tensor<4xf16>
        %290 = index.add %84, %c8
        %291 = bufferization.to_tensor %112 : memref<2x11xf16>
        %292 = affine.apply affine_map<(d0, d1) -> (d1 - 2)>(%57, %45)
        %c1_i32 = arith.constant 1 : i32
        %c0_i32 = arith.constant 0 : i32
        %293 = vector.transfer_read %alloc_5[%c10, %rank, %c10], %c0_i32 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : memref<2x11x11xi32>, vector<12xi32>
        %294 = arith.remsi %c913_i16, %c13047_i16 : i16
        %expanded_57 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<2x11xf16> into tensor<2x11x1xf16>
        %295 = vector.reduction <minf>, %257 : vector<4xf16> into f16
        %296 = vector.broadcast %out : i64 to vector<2xi64>
        %297 = vector.maskedload %alloc_7[%c2], %72, %296 : memref<4xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
        %rank_58 = tensor.rank %expanded : tensor<4x1xf16>
        %298 = arith.cmpi eq, %in, %c1745170826_i64 : i64
        %299 = vector.maskedload %81[], %95, %257 : memref<f16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
        %300 = vector.matrix_multiply %116, %116 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
        %301 = math.cos %1 : tensor<2x11xf16>
        %302 = arith.andi %true_2, %true_27 : i1
        %303 = index.divs %57, %c9
        %304 = arith.remsi %c1489009748_i32, %c540632740_i32 : i32
        %305 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %116, %115, %c913_i16 : vector<4xi16>, vector<4xi16> into i16
        %306 = math.fma %17, %17, %16 : tensor<2x11x11xf32>
        %307 = arith.shrui %c1_i64, %in : i64
        %308 = tensor.empty() : tensor<4xf32>
        %309 = vector.broadcast %cst_1 : f32 to vector<4xf32>
        %310 = vector.fma %309, %136, %136 : vector<4xf32>
        %311 = math.rsqrt %10 : tensor<4xf32>
        %312 = tensor.empty() : tensor<2x11x1xi32>
        %313 = math.fpowi %expanded_57, %312 : tensor<2x11x1xf16>, tensor<2x11x1xi32>
        %314 = vector.create_mask %70, %c14, %c15 : vector<2x11x11xi1>
        %315 = arith.cmpf ole, %cst_0, %cst_0 : f16
        %316 = index.maxs %292, %263
        %317 = vector.broadcast %cst_4 : f32 to vector<2x11x11xf32>
        %318 = vector.fma %317, %317, %317 : vector<2x11x11xf32>
        %splat_59 = tensor.splat %137 : tensor<2x11x11xi64>
        %319 = math.ctpop %18 : tensor<11x2xi32>
        %320 = arith.remui %false, %true : i1
        memref.alloca_scope.return %137 : i64
      }
      %alloca_55 = memref.alloca() : memref<4xf32>
      %272 = math.log2 %12 : tensor<4xf16>
      %273 = arith.mulf %cst_4, %cst_4 : f32
      %274 = arith.divf %cst_23, %cst_0 : f16
      %275 = math.log10 %cst_0 : f16
      %276 = math.tan %cst_4 : f32
      %277 = math.atan %1 : tensor<2x11xf16>
      memref.assume_alignment %alloc_5, 8 : memref<2x11x11xi32>
      %inserted_56 = tensor.insert %cst_23 into %5[%c3] : tensor<4xf16>
      %278 = vector.load %alloc_8[%c3] : memref<4xf32>, vector<2x11x11xf32>
      %279 = math.ctlz %2 : tensor<4xi64>
      %280 = index.divs %c13, %c8
      %281 = vector.insert %cst_3, %258 [1] : f16 into vector<4xf16>
      %282 = math.sqrt %0 : tensor<2x11x11xf32>
      %283 = index.sub %c6, %c7
      %284 = vector.matrix_multiply %257, %257 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf16>, vector<4xf16>) -> vector<1xf16>
      linalg.yield %c1745170826_i64 : i64
    } -> tensor<2x11x11xi64>
    %151 = math.ceil %12 : tensor<4xf16>
    %152 = index.ceildivu %c4, %45
    %153 = index.sub %c3, %123
    %from_elements_33 = tensor.from_elements %true_22, %true_27, %true, %false : tensor<4xi1>
    memref.assume_alignment %81, 16 : memref<f16>
    %154 = index.ceildivu %c10, %153
    %155 = math.exp2 %5 : tensor<4xf16>
    %156 = vector.broadcast %cst_3 : f16 to vector<f16>
    %157 = vector.transfer_write %156, %12[%84] : vector<f16>, tensor<4xf16>
    %splat = tensor.splat %c418092245_i32 : tensor<4xi32>
    %158 = vector.broadcast %cst : f16 to vector<f16>
    %159 = vector.transfer_write %158, %12[%51] : vector<f16>, tensor<4xf16>
    %160 = affine.if affine_set<(d0, d1, d2, d3) : (d2 * 64 >= 0, -(d3 ceildiv 16) == 0, d3 ceildiv 16 >= 0, -(d3 ceildiv 16) == 0)>(%c2, %c9, %c3, %c13) -> memref<2x11xi32> {
      %255 = math.cttz %false : i1
      %256 = index.ceildivs %142, %c3
      %257 = vector.broadcast %extracted : f32 to vector<4x4xf32>
      %258 = vector.outerproduct %19, %136, %257 {kind = #vector.kind<minf>} : vector<4xf32>, vector<4xf32>
      %expanded_53 = tensor.expand_shape %from_elements [[0], [1, 2]] : tensor<2x11xi16> into tensor<2x11x1xi16>
      %259 = vector.extract_strided_slice %19 {offsets = [0], sizes = [1], strides = [1]} : vector<4xf32> to vector<1xf32>
      %true_54 = index.bool.constant true
      %260 = vector.bitcast %136 : vector<4xf32> to vector<4xi32>
      memref.copy %112, %alloc_12 : memref<2x11xf16> to memref<2x11xf16>
      affine.yield %alloc : memref<2x11xi32>
    } else {
      %255 = vector.broadcast %cst_4 : f32 to vector<2x11x11xf32>
      %256 = vector.fma %255, %255, %255 : vector<2x11x11xf32>
      %257 = vector.reduction <maxf>, %22 : vector<1xf32> into f32
      %258 = index.sizeof
      %259 = vector.broadcast %cst_3 : f16 to vector<2x11x11xf16>
      %260 = vector.broadcast %c1600468613_i32 : i32 to vector<2x11x11xi32>
      %261 = vector.gather %3[%rank_31] [%260], %59, %259 : tensor<4xf16>, vector<2x11x11xi32>, vector<2x11x11xi1>, vector<2x11x11xf16> into vector<2x11x11xf16>
      %262 = affine.load %alloc[%c13, %c13] : memref<2x11xi32>
      %263 = math.rsqrt %12 : tensor<4xf16>
      %264 = math.ctpop %262 : i32
      memref.assume_alignment %alloc_5, 8 : memref<2x11x11xi32>
      affine.yield %alloc_18 : memref<2x11xi32>
    }
    %161 = math.log2 %20 : tensor<f16>
    %162 = vector.broadcast %cst_4 : f32 to vector<2x11x11xf32>
    %inserted = tensor.insert %c913_i16 into %13[%c0] : tensor<4xi16>
    %163 = arith.shli %c540632740_i32, %c540632740_i32 : i32
    %164 = scf.if %true_26 -> (i16) {
      %255 = affine.for %arg1 = 0 to 31 iter_args(%arg2 = %13) -> (tensor<4xi16>) {
        affine.yield %13 : tensor<4xi16>
      }
      %true_53 = index.bool.constant true
      %256 = vector.broadcast %c13047_i16 : i16 to vector<4x4xi16>
      %257 = vector.outerproduct %115, %115, %256 {kind = #vector.kind<maxsi>} : vector<4xi16>, vector<4xi16>
      %258 = math.atan %1 : tensor<2x11xf16>
      %259 = vector.broadcast %extracted : f32 to vector<11xf32>
      %260 = vector.transfer_write %259, %16[%c0, %c8, %84] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<11xf32>, tensor<2x11x11xf32>
      %261 = vector.multi_reduction <maxsi>, %69, %72 [1, 2] : vector<2x11x11xi1> to vector<2xi1>
      %rank_54 = tensor.rank %6 : tensor<4xi64>
      %alloc_55 = memref.alloc() : memref<11x12xi1>
      %262 = tensor.empty() : tensor<2x12xi1>
      %263 = linalg.matmul ins(%8, %alloc_55 : tensor<2x11xi1>, memref<11x12xi1>) outs(%262 : tensor<2x12xi1>) -> tensor<2x12xi1>
      scf.yield %c913_i16 : i16
    } else {
      %cst_53 = arith.constant 1.000000e+00 : f16
      %cst_54 = arith.constant 0.000000e+00 : f16
      %255 = vector.transfer_read %5[%133], %cst_54 : tensor<4xf16>, vector<f16>
      %256 = math.absi %transposed : tensor<11x2xi32>
      %257 = arith.remui %c361752391_i64, %137 : i64
      %258 = vector.extract %53[1] : vector<4xf32>
      %259 = math.roundeven %14 : tensor<2x11xf16>
      %splat_55 = tensor.splat %true : tensor<2x11xi1>
      %from_elements_56 = tensor.from_elements %137, %c1745170826_i64, %c1_i64, %137 : tensor<4xi64>
      %260 = vector.extract_strided_slice %136 {offsets = [2], sizes = [1], strides = [1]} : vector<4xf32> to vector<1xf32>
      scf.yield %c913_i16 : i16
    }
    %165 = bufferization.clone %alloc_7 : memref<4xi64> to memref<4xi64>
    %166 = vector.create_mask %c4, %134 : vector<2x11xi1>
    %167 = vector.broadcast %cst_23 : f16 to vector<2xf16>
    %168 = vector.maskedload %alloc_19[%c1], %72, %167 : memref<4xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
    %169 = arith.maxui %true_2, %true_22 : i1
    %170 = index.sizeof
    %171 = math.exp %cst_1 : f32
    %172 = arith.addi %true_26, %true_26 : i1
    affine.store %c418092245_i32, %alloc[%c2, %c7] : memref<2x11xi32>
    %173 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %167, %168, %cst_3 : vector<2xf16>, vector<2xf16> into f16
    %174 = bufferization.clone %alloc_6 : memref<2x11xf16> to memref<2x11xf16>
    %175 = arith.maxf %cst_4, %extracted : f32
    %176 = math.ctpop %6 : tensor<4xi64>
    scf.if %true_26 {
      %255 = index.casts %c1600468613_i32 : i32 to index
      %256 = arith.divf %extracted, %extracted : f32
      scf.execute_region {
        %261 = math.roundeven %10 : tensor<4xf32>
        %262 = arith.ceildivsi %c418092245_i32, %c1489009748_i32 : i32
        %263 = arith.ceildivsi %true, %true_27 : i1
        %264 = vector.bitcast %115 : vector<4xi16> to vector<4xi16>
        %extracted_55 = tensor.extract %7[%c1, %c3, %c4] : tensor<2x11x11xi64>
        %265 = index.sizeof
        %266 = index.sizeof
        %267 = math.round %20 : tensor<f16>
        %268 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %132, %132, %164 : vector<1xi16>, vector<1xi16> into i16
        %269 = vector.load %81[] : memref<f16>, vector<2x11xf16>
        %270 = vector.broadcast %extracted : f32 to vector<4xf32>
        %271 = vector.fma %270, %136, %270 : vector<4xf32>
        %272 = math.cttz %7 : tensor<2x11x11xi64>
        %273 = index.floordivs %152, %c2
        %274 = index.sub %c0, %70
        %275 = bufferization.clone %68 : memref<2x11x11xf32> to memref<2x11x11xf32>
        %276 = math.exp %21 : tensor<f16>
        scf.yield
      }
      scf.if %false {
        %261 = math.ctpop %true : i1
        %262 = index.divs %255, %142
        %263 = math.atan %0 : tensor<2x11x11xf32>
        %264 = vector.insert %true_22, %95 [1] : i1 into vector<4xi1>
        %265 = affine.apply affine_map<(d0) -> (d0 floordiv 4 - 4)>(%rank_29)
        %266 = math.log10 %cst_23 : f16
        %cast_55 = tensor.cast %11 : tensor<2x11x11xi64> to tensor<?x?x?xi64>
        %expanded_56 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<2x11xf16> into tensor<2x11x1xf16>
      }
      %257 = vector.broadcast %extracted : f32 to vector<2x11xf32>
      %dest_53, %accumulated_value_54 = vector.scan <minf>, %162, %257 {inclusive = false, reduction_dim = 1 : i64} : vector<2x11x11xf32>, vector<2x11xf32>
      scf.index_switch %c15 
      case 1 {
        %261 = bufferization.to_memref %7 : memref<2x11x11xi64>
        %262 = memref.load %alloc_13[%c0, %c2] : memref<2x11xi64>
        %263 = vector.matrix_multiply %132, %115 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<1xi16>, vector<4xi16>) -> vector<4xi16>
        %264 = math.powf %14, %14 : tensor<2x11xf16>
        %265 = arith.mulf %cst_4, %cst_1 : f32
        %splat_55 = tensor.splat %c540632740_i32 : tensor<4xi32>
        %266 = vector.broadcast %cst_4 : f32 to vector<f32>
        %267 = vector.transfer_write %266, %10[%154] : vector<f32>, tensor<4xf32>
        %268 = arith.shrui %false, %true_27 : i1
        %from_elements_56 = tensor.from_elements %cst_0, %cst, %cst_0, %cst_23 : tensor<4xf16>
        %269 = vector.matrix_multiply %167, %168 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf16>, vector<2xf16>) -> vector<1xf16>
        %270 = arith.andi %137, %137 : i64
        %271 = memref.atomic_rmw minu %c540632740_i32, %alloc_18[%c1, %c5] : (i32, memref<2x11xi32>) -> i32
        %splat_57 = tensor.splat %true_22 : tensor<2x11x11xi1>
        %rank_58 = tensor.rank %9 : tensor<4xi16>
        %272 = math.log %12 : tensor<4xf16>
        %273 = vector.flat_transpose %73 {columns = 1 : i32, rows = 2 : i32} : vector<2xf32> -> vector<2xf32>
        scf.yield
      }
      case 2 {
        %261 = bufferization.clone %alloc_11 : memref<4xi64> to memref<4xi64>
        %262 = arith.divui %c1489009748_i32, %c1489009748_i32 : i32
        %263 = index.divs %c10, %c3
        %264 = math.log1p %extracted : f32
        %alloc_55 = memref.alloc() : memref<2x11xi16>
        %265 = vector.broadcast %extracted : f32 to vector<2x11xf32>
        %266 = vector.fma %265, %265, %265 : vector<2x11xf32>
        %267 = arith.ceildivsi %false, %true : i1
        %268 = arith.mulf %cst_4, %cst_4 : f32
        %269 = math.absi %transposed : tensor<11x2xi32>
        %270 = vector.broadcast %extracted : f32 to vector<4x4xf32>
        %271 = vector.outerproduct %53, %53, %270 {kind = #vector.kind<add>} : vector<4xf32>, vector<4xf32>
        %272 = arith.cmpf ole, %cst_1, %extracted : f32
        %273 = vector.broadcast %cst_4 : f32 to vector<11xf32>
        %274 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minf>} %104, %53, %273 : vector<4x11xf32>, vector<4xf32> into vector<11xf32>
        vector.print %19 : vector<4xf32>
        %275 = math.rsqrt %cst_23 : f16
        %276 = math.roundeven %12 : tensor<4xf16>
        memref.store %c913_i16, %alloc_9[%c0, %c4, %c3] : memref<2x11x11xi16>
        scf.yield
      }
      case 3 {
        %261 = math.ctpop %137 : i64
        %262 = vector.reduction <xor>, %72 : vector<2xi1> into i1
        %263 = index.maxu %51, %60
        %from_elements_55 = tensor.from_elements %c913_i16, %c13047_i16, %c13047_i16, %164 : tensor<4xi16>
        %264 = math.round %1 : tensor<2x11xf16>
        %265 = index.mul %c2, %154
        %expanded_56 = tensor.expand_shape %0 [[0], [1], [2, 3]] : tensor<2x11x11xf32> into tensor<2x11x11x1xf32>
        %true_57 = index.bool.constant true
        %266 = math.roundeven %expanded : tensor<4x1xf16>
        %267 = index.maxs %123, %142
        %268 = vector.broadcast %cst_0 : f16 to vector<12xf16>
        %269 = vector.maskedload %174[%c1, %c1], %64, %268 : memref<2x11xf16>, vector<12xi1>, vector<12xf16> into vector<12xf16>
        %270 = index.ceildivu %153, %c14
        %271 = index.casts %c1745170826_i64 : i64 to index
        %272 = index.sub %rank_31, %142
        %273 = tensor.empty() : tensor<11x11xi32>
        %274 = linalg.matmul ins(%transposed, %15 : tensor<11x2xi32>, tensor<2x11xi32>) outs(%273 : tensor<11x11xi32>) -> tensor<11x11xi32>
        %275 = arith.mulf %cst_1, %cst_4 : f32
        scf.yield
      }
      case 4 {
        %inserted_55 = tensor.insert %c1489009748_i32 into %transposed[%c3, %c0] : tensor<11x2xi32>
        %261 = arith.addf %cst_1, %cst_1 : f32
        %262 = math.cos %17 : tensor<2x11x11xf32>
        %263 = math.absi %8 : tensor<2x11xi1>
        %264 = vector.broadcast %c418092245_i32 : i32 to vector<4xi32>
        %265 = vector.maskedload %alloc_5[%c0, %c9, %c2], %95, %264 : memref<2x11x11xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
        %266 = vector.multi_reduction <minf>, %119, %119 [] : vector<11xf16> to vector<11xf16>
        %267 = arith.remf %cst, %cst_3 : f16
        %c1_i64_56 = arith.constant 1 : i64
        %268 = vector.transfer_read %6[%154], %c1_i64_56 : tensor<4xi64>, vector<i64>
        %269 = arith.addi %c1600468613_i32, %c1489009748_i32 : i32
        %270 = math.floor %12 : tensor<4xf16>
        %271 = math.log %0 : tensor<2x11x11xf32>
        %272 = math.log2 %14 : tensor<2x11xf16>
        %273 = math.fpowi %14, %15 : tensor<2x11xf16>, tensor<2x11xi32>
        %inserted_57 = tensor.insert %137 into %11[%c0, %c2, %c2] : tensor<2x11x11xi64>
        %274 = arith.negf %extracted : f32
        %275 = affine.min affine_map<(d0, d1) -> (d0, (d1 + 2) * 2, (d1 + 2) * 2)>(%rank_31, %c5)
        scf.yield
      }
      default {
        %from_elements_55 = tensor.from_elements %cst_1, %extracted, %cst_4, %extracted, %cst_4, %extracted, %cst_1, %cst_1, %cst_4, %cst_1, %cst_4, %extracted, %cst_1, %cst_4, %cst_4, %cst_1, %cst_1, %cst_1, %cst_4, %extracted, %cst_4, %extracted : tensor<2x11xf32>
        %261 = tensor.empty() : tensor<i32>
        %262 = math.fpowi %21, %261 : tensor<f16>, tensor<i32>
        %263 = math.roundeven %21 : tensor<f16>
        %expanded_56 = tensor.expand_shape %13 [[0, 1]] : tensor<4xi16> into tensor<4x1xi16>
        %264 = math.round %cst_3 : f16
        %265 = arith.ori %c1489009748_i32, %c418092245_i32 : i32
        %266 = math.powf %5, %3 : tensor<4xf16>
        %alloca_57 = memref.alloca() : memref<4xi32>
        %from_elements_58 = tensor.from_elements %c13047_i16, %164, %c13047_i16, %164, %c913_i16, %c913_i16, %c913_i16, %c913_i16, %c913_i16, %164, %164, %c13047_i16, %c13047_i16, %c13047_i16, %c913_i16, %c13047_i16, %c913_i16, %164, %c13047_i16, %164, %164, %164, %c13047_i16, %c913_i16, %164, %164, %164, %164, %164, %164, %c913_i16, %c913_i16, %c13047_i16, %164, %c913_i16, %c13047_i16, %164, %c913_i16, %c913_i16, %164, %c13047_i16, %c13047_i16, %c913_i16, %c13047_i16, %c913_i16, %164, %164, %c913_i16, %c913_i16, %c913_i16, %c13047_i16, %c913_i16, %c13047_i16, %c913_i16, %c13047_i16, %c13047_i16, %c13047_i16, %c913_i16, %c913_i16, %c913_i16, %c913_i16, %164, %164, %c913_i16, %c913_i16, %c913_i16, %c13047_i16, %c13047_i16, %c13047_i16, %164, %164, %c13047_i16, %c913_i16, %c13047_i16, %c13047_i16, %164, %164, %164, %164, %c913_i16, %164, %c913_i16, %c13047_i16, %c13047_i16, %164, %c913_i16, %c13047_i16, %c13047_i16, %164, %c913_i16, %c13047_i16, %c913_i16, %c13047_i16, %164, %164, %c913_i16, %c13047_i16, %c13047_i16, %c13047_i16, %c13047_i16, %c913_i16, %c913_i16, %164, %c913_i16, %c913_i16, %c13047_i16, %c13047_i16, %164, %c13047_i16, %164, %164, %c13047_i16, %164, %164, %164, %c913_i16, %c913_i16, %c13047_i16, %c13047_i16, %164, %c913_i16, %c913_i16, %c913_i16, %164, %c13047_i16, %c913_i16, %c13047_i16, %c913_i16, %164, %c13047_i16, %c13047_i16, %c913_i16, %c913_i16, %164, %c913_i16, %c13047_i16, %c13047_i16, %c13047_i16, %c913_i16, %c13047_i16, %c913_i16, %c13047_i16, %164, %c13047_i16, %c13047_i16, %c13047_i16, %164, %c913_i16, %c913_i16, %164, %164, %c13047_i16, %c13047_i16, %c913_i16, %c13047_i16, %164, %c13047_i16, %164, %c913_i16, %c13047_i16, %c13047_i16, %c913_i16, %c913_i16, %c13047_i16, %c913_i16, %164, %164, %c913_i16, %c13047_i16, %c913_i16, %164, %164, %c13047_i16, %c913_i16, %c913_i16, %164, %c913_i16, %164, %c13047_i16, %c13047_i16, %c913_i16, %c913_i16, %c913_i16, %c13047_i16, %c13047_i16, %164, %164, %c13047_i16, %c913_i16, %164, %c13047_i16, %c913_i16, %c13047_i16, %c913_i16, %164, %c13047_i16, %164, %c13047_i16, %164, %c13047_i16, %c13047_i16, %c913_i16, %c13047_i16, %c13047_i16, %c13047_i16, %c13047_i16, %c913_i16, %164, %c13047_i16, %164, %c913_i16, %c13047_i16, %164, %164, %164, %c913_i16, %c913_i16, %c13047_i16, %c913_i16, %164, %c13047_i16, %c913_i16, %c913_i16, %164, %c13047_i16, %c913_i16, %164, %164, %c13047_i16, %c13047_i16, %c913_i16, %164, %c13047_i16, %164, %164, %c13047_i16, %c913_i16, %c913_i16, %c913_i16, %164, %c13047_i16, %164 : tensor<2x11x11xi16>
        %from_elements_59 = tensor.from_elements %137, %137, %137, %c361752391_i64, %c1_i64, %137, %137, %c361752391_i64, %137, %c1_i64, %c1_i64, %137, %137, %c361752391_i64, %c1_i64, %c1745170826_i64, %c361752391_i64, %c1745170826_i64, %137, %c1745170826_i64, %c361752391_i64, %c1745170826_i64 : tensor<2x11xi64>
        %267 = arith.cmpi eq, %true_27, %true_2 : i1
        %268 = math.exp %14 : tensor<2x11xf16>
        %269 = math.round %21 : tensor<f16>
        %270 = index.castu %123 : index to i32
        %expanded_60 = tensor.expand_shape %from_elements_33 [[0, 1]] : tensor<4xi1> into tensor<4x1xi1>
        %271 = index.castu %c1489009748_i32 : i32 to index
      }
      %258 = index.sizeof
      %259 = vector.broadcast %cst_4 : f32 to vector<2x11xf32>
      %260 = vector.fma %259, %259, %259 : vector<2x11xf32>
    }
    %177 = index.castu %true_2 : i1 to index
    %178 = vector.flat_transpose %96 {columns = 2 : i32, rows = 2 : i32} : vector<4xi64> -> vector<4xi64>
    %alloc_34 = memref.alloc() : memref<4xi16>
    memref.tensor_store %13, %alloc_34 : memref<4xi16>
    %179 = arith.remsi %c1489009748_i32, %c418092245_i32 : i32
    %180 = vector.load %alloc_15[%c2] : memref<4xi32>, vector<2x11x11xi32>
    %181 = arith.andi %c913_i16, %c913_i16 : i16
    bufferization.dealloc_tensor %5 : tensor<4xf16>
    %alloc_35 = memref.alloc() : memref<2x11xi64>
    %182 = vector.multi_reduction <minui>, %72, %true_22 [0] : vector<2xi1> to i1
    %183 = arith.mulf %cst_0, %cst_23 : f16
    %184 = math.absi %true_2 : i1
    %185 = index.mul %c9, %c12
    %186 = math.exp2 %12 : tensor<4xf16>
    %187 = index.castu %c11 : index to i32
    %alloca_36 = memref.alloca() : memref<4xi1>
    %188 = math.ceil %10 : tensor<4xf32>
    %splat_37 = tensor.splat %true : tensor<2x11xi1>
    %alloc_38 = memref.alloc() : memref<2xi64>
    %189 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_38 : memref<2xi64>) outs(%11 : tensor<2x11x11xi64>) {
    ^bb0(%in: i64, %out: i64):
      %255 = index.sizeof
      %256 = index.sizeof
      %257 = math.powf %20, %20 : tensor<f16>
      %258 = scf.execute_region -> tensor<4xi1> {
        %282 = math.log1p %3 : tensor<4xf16>
        %283 = arith.maxf %cst_23, %cst_3 : f16
        %284 = arith.cmpi sgt, %c1600468613_i32, %c1600468613_i32 : i32
        %expanded_59 = tensor.expand_shape %16 [[0], [1], [2, 3]] : tensor<2x11x11xf32> into tensor<2x11x11x1xf32>
        %285 = index.ceildivu %rank_29, %60
        %286 = vector.create_mask %c5 : vector<4xi1>
        %287 = bufferization.to_tensor %alloc : memref<2x11xi32>
        %288 = math.log %3 : tensor<4xf16>
        memref.store %c1489009748_i32, %alloc_15[%c1] : memref<4xi32>
        %289 = math.tanh %0 : tensor<2x11x11xf32>
        %290 = arith.mulf %cst_3, %cst_0 : f16
        %c472749752_i64 = arith.constant 472749752 : i64
        %291 = memref.load %68[%c0, %c4, %c0] : memref<2x11x11xf32>
        %292 = arith.negf %cst_1 : f32
        %cast_60 = tensor.cast %147 : tensor<2x12xi16> to tensor<?x?xi16>
        %293 = math.log %cst_1 : f32
        scf.yield %from_elements_33 : tensor<4xi1>
      }
      %259 = arith.subi %182, %true_2 : i1
      %260 = index.casts %rank : index to i32
      %261 = math.log1p %14 : tensor<2x11xf16>
      %262 = bufferization.to_memref %13 : memref<4xi16>
      %alloc_53 = memref.alloc() : memref<4xi64>
      %263 = vector.load %112[%c0, %c4] : memref<2x11xf16>, vector<4xf16>
      %264 = vector.transpose %136, [0] : vector<4xf32> to vector<4xf32>
      %265 = vector.maskedload %alloc_19[%c1], %72, %168 : memref<4xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
      %266 = arith.divui %true, %true_2 : i1
      %267 = vector.broadcast %extracted : f32 to vector<2x11xf32>
      %268 = vector.fma %267, %267, %267 : vector<2x11xf32>
      %from_elements_54 = tensor.from_elements %cst_4, %cst_1, %cst_1, %cst_4 : tensor<4xf32>
      %269 = math.absi %107 : tensor<4xi32>
      %alloca_55 = memref.alloca() : memref<2x11x11xi64>
      %cast_56 = tensor.cast %5 : tensor<4xf16> to tensor<?xf16>
      %270 = vector.bitcast %115 : vector<4xi16> to vector<4xi16>
      %false_57 = index.bool.constant false
      %271 = index.maxs %c3, %45
      %272 = index.sizeof
      %273 = vector.broadcast %cst_3 : f16 to vector<f16>
      %274 = vector.transfer_write %273, %12[%c0] : vector<f16>, tensor<4xf16>
      %expanded_58 = tensor.expand_shape %from_elements_33 [[0, 1]] : tensor<4xi1> into tensor<4x1xi1>
      %275 = math.tanh %cst_1 : f32
      %276 = index.divs %c14, %185
      %277 = scf.if %false_57 -> (f16) {
        %282 = math.ceil %cst_0 : f16
        %splat_59 = tensor.splat %out : tensor<4xi64>
        %alloca_60 = memref.alloca() : memref<2x11x11xf32>
        %283 = arith.remsi %182, %true_26 : i1
        %284 = memref.atomic_rmw maxs %c418092245_i32, %alloc_18[%c0, %c0] : (i32, memref<2x11xi32>) -> i32
        %cst_61 = arith.constant 0x4D5CBD91 : f32
        %285 = math.sqrt %12 : tensor<4xf16>
        %286 = arith.muli %false, %true : i1
        scf.yield %cst_3 : f16
      } else {
        %from_elements_59 = tensor.from_elements %137, %c361752391_i64, %c1745170826_i64, %out : tensor<4xi64>
        %282 = math.atan %17 : tensor<2x11x11xf32>
        %283 = index.ceildivu %rank, %57
        %284 = vector.bitcast %119 : vector<11xf16> to vector<11xf16>
        %285 = vector.shuffle %59, %69 [2] : vector<2x11x11xi1>, vector<2x11x11xi1>
        %286 = arith.shrui %c1_i64, %c1_i64 : i64
        %287 = vector.create_mask %133 : vector<4xi1>
        %288 = arith.addf %cst_3, %cst_3 : f16
        scf.yield %cst_3 : f16
      }
      %c-24208_i16 = arith.constant -24208 : i16
      %278 = math.ceil %20 : tensor<f16>
      %279 = math.rsqrt %extracted : f32
      %280 = arith.subi %c361752391_i64, %c1745170826_i64 : i64
      %281 = math.log1p %cst_23 : f16
      linalg.yield %c361752391_i64 : i64
    } -> tensor<2x11x11xi64>
    %190 = vector.splat %c9 : vector<4xindex>
    %191 = vector.transpose %167, [0] : vector<2xf16> to vector<2xf16>
    %192 = arith.andi %182, %true_26 : i1
    %193 = math.round %12 : tensor<4xf16>
    %194 = math.atan %3 : tensor<4xf16>
    %195 = affine.if affine_set<(d0) : (0 == 0)>(%c15) -> f16 {
      %255 = arith.shrui %true_2, %false : i1
      %256 = vector.create_mask %134 : vector<4xi1>
      %257 = scf.execute_region -> tensor<4xi64> {
        %263 = math.sqrt %1 : tensor<2x11xf16>
        %264 = vector.matrix_multiply %256, %72 {lhs_columns = 2 : i32, lhs_rows = 2 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<2xi1>) -> vector<2xi1>
        %false_55 = index.bool.constant false
        %265 = tensor.empty() : tensor<2x11x11xi1>
        %266 = vector.broadcast %c418092245_i32 : i32 to vector<12xi32>
        %267 = vector.maskedload %alloc_18[%c0, %c0], %64, %266 : memref<2x11xi32>, vector<12xi1>, vector<12xi32> into vector<12xi32>
        %268 = math.floor %12 : tensor<4xf16>
        %269 = vector.broadcast %cst_4 : f32 to vector<11xf32>
        %dest_56, %accumulated_value_57 = vector.scan <minf>, %104, %269 {inclusive = false, reduction_dim = 0 : i64} : vector<4x11xf32>, vector<11xf32>
        %270 = memref.realloc %alloc_7 : memref<4xi64> to memref<2xi64>
        %271 = vector.broadcast %c540632740_i32 : i32 to vector<4xi32>
        %272 = vector.gather %alloc_11[%70] [%271], %95, %96 : memref<4xi64>, vector<4xi32>, vector<4xi1>, vector<4xi64> into vector<4xi64>
        %273 = arith.remsi %true_26, %true_2 : i1
        vector.print %267 : vector<12xi32>
        %274 = math.ctpop %111 : tensor<2x11x11xi64>
        %275 = math.absi %8 : tensor<2x11xi1>
        %276 = math.ctpop %false_55 : i1
        %277 = math.cos %17 : tensor<2x11x11xf32>
        %278 = vector.flat_transpose %119 {columns = 11 : i32, rows = 1 : i32} : vector<11xf16> -> vector<11xf16>
        scf.yield %2 : tensor<4xi64>
      }
      %258 = math.log %cst_3 : f16
      %259 = affine.load %174[%c1, %c8] : memref<2x11xf16>
      %260 = vector.broadcast %182 : i1 to vector<11x11xi1>
      %dest_53, %accumulated_value_54 = vector.scan <xor>, %59, %260 {inclusive = false, reduction_dim = 0 : i64} : vector<2x11x11xi1>, vector<11x11xi1>
      %261 = index.divs %c3, %142
      %262 = memref.load %alloc_8[%c0] : memref<4xf32>
      affine.yield %cst_0 : f16
    } else {
      %255 = vector.multi_reduction <add>, %168, %168 [] : vector<2xf16> to vector<2xf16>
      %256 = vector.create_mask %113 : vector<4xi1>
      %257 = arith.addf %cst_1, %extracted : f32
      %rank_53 = tensor.rank %4 : tensor<4xi16>
      %258 = math.round %21 : tensor<f16>
      %259 = index.ceildivs %c11, %45
      %260 = vector.broadcast %c361752391_i64 : i64 to vector<2xi64>
      %261 = vector.transfer_write %260, %11[%c4, %rank_53, %c8] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<2xi64>, tensor<2x11x11xi64>
      %262 = tensor.empty() : tensor<2x11xi32>
      affine.yield %cst_0 : f16
    }
    %196 = arith.divf %cst_0, %cst_0 : f16
    %197 = index.ceildivu %rank_31, %c15
    %198 = affine.min affine_map<(d0, d1, d2, d3) -> (-d2)>(%152, %84, %197, %134)
    %199 = bufferization.clone %alloc_9 : memref<2x11x11xi16> to memref<2x11x11xi16>
    %200 = arith.maxui %c1745170826_i64, %137 : i64
    %201 = tensor.empty() : tensor<2x11xf16>
    %mapped_39 = linalg.map ins(%alloc_16, %alloc_16, %alloc_6 : memref<2x11xf16>, memref<2x11xf16>, memref<2x11xf16>) outs(%201 : tensor<2x11xf16>)
      (%in: f16, %in_53: f16, %in_54: f16) {
        scf.execute_region {
          %rank_66 = tensor.rank %16 : tensor<2x11x11xf32>
          %281 = arith.mulf %cst_0, %cst : f16
          %282 = math.atan %expanded : tensor<4x1xf16>
          %283 = math.exp %12 : tensor<4xf16>
          %284 = index.add %c13, %c8
          %285 = math.fma %5, %3, %3 : tensor<4xf16>
          %286 = affine.min affine_map<(d0) -> (d0 * -8)>(%rank)
          %287 = arith.addf %in_54, %cst_3 : f16
          %alloca_67 = memref.alloca() : memref<4xi64>
          %288 = arith.mulf %cst_23, %cst_0 : f16
          %289 = math.exp %1 : tensor<2x11xf16>
          %290 = index.mul %c13, %70
          %291 = index.sizeof
          %292 = vector.broadcast %cst_1 : f32 to vector<2x2xf32>
          %293 = vector.transfer_write %292, %0[%c13, %118, %134] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<2x2xf32>, tensor<2x11x11xf32>
          %294 = arith.cmpi sge, %137, %c1_i64 : i64
          %from_elements_68 = tensor.from_elements %182, %true_2, %182, %true_2, %false, %true_27, %true_26, %true_22, %true_26, %true_22, %true_27, %false, %true_26, %false, %true_2, %false, %true_26, %true_27, %true_27, %182, %true_26, %true_27, %182, %true_2, %true, %182, %true, %true_26, %false, %true, %true_26, %182, %false, %182, %false, %false, %true_22, %true_27, %true_27, %false, %true_2, %true_2, %true_27, %182, %182, %true, %true_27, %true_27, %true_27, %true_22, %true_26, %true_2, %true_2, %true_26, %true_2, %true, %true_22, %false, %true_22, %true, %true_26, %false, %true, %true_26, %false, %true_26, %182, %true_26, %true_27, %true_26, %true_26, %true_27, %true_26, %182, %true, %true_26, %true, %true_27, %true_27, %true_22, %182, %true, %182, %true_26, %true_27, %true, %true, %true_2, %true_2, %true_27, %true_2, %true_2, %true_27, %182, %true_26, %true, %182, %true_22, %false, %true_22, %true_27, %182, %true_26, %true, %true_2, %true_27, %true_27, %true_27, %true_26, %true_2, %true_26, %true_2, %true_22, %true_27, %true_26, %false, %false, %true, %false, %182, %true, %true_26, %true_27, %true, %true_26, %true_22, %true_26, %false, %false, %true_22, %182, %true_26, %true_2, %false, %true, %true, %true_2, %false, %true, %true_27, %true_27, %true_2, %true, %true_26, %true_22, %true, %true_22, %true_2, %182, %true_27, %true_2, %182, %true_26, %true_22, %182, %true_26, %true, %true, %false, %false, %182, %true_27, %true_26, %true, %true, %true, %true_27, %182, %true_26, %true_26, %true_2, %true, %182, %false, %true, %true_26, %true, %true_2, %true_26, %true_2, %true, %182, %true_26, %true_27, %true_27, %true_27, %true_26, %true_22, %true_2, %false, %true_22, %true_2, %true_2, %true_2, %182, %true_26, %true_27, %true_22, %true_2, %true_27, %true_27, %true_2, %182, %true_22, %true_2, %true_26, %true, %true_2, %false, %true_27, %true_2, %true_2, %true_27, %true_27, %false, %false, %true_27, %true, %182, %true_22, %false, %true_22, %true_22, %true_22, %true_22, %true_2, %true_22, %true_27, %true_2, %false, %true, %true_2, %false, %false, %true_26, %true_27, %true_22, %true_26, %false, %false, %false, %true_26 : tensor<2x11x11xi1>
          scf.yield
        }
        %255 = affine.min affine_map<(d0, d1, d2) -> (-(d1 * -16 + d2), d2)>(%c8, %51, %rank_29)
        %rank_55 = tensor.rank %18 : tensor<11x2xi32>
        %splat_56 = tensor.splat %cst_4 : tensor<2x11x11xf32>
        %256 = arith.divf %cst_3, %in : f16
        %257 = math.sqrt %3 : tensor<4xf16>
        %258 = math.log %splat_56 : tensor<2x11x11xf32>
        %259 = vector.broadcast %extracted : f32 to vector<4xf32>
        %260 = vector.fma %259, %136, %259 : vector<4xf32>
        %261 = math.tanh %5 : tensor<4xf16>
        %alloca_57 = memref.alloca() : memref<2x11x11xi16>
        %262 = arith.mulf %cst_4, %extracted : f32
        %263 = affine.max affine_map<(d0) -> (d0 mod 64 + d0 + 8, (-((d0 * 2) floordiv 32)) floordiv 32, ((d0 * 2) floordiv 32 + d0 * 2) floordiv 32, d0 * 2)>(%51)
        %alloc_58 = memref.alloc() : memref<4xi1>
        %264 = vector.broadcast %c1489009748_i32 : i32 to vector<2x11xi32>
        %265 = vector.gather %alloc_58[%123] [%264], %166, %166 : memref<4xi1>, vector<2x11xi32>, vector<2x11xi1>, vector<2x11xi1> into vector<2x11xi1>
        %expanded_59 = tensor.expand_shape %from_elements_33 [[0, 1]] : tensor<4xi1> into tensor<4x1xi1>
        %266 = arith.maxf %in_54, %cst_23 : f16
        %267 = vector.broadcast %cst_4 : f32 to vector<2x11xf32>
        %268 = vector.fma %267, %267, %267 : vector<2x11xf32>
        %dest_60, %accumulated_value_61 = vector.scan <minsi>, %265, %72 {inclusive = true, reduction_dim = 1 : i64} : vector<2x11xi1>, vector<2xi1>
        %269 = arith.maxui %c1_i64, %c1_i64 : i64
        %270 = math.absi %true_22 : i1
        %splat_62 = tensor.splat %cst_3 : tensor<4xf16>
        %271 = math.log %5 : tensor<4xf16>
        %272 = vector.load %alloc_19[%c3] : memref<4xf16>, vector<2x11xf16>
        %273 = arith.remsi %c913_i16, %c913_i16 : i16
        %274 = vector.broadcast %c1489009748_i32 : i32 to vector<4xi32>
        %275 = vector.gather %alloc_17[%rank_31, %c6, %57] [%274], %95, %94 : memref<2x11x11xi64>, vector<4xi32>, vector<4xi1>, vector<4xi64> into vector<4xi64>
        %276 = vector.bitcast %259 : vector<4xf32> to vector<4xf32>
        %false_63 = index.bool.constant false
        %277 = math.round %0 : tensor<2x11x11xf32>
        %extracted_64 = tensor.extract %from_elements[%c0, %c0] : tensor<2x11xi16>
        %278 = math.log %21 : tensor<f16>
        %279 = arith.andi %164, %c13047_i16 : i16
        %280 = math.log10 %10 : tensor<4xf32>
        affine.store %c13047_i16, %199[%c14, %c12, %c10] : memref<2x11x11xi16>
        %cst_65 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_65 : f16
      }
    memref.alloca_scope  {
      %255 = math.cos %cst_4 : f32
      %256 = index.ceildivs %rank_31, %c0
      %c0_i16 = arith.constant 0 : i16
      %257 = vector.transfer_read %4[%84], %c0_i16 : tensor<4xi16>, vector<i16>
      %258 = arith.remf %cst_4, %extracted : f32
      %259 = index.ceildivs %c6, %52
      %260 = vector.matrix_multiply %19, %136 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
      %261 = arith.negf %cst_23 : f16
      %262 = memref.realloc %alloc_21 : memref<4xf16> to memref<4xf16>
      %263 = memref.load %alloc_20[] : memref<f16>
      %264 = math.ctlz %false : i1
      %265 = index.divs %45, %rank
      %266 = vector.broadcast %extracted : f32 to vector<4xf32>
      %267 = vector.fma %266, %136, %266 : vector<4xf32>
      %268 = index.mul %rank, %c14
      %rank_53 = tensor.rank %107 : tensor<4xi32>
      %269 = math.round %cst_23 : f16
      %dest_54, %accumulated_value_55 = vector.scan <maxsi>, %59, %166 {inclusive = false, reduction_dim = 2 : i64} : vector<2x11x11xi1>, vector<2x11xi1>
      %270 = arith.negf %cst_0 : f16
      %271 = vector.multi_reduction <add>, %167, %168 [] : vector<2xf16> to vector<2xf16>
      %272 = math.log2 %14 : tensor<2x11xf16>
      memref.tensor_store %111, %alloc_17 : memref<2x11x11xi64>
      %273 = affine.min affine_map<(d0, d1, d2) -> ((d1 mod 32) * -8, d1 - (d1 mod 32) * 8 + 64)>(%52, %c2, %123)
      memref.assume_alignment %112, 2 : memref<2x11xf16>
      %274 = index.maxu %142, %rank_53
      %275 = vector.extract %167[0] : vector<2xf16>
      %276 = math.log2 %201 : tensor<2x11xf16>
      %277 = arith.divf %cst_4, %cst_4 : f32
      %278 = vector.broadcast %cst_1 : f32 to vector<11xf32>
      %dest_56, %accumulated_value_57 = vector.scan <mul>, %104, %278 {inclusive = true, reduction_dim = 0 : i64} : vector<4x11xf32>, vector<11xf32>
      %279 = arith.remf %extracted, %extracted : f32
      %280 = vector.broadcast %cst_0 : f16 to vector<11xf16>
      %281 = vector.transfer_write %280, %1[%c15, %185] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<11xf16>, tensor<2x11xf16>
      scf.if %true_22 {
        %285 = memref.atomic_rmw mulf %cst, %alloc_19[%c3] : (f16, memref<4xf16>) -> f16
        %286 = vector.reduction <minf>, %167 : vector<2xf16> into f16
        %cst_58 = arith.constant 1.000000e+00 : f16
        %cst_59 = arith.constant 0.000000e+00 : f16
        %287 = vector.transfer_read %alloc_16[%52, %c4], %cst_59 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<2x11xf16>, vector<4xf16>
        %288 = arith.maxf %cst_58, %cst_0 : f16
        %289 = index.casts %c0_i16 : i16 to index
        %290 = vector.broadcast %137 : i64 to vector<i64>
        %291 = vector.transfer_write %290, %2[%c15] : vector<i64>, tensor<4xi64>
        %292 = vector.insert %cst_3, %167 [0] : f16 into vector<2xf16>
        %293 = index.ceildivu %152, %268
      }
      %282 = vector.broadcast %c361752391_i64 : i64 to vector<11xi64>
      %283 = vector.transfer_write %282, %11[%rank_31, %51, %c1] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<11xi64>, tensor<2x11x11xi64>
      %284 = index.ceildivs %c6, %84
    }
    %202 = math.ceil %12 : tensor<4xf16>
    bufferization.dealloc_tensor %14 : tensor<2x11xf16>
    %203 = tensor.empty() : tensor<2x11xi32>
    %mapped_40 = linalg.map ins(%15, %alloc_18, %alloc : tensor<2x11xi32>, memref<2x11xi32>, memref<2x11xi32>) outs(%203 : tensor<2x11xi32>)
      (%in: i32, %in_53: i32, %in_54: i32) {
        %255 = scf.while (%arg1 = %alloc_5) : (memref<2x11x11xi32>) -> memref<2x11x11xi32> {
          %expanded_56 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<2x11xf16> into tensor<2x11x1xf16>
          %285 = arith.muli %c361752391_i64, %c1745170826_i64 : i64
          %286 = affine.max affine_map<(d0, d1) -> (d1 mod 64 + 4, d1 mod 64)>(%c12, %185)
          %287 = tensor.empty() : tensor<2x11x11xf16>
          %false_57 = index.bool.constant false
          %288 = math.log2 %cst_1 : f32
          %289 = arith.shli %false, %true : i1
          %290 = math.exp %21 : tensor<f16>
          scf.condition(%false_57) %arg1 : memref<2x11x11xi32>
        } do {
        ^bb0(%arg1: memref<2x11x11xi32>):
          %285 = math.absi %11 : tensor<2x11x11xi64>
          %286 = math.ipowi %in_54, %in_54 : i32
          %287 = arith.shrsi %c361752391_i64, %c361752391_i64 : i64
          %cast_56 = tensor.cast %4 : tensor<4xi16> to tensor<?xi16>
          %288 = vector.matrix_multiply %116, %116 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
          %289 = math.log10 %3 : tensor<4xf16>
          %290 = index.add %c11, %c9
          %291 = vector.broadcast %c1745170826_i64 : i64 to vector<12x12xi64>
          %292 = vector.transfer_write %291, %111[%c14, %c11, %185] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<12x12xi64>, tensor<2x11x11xi64>
          %293 = index.divs %170, %c5
          %cst_57 = arith.constant 1.000000e+00 : f32
          %294 = vector.transfer_read %0[%c0, %113, %118], %cst_57 : tensor<2x11x11xf32>, vector<4xf32>
          %295 = vector.broadcast %c11 : index to vector<11xindex>
          %296 = vector.broadcast %182 : i1 to vector<11xi1>
          %297 = vector.broadcast %in : i32 to vector<11xi32>
          vector.scatter %82[%c1, %c6] [%295], %296, %297 : memref<2x11xi32>, vector<11xindex>, vector<11xi1>, vector<11xi32>
          %298 = index.casts %198 : index to i32
          %299 = vector.broadcast %cst_0 : f16 to vector<2x11x11xf16>
          %300 = math.log %5 : tensor<4xf16>
          %301 = vector.matrix_multiply %288, %288 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
          %302 = vector.insertelement %c1745170826_i64, %96[%c8 : index] : vector<4xi64>
          scf.yield %alloc_5 : memref<2x11x11xi32>
        }
        %256 = vector.broadcast %c361752391_i64 : i64 to vector<i64>
        vector.transfer_write %256, %165[%153] : vector<i64>, memref<4xi64>
        %257 = tensor.empty(%70) : tensor<?x11xi16>
        %258 = vector.flat_transpose %95 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
        %259 = math.roundeven %12 : tensor<4xf16>
        %260 = arith.cmpi slt, %true_26, %false : i1
        %261 = arith.addf %cst_3, %cst_23 : f16
        %262 = math.absi %111 : tensor<2x11x11xi64>
        %263 = arith.cmpi ult, %c540632740_i32, %in : i32
        %264 = math.powf %21, %21 : tensor<f16>
        %265 = index.ceildivu %rank_31, %c2
        %266 = arith.divf %cst_3, %cst_23 : f16
        %267 = math.ctpop %6 : tensor<4xi64>
        %268 = math.ctpop %8 : tensor<2x11xi1>
        %269 = arith.shrui %true_2, %true_27 : i1
        %270 = vector.matrix_multiply %96, %178 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi64>, vector<4xi64>) -> vector<1xi64>
        %271 = vector.broadcast %cst_1 : f32 to vector<11xf32>
        %272 = vector.transfer_write %271, %0[%c11, %c6, %153] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<11xf32>, tensor<2x11x11xf32>
        %273 = arith.addf %cst_3, %cst_23 : f16
        memref.alloca_scope  {
          %285 = index.castu %133 : index to i32
          %286 = math.exp %201 : tensor<2x11xf16>
          %287 = math.log2 %extracted : f32
          %288 = index.castu %c1_i64 : i64 to index
          %289 = math.cos %0 : tensor<2x11x11xf32>
          %290 = vector.broadcast %cst_23 : f16 to vector<2x11x11xf16>
          %291 = vector.gather %112[%57, %152] [%180], %69, %290 : memref<2x11xf16>, vector<2x11x11xi32>, vector<2x11x11xi1>, vector<2x11x11xf16> into vector<2x11x11xf16>
          %292 = memref.atomic_rmw addf %cst_23, %alloc_12[%c0, %c10] : (f16, memref<2x11xf16>) -> f16
          %293 = math.tan %201 : tensor<2x11xf16>
          %294 = vector.broadcast %c361752391_i64 : i64 to vector<11x11xi64>
          %dest_56, %accumulated_value_57 = vector.scan <maxsi>, %48, %294 {inclusive = true, reduction_dim = 0 : i64} : vector<2x11x11xi64>, vector<11x11xi64>
          %from_elements_58 = tensor.from_elements %cst_3, %cst_0, %cst, %cst_0 : tensor<4xf16>
          %true_59 = index.bool.constant true
          %295 = index.sizeof
          %296 = index.divs %c6, %84
          %false_60 = index.bool.constant false
          %297 = math.exp %17 : tensor<2x11x11xf32>
          %298 = math.exp %201 : tensor<2x11xf16>
          %299 = arith.andi %true_59, %182 : i1
          %300 = memref.realloc %alloc_8 : memref<4xf32> to memref<4xf32>
          %301 = arith.shrui %c1489009748_i32, %c1489009748_i32 : i32
          %302 = vector.broadcast %c1489009748_i32 : i32 to vector<4xi32>
          %303 = vector.gather %alloc_7[%c9] [%302], %258, %96 : memref<4xi64>, vector<4xi32>, vector<4xi1>, vector<4xi64> into vector<4xi64>
          %304 = math.log10 %20 : tensor<f16>
          %305 = arith.negf %cst_0 : f16
          %306 = arith.maxsi %false, %true_27 : i1
          %307 = arith.cmpf ord, %cst_1, %cst_1 : f32
          %308 = math.cttz %true_27 : i1
          %309 = arith.mulf %extracted, %cst_4 : f32
          %310 = math.log2 %3 : tensor<4xf16>
          %311 = vector.matrix_multiply %167, %168 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf16>, vector<2xf16>) -> vector<1xf16>
          affine.store %cst_0, %alloc_16[%c11, %c11] : memref<2x11xf16>
          %splat_61 = tensor.splat %c1600468613_i32 : tensor<2x11xi32>
          %312 = affine.min affine_map<(d0) -> (-((d0 * 2) ceildiv 16), (d0 - (d0 * 2) ceildiv 16) mod 4)>(%60)
          %313 = vector.multi_reduction <minui>, %116, %115 [] : vector<4xi16> to vector<4xi16>
        }
        %274 = memref.atomic_rmw maxs %c361752391_i64, %alloc_11[%c3] : (i64, memref<4xi64>) -> i64
        %275 = scf.execute_region -> memref<4xi16> {
          %285 = math.floor %extracted : f32
          %286 = index.castu %c15 : index to i32
          %extracted_56 = tensor.extract %3[%c2] : tensor<4xf16>
          %287 = math.absi %15 : tensor<2x11xi32>
          memref.store %cst, %alloc_20[] : memref<f16>
          %true_57 = index.bool.constant true
          %288 = vector.broadcast %cst : f16 to vector<11xf16>
          vector.transfer_write %288, %alloc_6[%c10, %134] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<11xf16>, memref<2x11xf16>
          %289 = math.fpowi %1, %203 : tensor<2x11xf16>, tensor<2x11xi32>
          %290 = vector.insert %271, %104 [3] : vector<11xf32> into vector<4x11xf32>
          %291 = vector.flat_transpose %115 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
          %292 = vector.multi_reduction <add>, %136, %extracted [0] : vector<4xf32> to f32
          %293 = vector.broadcast %in : i32 to vector<2x11x11xi32>
          %294 = arith.maxui %c418092245_i32, %c1600468613_i32 : i32
          %295 = bufferization.to_memref %2 : memref<4xi64>
          %296 = math.cos %201 : tensor<2x11xf16>
          %297 = vector.load %alloc_15[%c1] : memref<4xi32>, vector<4xi32>
          %alloc_58 = memref.alloc() : memref<4xi16>
          scf.yield %alloc_58 : memref<4xi16>
        }
        affine.for %arg1 = 0 to 61 {
        }
        %276 = memref.load %alloc_15[%c2] : memref<4xi32>
        %277 = math.atan %cst : f16
        %278 = index.divs %c9, %113
        %279 = math.sqrt %14 : tensor<2x11xf16>
        %280 = vector.broadcast %cst_3 : f16 to vector<4xf16>
        %281 = vector.maskedload %alloc_6[%c0, %c5], %95, %280 : memref<2x11xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
        affine.store %cst, %174[%c1, %c5] : memref<2x11xf16>
        %282 = arith.remf %extracted, %cst_1 : f32
        %283 = math.absi %11 : tensor<2x11x11xi64>
        %284 = math.atan %0 : tensor<2x11x11xf32>
        %false_55 = index.bool.constant false
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %204 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%7 : tensor<2x11x11xi64>) {
    ^bb0(%out: i64):
      scf.if %true {
        %282 = vector.transpose %71, [0] : vector<2xf32> to vector<2xf32>
        %283 = arith.negf %cst_0 : f16
        %284 = arith.shrui %137, %137 : i64
        %285 = math.ctpop %147 : tensor<2x12xi16>
        %286 = arith.remf %cst_3, %cst_3 : f16
        %287 = vector.broadcast %cst_1 : f32 to vector<4xf32>
        %288 = arith.maxsi %false, %true_26 : i1
        %289 = arith.negf %cst : f16
      } else {
        %282 = affine.apply affine_map<(d0, d1) -> (d1)>(%57, %198)
        %283 = vector.broadcast %c418092245_i32 : i32 to vector<4xi32>
        %284 = vector.gather %68[%c5, %c9, %177] [%283], %95, %19 : memref<2x11x11xf32>, vector<4xi32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
        %rank_57 = tensor.rank %2 : tensor<4xi64>
        %285 = vector.broadcast %cst_1 : f32 to vector<4xf32>
        %286 = vector.fma %285, %53, %284 : vector<4xf32>
        %287 = math.tanh %20 : tensor<f16>
        %alloc_58 = memref.alloc() : memref<4xf16>
        %288 = math.tanh %3 : tensor<4xf16>
        %289 = vector.broadcast %52 : index to vector<4xindex>
        vector.scatter %68[%c1, %c7, %c9] [%289], %95, %53 : memref<2x11x11xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
      }
      %255 = vector.matrix_multiply %119, %168 {lhs_columns = 1 : i32, lhs_rows = 11 : i32, rhs_columns = 2 : i32} : (vector<11xf16>, vector<2xf16>) -> vector<22xf16>
      memref.copy %alloc_6, %alloc_12 : memref<2x11xf16> to memref<2x11xf16>
      %256 = vector.transpose %72, [0] : vector<2xi1> to vector<2xi1>
      %257 = memref.realloc %165 : memref<4xi64> to memref<12xi64>
      %258 = index.ceildivs %198, %c3
      %259 = arith.negf %cst_3 : f16
      %260 = vector.insertelement %cst_1, %73[%c9 : index] : vector<2xf32>
      memref.assume_alignment %68, 8 : memref<2x11x11xf32>
      %rank_53 = tensor.rank %14 : tensor<2x11xf16>
      %261 = affine.min affine_map<(d0, d1, d2) -> (d0, -(d0 + 16))>(%133, %142, %c8)
      %262 = vector.broadcast %extracted : f32 to vector<2x11x11xf32>
      %263 = vector.fma %262, %162, %262 : vector<2x11x11xf32>
      %264 = tensor.empty() : tensor<2x11xi1>
      %mapped_54 = linalg.map ins(%8, %splat_37 : tensor<2x11xi1>, tensor<2x11xi1>) outs(%264 : tensor<2x11xi1>)
        (%in: i1, %in_57: i1) {
          %dest_58, %accumulated_value_59 = vector.scan <minsi>, %69, %166 {inclusive = false, reduction_dim = 1 : i64} : vector<2x11x11xi1>, vector<2x11xi1>
          %282 = math.exp %1 : tensor<2x11xf16>
          %283 = index.sub %c3, %c5
          memref.assume_alignment %81, 16 : memref<f16>
          %cast_60 = tensor.cast %6 : tensor<4xi64> to tensor<?xi64>
          %284 = index.sizeof
          %285 = index.castu %true_26 : i1 to index
          %286 = vector.load %alloc_13[%c1, %c2] : memref<2x11xi64>, vector<2x11x11xi64>
          %287 = math.sqrt %10 : tensor<4xf32>
          %288 = arith.shrui %true_2, %in_57 : i1
          %289 = index.mul %c4, %70
          %290 = vector.reduction <and>, %64 : vector<12xi1> into i1
          %291 = math.absi %c1600468613_i32 : i32
          %292 = vector.broadcast %cst_4 : f32 to vector<2x11xf32>
          %dest_61, %accumulated_value_62 = vector.scan <minf>, %263, %292 {inclusive = false, reduction_dim = 1 : i64} : vector<2x11x11xf32>, vector<2x11xf32>
          %true_63 = index.bool.constant true
          %dest_64, %accumulated_value_65 = vector.scan <minui>, %166, %72 {inclusive = true, reduction_dim = 1 : i64} : vector<2x11xi1>, vector<2xi1>
          %293 = vector.broadcast %extracted : f32 to vector<4xf32>
          %294 = vector.fma %293, %53, %53 : vector<4xf32>
          %295 = vector.create_mask %c13 : vector<4xi1>
          %296 = vector.broadcast %cst_1 : f32 to vector<11x11xf32>
          %dest_66, %accumulated_value_67 = vector.scan <mul>, %262, %296 {inclusive = false, reduction_dim = 0 : i64} : vector<2x11x11xf32>, vector<11x11xf32>
          %297 = bufferization.clone %alloc_17 : memref<2x11x11xi64> to memref<2x11x11xi64>
          %298 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 floordiv 32)>(%60, %rank_53, %289, %118)
          %299 = vector.extract_strided_slice %295 {offsets = [0], sizes = [2], strides = [1]} : vector<4xi1> to vector<2xi1>
          %300 = math.ctpop %true_2 : i1
          %alloca_68 = memref.alloca() : memref<4xi1>
          %301 = index.maxu %c15, %45
          %302 = arith.muli %c1489009748_i32, %c540632740_i32 : i32
          %303 = tensor.empty(%298, %c4) : tensor<2x?x?xf16>
          %304 = math.sqrt %12 : tensor<4xf16>
          %305 = affine.max affine_map<(d0, d1, d2) -> (0, d2, (d1 ceildiv 4) floordiv 32 + 2, d1)>(%52, %301, %rank_31)
          %306 = math.ceil %0 : tensor<2x11x11xf32>
          %cast_69 = tensor.cast %2 : tensor<4xi64> to tensor<?xi64>
          %cast_70 = tensor.cast %5 : tensor<4xf16> to tensor<?xf16>
          %false_71 = arith.constant false
          linalg.yield %false_71 : i1
        }
      scf.if %true_26 {
        %expanded_57 = tensor.expand_shape %5 [[0, 1]] : tensor<4xf16> into tensor<4x1xf16>
        %c553341621_i64 = arith.constant 553341621 : i64
        %282 = arith.cmpi sge, %c13047_i16, %c913_i16 : i16
        %283 = arith.maxui %false, %false : i1
        %284 = math.cos %5 : tensor<4xf16>
        %rank_58 = tensor.rank %1 : tensor<2x11xf16>
        %285 = vector.shuffle %119, %255 [1, 2, 3, 5, 6, 8, 9, 10, 13, 14, 17, 18, 21, 23, 24, 26, 28, 29, 30, 31] : vector<11xf16>, vector<22xf16>
        %286 = math.log1p %12 : tensor<4xf16>
      }
      %265 = vector.load %alloc_14[%c0, %c10, %c9] : memref<2x11x11xi16>, vector<4xi16>
      %266 = math.ctlz %from_elements_33 : tensor<4xi1>
      %267 = arith.negf %cst_23 : f16
      %268 = math.ctlz %11 : tensor<2x11x11xi64>
      %alloc_55 = memref.alloc() : memref<4xi1>
      %269 = memref.alloca_scope  -> (i32) {
        %cst_57 = arith.constant 2.704000e+04 : f16
        %282 = math.cos %extracted : f32
        %283 = index.maxs %c10, %52
        %inserted_58 = tensor.insert %cst_1 into %0[%c1, %c10, %c5] : tensor<2x11x11xf32>
        %284 = arith.shrui %out, %c361752391_i64 : i64
        %285 = vector.bitcast %104 : vector<4x11xf32> to vector<4x11xf32>
        %rank_59 = tensor.rank %0 : tensor<2x11x11xf32>
        %286 = vector.load %alloc[%c0, %c10] : memref<2x11xi32>, vector<2x11x11xi32>
        %287 = math.atan %cst : f16
        %288 = arith.divf %cst, %cst_3 : f16
        %289 = arith.mulf %cst_23, %cst_0 : f16
        affine.store %c361752391_i64, %165[%c10] : memref<4xi64>
        %290 = vector.load %alloc_10[%c1, %c1, %c9] : memref<2x11x11xi16>, vector<2x11xi16>
        %291 = vector.splat %197 : vector<4xindex>
        %292 = math.sqrt %12 : tensor<4xf16>
        memref.assume_alignment %alloc_19, 4 : memref<4xf16>
        %293 = math.ceil %14 : tensor<2x11xf16>
        %from_elements_60 = tensor.from_elements %182, %182, %false, %true_27, %true_2, %true_26, %182, %182, %true_22, %182, %true_22, %182, %true_2, %true_27, %182, %true, %false, %true_2, %182, %true_27, %182, %false, %false, %false, %182, %182, %false, %true, %true_22, %true_26, %182, %true_27, %true, %true_26, %true_2, %false, %182, %182, %true_27, %false, %true, %true_22, %true_27, %true_22, %false, %true_26, %true_22, %182, %true, %true_2, %true_26, %true_27, %true, %182, %true_26, %true_27, %true, %true_27, %182, %true, %true_2, %true_22, %false, %true_2, %true_2, %true_27, %true_2, %false, %false, %true_27, %true_22, %false, %true, %true_27, %true, %true_22, %true_26, %true_27, %182, %false, %false, %true_26, %true_2, %false, %true_2, %false, %true_26, %true_2, %false, %true_26, %false, %true_2, %true_2, %true_2, %false, %182, %false, %true_2, %true_27, %true_2, %true_2, %182, %true_27, %182, %true, %true_22, %true_2, %true_22, %false, %true_26, %true, %false, %true, %true_2, %true, %false, %182, %true_26, %true, %true_22, %true_27, %false, %true_27, %true_26, %true_26, %true, %true_22, %false, %false, %true_26, %true, %182, %true, %true, %false, %true_22, %true_22, %false, %true_22, %true, %true_26, %true_22, %true_26, %true_22, %false, %true_22, %true_2, %true_26, %true_22, %true_22, %true_22, %true_26, %true_27, %true_27, %true_2, %true_27, %182, %true_26, %182, %182, %true_2, %true_2, %true_26, %182, %true_27, %182, %false, %true_26, %true_2, %true_22, %false, %true_22, %true_27, %true_22, %true, %true_22, %true_22, %true_26, %true_27, %false, %true_27, %false, %true_26, %182, %true, %true_2, %true, %true_22, %true_26, %true_27, %true_2, %true_26, %false, %true_22, %true_2, %true_27, %true_27, %true, %true_2, %true_22, %true_27, %true_22, %false, %true_27, %true_26, %false, %182, %true_2, %true_27, %false, %true_27, %true_26, %true_26, %true, %true_2, %true_27, %true, %182, %true_26, %182, %true_22, %false, %true, %true_26, %true_2, %false, %182, %false, %true_27, %true_27, %false, %182, %true_22, %true_22, %true_27, %true, %true_22, %182, %182, %182, %false, %true_27 : tensor<2x11x11xi1>
        %294 = vector.flat_transpose %265 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %295 = arith.shli %c1489009748_i32, %c1600468613_i32 : i32
        %296 = math.floor %3 : tensor<4xf16>
        %alloca_61 = memref.alloca() : memref<4xf16>
        %297 = vector.broadcast %164 : i16 to vector<i16>
        %298 = vector.transfer_write %297, %13[%261] : vector<i16>, tensor<4xi16>
        %299 = math.cos %10 : tensor<4xf32>
        %cast_62 = tensor.cast %5 : tensor<4xf16> to tensor<?xf16>
        %300 = vector.broadcast %cst : f16 to vector<f16>
        vector.transfer_write %300, %alloc_21[%c14] : vector<f16>, memref<4xf16>
        %301 = math.floor %cst_4 : f32
        %302 = vector.matrix_multiply %115, %116 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
        %303 = arith.divsi %182, %true_2 : i1
        %304 = vector.create_mask %154 : vector<4xi1>
        memref.copy %alloc_9, %alloc_14 : memref<2x11x11xi16> to memref<2x11x11xi16>
        %305 = index.ceildivs %123, %45
        memref.alloca_scope.return %c540632740_i32 : i32
      }
      %270 = math.cos %1 : tensor<2x11xf16>
      %271 = arith.addi %164, %c13047_i16 : i16
      %272 = vector.load %alloc_11[%c0] : memref<4xi64>, vector<4xi64>
      %273 = math.ctpop %182 : i1
      %274 = vector.transpose %43, [] : vector<i16> to vector<i16>
      %275 = affine.min affine_map<(d0, d1, d2, d3) -> ((d1 mod 4) ceildiv 2, d0, d3 + (d0 floordiv 32) mod 2 + d2, (d1 mod 4) floordiv 32)>(%170, %113, %142, %c14)
      %276 = arith.remui %true, %true_22 : i1
      %277 = vector.broadcast %c361752391_i64 : i64 to vector<i64>
      vector.transfer_write %277, %165[%c7] : vector<i64>, memref<4xi64>
      %278 = vector.broadcast %cst_4 : f32 to vector<11x4xf32>
      %279 = vector.transfer_write %278, %17[%60, %153, %60] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<11x4xf32>, tensor<2x11x11xf32>
      %280 = arith.shli %true_2, %true_27 : i1
      %281 = index.ceildivu %c2, %c5
      %alloca_56 = memref.alloca() : memref<2x11xf16>
      linalg.yield %137 : i64
    } -> tensor<2x11x11xi64>
    %expanded_41 = tensor.expand_shape %6 [[0, 1]] : tensor<4xi64> into tensor<4x1xi64>
    %205 = arith.muli %164, %c913_i16 : i16
    %206 = math.log %20 : tensor<f16>
    %expanded_42 = tensor.expand_shape %4 [[0, 1]] : tensor<4xi16> into tensor<4x1xi16>
    %207 = vector.broadcast %c361752391_i64 : i64 to vector<11x11xi64>
    %208 = vector.multi_reduction <maxui>, %24, %207 [0] : vector<2x11x11xi64> to vector<11x11xi64>
    affine.for %arg1 = 0 to 111 {
    }
    %209 = math.atan %cst_3 : f16
    %210 = arith.ori %true_2, %true_26 : i1
    %211 = memref.load %81[] : memref<f16>
    %from_elements_43 = tensor.from_elements %c1489009748_i32, %c1489009748_i32, %c418092245_i32, %c418092245_i32, %c540632740_i32, %c540632740_i32, %c1600468613_i32, %c1489009748_i32, %c418092245_i32, %c1600468613_i32, %c540632740_i32, %c1489009748_i32, %c1600468613_i32, %c540632740_i32, %c1489009748_i32, %c1489009748_i32, %c540632740_i32, %c418092245_i32, %c418092245_i32, %c1600468613_i32, %c418092245_i32, %c1489009748_i32, %c540632740_i32, %c1489009748_i32, %c418092245_i32, %c540632740_i32, %c418092245_i32, %c540632740_i32, %c418092245_i32, %c540632740_i32, %c540632740_i32, %c418092245_i32, %c1489009748_i32, %c540632740_i32, %c1489009748_i32, %c540632740_i32, %c1600468613_i32, %c1600468613_i32, %c1489009748_i32, %c1489009748_i32, %c540632740_i32, %c1489009748_i32, %c540632740_i32, %c1600468613_i32, %c1489009748_i32, %c1489009748_i32, %c1489009748_i32, %c1600468613_i32, %c418092245_i32, %c418092245_i32, %c1600468613_i32, %c1600468613_i32, %c1600468613_i32, %c418092245_i32, %c1489009748_i32, %c540632740_i32, %c418092245_i32, %c1600468613_i32, %c418092245_i32, %c540632740_i32, %c418092245_i32, %c1600468613_i32, %c1600468613_i32, %c418092245_i32, %c540632740_i32, %c418092245_i32, %c418092245_i32, %c540632740_i32, %c1600468613_i32, %c1489009748_i32, %c540632740_i32, %c1489009748_i32, %c540632740_i32, %c418092245_i32, %c418092245_i32, %c540632740_i32, %c540632740_i32, %c418092245_i32, %c540632740_i32, %c540632740_i32, %c1489009748_i32, %c540632740_i32, %c1489009748_i32, %c1600468613_i32, %c418092245_i32, %c1600468613_i32, %c1600468613_i32, %c418092245_i32, %c418092245_i32, %c1489009748_i32, %c1489009748_i32, %c1489009748_i32, %c540632740_i32, %c1489009748_i32, %c418092245_i32, %c1489009748_i32, %c1489009748_i32, %c540632740_i32, %c1600468613_i32, %c1600468613_i32, %c1600468613_i32, %c1489009748_i32, %c540632740_i32, %c418092245_i32, %c418092245_i32, %c1600468613_i32, %c1600468613_i32, %c418092245_i32, %c1489009748_i32, %c540632740_i32, %c1600468613_i32, %c540632740_i32, %c418092245_i32, %c1600468613_i32, %c540632740_i32, %c418092245_i32, %c1489009748_i32, %c418092245_i32, %c1600468613_i32, %c1600468613_i32, %c418092245_i32, %c1600468613_i32, %c1489009748_i32, %c1489009748_i32, %c1489009748_i32, %c1600468613_i32, %c418092245_i32, %c418092245_i32, %c540632740_i32, %c1489009748_i32, %c418092245_i32, %c418092245_i32, %c1600468613_i32, %c418092245_i32, %c1600468613_i32, %c1489009748_i32, %c1600468613_i32, %c540632740_i32, %c1489009748_i32, %c1489009748_i32, %c418092245_i32, %c1600468613_i32, %c418092245_i32, %c1600468613_i32, %c540632740_i32, %c1489009748_i32, %c540632740_i32, %c540632740_i32, %c540632740_i32, %c418092245_i32, %c1489009748_i32, %c540632740_i32, %c540632740_i32, %c1600468613_i32, %c1600468613_i32, %c540632740_i32, %c540632740_i32, %c1489009748_i32, %c1489009748_i32, %c540632740_i32, %c418092245_i32, %c1600468613_i32, %c1600468613_i32, %c418092245_i32, %c1600468613_i32, %c1489009748_i32, %c418092245_i32, %c418092245_i32, %c1489009748_i32, %c1489009748_i32, %c1600468613_i32, %c1489009748_i32, %c1489009748_i32, %c418092245_i32, %c1600468613_i32, %c1489009748_i32, %c1489009748_i32, %c1600468613_i32, %c1600468613_i32, %c418092245_i32, %c540632740_i32, %c1489009748_i32, %c1489009748_i32, %c418092245_i32, %c1600468613_i32, %c418092245_i32, %c418092245_i32, %c418092245_i32, %c418092245_i32, %c540632740_i32, %c1600468613_i32, %c540632740_i32, %c1489009748_i32, %c540632740_i32, %c1489009748_i32, %c1489009748_i32, %c418092245_i32, %c540632740_i32, %c418092245_i32, %c540632740_i32, %c540632740_i32, %c1489009748_i32, %c540632740_i32, %c540632740_i32, %c418092245_i32, %c1600468613_i32, %c1600468613_i32, %c1489009748_i32, %c1600468613_i32, %c540632740_i32, %c540632740_i32, %c1489009748_i32, %c1489009748_i32, %c1489009748_i32, %c1489009748_i32, %c1489009748_i32, %c1600468613_i32, %c1600468613_i32, %c540632740_i32, %c418092245_i32, %c418092245_i32, %c540632740_i32, %c1489009748_i32, %c1600468613_i32, %c418092245_i32, %c418092245_i32, %c1489009748_i32, %c540632740_i32, %c1600468613_i32, %c418092245_i32, %c540632740_i32, %c1600468613_i32, %c540632740_i32, %c1489009748_i32, %c418092245_i32, %c418092245_i32, %c1600468613_i32, %c1489009748_i32, %c1600468613_i32, %c418092245_i32, %c418092245_i32, %c1489009748_i32 : tensor<2x11x11xi32>
    %212 = math.tanh %extracted : f32
    %213 = vector.splat %false : vector<2x11xi1>
    %214 = index.mul %197, %c13
    %215 = arith.divsi %137, %137 : i64
    %216 = memref.alloca_scope  -> (memref<4xi32>) {
      %255 = vector.extract %119[6] : vector<11xf16>
      %256 = vector.broadcast %cst_4 : f32 to vector<2x11x11xf32>
      %257 = vector.fma %256, %162, %256 : vector<2x11x11xf32>
      %258 = vector.broadcast %true_27 : i1 to vector<11xi1>
      %259 = vector.insert %258, %166 [0] : vector<11xi1> into vector<2x11xi1>
      %260 = vector.broadcast %164 : i16 to vector<2x11xi16>
      %261 = vector.flat_transpose %22 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      %262 = index.sizeof
      bufferization.dealloc_tensor %12 : tensor<4xf16>
      %263 = vector.broadcast %cst : f16 to vector<f16>
      vector.transfer_write %263, %alloc_19[%185] : vector<f16>, memref<4xf16>
      %264 = affine.if affine_set<(d0, d1, d2, d3) : (d2 mod 2 + 128 >= 0, -(d0 mod 4) == 0, d2 mod 2 == 0)>(%c9, %c9, %c8, %c8) -> memref<2x11xi1> {
        %cast_55 = tensor.cast %from_elements : tensor<2x11xi16> to tensor<?x?xi16>
        %289 = vector.shuffle %256, %162 [0, 1, 2, 3] : vector<2x11x11xf32>, vector<2x11x11xf32>
        %290 = vector.extract %72[0] : vector<2xi1>
        %291 = index.divs %60, %177
        %292 = index.maxu %c0, %60
        %293 = tensor.empty() : tensor<1x11xi64>
        %294 = tensor.empty() : tensor<4x11xi64>
        %295 = linalg.matmul ins(%expanded_41, %293 : tensor<4x1xi64>, tensor<1x11xi64>) outs(%294 : tensor<4x11xi64>) -> tensor<4x11xi64>
        %296 = math.rsqrt %cst_1 : f32
        %297 = arith.cmpi sgt, %c1489009748_i32, %c540632740_i32 : i32
        %alloc_56 = memref.alloc() : memref<2x11xi1>
        affine.yield %alloc_56 : memref<2x11xi1>
      } else {
        %289 = index.ceildivs %177, %84
        %rank_55 = tensor.rank %8 : tensor<2x11xi1>
        %290 = memref.load %alloc_12[%c1, %c8] : memref<2x11xf16>
        %291 = index.ceildivs %c11, %152
        %292 = index.ceildivs %45, %123
        memref.assume_alignment %alloc_8, 8 : memref<4xf32>
        %293 = math.atan %cst_1 : f32
        %294 = vector.broadcast %cst_1 : f32 to vector<4xf32>
        %295 = vector.fma %294, %294, %53 : vector<4xf32>
        %alloc_56 = memref.alloc() : memref<2x11xi1>
        affine.yield %alloc_56 : memref<2x11xi1>
      }
      %265 = math.atan %extracted : f32
      %266 = vector.flat_transpose %168 {columns = 1 : i32, rows = 2 : i32} : vector<2xf16> -> vector<2xf16>
      %267 = memref.realloc %alloc_8 : memref<4xf32> to memref<2xf32>
      %rank_53 = tensor.rank %7 : tensor<2x11x11xi64>
      %268 = arith.subi %true, %true_27 : i1
      %269 = arith.maxui %c913_i16, %c13047_i16 : i16
      %270 = arith.ori %c361752391_i64, %137 : i64
      %271 = vector.flat_transpose %22 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      %272 = vector.matrix_multiply %96, %94 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi64>, vector<4xi64>) -> vector<1xi64>
      %273 = index.castu %84 : index to i32
      %274 = math.floor %14 : tensor<2x11xf16>
      %cast_54 = tensor.cast %14 : tensor<2x11xf16> to tensor<?x?xf16>
      %275 = vector.broadcast %c1745170826_i64 : i64 to vector<11x2x11xi64>
      %276 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d1, d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<or>} %207, %24, %275 : vector<11x11xi64>, vector<2x11x11xi64> into vector<11x2x11xi64>
      %277 = arith.negf %cst_23 : f16
      %278 = memref.load %199[%c0, %c8, %c0] : memref<2x11x11xi16>
      %279 = vector.broadcast %cst : f16 to vector<4xf16>
      %280 = vector.maskedload %alloc_19[%c2], %95, %279 : memref<4xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
      %281 = math.powf %16, %16 : tensor<2x11x11xf32>
      %282 = math.ctpop %splat : tensor<4xi32>
      %283 = vector.broadcast %cst : f16 to vector<f16>
      %284 = vector.transfer_write %283, %14[%198, %197] : vector<f16>, tensor<2x11xf16>
      %285 = index.divs %153, %113
      %286 = math.rsqrt %12 : tensor<4xf16>
      %287 = vector.extract %178[2] : vector<4xi64>
      %288 = arith.addf %cst_3, %cst_3 : f16
      memref.alloca_scope.return %alloc_15 : memref<4xi32>
    }
    %217 = math.atan2 %14, %14 : tensor<2x11xf16>
    %218 = index.ceildivu %134, %c5
    %219 = scf.execute_region -> f32 {
      %255 = index.ceildivu %c10, %154
      %256 = vector.broadcast %c418092245_i32 : i32 to vector<i32>
      %257 = vector.transfer_write %256, %107[%133] : vector<i32>, tensor<4xi32>
      %258 = index.ceildivu %70, %113
      %splat_53 = tensor.splat %true_26 : tensor<4xi1>
      %259 = memref.realloc %alloc_11 : memref<4xi64> to memref<11xi64>
      %true_54 = index.bool.constant true
      %260 = bufferization.clone %81 : memref<f16> to memref<f16>
      %261 = affine.if affine_set<(d0) : (0 == 0)>(%c15) -> i1 {
        %cast_55 = tensor.cast %transposed : tensor<11x2xi32> to tensor<?x?xi32>
        affine.store %c913_i16, %alloc_14[%c5, %c13, %c9] : memref<2x11x11xi16>
        %270 = arith.remsi %true, %true_2 : i1
        %271 = math.ceil %expanded : tensor<4x1xf16>
        %272 = arith.remf %cst, %cst_0 : f16
        %273 = math.exp2 %20 : tensor<f16>
        %alloca_56 = memref.alloca() : memref<2x11xi32>
        %274 = math.round %0 : tensor<2x11x11xf32>
        affine.yield %true_27 : i1
      } else {
        %true_55 = index.bool.constant true
        %extracted_56 = tensor.extract %6[%c0] : tensor<4xi64>
        %270 = arith.divf %cst_0, %cst_23 : f16
        %271 = index.sub %45, %154
        %272 = vector.broadcast %c361752391_i64 : i64 to vector<i64>
        %273 = vector.transfer_write %272, %expanded_41[%c9, %255] : vector<i64>, tensor<4x1xi64>
        %274 = math.fpowi %16, %from_elements_43 : tensor<2x11x11xf32>, tensor<2x11x11xi32>
        %275 = bufferization.to_tensor %alloc_9 : memref<2x11x11xi16>
        %276 = math.fpowi %0, %from_elements_43 : tensor<2x11x11xf32>, tensor<2x11x11xi32>
        affine.yield %false : i1
      }
      %262 = vector.broadcast %c1_i64 : i64 to vector<11xi64>
      %263 = vector.insert %262, %48 [0, 9] : vector<11xi64> into vector<2x11x11xi64>
      %264 = arith.ceildivsi %c1_i64, %c1745170826_i64 : i64
      %265 = arith.remsi %false, %true_26 : i1
      %266 = arith.maxsi %c1600468613_i32, %c1489009748_i32 : i32
      %267 = affine.max affine_map<(d0, d1) -> (d0 * 2 - 16, -d0, d0 + d0 * 2 - 16)>(%197, %70)
      affine.store %c913_i16, %alloc_9[%c6, %c14, %c0] : memref<2x11x11xi16>
      %268 = math.cos %5 : tensor<4xf16>
      %269 = math.log1p %1 : tensor<2x11xf16>
      scf.yield %cst_1 : f32
    }
    %220 = math.floor %3 : tensor<4xf16>
    %221 = arith.addi %c1_i64, %c1745170826_i64 : i64
    %222 = tensor.empty() : tensor<f16>
    %mapped_44 = linalg.map ins(%20 : tensor<f16>) outs(%222 : tensor<f16>)
      (%in: f16) {
        %255 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %168, %168, %cst_23 : vector<2xf16>, vector<2xf16> into f16
        %256 = affine.load %alloc_13[%c11, %c7] : memref<2x11xi64>
        scf.execute_region {
          %287 = tensor.empty() : tensor<1x4xf16>
          %288 = tensor.empty() : tensor<4x4xf16>
          %289 = linalg.matmul ins(%expanded, %287 : tensor<4x1xf16>, tensor<1x4xf16>) outs(%288 : tensor<4x4xf16>) -> tensor<4x4xf16>
          %cast_58 = tensor.cast %15 : tensor<2x11xi32> to tensor<?x?xi32>
          %290 = vector.broadcast %214 : index to vector<12xindex>
          %291 = vector.broadcast %c1745170826_i64 : i64 to vector<12xi64>
          vector.scatter %alloc_7[%c0] [%290], %64, %291 : memref<4xi64>, vector<12xindex>, vector<12xi1>, vector<12xi64>
          %292 = affine.max affine_map<(d0, d1, d2) -> (d2 + d2 ceildiv 2, d0 * 4)>(%133, %218, %c13)
          %293 = math.log2 %in : f16
          %294 = affine.min affine_map<(d0, d1) -> (d1, d0 * 4, d0 - 4)>(%154, %c3)
          %295 = index.sub %c4, %c15
          %296 = math.round %1 : tensor<2x11xf16>
          %297 = vector.bitcast %168 : vector<2xf16> to vector<2xf16>
          %splat_59 = tensor.splat %in : tensor<2x11xf16>
          %cast_60 = tensor.cast %10 : tensor<4xf32> to tensor<?xf32>
          %298 = memref.realloc %alloc_19 : memref<4xf16> to memref<2xf16>
          %from_elements_61 = tensor.from_elements %c13047_i16, %c13047_i16, %c913_i16, %c13047_i16, %c13047_i16, %164, %c13047_i16, %c13047_i16, %c13047_i16, %c913_i16, %c913_i16, %c13047_i16, %164, %c913_i16, %c913_i16, %164, %164, %c13047_i16, %c913_i16, %164, %c913_i16, %164, %c13047_i16, %c913_i16, %164, %c913_i16, %c13047_i16, %c913_i16, %164, %164, %c913_i16, %c13047_i16, %164, %164, %164, %c913_i16, %c913_i16, %c13047_i16, %c13047_i16, %c913_i16, %c13047_i16, %c13047_i16, %c913_i16, %c913_i16, %c13047_i16, %c913_i16, %c13047_i16, %c13047_i16, %164, %c13047_i16, %c913_i16, %c13047_i16, %c13047_i16, %c913_i16, %164, %c13047_i16, %c913_i16, %164, %c913_i16, %c13047_i16, %164, %164, %c13047_i16, %c913_i16, %164, %c913_i16, %c913_i16, %c913_i16, %c13047_i16, %c913_i16, %c13047_i16, %c13047_i16, %164, %c913_i16, %c13047_i16, %164, %c13047_i16, %c913_i16, %164, %164, %164, %164, %c913_i16, %164, %c913_i16, %c913_i16, %164, %c913_i16, %c13047_i16, %c913_i16, %164, %164, %164, %c913_i16, %c13047_i16, %c913_i16, %c13047_i16, %c13047_i16, %c13047_i16, %c13047_i16, %164, %164, %c13047_i16, %c913_i16, %164, %c913_i16, %c913_i16, %c913_i16, %c913_i16, %c13047_i16, %164, %164, %164, %c13047_i16, %164, %c913_i16, %164, %164, %c913_i16, %164, %164, %c13047_i16, %c913_i16, %c13047_i16, %c13047_i16, %c913_i16, %c913_i16, %164, %164, %164, %164, %c913_i16, %c13047_i16, %164, %c13047_i16, %c913_i16, %164, %c13047_i16, %c913_i16, %164, %c13047_i16, %c13047_i16, %c13047_i16, %c913_i16, %164, %c13047_i16, %c13047_i16, %164, %164, %c913_i16, %c913_i16, %c913_i16, %c13047_i16, %c913_i16, %c913_i16, %164, %c13047_i16, %c913_i16, %164, %164, %c13047_i16, %c913_i16, %164, %c913_i16, %c13047_i16, %c13047_i16, %164, %c913_i16, %c13047_i16, %c13047_i16, %c913_i16, %c13047_i16, %c913_i16, %c913_i16, %c913_i16, %c13047_i16, %c13047_i16, %164, %164, %c13047_i16, %c913_i16, %164, %164, %c13047_i16, %164, %164, %c13047_i16, %c913_i16, %164, %c13047_i16, %c913_i16, %c913_i16, %c913_i16, %c913_i16, %c913_i16, %c13047_i16, %c13047_i16, %c913_i16, %c13047_i16, %164, %c913_i16, %164, %164, %c913_i16, %c913_i16, %c13047_i16, %c13047_i16, %c13047_i16, %164, %c913_i16, %164, %c13047_i16, %c913_i16, %c913_i16, %164, %c913_i16, %c913_i16, %c913_i16, %c913_i16, %c13047_i16, %c913_i16, %164, %164, %164, %c913_i16, %c913_i16, %164, %c913_i16, %164, %164, %164, %c13047_i16, %164, %c13047_i16, %164, %c913_i16, %c13047_i16, %c13047_i16, %c913_i16, %c913_i16, %c13047_i16, %c13047_i16 : tensor<2x11x11xi16>
          %299 = index.sub %152, %218
          %300 = math.exp2 %0 : tensor<2x11x11xf32>
          memref.store %256, %alloc_11[%c0] : memref<4xi64>
          scf.yield
        }
        %257 = math.absi %9 : tensor<4xi16>
        %258 = math.ipowi %6, %2 : tensor<4xi64>
        %259 = vector.broadcast %c1600468613_i32 : i32 to vector<2x11xi32>
        %260 = vector.broadcast %rank_29 : index to vector<11xindex>
        %261 = vector.broadcast %182 : i1 to vector<11xi1>
        %262 = vector.broadcast %cst_4 : f32 to vector<11xf32>
        vector.scatter %68[%c0, %c7, %c1] [%260], %261, %262 : memref<2x11x11xf32>, vector<11xindex>, vector<11xi1>, vector<11xf32>
        %263 = math.ctlz %111 : tensor<2x11x11xi64>
        %264 = math.atan %cst_0 : f16
        %265 = math.ctpop %splat : tensor<4xi32>
        %266 = affine.if affine_set<(d0) : (-8 >= 0, (d0 ceildiv 16) mod 128 == 0)>(%c8) -> i64 {
          %287 = vector.extract_strided_slice %71 {offsets = [0], sizes = [2], strides = [1]} : vector<2xf32> to vector<2xf32>
          %288 = math.cttz %9 : tensor<4xi16>
          %cast_58 = tensor.cast %splat : tensor<4xi32> to tensor<?xi32>
          %alloc_59 = memref.alloc() : memref<2x11xf32>
          %289 = math.fpowi %219, %c418092245_i32 : f32, i32
          %290 = index.maxs %rank, %rank
          %291 = arith.subi %c540632740_i32, %c418092245_i32 : i32
          %292 = vector.multi_reduction <mul>, %287, %287 [] : vector<2xf32> to vector<2xf32>
          affine.yield %c1745170826_i64 : i64
        } else {
          %287 = math.ctpop %256 : i64
          %expanded_58 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<2x11xi32> into tensor<2x11x1xi32>
          %288 = vector.broadcast %c1_i64 : i64 to vector<2x11xi64>
          %dest_59, %accumulated_value_60 = vector.scan <minui>, %24, %288 {inclusive = true, reduction_dim = 2 : i64} : vector<2x11x11xi64>, vector<2x11xi64>
          %289 = vector.flat_transpose %96 {columns = 2 : i32, rows = 2 : i32} : vector<4xi64> -> vector<4xi64>
          %290 = index.divs %c11, %c4
          %291 = math.rsqrt %10 : tensor<4xf32>
          %splat_61 = tensor.splat %cst : tensor<4xf16>
          %292 = math.absi %c913_i16 : i16
          affine.yield %256 : i64
        }
        %267 = math.exp %16 : tensor<2x11x11xf32>
        %268 = vector.extract_strided_slice %59 {offsets = [0, 3], sizes = [2, 1], strides = [1, 1]} : vector<2x11x11xi1> to vector<2x1x11xi1>
        %269 = math.rsqrt %12 : tensor<4xf16>
        %270 = arith.shrui %c1_i64, %c1745170826_i64 : i64
        %271 = math.ctpop %c1_i64 : i64
        %272 = memref.atomic_rmw maxu %c1489009748_i32, %alloc_5[%c0, %c10, %c8] : (i32, memref<2x11x11xi32>) -> i32
        %273 = math.log10 %0 : tensor<2x11x11xf32>
        %274 = index.sub %153, %52
        %c1_i64_53 = arith.constant 1 : i64
        %c0_i64_54 = arith.constant 0 : i64
        %275 = vector.transfer_read %alloc_17[%274, %c13, %113], %c0_i64_54 {permutation_map = affine_map<(d0, d1, d2) -> (0, d1)>} : memref<2x11x11xi64>, vector<2x2xi64>
        %276 = math.log1p %201 : tensor<2x11xf16>
        %277 = math.cos %extracted : f32
        %278 = math.fpowi %1, %15 : tensor<2x11xf16>, tensor<2x11xi32>
        %279 = vector.broadcast %cst_3 : f16 to vector<12xf16>
        %280 = vector.maskedload %alloc_16[%c0, %c10], %64, %279 : memref<2x11xf16>, vector<12xi1>, vector<12xf16> into vector<12xf16>
        %281 = math.ctpop %transposed : tensor<11x2xi32>
        %282 = arith.maxsi %true_26, %true_27 : i1
        %splat_55 = tensor.splat %137 : tensor<2x11xi64>
        %283 = arith.divf %cst_1, %cst_4 : f32
        %284 = bufferization.clone %216 : memref<4xi32> to memref<4xi32>
        %cast_56 = tensor.cast %from_elements_33 : tensor<4xi1> to tensor<?xi1>
        %285 = math.round %12 : tensor<4xf16>
        %286 = index.maxs %c4, %rank
        %cst_57 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_57 : f16
      }
    %223 = vector.load %alloc_5[%c0, %c10, %c8] : memref<2x11x11xi32>, vector<2x11xi32>
    %224 = vector.insert %true_27, %64 [1] : i1 into vector<12xi1>
    %225 = index.castu %false : i1 to index
    affine.for %arg1 = 0 to 10 {
    }
    %226 = vector.broadcast %219 : f32 to vector<4xf32>
    %227 = vector.fma %226, %136, %136 : vector<4xf32>
    %228 = math.round %10 : tensor<4xf32>
    %229 = index.maxs %rank_31, %c15
    %230 = index.sizeof
    %231 = vector.insertelement %extracted, %227[%c4 : index] : vector<4xf32>
    %232 = affine.max affine_map<(d0, d1) -> ((d0 * 2) mod 8, d1 * 2, d0 * 2 + 48)>(%c2, %57)
    memref.assume_alignment %216, 16 : memref<4xi32>
    %233 = arith.mulf %cst_1, %219 : f32
    %234 = arith.remf %cst_1, %cst_4 : f32
    %235 = math.ceil %16 : tensor<2x11x11xf32>
    %from_elements_45 = tensor.from_elements %c913_i16, %164, %164, %164 : tensor<4xi16>
    %236 = index.ceildivu %229, %230
    %237 = affine.if affine_set<(d0, d1, d2, d3) : (d2 mod 2 + 128 >= 0, -(d0 mod 4) == 0, d2 mod 2 == 0)>(%c1, %c9, %c3, %c12) -> memref<2x11xi32> {
      %255 = math.log1p %17 : tensor<2x11x11xf32>
      %256 = arith.muli %137, %c1_i64 : i64
      %257 = vector.broadcast %c913_i16 : i16 to vector<i16>
      vector.transfer_write %257, %alloc_14[%51, %c3, %236] : vector<i16>, memref<2x11x11xi16>
      %258 = index.castu %true_22 : i1 to index
      %259 = vector.transpose %178, [0] : vector<4xi64> to vector<4xi64>
      %260 = math.rsqrt %201 : tensor<2x11xf16>
      vector.print %162 : vector<2x11x11xf32>
      %261 = vector.load %alloc_19[%c2] : memref<4xf16>, vector<4xf16>
      affine.yield %alloc : memref<2x11xi32>
    } else {
      %255 = affine.if affine_set<(d0, d1) : (d0 >= 0)>(%c11, %c6) -> i1 {
        %261 = math.powf %cst_0, %cst_23 : f16
        %262 = math.absi %c1_i64 : i64
        %263 = index.floordivs %c2, %51
        %264 = vector.reduction <mul>, %167 : vector<2xf16> into f16
        %265 = arith.maxui %true_26, %true : i1
        %266 = index.ceildivs %113, %218
        %267 = vector.reduction <maxf>, %226 : vector<4xf32> into f32
        memref.store %c361752391_i64, %alloc_11[%c2] : memref<4xi64>
        affine.yield %true_22 : i1
      } else {
        %261 = math.tanh %10 : tensor<4xf32>
        %expanded_55 = tensor.expand_shape %4 [[0, 1]] : tensor<4xi16> into tensor<4x1xi16>
        %262 = arith.cmpi ugt, %true_26, %true : i1
        %expanded_56 = tensor.expand_shape %13 [[0, 1]] : tensor<4xi16> into tensor<4x1xi16>
        %263 = math.sqrt %cst_23 : f16
        %264 = math.fpowi %1, %15 : tensor<2x11xf16>, tensor<2x11xi32>
        %265 = math.cos %cst_0 : f16
        %266 = math.exp %21 : tensor<f16>
        affine.yield %true_22 : i1
      }
      bufferization.dealloc_tensor %splat : tensor<4xi32>
      %splat_53 = tensor.splat %c540632740_i32 : tensor<4xi32>
      %256 = index.sub %152, %218
      %257 = vector.flat_transpose %226 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
      %258 = vector.broadcast %cst_4 : f32 to vector<4xf32>
      %259 = vector.transfer_write %258, %16[%57, %198, %c10] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<4xf32>, tensor<2x11x11xf32>
      %from_elements_54 = tensor.from_elements %c540632740_i32, %c1489009748_i32, %c540632740_i32, %c1489009748_i32 : tensor<4xi32>
      %260 = index.sizeof
      affine.yield %alloc : memref<2x11xi32>
    }
    %238 = affine.min affine_map<(d0, d1) -> ((-d0 - d0 ceildiv 4) floordiv 128, d1, -d0 - d0 ceildiv 4, d0 * 32)>(%170, %c7)
    %239 = vector.broadcast %cst : f16 to vector<2x2xf16>
    %240 = vector.outerproduct %167, %168, %239 {kind = #vector.kind<add>} : vector<2xf16>, vector<2xf16>
    %241 = memref.alloca_scope  -> (memref<2x11x11xi16>) {
      %255 = arith.shrui %c418092245_i32, %c1489009748_i32 : i32
      memref.store %c1489009748_i32, %216[%c0] : memref<4xi32>
      %256 = arith.cmpf oeq, %cst, %cst_23 : f16
      %257 = vector.broadcast %219 : f32 to vector<2x11xf32>
      %258 = vector.fma %257, %257, %257 : vector<2x11xf32>
      %259 = index.mul %230, %c5
      %260 = memref.load %68[%c1, %c6, %c4] : memref<2x11x11xf32>
      %inserted_53 = tensor.insert %c361752391_i64 into %7[%c1, %c9, %c6] : tensor<2x11x11xi64>
      %inserted_54 = tensor.insert %219 into %17[%c0, %c7, %c10] : tensor<2x11x11xf32>
      vector.print %178 : vector<4xi64>
      memref.store %c540632740_i32, %216[%c0] : memref<4xi32>
      %261 = index.divs %133, %123
      bufferization.dealloc_tensor %7 : tensor<2x11x11xi64>
      %262 = index.casts %142 : index to i32
      %263 = vector.bitcast %168 : vector<2xf16> to vector<2xf16>
      %cast_55 = tensor.cast %9 : tensor<4xi16> to tensor<?xi16>
      %264 = vector.load %alloc_12[%c0, %c0] : memref<2x11xf16>, vector<2x11xf16>
      %265 = math.floor %extracted : f32
      %266 = index.ceildivs %45, %218
      %true_56 = index.bool.constant true
      %267 = math.roundeven %5 : tensor<4xf16>
      memref.copy %alloc_20, %81 : memref<f16> to memref<f16>
      %268 = vector.reduction <maxf>, %167 : vector<2xf16> into f16
      %dest_57, %accumulated_value_58 = vector.scan <maxf>, %162, %257 {inclusive = true, reduction_dim = 2 : i64} : vector<2x11x11xf32>, vector<2x11xf32>
      %269 = math.ctpop %transposed : tensor<11x2xi32>
      %270 = vector.reduction <maxf>, %167 : vector<2xf16> into f16
      %271 = vector.bitcast %167 : vector<2xf16> to vector<2xf16>
      scf.index_switch %c7 
      case 1 {
        %276 = math.absi %147 : tensor<2x12xi16>
        %277 = vector.maskedload %alloc_10[%c1, %c9, %c9], %95, %115 : memref<2x11x11xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
        %278 = math.ctpop %true : i1
        %279 = bufferization.clone %alloc_21 : memref<4xf16> to memref<4xf16>
        %280 = arith.remsi %c1489009748_i32, %c540632740_i32 : i32
        memref.assume_alignment %alloc_12, 4 : memref<2x11xf16>
        %281 = arith.mulf %cst_4, %cst_4 : f32
        %282 = vector.broadcast %c1_i64 : i64 to vector<i64>
        %283 = vector.transfer_write %282, %2[%134] : vector<i64>, tensor<4xi64>
        %false_59 = arith.constant false
        %284 = math.exp %201 : tensor<2x11xf16>
        %285 = arith.remsi %c913_i16, %164 : i16
        %286 = arith.ceildivsi %true_26, %true_26 : i1
        %287 = vector.extract_strided_slice %178 {offsets = [0], sizes = [1], strides = [1]} : vector<4xi64> to vector<1xi64>
        %288 = index.add %259, %113
        %289 = arith.shrui %true_22, %false : i1
        %rank_60 = tensor.rank %from_elements : tensor<2x11xi16>
        scf.yield
      }
      case 2 {
        %276 = vector.matrix_multiply %116, %116 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
        %277 = arith.cmpi eq, %true_26, %true : i1
        %278 = math.log %222 : tensor<f16>
        %279 = math.cos %cst_4 : f32
        %280 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %94, %178, %c1_i64 : vector<4xi64>, vector<4xi64> into i64
        %281 = index.sub %185, %60
        %282 = vector.broadcast %extracted : f32 to vector<f32>
        vector.transfer_write %282, %alloc_8[%142] : vector<f32>, memref<4xf32>
        %283 = vector.broadcast %c1_i64 : i64 to vector<11xi64>
        %284 = vector.insert %283, %24 [1, 0] : vector<11xi64> into vector<2x11x11xi64>
        %285 = arith.mulf %cst_1, %cst_1 : f32
        %286 = index.divs %c8, %c5
        %287 = arith.ceildivsi %137, %c1745170826_i64 : i64
        %288 = arith.cmpf oeq, %extracted, %219 : f32
        %cst_59 = arith.constant 1.000000e+00 : f16
        %289 = vector.transfer_read %alloc_16[%286, %c9], %cst_59 : memref<2x11xf16>, vector<11xf16>
        %290 = index.castu %230 : index to i32
        %291 = vector.broadcast %cst_4 : f32 to vector<2x11x11xf32>
        %292 = vector.fma %291, %291, %162 : vector<2x11x11xf32>
        %293 = math.exp %cst_4 : f32
        scf.yield
      }
      case 3 {
        %276 = arith.negf %extracted : f32
        %277 = bufferization.to_memref %4 : memref<4xi16>
        %278 = math.ceil %222 : tensor<f16>
        %extracted_59 = tensor.extract %20[] : tensor<f16>
        %279 = vector.flat_transpose %96 {columns = 2 : i32, rows = 2 : i32} : vector<4xi64> -> vector<4xi64>
        %280 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 * 128 - d1 ceildiv 4 - 16, d0 mod 128, (-(d0 * 128 - d1 ceildiv 4)) floordiv 16)>(%c10, %232, %c5, %57)
        %alloca_60 = memref.alloca() : memref<4xf16>
        %281 = vector.load %68[%c1, %c4, %c9] : memref<2x11x11xf32>, vector<2x11xf32>
        %282 = tensor.empty() : tensor<4xi16>
        %from_elements_61 = tensor.from_elements %cst_23, %cst_23, %cst_0, %extracted_59 : tensor<4xf16>
        %283 = vector.broadcast %c1600468613_i32 : i32 to vector<4xi32>
        %284 = vector.transfer_write %283, %203[%266, %c4] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi32>, tensor<2x11xi32>
        %285 = index.castu %280 : index to i32
        %286 = affine.max affine_map<(d0) -> (d0 * 8)>(%170)
        %287 = vector.matrix_multiply %178, %96 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi64>, vector<4xi64>) -> vector<1xi64>
        %288 = arith.remui %c1_i64, %c1_i64 : i64
        %289 = arith.remsi %c418092245_i32, %c1600468613_i32 : i32
        scf.yield
      }
      default {
        %276 = memref.load %216[%c1] : memref<4xi32>
        %277 = math.round %222 : tensor<f16>
        %278 = affine.max affine_map<(d0, d1) -> (d1, 7, d1, 3)>(%c6, %rank_31)
        %279 = vector.broadcast %c418092245_i32 : i32 to vector<11xi32>
        %280 = vector.broadcast %true_2 : i1 to vector<11xi1>
        %281 = vector.maskedload %216[%c0], %280, %279 : memref<4xi32>, vector<11xi1>, vector<11xi32> into vector<11xi32>
        %282 = index.castu %278 : index to i32
        %rank_59 = tensor.rank %from_elements_45 : tensor<4xi16>
        %283 = vector.insertelement %false, %280[%52 : index] : vector<11xi1>
        %284 = math.exp %20 : tensor<f16>
        %285 = index.sub %c4, %197
        %286 = math.ctlz %c418092245_i32 : i32
        %alloca_60 = memref.alloca() : memref<2x11x11xi1>
        %287 = math.log %21 : tensor<f16>
        %cst_61 = arith.constant 1.46499482E+9 : f32
        %288 = memref.realloc %alloc_8 : memref<4xf32> to memref<11xf32>
        %289 = index.ceildivs %c4, %51
        %290 = math.sqrt %1 : tensor<2x11xf16>
      }
      %272 = arith.divf %cst_1, %cst_4 : f32
      %273 = arith.muli %c418092245_i32, %c418092245_i32 : i32
      %274 = bufferization.clone %82 : memref<2x11xi32> to memref<2x11xi32>
      %275 = arith.ori %true_2, %true_26 : i1
      affine.for %arg1 = 0 to 94 {
      }
      memref.alloca_scope.return %alloc_14 : memref<2x11x11xi16>
    }
    %cast = tensor.cast %15 : tensor<2x11xi32> to tensor<?x?xi32>
    %dest_46, %accumulated_value_47 = vector.scan <maxf>, %104, %19 {inclusive = false, reduction_dim = 1 : i64} : vector<4x11xf32>, vector<4xf32>
    %242 = bufferization.to_memref %4 : memref<4xi16>
    %243 = math.sqrt %cst_4 : f32
    memref.copy %alloc_18, %82 : memref<2x11xi32> to memref<2x11xi32>
    %244 = math.tanh %201 : tensor<2x11xf16>
    %245 = index.sizeof
    %246 = arith.remui %c418092245_i32, %c418092245_i32 : i32
    %cast_48 = tensor.cast %111 : tensor<2x11x11xi64> to tensor<?x?x?xi64>
    vector.print %53 : vector<4xf32>
    %247 = vector.broadcast %extracted : f32 to vector<2x11xf32>
    %dest_49, %accumulated_value_50 = vector.scan <minf>, %162, %247 {inclusive = true, reduction_dim = 2 : i64} : vector<2x11x11xf32>, vector<2x11xf32>
    %248 = arith.addi %c913_i16, %c13047_i16 : i16
    %249 = math.ctlz %false : i1
    %250 = tensor.empty(%c15, %225) : tensor<?x?xi32>
    %251 = linalg.copy ins(%cast : tensor<?x?xi32>) outs(%250 : tensor<?x?xi32>) -> tensor<?x?xi32>
    %252 = tensor.empty() : tensor<11x2xf16>
    %transposed_51 = linalg.transpose ins(%alloc_12 : memref<2x11xf16>) outs(%252 : tensor<11x2xf16>) permutation = [1, 0] 
    %alloc_52 = memref.alloc() : memref<i16>
    linalg.reduce ins(%242 : memref<4xi16>) outs(%alloc_52 : memref<i16>) dimensions = [0] 
      (%in: i16, %init: i16) {
        %255 = memref.load %alloc_17[%c1, %c4, %c4] : memref<2x11x11xi64>
        %256 = math.log %16 : tensor<2x11x11xf32>
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_53 = arith.constant 0 : i32
        %257 = vector.transfer_read %15[%177, %c3], %c0_i32_53 : tensor<2x11xi32>, vector<i32>
        %258 = vector.maskedload %alloc_19[%c2], %72, %167 : memref<4xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
        %259 = math.cos %10 : tensor<4xf32>
        %260 = math.rsqrt %17 : tensor<2x11x11xf32>
        %261 = index.sub %c2, %c13
        memref.store %c913_i16, %alloc_9[%c0, %c3, %c6] : memref<2x11x11xi16>
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %253 = scf.parallel (%arg1, %arg2) = (%142, %229) to (%57, %c3) step (%c14, %c3) init (%15) -> tensor<2x11xi32> {
      %expanded_53 = tensor.expand_shape %16 [[0], [1], [2, 3]] : tensor<2x11x11xf32> into tensor<2x11x11x1xf32>
      %alloca_54 = memref.alloca() : memref<2x11xi32>
      %255 = arith.cmpi eq, %c540632740_i32, %c418092245_i32 : i32
      %256 = math.log2 %20 : tensor<f16>
      %257 = math.exp2 %14 : tensor<2x11xf16>
      %258 = vector.bitcast %19 : vector<4xf32> to vector<4xf32>
      %259 = index.castu %c1489009748_i32 : i32 to index
      %260 = vector.load %alloc_15[%c0] : memref<4xi32>, vector<2x11xi32>
      %261 = arith.addi %164, %164 : i16
      %262 = arith.ori %c13047_i16, %c13047_i16 : i16
      %263 = math.absi %splat : tensor<4xi32>
      %264 = math.ctpop %15 : tensor<2x11xi32>
      %265 = math.sqrt %3 : tensor<4xf16>
      %266 = math.sqrt %3 : tensor<4xf16>
      memref.copy %alloc_14, %alloc_10 : memref<2x11x11xi16> to memref<2x11x11xi16>
      %267 = index.casts %c1489009748_i32 : i32 to index
      %268 = tensor.empty() : tensor<2x11xi32>
      scf.reduce(%268)  : tensor<2x11xi32> {
      ^bb0(%arg3: tensor<2x11xi32>, %arg4: tensor<2x11xi32>):
        %false_55 = index.bool.constant false
        %269 = vector.broadcast %c15 : index to vector<2xindex>
        %270 = vector.broadcast %137 : i64 to vector<2xi64>
        vector.scatter %alloc_13[%c0, %c6] [%269], %72, %270 : memref<2x11xi64>, vector<2xindex>, vector<2xi1>, vector<2xi64>
        %271 = vector.broadcast %extracted : f32 to vector<11xf32>
        %272 = vector.broadcast %false_55 : i1 to vector<11xi1>
        %273 = vector.maskedload %alloc_8[%c1], %272, %271 : memref<4xf32>, vector<11xi1>, vector<11xf32> into vector<11xf32>
        %274 = math.absi %c913_i16 : i16
        %275 = bufferization.clone %82 : memref<2x11xi32> to memref<2x11xi32>
        %276 = vector.broadcast %c1600468613_i32 : i32 to vector<11x11xi32>
        %dest_56, %accumulated_value_57 = vector.scan <or>, %180, %276 {inclusive = false, reduction_dim = 0 : i64} : vector<2x11x11xi32>, vector<11x11xi32>
        %277 = vector.multi_reduction <minf>, %73, %71 [] : vector<2xf32> to vector<2xf32>
        %278 = memref.atomic_rmw muli %c913_i16, %alloc_10[%c0, %c1, %c8] : (i16, memref<2x11x11xi16>) -> i16
        %279 = tensor.empty() : tensor<2x11xi32>
        scf.reduce.return %279 : tensor<2x11xi32>
      }
      scf.yield
    }
    %254 = affine.vector_load %alloc[%c0, %c5] : memref<2x11xi32>, vector<11xi32>
    affine.vector_store %71, %68[%rank, %84, %c12] : memref<2x11x11xf32>, vector<2xf32>
    vector.print %19 : vector<4xf32>
    vector.print %22 : vector<1xf32>
    vector.print %24 : vector<2x11x11xi64>
    vector.print %43 : vector<i16>
    vector.print %48 : vector<2x11x11xi64>
    vector.print %53 : vector<4xf32>
    vector.print %59 : vector<2x11x11xi1>
    vector.print %64 : vector<12xi1>
    vector.print %69 : vector<2x11x11xi1>
    vector.print %71 : vector<2xf32>
    vector.print %72 : vector<2xi1>
    vector.print %73 : vector<2xf32>
    vector.print %77 : vector<f16>
    vector.print %94 : vector<4xi64>
    vector.print %95 : vector<4xi1>
    vector.print %96 : vector<4xi64>
    vector.print %104 : vector<4x11xf32>
    vector.print %115 : vector<4xi16>
    vector.print %116 : vector<4xi16>
    vector.print %119 : vector<11xf16>
    vector.print %132 : vector<1xi16>
    vector.print %136 : vector<4xf32>
    vector.print %156 : vector<f16>
    vector.print %158 : vector<f16>
    vector.print %162 : vector<2x11x11xf32>
    vector.print %166 : vector<2x11xi1>
    vector.print %167 : vector<2xf16>
    vector.print %168 : vector<2xf16>
    vector.print %178 : vector<4xi64>
    vector.print %180 : vector<2x11x11xi32>
    vector.print %207 : vector<11x11xi64>
    vector.print %223 : vector<2x11xi32>
    vector.print %226 : vector<4xf32>
    vector.print %227 : vector<4xf32>
    vector.print %254 : vector<11xi32>
    vector.print %c13047_i16 : i16
    vector.print %cst : f16
    vector.print %c1745170826_i64 : i64
    vector.print %c1600468613_i32 : i32
    vector.print %cst_0 : f16
    vector.print %c1489009748_i32 : i32
    vector.print %false : i1
    vector.print %c540632740_i32 : i32
    vector.print %true : i1
    vector.print %cst_1 : f32
    vector.print %true_2 : i1
    vector.print %cst_3 : f16
    vector.print %c913_i16 : i16
    vector.print %c418092245_i32 : i32
    vector.print %c361752391_i64 : i64
    vector.print %cst_4 : f32
    vector.print %true_22 : i1
    vector.print %cst_23 : f16
    vector.print %true_26 : i1
    vector.print %true_27 : i1
    vector.print %extracted : f32
    vector.print %137 : i64
    vector.print %c1_i64 : i64
    vector.print %164 : i16
    vector.print %182 : i1
    vector.print %219 : f32
    return %2 : tensor<4xi64>
  }
}
