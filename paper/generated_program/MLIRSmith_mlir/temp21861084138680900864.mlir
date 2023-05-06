module {
  func.func @func1(%arg0: index) -> i64 {
    %cst = arith.constant 0x4E24D2F2 : f32
    %false = arith.constant false
    %cst_0 = arith.constant 1.02708819E+9 : f32
    %c1719160145_i32 = arith.constant 1719160145 : i32
    %c1459424119_i64 = arith.constant 1459424119 : i64
    %false_1 = arith.constant false
    %c746576448_i64 = arith.constant 746576448 : i64
    %c1418474441_i32 = arith.constant 1418474441 : i32
    %cst_2 = arith.constant 0x4D647503 : f32
    %c868436817_i32 = arith.constant 868436817 : i32
    %c17041_i16 = arith.constant 17041 : i16
    %cst_3 = arith.constant 4.768000e+04 : f16
    %cst_4 = arith.constant 0x4C7DC3D9 : f32
    %c4078_i16 = arith.constant 4078 : i16
    %c314243881_i64 = arith.constant 314243881 : i64
    %c589914455_i64 = arith.constant 589914455 : i64
    %0 = tensor.empty() : tensor<12xf32>
    %1 = tensor.empty() : tensor<12xf16>
    %2 = tensor.empty() : tensor<9x1x4xi1>
    %3 = tensor.empty() : tensor<9x1x4xf32>
    %4 = tensor.empty() : tensor<4x9x12xf32>
    %5 = tensor.empty() : tensor<12xf16>
    %6 = tensor.empty() : tensor<12xi64>
    %7 = tensor.empty() : tensor<12xi32>
    %8 = tensor.empty() : tensor<4x9x12xi32>
    %9 = tensor.empty() : tensor<12xi64>
    %10 = tensor.empty() : tensor<9x1x4xi64>
    %11 = tensor.empty() : tensor<12xf32>
    %12 = tensor.empty() : tensor<12xf16>
    %13 = tensor.empty() : tensor<9x1x4xf32>
    %14 = tensor.empty() : tensor<9x1x4xf32>
    %15 = tensor.empty() : tensor<12xi1>
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
    %alloc = memref.alloc() : memref<4x9x12xi16>
    %alloc_5 = memref.alloc() : memref<12xi16>
    %alloc_6 = memref.alloc() : memref<9x1x4xi1>
    %alloc_7 = memref.alloc() : memref<9x1x4xi1>
    %alloc_8 = memref.alloc() : memref<12xi16>
    %alloc_9 = memref.alloc() : memref<12xi32>
    %alloc_10 = memref.alloc() : memref<12xf32>
    %alloc_11 = memref.alloc() : memref<12xf16>
    %alloc_12 = memref.alloc() : memref<9x1x4xi32>
    %alloc_13 = memref.alloc() : memref<12xi64>
    %alloc_14 = memref.alloc() : memref<4x9x12xi1>
    %alloc_15 = memref.alloc() : memref<9x1x4xi64>
    %alloc_16 = memref.alloc() : memref<12xi64>
    %alloc_17 = memref.alloc() : memref<9x1x4xi64>
    %alloc_18 = memref.alloc() : memref<4x9x12xi16>
    %alloc_19 = memref.alloc() : memref<9x1x4xf16>
    %16 = tensor.empty() : tensor<12xi64>
    %17 = linalg.copy ins(%9 : tensor<12xi64>) outs(%16 : tensor<12xi64>) -> tensor<12xi64>
    %18 = tensor.empty() : tensor<12xi64>
    %transposed = linalg.transpose ins(%alloc_16 : memref<12xi64>) outs(%18 : tensor<12xi64>) permutation = [0] 
    %alloc_20 = memref.alloc() : memref<f16>
    linalg.reduce ins(%1 : tensor<12xf16>) outs(%alloc_20 : memref<f16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %generated_56 = tensor.generate %c6 {
        ^bb0(%arg1: index):
          %260 = arith.cmpf false, %cst_0, %cst_0 : f32
          %261 = arith.remui %c4078_i16, %c17041_i16 : i16
          %262 = math.powf %cst_2, %cst_2 : f32
          %263 = affine.min affine_map<(d0, d1) -> (-(d1 - d0 - (d1 - d0) mod 64) - ((d1 - d0) mod 64 + 1) + 64, (d1 - d0) mod 64 + 1)>(%c1, %c6)
          tensor.yield %c746576448_i64 : i64
        } : tensor<?xi64>
        %248 = vector.broadcast %init : f16 to vector<4xf16>
        %249 = vector.broadcast %init : f16 to vector<4x4xf16>
        %250 = vector.outerproduct %248, %248, %249 {kind = #vector.kind<maxf>} : vector<4xf16>, vector<4xf16>
        %251 = vector.broadcast %c4078_i16 : i16 to vector<4xi16>
        %252 = vector.broadcast %false_1 : i1 to vector<4xi1>
        %253 = vector.maskedload %alloc_5[%c10], %252, %251 : memref<12xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
        %254 = arith.andi %c1418474441_i32, %c1418474441_i32 : i32
        %255 = vector.load %alloc[%c3, %c8, %c10] : memref<4x9x12xi16>, vector<12xi16>
        %256 = vector.broadcast %c4078_i16 : i16 to vector<12x4x9xi16>
        %257 = vector.broadcast %c17041_i16 : i16 to vector<4x9xi16>
        %dest_57, %accumulated_value_58 = vector.scan <or>, %256, %257 {inclusive = false, reduction_dim = 0 : i64} : vector<12x4x9xi16>, vector<4x9xi16>
        %258 = vector.multi_reduction <or>, %255, %255 [] : vector<12xi16> to vector<12xi16>
        %259 = vector.insert %c17041_i16, %251 [1] : i16 into vector<4xi16>
        %cst_59 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_59 : f16
      }
    scf.parallel (%arg1) = (%c8) to (%c11) step (%c11) {
      %248 = arith.maxf %cst_0, %cst_0 : f32
      %249 = memref.atomic_rmw mins %c589914455_i64, %alloc_17[%c0, %c0, %c3] : (i64, memref<9x1x4xi64>) -> i64
      %generated_56 = tensor.generate %c15 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %260 = index.divu %arg1, %c14
        memref.store %cst_3, %alloc_20[] : memref<f16>
        %261 = vector.broadcast %c1719160145_i32 : i32 to vector<12xi32>
        %262 = vector.broadcast %c1418474441_i32 : i32 to vector<12x12xi32>
        %263 = vector.outerproduct %261, %261, %262 {kind = #vector.kind<xor>} : vector<12xi32>, vector<12xi32>
        %264 = vector.broadcast %c589914455_i64 : i64 to vector<12xi64>
        %265 = vector.shuffle %264, %264 [0, 2, 3, 6, 8, 10, 11, 13, 17, 19, 20, 21] : vector<12xi64>, vector<12xi64>
        tensor.yield %c314243881_i64 : i64
      } : tensor<?x1x4xi64>
      %true = index.bool.constant true
      %250 = vector.broadcast %cst_3 : f16 to vector<4xf16>
      %251 = vector.broadcast %false : i1 to vector<4xi1>
      %252 = vector.maskedload %alloc_19[%c6, %c0, %c2], %251, %250 : memref<9x1x4xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
      %253 = arith.remui %c17041_i16, %c4078_i16 : i16
      memref.store %c589914455_i64, %alloc_17[%c1, %c0, %c1] : memref<9x1x4xi64>
      scf.if %true {
        %260 = math.round %12 : tensor<12xf16>
        %261 = vector.broadcast %cst_4 : f32 to vector<4x9x12xf32>
        %262 = memref.atomic_rmw assign %c589914455_i64, %alloc_16[%c9] : (i64, memref<12xi64>) -> i64
        %263 = memref.realloc %alloc_8 : memref<12xi16> to memref<12xi16>
        %264 = math.log2 %14 : tensor<9x1x4xf32>
        %alloca_60 = memref.alloca() : memref<4x9x12xi16>
        %cast_61 = tensor.cast %9 : tensor<12xi64> to tensor<?xi64>
        %265 = vector.broadcast %cst_2 : f32 to vector<12xf32>
        %266 = vector.insert %265, %261 [1, 3] : vector<12xf32> into vector<4x9x12xf32>
      }
      %254 = index.mul %c7, %c4
      %expanded_57 = tensor.expand_shape %transposed [[0, 1]] : tensor<12xi64> into tensor<12x1xi64>
      %cst_58 = arith.constant 1.000000e+00 : f16
      %255 = vector.transfer_read %5[%c13], %cst_58 : tensor<12xf16>, vector<f16>
      %256 = vector.insertelement %false, %251[%c6 : index] : vector<4xi1>
      %257 = affine.load %alloc[%c1, %c0, %c15] : memref<4x9x12xi16>
      %258 = affine.min affine_map<(d0, d1) -> (d1)>(%c10, %c14)
      %collapsed_59 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<4x9x12xi32> into tensor<36x12xi32>
      %259 = math.atan2 %11, %11 : tensor<12xf32>
      scf.yield
    }
    %19 = affine.vector_load %alloc_19[%c4, %c11, %c8] : memref<9x1x4xf16>, vector<12xf16>
    affine.vector_store %19, %alloc_11[%c13] : memref<12xf16>, vector<12xf16>
    %20 = tensor.empty() : tensor<12xi32>
    %21 = tensor.empty() : tensor<i32>
    %22 = linalg.dot ins(%7, %20 : tensor<12xi32>, tensor<12xi32>) outs(%21 : tensor<i32>) -> tensor<i32>
    %23 = tensor.empty() : tensor<4x9x12xi1>
    %24 = bufferization.to_tensor %alloc_7 : memref<9x1x4xi1>
    %25 = math.expm1 %cst_4 : f32
    %26 = affine.load %alloc[%c8, %c2, %c0] : memref<4x9x12xi16>
    %27 = arith.shli %c314243881_i64, %c589914455_i64 : i64
    %28 = arith.maxf %cst, %cst_4 : f32
    affine.store %false_1, %alloc_7[%c7, %c12, %c4] : memref<9x1x4xi1>
    %29 = arith.remui %c746576448_i64, %c746576448_i64 : i64
    %30 = scf.index_switch %c7 -> tensor<12xi1> 
    case 1 {
      %c0_i64 = arith.constant 0 : i64
      %248 = vector.transfer_read %17[%c3], %c0_i64 : tensor<12xi64>, vector<i64>
      %249 = vector.multi_reduction <mul>, %19, %19 [] : vector<12xf16> to vector<12xf16>
      %250 = index.ceildivu %c15, %c1
      %251 = vector.reduction <add>, %19 : vector<12xf16> into f16
      %252 = arith.negf %cst_2 : f32
      %253 = vector.broadcast %c1418474441_i32 : i32 to vector<4x9xi32>
      %254 = vector.broadcast %c868436817_i32 : i32 to vector<4xi32>
      %dest_56, %accumulated_value_57 = vector.scan <maxsi>, %253, %254 {inclusive = true, reduction_dim = 1 : i64} : vector<4x9xi32>, vector<4xi32>
      %255 = tensor.empty() : tensor<9x1x4xi1>
      %256 = math.fma %12, %5, %12 : tensor<12xf16>
      %true = index.bool.constant true
      %257 = math.cttz %7 : tensor<12xi32>
      %258 = vector.create_mask %c2, %c8, %c2 : vector<4x9x12xi1>
      memref.tensor_store %5, %alloc_11 : memref<12xf16>
      %259 = index.ceildivu %c8, %c12
      %260 = arith.cmpf ueq, %cst_3, %cst_3 : f16
      %261 = arith.cmpf oge, %cst, %cst_2 : f32
      %262 = math.powf %0, %0 : tensor<12xf32>
      scf.yield %15 : tensor<12xi1>
    }
    case 2 {
      memref.tensor_store %12, %alloc_11 : memref<12xf16>
      scf.index_switch %c10 
      case 1 {
        memref.tensor_store %12, %alloc_11 : memref<12xf16>
        %262 = vector.extract %19[10] : vector<12xf16>
        %263 = arith.negf %cst_4 : f32
        %264 = vector.shuffle %19, %19 [0, 5, 6, 9, 10, 11, 14, 15, 17, 18, 20, 21, 22] : vector<12xf16>, vector<12xf16>
        %265 = vector.bitcast %19 : vector<12xf16> to vector<12xi16>
        %266 = math.tan %12 : tensor<12xf16>
        %267 = arith.divf %cst, %cst_4 : f32
        %expanded_56 = tensor.expand_shape %0 [[0, 1]] : tensor<12xf32> into tensor<12x1xf32>
        %268 = arith.floordivsi %c746576448_i64, %c589914455_i64 : i64
        %269 = vector.broadcast %c868436817_i32 : i32 to vector<12xi32>
        %270 = vector.multi_reduction <maxui>, %269, %269 [] : vector<12xi32> to vector<12xi32>
        %271 = math.log2 %1 : tensor<12xf16>
        %272 = memref.load %alloc_9[%c0] : memref<12xi32>
        %273 = math.tan %11 : tensor<12xf32>
        %274 = index.maxu %c3, %c7
        %275 = index.maxs %c11, %c10
        scf.yield
      }
      case 2 {
        %262 = math.log10 %12 : tensor<12xf16>
        %263 = math.expm1 %cst : f32
        %264 = math.log10 %11 : tensor<12xf32>
        %265 = vector.insert %cst_3, %19 [9] : f16 into vector<12xf16>
        bufferization.dealloc_tensor %18 : tensor<12xi64>
        memref.store %false_1, %alloc_6[%c4, %c0, %c2] : memref<9x1x4xi1>
        %266 = arith.divsi %26, %c4078_i16 : i16
        %267 = index.mul %c1, %c13
        %268 = math.fma %4, %4, %4 : tensor<4x9x12xf32>
        %269 = index.maxs %c7, %c8
        %270 = arith.maxsi %c314243881_i64, %c1459424119_i64 : i64
        %271 = arith.divsi %c17041_i16, %c17041_i16 : i16
        %272 = math.atan2 %0, %0 : tensor<12xf32>
        %cast_56 = tensor.cast %12 : tensor<12xf16> to tensor<?xf16>
        %273 = math.round %0 : tensor<12xf32>
        %274 = index.divs %c11, %c5
        scf.yield
      }
      case 3 {
        %262 = arith.maxsi %c1719160145_i32, %c1418474441_i32 : i32
        %splat = tensor.splat %cst_3 : tensor<4x9x12xf16>
        %263 = index.mul %c2, %c11
        %264 = index.ceildivu %c5, %c6
        %265 = bufferization.to_memref %7 : memref<12xi32>
        %266 = index.sub %c8, %c0
        %267 = vector.insert %cst_3, %19 [9] : f16 into vector<12xf16>
        %268 = vector.broadcast %c1719160145_i32 : i32 to vector<4x12xi32>
        %269 = vector.broadcast %c1719160145_i32 : i32 to vector<12xi32>
        %dest_56, %accumulated_value_57 = vector.scan <add>, %268, %269 {inclusive = false, reduction_dim = 0 : i64} : vector<4x12xi32>, vector<12xi32>
        %270 = math.round %14 : tensor<9x1x4xf32>
        %271 = index.mul %c3, %c4
        %272 = math.log2 %cst : f32
        %273 = vector.flat_transpose %19 {columns = 3 : i32, rows = 4 : i32} : vector<12xf16> -> vector<12xf16>
        %274 = memref.load %alloc_5[%c7] : memref<12xi16>
        %275 = arith.ori %c589914455_i64, %c589914455_i64 : i64
        %276 = vector.shuffle %19, %273 [1, 3, 4, 6, 7, 11, 13, 17, 18, 22] : vector<12xf16>, vector<12xf16>
        %277 = index.castu %264 : index to i32
        scf.yield
      }
      default {
        %262 = affine.load %alloc_10[%c3] : memref<12xf32>
        %263 = arith.floordivsi %c746576448_i64, %c1459424119_i64 : i64
        %rank_56 = tensor.rank %9 : tensor<12xi64>
        %cast_57 = tensor.cast %22 : tensor<i32> to tensor<i32>
        %264 = math.tan %cst : f32
        vector.print %19 : vector<12xf16>
        %265 = vector.broadcast %c589914455_i64 : i64 to vector<12x9xi64>
        %266 = vector.broadcast %c589914455_i64 : i64 to vector<9xi64>
        %dest_58, %accumulated_value_59 = vector.scan <or>, %265, %266 {inclusive = false, reduction_dim = 0 : i64} : vector<12x9xi64>, vector<9xi64>
        %267 = arith.divui %c868436817_i32, %c1418474441_i32 : i32
        %268 = math.cos %cst_3 : f16
        %269 = vector.broadcast %c4078_i16 : i16 to vector<12xi16>
        %270 = index.maxu %c1, %c6
        %271 = arith.minui %c1719160145_i32, %c1418474441_i32 : i32
        %272 = arith.divsi %c1719160145_i32, %c1418474441_i32 : i32
        %273 = tensor.empty() : tensor<4x4xf16>
        %274 = tensor.empty() : tensor<4x4xf16>
        %275 = linalg.matmul ins(%273, %273 : tensor<4x4xf16>, tensor<4x4xf16>) outs(%274 : tensor<4x4xf16>) -> tensor<4x4xf16>
        %276 = vector.bitcast %269 : vector<12xi16> to vector<12xi16>
        %277 = index.add %c10, %c4
      }
      %248 = arith.subi %false_1, %false : i1
      %249 = math.expm1 %12 : tensor<12xf16>
      %250 = index.floordivs %c8, %c12
      %251 = scf.execute_region -> tensor<12xf32> {
        %262 = index.sub %c4, %c0
        %263 = affine.apply affine_map<(d0) -> (d0 + 63)>(%c12)
        %264 = index.maxs %263, %c1
        %alloc_56 = memref.alloc() : memref<12x9xi64>
        %alloc_57 = memref.alloc() : memref<9x1xi64>
        %265 = tensor.empty() : tensor<12x1xi64>
        %266 = linalg.matmul ins(%alloc_56, %alloc_57 : memref<12x9xi64>, memref<9x1xi64>) outs(%265 : tensor<12x1xi64>) -> tensor<12x1xi64>
        %267 = math.absf %cst_2 : f32
        %268 = math.absi %10 : tensor<9x1x4xi64>
        %269 = bufferization.to_tensor %alloc_6 : memref<9x1x4xi1>
        %270 = affine.load %alloc_13[%c4] : memref<12xi64>
        %collapsed_58 = tensor.collapse_shape %269 [[0, 1], [2]] : tensor<9x1x4xi1> into tensor<9x4xi1>
        %271 = affine.min affine_map<(d0, d1) -> (-d1 + 1, d1)>(%c4, %262)
        %272 = arith.maxsi %c1719160145_i32, %c1418474441_i32 : i32
        %273 = index.castu %c17041_i16 : i16 to index
        %274 = arith.divsi %c868436817_i32, %c1719160145_i32 : i32
        %cast_59 = tensor.cast %10 : tensor<9x1x4xi64> to tensor<?x?x?xi64>
        %275 = vector.create_mask %264 : vector<12xi1>
        %276 = math.expm1 %14 : tensor<9x1x4xf32>
        scf.yield %11 : tensor<12xf32>
      }
      %252 = vector.bitcast %19 : vector<12xf16> to vector<12xi16>
      %253 = arith.remui %c314243881_i64, %c314243881_i64 : i64
      %254 = arith.maxf %cst_3, %cst_3 : f16
      %255 = arith.negf %cst_0 : f32
      %256 = arith.minui %c1418474441_i32, %c1719160145_i32 : i32
      %257 = index.castu %c5 : index to i32
      %258 = arith.divsi %c868436817_i32, %c868436817_i32 : i32
      %259 = arith.andi %c314243881_i64, %c1459424119_i64 : i64
      %260 = math.tan %1 : tensor<12xf16>
      %261 = arith.remui %c868436817_i32, %c868436817_i32 : i32
      scf.yield %15 : tensor<12xi1>
    }
    default {
      %248 = math.atan %0 : tensor<12xf32>
      %249 = math.ipowi %7, %7 : tensor<12xi32>
      %250 = vector.broadcast %cst_3 : f16 to vector<4x9x12xf16>
      %251 = arith.ori %c1459424119_i64, %c746576448_i64 : i64
      %252 = affine.min affine_map<(d0, d1) -> ((d0 - 32) * -64 + 4, (d0 - 32) floordiv 64)>(%c8, %c10)
      %253 = math.ipowi %c4078_i16, %c4078_i16 : i16
      %expanded_56 = tensor.expand_shape %12 [[0, 1]] : tensor<12xf16> into tensor<12x1xf16>
      %from_elements = tensor.from_elements %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3 : tensor<9x1x4xf16>
      %254 = arith.maxf %cst_4, %cst_2 : f32
      %255 = index.maxu %c6, %c5
      %256 = index.castu %c12 : index to i32
      %257 = vector.broadcast %c1459424119_i64 : i64 to vector<9x1x4xi64>
      %258 = arith.minui %c1459424119_i64, %c746576448_i64 : i64
      %259 = arith.minf %cst_4, %cst_0 : f32
      %260 = vector.broadcast %c1719160145_i32 : i32 to vector<9xi32>
      %261 = vector.broadcast %false_1 : i1 to vector<9xi1>
      %262 = vector.maskedload %alloc_9[%c5], %261, %260 : memref<12xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
      %263 = memref.realloc %alloc_8 : memref<12xi16> to memref<12xi16>
      scf.yield %15 : tensor<12xi1>
    }
    %31 = math.log2 %0 : tensor<12xf32>
    %32 = vector.broadcast %cst_3 : f16 to vector<12x12xf16>
    %33 = vector.outerproduct %19, %19, %32 {kind = #vector.kind<mul>} : vector<12xf16>, vector<12xf16>
    %34 = index.ceildivs %c5, %c13
    %35 = affine.min affine_map<(d0) -> ((d0 mod 64 - d0 - 4) * 2 - d0, (d0 mod 64 - d0 - 4) * 2, ((d0 mod 64 - d0 - 4) * 2) floordiv 8, d0 + 1)>(%c10)
    %36 = math.log10 %1 : tensor<12xf16>
    %generated = tensor.generate %c10 {
    ^bb0(%arg1: index):
      %248 = vector.broadcast %cst_3 : f16 to vector<12x12xf16>
      %249 = vector.outerproduct %19, %19, %248 {kind = #vector.kind<mul>} : vector<12xf16>, vector<12xf16>
      %250 = math.tanh %12 : tensor<12xf16>
      %251 = arith.minf %cst_2, %cst_2 : f32
      %252 = vector.load %alloc_8[%c1] : memref<12xi16>, vector<4x9x12xi16>
      tensor.yield %c17041_i16 : i16
    } : tensor<?xi16>
    %37 = math.log10 %cst_2 : f32
    %38 = math.expm1 %cst : f32
    %39 = vector.multi_reduction <mul>, %19, %19 [] : vector<12xf16> to vector<12xf16>
    %40 = affine.load %alloc_8[%c6] : memref<12xi16>
    %41 = math.sqrt %0 : tensor<12xf32>
    %rank = tensor.rank %14 : tensor<9x1x4xf32>
    %42 = vector.load %alloc_15[%c4, %c0, %c0] : memref<9x1x4xi64>, vector<12xi64>
    %alloc_21 = memref.alloc() : memref<9x1x4xi16>
    %alloc_22 = memref.alloc() : memref<4x9x12xf32>
    %43 = vector.bitcast %42 : vector<12xi64> to vector<12xi64>
    %44 = math.atan %1 : tensor<12xf16>
    %45 = math.ipowi %15, %15 : tensor<12xi1>
    %46 = vector.broadcast %cst_3 : f16 to vector<4xf16>
    %47 = vector.broadcast %false : i1 to vector<4xi1>
    %48 = vector.maskedload %alloc_11[%c9], %47, %46 : memref<12xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
    %49 = vector.extract %43[3] : vector<12xi64>
    memref.tensor_store %9, %alloc_13 : memref<12xi64>
    %50 = arith.minui %c314243881_i64, %c314243881_i64 : i64
    %51 = math.absi %8 : tensor<4x9x12xi32>
    %52 = math.exp %cst_4 : f32
    %53 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%3 : tensor<9x1x4xf32>) {
    ^bb0(%out: f32):
      %248 = tensor.empty() : tensor<4x9x12xi32>
      %mapped_56 = linalg.map ins(%8 : tensor<4x9x12xi32>) outs(%248 : tensor<4x9x12xi32>)
        (%in: i32) {
          %280 = arith.subi %c17041_i16, %26 : i16
          %281 = arith.subi %40, %40 : i16
          %282 = affine.load %alloc_15[%c6, %c10, %c0] : memref<9x1x4xi64>
          %283 = index.maxs %35, %c3
          %284 = math.expm1 %cst_0 : f32
          %285 = vector.shuffle %42, %43 [2, 4, 6, 7, 8, 12, 13, 16, 20] : vector<12xi64>, vector<12xi64>
          %286 = memref.realloc %alloc_13 : memref<12xi64> to memref<12xi64>
          %287 = arith.cmpf ugt, %cst_4, %cst_4 : f32
          %288 = memref.load %alloc_16[%c5] : memref<12xi64>
          %289 = vector.broadcast %c2 : index to vector<9xindex>
          %290 = vector.broadcast %false_1 : i1 to vector<9xi1>
          %291 = vector.broadcast %c1459424119_i64 : i64 to vector<9xi64>
          vector.scatter %alloc_17[%c7, %c0, %c3] [%289], %290, %291 : memref<9x1x4xi64>, vector<9xindex>, vector<9xi1>, vector<9xi64>
          %292 = index.ceildivs %c11, %c3
          %293 = tensor.empty() : tensor<12x12xi64>
          %294 = tensor.empty() : tensor<12x12xi64>
          %295 = linalg.matmul ins(%293, %293 : tensor<12x12xi64>, tensor<12x12xi64>) outs(%294 : tensor<12x12xi64>) -> tensor<12x12xi64>
          %296 = memref.atomic_rmw minf %cst_3, %alloc_20[] : (f16, memref<f16>) -> f16
          %297 = tensor.empty() : tensor<9x1x4xi32>
          %298 = math.fpowi %13, %297 : tensor<9x1x4xf32>, tensor<9x1x4xi32>
          %299 = index.castu %c746576448_i64 : i64 to index
          %300 = arith.remui %c589914455_i64, %c589914455_i64 : i64
          %301 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %46, %46, %cst_3 : vector<4xf16>, vector<4xf16> into f16
          %302 = affine.load %alloc_11[%c8] : memref<12xf16>
          %303 = affine.load %alloc_18[%c3, %c3, %c1] : memref<4x9x12xi16>
          %304 = vector.load %alloc[%c0, %c4, %c4] : memref<4x9x12xi16>, vector<9x1x4xi16>
          %305 = math.atan %3 : tensor<9x1x4xf32>
          %306 = math.cos %11 : tensor<12xf32>
          %307 = vector.shuffle %304, %304 [2, 4, 8, 9, 12, 15, 17] : vector<9x1x4xi16>, vector<9x1x4xi16>
          %308 = math.powf %13, %14 : tensor<9x1x4xf32>
          vector.print %47 : vector<4xi1>
          %309 = arith.remui %c1418474441_i32, %c1418474441_i32 : i32
          %310 = math.log10 %12 : tensor<12xf16>
          %311 = arith.maxsi %c868436817_i32, %c1418474441_i32 : i32
          %312 = vector.multi_reduction <minsi>, %43, %c589914455_i64 [0] : vector<12xi64> to i64
          %313 = vector.extract %48[2] : vector<4xf16>
          %314 = math.log2 %12 : tensor<12xf16>
          %315 = arith.floordivsi %40, %c4078_i16 : i16
          %c1_i32 = arith.constant 1 : i32
          linalg.yield %c1_i32 : i32
        }
      bufferization.dealloc_tensor %10 : tensor<9x1x4xi64>
      %249 = arith.divui %40, %c17041_i16 : i16
      %250 = vector.broadcast %c1418474441_i32 : i32 to vector<4xi32>
      %251 = vector.maskedload %alloc_9[%c4], %47, %250 : memref<12xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
      %252 = math.cos %3 : tensor<9x1x4xf32>
      %253 = index.ceildivs %c5, %c5
      %254 = vector.load %alloc_20[] : memref<f16>, vector<12xf16>
      %255 = vector.broadcast %c589914455_i64 : i64 to vector<12x12xi64>
      %dest_57, %accumulated_value_58 = vector.scan <add>, %255, %43 {inclusive = true, reduction_dim = 1 : i64} : vector<12x12xi64>, vector<12xi64>
      %256 = math.log2 %14 : tensor<9x1x4xf32>
      %257 = arith.divf %cst_4, %cst_4 : f32
      %258 = tensor.empty() : tensor<9x1x4xf32>
      %mapped_59 = linalg.map ins(%3, %3, %3 : tensor<9x1x4xf32>, tensor<9x1x4xf32>, tensor<9x1x4xf32>) outs(%258 : tensor<9x1x4xf32>)
        (%in: f32, %in_61: f32, %in_62: f32) {
          %280 = math.tanh %11 : tensor<12xf32>
          %281 = arith.negf %in_62 : f32
          %282 = arith.remui %c868436817_i32, %c1418474441_i32 : i32
          %283 = math.ipowi %24, %24 : tensor<9x1x4xi1>
          %284 = vector.bitcast %46 : vector<4xf16> to vector<4xf16>
          affine.store %c17041_i16, %alloc_5[%c0] : memref<12xi16>
          %285 = math.atan %cst_2 : f32
          %286 = arith.shrsi %c4078_i16, %c17041_i16 : i16
          affine.store %c4078_i16, %alloc_5[%c2] : memref<12xi16>
          %287 = index.castu %false : i1 to index
          %288 = vector.create_mask %35, %35, %c8 : vector<9x1x4xi1>
          %289 = memref.load %alloc_14[%c3, %c5, %c3] : memref<4x9x12xi1>
          %290 = math.atan %1 : tensor<12xf16>
          %291 = math.log2 %12 : tensor<12xf16>
          %292 = index.maxs %c12, %c9
          %293 = math.fma %cst_2, %in, %cst_0 : f32
          %294 = vector.multi_reduction <add>, %48, %284 [] : vector<4xf16> to vector<4xf16>
          %295 = math.powf %cst_2, %cst_4 : f32
          %296 = arith.divf %cst, %in : f32
          %extracted_63 = tensor.extract %18[%c7] : tensor<12xi64>
          affine.store %c1418474441_i32, %alloc_12[%c14, %c7, %c2] : memref<9x1x4xi32>
          %297 = vector.flat_transpose %254 {columns = 3 : i32, rows = 4 : i32} : vector<12xf16> -> vector<12xf16>
          %298 = bufferization.clone %alloc_18 : memref<4x9x12xi16> to memref<4x9x12xi16>
          %299 = vector.broadcast %false : i1 to vector<1x4xi1>
          %dest_64, %accumulated_value_65 = vector.scan <and>, %288, %299 {inclusive = false, reduction_dim = 0 : i64} : vector<9x1x4xi1>, vector<1x4xi1>
          memref.store %c589914455_i64, %alloc_13[%c8] : memref<12xi64>
          %300 = math.absf %11 : tensor<12xf32>
          %301 = arith.minui %c868436817_i32, %c1719160145_i32 : i32
          %302 = math.roundeven %3 : tensor<9x1x4xf32>
          %303 = vector.broadcast %cst_3 : f16 to vector<4x4xf16>
          %304 = vector.outerproduct %46, %48, %303 {kind = #vector.kind<mul>} : vector<4xf16>, vector<4xf16>
          %rank_66 = tensor.rank %2 : tensor<9x1x4xi1>
          %305 = affine.load %alloc[%c8, %c8, %c1] : memref<4x9x12xi16>
          %306 = math.tan %in_62 : f32
          %cst_67 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_67 : f32
        }
      %c1_i64 = arith.constant 1 : i64
      %c0_i64 = arith.constant 0 : i64
      %259 = vector.transfer_read %9[%rank], %c0_i64 : tensor<12xi64>, vector<i64>
      %260 = arith.shli %c1719160145_i32, %c1719160145_i32 : i32
      %261 = bufferization.to_tensor %alloc_10 : memref<12xf32>
      %262 = math.round %1 : tensor<12xf16>
      %263 = arith.divsi %26, %26 : i16
      %264 = vector.broadcast %cst_3 : f16 to vector<4x4xf16>
      %265 = vector.outerproduct %48, %48, %264 {kind = #vector.kind<mul>} : vector<4xf16>, vector<4xf16>
      %266 = arith.maxf %cst, %cst_4 : f32
      %267 = index.mul %c5, %c7
      %268 = arith.minui %c746576448_i64, %c589914455_i64 : i64
      %269 = math.sqrt %3 : tensor<9x1x4xf32>
      %270 = math.ctlz %9 : tensor<12xi64>
      %271 = arith.floordivsi %26, %40 : i16
      %true = arith.constant true
      %272 = vector.transfer_read %2[%c0, %267, %c2], %true : tensor<9x1x4xi1>, vector<9x1xi1>
      %273 = memref.realloc %alloc_5 : memref<12xi16> to memref<9xi16>
      affine.for %arg1 = 0 to 106 {
      }
      %274 = index.add %c0, %c15
      %c0_i64_60 = arith.constant 0 : i64
      %275 = vector.transfer_read %10[%c0, %34, %c9], %c0_i64_60 : tensor<9x1x4xi64>, vector<4xi64>
      %276 = arith.shrsi %c1719160145_i32, %c1418474441_i32 : i32
      %277 = affine.load %alloc_19[%c13, %c7, %c2] : memref<9x1x4xf16>
      %278 = arith.floordivsi %c1418474441_i32, %c1719160145_i32 : i32
      %279 = arith.minui %c314243881_i64, %c1459424119_i64 : i64
      linalg.yield %cst_2 : f32
    } -> tensor<9x1x4xf32>
    %54 = arith.negf %cst_0 : f32
    %55 = tensor.empty(%c1, %c13) : tensor<?x1x?xf16>
    %56 = arith.divf %cst, %cst_0 : f32
    %57 = arith.floordivsi %c1418474441_i32, %c868436817_i32 : i32
    %58 = vector.load %alloc_7[%c3, %c0, %c0] : memref<9x1x4xi1>, vector<4x9x12xi1>
    %59 = arith.divf %cst_0, %cst_2 : f32
    %extracted = tensor.extract %17[%c4] : tensor<12xi64>
    %60 = math.expm1 %cst_2 : f32
    %61 = vector.broadcast %c1719160145_i32 : i32 to vector<i32>
    %62 = vector.transfer_write %61, %7[%c3] : vector<i32>, tensor<12xi32>
    %63 = vector.broadcast %false_1 : i1 to vector<i1>
    %64 = vector.transfer_write %63, %23[%c4, %c4, %c10] : vector<i1>, tensor<4x9x12xi1>
    %65 = index.castu %c8 : index to i32
    %66 = tensor.empty() : tensor<4x12xi32>
    %67 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%66, %7, %20 : tensor<4x12xi32>, tensor<12xi32>, tensor<12xi32>) outs(%8 : tensor<4x9x12xi32>) {
    ^bb0(%in: i32, %in_56: i32, %in_57: i32, %out: i32):
      %248 = arith.ori %26, %40 : i16
      %249 = arith.andi %c1719160145_i32, %in_56 : i32
      scf.execute_region {
        %278 = arith.cmpf ord, %cst_2, %cst_4 : f32
        %279 = arith.cmpf ugt, %cst_0, %cst_0 : f32
        %280 = vector.create_mask %c8, %c2, %34 : vector<9x1x4xi1>
        %281 = index.castu %c12 : index to i32
        %282 = index.sub %c12, %c3
        %283 = affine.load %alloc_5[%c12] : memref<12xi16>
        %284 = arith.subi %c1719160145_i32, %in_56 : i32
        %285 = math.powf %1, %12 : tensor<12xf16>
        bufferization.dealloc_tensor %24 : tensor<9x1x4xi1>
        %286 = affine.load %alloc_12[%c10, %c10, %c8] : memref<9x1x4xi32>
        %287 = arith.subi %283, %c17041_i16 : i16
        %288 = arith.divf %cst_4, %cst_4 : f32
        %289 = math.exp2 %14 : tensor<9x1x4xf32>
        %290 = vector.load %alloc_16[%c6] : memref<12xi64>, vector<12xi64>
        %alloca_61 = memref.alloca() : memref<12xi16>
        %291 = index.maxs %34, %c6
        scf.yield
      }
      %250 = vector.shuffle %42, %43 [0, 1, 3, 4, 5, 6, 9, 13, 16, 17, 18, 20] : vector<12xi64>, vector<12xi64>
      %251 = memref.alloca_scope  -> (i16) {
        memref.tensor_store %18, %alloc_16 : memref<12xi64>
        %278 = affine.min affine_map<(d0, d1, d2) -> (d1 + d1 floordiv 128 + 32 - 8, -d0, d1, d1 + d1 floordiv 128 + 32)>(%c7, %34, %34)
        %279 = arith.minui %c314243881_i64, %c589914455_i64 : i64
        %280 = math.absi %20 : tensor<12xi32>
        memref.store %in_56, %alloc_9[%c10] : memref<12xi32>
        %281 = math.fma %5, %5, %12 : tensor<12xf16>
        %282 = index.sub %34, %278
        %283 = arith.cmpf olt, %cst, %cst_4 : f32
        %c1_i64 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %284 = vector.transfer_read %alloc_13[%c15], %c0_i64 : memref<12xi64>, vector<i64>
        %alloc_61 = memref.alloc() : memref<9x1x4xi32>
        memref.copy %alloc_12, %alloc_61 : memref<9x1x4xi32> to memref<9x1x4xi32>
        %285 = math.powf %12, %1 : tensor<12xf16>
        %286 = math.powf %13, %14 : tensor<9x1x4xf32>
        %287 = math.atan2 %cst_0, %cst_4 : f32
        %cst_62 = arith.constant 1.000000e+00 : f16
        %cst_63 = arith.constant 0.000000e+00 : f16
        %288 = vector.transfer_read %12[%282], %cst_63 : tensor<12xf16>, vector<f16>
        %289 = affine.min affine_map<(d0, d1, d2) -> (d2 - 8, d1 mod 16 - 32)>(%278, %34, %c15)
        %290 = arith.mulf %cst_3, %cst_3 : f16
        %291 = arith.andi %in, %c868436817_i32 : i32
        %292 = vector.load %alloc_17[%c1, %c0, %c3] : memref<9x1x4xi64>, vector<12xi64>
        %293 = vector.broadcast %extracted : i64 to vector<12x12xi64>
        %294 = vector.outerproduct %292, %43, %293 {kind = #vector.kind<or>} : vector<12xi64>, vector<12xi64>
        %cast_64 = tensor.cast %16 : tensor<12xi64> to tensor<?xi64>
        %295 = index.sub %c5, %c7
        %296 = vector.broadcast %c746576448_i64 : i64 to vector<9x1x4xi64>
        %297 = vector.create_mask %c15, %c7, %289 : vector<9x1x4xi1>
        %298 = math.cos %cst_0 : f32
        %299 = vector.multi_reduction <mul>, %19, %cst_3 [0] : vector<12xf16> to f16
        %300 = arith.remf %cst_2, %cst_4 : f32
        %301 = math.cos %cst_4 : f32
        %302 = vector.shuffle %43, %43 [3, 4, 6, 7, 8, 10, 11, 13, 16, 17, 18, 21, 22] : vector<12xi64>, vector<12xi64>
        %303 = memref.load %alloc_8[%c7] : memref<12xi16>
        %304 = index.maxs %278, %rank
        %305 = math.powf %cst, %cst_2 : f32
        %306 = vector.extract %47[3] : vector<4xi1>
        memref.alloca_scope.return %26 : i16
      }
      %252 = math.cttz %c746576448_i64 : i64
      %253 = arith.minui %extracted, %c314243881_i64 : i64
      bufferization.dealloc_tensor %11 : tensor<12xf32>
      %254 = arith.minui %40, %c4078_i16 : i16
      %255 = vector.multi_reduction <xor>, %42, %c1459424119_i64 [0] : vector<12xi64> to i64
      %256 = index.divs %c3, %c7
      %257 = index.maxu %c9, %c15
      %258 = arith.minf %cst_3, %cst_3 : f16
      %259 = scf.if %false_1 -> (memref<9x1x4xi64>) {
        %278 = index.castu %c15 : index to i32
        %279 = bufferization.to_tensor %alloc_14 : memref<4x9x12xi1>
        %280 = arith.divui %in_56, %out : i32
        %true = index.bool.constant true
        %281 = math.cos %cst_3 : f16
        vector.print %58 : vector<4x9x12xi1>
        memref.store %26, %alloc_5[%c0] : memref<12xi16>
        %282 = bufferization.to_tensor %alloc_12 : memref<9x1x4xi32>
        scf.yield %alloc_17 : memref<9x1x4xi64>
      } else {
        %278 = arith.subi %40, %40 : i16
        %279 = arith.andi %c746576448_i64, %extracted : i64
        %280 = index.mul %rank, %c2
        %cast_61 = tensor.cast %15 : tensor<12xi1> to tensor<?xi1>
        %281 = memref.realloc %alloc_9 : memref<12xi32> to memref<1xi32>
        %282 = math.fma %cst_3, %cst_3, %cst_3 : f16
        %283 = arith.ori %251, %c4078_i16 : i16
        vector.print %58 : vector<4x9x12xi1>
        scf.yield %alloc_15 : memref<9x1x4xi64>
      }
      %260 = arith.minui %26, %251 : i16
      %261 = arith.ori %extracted, %extracted : i64
      %262 = math.tan %12 : tensor<12xf16>
      %263 = vector.insert %cst_3, %48 [2] : f16 into vector<4xf16>
      %264 = scf.execute_region -> tensor<12xi16> {
        %278 = affine.min affine_map<(d0, d1, d2, d3) -> ((d1 ceildiv 8) * 128)>(%c13, %c1, %c11, %c1)
        %279 = math.fma %11, %11, %0 : tensor<12xf32>
        %280 = tensor.empty() : tensor<12xf16>
        %281 = arith.cmpf one, %cst_4, %cst_2 : f32
        %282 = arith.shli %c746576448_i64, %255 : i64
        %283 = index.ceildivs %35, %c6
        %284 = arith.minf %cst_3, %cst_3 : f16
        %285 = memref.load %alloc_20[] : memref<f16>
        %286 = vector.extract %48[1] : vector<4xf16>
        %287 = index.mul %35, %34
        %288 = arith.subi %c1459424119_i64, %c314243881_i64 : i64
        %289 = vector.flat_transpose %42 {columns = 3 : i32, rows = 4 : i32} : vector<12xi64> -> vector<12xi64>
        %290 = vector.create_mask %rank, %c1, %283 : vector<9x1x4xi1>
        %291 = arith.cmpf one, %cst_2, %cst_0 : f32
        %292 = math.log10 %13 : tensor<9x1x4xf32>
        %alloca_61 = memref.alloca() : memref<9x1x4xi32>
        %293 = tensor.empty() : tensor<12xi16>
        scf.yield %293 : tensor<12xi16>
      }
      %265 = index.castu %c3 : index to i32
      %266 = arith.minui %in_56, %c868436817_i32 : i32
      %267 = vector.extract_strided_slice %58 {offsets = [2], sizes = [2], strides = [1]} : vector<4x9x12xi1> to vector<2x9x12xi1>
      %268 = memref.load %alloc_6[%c6, %c0, %c3] : memref<9x1x4xi1>
      %269 = arith.divui %c868436817_i32, %c1418474441_i32 : i32
      %270 = vector.bitcast %58 : vector<4x9x12xi1> to vector<4x9x12xi1>
      %271 = tensor.empty() : tensor<12xi16>
      %alloc_58 = memref.alloc() : memref<9x1xi1>
      %alloc_59 = memref.alloc() : memref<1x1xi1>
      %272 = tensor.empty() : tensor<9x1xi1>
      %273 = linalg.matmul ins(%alloc_58, %alloc_59 : memref<9x1xi1>, memref<1x1xi1>) outs(%272 : tensor<9x1xi1>) -> tensor<9x1xi1>
      %274 = math.atan %12 : tensor<12xf16>
      %275 = math.exp2 %4 : tensor<4x9x12xf32>
      %rank_60 = tensor.rank %17 : tensor<12xi64>
      %276 = math.fma %11, %11, %11 : tensor<12xf32>
      %277 = arith.divui %in, %in_56 : i32
      linalg.yield %in_57 : i32
    } -> tensor<4x9x12xi32>
    %68 = index.maxu %c13, %c12
    %69 = math.log2 %4 : tensor<4x9x12xf32>
    %alloc_23 = memref.alloc() : memref<9x1x4xi1>
    %70 = vector.insert %false, %47 [2] : i1 into vector<4xi1>
    %71 = arith.minf %cst_3, %cst_3 : f16
    %generated_24 = tensor.generate %c10 {
    ^bb0(%arg1: index):
      %248 = index.mul %c14, %c2
      %249 = affine.min affine_map<(d0, d1, d2) -> (d0 * -32 + 8, d1, d1)>(%c10, %c3, %c4)
      %250 = vector.transpose %63, [] : vector<i1> to vector<i1>
      %251 = vector.broadcast %cst : f32 to vector<4x9x12xf32>
      tensor.yield %c1418474441_i32 : i32
    } : tensor<?xi32>
    %72 = arith.minui %26, %26 : i16
    %73 = index.mul %35, %68
    %cst_25 = arith.constant 1.000000e+00 : f32
    %cst_26 = arith.constant 0.000000e+00 : f32
    %74 = vector.transfer_read %4[%c6, %c7, %73], %cst_26 : tensor<4x9x12xf32>, vector<f32>
    %expanded = tensor.expand_shape %16 [[0, 1]] : tensor<12xi64> into tensor<12x1xi64>
    %75 = index.castu %c8 : index to i32
    %76 = bufferization.to_memref %2 : memref<9x1x4xi1>
    %77 = arith.mulf %cst_25, %cst_4 : f32
    %78 = math.cos %0 : tensor<12xf32>
    %79 = vector.extract %42[0] : vector<12xi64>
    %80 = arith.mulf %cst_2, %cst : f32
    %81 = bufferization.clone %alloc : memref<4x9x12xi16> to memref<4x9x12xi16>
    %82 = math.powf %0, %0 : tensor<12xf32>
    vector.print %48 : vector<4xf16>
    vector.print %19 : vector<12xf16>
    %83 = vector.broadcast %40 : i16 to vector<12xi16>
    %84 = vector.flat_transpose %43 {columns = 3 : i32, rows = 4 : i32} : vector<12xi64> -> vector<12xi64>
    %85 = vector.extract %58[1] : vector<4x9x12xi1>
    %86 = bufferization.to_tensor %alloc_6 : memref<9x1x4xi1>
    vector.print %19 : vector<12xf16>
    %87 = affine.apply affine_map<(d0) -> (d0 * 64 - 32)>(%rank)
    %88 = vector.extract %84[1] : vector<12xi64>
    %89 = math.ipowi %8, %8 : tensor<4x9x12xi32>
    %generated_27 = tensor.generate %35 {
    ^bb0(%arg1: index):
      %248 = vector.extract %58[3, 5] : vector<4x9x12xi1>
      %249 = arith.minf %cst, %cst_25 : f32
      %250 = bufferization.to_tensor %alloc_6 : memref<9x1x4xi1>
      %251 = index.sub %34, %c11
      tensor.yield %false_1 : i1
    } : tensor<?xi1>
    %90 = arith.divui %c17041_i16, %c17041_i16 : i16
    %91 = vector.broadcast %c1 : index to vector<1xindex>
    %92 = vector.broadcast %false : i1 to vector<1xi1>
    vector.scatter %alloc_14[%c3, %c4, %c6] [%91], %92, %92 : memref<4x9x12xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
    memref.copy %alloc_18, %81 : memref<4x9x12xi16> to memref<4x9x12xi16>
    %93 = index.ceildivu %c2, %c0
    scf.if %false {
      %248 = arith.maxsi %c1459424119_i64, %c1459424119_i64 : i64
      %249 = math.ctpop %7 : tensor<12xi32>
      %collapsed_56 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<4x9x12xi32> into tensor<36x12xi32>
      %250 = index.castu %26 : i16 to index
      %251 = math.log2 %5 : tensor<12xf16>
      %252 = math.fma %1, %1, %5 : tensor<12xf16>
      %253 = math.tanh %cst_25 : f32
      %alloc_57 = memref.alloc() : memref<9x1x4xf16>
      memref.copy %alloc_19, %alloc_57 : memref<9x1x4xf16> to memref<9x1x4xf16>
    }
    %94 = arith.subi %false, %false : i1
    %95 = tensor.empty() : tensor<12xf16>
    %96 = math.fma %cst_4, %cst, %cst_2 : f32
    %97 = math.atan %13 : tensor<9x1x4xf32>
    %98 = math.atan %4 : tensor<4x9x12xf32>
    %99 = affine.min affine_map<(d0, d1) -> (d1 floordiv 4 - d0 floordiv 4, d1 floordiv 4, d0 floordiv 128)>(%87, %c0)
    %alloc_28 = memref.alloc() : memref<9x1x4xi1>
    %100 = memref.realloc %alloc_16 : memref<12xi64> to memref<12xi64>
    %101 = math.atan %1 : tensor<12xf16>
    %102 = arith.remui %c4078_i16, %c17041_i16 : i16
    memref.tensor_store %2, %76 : memref<9x1x4xi1>
    %103 = vector.extract %83[6] : vector<12xi16>
    %104 = tensor.empty() : tensor<1x9xi64>
    %105 = tensor.empty() : tensor<12x9xi64>
    %106 = linalg.matmul ins(%expanded, %104 : tensor<12x1xi64>, tensor<1x9xi64>) outs(%105 : tensor<12x9xi64>) -> tensor<12x9xi64>
    %107 = index.ceildivs %c2, %c2
    %108 = math.powf %cst_3, %cst_3 : f16
    %109 = arith.minui %false_1, %false_1 : i1
    %extracted_29 = tensor.extract %3[%c4, %c0, %c0] : tensor<9x1x4xf32>
    %110 = memref.realloc %alloc_9 : memref<12xi32> to memref<12xi32>
    %111 = vector.extract %43[1] : vector<12xi64>
    %112 = index.divu %c4, %34
    %113 = index.castu %c0 : index to i32
    %114 = math.cos %1 : tensor<12xf16>
    %115 = math.round %14 : tensor<9x1x4xf32>
    %116 = tensor.empty() : tensor<9x1x4xf32>
    %mapped = linalg.map ins(%13 : tensor<9x1x4xf32>) outs(%116 : tensor<9x1x4xf32>)
      (%in: f32) {
        %248 = arith.shrsi %c4078_i16, %c17041_i16 : i16
        %249 = memref.atomic_rmw andi %c746576448_i64, %alloc_13[%c9] : (i64, memref<12xi64>) -> i64
        memref.alloca_scope  {
          %280 = index.castu %extracted : i64 to index
          %281 = arith.minf %cst_0, %in : f32
          %282 = index.sub %c4, %34
          %283 = math.ctpop %10 : tensor<9x1x4xi64>
          %284 = math.tanh %13 : tensor<9x1x4xf32>
          %dest_60, %accumulated_value_61 = vector.scan <mul>, %58, %85 {inclusive = false, reduction_dim = 0 : i64} : vector<4x9x12xi1>, vector<9x12xi1>
          %285 = bufferization.to_tensor %alloc_7 : memref<9x1x4xi1>
          %alloc_62 = memref.alloc() : memref<1x9xi64>
          %286 = tensor.empty() : tensor<12x9xi64>
          %287 = linalg.matmul ins(%expanded, %alloc_62 : tensor<12x1xi64>, memref<1x9xi64>) outs(%286 : tensor<12x9xi64>) -> tensor<12x9xi64>
          %288 = math.copysign %cst, %cst_2 : f32
          %289 = vector.bitcast %46 : vector<4xf16> to vector<4xf16>
          %290 = math.ipowi %7, %20 : tensor<12xi32>
          %291 = arith.divf %cst_25, %cst_0 : f32
          %alloc_63 = memref.alloc() : memref<9x12xi64>
          %292 = tensor.empty() : tensor<12x12xi64>
          %293 = linalg.matmul ins(%286, %alloc_63 : tensor<12x9xi64>, memref<9x12xi64>) outs(%292 : tensor<12x12xi64>) -> tensor<12x12xi64>
          %294 = index.sub %99, %87
          %295 = math.atan %in : f32
          %296 = arith.andi %c17041_i16, %40 : i16
          %297 = index.maxu %282, %c13
          %298 = vector.bitcast %47 : vector<4xi1> to vector<4xi1>
          %299 = vector.reduction <maxui>, %84 : vector<12xi64> into i64
          %300 = arith.shrui %c1418474441_i32, %c1719160145_i32 : i32
          %expanded_64 = tensor.expand_shape %13 [[0], [1], [2, 3]] : tensor<9x1x4xf32> into tensor<9x1x4x1xf32>
          %301 = arith.ori %c1719160145_i32, %c1719160145_i32 : i32
          %302 = index.sub %112, %99
          %303 = arith.minf %cst_0, %extracted_29 : f32
          %304 = arith.divui %c314243881_i64, %extracted : i64
          %cast_65 = tensor.cast %14 : tensor<9x1x4xf32> to tensor<?x?x?xf32>
          %305 = vector.broadcast %false : i1 to vector<9xi1>
          %dest_66, %accumulated_value_67 = vector.scan <and>, %85, %305 {inclusive = true, reduction_dim = 1 : i64} : vector<9x12xi1>, vector<9xi1>
          %306 = math.ctpop %17 : tensor<12xi64>
          %cast_68 = tensor.cast %16 : tensor<12xi64> to tensor<?xi64>
          %alloca_69 = memref.alloca() : memref<12xi64>
          %alloc_70 = memref.alloc() : memref<f16>
          memref.copy %alloc_20, %alloc_70 : memref<f16> to memref<f16>
          %307 = math.expm1 %12 : tensor<12xf16>
        }
        %250 = index.mul %73, %93
        memref.alloca_scope  {
          %280 = index.divu %c2, %c3
          %cst_60 = arith.constant 1.000000e+00 : f32
          %281 = vector.transfer_read %14[%c3, %34, %c5], %cst_60 : tensor<9x1x4xf32>, vector<9x9xf32>
          %282 = index.ceildivu %112, %c7
          %283 = index.divu %c4, %68
          %alloc_61 = memref.alloc() : memref<9x1x4xf32>
          memref.tensor_store %3, %alloc_61 : memref<9x1x4xf32>
          %284 = arith.andi %c314243881_i64, %c746576448_i64 : i64
          %285 = arith.mulf %cst_0, %cst : f32
          %286 = math.atan %cst : f32
          %287 = math.round %3 : tensor<9x1x4xf32>
          vector.print %58 : vector<4x9x12xi1>
          %288 = bufferization.to_tensor %alloc_6 : memref<9x1x4xi1>
          %289 = arith.ceildivsi %false, %false_1 : i1
          %c79_i16 = arith.constant 79 : i16
          %290 = math.ctpop %18 : tensor<12xi64>
          %291 = vector.broadcast %false_1 : i1 to vector<4x12xi1>
          %dest_62, %accumulated_value_63 = vector.scan <maxsi>, %58, %291 {inclusive = true, reduction_dim = 1 : i64} : vector<4x9x12xi1>, vector<4x12xi1>
          %292 = math.fma %116, %13, %14 : tensor<9x1x4xf32>
          %293 = index.add %99, %112
          %true = index.bool.constant true
          %alloca_64 = memref.alloca() : memref<4x9x12xi32>
          %294 = affine.min affine_map<(d0, d1, d2) -> (0)>(%c9, %c14, %c13)
          %295 = math.tanh %13 : tensor<9x1x4xf32>
          %cast_65 = tensor.cast %105 : tensor<12x9xi64> to tensor<?x?xi64>
          %expanded_66 = tensor.expand_shape %0 [[0, 1]] : tensor<12xf32> into tensor<12x1xf32>
          %296 = bufferization.clone %alloc_6 : memref<9x1x4xi1> to memref<9x1x4xi1>
          %297 = vector.multi_reduction <xor>, %42, %c1459424119_i64 [0] : vector<12xi64> to i64
          %298 = arith.ceildivsi %297, %c746576448_i64 : i64
          %299 = bufferization.clone %alloc_20 : memref<f16> to memref<f16>
          %from_elements = tensor.from_elements %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3 : tensor<9x1x4xf16>
          %alloca_67 = memref.alloca() : memref<12xi32>
          memref.store %false_1, %76[%c5, %c0, %c2] : memref<9x1x4xi1>
          %300 = arith.floordivsi %c1418474441_i32, %c868436817_i32 : i32
          %alloc_68 = memref.alloc() : memref<9x1xi64>
          %301 = tensor.empty() : tensor<12x1xi64>
          %302 = linalg.matmul ins(%105, %alloc_68 : tensor<12x9xi64>, memref<9x1xi64>) outs(%301 : tensor<12x1xi64>) -> tensor<12x1xi64>
        }
        %alloc_56 = memref.alloc() : memref<f16>
        memref.copy %alloc_20, %alloc_56 : memref<f16> to memref<f16>
        %251 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %48, %48, %cst_3 : vector<4xf16>, vector<4xf16> into f16
        %252 = affine.if affine_set<(d0, d1) : (d1 floordiv 128 == 0, d1 * 2 >= 0, d0 >= 0, d1 + d1 + 4 == 0)>(%c3, %c4) -> memref<12xi32> {
          %280 = vector.insert %c746576448_i64, %42 [10] : i64 into vector<12xi64>
          %281 = math.expm1 %cst_0 : f32
          %282 = math.expm1 %3 : tensor<9x1x4xf32>
          %283 = index.castu %87 : index to i32
          %284 = tensor.empty() : tensor<9x9xi64>
          %285 = tensor.empty() : tensor<12x9xi64>
          %286 = linalg.matmul ins(%105, %284 : tensor<12x9xi64>, tensor<9x9xi64>) outs(%285 : tensor<12x9xi64>) -> tensor<12x9xi64>
          %287 = arith.shrsi %c1719160145_i32, %c1719160145_i32 : i32
          %288 = index.maxu %99, %c2
          %289 = index.ceildivu %c4, %250
          affine.yield %alloc_9 : memref<12xi32>
        } else {
          %280 = math.absi %10 : tensor<9x1x4xi64>
          %281 = math.round %5 : tensor<12xf16>
          %282 = vector.load %76[%c4, %c0, %c2] : memref<9x1x4xi1>, vector<9x1x4xi1>
          %283 = index.sub %c12, %c1
          %true = arith.constant true
          %284 = vector.transfer_read %2[%c11, %c15, %93], %true : tensor<9x1x4xi1>, vector<9x4xi1>
          %285 = index.add %87, %c9
          %286 = math.log10 %14 : tensor<9x1x4xf32>
          %287 = arith.maxf %cst_4, %cst : f32
          affine.yield %alloc_9 : memref<12xi32>
        }
        %c-18165_i16 = arith.constant -18165 : i16
        %253 = arith.floordivsi %c4078_i16, %c4078_i16 : i16
        %254 = vector.transpose %19, [0] : vector<12xf16> to vector<12xf16>
        %255 = math.ipowi %8, %8 : tensor<4x9x12xi32>
        %256 = arith.remui %c314243881_i64, %extracted : i64
        %257 = arith.minui %c314243881_i64, %c1459424119_i64 : i64
        %258 = arith.minf %cst_3, %cst_3 : f16
        vector.print %84 : vector<12xi64>
        %259 = math.atan %cst : f32
        %260 = index.ceildivu %c12, %c9
        %261 = vector.broadcast %c746576448_i64 : i64 to vector<9xi64>
        %262 = vector.broadcast %false_1 : i1 to vector<9xi1>
        %263 = vector.maskedload %alloc_17[%c4, %c0, %c0], %262, %261 : memref<9x1x4xi64>, vector<9xi1>, vector<9xi64> into vector<9xi64>
        %264 = vector.broadcast %false : i1 to vector<i1>
        %265 = vector.transfer_write %264, %86[%c0, %c10, %c0] : vector<i1>, tensor<9x1x4xi1>
        %cast_57 = tensor.cast %12 : tensor<12xf16> to tensor<?xf16>
        %266 = vector.broadcast %107 : index to vector<1xindex>
        %267 = vector.broadcast %false_1 : i1 to vector<1xi1>
        %268 = vector.broadcast %cst_3 : f16 to vector<1xf16>
        vector.scatter %alloc_19[%c0, %c0, %c2] [%266], %267, %268 : memref<9x1x4xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
        %269 = arith.andi %false_1, %false_1 : i1
        %270 = scf.execute_region -> i1 {
          %280 = math.ipowi %16, %6 : tensor<12xi64>
          %281 = vector.broadcast %c868436817_i32 : i32 to vector<i32>
          vector.transfer_write %281, %alloc_9[%c2] : vector<i32>, memref<12xi32>
          %282 = arith.subi %26, %26 : i16
          %283 = affine.load %alloc_11[%c11] : memref<12xf16>
          %284 = memref.load %alloc_12[%c7, %c0, %c2] : memref<9x1x4xi32>
          %285 = memref.atomic_rmw mins %c868436817_i32, %alloc_9[%c8] : (i32, memref<12xi32>) -> i32
          %286 = arith.ceildivsi %false_1, %false : i1
          %287 = math.tan %cst_2 : f32
          %extracted_60 = tensor.extract %20[%c3] : tensor<12xi32>
          %288 = affine.load %alloc_6[%c1, %c1, %c6] : memref<9x1x4xi1>
          %289 = bufferization.to_memref %14 : memref<9x1x4xf32>
          %cast_61 = tensor.cast %9 : tensor<12xi64> to tensor<?xi64>
          %290 = arith.remf %cst_3, %283 : f16
          %291 = affine.apply affine_map<(d0, d1, d2, d3) -> (-d3)>(%112, %rank, %35, %c3)
          %292 = arith.mulf %in, %cst_0 : f32
          %293 = memref.realloc %alloc_8 : memref<12xi16> to memref<1xi16>
          scf.yield %false : i1
        }
        %271 = arith.minf %extracted_29, %cst : f32
        %272 = index.ceildivu %260, %87
        %273 = vector.broadcast %extracted_29 : f32 to vector<9xf32>
        %274 = vector.maskedload %alloc_10[%c7], %262, %273 : memref<12xf32>, vector<9xi1>, vector<9xf32> into vector<9xf32>
        %275 = arith.andi %c589914455_i64, %c314243881_i64 : i64
        %276 = arith.maxui %extracted, %extracted : i64
        %277 = math.round %1 : tensor<12xf16>
        %278 = tensor.empty() : tensor<9x1x4xi1>
        %mapped_58 = linalg.map ins(%76, %2, %86 : memref<9x1x4xi1>, tensor<9x1x4xi1>, tensor<9x1x4xi1>) outs(%278 : tensor<9x1x4xi1>)
          (%in_60: i1, %in_61: i1, %in_62: i1) {
            %280 = index.casts %c8 : index to i32
            %281 = index.ceildivs %34, %c3
            %282 = arith.cmpf uno, %cst_3, %cst_3 : f16
            %283 = arith.ori %c1459424119_i64, %c746576448_i64 : i64
            %284 = index.castu %in_61 : i1 to index
            %285 = math.atan %1 : tensor<12xf16>
            %286 = arith.subi %false, %in_61 : i1
            %287 = index.divu %c4, %c1
            %extracted_63 = tensor.extract %20[%c10] : tensor<12xi32>
            %288 = math.expm1 %in : f32
            %289 = index.divs %c13, %272
            %290 = math.ctpop %21 : tensor<i32>
            %291 = math.log2 %13 : tensor<9x1x4xf32>
            %292 = vector.broadcast %extracted_29 : f32 to vector<4x9x12xf32>
            %293 = arith.subi %c1719160145_i32, %extracted_63 : i32
            %294 = memref.atomic_rmw mulf %cst_3, %alloc_19[%c2, %c0, %c0] : (f16, memref<9x1x4xf16>) -> f16
            memref.store %false_1, %alloc_6[%c1, %c0, %c3] : memref<9x1x4xi1>
            %rank_64 = tensor.rank %14 : tensor<9x1x4xf32>
            %295 = math.log2 %in : f32
            %296 = index.divs %272, %99
            %297 = index.ceildivs %c1, %c7
            %298 = index.maxs %c10, %34
            %299 = math.absf %cst_4 : f32
            %alloc_65 = memref.alloc() : memref<9x1x4xf32>
            %300 = vector.multi_reduction <and>, %47, %in_61 [0] : vector<4xi1> to i1
            %301 = memref.load %alloc_9[%c6] : memref<12xi32>
            %302 = math.powf %extracted_29, %cst : f32
            %303 = arith.divf %in, %cst_25 : f32
            %304 = arith.maxsi %false, %false_1 : i1
            %305 = vector.create_mask %c11 : vector<12xi1>
            %306 = affine.min affine_map<(d0, d1, d2) -> (d0, d2 floordiv 64)>(%68, %112, %c2)
            %307 = index.mul %c13, %c7
            %true = arith.constant true
            linalg.yield %true : i1
          }
        %279 = arith.cmpf ule, %in, %cst_25 : f32
        %cst_59 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_59 : f32
      }
    %117 = math.log2 %cst_25 : f32
    %118 = vector.broadcast %false_1 : i1 to vector<4x12xi1>
    %dest, %accumulated_value = vector.scan <minsi>, %58, %118 {inclusive = true, reduction_dim = 1 : i64} : vector<4x9x12xi1>, vector<4x12xi1>
    %119 = math.roundeven %cst_25 : f32
    %rank_30 = tensor.rank %expanded : tensor<12x1xi64>
    %collapsed = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<4x9x12xf32> into tensor<36x12xf32>
    %120 = math.cos %1 : tensor<12xf16>
    %121 = index.sub %c11, %c3
    %alloca = memref.alloca() : memref<12xi16>
    %122 = affine.apply affine_map<(d0, d1) -> (d1 + 128)>(%35, %87)
    %123 = vector.load %alloc_13[%c0] : memref<12xi64>, vector<4x9x12xi64>
    %124 = arith.minui %false_1, %false_1 : i1
    %125 = arith.minui %c746576448_i64, %extracted : i64
    %126 = arith.minui %c1719160145_i32, %c1418474441_i32 : i32
    %127 = arith.floordivsi %c746576448_i64, %extracted : i64
    %128 = vector.matrix_multiply %47, %47 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
    affine.store %c1459424119_i64, %alloc_15[%c13, %c7, %c8] : memref<9x1x4xi64>
    %129 = tensor.empty() : tensor<9x1x4xi64>
    %mapped_31 = linalg.map ins(%10, %alloc_17, %alloc_17 : tensor<9x1x4xi64>, memref<9x1x4xi64>, memref<9x1x4xi64>) outs(%129 : tensor<9x1x4xi64>)
      (%in: i64, %in_56: i64, %in_57: i64) {
        vector.print %63 : vector<i1>
        %248 = math.exp2 %1 : tensor<12xf16>
        %249 = arith.floordivsi %c17041_i16, %26 : i16
        %collapsed_58 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<4x9x12xf32> into tensor<36x12xf32>
        %250 = arith.divf %cst_3, %cst_3 : f16
        %collapsed_59 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<9x1x4xf32> into tensor<9x4xf32>
        %251 = affine.load %76[%c3, %c11, %c8] : memref<9x1x4xi1>
        %generated_60 = tensor.generate %112, %c12 {
        ^bb0(%arg1: index, %arg2: index, %arg3: index):
          %273 = vector.insert %251, %128 [0] : i1 into vector<1xi1>
          %274 = bufferization.to_memref %7 : memref<12xi32>
          %false_70 = index.bool.constant false
          %275 = math.expm1 %14 : tensor<9x1x4xf32>
          tensor.yield %c868436817_i32 : i32
        } : tensor<?x?x12xi32>
        %dest_61, %accumulated_value_62 = vector.scan <maxsi>, %58, %85 {inclusive = false, reduction_dim = 0 : i64} : vector<4x9x12xi1>, vector<9x12xi1>
        %252 = vector.broadcast %false_1 : i1 to vector<9xi1>
        %dest_63, %accumulated_value_64 = vector.scan <minui>, %85, %252 {inclusive = true, reduction_dim = 1 : i64} : vector<9x12xi1>, vector<9xi1>
        %253 = index.sub %c6, %35
        %254 = vector.broadcast %251 : i1 to vector<9x1x4xi1>
        %alloc_65 = memref.alloc() : memref<12xi1>
        %255 = vector.broadcast %c1418474441_i32 : i32 to vector<4x9x12xi32>
        %256 = vector.gather %alloc_65[%93] [%255], %58, %58 : memref<12xi1>, vector<4x9x12xi32>, vector<4x9x12xi1>, vector<4x9x12xi1> into vector<4x9x12xi1>
        %cast_66 = tensor.cast %5 : tensor<12xf16> to tensor<?xf16>
        %257 = index.maxs %107, %c2
        %258 = math.powf %4, %4 : tensor<4x9x12xf32>
        %259 = arith.divsi %c314243881_i64, %in_56 : i64
        %260 = vector.create_mask %73 : vector<12xi1>
        %261 = memref.load %alloc_18[%c3, %c2, %c4] : memref<4x9x12xi16>
        %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<4x9x12xf32>) {
        ^bb0(%out: f32):
          %273 = arith.divui %in_56, %in_56 : i64
          %274 = math.absi %8 : tensor<4x9x12xi32>
          %275 = affine.min affine_map<(d0) -> (0, d0 + 18, ((d0 + 1) mod 2) * 4 - d0)>(%rank_30)
          %276 = math.log10 %11 : tensor<12xf32>
          %cast_70 = tensor.cast %16 : tensor<12xi64> to tensor<?xi64>
          %277 = vector.broadcast %cst_3 : f16 to vector<9xf16>
          %278 = vector.broadcast %false_1 : i1 to vector<9xi1>
          %279 = vector.maskedload %alloc_20[], %278, %277 : memref<f16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
          %280 = arith.shrsi %c868436817_i32, %c868436817_i32 : i32
          %281 = bufferization.to_memref %cast_70 : memref<?xi64>
          %282 = bufferization.to_tensor %alloc_10 : memref<12xf32>
          %283 = bufferization.clone %alloc_12 : memref<9x1x4xi32> to memref<9x1x4xi32>
          %alloc_71 = memref.alloc() : memref<4x9x12xf16>
          %collapsed_72 = tensor.collapse_shape %expanded [[0, 1]] : tensor<12x1xi64> into tensor<12xi64>
          %cast_73 = tensor.cast %16 : tensor<12xi64> to tensor<?xi64>
          %284 = math.exp %cst_4 : f32
          %285 = arith.negf %cst_2 : f32
          %286 = math.ipowi %24, %24 : tensor<9x1x4xi1>
          %cst_74 = arith.constant 1.000000e+00 : f32
          %287 = vector.transfer_read %11[%68], %cst_74 : tensor<12xf32>, vector<f32>
          %288 = arith.minf %cst_4, %cst_4 : f32
          %289 = vector.insert %c589914455_i64, %84 [10] : i64 into vector<12xi64>
          affine.store %251, %alloc_7[%c9, %c1, %c7] : memref<9x1x4xi1>
          %290 = arith.mulf %cst_2, %cst_0 : f32
          %291 = math.log %5 : tensor<12xf16>
          %292 = index.divu %34, %107
          %293 = math.cos %12 : tensor<12xf16>
          %294 = math.absi %15 : tensor<12xi1>
          %295 = arith.divf %extracted_29, %out : f32
          memref.copy %alloc_8, %alloc_5 : memref<12xi16> to memref<12xi16>
          %296 = arith.divsi %in, %c746576448_i64 : i64
          %297 = index.sub %c7, %122
          %298 = math.absi %8 : tensor<4x9x12xi32>
          %299 = math.exp %0 : tensor<12xf32>
          %300 = math.sqrt %out : f32
          linalg.yield %cst : f32
        } -> tensor<4x9x12xf32>
        %263 = math.fma %extracted_29, %cst_4, %cst : f32
        %264 = vector.create_mask %112, %c12, %73 : vector<4x9x12xi1>
        %265 = arith.shrsi %c868436817_i32, %c1418474441_i32 : i32
        %266 = tensor.empty() : tensor<12xf16>
        %collapsed_67 = tensor.collapse_shape %10 [[0, 1], [2]] : tensor<9x1x4xi64> into tensor<9x4xi64>
        %267 = arith.maxf %cst_0, %cst_2 : f32
        %268 = affine.load %alloc_14[%c0, %c3, %c15] : memref<4x9x12xi1>
        %269 = tensor.empty() : tensor<4x9x12xi1>
        %mapped_68 = linalg.map ins(%alloc_14 : memref<4x9x12xi1>) outs(%269 : tensor<4x9x12xi1>)
          (%in_70: i1) {
            %expanded_71 = tensor.expand_shape %3 [[0], [1], [2, 3]] : tensor<9x1x4xf32> into tensor<9x1x4x1xf32>
            %273 = math.fma %cst_2, %cst_25, %cst_25 : f32
            %274 = vector.insert %42, %123 [3, 4] : vector<12xi64> into vector<4x9x12xi64>
            %275 = index.divu %68, %c6
            %276 = math.tanh %3 : tensor<9x1x4xf32>
            %277 = index.sub %c6, %99
            %278 = math.atan2 %0, %0 : tensor<12xf32>
            memref.copy %alloc_15, %alloc_17 : memref<9x1x4xi64> to memref<9x1x4xi64>
            %279 = vector.broadcast %99 : index to vector<9xindex>
            %280 = vector.broadcast %false : i1 to vector<9xi1>
            %281 = vector.broadcast %in_56 : i64 to vector<9xi64>
            vector.scatter %alloc_15[%c8, %c0, %c1] [%279], %280, %281 : memref<9x1x4xi64>, vector<9xindex>, vector<9xi1>, vector<9xi64>
            %282 = arith.maxf %cst_25, %extracted_29 : f32
            %283 = index.maxs %c7, %c3
            bufferization.dealloc_tensor %generated : tensor<?xi16>
            %284 = arith.divui %extracted, %c314243881_i64 : i64
            %285 = vector.insert %47, %254 [4, 0] : vector<4xi1> into vector<9x1x4xi1>
            %286 = math.powf %4, %4 : tensor<4x9x12xf32>
            %cast_72 = tensor.cast %0 : tensor<12xf32> to tensor<?xf32>
            %287 = bufferization.clone %alloc_18 : memref<4x9x12xi16> to memref<4x9x12xi16>
            %288 = index.ceildivs %93, %68
            %289 = math.log10 %14 : tensor<9x1x4xf32>
            bufferization.dealloc_tensor %expanded_71 : tensor<9x1x4x1xf32>
            %290 = vector.extract %254[4] : vector<9x1x4xi1>
            %291 = arith.maxf %cst_2, %cst_25 : f32
            %292 = arith.mulf %extracted_29, %cst : f32
            %cast_73 = tensor.cast %16 : tensor<12xi64> to tensor<?xi64>
            %293 = math.ctpop %8 : tensor<4x9x12xi32>
            %294 = arith.subi %40, %40 : i16
            %295 = math.tan %cst : f32
            %expanded_74 = tensor.expand_shape %0 [[0, 1]] : tensor<12xf32> into tensor<12x1xf32>
            %296 = arith.andi %c314243881_i64, %c746576448_i64 : i64
            %297 = index.maxs %277, %288
            %298 = arith.subi %c314243881_i64, %c746576448_i64 : i64
            %expanded_75 = tensor.expand_shape %8 [[0], [1], [2, 3]] : tensor<4x9x12xi32> into tensor<4x9x12x1xi32>
            %false_76 = arith.constant false
            linalg.yield %false_76 : i1
          }
        %270 = arith.divf %cst, %cst_4 : f32
        %271 = math.expm1 %11 : tensor<12xf32>
        %272 = math.cos %extracted_29 : f32
        %extracted_69 = tensor.extract %11[%c9] : tensor<12xf32>
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %130 = index.ceildivs %c10, %c12
    scf.index_switch %122 
    case 1 {
      %248 = index.castu %false : i1 to index
      %alloc_56 = memref.alloc() : memref<9x12xi64>
      %249 = tensor.empty() : tensor<12x12xi64>
      %250 = linalg.matmul ins(%105, %alloc_56 : tensor<12x9xi64>, memref<9x12xi64>) outs(%249 : tensor<12x12xi64>) -> tensor<12x12xi64>
      %251 = arith.subi %false_1, %false_1 : i1
      %252 = vector.broadcast %cst_2 : f32 to vector<4xf32>
      %253 = vector.maskedload %alloc_10[%c7], %47, %252 : memref<12xf32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
      %expanded_57 = tensor.expand_shape %18 [[0, 1]] : tensor<12xi64> into tensor<12x1xi64>
      %254 = index.add %c0, %121
      %255 = arith.divui %c1459424119_i64, %c589914455_i64 : i64
      %256 = index.add %rank_30, %c8
      %257 = math.expm1 %1 : tensor<12xf16>
      %true = index.bool.constant true
      %258 = index.divs %121, %c4
      vector.print %85 : vector<9x12xi1>
      %259 = index.ceildivs %c8, %rank_30
      %260 = vector.bitcast %83 : vector<12xi16> to vector<12xi16>
      %261 = tensor.empty() : tensor<12xi16>
      memref.store %false_1, %alloc_14[%c2, %c0, %c4] : memref<4x9x12xi1>
      scf.yield
    }
    case 2 {
      %248 = arith.ori %c314243881_i64, %c589914455_i64 : i64
      %249 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%86 : tensor<9x1x4xi1>) {
      ^bb0(%out: i1):
        memref.copy %alloc_18, %81 : memref<4x9x12xi16> to memref<4x9x12xi16>
        memref.store %c4078_i16, %alloc[%c3, %c8, %c1] : memref<4x9x12xi16>
        %262 = math.expm1 %0 : tensor<12xf32>
        bufferization.dealloc_tensor %129 : tensor<9x1x4xi64>
        %263 = bufferization.clone %alloc_14 : memref<4x9x12xi1> to memref<4x9x12xi1>
        %264 = arith.xori %c746576448_i64, %extracted : i64
        %265 = math.fma %cst_25, %extracted_29, %cst : f32
        %true = index.bool.constant true
        %266 = arith.ceildivsi %false, %out : i1
        %267 = math.cos %5 : tensor<12xf16>
        %268 = arith.minf %cst_4, %cst_2 : f32
        %269 = math.ipowi %false, %false_1 : i1
        %collapsed_57 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<4x9x12xi32> into tensor<36x12xi32>
        %270 = arith.ori %c868436817_i32, %c1719160145_i32 : i32
        %271 = arith.mulf %cst_25, %cst_2 : f32
        %272 = index.castu %99 : index to i32
        %expanded_58 = tensor.expand_shape %129 [[0], [1], [2, 3]] : tensor<9x1x4xi64> into tensor<9x1x4x1xi64>
        %273 = vector.broadcast %false : i1 to vector<1x1xi1>
        %274 = vector.outerproduct %128, %128, %273 {kind = #vector.kind<and>} : vector<1xi1>, vector<1xi1>
        %275 = math.ctpop %17 : tensor<12xi64>
        %276 = math.ctpop %false : i1
        %277 = arith.remsi %c17041_i16, %c4078_i16 : i16
        %alloc_59 = memref.alloc() : memref<12xi1>
        memref.tensor_store %24, %alloc_7 : memref<9x1x4xi1>
        %278 = math.atan2 %cst_3, %cst_3 : f16
        bufferization.dealloc_tensor %17 : tensor<12xi64>
        %extracted_60 = tensor.extract %15[%c9] : tensor<12xi1>
        %279 = vector.broadcast %c17041_i16 : i16 to vector<9xi16>
        %280 = vector.broadcast %true : i1 to vector<9xi1>
        %281 = vector.maskedload %alloc_18[%c3, %c6, %c9], %280, %279 : memref<4x9x12xi16>, vector<9xi1>, vector<9xi16> into vector<9xi16>
        %282 = arith.subi %false, %extracted_60 : i1
        %283 = arith.remui %c868436817_i32, %c1719160145_i32 : i32
        %284 = arith.maxf %cst_0, %cst_0 : f32
        %285 = vector.broadcast %c746576448_i64 : i64 to vector<9x12xi64>
        %dest_61, %accumulated_value_62 = vector.scan <xor>, %123, %285 {inclusive = false, reduction_dim = 0 : i64} : vector<4x9x12xi64>, vector<9x12xi64>
        %286 = math.sqrt %11 : tensor<12xf32>
        linalg.yield %false : i1
      } -> tensor<9x1x4xi1>
      affine.store %c314243881_i64, %alloc_15[%c1, %c5, %c0] : memref<9x1x4xi64>
      %250 = arith.minui %c589914455_i64, %c589914455_i64 : i64
      %251 = math.atan %1 : tensor<12xf16>
      %252 = affine.min affine_map<(d0, d1) -> (d1 mod 4 - (d1 - d0) floordiv 64)>(%c4, %c14)
      %c0_i32 = arith.constant 0 : i32
      %253 = vector.transfer_read %alloc_9[%c7], %c0_i32 : memref<12xi32>, vector<i32>
      %254 = math.absf %cst_3 : f16
      %false_56 = index.bool.constant false
      %255 = scf.if %false_56 -> (i16) {
        %262 = math.log2 %cst : f32
        %263 = math.copysign %collapsed, %collapsed : tensor<36x12xf32>
        %264 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 floordiv 2 - 128, (d3 + d1 - 128) floordiv 16)>(%93, %c4, %c13, %c4)
        %265 = arith.andi %c4078_i16, %c4078_i16 : i16
        memref.store %26, %alloc_18[%c0, %c3, %c9] : memref<4x9x12xi16>
        %266 = affine.min affine_map<(d0, d1, d2) -> (-d0 + (d1 - d2) ceildiv 4 - 2)>(%c3, %c6, %c14)
        %267 = arith.negf %cst_4 : f32
        %268 = arith.maxui %40, %c17041_i16 : i16
        scf.yield %40 : i16
      } else {
        %262 = vector.broadcast %c589914455_i64 : i64 to vector<9x12xi64>
        %263 = vector.insert %262, %123 [3] : vector<9x12xi64> into vector<4x9x12xi64>
        memref.copy %81, %alloc : memref<4x9x12xi16> to memref<4x9x12xi16>
        %264 = math.ctpop %9 : tensor<12xi64>
        %265 = arith.divf %cst_3, %cst_3 : f16
        %266 = vector.extract %48[2] : vector<4xf16>
        %267 = vector.broadcast %extracted : i64 to vector<9x1x4xi64>
        %268 = arith.mulf %cst_25, %cst : f32
        %269 = index.maxs %c8, %c1
        scf.yield %c4078_i16 : i16
      }
      %256 = arith.ori %40, %c4078_i16 : i16
      memref.tensor_store %1, %alloc_11 : memref<12xf16>
      %257 = arith.divui %255, %255 : i16
      %258 = vector.load %alloc_13[%c10] : memref<12xi64>, vector<12xi64>
      %259 = arith.remui %26, %c17041_i16 : i16
      %260 = vector.broadcast %c314243881_i64 : i64 to vector<4xi64>
      %261 = vector.maskedload %alloc_13[%c2], %47, %260 : memref<12xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
      scf.yield
    }
    default {
      %248 = math.fma %12, %12, %5 : tensor<12xf16>
      %249 = arith.maxf %cst, %cst_0 : f32
      %250 = math.ctpop %transposed : tensor<12xi64>
      %251 = vector.broadcast %cst_2 : f32 to vector<12xf32>
      %252 = vector.fma %251, %251, %251 : vector<12xf32>
      scf.if %false_1 {
        %264 = index.casts %87 : index to i32
        %265 = math.absf %5 : tensor<12xf16>
        %266 = bufferization.to_tensor %alloc_9 : memref<12xi32>
        memref.tensor_store %1, %alloc_11 : memref<12xf16>
        %267 = arith.shli %c589914455_i64, %c589914455_i64 : i64
        %268 = vector.transpose %83, [0] : vector<12xi16> to vector<12xi16>
        %269 = arith.maxsi %c1459424119_i64, %extracted : i64
        %270 = vector.extract %43[9] : vector<12xi64>
      } else {
        %264 = arith.maxsi %40, %c4078_i16 : i16
        %expanded_56 = tensor.expand_shape %13 [[0], [1], [2, 3]] : tensor<9x1x4xf32> into tensor<9x1x4x1xf32>
        %265 = affine.load %alloc_10[%c6] : memref<12xf32>
        %266 = index.sizeof
        %267 = index.castu %c10 : index to i32
        %268 = vector.bitcast %46 : vector<4xf16> to vector<4xf16>
        %269 = vector.multi_reduction <add>, %48, %cst_3 [0] : vector<4xf16> to f16
        %270 = vector.extract %43[2] : vector<12xi64>
      }
      %253 = index.castu %26 : i16 to index
      %254 = arith.remui %26, %40 : i16
      %255 = memref.load %alloc_8[%c6] : memref<12xi16>
      %256 = math.log10 %cst_2 : f32
      %257 = arith.cmpf ord, %cst_0, %extracted_29 : f32
      %258 = arith.minf %extracted_29, %extracted_29 : f32
      scf.execute_region {
        %264 = arith.subi %c746576448_i64, %c746576448_i64 : i64
        %265 = index.divu %112, %rank
        %266 = math.log10 %1 : tensor<12xf16>
        %267 = index.castu %93 : index to i32
        %268 = memref.atomic_rmw addi %c17041_i16, %alloc_8[%c5] : (i16, memref<12xi16>) -> i16
        %269 = vector.insert %cst_2, %251 [2] : f32 into vector<12xf32>
        %270 = affine.min affine_map<(d0, d1) -> ((d1 * 2) mod 128, (d1 * 2) mod 128, (d1 - (d1 + d0) * 2) ceildiv 8)>(%c9, %c4)
        %271 = math.powf %3, %116 : tensor<9x1x4xf32>
        %collapsed_56 = tensor.collapse_shape %2 [[0, 1], [2]] : tensor<9x1x4xi1> into tensor<9x4xi1>
        %272 = math.log %cst_0 : f32
        %273 = math.cos %13 : tensor<9x1x4xf32>
        %274 = arith.divf %cst_2, %cst_4 : f32
        %275 = vector.insert %extracted, %42 [1] : i64 into vector<12xi64>
        %276 = arith.xori %false_1, %false : i1
        %rank_57 = tensor.rank %12 : tensor<12xf16>
        %277 = math.atan2 %14, %13 : tensor<9x1x4xf32>
        scf.yield
      }
      %259 = vector.broadcast %c314243881_i64 : i64 to vector<i64>
      %260 = vector.transfer_write %259, %16[%c1] : vector<i64>, tensor<12xi64>
      %261 = index.floordivs %121, %c15
      %262 = vector.create_mask %c13 : vector<12xi1>
      %263 = arith.maxf %extracted_29, %extracted_29 : f32
    }
    %131 = index.add %107, %rank
    %132 = math.exp %116 : tensor<9x1x4xf32>
    %cast = tensor.cast %1 : tensor<12xf16> to tensor<?xf16>
    %133 = arith.andi %c1418474441_i32, %c1719160145_i32 : i32
    %134 = index.ceildivu %35, %rank
    %135 = arith.floordivsi %40, %c17041_i16 : i16
    %136 = index.castu %c1418474441_i32 : i32 to index
    %137 = math.atan2 %cst, %cst_2 : f32
    %138 = vector.transpose %47, [0] : vector<4xi1> to vector<4xi1>
    %139 = vector.extract %19[0] : vector<12xf16>
    %140 = arith.shli %false_1, %false : i1
    %141 = vector.shuffle %61, %61 [0, 1] : vector<i32>, vector<i32>
    %142 = arith.shrsi %40, %c4078_i16 : i16
    %143 = math.tanh %0 : tensor<12xf32>
    %144 = math.log10 %12 : tensor<12xf16>
    %145 = tensor.empty() : tensor<12xi64>
    %rank_32 = tensor.rank %11 : tensor<12xf32>
    %146 = index.mul %c10, %87
    %147 = affine.if affine_set<(d0, d1) : (0 == 0, 0 == 0, ((d1 * 2) floordiv 8) ceildiv 16 >= 0, ((d1 * 2) floordiv 8) floordiv 2 == 0)>(%c6, %c14) -> memref<4x9x12xi64> {
      %248 = arith.shrsi %extracted, %c314243881_i64 : i64
      %249 = arith.minui %false_1, %false : i1
      %250 = index.divs %112, %134
      %251 = bufferization.to_memref %18 : memref<12xi64>
      %252 = scf.while (%arg1 = %c17041_i16) : (i16) -> i16 {
        %255 = bufferization.clone %alloc_15 : memref<9x1x4xi64> to memref<9x1x4xi64>
        %256 = math.fma %1, %12, %5 : tensor<12xf16>
        %257 = index.divu %c14, %146
        %258 = math.powf %4, %4 : tensor<4x9x12xf32>
        affine.store %cst_3, %alloc_20[] : memref<f16>
        vector.print %123 : vector<4x9x12xi64>
        %alloc_58 = memref.alloc() : memref<4x9x12xi64>
        %259 = vector.broadcast %false_1 : i1 to vector<12xi1>
        %260 = vector.broadcast %c1418474441_i32 : i32 to vector<12xi32>
        %261 = vector.gather %alloc_58[%c10, %250, %112] [%260], %259, %43 : memref<4x9x12xi64>, vector<12xi32>, vector<12xi1>, vector<12xi64> into vector<12xi64>
        %262 = vector.extract %58[2] : vector<4x9x12xi1>
        scf.condition(%false) %40 : i16
      } do {
      ^bb0(%arg1: i16):
        %255 = memref.load %alloc_12[%c3, %c0, %c2] : memref<9x1x4xi32>
        vector.print %85 : vector<9x12xi1>
        %256 = vector.extract %47[3] : vector<4xi1>
        %257 = math.log2 %12 : tensor<12xf16>
        %true = index.bool.constant true
        %collapsed_58 = tensor.collapse_shape %105 [[0, 1]] : tensor<12x9xi64> into tensor<108xi64>
        %258 = index.castu %250 : index to i32
        %259 = arith.mulf %cst_4, %cst : f32
        %260 = index.mul %c1, %rank
        %261 = index.mul %146, %c4
        %262 = vector.broadcast %extracted : i64 to vector<9x1x4xi64>
        memref.store %c17041_i16, %81[%c0, %c3, %c5] : memref<4x9x12xi16>
        memref.store %c746576448_i64, %alloc_16[%c9] : memref<12xi64>
        %263 = bufferization.to_tensor %alloc_16 : memref<12xi64>
        %264 = arith.maxf %cst_2, %cst_0 : f32
        %265 = bufferization.to_tensor %alloc_12 : memref<9x1x4xi32>
        scf.yield %c4078_i16 : i16
      }
      %253 = math.tan %4 : tensor<4x9x12xf32>
      %cast_56 = tensor.cast %12 : tensor<12xf16> to tensor<?xf16>
      %254 = math.tan %13 : tensor<9x1x4xf32>
      %alloc_57 = memref.alloc() : memref<4x9x12xi64>
      affine.yield %alloc_57 : memref<4x9x12xi64>
    } else {
      %248 = vector.create_mask %c15 : vector<12xi1>
      %249 = arith.remui %extracted, %c589914455_i64 : i64
      %250 = affine.min affine_map<(d0, d1) -> ((d0 - d1) ceildiv 8)>(%c12, %112)
      %251 = math.absf %cst_2 : f32
      %252 = vector.load %alloc_6[%c8, %c0, %c2] : memref<9x1x4xi1>, vector<12xi1>
      %253 = index.ceildivu %68, %73
      %254 = index.ceildivu %121, %rank
      %255 = arith.negf %cst_25 : f32
      %alloc_56 = memref.alloc() : memref<4x9x12xi64>
      affine.yield %alloc_56 : memref<4x9x12xi64>
    }
    %148 = math.round %cst_4 : f32
    %149 = math.tanh %5 : tensor<12xf16>
    %150 = vector.create_mask %87, %rank_30, %c7 : vector<4x9x12xi1>
    %151 = vector.reduction <minf>, %48 : vector<4xf16> into f16
    %152 = vector.broadcast %c1459424119_i64 : i64 to vector<4x12xi64>
    %dest_33, %accumulated_value_34 = vector.scan <maxsi>, %123, %152 {inclusive = true, reduction_dim = 1 : i64} : vector<4x9x12xi64>, vector<4x12xi64>
    %153 = vector.multi_reduction <mul>, %46, %cst_3 [0] : vector<4xf16> to f16
    %154 = vector.broadcast %false_1 : i1 to vector<12xi1>
    %dest_35, %accumulated_value_36 = vector.scan <minui>, %85, %154 {inclusive = true, reduction_dim = 0 : i64} : vector<9x12xi1>, vector<12xi1>
    scf.index_switch %93 
    case 1 {
      %248 = arith.minui %c4078_i16, %c17041_i16 : i16
      %249 = math.absf %12 : tensor<12xf16>
      %250 = bufferization.clone %alloc_13 : memref<12xi64> to memref<12xi64>
      %251 = memref.atomic_rmw maxu %40, %alloc_18[%c0, %c3, %c8] : (i16, memref<4x9x12xi16>) -> i16
      %252 = arith.shrui %c1459424119_i64, %c1459424119_i64 : i64
      %cast_56 = tensor.cast %2 : tensor<9x1x4xi1> to tensor<?x?x?xi1>
      %253 = tensor.empty(%c3, %99) : tensor<?x?x12xf32>
      %254 = index.casts %false : i1 to index
      %255 = vector.insertelement %c1719160145_i32, %61[] : vector<i32>
      %256 = arith.divf %cst, %cst : f32
      %257 = memref.realloc %alloc_16 : memref<12xi64> to memref<12xi64>
      %258 = vector.broadcast %false_1 : i1 to vector<1x1xi1>
      %259 = vector.outerproduct %128, %128, %258 {kind = #vector.kind<xor>} : vector<1xi1>, vector<1xi1>
      %260 = vector.insert %false_1, %128 [0] : i1 into vector<1xi1>
      scf.execute_region {
        %263 = arith.negf %cst_4 : f32
        %cast_57 = tensor.cast %145 : tensor<12xi64> to tensor<?xi64>
        %264 = arith.minsi %false_1, %false_1 : i1
        %265 = vector.multi_reduction <xor>, %84, %84 [] : vector<12xi64> to vector<12xi64>
        %false_58 = index.bool.constant false
        %expanded_59 = tensor.expand_shape %transposed [[0, 1]] : tensor<12xi64> into tensor<12x1xi64>
        %266 = arith.shrsi %40, %c4078_i16 : i16
        %267 = index.maxu %rank, %35
        %268 = arith.minui %c1459424119_i64, %c746576448_i64 : i64
        %269 = affine.load %alloc_12[%c10, %c15, %c7] : memref<9x1x4xi32>
        %270 = index.maxu %134, %130
        %271 = arith.floordivsi %c314243881_i64, %c1459424119_i64 : i64
        %272 = math.powf %cst_2, %cst_4 : f32
        %273 = arith.minui %c1719160145_i32, %269 : i32
        memref.store %cst_4, %alloc_10[%c9] : memref<12xf32>
        %274 = index.divs %rank, %87
        scf.yield
      }
      %261 = vector.shuffle %42, %43 [0, 4, 7, 11, 12, 16, 17, 19, 21, 22, 23] : vector<12xi64>, vector<12xi64>
      %262 = math.exp2 %4 : tensor<4x9x12xf32>
      scf.yield
    }
    default {
      %248 = math.absi %26 : i16
      %249 = arith.divsi %c868436817_i32, %c868436817_i32 : i32
      %250 = arith.andi %26, %40 : i16
      %251 = memref.realloc %alloc_8 : memref<12xi16> to memref<1xi16>
      %252 = arith.andi %c589914455_i64, %c746576448_i64 : i64
      memref.tensor_store %20, %alloc_9 : memref<12xi32>
      %253 = math.atan2 %cst_2, %cst_25 : f32
      %254 = index.ceildivu %87, %c14
      %255 = bufferization.clone %alloc_9 : memref<12xi32> to memref<12xi32>
      vector.print %48 : vector<4xf16>
      %256 = index.maxs %c15, %68
      %257 = memref.realloc %alloc_9 : memref<12xi32> to memref<1xi32>
      %258 = math.tan %4 : tensor<4x9x12xf32>
      %259 = arith.mulf %cst_4, %cst_25 : f32
      %260 = tensor.empty() : tensor<12xf32>
      %mapped_56 = linalg.map ins(%0, %11 : tensor<12xf32>, tensor<12xf32>) outs(%260 : tensor<12xf32>)
        (%in: f32, %in_57: f32) {
          %262 = affine.min affine_map<(d0, d1) -> (-(d1 mod 8), d0 ceildiv 32)>(%c11, %121)
          %263 = arith.negf %cst_25 : f32
          %264 = arith.remf %cst, %extracted_29 : f32
          %265 = arith.minf %cst_0, %cst_0 : f32
          %266 = vector.broadcast %254 : index to vector<1xindex>
          vector.scatter %alloc_6[%c2, %c0, %c2] [%266], %128, %128 : memref<9x1x4xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
          %267 = vector.broadcast %c314243881_i64 : i64 to vector<9x1x4xi64>
          %268 = vector.create_mask %c2, %c1, %112 : vector<4x9x12xi1>
          %269 = affine.load %76[%c7, %c8, %c11] : memref<9x1x4xi1>
          %270 = arith.negf %extracted_29 : f32
          %271 = vector.broadcast %254 : index to vector<9xindex>
          %272 = vector.broadcast %false_1 : i1 to vector<9xi1>
          %273 = vector.broadcast %26 : i16 to vector<9xi16>
          vector.scatter %alloc_18[%c2, %c3, %c11] [%271], %272, %273 : memref<4x9x12xi16>, vector<9xindex>, vector<9xi1>, vector<9xi16>
          %274 = math.cos %cst_2 : f32
          %275 = arith.maxsi %c589914455_i64, %c589914455_i64 : i64
          %276 = index.castu %c1 : index to i32
          %277 = tensor.empty(%c12) : tensor<?xi32>
          %278 = math.tanh %12 : tensor<12xf16>
          %279 = math.ctpop %7 : tensor<12xi32>
          memref.store %c17041_i16, %alloc[%c0, %c6, %c7] : memref<4x9x12xi16>
          %280 = vector.broadcast %269 : i1 to vector<12xi1>
          %281 = vector.insert %280, %268 [0, 7] : vector<12xi1> into vector<4x9x12xi1>
          %282 = arith.minf %cst_2, %cst_25 : f32
          %283 = index.ceildivs %34, %93
          %284 = vector.create_mask %134 : vector<12xi1>
          affine.store %c314243881_i64, %alloc_17[%c14, %c0, %c3] : memref<9x1x4xi64>
          %285 = index.maxs %c12, %146
          %286 = index.divs %285, %c11
          %287 = math.log10 %cst_0 : f32
          %extracted_58 = tensor.extract %1[%c11] : tensor<12xf16>
          %288 = math.log10 %13 : tensor<9x1x4xf32>
          %289 = vector.broadcast %c314243881_i64 : i64 to vector<9x12xi64>
          %dest_59, %accumulated_value_60 = vector.scan <or>, %123, %289 {inclusive = false, reduction_dim = 0 : i64} : vector<4x9x12xi64>, vector<9x12xi64>
          %290 = index.maxu %c13, %35
          %291 = arith.ceildivsi %26, %26 : i16
          %292 = math.cos %3 : tensor<9x1x4xf32>
          %293 = arith.andi %c1418474441_i32, %c868436817_i32 : i32
          %cst_61 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_61 : f32
        }
      %261 = arith.muli %extracted, %c314243881_i64 : i64
    }
    %155 = arith.xori %40, %c4078_i16 : i16
    %156 = arith.remui %false, %false_1 : i1
    %157 = memref.load %alloc_19[%c4, %c0, %c0] : memref<9x1x4xf16>
    %158 = vector.bitcast %85 : vector<9x12xi1> to vector<9x12xi1>
    %159 = memref.alloca_scope  -> (f16) {
      %248 = arith.subi %c4078_i16, %c17041_i16 : i16
      %249 = math.exp2 %5 : tensor<12xf16>
      %250 = arith.mulf %cst_3, %153 : f16
      %251 = math.atan2 %13, %116 : tensor<9x1x4xf32>
      memref.copy %alloc_13, %alloc_16 : memref<12xi64> to memref<12xi64>
      %252 = scf.execute_region -> i1 {
        %276 = arith.remui %c1418474441_i32, %c1418474441_i32 : i32
        %277 = memref.realloc %alloc_5 : memref<12xi16> to memref<1xi16>
        %278 = index.mul %c1, %99
        %279 = affine.min affine_map<(d0, d1, d2) -> (d0 - 60)>(%130, %c14, %c8)
        %280 = memref.atomic_rmw ori %c4078_i16, %alloc_18[%c2, %c8, %c8] : (i16, memref<4x9x12xi16>) -> i16
        %281 = vector.broadcast %false : i1 to vector<12xi1>
        %282 = vector.insert %281, %158 [1] : vector<12xi1> into vector<9x12xi1>
        %c0_i64_59 = arith.constant 0 : i64
        %283 = vector.transfer_read %9[%73], %c0_i64_59 : tensor<12xi64>, vector<i64>
        %284 = tensor.empty() : tensor<9x1x4xf32>
        %285 = index.castu %c746576448_i64 : i64 to index
        %286 = vector.broadcast %false : i1 to vector<4x9xi1>
        %dest_60, %accumulated_value_61 = vector.scan <add>, %58, %286 {inclusive = false, reduction_dim = 2 : i64} : vector<4x9x12xi1>, vector<4x9xi1>
        %287 = math.cttz %c0_i64_59 : i64
        memref.tensor_store %transposed, %alloc_13 : memref<12xi64>
        %alloc_62 = memref.alloc() : memref<1x4xi64>
        %288 = tensor.empty() : tensor<12x4xi64>
        %289 = linalg.matmul ins(%expanded, %alloc_62 : tensor<12x1xi64>, memref<1x4xi64>) outs(%288 : tensor<12x4xi64>) -> tensor<12x4xi64>
        %dest_63, %accumulated_value_64 = vector.scan <mul>, %150, %158 {inclusive = true, reduction_dim = 0 : i64} : vector<4x9x12xi1>, vector<9x12xi1>
        %290 = vector.broadcast %c746576448_i64 : i64 to vector<9x12xi64>
        %291 = vector.insert %290, %123 [0] : vector<9x12xi64> into vector<4x9x12xi64>
        %292 = memref.realloc %alloc_13 : memref<12xi64> to memref<12xi64>
        scf.yield %false_1 : i1
      }
      %c0_i64 = arith.constant 0 : i64
      %253 = vector.transfer_read %9[%c10], %c0_i64 : tensor<12xi64>, vector<i64>
      %254 = math.log2 %3 : tensor<9x1x4xf32>
      %255 = index.castu %false_1 : i1 to index
      %256 = vector.create_mask %93, %c11, %130 : vector<4x9x12xi1>
      memref.store %cst_3, %alloc_19[%c2, %c0, %c1] : memref<9x1x4xf16>
      %257 = index.ceildivu %c0, %rank_30
      %258 = vector.broadcast %c17041_i16 : i16 to vector<9xi16>
      %259 = vector.broadcast %false : i1 to vector<9xi1>
      %260 = vector.maskedload %alloc_5[%c9], %259, %258 : memref<12xi16>, vector<9xi1>, vector<9xi16> into vector<9xi16>
      %261 = vector.reduction <and>, %258 : vector<9xi16> into i16
      %generated_56 = tensor.generate %122 {
      ^bb0(%arg1: index):
        %276 = arith.remf %cst_4, %extracted_29 : f32
        bufferization.dealloc_tensor %1 : tensor<12xf16>
        %277 = vector.broadcast %cst_25 : f32 to vector<4x9x12xf32>
        %278 = math.exp %12 : tensor<12xf16>
        tensor.yield %c868436817_i32 : i32
      } : tensor<?xi32>
      %262 = index.mul %93, %131
      %263 = math.fma %1, %5, %1 : tensor<12xf16>
      %264 = arith.negf %153 : f16
      %265 = math.cos %4 : tensor<4x9x12xf32>
      %266 = arith.andi %false_1, %false : i1
      %267 = arith.remui %extracted, %c0_i64 : i64
      %268 = vector.create_mask %c2 : vector<12xi1>
      %269 = vector.broadcast %extracted : i64 to vector<4x9xi64>
      %270 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %123, %84, %269 : vector<4x9x12xi64>, vector<12xi64> into vector<4x9xi64>
      %271 = index.sub %136, %c8
      %272 = memref.atomic_rmw maxf %153, %alloc_19[%c5, %c0, %c2] : (f16, memref<9x1x4xf16>) -> f16
      memref.tensor_store %1, %alloc_11 : memref<12xf16>
      scf.index_switch %73 
      case 1 {
        %276 = vector.multi_reduction <minui>, %260, %c4078_i16 [0] : vector<9xi16> to i16
        %277 = bufferization.clone %alloc : memref<4x9x12xi16> to memref<4x9x12xi16>
        %278 = vector.broadcast %cst_4 : f32 to vector<4x9x12xf32>
        %279 = vector.fma %278, %278, %278 : vector<4x9x12xf32>
        %280 = index.mul %262, %134
        %281 = vector.broadcast %cst_0 : f32 to vector<4x9x12xf32>
        %282 = vector.fma %281, %278, %281 : vector<4x9x12xf32>
        %283 = arith.andi %extracted, %c746576448_i64 : i64
        %284 = arith.cmpf ugt, %cst_3, %cst_3 : f16
        %285 = math.ipowi %false, %false : i1
        %286 = vector.transpose %58, [1, 0, 2] : vector<4x9x12xi1> to vector<9x4x12xi1>
        %287 = arith.remui %c1459424119_i64, %c0_i64 : i64
        %288 = vector.broadcast %252 : i1 to vector<12x12xi1>
        %289 = vector.outerproduct %268, %268, %288 {kind = #vector.kind<maxui>} : vector<12xi1>, vector<12xi1>
        %290 = vector.bitcast %19 : vector<12xf16> to vector<12xi16>
        %291 = arith.minf %cst_2, %cst : f32
        %292 = arith.ori %false, %252 : i1
        %293 = arith.remui %c746576448_i64, %c746576448_i64 : i64
        %294 = vector.shuffle %290, %260 [0, 1, 3, 6, 7, 9, 14, 16, 19] : vector<12xi16>, vector<9xi16>
        scf.yield
      }
      case 2 {
        %276 = vector.multi_reduction <minui>, %268, %268 [] : vector<12xi1> to vector<12xi1>
        %277 = math.exp2 %3 : tensor<9x1x4xf32>
        %278 = arith.minf %cst_2, %cst_0 : f32
        %279 = arith.negf %cst_4 : f32
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_59 = arith.constant 0 : i32
        %280 = vector.transfer_read %8[%271, %c3, %134], %c0_i32_59 : tensor<4x9x12xi32>, vector<i32>
        memref.store %c314243881_i64, %alloc_13[%c10] : memref<12xi64>
        %281 = bufferization.clone %alloc_5 : memref<12xi16> to memref<12xi16>
        %282 = bufferization.clone %alloc : memref<4x9x12xi16> to memref<4x9x12xi16>
        %283 = math.log %collapsed : tensor<36x12xf32>
        %rank_60 = tensor.rank %0 : tensor<12xf32>
        %284 = arith.ceildivsi %c746576448_i64, %extracted : i64
        %285 = tensor.empty() : tensor<12x9xf32>
        %286 = tensor.empty() : tensor<36x9xf32>
        %287 = linalg.matmul ins(%collapsed, %285 : tensor<36x12xf32>, tensor<12x9xf32>) outs(%286 : tensor<36x9xf32>) -> tensor<36x9xf32>
        %288 = affine.min affine_map<(d0, d1, d2) -> (d2)>(%rank_60, %c0, %134)
        %289 = arith.maxf %cst_25, %cst_2 : f32
        %290 = index.ceildivs %c10, %c15
        %291 = arith.floordivsi %c4078_i16, %40 : i16
        scf.yield
      }
      case 3 {
        %276 = affine.min affine_map<(d0) -> ((d0 mod 16) * 2, (-d0 + 2) floordiv 32, (-d0) floordiv 4 + 16, d0 mod 16)>(%c7)
        %277 = arith.floordivsi %c746576448_i64, %extracted : i64
        %278 = bufferization.to_tensor %alloc_12 : memref<9x1x4xi32>
        %279 = math.powf %11, %0 : tensor<12xf32>
        %280 = arith.cmpf uge, %cst, %cst_25 : f32
        %281 = arith.minui %c314243881_i64, %c589914455_i64 : i64
        %alloca_59 = memref.alloca() : memref<12xi64>
        %alloc_60 = memref.alloc() : memref<9x1x4xi32>
        memref.copy %alloc_12, %alloc_60 : memref<9x1x4xi32> to memref<9x1x4xi32>
        %282 = arith.negf %153 : f16
        vector.print %123 : vector<4x9x12xi64>
        %283 = arith.divui %false, %false_1 : i1
        %284 = arith.muli %252, %false_1 : i1
        %285 = math.ctpop %false_1 : i1
        %286 = arith.shrsi %false, %false_1 : i1
        %287 = index.sub %73, %c3
        %288 = arith.shrsi %c746576448_i64, %extracted : i64
        scf.yield
      }
      default {
        %276 = vector.flat_transpose %19 {columns = 3 : i32, rows = 4 : i32} : vector<12xf16> -> vector<12xf16>
        %277 = math.exp %3 : tensor<9x1x4xf32>
        %278 = arith.subi %40, %c4078_i16 : i16
        %279 = affine.min affine_map<(d0, d1, d2) -> ((d2 - 128) * 2, d1, d2 - 128)>(%255, %99, %257)
        %280 = tensor.empty() : tensor<4x9x12xi64>
        vector.print %158 : vector<9x12xi1>
        %281 = vector.create_mask %73 : vector<12xi1>
        %282 = arith.muli %c868436817_i32, %c868436817_i32 : i32
        %283 = arith.andi %c589914455_i64, %c0_i64 : i64
        %284 = index.ceildivs %c10, %c11
        %285 = memref.atomic_rmw addi %40, %alloc_5[%c2] : (i16, memref<12xi16>) -> i16
        %286 = affine.load %alloc_19[%c11, %c3, %c1] : memref<9x1x4xf16>
        %287 = arith.shrsi %c589914455_i64, %c314243881_i64 : i64
        %288 = math.expm1 %0 : tensor<12xf32>
        %289 = arith.ori %c746576448_i64, %c1459424119_i64 : i64
        %290 = vector.multi_reduction <add>, %259, %259 [] : vector<9xi1> to vector<9xi1>
      }
      %cast_57 = tensor.cast %13 : tensor<9x1x4xf32> to tensor<?x?x?xf32>
      %extracted_58 = tensor.extract %10[%c8, %c0, %c2] : tensor<9x1x4xi64>
      %273 = math.round %14 : tensor<9x1x4xf32>
      %274 = arith.negf %cst_25 : f32
      %275 = vector.bitcast %128 : vector<1xi1> to vector<1xi1>
      memref.alloca_scope.return %cst_3 : f16
    }
    %160 = scf.if %false -> (memref<12xi16>) {
      %248 = memref.load %alloc_7[%c8, %c0, %c1] : memref<9x1x4xi1>
      %249 = vector.broadcast %extracted : i64 to vector<9x12xi64>
      %250 = vector.multi_reduction <add>, %123, %249 [0] : vector<4x9x12xi64> to vector<9x12xi64>
      %251 = math.log10 %1 : tensor<12xf16>
      %252 = index.castu %c5 : index to i32
      %253 = index.add %73, %112
      %254 = math.absi %21 : tensor<i32>
      %255 = arith.andi %false, %false : i1
      %256 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%13 : tensor<9x1x4xf32>) {
      ^bb0(%out: f32):
        %257 = memref.load %alloc_15[%c1, %c0, %c1] : memref<9x1x4xi64>
        %258 = math.round %12 : tensor<12xf16>
        %259 = vector.create_mask %rank_32, %93, %87 : vector<4x9x12xi1>
        %260 = vector.broadcast %159 : f16 to vector<4x4xf16>
        %261 = vector.outerproduct %48, %46, %260 {kind = #vector.kind<mul>} : vector<4xf16>, vector<4xf16>
        %262 = arith.divf %159, %159 : f16
        %263 = index.divu %68, %99
        %264 = math.expm1 %cst_4 : f32
        %265 = memref.atomic_rmw ori %26, %alloc_5[%c0] : (i16, memref<12xi16>) -> i16
        %266 = math.log10 %3 : tensor<9x1x4xf32>
        %267 = arith.maxf %cst_3, %159 : f16
        bufferization.dealloc_tensor %cast : tensor<?xf16>
        %268 = vector.matrix_multiply %84, %84 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi64>, vector<12xi64>) -> vector<1xi64>
        %269 = math.powf %159, %159 : f16
        %extracted_56 = tensor.extract %10[%c8, %c0, %c3] : tensor<9x1x4xi64>
        %collapsed_57 = tensor.collapse_shape %23 [[0, 1], [2]] : tensor<4x9x12xi1> into tensor<36x12xi1>
        %270 = arith.negf %cst_0 : f32
        %271 = vector.extract %268[0] : vector<1xi64>
        %272 = index.castu %c4078_i16 : i16 to index
        %cast_58 = tensor.cast %11 : tensor<12xf32> to tensor<?xf32>
        %273 = math.absi %17 : tensor<12xi64>
        %c1_i16 = arith.constant 1 : i16
        %274 = vector.transfer_read %alloc[%68, %73, %rank_30], %c1_i16 : memref<4x9x12xi16>, vector<i16>
        %275 = vector.broadcast %c314243881_i64 : i64 to vector<9x1x4xi64>
        %276 = math.fma %cst_4, %cst_0, %cst_2 : f32
        %277 = math.ctpop %15 : tensor<12xi1>
        %278 = arith.remui %false_1, %false : i1
        %279 = vector.create_mask %34, %rank_30, %c3 : vector<9x1x4xi1>
        affine.store %c314243881_i64, %alloc_16[%c13] : memref<12xi64>
        %280 = index.sub %87, %c6
        %281 = vector.broadcast %c746576448_i64 : i64 to vector<9xi64>
        %282 = vector.transfer_write %281, %105[%263, %134] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xi64>, tensor<12x9xi64>
        %283 = vector.insertelement %159, %48[%c14 : index] : vector<4xf16>
        memref.store %cst_3, %alloc_20[] : memref<f16>
        %284 = arith.divf %cst_25, %cst_4 : f32
        linalg.yield %cst_4 : f32
      } -> tensor<9x1x4xf32>
      scf.yield %alloc_8 : memref<12xi16>
    } else {
      %248 = arith.xori %false_1, %false_1 : i1
      %cst_56 = arith.constant 1.000000e+00 : f32
      %249 = vector.transfer_read %11[%c6], %cst_56 : tensor<12xf32>, vector<f32>
      %alloca_57 = memref.alloca() : memref<9x1x4xi64>
      %250 = math.atan2 %3, %13 : tensor<9x1x4xf32>
      vector.print %63 : vector<i1>
      %251 = arith.mulf %cst_25, %cst_2 : f32
      %252 = arith.divsi %false, %false : i1
      %253 = tensor.empty() : tensor<9x1x4xi1>
      %mapped_58 = linalg.map ins(%alloc_6, %2 : memref<9x1x4xi1>, tensor<9x1x4xi1>) outs(%253 : tensor<9x1x4xi1>)
        (%in: i1, %in_59: i1) {
          %inserted = tensor.insert %in_59 into %253[%c5, %c0, %c0] : tensor<9x1x4xi1>
          %254 = arith.subi %26, %c4078_i16 : i16
          %255 = math.fma %cst_2, %extracted_29, %cst_0 : f32
          %256 = vector.broadcast %c589914455_i64 : i64 to vector<i64>
          %257 = vector.transfer_write %256, %18[%131] : vector<i64>, tensor<12xi64>
          %258 = arith.minf %cst, %cst_0 : f32
          %259 = vector.broadcast %cst_56 : f32 to vector<1x4xf32>
          %260 = vector.transfer_write %259, %4[%c15, %c5, %87] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<1x4xf32>, tensor<4x9x12xf32>
          %261 = memref.atomic_rmw mulf %cst_3, %alloc_20[] : (f16, memref<f16>) -> f16
          %262 = math.tan %3 : tensor<9x1x4xf32>
          %rank_60 = tensor.rank %22 : tensor<i32>
          %263 = index.divu %c12, %130
          %264 = math.cos %cst_56 : f32
          %265 = vector.load %alloc_10[%c4] : memref<12xf32>, vector<12xf32>
          affine.store %false_1, %alloc_14[%c0, %c15, %c5] : memref<4x9x12xi1>
          vector.print %85 : vector<9x12xi1>
          bufferization.dealloc_tensor %9 : tensor<12xi64>
          %collapsed_61 = tensor.collapse_shape %86 [[0, 1], [2]] : tensor<9x1x4xi1> into tensor<9x4xi1>
          %266 = math.round %0 : tensor<12xf32>
          %cast_62 = tensor.cast %12 : tensor<12xf16> to tensor<?xf16>
          %267 = vector.broadcast %cst_4 : f32 to vector<f32>
          %268 = vector.transfer_write %267, %11[%c10] : vector<f32>, tensor<12xf32>
          %expanded_63 = tensor.expand_shape %6 [[0, 1]] : tensor<12xi64> into tensor<12x1xi64>
          %269 = vector.broadcast %cst_4 : f32 to vector<4x4xf32>
          %270 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %259, %259, %269 : vector<1x4xf32>, vector<1x4xf32> into vector<4x4xf32>
          memref.copy %alloc_17, %alloc_15 : memref<9x1x4xi64> to memref<9x1x4xi64>
          %alloc_64 = memref.alloc() : memref<12xf32>
          memref.copy %alloc_10, %alloc_64 : memref<12xf32> to memref<12xf32>
          %271 = math.ipowi %129, %10 : tensor<9x1x4xi64>
          %272 = arith.shrsi %c314243881_i64, %c589914455_i64 : i64
          %273 = tensor.empty() : tensor<12xi16>
          %274 = arith.maxui %extracted, %c314243881_i64 : i64
          affine.store %159, %alloc_20[] : memref<f16>
          %275 = math.ctlz %in : i1
          %276 = math.ctpop %expanded : tensor<12x1xi64>
          %277 = vector.broadcast %cst : f32 to vector<1xf32>
          %dest_65, %accumulated_value_66 = vector.scan <add>, %259, %277 {inclusive = false, reduction_dim = 1 : i64} : vector<1x4xf32>, vector<1xf32>
          %278 = math.tan %cst_56 : f32
          %false_67 = arith.constant false
          linalg.yield %false_67 : i1
        }
      scf.yield %alloc_5 : memref<12xi16>
    }
    %161 = vector.broadcast %false : i1 to vector<12xi1>
    %dest_37, %accumulated_value_38 = vector.scan <maxsi>, %158, %161 {inclusive = false, reduction_dim = 0 : i64} : vector<9x12xi1>, vector<12xi1>
    %generated_39 = tensor.generate %c12 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %248 = math.cos %1 : tensor<12xf16>
      %249 = memref.load %alloc_16[%c3] : memref<12xi64>
      %250 = math.log2 %5 : tensor<12xf16>
      %251 = arith.divui %c1459424119_i64, %c746576448_i64 : i64
      tensor.yield %cst : f32
    } : tensor<?x9x12xf32>
    %162 = vector.extract %46[3] : vector<4xf16>
    %dest_40, %accumulated_value_41 = vector.scan <minui>, %58, %158 {inclusive = false, reduction_dim = 0 : i64} : vector<4x9x12xi1>, vector<9x12xi1>
    %163 = arith.minui %40, %40 : i16
    memref.tensor_store %6, %alloc_13 : memref<12xi64>
    %164 = math.powf %cst_0, %cst_0 : f32
    memref.copy %81, %alloc_18 : memref<4x9x12xi16> to memref<4x9x12xi16>
    %165 = arith.andi %c1418474441_i32, %c868436817_i32 : i32
    %166 = vector.broadcast %c5 : index to vector<9xindex>
    %167 = vector.broadcast %false_1 : i1 to vector<9xi1>
    %168 = vector.broadcast %c17041_i16 : i16 to vector<9xi16>
    vector.scatter %alloc_18[%c1, %c0, %c2] [%166], %167, %168 : memref<4x9x12xi16>, vector<9xindex>, vector<9xi1>, vector<9xi16>
    %169 = arith.ori %c746576448_i64, %extracted : i64
    scf.execute_region {
      %248 = arith.ceildivsi %extracted, %c746576448_i64 : i64
      %249 = affine.if affine_set<(d0) : (d0 * 2 == 0, d0 == 0, ((d0 * 2) mod 128 + d0) ceildiv 32 >= 0)>(%c0) -> f32 {
        %262 = arith.mulf %159, %153 : f16
        memref.store %26, %alloc_18[%c3, %c0, %c2] : memref<4x9x12xi16>
        %263 = arith.minui %26, %c17041_i16 : i16
        %264 = arith.maxf %cst_25, %cst_0 : f32
        %265 = arith.maxsi %c4078_i16, %40 : i16
        %266 = arith.ceildivsi %c4078_i16, %26 : i16
        %267 = bufferization.to_memref %collapsed : memref<36x12xf32>
        %268 = vector.bitcast %42 : vector<12xi64> to vector<12xi64>
        affine.yield %cst_4 : f32
      } else {
        %alloc_56 = memref.alloc() : memref<12xf16>
        memref.copy %alloc_11, %alloc_56 : memref<12xf16> to memref<12xf16>
        %262 = index.add %c10, %rank_30
        %263 = arith.remui %c314243881_i64, %c314243881_i64 : i64
        %264 = vector.broadcast %c17041_i16 : i16 to vector<9xi16>
        %265 = vector.broadcast %false_1 : i1 to vector<9xi1>
        %266 = vector.maskedload %160[%c8], %265, %264 : memref<12xi16>, vector<9xi1>, vector<9xi16> into vector<9xi16>
        %from_elements = tensor.from_elements %false_1, %false, %false, %false_1, %false_1, %false, %false, %false, %false, %false, %false_1, %false_1, %false, %false, %false_1, %false, %false, %false, %false, %false, %false_1, %false, %false_1, %false_1, %false_1, %false_1, %false_1, %false, %false, %false_1, %false_1, %false_1, %false_1, %false_1, %false, %false, %false, %false_1, %false, %false_1, %false, %false, %false, %false, %false_1, %false_1, %false, %false_1, %false_1, %false_1, %false_1, %false, %false_1, %false_1, %false, %false_1, %false_1, %false_1, %false_1, %false, %false, %false, %false_1, %false_1, %false_1, %false_1, %false, %false, %false_1, %false_1, %false, %false_1, %false_1, %false, %false_1, %false_1, %false, %false_1, %false_1, %false, %false, %false, %false, %false, %false, %false_1, %false, %false_1, %false_1, %false_1, %false, %false, %false, %false_1, %false, %false_1, %false_1, %false_1, %false_1, %false_1, %false_1, %false_1, %false, %false, %false, %false, %false_1, %false_1, %false_1, %false, %false, %false, %false, %false_1, %false_1, %false_1, %false, %false, %false_1, %false, %false_1, %false_1, %false, %false_1, %false_1, %false_1, %false, %false_1, %false_1, %false_1, %false, %false_1, %false_1, %false, %false, %false_1, %false, %false, %false_1, %false, %false, %false, %false_1, %false, %false_1, %false_1, %false, %false_1, %false, %false_1, %false, %false_1, %false_1, %false_1, %false_1, %false_1, %false_1, %false, %false_1, %false_1, %false_1, %false, %false_1, %false_1, %false, %false_1, %false_1, %false_1, %false_1, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false_1, %false_1, %false, %false_1, %false, %false_1, %false, %false_1, %false_1, %false, %false_1, %false_1, %false_1, %false, %false, %false, %false, %false, %false, %false_1, %false_1, %false_1, %false_1, %false_1, %false_1, %false, %false_1, %false_1, %false_1, %false_1, %false_1, %false_1, %false, %false_1, %false_1, %false_1, %false, %false_1, %false, %false_1, %false, %false_1, %false_1, %false_1, %false_1, %false_1, %false_1, %false, %false, %false, %false, %false, %false_1, %false, %false, %false, %false_1, %false_1, %false_1, %false, %false, %false, %false, %false, %false, %false_1, %false_1, %false, %false_1, %false_1, %false, %false, %false, %false_1, %false_1, %false_1, %false_1, %false, %false, %false_1, %false, %false, %false, %false_1, %false_1, %false, %false_1, %false_1, %false, %false, %false, %false_1, %false, %false, %false_1, %false, %false, %false, %false_1, %false_1, %false_1, %false, %false, %false_1, %false_1, %false_1, %false, %false_1, %false, %false_1, %false_1, %false, %false, %false_1, %false_1, %false_1, %false_1, %false, %false, %false_1, %false, %false, %false, %false_1, %false_1, %false, %false_1, %false_1, %false_1, %false, %false, %false_1, %false, %false_1, %false_1, %false_1, %false, %false, %false_1, %false, %false_1, %false, %false_1, %false, %false_1, %false, %false_1, %false, %false_1, %false_1, %false, %false_1, %false_1, %false, %false_1, %false, %false, %false_1, %false_1, %false_1, %false_1, %false_1, %false, %false_1, %false, %false_1, %false, %false_1, %false_1, %false, %false_1, %false_1, %false_1, %false, %false, %false_1, %false, %false_1, %false, %false, %false, %false_1, %false_1, %false, %false, %false_1, %false, %false_1, %false_1, %false, %false, %false_1, %false_1, %false_1, %false_1, %false, %false_1, %false, %false, %false_1, %false, %false_1, %false_1, %false, %false, %false, %false_1, %false_1, %false_1, %false, %false, %false, %false, %false_1, %false, %false, %false, %false, %false_1, %false, %false, %false, %false_1, %false, %false, %false_1, %false_1, %false_1, %false_1, %false, %false, %false_1, %false_1, %false_1, %false, %false_1, %false_1, %false, %false, %false_1, %false, %false_1, %false_1, %false, %false_1, %false_1, %false_1, %false_1, %false_1, %false, %false, %false, %false, %false : tensor<4x9x12xi1>
        %expanded_57 = tensor.expand_shape %12 [[0, 1]] : tensor<12xf16> into tensor<12x1xf16>
        %267 = math.fma %cst_3, %cst_3, %153 : f16
        %268 = math.fpowi %5, %7 : tensor<12xf16>, tensor<12xi32>
        affine.yield %cst_4 : f32
      }
      %250 = vector.shuffle %150, %150 [2, 4, 5] : vector<4x9x12xi1>, vector<4x9x12xi1>
      %251 = scf.index_switch %c0 -> tensor<12xi1> 
      case 1 {
        %262 = arith.remf %cst, %cst_2 : f32
        %263 = memref.realloc %alloc_13 : memref<12xi64> to memref<12xi64>
        %264 = bufferization.clone %alloc_12 : memref<9x1x4xi32> to memref<9x1x4xi32>
        %265 = math.absi %c4078_i16 : i16
        %266 = vector.shuffle %85, %158 [0, 1, 3, 4, 6, 7, 8, 10, 11, 13, 16] : vector<9x12xi1>, vector<9x12xi1>
        %267 = vector.extract %48[3] : vector<4xf16>
        %268 = index.divs %136, %73
        %269 = arith.minf %cst, %cst_0 : f32
        %270 = math.tanh %cst : f32
        %271 = arith.divf %cst_4, %cst_25 : f32
        %272 = math.exp %1 : tensor<12xf16>
        memref.tensor_store %18, %alloc_16 : memref<12xi64>
        %273 = vector.broadcast %false : i1 to vector<12xi1>
        %274 = vector.insert %273, %58 [3, 2] : vector<12xi1> into vector<4x9x12xi1>
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %275 = vector.transfer_read %alloc_8[%c9], %c0_i16 : memref<12xi16>, vector<i16>
        %276 = math.atan %cst_4 : f32
        %277 = arith.cmpf olt, %cst_2, %cst_2 : f32
        scf.yield %15 : tensor<12xi1>
      }
      default {
        %262 = arith.shrsi %c4078_i16, %c4078_i16 : i16
        %263 = index.maxu %rank, %c14
        %264 = arith.cmpf one, %153, %cst_3 : f16
        %265 = tensor.empty() : tensor<4x9x12xi32>
        memref.copy %81, %alloc_18 : memref<4x9x12xi16> to memref<4x9x12xi16>
        %266 = vector.extract_strided_slice %128 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
        %267 = arith.negf %153 : f16
        %268 = vector.extract %43[2] : vector<12xi64>
        %269 = vector.multi_reduction <xor>, %43, %42 [] : vector<12xi64> to vector<12xi64>
        vector.print %58 : vector<4x9x12xi1>
        %alloc_56 = memref.alloc() : memref<12xf16>
        memref.copy %alloc_11, %alloc_56 : memref<12xf16> to memref<12xf16>
        memref.copy %76, %alloc_6 : memref<9x1x4xi1> to memref<9x1x4xi1>
        memref.store %extracted, %alloc_17[%c7, %c0, %c0] : memref<9x1x4xi64>
        %270 = index.maxu %107, %c9
        %271 = vector.create_mask %rank : vector<12xi1>
        %alloc_57 = memref.alloc() : memref<9x1x4xi32>
        memref.copy %alloc_12, %alloc_57 : memref<9x1x4xi32> to memref<9x1x4xi32>
        scf.yield %15 : tensor<12xi1>
      }
      %252 = scf.if %false_1 -> (memref<12xi16>) {
        %262 = arith.mulf %153, %cst_3 : f16
        %263 = arith.ori %extracted, %c314243881_i64 : i64
        %264 = index.ceildivu %c10, %c1
        %265 = arith.ori %false_1, %false_1 : i1
        %266 = arith.cmpf ogt, %cst_3, %159 : f16
        %267 = vector.extract %48[2] : vector<4xf16>
        %268 = math.round %11 : tensor<12xf32>
        %269 = bufferization.to_tensor %alloc_20 : memref<f16>
        scf.yield %160 : memref<12xi16>
      } else {
        %262 = vector.insert %c4078_i16, %83 [3] : i16 into vector<12xi16>
        %263 = math.ctpop %c1418474441_i32 : i32
        %264 = arith.ori %c746576448_i64, %c1459424119_i64 : i64
        %265 = math.tanh %cst_3 : f16
        %266 = math.fma %1, %12, %5 : tensor<12xf16>
        %expanded_56 = tensor.expand_shape %6 [[0, 1]] : tensor<12xi64> into tensor<12x1xi64>
        %267 = math.powf %cst_2, %cst : f32
        affine.store %extracted, %alloc_15[%c12, %c10, %c4] : memref<9x1x4xi64>
        scf.yield %160 : memref<12xi16>
      }
      %253 = math.exp %116 : tensor<9x1x4xf32>
      %254 = math.absf %159 : f16
      %255 = vector.insert %false_1, %47 [1] : i1 into vector<4xi1>
      %256 = index.maxs %rank_30, %87
      memref.store %c4078_i16, %alloc_8[%c1] : memref<12xi16>
      %257 = bufferization.to_tensor %alloc_19 : memref<9x1x4xf16>
      %258 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%7, %7, %7 : tensor<12xi32>, tensor<12xi32>, tensor<12xi32>) outs(%8 : tensor<4x9x12xi32>) {
      ^bb0(%in: i32, %in_56: i32, %in_57: i32, %out: i32):
        %cast_58 = tensor.cast %12 : tensor<12xf16> to tensor<?xf16>
        %262 = vector.create_mask %c8 : vector<12xi1>
        %263 = math.round %0 : tensor<12xf32>
        %cast_59 = tensor.cast %10 : tensor<9x1x4xi64> to tensor<?x?x?xi64>
        %264 = math.powf %4, %4 : tensor<4x9x12xf32>
        %265 = index.casts %136 : index to i32
        %266 = index.maxs %146, %256
        %267 = index.sub %256, %87
        vector.print %46 : vector<4xf16>
        %268 = vector.create_mask %c6 : vector<12xi1>
        %269 = math.log10 %153 : f16
        %270 = index.castu %c15 : index to i32
        %271 = vector.create_mask %134 : vector<12xi1>
        %272 = math.atan %0 : tensor<12xf32>
        %273 = bufferization.clone %76 : memref<9x1x4xi1> to memref<9x1x4xi1>
        %274 = arith.andi %c868436817_i32, %out : i32
        %275 = arith.andi %in_56, %in : i32
        %276 = math.fma %cst, %cst, %extracted_29 : f32
        %277 = math.tan %3 : tensor<9x1x4xf32>
        %278 = tensor.empty(%266, %c4, %c12) : tensor<?x?x?xi64>
        bufferization.dealloc_tensor %3 : tensor<9x1x4xf32>
        %279 = math.tanh %12 : tensor<12xf16>
        bufferization.dealloc_tensor %4 : tensor<4x9x12xf32>
        %280 = arith.ori %c868436817_i32, %in : i32
        %281 = arith.ori %in, %in_57 : i32
        %282 = tensor.empty() : tensor<4x9x12xi64>
        %rank_60 = tensor.rank %22 : tensor<i32>
        %283 = math.tan %cst_4 : f32
        vector.print %58 : vector<4x9x12xi1>
        %284 = vector.broadcast %cst_25 : f32 to vector<9x1x4xf32>
        %285 = vector.fma %284, %284, %284 : vector<9x1x4xf32>
        %286 = tensor.empty() : tensor<1x1xi64>
        %287 = tensor.empty() : tensor<12x1xi64>
        %288 = linalg.matmul ins(%expanded, %286 : tensor<12x1xi64>, tensor<1x1xi64>) outs(%287 : tensor<12x1xi64>) -> tensor<12x1xi64>
        %289 = index.castu %c589914455_i64 : i64 to index
        linalg.yield %in : i32
      } -> tensor<4x9x12xi32>
      bufferization.dealloc_tensor %0 : tensor<12xf32>
      %259 = math.tanh %3 : tensor<9x1x4xf32>
      %260 = index.divu %c5, %130
      %261 = math.tanh %13 : tensor<9x1x4xf32>
      scf.yield
    }
    %170 = math.exp %3 : tensor<9x1x4xf32>
    %expanded_42 = tensor.expand_shape %0 [[0, 1]] : tensor<12xf32> into tensor<12x1xf32>
    %collapsed_43 = tensor.collapse_shape %expanded [[0, 1]] : tensor<12x1xi64> into tensor<12xi64>
    %171 = arith.andi %extracted, %c589914455_i64 : i64
    %172 = index.ceildivs %99, %121
    %173 = arith.cmpf uge, %cst_2, %extracted_29 : f32
    %174 = index.floordivs %c10, %68
    %cast_44 = tensor.cast %9 : tensor<12xi64> to tensor<?xi64>
    %175 = vector.extract %123[2] : vector<4x9x12xi64>
    %176 = arith.divui %c314243881_i64, %c589914455_i64 : i64
    vector.print %61 : vector<i32>
    %177 = index.ceildivs %c1, %131
    %178 = vector.broadcast %134 : index to vector<9xindex>
    %179 = vector.broadcast %false_1 : i1 to vector<9xi1>
    %180 = vector.broadcast %26 : i16 to vector<9xi16>
    vector.scatter %alloc_5[%c9] [%178], %179, %180 : memref<12xi16>, vector<9xindex>, vector<9xi1>, vector<9xi16>
    %181 = math.expm1 %3 : tensor<9x1x4xf32>
    %182 = vector.load %alloc_6[%c6, %c0, %c2] : memref<9x1x4xi1>, vector<12xi1>
    %expanded_45 = tensor.expand_shape %11 [[0, 1]] : tensor<12xf32> into tensor<12x1xf32>
    %183 = math.round %3 : tensor<9x1x4xf32>
    affine.store %cst_3, %alloc_11[%c2] : memref<12xf16>
    %184 = vector.insert %85, %58 [3] : vector<9x12xi1> into vector<4x9x12xi1>
    %185 = arith.mulf %159, %cst_3 : f16
    %186 = tensor.empty() : tensor<4x9x12xi1>
    %mapped_46 = linalg.map ins(%23, %alloc_14 : tensor<4x9x12xi1>, memref<4x9x12xi1>) outs(%186 : tensor<4x9x12xi1>)
      (%in: i1, %in_56: i1) {
        %248 = tensor.empty() : tensor<9x1x4xi32>
        %mapped_57 = linalg.map ins(%alloc_12, %alloc_12, %alloc_12 : memref<9x1x4xi32>, memref<9x1x4xi32>, memref<9x1x4xi32>) outs(%248 : tensor<9x1x4xi32>)
          (%in_65: i32, %in_66: i32, %in_67: i32) {
            %281 = vector.insert %cst_3, %46 [2] : f16 into vector<4xf16>
            %282 = vector.load %alloc_15[%c5, %c0, %c3] : memref<9x1x4xi64>, vector<9x1x4xi64>
            %collapsed_68 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<9x1x4xf32> into tensor<9x4xf32>
            %283 = arith.divf %cst, %cst_2 : f32
            %284 = math.round %11 : tensor<12xf32>
            memref.copy %alloc_6, %alloc_7 : memref<9x1x4xi1> to memref<9x1x4xi1>
            %285 = vector.broadcast %c589914455_i64 : i64 to vector<12x12xi64>
            %286 = vector.outerproduct %84, %84, %285 {kind = #vector.kind<maxui>} : vector<12xi64>, vector<12xi64>
            vector.print %175 : vector<9x12xi64>
            %287 = math.powf %14, %3 : tensor<9x1x4xf32>
            %288 = vector.broadcast %extracted : i64 to vector<i64>
            %289 = vector.transfer_write %288, %6[%c9] : vector<i64>, tensor<12xi64>
            %290 = index.ceildivs %c0, %68
            %291 = arith.divsi %extracted, %c746576448_i64 : i64
            %expanded_69 = tensor.expand_shape %expanded_42 [[0], [1, 2]] : tensor<12x1xf32> into tensor<12x1x1xf32>
            %292 = index.ceildivu %174, %290
            %293 = bufferization.to_memref %15 : memref<12xi1>
            %294 = memref.realloc %alloc_8 : memref<12xi16> to memref<4xi16>
            %295 = math.absf %expanded_42 : tensor<12x1xf32>
            %296 = index.castu %c1719160145_i32 : i32 to index
            %297 = index.ceildivu %rank, %c4
            %298 = vector.broadcast %40 : i16 to vector<12x12xi16>
            %299 = vector.outerproduct %83, %83, %298 {kind = #vector.kind<minsi>} : vector<12xi16>, vector<12xi16>
            %300 = vector.create_mask %c11 : vector<12xi1>
            %301 = math.absf %cst_2 : f32
            %302 = affine.apply affine_map<(d0, d1, d2) -> (d0 * 16)>(%290, %177, %172)
            %303 = bufferization.clone %alloc_20 : memref<f16> to memref<f16>
            %304 = arith.shrsi %40, %40 : i16
            %305 = math.atan %153 : f16
            %306 = arith.shrui %c868436817_i32, %c1418474441_i32 : i32
            %307 = arith.maxf %153, %cst_3 : f16
            %308 = arith.divsi %false_1, %false : i1
            %309 = math.atan2 %159, %cst_3 : f16
            %310 = index.castu %false : i1 to index
            %311 = arith.xori %40, %40 : i16
            %c1_i32 = arith.constant 1 : i32
            linalg.yield %c1_i32 : i32
          }
        %249 = vector.insert %false, %182 [6] : i1 into vector<12xi1>
        %250 = math.sqrt %3 : tensor<9x1x4xf32>
        %251 = math.absf %153 : f16
        %252 = scf.execute_region -> f16 {
          %281 = arith.maxf %159, %153 : f16
          %282 = math.atan %11 : tensor<12xf32>
          %283 = math.sqrt %1 : tensor<12xf16>
          %284 = math.fma %3, %14, %116 : tensor<9x1x4xf32>
          vector.print %61 : vector<i32>
          %285 = math.atan %14 : tensor<9x1x4xf32>
          %286 = index.mul %c11, %35
          %287 = arith.subi %c746576448_i64, %c746576448_i64 : i64
          %288 = vector.load %160[%c0] : memref<12xi16>, vector<4x9x12xi16>
          %289 = index.castu %107 : index to i32
          %290 = index.maxs %c10, %c11
          memref.store %c17041_i16, %alloc_8[%c3] : memref<12xi16>
          %291 = index.mul %68, %87
          %292 = index.maxu %122, %286
          vector.print %19 : vector<12xf16>
          %collapsed_65 = tensor.collapse_shape %2 [[0, 1], [2]] : tensor<9x1x4xi1> into tensor<9x4xi1>
          scf.yield %159 : f16
        }
        %253 = arith.divui %in, %in : i1
        %254 = vector.extract %83[11] : vector<12xi16>
        %255 = vector.broadcast %c1459424119_i64 : i64 to vector<1xi64>
        %256 = vector.maskedload %alloc_16[%c3], %128, %255 : memref<12xi64>, vector<1xi1>, vector<1xi64> into vector<1xi64>
        %generated_58 = tensor.generate %c9 {
        ^bb0(%arg1: index, %arg2: index, %arg3: index):
          %281 = arith.divsi %26, %c4078_i16 : i16
          %282 = arith.shrsi %c17041_i16, %c17041_i16 : i16
          %283 = math.tan %0 : tensor<12xf32>
          %284 = math.fma %159, %159, %153 : f16
          tensor.yield %159 : f16
        } : tensor<?x1x4xf16>
        %257 = vector.broadcast %c746576448_i64 : i64 to vector<9xi64>
        %dest_59, %accumulated_value_60 = vector.scan <add>, %175, %257 {inclusive = false, reduction_dim = 1 : i64} : vector<9x12xi64>, vector<9xi64>
        %258 = tensor.empty() : tensor<12xi32>
        %mapped_61 = linalg.map ins(%20, %20 : tensor<12xi32>, tensor<12xi32>) outs(%258 : tensor<12xi32>)
          (%in_65: i32, %in_66: i32) {
            bufferization.dealloc_tensor %186 : tensor<4x9x12xi1>
            %281 = tensor.empty() : tensor<4x9x12xf16>
            %282 = arith.remsi %in_66, %c1719160145_i32 : i32
            %283 = arith.shrsi %c1459424119_i64, %c589914455_i64 : i64
            %284 = index.maxu %c4, %68
            %285 = arith.andi %c589914455_i64, %extracted : i64
            %286 = bufferization.to_tensor %alloc_6 : memref<9x1x4xi1>
            %287 = vector.broadcast %c314243881_i64 : i64 to vector<9xi64>
            %dest_67, %accumulated_value_68 = vector.scan <minsi>, %175, %287 {inclusive = false, reduction_dim = 1 : i64} : vector<9x12xi64>, vector<9xi64>
            %288 = index.maxs %c0, %174
            %289 = index.divs %c12, %131
            %290 = affine.load %alloc_5[%c4] : memref<12xi16>
            %291 = affine.min affine_map<(d0, d1) -> (d0 mod 2)>(%34, %107)
            %292 = arith.floordivsi %c1418474441_i32, %in_66 : i32
            %293 = math.ctpop %extracted : i64
            %294 = memref.atomic_rmw mins %26, %alloc_18[%c0, %c3, %c9] : (i16, memref<4x9x12xi16>) -> i16
            vector.print %85 : vector<9x12xi1>
            %295 = math.atan %expanded_42 : tensor<12x1xf32>
            %296 = index.maxu %131, %c7
            %297 = index.maxu %99, %c14
            %298 = index.maxu %130, %c2
            %299 = index.castu %in_56 : i1 to index
            %300 = math.tanh %cst_3 : f16
            %301 = math.absf %5 : tensor<12xf16>
            %302 = index.ceildivu %130, %c6
            %303 = vector.broadcast %in_56 : i1 to vector<4x12xi1>
            %dest_69, %accumulated_value_70 = vector.scan <xor>, %150, %303 {inclusive = false, reduction_dim = 1 : i64} : vector<4x9x12xi1>, vector<4x12xi1>
            %304 = arith.negf %cst : f32
            %305 = affine.load %81[%c10, %c0, %c9] : memref<4x9x12xi16>
            %306 = arith.andi %false, %in : i1
            memref.store %c4078_i16, %160[%c3] : memref<12xi16>
            %rank_71 = tensor.rank %145 : tensor<12xi64>
            %307 = vector.load %alloc_5[%c2] : memref<12xi16>, vector<12xi16>
            %308 = math.powf %3, %3 : tensor<9x1x4xf32>
            %c1_i32 = arith.constant 1 : i32
            linalg.yield %c1_i32 : i32
          }
        %259 = arith.divf %cst_3, %153 : f16
        %260 = index.mul %177, %35
        %261 = math.sqrt %116 : tensor<9x1x4xf32>
        %262 = math.expm1 %cst : f32
        %263 = tensor.empty() : tensor<9x1x4xf32>
        %mapped_62 = linalg.map ins(%14, %3, %14 : tensor<9x1x4xf32>, tensor<9x1x4xf32>, tensor<9x1x4xf32>) outs(%263 : tensor<9x1x4xf32>)
          (%in_65: f32, %in_66: f32, %in_67: f32) {
            %281 = arith.negf %cst_2 : f32
            %282 = index.ceildivs %260, %131
            %283 = vector.broadcast %cst_4 : f32 to vector<9xf32>
            %284 = vector.transfer_write %283, %expanded_45[%93, %146] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xf32>, tensor<12x1xf32>
            %285 = arith.minf %in_67, %in_67 : f32
            %286 = index.sub %99, %146
            %287 = math.absf %collapsed : tensor<36x12xf32>
            %288 = math.atan2 %3, %13 : tensor<9x1x4xf32>
            %289 = arith.minf %cst_3, %cst_3 : f16
            %290 = math.absi %10 : tensor<9x1x4xi64>
            bufferization.dealloc_tensor %8 : tensor<4x9x12xi32>
            %dest_68, %accumulated_value_69 = vector.scan <maxsi>, %150, %158 {inclusive = false, reduction_dim = 0 : i64} : vector<4x9x12xi1>, vector<9x12xi1>
            %291 = memref.atomic_rmw assign %153, %alloc_19[%c1, %c0, %c3] : (f16, memref<9x1x4xf16>) -> f16
            %292 = tensor.empty() : tensor<12xi64>
            %293 = index.castu %73 : index to i32
            %294 = arith.shli %c314243881_i64, %c1459424119_i64 : i64
            %rank_70 = tensor.rank %11 : tensor<12xf32>
            memref.store %26, %alloc_8[%c11] : memref<12xi16>
            %295 = vector.insert %c589914455_i64, %84 [9] : i64 into vector<12xi64>
            %296 = arith.remui %in_56, %false_1 : i1
            affine.store %in_56, %alloc_6[%c7, %c7, %c3] : memref<9x1x4xi1>
            %297 = arith.negf %in_66 : f32
            %298 = arith.andi %26, %26 : i16
            %299 = index.ceildivs %130, %c13
            %300 = arith.andi %in_56, %false : i1
            %301 = index.casts %c15 : index to i32
            %collapsed_71 = tensor.collapse_shape %10 [[0, 1], [2]] : tensor<9x1x4xi64> into tensor<9x4xi64>
            %302 = index.mul %174, %c5
            %collapsed_72 = tensor.collapse_shape %10 [[0, 1], [2]] : tensor<9x1x4xi64> into tensor<9x4xi64>
            %303 = vector.broadcast %false : i1 to vector<9xi1>
            %304 = vector.maskedload %alloc_14[%c2, %c6, %c2], %303, %303 : memref<4x9x12xi1>, vector<9xi1>, vector<9xi1> into vector<9xi1>
            %305 = vector.flat_transpose %128 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
            %306 = memref.realloc %alloc_11 : memref<12xf16> to memref<9xf16>
            %307 = math.ipowi %c17041_i16, %26 : i16
            %cst_73 = arith.constant 1.000000e+00 : f32
            linalg.yield %cst_73 : f32
          }
        %alloc_63 = memref.alloc() : memref<9x12xi64>
        %264 = tensor.empty() : tensor<12x12xi64>
        %265 = linalg.matmul ins(%105, %alloc_63 : tensor<12x9xi64>, memref<9x12xi64>) outs(%264 : tensor<12x12xi64>) -> tensor<12x12xi64>
        %266 = math.log %1 : tensor<12xf16>
        %267 = vector.extract %43[4] : vector<12xi64>
        %268 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 * -4, d0 + d3, d3 * -4, d0 + d3)>(%c0, %73, %260, %174)
        %269 = vector.create_mask %c12 : vector<12xi1>
        %270 = math.ipowi %21, %22 : tensor<i32>
        %271 = math.round %3 : tensor<9x1x4xf32>
        %272 = index.maxu %rank_32, %c12
        %273 = index.castu %in : i1 to index
        %274 = math.tan %14 : tensor<9x1x4xf32>
        %275 = vector.transpose %48, [0] : vector<4xf16> to vector<4xf16>
        %276 = affine.if affine_set<(d0, d1) : (0 == 0, 0 == 0, ((d1 * 2) floordiv 8) ceildiv 16 >= 0, ((d1 * 2) floordiv 8) floordiv 2 == 0)>(%c13, %c11) -> memref<4x9x12xf16> {
          %281 = arith.floordivsi %c1719160145_i32, %c868436817_i32 : i32
          %282 = math.ipowi %extracted, %c746576448_i64 : i64
          %283 = arith.minui %c314243881_i64, %extracted : i64
          %284 = tensor.empty() : tensor<36x1xf32>
          %285 = linalg.matmul ins(%collapsed, %expanded_42 : tensor<36x12xf32>, tensor<12x1xf32>) outs(%284 : tensor<36x1xf32>) -> tensor<36x1xf32>
          %286 = arith.mulf %cst_3, %159 : f16
          %287 = arith.remui %c746576448_i64, %c314243881_i64 : i64
          %288 = index.maxu %260, %177
          %289 = arith.maxsi %c868436817_i32, %c1418474441_i32 : i32
          %alloc_65 = memref.alloc() : memref<4x9x12xf16>
          affine.yield %alloc_65 : memref<4x9x12xf16>
        } else {
          %281 = bufferization.to_memref %22 : memref<i32>
          %282 = math.tan %116 : tensor<9x1x4xf32>
          %283 = vector.broadcast %in_56 : i1 to vector<9xi1>
          %dest_65, %accumulated_value_66 = vector.scan <maxsi>, %85, %283 {inclusive = false, reduction_dim = 1 : i64} : vector<9x12xi1>, vector<9xi1>
          %284 = arith.minf %cst_25, %cst_0 : f32
          %285 = math.expm1 %11 : tensor<12xf32>
          %286 = arith.maxf %cst, %cst_4 : f32
          %287 = bufferization.clone %81 : memref<4x9x12xi16> to memref<4x9x12xi16>
          %cast_67 = tensor.cast %3 : tensor<9x1x4xf32> to tensor<?x?x?xf32>
          %alloc_68 = memref.alloc() : memref<4x9x12xf16>
          affine.yield %alloc_68 : memref<4x9x12xf16>
        }
        %277 = math.log2 %11 : tensor<12xf32>
        %278 = index.add %260, %272
        %279 = arith.divf %153, %252 : f16
        %280 = arith.maxf %cst_0, %cst : f32
        %false_64 = arith.constant false
        linalg.yield %false_64 : i1
      }
    %187 = vector.bitcast %175 : vector<9x12xi64> to vector<9x12xi64>
    %188 = index.mul %136, %c0
    %189 = memref.load %alloc_16[%c0] : memref<12xi64>
    %190 = index.ceildivu %34, %c12
    %191 = math.ipowi %c1459424119_i64, %c589914455_i64 : i64
    %192 = vector.shuffle %42, %42 [0, 1, 2, 3, 4, 7, 8, 9, 10, 13, 14, 15, 16, 17, 18] : vector<12xi64>, vector<12xi64>
    %193 = math.log2 %4 : tensor<4x9x12xf32>
    %194 = vector.reduction <mul>, %83 : vector<12xi16> into i16
    %195 = vector.bitcast %84 : vector<12xi64> to vector<12xi64>
    vector.print %19 : vector<12xf16>
    %196 = index.maxs %134, %c4
    %197 = index.mul %68, %c13
    %198 = math.log %12 : tensor<12xf16>
    %199 = math.sqrt %5 : tensor<12xf16>
    %200 = math.expm1 %116 : tensor<9x1x4xf32>
    %201 = vector.bitcast %42 : vector<12xi64> to vector<12xi64>
    %202 = vector.create_mask %c15, %c8, %190 : vector<9x1x4xi1>
    %collapsed_47 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<9x1x4xf32> into tensor<9x4xf32>
    %generated_48 = tensor.generate %87, %174 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %248 = arith.maxf %153, %cst_3 : f16
      %249 = tensor.empty() : tensor<1x1xf32>
      %250 = tensor.empty() : tensor<12x1xf32>
      %251 = linalg.matmul ins(%expanded_45, %249 : tensor<12x1xf32>, tensor<1x1xf32>) outs(%250 : tensor<12x1xf32>) -> tensor<12x1xf32>
      %252 = affine.min affine_map<(d0, d1, d2, d3) -> (d0)>(%172, %68, %68, %107)
      %253 = arith.maxf %153, %153 : f16
      tensor.yield %cst_2 : f32
    } : tensor<?x?x12xf32>
    %203 = vector.bitcast %58 : vector<4x9x12xi1> to vector<4x9x12xi1>
    %204 = math.log2 %expanded_42 : tensor<12x1xf32>
    affine.store %c746576448_i64, %alloc_13[%c0] : memref<12xi64>
    %205 = vector.broadcast %c6 : index to vector<12xindex>
    vector.scatter %alloc_7[%c0, %c0, %c0] [%205], %182, %182 : memref<9x1x4xi1>, vector<12xindex>, vector<12xi1>, vector<12xi1>
    %206 = vector.maskedload %alloc_19[%c1, %c0, %c1], %47, %46 : memref<9x1x4xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
    %207 = arith.maxf %cst_0, %cst_25 : f32
    %208 = arith.remsi %c17041_i16, %c4078_i16 : i16
    %209 = memref.alloca_scope  -> (f32) {
      %248 = bufferization.to_memref %15 : memref<12xi1>
      %249 = vector.create_mask %c10 : vector<12xi1>
      affine.store %cst_4, %alloc_10[%c10] : memref<12xf32>
      scf.execute_region {
        %alloc_60 = memref.alloc() : memref<9x1xi64>
        %279 = tensor.empty() : tensor<12x1xi64>
        %280 = linalg.matmul ins(%105, %alloc_60 : tensor<12x9xi64>, memref<9x1xi64>) outs(%279 : tensor<12x1xi64>) -> tensor<12x1xi64>
        %extracted_61 = tensor.extract %8[%c0, %c2, %c8] : tensor<4x9x12xi32>
        %281 = index.add %93, %c4
        %282 = index.ceildivu %35, %112
        memref.assume_alignment %81, 8 : memref<4x9x12xi16>
        %283 = bufferization.to_memref %129 : memref<9x1x4xi64>
        %284 = arith.divf %159, %cst_3 : f16
        %285 = arith.negf %cst_4 : f32
        %286 = arith.maxui %c1459424119_i64, %extracted : i64
        %287 = math.ctpop %extracted : i64
        %288 = index.maxs %c11, %rank_32
        %289 = arith.cmpf olt, %153, %159 : f16
        %290 = affine.load %alloc_18[%c3, %c11, %c8] : memref<4x9x12xi16>
        %291 = arith.cmpf ogt, %153, %cst_3 : f16
        %292 = vector.broadcast %false_1 : i1 to vector<4x12xi1>
        %293 = vector.multi_reduction <add>, %203, %292 [1] : vector<4x9x12xi1> to vector<4x12xi1>
        %cast_62 = tensor.cast %2 : tensor<9x1x4xi1> to tensor<?x?x?xi1>
        scf.yield
      }
      memref.store %40, %alloc[%c1, %c7, %c0] : memref<4x9x12xi16>
      %250 = arith.andi %26, %c4078_i16 : i16
      %generated_56 = tensor.generate %c5, %rank_32, %87 {
      ^bb0(%arg1: index, %arg2: index, %arg3: index):
        %279 = arith.maxsi %40, %c4078_i16 : i16
        %280 = index.ceildivu %190, %112
        %281 = vector.broadcast %cst : f32 to vector<9xf32>
        %282 = vector.broadcast %false_1 : i1 to vector<9xi1>
        %283 = vector.maskedload %alloc_10[%c5], %282, %281 : memref<12xf32>, vector<9xi1>, vector<9xf32> into vector<9xf32>
        %284 = arith.maxf %cst_25, %extracted_29 : f32
        tensor.yield %cst_3 : f16
      } : tensor<?x?x?xf16>
      %251 = arith.minf %153, %159 : f16
      %252 = affine.for %arg1 = 0 to 35 iter_args(%arg2 = %c6) -> (index) {
        affine.yield %131 : index
      }
      %253 = math.absi %false : i1
      %254 = vector.shuffle %206, %48 [5, 6] : vector<4xf16>, vector<4xf16>
      %255 = memref.realloc %160 : memref<12xi16> to memref<12xi16>
      %256 = arith.ori %c314243881_i64, %c746576448_i64 : i64
      %257 = index.maxu %c11, %c13
      %258 = tensor.empty() : tensor<1x12xi64>
      %259 = tensor.empty() : tensor<12x12xi64>
      %260 = linalg.matmul ins(%expanded, %258 : tensor<12x1xi64>, tensor<1x12xi64>) outs(%259 : tensor<12x12xi64>) -> tensor<12x12xi64>
      %261 = bufferization.to_memref %15 : memref<12xi1>
      %262 = vector.flat_transpose %249 {columns = 3 : i32, rows = 4 : i32} : vector<12xi1> -> vector<12xi1>
      %263 = math.log2 %3 : tensor<9x1x4xf32>
      %264 = vector.broadcast %false_1 : i1 to vector<9x1xi1>
      %dest_57, %accumulated_value_58 = vector.scan <mul>, %202, %264 {inclusive = false, reduction_dim = 2 : i64} : vector<9x1x4xi1>, vector<9x1xi1>
      %265 = arith.subi %c314243881_i64, %c589914455_i64 : i64
      %266 = affine.min affine_map<(d0, d1, d2) -> (d2 - d1, d1 - 128)>(%68, %257, %73)
      %267 = arith.minf %cst_0, %cst_4 : f32
      %268 = index.divs %146, %73
      %269 = vector.broadcast %false : i1 to vector<12x12xi1>
      %270 = vector.outerproduct %182, %262, %269 {kind = #vector.kind<and>} : vector<12xi1>, vector<12xi1>
      %271 = math.log10 %116 : tensor<9x1x4xf32>
      %272 = bufferization.clone %alloc_7 : memref<9x1x4xi1> to memref<9x1x4xi1>
      %273 = bufferization.clone %alloc_15 : memref<9x1x4xi64> to memref<9x1x4xi64>
      %274 = vector.bitcast %203 : vector<4x9x12xi1> to vector<4x9x12xi1>
      %275 = bufferization.to_memref %145 : memref<12xi64>
      %276 = tensor.empty() : tensor<12xi64>
      %mapped_59 = linalg.map ins(%transposed, %alloc_16 : tensor<12xi64>, memref<12xi64>) outs(%276 : tensor<12xi64>)
        (%in: i64, %in_60: i64) {
          %cast_61 = tensor.cast %11 : tensor<12xf32> to tensor<?xf32>
          %279 = arith.divf %cst_25, %cst_0 : f32
          %280 = vector.maskedload %alloc_6[%c5, %c0, %c3], %128, %128 : memref<9x1x4xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
          %281 = index.castu %c314243881_i64 : i64 to index
          %282 = math.cos %collapsed : tensor<36x12xf32>
          %283 = arith.muli %c4078_i16, %c17041_i16 : i16
          %284 = bufferization.to_tensor %81 : memref<4x9x12xi16>
          %285 = arith.mulf %cst, %extracted_29 : f32
          %286 = vector.load %alloc[%c0, %c5, %c4] : memref<4x9x12xi16>, vector<12xi16>
          %287 = bufferization.to_memref %5 : memref<12xf16>
          affine.store %40, %alloc[%c11, %c5, %c15] : memref<4x9x12xi16>
          %288 = vector.broadcast %false_1 : i1 to vector<4x12xi1>
          %dest_62, %accumulated_value_63 = vector.scan <or>, %274, %288 {inclusive = true, reduction_dim = 1 : i64} : vector<4x9x12xi1>, vector<4x12xi1>
          %289 = arith.xori %in, %c314243881_i64 : i64
          %290 = arith.minf %153, %cst_3 : f16
          %291 = arith.ori %c589914455_i64, %c1459424119_i64 : i64
          %292 = math.cos %collapsed : tensor<36x12xf32>
          %293 = index.ceildivs %268, %c6
          %294 = math.log2 %cst_0 : f32
          %295 = math.log10 %1 : tensor<12xf16>
          %296 = math.fma %5, %5, %12 : tensor<12xf16>
          %297 = math.sqrt %3 : tensor<9x1x4xf32>
          %cast_64 = tensor.cast %284 : tensor<4x9x12xi16> to tensor<?x?x?xi16>
          %298 = math.ipowi %17, %transposed : tensor<12xi64>
          %299 = affine.min affine_map<(d0, d1) -> ((d1 - d0) mod 128 + d0 + 64, d0, d1, (d1 - d0) mod 2)>(%122, %281)
          %300 = arith.shli %false, %false_1 : i1
          %301 = arith.negf %159 : f16
          %302 = arith.andi %c746576448_i64, %c746576448_i64 : i64
          %303 = math.exp2 %11 : tensor<12xf32>
          %304 = vector.broadcast %false : i1 to vector<4x4xi1>
          %305 = vector.outerproduct %47, %47, %304 {kind = #vector.kind<add>} : vector<4xi1>, vector<4xi1>
          %306 = arith.ori %in_60, %c314243881_i64 : i64
          %307 = arith.shrsi %c746576448_i64, %c589914455_i64 : i64
          %308 = math.exp %3 : tensor<9x1x4xf32>
          %c0_i64 = arith.constant 0 : i64
          linalg.yield %c0_i64 : i64
        }
      %277 = memref.alloca_scope  -> (i64) {
        %279 = arith.ori %false, %false : i1
        %280 = index.ceildivu %268, %c4
        %281 = memref.atomic_rmw mulf %cst_25, %alloc_10[%c11] : (f32, memref<12xf32>) -> f32
        %282 = index.sub %134, %c4
        %283 = arith.minui %40, %c4078_i16 : i16
        %284 = math.tan %0 : tensor<12xf32>
        %285 = math.expm1 %cst_25 : f32
        %286 = math.powf %116, %14 : tensor<9x1x4xf32>
        vector.print %249 : vector<12xi1>
        %287 = vector.bitcast %85 : vector<9x12xi1> to vector<9x12xi1>
        %288 = math.ipowi %c589914455_i64, %c314243881_i64 : i64
        %289 = math.powf %11, %11 : tensor<12xf32>
        %290 = index.divu %190, %197
        %291 = arith.shrui %c868436817_i32, %c1719160145_i32 : i32
        %292 = math.powf %5, %5 : tensor<12xf16>
        %293 = index.maxu %34, %73
        %294 = math.cos %cst_4 : f32
        %295 = arith.minf %cst_25, %cst_2 : f32
        %296 = math.cttz %186 : tensor<4x9x12xi1>
        %297 = vector.reduction <maxsi>, %195 : vector<12xi64> into i64
        %298 = vector.bitcast %85 : vector<9x12xi1> to vector<9x12xi1>
        %299 = index.sub %68, %107
        %300 = vector.broadcast %c746576448_i64 : i64 to vector<12x12xi64>
        %301 = vector.outerproduct %43, %84, %300 {kind = #vector.kind<or>} : vector<12xi64>, vector<12xi64>
        %302 = math.tanh %expanded_45 : tensor<12x1xf32>
        %303 = index.castu %extracted : i64 to index
        %304 = vector.broadcast %c314243881_i64 : i64 to vector<9xi64>
        %305 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxui>} %201, %187, %304 : vector<12xi64>, vector<9x12xi64> into vector<9xi64>
        %cst_60 = arith.constant 3.366400e+04 : f16
        %cast_61 = tensor.cast %116 : tensor<9x1x4xf32> to tensor<?x?x?xf32>
        %306 = math.atan2 %5, %1 : tensor<12xf16>
        %collapsed_62 = tensor.collapse_shape %collapsed_47 [[0, 1]] : tensor<9x4xf32> into tensor<36xf32>
        %307 = math.tan %13 : tensor<9x1x4xf32>
        %308 = math.tan %13 : tensor<9x1x4xf32>
        memref.alloca_scope.return %c314243881_i64 : i64
      }
      %278 = arith.ceildivsi %c17041_i16, %c4078_i16 : i16
      memref.alloca_scope.return %extracted_29 : f32
    }
    %210 = affine.min affine_map<(d0) -> (d0, d0 + 32)>(%c1)
    %211 = bufferization.to_tensor %alloc_8 : memref<12xi16>
    %212 = vector.extract %46[1] : vector<4xf16>
    %213 = vector.create_mask %177 : vector<12xi1>
    %214 = math.fpowi %153, %c868436817_i32 : f16, i32
    %generated_49 = tensor.generate %210, %c15, %99 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %248 = arith.divf %extracted_29, %209 : f32
      %249 = math.tanh %collapsed_47 : tensor<9x4xf32>
      %250 = vector.bitcast %175 : vector<9x12xi64> to vector<9x12xi64>
      %251 = vector.broadcast %c1 : index to vector<1xindex>
      %252 = vector.broadcast %153 : f16 to vector<1xf16>
      vector.scatter %alloc_19[%c4, %c0, %c0] [%251], %128, %252 : memref<9x1x4xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
      tensor.yield %false : i1
    } : tensor<?x?x?xi1>
    %alloca_50 = memref.alloca() : memref<12xf16>
    %215 = math.ctpop %40 : i16
    %216 = math.atan2 %11, %11 : tensor<12xf32>
    %217 = index.maxs %121, %188
    %218 = math.log10 %collapsed_47 : tensor<9x4xf32>
    %219 = math.absf %12 : tensor<12xf16>
    %220 = vector.extract %150[0] : vector<4x9x12xi1>
    %221 = affine.if affine_set<(d0) : ((-d0) ceildiv 128 >= 0, d0 mod 8 >= 0, d0 mod 8 == 0, d0 >= 0)>(%c14) -> memref<4x9x12xi16> {
      %248 = index.ceildivs %107, %73
      %249 = vector.broadcast %153 : f16 to vector<4x4xf16>
      %250 = vector.outerproduct %48, %48, %249 {kind = #vector.kind<maxf>} : vector<4xf16>, vector<4xf16>
      %251 = arith.remui %c1459424119_i64, %extracted : i64
      %252 = index.floordivs %146, %87
      %253 = arith.subi %c314243881_i64, %c746576448_i64 : i64
      %254 = tensor.empty() : tensor<12xi1>
      %255 = bufferization.clone %alloc_6 : memref<9x1x4xi1> to memref<9x1x4xi1>
      %256 = arith.mulf %cst, %extracted_29 : f32
      affine.yield %81 : memref<4x9x12xi16>
    } else {
      %248 = arith.floordivsi %false, %false : i1
      %249 = arith.divf %cst_3, %cst_3 : f16
      %250 = scf.execute_region -> tensor<4x9x12xi64> {
        %256 = memref.atomic_rmw maxf %cst_3, %alloc_11[%c4] : (f16, memref<12xf16>) -> f16
        %257 = math.atan2 %extracted_29, %cst_2 : f32
        memref.store %c4078_i16, %160[%c0] : memref<12xi16>
        %258 = math.tanh %11 : tensor<12xf32>
        %259 = bufferization.to_memref %7 : memref<12xi32>
        %260 = index.ceildivs %131, %107
        %261 = bufferization.to_tensor %259 : memref<12xi32>
        %262 = arith.divf %159, %cst_3 : f16
        %263 = vector.extract %220[5] : vector<9x12xi1>
        %264 = arith.divui %false, %false : i1
        %265 = arith.mulf %cst_3, %153 : f16
        %266 = math.ipowi %7, %7 : tensor<12xi32>
        %267 = vector.broadcast %99 : index to vector<4xindex>
        %268 = vector.broadcast %c746576448_i64 : i64 to vector<4xi64>
        vector.scatter %alloc_16[%c7] [%267], %47, %268 : memref<12xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
        %269 = math.atan %3 : tensor<9x1x4xf32>
        %270 = math.powf %0, %11 : tensor<12xf32>
        %271 = arith.andi %c1418474441_i32, %c1719160145_i32 : i32
        %272 = tensor.empty() : tensor<4x9x12xi64>
        scf.yield %272 : tensor<4x9x12xi64>
      }
      %251 = vector.bitcast %182 : vector<12xi1> to vector<12xi1>
      %252 = arith.cmpf ule, %cst_3, %159 : f16
      %253 = arith.maxf %cst_4, %cst : f32
      %254 = arith.maxf %cst, %cst_25 : f32
      %255 = math.copysign %cst_2, %cst_0 : f32
      affine.yield %81 : memref<4x9x12xi16>
    }
    %222 = memref.atomic_rmw minf %159, %alloc_11[%c6] : (f16, memref<12xf16>) -> f16
    %223 = vector.bitcast %19 : vector<12xf16> to vector<12xi16>
    %224 = bufferization.to_memref %18 : memref<12xi64>
    %225 = vector.broadcast %cst_2 : f32 to vector<9x1x4xf32>
    %226 = vector.fma %225, %225, %225 : vector<9x1x4xf32>
    %227 = math.round %116 : tensor<9x1x4xf32>
    %228 = memref.realloc %alloc_13 : memref<12xi64> to memref<4xi64>
    %229 = vector.maskedload %alloc_14[%c2, %c6, %c3], %47, %47 : memref<4x9x12xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
    memref.copy %alloc_13, %224 : memref<12xi64> to memref<12xi64>
    affine.store %c589914455_i64, %alloc_15[%c3, %c13, %c13] : memref<9x1x4xi64>
    %alloc_51 = memref.alloc() : memref<12xf32>
    memref.copy %alloc_10, %alloc_51 : memref<12xf32> to memref<12xf32>
    %230 = math.log10 %0 : tensor<12xf32>
    %231 = math.expm1 %3 : tensor<9x1x4xf32>
    %232 = math.sqrt %cst_2 : f32
    %233 = index.sub %93, %146
    %234 = vector.multi_reduction <mul>, %175, %195 [0] : vector<9x12xi64> to vector<12xi64>
    %235 = arith.remui %c746576448_i64, %c1459424119_i64 : i64
    %236 = affine.min affine_map<(d0) -> (d0 * 2 + 16)>(%c13)
    %237 = tensor.empty() : tensor<12x9xi64>
    %mapped_52 = linalg.map ins(%105 : tensor<12x9xi64>) outs(%237 : tensor<12x9xi64>)
      (%in: i64) {
        vector.print %123 : vector<4x9x12xi64>
        %248 = vector.extract %220[5] : vector<9x12xi1>
        %249 = math.sqrt %4 : tensor<4x9x12xf32>
        bufferization.dealloc_tensor %145 : tensor<12xi64>
        %250 = arith.floordivsi %false, %false : i1
        %251 = math.fma %1, %5, %1 : tensor<12xf16>
        %252 = vector.matrix_multiply %223, %83 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi16>, vector<12xi16>) -> vector<1xi16>
        %253 = affine.min affine_map<(d0) -> ((d0 * 8 - 4) ceildiv 64)>(%93)
        %254 = index.sub %174, %121
        %255 = affine.min affine_map<(d0, d1) -> (0)>(%112, %c6)
        %cast_56 = tensor.cast %1 : tensor<12xf16> to tensor<?xf16>
        %256 = math.atan %cst_4 : f32
        %257 = arith.remui %c868436817_i32, %c1418474441_i32 : i32
        %258 = memref.atomic_rmw muli %c17041_i16, %160[%c4] : (i16, memref<12xi16>) -> i16
        %259 = index.maxu %197, %136
        %260 = memref.load %alloc_11[%c11] : memref<12xf16>
        %261 = math.log10 %4 : tensor<4x9x12xf32>
        %262 = math.log2 %1 : tensor<12xf16>
        %263 = arith.remui %c4078_i16, %c17041_i16 : i16
        %generated_57 = tensor.generate %93 {
        ^bb0(%arg1: index):
          %276 = index.mul %c5, %259
          %277 = arith.minui %c1719160145_i32, %c1418474441_i32 : i32
          %278 = vector.broadcast %false : i1 to vector<9xi1>
          %279 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxsi>} %85, %182, %278 : vector<9x12xi1>, vector<12xi1> into vector<9xi1>
          %280 = arith.minui %c4078_i16, %c17041_i16 : i16
          tensor.yield %c1418474441_i32 : i32
        } : tensor<?xi32>
        vector.print %47 : vector<4xi1>
        %264 = arith.andi %c746576448_i64, %c1459424119_i64 : i64
        %265 = bufferization.clone %alloc_15 : memref<9x1x4xi64> to memref<9x1x4xi64>
        %expanded_58 = tensor.expand_shape %145 [[0, 1]] : tensor<12xi64> into tensor<12x1xi64>
        %cast_59 = tensor.cast %7 : tensor<12xi32> to tensor<?xi32>
        %266 = vector.broadcast %188 : index to vector<4xindex>
        %267 = vector.broadcast %26 : i16 to vector<4xi16>
        vector.scatter %alloc_5[%c7] [%266], %47, %267 : memref<12xi16>, vector<4xindex>, vector<4xi1>, vector<4xi16>
        %268 = math.tan %cst_4 : f32
        %269 = tensor.empty() : tensor<9x9xi64>
        %270 = tensor.empty() : tensor<12x9xi64>
        %271 = linalg.matmul ins(%105, %269 : tensor<12x9xi64>, tensor<9x9xi64>) outs(%270 : tensor<12x9xi64>) -> tensor<12x9xi64>
        %272 = math.log10 %0 : tensor<12xf32>
        %273 = arith.shrsi %c746576448_i64, %extracted : i64
        %274 = vector.shuffle %248, %248 [0, 1, 4, 7, 9, 10, 11, 13, 14, 16, 21, 22] : vector<12xi1>, vector<12xi1>
        %275 = math.round %13 : tensor<9x1x4xf32>
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %238 = memref.alloca_scope  -> (i64) {
      %248 = math.fma %4, %4, %4 : tensor<4x9x12xf32>
      %249 = vector.broadcast %210 : index to vector<12xindex>
      vector.scatter %alloc_16[%c4] [%249], %213, %42 : memref<12xi64>, vector<12xindex>, vector<12xi1>, vector<12xi64>
      %250 = index.maxs %87, %c5
      %251 = memref.atomic_rmw addf %cst_3, %alloc_11[%c11] : (f16, memref<12xf16>) -> f16
      %252 = memref.realloc %alloc_16 : memref<12xi64> to memref<12xi64>
      %253 = arith.shrsi %26, %40 : i16
      %254 = arith.maxsi %c1418474441_i32, %c1719160145_i32 : i32
      %255 = index.add %122, %35
      memref.store %false, %76[%c5, %c0, %c2] : memref<9x1x4xi1>
      %256 = vector.broadcast %false_1 : i1 to vector<9x1xi1>
      %dest_56, %accumulated_value_57 = vector.scan <xor>, %202, %256 {inclusive = false, reduction_dim = 2 : i64} : vector<9x1x4xi1>, vector<9x1xi1>
      %257 = index.maxs %c14, %c6
      %258 = math.cos %4 : tensor<4x9x12xf32>
      %false_58 = arith.constant false
      %false_59 = arith.constant false
      %259 = vector.transfer_read %2[%93, %210, %217], %false_59 {permutation_map = affine_map<(d0, d1, d2) -> (0, d1)>} : tensor<9x1x4xi1>, vector<1x1xi1>
      %260 = affine.load %alloc_20[] : memref<f16>
      %261 = math.atan2 %cst_2, %cst_0 : f32
      %262 = arith.andi %c4078_i16, %c4078_i16 : i16
      %263 = affine.load %alloc_13[%c13] : memref<12xi64>
      %264 = memref.load %81[%c2, %c6, %c8] : memref<4x9x12xi16>
      %cast_60 = tensor.cast %13 : tensor<9x1x4xf32> to tensor<?x?x?xf32>
      %265 = index.ceildivs %68, %210
      %266 = math.absf %14 : tensor<9x1x4xf32>
      %267 = math.ctpop %10 : tensor<9x1x4xi64>
      %268 = math.expm1 %cst_0 : f32
      %269 = affine.if affine_set<(d0, d1) : (d1 floordiv 128 == 0, d1 * 2 >= 0, d0 >= 0, d1 + d1 + 4 == 0)>(%c7, %c8) -> f16 {
        %278 = vector.broadcast %c314243881_i64 : i64 to vector<4x9x12xi64>
        %279 = vector.multi_reduction <minsi>, %202, %229 [0, 1] : vector<9x1x4xi1> to vector<4xi1>
        %cast_61 = tensor.cast %145 : tensor<12xi64> to tensor<?xi64>
        %280 = math.tan %collapsed_47 : tensor<9x4xf32>
        %281 = math.ipowi %2, %24 : tensor<9x1x4xi1>
        %282 = arith.cmpf une, %209, %cst : f32
        %283 = arith.negf %cst : f32
        %284 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %223, %83, %26 : vector<12xi16>, vector<12xi16> into i16
        affine.yield %260 : f16
      } else {
        %278 = arith.minui %263, %c746576448_i64 : i64
        %rank_61 = tensor.rank %211 : tensor<12xi16>
        %279 = math.expm1 %cst_25 : f32
        %280 = math.absf %14 : tensor<9x1x4xf32>
        %281 = math.cos %4 : tensor<4x9x12xf32>
        %282 = arith.ori %c1719160145_i32, %c1418474441_i32 : i32
        %alloc_62 = memref.alloc() : memref<1x12xf32>
        %283 = tensor.empty() : tensor<12x12xf32>
        %284 = linalg.matmul ins(%expanded_42, %alloc_62 : tensor<12x1xf32>, memref<1x12xf32>) outs(%283 : tensor<12x12xf32>) -> tensor<12x12xf32>
        %285 = arith.remsi %false_1, %false_58 : i1
        affine.yield %159 : f16
      }
      %270 = math.ipowi %7, %7 : tensor<12xi32>
      %271 = vector.insert %false_58, %128 [0] : i1 into vector<1xi1>
      %272 = index.sub %c15, %255
      %273 = scf.if %false_58 -> (f16) {
        %278 = memref.load %76[%c6, %c0, %c2] : memref<9x1x4xi1>
        %279 = index.sub %146, %172
        memref.store %cst_3, %alloc_19[%c6, %c0, %c3] : memref<9x1x4xf16>
        %280 = vector.shuffle %229, %229 [2, 7] : vector<4xi1>, vector<4xi1>
        %281 = bufferization.to_tensor %alloc_5 : memref<12xi16>
        %282 = math.ctpop %c17041_i16 : i16
        %283 = vector.reduction <add>, %128 : vector<1xi1> into i1
        %284 = index.mul %c4, %255
        scf.yield %159 : f16
      } else {
        %278 = arith.ori %c1459424119_i64, %c1459424119_i64 : i64
        %279 = index.divs %197, %c7
        %280 = arith.minui %c1719160145_i32, %c868436817_i32 : i32
        %281 = index.castu %c2 : index to i32
        %282 = bufferization.to_tensor %alloc_19 : memref<9x1x4xf16>
        %283 = bufferization.clone %alloc_9 : memref<12xi32> to memref<12xi32>
        %284 = math.exp %cst_2 : f32
        %285 = vector.extract %229[3] : vector<4xi1>
        scf.yield %cst_3 : f16
      }
      %274 = math.powf %cst_2, %cst : f32
      %275 = vector.create_mask %196 : vector<12xi1>
      %276 = vector.bitcast %158 : vector<9x12xi1> to vector<9x12xi1>
      %277 = arith.cmpf olt, %209, %cst : f32
      memref.alloca_scope.return %c314243881_i64 : i64
    }
    %239 = math.cttz %6 : tensor<12xi64>
    %240 = arith.remui %c1719160145_i32, %c1418474441_i32 : i32
    %241 = vector.create_mask %172, %131, %rank_30 : vector<9x1x4xi1>
    %242 = arith.mulf %cst, %cst_2 : f32
    %243 = bufferization.to_memref %cast_44 : memref<?xi64>
    %244 = memref.atomic_rmw andi %c4078_i16, %alloc_8[%c9] : (i16, memref<12xi16>) -> i16
    %generated_53 = tensor.generate %c1 {
    ^bb0(%arg1: index):
      %248 = arith.andi %extracted, %c314243881_i64 : i64
      memref.store %c589914455_i64, %alloc_15[%c3, %c0, %c0] : memref<9x1x4xi64>
      %249 = vector.shuffle %202, %202 [0, 1, 2, 3, 5, 7, 12, 13, 15] : vector<9x1x4xi1>, vector<9x1x4xi1>
      %250 = vector.broadcast %153 : f16 to vector<4x9x12xf16>
      tensor.yield %cst_3 : f16
    } : tensor<?xf16>
    %245 = tensor.empty() : tensor<12xi1>
    %246 = linalg.copy ins(%15 : tensor<12xi1>) outs(%245 : tensor<12xi1>) -> tensor<12xi1>
    %alloc_54 = memref.alloc(%c9) : memref<?xi32>
    linalg.transpose ins(%generated_24 : tensor<?xi32>) outs(%alloc_54 : memref<?xi32>) permutation = [0] 
    %alloc_55 = memref.alloc() : memref<9xi1>
    linalg.reduce ins(%2 : tensor<9x1x4xi1>) outs(%alloc_55 : memref<9xi1>) dimensions = [1, 2] 
      (%in: i1, %init: i1) {
        %248 = vector.extract %46[1] : vector<4xf16>
        %249 = vector.extract %158[2] : vector<9x12xi1>
        %250 = bufferization.to_memref %14 : memref<9x1x4xf32>
        %251 = index.mul %112, %134
        %252 = math.sqrt %collapsed : tensor<36x12xf32>
        %253 = math.atan2 %209, %cst : f32
        %254 = arith.shrui %c589914455_i64, %extracted : i64
        %dest_56, %accumulated_value_57 = vector.scan <minsi>, %58, %85 {inclusive = false, reduction_dim = 0 : i64} : vector<4x9x12xi1>, vector<9x12xi1>
        %false_58 = arith.constant false
        linalg.yield %false_58 : i1
      }
    scf.parallel (%arg1) = (%68) to (%99) step (%c4) {
      %248 = arith.negf %153 : f16
      %249 = arith.maxf %extracted_29, %cst_25 : f32
      %250 = arith.ori %238, %c746576448_i64 : i64
      %251 = arith.ceildivsi %c17041_i16, %40 : i16
      %252 = arith.divui %c746576448_i64, %c746576448_i64 : i64
      %253 = index.ceildivu %34, %c13
      %254 = vector.broadcast %c1459424119_i64 : i64 to vector<9xi64>
      %dest_56, %accumulated_value_57 = vector.scan <minsi>, %175, %254 {inclusive = false, reduction_dim = 1 : i64} : vector<9x12xi64>, vector<9xi64>
      %255 = memref.realloc %160 : memref<12xi16> to memref<9xi16>
      %256 = math.atan2 %12, %12 : tensor<12xf16>
      %dest_58, %accumulated_value_59 = vector.scan <maxui>, %85, %182 {inclusive = false, reduction_dim = 0 : i64} : vector<9x12xi1>, vector<12xi1>
      %257 = affine.load %alloc_11[%c11] : memref<12xf16>
      %258 = arith.cmpi ne, %c1418474441_i32, %c868436817_i32 : i32
      %259 = vector.extract %123[2] : vector<4x9x12xi64>
      %260 = index.maxu %34, %121
      %261 = vector.bitcast %83 : vector<12xi16> to vector<12xi16>
      %262 = math.fma %14, %116, %13 : tensor<9x1x4xf32>
      scf.yield
    }
    %247 = affine.vector_load %alloc_7[%188, %c10, %131] : memref<9x1x4xi1>, vector<1xi1>
    affine.vector_store %213, %76[%112, %136, %188] : memref<9x1x4xi1>, vector<12xi1>
    vector.print %19 : vector<12xf16>
    vector.print %42 : vector<12xi64>
    vector.print %43 : vector<12xi64>
    vector.print %46 : vector<4xf16>
    vector.print %47 : vector<4xi1>
    vector.print %48 : vector<4xf16>
    vector.print %58 : vector<4x9x12xi1>
    vector.print %61 : vector<i32>
    vector.print %63 : vector<i1>
    vector.print %83 : vector<12xi16>
    vector.print %84 : vector<12xi64>
    vector.print %85 : vector<9x12xi1>
    vector.print %123 : vector<4x9x12xi64>
    vector.print %128 : vector<1xi1>
    vector.print %150 : vector<4x9x12xi1>
    vector.print %158 : vector<9x12xi1>
    vector.print %175 : vector<9x12xi64>
    vector.print %182 : vector<12xi1>
    vector.print %187 : vector<9x12xi64>
    vector.print %195 : vector<12xi64>
    vector.print %201 : vector<12xi64>
    vector.print %202 : vector<9x1x4xi1>
    vector.print %203 : vector<4x9x12xi1>
    vector.print %206 : vector<4xf16>
    vector.print %213 : vector<12xi1>
    vector.print %220 : vector<9x12xi1>
    vector.print %223 : vector<12xi16>
    vector.print %225 : vector<9x1x4xf32>
    vector.print %226 : vector<9x1x4xf32>
    vector.print %229 : vector<4xi1>
    vector.print %241 : vector<9x1x4xi1>
    vector.print %247 : vector<1xi1>
    vector.print %cst : f32
    vector.print %false : i1
    vector.print %cst_0 : f32
    vector.print %c1719160145_i32 : i32
    vector.print %c1459424119_i64 : i64
    vector.print %false_1 : i1
    vector.print %c746576448_i64 : i64
    vector.print %c1418474441_i32 : i32
    vector.print %cst_2 : f32
    vector.print %c868436817_i32 : i32
    vector.print %c17041_i16 : i16
    vector.print %cst_3 : f16
    vector.print %cst_4 : f32
    vector.print %c4078_i16 : i16
    vector.print %c314243881_i64 : i64
    vector.print %c589914455_i64 : i64
    vector.print %26 : i16
    vector.print %40 : i16
    vector.print %extracted : i64
    vector.print %cst_25 : f32
    vector.print %extracted_29 : f32
    vector.print %153 : f16
    vector.print %159 : f16
    vector.print %209 : f32
    vector.print %238 : i64
    return %extracted : i64
  }
}
