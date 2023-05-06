module {
  func.func nested @func1(%arg0: tensor<2xi32>) -> memref<3x15xi16> {
    %cst = arith.constant 0x4DA42FB3 : f32
    %true = arith.constant true
    %c744113698_i64 = arith.constant 744113698 : i64
    %cst_0 = arith.constant 2.08930483E+9 : f32
    %c-20430_i16 = arith.constant -20430 : i16
    %cst_1 = arith.constant 3.195200e+04 : f16
    %c355370246_i64 = arith.constant 355370246 : i64
    %false = arith.constant false
    %cst_2 = arith.constant 5.404800e+04 : f16
    %cst_3 = arith.constant 4.956800e+04 : f16
    %c156345344_i64 = arith.constant 156345344 : i64
    %false_4 = arith.constant false
    %c3052_i16 = arith.constant 3052 : i16
    %c366308732_i64 = arith.constant 366308732 : i64
    %c-2423_i16 = arith.constant -2423 : i16
    %c1563714217_i64 = arith.constant 1563714217 : i64
    %0 = tensor.empty() : tensor<16x16x2xf32>
    %1 = tensor.empty() : tensor<16x16x2xi32>
    %2 = tensor.empty() : tensor<2xi1>
    %3 = tensor.empty() : tensor<2x15xi1>
    %4 = tensor.empty() : tensor<16x16x2xi32>
    %5 = tensor.empty() : tensor<16x16x2xf32>
    %6 = tensor.empty() : tensor<2x15xi32>
    %7 = tensor.empty() : tensor<2x15xi32>
    %8 = tensor.empty() : tensor<16x16x2xi64>
    %9 = tensor.empty() : tensor<3x15xf16>
    %10 = tensor.empty() : tensor<3x15xi64>
    %11 = tensor.empty() : tensor<2xf32>
    %12 = tensor.empty() : tensor<16x16x2xi16>
    %13 = tensor.empty() : tensor<3x15xi16>
    %14 = tensor.empty() : tensor<2x15xi16>
    %15 = tensor.empty() : tensor<3x15xi64>
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
    %alloc = memref.alloc() : memref<2x15xi64>
    %alloc_5 = memref.alloc() : memref<2xf16>
    %alloc_6 = memref.alloc() : memref<3x15xi32>
    %alloc_7 = memref.alloc() : memref<2xf32>
    %alloc_8 = memref.alloc() : memref<2xi64>
    %alloc_9 = memref.alloc() : memref<3x15xi1>
    %alloc_10 = memref.alloc() : memref<16x16x2xf32>
    %alloc_11 = memref.alloc() : memref<2xi64>
    %alloc_12 = memref.alloc() : memref<3x15xi32>
    %alloc_13 = memref.alloc() : memref<3x15xf32>
    %alloc_14 = memref.alloc() : memref<2xf16>
    %alloc_15 = memref.alloc() : memref<2xi1>
    %alloc_16 = memref.alloc() : memref<3x15xi64>
    %alloc_17 = memref.alloc() : memref<3x15xi1>
    %alloc_18 = memref.alloc() : memref<16x16x2xi64>
    %alloc_19 = memref.alloc() : memref<2x15xi1>
    %16 = tensor.empty() : tensor<2x15xi16>
    %17 = linalg.copy ins(%14 : tensor<2x15xi16>) outs(%16 : tensor<2x15xi16>) -> tensor<2x15xi16>
    %alloc_20 = memref.alloc() : memref<2xi1>
    linalg.transpose ins(%alloc_15 : memref<2xi1>) outs(%alloc_20 : memref<2xi1>) permutation = [0] 
    %18 = tensor.empty() : tensor<i64>
    %reduced = linalg.reduce ins(%alloc_11 : memref<2xi64>) outs(%18 : tensor<i64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        %243 = affine.min affine_map<(d0) -> ((((d0 - 16) floordiv 32) ceildiv 4) floordiv 8 - 128)>(%c12)
        %244 = index.sub %c5, %c1
        %245 = vector.broadcast %cst_0 : f32 to vector<16xf32>
        %246 = vector.matrix_multiply %245, %245 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xf32>, vector<16xf32>) -> vector<1xf32>
        %247 = index.casts %c2 : index to i32
        %248 = arith.minsi %c355370246_i64, %c1563714217_i64 : i64
        scf.if %false {
          %251 = math.floor %5 : tensor<16x16x2xf32>
          %252 = vector.broadcast %c10 : index to vector<3xindex>
          %253 = vector.broadcast %false : i1 to vector<3xi1>
          vector.scatter %alloc_19[%c1, %c12] [%252], %253, %253 : memref<2x15xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
          %254 = bufferization.to_tensor %alloc_10 : memref<16x16x2xf32>
          memref.store %true, %alloc_17[%c1, %c9] : memref<3x15xi1>
          vector.print %246 : vector<1xf32>
          %255 = math.absi %13 : tensor<3x15xi16>
          %256 = arith.maxf %cst_2, %cst_1 : f16
          %257 = math.absi %13 : tensor<3x15xi16>
        }
        %249 = math.fpowi %0, %4 : tensor<16x16x2xf32>, tensor<16x16x2xi32>
        %250 = math.tanh %cst_0 : f32
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %19 = scf.parallel (%arg1, %arg2) = (%c12, %c10) to (%c10, %c0) step (%c14, %c11) init (%12) -> tensor<16x16x2xi16> {
      %243 = bufferization.to_tensor %alloc_16 : memref<3x15xi64>
      %244 = math.log10 %9 : tensor<3x15xf16>
      %245 = affine.if affine_set<(d0, d1, d2, d3) : (((-d3) ceildiv 16) ceildiv 32 == 0, d0 >= 0, (-d3) ceildiv 16 >= 0)>(%c2, %c7, %c0, %c13) -> memref<3x15xi1> {
        %255 = math.log %11 : tensor<2xf32>
        %expanded_56 = tensor.expand_shape %16 [[0], [1, 2]] : tensor<2x15xi16> into tensor<2x15x1xi16>
        %256 = affine.max affine_map<(d0, d1) -> ((d0 + 1) * 2, d1 floordiv 64 - d1, d1 mod 32 - (d1 + d1 floordiv 64 - d1 + 2) ceildiv 128)>(%c7, %arg2)
        %257 = index.floordivs %c13, %c5
        %258 = math.log10 %5 : tensor<16x16x2xf32>
        %collapsed_57 = tensor.collapse_shape %16 [[0, 1]] : tensor<2x15xi16> into tensor<30xi16>
        %alloc_58 = memref.alloc() : memref<3x15xi16>
        %259 = tensor.empty() : tensor<3x15xi32>
        %260 = math.fpowi %9, %259 : tensor<3x15xf16>, tensor<3x15xi32>
        affine.yield %alloc_17 : memref<3x15xi1>
      } else {
        %255 = math.roundeven %cst : f32
        %splat_56 = tensor.splat %false_4 : tensor<16x16x2xi1>
        %256 = math.absf %cst : f32
        %257 = math.log %5 : tensor<16x16x2xf32>
        %258 = index.divu %c5, %c5
        %259 = vector.broadcast %c744113698_i64 : i64 to vector<2x15xi64>
        %260 = vector.transpose %259, [1, 0] : vector<2x15xi64> to vector<15x2xi64>
        %261 = vector.broadcast %cst : f32 to vector<2x15xf32>
        %262 = vector.fma %261, %261, %261 : vector<2x15xf32>
        %263 = math.round %9 : tensor<3x15xf16>
        affine.yield %alloc_17 : memref<3x15xi1>
      }
      memref.store %cst_2, %alloc_14[%c0] : memref<2xf16>
      %246 = vector.broadcast %c355370246_i64 : i64 to vector<1xi64>
      %247 = vector.extract_strided_slice %246 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
      memref.store %c156345344_i64, %alloc_8[%c0] : memref<2xi64>
      %collapsed_52 = tensor.collapse_shape %13 [[0, 1]] : tensor<3x15xi16> into tensor<45xi16>
      %248 = scf.index_switch %c1 -> i64 
      case 1 {
        %255 = arith.minf %cst_3, %cst_3 : f16
        %256 = math.log10 %cst_0 : f32
        %257 = vector.broadcast %cst : f32 to vector<2x15xf32>
        %258 = vector.fma %257, %257, %257 : vector<2x15xf32>
        %259 = math.round %cst_0 : f32
        %260 = math.cttz %12 : tensor<16x16x2xi16>
        %261 = tensor.empty(%c11, %c9) : tensor<?x16x?xi64>
        %from_elements_56 = tensor.from_elements %cst, %cst_0 : tensor<2xf32>
        %262 = math.log10 %cst : f32
        %263 = index.ceildivs %arg1, %c0
        %264 = index.ceildivu %263, %c13
        %265 = index.mul %264, %arg1
        %266 = arith.ceildivsi %c3052_i16, %c-2423_i16 : i16
        %267 = arith.maxf %cst_1, %cst_3 : f16
        %collapsed_57 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<16x16x2xi64> into tensor<256x2xi64>
        %268 = arith.subi %c156345344_i64, %c156345344_i64 : i64
        %alloc_58 = memref.alloc() : memref<3x15xf32>
        memref.copy %alloc_13, %alloc_58 : memref<3x15xf32> to memref<3x15xf32>
        scf.yield %c366308732_i64 : i64
      }
      case 2 {
        %255 = vector.shuffle %247, %246 [1] : vector<1xi64>, vector<1xi64>
        %alloca_56 = memref.alloca() : memref<3x15xi16>
        %256 = math.log1p %9 : tensor<3x15xf16>
        %257 = math.rsqrt %cst : f32
        %258 = affine.min affine_map<(d0, d1, d2) -> (d0 - 1, d1 floordiv 8 - (d2 floordiv 2 + d0), d1 ceildiv 32 + d1 + 4, d1 - d1 ceildiv 32 + 8)>(%c7, %c1, %c13)
        %259 = vector.insertelement %c156345344_i64, %247[%c3 : index] : vector<1xi64>
        %260 = vector.broadcast %c744113698_i64 : i64 to vector<1x1xi64>
        %261 = vector.outerproduct %247, %246, %260 {kind = #vector.kind<mul>} : vector<1xi64>, vector<1xi64>
        %262 = arith.minui %c3052_i16, %c-2423_i16 : i16
        %263 = vector.splat %c355370246_i64 : vector<2x15xi64>
        %264 = arith.xori %c744113698_i64, %c156345344_i64 : i64
        %265 = index.mul %c13, %c13
        %266 = affine.max affine_map<(d0) -> (d0 ceildiv 128, -d0, d0 * -3, (d0 * -2) mod 8)>(%c1)
        %267 = math.log2 %9 : tensor<3x15xf16>
        %268 = index.mul %c2, %c1
        %c1_i32_57 = arith.constant 1 : i32
        %269 = vector.broadcast %c1_i32_57 : i32 to vector<3x16x16xi32>
        %270 = vector.broadcast %c1_i32_57 : i32 to vector<3x16xi32>
        %dest_58, %accumulated_value_59 = vector.scan <minui>, %269, %270 {inclusive = false, reduction_dim = 2 : i64} : vector<3x16x16xi32>, vector<3x16xi32>
        memref.store %cst, %alloc_10[%c12, %c11, %c0] : memref<16x16x2xf32>
        scf.yield %c744113698_i64 : i64
      }
      default {
        %255 = affine.min affine_map<(d0) -> ((-d0) floordiv 128)>(%c13)
        %256 = math.rsqrt %9 : tensor<3x15xf16>
        %257 = math.round %5 : tensor<16x16x2xf32>
        %258 = arith.maxf %cst_0, %cst_0 : f32
        %259 = math.sqrt %11 : tensor<2xf32>
        %260 = vector.broadcast %c156345344_i64 : i64 to vector<16xi64>
        %261 = vector.broadcast %true : i1 to vector<16xi1>
        %262 = vector.maskedload %alloc_8[%c0], %261, %260 : memref<2xi64>, vector<16xi1>, vector<16xi64> into vector<16xi64>
        %263 = tensor.empty() : tensor<15x15xi1>
        %264 = tensor.empty() : tensor<2x15xi1>
        %265 = linalg.matmul ins(%3, %263 : tensor<2x15xi1>, tensor<15x15xi1>) outs(%264 : tensor<2x15xi1>) -> tensor<2x15xi1>
        %266 = arith.shrui %c-2423_i16, %c-20430_i16 : i16
        %267 = arith.maxf %cst_1, %cst_1 : f16
        %268 = vector.broadcast %cst : f32 to vector<16xf32>
        %269 = vector.maskedload %alloc_10[%c3, %c8, %c1], %261, %268 : memref<16x16x2xf32>, vector<16xi1>, vector<16xf32> into vector<16xf32>
        %270 = vector.multi_reduction <minsi>, %261, %261 [] : vector<16xi1> to vector<16xi1>
        %271 = arith.ori %true, %true : i1
        %272 = arith.remui %c156345344_i64, %c156345344_i64 : i64
        %273 = arith.minf %cst_2, %cst_2 : f16
        %274 = math.log2 %11 : tensor<2xf32>
        %275 = vector.broadcast %c10 : index to vector<3xindex>
        %276 = vector.broadcast %false : i1 to vector<3xi1>
        vector.scatter %alloc_15[%c1] [%275], %276, %276 : memref<2xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
        scf.yield %c1563714217_i64 : i64
      }
      %collapsed_53 = tensor.collapse_shape %10 [[0, 1]] : tensor<3x15xi64> into tensor<45xi64>
      %249 = affine.max affine_map<(d0, d1, d2) -> (d1 ceildiv 8 - 16, d0, d0 + 2)>(%c13, %c15, %c14)
      %collapsed_54 = tensor.collapse_shape %13 [[0, 1]] : tensor<3x15xi16> into tensor<45xi16>
      %250 = arith.addf %cst_2, %cst_3 : f16
      %251 = affine.min affine_map<(d0) -> (64, d0 mod 128, d0 mod 128)>(%c6)
      %252 = arith.minui %false, %false_4 : i1
      %253 = arith.shrsi %c3052_i16, %c3052_i16 : i16
      %alloc_55 = memref.alloc() : memref<3x15xf16>
      memref.tensor_store %9, %alloc_55 : memref<3x15xf16>
      %254 = tensor.empty() : tensor<16x16x2xi16>
      scf.reduce(%254)  : tensor<16x16x2xi16> {
      ^bb0(%arg3: tensor<16x16x2xi16>, %arg4: tensor<16x16x2xi16>):
        bufferization.dealloc_tensor %7 : tensor<2x15xi32>
        %255 = math.powf %0, %5 : tensor<16x16x2xf32>
        %true_56 = index.bool.constant true
        %256 = arith.remf %cst_1, %cst_1 : f16
        %splat_57 = tensor.splat %c-2423_i16 : tensor<2xi16>
        %257 = index.mul %c11, %c11
        bufferization.dealloc_tensor %collapsed_52 : tensor<45xi16>
        %expanded_58 = tensor.expand_shape %2 [[0, 1]] : tensor<2xi1> into tensor<2x1xi1>
        %258 = tensor.empty() : tensor<16x16x2xi16>
        scf.reduce.return %258 : tensor<16x16x2xi16>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_5[%c5] : memref<2xf16>, vector<15xf16>
    affine.vector_store %20, %alloc_14[%c6] : memref<2xf16>, vector<15xf16>
    %alloc_21 = memref.alloc() : memref<2xi1>
    %21 = tensor.empty() : tensor<i1>
    %22 = linalg.dot ins(%2, %alloc_21 : tensor<2xi1>, memref<2xi1>) outs(%21 : tensor<i1>) -> tensor<i1>
    %23 = math.cttz %c1563714217_i64 : i64
    %24 = math.rsqrt %0 : tensor<16x16x2xf32>
    %alloc_22 = memref.alloc() : memref<3x15xi64>
    memref.copy %alloc_16, %alloc_22 : memref<3x15xi64> to memref<3x15xi64>
    %25 = math.atan2 %cst_2, %cst_2 : f16
    %false_23 = arith.constant false
    %26 = vector.transpose %20, [0] : vector<15xf16> to vector<15xf16>
    scf.index_switch %c7 
    case 1 {
      %c-11160_i16 = arith.constant -11160 : i16
      %243 = affine.max affine_map<(d0, d1) -> (d0 + 64, d0, -(d1 - 64), -64)>(%c14, %c15)
      %c0_i32_52 = arith.constant 0 : i32
      memref.store %c0_i32_52, %alloc_6[%c0, %c13] : memref<3x15xi32>
      scf.execute_region {
        %254 = math.log10 %cst : f32
        %255 = math.log2 %0 : tensor<16x16x2xf32>
        %256 = vector.reduction <maxf>, %20 : vector<15xf16> into f16
        %alloc_54 = memref.alloc() : memref<3x15xf32>
        memref.copy %alloc_13, %alloc_54 : memref<3x15xf32> to memref<3x15xf32>
        %alloc_55 = memref.alloc() : memref<3x15xf32>
        %257 = arith.shrsi %c1563714217_i64, %c156345344_i64 : i64
        memref.store %false, %alloc_21[%c1] : memref<2xi1>
        %258 = vector.broadcast %c744113698_i64 : i64 to vector<15x2x16xi64>
        %259 = vector.broadcast %c366308732_i64 : i64 to vector<15x2xi64>
        %dest_56, %accumulated_value_57 = vector.scan <mul>, %258, %259 {inclusive = true, reduction_dim = 2 : i64} : vector<15x2x16xi64>, vector<15x2xi64>
        %260 = bufferization.clone %alloc_19 : memref<2x15xi1> to memref<2x15xi1>
        %261 = math.tanh %11 : tensor<2xf32>
        %262 = vector.insertelement %cst_3, %20[%c0 : index] : vector<15xf16>
        %263 = vector.splat %cst_2 : vector<2x15xf16>
        %264 = vector.extract_strided_slice %20 {offsets = [9], sizes = [6], strides = [1]} : vector<15xf16> to vector<6xf16>
        %265 = vector.broadcast %cst_2 : f16 to vector<6x6xf16>
        %266 = vector.outerproduct %264, %264, %265 {kind = #vector.kind<mul>} : vector<6xf16>, vector<6xf16>
        %267 = bufferization.clone %alloc_8 : memref<2xi64> to memref<2xi64>
        %268 = index.ceildivu %c6, %c0
        scf.yield
      }
      %244 = math.round %11 : tensor<2xf32>
      memref.store %false_4, %alloc_21[%c0] : memref<2xi1>
      %245 = math.fpowi %0, %1 : tensor<16x16x2xf32>, tensor<16x16x2xi32>
      %246 = arith.remui %c3052_i16, %c3052_i16 : i16
      %247 = math.fma %cst_3, %cst_3, %cst_3 : f16
      %248 = scf.if %true -> (memref<3x15xi32>) {
        %254 = affine.load %alloc_13[%c8, %c5] : memref<3x15xf32>
        %collapsed_54 = tensor.collapse_shape %9 [[0, 1]] : tensor<3x15xf16> into tensor<45xf16>
        %255 = vector.broadcast %c3 : index to vector<16xindex>
        %256 = vector.broadcast %true : i1 to vector<16xi1>
        %257 = vector.broadcast %c1563714217_i64 : i64 to vector<16xi64>
        vector.scatter %alloc[%c1, %c9] [%255], %256, %257 : memref<2x15xi64>, vector<16xindex>, vector<16xi1>, vector<16xi64>
        %258 = index.sub %c6, %c2
        %259 = arith.remf %cst, %254 : f32
        %260 = math.fma %cst_3, %cst_1, %cst_1 : f16
        %261 = index.maxs %c13, %c13
        memref.store %c355370246_i64, %alloc_11[%c0] : memref<2xi64>
        scf.yield %alloc_6 : memref<3x15xi32>
      } else {
        %254 = index.sub %243, %c13
        %255 = index.maxu %c15, %c12
        %256 = arith.minsi %c1563714217_i64, %c744113698_i64 : i64
        %257 = bufferization.clone %alloc_14 : memref<2xf16> to memref<2xf16>
        memref.store %false_4, %alloc_20[%c1] : memref<2xi1>
        %258 = index.mul %255, %c10
        %259 = arith.shrsi %c156345344_i64, %c156345344_i64 : i64
        %260 = arith.ceildivsi %c366308732_i64, %c355370246_i64 : i64
        scf.yield %alloc_12 : memref<3x15xi32>
      }
      %249 = math.log %cst_3 : f16
      %250 = math.ceil %cst_0 : f32
      %generated_53 = tensor.generate %243 {
      ^bb0(%arg1: index):
        %254 = vector.reduction <mul>, %20 : vector<15xf16> into f16
        %255 = vector.bitcast %20 : vector<15xf16> to vector<15xf16>
        %cast_54 = tensor.cast %0 : tensor<16x16x2xf32> to tensor<?x?x?xf32>
        %256 = vector.insertelement %cst_1, %20[%c8 : index] : vector<15xf16>
        tensor.yield %c3052_i16 : i16
      } : tensor<?xi16>
      %251 = math.roundeven %cst_2 : f16
      %252 = scf.execute_region -> index {
        %254 = arith.minf %cst_1, %cst_3 : f16
        %255 = math.rsqrt %9 : tensor<3x15xf16>
        %256 = vector.reduction <maxf>, %20 : vector<15xf16> into f16
        %257 = vector.multi_reduction <maxf>, %20, %20 [] : vector<15xf16> to vector<15xf16>
        %258 = math.exp2 %cst_3 : f16
        %259 = vector.broadcast %c744113698_i64 : i64 to vector<3xi64>
        %260 = vector.broadcast %false_4 : i1 to vector<3xi1>
        %261 = vector.maskedload %alloc_8[%c0], %260, %259 : memref<2xi64>, vector<3xi1>, vector<3xi64> into vector<3xi64>
        %cst_54 = arith.constant 8.816000e+03 : f16
        %262 = math.fma %5, %5, %0 : tensor<16x16x2xf32>
        %263 = vector.broadcast %cst_0 : f32 to vector<3x16x3xf32>
        %264 = vector.broadcast %cst_0 : f32 to vector<3x3xf32>
        %dest_55, %accumulated_value_56 = vector.scan <add>, %263, %264 {inclusive = true, reduction_dim = 1 : i64} : vector<3x16x3xf32>, vector<3x3xf32>
        %265 = vector.extract_strided_slice %260 {offsets = [0], sizes = [1], strides = [1]} : vector<3xi1> to vector<1xi1>
        %266 = bufferization.clone %alloc_8 : memref<2xi64> to memref<2xi64>
        %267 = math.tanh %0 : tensor<16x16x2xf32>
        %268 = index.mul %c1, %c13
        %269 = arith.ori %false_4, %true : i1
        %270 = arith.xori %false, %false : i1
        %271 = arith.remsi %c366308732_i64, %c156345344_i64 : i64
        scf.yield %c11 : index
      }
      %253 = vector.reduction <minf>, %20 : vector<15xf16> into f16
      scf.yield
    }
    case 2 {
      %243 = index.sizeof
      %244 = math.log10 %cst_0 : f32
      %245 = index.floordivs %c13, %c4
      %generated_52 = tensor.generate %c7 {
      ^bb0(%arg1: index):
        %259 = vector.multi_reduction <maxf>, %20, %20 [] : vector<15xf16> to vector<15xf16>
        %from_elements_59 = tensor.from_elements %cst_0, %cst_0 : tensor<2xf32>
        memref.copy %alloc_6, %alloc_12 : memref<3x15xi32> to memref<3x15xi32>
        %260 = math.log %11 : tensor<2xf32>
        tensor.yield %cst_1 : f16
      } : tensor<?xf16>
      memref.store %cst_2, %alloc_14[%c1] : memref<2xf16>
      %splat_53 = tensor.splat %c355370246_i64 : tensor<16x16x2xi64>
      %246 = arith.ceildivsi %c-2423_i16, %c-20430_i16 : i16
      %247 = math.round %5 : tensor<16x16x2xf32>
      %248 = affine.if affine_set<(d0) : (d0 ceildiv 8 - d0 == 0, d0 ceildiv 8 - d0 >= 0, -d0 == 0, ((-d0) ceildiv 128) * 4 - (d0 ceildiv 128 + d0 ceildiv 8) - (d0 ceildiv 8 - d0) == 0)>(%c14) -> memref<2xi64> {
        %259 = arith.maxf %cst_3, %cst_1 : f16
        %260 = math.exp %5 : tensor<16x16x2xf32>
        %261 = arith.shrui %c1563714217_i64, %c744113698_i64 : i64
        %262 = vector.shuffle %20, %20 [0, 2, 3, 5, 9, 12, 13, 20, 21, 23, 28] : vector<15xf16>, vector<15xf16>
        %263 = math.log %cst_1 : f16
        %264 = math.cttz %8 : tensor<16x16x2xi64>
        %265 = arith.ori %c355370246_i64, %c156345344_i64 : i64
        %collapsed_59 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<16x16x2xi32> into tensor<256x2xi32>
        affine.yield %alloc_11 : memref<2xi64>
      } else {
        %259 = affine.apply affine_map<(d0, d1, d2) -> ((d0 - 16) * 2 - d1)>(%c13, %c0, %c7)
        %260 = arith.addf %cst, %cst_0 : f32
        %261 = vector.broadcast %c3 : index to vector<15xindex>
        %262 = vector.broadcast %false : i1 to vector<15xi1>
        vector.scatter %alloc_20[%c0] [%261], %262, %262 : memref<2xi1>, vector<15xindex>, vector<15xi1>, vector<15xi1>
        %263 = math.absi %18 : tensor<i64>
        %264 = vector.extract_strided_slice %20 {offsets = [3], sizes = [1], strides = [1]} : vector<15xf16> to vector<1xf16>
        %alloc_59 = memref.alloc() : memref<2x15xi1>
        memref.copy %alloc_19, %alloc_59 : memref<2x15xi1> to memref<2x15xi1>
        %265 = arith.remui %false_4, %true : i1
        %266 = memref.load %alloc_11[%c0] : memref<2xi64>
        affine.yield %alloc_8 : memref<2xi64>
      }
      %249 = math.log %11 : tensor<2xf32>
      %c0_i32_54 = arith.constant 0 : i32
      %250 = vector.broadcast %c0_i32_54 : i32 to vector<2x16xi32>
      %251 = vector.broadcast %c0_i32_54 : i32 to vector<16xi32>
      %dest_55, %accumulated_value_56 = vector.scan <minsi>, %250, %251 {inclusive = true, reduction_dim = 0 : i64} : vector<2x16xi32>, vector<16xi32>
      %252 = arith.xori %c-2423_i16, %c-2423_i16 : i16
      %253 = math.roundeven %0 : tensor<16x16x2xf32>
      %254 = vector.broadcast %cst_3 : f16 to vector<16x15xf16>
      %dest_57, %accumulated_value_58 = vector.scan <maxf>, %254, %20 {inclusive = true, reduction_dim = 0 : i64} : vector<16x15xf16>, vector<15xf16>
      %255 = math.copysign %cst_1, %cst_3 : f16
      %256 = tensor.empty() : tensor<15x2xi1>
      %257 = tensor.empty() : tensor<2x2xi1>
      %258 = linalg.matmul ins(%3, %256 : tensor<2x15xi1>, tensor<15x2xi1>) outs(%257 : tensor<2x2xi1>) -> tensor<2x2xi1>
      scf.yield
    }
    case 3 {
      %243 = math.log10 %cst : f32
      %244 = math.cttz %4 : tensor<16x16x2xi32>
      %splat_52 = tensor.splat %cst_0 : tensor<16x16x2xf32>
      %splat_53 = tensor.splat %false_4 : tensor<16x16x2xi1>
      %245 = affine.max affine_map<(d0, d1) -> (d1 mod 2, d1 mod 2)>(%c15, %c2)
      %246 = vector.broadcast %cst_2 : f16 to vector<15x15xf16>
      %247 = vector.outerproduct %20, %20, %246 {kind = #vector.kind<mul>} : vector<15xf16>, vector<15xf16>
      %248 = math.atan2 %11, %11 : tensor<2xf32>
      %249 = affine.min affine_map<(d0, d1) -> ((d0 - 48) floordiv 128, d0 - 56)>(%c0, %245)
      memref.copy %alloc_17, %alloc_9 : memref<3x15xi1> to memref<3x15xi1>
      %250 = bufferization.clone %alloc_9 : memref<3x15xi1> to memref<3x15xi1>
      %251 = math.cttz %17 : tensor<2x15xi16>
      %252 = arith.remf %cst_0, %cst : f32
      %253 = vector.reduction <mul>, %20 : vector<15xf16> into f16
      %254 = arith.maxsi %c1563714217_i64, %c1563714217_i64 : i64
      %255 = index.add %c15, %c3
      %256 = math.round %11 : tensor<2xf32>
      scf.yield
    }
    case 4 {
      bufferization.dealloc_tensor %6 : tensor<2x15xi32>
      memref.copy %alloc_21, %alloc_20 : memref<2xi1> to memref<2xi1>
      memref.store %cst, %alloc_10[%c15, %c2, %c0] : memref<16x16x2xf32>
      %243 = arith.muli %false, %false : i1
      %244 = index.castu %c14 : index to i32
      %245 = arith.ceildivsi %true, %false : i1
      %246 = arith.addi %c366308732_i64, %c156345344_i64 : i64
      %247 = tensor.empty(%c13) : tensor<?xi64>
      %248 = arith.ori %c-20430_i16, %c3052_i16 : i16
      %249 = bufferization.to_tensor %alloc_5 : memref<2xf16>
      %250 = math.atan %9 : tensor<3x15xf16>
      %251 = index.divu %c10, %c2
      %alloc_52 = memref.alloc() : memref<16x16x2xi32>
      %252 = arith.ori %c156345344_i64, %c1563714217_i64 : i64
      %253 = math.absi %12 : tensor<16x16x2xi16>
      %254 = arith.shrsi %c-20430_i16, %c3052_i16 : i16
      scf.yield
    }
    default {
      %243 = arith.subi %c-20430_i16, %c-20430_i16 : i16
      %244 = math.round %cst_2 : f16
      %from_elements_52 = tensor.from_elements %false, %false, %false_4, %false_4, %true, %false, %false_4, %false_4, %false, %false, %true, %true, %false, %false_4, %false_4, %false, %false, %false, %false, %false_4, %true, %true, %false_4, %false_4, %false_4, %false, %false, %true, %false_4, %true : tensor<2x15xi1>
      %245 = arith.remf %cst_0, %cst_0 : f32
      %246 = tensor.empty(%c4, %c12, %c10) : tensor<?x?x?xf16>
      %247 = bufferization.clone %alloc_12 : memref<3x15xi32> to memref<3x15xi32>
      %248 = arith.remui %true, %false_4 : i1
      %249 = index.mul %c15, %c3
      bufferization.dealloc_tensor %18 : tensor<i64>
      %250 = bufferization.to_tensor %alloc_16 : memref<3x15xi64>
      %alloc_53 = memref.alloc() : memref<2x15xi32>
      memref.tensor_store %6, %alloc_53 : memref<2x15xi32>
      %251 = index.floordivs %c2, %c0
      %252 = math.roundeven %11 : tensor<2xf32>
      %253 = math.exp %9 : tensor<3x15xf16>
      %254 = affine.min affine_map<(d0, d1, d2) -> (d0 * 2048 + 8, d0 * 2048)>(%c11, %c15, %c7)
      %255 = math.log10 %9 : tensor<3x15xf16>
    }
    %27 = affine.max affine_map<(d0, d1) -> (d1, d1 mod 128, d1 mod 128 - 2)>(%c2, %c10)
    %28 = arith.divf %cst_2, %cst_2 : f16
    %29 = scf.execute_region -> index {
      %243 = index.ceildivs %c11, %c2
      %244 = index.divu %c15, %27
      memref.store %c156345344_i64, %alloc[%c1, %c5] : memref<2x15xi64>
      %245 = math.atan2 %9, %9 : tensor<3x15xf16>
      %246 = arith.remsi %c-2423_i16, %c-2423_i16 : i16
      %247 = index.mul %c4, %c5
      %248 = affine.min affine_map<(d0, d1, d2) -> (d2 ceildiv 16, (d1 - (d0 + 64)) ceildiv 64, d1)>(%c11, %c12, %c2)
      %false_52 = index.bool.constant false
      %c0_i32_53 = arith.constant 0 : i32
      %249 = vector.broadcast %c0_i32_53 : i32 to vector<3xi32>
      %250 = vector.transfer_write %249, %7[%243, %243] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xi32>, tensor<2x15xi32>
      %251 = vector.multi_reduction <minsi>, %249, %c0_i32_53 [0] : vector<3xi32> to i32
      %252 = arith.shli %c366308732_i64, %c156345344_i64 : i64
      %253 = vector.transpose %20, [0] : vector<15xf16> to vector<15xf16>
      %254 = index.ceildivs %c4, %c11
      %true_54 = index.bool.constant true
      %255 = tensor.empty() : tensor<3x15xi1>
      %mapped_55 = linalg.map ins(%alloc_9, %alloc_9 : memref<3x15xi1>, memref<3x15xi1>) outs(%255 : tensor<3x15xi1>)
        (%in: i1, %in_56: i1) {
          %257 = math.roundeven %cst_2 : f16
          %258 = arith.ceildivsi %c0_i32_53, %251 : i32
          %259 = math.round %11 : tensor<2xf32>
          %260 = tensor.empty() : tensor<2xi32>
          %261 = math.fpowi %11, %260 : tensor<2xf32>, tensor<2xi32>
          %262 = arith.remf %cst_2, %cst_3 : f16
          bufferization.dealloc_tensor %8 : tensor<16x16x2xi64>
          %263 = math.cttz %4 : tensor<16x16x2xi32>
          %264 = math.fma %9, %9, %9 : tensor<3x15xf16>
          %265 = math.copysign %0, %5 : tensor<16x16x2xf32>
          %266 = arith.maxf %cst_2, %cst_3 : f16
          %267 = arith.remf %cst_0, %cst_0 : f32
          %268 = math.ceil %cst_2 : f16
          %269 = vector.multi_reduction <minf>, %20, %20 [] : vector<15xf16> to vector<15xf16>
          %270 = math.round %cst_2 : f16
          %271 = vector.transpose %249, [0] : vector<3xi32> to vector<3xi32>
          %272 = arith.cmpi eq, %c366308732_i64, %c366308732_i64 : i64
          %273 = index.sub %c1, %c5
          %274 = arith.minui %true_54, %true_54 : i1
          %275 = arith.ori %c744113698_i64, %c744113698_i64 : i64
          %276 = bufferization.clone %alloc_7 : memref<2xf32> to memref<2xf32>
          %277 = arith.maxf %cst_1, %cst_3 : f16
          %278 = math.absf %5 : tensor<16x16x2xf32>
          %279 = arith.maxsi %c0_i32_53, %251 : i32
          %280 = math.roundeven %5 : tensor<16x16x2xf32>
          %281 = math.sqrt %9 : tensor<3x15xf16>
          %inserted_57 = tensor.insert %c-2423_i16 into %13[%c0, %c10] : tensor<3x15xi16>
          %rank_58 = tensor.rank %2 : tensor<2xi1>
          %282 = bufferization.clone %alloc_9 : memref<3x15xi1> to memref<3x15xi1>
          %283 = arith.remf %cst_3, %cst_1 : f16
          %284 = index.sub %c11, %247
          %from_elements_59 = tensor.from_elements %c3052_i16, %c-2423_i16, %c3052_i16, %c-2423_i16, %c3052_i16, %c3052_i16, %c-20430_i16, %c-20430_i16, %c-2423_i16, %c-2423_i16, %c-2423_i16, %c3052_i16, %c-2423_i16, %c-20430_i16, %c-2423_i16, %c-20430_i16, %c3052_i16, %c3052_i16, %c-20430_i16, %c-2423_i16, %c-20430_i16, %c-2423_i16, %c-2423_i16, %c-20430_i16, %c-20430_i16, %c3052_i16, %c3052_i16, %c-20430_i16, %c3052_i16, %c-2423_i16, %c-2423_i16, %c3052_i16, %c3052_i16, %c-20430_i16, %c-20430_i16, %c-20430_i16, %c3052_i16, %c-20430_i16, %c-20430_i16, %c3052_i16, %c-20430_i16, %c-2423_i16, %c3052_i16, %c-2423_i16, %c3052_i16 : tensor<3x15xi16>
          %285 = math.exp %9 : tensor<3x15xf16>
          %true_60 = arith.constant true
          linalg.yield %true_60 : i1
        }
      %256 = math.fpowi %cst_3, %c0_i32_53 : f16, i32
      scf.yield %244 : index
    }
    memref.copy %alloc_12, %alloc_6 : memref<3x15xi32> to memref<3x15xi32>
    %30 = arith.shrsi %c1563714217_i64, %c156345344_i64 : i64
    %31 = math.floor %cst_1 : f16
    vector.print %20 : vector<15xf16>
    %32 = arith.remf %cst, %cst : f32
    %33 = math.absi %7 : tensor<2x15xi32>
    %34 = arith.subi %c1563714217_i64, %c355370246_i64 : i64
    %35 = memref.atomic_rmw minf %cst, %alloc_7[%c1] : (f32, memref<2xf32>) -> f32
    %36 = arith.minf %cst_1, %cst_1 : f16
    %37 = index.mul %c5, %c1
    %splat = tensor.splat %c366308732_i64 : tensor<2xi64>
    %38 = arith.remui %c1563714217_i64, %c156345344_i64 : i64
    %39 = math.log %9 : tensor<3x15xf16>
    %40 = affine.apply affine_map<(d0, d1, d2) -> (d0 ceildiv 128 + d1)>(%c4, %c14, %c10)
    %alloc_24 = memref.alloc() : memref<16xf32>
    %41 = tensor.empty() : tensor<16x16xf32>
    %42 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_24, %41 : memref<16xf32>, tensor<16x16xf32>) outs(%0 : tensor<16x16x2xf32>) {
    ^bb0(%in: f32, %in_52: f32, %out: f32):
      %243 = math.exp2 %9 : tensor<3x15xf16>
      %244 = arith.ori %c-20430_i16, %c-20430_i16 : i16
      %245 = arith.remf %in, %out : f32
      %246 = index.divu %40, %c6
      %247 = memref.atomic_rmw maxf %in, %alloc_7[%c1] : (f32, memref<2xf32>) -> f32
      %splat_53 = tensor.splat %cst_0 : tensor<2xf32>
      memref.alloca_scope  {
        %267 = bufferization.to_tensor %alloc_10 : memref<16x16x2xf32>
        %c0_i32_58 = arith.constant 0 : i32
        %268 = math.fpowi %in, %c0_i32_58 : f32, i32
        %269 = vector.broadcast %cst_0 : f32 to vector<f32>
        %270 = vector.transfer_write %269, %5[%c15, %c8, %c5] : vector<f32>, tensor<16x16x2xf32>
        %271 = math.roundeven %0 : tensor<16x16x2xf32>
        %272 = math.fma %11, %splat_53, %11 : tensor<2xf32>
        %273 = math.floor %9 : tensor<3x15xf16>
        %274 = math.roundeven %cst : f32
        %275 = arith.minf %cst_1, %cst_2 : f16
        memref.copy %alloc_11, %alloc_8 : memref<2xi64> to memref<2xi64>
        %276 = vector.broadcast %cst : f32 to vector<15x15xf32>
        %277 = vector.broadcast %out : f32 to vector<15xf32>
        %dest_59, %accumulated_value_60 = vector.scan <minf>, %276, %277 {inclusive = false, reduction_dim = 0 : i64} : vector<15x15xf32>, vector<15xf32>
        %278 = arith.remui %c-2423_i16, %c-20430_i16 : i16
        %279 = index.ceildivu %c14, %c15
        %alloc_61 = memref.alloc() : memref<16x16x2xf32>
        memref.copy %alloc_10, %alloc_61 : memref<16x16x2xf32> to memref<16x16x2xf32>
        %280 = math.rsqrt %cst_3 : f16
        %281 = math.fma %cst_0, %cst, %in_52 : f32
        %282 = arith.ori %c3052_i16, %c-2423_i16 : i16
        %283 = math.expm1 %5 : tensor<16x16x2xf32>
        %284 = math.log %0 : tensor<16x16x2xf32>
        %285 = affine.max affine_map<(d0, d1) -> (((d1 floordiv 4) floordiv 2) ceildiv 16, d1 floordiv 4, (d1 floordiv 4) mod 32, 0)>(%c14, %c4)
        %286 = arith.negf %in_52 : f32
        %287 = arith.muli %false_4, %false_4 : i1
        %288 = vector.broadcast %c0_i32_58 : i32 to vector<2xi32>
        %289 = vector.broadcast %false_4 : i1 to vector<2xi1>
        %290 = vector.maskedload %alloc_12[%c2, %c11], %289, %288 : memref<3x15xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
        %291 = math.roundeven %cst : f32
        %292 = arith.remf %in_52, %cst : f32
        %293 = math.floor %5 : tensor<16x16x2xf32>
        %294 = arith.remf %cst_3, %cst_3 : f16
        %295 = arith.remsi %c366308732_i64, %c1563714217_i64 : i64
        %296 = arith.remf %cst_0, %in : f32
        %297 = arith.maxsi %c366308732_i64, %c355370246_i64 : i64
        %298 = vector.broadcast %true : i1 to vector<2xi1>
        %299 = vector.broadcast %c0_i32_58 : i32 to vector<i32>
        %300 = vector.transfer_write %299, %4[%c8, %c9, %c14] : vector<i32>, tensor<16x16x2xi32>
        %301 = bufferization.clone %alloc_18 : memref<16x16x2xi64> to memref<16x16x2xi64>
      }
      %248 = arith.mulf %cst_3, %cst_2 : f16
      %249 = bufferization.clone %alloc : memref<2x15xi64> to memref<2x15xi64>
      %inserted_54 = tensor.insert %out into %0[%c13, %c0, %c0] : tensor<16x16x2xf32>
      %250 = vector.broadcast %c-20430_i16 : i16 to vector<2xi16>
      %251 = vector.bitcast %20 : vector<15xf16> to vector<15xf16>
      %inserted_55 = tensor.insert %cst_1 into %9[%c2, %c10] : tensor<3x15xf16>
      scf.index_switch %c13 
      case 1 {
        %267 = arith.remf %cst_2, %cst_1 : f16
        %268 = math.absf %11 : tensor<2xf32>
        %269 = math.exp %cst : f32
        %270 = vector.shuffle %20, %20 [2, 3, 7, 9, 11, 14, 17, 19, 22, 23, 24, 27] : vector<15xf16>, vector<15xf16>
        %271 = vector.broadcast %c8 : index to vector<15xindex>
        %272 = vector.broadcast %false : i1 to vector<15xi1>
        vector.scatter %alloc_15[%c1] [%271], %272, %272 : memref<2xi1>, vector<15xindex>, vector<15xi1>, vector<15xi1>
        %273 = vector.insert %cst_1, %251 [11] : f16 into vector<15xf16>
        %274 = vector.broadcast %cst_3 : f16 to vector<15x15xf16>
        %275 = vector.outerproduct %251, %20, %274 {kind = #vector.kind<mul>} : vector<15xf16>, vector<15xf16>
        %276 = math.log1p %splat_53 : tensor<2xf32>
        %277 = index.casts %c355370246_i64 : i64 to index
        %278 = math.fma %0, %5, %0 : tensor<16x16x2xf32>
        %279 = math.tan %11 : tensor<2xf32>
        %280 = vector.reduction <add>, %251 : vector<15xf16> into f16
        %281 = arith.maxsi %false_4, %false : i1
        %282 = arith.remf %in, %out : f32
        %283 = math.exp2 %out : f32
        %284 = vector.reduction <minf>, %20 : vector<15xf16> into f16
        scf.yield
      }
      case 2 {
        %267 = arith.xori %c156345344_i64, %c156345344_i64 : i64
        %268 = math.copysign %11, %11 : tensor<2xf32>
        %269 = arith.floordivsi %c355370246_i64, %c355370246_i64 : i64
        %270 = arith.cmpi sgt, %c3052_i16, %c-2423_i16 : i16
        vector.print %250 : vector<2xi16>
        %271 = arith.shli %false_4, %false : i1
        %272 = arith.muli %c744113698_i64, %c156345344_i64 : i64
        %273 = vector.transpose %20, [0] : vector<15xf16> to vector<15xf16>
        %c57212100_i64 = arith.constant 57212100 : i64
        %274 = arith.remf %cst, %out : f32
        %275 = vector.bitcast %20 : vector<15xf16> to vector<15xf16>
        %276 = bufferization.clone %alloc_18 : memref<16x16x2xi64> to memref<16x16x2xi64>
        %277 = math.copysign %11, %11 : tensor<2xf32>
        %278 = arith.remf %cst, %cst : f32
        %279 = math.exp %9 : tensor<3x15xf16>
        %280 = arith.remui %c366308732_i64, %c355370246_i64 : i64
        scf.yield
      }
      default {
        %267 = math.atan %5 : tensor<16x16x2xf32>
        %268 = math.exp %9 : tensor<3x15xf16>
        %269 = vector.extract_strided_slice %20 {offsets = [2], sizes = [9], strides = [1]} : vector<15xf16> to vector<9xf16>
        %270 = math.exp %5 : tensor<16x16x2xf32>
        %271 = affine.max affine_map<(d0) -> ((d0 ceildiv 32 + 32) ceildiv 4, ((d0 ceildiv 32 + 32) ceildiv 4) mod 16, ((d0 ceildiv 32) mod 8) * 128)>(%27)
        %272 = math.exp %cst_1 : f16
        %273 = arith.cmpf oge, %cst_0, %in_52 : f32
        %274 = affine.load %alloc_9[%c8, %c11] : memref<3x15xi1>
        %275 = arith.ceildivsi %c366308732_i64, %c1563714217_i64 : i64
        %276 = math.sqrt %5 : tensor<16x16x2xf32>
        %277 = math.fma %splat_53, %splat_53, %splat_53 : tensor<2xf32>
        %278 = vector.broadcast %27 : index to vector<3xindex>
        %279 = vector.broadcast %274 : i1 to vector<3xi1>
        %280 = vector.broadcast %c156345344_i64 : i64 to vector<3xi64>
        vector.scatter %alloc_18[%c10, %c12, %c1] [%278], %279, %280 : memref<16x16x2xi64>, vector<3xindex>, vector<3xi1>, vector<3xi64>
        %281 = arith.muli %274, %true : i1
        memref.store %true, %alloc_17[%c1, %c8] : memref<3x15xi1>
        %282 = vector.transpose %250, [0] : vector<2xi16> to vector<2xi16>
        %c0_i32_58 = arith.constant 0 : i32
        memref.store %c0_i32_58, %alloc_12[%c1, %c9] : memref<3x15xi32>
      }
      %252 = arith.cmpi uge, %c156345344_i64, %c366308732_i64 : i64
      %253 = arith.minsi %false, %false : i1
      %254 = arith.shrui %c3052_i16, %c-20430_i16 : i16
      %255 = math.log1p %out : f32
      %256 = arith.shli %true, %true : i1
      %257 = vector.broadcast %c3052_i16 : i16 to vector<16x16x2xi16>
      memref.tensor_store %5, %alloc_10 : memref<16x16x2xf32>
      %258 = math.copysign %out, %in_52 : f32
      %259 = memref.load %alloc_15[%c1] : memref<2xi1>
      %260 = math.rsqrt %9 : tensor<3x15xf16>
      %inserted_56 = tensor.insert %c3052_i16 into %14[%c1, %c4] : tensor<2x15xi16>
      %261 = arith.maxf %out, %out : f32
      %262 = vector.broadcast %c1563714217_i64 : i64 to vector<15xi64>
      %263 = vector.transfer_write %262, %10[%c11, %c7] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<15xi64>, tensor<3x15xi64>
      memref.store %cst_0, %alloc_13[%c1, %c3] : memref<3x15xf32>
      %264 = scf.index_switch %c13 -> f16 
      case 1 {
        %true_58 = arith.constant true
        %267 = arith.remsi %c366308732_i64, %c1563714217_i64 : i64
        %268 = arith.maxsi %c1563714217_i64, %c744113698_i64 : i64
        bufferization.dealloc_tensor %14 : tensor<2x15xi16>
        %269 = arith.remui %false_4, %false_4 : i1
        %270 = vector.transpose %20, [0] : vector<15xf16> to vector<15xf16>
        %c1050306870_i64 = arith.constant 1050306870 : i64
        %271 = math.tanh %cst_0 : f32
        %272 = math.absi %false_4 : i1
        %alloca_59 = memref.alloca() : memref<2x15xi16>
        %273 = index.sub %27, %c7
        %alloc_60 = memref.alloc() : memref<2xi32>
        %274 = arith.shrsi %c156345344_i64, %c1563714217_i64 : i64
        %275 = arith.ori %false, %false_4 : i1
        %c1100031683_i64 = arith.constant 1100031683 : i64
        %276 = tensor.empty() : tensor<2xi32>
        %277 = math.fpowi %11, %276 : tensor<2xf32>, tensor<2xi32>
        scf.yield %cst_3 : f16
      }
      case 2 {
        %267 = math.copysign %0, %0 : tensor<16x16x2xf32>
        memref.store %c1563714217_i64, %249[%c1, %c10] : memref<2x15xi64>
        %268 = math.absi %12 : tensor<16x16x2xi16>
        %269 = arith.ceildivsi %c744113698_i64, %c156345344_i64 : i64
        %270 = math.absi %c1563714217_i64 : i64
        %271 = vector.broadcast %cst_3 : f16 to vector<3x15xf16>
        %272 = vector.broadcast %true : i1 to vector<3x15xi1>
        %c0_i32_58 = arith.constant 0 : i32
        %273 = vector.broadcast %c0_i32_58 : i32 to vector<3x15xi32>
        %274 = vector.gather %alloc_14[%40] [%273], %272, %271 : memref<2xf16>, vector<3x15xi32>, vector<3x15xi1>, vector<3x15xf16> into vector<3x15xf16>
        %275 = math.ceil %cst : f32
        %276 = vector.multi_reduction <xor>, %262, %262 [] : vector<15xi64> to vector<15xi64>
        %277 = arith.ori %c1563714217_i64, %c366308732_i64 : i64
        %278 = math.ctpop %2 : tensor<2xi1>
        bufferization.dealloc_tensor %2 : tensor<2xi1>
        %279 = vector.load %alloc_17[%c0, %c8] : memref<3x15xi1>, vector<3x15xi1>
        %280 = affine.min affine_map<(d0) -> ((d0 floordiv 128) ceildiv 8)>(%40)
        %alloc_59 = memref.alloc() : memref<2x15xi16>
        memref.tensor_store %14, %alloc_59 : memref<2x15xi16>
        %alloc_60 = memref.alloc() : memref<16x16x2xf32>
        memref.copy %alloc_10, %alloc_60 : memref<16x16x2xf32> to memref<16x16x2xf32>
        %281 = math.ipowi %17, %17 : tensor<2x15xi16>
        scf.yield %cst_1 : f16
      }
      case 3 {
        %267 = vector.matrix_multiply %251, %20 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xf16>, vector<15xf16>) -> vector<1xf16>
        %268 = tensor.empty() : tensor<2xi32>
        %269 = index.casts %c366308732_i64 : i64 to index
        %270 = arith.xori %c1563714217_i64, %c1563714217_i64 : i64
        %271 = affine.min affine_map<(d0) -> (d0 * 2, (-((d0 * 2) mod 64)) mod 8, (d0 * 2) mod 64, d0 floordiv 8)>(%c9)
        %272 = affine.max affine_map<(d0, d1, d2) -> ((d0 - d2) mod 64, d2 + 8, ((d0 - d2) mod 64) * 2)>(%269, %37, %c5)
        %273 = arith.ceildivsi %c156345344_i64, %c366308732_i64 : i64
        %274 = vector.bitcast %262 : vector<15xi64> to vector<15xi64>
        %alloca_58 = memref.alloca() : memref<2x15xi64>
        %splat_59 = tensor.splat %false_4 : tensor<2xi1>
        %275 = index.mul %246, %271
        vector.print %250 : vector<2xi16>
        %276 = math.cttz %6 : tensor<2x15xi32>
        %277 = arith.andi %false, %true : i1
        %278 = tensor.empty() : tensor<2xi32>
        %279 = arith.ceildivsi %c366308732_i64, %c1563714217_i64 : i64
        scf.yield %cst_3 : f16
      }
      default {
        %267 = math.log %5 : tensor<16x16x2xf32>
        %268 = vector.broadcast %cst_0 : f32 to vector<2x3xf32>
        %269 = vector.transfer_write %268, %5[%c14, %27, %c14] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<2x3xf32>, tensor<16x16x2xf32>
        %270 = arith.remsi %c366308732_i64, %c156345344_i64 : i64
        %271 = arith.subi %true, %false_4 : i1
        %272 = arith.ori %false, %true : i1
        %273 = vector.extract %20[11] : vector<15xf16>
        %274 = vector.broadcast %false : i1 to vector<3xi1>
        %275 = vector.maskedload %alloc_9[%c2, %c7], %274, %274 : memref<3x15xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
        %276 = math.rsqrt %5 : tensor<16x16x2xf32>
        %277 = vector.multi_reduction <minui>, %274, %275 [] : vector<3xi1> to vector<3xi1>
        %278 = math.round %11 : tensor<2xf32>
        %279 = math.ctpop %22 : tensor<i1>
        %280 = math.floor %9 : tensor<3x15xf16>
        %281 = vector.shuffle %275, %274 [2, 5] : vector<3xi1>, vector<3xi1>
        %282 = vector.broadcast %c-20430_i16 : i16 to vector<16x2xi16>
        %dest_58, %accumulated_value_59 = vector.scan <xor>, %257, %282 {inclusive = false, reduction_dim = 1 : i64} : vector<16x16x2xi16>, vector<16x2xi16>
        vector.print %262 : vector<15xi64>
        %inserted_60 = tensor.insert %in_52 into %5[%c7, %c4, %c1] : tensor<16x16x2xf32>
        scf.yield %cst_2 : f16
      }
      %265 = arith.minsi %c3052_i16, %c-20430_i16 : i16
      %false_57 = index.bool.constant false
      %266 = bufferization.clone %alloc_19 : memref<2x15xi1> to memref<2x15xi1>
      linalg.yield %out : f32
    } -> tensor<16x16x2xf32>
    %43 = math.log10 %cst_3 : f16
    %44 = math.atan2 %0, %5 : tensor<16x16x2xf32>
    %45 = math.log2 %9 : tensor<3x15xf16>
    %46 = math.floor %11 : tensor<2xf32>
    %47 = index.floordivs %c1, %c8
    %48 = vector.broadcast %cst_0 : f32 to vector<15xf32>
    %49 = vector.transfer_write %48, %0[%40, %47, %c8] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<15xf32>, tensor<16x16x2xf32>
    memref.copy %alloc_8, %alloc_11 : memref<2xi64> to memref<2xi64>
    %50 = vector.multi_reduction <mul>, %20, %cst_1 [0] : vector<15xf16> to f16
    %51 = memref.load %alloc_8[%c1] : memref<2xi64>
    %52 = vector.broadcast %cst : f32 to vector<2x15xf32>
    %53 = vector.fma %52, %52, %52 : vector<2x15xf32>
    %54 = math.log %9 : tensor<3x15xf16>
    %generated = tensor.generate %37 {
    ^bb0(%arg1: index, %arg2: index):
      %243 = math.fma %11, %11, %11 : tensor<2xf32>
      %244 = arith.ori %c355370246_i64, %c366308732_i64 : i64
      %245 = math.log %5 : tensor<16x16x2xf32>
      %false_52 = index.bool.constant false
      tensor.yield %cst : f32
    } : tensor<?x15xf32>
    affine.store %false, %alloc_19[%c14, %c0] : memref<2x15xi1>
    %55 = index.ceildivs %c15, %c3
    %56 = scf.index_switch %40 -> index 
    case 1 {
      %243 = affine.for %arg1 = 0 to 22 iter_args(%arg2 = %17) -> (tensor<2x15xi16>) {
        affine.yield %14 : tensor<2x15xi16>
      }
      %cst_52 = arith.constant 1.99293338E+9 : f32
      %244 = math.round %cst_3 : f16
      %245 = arith.xori %false, %false_4 : i1
      %from_elements_53 = tensor.from_elements %false_4, %true : tensor<2xi1>
      %246 = vector.extract %53[1] : vector<2x15xf32>
      %247 = index.sub %c5, %c8
      scf.index_switch %27 
      case 1 {
        %254 = arith.shli %c1563714217_i64, %c366308732_i64 : i64
        %255 = vector.broadcast %cst : f32 to vector<3x15xf32>
        %256 = vector.fma %255, %255, %255 : vector<3x15xf32>
        %257 = index.ceildivu %c8, %c11
        %258 = math.expm1 %50 : f16
        %259 = index.maxs %c13, %c9
        %alloc_55 = memref.alloc() : memref<3x15xf16>
        memref.tensor_store %9, %alloc_55 : memref<3x15xf16>
        %260 = arith.maxf %cst, %cst : f32
        %261 = affine.max affine_map<(d0, d1) -> (d0, d0 + 2, d0 * 128, d0 * 128)>(%c7, %55)
        memref.store %c744113698_i64, %alloc_8[%c1] : memref<2xi64>
        %262 = index.sizeof
        %263 = arith.remf %cst_0, %cst_0 : f32
        %264 = vector.splat %50 : vector<2x15xf16>
        %265 = bufferization.to_tensor %alloc_15 : memref<2xi1>
        %splat_56 = tensor.splat %c-2423_i16 : tensor<2xi16>
        %266 = arith.remsi %true, %false : i1
        %267 = math.tanh %5 : tensor<16x16x2xf32>
        scf.yield
      }
      case 2 {
        %254 = vector.broadcast %cst : f32 to vector<3xf32>
        %255 = vector.broadcast %false_4 : i1 to vector<3xi1>
        %256 = vector.maskedload %alloc_7[%c0], %255, %254 : memref<2xf32>, vector<3xi1>, vector<3xf32> into vector<3xf32>
        %257 = arith.negf %cst_3 : f16
        %258 = arith.addf %cst_2, %cst_2 : f16
        %259 = arith.ori %c3052_i16, %c3052_i16 : i16
        %260 = arith.divsi %c1563714217_i64, %c744113698_i64 : i64
        %261 = arith.cmpf ult, %cst_1, %cst_1 : f16
        %262 = arith.maxf %cst_1, %cst_1 : f16
        %263 = vector.broadcast %c355370246_i64 : i64 to vector<15xi64>
        %264 = vector.broadcast %true : i1 to vector<15xi1>
        %265 = vector.maskedload %alloc_18[%c4, %c2, %c1], %264, %263 : memref<16x16x2xi64>, vector<15xi1>, vector<15xi64> into vector<15xi64>
        %collapsed_55 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<16x16x2xi16> into tensor<256x2xi16>
        %266 = math.sqrt %11 : tensor<2xf32>
        %267 = arith.shrsi %c156345344_i64, %c1563714217_i64 : i64
        %268 = math.absf %9 : tensor<3x15xf16>
        %269 = math.log %9 : tensor<3x15xf16>
        %270 = vector.splat %c11 : vector<3x15xindex>
        %from_elements_56 = tensor.from_elements %c3052_i16, %c-2423_i16, %c-20430_i16, %c-20430_i16, %c-20430_i16, %c-20430_i16, %c-20430_i16, %c-20430_i16, %c-2423_i16, %c3052_i16, %c-2423_i16, %c-2423_i16, %c-2423_i16, %c-2423_i16, %c-20430_i16, %c-2423_i16, %c-20430_i16, %c-2423_i16, %c-20430_i16, %c3052_i16, %c3052_i16, %c-2423_i16, %c-2423_i16, %c3052_i16, %c-2423_i16, %c3052_i16, %c3052_i16, %c-2423_i16, %c-20430_i16, %c-2423_i16 : tensor<2x15xi16>
        %271 = index.casts %40 : index to i32
        scf.yield
      }
      case 3 {
        %254 = arith.cmpf uge, %cst_3, %cst_3 : f16
        %255 = vector.broadcast %cst_0 : f32 to vector<15x15xf32>
        %256 = vector.outerproduct %246, %246, %255 {kind = #vector.kind<maxf>} : vector<15xf32>, vector<15xf32>
        %257 = arith.remsi %c-20430_i16, %c-20430_i16 : i16
        %258 = bufferization.clone %alloc_16 : memref<3x15xi64> to memref<3x15xi64>
        %splat_55 = tensor.splat %cst_0 : tensor<16x16x2xf32>
        %259 = memref.realloc %alloc_20 : memref<2xi1> to memref<3xi1>
        %260 = math.cttz %18 : tensor<i64>
        %261 = arith.maxf %cst_3, %50 : f16
        %262 = bufferization.clone %alloc_13 : memref<3x15xf32> to memref<3x15xf32>
        %263 = index.mul %37, %47
        %264 = arith.addi %c355370246_i64, %c744113698_i64 : i64
        %265 = math.exp %11 : tensor<2xf32>
        %cst_56 = arith.constant 0x4E103E8D : f32
        %266 = math.ctpop %13 : tensor<3x15xi16>
        %inserted_57 = tensor.insert %false_4 into %3[%c0, %c5] : tensor<2x15xi1>
        %267 = vector.multi_reduction <mul>, %20, %20 [] : vector<15xf16> to vector<15xf16>
        scf.yield
      }
      default {
        %254 = math.exp %11 : tensor<2xf32>
        %255 = index.castu %false : i1 to index
        %256 = index.ceildivs %c3, %c15
        %257 = arith.shrsi %false, %true : i1
        %258 = math.sqrt %11 : tensor<2xf32>
        %259 = arith.minf %cst_1, %cst_3 : f16
        memref.copy %alloc_17, %alloc_9 : memref<3x15xi1> to memref<3x15xi1>
        %260 = math.tan %cst_2 : f16
        memref.copy %alloc_15, %alloc_20 : memref<2xi1> to memref<2xi1>
        %261 = vector.insertelement %cst_1, %20[%256 : index] : vector<15xf16>
        %262 = vector.broadcast %cst : f32 to vector<15xf32>
        vector.transfer_write %262, %alloc_13[%c1, %247] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<15xf32>, memref<3x15xf32>
        %rank_55 = tensor.rank %9 : tensor<3x15xf16>
        bufferization.dealloc_tensor %3 : tensor<2x15xi1>
        %263 = arith.remf %cst_0, %cst : f32
        %264 = arith.remf %50, %cst_1 : f16
        %265 = math.tanh %50 : f16
      }
      bufferization.dealloc_tensor %10 : tensor<3x15xi64>
      %alloc_54 = memref.alloc() : memref<2xf32>
      %248 = affine.if affine_set<(d0, d1) : (d0 == 0, ((d0 floordiv 8 - d1) ceildiv 8) * 128 == 0, (d0 floordiv 8 - 1) floordiv 4 >= 0)>(%c10, %c7) -> f16 {
        %cast_55 = tensor.cast %12 : tensor<16x16x2xi16> to tensor<?x?x?xi16>
        bufferization.dealloc_tensor %7 : tensor<2x15xi32>
        %254 = math.log10 %9 : tensor<3x15xf16>
        %255 = affine.apply affine_map<(d0) -> (0)>(%c8)
        %256 = arith.maxf %cst_3, %50 : f16
        %257 = math.rsqrt %9 : tensor<3x15xf16>
        %258 = index.mul %c2, %c4
        %259 = memref.load %alloc_16[%c2, %c12] : memref<3x15xi64>
        affine.yield %cst_1 : f16
      } else {
        %254 = index.ceildivu %c11, %c6
        %255 = arith.maxf %cst_1, %cst_3 : f16
        bufferization.dealloc_tensor %22 : tensor<i1>
        %256 = index.casts %c1563714217_i64 : i64 to index
        vector.print %20 : vector<15xf16>
        %257 = bufferization.clone %alloc_10 : memref<16x16x2xf32> to memref<16x16x2xf32>
        %258 = index.sizeof
        memref.tensor_store %from_elements_53, %alloc_21 : memref<2xi1>
        affine.yield %cst_1 : f16
      }
      bufferization.dealloc_tensor %11 : tensor<2xf32>
      %249 = vector.broadcast %c5 : index to vector<2xindex>
      %250 = vector.broadcast %false : i1 to vector<2xi1>
      %251 = vector.broadcast %cst_3 : f16 to vector<2xf16>
      vector.scatter %alloc_14[%c0] [%249], %250, %251 : memref<2xf16>, vector<2xindex>, vector<2xi1>, vector<2xf16>
      %252 = math.absf %cst_1 : f16
      %253 = math.floor %9 : tensor<3x15xf16>
      %c172317386_i32 = arith.constant 172317386 : i32
      scf.yield %c7 : index
    }
    case 2 {
      %243 = index.divu %c15, %c1
      %244 = arith.shli %c366308732_i64, %c366308732_i64 : i64
      %245 = memref.atomic_rmw andi %c366308732_i64, %alloc_8[%c1] : (i64, memref<2xi64>) -> i64
      %246 = vector.broadcast %cst : f32 to vector<3x15xf32>
      %247 = vector.fma %246, %246, %246 : vector<3x15xf32>
      %collapsed_52 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<16x16x2xi32> into tensor<256x2xi32>
      %248 = arith.ori %false_4, %false : i1
      %249 = arith.andi %false, %true : i1
      %250 = arith.subi %c3052_i16, %c-20430_i16 : i16
      scf.index_switch %c10 
      case 1 {
        %258 = arith.cmpf oge, %cst_1, %50 : f16
        %259 = math.log2 %9 : tensor<3x15xf16>
        %260 = math.cos %9 : tensor<3x15xf16>
        bufferization.dealloc_tensor %15 : tensor<3x15xi64>
        %261 = vector.broadcast %c10 : index to vector<2xindex>
        %262 = vector.broadcast %false : i1 to vector<2xi1>
        %263 = vector.broadcast %c156345344_i64 : i64 to vector<2xi64>
        vector.scatter %alloc_11[%c0] [%261], %262, %263 : memref<2xi64>, vector<2xindex>, vector<2xi1>, vector<2xi64>
        %264 = math.exp %cst_1 : f16
        vector.print %20 : vector<15xf16>
        %dest_53, %accumulated_value_54 = vector.scan <add>, %53, %48 {inclusive = true, reduction_dim = 0 : i64} : vector<2x15xf32>, vector<15xf32>
        %alloca_55 = memref.alloca() : memref<2x15xi1>
        %265 = math.round %50 : f16
        %266 = arith.remsi %c355370246_i64, %c744113698_i64 : i64
        %267 = vector.extract_strided_slice %247 {offsets = [0], sizes = [3], strides = [1]} : vector<3x15xf32> to vector<3x15xf32>
        %268 = index.sub %c1, %27
        %cst_56 = arith.constant 0x4E23B3C6 : f32
        %269 = arith.divsi %true, %false_4 : i1
        %270 = arith.remui %c355370246_i64, %c355370246_i64 : i64
        scf.yield
      }
      case 2 {
        %258 = math.absf %cst_1 : f16
        %259 = memref.realloc %alloc_5 : memref<2xf16> to memref<16xf16>
        %260 = vector.reduction <add>, %48 : vector<15xf32> into f32
        %c31594227_i64 = arith.constant 31594227 : i64
        %261 = math.fma %cst, %cst_0, %cst_0 : f32
        %262 = vector.multi_reduction <mul>, %53, %cst [0, 1] : vector<2x15xf32> to f32
        %263 = vector.splat %c5 : vector<2x15xindex>
        %264 = arith.shrsi %c3052_i16, %c3052_i16 : i16
        %alloca_53 = memref.alloca() : memref<3x15xi1>
        vector.print %52 : vector<2x15xf32>
        %265 = vector.shuffle %53, %246 [1, 3, 4] : vector<2x15xf32>, vector<3x15xf32>
        %266 = math.tanh %11 : tensor<2xf32>
        %267 = index.divu %c7, %27
        %268 = vector.broadcast %c2 : index to vector<2xindex>
        %269 = vector.broadcast %true : i1 to vector<2xi1>
        vector.scatter %alloc_20[%c0] [%268], %269, %269 : memref<2xi1>, vector<2xindex>, vector<2xi1>, vector<2xi1>
        %270 = arith.ceildivsi %c366308732_i64, %c355370246_i64 : i64
        %271 = index.sub %47, %267
        scf.yield
      }
      case 3 {
        %258 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1)>(%c13, %c10, %27, %55)
        %inserted_53 = tensor.insert %c366308732_i64 into %18[] : tensor<i64>
        %259 = vector.bitcast %20 : vector<15xf16> to vector<15xf16>
        %260 = vector.broadcast %c15 : index to vector<3xindex>
        %261 = vector.broadcast %true : i1 to vector<3xi1>
        %262 = vector.broadcast %50 : f16 to vector<3xf16>
        vector.scatter %alloc_5[%c1] [%260], %261, %262 : memref<2xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
        %263 = vector.extract_strided_slice %53 {offsets = [0], sizes = [2], strides = [1]} : vector<2x15xf32> to vector<2x15xf32>
        %c1_i32_54 = arith.constant 1 : i32
        %264 = math.fpowi %cst_0, %c1_i32_54 : f32, i32
        %265 = arith.addf %cst, %cst : f32
        %266 = vector.broadcast %c3 : index to vector<15xindex>
        %267 = vector.broadcast %false : i1 to vector<15xi1>
        %268 = vector.broadcast %c156345344_i64 : i64 to vector<15xi64>
        vector.scatter %alloc[%c1, %c9] [%266], %267, %268 : memref<2x15xi64>, vector<15xindex>, vector<15xi1>, vector<15xi64>
        %alloc_55 = memref.alloc() : memref<15x16xi32>
        %269 = tensor.empty() : tensor<2x16xi32>
        %270 = linalg.matmul ins(%6, %alloc_55 : tensor<2x15xi32>, memref<15x16xi32>) outs(%269 : tensor<2x16xi32>) -> tensor<2x16xi32>
        %271 = math.atan2 %cst_0, %cst : f32
        %272 = arith.muli %false, %false_4 : i1
        %273 = math.tanh %cst : f32
        %274 = arith.remui %c355370246_i64, %c156345344_i64 : i64
        %275 = arith.divui %c156345344_i64, %c355370246_i64 : i64
        %276 = arith.negf %cst_0 : f32
        %277 = arith.maxf %cst_3, %cst_2 : f16
        scf.yield
      }
      case 4 {
        %258 = vector.transpose %246, [1, 0] : vector<3x15xf32> to vector<15x3xf32>
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_53 = arith.constant 0 : i64
        %259 = vector.transfer_read %alloc_11[%c11], %c0_i64_53 : memref<2xi64>, vector<i64>
        %expanded_54 = tensor.expand_shape %11 [[0, 1]] : tensor<2xf32> into tensor<2x1xf32>
        %260 = arith.xori %false, %false : i1
        %false_55 = index.bool.constant false
        %261 = arith.muli %true, %false : i1
        %262 = vector.multi_reduction <maxf>, %53, %cst_0 [0, 1] : vector<2x15xf32> to f32
        %263 = arith.minf %cst_1, %50 : f16
        %264 = arith.shrui %c355370246_i64, %c0_i64 : i64
        memref.copy %alloc_9, %alloc_17 : memref<3x15xi1> to memref<3x15xi1>
        memref.store %false_4, %alloc_15[%c1] : memref<2xi1>
        %265 = vector.extract_strided_slice %48 {offsets = [12], sizes = [1], strides = [1]} : vector<15xf32> to vector<1xf32>
        %266 = affine.min affine_map<(d0, d1) -> (d1 * 64, d0 + d1 - 32, d0 + d1 + 32, d1 ceildiv 32)>(%c5, %55)
        %267 = arith.cmpi sle, %c156345344_i64, %c355370246_i64 : i64
        %268 = math.log10 %5 : tensor<16x16x2xf32>
        %269 = vector.broadcast %cst : f32 to vector<3xf32>
        %dest_56, %accumulated_value_57 = vector.scan <maxf>, %246, %269 {inclusive = true, reduction_dim = 1 : i64} : vector<3x15xf32>, vector<3xf32>
        scf.yield
      }
      default {
        %258 = math.tanh %cst_0 : f32
        %259 = math.log2 %cst_2 : f16
        %260 = vector.broadcast %cst : f32 to vector<3xf32>
        %261 = vector.transfer_write %260, %5[%27, %c13, %243] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<3xf32>, tensor<16x16x2xf32>
        %262 = math.round %11 : tensor<2xf32>
        bufferization.dealloc_tensor %22 : tensor<i1>
        %263 = math.sqrt %cst_2 : f16
        bufferization.dealloc_tensor %6 : tensor<2x15xi32>
        %264 = vector.broadcast %cst_1 : f16 to vector<2xf16>
        %265 = affine.max affine_map<(d0) -> (d0, d0)>(%c14)
        %266 = index.add %c4, %c5
        affine.store %c355370246_i64, %alloc[%c6, %c13] : memref<2x15xi64>
        %267 = affine.max affine_map<(d0, d1, d2, d3) -> (d2, d2 mod 16, d3, d0)>(%47, %265, %c3, %c14)
        %268 = arith.maxf %cst_0, %cst : f32
        %269 = vector.transpose %246, [0, 1] : vector<3x15xf32> to vector<3x15xf32>
        %270 = index.divu %243, %c14
        %271 = arith.ori %false, %false : i1
      }
      %251 = math.floor %cst_1 : f16
      %252 = math.round %50 : f16
      %253 = index.divu %47, %37
      %254 = math.log2 %cst_1 : f16
      %255 = vector.reduction <minf>, %20 : vector<15xf16> into f16
      %256 = arith.addf %cst, %cst : f32
      %257 = math.tanh %9 : tensor<3x15xf16>
      scf.yield %c0 : index
    }
    case 3 {
      %243 = vector.matrix_multiply %48, %48 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xf32>, vector<15xf32>) -> vector<1xf32>
      %244 = affine.for %arg1 = 0 to 94 iter_args(%arg2 = %6) -> (tensor<2x15xi32>) {
        affine.yield %6 : tensor<2x15xi32>
      }
      %245 = math.log2 %9 : tensor<3x15xf16>
      %246 = math.fpowi %0, %4 : tensor<16x16x2xf32>, tensor<16x16x2xi32>
      %247 = vector.broadcast %cst_0 : f32 to vector<3x15xf32>
      %248 = vector.fma %247, %247, %247 : vector<3x15xf32>
      %249 = arith.ori %c3052_i16, %c3052_i16 : i16
      %250 = math.cttz %3 : tensor<2x15xi1>
      %251 = vector.broadcast %false_4 : i1 to vector<2x15xi1>
      %252 = index.add %c11, %47
      %253 = math.log10 %11 : tensor<2xf32>
      %254 = arith.floordivsi %false_4, %true : i1
      %255 = arith.remui %c744113698_i64, %c744113698_i64 : i64
      %256 = arith.andi %c156345344_i64, %c744113698_i64 : i64
      %alloc_52 = memref.alloc() : memref<2x15xi16>
      %257 = vector.transpose %248, [0, 1] : vector<3x15xf32> to vector<3x15xf32>
      %258 = vector.insertelement %cst_0, %243[%37 : index] : vector<1xf32>
      scf.yield %29 : index
    }
    case 4 {
      %243 = affine.apply affine_map<(d0, d1, d2) -> (d2 - 48)>(%47, %37, %27)
      %244 = math.expm1 %cst_1 : f16
      %245 = memref.load %alloc_11[%c1] : memref<2xi64>
      %246 = arith.muli %c355370246_i64, %c366308732_i64 : i64
      %247 = index.ceildivs %29, %c0
      %248 = index.floordivs %c15, %47
      %249 = arith.divsi %c156345344_i64, %c744113698_i64 : i64
      vector.print %53 : vector<2x15xf32>
      scf.if %false_4 {
        %255 = memref.realloc %alloc_14 : memref<2xf16> to memref<3xf16>
        %256 = arith.shli %c-2423_i16, %c-20430_i16 : i16
        %257 = arith.andi %c366308732_i64, %c156345344_i64 : i64
        %alloc_53 = memref.alloc() : memref<16x16x2xi32>
        memref.tensor_store %1, %alloc_53 : memref<16x16x2xi32>
        %258 = arith.minf %cst_1, %cst_1 : f16
        %259 = index.ceildivu %248, %c7
        vector.print %48 : vector<15xf32>
        %260 = affine.min affine_map<(d0) -> (d0 * 2 + d0 * 2 - 4)>(%c10)
      } else {
        %255 = arith.shli %true, %true : i1
        %false_53 = index.bool.constant false
        %256 = arith.maxf %cst, %cst : f32
        %alloca_54 = memref.alloca() : memref<2x15xi64>
        %257 = math.log2 %cst_0 : f32
        %258 = arith.ori %c3052_i16, %c3052_i16 : i16
        %259 = math.floor %cst_1 : f16
        %260 = math.absi %reduced : tensor<i64>
      }
      %splat_52 = tensor.splat %c1563714217_i64 : tensor<3x15xi64>
      %250 = arith.remsi %c366308732_i64, %c156345344_i64 : i64
      %251 = bufferization.clone %alloc_10 : memref<16x16x2xf32> to memref<16x16x2xf32>
      %252 = arith.maxsi %c744113698_i64, %c1563714217_i64 : i64
      %253 = scf.index_switch %c8 -> tensor<2x15xi64> 
      case 1 {
        %255 = arith.remsi %false, %false : i1
        %256 = index.divu %c1, %c4
        %257 = arith.minf %50, %cst_3 : f16
        %expanded_53 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<2x15xi32> into tensor<2x15x1xi32>
        %collapsed_54 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<16x16x2xi16> into tensor<256x2xi16>
        %258 = vector.broadcast %false : i1 to vector<2xi1>
        %259 = vector.maskedload %alloc_20[%c0], %258, %258 : memref<2xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
        %alloc_55 = memref.alloc() : memref<15x16xi32>
        %260 = tensor.empty() : tensor<2x16xi32>
        %261 = linalg.matmul ins(%7, %alloc_55 : tensor<2x15xi32>, memref<15x16xi32>) outs(%260 : tensor<2x16xi32>) -> tensor<2x16xi32>
        %262 = affine.min affine_map<(d0, d1) -> ((-(d1 mod 8) + 32) floordiv 64, -(d1 mod 8) - d1 + 32)>(%c14, %47)
        %263 = vector.broadcast %false_4 : i1 to vector<16xi1>
        vector.transfer_write %263, %alloc_19[%c7, %c13] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<16xi1>, memref<2x15xi1>
        %c72 = arith.constant 72 : index
        %inserted_56 = tensor.insert %c-2423_i16 into %collapsed_54[%c72, %c1] : tensor<256x2xi16>
        %264 = memref.atomic_rmw minf %50, %alloc_14[%c1] : (f16, memref<2xf16>) -> f16
        %265 = arith.ori %c156345344_i64, %c366308732_i64 : i64
        %266 = arith.muli %c-2423_i16, %c3052_i16 : i16
        %267 = arith.remui %false_4, %true : i1
        %268 = arith.negf %cst_0 : f32
        %269 = bufferization.clone %alloc_5 : memref<2xf16> to memref<2xf16>
        %270 = tensor.empty() : tensor<2x15xi64>
        scf.yield %270 : tensor<2x15xi64>
      }
      case 2 {
        %255 = vector.transpose %53, [1, 0] : vector<2x15xf32> to vector<15x2xf32>
        vector.print %48 : vector<15xf32>
        %alloca_53 = memref.alloca() : memref<2xi32>
        %256 = arith.ceildivsi %true, %false_4 : i1
        %257 = math.roundeven %5 : tensor<16x16x2xf32>
        %258 = math.roundeven %cst_2 : f16
        %259 = math.log10 %0 : tensor<16x16x2xf32>
        %260 = math.ctpop %6 : tensor<2x15xi32>
        %alloc_54 = memref.alloc() : memref<3x15xf16>
        %261 = math.ipowi %reduced, %reduced : tensor<i64>
        %262 = arith.remf %cst_1, %cst_2 : f16
        %263 = arith.remui %c156345344_i64, %c1563714217_i64 : i64
        %264 = index.divu %c4, %c7
        %alloc_55 = memref.alloc() : memref<2xf32>
        memref.copy %alloc_7, %alloc_55 : memref<2xf32> to memref<2xf32>
        %265 = index.castu %c13 : index to i32
        %266 = tensor.empty(%c0, %c8) : tensor<?x?xi1>
        %267 = tensor.empty() : tensor<2x15xi64>
        scf.yield %267 : tensor<2x15xi64>
      }
      case 3 {
        %255 = math.atan %9 : tensor<3x15xf16>
        %true_53 = index.bool.constant true
        %256 = vector.create_mask %247 : vector<2xi1>
        %257 = vector.broadcast %false : i1 to vector<2x2xi1>
        %258 = vector.outerproduct %256, %256, %257 {kind = #vector.kind<minsi>} : vector<2xi1>, vector<2xi1>
        %false_54 = index.bool.constant false
        %259 = index.ceildivu %c12, %c13
        %260 = math.fpowi %5, %4 : tensor<16x16x2xf32>, tensor<16x16x2xi32>
        %261 = math.log10 %9 : tensor<3x15xf16>
        %262 = math.sqrt %cst_0 : f32
        %c1845166613_i64 = arith.constant 1845166613 : i64
        %263 = arith.ori %c355370246_i64, %c355370246_i64 : i64
        %264 = math.atan2 %9, %9 : tensor<3x15xf16>
        vector.print %53 : vector<2x15xf32>
        %265 = tensor.empty(%c13) : tensor<16x?x2xi1>
        %266 = arith.minsi %c-2423_i16, %c-2423_i16 : i16
        %true_55 = index.bool.constant true
        %267 = tensor.empty() : tensor<2x15xi64>
        scf.yield %267 : tensor<2x15xi64>
      }
      case 4 {
        %255 = math.log10 %9 : tensor<3x15xf16>
        %256 = vector.broadcast %cst_0 : f32 to vector<16x16x2xf32>
        %257 = vector.fma %256, %256, %256 : vector<16x16x2xf32>
        %258 = math.ctpop %14 : tensor<2x15xi16>
        %259 = tensor.empty() : tensor<16x16x2xi16>
        %260 = arith.ceildivsi %c-2423_i16, %c3052_i16 : i16
        %261 = arith.floordivsi %c156345344_i64, %c366308732_i64 : i64
        %262 = memref.realloc %alloc_11 : memref<2xi64> to memref<2xi64>
        %263 = math.exp2 %cst_1 : f16
        %264 = vector.reduction <add>, %20 : vector<15xf16> into f16
        %265 = index.mul %c9, %29
        %266 = arith.remf %cst_2, %cst_2 : f16
        %c1_i32_53 = arith.constant 1 : i32
        memref.store %c1_i32_53, %alloc_6[%c0, %c10] : memref<3x15xi32>
        %267 = arith.addi %c366308732_i64, %c744113698_i64 : i64
        %268 = vector.extract_strided_slice %256 {offsets = [9], sizes = [5], strides = [1]} : vector<16x16x2xf32> to vector<5x16x2xf32>
        %269 = index.castu %c-20430_i16 : i16 to index
        %270 = math.sqrt %9 : tensor<3x15xf16>
        %271 = tensor.empty() : tensor<2x15xi64>
        scf.yield %271 : tensor<2x15xi64>
      }
      default {
        %255 = math.cttz %8 : tensor<16x16x2xi64>
        %256 = bufferization.to_tensor %alloc_7 : memref<2xf32>
        %257 = affine.load %alloc_7[%c11] : memref<2xf32>
        %258 = math.ceil %cst_2 : f16
        %259 = affine.max affine_map<(d0, d1, d2, d3) -> (d0, d0, d0 floordiv 128 - d0 - 4, -d0)>(%c6, %47, %55, %c7)
        %260 = affine.min affine_map<(d0, d1, d2) -> ((-d1) ceildiv 4, (-d1) mod 8)>(%c4, %c11, %c2)
        %261 = arith.minf %cst_2, %cst_1 : f16
        %262 = math.log %11 : tensor<2xf32>
        %263 = arith.shli %c355370246_i64, %c366308732_i64 : i64
        %264 = arith.remsi %c1563714217_i64, %c1563714217_i64 : i64
        %265 = arith.remsi %true, %false : i1
        %266 = vector.multi_reduction <add>, %52, %53 [] : vector<2x15xf32> to vector<2x15xf32>
        %267 = math.log1p %0 : tensor<16x16x2xf32>
        %268 = affine.apply affine_map<(d0) -> (0)>(%c14)
        memref.tensor_store %11, %alloc_7 : memref<2xf32>
        %269 = math.exp %256 : tensor<2xf32>
        %270 = tensor.empty() : tensor<2x15xi64>
        scf.yield %270 : tensor<2x15xi64>
      }
      %c1518891205_i64 = arith.constant 1518891205 : i64
      %254 = affine.min affine_map<(d0, d1, d2, d3) -> (0, (d2 - (d3 - d1)) floordiv 128, d0)>(%55, %c3, %c12, %243)
      scf.yield %c12 : index
    }
    default {
      %splat_52 = tensor.splat %50 : tensor<2x15xf16>
      %243 = index.add %c6, %c9
      %244 = arith.addi %c3052_i16, %c-2423_i16 : i16
      %245 = vector.extract_strided_slice %53 {offsets = [0], sizes = [2], strides = [1]} : vector<2x15xf32> to vector<2x15xf32>
      %246 = vector.bitcast %245 : vector<2x15xf32> to vector<2x15xf32>
      %247 = tensor.empty() : tensor<15x3xi16>
      %248 = tensor.empty() : tensor<2x3xi16>
      %249 = linalg.matmul ins(%14, %247 : tensor<2x15xi16>, tensor<15x3xi16>) outs(%248 : tensor<2x3xi16>) -> tensor<2x3xi16>
      %250 = affine.apply affine_map<(d0, d1, d2) -> (d2 - 48)>(%27, %c13, %c15)
      %251 = index.add %c6, %c12
      %252 = arith.remf %50, %cst_2 : f16
      %253 = vector.shuffle %52, %53 [0, 1] : vector<2x15xf32>, vector<2x15xf32>
      %254 = arith.remf %50, %cst_2 : f16
      vector.print %20 : vector<15xf16>
      %255 = arith.maxf %cst_1, %cst_2 : f16
      %256 = scf.while (%arg1 = %alloc) : (memref<2x15xi64>) -> memref<2x15xi64> {
        %259 = math.ceil %5 : tensor<16x16x2xf32>
        %260 = math.floor %cst : f32
        %261 = arith.addi %c-2423_i16, %c-2423_i16 : i16
        %262 = arith.divsi %c-2423_i16, %c-20430_i16 : i16
        %263 = memref.load %alloc_20[%c0] : memref<2xi1>
        %264 = math.cttz %15 : tensor<3x15xi64>
        %265 = vector.reduction <maxf>, %48 : vector<15xf32> into f32
        %dest_53, %accumulated_value_54 = vector.scan <maxf>, %246, %48 {inclusive = true, reduction_dim = 0 : i64} : vector<2x15xf32>, vector<15xf32>
        scf.condition(%false_4) %arg1 : memref<2x15xi64>
      } do {
      ^bb0(%arg1: memref<2x15xi64>):
        %259 = arith.xori %c-2423_i16, %c-2423_i16 : i16
        %260 = arith.maxf %cst_0, %cst_0 : f32
        %261 = index.sub %c14, %c5
        %262 = vector.broadcast %c355370246_i64 : i64 to vector<i64>
        vector.transfer_write %262, %alloc_8[%c15] : vector<i64>, memref<2xi64>
        %263 = math.absi %c744113698_i64 : i64
        %264 = vector.broadcast %c13 : index to vector<3xindex>
        %265 = vector.broadcast %false : i1 to vector<3xi1>
        %266 = vector.broadcast %c366308732_i64 : i64 to vector<3xi64>
        vector.scatter %alloc_16[%c1, %c5] [%264], %265, %266 : memref<3x15xi64>, vector<3xindex>, vector<3xi1>, vector<3xi64>
        %267 = math.atan %cst_3 : f16
        %268 = index.sub %c1, %c2
        %269 = math.exp %cst_0 : f32
        %270 = arith.remf %cst, %cst : f32
        %271 = vector.broadcast %cst_1 : f16 to vector<15x15xf16>
        %272 = vector.outerproduct %20, %20, %271 {kind = #vector.kind<maxf>} : vector<15xf16>, vector<15xf16>
        %273 = arith.ceildivsi %false_4, %true : i1
        %274 = vector.broadcast %cst : f32 to vector<15x15xf32>
        %275 = vector.outerproduct %48, %48, %274 {kind = #vector.kind<add>} : vector<15xf32>, vector<15xf32>
        memref.store %c366308732_i64, %arg1[%c1, %c1] : memref<2x15xi64>
        %276 = vector.broadcast %50 : f16 to vector<15x15xf16>
        %277 = vector.outerproduct %20, %20, %276 {kind = #vector.kind<add>} : vector<15xf16>, vector<15xf16>
        %278 = math.fma %0, %0, %5 : tensor<16x16x2xf32>
        scf.yield %alloc : memref<2x15xi64>
      }
      %257 = math.round %11 : tensor<2xf32>
      %258 = arith.ori %c744113698_i64, %c744113698_i64 : i64
      scf.yield %250 : index
    }
    vector.print %52 : vector<2x15xf32>
    %57 = affine.for %arg1 = 0 to 74 iter_args(%arg2 = %0) -> (tensor<16x16x2xf32>) {
      affine.yield %5 : tensor<16x16x2xf32>
    }
    %58 = tensor.empty() : tensor<2xi32>
    memref.store %true, %alloc_19[%c0, %c4] : memref<2x15xi1>
    %59 = index.castu %c355370246_i64 : i64 to index
    %60 = vector.broadcast %c744113698_i64 : i64 to vector<16xi64>
    %61 = vector.broadcast %false : i1 to vector<16xi1>
    %62 = vector.maskedload %alloc_18[%c6, %c13, %c1], %61, %60 : memref<16x16x2xi64>, vector<16xi1>, vector<16xi64> into vector<16xi64>
    %63 = arith.maxsi %c-20430_i16, %c3052_i16 : i16
    %64 = math.round %50 : f16
    %alloc_25 = memref.alloc() : memref<3x15xf16>
    memref.tensor_store %9, %alloc_25 : memref<3x15xf16>
    %65 = vector.multi_reduction <maxf>, %20, %cst_1 [0] : vector<15xf16> to f16
    memref.tensor_store %0, %alloc_10 : memref<16x16x2xf32>
    affine.store %c156345344_i64, %alloc_11[%c3] : memref<2xi64>
    %66 = arith.ori %c-20430_i16, %c3052_i16 : i16
    %67 = arith.divui %c366308732_i64, %c366308732_i64 : i64
    %68 = arith.minui %c744113698_i64, %c744113698_i64 : i64
    %69 = arith.ceildivsi %c366308732_i64, %c744113698_i64 : i64
    %70 = arith.remsi %c366308732_i64, %c1563714217_i64 : i64
    %71 = math.fma %cst_2, %cst_3, %cst_3 : f16
    %72 = arith.negf %cst_3 : f16
    %73 = index.mul %c5, %c5
    %74 = bufferization.clone %alloc_12 : memref<3x15xi32> to memref<3x15xi32>
    memref.store %cst_0, %alloc_7[%c1] : memref<2xf32>
    %75 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 + d1, d2 - (d3 + d1) + 4)>(%c4, %c3, %40, %c1)
    %76 = affine.for %arg1 = 0 to 70 iter_args(%arg2 = %3) -> (tensor<2x15xi1>) {
      affine.yield %3 : tensor<2x15xi1>
    }
    %splat_26 = tensor.splat %c366308732_i64 : tensor<3x15xi64>
    %alloc_27 = memref.alloc() : memref<3x15xi1>
    %77 = index.sizeof
    scf.if %true {
      memref.tensor_store %10, %alloc_16 : memref<3x15xi64>
      %243 = math.log10 %cst_2 : f16
      %244 = affine.min affine_map<(d0, d1, d2) -> (d1 mod 64 + 4, d1 - d2, -(d1 mod 64 + 4), d1 - d2)>(%c14, %27, %40)
      %245 = vector.shuffle %60, %60 [0, 1, 5, 6, 8, 9, 10, 11, 17, 20, 22, 23, 24, 26, 27] : vector<16xi64>, vector<16xi64>
      %246 = index.sub %55, %244
      %c1733197475_i64 = arith.constant 1733197475 : i64
      %247 = arith.andi %c156345344_i64, %c355370246_i64 : i64
      %248 = math.floor %0 : tensor<16x16x2xf32>
    } else {
      %alloc_52 = memref.alloc() : memref<2x15xf16>
      %generated_53 = tensor.generate %c11, %c6 {
      ^bb0(%arg1: index, %arg2: index):
        %248 = index.floordivs %40, %c10
        %249 = arith.remsi %c355370246_i64, %c744113698_i64 : i64
        %250 = tensor.empty() : tensor<2xi32>
        %251 = math.fpowi %11, %250 : tensor<2xf32>, tensor<2xi32>
        %252 = math.ipowi %8, %8 : tensor<16x16x2xi64>
        tensor.yield %true : i1
      } : tensor<?x?xi1>
      %243 = vector.transpose %61, [0] : vector<16xi1> to vector<16xi1>
      %244 = vector.broadcast %c156345344_i64 : i64 to vector<2x15xi64>
      %generated_54 = tensor.generate %c13, %73 {
      ^bb0(%arg1: index, %arg2: index):
        %248 = arith.divui %c156345344_i64, %c1563714217_i64 : i64
        %249 = arith.remui %c3052_i16, %c3052_i16 : i16
        %250 = math.sqrt %cst_3 : f16
        %251 = math.fma %cst, %cst, %cst : f32
        %c1_i32_55 = arith.constant 1 : i32
        tensor.yield %c1_i32_55 : i32
      } : tensor<?x?xi32>
      %245 = math.absf %5 : tensor<16x16x2xf32>
      %246 = math.ceil %cst : f32
      %247 = vector.broadcast %c-20430_i16 : i16 to vector<16x16x2xi16>
    }
    %alloc_28 = memref.alloc() : memref<2x15xi32>
    bufferization.dealloc_tensor %6 : tensor<2x15xi32>
    %78 = math.powf %cst_2, %cst_2 : f16
    %79 = index.castu %47 : index to i32
    %80 = vector.extract %20[13] : vector<15xf16>
    %81 = index.ceildivs %59, %c10
    %expanded = tensor.expand_shape %11 [[0, 1]] : tensor<2xf32> into tensor<2x1xf32>
    %82 = arith.divui %c366308732_i64, %c744113698_i64 : i64
    %83 = vector.broadcast %c1563714217_i64 : i64 to vector<15xi64>
    %84 = vector.broadcast %false_4 : i1 to vector<15xi1>
    %85 = vector.maskedload %alloc_16[%c0, %c11], %84, %83 : memref<3x15xi64>, vector<15xi1>, vector<15xi64> into vector<15xi64>
    %86 = arith.negf %cst_3 : f16
    %87 = bufferization.to_tensor %alloc_13 : memref<3x15xf32>
    %88 = index.ceildivs %c6, %c4
    %89 = arith.remsi %c-2423_i16, %c-20430_i16 : i16
    %90 = affine.if affine_set<(d0, d1, d2, d3) : (((-d3) ceildiv 16) ceildiv 32 == 0, d0 >= 0, (-d3) ceildiv 16 >= 0)>(%c14, %c5, %c9, %c5) -> memref<16x16x2xi16> {
      %243 = arith.shrsi %c-2423_i16, %c-20430_i16 : i16
      %244 = arith.ori %c355370246_i64, %c355370246_i64 : i64
      %245 = vector.transpose %52, [1, 0] : vector<2x15xf32> to vector<15x2xf32>
      %246 = vector.broadcast %cst : f32 to vector<2xf32>
      %dest_52, %accumulated_value_53 = vector.scan <add>, %52, %246 {inclusive = false, reduction_dim = 1 : i64} : vector<2x15xf32>, vector<2xf32>
      %247 = memref.load %alloc_16[%c0, %c11] : memref<3x15xi64>
      %248 = vector.splat %c0 : vector<3x15xindex>
      %249 = arith.maxsi %false, %false_4 : i1
      %250 = bufferization.clone %alloc_20 : memref<2xi1> to memref<2xi1>
      %alloc_54 = memref.alloc() : memref<16x16x2xi16>
      affine.yield %alloc_54 : memref<16x16x2xi16>
    } else {
      bufferization.dealloc_tensor %expanded : tensor<2x1xf32>
      %alloc_52 = memref.alloc() : memref<1x16xf32>
      %243 = tensor.empty() : tensor<2x16xf32>
      %244 = linalg.matmul ins(%expanded, %alloc_52 : tensor<2x1xf32>, memref<1x16xf32>) outs(%243 : tensor<2x16xf32>) -> tensor<2x16xf32>
      %rank_53 = tensor.rank %2 : tensor<2xi1>
      %rank_54 = tensor.rank %4 : tensor<16x16x2xi32>
      %c1_i32_55 = arith.constant 1 : i32
      %245 = vector.transfer_read %alloc_12[%59, %37], %c1_i32_55 : memref<3x15xi32>, vector<i32>
      %246 = math.tanh %0 : tensor<16x16x2xf32>
      %247 = arith.cmpi ne, %c366308732_i64, %c156345344_i64 : i64
      %rank_56 = tensor.rank %16 : tensor<2x15xi16>
      %alloc_57 = memref.alloc() : memref<16x16x2xi16>
      affine.yield %alloc_57 : memref<16x16x2xi16>
    }
    %91 = math.atan2 %cst, %cst_0 : f32
    %inserted = tensor.insert %c156345344_i64 into %15[%c0, %c11] : tensor<3x15xi64>
    %expanded_29 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<3x15xi16> into tensor<3x15x1xi16>
    %92 = index.ceildivu %c12, %c15
    %inserted_30 = tensor.insert %c1563714217_i64 into %splat[%c0] : tensor<2xi64>
    %93 = scf.if %false_4 -> (memref<2xf32>) {
      %alloc_52 = memref.alloc() : memref<2x15xi32>
      %243 = vector.reduction <add>, %83 : vector<15xi64> into i64
      %244 = math.exp %9 : tensor<3x15xf16>
      %245 = scf.index_switch %92 -> i16 
      case 1 {
        %249 = arith.maxsi %true, %false_4 : i1
        %250 = math.log2 %87 : tensor<3x15xf32>
        %from_elements_54 = tensor.from_elements %c355370246_i64, %c366308732_i64, %c366308732_i64, %c366308732_i64, %c355370246_i64, %c366308732_i64, %c355370246_i64, %c366308732_i64, %c1563714217_i64, %c366308732_i64, %c1563714217_i64, %c744113698_i64, %c156345344_i64, %c744113698_i64, %c355370246_i64, %c1563714217_i64, %c1563714217_i64, %c744113698_i64, %c744113698_i64, %c355370246_i64, %c366308732_i64, %c355370246_i64, %c1563714217_i64, %c156345344_i64, %c366308732_i64, %c1563714217_i64, %c1563714217_i64, %c355370246_i64, %c1563714217_i64, %c366308732_i64, %c744113698_i64, %c366308732_i64, %c366308732_i64, %c355370246_i64, %c355370246_i64, %c366308732_i64, %c156345344_i64, %c355370246_i64, %c156345344_i64, %c156345344_i64, %c366308732_i64, %c156345344_i64, %c366308732_i64, %c744113698_i64, %c355370246_i64 : tensor<3x15xi64>
        %251 = arith.divsi %c366308732_i64, %c1563714217_i64 : i64
        %252 = arith.andi %c156345344_i64, %c355370246_i64 : i64
        %253 = index.mul %c10, %c9
        memref.tensor_store %15, %alloc_16 : memref<3x15xi64>
        %254 = vector.insertelement %c1563714217_i64, %83[%c0 : index] : vector<15xi64>
        %255 = math.fpowi %5, %4 : tensor<16x16x2xf32>, tensor<16x16x2xi32>
        %256 = memref.realloc %alloc_5 : memref<2xf16> to memref<2xf16>
        %257 = math.expm1 %cst_0 : f32
        %258 = bufferization.clone %alloc_14 : memref<2xf16> to memref<2xf16>
        %259 = math.absf %0 : tensor<16x16x2xf32>
        %260 = arith.ori %c156345344_i64, %c1563714217_i64 : i64
        %261 = index.maxu %73, %253
        %262 = math.floor %cst : f32
        scf.yield %c-2423_i16 : i16
      }
      case 2 {
        %249 = math.round %50 : f16
        %250 = vector.broadcast %73 : index to vector<3xindex>
        %251 = vector.broadcast %false : i1 to vector<3xi1>
        %252 = vector.broadcast %cst_0 : f32 to vector<3xf32>
        vector.scatter %alloc_7[%c1] [%250], %251, %252 : memref<2xf32>, vector<3xindex>, vector<3xi1>, vector<3xf32>
        %253 = vector.broadcast %false : i1 to vector<2xi1>
        %254 = vector.maskedload %alloc_9[%c1, %c9], %253, %253 : memref<3x15xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
        %255 = arith.divui %c1563714217_i64, %c156345344_i64 : i64
        %256 = math.atan %0 : tensor<16x16x2xf32>
        %alloc_54 = memref.alloc() : memref<i64>
        memref.tensor_store %18, %alloc_54 : memref<i64>
        %257 = index.casts %27 : index to i32
        %258 = arith.subi %c-20430_i16, %c-2423_i16 : i16
        %259 = math.cttz %10 : tensor<3x15xi64>
        %260 = math.floor %65 : f16
        %261 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 - d3, d0 * 16, -d0)>(%55, %75, %c1, %c2)
        %262 = math.absi %c744113698_i64 : i64
        %263 = bufferization.clone %alloc_12 : memref<3x15xi32> to memref<3x15xi32>
        %264 = vector.broadcast %cst : f32 to vector<2x15xf32>
        %265 = vector.fma %264, %52, %264 : vector<2x15xf32>
        %alloca_55 = memref.alloca() : memref<2x15xi1>
        %266 = vector.reduction <mul>, %62 : vector<16xi64> into i64
        scf.yield %c3052_i16 : i16
      }
      default {
        %expanded_54 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<3x15xi64> into tensor<3x15x1xi64>
        %249 = math.ceil %cst_0 : f32
        %250 = bufferization.clone %alloc : memref<2x15xi64> to memref<2x15xi64>
        %251 = vector.bitcast %85 : vector<15xi64> to vector<15xi64>
        %252 = arith.shrsi %false, %false : i1
        %alloc_55 = memref.alloc() : memref<2xi32>
        %253 = math.log1p %0 : tensor<16x16x2xf32>
        %254 = arith.negf %cst_0 : f32
        %255 = arith.xori %c1563714217_i64, %c744113698_i64 : i64
        %256 = arith.xori %false, %true : i1
        %257 = index.divu %c14, %c12
        %258 = arith.ceildivsi %true, %false_4 : i1
        %259 = arith.divsi %c3052_i16, %c-20430_i16 : i16
        %260 = memref.load %alloc_13[%c1, %c6] : memref<3x15xf32>
        %261 = index.divu %c4, %257
        %262 = vector.reduction <xor>, %60 : vector<16xi64> into i64
        scf.yield %c-2423_i16 : i16
      }
      %alloca_53 = memref.alloca() : memref<2xi16>
      %246 = affine.max affine_map<(d0) -> (-(d0 * 4 - 4), d0 * 4 - (d0 - 8) - 2)>(%40)
      %247 = arith.addf %cst, %cst : f32
      %248 = affine.load %alloc_11[%c11] : memref<2xi64>
      scf.yield %alloc_7 : memref<2xf32>
    } else {
      %243 = bufferization.clone %alloc_20 : memref<2xi1> to memref<2xi1>
      %244 = arith.xori %false, %false_4 : i1
      %245 = arith.divsi %c355370246_i64, %c744113698_i64 : i64
      %246 = arith.xori %c355370246_i64, %c1563714217_i64 : i64
      %generated_52 = tensor.generate %c2, %c3 {
      ^bb0(%arg1: index, %arg2: index):
        %249 = vector.extract %60[3] : vector<16xi64>
        %250 = vector.multi_reduction <maxf>, %48, %cst_0 [0] : vector<15xf32> to f32
        %251 = math.expm1 %cst : f32
        %252 = arith.floordivsi %c355370246_i64, %c366308732_i64 : i64
        tensor.yield %c-20430_i16 : i16
      } : tensor<?x?xi16>
      scf.if %true {
        %249 = tensor.empty(%c1) : tensor<?x15xf16>
        %250 = math.rsqrt %5 : tensor<16x16x2xf32>
        %251 = math.absi %4 : tensor<16x16x2xi32>
        %c1_i32_55 = arith.constant 1 : i32
        affine.store %c1_i32_55, %74[%c1, %c2] : memref<3x15xi32>
        %252 = arith.addi %c355370246_i64, %c366308732_i64 : i64
        memref.copy %alloc_17, %alloc_9 : memref<3x15xi1> to memref<3x15xi1>
        %253 = tensor.empty() : tensor<16x16x2xi1>
        %cst_56 = arith.constant 3.513600e+04 : f16
      }
      %247 = vector.broadcast %cst : f32 to vector<2xf32>
      %dest_53, %accumulated_value_54 = vector.scan <mul>, %53, %247 {inclusive = false, reduction_dim = 1 : i64} : vector<2x15xf32>, vector<2xf32>
      %248 = math.cttz %12 : tensor<16x16x2xi16>
      scf.yield %alloc_7 : memref<2xf32>
    }
    %94 = math.absf %11 : tensor<2xf32>
    %95 = index.divu %c7, %c0
    %96 = arith.ori %true, %false : i1
    %97 = arith.ori %true, %true : i1
    %98 = bufferization.clone %alloc_9 : memref<3x15xi1> to memref<3x15xi1>
    %99 = memref.realloc %alloc_8 : memref<2xi64> to memref<2xi64>
    %100 = vector.broadcast %cst : f32 to vector<f32>
    %101 = vector.transfer_write %100, %0[%81, %c1, %c14] : vector<f32>, tensor<16x16x2xf32>
    %102 = affine.min affine_map<(d0, d1) -> (d0 mod 8, 0)>(%c14, %c6)
    %103 = arith.remsi %true, %true : i1
    %alloc_31 = memref.alloc() : memref<15x2xi1>
    %104 = tensor.empty() : tensor<2x2xi1>
    %105 = linalg.matmul ins(%3, %alloc_31 : tensor<2x15xi1>, memref<15x2xi1>) outs(%104 : tensor<2x2xi1>) -> tensor<2x2xi1>
    %106 = vector.insert %48, %53 [0] : vector<15xf32> into vector<2x15xf32>
    %107 = index.divu %c6, %102
    %108 = arith.ceildivsi %c744113698_i64, %c1563714217_i64 : i64
    %109 = arith.ori %c355370246_i64, %c744113698_i64 : i64
    %110 = vector.broadcast %cst : f32 to vector<2x15xf32>
    %111 = vector.fma %110, %110, %52 : vector<2x15xf32>
    %112 = math.absf %9 : tensor<3x15xf16>
    %113 = vector.broadcast %false_4 : i1 to vector<2xi1>
    %dest, %accumulated_value = vector.scan <maxf>, %111, %48 {inclusive = true, reduction_dim = 0 : i64} : vector<2x15xf32>, vector<15xf32>
    %114 = arith.maxsi %c1563714217_i64, %c1563714217_i64 : i64
    %generated_32 = tensor.generate %c4 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %243 = arith.remui %c3052_i16, %c-2423_i16 : i16
      %244 = scf.index_switch %55 -> memref<16x16x2xi1> 
      case 1 {
        %247 = math.copysign %0, %5 : tensor<16x16x2xf32>
        %248 = arith.muli %c3052_i16, %c3052_i16 : i16
        %249 = arith.remf %cst_1, %65 : f16
        %250 = math.atan2 %9, %9 : tensor<3x15xf16>
        %c-30267_i16 = arith.constant -30267 : i16
        %251 = tensor.empty() : tensor<3x15xf32>
        %252 = vector.broadcast %cst_0 : f32 to vector<2xf32>
        %dest_52, %accumulated_value_53 = vector.scan <add>, %110, %252 {inclusive = true, reduction_dim = 1 : i64} : vector<2x15xf32>, vector<2xf32>
        %253 = math.absi %2 : tensor<2xi1>
        %254 = arith.remf %cst, %cst_0 : f32
        memref.store %false, %alloc_17[%c1, %c1] : memref<3x15xi1>
        %255 = vector.multi_reduction <maxf>, %52, %cst [0, 1] : vector<2x15xf32> to f32
        %256 = tensor.empty() : tensor<3x15xi16>
        %257 = memref.atomic_rmw maxs %c355370246_i64, %alloc_18[%c4, %c4, %c1] : (i64, memref<16x16x2xi64>) -> i64
        %258 = arith.remf %255, %cst_0 : f32
        %259 = vector.transpose %113, [0] : vector<2xi1> to vector<2xi1>
        %260 = index.divu %77, %102
        %alloc_54 = memref.alloc() : memref<16x16x2xi1>
        scf.yield %alloc_54 : memref<16x16x2xi1>
      }
      default {
        %247 = math.log10 %5 : tensor<16x16x2xf32>
        %248 = vector.splat %65 : vector<3x15xf16>
        %alloc_52 = memref.alloc() : memref<16x16x2xi64>
        memref.copy %alloc_18, %alloc_52 : memref<16x16x2xi64> to memref<16x16x2xi64>
        %249 = index.mul %c7, %107
        vector.print %20 : vector<15xf16>
        %inserted_53 = tensor.insert %c1563714217_i64 into %splat[%c0] : tensor<2xi64>
        %250 = bufferization.clone %93 : memref<2xf32> to memref<2xf32>
        %alloc_54 = memref.alloc() : memref<16x16x2xf32>
        memref.copy %alloc_10, %alloc_54 : memref<16x16x2xf32> to memref<16x16x2xf32>
        %251 = tensor.empty() : tensor<3x15xi64>
        %252 = math.copysign %87, %87 : tensor<3x15xf32>
        %253 = arith.xori %c3052_i16, %c-2423_i16 : i16
        %254 = arith.ceildivsi %c3052_i16, %c3052_i16 : i16
        %255 = math.roundeven %11 : tensor<2xf32>
        memref.copy %alloc_8, %alloc_11 : memref<2xi64> to memref<2xi64>
        %256 = math.exp2 %50 : f16
        %257 = math.round %cst_3 : f16
        %alloc_55 = memref.alloc() : memref<16x16x2xi1>
        scf.yield %alloc_55 : memref<16x16x2xi1>
      }
      %245 = math.round %87 : tensor<3x15xf32>
      %246 = arith.muli %c744113698_i64, %c156345344_i64 : i64
      tensor.yield %false_4 : i1
    } : tensor<?x16x2xi1>
    %115 = arith.xori %c-20430_i16, %c3052_i16 : i16
    %116 = index.mul %c5, %c7
    %117 = arith.remf %cst_3, %cst_2 : f16
    %118 = math.fma %87, %87, %87 : tensor<3x15xf32>
    memref.copy %alloc_7, %93 : memref<2xf32> to memref<2xf32>
    %true_33 = index.bool.constant true
    %119 = math.absi %c1563714217_i64 : i64
    %120 = math.exp %5 : tensor<16x16x2xf32>
    %121 = arith.remsi %c-20430_i16, %c-20430_i16 : i16
    %122 = bufferization.to_tensor %alloc_18 : memref<16x16x2xi64>
    %cast = tensor.cast %13 : tensor<3x15xi16> to tensor<?x?xi16>
    %123 = memref.alloca_scope  -> (f32) {
      %243 = arith.shli %c1563714217_i64, %c355370246_i64 : i64
      %244 = index.sub %102, %102
      %245 = arith.addi %true, %true_33 : i1
      %246 = math.tanh %5 : tensor<16x16x2xf32>
      %247 = vector.transpose %48, [0] : vector<15xf32> to vector<15xf32>
      %248 = math.atan2 %50, %50 : f16
      %249 = arith.andi %c744113698_i64, %c1563714217_i64 : i64
      %250 = arith.shrsi %c-20430_i16, %c-2423_i16 : i16
      memref.tensor_store %2, %alloc_20 : memref<2xi1>
      %251 = arith.minf %cst_2, %65 : f16
      %252 = vector.broadcast %73 : index to vector<16xindex>
      vector.scatter %alloc_15[%c0] [%252], %61, %61 : memref<2xi1>, vector<16xindex>, vector<16xi1>, vector<16xi1>
      %253 = arith.minf %65, %cst_1 : f16
      %254 = bufferization.to_tensor %98 : memref<3x15xi1>
      %255 = affine.apply affine_map<(d0) -> (d0 * 17 - 1)>(%88)
      %256 = arith.minf %65, %cst_2 : f16
      %257 = arith.ori %c1563714217_i64, %c156345344_i64 : i64
      %258 = vector.matrix_multiply %61, %61 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi1>, vector<16xi1>) -> vector<1xi1>
      %259 = index.mul %40, %116
      %260 = index.castu %c355370246_i64 : i64 to index
      %alloc_52 = memref.alloc() : memref<15x16xi1>
      %261 = tensor.empty() : tensor<3x16xi1>
      %262 = linalg.matmul ins(%254, %alloc_52 : tensor<3x15xi1>, memref<15x16xi1>) outs(%261 : tensor<3x16xi1>) -> tensor<3x16xi1>
      %263 = index.floordivs %c13, %75
      %collapsed_53 = tensor.collapse_shape %6 [[0, 1]] : tensor<2x15xi32> into tensor<30xi32>
      %264 = arith.subi %c3052_i16, %c-2423_i16 : i16
      %265 = vector.extract %84[12] : vector<15xi1>
      %266 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 * 64)>(%263, %116, %c11, %c5)
      %267 = index.sub %c4, %c10
      %268 = math.log10 %cst_1 : f16
      %269 = affine.max affine_map<(d0, d1) -> (d1 + 8, d0 + d1 + 8, d0)>(%c3, %244)
      %270 = math.exp2 %50 : f16
      vector.print %113 : vector<2xi1>
      %271 = arith.maxsi %c366308732_i64, %c355370246_i64 : i64
      bufferization.dealloc_tensor %3 : tensor<2x15xi1>
      memref.alloca_scope.return %cst_0 : f32
    }
    %124 = vector.broadcast %c0 : index to vector<15xindex>
    vector.scatter %alloc_13[%c0, %c1] [%124], %84, %48 : memref<3x15xf32>, vector<15xindex>, vector<15xi1>, vector<15xf32>
    %rank = tensor.rank %0 : tensor<16x16x2xf32>
    %125 = vector.broadcast %77 : index to vector<16xindex>
    %c0_i32 = arith.constant 0 : i32
    %126 = vector.broadcast %c0_i32 : i32 to vector<16xi32>
    vector.scatter %alloc_6[%c1, %c14] [%125], %61, %126 : memref<3x15xi32>, vector<16xindex>, vector<16xi1>, vector<16xi32>
    %127 = math.exp %0 : tensor<16x16x2xf32>
    %128 = arith.ori %true, %false : i1
    %129 = math.cttz %splat : tensor<2xi64>
    scf.if %false_4 {
      %243 = vector.broadcast %c3 : index to vector<3xindex>
      %244 = vector.broadcast %false_4 : i1 to vector<3xi1>
      %245 = vector.broadcast %c156345344_i64 : i64 to vector<3xi64>
      vector.scatter %alloc[%c0, %c0] [%243], %244, %245 : memref<2x15xi64>, vector<3xindex>, vector<3xi1>, vector<3xi64>
      %246 = arith.cmpi sge, %false_4, %false : i1
      %247 = arith.remsi %true_33, %false_4 : i1
      %248 = math.exp2 %11 : tensor<2xf32>
      scf.if %true {
        %253 = vector.broadcast %true_33 : i1 to vector<3xi1>
        %254 = vector.maskedload %alloc_21[%c1], %253, %253 : memref<2xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
        %255 = arith.ceildivsi %false, %false : i1
        %256 = tensor.empty() : tensor<15x3xi1>
        %257 = tensor.empty() : tensor<2x3xi1>
        %258 = linalg.matmul ins(%3, %256 : tensor<2x15xi1>, tensor<15x3xi1>) outs(%257 : tensor<2x3xi1>) -> tensor<2x3xi1>
        %alloc_52 = memref.alloc() : memref<16x16x2xi1>
        %259 = math.tan %cst : f32
        %260 = affine.apply affine_map<(d0) -> ((-(d0 ceildiv 16)) mod 16)>(%37)
        %261 = arith.ori %c355370246_i64, %c744113698_i64 : i64
        %262 = arith.minui %c-20430_i16, %c3052_i16 : i16
      }
      %249 = arith.remf %123, %cst : f32
      %250 = math.cttz %17 : tensor<2x15xi16>
      %251 = vector.broadcast %cst_0 : f32 to vector<15x15xf32>
      %252 = vector.outerproduct %48, %48, %251 {kind = #vector.kind<add>} : vector<15xf32>, vector<15xf32>
    } else {
      %243 = math.copysign %5, %0 : tensor<16x16x2xf32>
      %244 = arith.shrsi %c1563714217_i64, %c1563714217_i64 : i64
      %245 = index.add %92, %73
      %246 = affine.min affine_map<(d0) -> ((d0 + 16) * 128)>(%73)
      %alloca_52 = memref.alloca() : memref<3x15xi1>
      %247 = scf.if %true -> (memref<2xi1>) {
        %249 = bufferization.to_tensor %alloc_16 : memref<3x15xi64>
        %250 = index.floordivs %75, %c3
        %251 = math.tanh %9 : tensor<3x15xf16>
        %252 = math.cos %cst_0 : f32
        %253 = affine.min affine_map<(d0, d1) -> ((d1 ceildiv 64) floordiv 32, d1, d0)>(%88, %37)
        %254 = math.cos %0 : tensor<16x16x2xf32>
        %inserted_54 = tensor.insert %cst into %generated[%c0, %c6] : tensor<?x15xf32>
        %255 = arith.ceildivsi %false, %true_33 : i1
        scf.yield %alloc_15 : memref<2xi1>
      } else {
        %249 = math.log10 %87 : tensor<3x15xf32>
        %250 = arith.floordivsi %false, %true_33 : i1
        %251 = arith.minsi %c1563714217_i64, %c355370246_i64 : i64
        %252 = memref.load %93[%c1] : memref<2xf32>
        %253 = math.floor %0 : tensor<16x16x2xf32>
        %254 = math.ipowi %2, %2 : tensor<2xi1>
        %255 = math.absf %11 : tensor<2xf32>
        %256 = math.powf %50, %cst_2 : f16
        scf.yield %alloc_21 : memref<2xi1>
      }
      %248 = math.log1p %cst_0 : f32
      %alloc_53 = memref.alloc() : memref<16x16x2xf16>
    }
    %130 = affine.min affine_map<(d0, d1, d2) -> (-d1)>(%116, %c11, %37)
    %splat_34 = tensor.splat %cst_3 : tensor<2xf16>
    %131 = arith.remui %false_4, %true : i1
    %132 = vector.splat %true_33 : vector<3x15xi1>
    %cst_35 = arith.constant 5.580800e+04 : f16
    %133 = arith.ceildivsi %c744113698_i64, %c355370246_i64 : i64
    %134 = vector.insertelement %c1563714217_i64, %85[%c10 : index] : vector<15xi64>
    %135 = arith.xori %false_4, %false_4 : i1
    %136 = vector.shuffle %84, %61 [0, 1, 2, 3, 4, 5, 10, 11, 13, 14, 15, 16, 17, 18, 20, 23, 25, 26, 27, 28] : vector<15xi1>, vector<16xi1>
    %137 = vector.reduction <minsi>, %83 : vector<15xi64> into i64
    %138 = arith.minf %cst_0, %cst : f32
    %c1_i32 = arith.constant 1 : i32
    %from_elements = tensor.from_elements %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32 : tensor<16x16x2xi32>
    %139 = vector.transpose %100, [] : vector<f32> to vector<f32>
    %140 = index.mul %55, %75
    %alloca = memref.alloca() : memref<2xf32>
    %141 = tensor.empty() : tensor<2xf16>
    %mapped = linalg.map ins(%alloc_5, %alloc_14 : memref<2xf16>, memref<2xf16>) outs(%141 : tensor<2xf16>)
      (%in: f16, %in_52: f16) {
        %243 = math.roundeven %0 : tensor<16x16x2xf32>
        %244 = math.exp %in_52 : f16
        %alloc_53 = memref.alloc() : memref<16x16x2xi1>
        %245 = math.log %cst_1 : f16
        %246 = vector.reduction <or>, %62 : vector<16xi64> into i64
        %247 = vector.maskedload %alloc_11[%c1], %84, %83 : memref<2xi64>, vector<15xi1>, vector<15xi64> into vector<15xi64>
        %248 = index.floordivs %c3, %rank
        %false_54 = index.bool.constant false
        %alloc_55 = memref.alloc() : memref<3x15xf16>
        memref.tensor_store %9, %alloc_55 : memref<3x15xf16>
        %249 = math.round %splat_34 : tensor<2xf16>
        %250 = index.add %rank, %55
        %251 = bufferization.clone %alloc_7 : memref<2xf32> to memref<2xf32>
        %252 = vector.broadcast %false : i1 to vector<15x15xi1>
        %253 = vector.outerproduct %84, %84, %252 {kind = #vector.kind<and>} : vector<15xi1>, vector<15xi1>
        %254 = arith.remui %false_54, %false : i1
        %255 = math.log %0 : tensor<16x16x2xf32>
        %256 = arith.remf %123, %cst : f32
        %from_elements_56 = tensor.from_elements %false, %false, %true, %true, %false, %false_4, %false_54, %false, %true_33, %true, %true_33, %false, %false, %false, %false_54, %false_4, %false, %true_33, %false_54, %true, %true_33, %false_54, %true_33, %false, %false_4, %false, %false, %false, %true, %false, %false, %false_54, %true_33, %true, %false, %false_4, %false, %true, %false_54, %false_4, %true_33, %false_4, %true, %true_33, %true, %false_4, %false_4, %false, %true, %true_33, %true_33, %true, %false_54, %true_33, %false_4, %false_54, %false_54, %false_54, %false, %true, %false, %false_54, %false_4, %true, %false_54, %false_4, %false_4, %true, %true, %false, %false, %false_4, %false_54, %false, %true_33, %true_33, %true, %false, %false, %false_4, %false_4, %false, %true_33, %false, %false, %true, %false, %true_33, %false_54, %false_4, %false_4, %true, %true_33, %false_4, %false_4, %false, %false_4, %false_54, %false_4, %false_4, %false, %false, %false, %false_4, %false, %true, %false_4, %true_33, %false_4, %false_4, %false_4, %false_54, %false_54, %true_33, %false_4, %true_33, %false, %false, %false_4, %false, %false, %true, %false_54, %false, %true, %false, %true_33, %false, %false_4, %false_54, %false, %false, %false_54, %false_54, %true, %false, %false_54, %false, %false_4, %false_4, %false_4, %false_4, %true, %true, %true, %true_33, %false, %true_33, %true_33, %true_33, %true_33, %true_33, %false_4, %true_33, %true_33, %false_4, %false_54, %true_33, %false_4, %false_54, %false_54, %false_4, %true_33, %true_33, %false_54, %false_54, %false_4, %false, %false_54, %false_4, %false, %true, %false_54, %false_4, %false_54, %false_54, %false_4, %false_54, %false_4, %true_33, %true, %true_33, %true_33, %false_4, %false, %false_54, %false_4, %true, %false_54, %true_33, %false, %false_4, %false_54, %false, %true_33, %false_4, %false, %false, %false_54, %false, %true, %false, %true, %false_4, %false, %false, %true, %true, %false_4, %false_4, %false_4, %false, %false_54, %false, %true_33, %true_33, %false, %true_33, %true, %false_4, %false_4, %true_33, %false, %true, %true_33, %true, %false_4, %false_4, %true_33, %true, %false_4, %false_54, %true, %false_54, %false_4, %false, %false_54, %false, %false_54, %false_4, %true_33, %false, %false_54, %true, %false, %false_54, %false_54, %false_54, %true_33, %false_4, %false_4, %false_54, %false_54, %false, %true, %false_4, %false, %false_4, %true_33, %false_4, %true, %false, %false_54, %false_54, %false, %false_54, %false, %false_4, %false_54, %true, %true_33, %true, %true, %true_33, %true_33, %true_33, %false, %false_4, %false_4, %false_54, %false, %false_4, %false_54, %false_54, %true_33, %false_4, %false, %false_4, %false, %false, %false_54, %false_4, %false, %false_54, %false_4, %true_33, %false_54, %true, %false_54, %true, %false_54, %true, %true_33, %false_4, %false_4, %false_54, %true, %false_54, %false_54, %true_33, %false_4, %false_54, %false, %false, %true, %false_4, %false, %false, %true, %false_4, %true, %true, %false_4, %false, %false_4, %false_4, %false_54, %false, %true, %true_33, %true, %false, %false_4, %true_33, %true, %false_54, %true, %false_54, %false_4, %true, %true_33, %true_33, %false_4, %true_33, %false_4, %true_33, %false_54, %false, %true, %false_4, %true, %false, %false, %false_4, %false_54, %false, %true, %true_33, %false, %false_54, %false_54, %true, %true, %false, %false_54, %false, %true_33, %true, %false, %true_33, %false, %true_33, %true_33, %true_33, %false_4, %false, %true_33, %false_4, %true_33, %true_33, %true_33, %false_54, %false, %true_33, %true_33, %false_4, %false, %true, %true_33, %false_4, %true_33, %true, %true, %true_33, %false, %false_54, %false, %true, %true_33, %true_33, %false_54, %false_54, %true_33, %true_33, %true_33, %false_54, %false, %true, %false_4, %false_54, %true, %false_4, %false_54, %true, %true, %false_54, %false_54, %false_4, %false, %true, %false_4, %true_33, %true, %true, %true, %true, %true_33, %true_33, %false_4, %true_33, %true, %false_4, %false, %false_4, %true, %true, %true_33, %true_33, %false_4, %false_4, %false_54, %true, %true, %false_4, %false_4, %false_4, %true_33, %true_33, %true, %false_54, %false_54, %false_54, %false_54, %false_4, %false, %true_33, %true_33, %true_33, %false, %false_54, %true, %false, %false_54, %true_33, %false_4, %false, %true, %false_54, %false, %false, %false_54, %true, %true_33, %true, %true_33, %false, %true, %false, %false_4, %false_4, %false_54, %false_54, %false_4, %true_33, %false, %true_33, %true_33, %true, %false_54, %false_54, %true_33, %true, %true, %false, %false, %true, %true_33, %false_4, %true_33, %true_33, %false, %false_4, %true, %true, %true, %false_4, %false_4, %false, %false_54, %false_54, %true_33, %true_33 : tensor<16x16x2xi1>
        affine.store %in, %alloc_5[%c6] : memref<2xf16>
        %257 = vector.broadcast %in : f16 to vector<f16>
        vector.transfer_write %257, %alloc_14[%81] : vector<f16>, memref<2xf16>
        %258 = vector.broadcast %c5 : index to vector<16xindex>
        %259 = vector.broadcast %123 : f32 to vector<16xf32>
        vector.scatter %93[%c1] [%258], %61, %259 : memref<2xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
        %260 = tensor.empty() : tensor<15x16xi64>
        %261 = tensor.empty() : tensor<3x16xi64>
        %262 = linalg.matmul ins(%15, %260 : tensor<3x15xi64>, tensor<15x16xi64>) outs(%261 : tensor<3x16xi64>) -> tensor<3x16xi64>
        %263 = arith.minf %in_52, %in : f16
        %264 = vector.bitcast %20 : vector<15xf16> to vector<15xf16>
        %265 = math.floor %5 : tensor<16x16x2xf32>
        %266 = vector.multi_reduction <mul>, %60, %60 [] : vector<16xi64> to vector<16xi64>
        %267 = index.floordivs %c6, %c12
        %268 = math.tanh %87 : tensor<3x15xf32>
        bufferization.dealloc_tensor %14 : tensor<2x15xi16>
        %269 = vector.broadcast %c744113698_i64 : i64 to vector<15x15xi64>
        %270 = vector.outerproduct %247, %247, %269 {kind = #vector.kind<and>} : vector<15xi64>, vector<15xi64>
        %dest_57, %accumulated_value_58 = vector.scan <add>, %110, %48 {inclusive = false, reduction_dim = 0 : i64} : vector<2x15xf32>, vector<15xf32>
        %271 = index.divu %116, %107
        %272 = arith.addi %c744113698_i64, %c355370246_i64 : i64
        %cst_59 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_59 : f16
      }
    %142 = math.floor %splat_34 : tensor<2xf16>
    %143 = arith.shrsi %true, %false_4 : i1
    %144 = arith.shrui %c355370246_i64, %c366308732_i64 : i64
    memref.store %c366308732_i64, %alloc_8[%c1] : memref<2xi64>
    %145 = arith.divui %true, %false_4 : i1
    %146 = arith.ceildivsi %c355370246_i64, %c744113698_i64 : i64
    %cast_36 = tensor.cast %11 : tensor<2xf32> to tensor<?xf32>
    %147 = math.fpowi %123, %c1_i32 : f32, i32
    bufferization.dealloc_tensor %11 : tensor<2xf32>
    %148 = arith.ceildivsi %false_4, %true : i1
    %149 = vector.matrix_multiply %84, %84 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi1>, vector<15xi1>) -> vector<1xi1>
    %expanded_37 = tensor.expand_shape %expanded [[0], [1, 2]] : tensor<2x1xf32> into tensor<2x1x1xf32>
    %150 = arith.negf %cst_2 : f16
    %151 = math.log1p %11 : tensor<2xf32>
    %152 = vector.reduction <mul>, %61 : vector<16xi1> into i1
    %inserted_38 = tensor.insert %cst_3 into %141[%c1] : tensor<2xf16>
    %153 = math.sqrt %65 : f16
    %154 = arith.xori %false, %true_33 : i1
    %155 = index.divu %75, %rank
    %156 = arith.minsi %c366308732_i64, %c355370246_i64 : i64
    %157 = index.add %c14, %c3
    %158 = vector.broadcast %cst : f32 to vector<2xf32>
    %dest_39, %accumulated_value_40 = vector.scan <add>, %111, %158 {inclusive = false, reduction_dim = 1 : i64} : vector<2x15xf32>, vector<2xf32>
    vector.print %85 : vector<15xi64>
    %159 = math.tanh %expanded : tensor<2x1xf32>
    %alloc_41 = memref.alloc() : memref<16x16x2xf32>
    %160 = arith.maxsi %c3052_i16, %c3052_i16 : i16
    %161 = vector.matrix_multiply %84, %61 {lhs_columns = 1 : i32, lhs_rows = 15 : i32, rhs_columns = 16 : i32} : (vector<15xi1>, vector<16xi1>) -> vector<240xi1>
    %162 = vector.reduction <maxf>, %20 : vector<15xf16> into f16
    %163 = scf.index_switch %c3 -> i64 
    case 1 {
      scf.index_switch %rank 
      case 1 {
        %alloc_57 = memref.alloc() : memref<2xi1>
        %254 = vector.broadcast %true_33 : i1 to vector<3xi1>
        %255 = vector.maskedload %alloc_15[%c0], %254, %254 : memref<2xi1>, vector<3xi1>, vector<3xi1> into vector<3xi1>
        %256 = vector.broadcast %cst_3 : f16 to vector<16x16x2xf16>
        %257 = vector.insertelement %c1563714217_i64, %83[%c1 : index] : vector<15xi64>
        %258 = tensor.empty(%130, %c1) : tensor<?x?x2xi64>
        %259 = index.mul %59, %c6
        %260 = vector.broadcast %c12 : index to vector<2xindex>
        vector.scatter %98[%c0, %c7] [%260], %113, %113 : memref<3x15xi1>, vector<2xindex>, vector<2xi1>, vector<2xi1>
        %261 = arith.shrsi %c744113698_i64, %c355370246_i64 : i64
        %rank_58 = tensor.rank %0 : tensor<16x16x2xf32>
        %262 = memref.load %alloc_20[%c1] : memref<2xi1>
        %263 = affine.apply affine_map<(d0) -> (0)>(%140)
        %splat_59 = tensor.splat %c744113698_i64 : tensor<16x16x2xi64>
        %264 = math.sqrt %expanded_37 : tensor<2x1x1xf32>
        %265 = math.round %123 : f32
        %alloca_60 = memref.alloca() : memref<16x16x2xi1>
        %266 = math.log1p %expanded_37 : tensor<2x1x1xf32>
        scf.yield
      }
      default {
        %254 = arith.remsi %false, %false : i1
        %255 = tensor.empty() : tensor<15x15xi64>
        %256 = tensor.empty() : tensor<3x15xi64>
        %257 = linalg.matmul ins(%splat_26, %255 : tensor<3x15xi64>, tensor<15x15xi64>) outs(%256 : tensor<3x15xi64>) -> tensor<3x15xi64>
        %258 = index.castu %c2 : index to i32
        %259 = arith.maxf %cst_2, %cst_2 : f16
        %260 = vector.broadcast %c1_i32 : i32 to vector<i32>
        vector.transfer_write %260, %alloc_6[%155, %c11] : vector<i32>, memref<3x15xi32>
        bufferization.dealloc_tensor %13 : tensor<3x15xi16>
        %261 = math.round %cst_2 : f16
        %262 = arith.addi %c-20430_i16, %c3052_i16 : i16
        %263 = math.log1p %splat_34 : tensor<2xf16>
        %264 = memref.load %alloc_13[%c1, %c3] : memref<3x15xf32>
        %265 = tensor.empty() : tensor<2xi16>
        vector.print %53 : vector<2x15xf32>
        %dest_57, %accumulated_value_58 = vector.scan <mul>, %53, %48 {inclusive = true, reduction_dim = 0 : i64} : vector<2x15xf32>, vector<15xf32>
        %266 = vector.multi_reduction <mul>, %83, %85 [] : vector<15xi64> to vector<15xi64>
        %267 = arith.remf %50, %cst_2 : f16
        %268 = arith.addf %cst_0, %cst_0 : f32
      }
      %243 = affine.if affine_set<(d0) : ((d0 mod 8 + d0) mod 16 == 0, (d0 * 2) floordiv 8 >= 0, (d0 * 2) floordiv 8 >= 0, d0 mod 8 == 0)>(%c0) -> memref<3x15xf32> {
        %254 = arith.xori %true, %false_4 : i1
        %255 = vector.broadcast %cst : f32 to vector<16x16x2xf32>
        %256 = vector.fma %255, %255, %255 : vector<16x16x2xf32>
        %257 = bufferization.clone %alloc_13 : memref<3x15xf32> to memref<3x15xf32>
        %258 = arith.maxui %false, %true_33 : i1
        %259 = arith.ori %false, %false : i1
        %260 = arith.addi %c1_i32, %c1_i32 : i32
        %261 = arith.xori %c1_i32, %c1_i32 : i32
        %262 = vector.splat %c3052_i16 : vector<2xi16>
        affine.yield %257 : memref<3x15xf32>
      } else {
        %254 = arith.shli %true_33, %false : i1
        %255 = vector.multi_reduction <mul>, %110, %48 [0] : vector<2x15xf32> to vector<15xf32>
        %256 = index.sizeof
        %257 = affine.max affine_map<(d0, d1, d2, d3) -> (d0, d3 ceildiv 4, d3, d1)>(%c7, %c13, %c2, %95)
        %258 = tensor.empty(%rank) : tensor<?x16x2xi64>
        affine.store %c1_i32, %alloc_6[%c5, %c12] : memref<3x15xi32>
        %259 = vector.broadcast %c14 : index to vector<2xindex>
        %260 = vector.broadcast %c744113698_i64 : i64 to vector<2xi64>
        vector.scatter %alloc_18[%c13, %c8, %c0] [%259], %113, %260 : memref<16x16x2xi64>, vector<2xindex>, vector<2xi1>, vector<2xi64>
        %cast_57 = tensor.cast %splat_34 : tensor<2xf16> to tensor<?xf16>
        affine.yield %alloc_13 : memref<3x15xf32>
      }
      %dest_52, %accumulated_value_53 = vector.scan <mul>, %111, %48 {inclusive = true, reduction_dim = 0 : i64} : vector<2x15xf32>, vector<15xf32>
      %244 = index.sub %c14, %c11
      %245 = math.roundeven %50 : f16
      %246 = index.sub %c9, %rank
      %expanded_54 = tensor.expand_shape %8 [[0], [1], [2, 3]] : tensor<16x16x2xi64> into tensor<16x16x2x1xi64>
      %collapsed_55 = tensor.collapse_shape %3 [[0, 1]] : tensor<2x15xi1> into tensor<30xi1>
      memref.tensor_store %5, %alloc_10 : memref<16x16x2xf32>
      %247 = arith.xori %c1_i32, %c1_i32 : i32
      %248 = vector.broadcast %c744113698_i64 : i64 to vector<2x15xi64>
      %249 = arith.ceildivsi %c366308732_i64, %c1563714217_i64 : i64
      %250 = arith.shrsi %false_4, %true : i1
      %251 = vector.broadcast %123 : f32 to vector<16x16x2xf32>
      %252 = vector.fma %251, %251, %251 : vector<16x16x2xf32>
      %253 = arith.divsi %c-2423_i16, %c3052_i16 : i16
      %cst_56 = arith.constant 1.84168141E+9 : f32
      scf.yield %c366308732_i64 : i64
    }
    case 2 {
      %243 = math.log10 %cst_3 : f16
      %244 = tensor.empty() : tensor<3x15xi1>
      %mapped_52 = linalg.map ins(%alloc_17 : memref<3x15xi1>) outs(%244 : tensor<3x15xi1>)
        (%in: i1) {
          %256 = arith.remf %cst_1, %cst_1 : f16
          %257 = math.exp2 %5 : tensor<16x16x2xf32>
          %258 = arith.divui %true, %true_33 : i1
          %collapsed_54 = tensor.collapse_shape %15 [[0, 1]] : tensor<3x15xi64> into tensor<45xi64>
          %259 = bufferization.clone %alloc_18 : memref<16x16x2xi64> to memref<16x16x2xi64>
          %260 = math.rsqrt %expanded : tensor<2x1xf32>
          %261 = vector.broadcast %123 : f32 to vector<2x15xf32>
          %262 = vector.fma %261, %111, %53 : vector<2x15xf32>
          %263 = math.fma %splat_34, %141, %141 : tensor<2xf16>
          %264 = arith.addi %c355370246_i64, %c744113698_i64 : i64
          %265 = index.castu %c3052_i16 : i16 to index
          %266 = arith.maxsi %c1_i32, %c1_i32 : i32
          %267 = arith.shrui %c366308732_i64, %c744113698_i64 : i64
          %268 = arith.divsi %c156345344_i64, %c366308732_i64 : i64
          %269 = math.cos %5 : tensor<16x16x2xf32>
          %270 = arith.ori %c1_i32, %c1_i32 : i32
          %271 = math.round %9 : tensor<3x15xf16>
          %272 = tensor.empty() : tensor<15x16xi64>
          %273 = tensor.empty() : tensor<3x16xi64>
          %274 = linalg.matmul ins(%10, %272 : tensor<3x15xi64>, tensor<15x16xi64>) outs(%273 : tensor<3x16xi64>) -> tensor<3x16xi64>
          %275 = arith.maxsi %c-2423_i16, %c-20430_i16 : i16
          %276 = arith.addf %cst_3, %cst_3 : f16
          %277 = index.ceildivs %rank, %73
          %278 = math.rsqrt %0 : tensor<16x16x2xf32>
          %from_elements_55 = tensor.from_elements %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32, %c1_i32 : tensor<16x16x2xi32>
          %279 = math.log10 %expanded_37 : tensor<2x1x1xf32>
          %280 = index.ceildivs %c5, %73
          %281 = math.fma %expanded, %expanded, %expanded : tensor<2x1xf32>
          %282 = memref.load %alloc_20[%c0] : memref<2xi1>
          %283 = math.floor %splat_34 : tensor<2xf16>
          %284 = vector.broadcast %false : i1 to vector<16x16xi1>
          %285 = vector.outerproduct %61, %61, %284 {kind = #vector.kind<minui>} : vector<16xi1>, vector<16xi1>
          %286 = memref.load %alloc_8[%c1] : memref<2xi64>
          %287 = arith.cmpf ueq, %cst_0, %cst : f32
          %288 = arith.maxsi %c3052_i16, %c-2423_i16 : i16
          %289 = tensor.empty() : tensor<2x15xi32>
          %true_56 = arith.constant true
          linalg.yield %true_56 : i1
        }
      %245 = vector.broadcast %false : i1 to vector<2x2xi1>
      %246 = vector.outerproduct %113, %113, %245 {kind = #vector.kind<xor>} : vector<2xi1>, vector<2xi1>
      %247 = arith.shrsi %c366308732_i64, %c355370246_i64 : i64
      scf.execute_region {
        %256 = arith.ori %c156345344_i64, %c366308732_i64 : i64
        %257 = math.cos %9 : tensor<3x15xf16>
        %258 = math.fma %cst_2, %cst_1, %65 : f16
        %expanded_54 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<3x15xi64> into tensor<3x15x1xi64>
        %259 = arith.floordivsi %c156345344_i64, %c355370246_i64 : i64
        %260 = math.tanh %87 : tensor<3x15xf32>
        %from_elements_55 = tensor.from_elements %c3052_i16, %c-2423_i16, %c-2423_i16, %c-20430_i16, %c-20430_i16, %c-2423_i16, %c3052_i16, %c-2423_i16, %c-2423_i16, %c3052_i16, %c-2423_i16, %c3052_i16, %c-20430_i16, %c-20430_i16, %c3052_i16, %c-2423_i16, %c-2423_i16, %c-2423_i16, %c-2423_i16, %c-20430_i16, %c-2423_i16, %c-2423_i16, %c-2423_i16, %c-20430_i16, %c-20430_i16, %c-2423_i16, %c-2423_i16, %c-2423_i16, %c-20430_i16, %c-2423_i16 : tensor<2x15xi16>
        %261 = math.floor %123 : f32
        %262 = math.ceil %141 : tensor<2xf16>
        %263 = vector.broadcast %123 : f32 to vector<2x15xf32>
        %264 = vector.fma %263, %111, %263 : vector<2x15xf32>
        %265 = math.fpowi %cst_2, %c1_i32 : f16, i32
        %266 = arith.xori %c355370246_i64, %c366308732_i64 : i64
        %267 = arith.muli %false_4, %true_33 : i1
        %268 = math.ceil %9 : tensor<3x15xf16>
        %inserted_56 = tensor.insert %false into %104[%c1, %c0] : tensor<2x2xi1>
        %269 = arith.maxsi %c-2423_i16, %c3052_i16 : i16
        scf.yield
      }
      %248 = math.ipowi %reduced, %18 : tensor<i64>
      %249 = arith.remsi %c1_i32, %c1_i32 : i32
      %250 = index.mul %107, %88
      %251 = math.log1p %splat_34 : tensor<2xf16>
      %cast_53 = tensor.cast %104 : tensor<2x2xi1> to tensor<?x?xi1>
      %252 = bufferization.clone %alloc_14 : memref<2xf16> to memref<2xf16>
      %253 = arith.muli %c-2423_i16, %c3052_i16 : i16
      %254 = math.ipowi %8, %8 : tensor<16x16x2xi64>
      scf.if %false {
        %cast_54 = tensor.cast %10 : tensor<3x15xi64> to tensor<?x?xi64>
        %256 = bufferization.clone %alloc_20 : memref<2xi1> to memref<2xi1>
        %257 = index.divu %47, %88
        %258 = vector.broadcast %cst_0 : f32 to vector<2x15xf32>
        %259 = vector.fma %258, %111, %110 : vector<2x15xf32>
        memref.copy %alloc_9, %98 : memref<3x15xi1> to memref<3x15xi1>
        %260 = vector.broadcast %cst : f32 to vector<2x15xf32>
        %261 = vector.fma %260, %259, %53 : vector<2x15xf32>
        %262 = arith.remf %50, %50 : f16
        memref.copy %alloc_7, %93 : memref<2xf32> to memref<2xf32>
      } else {
        %256 = arith.andi %c355370246_i64, %c366308732_i64 : i64
        %257 = arith.remf %50, %50 : f16
        %collapsed_54 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<16x16x2xf32> into tensor<256x2xf32>
        %258 = affine.apply affine_map<(d0) -> (d0 * 17 - 1)>(%157)
        bufferization.dealloc_tensor %from_elements : tensor<16x16x2xi32>
        %259 = tensor.empty() : tensor<15x2xi64>
        %260 = tensor.empty() : tensor<3x2xi64>
        %261 = linalg.matmul ins(%15, %259 : tensor<3x15xi64>, tensor<15x2xi64>) outs(%260 : tensor<3x2xi64>) -> tensor<3x2xi64>
        %262 = affine.load %alloc_14[%c5] : memref<2xf16>
        %263 = math.powf %65, %cst_2 : f16
      }
      memref.copy %74, %alloc_12 : memref<3x15xi32> to memref<3x15xi32>
      %255 = memref.atomic_rmw minu %c1_i32, %74[%c2, %c8] : (i32, memref<3x15xi32>) -> i32
      scf.yield %c355370246_i64 : i64
    }
    case 3 {
      %inserted_52 = tensor.insert %c1_i32 into %7[%c0, %c13] : tensor<2x15xi32>
      %243 = index.castu %false_4 : i1 to index
      %244 = index.divu %37, %77
      %245 = arith.remui %false_4, %true_33 : i1
      %246 = vector.broadcast %c1563714217_i64 : i64 to vector<2xi64>
      %247 = math.absf %splat_34 : tensor<2xf16>
      %248 = vector.bitcast %85 : vector<15xi64> to vector<15xi64>
      %249 = arith.xori %c156345344_i64, %c744113698_i64 : i64
      %250 = arith.negf %cst_2 : f16
      %251 = math.copysign %expanded, %expanded : tensor<2x1xf32>
      %alloca_53 = memref.alloca() : memref<16x16x2xi32>
      %252 = index.mul %37, %88
      %253 = vector.load %alloc_17[%c1, %c7] : memref<3x15xi1>, vector<2xi1>
      %alloc_54 = memref.alloc() : memref<2x15xi16>
      %254 = vector.create_mask %157, %55 : vector<3x15xi1>
      %255 = vector.transpose %161, [0] : vector<240xi1> to vector<240xi1>
      scf.yield %c156345344_i64 : i64
    }
    case 4 {
      %243 = arith.xori %false, %false_4 : i1
      %244 = index.ceildivu %c8, %c2
      %245 = vector.matrix_multiply %149, %61 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 16 : i32} : (vector<1xi1>, vector<16xi1>) -> vector<16xi1>
      %246 = vector.broadcast %true_33 : i1 to vector<16x16xi1>
      %247 = vector.outerproduct %61, %61, %246 {kind = #vector.kind<xor>} : vector<16xi1>, vector<16xi1>
      %248 = vector.broadcast %123 : f32 to vector<2xf32>
      %249 = vector.fma %248, %248, %248 : vector<2xf32>
      %250 = vector.bitcast %149 : vector<1xi1> to vector<1xi1>
      %splat_52 = tensor.splat %cst_3 : tensor<2xf16>
      %251 = math.floor %cst_3 : f16
      %252 = arith.xori %false, %true : i1
      %253 = tensor.empty() : tensor<15xi16>
      %254 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%253 : tensor<15xi16>) outs(%expanded_29 : tensor<3x15x1xi16>) {
      ^bb0(%in: i16, %out: i16):
        %260 = affine.max affine_map<(d0) -> (-((d0 * 2 - 8) mod 128), ((d0 * 2) floordiv 32) ceildiv 64)>(%155)
        %261 = vector.multi_reduction <minsi>, %61, %61 [] : vector<16xi1> to vector<16xi1>
        %262 = math.log %expanded_37 : tensor<2x1x1xf32>
        %263 = arith.cmpf false, %cst_3, %cst_2 : f16
        bufferization.dealloc_tensor %2 : tensor<2xi1>
        %264 = vector.extract %61[6] : vector<16xi1>
        %265 = index.sub %c13, %c3
        %expanded_56 = tensor.expand_shape %104 [[0], [1, 2]] : tensor<2x2xi1> into tensor<2x2x1xi1>
        %266 = vector.transpose %111, [1, 0] : vector<2x15xf32> to vector<15x2xf32>
        %267 = arith.divsi %c366308732_i64, %c366308732_i64 : i64
        %268 = math.absf %65 : f16
        %alloca_57 = memref.alloca() : memref<2x15xi1>
        %269 = arith.shrsi %c-20430_i16, %in : i16
        %false_58 = index.bool.constant false
        %270 = vector.broadcast %c1_i32 : i32 to vector<16x16x2xi32>
        %271 = vector.broadcast %true : i1 to vector<16x16x2xi1>
        %272 = vector.gather %1[%c3, %107, %c12] [%270], %271, %270 : tensor<16x16x2xi32>, vector<16x16x2xi32>, vector<16x16x2xi1>, vector<16x16x2xi32> into vector<16x16x2xi32>
        %273 = bufferization.clone %alloc_8 : memref<2xi64> to memref<2xi64>
        %274 = math.log %65 : f16
        %alloc_59 = memref.alloc() : memref<16x16x2xf32>
        memref.copy %alloc_10, %alloc_59 : memref<16x16x2xf32> to memref<16x16x2xf32>
        %275 = index.castu %92 : index to i32
        %276 = vector.broadcast %140 : index to vector<15xindex>
        vector.scatter %alloc_18[%c6, %c3, %c0] [%276], %84, %83 : memref<16x16x2xi64>, vector<15xindex>, vector<15xi1>, vector<15xi64>
        %277 = index.sizeof
        %278 = vector.extract_strided_slice %52 {offsets = [0], sizes = [1], strides = [1]} : vector<2x15xf32> to vector<1x15xf32>
        %279 = vector.broadcast %77 : index to vector<2xindex>
        vector.scatter %alloc_7[%c1] [%279], %113, %248 : memref<2xf32>, vector<2xindex>, vector<2xi1>, vector<2xf32>
        %280 = index.floordivs %88, %c7
        %281 = arith.ori %c3052_i16, %c-20430_i16 : i16
        %282 = arith.floordivsi %c-2423_i16, %c-20430_i16 : i16
        %283 = arith.muli %c1_i32, %c1_i32 : i32
        %alloc_60 = memref.alloc() : memref<3x15xf32>
        %284 = arith.addi %false_58, %false_4 : i1
        %285 = math.log1p %expanded : tensor<2x1xf32>
        %286 = arith.addf %cst_0, %cst : f32
        %287 = vector.broadcast %123 : f32 to vector<16x16x2xf32>
        %288 = vector.fma %287, %287, %287 : vector<16x16x2xf32>
        linalg.yield %c3052_i16 : i16
      } -> tensor<3x15x1xi16>
      %alloc_53 = memref.alloc() : memref<2x15xi32>
      %255 = arith.muli %c1_i32, %c1_i32 : i32
      %256 = arith.addi %c355370246_i64, %c355370246_i64 : i64
      %257 = scf.execute_region -> index {
        %dest_56, %accumulated_value_57 = vector.scan <mul>, %110, %48 {inclusive = false, reduction_dim = 0 : i64} : vector<2x15xf32>, vector<15xf32>
        %260 = vector.maskedload %alloc_19[%c0, %c13], %61, %61 : memref<2x15xi1>, vector<16xi1>, vector<16xi1> into vector<16xi1>
        %alloc_58 = memref.alloc() : memref<16x16x2xi32>
        memref.tensor_store %from_elements, %alloc_58 : memref<16x16x2xi32>
        %261 = arith.remui %c-20430_i16, %c-2423_i16 : i16
        %262 = index.ceildivu %c7, %107
        %263 = vector.reduction <xor>, %60 : vector<16xi64> into i64
        %264 = index.mul %107, %c6
        %265 = arith.maxsi %c366308732_i64, %c366308732_i64 : i64
        %inserted_59 = tensor.insert %cst_0 into %5[%c2, %c12, %c1] : tensor<16x16x2xf32>
        %266 = math.log1p %11 : tensor<2xf32>
        %267 = math.exp %splat_52 : tensor<2xf16>
        %268 = math.fma %splat_34, %141, %splat_34 : tensor<2xf16>
        %269 = affine.load %alloc_10[%c14, %c13, %c2] : memref<16x16x2xf32>
        %270 = index.mul %59, %130
        memref.store %false, %alloc_17[%c2, %c6] : memref<3x15xi1>
        %271 = tensor.empty() : tensor<15x16xi64>
        %272 = tensor.empty() : tensor<3x16xi64>
        %273 = linalg.matmul ins(%splat_26, %271 : tensor<3x15xi64>, tensor<15x16xi64>) outs(%272 : tensor<3x16xi64>) -> tensor<3x16xi64>
        scf.yield %c5 : index
      }
      %258 = vector.multi_reduction <xor>, %149, %true [0] : vector<1xi1> to i1
      %alloc_54 = memref.alloc() : memref<16x2xi16>
      %alloc_55 = memref.alloc() : memref<16xi16>
      %259 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_54, %alloc_55 : memref<16x2xi16>, memref<16xi16>) outs(%12 : tensor<16x16x2xi16>) {
      ^bb0(%in: i16, %in_56: i16, %out: i16):
        %260 = arith.remui %c156345344_i64, %c156345344_i64 : i64
        affine.store %cst_3, %alloc_14[%c1] : memref<2xf16>
        %261 = arith.remf %cst_0, %cst_0 : f32
        %262 = vector.transpose %249, [0] : vector<2xf32> to vector<2xf32>
        %263 = memref.atomic_rmw minf %cst_0, %alloc_13[%c1, %c0] : (f32, memref<3x15xf32>) -> f32
        %264 = vector.broadcast %c1_i32 : i32 to vector<2xi32>
        %alloc_57 = memref.alloc() : memref<3x15xi32>
        vector.print %111 : vector<2x15xf32>
        %265 = vector.multi_reduction <maxf>, %48, %48 [] : vector<15xf32> to vector<15xf32>
        %266 = arith.ceildivsi %c1563714217_i64, %c1563714217_i64 : i64
        %267 = vector.broadcast %123 : f32 to vector<3x15xf32>
        %268 = vector.fma %267, %267, %267 : vector<3x15xf32>
        memref.store %cst_1, %alloc_14[%c1] : memref<2xf16>
        %269 = arith.remf %65, %50 : f16
        %270 = arith.divf %50, %50 : f16
        %271 = arith.remsi %c1_i32, %c1_i32 : i32
        %272 = index.add %37, %130
        %273 = math.log %141 : tensor<2xf16>
        memref.tensor_store %15, %alloc_16 : memref<3x15xi64>
        %274 = arith.subi %false, %true_33 : i1
        %275 = arith.divsi %in, %in_56 : i16
        %cst_58 = arith.constant 5.001600e+04 : f16
        bufferization.dealloc_tensor %0 : tensor<16x16x2xf32>
        %276 = arith.remsi %false, %false : i1
        %277 = arith.remf %50, %cst_2 : f16
        bufferization.dealloc_tensor %7 : tensor<2x15xi32>
        %278 = index.mul %73, %272
        %279 = vector.broadcast %29 : index to vector<2xindex>
        vector.scatter %alloc_21[%c1] [%279], %113, %113 : memref<2xi1>, vector<2xindex>, vector<2xi1>, vector<2xi1>
        %280 = math.sqrt %11 : tensor<2xf32>
        %281 = arith.maxf %65, %65 : f16
        %282 = math.round %splat_52 : tensor<2xf16>
        %283 = math.copysign %0, %5 : tensor<16x16x2xf32>
        %inserted_59 = tensor.insert %123 into %5[%c4, %c13, %c0] : tensor<16x16x2xf32>
        linalg.yield %out : i16
      } -> tensor<16x16x2xi16>
      scf.yield %c156345344_i64 : i64
    }
    default {
      %243 = math.expm1 %0 : tensor<16x16x2xf32>
      %244 = math.sqrt %0 : tensor<16x16x2xf32>
      %245 = vector.load %alloc_11[%c0] : memref<2xi64>, vector<2x15xi64>
      affine.store %c156345344_i64, %alloc_16[%c0, %c10] : memref<3x15xi64>
      %246 = tensor.empty() : tensor<2x15xi1>
      %mapped_52 = linalg.map ins(%3, %alloc_19 : tensor<2x15xi1>, memref<2x15xi1>) outs(%246 : tensor<2x15xi1>)
        (%in: i1, %in_54: i1) {
          %258 = vector.broadcast %true_33 : i1 to vector<1x1xi1>
          %259 = vector.outerproduct %149, %149, %258 {kind = #vector.kind<add>} : vector<1xi1>, vector<1xi1>
          %260 = arith.andi %true_33, %false : i1
          %261 = vector.transpose %20, [0] : vector<15xf16> to vector<15xf16>
          %262 = arith.muli %c1563714217_i64, %c366308732_i64 : i64
          %true_55 = arith.constant true
          %263 = arith.floordivsi %c355370246_i64, %c355370246_i64 : i64
          %264 = tensor.empty() : tensor<16x16x2xf16>
          %265 = math.ctlz %14 : tensor<2x15xi16>
          %266 = affine.min affine_map<(d0, d1, d2, d3) -> (d1)>(%c8, %c10, %c14, %c3)
          %alloc_56 = memref.alloc() : memref<2x15xi32>
          memref.tensor_store %7, %alloc_56 : memref<2x15xi32>
          %267 = arith.divsi %true, %true : i1
          %268 = vector.multi_reduction <maxui>, %60, %c355370246_i64 [0] : vector<16xi64> to i64
          %269 = index.sizeof
          %270 = vector.transpose %84, [0] : vector<15xi1> to vector<15xi1>
          %271 = affine.min affine_map<(d0) -> (d0 - (d0 + 8) + 64, (d0 + d0 - (d0 + 8) + 64) mod 32)>(%c1)
          %272 = vector.broadcast %false : i1 to vector<2x15xi1>
          %273 = vector.broadcast %c1_i32 : i32 to vector<2x15xi32>
          %274 = vector.gather %splat[%266] [%273], %272, %245 : tensor<2xi64>, vector<2x15xi32>, vector<2x15xi1>, vector<2x15xi64> into vector<2x15xi64>
          %275 = vector.reduction <mul>, %61 : vector<16xi1> into i1
          %276 = vector.broadcast %c3052_i16 : i16 to vector<3xi16>
          %277 = vector.transfer_write %276, %16[%c15, %73] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xi16>, tensor<2x15xi16>
          %278 = arith.xori %in, %false : i1
          %279 = bufferization.clone %alloc_19 : memref<2x15xi1> to memref<2x15xi1>
          %280 = bufferization.clone %alloc_5 : memref<2xf16> to memref<2xf16>
          %281 = vector.broadcast %c366308732_i64 : i64 to vector<16x16xi64>
          %282 = vector.outerproduct %62, %62, %281 {kind = #vector.kind<add>} : vector<16xi64>, vector<16xi64>
          %283 = arith.ori %c744113698_i64, %c156345344_i64 : i64
          %284 = math.cttz %246 : tensor<2x15xi1>
          %285 = index.sub %59, %116
          %286 = vector.extract_strided_slice %110 {offsets = [0], sizes = [1], strides = [1]} : vector<2x15xf32> to vector<1x15xf32>
          %287 = math.log %9 : tensor<3x15xf16>
          %alloca_57 = memref.alloca() : memref<16x16x2xf32>
          %288 = math.ceil %9 : tensor<3x15xf16>
          %289 = arith.subi %c3052_i16, %c-2423_i16 : i16
          %290 = math.log1p %11 : tensor<2xf32>
          %291 = vector.reduction <add>, %48 : vector<15xf32> into f32
          %false_58 = arith.constant false
          linalg.yield %false_58 : i1
        }
      %247 = math.tanh %expanded : tensor<2x1xf32>
      %248 = arith.minf %123, %123 : f32
      %249 = index.castu %c10 : index to i32
      %250 = bufferization.to_memref %expanded_29 : memref<3x15x1xi16>
      %251 = vector.broadcast %95 : index to vector<16xindex>
      %252 = vector.broadcast %123 : f32 to vector<16xf32>
      vector.scatter %alloc_13[%c0, %c10] [%251], %61, %252 : memref<3x15xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
      %253 = vector.bitcast %61 : vector<16xi1> to vector<16xi1>
      %254 = arith.cmpi ne, %false, %false_4 : i1
      %255 = arith.floordivsi %c366308732_i64, %c366308732_i64 : i64
      %256 = arith.minsi %c156345344_i64, %c366308732_i64 : i64
      %257 = vector.bitcast %111 : vector<2x15xf32> to vector<2x15xf32>
      %alloc_53 = memref.alloc() : memref<2x1xf32>
      memref.tensor_store %expanded, %alloc_53 : memref<2x1xf32>
      scf.yield %c366308732_i64 : i64
    }
    %rank_42 = tensor.rank %1 : tensor<16x16x2xi32>
    %164 = vector.extract_strided_slice %48 {offsets = [12], sizes = [1], strides = [1]} : vector<15xf32> to vector<1xf32>
    vector.print %60 : vector<16xi64>
    %165 = math.sqrt %11 : tensor<2xf32>
    %166 = vector.multi_reduction <mul>, %149, %149 [] : vector<1xi1> to vector<1xi1>
    memref.store %false, %alloc_9[%c1, %c14] : memref<3x15xi1>
    %167 = vector.transpose %100, [] : vector<f32> to vector<f32>
    %168 = math.atan2 %11, %11 : tensor<2xf32>
    affine.store %true, %alloc_19[%c5, %c0] : memref<2x15xi1>
    %169 = tensor.empty() : tensor<2x1xi32>
    %170 = math.fpowi %expanded, %169 : tensor<2x1xf32>, tensor<2x1xi32>
    %171 = index.castu %true_33 : i1 to index
    %172 = index.sub %171, %c9
    %173 = tensor.empty() : tensor<2xi16>
    %174 = vector.splat %c4 : vector<2x15xindex>
    %175 = vector.shuffle %161, %161 [3, 5, 9, 11, 12, 13, 17, 19, 20, 23, 24, 25, 26, 30, 31, 32, 33, 34, 35, 40, 45, 46, 47, 48, 49, 51, 55, 57, 59, 61, 63, 64, 65, 66, 69, 70, 72, 74, 75, 76, 77, 79, 80, 81, 82, 83, 84, 85, 88, 89, 90, 93, 94, 95, 96, 97, 98, 99, 100, 103, 107, 114, 115, 122, 124, 125, 132, 133, 134, 135, 138, 139, 140, 141, 142, 146, 147, 149, 152, 154, 155, 156, 158, 159, 163, 164, 165, 167, 168, 170, 172, 173, 174, 175, 177, 188, 189, 190, 191, 193, 194, 195, 199, 200, 203, 204, 205, 206, 209, 211, 212, 215, 217, 218, 221, 224, 226, 228, 229, 231, 233, 237, 239, 241, 242, 243, 244, 252, 255, 256, 257, 258, 262, 263, 266, 268, 269, 270, 271, 277, 278, 280, 281, 282, 284, 287, 291, 293, 296, 297, 299, 300, 301, 303, 305, 306, 307, 308, 311, 312, 316, 320, 323, 326, 329, 330, 334, 337, 340, 341, 344, 345, 347, 348, 349, 352, 353, 361, 364, 365, 366, 368, 372, 374, 376, 377, 381, 387, 396, 400, 403, 404, 407, 408, 409, 413, 414, 416, 417, 422, 423, 424, 426, 429, 430, 431, 435, 436, 438, 441, 443, 444, 445, 450, 451, 454, 455, 456, 462, 464, 466, 468, 469, 471, 472, 473, 474, 476, 477, 478] : vector<240xi1>, vector<240xi1>
    %176 = math.fma %cst, %123, %123 : f32
    scf.index_switch %c6 
    case 1 {
      %243 = arith.floordivsi %c-2423_i16, %c-2423_i16 : i16
      %244 = math.tanh %9 : tensor<3x15xf16>
      %245 = vector.multi_reduction <minui>, %85, %83 [] : vector<15xi64> to vector<15xi64>
      %246 = vector.matrix_multiply %60, %60 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi64>, vector<16xi64>) -> vector<1xi64>
      %247 = arith.subi %c156345344_i64, %c355370246_i64 : i64
      %248 = arith.ori %c355370246_i64, %c366308732_i64 : i64
      %249 = arith.ori %true, %true : i1
      %250 = index.castu %c366308732_i64 : i64 to index
      %251 = scf.index_switch %107 -> memref<2xi1> 
      case 1 {
        %259 = vector.broadcast %c366308732_i64 : i64 to vector<3xi64>
        %260 = vector.broadcast %false : i1 to vector<3xi1>
        %261 = vector.maskedload %alloc_18[%c7, %c13, %c0], %260, %259 : memref<16x16x2xi64>, vector<3xi1>, vector<3xi64> into vector<3xi64>
        %262 = vector.multi_reduction <or>, %83, %85 [] : vector<15xi64> to vector<15xi64>
        %263 = math.rsqrt %5 : tensor<16x16x2xf32>
        %264 = math.round %87 : tensor<3x15xf32>
        %265 = arith.shrsi %c744113698_i64, %c366308732_i64 : i64
        %266 = tensor.empty() : tensor<15x3xi32>
        %267 = tensor.empty() : tensor<2x3xi32>
        %268 = linalg.matmul ins(%7, %266 : tensor<2x15xi32>, tensor<15x3xi32>) outs(%267 : tensor<2x3xi32>) -> tensor<2x3xi32>
        %269 = math.rsqrt %splat_34 : tensor<2xf16>
        memref.store %c1563714217_i64, %alloc_11[%c0] : memref<2xi64>
        %270 = vector.reduction <minsi>, %84 : vector<15xi1> into i1
        vector.print %84 : vector<15xi1>
        %271 = vector.insertelement %cst, %48[%rank : index] : vector<15xf32>
        %alloc_52 = memref.alloc() : memref<2x15xi16>
        memref.tensor_store %14, %alloc_52 : memref<2x15xi16>
        %272 = math.exp2 %expanded_37 : tensor<2x1x1xf32>
        %273 = index.mul %29, %c4
        %274 = memref.atomic_rmw addf %cst_0, %alloc_13[%c2, %c10] : (f32, memref<3x15xf32>) -> f32
        %275 = bufferization.clone %alloc_6 : memref<3x15xi32> to memref<3x15xi32>
        scf.yield %alloc_20 : memref<2xi1>
      }
      case 2 {
        %259 = arith.cmpi slt, %c744113698_i64, %c1563714217_i64 : i64
        bufferization.dealloc_tensor %generated : tensor<?x15xf32>
        %260 = arith.muli %c156345344_i64, %c156345344_i64 : i64
        %261 = arith.divsi %c1563714217_i64, %c156345344_i64 : i64
        %262 = math.cos %11 : tensor<2xf32>
        %263 = math.sqrt %5 : tensor<16x16x2xf32>
        %264 = vector.broadcast %cst : f32 to vector<2x15xf32>
        %265 = vector.fma %264, %111, %111 : vector<2x15xf32>
        %266 = vector.transpose %61, [0] : vector<16xi1> to vector<16xi1>
        %267 = math.atan %50 : f16
        %268 = arith.subi %c1563714217_i64, %c366308732_i64 : i64
        %269 = vector.matrix_multiply %60, %246 {lhs_columns = 1 : i32, lhs_rows = 16 : i32, rhs_columns = 1 : i32} : (vector<16xi64>, vector<1xi64>) -> vector<16xi64>
        %270 = vector.shuffle %61, %61 [0, 3, 4, 5, 6, 10, 11, 14, 15, 17, 18, 21, 23, 25, 26, 27, 28, 29] : vector<16xi1>, vector<16xi1>
        %271 = arith.mulf %cst, %cst_0 : f32
        %272 = math.absf %50 : f16
        %273 = memref.load %alloc_18[%c10, %c2, %c0] : memref<16x16x2xi64>
        %274 = affine.max affine_map<(d0, d1, d2) -> (d2 + 82, d1, d2 + 82, d2 mod 16)>(%73, %116, %c7)
        scf.yield %alloc_20 : memref<2xi1>
      }
      default {
        %259 = arith.maxf %cst_2, %65 : f16
        %260 = math.rsqrt %expanded_37 : tensor<2x1x1xf32>
        %261 = math.round %cst_1 : f16
        %262 = vector.extract_strided_slice %84 {offsets = [9], sizes = [5], strides = [1]} : vector<15xi1> to vector<5xi1>
        %263 = math.cttz %122 : tensor<16x16x2xi64>
        %264 = math.exp2 %cst : f32
        %265 = math.sqrt %141 : tensor<2xf16>
        %266 = tensor.empty(%c5, %c13) : tensor<?x?x2xi16>
        memref.copy %98, %alloc_9 : memref<3x15xi1> to memref<3x15xi1>
        %267 = affine.min affine_map<(d0) -> ((d0 mod 32 + d0 + 16) * -8 + (d0 ceildiv 64) mod 128, -(d0 mod 32 + d0 + 16), d0 ceildiv 64 - (d0 + 16), (d0 mod 32 + d0 + 16) * -8 + (d0 ceildiv 64) mod 128)>(%c3)
        %268 = arith.negf %cst : f32
        %269 = vector.broadcast %cst : f32 to vector<15x15xf32>
        %270 = vector.outerproduct %48, %48, %269 {kind = #vector.kind<maxf>} : vector<15xf32>, vector<15xf32>
        %271 = math.exp2 %11 : tensor<2xf32>
        %272 = arith.maxsi %c-2423_i16, %c-20430_i16 : i16
        %273 = vector.broadcast %cst_0 : f32 to vector<2xf32>
        %dest_52, %accumulated_value_53 = vector.scan <add>, %52, %273 {inclusive = false, reduction_dim = 1 : i64} : vector<2x15xf32>, vector<2xf32>
        %274 = arith.xori %c366308732_i64, %c366308732_i64 : i64
        scf.yield %alloc_20 : memref<2xi1>
      }
      %252 = math.sqrt %87 : tensor<3x15xf32>
      %253 = arith.ori %false_4, %true_33 : i1
      %254 = index.add %c0, %c4
      %255 = vector.extract %48[9] : vector<15xf32>
      %256 = index.maxu %155, %c2
      %257 = arith.divsi %c366308732_i64, %c1563714217_i64 : i64
      %258 = index.mul %107, %c11
      scf.yield
    }
    case 2 {
      %243 = math.floor %cst : f32
      %true_52 = index.bool.constant true
      %244 = scf.if %true_33 -> (memref<16x16x2xi1>) {
        %257 = math.ipowi %c366308732_i64, %c1563714217_i64 : i64
        %258 = math.fma %0, %0, %5 : tensor<16x16x2xf32>
        %259 = math.atan2 %5, %5 : tensor<16x16x2xf32>
        %260 = vector.maskedload %98[%c0, %c10], %84, %84 : memref<3x15xi1>, vector<15xi1>, vector<15xi1> into vector<15xi1>
        %261 = index.divu %c2, %c4
        %262 = tensor.empty() : tensor<16x16x2xi32>
        %true_54 = arith.constant true
        %alloc_55 = memref.alloc() : memref<3x15xi64>
        %alloc_56 = memref.alloc() : memref<16x16x2xi1>
        scf.yield %alloc_56 : memref<16x16x2xi1>
      } else {
        %257 = math.absf %11 : tensor<2xf32>
        %258 = vector.extract_strided_slice %20 {offsets = [5], sizes = [2], strides = [1]} : vector<15xf16> to vector<2xf16>
        %259 = vector.shuffle %62, %62 [0, 5, 6, 10, 11, 12, 13, 15, 16, 19, 20, 22, 24, 26, 27, 29] : vector<16xi64>, vector<16xi64>
        %260 = index.sub %c9, %c0
        %261 = arith.divsi %c3052_i16, %c3052_i16 : i16
        %262 = arith.xori %true_52, %true_33 : i1
        %263 = vector.matrix_multiply %113, %161 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 120 : i32} : (vector<2xi1>, vector<240xi1>) -> vector<120xi1>
        %false_54 = index.bool.constant false
        %alloc_55 = memref.alloc() : memref<16x16x2xi1>
        scf.yield %alloc_55 : memref<16x16x2xi1>
      }
      %245 = scf.if %false -> (memref<16x16x2xi1>) {
        %257 = math.sqrt %splat_34 : tensor<2xf16>
        memref.store %c1_i32, %alloc_6[%c2, %c8] : memref<3x15xi32>
        %from_elements_54 = tensor.from_elements %cst, %cst, %cst, %123, %cst, %cst, %123, %123, %cst, %cst_0, %cst_0, %cst, %123, %cst, %cst, %123, %cst_0, %123, %123, %cst, %cst_0, %123, %cst, %123, %cst_0, %cst, %123, %123, %123, %cst : tensor<2x15xf32>
        %cst_55 = arith.constant 1.7647447E+9 : f32
        %alloc_56 = memref.alloc() : memref<16x16x2xf16>
        %258 = vector.broadcast %123 : f32 to vector<2xf32>
        %dest_57, %accumulated_value_58 = vector.scan <minf>, %52, %258 {inclusive = false, reduction_dim = 1 : i64} : vector<2x15xf32>, vector<2xf32>
        %259 = index.casts %c8 : index to i32
        %260 = math.absf %11 : tensor<2xf32>
        scf.yield %244 : memref<16x16x2xi1>
      } else {
        %257 = index.divu %c2, %37
        %cst_54 = arith.constant 4.630400e+04 : f16
        %258 = vector.broadcast %cst_0 : f32 to vector<16xf32>
        %259 = vector.maskedload %alloc_7[%c0], %61, %258 : memref<2xf32>, vector<16xi1>, vector<16xf32> into vector<16xf32>
        %260 = index.ceildivs %40, %172
        %261 = vector.extract_strided_slice %61 {offsets = [7], sizes = [9], strides = [1]} : vector<16xi1> to vector<9xi1>
        %262 = math.log10 %0 : tensor<16x16x2xf32>
        %263 = bufferization.clone %alloc_15 : memref<2xi1> to memref<2xi1>
        %264 = index.floordivs %c8, %107
        scf.yield %244 : memref<16x16x2xi1>
      }
      %246 = math.absi %c-2423_i16 : i16
      %247 = index.floordivs %172, %47
      %248 = math.sqrt %expanded : tensor<2x1xf32>
      %249 = math.tanh %cst : f32
      %250 = vector.bitcast %20 : vector<15xf16> to vector<15xf16>
      %251 = arith.xori %true_52, %false_4 : i1
      %252 = arith.minsi %c-2423_i16, %c-2423_i16 : i16
      %253 = arith.subi %c156345344_i64, %c744113698_i64 : i64
      %254 = arith.divsi %c744113698_i64, %c366308732_i64 : i64
      %alloc_53 = memref.alloc() : memref<2xi32>
      %255 = tensor.empty() : tensor<2x15xi64>
      %256 = affine.min affine_map<(d0) -> (d0 floordiv 4, -(d0 floordiv 4))>(%c13)
      scf.yield
    }
    case 3 {
      %243 = math.atan2 %9, %9 : tensor<3x15xf16>
      %244 = arith.remf %50, %50 : f16
      %245 = math.exp2 %87 : tensor<3x15xf32>
      %246 = vector.broadcast %37 : index to vector<2xindex>
      %247 = vector.broadcast %cst : f32 to vector<2xf32>
      vector.scatter %alloc_10[%c15, %c14, %c0] [%246], %113, %247 : memref<16x16x2xf32>, vector<2xindex>, vector<2xi1>, vector<2xf32>
      %248 = vector.reduction <minsi>, %60 : vector<16xi64> into i64
      %249 = arith.minsi %false, %true : i1
      %collapsed_52 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<16x16x2xi16> into tensor<256x2xi16>
      %alloc_53 = memref.alloc() : memref<3x15xf32>
      memref.copy %alloc_7, %93 : memref<2xf32> to memref<2xf32>
      %250 = scf.index_switch %c6 -> tensor<3x15xf32> 
      case 1 {
        %257 = bufferization.clone %alloc_6 : memref<3x15xi32> to memref<3x15xi32>
        %258 = math.log10 %expanded_37 : tensor<2x1x1xf32>
        %259 = bufferization.clone %alloc_15 : memref<2xi1> to memref<2xi1>
        %260 = math.sqrt %5 : tensor<16x16x2xf32>
        %261 = arith.remsi %true, %true : i1
        %262 = vector.broadcast %cst_0 : f32 to vector<2xf32>
        %263 = vector.fma %262, %262, %262 : vector<2xf32>
        %264 = arith.remui %false_4, %false : i1
        %265 = arith.minsi %c3052_i16, %c3052_i16 : i16
        %266 = arith.ceildivsi %false_4, %false_4 : i1
        %rank_54 = tensor.rank %173 : tensor<2xi16>
        %267 = math.round %9 : tensor<3x15xf16>
        %268 = math.rsqrt %9 : tensor<3x15xf16>
        %269 = vector.extract %262[0] : vector<2xf32>
        %270 = vector.broadcast %cst_0 : f32 to vector<3x15xf32>
        %271 = vector.fma %270, %270, %270 : vector<3x15xf32>
        %272 = index.divu %88, %40
        %273 = arith.ceildivsi %c-2423_i16, %c-20430_i16 : i16
        scf.yield %87 : tensor<3x15xf32>
      }
      default {
        %257 = arith.divsi %c1_i32, %c1_i32 : i32
        vector.print %84 : vector<15xi1>
        %258 = arith.cmpf one, %cst_1, %50 : f16
        %259 = arith.ceildivsi %c3052_i16, %c-2423_i16 : i16
        %260 = math.rsqrt %9 : tensor<3x15xf16>
        %261 = arith.addi %c366308732_i64, %c355370246_i64 : i64
        %262 = affine.load %alloc_18[%c11, %c9, %c10] : memref<16x16x2xi64>
        %263 = math.absi %false : i1
        %264 = tensor.empty() : tensor<256x15xi16>
        %265 = linalg.matmul ins(%collapsed_52, %14 : tensor<256x2xi16>, tensor<2x15xi16>) outs(%264 : tensor<256x15xi16>) -> tensor<256x15xi16>
        %266 = vector.multi_reduction <minui>, %84, %84 [] : vector<15xi1> to vector<15xi1>
        %267 = tensor.empty(%c10) : tensor<16x16x?xi1>
        %expanded_54 = tensor.expand_shape %expanded [[0], [1, 2]] : tensor<2x1xf32> into tensor<2x1x1xf32>
        affine.store %true_33, %alloc_17[%c12, %c4] : memref<3x15xi1>
        %268 = vector.broadcast %123 : f32 to vector<1x1xf32>
        %269 = vector.outerproduct %164, %164, %268 {kind = #vector.kind<minf>} : vector<1xf32>, vector<1xf32>
        %270 = memref.load %alloc_12[%c1, %c14] : memref<3x15xi32>
        %271 = arith.cmpi ugt, %c366308732_i64, %c355370246_i64 : i64
        scf.yield %87 : tensor<3x15xf32>
      }
      %251 = math.rsqrt %123 : f32
      %252 = affine.min affine_map<(d0) -> ((-d0) mod 4 - 28)>(%c0)
      %253 = math.roundeven %cst_3 : f16
      %254 = math.exp %50 : f16
      %255 = math.ceil %0 : tensor<16x16x2xf32>
      %256 = math.sqrt %11 : tensor<2xf32>
      scf.yield
    }
    case 4 {
      %243 = math.log1p %cst : f32
      %dest_52, %accumulated_value_53 = vector.scan <add>, %111, %48 {inclusive = false, reduction_dim = 0 : i64} : vector<2x15xf32>, vector<15xf32>
      %244 = vector.extract_strided_slice %60 {offsets = [13], sizes = [2], strides = [1]} : vector<16xi64> to vector<2xi64>
      memref.tensor_store %15, %alloc_16 : memref<3x15xi64>
      %inserted_54 = tensor.insert %c366308732_i64 into %10[%c1, %c1] : tensor<3x15xi64>
      %245 = arith.ceildivsi %false, %false : i1
      %246 = math.sqrt %65 : f16
      %inserted_55 = tensor.insert %c1_i32 into %from_elements[%c14, %c7, %c1] : tensor<16x16x2xi32>
      %247 = arith.maxf %50, %cst_3 : f16
      %248 = affine.apply affine_map<(d0, d1, d2) -> (d0 ceildiv 128 + d1)>(%c12, %c15, %c15)
      %249 = arith.xori %c1563714217_i64, %c744113698_i64 : i64
      %250 = arith.minui %c1563714217_i64, %c1563714217_i64 : i64
      %251 = math.ctpop %13 : tensor<3x15xi16>
      %252 = arith.maxsi %c355370246_i64, %c156345344_i64 : i64
      memref.store %true, %alloc_20[%c0] : memref<2xi1>
      %253 = math.sqrt %9 : tensor<3x15xf16>
      scf.yield
    }
    default {
      %243 = arith.shrsi %false_4, %true_33 : i1
      %244 = arith.negf %cst_2 : f16
      %245 = arith.xori %false, %false_4 : i1
      %246 = arith.xori %c-20430_i16, %c-2423_i16 : i16
      %247 = math.absi %6 : tensor<2x15xi32>
      %248 = arith.xori %c156345344_i64, %c1563714217_i64 : i64
      %249 = memref.atomic_rmw muli %c1_i32, %alloc_12[%c1, %c4] : (i32, memref<3x15xi32>) -> i32
      affine.for %arg1 = 0 to 112 {
      }
      %250 = arith.ori %true, %false_4 : i1
      %251 = arith.addf %cst_2, %cst_2 : f16
      %generated_52 = tensor.generate %c13 {
      ^bb0(%arg1: index):
        %258 = index.ceildivu %29, %102
        bufferization.dealloc_tensor %cast : tensor<?x?xi16>
        %259 = arith.xori %true_33, %true_33 : i1
        %260 = vector.extract_strided_slice %149 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
        tensor.yield %cst : f32
      } : tensor<?xf32>
      %252 = arith.divui %c156345344_i64, %c744113698_i64 : i64
      %253 = arith.divsi %c355370246_i64, %c1563714217_i64 : i64
      %254 = vector.broadcast %c14 : index to vector<16xindex>
      %255 = vector.broadcast %123 : f32 to vector<16xf32>
      vector.scatter %93[%c1] [%254], %61, %255 : memref<2xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
      %256 = scf.index_switch %77 -> tensor<3x15xi32> 
      case 1 {
        %rank_53 = tensor.rank %expanded_29 : tensor<3x15x1xi16>
        %258 = arith.addi %c-20430_i16, %c3052_i16 : i16
        %259 = math.fpowi %50, %c1_i32 : f16, i32
        %260 = arith.remsi %c-20430_i16, %c3052_i16 : i16
        %261 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 + 8, d2 floordiv 2, ((d3 ceildiv 32) floordiv 64) * 128, ((d2 floordiv 2) floordiv 4) floordiv 2)>(%c3, %c13, %47, %171)
        %alloca_54 = memref.alloca() : memref<2x15xf32>
        %c544775890_i64 = arith.constant 544775890 : i64
        %262 = math.tanh %cst_2 : f16
        %cst_55 = arith.constant 0x4DDA7CAA : f32
        %263 = arith.shli %true_33, %true : i1
        %264 = math.exp %11 : tensor<2xf32>
        %265 = vector.broadcast %123 : f32 to vector<15x15xf32>
        %266 = vector.outerproduct %48, %48, %265 {kind = #vector.kind<mul>} : vector<15xf32>, vector<15xf32>
        %267 = arith.remf %123, %123 : f32
        memref.copy %alloc_14, %alloc_5 : memref<2xf16> to memref<2xf16>
        %268 = bufferization.to_tensor %alloc_7 : memref<2xf32>
        bufferization.dealloc_tensor %173 : tensor<2xi16>
        %269 = tensor.empty() : tensor<3x15xi32>
        scf.yield %269 : tensor<3x15xi32>
      }
      default {
        %258 = vector.broadcast %cst_1 : f16 to vector<2x15xf16>
        %259 = index.sub %92, %130
        %260 = arith.maxf %cst, %123 : f32
        %261 = math.rsqrt %9 : tensor<3x15xf16>
        %262 = vector.transpose %53, [1, 0] : vector<2x15xf32> to vector<15x2xf32>
        %263 = arith.muli %c3052_i16, %c3052_i16 : i16
        %264 = math.sqrt %11 : tensor<2xf32>
        %c3495_i16 = arith.constant 3495 : i16
        %265 = arith.divui %c156345344_i64, %c1563714217_i64 : i64
        %266 = affine.min affine_map<(d0, d1, d2) -> (d2)>(%c11, %88, %c15)
        %267 = vector.reduction <mul>, %60 : vector<16xi64> into i64
        %268 = vector.broadcast %c4 : index to vector<3xindex>
        %269 = vector.broadcast %false_4 : i1 to vector<3xi1>
        vector.scatter %alloc_15[%c0] [%268], %269, %269 : memref<2xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
        %false_53 = index.bool.constant false
        %270 = math.copysign %5, %5 : tensor<16x16x2xf32>
        %271 = math.tanh %cst_0 : f32
        %272 = arith.xori %c-20430_i16, %c-20430_i16 : i16
        %273 = tensor.empty() : tensor<3x15xi32>
        scf.yield %273 : tensor<3x15xi32>
      }
      %257 = math.log %141 : tensor<2xf16>
    }
    scf.execute_region {
      %243 = math.fma %0, %0, %0 : tensor<16x16x2xf32>
      %244 = arith.minsi %c744113698_i64, %c366308732_i64 : i64
      %245 = vector.reduction <maxui>, %84 : vector<15xi1> into i1
      %246 = vector.load %74[%c0, %c9] : memref<3x15xi32>, vector<2x15xi32>
      %247 = index.divu %c1, %c13
      vector.print %20 : vector<15xf16>
      %248 = arith.subi %c156345344_i64, %c744113698_i64 : i64
      %249 = arith.xori %c-20430_i16, %c-20430_i16 : i16
      %splat_52 = tensor.splat %c156345344_i64 : tensor<16x16x2xi64>
      %250 = math.floor %9 : tensor<3x15xf16>
      %true_53 = index.bool.constant true
      %251 = arith.remui %true, %false_4 : i1
      %252 = math.rsqrt %9 : tensor<3x15xf16>
      %253 = tensor.empty() : tensor<3x15xi32>
      %254 = math.fpowi %9, %253 : tensor<3x15xf16>, tensor<3x15xi32>
      %255 = math.rsqrt %141 : tensor<2xf16>
      %256 = vector.multi_reduction <mul>, %164, %164 [] : vector<1xf32> to vector<1xf32>
      scf.yield
    }
    %177 = math.rsqrt %9 : tensor<3x15xf16>
    %178 = math.exp %11 : tensor<2xf32>
    %179 = vector.shuffle %62, %85 [0, 5, 6, 7, 9, 11, 12, 14, 16, 18, 19, 21, 22, 23, 26, 28, 29, 30] : vector<16xi64>, vector<15xi64>
    %180 = arith.remsi %false, %false : i1
    %181 = arith.floordivsi %true_33, %false : i1
    %182 = arith.negf %cst_1 : f16
    %183 = math.round %0 : tensor<16x16x2xf32>
    %184 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 floordiv 4 + 16, d1 floordiv 4, d2)>(%c3, %c6, %155, %73)
    %185 = affine.apply affine_map<(d0, d1, d2) -> (d2 * -2)>(%29, %40, %157)
    %186 = vector.multi_reduction <add>, %20, %65 [0] : vector<15xf16> to f16
    %187 = arith.maxsi %c156345344_i64, %c1563714217_i64 : i64
    %generated_43 = tensor.generate %47, %c1 {
    ^bb0(%arg1: index, %arg2: index):
      %243 = math.cttz %6 : tensor<2x15xi32>
      %244 = arith.cmpf true, %65, %65 : f16
      %245 = math.log1p %65 : f16
      %246 = arith.maxsi %true, %true : i1
      tensor.yield %c-2423_i16 : i16
    } : tensor<?x?xi16>
    %188 = affine.if affine_set<(d0) : (d0 ceildiv 8 - d0 == 0, d0 ceildiv 8 - d0 >= 0, -d0 == 0, ((-d0) ceildiv 128) * 4 - (d0 ceildiv 128 + d0 ceildiv 8) - (d0 ceildiv 8 - d0) == 0)>(%c11) -> memref<2x15xf32> {
      %243 = math.cos %5 : tensor<16x16x2xf32>
      affine.store %cst, %alloc_10[%c14, %c14, %c13] : memref<16x16x2xf32>
      %generated_52 = tensor.generate %130 {
      ^bb0(%arg1: index, %arg2: index, %arg3: index):
        %248 = vector.broadcast %c1_i32 : i32 to vector<i32>
        %249 = vector.transfer_write %248, %7[%c6, %c10] : vector<i32>, tensor<2x15xi32>
        %250 = vector.transpose %48, [0] : vector<15xf32> to vector<15xf32>
        memref.copy %alloc_9, %98 : memref<3x15xi1> to memref<3x15xi1>
        %251 = math.fpowi %186, %c1_i32 : f16, i32
        tensor.yield %c-2423_i16 : i16
      } : tensor<?x16x2xi16>
      %244 = vector.transpose %161, [0] : vector<240xi1> to vector<240xi1>
      %245 = arith.shli %c156345344_i64, %c355370246_i64 : i64
      %246 = math.roundeven %87 : tensor<3x15xf32>
      %247 = affine.apply affine_map<(d0, d1, d2) -> ((d0 - 16) * -2)>(%77, %116, %29)
      scf.index_switch %130 
      case 1 {
        %248 = vector.reduction <or>, %83 : vector<15xi64> into i64
        %249 = tensor.empty() : tensor<16x16x2xf16>
        vector.print %164 : vector<1xf32>
        %250 = math.tanh %cst_0 : f32
        %alloca_54 = memref.alloca() : memref<2x15xi1>
        vector.print %100 : vector<f32>
        %251 = arith.remf %186, %65 : f16
        %252 = vector.extract_strided_slice %60 {offsets = [4], sizes = [1], strides = [1]} : vector<16xi64> to vector<1xi64>
        memref.tensor_store %3, %alloc_19 : memref<2x15xi1>
        %253 = arith.remui %c366308732_i64, %c366308732_i64 : i64
        %254 = math.round %11 : tensor<2xf32>
        %255 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 + 128)>(%c13, %c0, %130, %c12)
        %256 = math.tanh %5 : tensor<16x16x2xf32>
        %257 = math.ceil %expanded_37 : tensor<2x1x1xf32>
        %258 = index.mul %185, %c7
        %259 = math.log %9 : tensor<3x15xf16>
        scf.yield
      }
      case 2 {
        %248 = vector.reduction <maxsi>, %84 : vector<15xi1> into i1
        %249 = tensor.empty() : tensor<3x15xi64>
        %alloc_54 = memref.alloc() : memref<2x15xi32>
        memref.tensor_store %6, %alloc_54 : memref<2x15xi32>
        %250 = arith.remsi %c3052_i16, %c-20430_i16 : i16
        %splat_55 = tensor.splat %c-2423_i16 : tensor<2xi16>
        %251 = math.log2 %11 : tensor<2xf32>
        %252 = arith.negf %186 : f16
        %253 = vector.transpose %111, [1, 0] : vector<2x15xf32> to vector<15x2xf32>
        %254 = arith.muli %true, %true_33 : i1
        %255 = math.roundeven %5 : tensor<16x16x2xf32>
        %256 = math.ceil %cst : f32
        %257 = arith.muli %c1_i32, %c1_i32 : i32
        %258 = vector.broadcast %cst_0 : f32 to vector<3x15xf32>
        %259 = vector.fma %258, %258, %258 : vector<3x15xf32>
        %260 = memref.load %alloc[%c0, %c8] : memref<2x15xi64>
        %261 = math.fpowi %cst_2, %c1_i32 : f16, i32
        %262 = math.floor %11 : tensor<2xf32>
        scf.yield
      }
      case 3 {
        vector.print %20 : vector<15xf16>
        %248 = memref.atomic_rmw andi %c1563714217_i64, %alloc[%c0, %c3] : (i64, memref<2x15xi64>) -> i64
        %249 = vector.broadcast %true : i1 to vector<3x15xi1>
        %250 = index.ceildivs %107, %88
        %251 = arith.remf %50, %cst_1 : f16
        %252 = math.absi %1 : tensor<16x16x2xi32>
        %253 = math.round %65 : f16
        %254 = arith.maxf %65, %cst_1 : f16
        %255 = index.add %155, %55
        %alloca_54 = memref.alloca() : memref<3x15xf32>
        %256 = arith.remf %123, %cst : f32
        %257 = tensor.empty() : tensor<3x15xi32>
        %258 = math.fpowi %9, %257 : tensor<3x15xf16>, tensor<3x15xi32>
        %259 = vector.transpose %111, [1, 0] : vector<2x15xf32> to vector<15x2xf32>
        %260 = index.mul %40, %27
        %261 = math.exp %65 : f16
        %262 = affine.apply affine_map<(d0, d1, d2) -> (d2 * -2)>(%c1, %116, %88)
        scf.yield
      }
      default {
        %248 = math.fma %cst_0, %cst_0, %123 : f32
        %249 = arith.maxf %cst, %123 : f32
        %250 = arith.remf %123, %123 : f32
        %251 = math.round %cst_2 : f16
        %252 = vector.extract %83[12] : vector<15xi64>
        %253 = vector.maskedload %alloc_21[%c1], %61, %61 : memref<2xi1>, vector<16xi1>, vector<16xi1> into vector<16xi1>
        %254 = arith.maxf %cst_0, %cst : f32
        %alloc_54 = memref.alloc() : memref<16x16x2xf16>
        %false_55 = index.bool.constant false
        %255 = arith.maxsi %c1_i32, %c1_i32 : i32
        %256 = vector.transpose %48, [0] : vector<15xf32> to vector<15xf32>
        %cast_56 = tensor.cast %expanded : tensor<2x1xf32> to tensor<?x?xf32>
        %257 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %149, %149, %true_33 : vector<1xi1>, vector<1xi1> into i1
        %258 = vector.matrix_multiply %149, %113 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<1xi1>, vector<2xi1>) -> vector<2xi1>
        %259 = vector.multi_reduction <minf>, %111, %48 [0] : vector<2x15xf32> to vector<15xf32>
        %expanded_57 = tensor.expand_shape %expanded_29 [[0], [1], [2, 3]] : tensor<3x15x1xi16> into tensor<3x15x1x1xi16>
      }
      %alloc_53 = memref.alloc() : memref<2x15xf32>
      affine.yield %alloc_53 : memref<2x15xf32>
    } else {
      %243 = vector.broadcast %c3 : index to vector<16xindex>
      %244 = vector.broadcast %123 : f32 to vector<16xf32>
      vector.scatter %93[%c1] [%243], %61, %244 : memref<2xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
      %245 = math.floor %cst_2 : f16
      %246 = memref.alloca_scope  -> (f16) {
        %252 = math.tanh %cst_1 : f16
        %253 = math.fma %186, %cst_3, %186 : f16
        %alloc_54 = memref.alloc() : memref<16x16x2xi32>
        memref.tensor_store %4, %alloc_54 : memref<16x16x2xi32>
        %254 = memref.atomic_rmw minu %c156345344_i64, %alloc_18[%c13, %c14, %c0] : (i64, memref<16x16x2xi64>) -> i64
        %255 = arith.negf %50 : f16
        memref.store %true, %alloc_9[%c1, %c0] : memref<3x15xi1>
        %256 = vector.load %alloc_13[%c2, %c13] : memref<3x15xf32>, vector<16x16x2xf32>
        %257 = index.divu %c7, %140
        %258 = math.exp2 %141 : tensor<2xf16>
        %259 = math.log1p %9 : tensor<3x15xf16>
        %260 = affine.apply affine_map<(d0, d1) -> (d0 mod 2)>(%rank_42, %c1)
        %261 = tensor.empty() : tensor<16x16x2xi1>
        %262 = math.log2 %9 : tensor<3x15xf16>
        %263 = arith.maxsi %c1563714217_i64, %c1563714217_i64 : i64
        %264 = tensor.empty() : tensor<2x15xf32>
        %265 = index.floordivs %c7, %c2
        %266 = math.ctpop %4 : tensor<16x16x2xi32>
        %267 = math.cttz %c156345344_i64 : i64
        %268 = arith.shrsi %c1_i32, %c1_i32 : i32
        bufferization.dealloc_tensor %expanded_37 : tensor<2x1x1xf32>
        %dest_55, %accumulated_value_56 = vector.scan <maxf>, %111, %48 {inclusive = true, reduction_dim = 0 : i64} : vector<2x15xf32>, vector<15xf32>
        %269 = math.sqrt %cst_2 : f16
        %270 = math.log1p %0 : tensor<16x16x2xf32>
        %271 = vector.broadcast %c366308732_i64 : i64 to vector<15xi64>
        vector.transfer_write %271, %alloc_16[%157, %77] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<15xi64>, memref<3x15xi64>
        %272 = arith.cmpf ueq, %50, %50 : f16
        %273 = bufferization.to_tensor %alloc_7 : memref<2xf32>
        %274 = index.floordivs %184, %47
        %275 = math.log %cst_3 : f16
        %276 = vector.broadcast %cst_0 : f32 to vector<2x15xf32>
        %alloc_57 = memref.alloc() : memref<16x16x2xi32>
        memref.tensor_store %1, %alloc_57 : memref<16x16x2xi32>
        %277 = math.log2 %123 : f32
        %278 = affine.apply affine_map<(d0, d1) -> (d0 + 1)>(%75, %172)
        memref.alloca_scope.return %186 : f16
      }
      %247 = vector.multi_reduction <minf>, %110, %53 [] : vector<2x15xf32> to vector<2x15xf32>
      %248 = tensor.empty() : tensor<3x15xi32>
      %249 = math.fpowi %9, %248 : tensor<3x15xf16>, tensor<3x15xi32>
      %alloc_52 = memref.alloc() : memref<16x16x2xi1>
      %250 = math.fpowi %50, %c1_i32 : f16, i32
      %251 = math.expm1 %11 : tensor<2xf32>
      %alloc_53 = memref.alloc() : memref<2x15xf32>
      affine.yield %alloc_53 : memref<2x15xf32>
    }
    %189 = arith.maxf %cst_1, %cst_1 : f16
    %190 = math.ceil %87 : tensor<3x15xf32>
    %191 = math.round %0 : tensor<16x16x2xf32>
    %192 = vector.broadcast %true : i1 to vector<240x240xi1>
    %193 = vector.outerproduct %161, %161, %192 {kind = #vector.kind<and>} : vector<240xi1>, vector<240xi1>
    %194 = arith.maxsi %c1563714217_i64, %c744113698_i64 : i64
    memref.tensor_store %15, %alloc_16 : memref<3x15xi64>
    %195 = vector.broadcast %c366308732_i64 : i64 to vector<15x15xi64>
    %196 = vector.outerproduct %83, %85, %195 {kind = #vector.kind<maxsi>} : vector<15xi64>, vector<15xi64>
    %alloc_44 = memref.alloc() : memref<2x15xi16>
    memref.tensor_store %16, %alloc_44 : memref<2x15xi16>
    %inserted_45 = tensor.insert %c3052_i16 into %14[%c0, %c1] : tensor<2x15xi16>
    %197 = math.absi %2 : tensor<2xi1>
    %198 = math.log %cst : f32
    %199 = arith.floordivsi %c-20430_i16, %c-2423_i16 : i16
    %200 = math.log %11 : tensor<2xf32>
    %201 = tensor.empty() : tensor<i1>
    %mapped_46 = linalg.map ins(%21, %22, %21 : tensor<i1>, tensor<i1>, tensor<i1>) outs(%201 : tensor<i1>)
      (%in: i1, %in_52: i1, %in_53: i1) {
        %243 = index.ceildivs %rank, %c6
        %244 = math.fpowi %cst_1, %c1_i32 : f16, i32
        %245 = math.absi %c744113698_i64 : i64
        %alloc_54 = memref.alloc() : memref<16x16x2xf32>
        %246 = vector.broadcast %cst : f32 to vector<16xf32>
        %247 = vector.maskedload %alloc_7[%c0], %61, %246 : memref<2xf32>, vector<16xi1>, vector<16xf32> into vector<16xf32>
        %248 = arith.xori %true_33, %true : i1
        %249 = arith.ori %true_33, %in_52 : i1
        %250 = math.log %123 : f32
        %251 = arith.cmpi eq, %c744113698_i64, %c744113698_i64 : i64
        %252 = vector.multi_reduction <add>, %20, %20 [] : vector<15xf16> to vector<15xf16>
        %alloc_55 = memref.alloc() : memref<2x2xi1>
        memref.tensor_store %104, %alloc_55 : memref<2x2xi1>
        %253 = math.log10 %splat_34 : tensor<2xf16>
        %254 = arith.minsi %c355370246_i64, %c744113698_i64 : i64
        %255 = arith.shli %c-2423_i16, %c-2423_i16 : i16
        %256 = vector.bitcast %61 : vector<16xi1> to vector<16xi1>
        %257 = math.absi %in_53 : i1
        %258 = arith.shrsi %c156345344_i64, %c744113698_i64 : i64
        %259 = index.mul %rank, %107
        %260 = arith.xori %in_53, %true_33 : i1
        %261 = vector.reduction <maxsi>, %113 : vector<2xi1> into i1
        %262 = math.floor %65 : f16
        %263 = index.casts %c156345344_i64 : i64 to index
        memref.store %65, %alloc_14[%c0] : memref<2xf16>
        %264 = arith.shrsi %c355370246_i64, %c156345344_i64 : i64
        %265 = math.copysign %9, %9 : tensor<3x15xf16>
        %alloc_56 = memref.alloc() : memref<16x16x2xi64>
        memref.copy %alloc_18, %alloc_56 : memref<16x16x2xi64> to memref<16x16x2xi64>
        %266 = arith.addi %c-20430_i16, %c-20430_i16 : i16
        %267 = math.round %9 : tensor<3x15xf16>
        %268 = vector.shuffle %84, %61 [0, 1, 2, 4, 6, 8, 11, 12, 13, 15, 16, 20, 23, 24, 25, 28, 30] : vector<15xi1>, vector<16xi1>
        %269 = math.tan %50 : f16
        %270 = affine.min affine_map<(d0, d1) -> (((d1 + 2) ceildiv 16) * 4, -d0 + 16, -(d0 + 64), d0 + d1 + 2)>(%59, %c14)
        scf.if %in_52 {
          %271 = math.cttz %1 : tensor<16x16x2xi32>
          %splat_58 = tensor.splat %186 : tensor<2xf16>
          %272 = vector.load %alloc_16[%c2, %c14] : memref<3x15xi64>, vector<2x15xi64>
          %273 = math.log10 %cst_2 : f16
          %274 = bufferization.clone %alloc_14 : memref<2xf16> to memref<2xf16>
          %275 = arith.floordivsi %c744113698_i64, %c1563714217_i64 : i64
          %276 = vector.multi_reduction <maxui>, %85, %85 [] : vector<15xi64> to vector<15xi64>
          %277 = math.ceil %cst_3 : f16
        }
        %true_57 = arith.constant true
        linalg.yield %true_57 : i1
      }
    memref.copy %alloc_12, %alloc_6 : memref<3x15xi32> to memref<3x15xi32>
    %202 = math.floor %0 : tensor<16x16x2xf32>
    %203 = vector.extract_strided_slice %52 {offsets = [0], sizes = [2], strides = [1]} : vector<2x15xf32> to vector<2x15xf32>
    %204 = memref.atomic_rmw minf %cst, %alloc_10[%c14, %c12, %c1] : (f32, memref<16x16x2xf32>) -> f32
    %205 = index.ceildivs %95, %130
    %206 = vector.transpose %62, [0] : vector<16xi64> to vector<16xi64>
    %207 = index.divu %c1, %c15
    %208 = math.roundeven %50 : f16
    %209 = arith.shli %c355370246_i64, %c156345344_i64 : i64
    %210 = memref.realloc %alloc_15 : memref<2xi1> to memref<15xi1>
    %211 = math.fpowi %cst_1, %c1_i32 : f16, i32
    %212 = math.exp %87 : tensor<3x15xf32>
    %213 = math.floor %65 : f16
    %214 = vector.insertelement %false_4, %61[%184 : index] : vector<16xi1>
    %215 = vector.transpose %48, [0] : vector<15xf32> to vector<15xf32>
    %216 = math.copysign %50, %65 : f16
    %217 = memref.load %alloc[%c0, %c2] : memref<2x15xi64>
    %218 = math.ceil %0 : tensor<16x16x2xf32>
    %219 = arith.ceildivsi %false, %true_33 : i1
    %220 = arith.remsi %c1563714217_i64, %c1563714217_i64 : i64
    %221 = arith.andi %false_4, %false : i1
    %collapsed = tensor.collapse_shape %6 [[0, 1]] : tensor<2x15xi32> into tensor<30xi32>
    %222 = vector.broadcast %185 : index to vector<2xindex>
    %223 = vector.broadcast %123 : f32 to vector<2xf32>
    vector.scatter %alloc_13[%c0, %c4] [%222], %113, %223 : memref<3x15xf32>, vector<2xindex>, vector<2xi1>, vector<2xf32>
    %224 = math.round %9 : tensor<3x15xf16>
    %alloca_47 = memref.alloca() : memref<3x15xf16>
    %collapsed_48 = tensor.collapse_shape %122 [[0, 1], [2]] : tensor<16x16x2xi64> into tensor<256x2xi64>
    %225 = arith.remui %true_33, %true_33 : i1
    %226 = arith.xori %c744113698_i64, %c355370246_i64 : i64
    %generated_49 = tensor.generate %184 {
    ^bb0(%arg1: index, %arg2: index):
      %243 = vector.broadcast %c-2423_i16 : i16 to vector<16x16x2xi16>
      %244 = arith.addf %cst_0, %cst : f32
      %245 = index.floordivs %rank, %157
      %246 = arith.divsi %true_33, %false : i1
      tensor.yield %false_4 : i1
    } : tensor<?x15xi1>
    %227 = arith.cmpi sge, %true, %false_4 : i1
    %228 = arith.remsi %c-2423_i16, %c-2423_i16 : i16
    %229 = index.castu %73 : index to i32
    %230 = arith.shrsi %c156345344_i64, %c744113698_i64 : i64
    %231 = arith.maxsi %c366308732_i64, %c744113698_i64 : i64
    %232 = index.add %rank, %40
    %233 = vector.extract_strided_slice %161 {offsets = [50], sizes = [88], strides = [1]} : vector<240xi1> to vector<88xi1>
    %234 = index.floordivs %171, %77
    %235 = arith.divui %c3052_i16, %c-20430_i16 : i16
    %236 = arith.remsi %c3052_i16, %c-2423_i16 : i16
    %237 = tensor.empty() : tensor<16x16x2xf32>
    %238 = linalg.copy ins(%5 : tensor<16x16x2xf32>) outs(%237 : tensor<16x16x2xf32>) -> tensor<16x16x2xf32>
    %239 = tensor.empty() : tensor<2x16x16xf32>
    %transposed = linalg.transpose ins(%alloc_10 : memref<16x16x2xf32>) outs(%239 : tensor<2x16x16xf32>) permutation = [2, 0, 1] 
    %240 = tensor.empty() : tensor<16xi16>
    %reduced_50 = linalg.reduce ins(%12 : tensor<16x16x2xi16>) outs(%240 : tensor<16xi16>) dimensions = [1, 2] 
      (%in: i16, %init: i16) {
        %243 = math.absf %50 : f16
        memref.tensor_store %15, %alloc_16 : memref<3x15xi64>
        %244 = arith.shli %c355370246_i64, %c366308732_i64 : i64
        %245 = arith.mulf %cst_0, %123 : f32
        %246 = math.roundeven %237 : tensor<16x16x2xf32>
        %247 = arith.remsi %true, %false_4 : i1
        %248 = math.copysign %cst_3, %cst_2 : f16
        %249 = arith.ceildivsi %c1563714217_i64, %c366308732_i64 : i64
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %241 = scf.parallel (%arg1, %arg2) = (%107, %73) to (%c11, %157) step (%c8, %c9) init (%alloc_11) -> memref<2xi64> {
      %243 = arith.minsi %false_4, %true_33 : i1
      %244 = math.exp %transposed : tensor<2x16x16xf32>
      memref.store %c1_i32, %alloc_6[%c1, %c9] : memref<3x15xi32>
      %245 = arith.andi %c3052_i16, %c-20430_i16 : i16
      %246 = vector.broadcast %c2 : index to vector<3xindex>
      %247 = vector.broadcast %false_4 : i1 to vector<3xi1>
      vector.scatter %alloc_21[%c0] [%246], %247, %247 : memref<2xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
      %248 = tensor.empty() : tensor<i64>
      %mapped_52 = linalg.map ins(%18, %18 : tensor<i64>, tensor<i64>) outs(%248 : tensor<i64>)
        (%in: i64, %in_54: i64) {
          %260 = affine.min affine_map<(d0, d1, d2) -> (-d2, d2 floordiv 4)>(%59, %207, %207)
          %261 = math.ceil %cst_2 : f16
          %262 = math.round %123 : f32
          memref.copy %alloc_5, %alloc_14 : memref<2xf16> to memref<2xf16>
          %263 = arith.cmpf one, %50, %186 : f16
          %264 = vector.transpose %60, [0] : vector<16xi64> to vector<16xi64>
          %265 = bufferization.clone %alloc_10 : memref<16x16x2xf32> to memref<16x16x2xf32>
          %266 = math.log10 %5 : tensor<16x16x2xf32>
          %267 = arith.xori %false_4, %true_33 : i1
          %268 = index.divu %184, %55
          %269 = math.ceil %5 : tensor<16x16x2xf32>
          %270 = vector.extract %60[0] : vector<16xi64>
          %alloc_55 = memref.alloc() : memref<i64>
          memref.tensor_store %248, %alloc_55 : memref<i64>
          %271 = arith.addf %65, %cst_1 : f16
          %272 = vector.matrix_multiply %113, %161 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 120 : i32} : (vector<2xi1>, vector<240xi1>) -> vector<120xi1>
          %dest_56, %accumulated_value_57 = vector.scan <maxf>, %53, %48 {inclusive = false, reduction_dim = 0 : i64} : vector<2x15xf32>, vector<15xf32>
          %c-17664_i16 = arith.constant -17664 : i16
          %273 = math.sqrt %238 : tensor<16x16x2xf32>
          %274 = vector.broadcast %c1_i32 : i32 to vector<3x15xi32>
          %275 = vector.broadcast %false : i1 to vector<3x15xi1>
          %276 = vector.gather %alloc_6[%130, %c13] [%274], %275, %274 : memref<3x15xi32>, vector<3x15xi32>, vector<3x15xi1>, vector<3x15xi32> into vector<3x15xi32>
          %277 = vector.broadcast %c0 : index to vector<3xindex>
          %278 = vector.broadcast %true_33 : i1 to vector<3xi1>
          %279 = vector.broadcast %c1563714217_i64 : i64 to vector<3xi64>
          vector.scatter %alloc_8[%c0] [%277], %278, %279 : memref<2xi64>, vector<3xindex>, vector<3xi1>, vector<3xi64>
          %280 = arith.shrsi %true_33, %true_33 : i1
          %281 = arith.negf %cst_3 : f16
          %282 = arith.shrsi %in_54, %c1563714217_i64 : i64
          %283 = math.fpowi %0, %1 : tensor<16x16x2xf32>, tensor<16x16x2xi32>
          %284 = arith.muli %false_4, %false_4 : i1
          %285 = arith.shli %false, %true_33 : i1
          %286 = index.sub %40, %c3
          %287 = vector.reduction <mul>, %60 : vector<16xi64> into i64
          %288 = math.fpowi %123, %c1_i32 : f32, i32
          %from_elements_58 = tensor.from_elements %65, %cst_1, %cst_2, %186, %65, %186, %65, %cst_3, %cst_3, %186, %cst_2, %cst_3, %cst_2, %186, %cst_1, %cst_1, %186, %cst_1, %cst_1, %50, %cst_3, %cst_2, %cst_2, %cst_1, %186, %cst_1, %cst_1, %cst_2, %cst_1, %50 : tensor<2x15xf16>
          %289 = math.fma %transposed, %239, %transposed : tensor<2x16x16xf32>
          %290 = arith.remui %c355370246_i64, %c1563714217_i64 : i64
          %c0_i64 = arith.constant 0 : i64
          linalg.yield %c0_i64 : i64
        }
      %249 = math.round %65 : f16
      %250 = math.sqrt %87 : tensor<3x15xf32>
      %251 = index.ceildivu %157, %rank_42
      %252 = vector.transpose %111, [1, 0] : vector<2x15xf32> to vector<15x2xf32>
      %253 = arith.remui %true, %true_33 : i1
      %254 = arith.remui %c-20430_i16, %c-20430_i16 : i16
      %255 = math.absf %11 : tensor<2xf32>
      %256 = vector.broadcast %c366308732_i64 : i64 to vector<2xi64>
      %257 = vector.transfer_write %256, %15[%157, %c2] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<2xi64>, tensor<3x15xi64>
      %258 = memref.atomic_rmw ori %c366308732_i64, %alloc_18[%c8, %c10, %c1] : (i64, memref<16x16x2xi64>) -> i64
      %259 = arith.addi %true, %false_4 : i1
      %alloc_53 = memref.alloc() : memref<2xi64>
      scf.reduce(%alloc_53)  : memref<2xi64> {
      ^bb0(%arg3: memref<2xi64>, %arg4: memref<2xi64>):
        %260 = vector.bitcast %203 : vector<2x15xf32> to vector<2x15xf32>
        %261 = arith.minf %50, %50 : f16
        %262 = tensor.empty() : tensor<2xi32>
        %263 = math.fpowi %11, %262 : tensor<2xf32>, tensor<2xi32>
        %264 = vector.broadcast %false_4 : i1 to vector<2x2xi1>
        %265 = vector.outerproduct %113, %113, %264 {kind = #vector.kind<xor>} : vector<2xi1>, vector<2xi1>
        %266 = math.sqrt %11 : tensor<2xf32>
        %267 = math.copysign %cst, %cst_0 : f32
        %268 = arith.ori %c744113698_i64, %c1563714217_i64 : i64
        %269 = arith.cmpi ne, %c3052_i16, %c-20430_i16 : i16
        %alloc_54 = memref.alloc() : memref<2xi64>
        scf.reduce.return %alloc_54 : memref<2xi64>
      }
      scf.yield
    }
    %242 = affine.vector_load %alloc_12[%107, %95] : memref<3x15xi32>, vector<3xi32>
    affine.vector_store %242, %74[%c12, %171] : memref<3x15xi32>, vector<3xi32>
    vector.print %20 : vector<15xf16>
    vector.print %48 : vector<15xf32>
    vector.print %52 : vector<2x15xf32>
    vector.print %53 : vector<2x15xf32>
    vector.print %60 : vector<16xi64>
    vector.print %61 : vector<16xi1>
    vector.print %62 : vector<16xi64>
    vector.print %83 : vector<15xi64>
    vector.print %84 : vector<15xi1>
    vector.print %85 : vector<15xi64>
    vector.print %100 : vector<f32>
    vector.print %110 : vector<2x15xf32>
    vector.print %111 : vector<2x15xf32>
    vector.print %113 : vector<2xi1>
    vector.print %149 : vector<1xi1>
    vector.print %161 : vector<240xi1>
    vector.print %164 : vector<1xf32>
    vector.print %203 : vector<2x15xf32>
    vector.print %233 : vector<88xi1>
    vector.print %242 : vector<3xi32>
    vector.print %cst : f32
    vector.print %true : i1
    vector.print %c744113698_i64 : i64
    vector.print %cst_0 : f32
    vector.print %c-20430_i16 : i16
    vector.print %cst_1 : f16
    vector.print %c355370246_i64 : i64
    vector.print %false : i1
    vector.print %cst_2 : f16
    vector.print %cst_3 : f16
    vector.print %c156345344_i64 : i64
    vector.print %false_4 : i1
    vector.print %c3052_i16 : i16
    vector.print %c366308732_i64 : i64
    vector.print %c-2423_i16 : i16
    vector.print %c1563714217_i64 : i64
    vector.print %50 : f16
    vector.print %65 : f16
    vector.print %true_33 : i1
    vector.print %123 : f32
    vector.print %c1_i32 : i32
    vector.print %186 : f16
    %alloc_51 = memref.alloc() : memref<3x15xi16>
    return %alloc_51 : memref<3x15xi16>
  }
}
