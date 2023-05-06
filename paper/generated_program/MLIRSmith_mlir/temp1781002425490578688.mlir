module {
  func.func @func1(%arg0: i16, %arg1: index) -> vector<2x2xi32> {
    %c-16896_i16 = arith.constant -16896 : i16
    %c678952886_i64 = arith.constant 678952886 : i64
    %cst = arith.constant 1.53796698E+9 : f32
    %true = arith.constant true
    %true_0 = arith.constant true
    %cst_1 = arith.constant 1.58244083E+9 : f32
    %cst_2 = arith.constant 4.144000e+04 : f16
    %cst_3 = arith.constant 0x4A1E9114 : f32
    %c1271653950_i32 = arith.constant 1271653950 : i32
    %cst_4 = arith.constant 0x4DF8D224 : f32
    %c750057657_i64 = arith.constant 750057657 : i64
    %c1465641628_i64 = arith.constant 1465641628 : i64
    %cst_5 = arith.constant 2.611200e+04 : f16
    %c16786_i16 = arith.constant 16786 : i16
    %cst_6 = arith.constant 1.39630221E+9 : f32
    %cst_7 = arith.constant 2.627200e+04 : f16
    %0 = tensor.empty() : tensor<2xi64>
    %1 = tensor.empty() : tensor<2x2xi32>
    %2 = tensor.empty() : tensor<2x2xf32>
    %3 = tensor.empty() : tensor<2x2xi32>
    %4 = tensor.empty() : tensor<2xi1>
    %5 = tensor.empty() : tensor<2x2xf32>
    %6 = tensor.empty() : tensor<2x2xi64>
    %7 = tensor.empty() : tensor<2x2xf32>
    %8 = tensor.empty() : tensor<2x2xf32>
    %9 = tensor.empty() : tensor<2xf16>
    %10 = tensor.empty() : tensor<2x2xi64>
    %11 = tensor.empty() : tensor<2xi1>
    %12 = tensor.empty() : tensor<2x2xf32>
    %13 = tensor.empty() : tensor<2x2xf32>
    %14 = tensor.empty() : tensor<2x2xi1>
    %15 = tensor.empty() : tensor<2xi32>
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
    %alloc = memref.alloc() : memref<2x2xf32>
    %alloc_8 = memref.alloc() : memref<2x2xf16>
    %alloc_9 = memref.alloc() : memref<2xi32>
    %alloc_10 = memref.alloc() : memref<2x2xi16>
    %alloc_11 = memref.alloc() : memref<3x2xf16>
    %alloc_12 = memref.alloc() : memref<3x2xf16>
    %alloc_13 = memref.alloc() : memref<2x2xf16>
    %alloc_14 = memref.alloc() : memref<3x2xf16>
    %alloc_15 = memref.alloc() : memref<2xi16>
    %alloc_16 = memref.alloc() : memref<2x2xf32>
    %alloc_17 = memref.alloc() : memref<2xf16>
    %alloc_18 = memref.alloc() : memref<2xf16>
    %alloc_19 = memref.alloc() : memref<2xi1>
    %alloc_20 = memref.alloc() : memref<2x2xf32>
    %alloc_21 = memref.alloc() : memref<2x2xi64>
    %alloc_22 = memref.alloc() : memref<2x2xi1>
    %16 = tensor.empty() : tensor<2x2xf32>
    %17 = linalg.copy ins(%7 : tensor<2x2xf32>) outs(%16 : tensor<2x2xf32>) -> tensor<2x2xf32>
    %18 = tensor.empty() : tensor<2x2xf32>
    %transposed = linalg.transpose ins(%17 : tensor<2x2xf32>) outs(%18 : tensor<2x2xf32>) permutation = [1, 0] 
    %19 = tensor.empty() : tensor<2xf32>
    %reduced = linalg.reduce ins(%8 : tensor<2x2xf32>) outs(%19 : tensor<2xf32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %246 = arith.maxui %c-16896_i16, %c16786_i16 : i16
        %247 = index.castu %true : i1 to index
        %248 = math.rsqrt %8 : tensor<2x2xf32>
        %cst_48 = arith.constant 1.000000e+00 : f32
        %249 = vector.transfer_read %2[%c2, %c8], %cst_48 : tensor<2x2xf32>, vector<f32>
        %250 = arith.muli %c750057657_i64, %c1465641628_i64 : i64
        %251 = index.mul %c7, %c2
        %252 = math.rsqrt %5 : tensor<2x2xf32>
        %253 = math.ctlz %c1465641628_i64 : i64
        %cst_49 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_49 : f32
      }
    scf.parallel (%arg2, %arg3) = (%c7, %c14) to (%c7, %c12) step (%c8, %c2) {
      %cast_48 = tensor.cast %13 : tensor<2x2xf32> to tensor<?x?xf32>
      %246 = vector.splat %c7 : vector<2xindex>
      %247 = arith.maxf %cst_2, %cst_7 : f16
      %248 = arith.maxui %true, %true : i1
      %249 = vector.broadcast %cst_4 : f32 to vector<11xf32>
      %250 = vector.reduction <add>, %249 : vector<11xf32> into f32
      scf.index_switch %c4 
      case 1 {
        %259 = vector.broadcast %cst_3 : f32 to vector<2x2xf32>
        %260 = math.sqrt %18 : tensor<2x2xf32>
        %261 = math.exp %17 : tensor<2x2xf32>
        %262 = math.atan %5 : tensor<2x2xf32>
        %263 = arith.divf %cst_4, %cst_6 : f32
        %264 = index.divu %c14, %c14
        %265 = index.maxs %c0, %arg3
        %266 = arith.addf %cst, %cst_3 : f32
        %267 = arith.addi %true_0, %true : i1
        %268 = vector.broadcast %c-16896_i16 : i16 to vector<2xi16>
        %269 = vector.broadcast %c-16896_i16 : i16 to vector<2x2xi16>
        %270 = vector.outerproduct %268, %268, %269 {kind = #vector.kind<mul>} : vector<2xi16>, vector<2xi16>
        %271 = index.ceildivs %c13, %c5
        %272 = arith.mulf %cst_4, %cst_6 : f32
        %273 = arith.divui %true, %true : i1
        %274 = index.mul %c7, %c13
        %275 = bufferization.to_memref %3 : memref<2x2xi32>
        %276 = vector.extract %259[0] : vector<2x2xf32>
        scf.yield
      }
      case 2 {
        %259 = math.floor %8 : tensor<2x2xf32>
        %260 = math.ipowi %15, %15 : tensor<2xi32>
        %261 = arith.minui %c1465641628_i64, %c750057657_i64 : i64
        %262 = index.casts %c10 : index to i32
        %263 = vector.broadcast %cst_2 : f16 to vector<1xf16>
        %264 = vector.extract_strided_slice %263 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
        %265 = vector.broadcast %cst_6 : f32 to vector<2x2xf32>
        %266 = math.fma %reduced, %reduced, %19 : tensor<2xf32>
        %267 = arith.remui %c-16896_i16, %c16786_i16 : i16
        %268 = vector.transpose %264, [0] : vector<1xf16> to vector<1xf16>
        %269 = index.castu %true_0 : i1 to index
        %270 = arith.divf %cst_6, %cst_4 : f32
        %271 = memref.realloc %alloc_17 : memref<2xf16> to memref<11xf16>
        %272 = math.floor %17 : tensor<2x2xf32>
        %273 = math.powf %7, %5 : tensor<2x2xf32>
        %alloca = memref.alloca() : memref<3x2xi64>
        %274 = arith.maxf %cst_2, %cst_5 : f16
        scf.yield
      }
      case 3 {
        %259 = vector.broadcast %c1271653950_i32 : i32 to vector<1xi32>
        %260 = vector.multi_reduction <add>, %259, %259 [] : vector<1xi32> to vector<1xi32>
        %261 = arith.xori %c-16896_i16, %c16786_i16 : i16
        %262 = arith.divui %c-16896_i16, %c-16896_i16 : i16
        %263 = arith.subi %true, %true : i1
        %cst_50 = arith.constant 1.000000e+00 : f32
        %264 = vector.transfer_read %2[%c11, %c15], %cst_50 : tensor<2x2xf32>, vector<2xf32>
        %265 = vector.broadcast %c1271653950_i32 : i32 to vector<1x1xi32>
        %266 = vector.outerproduct %259, %259, %265 {kind = #vector.kind<and>} : vector<1xi32>, vector<1xi32>
        %267 = index.maxs %arg2, %c1
        %268 = math.ctpop %15 : tensor<2xi32>
        %269 = arith.minui %c678952886_i64, %c678952886_i64 : i64
        %cst_51 = arith.constant 1.000000e+00 : f32
        %270 = vector.transfer_read %12[%c8, %c15], %cst_51 : tensor<2x2xf32>, vector<3xf32>
        %cst_52 = arith.constant 1.000000e+00 : f32
        %cst_53 = arith.constant 0.000000e+00 : f32
        %271 = vector.transfer_read %18[%c11, %c13], %cst_53 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<2x2xf32>, vector<3xf32>
        %272 = index.mul %arg2, %c9
        %273 = index.add %c11, %c8
        %274 = index.ceildivu %c0, %c2
        %275 = math.tanh %2 : tensor<2x2xf32>
        %276 = math.sqrt %7 : tensor<2x2xf32>
        scf.yield
      }
      default {
        %259 = arith.divf %cst_6, %cst_4 : f32
        %260 = index.ceildivu %c0, %c13
        %261 = math.ctpop %true_0 : i1
        %262 = arith.shrui %true_0, %true_0 : i1
        %263 = index.casts %c10 : index to i32
        memref.tensor_store %4, %alloc_19 : memref<2xi1>
        %264 = arith.maxui %c16786_i16, %c-16896_i16 : i16
        %265 = arith.maxui %c1465641628_i64, %c1465641628_i64 : i64
        %266 = arith.remf %cst, %cst : f32
        %267 = vector.broadcast %cst_3 : f32 to vector<2x3x3xf32>
        %268 = vector.broadcast %cst : f32 to vector<2x3xf32>
        %dest_50, %accumulated_value_51 = vector.scan <add>, %267, %268 {inclusive = false, reduction_dim = 1 : i64} : vector<2x3x3xf32>, vector<2x3xf32>
        %269 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%c3, %c6, %c5)
        %270 = bufferization.to_memref %8 : memref<2x2xf32>
        %271 = arith.divui %true, %true_0 : i1
        %272 = vector.broadcast %true_0 : i1 to vector<3x2xi1>
        %273 = vector.shuffle %272, %272 [0, 1, 4] : vector<3x2xi1>, vector<3x2xi1>
        %274 = affine.max affine_map<(d0, d1) -> (d1, d1 * 2 - d0, d1 * 2 - 3)>(%c7, %c9)
        %c0_i16_52 = arith.constant 0 : i16
        %c0_i16_53 = arith.constant 0 : i16
        %275 = vector.transfer_read %alloc_15[%c14], %c0_i16_53 : memref<2xi16>, vector<i16>
      }
      %c6055_i16 = arith.constant 6055 : i16
      %251 = vector.broadcast %cst_6 : f32 to vector<2xf32>
      %252 = affine.min affine_map<(d0, d1, d2, d3) -> (-((d2 floordiv 16) floordiv 32), d2 floordiv 16, d1 + (d2 floordiv 16) floordiv 32, d1 mod 8)>(%c7, %c6, %arg3, %arg2)
      %253 = index.divu %c13, %arg3
      %c1_i16 = arith.constant 1 : i16
      %c0_i16 = arith.constant 0 : i16
      %254 = vector.transfer_read %alloc_10[%c3, %c6], %c0_i16 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<2x2xi16>, vector<2xi16>
      %255 = bufferization.clone %alloc : memref<2x2xf32> to memref<2x2xf32>
      %256 = index.mul %c12, %c6
      %257 = vector.reduction <add>, %251 : vector<2xf32> into f32
      %c1_i32 = arith.constant 1 : i32
      %c0_i32 = arith.constant 0 : i32
      %258 = vector.transfer_read %1[%c7, %c1], %c0_i32 : tensor<2x2xi32>, vector<i32>
      %true_49 = index.bool.constant true
      scf.yield
    }
    %20 = affine.vector_load %alloc_10[%c14, %c8] : memref<2x2xi16>, vector<2xi16>
    affine.vector_store %20, %alloc_10[%c6, %c8] : memref<2x2xi16>, vector<2xi16>
    %alloc_23 = memref.alloc() : memref<2xi1>
    %21 = tensor.empty() : tensor<i1>
    %22 = linalg.dot ins(%alloc_19, %alloc_23 : memref<2xi1>, memref<2xi1>) outs(%21 : tensor<i1>) -> tensor<i1>
    %23 = vector.flat_transpose %20 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
    %24 = arith.negf %cst_1 : f32
    %25 = affine.for %arg2 = 0 to 95 iter_args(%arg3 = %c14) -> (index) {
      affine.yield %c14 : index
    }
    %26 = vector.bitcast %23 : vector<2xi16> to vector<2xf16>
    %27 = arith.divsi %c-16896_i16, %c16786_i16 : i16
    %28 = bufferization.clone %alloc_17 : memref<2xf16> to memref<2xf16>
    %29 = arith.divui %c678952886_i64, %c750057657_i64 : i64
    %30 = arith.maxsi %c-16896_i16, %c-16896_i16 : i16
    %31 = index.mul %c0, %c1
    bufferization.dealloc_tensor %12 : tensor<2x2xf32>
    %32 = index.ceildivu %c8, %c13
    %33 = index.castu %c13 : index to i32
    %34 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %23, %23, %c-16896_i16 : vector<2xi16>, vector<2xi16> into i16
    %35 = arith.ori %c-16896_i16, %c-16896_i16 : i16
    %expanded = tensor.expand_shape %10 [[0], [1, 2]] : tensor<2x2xi64> into tensor<2x2x1xi64>
    %36 = math.floor %13 : tensor<2x2xf32>
    %37 = arith.addi %c-16896_i16, %c-16896_i16 : i16
    %38 = math.log2 %7 : tensor<2x2xf32>
    %39 = math.exp2 %8 : tensor<2x2xf32>
    %40 = vector.bitcast %20 : vector<2xi16> to vector<2xi16>
    %41 = math.ctpop %10 : tensor<2x2xi64>
    %42 = index.mul %c2, %c15
    %43 = scf.index_switch %c3 -> tensor<2xf32> 
    case 1 {
      %246 = math.powf %17, %12 : tensor<2x2xf32>
      %247 = affine.if affine_set<(d0, d1, d2) : ((d1 + 32) ceildiv 16 + 32 == 0, d1 - d2 ceildiv 128 - 32 == 0, d1 + 32 == 0, d2 == 0)>(%c1, %c15, %c7) -> i64 {
        %c20258_i16 = arith.constant 20258 : i16
        %cst_54 = arith.constant 1.000000e+00 : f32
        %cst_55 = arith.constant 0.000000e+00 : f32
        %260 = vector.transfer_read %19[%c0], %cst_55 : tensor<2xf32>, vector<f32>
        %261 = memref.load %alloc_17[%c1] : memref<2xf16>
        %262 = vector.create_mask %c11, %c9 : vector<2x2xi1>
        %263 = math.atan %cst_2 : f16
        %264 = arith.xori %c750057657_i64, %c678952886_i64 : i64
        %265 = arith.remui %true_0, %true : i1
        %alloca = memref.alloca() : memref<2x2xi1>
        affine.yield %c750057657_i64 : i64
      } else {
        %260 = bufferization.clone %alloc_15 : memref<2xi16> to memref<2xi16>
        %261 = bufferization.to_memref %2 : memref<2x2xf32>
        %false_54 = arith.constant false
        %262 = arith.addf %cst_2, %cst_7 : f16
        %263 = math.exp2 %cst_6 : f32
        %264 = math.log2 %5 : tensor<2x2xf32>
        %265 = bufferization.to_memref %12 : memref<2x2xf32>
        %266 = arith.addf %cst_6, %cst_1 : f32
        affine.yield %c1465641628_i64 : i64
      }
      %false_48 = index.bool.constant false
      %248 = vector.insertelement %c-16896_i16, %40[%c5 : index] : vector<2xi16>
      %249 = tensor.empty() : tensor<2x2xf32>
      %250 = linalg.matmul ins(%13, %5 : tensor<2x2xf32>, tensor<2x2xf32>) outs(%249 : tensor<2x2xf32>) -> tensor<2x2xf32>
      %251 = arith.addf %cst_4, %cst_1 : f32
      %inserted_49 = tensor.insert %cst_3 into %17[%c1, %c0] : tensor<2x2xf32>
      %252 = arith.divsi %c16786_i16, %c-16896_i16 : i16
      %generated_50 = tensor.generate %c1 {
      ^bb0(%arg2: index, %arg3: index):
        %260 = vector.load %alloc_23[%c0] : memref<2xi1>, vector<2x2xi1>
        %alloca = memref.alloca() : memref<2x2xf32>
        %261 = arith.negf %cst_4 : f32
        %262 = affine.min affine_map<(d0, d1, d2) -> ((d2 + 64) ceildiv 8, d0 * 32, d2 floordiv 8, 8)>(%c5, %c9, %c15)
        tensor.yield %c750057657_i64 : i64
      } : tensor<?x2xi64>
      %253 = index.add %c15, %c5
      %254 = vector.broadcast %c1465641628_i64 : i64 to vector<11x3xi64>
      %255 = vector.broadcast %c1465641628_i64 : i64 to vector<11xi64>
      %dest_51, %accumulated_value_52 = vector.scan <add>, %254, %255 {inclusive = true, reduction_dim = 1 : i64} : vector<11x3xi64>, vector<11xi64>
      %256 = math.powf %249, %transposed : tensor<2x2xf32>
      %generated_53 = tensor.generate %c14 {
      ^bb0(%arg2: index, %arg3: index):
        %260 = math.round %cst_4 : f32
        %261 = index.casts %c12 : index to i32
        %262 = arith.mulf %cst_6, %cst_4 : f32
        %263 = arith.muli %true_0, %false_48 : i1
        tensor.yield %true_0 : i1
      } : tensor<?x2xi1>
      %257 = math.copysign %transposed, %8 : tensor<2x2xf32>
      %258 = arith.divf %cst_3, %cst_1 : f32
      %259 = arith.remui %c16786_i16, %c-16896_i16 : i16
      scf.yield %reduced : tensor<2xf32>
    }
    case 2 {
      %246 = vector.shuffle %20, %20 [1, 3] : vector<2xi16>, vector<2xi16>
      %247 = math.tan %7 : tensor<2x2xf32>
      %248 = arith.maxui %true, %true : i1
      %249 = arith.ceildivsi %true_0, %true : i1
      %250 = math.fpowi %9, %15 : tensor<2xf16>, tensor<2xi32>
      %false_48 = index.bool.constant false
      %251 = bufferization.clone %alloc_16 : memref<2x2xf32> to memref<2x2xf32>
      %252 = vector.matrix_multiply %40, %40 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi16>, vector<2xi16>) -> vector<1xi16>
      %cst_49 = arith.constant 1.59306074E+9 : f32
      %253 = math.atan2 %5, %transposed : tensor<2x2xf32>
      %254 = vector.splat %c10 : vector<2xindex>
      %255 = math.ctpop %21 : tensor<i1>
      %256 = arith.subi %true_0, %true_0 : i1
      vector.print %252 : vector<1xi16>
      %257 = memref.load %alloc_15[%c0] : memref<2xi16>
      %258 = math.round %7 : tensor<2x2xf32>
      scf.yield %19 : tensor<2xf32>
    }
    case 3 {
      %246 = arith.remsi %c1465641628_i64, %c1465641628_i64 : i64
      %247 = memref.atomic_rmw assign %cst_5, %28[%c1] : (f16, memref<2xf16>) -> f16
      %248 = arith.remf %cst_3, %cst_3 : f32
      %249 = arith.addi %c750057657_i64, %c678952886_i64 : i64
      %250 = arith.xori %true, %true : i1
      %251 = math.exp %transposed : tensor<2x2xf32>
      %252 = index.divu %c2, %c0
      %253 = math.atan %17 : tensor<2x2xf32>
      memref.copy %alloc_19, %alloc_23 : memref<2xi1> to memref<2xi1>
      %collapsed_48 = tensor.collapse_shape %12 [[0, 1]] : tensor<2x2xf32> into tensor<4xf32>
      %254 = math.absf %9 : tensor<2xf16>
      %255 = math.ctlz %true : i1
      %256 = vector.insertelement %cst_2, %26[%c5 : index] : vector<2xf16>
      %257 = math.tanh %transposed : tensor<2x2xf32>
      %false_49 = arith.constant false
      %258 = math.exp2 %transposed : tensor<2x2xf32>
      scf.yield %19 : tensor<2xf32>
    }
    default {
      %246 = math.sqrt %cst_2 : f16
      %generated_48 = tensor.generate %c15 {
      ^bb0(%arg2: index, %arg3: index):
        %263 = bufferization.to_memref %0 : memref<2xi64>
        %cast_50 = tensor.cast %16 : tensor<2x2xf32> to tensor<?x?xf32>
        %264 = index.ceildivu %c6, %c9
        %265 = index.add %31, %264
        tensor.yield %cst_5 : f16
      } : tensor<?x2xf16>
      %247 = arith.cmpi ult, %c678952886_i64, %c678952886_i64 : i64
      %248 = bufferization.clone %alloc_18 : memref<2xf16> to memref<2xf16>
      %249 = math.log1p %12 : tensor<2x2xf32>
      %250 = math.exp %7 : tensor<2x2xf32>
      %251 = bufferization.to_memref %6 : memref<2x2xi64>
      %252 = arith.divui %c750057657_i64, %c750057657_i64 : i64
      %253 = vector.broadcast %c-16896_i16 : i16 to vector<2x2xi16>
      %254 = vector.outerproduct %40, %20, %253 {kind = #vector.kind<maxsi>} : vector<2xi16>, vector<2xi16>
      %255 = math.atan2 %12, %5 : tensor<2x2xf32>
      %256 = vector.broadcast %cst_3 : f32 to vector<3x2xf32>
      %257 = vector.fma %256, %256, %256 : vector<3x2xf32>
      %258 = math.powf %13, %18 : tensor<2x2xf32>
      %259 = tensor.empty() : tensor<2x2xi64>
      %mapped_49 = linalg.map ins(%10 : tensor<2x2xi64>) outs(%259 : tensor<2x2xi64>)
        (%in: i64) {
          %263 = vector.broadcast %cst_1 : f32 to vector<2x2xf32>
          %264 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %257, %257, %263 : vector<3x2xf32>, vector<3x2xf32> into vector<2x2xf32>
          %265 = math.absf %13 : tensor<2x2xf32>
          %266 = arith.mulf %cst, %cst_6 : f32
          %267 = arith.maxsi %in, %c678952886_i64 : i64
          %268 = bufferization.clone %alloc_15 : memref<2xi16> to memref<2xi16>
          %269 = math.exp2 %2 : tensor<2x2xf32>
          %270 = memref.realloc %alloc_19 : memref<2xi1> to memref<2xi1>
          %alloc_50 = memref.alloc() : memref<2xi16>
          %271 = affine.max affine_map<(d0) -> ((d0 mod 64) * 64)>(%c0)
          affine.store %cst_5, %alloc_13[%c1, %c14] : memref<2x2xf16>
          %272 = arith.maxui %c750057657_i64, %in : i64
          %273 = arith.maxsi %c678952886_i64, %in : i64
          %274 = vector.reduction <and>, %20 : vector<2xi16> into i16
          %275 = vector.load %alloc_13[%c0, %c1] : memref<2x2xf16>, vector<2x2xf16>
          %276 = arith.mulf %cst_1, %cst_6 : f32
          %inserted_51 = tensor.insert %cst_1 into %13[%c1, %c1] : tensor<2x2xf32>
          %277 = index.sizeof
          %278 = bufferization.to_tensor %alloc_18 : memref<2xf16>
          %279 = arith.ceildivsi %c750057657_i64, %in : i64
          %280 = index.maxu %c14, %c0
          %281 = vector.bitcast %40 : vector<2xi16> to vector<2xi16>
          %282 = math.rsqrt %5 : tensor<2x2xf32>
          %alloc_52 = memref.alloc() : memref<3x2xf16>
          affine.store %c750057657_i64, %alloc_21[%c1, %c4] : memref<2x2xi64>
          %283 = vector.broadcast %cst_1 : f32 to vector<2x2xf32>
          %284 = vector.fma %283, %283, %283 : vector<2x2xf32>
          %285 = index.maxs %c1, %271
          bufferization.dealloc_tensor %16 : tensor<2x2xf32>
          %286 = math.powf %18, %7 : tensor<2x2xf32>
          %287 = math.roundeven %cst_1 : f32
          %cast_53 = tensor.cast %0 : tensor<2xi64> to tensor<?xi64>
          %288 = bufferization.to_tensor %alloc_17 : memref<2xf16>
          %289 = arith.mulf %cst_7, %cst_7 : f16
          %c0_i64_54 = arith.constant 0 : i64
          linalg.yield %c0_i64_54 : i64
        }
      %260 = math.exp2 %cst_3 : f32
      %261 = math.powf %cst_6, %cst_1 : f32
      %262 = arith.remui %c16786_i16, %c16786_i16 : i16
      scf.yield %19 : tensor<2xf32>
    }
    %44 = arith.divui %c1271653950_i32, %c1271653950_i32 : i32
    %45 = math.log2 %transposed : tensor<2x2xf32>
    scf.if %true_0 {
      %246 = arith.xori %c16786_i16, %c16786_i16 : i16
      %247 = math.sqrt %13 : tensor<2x2xf32>
      %248 = index.floordivs %c3, %c4
      memref.assume_alignment %alloc_14, 16 : memref<3x2xf16>
      %249 = vector.multi_reduction <xor>, %23, %20 [] : vector<2xi16> to vector<2xi16>
      %250 = arith.divui %true_0, %true : i1
      %251 = memref.alloca_scope  -> (memref<2x2xi64>) {
        %253 = vector.load %alloc_18[%c0] : memref<2xf16>, vector<2x2xf16>
        %254 = math.cos %cst_4 : f32
        memref.assume_alignment %28, 16 : memref<2xf16>
        %c1439646071_i64 = arith.constant 1439646071 : i64
        memref.store %true, %alloc_23[%c0] : memref<2xi1>
        %255 = vector.broadcast %cst_5 : f16 to vector<11xf16>
        %256 = vector.broadcast %true : i1 to vector<11xi1>
        %257 = vector.maskedload %alloc_17[%c1], %256, %255 : memref<2xf16>, vector<11xi1>, vector<11xf16> into vector<11xf16>
        %258 = memref.realloc %alloc_19 : memref<2xi1> to memref<3xi1>
        bufferization.dealloc_tensor %17 : tensor<2x2xf32>
        %259 = vector.broadcast %cst_1 : f32 to vector<3x2xf32>
        %extracted = tensor.extract %15[%c1] : tensor<2xi32>
        %260 = math.cos %12 : tensor<2x2xf32>
        %261 = math.cos %cst_6 : f32
        %262 = arith.divsi %c-16896_i16, %c16786_i16 : i16
        %263 = arith.addf %cst_1, %cst : f32
        %264 = arith.maxf %cst_1, %cst_3 : f32
        %265 = math.ctpop %expanded : tensor<2x2x1xi64>
        %266 = arith.divf %cst_3, %cst_6 : f32
        %267 = arith.shli %c1271653950_i32, %c1271653950_i32 : i32
        %268 = index.divu %c13, %c0
        %269 = index.sizeof
        %270 = math.ceil %13 : tensor<2x2xf32>
        %271 = arith.minf %cst_1, %cst_1 : f32
        %272 = vector.broadcast %true_0 : i1 to vector<2xi1>
        %273 = vector.maskedload %alloc_14[%c1, %c1], %272, %26 : memref<3x2xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
        %274 = vector.extract %23[0] : vector<2xi16>
        %275 = arith.maxsi %true_0, %true : i1
        %276 = bufferization.to_tensor %alloc_11 : memref<3x2xf16>
        %277 = arith.addi %c1465641628_i64, %c1465641628_i64 : i64
        %278 = math.ipowi %1, %3 : tensor<2x2xi32>
        %279 = vector.broadcast %cst_4 : f32 to vector<2x2xf32>
        %280 = vector.fma %279, %279, %279 : vector<2x2xf32>
        %281 = arith.shrsi %c16786_i16, %c-16896_i16 : i16
        %282 = vector.bitcast %280 : vector<2x2xf32> to vector<2x2xf32>
        %283 = math.log1p %cst_2 : f16
        memref.alloca_scope.return %alloc_21 : memref<2x2xi64>
      }
      %252 = vector.extract_strided_slice %40 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi16> to vector<1xi16>
    }
    %46 = affine.min affine_map<(d0, d1) -> (d1, d1 mod 8 - 20, d0 + d1 mod 8 - d0, d1 - d0)>(%c7, %c7)
    %47 = vector.flat_transpose %20 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
    %48 = math.exp %13 : tensor<2x2xf32>
    %49 = math.ipowi %6, %10 : tensor<2x2xi64>
    %50 = arith.cmpi ult, %c750057657_i64, %c750057657_i64 : i64
    %51 = bufferization.clone %alloc_10 : memref<2x2xi16> to memref<2x2xi16>
    %52 = arith.subi %true_0, %true_0 : i1
    %53 = arith.xori %c16786_i16, %c16786_i16 : i16
    %54 = vector.extract_strided_slice %26 {offsets = [0], sizes = [2], strides = [1]} : vector<2xf16> to vector<2xf16>
    %55 = arith.divsi %c678952886_i64, %c1465641628_i64 : i64
    %56 = arith.cmpi ugt, %c16786_i16, %c-16896_i16 : i16
    %generated = tensor.generate %c1 {
    ^bb0(%arg2: index):
      %246 = math.roundeven %7 : tensor<2x2xf32>
      %cast_48 = tensor.cast %16 : tensor<2x2xf32> to tensor<?x?xf32>
      %collapsed_49 = tensor.collapse_shape %5 [[0, 1]] : tensor<2x2xf32> into tensor<4xf32>
      %247 = math.cos %5 : tensor<2x2xf32>
      tensor.yield %c678952886_i64 : i64
    } : tensor<?xi64>
    %57 = vector.shuffle %23, %40 [0, 1, 2, 3] : vector<2xi16>, vector<2xi16>
    %expanded_24 = tensor.expand_shape %3 [[0], [1, 2]] : tensor<2x2xi32> into tensor<2x2x1xi32>
    %cst_25 = arith.constant 4.489600e+04 : f16
    %58 = math.rsqrt %cst_3 : f32
    scf.if %true_0 {
      %246 = arith.negf %cst_7 : f16
      memref.copy %alloc_8, %alloc_13 : memref<2x2xf16> to memref<2x2xf16>
      %247 = tensor.empty() : tensor<2x2xf32>
      %mapped_48 = linalg.map ins(%7 : tensor<2x2xf32>) outs(%247 : tensor<2x2xf32>)
        (%in: f32) {
          %253 = math.ipowi %14, %14 : tensor<2x2xi1>
          %254 = math.fma %cst, %cst, %cst_6 : f32
          %255 = arith.mulf %cst_2, %cst_5 : f16
          %cast_49 = tensor.cast %14 : tensor<2x2xi1> to tensor<?x?xi1>
          %256 = index.floordivs %c0, %42
          %257 = tensor.empty(%46) : tensor<?x2xi64>
          %258 = bufferization.clone %28 : memref<2xf16> to memref<2xf16>
          %259 = tensor.empty() : tensor<2x2xf32>
          %260 = linalg.matmul ins(%247, %transposed : tensor<2x2xf32>, tensor<2x2xf32>) outs(%259 : tensor<2x2xf32>) -> tensor<2x2xf32>
          %261 = index.ceildivu %32, %c10
          %262 = math.ipowi %10, %6 : tensor<2x2xi64>
          %263 = index.sizeof
          %264 = arith.cmpi eq, %true_0, %true_0 : i1
          %265 = index.maxu %c9, %42
          %266 = arith.cmpf uge, %cst_1, %in : f32
          %false_50 = arith.constant false
          %267 = vector.transfer_read %4[%c14], %false_50 : tensor<2xi1>, vector<i1>
          %268 = affine.apply affine_map<(d0, d1) -> (-(d1 + 14))>(%c9, %c15)
          %269 = vector.multi_reduction <minsi>, %23, %20 [] : vector<2xi16> to vector<2xi16>
          %cast_51 = tensor.cast %6 : tensor<2x2xi64> to tensor<?x?xi64>
          %270 = arith.mulf %cst, %cst_3 : f32
          %271 = index.divs %42, %256
          %272 = bufferization.to_tensor %alloc_15 : memref<2xi16>
          %273 = math.ipowi %22, %22 : tensor<i1>
          %cst_52 = arith.constant 1.000000e+00 : f32
          %274 = vector.transfer_read %alloc_16[%31, %c7], %cst_52 : memref<2x2xf32>, vector<3xf32>
          %275 = vector.flat_transpose %40 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
          %276 = vector.extract_strided_slice %26 {offsets = [0], sizes = [1], strides = [1]} : vector<2xf16> to vector<1xf16>
          %277 = math.ceil %18 : tensor<2x2xf32>
          %278 = vector.broadcast %c750057657_i64 : i64 to vector<2x2xi64>
          %279 = math.roundeven %cst_5 : f16
          %280 = arith.shrsi %c678952886_i64, %c1465641628_i64 : i64
          %281 = affine.max affine_map<(d0, d1, d2) -> (d2 ceildiv 64, d1, d2 ceildiv 64)>(%c12, %c5, %c2)
          %282 = arith.shrsi %c1465641628_i64, %c678952886_i64 : i64
          %283 = index.mul %c14, %265
          %cst_53 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_53 : f32
        }
      %248 = index.floordivs %42, %c3
      %249 = arith.remsi %c750057657_i64, %c1465641628_i64 : i64
      %250 = arith.minui %c1465641628_i64, %c678952886_i64 : i64
      %251 = arith.maxf %cst_6, %cst_3 : f32
      %252 = scf.if %true_0 -> (f32) {
        %253 = math.ctpop %4 : tensor<2xi1>
        %254 = index.add %c1, %c6
        %255 = arith.xori %c1271653950_i32, %c1271653950_i32 : i32
        %256 = math.exp %cst_7 : f16
        %257 = vector.broadcast %true_0 : i1 to vector<3x2xi1>
        %258 = math.atan2 %13, %5 : tensor<2x2xf32>
        %259 = math.cos %cst_3 : f32
        %260 = memref.load %alloc_20[%c0, %c0] : memref<2x2xf32>
        scf.yield %cst : f32
      } else {
        %253 = arith.shrsi %true_0, %true_0 : i1
        %254 = math.ipowi %true_0, %true_0 : i1
        %255 = arith.subi %c750057657_i64, %c1465641628_i64 : i64
        %256 = math.sqrt %12 : tensor<2x2xf32>
        %257 = arith.shrsi %c750057657_i64, %c750057657_i64 : i64
        memref.assume_alignment %alloc_11, 4 : memref<3x2xf16>
        %258 = math.roundeven %cst_7 : f16
        %259 = vector.flat_transpose %54 {columns = 1 : i32, rows = 2 : i32} : vector<2xf16> -> vector<2xf16>
        scf.yield %cst_6 : f32
      }
    }
    %59 = index.casts %true : i1 to index
    %60 = bufferization.to_tensor %alloc_14 : memref<3x2xf16>
    %61 = index.sub %c15, %32
    %cst_26 = arith.constant 1.000000e+00 : f16
    %cst_27 = arith.constant 0.000000e+00 : f16
    %62 = vector.transfer_read %9[%c8], %cst_27 : tensor<2xf16>, vector<f16>
    %63 = arith.floordivsi %c16786_i16, %c-16896_i16 : i16
    %rank = tensor.rank %9 : tensor<2xf16>
    %64 = index.maxu %c1, %c11
    %alloc_28 = memref.alloc() : memref<3x2xi64>
    %65 = vector.flat_transpose %26 {columns = 1 : i32, rows = 2 : i32} : vector<2xf16> -> vector<2xf16>
    %66 = vector.splat %cst_5 : vector<2x2xf16>
    %cast = tensor.cast %11 : tensor<2xi1> to tensor<?xi1>
    %67 = math.tanh %17 : tensor<2x2xf32>
    %68 = index.sizeof
    %69 = math.log2 %cst : f32
    %cst_29 = arith.constant 1.638000e+03 : f16
    %70 = math.atan %2 : tensor<2x2xf32>
    %71 = math.sqrt %2 : tensor<2x2xf32>
    %72 = arith.negf %cst_5 : f16
    %73 = index.casts %c678952886_i64 : i64 to index
    %74 = math.exp %8 : tensor<2x2xf32>
    %75 = arith.maxui %true, %true : i1
    %76 = arith.mulf %cst_4, %cst_1 : f32
    %77 = bufferization.clone %alloc_18 : memref<2xf16> to memref<2xf16>
    %78 = index.ceildivu %42, %c9
    %generated_30 = tensor.generate %c9, %c6 {
    ^bb0(%arg2: index, %arg3: index):
      %246 = math.roundeven %cst_3 : f32
      %247 = vector.transpose %40, [0] : vector<2xi16> to vector<2xi16>
      %248 = math.copysign %cst_6, %cst : f32
      %249 = index.maxs %c4, %arg2
      tensor.yield %c678952886_i64 : i64
    } : tensor<?x?xi64>
    %79 = vector.extract %40[0] : vector<2xi16>
    %80 = arith.maxf %cst_7, %cst_7 : f16
    %81 = math.atan %13 : tensor<2x2xf32>
    %82 = arith.remsi %c678952886_i64, %c750057657_i64 : i64
    scf.if %true_0 {
      %cast_48 = tensor.cast %expanded_24 : tensor<2x2x1xi32> to tensor<?x?x?xi32>
      %246 = arith.cmpf oeq, %cst_7, %cst_26 : f16
      %247 = scf.index_switch %c12 -> tensor<2xi16> 
      case 1 {
        %251 = math.cos %7 : tensor<2x2xf32>
        %252 = arith.ori %c1271653950_i32, %c1271653950_i32 : i32
        %253 = index.casts %c6 : index to i32
        %254 = affine.max affine_map<(d0, d1, d2) -> (d1, d0, d2 * 4, d2)>(%32, %c4, %31)
        %255 = math.ceil %9 : tensor<2xf16>
        %256 = arith.cmpf uge, %cst, %cst_6 : f32
        %257 = affine.load %51[%c4, %c8] : memref<2x2xi16>
        %258 = index.maxu %c0, %c2
        %259 = arith.shrui %true_0, %true_0 : i1
        %260 = index.maxs %c3, %c11
        %261 = vector.transpose %40, [0] : vector<2xi16> to vector<2xi16>
        %262 = affine.load %alloc_10[%c5, %c14] : memref<2x2xi16>
        %263 = math.tan %cst_7 : f16
        %264 = arith.cmpf ule, %cst_7, %cst_5 : f16
        %265 = arith.maxui %257, %262 : i16
        %266 = vector.bitcast %54 : vector<2xf16> to vector<2xi16>
        %267 = tensor.empty() : tensor<2xi16>
        scf.yield %267 : tensor<2xi16>
      }
      default {
        %251 = math.powf %2, %7 : tensor<2x2xf32>
        %252 = math.ipowi %true, %true : i1
        %253 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 + 128, d1)>(%c5, %c7, %78, %c13)
        %254 = vector.broadcast %cst_2 : f16 to vector<11xf16>
        %255 = vector.transfer_write %254, %60[%c1, %c15] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<11xf16>, tensor<3x2xf16>
        %256 = math.round %cst_7 : f16
        %257 = math.log2 %5 : tensor<2x2xf32>
        %258 = arith.ori %true_0, %true : i1
        %259 = index.divu %c7, %253
        %260 = vector.shuffle %254, %54 [0, 1, 4, 5, 6, 8, 10, 11, 12] : vector<11xf16>, vector<2xf16>
        %261 = math.roundeven %cst_4 : f32
        %262 = math.floor %2 : tensor<2x2xf32>
        %false_50 = index.bool.constant false
        %263 = vector.broadcast %cst_1 : f32 to vector<2xf32>
        %264 = vector.fma %263, %263, %263 : vector<2xf32>
        %265 = math.copysign %7, %transposed : tensor<2x2xf32>
        %266 = arith.maxui %c1271653950_i32, %c1271653950_i32 : i32
        %267 = arith.ceildivsi %c-16896_i16, %c16786_i16 : i16
        %268 = tensor.empty() : tensor<2xi16>
        scf.yield %268 : tensor<2xi16>
      }
      %248 = arith.subi %true_0, %true : i1
      %249 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1, %alloc_9 : tensor<2x2xi32>, memref<2xi32>) outs(%expanded_24 : tensor<2x2x1xi32>) {
      ^bb0(%in: i32, %in_50: i32, %out: i32):
        %251 = arith.muli %c-16896_i16, %c-16896_i16 : i16
        %252 = math.ctpop %15 : tensor<2xi32>
        %253 = arith.cmpf false, %cst_7, %cst_5 : f16
        %254 = math.roundeven %13 : tensor<2x2xf32>
        %255 = vector.transpose %23, [0] : vector<2xi16> to vector<2xi16>
        %256 = math.ipowi %in, %in_50 : i32
        %257 = index.sizeof
        %258 = math.round %cst_4 : f32
        %259 = math.fma %19, %reduced, %19 : tensor<2xf32>
        %260 = math.log1p %transposed : tensor<2x2xf32>
        %261 = arith.remf %cst_7, %cst_2 : f16
        %262 = math.atan %cst_3 : f32
        memref.copy %alloc_18, %28 : memref<2xf16> to memref<2xf16>
        %263 = vector.shuffle %20, %20 [0, 1, 2, 3] : vector<2xi16>, vector<2xi16>
        %264 = index.sub %c11, %c7
        %true_51 = index.bool.constant true
        %265 = math.absi %in : i32
        %266 = index.maxs %c10, %257
        %267 = math.round %7 : tensor<2x2xf32>
        %268 = index.casts %266 : index to i32
        %269 = math.fma %2, %2, %2 : tensor<2x2xf32>
        %270 = math.tanh %2 : tensor<2x2xf32>
        %271 = math.exp2 %2 : tensor<2x2xf32>
        %272 = vector.shuffle %26, %54 [0, 1] : vector<2xf16>, vector<2xf16>
        %273 = index.casts %46 : index to i32
        %274 = math.roundeven %cst_6 : f32
        %275 = math.tanh %cst_5 : f16
        %276 = bufferization.clone %alloc_9 : memref<2xi32> to memref<2xi32>
        %277 = arith.divf %cst_3, %cst : f32
        %278 = vector.splat %cst_3 : vector<3x2xf32>
        %cast_52 = tensor.cast %22 : tensor<i1> to tensor<i1>
        %279 = vector.flat_transpose %47 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
        linalg.yield %out : i32
      } -> tensor<2x2x1xi32>
      scf.if %true {
        memref.tensor_store %14, %alloc_22 : memref<2x2xi1>
        %251 = math.ceil %12 : tensor<2x2xf32>
        %252 = arith.remsi %c-16896_i16, %c-16896_i16 : i16
        %253 = vector.broadcast %cst_6 : f32 to vector<2x2xf32>
        %254 = vector.fma %253, %253, %253 : vector<2x2xf32>
        %inserted_50 = tensor.insert %true into %4[%c0] : tensor<2xi1>
        %false_51 = arith.constant false
        %255 = math.floor %13 : tensor<2x2xf32>
        %256 = bufferization.clone %77 : memref<2xf16> to memref<2xf16>
      }
      %250 = math.copysign %cst_7, %cst_26 : f16
      %cast_49 = tensor.cast %transposed : tensor<2x2xf32> to tensor<?x?xf32>
    } else {
      %246 = math.round %8 : tensor<2x2xf32>
      %247 = index.casts %c750057657_i64 : i64 to index
      %248 = index.castu %c5 : index to i32
      %249 = arith.floordivsi %c16786_i16, %c-16896_i16 : i16
      %250 = vector.broadcast %cst_1 : f32 to vector<2x2xf32>
      %251 = vector.fma %250, %250, %250 : vector<2x2xf32>
      %252 = bufferization.clone %51 : memref<2x2xi16> to memref<2x2xi16>
      %c1_i32 = arith.constant 1 : i32
      %c0_i32 = arith.constant 0 : i32
      %253 = vector.transfer_read %15[%rank], %c0_i32 : tensor<2xi32>, vector<i32>
      %254 = index.maxs %c5, %c13
    }
    %83 = arith.remf %cst_4, %cst_4 : f32
    %84 = index.add %c7, %c3
    %85 = math.round %16 : tensor<2x2xf32>
    %86 = arith.cmpf oeq, %cst_6, %cst_4 : f32
    %87 = index.ceildivu %78, %32
    %88 = arith.divf %cst, %cst_6 : f32
    %89 = arith.addf %cst_7, %cst_5 : f16
    %90 = index.sizeof
    %91 = vector.broadcast %c16786_i16 : i16 to vector<2x2xi16>
    %92 = vector.outerproduct %40, %47, %91 {kind = #vector.kind<minsi>} : vector<2xi16>, vector<2xi16>
    %93 = arith.subi %c678952886_i64, %c750057657_i64 : i64
    memref.assume_alignment %alloc_21, 8 : memref<2x2xi64>
    %94 = index.casts %c1271653950_i32 : i32 to index
    %95 = vector.insert %c-16896_i16, %47 [0] : i16 into vector<2xi16>
    bufferization.dealloc_tensor %13 : tensor<2x2xf32>
    vector.print %40 : vector<2xi16>
    %96 = vector.flat_transpose %65 {columns = 1 : i32, rows = 2 : i32} : vector<2xf16> -> vector<2xf16>
    %97 = vector.insertelement %c16786_i16, %23[%c1 : index] : vector<2xi16>
    %98 = arith.divf %cst_1, %cst_3 : f32
    %99 = index.sizeof
    %100 = arith.remf %cst_4, %cst : f32
    %c1_i64 = arith.constant 1 : i64
    %c0_i64 = arith.constant 0 : i64
    %101 = vector.transfer_read %0[%78], %c0_i64 : tensor<2xi64>, vector<i64>
    %102 = arith.shrui %c1465641628_i64, %c750057657_i64 : i64
    %103 = vector.create_mask %c7, %c8 : vector<2x2xi1>
    %104 = vector.insertelement %cst_5, %65[%99 : index] : vector<2xf16>
    %105 = index.add %c11, %c6
    %collapsed = tensor.collapse_shape %3 [[0, 1]] : tensor<2x2xi32> into tensor<4xi32>
    %106 = vector.broadcast %true : i1 to vector<2xi1>
    %dest, %accumulated_value = vector.scan <maxsi>, %103, %106 {inclusive = true, reduction_dim = 0 : i64} : vector<2x2xi1>, vector<2xi1>
    %107 = math.ipowi %4, %11 : tensor<2xi1>
    %108 = arith.muli %true, %true : i1
    %109 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%90, %94, %32)
    %110 = index.sub %73, %c12
    %111 = math.log1p %13 : tensor<2x2xf32>
    %112 = index.divu %c13, %c7
    %113 = scf.if %true_0 -> (memref<2xf32>) {
      %246 = arith.subi %c16786_i16, %c-16896_i16 : i16
      bufferization.dealloc_tensor %13 : tensor<2x2xf32>
      %247 = affine.min affine_map<(d0, d1, d2) -> ((-d2) ceildiv 128, -d2, d0 mod 16 + (d2 - d0 - d1) * 63)>(%c11, %90, %c2)
      %248 = arith.remf %cst_2, %cst_7 : f16
      %249 = arith.floordivsi %c678952886_i64, %c1465641628_i64 : i64
      %250 = vector.multi_reduction <maxsi>, %23, %c-16896_i16 [0] : vector<2xi16> to i16
      %251 = arith.cmpi sgt, %c750057657_i64, %c678952886_i64 : i64
      %252 = vector.broadcast %c8 : index to vector<3xindex>
      %253 = vector.broadcast %true : i1 to vector<3xi1>
      %254 = vector.broadcast %cst_26 : f16 to vector<3xf16>
      vector.scatter %alloc_8[%c0, %c0] [%252], %253, %254 : memref<2x2xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
      %alloc_48 = memref.alloc() : memref<2xf32>
      scf.yield %alloc_48 : memref<2xf32>
    } else {
      %246 = vector.bitcast %23 : vector<2xi16> to vector<2xf16>
      %247 = math.exp %cst_5 : f16
      %248 = arith.maxf %cst_26, %cst_7 : f16
      %249 = math.absf %8 : tensor<2x2xf32>
      %250 = arith.maxf %cst_1, %cst_3 : f32
      %251 = math.tan %2 : tensor<2x2xf32>
      %252 = math.exp %18 : tensor<2x2xf32>
      %253 = math.atan2 %18, %2 : tensor<2x2xf32>
      %alloc_48 = memref.alloc() : memref<2xf32>
      scf.yield %alloc_48 : memref<2xf32>
    }
    memref.alloca_scope  {
      %246 = arith.divf %cst_5, %cst_7 : f16
      %247 = arith.divf %cst_7, %cst_26 : f16
      %248 = memref.alloca_scope  -> (f16) {
        %276 = index.add %c14, %87
        %277 = math.tan %2 : tensor<2x2xf32>
        %278 = arith.floordivsi %c1271653950_i32, %c1271653950_i32 : i32
        %279 = arith.xori %c678952886_i64, %c1_i64 : i64
        %280 = index.maxs %c12, %61
        %281 = index.ceildivu %c14, %c6
        %282 = index.sizeof
        %283 = arith.ori %true_0, %true : i1
        %284 = bufferization.clone %alloc_15 : memref<2xi16> to memref<2xi16>
        %from_elements = tensor.from_elements %c1271653950_i32, %c1271653950_i32, %c1271653950_i32, %c1271653950_i32 : tensor<2x2xi32>
        %285 = arith.addi %true_0, %true_0 : i1
        %286 = index.floordivs %rank, %42
        %287 = arith.muli %c1_i64, %c678952886_i64 : i64
        %288 = arith.muli %c1465641628_i64, %c678952886_i64 : i64
        %289 = index.casts %c750057657_i64 : i64 to index
        %290 = math.atan %cst_7 : f16
        %291 = affine.load %284[%c13] : memref<2xi16>
        %292 = memref.realloc %alloc_23 : memref<2xi1> to memref<2xi1>
        %293 = math.ctlz %c16786_i16 : i16
        %294 = vector.broadcast %cst_6 : f32 to vector<2x2xf32>
        %295 = arith.cmpf one, %cst_1, %cst : f32
        %296 = affine.apply affine_map<(d0, d1) -> (0)>(%c6, %109)
        %297 = math.ceil %13 : tensor<2x2xf32>
        %298 = math.round %cst_3 : f32
        %299 = vector.broadcast %true_0 : i1 to vector<2xi1>
        %300 = vector.broadcast %c1271653950_i32 : i32 to vector<2xi32>
        %301 = vector.gather %alloc_17[%280] [%300], %299, %54 : memref<2xf16>, vector<2xi32>, vector<2xi1>, vector<2xf16> into vector<2xf16>
        %302 = vector.extract %23[0] : vector<2xi16>
        %303 = math.exp %reduced : tensor<2xf32>
        %304 = arith.addi %c-16896_i16, %c16786_i16 : i16
        %305 = affine.min affine_map<(d0, d1, d2, d3) -> ((d2 + 1) * 16, d0, d1, d2)>(%61, %c8, %c1, %c14)
        %306 = memref.realloc %77 : memref<2xf16> to memref<2xf16>
        %307 = vector.broadcast %cst_26 : f16 to vector<2x2xf16>
        %308 = vector.outerproduct %301, %54, %307 {kind = #vector.kind<add>} : vector<2xf16>, vector<2xf16>
        %309 = math.cos %12 : tensor<2x2xf32>
        memref.alloca_scope.return %cst_2 : f16
      }
      %inserted_48 = tensor.insert %cst_4 into %16[%c0, %c1] : tensor<2x2xf32>
      %249 = index.add %c1, %c4
      %250 = index.mul %c3, %249
      %251 = arith.addi %true_0, %true_0 : i1
      %252 = arith.divf %248, %248 : f16
      %253 = math.powf %cst_3, %cst_4 : f32
      %254 = vector.broadcast %cst_3 : f32 to vector<3x2xf32>
      %255 = vector.shuffle %47, %40 [0, 2] : vector<2xi16>, vector<2xi16>
      %256 = math.tan %2 : tensor<2x2xf32>
      %257 = affine.max affine_map<(d0, d1) -> (d1 floordiv 64, d1 * -4, d0 * 8, d0)>(%61, %c5)
      %258 = arith.remsi %c-16896_i16, %c-16896_i16 : i16
      %259 = scf.if %true -> (i1) {
        %276 = math.round %cst_26 : f16
        %277 = vector.extract_strided_slice %254 {offsets = [1], sizes = [2], strides = [1]} : vector<3x2xf32> to vector<2x2xf32>
        %278 = arith.addf %cst_6, %cst_3 : f32
        %279 = vector.broadcast %true : i1 to vector<2xi1>
        %280 = vector.maskedload %28[%c1], %279, %96 : memref<2xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
        %281 = arith.cmpi ugt, %c-16896_i16, %c-16896_i16 : i16
        %282 = vector.bitcast %47 : vector<2xi16> to vector<2xi16>
        %283 = index.sub %78, %250
        %c1_i64_50 = arith.constant 1 : i64
        %284 = vector.transfer_read %6[%c10, %109], %c1_i64_50 : tensor<2x2xi64>, vector<11xi64>
        scf.yield %true_0 : i1
      } else {
        %276 = math.floor %cst_4 : f32
        %277 = vector.broadcast %cst_1 : f32 to vector<2x2xf32>
        %278 = vector.fma %277, %277, %277 : vector<2x2xf32>
        %279 = math.log2 %cst_26 : f16
        memref.assume_alignment %alloc_18, 1 : memref<2xf16>
        %280 = math.cos %9 : tensor<2xf16>
        %281 = arith.cmpf une, %cst_4, %cst_6 : f32
        %282 = arith.maxui %true_0, %true_0 : i1
        %283 = bufferization.clone %alloc_9 : memref<2xi32> to memref<2xi32>
        scf.yield %true_0 : i1
      }
      %260 = math.log2 %2 : tensor<2x2xf32>
      %261 = math.powf %cst_6, %cst_6 : f32
      %262 = math.exp %cst_6 : f32
      %263 = vector.shuffle %20, %47 [0, 1] : vector<2xi16>, vector<2xi16>
      %264 = math.tan %248 : f16
      %265 = math.log1p %13 : tensor<2x2xf32>
      %alloc_49 = memref.alloc() : memref<2x2xi1>
      %266 = index.divs %c11, %84
      %267 = vector.flat_transpose %20 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
      %268 = math.roundeven %7 : tensor<2x2xf32>
      %269 = vector.transpose %65, [0] : vector<2xf16> to vector<2xf16>
      %270 = arith.maxui %c-16896_i16, %c-16896_i16 : i16
      %271 = vector.splat %112 : vector<2xindex>
      %272 = tensor.empty() : tensor<2x2xi32>
      %273 = math.exp %5 : tensor<2x2xf32>
      %274 = vector.transpose %40, [0] : vector<2xi16> to vector<2xi16>
      %275 = arith.ceildivsi %c-16896_i16, %c-16896_i16 : i16
    }
    %114 = math.log2 %2 : tensor<2x2xf32>
    %115 = index.add %90, %87
    %expanded_31 = tensor.expand_shape %0 [[0, 1]] : tensor<2xi64> into tensor<2x1xi64>
    %116 = math.atan %8 : tensor<2x2xf32>
    %generated_32 = tensor.generate %46 {
    ^bb0(%arg2: index, %arg3: index):
      %collapsed_48 = tensor.collapse_shape %10 [[0, 1]] : tensor<2x2xi64> into tensor<4xi64>
      %246 = arith.divf %cst_5, %cst_7 : f16
      %247 = index.sub %c4, %c15
      %inserted_49 = tensor.insert %cst_4 into %12[%c1, %c1] : tensor<2x2xf32>
      tensor.yield %cst_3 : f32
    } : tensor<?x2xf32>
    %117 = math.roundeven %cst_26 : f16
    %118 = vector.broadcast %c5 : index to vector<2xindex>
    %119 = vector.broadcast %true : i1 to vector<2xi1>
    vector.scatter %alloc_10[%c0, %c1] [%118], %119, %20 : memref<2x2xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
    %120 = vector.flat_transpose %65 {columns = 1 : i32, rows = 2 : i32} : vector<2xf16> -> vector<2xf16>
    %121 = vector.broadcast %cst_4 : f32 to vector<3x2xf32>
    %122 = vector.fma %121, %121, %121 : vector<3x2xf32>
    %123 = vector.flat_transpose %23 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
    %inserted = tensor.insert %c1271653950_i32 into %15[%c0] : tensor<2xi32>
    %124 = vector.transpose %54, [0] : vector<2xf16> to vector<2xf16>
    %125 = math.powf %cst_3, %cst : f32
    %126 = math.log %9 : tensor<2xf16>
    %inserted_33 = tensor.insert %c750057657_i64 into %0[%c0] : tensor<2xi64>
    %127 = vector.transpose %96, [0] : vector<2xf16> to vector<2xf16>
    %128 = arith.mulf %cst_3, %cst : f32
    bufferization.dealloc_tensor %10 : tensor<2x2xi64>
    %129 = tensor.empty() : tensor<2x2xf32>
    %mapped = linalg.map ins(%18 : tensor<2x2xf32>) outs(%129 : tensor<2x2xf32>)
      (%in: f32) {
        %246 = memref.realloc %alloc_18 : memref<2xf16> to memref<3xf16>
        %247 = vector.bitcast %47 : vector<2xi16> to vector<2xi16>
        %248 = math.cttz %4 : tensor<2xi1>
        %249 = math.atan %18 : tensor<2x2xf32>
        %250 = scf.index_switch %68 -> tensor<2x2xi1> 
        case 1 {
          %281 = arith.mulf %cst_2, %cst_2 : f16
          %cast_49 = tensor.cast %0 : tensor<2xi64> to tensor<?xi64>
          %282 = vector.broadcast %c-16896_i16 : i16 to vector<2x2xi16>
          %283 = vector.outerproduct %20, %40, %282 {kind = #vector.kind<xor>} : vector<2xi16>, vector<2xi16>
          %284 = index.divs %c7, %64
          %285 = math.powf %16, %8 : tensor<2x2xf32>
          %286 = index.ceildivu %64, %59
          %287 = math.cos %8 : tensor<2x2xf32>
          %288 = vector.broadcast %cst_2 : f16 to vector<2xf16>
          %289 = vector.shuffle %23, %23 [0, 1, 2] : vector<2xi16>, vector<2xi16>
          %inserted_50 = tensor.insert %c750057657_i64 into %6[%c1, %c1] : tensor<2x2xi64>
          %290 = arith.addi %c1_i64, %c750057657_i64 : i64
          %291 = math.tanh %129 : tensor<2x2xf32>
          %cast_51 = tensor.cast %5 : tensor<2x2xf32> to tensor<?x?xf32>
          %inserted_52 = tensor.insert %cst_26 into %60[%c2, %c1] : tensor<3x2xf16>
          %292 = affine.max affine_map<(d0, d1, d2) -> ((d1 + 8) floordiv 64, d1 ceildiv 16)>(%c4, %105, %c3)
          %cst_53 = arith.constant 1.03898291E+9 : f32
          scf.yield %14 : tensor<2x2xi1>
        }
        default {
          %cast_49 = tensor.cast %1 : tensor<2x2xi32> to tensor<?x?xi32>
          %281 = arith.addi %c1_i64, %c678952886_i64 : i64
          %282 = math.cos %cst_4 : f32
          %283 = affine.min affine_map<(d0) -> (0, d0)>(%c13)
          %284 = arith.minf %cst_26, %cst_2 : f16
          %285 = vector.broadcast %true : i1 to vector<2xi1>
          %286 = vector.maskedload %alloc_10[%c0, %c0], %285, %247 : memref<2x2xi16>, vector<2xi1>, vector<2xi16> into vector<2xi16>
          %expanded_50 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<2x2xi64> into tensor<2x2x1xi64>
          %287 = index.ceildivu %59, %c4
          %288 = math.atan %17 : tensor<2x2xf32>
          %289 = math.ipowi %3, %3 : tensor<2x2xi32>
          %290 = arith.cmpf ord, %cst_5, %cst_2 : f16
          %291 = vector.splat %283 : vector<2xindex>
          %292 = arith.muli %c16786_i16, %c-16896_i16 : i16
          %cast_51 = tensor.cast %8 : tensor<2x2xf32> to tensor<?x?xf32>
          %293 = math.ctlz %c1465641628_i64 : i64
          %true_52 = arith.constant true
          %false_53 = arith.constant false
          %294 = vector.transfer_read %14[%287, %c0], %false_53 : tensor<2x2xi1>, vector<i1>
          scf.yield %14 : tensor<2x2xi1>
        }
        %251 = scf.if %true -> (memref<2xf32>) {
          %true_49 = index.bool.constant true
          %281 = arith.addf %cst_3, %in : f32
          %282 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %96, %96, %cst_5 : vector<2xf16>, vector<2xf16> into f16
          %283 = index.maxs %78, %59
          %284 = math.expm1 %cst : f32
          %285 = index.ceildivs %c2, %c0
          %286 = math.log10 %cst_26 : f16
          %287 = math.fma %9, %9, %9 : tensor<2xf16>
          scf.yield %113 : memref<2xf32>
        } else {
          %281 = arith.remui %c1_i64, %c1465641628_i64 : i64
          %282 = arith.addi %true_0, %true : i1
          %283 = math.ctpop %c-16896_i16 : i16
          %284 = math.roundeven %16 : tensor<2x2xf32>
          %285 = index.floordivs %c12, %46
          %286 = math.copysign %cst, %cst_1 : f32
          %287 = math.round %reduced : tensor<2xf32>
          %288 = arith.mulf %cst_6, %cst_4 : f32
          scf.yield %113 : memref<2xf32>
        }
        %252 = arith.shrui %c1271653950_i32, %c1271653950_i32 : i32
        %253 = math.ctpop %11 : tensor<2xi1>
        %254 = vector.broadcast %true_0 : i1 to vector<2xi1>
        %255 = vector.multi_reduction <and>, %103, %254 [0] : vector<2x2xi1> to vector<2xi1>
        %256 = arith.mulf %in, %cst_3 : f32
        %257 = index.ceildivs %c4, %c11
        memref.assume_alignment %alloc_15, 1 : memref<2xi16>
        %258 = math.tanh %cst : f32
        %259 = math.tan %12 : tensor<2x2xf32>
        %260 = math.atan %cst_4 : f32
        %261 = math.rsqrt %cst_5 : f16
        %262 = affine.max affine_map<(d0) -> (d0 - 32, -(d0 - 32), d0 - 32, d0 mod 4 + 32)>(%c5)
        %263 = arith.ceildivsi %c1_i64, %c678952886_i64 : i64
        %264 = vector.broadcast %cst_3 : f32 to vector<11xf32>
        %265 = vector.broadcast %true : i1 to vector<11xi1>
        %266 = vector.maskedload %alloc_16[%c1, %c1], %265, %264 : memref<2x2xf32>, vector<11xi1>, vector<11xf32> into vector<11xf32>
        %267 = index.maxs %99, %262
        %268 = vector.transpose %65, [0] : vector<2xf16> to vector<2xf16>
        %269 = vector.broadcast %cst_1 : f32 to vector<2xf32>
        %270 = vector.broadcast %c1271653950_i32 : i32 to vector<2xi32>
        %271 = vector.gather %113[%112] [%270], %254, %269 : memref<2xf32>, vector<2xi32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
        %272 = index.divu %262, %115
        %273 = bufferization.clone %alloc_19 : memref<2xi1> to memref<2xi1>
        %extracted = tensor.extract %7[%c1, %c0] : tensor<2x2xf32>
        memref.alloca_scope  {
          %281 = arith.maxui %true, %true : i1
          %282 = vector.broadcast %cst_1 : f32 to vector<11x11xf32>
          %283 = vector.outerproduct %266, %264, %282 {kind = #vector.kind<mul>} : vector<11xf32>, vector<11xf32>
          %284 = arith.negf %cst : f32
          %285 = math.powf %cst_5, %cst_2 : f16
          %286 = arith.shrsi %c1465641628_i64, %c1_i64 : i64
          %287 = math.ctpop %c-16896_i16 : i16
          %288 = index.sub %257, %c3
          %alloc_49 = memref.alloc() : memref<3x2xi1>
          %289 = bufferization.to_memref %generated_32 : memref<?x2xf32>
          %290 = vector.bitcast %266 : vector<11xf32> to vector<11xf32>
          %291 = arith.xori %true, %true : i1
          %292 = vector.insertelement %c16786_i16, %123[%262 : index] : vector<2xi16>
          %293 = index.ceildivu %c13, %31
          memref.copy %alloc_23, %alloc_19 : memref<2xi1> to memref<2xi1>
          %294 = arith.remui %true, %true : i1
          %295 = math.round %cst_1 : f32
          %296 = bufferization.clone %77 : memref<2xf16> to memref<2xf16>
          %297 = math.ipowi %3, %3 : tensor<2x2xi32>
          %298 = arith.remsi %c1465641628_i64, %c1_i64 : i64
          %c347594803_i64 = arith.constant 347594803 : i64
          %299 = math.copysign %12, %16 : tensor<2x2xf32>
          %300 = vector.shuffle %54, %54 [3] : vector<2xf16>, vector<2xf16>
          memref.tensor_store %10, %alloc_21 : memref<2x2xi64>
          %301 = index.add %94, %c13
          %alloc_50 = memref.alloc() : memref<2xf32>
          %302 = arith.floordivsi %c750057657_i64, %c750057657_i64 : i64
          %303 = math.tan %9 : tensor<2xf16>
          %304 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %20, %20, %c16786_i16 : vector<2xi16>, vector<2xi16> into i16
          %305 = math.cos %extracted : f32
          %306 = math.log2 %16 : tensor<2x2xf32>
          %307 = math.exp %5 : tensor<2x2xf32>
          %308 = index.sub %c0, %rank
        }
        %274 = math.atan %16 : tensor<2x2xf32>
        %275 = memref.realloc %alloc_23 : memref<2xi1> to memref<11xi1>
        memref.copy %alloc_12, %alloc_14 : memref<3x2xf16> to memref<3x2xf16>
        memref.alloca_scope  {
          %281 = arith.minf %cst, %in : f32
          %282 = index.maxs %c5, %64
          %283 = math.exp2 %cst_5 : f16
          %284 = vector.load %alloc_13[%c1, %c0] : memref<2x2xf16>, vector<2x2xf16>
          %285 = vector.shuffle %265, %265 [6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21] : vector<11xi1>, vector<11xi1>
          %cast_49 = tensor.cast %7 : tensor<2x2xf32> to tensor<?x?xf32>
          %286 = vector.flat_transpose %271 {columns = 1 : i32, rows = 2 : i32} : vector<2xf32> -> vector<2xf32>
          %cst_50 = arith.constant 1.000000e+00 : f32
          %287 = vector.transfer_read %8[%115, %257], %cst_50 : tensor<2x2xf32>, vector<3xf32>
          %288 = arith.mulf %cst_6, %cst_1 : f32
          %289 = index.mul %46, %61
          %290 = arith.muli %c678952886_i64, %c1_i64 : i64
          %291 = index.add %c12, %c8
          %292 = math.roundeven %cst_1 : f32
          %293 = math.exp2 %cst_2 : f16
          %294 = math.copysign %2, %17 : tensor<2x2xf32>
          %295 = vector.broadcast %cst_1 : f32 to vector<3xf32>
          %dest_51, %accumulated_value_52 = vector.scan <mul>, %121, %295 {inclusive = false, reduction_dim = 1 : i64} : vector<3x2xf32>, vector<3xf32>
          %296 = affine.max affine_map<(d0, d1, d2) -> (d0 * 8)>(%32, %c9, %291)
          %297 = vector.extract_strided_slice %284 {offsets = [0], sizes = [2], strides = [1]} : vector<2x2xf16> to vector<2x2xf16>
          %298 = arith.addi %c1271653950_i32, %c1271653950_i32 : i32
          %299 = vector.insertelement %cst_5, %54[%c0 : index] : vector<2xf16>
          %300 = arith.divf %cst, %extracted : f32
          %301 = math.copysign %reduced, %19 : tensor<2xf32>
          %302 = arith.remf %cst_7, %cst_5 : f16
          %303 = index.add %272, %90
          %304 = arith.maxui %true, %true : i1
          %305 = index.sizeof
          %alloc_53 = memref.alloc() : memref<3x2xf16>
          %306 = math.absf %60 : tensor<3x2xf16>
          %307 = index.sub %61, %c9
          %308 = vector.splat %112 : vector<2x2xindex>
          %309 = index.mul %90, %296
          %310 = affine.max affine_map<(d0, d1, d2, d3) -> ((d0 - 16) ceildiv 4, d3 mod 16 - d2, d0 - 16, d0)>(%291, %c1, %78, %64)
        }
        %276 = math.tan %cst : f32
        %277 = tensor.empty() : tensor<3x2xi16>
        %278 = vector.broadcast %c16786_i16 : i16 to vector<2x2xi16>
        %279 = vector.broadcast %c1271653950_i32 : i32 to vector<2x2xi32>
        %280 = vector.gather %277[%90, %59] [%279], %103, %278 : tensor<3x2xi16>, vector<2x2xi32>, vector<2x2xi1>, vector<2x2xi16> into vector<2x2xi16>
        %cst_48 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_48 : f32
      }
    %130 = arith.addf %cst_1, %cst_6 : f32
    %false = index.bool.constant false
    %131 = arith.subi %c1465641628_i64, %c678952886_i64 : i64
    memref.alloca_scope  {
      %246 = vector.flat_transpose %20 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
      scf.index_switch %94 
      case 1 {
        %274 = vector.broadcast %c16786_i16 : i16 to vector<2x2xi16>
        %275 = vector.broadcast %cst_4 : f32 to vector<2xf32>
        %276 = math.roundeven %19 : tensor<2xf32>
        %277 = vector.load %alloc_23[%c0] : memref<2xi1>, vector<2x2xi1>
        %278 = arith.addi %c-16896_i16, %c-16896_i16 : i16
        %279 = math.exp %8 : tensor<2x2xf32>
        %280 = arith.shli %c678952886_i64, %c1465641628_i64 : i64
        %281 = vector.shuffle %123, %20 [0, 1, 2, 3] : vector<2xi16>, vector<2xi16>
        %282 = math.tanh %cst_26 : f16
        %283 = math.tanh %reduced : tensor<2xf32>
        %284 = arith.floordivsi %c1271653950_i32, %c1271653950_i32 : i32
        %285 = arith.ceildivsi %c-16896_i16, %c16786_i16 : i16
        %286 = index.add %109, %59
        %287 = memref.realloc %28 : memref<2xf16> to memref<2xf16>
        %288 = arith.ceildivsi %true_0, %true : i1
        %289 = arith.remf %cst_26, %cst_26 : f16
        scf.yield
      }
      case 2 {
        %274 = vector.broadcast %cst_4 : f32 to vector<3x2xf32>
        %275 = vector.fma %274, %122, %122 : vector<3x2xf32>
        %276 = vector.flat_transpose %246 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
        %277 = affine.min affine_map<(d0) -> (-((d0 - 16) ceildiv 2))>(%90)
        %278 = math.log2 %cst_2 : f16
        %279 = affine.min affine_map<(d0, d1, d2, d3) -> (d3, d3, 0, -d0)>(%110, %84, %c8, %c2)
        %280 = arith.shrsi %c-16896_i16, %c16786_i16 : i16
        %281 = vector.multi_reduction <minui>, %47, %40 [] : vector<2xi16> to vector<2xi16>
        %282 = math.exp2 %cst_26 : f16
        %283 = arith.cmpf ueq, %cst_1, %cst_3 : f32
        %284 = memref.realloc %alloc_19 : memref<2xi1> to memref<2xi1>
        %285 = index.castu %c9 : index to i32
        %286 = math.tanh %129 : tensor<2x2xf32>
        %alloca = memref.alloca() : memref<2xf16>
        memref.tensor_store %14, %alloc_22 : memref<2x2xi1>
        %287 = math.exp2 %cst_6 : f32
        %288 = math.powf %12, %2 : tensor<2x2xf32>
        scf.yield
      }
      case 3 {
        %274 = arith.mulf %cst, %cst_1 : f32
        %275 = vector.broadcast %c750057657_i64 : i64 to vector<2x2xi64>
        %276 = vector.shuffle %246, %20 [1, 3] : vector<2xi16>, vector<2xi16>
        %277 = affine.min affine_map<(d0, d1, d2) -> (d0 ceildiv 32, d2 - d2 ceildiv 32, d0 ceildiv 32 + (d1 - 4) floordiv 16, -(d0 - (d1 + d2)))>(%c9, %c10, %110)
        %278 = vector.flat_transpose %54 {columns = 1 : i32, rows = 2 : i32} : vector<2xf16> -> vector<2xf16>
        %279 = arith.subi %c-16896_i16, %c-16896_i16 : i16
        %280 = vector.insert %cst_2, %278 [0] : f16 into vector<2xf16>
        %281 = arith.shrsi %true, %true : i1
        %282 = bufferization.clone %alloc_16 : memref<2x2xf32> to memref<2x2xf32>
        %283 = math.roundeven %reduced : tensor<2xf32>
        %284 = bufferization.to_memref %expanded_31 : memref<2x1xi64>
        %285 = arith.shli %c-16896_i16, %c16786_i16 : i16
        %286 = arith.xori %c678952886_i64, %c678952886_i64 : i64
        %287 = bufferization.clone %284 : memref<2x1xi64> to memref<2x1xi64>
        %288 = arith.floordivsi %true, %true : i1
        %289 = vector.shuffle %120, %96 [0] : vector<2xf16>, vector<2xf16>
        scf.yield
      }
      case 4 {
        %274 = memref.realloc %alloc_9 : memref<2xi32> to memref<3xi32>
        %275 = index.ceildivu %c14, %rank
        %cst_56 = arith.constant 1.000000e+00 : f32
        %cst_57 = arith.constant 0.000000e+00 : f32
        %276 = vector.transfer_read %alloc[%c14, %c12], %cst_57 : memref<2x2xf32>, vector<f32>
        %277 = arith.xori %c16786_i16, %c16786_i16 : i16
        %278 = arith.divsi %c16786_i16, %c-16896_i16 : i16
        %279 = bufferization.to_memref %3 : memref<2x2xi32>
        %280 = arith.addf %cst_26, %cst_5 : f16
        %281 = index.sizeof
        %282 = vector.bitcast %121 : vector<3x2xf32> to vector<3x2xf32>
        %283 = index.casts %c10 : index to i32
        %284 = vector.load %alloc[%c1, %c1] : memref<2x2xf32>, vector<3x2xf32>
        %285 = bufferization.to_memref %collapsed : memref<4xi32>
        %286 = math.tan %7 : tensor<2x2xf32>
        %287 = arith.divui %c1_i64, %c1_i64 : i64
        %288 = arith.cmpf true, %cst_56, %cst_1 : f32
        %289 = math.fma %12, %13, %16 : tensor<2x2xf32>
        scf.yield
      }
      default {
        %274 = vector.load %alloc_20[%c1, %c1] : memref<2x2xf32>, vector<2xf32>
        %275 = math.fma %cst_2, %cst_5, %cst_2 : f16
        %cast_56 = tensor.cast %1 : tensor<2x2xi32> to tensor<?x?xi32>
        %276 = math.tanh %2 : tensor<2x2xf32>
        %277 = arith.divui %c-16896_i16, %c16786_i16 : i16
        %278 = index.casts %90 : index to i32
        %279 = arith.divui %c1271653950_i32, %c1271653950_i32 : i32
        %280 = vector.bitcast %120 : vector<2xf16> to vector<2xf16>
        %281 = arith.divui %true, %true : i1
        %282 = vector.broadcast %cst_5 : f16 to vector<11xf16>
        %283 = vector.broadcast %true_0 : i1 to vector<11xi1>
        %284 = vector.maskedload %alloc_12[%c1, %c1], %283, %282 : memref<3x2xf16>, vector<11xi1>, vector<11xf16> into vector<11xf16>
        %285 = math.atan %12 : tensor<2x2xf32>
        %286 = math.fpowi %8, %1 : tensor<2x2xf32>, tensor<2x2xi32>
        %287 = arith.xori %true, %false : i1
        %288 = tensor.empty() : tensor<2x2xi1>
        %289 = index.castu %46 : index to i32
        %290 = math.ceil %cst_7 : f16
      }
      %247 = arith.remsi %false, %true : i1
      %248 = bufferization.to_memref %13 : memref<2x2xf32>
      scf.if %true_0 {
        %274 = bufferization.to_tensor %alloc_18 : memref<2xf16>
        %275 = bufferization.to_memref %13 : memref<2x2xf32>
        %alloc_56 = memref.alloc() : memref<2xf16>
        %cast_57 = tensor.cast %14 : tensor<2x2xi1> to tensor<?x?xi1>
        %276 = index.castu %c5 : index to i32
        %277 = arith.xori %c1_i64, %c1465641628_i64 : i64
        %alloc_58 = memref.alloc() : memref<3x2xi32>
        %278 = math.atan %12 : tensor<2x2xf32>
      }
      %249 = tensor.empty() : tensor<2x2xi1>
      %mapped_48 = linalg.map ins(%alloc_22 : memref<2x2xi1>) outs(%249 : tensor<2x2xi1>)
        (%in: i1) {
          %274 = math.tan %cst_1 : f32
          %275 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 + d1 ceildiv 16 - 8, d0 * 64 - 4)>(%84, %94, %105, %c1)
          %276 = vector.bitcast %96 : vector<2xf16> to vector<2xf16>
          %277 = arith.subi %c16786_i16, %c-16896_i16 : i16
          vector.print %121 : vector<3x2xf32>
          %278 = index.maxs %109, %59
          %279 = math.log10 %reduced : tensor<2xf32>
          %280 = math.powf %12, %5 : tensor<2x2xf32>
          %281 = arith.divui %in, %in : i1
          %c20961_i16 = arith.constant 20961 : i16
          %282 = bufferization.clone %alloc_20 : memref<2x2xf32> to memref<2x2xf32>
          %283 = arith.remf %cst_4, %cst_6 : f32
          %284 = arith.divsi %true, %true_0 : i1
          %285 = arith.divui %c1_i64, %c750057657_i64 : i64
          %286 = math.copysign %9, %9 : tensor<2xf16>
          %287 = math.roundeven %cst_5 : f16
          %288 = affine.load %alloc_21[%c11, %c8] : memref<2x2xi64>
          %289 = index.divu %64, %c1
          %290 = math.exp %cst_5 : f16
          %291 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %40, %40, %c16786_i16 : vector<2xi16>, vector<2xi16> into i16
          %292 = vector.bitcast %40 : vector<2xi16> to vector<2xi16>
          %293 = arith.ceildivsi %in, %in : i1
          %294 = math.absf %7 : tensor<2x2xf32>
          %295 = arith.divui %false, %false : i1
          %296 = arith.remui %c750057657_i64, %c678952886_i64 : i64
          %297 = math.round %7 : tensor<2x2xf32>
          %298 = math.tanh %7 : tensor<2x2xf32>
          %299 = arith.divf %cst_4, %cst_1 : f32
          %300 = math.atan %8 : tensor<2x2xf32>
          %301 = arith.subi %c-16896_i16, %c-16896_i16 : i16
          %302 = arith.shli %c1271653950_i32, %c1271653950_i32 : i32
          %303 = vector.extract %103[1] : vector<2x2xi1>
          %true_56 = arith.constant true
          linalg.yield %true_56 : i1
        }
      %250 = index.divu %109, %115
      %251 = arith.mulf %cst_3, %cst_6 : f32
      %252 = arith.addi %c1_i64, %c1465641628_i64 : i64
      %253 = index.maxs %68, %c12
      %inserted_49 = tensor.insert %cst into %129[%c1, %c0] : tensor<2x2xf32>
      %254 = vector.broadcast %c16786_i16 : i16 to vector<11xi16>
      %255 = vector.broadcast %false : i1 to vector<11xi1>
      %256 = vector.maskedload %alloc_15[%c0], %255, %254 : memref<2xi16>, vector<11xi1>, vector<11xi16> into vector<11xi16>
      %257 = index.ceildivs %115, %87
      %258 = bufferization.to_tensor %51 : memref<2x2xi16>
      %259 = arith.divsi %true, %true : i1
      %260 = vector.reduction <minf>, %54 : vector<2xf16> into f16
      %collapsed_50 = tensor.collapse_shape %258 [[0, 1]] : tensor<2x2xi16> into tensor<4xi16>
      %alloc_51 = memref.alloc() : memref<2x2xi16>
      %261 = math.fma %12, %7, %18 : tensor<2x2xf32>
      %262 = vector.create_mask %99, %78 : vector<2x2xi1>
      %263 = math.tanh %cst_7 : f16
      %264 = tensor.empty() : tensor<2x2xf32>
      %mapped_52 = linalg.map ins(%12 : tensor<2x2xf32>) outs(%264 : tensor<2x2xf32>)
        (%in: f32) {
          %cast_56 = tensor.cast %14 : tensor<2x2xi1> to tensor<?x?xi1>
          %274 = index.divu %68, %257
          %275 = arith.minui %true_0, %true : i1
          %276 = vector.broadcast %true : i1 to vector<2x2xi1>
          %277 = affine.min affine_map<(d0, d1) -> (d1 + d1 - 64)>(%59, %c13)
          %278 = vector.insertelement %cst_26, %54[%c0 : index] : vector<2xf16>
          %279 = vector.flat_transpose %123 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
          %280 = math.ctpop %10 : tensor<2x2xi64>
          %281 = arith.remf %cst_4, %cst : f32
          %282 = math.cos %transposed : tensor<2x2xf32>
          %283 = math.floor %12 : tensor<2x2xf32>
          %284 = index.ceildivu %61, %c6
          %285 = math.round %129 : tensor<2x2xf32>
          %286 = vector.create_mask %c0, %c0 : vector<2x2xi1>
          %287 = math.cos %cst_6 : f32
          %288 = math.rsqrt %264 : tensor<2x2xf32>
          %289 = index.castu %94 : index to i32
          %290 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %65, %65, %cst_26 : vector<2xf16>, vector<2xf16> into f16
          %291 = math.tan %5 : tensor<2x2xf32>
          %292 = vector.extract %96[0] : vector<2xf16>
          %293 = vector.extract %65[0] : vector<2xf16>
          %294 = math.exp2 %cst : f32
          %splat = tensor.splat %c678952886_i64 : tensor<2x2xi64>
          %295 = vector.bitcast %120 : vector<2xf16> to vector<2xf16>
          %296 = vector.extract %256[5] : vector<11xi16>
          %297 = arith.shrsi %c678952886_i64, %c1_i64 : i64
          %298 = memref.realloc %77 : memref<2xf16> to memref<11xf16>
          %299 = bufferization.clone %248 : memref<2x2xf32> to memref<2x2xf32>
          %300 = arith.muli %false, %true_0 : i1
          %301 = math.fma %cst_7, %cst_7, %cst_5 : f16
          %302 = math.absf %17 : tensor<2x2xf32>
          %303 = tensor.empty() : tensor<3x2xi1>
          %304 = vector.broadcast %c1271653950_i32 : i32 to vector<2x2xi32>
          %305 = vector.gather %303[%42, %59] [%304], %286, %262 : tensor<3x2xi1>, vector<2x2xi32>, vector<2x2xi1>, vector<2x2xi1> into vector<2x2xi1>
          %cst_57 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_57 : f32
        }
      %265 = math.powf %cst_26, %cst_26 : f16
      %266 = index.ceildivs %99, %c0
      %267 = arith.xori %true_0, %true_0 : i1
      %268 = vector.broadcast %true : i1 to vector<2xi1>
      %dest_53, %accumulated_value_54 = vector.scan <add>, %262, %268 {inclusive = false, reduction_dim = 0 : i64} : vector<2x2xi1>, vector<2xi1>
      %alloc_55 = memref.alloc() : memref<2x2xi16>
      %269 = vector.shuffle %54, %54 [2] : vector<2xf16>, vector<2xf16>
      %270 = affine.for %arg2 = 0 to 91 iter_args(%arg3 = %4) -> (tensor<2xi1>) {
        affine.yield %arg3 : tensor<2xi1>
      }
      %271 = index.maxs %115, %59
      %272 = bufferization.clone %alloc_17 : memref<2xf16> to memref<2xf16>
      %273 = index.casts %c-16896_i16 : i16 to index
    }
    %132 = vector.shuffle %65, %65 [0] : vector<2xf16>, vector<2xf16>
    %133 = affine.load %alloc_13[%c5, %c11] : memref<2x2xf16>
    %134 = index.sub %c6, %c11
    %135 = arith.cmpf ule, %cst, %cst_3 : f32
    %136 = index.maxs %110, %68
    %137 = vector.extract_strided_slice %121 {offsets = [0], sizes = [2], strides = [1]} : vector<3x2xf32> to vector<2x2xf32>
    %cst_34 = arith.constant 4.803200e+04 : f16
    %138 = math.tan %129 : tensor<2x2xf32>
    %139 = index.sub %115, %c6
    %140 = arith.remf %cst_3, %cst_6 : f32
    %141 = vector.create_mask %46, %c10 : vector<3x2xi1>
    %142 = math.floor %129 : tensor<2x2xf32>
    %alloc_35 = memref.alloc() : memref<2x2xi32>
    %143 = vector.shuffle %65, %96 [2] : vector<2xf16>, vector<2xf16>
    %144 = arith.shli %false, %false : i1
    %145 = arith.divf %cst_6, %cst_1 : f32
    %146 = math.copysign %8, %12 : tensor<2x2xf32>
    %147 = math.atan %8 : tensor<2x2xf32>
    %148 = index.divu %110, %c15
    %149 = arith.shrui %true_0, %true : i1
    %150 = math.ctpop %10 : tensor<2x2xi64>
    %151 = index.casts %c-16896_i16 : i16 to index
    %152 = arith.addi %c1271653950_i32, %c1271653950_i32 : i32
    %153 = arith.divui %true, %false : i1
    %154 = index.add %136, %64
    %155 = math.atan %18 : tensor<2x2xf32>
    %156 = math.powf %9, %9 : tensor<2xf16>
    %generated_36 = tensor.generate %46, %c3 {
    ^bb0(%arg2: index, %arg3: index):
      %246 = math.absf %cst_4 : f32
      %alloca = memref.alloca() : memref<3x2xf32>
      %247 = math.log2 %16 : tensor<2x2xf32>
      %248 = math.ipowi %3, %1 : tensor<2x2xi32>
      tensor.yield %c1271653950_i32 : i32
    } : tensor<?x?xi32>
    %157 = arith.shrsi %true, %false : i1
    %158 = arith.shrsi %c1465641628_i64, %c1465641628_i64 : i64
    %159 = math.tanh %13 : tensor<2x2xf32>
    %160 = math.roundeven %8 : tensor<2x2xf32>
    %161 = math.floor %13 : tensor<2x2xf32>
    %162 = arith.ori %c-16896_i16, %c-16896_i16 : i16
    %163 = bufferization.clone %alloc_10 : memref<2x2xi16> to memref<2x2xi16>
    %164 = vector.multi_reduction <minf>, %65, %54 [] : vector<2xf16> to vector<2xf16>
    %165 = bufferization.to_memref %17 : memref<2x2xf32>
    %166 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded : tensor<2x2x1xi64>) {
    ^bb0(%out: i64):
      %246 = arith.remf %cst_1, %cst_4 : f32
      %247 = vector.broadcast %cst_4 : f32 to vector<2x2xf32>
      %248 = vector.fma %247, %137, %137 : vector<2x2xf32>
      %249 = bufferization.clone %alloc : memref<2x2xf32> to memref<2x2xf32>
      %250 = math.roundeven %8 : tensor<2x2xf32>
      %251 = math.exp %5 : tensor<2x2xf32>
      %252 = arith.cmpi sge, %c678952886_i64, %c1_i64 : i64
      %253 = math.ipowi %3, %1 : tensor<2x2xi32>
      %254 = math.log2 %7 : tensor<2x2xf32>
      %cast_48 = tensor.cast %9 : tensor<2xf16> to tensor<?xf16>
      %255 = arith.subi %c1465641628_i64, %c750057657_i64 : i64
      %256 = arith.divf %cst_3, %cst_4 : f32
      %257 = index.ceildivu %c9, %109
      %258 = math.ipowi %c678952886_i64, %c750057657_i64 : i64
      %259 = arith.muli %c678952886_i64, %c750057657_i64 : i64
      %260 = math.log %7 : tensor<2x2xf32>
      %inserted_49 = tensor.insert %c1465641628_i64 into %10[%c0, %c1] : tensor<2x2xi64>
      %261 = math.tan %133 : f16
      %262 = index.castu %c7 : index to i32
      %263 = index.floordivs %78, %c8
      %264 = arith.divui %c1465641628_i64, %c750057657_i64 : i64
      %265 = affine.max affine_map<(d0, d1) -> (d0, d0 floordiv 32, (d0 ceildiv 64 - 128) * 4)>(%115, %c2)
      %266 = arith.maxf %cst_6, %cst_6 : f32
      %267 = vector.reduction <minf>, %54 : vector<2xf16> into f16
      %268 = affine.min affine_map<(d0, d1) -> ((d1 + 64) ceildiv 4 - d0 * 32, (d0 * 32 - 60) * 64)>(%105, %84)
      %269 = arith.divui %c1271653950_i32, %c1271653950_i32 : i32
      %270 = arith.remf %133, %cst_5 : f16
      %271 = tensor.empty() : tensor<3x2xi64>
      %272 = arith.maxui %out, %c1465641628_i64 : i64
      %273 = arith.muli %c678952886_i64, %c1_i64 : i64
      %splat = tensor.splat %cst_2 : tensor<2x2xf16>
      affine.store %cst_1, %alloc[%c11, %c12] : memref<2x2xf32>
      memref.alloca_scope  {
        %274 = math.exp2 %9 : tensor<2xf16>
        %275 = index.casts %110 : index to i32
        %276 = arith.muli %out, %out : i64
        %277 = arith.remsi %c1271653950_i32, %c1271653950_i32 : i32
        %278 = arith.minui %c678952886_i64, %c1465641628_i64 : i64
        %279 = math.tan %8 : tensor<2x2xf32>
        %280 = bufferization.clone %alloc_18 : memref<2xf16> to memref<2xf16>
        %281 = index.mul %c5, %151
        %282 = math.powf %18, %12 : tensor<2x2xf32>
        %283 = affine.load %alloc_12[%c7, %c15] : memref<3x2xf16>
        %284 = arith.muli %c1465641628_i64, %out : i64
        %285 = arith.divui %c1465641628_i64, %c1_i64 : i64
        %286 = math.absf %13 : tensor<2x2xf32>
        %287 = arith.cmpf ogt, %cst_26, %cst_7 : f16
        %288 = affine.max affine_map<(d0, d1) -> (d1 * 1024, d0 mod 16, d0 - 44)>(%68, %c10)
        %289 = math.exp2 %283 : f16
        %false_50 = index.bool.constant false
        %290 = vector.shuffle %20, %23 [1, 2] : vector<2xi16>, vector<2xi16>
        %291 = vector.insertelement %283, %26[%90 : index] : vector<2xf16>
        %292 = vector.broadcast %cst_4 : f32 to vector<2xf32>
        %293 = vector.multi_reduction <add>, %137, %292 [0] : vector<2x2xf32> to vector<2xf32>
        %294 = math.log %13 : tensor<2x2xf32>
        %295 = vector.reduction <maxui>, %40 : vector<2xi16> into i16
        %296 = memref.realloc %28 : memref<2xf16> to memref<11xf16>
        %297 = vector.shuffle %96, %96 [1, 2, 3] : vector<2xf16>, vector<2xf16>
        %298 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %137, %247, %248 : vector<2x2xf32>, vector<2x2xf32> into vector<2x2xf32>
        %299 = affine.min affine_map<(d0, d1, d2, d3) -> ((d0 - 80) mod 64, d3, ((d0 - 80) mod 64) * 2)>(%257, %c3, %268, %59)
        %300 = math.tan %60 : tensor<3x2xf16>
        %301 = arith.shrsi %c1_i64, %c1_i64 : i64
        %302 = index.divs %265, %c13
        memref.tensor_store %4, %alloc_23 : memref<2xi1>
        %303 = index.casts %out : i64 to index
        %304 = arith.andi %out, %c1_i64 : i64
      }
      linalg.yield %c678952886_i64 : i64
    } -> tensor<2x2x1xi64>
    %167 = arith.shli %false, %false : i1
    %168 = index.ceildivs %112, %c5
    %169 = arith.divui %true, %false : i1
    %alloc_37 = memref.alloc() : memref<2x2xi16>
    %c1342142653_i32 = arith.constant 1342142653 : i32
    %170 = memref.atomic_rmw maxf %133, %alloc_13[%c0, %c0] : (f16, memref<2x2xf16>) -> f16
    %171 = index.casts %c1271653950_i32 : i32 to index
    %172 = math.fma %16, %12, %8 : tensor<2x2xf32>
    %173 = arith.remui %c750057657_i64, %c1465641628_i64 : i64
    %174 = math.roundeven %60 : tensor<3x2xf16>
    %c663026349_i32 = arith.constant 663026349 : i32
    %175 = tensor.empty() : tensor<2x2xi16>
    %176 = memref.realloc %113 : memref<2xf32> to memref<2xf32>
    %177 = arith.addf %cst_4, %cst_3 : f32
    %false_38 = index.bool.constant false
    %178 = vector.shuffle %65, %96 [1] : vector<2xf16>, vector<2xf16>
    %179 = math.fma %cst_2, %cst_7, %cst_2 : f16
    %180 = math.round %5 : tensor<2x2xf32>
    %181 = affine.min affine_map<(d0, d1) -> (d0 + d0 - 32)>(%105, %154)
    memref.copy %alloc_12, %alloc_11 : memref<3x2xf16> to memref<3x2xf16>
    vector.print %54 : vector<2xf16>
    %182 = math.tan %17 : tensor<2x2xf32>
    %183 = memref.realloc %alloc_9 : memref<2xi32> to memref<11xi32>
    %184 = bufferization.clone %alloc_12 : memref<3x2xf16> to memref<3x2xf16>
    scf.index_switch %87 
    case 1 {
      %246 = arith.remui %false, %true_0 : i1
      %247 = tensor.empty() : tensor<2x2xi16>
      %mapped_48 = linalg.map ins(%51, %alloc_10, %163 : memref<2x2xi16>, memref<2x2xi16>, memref<2x2xi16>) outs(%247 : tensor<2x2xi16>)
        (%in: i16, %in_55: i16, %in_56: i16) {
          %261 = bufferization.clone %alloc_9 : memref<2xi32> to memref<2xi32>
          %262 = arith.shrui %c16786_i16, %c16786_i16 : i16
          %263 = memref.load %alloc_16[%c0, %c0] : memref<2x2xf32>
          %264 = index.divu %31, %171
          %265 = vector.splat %cst_5 : vector<2xf16>
          %266 = math.ctpop %expanded : tensor<2x2x1xi64>
          %alloc_57 = memref.alloc() : memref<3x2xi1>
          %extracted = tensor.extract %11[%c0] : tensor<2xi1>
          memref.assume_alignment %alloc_17, 16 : memref<2xf16>
          %267 = index.maxs %109, %264
          %c-23095_i16 = arith.constant -23095 : i16
          %268 = vector.create_mask %c13 : vector<2xi1>
          %269 = math.rsqrt %7 : tensor<2x2xf32>
          %alloca = memref.alloca() : memref<3x2xf16>
          %270 = arith.ceildivsi %in_55, %in_55 : i16
          vector.print %26 : vector<2xf16>
          %271 = math.ctpop %1 : tensor<2x2xi32>
          %272 = tensor.empty() : tensor<3x2xi32>
          %273 = math.ctpop %c678952886_i64 : i64
          %274 = vector.bitcast %40 : vector<2xi16> to vector<2xi16>
          %275 = index.casts %c1271653950_i32 : i32 to index
          vector.print %23 : vector<2xi16>
          %276 = arith.cmpi slt, %false_38, %true : i1
          %277 = index.ceildivu %c9, %115
          %inserted_58 = tensor.insert %false_38 into %cast[%c0] : tensor<?xi1>
          %278 = index.ceildivs %181, %c15
          %279 = math.absf %7 : tensor<2x2xf32>
          %true_59 = index.bool.constant true
          %280 = index.sizeof
          %281 = arith.cmpi sge, %true, %true_0 : i1
          %282 = arith.subi %c1_i64, %c1465641628_i64 : i64
          %283 = arith.remui %true, %true : i1
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      %248 = arith.cmpf uno, %cst_3, %cst_3 : f32
      %249 = bufferization.clone %alloc_21 : memref<2x2xi64> to memref<2x2xi64>
      %250 = vector.broadcast %false_38 : i1 to vector<3xi1>
      %dest_49, %accumulated_value_50 = vector.scan <and>, %141, %250 {inclusive = false, reduction_dim = 1 : i64} : vector<3x2xi1>, vector<3xi1>
      %251 = index.maxs %78, %68
      %252 = index.casts %151 : index to i32
      %253 = vector.shuffle %65, %65 [0, 1] : vector<2xf16>, vector<2xf16>
      %254 = tensor.empty() : tensor<2xf32>
      %mapped_51 = linalg.map ins(%113, %19, %19 : memref<2xf32>, tensor<2xf32>, tensor<2xf32>) outs(%254 : tensor<2xf32>)
        (%in: f32, %in_55: f32, %in_56: f32) {
          %261 = vector.broadcast %true_0 : i1 to vector<2xi1>
          %dest_57, %accumulated_value_58 = vector.scan <minui>, %103, %261 {inclusive = true, reduction_dim = 1 : i64} : vector<2x2xi1>, vector<2xi1>
          %262 = arith.maxui %c1465641628_i64, %c678952886_i64 : i64
          %263 = arith.shli %c1271653950_i32, %c1271653950_i32 : i32
          %264 = arith.cmpf one, %cst, %cst_4 : f32
          %265 = index.ceildivu %115, %c11
          %266 = index.divu %134, %134
          %267 = affine.load %249[%c15, %c3] : memref<2x2xi64>
          %268 = arith.subi %c678952886_i64, %c1_i64 : i64
          %269 = arith.subi %true_0, %false : i1
          %collapsed_59 = tensor.collapse_shape %generated_32 [[0, 1]] : tensor<?x2xf32> into tensor<?xf32>
          %270 = math.exp2 %9 : tensor<2xf16>
          %271 = arith.remf %cst_1, %cst_3 : f32
          %272 = affine.apply affine_map<(d0) -> (d0 - 1)>(%31)
          %273 = arith.mulf %cst_6, %cst_1 : f32
          %274 = bufferization.clone %alloc_23 : memref<2xi1> to memref<2xi1>
          %275 = arith.mulf %cst_26, %cst_5 : f16
          %276 = math.ctpop %3 : tensor<2x2xi32>
          %277 = arith.shrsi %c-16896_i16, %c16786_i16 : i16
          %278 = math.exp2 %16 : tensor<2x2xf32>
          %alloc_60 = memref.alloc() : memref<2x2xi1>
          bufferization.dealloc_tensor %0 : tensor<2xi64>
          %279 = math.tanh %13 : tensor<2x2xf32>
          %cst_61 = arith.constant 1.000000e+00 : f16
          %280 = vector.transfer_read %77[%148], %cst_61 : memref<2xf16>, vector<f16>
          %281 = math.ctpop %0 : tensor<2xi64>
          %282 = math.floor %cst_5 : f16
          %283 = math.fma %cst, %cst_6, %cst_3 : f32
          %inserted_62 = tensor.insert %false_38 into %4[%c1] : tensor<2xi1>
          %284 = index.maxs %115, %265
          %285 = arith.maxui %false_38, %false_38 : i1
          %cast_63 = tensor.cast %3 : tensor<2x2xi32> to tensor<?x?xi32>
          %286 = math.log2 %12 : tensor<2x2xf32>
          %inserted_64 = tensor.insert %c1271653950_i32 into %collapsed[%c3] : tensor<4xi32>
          %cst_65 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_65 : f32
        }
      %true_52 = index.bool.constant true
      %cst_53 = arith.constant 1.000000e+00 : f32
      %cst_54 = arith.constant 0.000000e+00 : f32
      %255 = vector.transfer_read %transposed[%168, %73], %cst_54 : tensor<2x2xf32>, vector<f32>
      %256 = arith.cmpf one, %cst_26, %cst_2 : f16
      %257 = math.ctlz %6 : tensor<2x2xi64>
      %258 = math.cos %17 : tensor<2x2xf32>
      %259 = arith.ori %false, %false_38 : i1
      %260 = math.atan %12 : tensor<2x2xf32>
      scf.yield
    }
    default {
      %246 = math.ipowi %true, %true : i1
      %cst_48 = arith.constant 1.000000e+00 : f32
      %247 = vector.transfer_read %2[%c12, %181], %cst_48 : tensor<2x2xf32>, vector<f32>
      %248 = arith.divsi %c1465641628_i64, %c1_i64 : i64
      %249 = memref.realloc %alloc_15 : memref<2xi16> to memref<2xi16>
      %250 = math.ipowi %expanded_24, %expanded_24 : tensor<2x2x1xi32>
      %251 = vector.create_mask %105 : vector<2xi1>
      %252 = math.copysign %9, %9 : tensor<2xf16>
      %253 = arith.mulf %cst_5, %cst_5 : f16
      scf.if %true_0 {
        %261 = vector.broadcast %cst_4 : f32 to vector<2xf32>
        %262 = vector.fma %261, %261, %261 : vector<2xf32>
        %263 = index.casts %c16786_i16 : i16 to index
        %c667370236_i64 = arith.constant 667370236 : i64
        %264 = index.mul %105, %168
        %265 = affine.max affine_map<(d0) -> (d0 + 128, 0)>(%181)
        %266 = index.mul %171, %c6
        %267 = index.divu %94, %c9
        %268 = vector.broadcast %cst : f32 to vector<2x2xf32>
        %269 = vector.fma %268, %137, %137 : vector<2x2xf32>
      } else {
        %261 = index.sub %109, %171
        %262 = index.divs %90, %c13
        %263 = vector.flat_transpose %23 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
        bufferization.dealloc_tensor %3 : tensor<2x2xi32>
        %264 = arith.divf %cst_48, %cst : f32
        %265 = math.absi %false : i1
        %266 = math.ceil %12 : tensor<2x2xf32>
        %267 = arith.cmpi ule, %true_0, %false_38 : i1
      }
      %254 = math.cos %129 : tensor<2x2xf32>
      %255 = index.castu %154 : index to i32
      %256 = index.sizeof
      %257 = memref.realloc %alloc_9 : memref<2xi32> to memref<2xi32>
      %258 = affine.min affine_map<(d0, d1) -> ((d0 floordiv 64) ceildiv 8, d1, d1, d1)>(%181, %84)
      %259 = math.ctpop %3 : tensor<2x2xi32>
      %260 = math.rsqrt %9 : tensor<2xf16>
    }
    memref.alloca_scope  {
      %246 = math.ipowi %22, %22 : tensor<i1>
      %247 = vector.reduction <minf>, %120 : vector<2xf16> into f16
      %248 = vector.flat_transpose %23 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
      %249 = vector.insertelement %cst_26, %96[%c7 : index] : vector<2xf16>
      %250 = arith.shrsi %c1_i64, %c750057657_i64 : i64
      %251 = index.maxu %c13, %c8
      %252 = index.add %251, %c4
      %expanded_48 = tensor.expand_shape %reduced [[0, 1]] : tensor<2xf32> into tensor<2x1xf32>
      %253 = arith.maxsi %c16786_i16, %c-16896_i16 : i16
      %254 = arith.remf %cst_5, %cst_5 : f16
      %255 = arith.maxf %cst_3, %cst_3 : f32
      %256 = arith.mulf %cst_26, %cst_2 : f16
      %257 = index.maxs %151, %84
      %258 = index.castu %false : i1 to index
      %c-32283_i16 = arith.constant -32283 : i16
      %259 = index.divs %46, %c9
      %260 = math.powf %transposed, %2 : tensor<2x2xf32>
      %261 = index.divs %rank, %68
      %262 = math.floor %8 : tensor<2x2xf32>
      %263 = index.ceildivs %105, %c7
      %264 = index.floordivs %46, %c13
      %265 = math.ctpop %expanded_24 : tensor<2x2x1xi32>
      %266 = affine.apply affine_map<(d0, d1) -> (-(d1 + 14))>(%59, %c3)
      %267 = affine.max affine_map<(d0) -> (((d0 floordiv 128) floordiv 128) mod 16, 0)>(%134)
      %268 = math.atan %7 : tensor<2x2xf32>
      %269 = arith.subi %c16786_i16, %c16786_i16 : i16
      %270 = math.atan2 %9, %9 : tensor<2xf16>
      %271 = arith.addi %c678952886_i64, %c1465641628_i64 : i64
      %cast_49 = tensor.cast %18 : tensor<2x2xf32> to tensor<?x?xf32>
      %272 = math.ipowi %4, %4 : tensor<2xi1>
      %alloc_50 = memref.alloc() : memref<1xi32>
      %273 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_50, %alloc_50 : memref<1xi32>, memref<1xi32>) outs(%expanded_24 : tensor<2x2x1xi32>) {
      ^bb0(%in: i32, %in_51: i32, %out: i32):
        %275 = index.divu %c6, %148
        %276 = math.floor %13 : tensor<2x2xf32>
        %277 = vector.create_mask %115, %109 : vector<2x2xi1>
        %278 = vector.insertelement %c16786_i16, %23[%68 : index] : vector<2xi16>
        %279 = arith.maxui %c678952886_i64, %c678952886_i64 : i64
        %280 = arith.shli %false_38, %false_38 : i1
        %281 = index.sub %264, %68
        %alloc_52 = memref.alloc() : memref<2x2xi32>
        %282 = tensor.empty() : tensor<2x2xi64>
        %283 = linalg.matmul ins(%10, %10 : tensor<2x2xi64>, tensor<2x2xi64>) outs(%282 : tensor<2x2xi64>) -> tensor<2x2xi64>
        vector.print %23 : vector<2xi16>
        %284 = arith.mulf %cst_2, %cst_2 : f16
        %285 = vector.bitcast %103 : vector<2x2xi1> to vector<2x2xi1>
        %286 = index.divu %252, %87
        %287 = vector.shuffle %277, %285 [0, 1] : vector<2x2xi1>, vector<2x2xi1>
        %288 = arith.cmpf oge, %cst_5, %cst_26 : f16
        %289 = vector.broadcast %false_38 : i1 to vector<2xi1>
        %290 = vector.maskedload %alloc_22[%c0, %c1], %289, %289 : memref<2x2xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
        %291 = tensor.empty() : tensor<2x2xf32>
        %292 = linalg.matmul ins(%2, %16 : tensor<2x2xf32>, tensor<2x2xf32>) outs(%291 : tensor<2x2xf32>) -> tensor<2x2xf32>
        %293 = math.roundeven %60 : tensor<3x2xf16>
        %294 = math.copysign %7, %7 : tensor<2x2xf32>
        %295 = arith.shrsi %c1_i64, %c750057657_i64 : i64
        %296 = arith.divui %in, %in_51 : i32
        %297 = arith.negf %cst_6 : f32
        %298 = arith.floordivsi %true, %true_0 : i1
        %299 = arith.cmpf uno, %cst_3, %cst_3 : f32
        %300 = vector.transpose %96, [0] : vector<2xf16> to vector<2xf16>
        %301 = bufferization.to_tensor %165 : memref<2x2xf32>
        %302 = vector.reduction <and>, %289 : vector<2xi1> into i1
        %303 = math.floor %8 : tensor<2x2xf32>
        %304 = math.ctlz %1 : tensor<2x2xi32>
        %305 = index.add %c14, %73
        %306 = math.atan %cst_6 : f32
        %307 = math.absf %12 : tensor<2x2xf32>
        linalg.yield %out : i32
      } -> tensor<2x2x1xi32>
      %274 = index.ceildivu %c0, %94
    }
    %185 = arith.remui %c750057657_i64, %c750057657_i64 : i64
    %alloc_39 = memref.alloc() : memref<2x2xi16>
    %186 = memref.atomic_rmw mins %c678952886_i64, %alloc_21[%c1, %c0] : (i64, memref<2x2xi64>) -> i64
    %187 = index.add %94, %112
    %188 = index.sub %c10, %c12
    scf.if %false {
      %246 = vector.bitcast %23 : vector<2xi16> to vector<2xf16>
      %247 = vector.broadcast %cst_1 : f32 to vector<2x2xf32>
      %248 = vector.fma %247, %247, %137 : vector<2x2xf32>
      %249 = arith.minf %cst_2, %cst_2 : f16
      %250 = arith.remsi %c750057657_i64, %c750057657_i64 : i64
      %251 = math.copysign %9, %9 : tensor<2xf16>
      %252 = affine.min affine_map<(d0, d1, d2, d3) -> (-d0)>(%110, %84, %61, %94)
      %253 = arith.remf %cst, %cst_3 : f32
      %254 = math.sqrt %5 : tensor<2x2xf32>
    } else {
      %246 = math.rsqrt %cst_2 : f16
      %247 = vector.flat_transpose %40 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
      %248 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_24 : tensor<2x2x1xi32>) outs(%expanded_24 : tensor<2x2x1xi32>) {
      ^bb0(%in: i32, %out: i32):
        %254 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 ceildiv 32, d2, d3 + d0 + d2, d3 + d0 - 4)>(%32, %c14, %94, %64)
        %255 = index.mul %171, %254
        %256 = math.fma %transposed, %7, %8 : tensor<2x2xf32>
        %257 = vector.broadcast %out : i32 to vector<3x2xi32>
        %258 = arith.divf %cst_4, %cst_1 : f32
        %259 = arith.muli %false, %false_38 : i1
        %260 = arith.remsi %c1_i64, %c1_i64 : i64
        %261 = math.cos %5 : tensor<2x2xf32>
        %262 = math.ipowi %c1465641628_i64, %c1465641628_i64 : i64
        %263 = index.mul %109, %c6
        %264 = math.fma %9, %9, %9 : tensor<2xf16>
        %265 = index.casts %c16786_i16 : i16 to index
        %266 = index.ceildivs %109, %90
        %267 = arith.mulf %cst_5, %cst_2 : f16
        %268 = arith.xori %true, %true_0 : i1
        %269 = vector.flat_transpose %96 {columns = 1 : i32, rows = 2 : i32} : vector<2xf16> -> vector<2xf16>
        %270 = affine.min affine_map<(d0, d1, d2) -> (d1 - d0, -(d1 - d0), 0, d1)>(%61, %c13, %109)
        %cst_48 = arith.constant 1.000000e+00 : f32
        %cst_49 = arith.constant 0.000000e+00 : f32
        %271 = vector.transfer_read %13[%105, %c3], %cst_49 : tensor<2x2xf32>, vector<f32>
        %272 = vector.shuffle %247, %47 [0, 2, 3] : vector<2xi16>, vector<2xi16>
        %273 = arith.subi %c750057657_i64, %c1465641628_i64 : i64
        %274 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %121, %122, %137 : vector<3x2xf32>, vector<3x2xf32> into vector<2x2xf32>
        %275 = index.divu %73, %c4
        %276 = index.mul %148, %275
        %277 = arith.remf %cst_26, %cst_7 : f16
        %278 = vector.broadcast %true_0 : i1 to vector<2xi1>
        %dest_50, %accumulated_value_51 = vector.scan <mul>, %103, %278 {inclusive = false, reduction_dim = 1 : i64} : vector<2x2xi1>, vector<2xi1>
        %279 = math.absi %4 : tensor<2xi1>
        %280 = arith.floordivsi %c750057657_i64, %c1465641628_i64 : i64
        %281 = vector.broadcast %in : i32 to vector<3xi32>
        %dest_52, %accumulated_value_53 = vector.scan <mul>, %257, %281 {inclusive = true, reduction_dim = 1 : i64} : vector<3x2xi32>, vector<3xi32>
        %282 = vector.broadcast %c-16896_i16 : i16 to vector<2x2xi16>
        %283 = vector.outerproduct %247, %23, %282 {kind = #vector.kind<or>} : vector<2xi16>, vector<2xi16>
        %284 = vector.broadcast %c16786_i16 : i16 to vector<2x2xi16>
        %285 = vector.outerproduct %123, %40, %284 {kind = #vector.kind<minsi>} : vector<2xi16>, vector<2xi16>
        %286 = vector.broadcast %false : i1 to vector<i1>
        %287 = vector.transfer_write %286, %4[%276] : vector<i1>, tensor<2xi1>
        %288 = vector.broadcast %true_0 : i1 to vector<2xi1>
        %dest_54, %accumulated_value_55 = vector.scan <maxsi>, %141, %288 {inclusive = true, reduction_dim = 0 : i64} : vector<3x2xi1>, vector<2xi1>
        linalg.yield %out : i32
      } -> tensor<2x2x1xi32>
      %249 = math.tanh %2 : tensor<2x2xf32>
      %250 = bufferization.clone %alloc_20 : memref<2x2xf32> to memref<2x2xf32>
      %251 = index.floordivs %c14, %31
      %252 = vector.transpose %96, [0] : vector<2xf16> to vector<2xf16>
      %253 = index.ceildivs %136, %c11
    }
    %189 = index.ceildivu %c5, %c14
    %190 = arith.remf %133, %cst_7 : f16
    %alloc_40 = memref.alloc() : memref<3x2xf32>
    %191 = scf.if %true -> (i64) {
      %246 = index.mul %c2, %c0
      %247 = vector.flat_transpose %120 {columns = 1 : i32, rows = 2 : i32} : vector<2xf16> -> vector<2xf16>
      %248 = math.tanh %8 : tensor<2x2xf32>
      %249 = math.fma %17, %17, %7 : tensor<2x2xf32>
      %250 = index.mul %154, %c4
      %251 = math.ipowi %21, %21 : tensor<i1>
      %252 = vector.load %165[%c1, %c1] : memref<2x2xf32>, vector<2x2xf32>
      %253 = index.add %59, %105
      scf.yield %c1465641628_i64 : i64
    } else {
      %246 = math.ipowi %collapsed, %collapsed : tensor<4xi32>
      scf.index_switch %c9 
      case 1 {
        %extracted = tensor.extract %5[%c1, %c1] : tensor<2x2xf32>
        %252 = arith.divui %c-16896_i16, %c16786_i16 : i16
        %253 = math.absf %reduced : tensor<2xf32>
        %254 = math.tan %5 : tensor<2x2xf32>
        %255 = math.atan2 %cst_26, %cst_26 : f16
        %256 = math.rsqrt %7 : tensor<2x2xf32>
        %257 = affine.max affine_map<(d0, d1) -> (d1 * 128)>(%c14, %189)
        %258 = arith.ori %true, %false : i1
        %259 = index.maxs %87, %c11
        %260 = affine.min affine_map<(d0, d1, d2) -> ((d2 + 1) * 32, d1 + d1 - 4, d1 - 36, d2 + 65)>(%189, %c0, %115)
        %261 = math.ipowi %c1271653950_i32, %c1271653950_i32 : i32
        %262 = arith.subi %c1_i64, %c678952886_i64 : i64
        %263 = arith.addi %c750057657_i64, %c1465641628_i64 : i64
        %264 = math.floor %17 : tensor<2x2xf32>
        %265 = math.tanh %5 : tensor<2x2xf32>
        %266 = vector.broadcast %cst_6 : f32 to vector<2x2xf32>
        %267 = vector.fma %266, %266, %137 : vector<2x2xf32>
        scf.yield
      }
      default {
        %252 = index.castu %true_0 : i1 to index
        %253 = math.atan %cst_4 : f32
        %254 = math.sqrt %2 : tensor<2x2xf32>
        %255 = vector.bitcast %96 : vector<2xf16> to vector<2xf16>
        %256 = index.sizeof
        %257 = math.tan %5 : tensor<2x2xf32>
        %258 = vector.create_mask %168, %c15 : vector<3x2xi1>
        %259 = arith.remsi %c1271653950_i32, %c1271653950_i32 : i32
        %260 = index.mul %188, %151
        %261 = vector.reduction <add>, %255 : vector<2xf16> into f16
        %262 = math.tanh %133 : f16
        %263 = math.round %12 : tensor<2x2xf32>
        %inserted_49 = tensor.insert %cst into %8[%c0, %c0] : tensor<2x2xf32>
        %264 = arith.shrsi %c750057657_i64, %c678952886_i64 : i64
        %265 = index.mul %c0, %90
        %266 = arith.shrui %c1_i64, %c1_i64 : i64
      }
      bufferization.dealloc_tensor %9 : tensor<2xf16>
      %247 = math.atan2 %cst_26, %133 : f16
      %248 = tensor.empty() : tensor<2x2xi64>
      %249 = linalg.matmul ins(%6, %6 : tensor<2x2xi64>, tensor<2x2xi64>) outs(%248 : tensor<2x2xi64>) -> tensor<2x2xi64>
      %250 = affine.apply affine_map<(d0, d1, d2) -> (d0 - d2 - d0)>(%c3, %c9, %c8)
      %251 = bufferization.to_memref %1 : memref<2x2xi32>
      %generated_48 = tensor.generate %181 {
      ^bb0(%arg2: index, %arg3: index):
        %252 = arith.xori %c678952886_i64, %c750057657_i64 : i64
        %253 = arith.andi %c1_i64, %c678952886_i64 : i64
        memref.assume_alignment %51, 2 : memref<2x2xi16>
        %254 = index.maxs %64, %59
        tensor.yield %c750057657_i64 : i64
      } : tensor<?x2xi64>
      scf.yield %c678952886_i64 : i64
    }
    %192 = vector.broadcast %cst_3 : f32 to vector<2x2xf32>
    %193 = vector.fma %192, %192, %137 : vector<2x2xf32>
    %194 = vector.broadcast %cst_6 : f32 to vector<2x2xf32>
    %195 = vector.fma %194, %194, %193 : vector<2x2xf32>
    %196 = math.absf %cst : f32
    %197 = scf.index_switch %c0 -> i16 
    case 1 {
      %246 = math.powf %17, %13 : tensor<2x2xf32>
      %c1_i32 = arith.constant 1 : i32
      %247 = vector.transfer_read %15[%61], %c1_i32 : tensor<2xi32>, vector<i32>
      %248 = arith.divf %cst_7, %cst_5 : f16
      %cst_48 = arith.constant 1.000000e+00 : f32
      %249 = vector.transfer_read %transposed[%187, %c4], %cst_48 : tensor<2x2xf32>, vector<f32>
      %250 = arith.mulf %cst_3, %cst : f32
      %251 = math.tan %17 : tensor<2x2xf32>
      %alloc_49 = memref.alloc() : memref<2x2xi32>
      %252 = math.ipowi %false_38, %false_38 : i1
      %253 = vector.shuffle %194, %193 [1] : vector<2x2xf32>, vector<2x2xf32>
      %254 = index.ceildivs %c11, %c7
      %255 = vector.broadcast %true : i1 to vector<11xi1>
      %256 = vector.maskedload %alloc_22[%c0, %c1], %255, %255 : memref<2x2xi1>, vector<11xi1>, vector<11xi1> into vector<11xi1>
      %257 = index.add %84, %c14
      %258 = memref.load %51[%c1, %c1] : memref<2x2xi16>
      %259 = math.copysign %19, %19 : tensor<2xf32>
      %260 = vector.broadcast %133 : f16 to vector<2x2xf16>
      %261 = vector.outerproduct %96, %54, %260 {kind = #vector.kind<maxf>} : vector<2xf16>, vector<2xf16>
      %262 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 mod 64, (d3 mod 64) floordiv 4, (d0 floordiv 64) floordiv 4 - d3 mod 64, d1 + d3)>(%c2, %c6, %154, %87)
      scf.yield %c16786_i16 : i16
    }
    case 2 {
      %246 = math.round %9 : tensor<2xf16>
      %247 = memref.realloc %77 : memref<2xf16> to memref<2xf16>
      %248 = scf.index_switch %c14 -> index 
      case 1 {
        %259 = math.copysign %cst, %cst_6 : f32
        %260 = vector.broadcast %cst : f32 to vector<2xf32>
        %261 = arith.remf %cst_7, %133 : f16
        %cst_50 = arith.constant 1.04514739E+9 : f32
        %262 = math.cos %12 : tensor<2x2xf32>
        %263 = arith.remui %true, %true : i1
        %264 = arith.remf %cst_2, %cst_26 : f16
        %265 = math.exp2 %13 : tensor<2x2xf32>
        affine.store %c16786_i16, %alloc_10[%c15, %c3] : memref<2x2xi16>
        %266 = index.sizeof
        %267 = arith.cmpi ule, %c16786_i16, %c-16896_i16 : i16
        %268 = arith.divf %cst_2, %cst_26 : f16
        %269 = arith.divsi %c16786_i16, %c16786_i16 : i16
        %270 = index.ceildivu %99, %c12
        %271 = arith.ori %c678952886_i64, %c1465641628_i64 : i64
        %272 = arith.remf %cst_6, %cst_6 : f32
        scf.yield %105 : index
      }
      case 2 {
        %259 = arith.maxui %c678952886_i64, %191 : i64
        %260 = index.divs %90, %87
        %261 = arith.remui %c16786_i16, %c-16896_i16 : i16
        %262 = arith.ceildivsi %c1_i64, %c1465641628_i64 : i64
        %263 = arith.divsi %191, %c750057657_i64 : i64
        %264 = index.castu %c2 : index to i32
        %265 = math.log1p %9 : tensor<2xf16>
        %266 = arith.addf %cst_6, %cst_6 : f32
        %alloc_50 = memref.alloc() : memref<3x2xi64>
        %267 = index.divu %151, %136
        %268 = index.divs %168, %c12
        %269 = math.rsqrt %5 : tensor<2x2xf32>
        %270 = math.ipowi %collapsed, %collapsed : tensor<4xi32>
        %271 = arith.remui %false, %true_0 : i1
        %272 = math.ipowi %expanded_24, %expanded_24 : tensor<2x2x1xi32>
        %273 = math.atan %cst_26 : f16
        scf.yield %105 : index
      }
      default {
        %259 = index.ceildivu %32, %c15
        %260 = math.cos %133 : f16
        %261 = math.ctpop %3 : tensor<2x2xi32>
        %262 = vector.flat_transpose %96 {columns = 1 : i32, rows = 2 : i32} : vector<2xf16> -> vector<2xf16>
        %extracted = tensor.extract %60[%c1, %c0] : tensor<3x2xf16>
        %cast_50 = tensor.cast %175 : tensor<2x2xi16> to tensor<?x?xi16>
        %263 = arith.minui %c1465641628_i64, %c1465641628_i64 : i64
        %264 = index.divu %c1, %c11
        %265 = math.log2 %cst_26 : f16
        %cst_51 = arith.constant 2.265600e+04 : f16
        %266 = vector.broadcast %cst_7 : f16 to vector<2x2xf16>
        %267 = vector.outerproduct %26, %96, %266 {kind = #vector.kind<mul>} : vector<2xf16>, vector<2xf16>
        %268 = vector.splat %84 : vector<2x2xindex>
        affine.store %extracted, %alloc_12[%c1, %c7] : memref<3x2xf16>
        %269 = vector.insertelement %c-16896_i16, %40[%99 : index] : vector<2xi16>
        %270 = vector.splat %rank : vector<3x2xindex>
        %271 = affine.max affine_map<(d0, d1) -> (d1 - 16, -(d0 ceildiv 64))>(%c9, %90)
        scf.yield %32 : index
      }
      %alloc_48 = memref.alloc() : memref<2xi16>
      memref.store %cst_4, %113[%c0] : memref<2xf32>
      %249 = index.ceildivs %59, %c13
      %250 = arith.ceildivsi %c-16896_i16, %c-16896_i16 : i16
      %251 = index.maxs %115, %134
      %252 = scf.if %true_0 -> (i16) {
        %inserted_50 = tensor.insert %cst_6 into %19[%c0] : tensor<2xf32>
        %259 = index.maxu %c6, %187
        %260 = math.ctlz %175 : tensor<2x2xi16>
        %261 = arith.remui %true, %false_38 : i1
        %262 = index.mul %259, %c14
        %263 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %23, %47, %c16786_i16 : vector<2xi16>, vector<2xi16> into i16
        %264 = math.ceil %cst_1 : f32
        %265 = arith.divsi %c750057657_i64, %c1_i64 : i64
        scf.yield %c-16896_i16 : i16
      } else {
        %259 = arith.floordivsi %c1_i64, %c750057657_i64 : i64
        %260 = vector.reduction <maxf>, %26 : vector<2xf16> into f16
        %261 = vector.reduction <or>, %123 : vector<2xi16> into i16
        %262 = memref.realloc %77 : memref<2xf16> to memref<2xf16>
        %263 = math.atan %7 : tensor<2x2xf32>
        %264 = arith.divf %cst_2, %cst_5 : f16
        %265 = arith.divui %191, %c1465641628_i64 : i64
        %cast_50 = tensor.cast %1 : tensor<2x2xi32> to tensor<?x?xi32>
        scf.yield %c16786_i16 : i16
      }
      %253 = index.ceildivu %105, %148
      %254 = bufferization.to_memref %cast : memref<?xi1>
      %c0_i16 = arith.constant 0 : i16
      %255 = vector.transfer_read %175[%c0, %61], %c0_i16 : tensor<2x2xi16>, vector<2xi16>
      %expanded_49 = tensor.expand_shape %7 [[0], [1, 2]] : tensor<2x2xf32> into tensor<2x2x1xf32>
      %256 = arith.remsi %c678952886_i64, %c750057657_i64 : i64
      %257 = math.powf %18, %13 : tensor<2x2xf32>
      %258 = arith.remui %c1465641628_i64, %c678952886_i64 : i64
      scf.yield %c-16896_i16 : i16
    }
    case 3 {
      %246 = arith.addi %c16786_i16, %c-16896_i16 : i16
      %247 = arith.maxui %c16786_i16, %c-16896_i16 : i16
      %248 = math.tan %17 : tensor<2x2xf32>
      %249 = vector.broadcast %cst_3 : f32 to vector<3xf32>
      %250 = vector.broadcast %true : i1 to vector<3xi1>
      %251 = vector.maskedload %alloc_16[%c1, %c0], %250, %249 : memref<2x2xf32>, vector<3xi1>, vector<3xf32> into vector<3xf32>
      %252 = affine.for %arg2 = 0 to 50 iter_args(%arg3 = %175) -> (tensor<2x2xi16>) {
        affine.yield %arg3 : tensor<2x2xi16>
      }
      %253 = arith.ceildivsi %c1465641628_i64, %c1465641628_i64 : i64
      %254 = index.sub %105, %171
      %255 = vector.multi_reduction <add>, %249, %251 [] : vector<3xf32> to vector<3xf32>
      %256 = index.maxs %c15, %c0
      %257 = vector.broadcast %cst_3 : f32 to vector<2xf32>
      %dest_48, %accumulated_value_49 = vector.scan <maxf>, %194, %257 {inclusive = false, reduction_dim = 1 : i64} : vector<2x2xf32>, vector<2xf32>
      %258 = index.add %134, %139
      %259 = memref.realloc %alloc_19 : memref<2xi1> to memref<2xi1>
      %260 = index.ceildivu %c9, %99
      %261 = arith.subi %c1465641628_i64, %c1465641628_i64 : i64
      %262 = index.ceildivs %188, %c15
      %263 = tensor.empty() : tensor<2xi32>
      %mapped_50 = linalg.map ins(%15 : tensor<2xi32>) outs(%263 : tensor<2xi32>)
        (%in: i32) {
          %264 = index.castu %true : i1 to index
          %265 = tensor.empty() : tensor<2x2xf32>
          %266 = linalg.matmul ins(%8, %8 : tensor<2x2xf32>, tensor<2x2xf32>) outs(%265 : tensor<2x2xf32>) -> tensor<2x2xf32>
          %267 = affine.min affine_map<(d0, d1, d2) -> (d2, d0 + d1 + 62, d1 ceildiv 128, d0)>(%32, %181, %64)
          %268 = index.sizeof
          %269 = math.sqrt %cst_5 : f16
          %inserted_51 = tensor.insert %cst_3 into %generated_32[%c0, %c1] : tensor<?x2xf32>
          %270 = arith.maxsi %true, %false_38 : i1
          %271 = arith.muli %c1465641628_i64, %c750057657_i64 : i64
          %272 = math.ctpop %true : i1
          %273 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 mod 4, d2, d2 - 2, 0)>(%267, %99, %84, %260)
          %274 = index.divu %139, %90
          %275 = memref.atomic_rmw minu %c16786_i16, %alloc_10[%c1, %c1] : (i16, memref<2x2xi16>) -> i16
          %276 = index.maxs %c14, %c4
          %277 = arith.divui %c678952886_i64, %191 : i64
          %278 = index.castu %false_38 : i1 to index
          %279 = arith.remf %cst_7, %133 : f16
          %280 = index.add %78, %c10
          %281 = vector.splat %258 : vector<2xindex>
          %282 = bufferization.to_tensor %alloc_13 : memref<2x2xf16>
          %cast_52 = tensor.cast %11 : tensor<2xi1> to tensor<?xi1>
          %283 = math.round %cst_2 : f16
          %c1911469753_i64 = arith.constant 1911469753 : i64
          %284 = arith.addi %c1_i64, %c678952886_i64 : i64
          %285 = affine.max affine_map<(d0, d1) -> (d1 + (d1 - d0) mod 64, -((d1 - d0) floordiv 2 + 32), d1 - d0, d0 ceildiv 2 - 128)>(%rank, %31)
          %c737201494_i64 = arith.constant 737201494 : i64
          %286 = math.exp %13 : tensor<2x2xf32>
          %287 = arith.divui %c750057657_i64, %c1_i64 : i64
          %288 = math.atan2 %19, %19 : tensor<2xf32>
          %289 = arith.remsi %false_38, %true_0 : i1
          %290 = vector.broadcast %cst : f32 to vector<2x3xf32>
          %291 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %137, %122, %290 : vector<2x2xf32>, vector<3x2xf32> into vector<2x3xf32>
          %292 = index.ceildivs %32, %c8
          %293 = arith.remf %cst_6, %cst_3 : f32
          %c0_i32 = arith.constant 0 : i32
          linalg.yield %c0_i32 : i32
        }
      scf.yield %c-16896_i16 : i16
    }
    default {
      bufferization.dealloc_tensor %18 : tensor<2x2xf32>
      %246 = vector.broadcast %cst : f32 to vector<2xf32>
      %dest_48, %accumulated_value_49 = vector.scan <maxf>, %192, %246 {inclusive = true, reduction_dim = 0 : i64} : vector<2x2xf32>, vector<2xf32>
      memref.alloca_scope  {
        %260 = index.ceildivs %c10, %112
        %261 = math.floor %2 : tensor<2x2xf32>
        %extracted = tensor.extract %13[%c1, %c1] : tensor<2x2xf32>
        %262 = bufferization.to_memref %21 : memref<i1>
        %263 = vector.multi_reduction <or>, %20, %40 [] : vector<2xi16> to vector<2xi16>
        %264 = vector.insertelement %cst_5, %26[%c13 : index] : vector<2xf16>
        %265 = math.roundeven %cst_26 : f16
        %266 = index.divu %87, %c11
        %267 = math.atan %cst_5 : f16
        %268 = arith.cmpf ole, %cst_4, %cst_3 : f32
        %269 = arith.mulf %cst_1, %cst_3 : f32
        %270 = arith.mulf %cst_26, %133 : f16
        %271 = math.cos %2 : tensor<2x2xf32>
        %272 = math.exp2 %2 : tensor<2x2xf32>
        %273 = index.mul %c8, %105
        %274 = arith.mulf %extracted, %extracted : f32
        %275 = arith.muli %191, %c678952886_i64 : i64
        %276 = vector.broadcast %c1271653950_i32 : i32 to vector<3xi32>
        %277 = vector.broadcast %false : i1 to vector<3xi1>
        %278 = vector.maskedload %alloc_9[%c1], %277, %276 : memref<2xi32>, vector<3xi1>, vector<3xi32> into vector<3xi32>
        %279 = arith.shrsi %c1465641628_i64, %c750057657_i64 : i64
        %extracted_51 = tensor.extract %generated_36[%c0, %c0] : tensor<?x?xi32>
        %280 = index.casts %c7 : index to i32
        %281 = arith.shrsi %c1465641628_i64, %c750057657_i64 : i64
        %282 = math.tan %cst_4 : f32
        %283 = bufferization.clone %51 : memref<2x2xi16> to memref<2x2xi16>
        %284 = math.ceil %13 : tensor<2x2xf32>
        %285 = math.tanh %reduced : tensor<2xf32>
        %286 = arith.remui %true, %true : i1
        %287 = math.sqrt %cst : f32
        %288 = memref.realloc %28 : memref<2xf16> to memref<2xf16>
        %289 = affine.load %113[%c12] : memref<2xf32>
        %290 = vector.broadcast %extracted : f32 to vector<2xf32>
        %dest_52, %accumulated_value_53 = vector.scan <add>, %194, %290 {inclusive = true, reduction_dim = 1 : i64} : vector<2x2xf32>, vector<2xf32>
        %291 = affine.max affine_map<(d0, d1) -> ((d0 + d1) floordiv 4, 0, 0, 2)>(%99, %84)
      }
      %247 = tensor.empty() : tensor<1xi64>
      %248 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%247, %expanded, %247 : tensor<1xi64>, tensor<2x2x1xi64>, tensor<1xi64>) outs(%expanded : tensor<2x2x1xi64>) {
      ^bb0(%in: i64, %in_51: i64, %in_52: i64, %out: i64):
        %260 = arith.shli %c-16896_i16, %c-16896_i16 : i16
        %261 = arith.addf %cst_7, %133 : f16
        %262 = arith.mulf %133, %cst_2 : f16
        %263 = arith.remui %true, %false : i1
        %264 = arith.maxf %cst_3, %cst_3 : f32
        %265 = math.roundeven %60 : tensor<3x2xf16>
        %expanded_53 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<2x2xi1> into tensor<2x2x1xi1>
        %266 = vector.insert %c-16896_i16, %123 [0] : i16 into vector<2xi16>
        %267 = index.divs %110, %136
        %268 = index.sub %c7, %42
        %269 = arith.subi %c-16896_i16, %c-16896_i16 : i16
        %270 = math.ipowi %in, %c1465641628_i64 : i64
        %271 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 ceildiv 16, d0 + d2, d1 floordiv 4, -d2)>(%99, %c10, %168, %139)
        vector.print %193 : vector<2x2xf32>
        %272 = math.exp %2 : tensor<2x2xf32>
        %273 = arith.addf %cst_3, %cst_1 : f32
        %274 = arith.cmpf ogt, %cst_1, %cst : f32
        vector.print %23 : vector<2xi16>
        %275 = bufferization.to_tensor %alloc_8 : memref<2x2xf16>
        %276 = vector.shuffle %96, %96 [0] : vector<2xf16>, vector<2xf16>
        %277 = vector.insert %cst_2, %26 [1] : f16 into vector<2xf16>
        %278 = arith.muli %c750057657_i64, %in_52 : i64
        %279 = math.atan2 %60, %60 : tensor<3x2xf16>
        %c2008392965_i32 = arith.constant 2008392965 : i32
        %280 = bufferization.clone %alloc_21 : memref<2x2xi64> to memref<2x2xi64>
        %281 = index.maxs %115, %187
        %true_54 = index.bool.constant true
        %282 = math.tan %cst_26 : f16
        %283 = math.rsqrt %9 : tensor<2xf16>
        %284 = index.floordivs %c0, %90
        %285 = math.tanh %17 : tensor<2x2xf32>
        %286 = math.powf %60, %60 : tensor<3x2xf16>
        linalg.yield %c678952886_i64 : i64
      } -> tensor<2x2x1xi64>
      %249 = arith.cmpi slt, %true, %false : i1
      %250 = arith.minui %c750057657_i64, %c678952886_i64 : i64
      %251 = index.maxs %73, %112
      %252 = vector.create_mask %c8 : vector<2xi1>
      %253 = vector.broadcast %true_0 : i1 to vector<2x2xi1>
      %alloc_50 = memref.alloc() : memref<2xi16>
      memref.copy %alloc_15, %alloc_50 : memref<2xi16> to memref<2xi16>
      %254 = index.ceildivs %136, %c4
      %255 = memref.atomic_rmw maxf %cst_7, %alloc_17[%c0] : (f16, memref<2xf16>) -> f16
      %256 = math.atan %16 : tensor<2x2xf32>
      %257 = arith.cmpi ugt, %c750057657_i64, %c678952886_i64 : i64
      %258 = math.exp %12 : tensor<2x2xf32>
      %259 = math.powf %12, %7 : tensor<2x2xf32>
      scf.yield %c-16896_i16 : i16
    }
    %198 = vector.reduction <mul>, %54 : vector<2xf16> into f16
    %199 = arith.divui %true, %false_38 : i1
    %200 = vector.broadcast %cst_1 : f32 to vector<2xf32>
    %dest_41, %accumulated_value_42 = vector.scan <mul>, %192, %200 {inclusive = true, reduction_dim = 1 : i64} : vector<2x2xf32>, vector<2xf32>
    %201 = math.fma %60, %60, %60 : tensor<3x2xf16>
    %202 = arith.remf %cst_2, %cst_5 : f16
    %203 = arith.addf %cst_5, %133 : f16
    %204 = index.divu %99, %110
    %205 = affine.if affine_set<(d0, d1, d2) : (d1 == 0, -(d0 + d1) - 160 >= 0)>(%c14, %c15, %c6) -> memref<3x2xi1> {
      %246 = index.casts %191 : i64 to index
      %247 = vector.insertelement %cst_2, %65[%246 : index] : vector<2xf16>
      %248 = arith.muli %c1_i64, %c678952886_i64 : i64
      %249 = index.castu %c16786_i16 : i16 to index
      %alloca = memref.alloca() : memref<2x2xi32>
      %250 = math.tan %17 : tensor<2x2xf32>
      %251 = bufferization.clone %alloc_15 : memref<2xi16> to memref<2xi16>
      %252 = vector.transpose %122, [0, 1] : vector<3x2xf32> to vector<3x2xf32>
      %alloc_48 = memref.alloc() : memref<3x2xi1>
      affine.yield %alloc_48 : memref<3x2xi1>
    } else {
      %246 = math.sqrt %17 : tensor<2x2xf32>
      %247 = vector.shuffle %23, %47 [2, 3] : vector<2xi16>, vector<2xi16>
      %248 = bufferization.to_tensor %alloc_14 : memref<3x2xf16>
      %249 = arith.cmpf une, %cst_2, %133 : f16
      %250 = affine.min affine_map<(d0, d1) -> (d0 + 32, 0, d1 - 16)>(%46, %c12)
      %251 = arith.cmpi uge, %true_0, %true : i1
      %252 = arith.remui %c-16896_i16, %c16786_i16 : i16
      %253 = math.absf %9 : tensor<2xf16>
      %alloc_48 = memref.alloc() : memref<3x2xi1>
      affine.yield %alloc_48 : memref<3x2xi1>
    }
    %206 = math.cos %cst_1 : f32
    %207 = arith.remf %cst_5, %cst_5 : f16
    %208 = arith.mulf %cst_3, %cst : f32
    %cast_43 = tensor.cast %19 : tensor<2xf32> to tensor<?xf32>
    %209 = arith.ceildivsi %true, %false : i1
    %false_44 = index.bool.constant false
    %210 = math.rsqrt %7 : tensor<2x2xf32>
    %211 = math.cos %9 : tensor<2xf16>
    %212 = vector.extract_strided_slice %193 {offsets = [0], sizes = [1], strides = [1]} : vector<2x2xf32> to vector<1x2xf32>
    %213 = index.sub %rank, %c4
    %214 = vector.shuffle %47, %40 [1] : vector<2xi16>, vector<2xi16>
    %215 = index.divu %c4, %105
    %216 = math.sqrt %5 : tensor<2x2xf32>
    %217 = arith.mulf %cst_26, %cst_5 : f16
    %218 = vector.reduction <and>, %40 : vector<2xi16> into i16
    %219 = math.tanh %60 : tensor<3x2xf16>
    %220 = arith.muli %c1271653950_i32, %c1271653950_i32 : i32
    %221 = index.add %c8, %31
    %cst_45 = arith.constant 4.748000e+03 : f16
    %222 = vector.splat %105 : vector<3x2xindex>
    %223 = arith.addf %cst_26, %133 : f16
    %224 = vector.insert %133, %54 [1] : f16 into vector<2xf16>
    %225 = index.castu %c11 : index to i32
    %226 = math.tan %cst_3 : f32
    %227 = arith.minsi %c-16896_i16, %c16786_i16 : i16
    %228 = vector.broadcast %false_38 : i1 to vector<2xi1>
    %229 = vector.insert %228, %141 [1] : vector<2xi1> into vector<3x2xi1>
    %230 = math.copysign %cst_1, %cst : f32
    %231 = math.powf %7, %16 : tensor<2x2xf32>
    %232 = arith.maxsi %false_38, %false : i1
    %233 = math.roundeven %cst_2 : f16
    memref.alloca_scope  {
      %246 = bufferization.clone %alloc_10 : memref<2x2xi16> to memref<2x2xi16>
      %247 = arith.addf %cst, %cst_3 : f32
      %248 = arith.minui %true, %true : i1
      %249 = math.sqrt %9 : tensor<2xf16>
      %250 = math.fpowi %7, %3 : tensor<2x2xf32>, tensor<2x2xi32>
      %251 = index.divu %c13, %109
      memref.copy %alloc_12, %alloc_14 : memref<3x2xf16> to memref<3x2xf16>
      %c1764511821_i64 = arith.constant 1764511821 : i64
      %252 = arith.negf %cst_7 : f16
      %253 = vector.bitcast %192 : vector<2x2xf32> to vector<2x2xf32>
      %254 = math.roundeven %cst_2 : f16
      %255 = arith.negf %133 : f16
      %256 = index.ceildivu %78, %139
      %257 = arith.remui %c-16896_i16, %c-16896_i16 : i16
      %258 = scf.if %false -> (i1) {
        %276 = vector.flat_transpose %26 {columns = 1 : i32, rows = 2 : i32} : vector<2xf16> -> vector<2xf16>
        %277 = arith.muli %false_44, %true_0 : i1
        %alloca = memref.alloca() : memref<2xi16>
        %278 = arith.maxui %c750057657_i64, %191 : i64
        %279 = arith.remui %c750057657_i64, %c750057657_i64 : i64
        %280 = memref.atomic_rmw mins %c-16896_i16, %246[%c0, %c0] : (i16, memref<2x2xi16>) -> i16
        %281 = arith.cmpi ne, %false_44, %true_0 : i1
        %282 = math.tanh %9 : tensor<2xf16>
        scf.yield %true_0 : i1
      } else {
        %276 = math.copysign %cst_5, %cst_2 : f16
        %277 = index.mul %215, %84
        %278 = arith.divsi %true_0, %false : i1
        %279 = affine.load %51[%c10, %c15] : memref<2x2xi16>
        %280 = vector.broadcast %cst : f32 to vector<3x2xf32>
        %281 = vector.fma %280, %121, %121 : vector<3x2xf32>
        %282 = index.add %204, %109
        %283 = arith.cmpi sge, %279, %c-16896_i16 : i16
        %284 = index.mul %94, %256
        scf.yield %true : i1
      }
      %259 = affine.load %77[%c0] : memref<2xf16>
      %260 = arith.cmpi sgt, %c678952886_i64, %191 : i64
      %261 = index.divs %87, %c14
      %262 = arith.maxf %cst_26, %cst_26 : f16
      %263 = math.atan %2 : tensor<2x2xf32>
      %264 = math.sqrt %8 : tensor<2x2xf32>
      %265 = affine.apply affine_map<(d0, d1) -> (-d0 + 8)>(%68, %59)
      %266 = vector.extract_strided_slice %228 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi1> to vector<1xi1>
      %267 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 * 4, d1)>(%213, %c14, %261, %256)
      %268 = vector.broadcast %c1271653950_i32 : i32 to vector<2x2xi32>
      %269 = vector.gather %14[%c3, %c10] [%268], %103, %103 : tensor<2x2xi1>, vector<2x2xi32>, vector<2x2xi1>, vector<2x2xi1> into vector<2x2xi1>
      %270 = memref.realloc %alloc_17 : memref<2xf16> to memref<2xf16>
      %271 = math.log10 %transposed : tensor<2x2xf32>
      %272 = memref.realloc %28 : memref<2xf16> to memref<2xf16>
      %273 = arith.cmpi ne, %c-16896_i16, %c16786_i16 : i16
      %generated_48 = tensor.generate %c15, %73 {
      ^bb0(%arg2: index, %arg3: index):
        vector.print %192 : vector<2x2xf32>
        %276 = index.ceildivs %151, %78
        %277 = index.sub %c2, %148
        %278 = math.powf %2, %16 : tensor<2x2xf32>
        tensor.yield %c-16896_i16 : i16
      } : tensor<?x?xi16>
      %274 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0, %expanded, %0 : tensor<2xi64>, tensor<2x2x1xi64>, tensor<2xi64>) outs(%expanded : tensor<2x2x1xi64>) {
      ^bb0(%in: i64, %in_49: i64, %in_50: i64, %out: i64):
        %splat = tensor.splat %in : tensor<2x2xi64>
        %276 = bufferization.clone %alloc_9 : memref<2xi32> to memref<2xi32>
        %277 = index.maxs %112, %134
        %278 = index.divs %c7, %87
        %279 = index.castu %171 : index to i32
        %280 = arith.divui %false, %false_44 : i1
        %281 = arith.ori %out, %c678952886_i64 : i64
        %282 = vector.shuffle %96, %96 [0] : vector<2xf16>, vector<2xf16>
        %283 = math.floor %7 : tensor<2x2xf32>
        vector.print %269 : vector<2x2xi1>
        %284 = math.exp %reduced : tensor<2xf32>
        %285 = vector.broadcast %42 : index to vector<2xindex>
        %286 = vector.broadcast %cst_1 : f32 to vector<2xf32>
        vector.scatter %alloc[%c1, %c1] [%285], %228, %286 : memref<2x2xf32>, vector<2xindex>, vector<2xi1>, vector<2xf32>
        bufferization.dealloc_tensor %2 : tensor<2x2xf32>
        %287 = math.floor %259 : f16
        %288 = math.roundeven %cst_26 : f16
        %289 = tensor.empty() : tensor<2x2xf32>
        %290 = linalg.matmul ins(%13, %8 : tensor<2x2xf32>, tensor<2x2xf32>) outs(%289 : tensor<2x2xf32>) -> tensor<2x2xf32>
        %291 = vector.broadcast %cst_4 : f32 to vector<2x2xf32>
        %292 = vector.fma %291, %195, %192 : vector<2x2xf32>
        %false_51 = index.bool.constant false
        %293 = math.exp2 %259 : f16
        %294 = math.tanh %8 : tensor<2x2xf32>
        %295 = arith.maxf %133, %133 : f16
        %296 = math.exp2 %5 : tensor<2x2xf32>
        %297 = arith.divui %in, %in : i64
        %298 = arith.maxsi %in_50, %c750057657_i64 : i64
        %299 = memref.load %28[%c1] : memref<2xf16>
        %300 = vector.create_mask %112, %154 : vector<3x2xi1>
        %301 = vector.reduction <minui>, %266 : vector<1xi1> into i1
        %302 = vector.flat_transpose %26 {columns = 1 : i32, rows = 2 : i32} : vector<2xf16> -> vector<2xf16>
        %303 = vector.transpose %266, [0] : vector<1xi1> to vector<1xi1>
        %cast_52 = tensor.cast %7 : tensor<2x2xf32> to tensor<?x?xf32>
        %304 = math.cos %289 : tensor<2x2xf32>
        %inserted_53 = tensor.insert %cst_3 into %8[%c0, %c1] : tensor<2x2xf32>
        linalg.yield %c678952886_i64 : i64
      } -> tensor<2x2x1xi64>
      %275 = vector.shuffle %120, %65 [0] : vector<2xf16>, vector<2xf16>
    }
    %234 = affine.max affine_map<(d0, d1) -> (d1 + d0 - 63, -d1, d0)>(%151, %c2)
    %235 = arith.remui %c1271653950_i32, %c1271653950_i32 : i32
    %236 = math.roundeven %reduced : tensor<2xf32>
    %237 = math.tan %129 : tensor<2x2xf32>
    %238 = arith.divui %true, %true_0 : i1
    scf.if %false_44 {
      %246 = affine.max affine_map<(d0, d1, d2) -> (d0)>(%c13, %c1, %c9)
      memref.store %cst_26, %alloc_17[%c0] : memref<2xf16>
      %247 = index.mul %c15, %c11
      %248 = math.cos %cst : f32
      %249 = vector.flat_transpose %23 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
      %250 = index.ceildivs %c2, %64
      %251 = vector.extract_strided_slice %141 {offsets = [1], sizes = [1], strides = [1]} : vector<3x2xi1> to vector<1x2xi1>
      %252 = arith.remsi %c1_i64, %c678952886_i64 : i64
    }
    %239 = arith.ceildivsi %true_0, %false_38 : i1
    %240 = vector.create_mask %59 : vector<2xi1>
    %241 = tensor.empty(%c6) : tensor<?xf32>
    %242 = linalg.copy ins(%cast_43 : tensor<?xf32>) outs(%241 : tensor<?xf32>) -> tensor<?xf32>
    %alloc_46 = memref.alloc() : memref<2x2xi64>
    linalg.transpose ins(%6 : tensor<2x2xi64>) outs(%alloc_46 : memref<2x2xi64>) permutation = [1, 0] 
    %alloc_47 = memref.alloc() : memref<2xf32>
    linalg.reduce ins(%12 : tensor<2x2xf32>) outs(%alloc_47 : memref<2xf32>) dimensions = [1] 
      (%in: f32, %init: f32) {
        %246 = arith.cmpi sgt, %c16786_i16, %c-16896_i16 : i16
        %247 = math.ipowi %175, %175 : tensor<2x2xi16>
        %248 = arith.addi %c-16896_i16, %c-16896_i16 : i16
        %249 = arith.minui %false_44, %true : i1
        %250 = math.sqrt %in : f32
        %251 = math.exp2 %12 : tensor<2x2xf32>
        %252 = math.cos %7 : tensor<2x2xf32>
        %253 = math.floor %2 : tensor<2x2xf32>
        %cst_48 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_48 : f32
      }
    %243 = scf.parallel (%arg2) = (%204) to (%94) step (%c8) init (%11) -> tensor<2xi1> {
      %cast_48 = tensor.cast %10 : tensor<2x2xi64> to tensor<?x?xi64>
      %246 = vector.broadcast %cst : f32 to vector<2x2xf32>
      %247 = vector.fma %246, %246, %137 : vector<2x2xf32>
      memref.copy %alloc_23, %alloc_19 : memref<2xi1> to memref<2xi1>
      %true_49 = arith.constant true
      %expanded_50 = tensor.expand_shape %0 [[0, 1]] : tensor<2xi64> into tensor<2x1xi64>
      %cast_51 = tensor.cast %8 : tensor<2x2xf32> to tensor<?x?xf32>
      %248 = scf.index_switch %c12 -> vector<2x2xi64> 
      case 1 {
        %259 = bufferization.clone %alloc_47 : memref<2xf32> to memref<2xf32>
        %260 = math.ctlz %15 : tensor<2xi32>
        %261 = math.exp %8 : tensor<2x2xf32>
        %262 = vector.broadcast %cst_4 : f32 to vector<2xf32>
        %263 = vector.multi_reduction <minf>, %247, %262 [1] : vector<2x2xf32> to vector<2xf32>
        %264 = index.sub %99, %73
        %265 = arith.addf %133, %cst_7 : f16
        %266 = math.roundeven %cst : f32
        %267 = tensor.empty() : tensor<2xi1>
        %268 = math.round %8 : tensor<2x2xf32>
        %269 = math.atan %cst : f32
        %270 = affine.max affine_map<(d0, d1, d2, d3) -> ((d1 + 32) * 32, d3, -d1 + 32, d0 ceildiv 64)>(%c11, %59, %c4, %84)
        %271 = arith.divf %cst_2, %133 : f16
        %272 = vector.maskedload %alloc_47[%c0], %240, %262 : memref<2xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
        %273 = arith.divf %cst_7, %cst_26 : f16
        %274 = math.rsqrt %8 : tensor<2x2xf32>
        %275 = arith.addi %c16786_i16, %c-16896_i16 : i16
        %276 = vector.broadcast %c1465641628_i64 : i64 to vector<2x2xi64>
        scf.yield %276 : vector<2x2xi64>
      }
      case 2 {
        %259 = arith.muli %c-16896_i16, %c-16896_i16 : i16
        %260 = index.sub %94, %c3
        %261 = index.mul %109, %c5
        %262 = math.absf %5 : tensor<2x2xf32>
        %263 = math.absf %8 : tensor<2x2xf32>
        %264 = math.tan %12 : tensor<2x2xf32>
        %265 = bufferization.to_memref %1 : memref<2x2xi32>
        %266 = bufferization.clone %alloc_16 : memref<2x2xf32> to memref<2x2xf32>
        %267 = arith.mulf %cst_7, %cst_7 : f16
        %268 = arith.addi %191, %191 : i64
        %269 = index.divu %84, %c3
        %270 = vector.splat %112 : vector<3x2xindex>
        %271 = arith.minui %c1271653950_i32, %c1271653950_i32 : i32
        %alloc_53 = memref.alloc() : memref<3x2xi1>
        %272 = arith.subi %c16786_i16, %c16786_i16 : i16
        %273 = index.maxs %136, %c9
        %274 = vector.broadcast %c678952886_i64 : i64 to vector<2x2xi64>
        scf.yield %274 : vector<2x2xi64>
      }
      default {
        %259 = vector.splat %false_44 : vector<2x2xi1>
        %260 = vector.extract_strided_slice %240 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi1> to vector<1xi1>
        %cast_53 = tensor.cast %0 : tensor<2xi64> to tensor<?xi64>
        %261 = index.sizeof
        %262 = math.sqrt %cst_3 : f32
        %263 = arith.addi %c678952886_i64, %c1465641628_i64 : i64
        %264 = math.roundeven %8 : tensor<2x2xf32>
        %265 = index.sizeof
        %266 = index.ceildivu %136, %46
        %267 = vector.broadcast %133 : f16 to vector<2xf16>
        %268 = index.divu %234, %arg2
        %269 = arith.subi %false, %false : i1
        %270 = memref.atomic_rmw minu %c16786_i16, %alloc_15[%c0] : (i16, memref<2xi16>) -> i16
        %271 = vector.insertelement %cst_7, %120[%139 : index] : vector<2xf16>
        %272 = index.mul %c15, %c7
        memref.assume_alignment %alloc, 16 : memref<2x2xf32>
        %273 = vector.broadcast %c678952886_i64 : i64 to vector<2x2xi64>
        scf.yield %273 : vector<2x2xi64>
      }
      %249 = math.roundeven %18 : tensor<2x2xf32>
      %250 = arith.negf %cst : f32
      %251 = memref.realloc %alloc_18 : memref<2xf16> to memref<2xf16>
      memref.assume_alignment %184, 4 : memref<3x2xf16>
      %252 = math.sqrt %8 : tensor<2x2xf32>
      %inserted_52 = tensor.insert %c1271653950_i32 into %1[%c1, %c1] : tensor<2x2xi32>
      %253 = vector.broadcast %133 : f16 to vector<3xf16>
      %254 = vector.broadcast %false_38 : i1 to vector<3xi1>
      %255 = vector.maskedload %alloc_13[%c0, %c0], %254, %253 : memref<2x2xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
      %256 = math.tan %8 : tensor<2x2xf32>
      %257 = memref.alloca_scope  -> (memref<2x2xf32>) {
        %inserted_53 = tensor.insert %191 into %generated_30[%c0, %c0] : tensor<?x?xi64>
        %259 = arith.mulf %cst_1, %cst : f32
        %260 = math.ctpop %1 : tensor<2x2xi32>
        %261 = index.sub %c10, %c12
        %262 = vector.broadcast %cst_1 : f32 to vector<2xf32>
        %263 = vector.multi_reduction <minf>, %193, %262 [1] : vector<2x2xf32> to vector<2xf32>
        %264 = arith.subi %c750057657_i64, %c750057657_i64 : i64
        %265 = vector.multi_reduction <maxf>, %65, %133 [0] : vector<2xf16> to f16
        %266 = index.sizeof
        %267 = arith.ceildivsi %c16786_i16, %c16786_i16 : i16
        %true_54 = index.bool.constant true
        %268 = bufferization.to_tensor %alloc_18 : memref<2xf16>
        %269 = affine.apply affine_map<(d0) -> ((((d0 - 8) ceildiv 64) * 8 + d0 - 8) floordiv 32)>(%c6)
        %270 = arith.mulf %cst_4, %cst_6 : f32
        %cast_55 = tensor.cast %1 : tensor<2x2xi32> to tensor<?x?xi32>
        %271 = math.cos %cst_2 : f16
        %272 = vector.create_mask %c6, %171 : vector<3x2xi1>
        %273 = vector.reduction <mul>, %65 : vector<2xf16> into f16
        %274 = math.rsqrt %2 : tensor<2x2xf32>
        %275 = math.exp2 %5 : tensor<2x2xf32>
        %276 = arith.shrui %c1465641628_i64, %c750057657_i64 : i64
        %277 = vector.flat_transpose %40 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
        %278 = vector.extract_strided_slice %254 {offsets = [0], sizes = [3], strides = [1]} : vector<3xi1> to vector<3xi1>
        %279 = math.atan %129 : tensor<2x2xf32>
        %280 = math.exp %cst : f32
        %281 = math.tan %133 : f16
        %282 = arith.divf %cst_3, %cst_6 : f32
        %283 = arith.maxsi %false, %false_44 : i1
        %inserted_56 = tensor.insert %false_44 into %11[%c1] : tensor<2xi1>
        %284 = math.sqrt %7 : tensor<2x2xf32>
        %285 = math.atan2 %2, %129 : tensor<2x2xf32>
        %286 = vector.multi_reduction <xor>, %228, %228 [] : vector<2xi1> to vector<2xi1>
        %287 = arith.divf %cst_4, %cst_3 : f32
        memref.alloca_scope.return %alloc : memref<2x2xf32>
      }
      %258 = tensor.empty() : tensor<2xi1>
      scf.reduce(%258)  : tensor<2xi1> {
      ^bb0(%arg3: tensor<2xi1>, %arg4: tensor<2xi1>):
        %259 = arith.remf %cst_4, %cst_1 : f32
        %260 = math.log2 %2 : tensor<2x2xf32>
        %extracted = tensor.extract %15[%c0] : tensor<2xi32>
        %261 = arith.muli %c-16896_i16, %c16786_i16 : i16
        %inserted_53 = tensor.insert %c1_i64 into %6[%c0, %c0] : tensor<2x2xi64>
        %262 = arith.ori %true, %false_44 : i1
        %263 = math.atan %7 : tensor<2x2xf32>
        %264 = math.log10 %129 : tensor<2x2xf32>
        %265 = tensor.empty() : tensor<2xi1>
        scf.reduce.return %265 : tensor<2xi1>
      }
      scf.yield
    }
    %244 = affine.vector_load %alloc_20[%c1, %c1] : memref<2x2xf32>, vector<11xf32>
    affine.vector_store %47, %alloc_15[%221] : memref<2xi16>, vector<2xi16>
    vector.print %20 : vector<2xi16>
    vector.print %23 : vector<2xi16>
    vector.print %26 : vector<2xf16>
    vector.print %40 : vector<2xi16>
    vector.print %47 : vector<2xi16>
    vector.print %54 : vector<2xf16>
    vector.print %65 : vector<2xf16>
    vector.print %96 : vector<2xf16>
    vector.print %103 : vector<2x2xi1>
    vector.print %120 : vector<2xf16>
    vector.print %121 : vector<3x2xf32>
    vector.print %122 : vector<3x2xf32>
    vector.print %123 : vector<2xi16>
    vector.print %137 : vector<2x2xf32>
    vector.print %141 : vector<3x2xi1>
    vector.print %192 : vector<2x2xf32>
    vector.print %193 : vector<2x2xf32>
    vector.print %194 : vector<2x2xf32>
    vector.print %195 : vector<2x2xf32>
    vector.print %212 : vector<1x2xf32>
    vector.print %228 : vector<2xi1>
    vector.print %240 : vector<2xi1>
    vector.print %244 : vector<11xf32>
    vector.print %c-16896_i16 : i16
    vector.print %c678952886_i64 : i64
    vector.print %cst : f32
    vector.print %true : i1
    vector.print %true_0 : i1
    vector.print %cst_1 : f32
    vector.print %cst_2 : f16
    vector.print %cst_3 : f32
    vector.print %c1271653950_i32 : i32
    vector.print %cst_4 : f32
    vector.print %c750057657_i64 : i64
    vector.print %c1465641628_i64 : i64
    vector.print %cst_5 : f16
    vector.print %c16786_i16 : i16
    vector.print %cst_6 : f32
    vector.print %cst_7 : f16
    vector.print %cst_26 : f16
    vector.print %c1_i64 : i64
    vector.print %false : i1
    vector.print %133 : f16
    vector.print %false_38 : i1
    vector.print %191 : i64
    vector.print %false_44 : i1
    %245 = vector.broadcast %c1271653950_i32 : i32 to vector<2x2xi32>
    return %245 : vector<2x2xi32>
  }
}
