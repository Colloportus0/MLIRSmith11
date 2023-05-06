module {
  func.func private @func1() {
    %cst = arith.constant 2.06748058E+9 : f32
    %c1415562437_i64 = arith.constant 1415562437 : i64
    %c1138427490_i32 = arith.constant 1138427490 : i32
    %cst_0 = arith.constant 0x4E5F73D7 : f32
    %c1099344021_i32 = arith.constant 1099344021 : i32
    %c1127819723_i64 = arith.constant 1127819723 : i64
    %c1474615974_i32 = arith.constant 1474615974 : i32
    %true = arith.constant true
    %false = arith.constant false
    %c-26606_i16 = arith.constant -26606 : i16
    %cst_1 = arith.constant 5.824000e+04 : f16
    %false_2 = arith.constant false
    %c32381_i16 = arith.constant 32381 : i16
    %c1600625636_i64 = arith.constant 1600625636 : i64
    %cst_3 = arith.constant 0x4D730A2D : f32
    %cst_4 = arith.constant 3.385600e+04 : f16
    %0 = tensor.empty() : tensor<2xi16>
    %1 = tensor.empty() : tensor<2x2x2xi32>
    %2 = tensor.empty() : tensor<2xi16>
    %3 = tensor.empty() : tensor<2x2x2xi32>
    %4 = tensor.empty() : tensor<2x2x2xf32>
    %5 = tensor.empty() : tensor<2x2x7xi64>
    %6 = tensor.empty() : tensor<4x2xi1>
    %7 = tensor.empty() : tensor<2x2x2xi16>
    %8 = tensor.empty() : tensor<2xi64>
    %9 = tensor.empty() : tensor<4x2xi1>
    %10 = tensor.empty() : tensor<2x2x7xf32>
    %11 = tensor.empty() : tensor<2xf16>
    %12 = tensor.empty() : tensor<2x2x2xf16>
    %13 = tensor.empty() : tensor<4x2xi64>
    %14 = tensor.empty() : tensor<4x2xf32>
    %15 = tensor.empty() : tensor<2x2x2xf16>
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
    %alloc = memref.alloc() : memref<2x2x2xf16>
    %alloc_5 = memref.alloc() : memref<2x2x2xf32>
    %alloc_6 = memref.alloc() : memref<2x2x2xi32>
    %alloc_7 = memref.alloc() : memref<4x2xf32>
    %alloc_8 = memref.alloc() : memref<2x2x7xf16>
    %alloc_9 = memref.alloc() : memref<4x2xi64>
    %alloc_10 = memref.alloc() : memref<4x2xi16>
    %alloc_11 = memref.alloc() : memref<2x2x2xi16>
    %alloc_12 = memref.alloc() : memref<2xi16>
    %alloc_13 = memref.alloc() : memref<2xi32>
    %alloc_14 = memref.alloc() : memref<2x2x7xf16>
    %alloc_15 = memref.alloc() : memref<2xf16>
    %alloc_16 = memref.alloc() : memref<2x2x7xf32>
    %alloc_17 = memref.alloc() : memref<4x2xi1>
    %alloc_18 = memref.alloc() : memref<4x2xi32>
    %alloc_19 = memref.alloc() : memref<2x2x2xf16>
    %16 = tensor.empty() : tensor<2x2x2xi16>
    %17 = linalg.copy ins(%7 : tensor<2x2x2xi16>) outs(%16 : tensor<2x2x2xi16>) -> tensor<2x2x2xi16>
    %18 = tensor.empty() : tensor<2x2x2xf16>
    %transposed = linalg.transpose ins(%15 : tensor<2x2x2xf16>) outs(%18 : tensor<2x2x2xf16>) permutation = [2, 0, 1] 
    %alloc_20 = memref.alloc() : memref<2xi32>
    linalg.reduce ins(%1 : tensor<2x2x2xi32>) outs(%alloc_20 : memref<2xi32>) dimensions = [0, 1] 
      (%in: i32, %init: i32) {
        %249 = index.divs %c6, %c15
        %250 = affine.load %alloc_18[%c15, %c14] : memref<4x2xi32>
        %251 = arith.shrsi %c1474615974_i32, %c1474615974_i32 : i32
        %252 = math.floor %18 : tensor<2x2x2xf16>
        %253 = affine.load %alloc_11[%c8, %c13, %c2] : memref<2x2x2xi16>
        %254 = arith.subi %c32381_i16, %c-26606_i16 : i16
        %255 = vector.create_mask %c3, %c7, %c14 : vector<2x2x7xi1>
        %256 = index.casts %false_2 : i1 to index
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    scf.parallel (%arg0) = (%c14) to (%c10) step (%c6) {
      %249 = arith.maxf %cst, %cst_0 : f32
      %250 = arith.andi %c1127819723_i64, %c1415562437_i64 : i64
      %251 = vector.broadcast %c1415562437_i64 : i64 to vector<7xi64>
      %252 = vector.broadcast %c1600625636_i64 : i64 to vector<7x7xi64>
      %253 = vector.outerproduct %251, %251, %252 {kind = #vector.kind<maxsi>} : vector<7xi64>, vector<7xi64>
      %254 = vector.broadcast %cst_1 : f16 to vector<f16>
      vector.transfer_write %254, %alloc_15[%c7] : vector<f16>, memref<2xf16>
      %255 = arith.minsi %false_2, %false_2 : i1
      affine.store %false, %alloc_17[%c8, %c15] : memref<4x2xi1>
      %256 = math.log2 %4 : tensor<2x2x2xf32>
      %257 = scf.if %true -> (f32) {
        %266 = arith.maxui %false, %true : i1
        %267 = index.sizeof
        %268 = arith.shrsi %c1138427490_i32, %c1138427490_i32 : i32
        %269 = math.log1p %10 : tensor<2x2x7xf32>
        %270 = arith.remf %cst, %cst_0 : f32
        %271 = index.maxu %c5, %c8
        %272 = arith.shrsi %c32381_i16, %c32381_i16 : i16
        %273 = math.sqrt %11 : tensor<2xf16>
        scf.yield %cst_3 : f32
      } else {
        %266 = arith.divui %c1600625636_i64, %c1415562437_i64 : i64
        memref.assume_alignment %alloc_11, 4 : memref<2x2x2xi16>
        %267 = math.expm1 %cst : f32
        %268 = arith.divui %c1138427490_i32, %c1138427490_i32 : i32
        %269 = arith.divui %c1474615974_i32, %c1099344021_i32 : i32
        %270 = math.expm1 %10 : tensor<2x2x7xf32>
        %271 = memref.load %alloc_17[%c0, %c0] : memref<4x2xi1>
        %alloca_50 = memref.alloca() : memref<2x2x2xi64>
        scf.yield %cst : f32
      }
      %258 = vector.broadcast %false : i1 to vector<7xi1>
      %259 = vector.broadcast %true : i1 to vector<7x7xi1>
      %260 = vector.outerproduct %258, %258, %259 {kind = #vector.kind<maxsi>} : vector<7xi1>, vector<7xi1>
      affine.store %c1138427490_i32, %alloc_13[%c6] : memref<2xi32>
      %261 = math.ceil %cst_0 : f32
      %262 = arith.minsi %c-26606_i16, %c32381_i16 : i16
      %263 = arith.maxui %c1474615974_i32, %c1099344021_i32 : i32
      %264 = arith.andi %c1127819723_i64, %c1415562437_i64 : i64
      vector.print %254 : vector<f16>
      %265 = vector.broadcast %c1138427490_i32 : i32 to vector<2x2x2xi32>
      scf.yield
    }
    %19 = affine.vector_load %alloc_14[%c14, %c7, %c0] : memref<2x2x7xf16>, vector<4xf16>
    affine.vector_store %19, %alloc_14[%c10, %c2, %c2] : memref<2x2x7xf16>, vector<4xf16>
    %20 = tensor.empty() : tensor<2xf16>
    %21 = tensor.empty() : tensor<f16>
    %22 = linalg.dot ins(%11, %20 : tensor<2xf16>, tensor<2xf16>) outs(%21 : tensor<f16>) -> tensor<f16>
    %true_21 = index.bool.constant true
    %23 = math.copysign %transposed, %18 : tensor<2x2x2xf16>
    %24 = math.ctpop %1 : tensor<2x2x2xi32>
    %25 = arith.maxsi %c1474615974_i32, %c1138427490_i32 : i32
    %26 = arith.minsi %c1127819723_i64, %c1415562437_i64 : i64
    %27 = arith.maxsi %c1600625636_i64, %c1415562437_i64 : i64
    %28 = math.tanh %4 : tensor<2x2x2xf32>
    %29 = math.floor %10 : tensor<2x2x7xf32>
    %30 = arith.cmpf ogt, %cst_1, %cst_1 : f16
    %31 = vector.broadcast %c1099344021_i32 : i32 to vector<i32>
    %32 = vector.transfer_write %31, %1[%c5, %c1, %c12] : vector<i32>, tensor<2x2x2xi32>
    %alloc_22 = memref.alloc() : memref<2xf16>
    memref.copy %alloc_15, %alloc_22 : memref<2xf16> to memref<2xf16>
    %33 = index.add %c8, %c15
    %34 = math.fpowi %15, %1 : tensor<2x2x2xf16>, tensor<2x2x2xi32>
    %35 = vector.shuffle %19, %19 [0, 1, 2, 5] : vector<4xf16>, vector<4xf16>
    %36 = vector.multi_reduction <minf>, %19, %19 [] : vector<4xf16> to vector<4xf16>
    %37 = index.divs %c4, %c4
    %38 = affine.load %alloc_18[%c15, %c1] : memref<4x2xi32>
    %39 = index.maxs %c11, %c1
    %40 = index.ceildivu %c11, %c3
    %cst_23 = arith.constant 0x4DCFAAC8 : f32
    %41 = scf.while (%arg0 = %alloc_8) : (memref<2x2x7xf16>) -> memref<2x2x7xf16> {
      %249 = math.exp2 %20 : tensor<2xf16>
      %from_elements_50 = tensor.from_elements %c32381_i16, %c-26606_i16 : tensor<2xi16>
      %250 = affine.apply affine_map<(d0, d1) -> ((d0 - 1) * 32)>(%39, %c15)
      %251 = vector.broadcast %cst_4 : f16 to vector<4x4xf16>
      %252 = vector.outerproduct %19, %19, %251 {kind = #vector.kind<minf>} : vector<4xf16>, vector<4xf16>
      %253 = math.copysign %cst_0, %cst : f32
      %254 = math.roundeven %cst_0 : f32
      %255 = vector.create_mask %c9, %33, %39 : vector<2x2x2xi1>
      %256 = vector.broadcast %cst_1 : f16 to vector<f16>
      vector.transfer_write %256, %alloc_19[%c0, %c11, %c6] : vector<f16>, memref<2x2x2xf16>
      scf.condition(%false) %alloc_8 : memref<2x2x7xf16>
    } do {
    ^bb0(%arg0: memref<2x2x7xf16>):
      %249 = math.powf %15, %transposed : tensor<2x2x2xf16>
      %250 = arith.shrsi %true_21, %false_2 : i1
      %cst_50 = arith.constant 1.000000e+00 : f32
      %cst_51 = arith.constant 0.000000e+00 : f32
      %251 = vector.transfer_read %4[%c6, %c11, %c2], %cst_51 : tensor<2x2x2xf32>, vector<f32>
      %252 = math.ctlz %false : i1
      %253 = tensor.empty() : tensor<2xi16>
      %mapped = linalg.map ins(%0 : tensor<2xi16>) outs(%253 : tensor<2xi16>)
        (%in: i16) {
          %265 = arith.cmpf ule, %cst, %cst_50 : f32
          %alloca_53 = memref.alloca() : memref<2x2x2xi1>
          %266 = bufferization.clone %arg0 : memref<2x2x7xf16> to memref<2x2x7xf16>
          %267 = affine.load %alloc_16[%c2, %c12, %c14] : memref<2x2x7xf32>
          %268 = tensor.empty() : tensor<2x2xi1>
          %269 = tensor.empty() : tensor<4x2xi1>
          %270 = linalg.matmul ins(%6, %268 : tensor<4x2xi1>, tensor<2x2xi1>) outs(%269 : tensor<4x2xi1>) -> tensor<4x2xi1>
          %271 = tensor.empty() : tensor<2x4xi64>
          %272 = tensor.empty() : tensor<4x4xi64>
          %273 = linalg.matmul ins(%13, %271 : tensor<4x2xi64>, tensor<2x4xi64>) outs(%272 : tensor<4x4xi64>) -> tensor<4x4xi64>
          %274 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d2 + d2 floordiv 16 - 4) mod 128)>(%c13, %c3, %40, %c5)
          %275 = arith.mulf %cst_50, %cst_0 : f32
          %276 = math.round %4 : tensor<2x2x2xf32>
          %277 = arith.minsi %c1099344021_i32, %c1099344021_i32 : i32
          %true_54 = index.bool.constant true
          %278 = math.tanh %20 : tensor<2xf16>
          %279 = math.sqrt %11 : tensor<2xf16>
          %280 = index.mul %c6, %c1
          %281 = affine.load %266[%c14, %c5, %c2] : memref<2x2x7xf16>
          %alloc_55 = memref.alloc() : memref<4x4xi64>
          memref.tensor_store %272, %alloc_55 : memref<4x4xi64>
          %282 = arith.negf %cst_1 : f16
          %283 = arith.minsi %true_21, %true_54 : i1
          memref.copy %alloc_14, %alloc_8 : memref<2x2x7xf16> to memref<2x2x7xf16>
          %284 = arith.mulf %cst_50, %cst_50 : f32
          %285 = bufferization.to_tensor %266 : memref<2x2x7xf16>
          %286 = vector.load %alloc_9[%c2, %c0] : memref<4x2xi64>, vector<4x2xi64>
          %287 = math.ctlz %0 : tensor<2xi16>
          %288 = arith.subi %in, %c32381_i16 : i16
          %289 = arith.remf %267, %cst_50 : f32
          %290 = arith.cmpf ueq, %cst_0, %cst_0 : f32
          %291 = arith.minui %c1127819723_i64, %c1127819723_i64 : i64
          %292 = math.absi %false : i1
          %293 = tensor.empty() : tensor<2x7xi1>
          %294 = tensor.empty() : tensor<4x7xi1>
          %295 = linalg.matmul ins(%9, %293 : tensor<4x2xi1>, tensor<2x7xi1>) outs(%294 : tensor<4x7xi1>) -> tensor<4x7xi1>
          %splat_56 = tensor.splat %cst_0 : tensor<2x2x2xf32>
          %296 = arith.ceildivsi %c32381_i16, %c32381_i16 : i16
          %297 = math.exp2 %285 : tensor<2x2x7xf16>
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      %254 = vector.create_mask %c9, %c15 : vector<4x2xi1>
      %255 = affine.load %alloc[%c4, %c8, %c12] : memref<2x2x2xf16>
      %256 = vector.broadcast %cst_50 : f32 to vector<2xf32>
      %257 = vector.broadcast %true_21 : i1 to vector<2xi1>
      %258 = vector.maskedload %alloc_5[%c0, %c0, %c0], %257, %256 : memref<2x2x2xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
      %259 = arith.divui %c1600625636_i64, %c1127819723_i64 : i64
      %260 = arith.shli %c1474615974_i32, %c1138427490_i32 : i32
      %c1886619009_i64 = arith.constant 1886619009 : i64
      %cast_52 = tensor.cast %15 : tensor<2x2x2xf16> to tensor<?x?x?xf16>
      %261 = index.mul %c8, %40
      %262 = math.fma %cst_3, %cst_3, %cst_50 : f32
      %263 = vector.shuffle %31, %31 [0, 1] : vector<i32>, vector<i32>
      %264 = vector.insertelement %38, %31[] : vector<i32>
      scf.yield %alloc_14 : memref<2x2x7xf16>
    }
    %42 = vector.broadcast %cst_3 : f32 to vector<4xf32>
    %43 = vector.broadcast %true : i1 to vector<4xi1>
    %44 = vector.maskedload %alloc_5[%c0, %c0, %c1], %43, %42 : memref<2x2x2xf32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
    %45 = arith.shli %c-26606_i16, %c-26606_i16 : i16
    %splat = tensor.splat %cst_3 : tensor<2xf32>
    %46 = bufferization.to_tensor %alloc_8 : memref<2x2x7xf16>
    %collapsed = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<2x2x2xi32> into tensor<4x2xi32>
    %47 = scf.index_switch %c0 -> f16 
    case 1 {
      %249 = index.floordivs %c8, %c9
      %cast_50 = tensor.cast %13 : tensor<4x2xi64> to tensor<?x?xi64>
      %250 = affine.max affine_map<(d0, d1) -> (d1 + d1 * 8 + d0 - d1 * 8)>(%c3, %c6)
      %251 = math.exp2 %cst_4 : f16
      %252 = tensor.empty() : tensor<2xi64>
      %mapped = linalg.map ins(%8 : tensor<2xi64>) outs(%252 : tensor<2xi64>)
        (%in: i64) {
          %263 = vector.broadcast %c-26606_i16 : i16 to vector<7x2xi16>
          %264 = vector.broadcast %c-26606_i16 : i16 to vector<2xi16>
          %dest_53, %accumulated_value_54 = vector.scan <maxsi>, %263, %264 {inclusive = false, reduction_dim = 0 : i64} : vector<7x2xi16>, vector<2xi16>
          memref.assume_alignment %alloc_17, 4 : memref<4x2xi1>
          %265 = arith.floordivsi %c1600625636_i64, %c1415562437_i64 : i64
          %266 = math.floor %cst_1 : f16
          memref.tensor_store %6, %alloc_17 : memref<4x2xi1>
          %267 = arith.minsi %c1138427490_i32, %c1099344021_i32 : i32
          %268 = math.floor %21 : tensor<f16>
          %269 = index.ceildivu %33, %40
          %270 = vector.flat_transpose %43 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
          %271 = math.powf %15, %transposed : tensor<2x2x2xf16>
          %true_55 = index.bool.constant true
          %272 = vector.broadcast %cst_0 : f32 to vector<2x2x7xf32>
          %273 = vector.fma %272, %272, %272 : vector<2x2x7xf32>
          %274 = index.divu %37, %250
          %275 = index.maxs %269, %c5
          %276 = vector.broadcast %true_55 : i1 to vector<4x4xi1>
          %277 = vector.outerproduct %43, %270, %276 {kind = #vector.kind<maxui>} : vector<4xi1>, vector<4xi1>
          %278 = vector.flat_transpose %270 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
          %279 = tensor.empty() : tensor<4x2xi64>
          %280 = vector.insert %false_2, %43 [3] : i1 into vector<4xi1>
          %281 = vector.broadcast %cst_1 : f16 to vector<f16>
          vector.transfer_write %281, %alloc_15[%37] : vector<f16>, memref<2xf16>
          %282 = math.sqrt %10 : tensor<2x2x7xf32>
          %283 = arith.ceildivsi %c1099344021_i32, %c1099344021_i32 : i32
          %284 = index.sizeof
          %285 = math.round %18 : tensor<2x2x2xf16>
          %286 = index.sizeof
          %287 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 + 16, d0 mod 16 - 8)>(%274, %c4, %c10, %c0)
          %288 = vector.broadcast %c1127819723_i64 : i64 to vector<4x2xi64>
          %289 = math.cos %11 : tensor<2xf16>
          %290 = math.exp2 %14 : tensor<4x2xf32>
          %291 = vector.insertelement %cst_4, %281[] : vector<f16>
          memref.assume_alignment %alloc_11, 4 : memref<2x2x2xi16>
          %292 = tensor.empty() : tensor<4x2xi16>
          %293 = math.powf %12, %18 : tensor<2x2x2xf16>
          %c1_i64_56 = arith.constant 1 : i64
          linalg.yield %c1_i64_56 : i64
        }
      %253 = affine.load %alloc_17[%c5, %c6] : memref<4x2xi1>
      %254 = arith.floordivsi %38, %c1474615974_i32 : i32
      %generated_51 = tensor.generate %c7 {
      ^bb0(%arg0: index):
        %263 = arith.shrui %c1099344021_i32, %c1099344021_i32 : i32
        %264 = math.cos %21 : tensor<f16>
        %265 = tensor.empty() : tensor<2xi32>
        %266 = math.fpowi %splat, %265 : tensor<2xf32>, tensor<2xi32>
        %267 = math.ctlz %1 : tensor<2x2x2xi32>
        tensor.yield %cst_4 : f16
      } : tensor<?xf16>
      %255 = math.log1p %transposed : tensor<2x2x2xf16>
      %256 = arith.remf %cst_4, %cst_1 : f16
      %257 = scf.while (%arg0 = %alloc_16) : (memref<2x2x7xf32>) -> memref<2x2x7xf32> {
        %263 = vector.transpose %44, [0] : vector<4xf32> to vector<4xf32>
        %264 = bufferization.clone %alloc_5 : memref<2x2x2xf32> to memref<2x2x2xf32>
        %265 = math.rsqrt %12 : tensor<2x2x2xf16>
        %true_53 = index.bool.constant true
        %from_elements_54 = tensor.from_elements %true, %253, %true, %true_21, %true, %false_2, %true_21, %253, %true, %true_21, %253, %false, %true, %false_2, %true_21, %false, %253, %true_21, %false_2, %false_2, %false_2, %false, %253, %true, %false, %false, %false, %253 : tensor<2x2x7xi1>
        %266 = math.expm1 %transposed : tensor<2x2x2xf16>
        %267 = math.log10 %transposed : tensor<2x2x2xf16>
        %268 = arith.negf %cst_3 : f32
        scf.condition(%253) %arg0 : memref<2x2x7xf32>
      } do {
      ^bb0(%arg0: memref<2x2x7xf32>):
        %263 = bufferization.to_memref %1 : memref<2x2x2xi32>
        %264 = arith.shrsi %c-26606_i16, %c-26606_i16 : i16
        %265 = arith.subi %c1415562437_i64, %c1600625636_i64 : i64
        %cst_53 = arith.constant 1.000000e+00 : f16
        %cst_54 = arith.constant 0.000000e+00 : f16
        %266 = vector.transfer_read %12[%249, %249, %39], %cst_54 : tensor<2x2x2xf16>, vector<f16>
        %267 = vector.shuffle %31, %31 [0, 1] : vector<i32>, vector<i32>
        %268 = vector.broadcast %cst_3 : f32 to vector<2x2x7xf32>
        %269 = vector.fma %268, %268, %268 : vector<2x2x7xf32>
        %270 = arith.remf %cst_3, %cst : f32
        %271 = affine.max affine_map<(d0, d1, d2) -> (d2 - 64, d0, d2 - 48, d0)>(%c9, %c4, %c1)
        %272 = vector.broadcast %cst : f32 to vector<4x2xf32>
        %273 = arith.shrui %38, %c1099344021_i32 : i32
        %274 = arith.remf %cst_0, %cst : f32
        %275 = math.absi %3 : tensor<2x2x2xi32>
        %276 = arith.minf %cst_0, %cst : f32
        %277 = index.casts %c1127819723_i64 : i64 to index
        %278 = arith.remsi %true_21, %false_2 : i1
        %279 = math.round %4 : tensor<2x2x2xf32>
        scf.yield %arg0 : memref<2x2x7xf32>
      }
      %258 = arith.ceildivsi %c1127819723_i64, %c1600625636_i64 : i64
      %259 = bufferization.to_tensor %alloc_7 : memref<4x2xf32>
      %260 = tensor.empty(%37) : tensor<2x2x?xi64>
      %261 = math.atan2 %12, %12 : tensor<2x2x2xf16>
      %262 = tensor.empty() : tensor<2x2x2xi32>
      %mapped_52 = linalg.map ins(%1, %3, %alloc_6 : tensor<2x2x2xi32>, tensor<2x2x2xi32>, memref<2x2x2xi32>) outs(%262 : tensor<2x2x2xi32>)
        (%in: i32, %in_53: i32, %in_54: i32) {
          %false_55 = index.bool.constant false
          %263 = vector.broadcast %cst : f32 to vector<4x2xf32>
          %264 = vector.fma %263, %263, %263 : vector<4x2xf32>
          %265 = vector.extract_strided_slice %264 {offsets = [0], sizes = [1], strides = [1]} : vector<4x2xf32> to vector<1x2xf32>
          %266 = index.casts %c3 : index to i32
          %267 = math.cos %14 : tensor<4x2xf32>
          %268 = arith.maxsi %false, %false_2 : i1
          %269 = arith.divf %cst, %cst_0 : f32
          %270 = vector.transpose %44, [0] : vector<4xf32> to vector<4xf32>
          %271 = math.cttz %c1600625636_i64 : i64
          %272 = math.fpowi %12, %3 : tensor<2x2x2xf16>, tensor<2x2x2xi32>
          %273 = math.powf %21, %21 : tensor<f16>
          %274 = math.exp2 %12 : tensor<2x2x2xf16>
          %275 = arith.divf %cst_3, %cst : f32
          %276 = affine.min affine_map<(d0) -> ((-d0 + (d0 floordiv 64) ceildiv 4) floordiv 2, d0 * 64 - 32, 0, ((-d0 + (d0 floordiv 64) ceildiv 4) floordiv 2) * 64)>(%c3)
          %277 = vector.shuffle %19, %19 [5, 6] : vector<4xf16>, vector<4xf16>
          %278 = arith.shli %false_2, %false_2 : i1
          %279 = index.maxs %c15, %c4
          %280 = math.floor %20 : tensor<2xf16>
          %281 = bufferization.clone %alloc_6 : memref<2x2x2xi32> to memref<2x2x2xi32>
          %alloc_56 = memref.alloc() : memref<2xf32>
          %282 = math.log10 %15 : tensor<2x2x2xf16>
          %283 = math.log2 %12 : tensor<2x2x2xf16>
          %284 = arith.minsi %in_54, %in : i32
          %285 = math.ctlz %c1415562437_i64 : i64
          %286 = math.sqrt %259 : tensor<4x2xf32>
          memref.copy %281, %alloc_6 : memref<2x2x2xi32> to memref<2x2x2xi32>
          %287 = math.rsqrt %21 : tensor<f16>
          %extracted_57 = tensor.extract %22[] : tensor<f16>
          memref.assume_alignment %alloc_17, 4 : memref<4x2xi1>
          %288 = vector.insertelement %true, %43[%33 : index] : vector<4xi1>
          %289 = index.sizeof
          %290 = index.maxu %279, %c6
          %c1_i32 = arith.constant 1 : i32
          linalg.yield %c1_i32 : i32
        }
      scf.yield %cst_4 : f16
    }
    case 2 {
      affine.store %cst_3, %alloc_16[%c3, %c7, %c11] : memref<2x2x7xf32>
      %249 = arith.ori %false_2, %false : i1
      %250 = affine.load %alloc_10[%c13, %c6] : memref<4x2xi16>
      %251 = tensor.empty() : tensor<2x2x2xi32>
      %mapped = linalg.map ins(%3, %3 : tensor<2x2x2xi32>, tensor<2x2x2xi32>) outs(%251 : tensor<2x2x2xi32>)
        (%in: i32, %in_51: i32) {
          %263 = math.exp2 %cst_0 : f32
          %264 = arith.remf %cst_3, %cst_3 : f32
          %265 = bufferization.to_tensor %alloc_11 : memref<2x2x2xi16>
          %266 = math.round %cst_4 : f16
          %267 = vector.broadcast %cst : f32 to vector<4x4xf32>
          %268 = vector.outerproduct %42, %44, %267 {kind = #vector.kind<minf>} : vector<4xf32>, vector<4xf32>
          %269 = vector.create_mask %c4 : vector<2xi1>
          %270 = math.ceil %cst_0 : f32
          %271 = arith.remsi %c1415562437_i64, %c1127819723_i64 : i64
          %272 = arith.maxsi %250, %c32381_i16 : i16
          %273 = arith.shrui %c1099344021_i32, %c1099344021_i32 : i32
          %274 = tensor.empty() : tensor<2x2x7xi64>
          %275 = math.ctpop %collapsed : tensor<4x2xi32>
          %276 = vector.flat_transpose %42 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
          %277 = vector.broadcast %40 : index to vector<4xindex>
          vector.scatter %alloc_8[%c1, %c1, %c3] [%277], %43, %19 : memref<2x2x7xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
          %278 = bufferization.to_tensor %alloc_12 : memref<2xi16>
          %279 = affine.load %alloc_13[%c13] : memref<2xi32>
          %true_52 = index.bool.constant true
          %280 = affine.load %alloc_13[%c10] : memref<2xi32>
          %281 = math.sqrt %4 : tensor<2x2x2xf32>
          %282 = index.maxu %c3, %c12
          %283 = affine.load %alloc_14[%c13, %c4, %c7] : memref<2x2x7xf16>
          %284 = vector.transpose %31, [] : vector<i32> to vector<i32>
          %cst_53 = arith.constant 1.000000e+00 : f32
          %285 = vector.transfer_read %splat[%c14], %cst_53 : tensor<2xf32>, vector<f32>
          %286 = arith.remsi %c1099344021_i32, %c1099344021_i32 : i32
          %287 = index.maxu %c10, %c1
          %288 = arith.andi %250, %250 : i16
          %289 = index.floordivs %c8, %37
          %290 = math.log10 %cst_1 : f16
          %291 = math.sqrt %15 : tensor<2x2x2xf16>
          %292 = math.round %cst_53 : f32
          %293 = math.absf %11 : tensor<2xf16>
          %294 = math.atan2 %4, %4 : tensor<2x2x2xf32>
          %c0_i32 = arith.constant 0 : i32
          linalg.yield %c0_i32 : i32
        }
      %252 = arith.remf %cst, %cst_0 : f32
      %253 = index.maxs %c10, %c15
      %254 = math.ipowi %6, %9 : tensor<4x2xi1>
      %255 = math.tan %4 : tensor<2x2x2xf32>
      %256 = vector.broadcast %38 : i32 to vector<4x2xi32>
      %257 = math.exp %11 : tensor<2xf16>
      %258 = bufferization.to_tensor %alloc_8 : memref<2x2x7xf16>
      %259 = arith.floordivsi %false, %true : i1
      %260 = index.maxs %253, %c3
      %261 = math.rsqrt %12 : tensor<2x2x2xf16>
      %262 = math.exp2 %20 : tensor<2xf16>
      %generated_50 = tensor.generate %c5 {
      ^bb0(%arg0: index, %arg1: index):
        memref.assume_alignment %alloc_14, 1 : memref<2x2x7xf16>
        affine.store %cst_0, %alloc_7[%c11, %c0] : memref<4x2xf32>
        %263 = math.cos %cst_1 : f16
        %264 = tensor.empty(%c10) : tensor<?xi1>
        tensor.yield %c1415562437_i64 : i64
      } : tensor<?x2xi64>
      scf.yield %cst_1 : f16
    }
    case 3 {
      %249 = vector.broadcast %c-26606_i16 : i16 to vector<2x2xi16>
      %250 = vector.transfer_write %249, %7[%c4, %c13, %c1] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<2x2xi16>, tensor<2x2x2xi16>
      memref.assume_alignment %alloc_13, 8 : memref<2xi32>
      %251 = arith.cmpi ugt, %38, %c1474615974_i32 : i32
      %252 = math.fpowi %12, %3 : tensor<2x2x2xf16>, tensor<2x2x2xi32>
      %253 = bufferization.clone %alloc_14 : memref<2x2x7xf16> to memref<2x2x7xf16>
      %254 = affine.apply affine_map<(d0, d1) -> (-((d1 * 2) floordiv 8 - d1 * 3))>(%c8, %c13)
      %255 = arith.remf %cst_0, %cst_0 : f32
      %256 = arith.shrsi %c1474615974_i32, %c1138427490_i32 : i32
      %257 = arith.minui %c-26606_i16, %c32381_i16 : i16
      %258 = arith.cmpf ueq, %cst_0, %cst : f32
      %259 = index.ceildivu %c8, %c4
      %260 = index.sizeof
      %rank_50 = tensor.rank %0 : tensor<2xi16>
      %261 = index.divs %c7, %37
      %262 = vector.broadcast %c32381_i16 : i16 to vector<2xi16>
      %dest_51, %accumulated_value_52 = vector.scan <or>, %249, %262 {inclusive = false, reduction_dim = 0 : i64} : vector<2x2xi16>, vector<2xi16>
      %263 = math.fpowi %4, %3 : tensor<2x2x2xf32>, tensor<2x2x2xi32>
      scf.yield %cst_4 : f16
    }
    default {
      %249 = bufferization.to_memref %10 : memref<2x2x7xf32>
      %250 = math.rsqrt %4 : tensor<2x2x2xf32>
      %alloc_50 = memref.alloc() : memref<2x2x2xi32>
      %false_51 = index.bool.constant false
      %251 = math.absf %18 : tensor<2x2x2xf16>
      %252 = index.castu %c0 : index to i32
      %253 = affine.load %alloc_18[%c7, %c6] : memref<4x2xi32>
      %254 = arith.divsi %false, %true_21 : i1
      %255 = vector.flat_transpose %44 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
      %256 = math.log1p %cst_1 : f16
      %257 = index.divu %40, %c5
      %false_52 = index.bool.constant false
      %258 = index.maxu %c5, %c15
      %259 = vector.flat_transpose %42 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
      %260 = scf.execute_region -> vector<4x2xi32> {
        %261 = math.tan %10 : tensor<2x2x7xf32>
        %262 = tensor.empty() : tensor<2xi32>
        %263 = math.fpowi %11, %262 : tensor<2xf16>, tensor<2xi32>
        %264 = math.expm1 %transposed : tensor<2x2x2xf16>
        %265 = vector.broadcast %c1099344021_i32 : i32 to vector<i32>
        vector.transfer_write %265, %alloc_18[%c13, %258] : vector<i32>, memref<4x2xi32>
        %266 = tensor.empty(%c6) : tensor<?xi16>
        %267 = index.casts %false_51 : i1 to index
        %268 = math.floor %cst_4 : f16
        %269 = vector.insert %false, %43 [0] : i1 into vector<4xi1>
        %270 = affine.max affine_map<(d0, d1) -> (d0 + 16, d1)>(%40, %c5)
        %271 = math.tan %cst : f32
        %272 = math.absf %transposed : tensor<2x2x2xf16>
        %273 = math.floor %cst_3 : f32
        %274 = index.floordivs %c5, %39
        %alloca_53 = memref.alloca() : memref<2xi32>
        %275 = arith.cmpf ole, %cst_3, %cst : f32
        %c375869386_i32 = arith.constant 375869386 : i32
        %276 = vector.broadcast %c1138427490_i32 : i32 to vector<4x2xi32>
        scf.yield %276 : vector<4x2xi32>
      }
      %inserted = tensor.insert %253 into %3[%c1, %c0, %c1] : tensor<2x2x2xi32>
      scf.yield %cst_1 : f16
    }
    %48 = vector.broadcast %cst : f32 to vector<4x4xf32>
    %49 = vector.outerproduct %44, %44, %48 {kind = #vector.kind<add>} : vector<4xf32>, vector<4xf32>
    %50 = vector.transpose %44, [0] : vector<4xf32> to vector<4xf32>
    %51 = index.ceildivu %c10, %37
    %52 = arith.cmpf false, %cst_4, %cst_1 : f16
    %53 = math.absi %0 : tensor<2xi16>
    %54 = arith.ori %c1099344021_i32, %c1099344021_i32 : i32
    %55 = vector.insertelement %cst_3, %44[%c4 : index] : vector<4xf32>
    %cst_24 = arith.constant 1.206000e+03 : f16
    %56 = arith.cmpf true, %cst_3, %cst_0 : f32
    %57 = math.tan %14 : tensor<4x2xf32>
    %58 = arith.minsi %true, %false : i1
    memref.assume_alignment %alloc_9, 2 : memref<4x2xi64>
    %59 = arith.maxui %c1127819723_i64, %c1415562437_i64 : i64
    %60 = index.ceildivu %c7, %39
    %61 = arith.remf %cst_4, %cst_1 : f16
    %62 = index.maxu %c2, %39
    %rank = tensor.rank %18 : tensor<2x2x2xf16>
    %63 = bufferization.to_tensor %alloc_8 : memref<2x2x7xf16>
    %64 = vector.broadcast %false_2 : i1 to vector<4x4xi1>
    %65 = vector.outerproduct %43, %43, %64 {kind = #vector.kind<maxsi>} : vector<4xi1>, vector<4xi1>
    %66 = vector.broadcast %c-26606_i16 : i16 to vector<4xi16>
    %67 = vector.maskedload %alloc_10[%c3, %c0], %43, %66 : memref<4x2xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
    %68 = arith.negf %cst_4 : f16
    affine.for %arg0 = 0 to 119 {
    }
    %69 = vector.shuffle %67, %67 [1, 4, 5, 7] : vector<4xi16>, vector<4xi16>
    scf.execute_region {
      %true_50 = index.bool.constant true
      %249 = tensor.empty() : tensor<2x2x7xi32>
      %250 = math.fpowi %46, %249 : tensor<2x2x7xf16>, tensor<2x2x7xi32>
      %true_51 = index.bool.constant true
      %251 = vector.load %alloc_14[%c0, %c0, %c3] : memref<2x2x7xf16>, vector<2x2x7xf16>
      %252 = math.floor %12 : tensor<2x2x2xf16>
      %253 = math.ceil %cst_1 : f16
      %254 = arith.divsi %c1415562437_i64, %c1415562437_i64 : i64
      %255 = vector.broadcast %cst_1 : f16 to vector<4xf16>
      %256 = vector.transfer_write %255, %15[%c5, %c11, %c2] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<4xf16>, tensor<2x2x2xf16>
      %257 = vector.broadcast %cst_1 : f16 to vector<4x4xf16>
      %258 = vector.outerproduct %255, %255, %257 {kind = #vector.kind<minf>} : vector<4xf16>, vector<4xf16>
      %259 = bufferization.to_memref %6 : memref<4x2xi1>
      %260 = vector.broadcast %cst : f32 to vector<2x2x7xf32>
      %261 = vector.fma %260, %260, %260 : vector<2x2x7xf32>
      %262 = arith.floordivsi %38, %c1138427490_i32 : i32
      %generated_52 = tensor.generate %c3, %39 {
      ^bb0(%arg0: index, %arg1: index, %arg2: index):
        %265 = bufferization.clone %alloc_7 : memref<4x2xf32> to memref<4x2xf32>
        %266 = math.absf %14 : tensor<4x2xf32>
        %267 = math.cttz %2 : tensor<2xi16>
        %268 = arith.andi %c1127819723_i64, %c1415562437_i64 : i64
        tensor.yield %cst_0 : f32
      } : tensor<?x?x2xf32>
      %263 = index.casts %c1099344021_i32 : i32 to index
      %alloc_53 = memref.alloc() : memref<2xi16>
      memref.copy %alloc_12, %alloc_53 : memref<2xi16> to memref<2xi16>
      %264 = arith.remf %cst, %cst_0 : f32
      scf.yield
    }
    %70 = index.castu %c5 : index to i32
    %71 = arith.floordivsi %38, %38 : i32
    %false_25 = index.bool.constant false
    %72 = math.copysign %cst_4, %cst_1 : f16
    %73 = math.ceil %cst_1 : f16
    %74 = arith.cmpf ule, %cst_1, %cst_1 : f16
    %75 = math.log1p %splat : tensor<2xf32>
    %76 = arith.negf %cst_0 : f32
    %77 = math.atan2 %11, %11 : tensor<2xf16>
    %alloca = memref.alloca() : memref<2x2x7xf16>
    %78 = scf.while (%arg0 = %43) : (vector<4xi1>) -> vector<4xi1> {
      %249 = vector.flat_transpose %66 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
      %250 = arith.floordivsi %false_25, %false_2 : i1
      %251 = arith.divf %cst_1, %cst_1 : f16
      %252 = memref.load %alloc_14[%c1, %c0, %c1] : memref<2x2x7xf16>
      %253 = math.log %4 : tensor<2x2x2xf32>
      %254 = math.cos %splat : tensor<2xf32>
      %255 = arith.divui %c1138427490_i32, %c1138427490_i32 : i32
      %256 = vector.broadcast %cst_0 : f32 to vector<2x2x7xf32>
      %257 = vector.fma %256, %256, %256 : vector<2x2x7xf32>
      scf.condition(%true_21) %43 : vector<4xi1>
    } do {
    ^bb0(%arg0: vector<4xi1>):
      %249 = arith.minui %c1138427490_i32, %c1099344021_i32 : i32
      memref.copy %alloc_14, %alloc_8 : memref<2x2x7xf16> to memref<2x2x7xf16>
      %250 = math.atan2 %46, %63 : tensor<2x2x7xf16>
      %251 = math.tanh %14 : tensor<4x2xf32>
      %252 = affine.for %arg1 = 0 to 9 iter_args(%arg2 = %splat) -> (tensor<2xf32>) {
        affine.yield %splat : tensor<2xf32>
      }
      %253 = index.sizeof
      %254 = index.add %c0, %51
      %255 = bufferization.to_memref %15 : memref<2x2x2xf16>
      %cast_50 = tensor.cast %63 : tensor<2x2x7xf16> to tensor<?x?x?xf16>
      affine.for %arg1 = 0 to 15 {
      }
      %256 = affine.max affine_map<(d0) -> (0, -(d0 - 1), (d0 - 1) * 3 - 16)>(%c6)
      %257 = vector.broadcast %cst : f32 to vector<2xf32>
      %258 = vector.fma %257, %257, %257 : vector<2xf32>
      %259 = math.rsqrt %11 : tensor<2xf16>
      %extracted_51 = tensor.extract %20[%c1] : tensor<2xf16>
      %260 = math.copysign %46, %46 : tensor<2x2x7xf16>
      %261 = arith.muli %38, %c1138427490_i32 : i32
      scf.yield %43 : vector<4xi1>
    }
    %79 = index.add %37, %c5
    %80 = index.maxs %c12, %c8
    %from_elements = tensor.from_elements %cst, %cst_0, %cst, %cst, %cst, %cst_0, %cst_3, %cst_0 : tensor<2x2x2xf32>
    %81 = arith.andi %false_2, %true_21 : i1
    %82 = vector.broadcast %c32381_i16 : i16 to vector<2xi16>
    %83 = vector.broadcast %false : i1 to vector<2xi1>
    %84 = vector.maskedload %alloc_12[%c1], %83, %82 : memref<2xi16>, vector<2xi1>, vector<2xi16> into vector<2xi16>
    %85 = arith.cmpf une, %cst, %cst_0 : f32
    %86 = vector.broadcast %cst_3 : f32 to vector<2x2x2xf32>
    %87 = arith.minf %cst_3, %cst_3 : f32
    %88 = vector.broadcast %cst : f32 to vector<2x2xf32>
    %dest, %accumulated_value = vector.scan <maxf>, %86, %88 {inclusive = false, reduction_dim = 1 : i64} : vector<2x2x2xf32>, vector<2x2xf32>
    %89 = math.absf %22 : tensor<f16>
    %90 = arith.floordivsi %38, %c1474615974_i32 : i32
    %91 = vector.maskedload %alloc_14[%c1, %c1, %c4], %43, %19 : memref<2x2x7xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
    memref.copy %alloc_13, %alloc_20 : memref<2xi32> to memref<2xi32>
    %92 = math.cttz %2 : tensor<2xi16>
    %93 = affine.load %alloc_7[%c11, %c15] : memref<4x2xf32>
    %94 = arith.remsi %false_2, %true : i1
    affine.store %c-26606_i16, %alloc_12[%c9] : memref<2xi16>
    %95 = vector.broadcast %cst_3 : f32 to vector<2x2xf32>
    %dest_26, %accumulated_value_27 = vector.scan <maxf>, %86, %95 {inclusive = true, reduction_dim = 0 : i64} : vector<2x2x2xf32>, vector<2x2xf32>
    %96 = index.divu %c4, %40
    %97 = affine.load %alloc_18[%c14, %c1] : memref<4x2xi32>
    %98 = vector.broadcast %93 : f32 to vector<2x2xf32>
    %dest_28, %accumulated_value_29 = vector.scan <maxf>, %86, %98 {inclusive = true, reduction_dim = 1 : i64} : vector<2x2x2xf32>, vector<2x2xf32>
    %99 = arith.mulf %cst_4, %cst_1 : f16
    %100 = bufferization.to_memref %21 : memref<f16>
    %101 = math.exp2 %93 : f32
    %102 = arith.cmpi ne, %c1099344021_i32, %38 : i32
    %103 = arith.minui %false_2, %false : i1
    %104 = index.divs %37, %c3
    %105 = tensor.empty(%c4, %c10, %c8) : tensor<?x?x?xi32>
    %106 = vector.broadcast %cst_0 : f32 to vector<2xf32>
    %107 = vector.broadcast %93 : f32 to vector<4x4xf32>
    %108 = vector.outerproduct %42, %44, %107 {kind = #vector.kind<add>} : vector<4xf32>, vector<4xf32>
    %cast = tensor.cast %12 : tensor<2x2x2xf16> to tensor<?x?x?xf16>
    %109 = arith.divf %cst_1, %cst_1 : f16
    %110 = scf.index_switch %60 -> f16 
    case 1 {
      %cast_50 = tensor.cast %8 : tensor<2xi64> to tensor<?xi64>
      %249 = math.log2 %63 : tensor<2x2x7xf16>
      %250 = index.add %c1, %79
      %251 = index.maxu %39, %40
      %252 = arith.remsi %c1127819723_i64, %c1600625636_i64 : i64
      %253 = math.absf %splat : tensor<2xf32>
      %254 = vector.insert %false_25, %83 [0] : i1 into vector<2xi1>
      %255 = vector.shuffle %43, %83 [1, 2, 3, 4] : vector<4xi1>, vector<2xi1>
      %256 = index.divs %c12, %c13
      %257 = arith.mulf %cst, %93 : f32
      %258 = vector.reduction <minf>, %44 : vector<4xf32> into f32
      %alloca_51 = memref.alloca() : memref<2x2x2xf16>
      %259 = arith.remsi %c1138427490_i32, %c1138427490_i32 : i32
      %260 = affine.apply affine_map<(d0, d1, d2) -> ((d0 + 8) * 128)>(%c7, %c3, %c9)
      %261 = tensor.empty() : tensor<2xi16>
      %mapped = linalg.map ins(%0 : tensor<2xi16>) outs(%261 : tensor<2xi16>)
        (%in: i16) {
          %263 = math.expm1 %12 : tensor<2x2x2xf16>
          memref.store %c1127819723_i64, %alloc_9[%c0, %c1] : memref<4x2xi64>
          %264 = memref.atomic_rmw mulf %cst_4, %100[] : (f16, memref<f16>) -> f16
          %265 = math.powf %10, %10 : tensor<2x2x7xf32>
          %266 = math.copysign %63, %63 : tensor<2x2x7xf16>
          %cst_52 = arith.constant 1.000000e+00 : f32
          %cst_53 = arith.constant 0.000000e+00 : f32
          %267 = vector.transfer_read %alloc_16[%c13, %c2, %c5], %cst_53 {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : memref<2x2x7xf32>, vector<2x7xf32>
          %268 = math.copysign %cst_0, %93 : f32
          %269 = affine.max affine_map<(d0, d1, d2, d3) -> (d2, d2, d0 * 8, d2 - 32)>(%c14, %c5, %c9, %40)
          %270 = arith.floordivsi %c-26606_i16, %c-26606_i16 : i16
          memref.assume_alignment %alloc_14, 1 : memref<2x2x7xf16>
          %271 = arith.floordivsi %c1127819723_i64, %c1600625636_i64 : i64
          %272 = arith.andi %true_21, %true_21 : i1
          %273 = math.copysign %11, %20 : tensor<2xf16>
          %274 = math.log1p %4 : tensor<2x2x2xf32>
          %275 = index.divu %269, %c5
          %rank_54 = tensor.rank %8 : tensor<2xi64>
          %276 = tensor.empty() : tensor<2x2xi32>
          %277 = tensor.empty() : tensor<4x2xi32>
          %278 = linalg.matmul ins(%collapsed, %276 : tensor<4x2xi32>, tensor<2x2xi32>) outs(%277 : tensor<4x2xi32>) -> tensor<4x2xi32>
          %279 = arith.maxui %38, %c1138427490_i32 : i32
          %alloc_55 = memref.alloc() : memref<2x2x2xf32>
          %280 = arith.maxf %cst_3, %cst : f32
          %281 = math.round %12 : tensor<2x2x2xf16>
          %282 = index.mul %79, %c11
          %283 = arith.cmpf oge, %cst_0, %cst_52 : f32
          %284 = math.roundeven %18 : tensor<2x2x2xf16>
          %285 = math.round %10 : tensor<2x2x7xf32>
          %286 = vector.broadcast %c1600625636_i64 : i64 to vector<i64>
          %287 = vector.transfer_write %286, %8[%c4] : vector<i64>, tensor<2xi64>
          %288 = vector.broadcast %cst_3 : f32 to vector<2x2xf32>
          %dest_56, %accumulated_value_57 = vector.scan <add>, %86, %288 {inclusive = false, reduction_dim = 1 : i64} : vector<2x2x2xf32>, vector<2x2xf32>
          %289 = arith.cmpf ord, %cst_0, %cst_3 : f32
          %290 = vector.broadcast %cst_4 : f16 to vector<f16>
          %291 = vector.transfer_write %290, %11[%c9] : vector<f16>, tensor<2xf16>
          %292 = arith.xori %false_25, %true_21 : i1
          %293 = arith.andi %c1415562437_i64, %c1127819723_i64 : i64
          %294 = arith.minsi %true, %true_21 : i1
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      %262 = arith.remf %cst, %cst_0 : f32
      scf.yield %cst_1 : f16
    }
    case 2 {
      %249 = arith.remf %93, %cst : f32
      %250 = vector.flat_transpose %19 {columns = 2 : i32, rows = 2 : i32} : vector<4xf16> -> vector<4xf16>
      %251 = vector.broadcast %cst_1 : f16 to vector<4x4xf16>
      %252 = vector.outerproduct %250, %19, %251 {kind = #vector.kind<mul>} : vector<4xf16>, vector<4xf16>
      %253 = arith.remf %93, %cst_0 : f32
      %254 = tensor.empty() : tensor<2x2x7xi32>
      %255 = math.fpowi %10, %254 : tensor<2x2x7xf32>, tensor<2x2x7xi32>
      %256 = vector.broadcast %cst_0 : f32 to vector<4x4xf32>
      %257 = vector.outerproduct %44, %44, %256 {kind = #vector.kind<minf>} : vector<4xf32>, vector<4xf32>
      %258 = vector.flat_transpose %84 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
      %259 = vector.broadcast %cst : f32 to vector<2x2xf32>
      %dest_50, %accumulated_value_51 = vector.scan <minf>, %86, %259 {inclusive = false, reduction_dim = 0 : i64} : vector<2x2x2xf32>, vector<2x2xf32>
      %260 = math.absi %13 : tensor<4x2xi64>
      %261 = bufferization.to_tensor %alloc_5 : memref<2x2x2xf32>
      %262 = index.maxs %c4, %c10
      %263 = arith.cmpf ueq, %93, %93 : f32
      %generated_52 = tensor.generate %c3 {
      ^bb0(%arg0: index):
        %267 = math.log1p %10 : tensor<2x2x7xf32>
        memref.assume_alignment %alloc_11, 1 : memref<2x2x2xi16>
        %268 = math.fpowi %cst, %38 : f32, i32
        %269 = math.log10 %22 : tensor<f16>
        tensor.yield %cst_4 : f16
      } : tensor<?xf16>
      %264 = arith.negf %cst_0 : f32
      %265 = scf.execute_region -> i16 {
        %267 = index.castu %false_2 : i1 to index
        %268 = vector.transpose %83, [0] : vector<2xi1> to vector<2xi1>
        %269 = vector.insert %c-26606_i16, %66 [2] : i16 into vector<4xi16>
        affine.store %false_25, %alloc_17[%c8, %c15] : memref<4x2xi1>
        %270 = index.ceildivu %96, %c1
        %271 = affine.load %alloc_10[%c4, %c8] : memref<4x2xi16>
        memref.assume_alignment %alloc_13, 1 : memref<2xi32>
        %272 = math.ctlz %c1127819723_i64 : i64
        %alloca_55 = memref.alloca() : memref<2xf16>
        %273 = math.absi %271 : i16
        %274 = affine.load %alloc_15[%c6] : memref<2xf16>
        %275 = math.log1p %splat : tensor<2xf32>
        %276 = bufferization.clone %alloc_10 : memref<4x2xi16> to memref<4x2xi16>
        %277 = math.cttz %c1138427490_i32 : i32
        %278 = math.log %cst_4 : f16
        %279 = vector.broadcast %true_21 : i1 to vector<4x2xi1>
        %280 = vector.broadcast %c1099344021_i32 : i32 to vector<4x2xi32>
        %281 = vector.gather %alloc_17[%96, %262] [%280], %279, %279 : memref<4x2xi1>, vector<4x2xi32>, vector<4x2xi1>, vector<4x2xi1> into vector<4x2xi1>
        scf.yield %271 : i16
      }
      %266 = vector.broadcast %93 : f32 to vector<2x2xf32>
      %dest_53, %accumulated_value_54 = vector.scan <minf>, %86, %266 {inclusive = true, reduction_dim = 2 : i64} : vector<2x2x2xf32>, vector<2x2xf32>
      scf.yield %cst_1 : f16
    }
    case 3 {
      %249 = tensor.empty() : tensor<2xi32>
      %250 = math.fpowi %20, %249 : tensor<2xf16>, tensor<2xi32>
      %251 = math.round %18 : tensor<2x2x2xf16>
      %252 = arith.cmpf oeq, %93, %93 : f32
      %253 = math.exp2 %14 : tensor<4x2xf32>
      %254 = vector.broadcast %cst_1 : f16 to vector<f16>
      vector.transfer_write %254, %alloc_15[%37] : vector<f16>, memref<2xf16>
      scf.execute_region {
        %265 = math.floor %cst_0 : f32
        %266 = arith.addf %cst, %93 : f32
        %267 = affine.max affine_map<(d0, d1, d2, d3) -> (d2, d3 + 8, d2 - d0 + d3, (d2 - d0) floordiv 4)>(%c11, %c3, %c8, %rank)
        %268 = arith.floordivsi %c-26606_i16, %c-26606_i16 : i16
        affine.store %cst_0, %alloc_5[%c12, %c10, %c6] : memref<2x2x2xf32>
        %269 = arith.andi %c1600625636_i64, %c1415562437_i64 : i64
        %270 = arith.minf %93, %cst_3 : f32
        %271 = arith.shli %97, %38 : i32
        %272 = math.round %cst_4 : f16
        %cast_50 = tensor.cast %22 : tensor<f16> to tensor<f16>
        %273 = arith.andi %c1099344021_i32, %97 : i32
        %274 = memref.load %alloc_12[%c0] : memref<2xi16>
        affine.store %cst_4, %alloc_15[%c0] : memref<2xf16>
        %275 = affine.load %alloc_10[%c9, %c14] : memref<4x2xi16>
        %splat_51 = tensor.splat %false_25 : tensor<4x2xi1>
        %276 = arith.minui %false_2, %true : i1
        scf.yield
      }
      %255 = affine.min affine_map<(d0, d1, d2, d3) -> (d0)>(%37, %c11, %c5, %c13)
      %256 = arith.ceildivsi %c1127819723_i64, %c1600625636_i64 : i64
      %257 = arith.andi %true, %false : i1
      %258 = arith.cmpf uno, %cst_1, %cst_4 : f16
      %259 = vector.broadcast %cst_3 : f32 to vector<2x2x7xf32>
      %260 = vector.fma %259, %259, %259 : vector<2x2x7xf32>
      %261 = tensor.empty(%c14, %40) : tensor<?x?x2xi64>
      %262 = arith.ori %true, %true_21 : i1
      scf.if %false_25 {
        %265 = index.add %c14, %c7
        %266 = tensor.empty() : tensor<2xi16>
        %267 = arith.maxui %c1474615974_i32, %c1138427490_i32 : i32
        %268 = vector.load %alloc_14[%c1, %c0, %c1] : memref<2x2x7xf16>, vector<2x2x2xf16>
        %rank_50 = tensor.rank %13 : tensor<4x2xi64>
        %269 = tensor.empty() : tensor<2xi64>
        %270 = index.castu %39 : index to i32
        %271 = math.rsqrt %11 : tensor<2xf16>
      } else {
        %265 = affine.load %alloc_18[%c8, %c9] : memref<4x2xi32>
        %266 = math.cos %11 : tensor<2xf16>
        %267 = vector.broadcast %c-26606_i16 : i16 to vector<2xi16>
        %268 = vector.transfer_write %267, %7[%c3, %c1, %c11] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<2xi16>, tensor<2x2x2xi16>
        %269 = vector.broadcast %c32381_i16 : i16 to vector<2x7xi16>
        %270 = vector.transfer_write %269, %7[%39, %c13, %c13] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<2x7xi16>, tensor<2x2x2xi16>
        %alloc_50 = memref.alloc() : memref<4x2xf16>
        %271 = arith.remf %cst_4, %cst_1 : f16
        %272 = affine.load %alloc_15[%c11] : memref<2xf16>
        %273 = index.maxu %rank, %c9
      }
      %263 = bufferization.clone %alloc_10 : memref<4x2xi16> to memref<4x2xi16>
      %264 = math.cttz %13 : tensor<4x2xi64>
      scf.yield %cst_4 : f16
    }
    case 4 {
      %249 = vector.extract %43[1] : vector<4xi1>
      %rank_50 = tensor.rank %12 : tensor<2x2x2xf16>
      %250 = vector.extract %83[0] : vector<2xi1>
      %251 = math.roundeven %10 : tensor<2x2x7xf32>
      %252 = vector.broadcast %false_25 : i1 to vector<2x2xi1>
      %253 = vector.outerproduct %83, %83, %252 {kind = #vector.kind<and>} : vector<2xi1>, vector<2xi1>
      %254 = math.cttz %97 : i32
      %255 = affine.apply affine_map<(d0, d1) -> (-((d1 * 2) floordiv 8 - d1 * 3))>(%62, %c8)
      %256 = index.maxu %37, %60
      affine.for %arg0 = 0 to 67 {
      }
      %257 = math.exp2 %transposed : tensor<2x2x2xf16>
      %258 = vector.create_mask %37, %rank_50, %62 : vector<2x2x7xi1>
      vector.print %31 : vector<i32>
      %259 = math.sqrt %18 : tensor<2x2x2xf16>
      %260 = math.exp %15 : tensor<2x2x2xf16>
      %generated_51 = tensor.generate %60 {
      ^bb0(%arg0: index, %arg1: index, %arg2: index):
        %262 = vector.broadcast %cst_4 : f16 to vector<2xf16>
        %263 = vector.maskedload %alloc_8[%c0, %c1, %c1], %83, %262 : memref<2x2x7xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
        %264 = math.cos %46 : tensor<2x2x7xf16>
        %265 = math.rsqrt %10 : tensor<2x2x7xf32>
        %266 = arith.shli %c1138427490_i32, %c1099344021_i32 : i32
        tensor.yield %true : i1
      } : tensor<?x2x2xi1>
      %261 = affine.load %alloc_17[%c9, %c9] : memref<4x2xi1>
      scf.yield %cst_1 : f16
    }
    default {
      scf.index_switch %rank 
      case 1 {
        %262 = index.floordivs %rank, %c5
        %263 = arith.mulf %cst_1, %cst_4 : f16
        %264 = vector.shuffle %66, %67 [0, 2, 3, 4, 5, 6, 7] : vector<4xi16>, vector<4xi16>
        %265 = vector.broadcast %c1600625636_i64 : i64 to vector<7x2xi64>
        %266 = vector.transfer_write %265, %5[%c1, %80, %c4] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<7x2xi64>, tensor<2x2x7xi64>
        %267 = math.floor %46 : tensor<2x2x7xf16>
        %268 = math.ceil %21 : tensor<f16>
        %269 = math.cttz %c1415562437_i64 : i64
        %270 = bufferization.clone %alloc_5 : memref<2x2x2xf32> to memref<2x2x2xf32>
        %271 = vector.flat_transpose %84 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
        %272 = arith.remf %cst_4, %cst_4 : f16
        affine.store %cst_4, %alloc_8[%c14, %c14, %c2] : memref<2x2x7xf16>
        %273 = arith.remf %93, %cst_0 : f32
        %274 = vector.splat %false : vector<2xi1>
        %275 = vector.insertelement %c32381_i16, %67[%c1 : index] : vector<4xi16>
        %276 = vector.flat_transpose %66 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %alloc_52 = memref.alloc() : memref<4x2xf32>
        memref.copy %alloc_7, %alloc_52 : memref<4x2xf32> to memref<4x2xf32>
        scf.yield
      }
      case 2 {
        %262 = vector.broadcast %cst : f32 to vector<4x2xf32>
        %263 = vector.fma %262, %262, %262 : vector<4x2xf32>
        %264 = bufferization.clone %alloc_10 : memref<4x2xi16> to memref<4x2xi16>
        %265 = math.log %splat : tensor<2xf32>
        %266 = math.floor %12 : tensor<2x2x2xf16>
        %267 = tensor.empty() : tensor<2xi16>
        %268 = arith.remsi %c1600625636_i64, %c1127819723_i64 : i64
        affine.store %cst_1, %alloc_19[%c12, %c14, %c2] : memref<2x2x2xf16>
        %269 = vector.reduction <or>, %83 : vector<2xi1> into i1
        %270 = math.ctlz %1 : tensor<2x2x2xi32>
        %cast_52 = tensor.cast %17 : tensor<2x2x2xi16> to tensor<?x?x?xi16>
        %271 = math.ctlz %collapsed : tensor<4x2xi32>
        %expanded_53 = tensor.expand_shape %18 [[0], [1], [2, 3]] : tensor<2x2x2xf16> into tensor<2x2x2x1xf16>
        %272 = bufferization.clone %alloc_10 : memref<4x2xi16> to memref<4x2xi16>
        %273 = math.tanh %20 : tensor<2xf16>
        %274 = affine.apply affine_map<(d0, d1) -> (d1)>(%c0, %96)
        %275 = arith.cmpf olt, %cst_3, %cst_3 : f32
        scf.yield
      }
      default {
        %262 = arith.minsi %c1474615974_i32, %97 : i32
        %263 = vector.load %alloc_15[%c0] : memref<2xf16>, vector<2x2x7xf16>
        %264 = arith.minf %cst, %cst_0 : f32
        %265 = bufferization.clone %alloc_8 : memref<2x2x7xf16> to memref<2x2x7xf16>
        memref.assume_alignment %alloc_17, 2 : memref<4x2xi1>
        %alloc_52 = memref.alloc() : memref<2x2x2xi1>
        %266 = affine.load %alloc_9[%c0, %c5] : memref<4x2xi64>
        %267 = vector.broadcast %40 : index to vector<4xindex>
        vector.scatter %alloc_14[%c0, %c0, %c4] [%267], %43, %19 : memref<2x2x7xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
        %268 = arith.shli %38, %c1474615974_i32 : i32
        memref.assume_alignment %alloc_11, 1 : memref<2x2x2xi16>
        %alloc_53 = memref.alloc() : memref<2x2x7xf16>
        %269 = arith.negf %cst_0 : f32
        %270 = math.cttz %5 : tensor<2x2x7xi64>
        %271 = math.expm1 %10 : tensor<2x2x7xf32>
        %272 = vector.broadcast %cst_3 : f32 to vector<2x2xf32>
        %dest_54, %accumulated_value_55 = vector.scan <minf>, %86, %272 {inclusive = false, reduction_dim = 2 : i64} : vector<2x2x2xf32>, vector<2x2xf32>
        %273 = math.exp %4 : tensor<2x2x2xf32>
      }
      %249 = scf.index_switch %51 -> vector<2xi32> 
      case 1 {
        %262 = arith.divui %c32381_i16, %c-26606_i16 : i16
        %263 = vector.multi_reduction <mul>, %42, %cst [0] : vector<4xf32> to f32
        %264 = index.floordivs %c14, %96
        %265 = index.ceildivu %37, %c0
        %266 = math.absf %15 : tensor<2x2x2xf16>
        %267 = index.sizeof
        %268 = index.sub %c14, %c9
        %269 = vector.broadcast %40 : index to vector<4xindex>
        vector.scatter %alloc_5[%c1, %c1, %c0] [%269], %43, %42 : memref<2x2x2xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
        %inserted = tensor.insert %false_25 into %6[%c3, %c0] : tensor<4x2xi1>
        %270 = math.tan %11 : tensor<2xf16>
        %271 = math.log10 %cst_0 : f32
        %272 = math.log %21 : tensor<f16>
        %273 = arith.mulf %cst_3, %cst : f32
        memref.assume_alignment %alloc_7, 16 : memref<4x2xf32>
        %cast_52 = tensor.cast %2 : tensor<2xi16> to tensor<?xi16>
        %274 = arith.minui %c1600625636_i64, %c1127819723_i64 : i64
        %275 = vector.broadcast %38 : i32 to vector<2xi32>
        scf.yield %275 : vector<2xi32>
      }
      case 2 {
        %262 = bufferization.clone %alloc_6 : memref<2x2x2xi32> to memref<2x2x2xi32>
        %alloc_52 = memref.alloc() : memref<4x2xi1>
        memref.copy %alloc_17, %alloc_52 : memref<4x2xi1> to memref<4x2xi1>
        %cst_53 = arith.constant 5.632000e+03 : f16
        %expanded_54 = tensor.expand_shape %15 [[0], [1], [2, 3]] : tensor<2x2x2xf16> into tensor<2x2x2x1xf16>
        memref.assume_alignment %alloc_11, 8 : memref<2x2x2xi16>
        %263 = bufferization.to_tensor %alloc_12 : memref<2xi16>
        %264 = math.ctpop %c1138427490_i32 : i32
        %265 = arith.negf %cst_0 : f32
        %266 = math.ceil %splat : tensor<2xf32>
        %267 = arith.mulf %93, %cst : f32
        %268 = arith.remf %cst_4, %cst_1 : f16
        %269 = arith.muli %true_21, %false_25 : i1
        %270 = index.ceildivu %c1, %c6
        %cast_55 = tensor.cast %splat : tensor<2xf32> to tensor<?xf32>
        %271 = math.log %from_elements : tensor<2x2x2xf32>
        %272 = math.log10 %11 : tensor<2xf16>
        %273 = vector.broadcast %97 : i32 to vector<2xi32>
        scf.yield %273 : vector<2xi32>
      }
      case 3 {
        %262 = vector.insert %cst_4, %19 [0] : f16 into vector<4xf16>
        %263 = index.maxu %96, %c2
        %264 = vector.insertelement %cst_3, %106[%51 : index] : vector<2xf32>
        %265 = math.fpowi %cst, %97 : f32, i32
        %266 = index.divu %rank, %rank
        %267 = arith.divui %false, %false : i1
        %rank_52 = tensor.rank %7 : tensor<2x2x2xi16>
        %268 = index.ceildivu %104, %c9
        %269 = math.log10 %cst_0 : f32
        %270 = index.maxu %c15, %79
        %alloc_53 = memref.alloc() : memref<2x2x7xi64>
        %false_54 = index.bool.constant false
        %271 = vector.broadcast %cst_0 : f32 to vector<4x2xf32>
        %272 = vector.fma %271, %271, %271 : vector<4x2xf32>
        %273 = math.log10 %cst_4 : f16
        %274 = arith.maxf %cst, %cst_0 : f32
        %275 = vector.create_mask %40 : vector<2xi1>
        %276 = vector.broadcast %c1474615974_i32 : i32 to vector<2xi32>
        scf.yield %276 : vector<2xi32>
      }
      default {
        %262 = vector.broadcast %93 : f32 to vector<2xf32>
        %263 = vector.fma %262, %106, %106 : vector<2xf32>
        %264 = bufferization.to_tensor %alloc_16 : memref<2x2x7xf32>
        %265 = arith.cmpf false, %cst_0, %cst_0 : f32
        affine.store %cst_4, %alloc_8[%c13, %c2, %c3] : memref<2x2x7xf16>
        %266 = arith.minsi %true_21, %true_21 : i1
        %267 = affine.min affine_map<(d0, d1, d2) -> (d2 mod 2)>(%c5, %33, %c1)
        %268 = vector.broadcast %93 : f32 to vector<4x2xf32>
        %269 = vector.fma %268, %268, %268 : vector<4x2xf32>
        %270 = math.cttz %9 : tensor<4x2xi1>
        %271 = arith.negf %cst : f32
        %272 = math.exp2 %cst_3 : f32
        %273 = arith.minsi %false, %true_21 : i1
        %274 = index.floordivs %c10, %c1
        %275 = arith.cmpf ueq, %cst_1, %cst_1 : f16
        %276 = math.sqrt %15 : tensor<2x2x2xf16>
        %277 = bufferization.to_tensor %alloc_9 : memref<4x2xi64>
        %278 = vector.load %alloc_16[%c0, %c0, %c1] : memref<2x2x7xf32>, vector<2x2x2xf32>
        %279 = vector.broadcast %c1099344021_i32 : i32 to vector<2xi32>
        scf.yield %279 : vector<2xi32>
      }
      %250 = vector.maskedload %alloc_11[%c1, %c1, %c0], %83, %82 : memref<2x2x2xi16>, vector<2xi1>, vector<2xi16> into vector<2xi16>
      %251 = arith.divui %true, %true : i1
      %252 = scf.execute_region -> index {
        %262 = math.copysign %14, %14 : tensor<4x2xf32>
        %263 = index.add %c12, %c8
        %264 = vector.broadcast %97 : i32 to vector<2x2x2xi32>
        %expanded_52 = tensor.expand_shape %10 [[0], [1], [2, 3]] : tensor<2x2x7xf32> into tensor<2x2x7x1xf32>
        %265 = arith.negf %cst_1 : f16
        %false_53 = index.bool.constant false
        %266 = vector.transpose %82, [0] : vector<2xi16> to vector<2xi16>
        %267 = index.ceildivu %80, %80
        %268 = arith.divui %c1138427490_i32, %c1138427490_i32 : i32
        %269 = arith.cmpi ule, %c1127819723_i64, %c1600625636_i64 : i64
        %270 = vector.shuffle %86, %86 [0, 1, 2, 3] : vector<2x2x2xf32>, vector<2x2x2xf32>
        %271 = arith.shli %false_25, %true_21 : i1
        %272 = vector.broadcast %c1474615974_i32 : i32 to vector<2x2xi32>
        %dest_54, %accumulated_value_55 = vector.scan <minsi>, %264, %272 {inclusive = false, reduction_dim = 2 : i64} : vector<2x2x2xi32>, vector<2x2xi32>
        %273 = arith.subi %c32381_i16, %c-26606_i16 : i16
        %274 = math.fpowi %93, %97 : f32, i32
        %275 = vector.insertelement %c32381_i16, %84[%c12 : index] : vector<2xi16>
        scf.yield %c11 : index
      }
      %253 = index.maxu %rank, %33
      %254 = arith.remsi %97, %c1099344021_i32 : i32
      %255 = index.sizeof
      %rank_50 = tensor.rank %3 : tensor<2x2x2xi32>
      %256 = math.exp %15 : tensor<2x2x2xf16>
      %257 = index.maxs %c1, %255
      %258 = arith.minsi %c1099344021_i32, %97 : i32
      %splat_51 = tensor.splat %cst_3 : tensor<2xf32>
      %259 = scf.while (%arg0 = %c1138427490_i32) : (i32) -> i32 {
        %262 = arith.divf %cst_0, %93 : f32
        %263 = arith.cmpf oeq, %cst_3, %cst_0 : f32
        %264 = index.ceildivu %c1, %c0
        %true_52 = index.bool.constant true
        %265 = math.copysign %93, %cst_0 : f32
        %extracted_53 = tensor.extract %15[%c1, %c1, %c1] : tensor<2x2x2xf16>
        %266 = bufferization.clone %alloc_20 : memref<2xi32> to memref<2xi32>
        %267 = arith.andi %c1415562437_i64, %c1600625636_i64 : i64
        scf.condition(%false_2) %c1099344021_i32 : i32
      } do {
      ^bb0(%arg0: i32):
        %262 = vector.shuffle %67, %250 [1] : vector<4xi16>, vector<2xi16>
        %263 = vector.transpose %43, [0] : vector<4xi1> to vector<4xi1>
        %264 = math.sqrt %cst_4 : f16
        %265 = math.absf %22 : tensor<f16>
        %266 = math.copysign %cst_4, %cst_4 : f16
        %267 = arith.subi %97, %c1099344021_i32 : i32
        %alloc_52 = memref.alloc() : memref<2xf16>
        memref.copy %alloc_15, %alloc_52 : memref<2xf16> to memref<2xf16>
        %false_53 = index.bool.constant false
        %268 = math.log1p %cst_3 : f32
        %269 = vector.broadcast %c1600625636_i64 : i64 to vector<i64>
        %270 = vector.transfer_write %269, %13[%62, %40] : vector<i64>, tensor<4x2xi64>
        %271 = index.maxs %37, %c15
        %272 = index.add %rank, %c14
        %273 = index.floordivs %62, %51
        %274 = affine.apply affine_map<(d0, d1) -> ((d0 - 132) ceildiv 64)>(%c5, %c9)
        %275 = vector.create_mask %c7, %c10, %253 : vector<2x2x2xi1>
        %alloca_54 = memref.alloca() : memref<2xi16>
        scf.yield %c1099344021_i32 : i32
      }
      %260 = index.divs %257, %c4
      %261 = math.sqrt %11 : tensor<2xf16>
      scf.yield %cst_4 : f16
    }
    %111 = math.exp2 %11 : tensor<2xf16>
    %112 = math.log %15 : tensor<2x2x2xf16>
    %113 = arith.floordivsi %false_25, %true : i1
    %114 = math.copysign %15, %15 : tensor<2x2x2xf16>
    %115 = vector.flat_transpose %44 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
    %expanded = tensor.expand_shape %5 [[0], [1], [2, 3]] : tensor<2x2x7xi64> into tensor<2x2x7x1xi64>
    memref.assume_alignment %alloc_13, 16 : memref<2xi32>
    %116 = arith.minui %97, %c1099344021_i32 : i32
    %117 = math.fpowi %transposed, %3 : tensor<2x2x2xf16>, tensor<2x2x2xi32>
    %118 = vector.maskedload %alloc_14[%c1, %c1, %c6], %43, %91 : memref<2x2x7xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
    %119 = math.exp %93 : f32
    %120 = bufferization.to_tensor %alloc_14 : memref<2x2x7xf16>
    %121 = arith.divui %38, %c1474615974_i32 : i32
    %122 = arith.andi %false_25, %true : i1
    %rank_30 = tensor.rank %6 : tensor<4x2xi1>
    %123 = arith.floordivsi %c1600625636_i64, %c1127819723_i64 : i64
    %124 = bufferization.to_memref %0 : memref<2xi16>
    %125 = vector.insert %c32381_i16, %84 [1] : i16 into vector<2xi16>
    %126 = vector.broadcast %c-26606_i16 : i16 to vector<4x2xi16>
    %127 = math.absf %15 : tensor<2x2x2xf16>
    %alloc_31 = memref.alloc() : memref<2x7xi1>
    %128 = tensor.empty() : tensor<4x7xi1>
    %129 = linalg.matmul ins(%6, %alloc_31 : tensor<4x2xi1>, memref<2x7xi1>) outs(%128 : tensor<4x7xi1>) -> tensor<4x7xi1>
    %130 = math.cttz %collapsed : tensor<4x2xi32>
    %131 = bufferization.to_tensor %alloc_17 : memref<4x2xi1>
    %132 = math.floor %15 : tensor<2x2x2xf16>
    %133 = index.ceildivu %c7, %c8
    %134 = arith.remf %93, %93 : f32
    %135 = arith.cmpi uge, %false_2, %true_21 : i1
    %136 = math.roundeven %splat : tensor<2xf32>
    %true_32 = index.bool.constant true
    %137 = arith.remf %93, %cst : f32
    %138 = bufferization.to_memref %20 : memref<2xf16>
    %c1724749544_i32 = arith.constant 1724749544 : i32
    %139 = affine.max affine_map<(d0, d1, d2) -> (d2 - 16, d1, -(d2 - 2))>(%40, %133, %96)
    %140 = affine.for %arg0 = 0 to 100 iter_args(%arg1 = %17) -> (tensor<2x2x2xi16>) {
      affine.yield %7 : tensor<2x2x2xi16>
    }
    %141 = arith.floordivsi %false_2, %true : i1
    %true_33 = index.bool.constant true
    %142 = math.expm1 %63 : tensor<2x2x7xf16>
    %143 = vector.flat_transpose %106 {columns = 1 : i32, rows = 2 : i32} : vector<2xf32> -> vector<2xf32>
    %144 = arith.ceildivsi %c1600625636_i64, %c1600625636_i64 : i64
    %145 = affine.load %alloc_5[%c12, %c15, %c0] : memref<2x2x2xf32>
    %extracted = tensor.extract %13[%c2, %c0] : tensor<4x2xi64>
    %146 = arith.remsi %extracted, %c1415562437_i64 : i64
    %147 = math.ctlz %6 : tensor<4x2xi1>
    %148 = scf.index_switch %c4 -> f32 
    case 1 {
      %249 = affine.load %alloc_5[%c3, %c13, %c9] : memref<2x2x2xf32>
      affine.for %arg0 = 0 to 16 {
      }
      %250 = affine.max affine_map<(d0, d1, d2) -> ((-d0) floordiv 4 + d0 + 4 + 4, d0 + 4, (-d0 + 2) floordiv 4, d0 ceildiv 8 + (-d0) floordiv 4 + 4 + (-d0) floordiv 4)>(%c4, %c3, %c11)
      %251 = memref.atomic_rmw addf %cst_4, %alloc_15[%c1] : (f16, memref<2xf16>) -> f16
      %252 = math.ctpop %8 : tensor<2xi64>
      %253 = vector.extract_strided_slice %42 {offsets = [2], sizes = [2], strides = [1]} : vector<4xf32> to vector<2xf32>
      %254 = arith.divui %false_2, %true_33 : i1
      %255 = math.ctpop %1 : tensor<2x2x2xi32>
      %256 = math.ctlz %true_21 : i1
      %257 = math.tanh %transposed : tensor<2x2x2xf16>
      affine.for %arg0 = 0 to 31 {
      }
      %258 = math.log10 %4 : tensor<2x2x2xf32>
      %259 = vector.insert %true_33, %83 [1] : i1 into vector<2xi1>
      %false_50 = index.bool.constant false
      %260 = tensor.empty() : tensor<2x2x7xi32>
      %261 = math.fpowi %10, %260 : tensor<2x2x7xf32>, tensor<2x2x7xi32>
      %262 = math.sqrt %15 : tensor<2x2x2xf16>
      scf.yield %93 : f32
    }
    case 2 {
      %249 = tensor.empty() : tensor<2x2x7xf16>
      %alloca_50 = memref.alloca() : memref<4x2xf32>
      %250 = arith.minui %c32381_i16, %c32381_i16 : i16
      %alloca_51 = memref.alloca() : memref<2x2x2xi1>
      %251 = arith.maxsi %c1415562437_i64, %c1600625636_i64 : i64
      %expanded_52 = tensor.expand_shape %63 [[0], [1], [2, 3]] : tensor<2x2x7xf16> into tensor<2x2x7x1xf16>
      %252 = math.floor %120 : tensor<2x2x7xf16>
      memref.copy %alloc_15, %138 : memref<2xf16> to memref<2xf16>
      %alloc_53 = memref.alloc() : memref<2x2x2xi1>
      scf.index_switch %c6 
      case 1 {
        %258 = bufferization.clone %alloc : memref<2x2x2xf16> to memref<2x2x2xf16>
        %259 = index.floordivs %c2, %c7
        %alloca_55 = memref.alloca() : memref<2x2x7xi32>
        %cst_56 = arith.constant 1.95299853E+9 : f32
        %260 = math.atan %12 : tensor<2x2x2xf16>
        %261 = affine.load %alloc_13[%c4] : memref<2xi32>
        %false_57 = index.bool.constant false
        %262 = math.tan %transposed : tensor<2x2x2xf16>
        %263 = math.powf %transposed, %18 : tensor<2x2x2xf16>
        %264 = vector.broadcast %145 : f32 to vector<4x4xf32>
        %265 = vector.outerproduct %44, %42, %264 {kind = #vector.kind<mul>} : vector<4xf32>, vector<4xf32>
        %266 = vector.broadcast %false_57 : i1 to vector<2xi1>
        %267 = index.ceildivu %c0, %c7
        %268 = index.castu %c6 : index to i32
        %269 = arith.ori %261, %c1474615974_i32 : i32
        %270 = vector.transpose %143, [0] : vector<2xf32> to vector<2xf32>
        %271 = memref.atomic_rmw assign %c1474615974_i32, %alloc_6[%c1, %c0, %c1] : (i32, memref<2x2x2xi32>) -> i32
        scf.yield
      }
      case 2 {
        %258 = math.log2 %21 : tensor<f16>
        %259 = tensor.empty() : tensor<4x2xf32>
        %260 = math.ctlz %1 : tensor<2x2x2xi32>
        %261 = arith.shrsi %true_33, %true_33 : i1
        %262 = arith.shli %c1474615974_i32, %c1138427490_i32 : i32
        %263 = math.copysign %cst_0, %145 : f32
        %264 = bufferization.clone %alloc_8 : memref<2x2x7xf16> to memref<2x2x7xf16>
        %265 = math.copysign %63, %63 : tensor<2x2x7xf16>
        %true_55 = index.bool.constant true
        %266 = math.exp2 %transposed : tensor<2x2x2xf16>
        %267 = math.atan2 %22, %21 : tensor<f16>
        %268 = vector.insert %false, %83 [1] : i1 into vector<2xi1>
        %269 = arith.maxui %c-26606_i16, %c32381_i16 : i16
        %270 = math.log10 %4 : tensor<2x2x2xf32>
        %271 = affine.max affine_map<(d0, d1, d2) -> (d1)>(%51, %133, %c10)
        %272 = arith.cmpf ueq, %cst_3, %cst_3 : f32
        scf.yield
      }
      case 3 {
        %258 = arith.remsi %true_33, %false_25 : i1
        %259 = math.log %12 : tensor<2x2x2xf16>
        %cast_55 = tensor.cast %120 : tensor<2x2x7xf16> to tensor<?x?x?xf16>
        %260 = math.fpowi %15, %3 : tensor<2x2x2xf16>, tensor<2x2x2xi32>
        %261 = arith.ori %true_32, %true_33 : i1
        %262 = math.round %transposed : tensor<2x2x2xf16>
        %263 = bufferization.clone %alloc_9 : memref<4x2xi64> to memref<4x2xi64>
        %true_56 = index.bool.constant true
        %splat_57 = tensor.splat %c1138427490_i32 : tensor<2x2x2xi32>
        %264 = arith.remf %93, %cst_0 : f32
        %265 = index.add %133, %79
        %266 = arith.floordivsi %c-26606_i16, %c-26606_i16 : i16
        %267 = affine.load %alloc_20[%c15] : memref<2xi32>
        %alloca_58 = memref.alloca() : memref<2x2x7xi32>
        %268 = index.sizeof
        %269 = arith.divf %93, %cst_0 : f32
        scf.yield
      }
      case 4 {
        %258 = math.log10 %93 : f32
        %259 = vector.broadcast %cst_3 : f32 to vector<2x2x7xf32>
        %260 = vector.fma %259, %259, %259 : vector<2x2x7xf32>
        %261 = index.add %80, %c6
        %262 = math.sqrt %cst_1 : f16
        %263 = arith.remsi %c1138427490_i32, %c1474615974_i32 : i32
        %264 = vector.flat_transpose %84 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
        %265 = arith.maxf %cst_1, %cst_1 : f16
        %266 = tensor.empty() : tensor<7x2xi1>
        %267 = tensor.empty() : tensor<4x2xi1>
        %268 = linalg.matmul ins(%128, %266 : tensor<4x7xi1>, tensor<7x2xi1>) outs(%267 : tensor<4x2xi1>) -> tensor<4x2xi1>
        %269 = math.fpowi %14, %collapsed : tensor<4x2xf32>, tensor<4x2xi32>
        memref.store %cst, %alloc_5[%c1, %c1, %c0] : memref<2x2x2xf32>
        %270 = math.log2 %93 : f32
        memref.assume_alignment %alloc, 1 : memref<2x2x2xf16>
        vector.print %260 : vector<2x2x7xf32>
        %rank_55 = tensor.rank %3 : tensor<2x2x2xi32>
        %271 = math.log10 %cst_3 : f32
        %272 = index.castu %rank : index to i32
        scf.yield
      }
      default {
        %258 = arith.negf %cst_1 : f16
        %259 = arith.mulf %cst, %cst_3 : f32
        %260 = vector.broadcast %cst_4 : f16 to vector<2xf16>
        %261 = vector.transfer_write %260, %12[%c5, %rank_30, %c14] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<2xf16>, tensor<2x2x2xf16>
        %expanded_55 = tensor.expand_shape %7 [[0], [1], [2, 3]] : tensor<2x2x2xi16> into tensor<2x2x2x1xi16>
        %262 = arith.shrsi %extracted, %c1600625636_i64 : i64
        %263 = arith.remsi %true_21, %true : i1
        %expanded_56 = tensor.expand_shape %17 [[0], [1], [2, 3]] : tensor<2x2x2xi16> into tensor<2x2x2x1xi16>
        %264 = index.maxu %rank, %c6
        %265 = arith.minui %c1099344021_i32, %38 : i32
        %266 = index.maxu %c4, %c4
        %267 = bufferization.to_memref %21 : memref<f16>
        %268 = vector.maskedload %alloc_7[%c0, %c1], %43, %115 : memref<4x2xf32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
        %269 = arith.minui %true_33, %true_32 : i1
        %270 = vector.insertelement %c32381_i16, %84[%c15 : index] : vector<2xi16>
        %271 = math.absf %10 : tensor<2x2x7xf32>
        %272 = math.log1p %15 : tensor<2x2x2xf16>
      }
      %253 = index.maxs %40, %39
      %alloc_54 = memref.alloc() : memref<2xi16>
      %254 = index.floordivs %c14, %253
      %255 = index.floordivs %c14, %104
      %256 = math.powf %cst_4, %cst_4 : f16
      %257 = bufferization.to_tensor %alloc : memref<2x2x2xf16>
      scf.yield %93 : f32
    }
    case 3 {
      scf.index_switch %c9 
      case 1 {
        %260 = arith.floordivsi %false, %true_21 : i1
        %261 = arith.negf %cst_3 : f32
        %262 = math.rsqrt %93 : f32
        %263 = math.log10 %18 : tensor<2x2x2xf16>
        %264 = math.ceil %15 : tensor<2x2x2xf16>
        %265 = math.copysign %10, %10 : tensor<2x2x7xf32>
        %dest_55, %accumulated_value_56 = vector.scan <add>, %126, %66 {inclusive = false, reduction_dim = 1 : i64} : vector<4x2xi16>, vector<4xi16>
        %266 = math.atan2 %93, %cst : f32
        %267 = math.cos %93 : f32
        %268 = vector.transpose %83, [0] : vector<2xi1> to vector<2xi1>
        %cst_57 = arith.constant 6.480000e+04 : f16
        memref.store %c1415562437_i64, %alloc_9[%c0, %c0] : memref<4x2xi64>
        %269 = math.powf %4, %4 : tensor<2x2x2xf32>
        %270 = math.cttz %2 : tensor<2xi16>
        %271 = vector.broadcast %cst_0 : f32 to vector<2x2x7xf32>
        %272 = vector.fma %271, %271, %271 : vector<2x2x7xf32>
        %273 = vector.broadcast %cst_3 : f32 to vector<2x7xf32>
        %dest_58, %accumulated_value_59 = vector.scan <mul>, %272, %273 {inclusive = true, reduction_dim = 0 : i64} : vector<2x2x7xf32>, vector<2x7xf32>
        scf.yield
      }
      case 2 {
        %260 = math.floor %10 : tensor<2x2x7xf32>
        %261 = index.ceildivu %c0, %c13
        %262 = affine.load %alloc_11[%c12, %c10, %c9] : memref<2x2x2xi16>
        %263 = bufferization.to_tensor %alloc_14 : memref<2x2x7xf16>
        %264 = math.log10 %4 : tensor<2x2x2xf32>
        %265 = arith.maxf %cst, %cst : f32
        %266 = math.cos %10 : tensor<2x2x7xf32>
        %alloca_55 = memref.alloca() : memref<2xi1>
        %267 = math.fpowi %14, %collapsed : tensor<4x2xf32>, tensor<4x2xi32>
        %268 = arith.xori %c1138427490_i32, %97 : i32
        %269 = bufferization.clone %alloc_9 : memref<4x2xi64> to memref<4x2xi64>
        %270 = math.cos %transposed : tensor<2x2x2xf16>
        %271 = index.castu %true : i1 to index
        %272 = vector.multi_reduction <minf>, %118, %118 [] : vector<4xf16> to vector<4xf16>
        %cast_56 = tensor.cast %2 : tensor<2xi16> to tensor<?xi16>
        %dest_57, %accumulated_value_58 = vector.scan <minsi>, %126, %66 {inclusive = true, reduction_dim = 1 : i64} : vector<4x2xi16>, vector<4xi16>
        scf.yield
      }
      case 3 {
        %260 = affine.load %alloc_7[%c7, %c5] : memref<4x2xf32>
        %261 = arith.maxui %38, %97 : i32
        %262 = arith.mulf %cst_3, %cst_0 : f32
        %263 = arith.shli %c1600625636_i64, %c1600625636_i64 : i64
        %extracted_55 = tensor.extract %10[%c0, %c0, %c0] : tensor<2x2x7xf32>
        %264 = index.add %c15, %c12
        %265 = vector.load %alloc_19[%c1, %c1, %c1] : memref<2x2x2xf16>, vector<4x2xf16>
        %266 = vector.flat_transpose %67 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %267 = vector.transpose %84, [0] : vector<2xi16> to vector<2xi16>
        %268 = vector.shuffle %266, %266 [0, 2, 4, 7] : vector<4xi16>, vector<4xi16>
        %269 = math.fpowi %4, %3 : tensor<2x2x2xf32>, tensor<2x2x2xi32>
        %270 = math.tanh %14 : tensor<4x2xf32>
        %271 = math.log10 %14 : tensor<4x2xf32>
        %272 = math.exp %cst_0 : f32
        %splat_56 = tensor.splat %c1138427490_i32 : tensor<2x2x2xi32>
        %273 = arith.cmpf olt, %cst_3, %cst_3 : f32
        scf.yield
      }
      case 4 {
        %260 = index.maxu %c2, %80
        %261 = vector.insertelement %c1138427490_i32, %31[] : vector<i32>
        %262 = vector.insert %c-26606_i16, %67 [3] : i16 into vector<4xi16>
        %263 = arith.andi %c1474615974_i32, %c1099344021_i32 : i32
        %264 = math.powf %10, %10 : tensor<2x2x7xf32>
        %265 = vector.flat_transpose %66 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %266 = arith.negf %145 : f32
        %extracted_55 = tensor.extract %20[%c1] : tensor<2xf16>
        %267 = vector.shuffle %31, %31 [0, 1] : vector<i32>, vector<i32>
        %268 = vector.broadcast %97 : i32 to vector<2xi32>
        vector.transfer_write %268, %alloc_18[%rank, %c8] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<2xi32>, memref<4x2xi32>
        %269 = index.maxu %c7, %c15
        %270 = vector.create_mask %40, %62, %60 : vector<2x2x7xi1>
        %271 = arith.minsi %97, %97 : i32
        %272 = math.copysign %cst_0, %cst_3 : f32
        %273 = arith.minui %extracted, %c1127819723_i64 : i64
        %274 = memref.atomic_rmw ori %c32381_i16, %124[%c0] : (i16, memref<2xi16>) -> i16
        scf.yield
      }
      default {
        %260 = arith.cmpf uge, %cst_4, %cst_1 : f16
        %261 = arith.mulf %145, %cst : f32
        %262 = math.ctpop %131 : tensor<4x2xi1>
        %263 = vector.transpose %42, [0] : vector<4xf32> to vector<4xf32>
        %264 = index.divu %133, %60
        affine.store %cst_4, %alloc_8[%c11, %c7, %c13] : memref<2x2x7xf16>
        %265 = vector.shuffle %42, %106 [1] : vector<4xf32>, vector<2xf32>
        %266 = arith.cmpi sge, %true, %true_21 : i1
        %267 = vector.shuffle %84, %66 [0, 1, 3, 4] : vector<2xi16>, vector<4xi16>
        %cast_55 = tensor.cast %13 : tensor<4x2xi64> to tensor<?x?xi64>
        %268 = tensor.empty() : tensor<2xi32>
        %269 = vector.broadcast %c1099344021_i32 : i32 to vector<i32>
        vector.transfer_write %269, %alloc_20[%c2] : vector<i32>, memref<2xi32>
        %270 = math.log2 %93 : f32
        %271 = arith.remf %cst, %cst : f32
        %true_56 = index.bool.constant true
        %272 = index.floordivs %c7, %37
      }
      %249 = index.add %37, %c9
      affine.for %arg0 = 0 to 49 {
      }
      %250 = arith.negf %145 : f32
      %251 = math.log10 %46 : tensor<2x2x7xf16>
      %cast_50 = tensor.cast %16 : tensor<2x2x2xi16> to tensor<?x?x?xi16>
      %252 = math.absf %15 : tensor<2x2x2xf16>
      %253 = math.absi %true_33 : i1
      %from_elements_51 = tensor.from_elements %cst_1, %cst_4, %cst_4, %cst_4, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_4, %cst_4, %cst_4, %cst_1, %cst_4, %cst_1, %cst_1, %cst_4, %cst_4, %cst_4, %cst_1, %cst_4, %cst_4, %cst_4, %cst_1, %cst_1, %cst_1, %cst_4, %cst_1 : tensor<2x2x7xf16>
      %dest_52, %accumulated_value_53 = vector.scan <minui>, %126, %82 {inclusive = false, reduction_dim = 0 : i64} : vector<4x2xi16>, vector<2xi16>
      %254 = vector.broadcast %cst_4 : f16 to vector<f16>
      %255 = vector.transfer_write %254, %18[%c3, %33, %51] : vector<f16>, tensor<2x2x2xf16>
      %generated_54 = tensor.generate %33 {
      ^bb0(%arg0: index):
        %260 = index.castu %false_25 : i1 to index
        %261 = index.maxu %104, %80
        %262 = index.floordivs %c13, %96
        %263 = math.log10 %10 : tensor<2x2x7xf32>
        tensor.yield %cst_4 : f16
      } : tensor<?xf16>
      %256 = vector.create_mask %rank_30, %c0 : vector<4x2xi1>
      %257 = arith.cmpf ueq, %93, %cst : f32
      %258 = math.absf %cst_4 : f16
      %259 = math.sqrt %15 : tensor<2x2x2xf16>
      scf.yield %145 : f32
    }
    case 4 {
      %249 = vector.broadcast %93 : f32 to vector<2x2x2xf32>
      %250 = vector.fma %249, %249, %86 : vector<2x2x2xf32>
      %251 = math.tanh %15 : tensor<2x2x2xf16>
      %252 = index.castu %c1474615974_i32 : i32 to index
      %253 = arith.mulf %cst_4, %cst_4 : f16
      %254 = arith.remf %cst_4, %cst_4 : f16
      %255 = arith.shrsi %c1415562437_i64, %c1600625636_i64 : i64
      %256 = affine.max affine_map<(d0, d1, d2, d3) -> ((d2 - 1) mod 8)>(%c1, %c1, %rank_30, %80)
      %257 = affine.load %alloc_16[%c5, %c0, %c10] : memref<2x2x7xf32>
      %258 = math.absf %cst_1 : f16
      %259 = math.absi %38 : i32
      %260 = vector.broadcast %c32381_i16 : i16 to vector<4x4xi16>
      %261 = vector.outerproduct %66, %67, %260 {kind = #vector.kind<or>} : vector<4xi16>, vector<4xi16>
      memref.copy %alloc, %alloc_19 : memref<2x2x2xf16> to memref<2x2x2xf16>
      %262 = affine.load %alloc_12[%c12] : memref<2xi16>
      %263 = math.sqrt %145 : f32
      %264 = arith.minf %257, %93 : f32
      %265 = vector.multi_reduction <mul>, %67, %262 [0] : vector<4xi16> to i16
      scf.yield %257 : f32
    }
    default {
      %extracted_50 = tensor.extract %46[%c1, %c1, %c5] : tensor<2x2x7xf16>
      %249 = math.exp2 %15 : tensor<2x2x2xf16>
      %250 = tensor.empty() : tensor<2xi16>
      %mapped = linalg.map ins(%2, %124, %0 : tensor<2xi16>, memref<2xi16>, tensor<2xi16>) outs(%250 : tensor<2xi16>)
        (%in: i16, %in_52: i16, %in_53: i16) {
          %264 = math.log1p %10 : tensor<2x2x7xf32>
          %265 = affine.min affine_map<(d0, d1, d2, d3) -> ((d1 - 9) mod 2)>(%139, %133, %c4, %c14)
          %266 = index.add %37, %c4
          %267 = memref.realloc %alloc_20 : memref<2xi32> to memref<7xi32>
          %268 = arith.ceildivsi %c1127819723_i64, %c1127819723_i64 : i64
          %269 = arith.divui %c1415562437_i64, %c1127819723_i64 : i64
          %270 = math.expm1 %63 : tensor<2x2x7xf16>
          %271 = arith.maxui %97, %38 : i32
          %272 = math.ctpop %true_21 : i1
          %273 = bufferization.to_memref %splat : memref<2xf32>
          %274 = math.atan2 %21, %21 : tensor<f16>
          %275 = arith.mulf %cst_4, %cst_1 : f16
          %276 = arith.cmpf uno, %cst_0, %cst_0 : f32
          %277 = math.sqrt %120 : tensor<2x2x7xf16>
          %278 = math.expm1 %63 : tensor<2x2x7xf16>
          %279 = vector.flat_transpose %44 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
          affine.store %cst_1, %alloc_8[%c3, %c9, %c15] : memref<2x2x7xf16>
          %280 = index.sizeof
          %281 = math.absf %120 : tensor<2x2x7xf16>
          %282 = vector.insert %106, %86 [0, 0] : vector<2xf32> into vector<2x2x2xf32>
          %283 = arith.cmpi eq, %c1600625636_i64, %c1415562437_i64 : i64
          %284 = arith.negf %cst_3 : f32
          %285 = arith.cmpi uge, %c1138427490_i32, %c1099344021_i32 : i32
          %286 = vector.broadcast %145 : f32 to vector<2xf32>
          %287 = vector.fma %286, %143, %143 : vector<2xf32>
          %288 = arith.maxf %cst, %cst_3 : f32
          %rank_54 = tensor.rank %15 : tensor<2x2x2xf16>
          %289 = math.ctpop %1 : tensor<2x2x2xi32>
          %290 = arith.maxsi %c1474615974_i32, %38 : i32
          %291 = affine.apply affine_map<(d0, d1) -> ((d0 - 132) ceildiv 64)>(%c13, %c6)
          %292 = math.copysign %cst_1, %extracted_50 : f16
          %293 = math.absf %from_elements : tensor<2x2x2xf32>
          %294 = tensor.empty() : tensor<2x2xf32>
          %295 = tensor.empty() : tensor<4x2xf32>
          %296 = linalg.matmul ins(%14, %294 : tensor<4x2xf32>, tensor<2x2xf32>) outs(%295 : tensor<4x2xf32>) -> tensor<4x2xf32>
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %251 = vector.extract_strided_slice %19 {offsets = [2], sizes = [1], strides = [1]} : vector<4xf16> to vector<1xf16>
      %252 = math.log2 %120 : tensor<2x2x7xf16>
      %253 = vector.broadcast %93 : f32 to vector<2x2x2xf32>
      %254 = vector.fma %253, %253, %253 : vector<2x2x2xf32>
      %255 = index.divs %40, %39
      memref.copy %alloc_13, %alloc_20 : memref<2xi32> to memref<2xi32>
      %256 = affine.min affine_map<(d0, d1, d2) -> (-((((-d2) mod 16) floordiv 8) mod 128), -d1)>(%37, %c3, %c12)
      %257 = arith.maxui %c1600625636_i64, %c1600625636_i64 : i64
      %258 = arith.remsi %97, %c1138427490_i32 : i32
      %259 = bufferization.clone %alloc_7 : memref<4x2xf32> to memref<4x2xf32>
      %260 = tensor.empty() : tensor<2x2x7xi32>
      %261 = math.fpowi %120, %260 : tensor<2x2x7xf16>, tensor<2x2x7xi32>
      %262 = affine.for %arg0 = 0 to 65 iter_args(%arg1 = %79) -> (index) {
        affine.yield %37 : index
      }
      %263 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%17 : tensor<2x2x2xi16>) outs(%7 : tensor<2x2x2xi16>) {
      ^bb0(%in: i16, %out: i16):
        %264 = vector.broadcast %cst_1 : f16 to vector<f16>
        vector.transfer_write %264, %138[%104] : vector<f16>, memref<2xf16>
        %265 = index.ceildivu %133, %133
        %266 = affine.max affine_map<(d0) -> (-((d0 + 2) ceildiv 2))>(%39)
        %267 = math.sqrt %splat : tensor<2xf32>
        %268 = math.exp %15 : tensor<2x2x2xf16>
        %269 = index.floordivs %c1, %60
        %270 = arith.remf %cst_4, %cst_1 : f16
        %271 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 * 32, -(d1 + d0 + 64))>(%80, %104, %c5, %c9)
        %272 = math.fma %cst_4, %extracted_50, %extracted_50 : f16
        %273 = arith.minsi %c1127819723_i64, %c1415562437_i64 : i64
        %274 = vector.maskedload %alloc_10[%c3, %c1], %83, %82 : memref<4x2xi16>, vector<2xi1>, vector<2xi16> into vector<2xi16>
        %275 = arith.maxui %c1600625636_i64, %c1127819723_i64 : i64
        %276 = math.ceil %18 : tensor<2x2x2xf16>
        %277 = math.ceil %from_elements : tensor<2x2x2xf32>
        %c938379608_i32 = arith.constant 938379608 : i32
        %278 = index.sizeof
        %279 = index.divs %139, %c6
        %280 = arith.maxui %extracted, %extracted : i64
        %281 = index.ceildivs %c9, %40
        %282 = bufferization.clone %alloc_15 : memref<2xf16> to memref<2xf16>
        %283 = math.floor %splat : tensor<2xf32>
        affine.store %cst_1, %138[%c15] : memref<2xf16>
        %284 = vector.transpose %86, [2, 0, 1] : vector<2x2x2xf32> to vector<2x2x2xf32>
        %285 = math.floor %145 : f32
        affine.store %c1127819723_i64, %alloc_9[%c7, %c4] : memref<4x2xi64>
        %286 = arith.remf %cst_4, %cst_1 : f16
        %287 = vector.extract %86[0] : vector<2x2x2xf32>
        %288 = index.divu %c9, %rank
        %289 = arith.andi %c32381_i16, %c32381_i16 : i16
        %290 = math.tanh %extracted_50 : f16
        %291 = index.ceildivu %255, %60
        %292 = vector.shuffle %126, %126 [1, 2, 7] : vector<4x2xi16>, vector<4x2xi16>
        linalg.yield %c-26606_i16 : i16
      } -> tensor<2x2x2xi16>
      %false_51 = index.bool.constant false
      scf.yield %145 : f32
    }
    %149 = vector.insert %true_21, %43 [3] : i1 into vector<4xi1>
    %alloc_34 = memref.alloc() : memref<4x2xi16>
    memref.copy %alloc_10, %alloc_34 : memref<4x2xi16> to memref<4x2xi16>
    %150 = vector.broadcast %c32381_i16 : i16 to vector<2xi16>
    %151 = vector.transfer_write %150, %17[%c14, %51, %37] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<2xi16>, tensor<2x2x2xi16>
    %152 = math.expm1 %20 : tensor<2xf16>
    %153 = math.powf %11, %11 : tensor<2xf16>
    %154 = math.absf %120 : tensor<2x2x7xf16>
    %155 = bufferization.clone %alloc_12 : memref<2xi16> to memref<2xi16>
    %156 = math.cttz %1 : tensor<2x2x2xi32>
    %157 = math.log %20 : tensor<2xf16>
    memref.assume_alignment %alloc_19, 16 : memref<2x2x2xf16>
    %splat_35 = tensor.splat %c1600625636_i64 : tensor<2xi64>
    %c500679358_i64 = arith.constant 500679358 : i64
    %158 = index.maxu %33, %c7
    %159 = arith.addf %cst_4, %cst_4 : f16
    %160 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 * 64, d3)>(%40, %c0, %133, %33)
    %161 = affine.max affine_map<(d0, d1) -> (d0, d0)>(%139, %96)
    %162 = math.exp2 %22 : tensor<f16>
    %163 = memref.realloc %alloc_12 : memref<2xi16> to memref<7xi16>
    %164 = math.log1p %22 : tensor<f16>
    %165 = scf.if %false -> (i1) {
      %249 = arith.shrsi %true_21, %false_25 : i1
      %250 = math.log1p %15 : tensor<2x2x2xf16>
      %251 = math.absf %splat : tensor<2xf32>
      %252 = arith.cmpi ne, %c1127819723_i64, %extracted : i64
      %253 = math.copysign %15, %12 : tensor<2x2x2xf16>
      %254 = vector.broadcast %cst_4 : f16 to vector<f16>
      vector.transfer_write %254, %alloc_8[%c1, %c0, %40] : vector<f16>, memref<2x2x7xf16>
      %255 = arith.mulf %145, %93 : f32
      affine.store %38, %alloc_20[%c8] : memref<2xi32>
      scf.yield %true_32 : i1
    } else {
      %249 = math.absf %15 : tensor<2x2x2xf16>
      memref.assume_alignment %alloc_11, 1 : memref<2x2x2xi16>
      %250 = math.round %10 : tensor<2x2x7xf32>
      %c1868603333_i32 = arith.constant 1868603333 : i32
      %251 = memref.realloc %155 : memref<2xi16> to memref<4xi16>
      %252 = math.roundeven %11 : tensor<2xf16>
      %253 = arith.mulf %cst_0, %cst_0 : f32
      %alloca_50 = memref.alloca() : memref<2xf32>
      scf.yield %true_33 : i1
    }
    %166 = vector.create_mask %33 : vector<2xi1>
    %167 = vector.broadcast %c-26606_i16 : i16 to vector<2x2xi16>
    %168 = vector.outerproduct %84, %150, %167 {kind = #vector.kind<minui>} : vector<2xi16>, vector<2xi16>
    %169 = arith.remf %93, %cst_0 : f32
    %170 = math.fpowi %cst_1, %c1138427490_i32 : f16, i32
    %cst_36 = arith.constant 1.000000e+00 : f16
    %171 = vector.transfer_read %46[%161, %33, %c5], %cst_36 : tensor<2x2x7xf16>, vector<7xf16>
    %172 = arith.andi %true_33, %false_25 : i1
    %173 = arith.floordivsi %c1415562437_i64, %c1127819723_i64 : i64
    %alloc_37 = memref.alloc() : memref<2xi64>
    %174 = math.exp2 %4 : tensor<2x2x2xf32>
    %175 = index.divu %c10, %51
    scf.index_switch %62 
    case 1 {
      %249 = index.maxs %c1, %c10
      %250 = index.maxu %c10, %175
      %alloca_50 = memref.alloca() : memref<2x2x7xi16>
      %expanded_51 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<4x2xf32> into tensor<4x2x1xf32>
      memref.assume_alignment %alloc_15, 2 : memref<2xf16>
      %from_elements_52 = tensor.from_elements %c1474615974_i32, %c1474615974_i32 : tensor<2xi32>
      %expanded_53 = tensor.expand_shape %16 [[0], [1], [2, 3]] : tensor<2x2x2xi16> into tensor<2x2x2x1xi16>
      %251 = vector.bitcast %66 : vector<4xi16> to vector<4xf16>
      %252 = tensor.empty() : tensor<i32>
      %253 = math.fpowi %21, %252 : tensor<f16>, tensor<i32>
      %254 = arith.remf %145, %145 : f32
      affine.store %cst_36, %alloc_15[%c12] : memref<2xf16>
      %255 = vector.broadcast %c-26606_i16 : i16 to vector<2x2x2xi16>
      %256 = vector.broadcast %cst_1 : f16 to vector<4x4xf16>
      %257 = vector.outerproduct %251, %118, %256 {kind = #vector.kind<minf>} : vector<4xf16>, vector<4xf16>
      %258 = index.maxs %39, %c4
      %259 = index.divu %33, %c1
      %260 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed, %11 : tensor<2x2x2xf16>, tensor<2xf16>) outs(%15 : tensor<2x2x2xf16>) {
      ^bb0(%in: f16, %in_54: f16, %out: f16):
        %splat_55 = tensor.splat %97 : tensor<4x2xi32>
        %alloc_56 = memref.alloc() : memref<4x2xf32>
        memref.copy %alloc_7, %alloc_56 : memref<4x2xf32> to memref<4x2xf32>
        memref.tensor_store %12, %alloc : memref<2x2x2xf16>
        %261 = math.log %cst : f32
        %262 = math.exp %14 : tensor<4x2xf32>
        %rank_57 = tensor.rank %12 : tensor<2x2x2xf16>
        %extracted_58 = tensor.extract %from_elements_52[%c0] : tensor<2xi32>
        %263 = arith.remf %cst_3, %145 : f32
        %264 = bufferization.clone %alloc_6 : memref<2x2x2xi32> to memref<2x2x2xi32>
        %265 = math.atan %cst_36 : f16
        %266 = vector.load %alloc_9[%c0, %c0] : memref<4x2xi64>, vector<2xi64>
        %267 = arith.maxui %false_2, %true_32 : i1
        %268 = bufferization.clone %124 : memref<2xi16> to memref<2xi16>
        %269 = arith.cmpi uge, %false_2, %true_33 : i1
        %270 = vector.flat_transpose %19 {columns = 2 : i32, rows = 2 : i32} : vector<4xf16> -> vector<4xf16>
        %271 = arith.cmpf ole, %cst_3, %145 : f32
        %272 = arith.divui %false_25, %false_25 : i1
        %273 = arith.remsi %extracted, %c1127819723_i64 : i64
        %274 = math.ceil %145 : f32
        %275 = arith.shrsi %extracted, %extracted : i64
        %splat_59 = tensor.splat %93 : tensor<2xf32>
        %276 = math.powf %splat, %splat : tensor<2xf32>
        %277 = index.maxu %39, %c9
        %alloc_60 = memref.alloc() : memref<4x2xi16>
        %278 = vector.broadcast %145 : f32 to vector<2x2xf32>
        %dest_61, %accumulated_value_62 = vector.scan <add>, %86, %278 {inclusive = false, reduction_dim = 2 : i64} : vector<2x2x2xf32>, vector<2x2xf32>
        %279 = arith.remf %cst_36, %cst_1 : f16
        %280 = arith.minui %97, %c1138427490_i32 : i32
        %281 = math.atan2 %22, %22 : tensor<f16>
        %282 = index.floordivs %c9, %80
        %283 = index.mul %c4, %79
        %284 = vector.insertelement %97, %31[] : vector<i32>
        %285 = arith.minf %93, %145 : f32
        linalg.yield %cst_1 : f16
      } -> tensor<2x2x2xf16>
      scf.yield
    }
    case 2 {
      %249 = math.floor %4 : tensor<2x2x2xf32>
      %250 = math.sqrt %93 : f32
      %251 = math.ctlz %c1127819723_i64 : i64
      %252 = arith.cmpi sge, %c-26606_i16, %c32381_i16 : i16
      %253 = math.floor %cst : f32
      %254 = math.exp2 %21 : tensor<f16>
      %255 = math.ceil %12 : tensor<2x2x2xf16>
      %true_50 = index.bool.constant true
      %256 = vector.broadcast %c1415562437_i64 : i64 to vector<i64>
      %257 = vector.transfer_write %256, %5[%c7, %c2, %c1] : vector<i64>, tensor<2x2x7xi64>
      %258 = math.cos %4 : tensor<2x2x2xf32>
      %259 = index.floordivs %c11, %96
      %260 = arith.shli %c1415562437_i64, %c1415562437_i64 : i64
      %261 = math.exp2 %10 : tensor<2x2x7xf32>
      memref.assume_alignment %alloc_9, 2 : memref<4x2xi64>
      affine.store %c32381_i16, %124[%c9] : memref<2xi16>
      %true_51 = index.bool.constant true
      scf.yield
    }
    case 3 {
      %249 = arith.maxui %true_33, %true_21 : i1
      %alloca_50 = memref.alloca() : memref<4x2xi32>
      %250 = vector.create_mask %60, %79 : vector<4x2xi1>
      affine.store %93, %alloc_5[%c12, %c1, %c1] : memref<2x2x2xf32>
      %251 = arith.ori %c1600625636_i64, %extracted : i64
      %252 = arith.mulf %cst_3, %cst : f32
      %253 = arith.divf %cst_4, %cst_4 : f16
      %254 = vector.insertelement %cst_3, %115[%c9 : index] : vector<4xf32>
      %255 = arith.mulf %cst_36, %cst_1 : f16
      %256 = arith.maxui %97, %38 : i32
      %257 = affine.max affine_map<(d0, d1) -> (d0 * 2, d1 + d0 * 2 + 124)>(%80, %c8)
      %258 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 - d1)>(%160, %rank_30, %c12, %c13)
      %259 = math.atan2 %11, %20 : tensor<2xf16>
      %260 = math.exp %11 : tensor<2xf16>
      affine.for %arg0 = 0 to 80 {
      }
      %261 = math.absf %cst_4 : f16
      scf.yield
    }
    default {
      %alloca_50 = memref.alloca() : memref<2x2x7xi32>
      scf.index_switch %39 
      case 1 {
        %261 = vector.create_mask %37 : vector<2xi1>
        %262 = vector.create_mask %60, %79, %c5 : vector<2x2x2xi1>
        %263 = index.divs %37, %c14
        %264 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 floordiv 2)>(%c15, %c7, %c0, %96)
        %265 = vector.broadcast %175 : index to vector<2xindex>
        %266 = vector.broadcast %cst_36 : f16 to vector<2xf16>
        vector.scatter %138[%c1] [%265], %166, %266 : memref<2xf16>, vector<2xindex>, vector<2xi1>, vector<2xf16>
        %267 = arith.shrui %c1600625636_i64, %extracted : i64
        %268 = math.log2 %cst_0 : f32
        %269 = math.absf %15 : tensor<2x2x2xf16>
        %270 = math.exp2 %15 : tensor<2x2x2xf16>
        %271 = math.round %120 : tensor<2x2x7xf16>
        %272 = memref.load %alloc_10[%c2, %c1] : memref<4x2xi16>
        %273 = arith.remf %cst_1, %cst_36 : f16
        %274 = arith.minsi %false_25, %true_21 : i1
        %275 = arith.remf %cst_3, %93 : f32
        %276 = affine.apply affine_map<(d0, d1, d2) -> ((d1 mod 128 - d1) * -4)>(%c9, %133, %c3)
        %alloc_54 = memref.alloc() : memref<4x2xi32>
        memref.copy %alloc_18, %alloc_54 : memref<4x2xi32> to memref<4x2xi32>
        scf.yield
      }
      case 2 {
        %expanded_54 = tensor.expand_shape %1 [[0], [1], [2, 3]] : tensor<2x2x2xi32> into tensor<2x2x2x1xi32>
        %261 = affine.min affine_map<(d0, d1, d2) -> (d2 * 64 - 2, 0)>(%37, %c3, %c14)
        %262 = affine.min affine_map<(d0, d1) -> (d0 * 128)>(%c1, %39)
        %263 = math.absi %1 : tensor<2x2x2xi32>
        %264 = index.divs %c3, %79
        %265 = arith.remf %cst_0, %cst_3 : f32
        %266 = arith.minui %true_21, %true_32 : i1
        affine.store %c-26606_i16, %alloc_12[%c9] : memref<2xi16>
        %267 = arith.remsi %c32381_i16, %c-26606_i16 : i16
        %268 = index.mul %158, %33
        %collapsed_55 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<2x2x2xf16> into tensor<4x2xf16>
        %269 = vector.insertelement %false_2, %83[%262 : index] : vector<2xi1>
        %alloc_56 = memref.alloc() : memref<4x2xi64>
        memref.copy %alloc_9, %alloc_56 : memref<4x2xi64> to memref<4x2xi64>
        %270 = index.sizeof
        %271 = math.atan2 %11, %11 : tensor<2xf16>
        %272 = math.copysign %4, %4 : tensor<2x2x2xf32>
        scf.yield
      }
      case 3 {
        %261 = vector.broadcast %cst : f32 to vector<2xf32>
        %262 = vector.fma %261, %106, %261 : vector<2xf32>
        %263 = math.rsqrt %63 : tensor<2x2x7xf16>
        %264 = vector.load %alloc_5[%c1, %c1, %c0] : memref<2x2x2xf32>, vector<2x2x2xf32>
        %265 = index.maxs %80, %c8
        %266 = index.add %96, %60
        %267 = math.floor %46 : tensor<2x2x7xf16>
        %268 = vector.reduction <maxf>, %19 : vector<4xf16> into f16
        %269 = vector.create_mask %158, %c9, %c14 : vector<2x2x2xi1>
        %270 = index.ceildivu %rank_30, %133
        %271 = vector.broadcast %c-26606_i16 : i16 to vector<i16>
        vector.transfer_write %271, %155[%104] : vector<i16>, memref<2xi16>
        %272 = math.log2 %15 : tensor<2x2x2xf16>
        %alloca_54 = memref.alloca() : memref<4x2xf32>
        %273 = index.add %c10, %c13
        %274 = math.tanh %15 : tensor<2x2x2xf16>
        %275 = arith.minui %false_25, %false : i1
        %extracted_55 = tensor.extract %from_elements[%c1, %c1, %c1] : tensor<2x2x2xf32>
        scf.yield
      }
      case 4 {
        %261 = index.ceildivu %c2, %51
        %alloc_54 = memref.alloc() : memref<2xf16>
        %262 = arith.minsi %38, %c1099344021_i32 : i32
        %263 = memref.atomic_rmw addf %cst_4, %alloc[%c0, %c0, %c1] : (f16, memref<2x2x2xf16>) -> f16
        %264 = math.ctlz %17 : tensor<2x2x2xi16>
        %265 = index.divu %c13, %c0
        %266 = arith.divui %false_25, %true_33 : i1
        %c2134134209_i32 = arith.constant 2134134209 : i32
        %267 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 - (d3 + 128), d1 - 8, d3 + 128)>(%c1, %51, %62, %80)
        %268 = index.ceildivs %c11, %160
        %269 = affine.load %alloc[%c6, %c13, %c5] : memref<2x2x2xf16>
        %270 = vector.broadcast %true_33 : i1 to vector<2x2x2xi1>
        %271 = vector.create_mask %161, %c6, %79 : vector<2x2x2xi1>
        %272 = arith.divf %cst, %145 : f32
        %273 = arith.floordivsi %c1600625636_i64, %extracted : i64
        %true_55 = index.bool.constant true
        scf.yield
      }
      default {
        %261 = math.exp2 %10 : tensor<2x2x7xf32>
        affine.store %cst_36, %138[%c13] : memref<2xf16>
        %262 = index.sizeof
        %false_54 = index.bool.constant false
        %263 = arith.negf %cst : f32
        %264 = math.roundeven %20 : tensor<2xf16>
        %265 = arith.ori %165, %165 : i1
        %splat_55 = tensor.splat %c1138427490_i32 : tensor<2xi32>
        %266 = affine.load %155[%c2] : memref<2xi16>
        memref.store %cst_1, %alloc_8[%c1, %c0, %c4] : memref<2x2x7xf16>
        %267 = arith.maxsi %false_2, %true_32 : i1
        %268 = math.exp %93 : f32
        %269 = math.log10 %93 : f32
        %270 = index.divs %c14, %c5
        %271 = affine.max affine_map<(d0, d1) -> (d0 mod 2, d0 mod 16)>(%160, %158)
        %272 = math.ceil %splat : tensor<2xf32>
      }
      %249 = arith.negf %145 : f32
      %250 = vector.broadcast %cst : f32 to vector<2xf32>
      %251 = vector.fma %250, %250, %143 : vector<2xf32>
      %expanded_51 = tensor.expand_shape %8 [[0, 1]] : tensor<2xi64> into tensor<2x1xi64>
      %252 = math.copysign %18, %transposed : tensor<2x2x2xf16>
      %253 = math.roundeven %12 : tensor<2x2x2xf16>
      %false_52 = index.bool.constant false
      %254 = arith.cmpf uno, %cst_36, %cst_36 : f16
      %255 = vector.broadcast %cst_4 : f16 to vector<2x2x7xf16>
      %256 = affine.max affine_map<(d0, d1, d2) -> (d0 * 8, d1, -d1)>(%c8, %c11, %79)
      %257 = math.ipowi %c1099344021_i32, %c1138427490_i32 : i32
      %258 = index.maxu %c11, %rank
      %splat_53 = tensor.splat %true : tensor<2xi1>
      %259 = math.ipowi %0, %2 : tensor<2xi16>
      %260 = math.round %from_elements : tensor<2x2x2xf32>
    }
    affine.for %arg0 = 0 to 23 {
    }
    %176 = math.log1p %11 : tensor<2xf16>
    %177 = math.tan %15 : tensor<2x2x2xf16>
    %178 = affine.apply affine_map<(d0, d1) -> ((d0 - 132) ceildiv 64)>(%c10, %c0)
    %c598128102_i64 = arith.constant 598128102 : i64
    %179 = affine.load %138[%c12] : memref<2xf16>
    %180 = arith.divf %cst_36, %179 : f16
    %181 = bufferization.clone %124 : memref<2xi16> to memref<2xi16>
    %182 = arith.shrui %97, %38 : i32
    %183 = affine.load %100[] : memref<f16>
    %184 = tensor.empty(%c2) : tensor<2x2x?xi16>
    %185 = math.sqrt %12 : tensor<2x2x2xf16>
    memref.assume_alignment %alloc_8, 1 : memref<2x2x7xf16>
    scf.index_switch %rank 
    case 1 {
      %249 = index.add %80, %104
      %dest_50, %accumulated_value_51 = vector.scan <minsi>, %126, %67 {inclusive = true, reduction_dim = 1 : i64} : vector<4x2xi16>, vector<4xi16>
      %250 = index.ceildivu %c4, %39
      %251 = vector.maskedload %155[%c0], %166, %82 : memref<2xi16>, vector<2xi1>, vector<2xi16> into vector<2xi16>
      %252 = vector.multi_reduction <add>, %19, %183 [0] : vector<4xf16> to f16
      %253 = arith.floordivsi %c1099344021_i32, %c1099344021_i32 : i32
      memref.copy %alloc_12, %155 : memref<2xi16> to memref<2xi16>
      memref.copy %alloc_12, %181 : memref<2xi16> to memref<2xi16>
      %254 = tensor.empty() : tensor<4x7xi1>
      %mapped = linalg.map ins(%128, %128, %128 : tensor<4x7xi1>, tensor<4x7xi1>, tensor<4x7xi1>) outs(%254 : tensor<4x7xi1>)
        (%in: i1, %in_52: i1, %in_53: i1) {
          %260 = arith.remf %183, %179 : f16
          %261 = math.ceil %11 : tensor<2xf16>
          %262 = index.floordivs %175, %c10
          %263 = arith.cmpf ult, %cst, %cst : f32
          affine.store %cst, %alloc_16[%c9, %c14, %c0] : memref<2x2x7xf32>
          %splat_54 = tensor.splat %cst_4 : tensor<2x2x7xf16>
          %264 = vector.transpose %251, [0] : vector<2xi16> to vector<2xi16>
          %265 = bufferization.to_memref %7 : memref<2x2x2xi16>
          %266 = math.ctlz %2 : tensor<2xi16>
          %267 = math.absf %93 : f32
          %268 = index.sub %40, %c9
          %269 = vector.transpose %86, [2, 1, 0] : vector<2x2x2xf32> to vector<2x2x2xf32>
          %270 = vector.broadcast %cst_3 : f32 to vector<2x2xf32>
          %271 = vector.multi_reduction <maxf>, %86, %270 [0] : vector<2x2x2xf32> to vector<2x2xf32>
          %272 = vector.create_mask %249 : vector<2xi1>
          %273 = arith.maxf %cst_0, %cst_3 : f32
          %274 = arith.cmpf oge, %cst_36, %cst_1 : f16
          %275 = index.add %c6, %c11
          %276 = index.divs %rank_30, %96
          %277 = memref.load %alloc_12[%c1] : memref<2xi16>
          %278 = arith.floordivsi %c1138427490_i32, %97 : i32
          %279 = vector.broadcast %38 : i32 to vector<2xi32>
          %280 = vector.maskedload %alloc_18[%c2, %c0], %272, %279 : memref<4x2xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
          %281 = arith.floordivsi %97, %c1099344021_i32 : i32
          %282 = math.exp %14 : tensor<4x2xf32>
          %283 = vector.broadcast %c1415562437_i64 : i64 to vector<4x2xi64>
          memref.assume_alignment %124, 16 : memref<2xi16>
          %284 = arith.maxf %145, %93 : f32
          vector.print %31 : vector<i32>
          %285 = arith.minsi %true_32, %in_52 : i1
          %286 = arith.maxui %c1600625636_i64, %c1127819723_i64 : i64
          %287 = arith.divf %cst_36, %cst_1 : f16
          %288 = math.round %10 : tensor<2x2x7xf32>
          %289 = arith.floordivsi %extracted, %c1415562437_i64 : i64
          %false_55 = arith.constant false
          linalg.yield %false_55 : i1
        }
      %c1199625493_i64 = arith.constant 1199625493 : i64
      %255 = arith.ceildivsi %true_21, %true_33 : i1
      %256 = tensor.empty(%62, %80, %133) : tensor<?x?x?xi64>
      vector.print %42 : vector<4xf32>
      %257 = arith.floordivsi %true_33, %true_33 : i1
      %258 = memref.atomic_rmw minf %cst_1, %alloc_19[%c0, %c0, %c0] : (f16, memref<2x2x2xf16>) -> f16
      %259 = memref.realloc %124 : memref<2xi16> to memref<7xi16>
      scf.yield
    }
    case 2 {
      %rank_50 = tensor.rank %8 : tensor<2xi64>
      %249 = math.expm1 %20 : tensor<2xf16>
      %250 = arith.maxui %38, %38 : i32
      %alloc_51 = memref.alloc() : memref<4x2xi16>
      %251 = vector.reduction <minsi>, %150 : vector<2xi16> into i16
      %252 = vector.create_mask %c12, %160, %c6 : vector<2x2x2xi1>
      %253 = arith.remf %cst, %cst_3 : f32
      %254 = arith.cmpi ult, %extracted, %c1127819723_i64 : i64
      %255 = math.cttz %false_25 : i1
      %256 = affine.load %alloc_14[%c5, %c12, %c4] : memref<2x2x7xf16>
      %257 = math.roundeven %transposed : tensor<2x2x2xf16>
      affine.for %arg0 = 0 to 87 {
      }
      %extracted_52 = tensor.extract %46[%c0, %c0, %c0] : tensor<2x2x7xf16>
      %258 = scf.while (%arg0 = %252) : (vector<2x2x2xi1>) -> vector<2x2x2xi1> {
        %261 = index.add %rank_30, %c2
        %extracted_53 = tensor.extract %7[%c0, %c0, %c1] : tensor<2x2x2xi16>
        %262 = index.maxu %51, %c2
        %263 = math.tanh %10 : tensor<2x2x7xf32>
        %264 = math.floor %cst : f32
        %265 = math.absf %cst_0 : f32
        %266 = arith.cmpf oeq, %cst, %cst_0 : f32
        %267 = vector.broadcast %cst_1 : f16 to vector<2xf16>
        vector.transfer_write %267, %alloc_14[%rank_50, %175, %c11] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<2xf16>, memref<2x2x7xf16>
        scf.condition(%true) %252 : vector<2x2x2xi1>
      } do {
      ^bb0(%arg0: vector<2x2x2xi1>):
        %261 = index.ceildivs %160, %c9
        %262 = math.ceil %15 : tensor<2x2x2xf16>
        %cast_53 = tensor.cast %expanded : tensor<2x2x7x1xi64> to tensor<?x?x?x?xi64>
        %263 = vector.broadcast %cst_3 : f32 to vector<4x2xf32>
        %264 = vector.fma %263, %263, %263 : vector<4x2xf32>
        %265 = vector.broadcast %c-26606_i16 : i16 to vector<2x2xi16>
        %266 = vector.outerproduct %150, %150, %265 {kind = #vector.kind<and>} : vector<2xi16>, vector<2xi16>
        %267 = vector.insertelement %c-26606_i16, %150[%161 : index] : vector<2xi16>
        %268 = math.tan %63 : tensor<2x2x7xf16>
        %269 = arith.remf %145, %cst_0 : f32
        %270 = tensor.empty() : tensor<2x7xi1>
        %271 = tensor.empty() : tensor<4x7xi1>
        %272 = linalg.matmul ins(%6, %270 : tensor<4x2xi1>, tensor<2x7xi1>) outs(%271 : tensor<4x7xi1>) -> tensor<4x7xi1>
        %cst_54 = arith.constant 4.524800e+04 : f16
        %273 = arith.remf %179, %cst_4 : f16
        %274 = math.exp2 %12 : tensor<2x2x2xf16>
        %275 = vector.broadcast %cst_0 : f32 to vector<2xf32>
        %276 = vector.fma %275, %275, %106 : vector<2xf32>
        %277 = math.cttz %16 : tensor<2x2x2xi16>
        memref.tensor_store %collapsed, %alloc_18 : memref<4x2xi32>
        memref.copy %138, %alloc_15 : memref<2xf16> to memref<2xf16>
        scf.yield %252 : vector<2x2x2xi1>
      }
      %259 = math.floor %10 : tensor<2x2x7xf32>
      %260 = index.maxs %c6, %c12
      scf.yield
    }
    case 3 {
      %249 = vector.broadcast %93 : f32 to vector<4x4xf32>
      %250 = vector.outerproduct %44, %44, %249 {kind = #vector.kind<mul>} : vector<4xf32>, vector<4xf32>
      %251 = arith.maxf %cst_1, %cst_36 : f16
      %252 = index.sizeof
      %253 = math.round %cst : f32
      %254 = arith.remf %cst_1, %cst_36 : f16
      %false_50 = index.bool.constant false
      %255 = vector.insertelement %145, %44[%51 : index] : vector<4xf32>
      %256 = index.maxu %c6, %c0
      affine.for %arg0 = 0 to 79 {
      }
      %257 = index.maxs %256, %c13
      %258 = arith.minsi %false_25, %true_32 : i1
      %259 = tensor.empty() : tensor<2x2xi64>
      %260 = tensor.empty() : tensor<4x2xi64>
      %261 = linalg.matmul ins(%13, %259 : tensor<4x2xi64>, tensor<2x2xi64>) outs(%260 : tensor<4x2xi64>) -> tensor<4x2xi64>
      %262 = math.round %179 : f16
      %263 = math.ctlz %true_21 : i1
      %264 = arith.shli %c1474615974_i32, %c1138427490_i32 : i32
      %265 = bufferization.clone %alloc_11 : memref<2x2x2xi16> to memref<2x2x2xi16>
      scf.yield
    }
    default {
      %249 = arith.negf %cst : f32
      %250 = bufferization.to_tensor %alloc_8 : memref<2x2x7xf16>
      %251 = vector.create_mask %37, %c7, %c0 : vector<2x2x7xi1>
      affine.store %c32381_i16, %alloc_10[%c7, %c13] : memref<4x2xi16>
      %252 = arith.shrui %true_21, %true_21 : i1
      %c434893796_i32 = arith.constant 434893796 : i32
      %253 = arith.divui %true_32, %true_33 : i1
      %c1_i16 = arith.constant 1 : i16
      %c0_i16 = arith.constant 0 : i16
      %254 = vector.transfer_read %0[%79], %c0_i16 : tensor<2xi16>, vector<i16>
      %alloca_50 = memref.alloca() : memref<2x2x2xi1>
      affine.store %c-26606_i16, %124[%c9] : memref<2xi16>
      %255 = index.mul %161, %104
      %256 = math.ceil %transposed : tensor<2x2x2xf16>
      %generated_51 = tensor.generate %158, %104 {
      ^bb0(%arg0: index, %arg1: index, %arg2: index):
        %261 = vector.broadcast %cst_1 : f16 to vector<4x4xf16>
        %262 = vector.outerproduct %91, %19, %261 {kind = #vector.kind<minf>} : vector<4xf16>, vector<4xf16>
        %263 = arith.negf %cst_36 : f16
        %264 = math.copysign %transposed, %12 : tensor<2x2x2xf16>
        %265 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 + d1 - d0 + d2 - 56 + 8, d1 - d0)>(%c7, %178, %79, %33)
        tensor.yield %c1_i16 : i16
      } : tensor<?x?x2xi16>
      %257 = vector.broadcast %93 : f32 to vector<4x2xf32>
      %258 = vector.fma %257, %257, %257 : vector<4x2xf32>
      %259 = arith.maxui %c1474615974_i32, %c1099344021_i32 : i32
      %260 = vector.shuffle %150, %150 [1] : vector<2xi16>, vector<2xi16>
    }
    %186 = scf.while (%arg0 = %138) : (memref<2xf16>) -> memref<2xf16> {
      %249 = vector.broadcast %145 : f32 to vector<4x2xf32>
      %250 = vector.fma %249, %249, %249 : vector<4x2xf32>
      %251 = index.mul %80, %c3
      %252 = affine.for %arg1 = 0 to 45 iter_args(%arg2 = %c5) -> (index) {
        affine.yield %80 : index
      }
      %253 = arith.negf %183 : f16
      %254 = math.copysign %22, %22 : tensor<f16>
      %255 = vector.broadcast %c32381_i16 : i16 to vector<4x7xi16>
      vector.transfer_write %255, %alloc_11[%c0, %33, %51] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<4x7xi16>, memref<2x2x2xi16>
      %256 = math.cttz %c1138427490_i32 : i32
      %257 = math.cttz %3 : tensor<2x2x2xi32>
      scf.condition(%true_33) %138 : memref<2xf16>
    } do {
    ^bb0(%arg0: memref<2xf16>):
      %249 = math.tan %cst_36 : f16
      %250 = math.copysign %10, %10 : tensor<2x2x7xf32>
      %251 = tensor.empty() : tensor<2x2x7xf16>
      %mapped = linalg.map ins(%alloc_8, %63, %alloc_14 : memref<2x2x7xf16>, tensor<2x2x7xf16>, memref<2x2x7xf16>) outs(%251 : tensor<2x2x7xf16>)
        (%in: f16, %in_51: f16, %in_52: f16) {
          %263 = math.log10 %63 : tensor<2x2x7xf16>
          %splat_53 = tensor.splat %183 : tensor<2x2x7xf16>
          %dest_54, %accumulated_value_55 = vector.scan <or>, %126, %66 {inclusive = true, reduction_dim = 1 : i64} : vector<4x2xi16>, vector<4xi16>
          %264 = arith.minsi %true_21, %false_25 : i1
          %cast_56 = tensor.cast %collapsed : tensor<4x2xi32> to tensor<?x?xi32>
          %265 = vector.create_mask %c11, %c15, %c2 : vector<2x2x2xi1>
          %266 = index.maxu %51, %c7
          %cast_57 = tensor.cast %63 : tensor<2x2x7xf16> to tensor<?x?x?xf16>
          %267 = arith.remf %93, %cst_3 : f32
          %268 = arith.divui %97, %97 : i32
          %269 = index.casts %false_2 : i1 to index
          %cast_58 = tensor.cast %7 : tensor<2x2x2xi16> to tensor<?x?x?xi16>
          %270 = vector.extract_strided_slice %19 {offsets = [0], sizes = [4], strides = [1]} : vector<4xf16> to vector<4xf16>
          %271 = index.castu %161 : index to i32
          %272 = arith.remf %in_52, %cst_4 : f16
          %273 = affine.apply affine_map<(d0, d1) -> ((d0 - 1) * 32)>(%rank, %c4)
          %274 = math.cttz %8 : tensor<2xi64>
          %275 = arith.cmpf olt, %cst, %cst : f32
          %276 = index.ceildivs %160, %273
          %277 = arith.divui %c1099344021_i32, %c1099344021_i32 : i32
          %278 = arith.cmpf uno, %cst_4, %in_51 : f16
          %279 = math.tan %10 : tensor<2x2x7xf32>
          %280 = math.log10 %10 : tensor<2x2x7xf32>
          %281 = bufferization.to_memref %cast_57 : memref<?x?x?xf16>
          memref.tensor_store %6, %alloc_17 : memref<4x2xi1>
          %alloc_59 = memref.alloc() : memref<4x2xf16>
          %cast_60 = tensor.cast %20 : tensor<2xf16> to tensor<?xf16>
          %expanded_61 = tensor.expand_shape %2 [[0, 1]] : tensor<2xi16> into tensor<2x1xi16>
          %282 = arith.maxui %c1474615974_i32, %97 : i32
          %283 = math.cttz %c1415562437_i64 : i64
          %284 = vector.extract %83[0] : vector<2xi1>
          %285 = index.casts %c4 : index to i32
          %cst_62 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_62 : f16
        }
      %252 = arith.minui %extracted, %c1127819723_i64 : i64
      %253 = tensor.empty() : tensor<2x2x2xi32>
      %mapped_50 = linalg.map ins(%1, %alloc_6, %1 : tensor<2x2x2xi32>, memref<2x2x2xi32>, tensor<2x2x2xi32>) outs(%253 : tensor<2x2x2xi32>)
        (%in: i32, %in_51: i32, %in_52: i32) {
          %263 = math.absi %97 : i32
          %false_53 = index.bool.constant false
          %264 = vector.create_mask %158, %133, %c3 : vector<2x2x7xi1>
          %265 = math.log1p %22 : tensor<f16>
          %true_54 = index.bool.constant true
          %266 = math.log %15 : tensor<2x2x2xf16>
          %267 = affine.min affine_map<(d0) -> (((d0 + 2) floordiv 64 - d0) floordiv 16 - 32, ((d0 + 2) floordiv 64) mod 32)>(%c0)
          %268 = bufferization.clone %alloc_19 : memref<2x2x2xf16> to memref<2x2x2xf16>
          %cast_55 = tensor.cast %8 : tensor<2xi64> to tensor<?xi64>
          %269 = affine.apply affine_map<(d0) -> (2)>(%c10)
          %cast_56 = tensor.cast %251 : tensor<2x2x7xf16> to tensor<?x?x?xf16>
          %270 = vector.insert %165, %43 [3] : i1 into vector<4xi1>
          %271 = math.atan2 %from_elements, %4 : tensor<2x2x2xf32>
          %272 = vector.broadcast %145 : f32 to vector<4x2xf32>
          %273 = vector.fma %272, %272, %272 : vector<4x2xf32>
          %274 = affine.min affine_map<(d0) -> ((d0 * 4) mod 128, (-d0) floordiv 16, (d0 * 4) mod 128)>(%c9)
          %275 = math.powf %cst_1, %cst_4 : f16
          %276 = math.tan %cst_4 : f16
          %277 = arith.ori %false_25, %true_32 : i1
          %278 = index.maxs %rank_30, %rank
          %279 = math.cttz %5 : tensor<2x2x7xi64>
          %cast_57 = tensor.cast %collapsed : tensor<4x2xi32> to tensor<?x?xi32>
          %280 = arith.remsi %c1099344021_i32, %c1138427490_i32 : i32
          %281 = vector.load %alloc_5[%c0, %c1, %c0] : memref<2x2x2xf32>, vector<2x2x7xf32>
          %282 = math.log10 %11 : tensor<2xf16>
          %alloca_58 = memref.alloca() : memref<2xi32>
          %extracted_59 = tensor.extract %2[%c1] : tensor<2xi16>
          %cast_60 = tensor.cast %251 : tensor<2x2x7xf16> to tensor<?x?x?xf16>
          vector.print %106 : vector<2xf32>
          %283 = math.fpowi %cst_3, %c1474615974_i32 : f32, i32
          %284 = arith.andi %c32381_i16, %extracted_59 : i16
          %285 = vector.maskedload %100[], %43, %19 : memref<f16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
          %false_61 = index.bool.constant false
          %c1_i32 = arith.constant 1 : i32
          linalg.yield %c1_i32 : i32
        }
      %254 = vector.broadcast %c32381_i16 : i16 to vector<2x2xi16>
      %255 = vector.outerproduct %82, %84, %254 {kind = #vector.kind<and>} : vector<2xi16>, vector<2xi16>
      %256 = math.atan2 %10, %10 : tensor<2x2x7xf32>
      affine.store %c-26606_i16, %alloc_12[%c7] : memref<2xi16>
      %257 = vector.broadcast %c-26606_i16 : i16 to vector<2x2xi16>
      %258 = vector.outerproduct %84, %84, %257 {kind = #vector.kind<or>} : vector<2xi16>, vector<2xi16>
      memref.copy %alloc_20, %alloc_13 : memref<2xi32> to memref<2xi32>
      memref.assume_alignment %alloc_7, 16 : memref<4x2xf32>
      %259 = arith.remf %cst_36, %179 : f16
      %260 = affine.min affine_map<(d0) -> (-d0, d0 - (d0 + 2) - 16)>(%79)
      %261 = vector.create_mask %178, %139, %c0 : vector<2x2x2xi1>
      affine.for %arg1 = 0 to 93 {
      }
      %262 = scf.index_switch %c13 -> index 
      case 1 {
        %263 = math.absf %18 : tensor<2x2x2xf16>
        %264 = bufferization.clone %alloc_8 : memref<2x2x7xf16> to memref<2x2x7xf16>
        %265 = arith.remf %183, %cst_1 : f16
        %266 = arith.remf %179, %cst_4 : f16
        %267 = vector.insertelement %true_33, %166[%80 : index] : vector<2xi1>
        %268 = math.log10 %4 : tensor<2x2x2xf32>
        %269 = index.mul %c0, %160
        %270 = math.cos %14 : tensor<4x2xf32>
        %271 = math.tan %4 : tensor<2x2x2xf32>
        %272 = arith.floordivsi %false_2, %false_25 : i1
        %273 = index.maxu %96, %c7
        %274 = arith.addf %cst_36, %cst_1 : f16
        %275 = memref.realloc %155 : memref<2xi16> to memref<2xi16>
        %276 = math.exp2 %from_elements : tensor<2x2x2xf32>
        %277 = vector.broadcast %cst_36 : f16 to vector<2xf16>
        %278 = vector.maskedload %alloc_15[%c1], %166, %277 : memref<2xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
        %279 = vector.create_mask %c4, %133, %178 : vector<2x2x2xi1>
        scf.yield %c0 : index
      }
      case 2 {
        %263 = index.divs %33, %62
        %264 = vector.insertelement %c32381_i16, %84[%c15 : index] : vector<2xi16>
        %265 = math.log %15 : tensor<2x2x2xf16>
        %266 = vector.create_mask %139, %c15 : vector<4x2xi1>
        %267 = math.copysign %18, %15 : tensor<2x2x2xf16>
        %268 = math.floor %251 : tensor<2x2x7xf16>
        %269 = arith.ori %false_25, %true_32 : i1
        memref.assume_alignment %alloc_8, 16 : memref<2x2x7xf16>
        %270 = arith.minsi %true_33, %true_32 : i1
        %271 = memref.load %alloc_8[%c1, %c0, %c5] : memref<2x2x7xf16>
        %272 = math.powf %18, %12 : tensor<2x2x2xf16>
        %273 = vector.broadcast %c1600625636_i64 : i64 to vector<2xi64>
        memref.assume_alignment %alloc_13, 8 : memref<2xi32>
        %274 = arith.shli %c1138427490_i32, %c1138427490_i32 : i32
        %275 = math.powf %22, %21 : tensor<f16>
        %276 = index.divs %37, %33
        scf.yield %37 : index
      }
      case 3 {
        %263 = math.atan2 %21, %22 : tensor<f16>
        %264 = index.divs %60, %c12
        %265 = math.roundeven %cst_36 : f16
        affine.store %38, %alloc_13[%c14] : memref<2xi32>
        %266 = math.log %cst_3 : f32
        %267 = math.absf %93 : f32
        %268 = arith.cmpf une, %cst_3, %cst : f32
        memref.copy %181, %alloc_12 : memref<2xi16> to memref<2xi16>
        %269 = arith.minui %false_2, %true : i1
        %270 = index.divs %c7, %40
        %271 = index.sub %133, %270
        %272 = math.absi %2 : tensor<2xi16>
        %273 = math.tanh %11 : tensor<2xf16>
        %alloc_51 = memref.alloc() : memref<2xi32>
        %inserted = tensor.insert %cst_4 into %11[%c0] : tensor<2xf16>
        affine.store %c32381_i16, %alloc_10[%c5, %c12] : memref<4x2xi16>
        scf.yield %79 : index
      }
      default {
        %263 = math.expm1 %cst_3 : f32
        %264 = vector.create_mask %158, %c8, %161 : vector<2x2x2xi1>
        %265 = bufferization.to_memref %11 : memref<2xf16>
        %266 = index.sizeof
        memref.copy %124, %181 : memref<2xi16> to memref<2xi16>
        %alloc_51 = memref.alloc() : memref<2xf32>
        %267 = affine.min affine_map<(d0, d1, d2) -> (d2 ceildiv 4)>(%39, %c13, %62)
        %268 = vector.broadcast %cst : f32 to vector<2x2x7xf32>
        %269 = vector.fma %268, %268, %268 : vector<2x2x7xf32>
        %270 = math.cttz %expanded : tensor<2x2x7x1xi64>
        %271 = math.floor %cst_3 : f32
        %272 = arith.remsi %97, %c1099344021_i32 : i32
        %273 = arith.andi %true_32, %false_2 : i1
        %274 = affine.min affine_map<(d0, d1, d2) -> (d0 + d1, (((d0 + d1) mod 32) floordiv 32) mod 4 - 64)>(%c13, %rank_30, %c0)
        %275 = vector.broadcast %cst : f32 to vector<2xf32>
        %276 = vector.fma %275, %106, %275 : vector<2xf32>
        %277 = arith.remf %cst_3, %cst_0 : f32
        %278 = vector.insert %c32381_i16, %67 [0] : i16 into vector<4xi16>
        scf.yield %80 : index
      }
      scf.yield %arg0 : memref<2xf16>
    }
    %187 = math.log2 %11 : tensor<2xf16>
    %generated = tensor.generate %c7, %133, %c1 {
    ^bb0(%arg0: index, %arg1: index, %arg2: index):
      %249 = index.add %96, %c12
      %250 = vector.maskedload %alloc_11[%c1, %c0, %c0], %43, %67 : memref<2x2x2xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
      %251 = math.log1p %transposed : tensor<2x2x2xf16>
      %252 = arith.minsi %false_2, %true_21 : i1
      tensor.yield %c1474615974_i32 : i32
    } : tensor<?x?x?xi32>
    %188 = arith.minui %c1138427490_i32, %c1138427490_i32 : i32
    %189 = arith.divui %c1415562437_i64, %extracted : i64
    %190 = affine.apply affine_map<(d0) -> (((d0 floordiv 2 - 2) floordiv 16) * -2)>(%c8)
    %191 = math.absf %cst_3 : f32
    %rank_38 = tensor.rank %131 : tensor<4x2xi1>
    %192 = index.add %c3, %c7
    %193 = vector.flat_transpose %91 {columns = 2 : i32, rows = 2 : i32} : vector<4xf16> -> vector<4xf16>
    %cast_39 = tensor.cast %4 : tensor<2x2x2xf32> to tensor<?x?x?xf32>
    %194 = arith.cmpf one, %cst_4, %179 : f16
    %195 = vector.broadcast %183 : f16 to vector<4x4xf16>
    %196 = vector.outerproduct %19, %19, %195 {kind = #vector.kind<mul>} : vector<4xf16>, vector<4xf16>
    %197 = arith.minf %cst_0, %cst_0 : f32
    %generated_40 = tensor.generate %rank_30, %c0 {
    ^bb0(%arg0: index, %arg1: index, %arg2: index):
      %249 = bufferization.to_tensor %alloc_20 : memref<2xi32>
      %250 = index.castu %c-26606_i16 : i16 to index
      %251 = vector.broadcast %true_32 : i1 to vector<2x2x7xi1>
      %252 = arith.remf %145, %145 : f32
      tensor.yield %cst_4 : f16
    } : tensor<?x?x7xf16>
    %198 = index.ceildivu %62, %158
    %199 = affine.if affine_set<(d0) : (-(d0 + 128) >= 0, -(d0 + 128) + d0 - (d0 + 128) * 2 + 144 >= 0, d0 - (d0 + 128) * 2 + 144 >= 0)>(%c5) -> i64 {
      %249 = tensor.empty() : tensor<2xi16>
      %mapped = linalg.map ins(%181, %181, %124 : memref<2xi16>, memref<2xi16>, memref<2xi16>) outs(%249 : tensor<2xi16>)
        (%in: i16, %in_50: i16, %in_51: i16) {
          %extracted_52 = tensor.extract %9[%c2, %c1] : tensor<4x2xi1>
          %257 = arith.shrsi %false, %true_32 : i1
          %258 = arith.minui %extracted, %c1415562437_i64 : i64
          %259 = arith.cmpf ult, %cst_36, %cst_1 : f16
          %260 = arith.negf %93 : f32
          %alloc_53 = memref.alloc() : memref<7x2xi1>
          %261 = tensor.empty() : tensor<4x2xi1>
          %262 = linalg.matmul ins(%128, %alloc_53 : tensor<4x7xi1>, memref<7x2xi1>) outs(%261 : tensor<4x2xi1>) -> tensor<4x2xi1>
          %263 = tensor.empty(%192) : tensor<?xi64>
          %264 = arith.andi %false_25, %true_21 : i1
          %265 = math.powf %120, %120 : tensor<2x2x7xf16>
          %266 = math.round %4 : tensor<2x2x2xf32>
          %267 = index.ceildivs %62, %161
          %268 = vector.shuffle %84, %82 [0, 2, 3] : vector<2xi16>, vector<2xi16>
          %269 = arith.remf %cst_1, %cst_1 : f16
          %270 = index.maxs %40, %33
          %271 = memref.realloc %alloc_13 : memref<2xi32> to memref<2xi32>
          %272 = arith.floordivsi %in, %c32381_i16 : i16
          %273 = math.ctpop %1 : tensor<2x2x2xi32>
          %from_elements_54 = tensor.from_elements %183, %179, %cst_1, %cst_4, %cst_4, %cst_1, %cst_1, %cst_1 : tensor<4x2xf16>
          %274 = math.absi %3 : tensor<2x2x2xi32>
          %275 = affine.min affine_map<(d0, d1) -> (0, 0, -2)>(%190, %158)
          %276 = arith.floordivsi %true_33, %true_32 : i1
          %277 = arith.minsi %c1099344021_i32, %c1138427490_i32 : i32
          %278 = vector.create_mask %96, %37, %96 : vector<2x2x2xi1>
          %279 = vector.create_mask %192, %51 : vector<4x2xi1>
          %280 = vector.extract %166[1] : vector<2xi1>
          %281 = arith.minui %38, %97 : i32
          %expanded_55 = tensor.expand_shape %5 [[0], [1], [2, 3]] : tensor<2x2x7xi64> into tensor<2x2x7x1xi64>
          %from_elements_56 = tensor.from_elements %extracted_52, %true_33, %true, %false_25, %true_32, %true_33, %true_32, %extracted_52 : tensor<4x2xi1>
          %282 = vector.broadcast %cst : f32 to vector<2x2xf32>
          %dest_57, %accumulated_value_58 = vector.scan <add>, %86, %282 {inclusive = true, reduction_dim = 0 : i64} : vector<2x2x2xf32>, vector<2x2xf32>
          %283 = index.add %c14, %161
          %284 = index.divs %c8, %51
          %285 = index.maxu %275, %175
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      %250 = memref.realloc %alloc_15 : memref<2xf16> to memref<2xf16>
      %251 = vector.insert %179, %118 [3] : f16 into vector<4xf16>
      %252 = math.log1p %22 : tensor<f16>
      %253 = tensor.empty(%133, %c1) : tensor<?x?xi32>
      %254 = vector.broadcast %extracted : i64 to vector<2xi64>
      %255 = math.ctlz %9 : tensor<4x2xi1>
      %256 = math.ctpop %c1127819723_i64 : i64
      affine.yield %c1600625636_i64 : i64
    } else {
      %249 = tensor.empty() : tensor<2xi16>
      memref.tensor_store %13, %alloc_9 : memref<4x2xi64>
      %250 = vector.broadcast %179 : f16 to vector<4x4xf16>
      %251 = vector.outerproduct %118, %91, %250 {kind = #vector.kind<mul>} : vector<4xf16>, vector<4xf16>
      %252 = arith.remf %93, %93 : f32
      %253 = vector.broadcast %183 : f16 to vector<f16>
      %254 = vector.transfer_write %253, %15[%104, %rank_30, %c7] : vector<f16>, tensor<2x2x2xf16>
      %255 = memref.atomic_rmw assign %cst_4, %alloc_19[%c1, %c0, %c1] : (f16, memref<2x2x2xf16>) -> f16
      %256 = index.divu %c13, %40
      %257 = memref.load %alloc_5[%c0, %c0, %c1] : memref<2x2x2xf32>
      affine.yield %c1600625636_i64 : i64
    }
    %alloca_41 = memref.alloca() : memref<2xi1>
    %200 = arith.maxsi %true_33, %true : i1
    %splat_42 = tensor.splat %c-26606_i16 : tensor<2x2x7xi16>
    memref.assume_alignment %155, 8 : memref<2xi16>
    %201 = arith.shrsi %false_2, %true_32 : i1
    %202 = vector.multi_reduction <maxsi>, %43, %false_2 [0] : vector<4xi1> to i1
    %203 = arith.maxf %cst_1, %183 : f16
    %rank_43 = tensor.rank %22 : tensor<f16>
    %204 = affine.apply affine_map<(d0, d1) -> (-(d0 ceildiv 128))>(%c9, %rank)
    %205 = arith.divui %false_2, %false : i1
    %206 = vector.insert %cst_0, %115 [0] : f32 into vector<4xf32>
    %false_44 = arith.constant false
    %207 = vector.flat_transpose %193 {columns = 2 : i32, rows = 2 : i32} : vector<4xf16> -> vector<4xf16>
    %208 = math.tanh %120 : tensor<2x2x7xf16>
    %209 = arith.shrui %202, %165 : i1
    %210 = index.mul %c1, %62
    %211 = arith.addf %cst_3, %145 : f32
    %212 = tensor.empty() : tensor<2x2x7xi32>
    %213 = vector.broadcast %cst_1 : f16 to vector<4xf16>
    vector.transfer_write %213, %alloc_8[%198, %c13, %39] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<4xf16>, memref<2x2x7xf16>
    %alloc_45 = memref.alloc() : memref<2x2xf32>
    %214 = tensor.empty() : tensor<4x2xf32>
    %215 = linalg.matmul ins(%14, %alloc_45 : tensor<4x2xf32>, memref<2x2xf32>) outs(%214 : tensor<4x2xf32>) -> tensor<4x2xf32>
    %216 = math.fpowi %179, %38 : f16, i32
    %217 = arith.cmpf true, %145, %cst_0 : f32
    %218 = vector.shuffle %143, %143 [2, 3] : vector<2xf32>, vector<2xf32>
    %c1_i64 = arith.constant 1 : i64
    %219 = vector.transfer_read %splat_35[%51], %c1_i64 : tensor<2xi64>, vector<i64>
    %220 = index.casts %rank : index to i32
    %alloca_46 = memref.alloca() : memref<4x2xi1>
    affine.store %38, %alloc_6[%c5, %c8, %c0] : memref<2x2x2xi32>
    %false_47 = index.bool.constant false
    %221 = scf.index_switch %rank_30 -> vector<2xi32> 
    case 1 {
      %249 = math.fma %10, %10, %10 : tensor<2x2x7xf32>
      %250 = index.maxu %39, %c8
      %251 = affine.load %alloc_14[%c7, %c4, %c11] : memref<2x2x7xf16>
      %252 = arith.maxsi %c1415562437_i64, %c1415562437_i64 : i64
      %253 = arith.divui %97, %c1099344021_i32 : i32
      %254 = bufferization.clone %181 : memref<2xi16> to memref<2xi16>
      %255 = math.copysign %cst_36, %cst_36 : f16
      %256 = vector.broadcast %cst : f32 to vector<4x4xf32>
      %257 = vector.outerproduct %115, %115, %256 {kind = #vector.kind<maxf>} : vector<4xf32>, vector<4xf32>
      %dest_50, %accumulated_value_51 = vector.scan <mul>, %126, %66 {inclusive = false, reduction_dim = 1 : i64} : vector<4x2xi16>, vector<4xi16>
      %258 = arith.remf %cst_36, %cst_4 : f16
      scf.if %true_33 {
        %262 = vector.flat_transpose %44 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        %splat_53 = tensor.splat %145 : tensor<2x2x7xf32>
        %263 = vector.broadcast %cst : f32 to vector<2x2x2xf32>
        %264 = vector.fma %263, %263, %86 : vector<2x2x2xf32>
        %265 = index.sizeof
        %266 = math.floor %4 : tensor<2x2x2xf32>
        %267 = arith.maxui %97, %c1138427490_i32 : i32
        %expanded_54 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<4x2xi1> into tensor<4x2x1xi1>
        %268 = math.log10 %14 : tensor<4x2xf32>
      }
      affine.store %251, %100[] : memref<f16>
      %259 = arith.minsi %97, %c1474615974_i32 : i32
      %generated_52 = tensor.generate %c10 {
      ^bb0(%arg0: index):
        %262 = vector.insertelement %145, %42[%175 : index] : vector<4xf32>
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_53 = arith.constant 0 : i16
        %263 = vector.transfer_read %16[%158, %33, %79], %c0_i16_53 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<2x2x2xi16>, vector<2xi16>
        %264 = arith.floordivsi %false_2, %165 : i1
        %265 = vector.insertelement %c32381_i16, %84[%62 : index] : vector<2xi16>
        tensor.yield %cst_3 : f32
      } : tensor<?xf32>
      affine.for %arg0 = 0 to 62 {
      }
      %260 = arith.minsi %97, %97 : i32
      %261 = vector.broadcast %97 : i32 to vector<2xi32>
      scf.yield %261 : vector<2xi32>
    }
    case 2 {
      %249 = vector.insert %179, %118 [3] : f16 into vector<4xf16>
      %alloc_50 = memref.alloc() : memref<2xi64>
      %250 = bufferization.to_tensor %alloc_17 : memref<4x2xi1>
      %251 = vector.broadcast %c1127819723_i64 : i64 to vector<i64>
      %252 = vector.transfer_write %251, %expanded[%204, %c4, %c15, %c14] : vector<i64>, tensor<2x2x7x1xi64>
      %cst_51 = arith.constant 1.000000e+00 : f16
      %253 = vector.transfer_read %15[%c13, %c3, %178], %cst_51 : tensor<2x2x2xf16>, vector<f16>
      %cast_52 = tensor.cast %13 : tensor<4x2xi64> to tensor<?x?xi64>
      %rank_53 = tensor.rank %generated_40 : tensor<?x?x7xf16>
      %254 = memref.atomic_rmw maxu %c1138427490_i32, %alloc_18[%c2, %c0] : (i32, memref<4x2xi32>) -> i32
      %255 = bufferization.to_tensor %alloc_20 : memref<2xi32>
      %256 = math.log10 %transposed : tensor<2x2x2xf16>
      %257 = math.tanh %214 : tensor<4x2xf32>
      %258 = arith.andi %165, %true_33 : i1
      %259 = index.ceildivu %rank_43, %c15
      %260 = math.fma %cst_4, %cst_1, %cst_1 : f16
      %261 = vector.create_mask %210, %198, %rank_53 : vector<2x2x2xi1>
      %262 = index.divs %rank, %c11
      %263 = vector.broadcast %c1099344021_i32 : i32 to vector<2xi32>
      scf.yield %263 : vector<2xi32>
    }
    default {
      %249 = index.maxu %210, %161
      %250 = math.rsqrt %15 : tensor<2x2x2xf16>
      %cast_50 = tensor.cast %expanded : tensor<2x2x7x1xi64> to tensor<?x?x?x?xi64>
      memref.tensor_store %11, %138 : memref<2xf16>
      %251 = index.mul %62, %80
      scf.index_switch %139 
      case 1 {
        %262 = math.sqrt %15 : tensor<2x2x2xf16>
        %263 = math.cos %15 : tensor<2x2x2xf16>
        %264 = math.cos %cst_0 : f32
        %265 = arith.minui %97, %38 : i32
        %266 = arith.andi %true_32, %true_33 : i1
        %267 = bufferization.clone %alloc_16 : memref<2x2x7xf32> to memref<2x2x7xf32>
        %268 = arith.divui %c1415562437_i64, %extracted : i64
        %269 = math.absi %3 : tensor<2x2x2xi32>
        %270 = math.round %22 : tensor<f16>
        %271 = arith.andi %false_25, %false_47 : i1
        %272 = arith.shrsi %c1_i64, %c1600625636_i64 : i64
        %273 = index.floordivs %80, %c2
        %274 = math.fpowi %183, %c1138427490_i32 : f16, i32
        %c1_i32 = arith.constant 1 : i32
        %c0_i32 = arith.constant 0 : i32
        %275 = vector.transfer_read %collapsed[%c2, %c13], %c0_i32 : tensor<4x2xi32>, vector<i32>
        %276 = math.log1p %transposed : tensor<2x2x2xf16>
        %alloc_51 = memref.alloc() : memref<2x2x2xi1>
        scf.yield
      }
      case 2 {
        %262 = math.absi %202 : i1
        %extracted_51 = tensor.extract %22[] : tensor<f16>
        %263 = math.tanh %20 : tensor<2xf16>
        %264 = bufferization.clone %alloc_9 : memref<4x2xi64> to memref<4x2xi64>
        affine.store %cst_4, %alloc[%c14, %c8, %c8] : memref<2x2x2xf16>
        %265 = vector.shuffle %43, %83 [0, 2, 3, 4] : vector<4xi1>, vector<2xi1>
        %rank_52 = tensor.rank %8 : tensor<2xi64>
        %266 = math.expm1 %145 : f32
        %false_53 = index.bool.constant false
        %267 = arith.subi %38, %38 : i32
        %268 = vector.insert %93, %42 [2] : f32 into vector<4xf32>
        %269 = arith.shrui %c1099344021_i32, %c1138427490_i32 : i32
        %270 = vector.broadcast %c1138427490_i32 : i32 to vector<4x2xi32>
        %271 = vector.create_mask %158, %178, %39 : vector<2x2x7xi1>
        memref.copy %alloc, %alloc_19 : memref<2x2x2xf16> to memref<2x2x2xf16>
        %272 = math.absf %extracted_51 : f16
        scf.yield
      }
      case 3 {
        %262 = index.maxu %139, %175
        %false_51 = index.bool.constant false
        %263 = math.exp2 %11 : tensor<2xf16>
        %264 = math.exp2 %10 : tensor<2x2x7xf32>
        %265 = arith.negf %179 : f16
        %266 = arith.remf %cst_3, %cst : f32
        %267 = arith.shrsi %extracted, %extracted : i64
        %268 = vector.insert %c-26606_i16, %150 [0] : i16 into vector<2xi16>
        %269 = math.fpowi %cst_36, %38 : f16, i32
        %rank_52 = tensor.rank %7 : tensor<2x2x2xi16>
        %cast_53 = tensor.cast %17 : tensor<2x2x2xi16> to tensor<?x?x?xi16>
        %270 = memref.load %alloc_9[%c2, %c0] : memref<4x2xi64>
        %271 = math.log %14 : tensor<4x2xf32>
        %272 = vector.transpose %207, [0] : vector<4xf16> to vector<4xf16>
        %273 = math.cttz %collapsed : tensor<4x2xi32>
        %274 = vector.broadcast %c-26606_i16 : i16 to vector<2x2x2xi16>
        scf.yield
      }
      case 4 {
        %262 = math.rsqrt %12 : tensor<2x2x2xf16>
        %263 = arith.minsi %true, %true_33 : i1
        %264 = vector.shuffle %193, %91 [0, 2, 5, 6, 7] : vector<4xf16>, vector<4xf16>
        %265 = index.floordivs %160, %192
        affine.store %c32381_i16, %124[%c12] : memref<2xi16>
        %266 = vector.flat_transpose %150 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
        %267 = tensor.empty() : tensor<2x7xf32>
        %268 = tensor.empty() : tensor<4x7xf32>
        %269 = linalg.matmul ins(%14, %267 : tensor<4x2xf32>, tensor<2x7xf32>) outs(%268 : tensor<4x7xf32>) -> tensor<4x7xf32>
        %270 = vector.insert %cst_36, %193 [1] : f16 into vector<4xf16>
        %271 = bufferization.clone %alloc_15 : memref<2xf16> to memref<2xf16>
        %cast_51 = tensor.cast %2 : tensor<2xi16> to tensor<?xi16>
        %272 = index.add %210, %158
        %273 = vector.maskedload %alloc_16[%c1, %c0, %c1], %166, %106 : memref<2x2x7xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
        %274 = arith.floordivsi %c1474615974_i32, %38 : i32
        %275 = arith.minsi %true, %true_21 : i1
        %expanded_52 = tensor.expand_shape %15 [[0], [1], [2, 3]] : tensor<2x2x2xf16> into tensor<2x2x2x1xf16>
        %276 = math.tan %14 : tensor<4x2xf32>
        scf.yield
      }
      default {
        %262 = index.ceildivu %c1, %251
        %263 = vector.broadcast %cst_36 : f16 to vector<4x4xf16>
        %264 = vector.outerproduct %91, %91, %263 {kind = #vector.kind<minf>} : vector<4xf16>, vector<4xf16>
        %265 = index.maxu %c15, %c6
        %extracted_51 = tensor.extract %128[%c1, %c6] : tensor<4x7xi1>
        %266 = math.fpowi %from_elements, %3 : tensor<2x2x2xf32>, tensor<2x2x2xi32>
        %267 = index.mul %139, %c2
        %cast_52 = tensor.cast %0 : tensor<2xi16> to tensor<?xi16>
        %268 = math.floor %11 : tensor<2xf16>
        %269 = vector.load %181[%c1] : memref<2xi16>, vector<2x2x2xi16>
        %270 = arith.maxui %202, %true_21 : i1
        memref.assume_alignment %155, 4 : memref<2xi16>
        %271 = arith.divui %false_47, %extracted_51 : i1
        %alloc_53 = memref.alloc() : memref<2x4xi1>
        %272 = tensor.empty() : tensor<4x4xi1>
        %273 = linalg.matmul ins(%6, %alloc_53 : tensor<4x2xi1>, memref<2x4xi1>) outs(%272 : tensor<4x4xi1>) -> tensor<4x4xi1>
        %274 = memref.realloc %alloc_13 : memref<2xi32> to memref<2xi32>
        %275 = index.floordivs %160, %139
        %276 = math.ceil %93 : f32
      }
      %252 = arith.negf %179 : f16
      scf.index_switch %c11 
      case 1 {
        %262 = math.cos %cst_36 : f16
        %263 = arith.remf %cst_3, %93 : f32
        %cast_51 = tensor.cast %21 : tensor<f16> to tensor<f16>
        %264 = affine.load %138[%c15] : memref<2xf16>
        %265 = index.divu %c6, %190
        %266 = math.sqrt %14 : tensor<4x2xf32>
        %267 = arith.remf %cst_1, %cst_1 : f16
        %false_52 = index.bool.constant false
        %268 = math.round %15 : tensor<2x2x2xf16>
        %269 = bufferization.clone %alloc_19 : memref<2x2x2xf16> to memref<2x2x2xf16>
        %270 = math.exp2 %4 : tensor<2x2x2xf32>
        %271 = index.floordivs %158, %198
        %272 = arith.remf %cst_3, %93 : f32
        %273 = affine.min affine_map<(d0, d1) -> (d0 floordiv 4 + d1 + d0 + 14, d1 + d0)>(%271, %204)
        %cast_53 = tensor.cast %from_elements : tensor<2x2x2xf32> to tensor<?x?x?xf32>
        %274 = arith.floordivsi %38, %c1474615974_i32 : i32
        scf.yield
      }
      case 2 {
        %262 = vector.extract_strided_slice %166 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi1> to vector<2xi1>
        %cast_51 = tensor.cast %0 : tensor<2xi16> to tensor<?xi16>
        %263 = arith.minui %false, %202 : i1
        %264 = bufferization.to_memref %128 : memref<4x7xi1>
        %265 = arith.remf %cst_1, %cst_36 : f16
        %266 = arith.remf %93, %cst_3 : f32
        %267 = vector.broadcast %145 : f32 to vector<2x2x7xf32>
        %268 = vector.fma %267, %267, %267 : vector<2x2x7xf32>
        %269 = bufferization.clone %alloc_6 : memref<2x2x2xi32> to memref<2x2x2xi32>
        %alloca_52 = memref.alloca() : memref<2xi64>
        %270 = bufferization.to_tensor %100 : memref<f16>
        %271 = math.cos %from_elements : tensor<2x2x2xf32>
        %alloca_53 = memref.alloca() : memref<2xi1>
        %272 = arith.shrsi %true, %true_21 : i1
        %273 = arith.divui %extracted, %c1127819723_i64 : i64
        %274 = index.ceildivu %210, %c2
        %275 = arith.shrsi %true_21, %false_47 : i1
        scf.yield
      }
      case 3 {
        %262 = math.cos %cst : f32
        %263 = math.atan2 %cst, %cst : f32
        %264 = math.absf %11 : tensor<2xf16>
        %265 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 - 8, d1, d2 - 8)>(%104, %175, %51, %c3)
        %266 = math.absi %c1127819723_i64 : i64
        %267 = vector.broadcast %true : i1 to vector<4x2xi1>
        %268 = vector.load %alloc_16[%c0, %c0, %c2] : memref<2x2x7xf32>, vector<2x2x2xf32>
        %269 = arith.minui %false_47, %true_33 : i1
        %270 = index.maxu %c6, %c9
        %271 = tensor.empty(%33, %c12, %c2) : tensor<?x?x?xi64>
        %alloc_51 = memref.alloc() : memref<2x2xi64>
        %272 = tensor.empty() : tensor<4x2xi64>
        %273 = linalg.matmul ins(%13, %alloc_51 : tensor<4x2xi64>, memref<2x2xi64>) outs(%272 : tensor<4x2xi64>) -> tensor<4x2xi64>
        %274 = affine.min affine_map<(d0) -> (d0 * 2, (d0 floordiv 2) floordiv 16, d0)>(%rank)
        %275 = vector.broadcast %179 : f16 to vector<2xf16>
        %276 = vector.maskedload %alloc_15[%c0], %83, %275 : memref<2xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
        %277 = index.sizeof
        %from_elements_52 = tensor.from_elements %cst_3, %cst_3, %145, %cst, %cst_0, %145, %cst_3, %cst_3 : tensor<2x2x2xf32>
        %278 = math.absf %15 : tensor<2x2x2xf16>
        scf.yield
      }
      default {
        %262 = math.ipowi %c1099344021_i32, %38 : i32
        %263 = index.sizeof
        %264 = index.floordivs %251, %rank_38
        %265 = math.fpowi %214, %collapsed : tensor<4x2xf32>, tensor<4x2xi32>
        %266 = arith.floordivsi %c1474615974_i32, %c1474615974_i32 : i32
        %267 = bufferization.clone %alloc_11 : memref<2x2x2xi16> to memref<2x2x2xi16>
        %268 = tensor.empty() : tensor<2xi32>
        %269 = math.fpowi %20, %268 : tensor<2xf16>, tensor<2xi32>
        %270 = math.copysign %11, %11 : tensor<2xf16>
        %271 = arith.shli %true_21, %202 : i1
        %272 = index.ceildivs %c9, %c7
        %273 = math.log %46 : tensor<2x2x7xf16>
        %274 = index.mul %158, %c4
        %275 = index.ceildivu %rank_43, %161
        %276 = index.floordivs %161, %51
        %277 = index.ceildivs %139, %rank_43
        %278 = arith.cmpi sgt, %c1474615974_i32, %c1138427490_i32 : i32
      }
      %253 = vector.flat_transpose %67 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
      %254 = math.floor %11 : tensor<2xf16>
      %255 = math.copysign %18, %12 : tensor<2x2x2xf16>
      %256 = vector.multi_reduction <or>, %43, %43 [] : vector<4xi1> to vector<4xi1>
      %257 = math.log10 %20 : tensor<2xf16>
      %258 = arith.minui %true, %false : i1
      %259 = math.cttz %131 : tensor<4x2xi1>
      %260 = arith.shrsi %c32381_i16, %c-26606_i16 : i16
      %261 = vector.broadcast %c1099344021_i32 : i32 to vector<2xi32>
      scf.yield %261 : vector<2xi32>
    }
    %222 = arith.muli %202, %true_33 : i1
    %223 = index.maxu %c11, %133
    %224 = arith.divui %true_32, %true : i1
    affine.store %97, %alloc_20[%c13] : memref<2xi32>
    %225 = vector.insertelement %cst_4, %213[%rank : index] : vector<4xf16>
    %226 = arith.minui %97, %97 : i32
    %227 = arith.remf %cst_3, %145 : f32
    %228 = bufferization.clone %alloc_7 : memref<4x2xf32> to memref<4x2xf32>
    scf.index_switch %139 
    case 1 {
      %249 = arith.remf %cst_1, %183 : f16
      %250 = vector.load %alloc_5[%c1, %c1, %c1] : memref<2x2x2xf32>, vector<2x2x2xf32>
      %alloc_50 = memref.alloc() : memref<2x2x2xf32>
      memref.copy %alloc_5, %alloc_50 : memref<2x2x2xf32> to memref<2x2x2xf32>
      %251 = memref.load %alloc[%c1, %c0, %c1] : memref<2x2x2xf16>
      %252 = arith.remf %93, %cst_0 : f32
      %253 = math.fpowi %12, %3 : tensor<2x2x2xf16>, tensor<2x2x2xi32>
      affine.store %cst_3, %alloc_7[%c12, %c10] : memref<4x2xf32>
      %generated_51 = tensor.generate %62, %51 {
      ^bb0(%arg0: index, %arg1: index, %arg2: index):
        %260 = arith.maxui %202, %202 : i1
        %261 = index.sizeof
        %262 = index.sizeof
        %263 = vector.load %alloc_5[%c0, %c0, %c0] : memref<2x2x2xf32>, vector<4x2xf32>
        tensor.yield %false_2 : i1
      } : tensor<?x?x7xi1>
      %254 = index.ceildivu %c10, %rank_43
      %255 = vector.transpose %31, [] : vector<i32> to vector<i32>
      %256 = math.log10 %15 : tensor<2x2x2xf16>
      %257 = math.round %transposed : tensor<2x2x2xf16>
      %258 = scf.while (%arg0 = %166) : (vector<2xi1>) -> vector<2xi1> {
        %260 = vector.broadcast %cst_3 : f32 to vector<2x2xf32>
        %dest_53, %accumulated_value_54 = vector.scan <maxf>, %86, %260 {inclusive = false, reduction_dim = 2 : i64} : vector<2x2x2xf32>, vector<2x2xf32>
        %261 = arith.remsi %false_47, %false : i1
        %262 = vector.shuffle %43, %83 [0, 1, 3, 5] : vector<4xi1>, vector<2xi1>
        %263 = vector.broadcast %cst_1 : f16 to vector<4x4xf16>
        %264 = vector.outerproduct %19, %213, %263 {kind = #vector.kind<mul>} : vector<4xf16>, vector<4xf16>
        %265 = tensor.empty() : tensor<2xi32>
        %266 = math.fpowi %splat, %265 : tensor<2xf32>, tensor<2xi32>
        %cast_55 = tensor.cast %8 : tensor<2xi64> to tensor<?xi64>
        %267 = vector.broadcast %cst_0 : f32 to vector<2x2xf32>
        %dest_56, %accumulated_value_57 = vector.scan <maxf>, %86, %267 {inclusive = true, reduction_dim = 1 : i64} : vector<2x2x2xf32>, vector<2x2xf32>
        %268 = arith.divui %165, %false_2 : i1
        scf.condition(%false_25) %83 : vector<2xi1>
      } do {
      ^bb0(%arg0: vector<2xi1>):
        %260 = arith.floordivsi %false_47, %false_2 : i1
        %261 = index.casts %true_21 : i1 to index
        %262 = math.copysign %183, %cst_36 : f16
        %263 = arith.shrsi %true_21, %165 : i1
        %264 = vector.insert %179, %19 [0] : f16 into vector<4xf16>
        %265 = math.tanh %from_elements : tensor<2x2x2xf32>
        memref.assume_alignment %181, 1 : memref<2xi16>
        %266 = arith.floordivsi %202, %false_25 : i1
        %267 = math.copysign %145, %cst_0 : f32
        %268 = math.expm1 %15 : tensor<2x2x2xf16>
        %269 = vector.insertelement %false, %83[%40 : index] : vector<2xi1>
        %270 = math.log1p %cst_1 : f16
        %cst_53 = arith.constant 1.000000e+00 : f16
        %271 = vector.transfer_read %138[%39], %cst_53 : memref<2xf16>, vector<f16>
        %272 = index.divs %161, %c11
        %273 = math.cttz %9 : tensor<4x2xi1>
        %274 = math.ceil %10 : tensor<2x2x7xf32>
        scf.yield %166 : vector<2xi1>
      }
      %from_elements_52 = tensor.from_elements %c1474615974_i32, %38 : tensor<2xi32>
      %259 = math.log10 %21 : tensor<f16>
      vector.print %250 : vector<2x2x2xf32>
      scf.yield
    }
    case 2 {
      %249 = arith.maxsi %c-26606_i16, %c-26606_i16 : i16
      %250 = math.absf %14 : tensor<4x2xf32>
      %251 = arith.shrsi %c1_i64, %extracted : i64
      %252 = math.log2 %18 : tensor<2x2x2xf16>
      scf.index_switch %80 
      case 1 {
        %264 = math.rsqrt %cst_1 : f16
        %265 = arith.minui %true, %202 : i1
        %266 = math.absi %c1138427490_i32 : i32
        %267 = arith.cmpf une, %183, %cst_1 : f16
        %268 = vector.broadcast %cst : f32 to vector<2x2x7xf32>
        %269 = vector.extract %43[3] : vector<4xi1>
        %270 = arith.cmpf ueq, %cst_0, %cst_3 : f32
        %271 = bufferization.clone %alloc_11 : memref<2x2x2xi16> to memref<2x2x2xi16>
        %272 = bufferization.to_memref %14 : memref<4x2xf32>
        %273 = vector.flat_transpose %213 {columns = 2 : i32, rows = 2 : i32} : vector<4xf16> -> vector<4xf16>
        %274 = index.divu %192, %rank_38
        %275 = math.floor %4 : tensor<2x2x2xf32>
        %276 = math.cttz %131 : tensor<4x2xi1>
        %277 = arith.cmpf ueq, %93, %cst_0 : f32
        %278 = memref.load %181[%c1] : memref<2xi16>
        %279 = affine.max affine_map<(d0, d1) -> (d1 - 64, -d0 - d1, -d0, d1 - 64)>(%161, %210)
        scf.yield
      }
      case 2 {
        %264 = index.maxu %c14, %c1
        %265 = memref.realloc %alloc_15 : memref<2xf16> to memref<7xf16>
        %266 = math.absf %cst_4 : f16
        %267 = arith.maxui %extracted, %c1600625636_i64 : i64
        %268 = math.log1p %cst_36 : f16
        %269 = arith.minui %true_33, %false_25 : i1
        %270 = vector.transpose %44, [0] : vector<4xf32> to vector<4xf32>
        %271 = math.absf %4 : tensor<2x2x2xf32>
        %272 = math.round %transposed : tensor<2x2x2xf16>
        %273 = arith.maxsi %c32381_i16, %c-26606_i16 : i16
        %274 = vector.broadcast %cst : f32 to vector<2xf32>
        %275 = vector.fma %274, %143, %274 : vector<2xf32>
        %276 = vector.broadcast %c-26606_i16 : i16 to vector<i16>
        vector.transfer_write %276, %alloc_10[%rank_38, %c1] : vector<i16>, memref<4x2xi16>
        %277 = arith.remui %true_33, %true_21 : i1
        %278 = arith.minui %c1_i64, %extracted : i64
        %cst_51 = arith.constant 1.000000e+00 : f16
        %279 = vector.transfer_read %15[%c4, %210, %178], %cst_51 : tensor<2x2x2xf16>, vector<2xf16>
        %280 = vector.broadcast %179 : f16 to vector<4x4xf16>
        %281 = vector.outerproduct %213, %193, %280 {kind = #vector.kind<mul>} : vector<4xf16>, vector<4xf16>
        scf.yield
      }
      case 3 {
        %264 = index.add %175, %c10
        %265 = math.cttz %c-26606_i16 : i16
        %266 = affine.min affine_map<(d0, d1, d2) -> (d1, d0 * 2, d2)>(%c9, %rank_38, %60)
        %267 = index.divu %c6, %c15
        %268 = math.cttz %c1099344021_i32 : i32
        %269 = index.sizeof
        %270 = math.log %179 : f16
        %271 = math.copysign %11, %11 : tensor<2xf16>
        %272 = index.add %c0, %267
        %cast_51 = tensor.cast %3 : tensor<2x2x2xi32> to tensor<?x?x?xi32>
        affine.store %38, %alloc_13[%c3] : memref<2xi32>
        %273 = memref.load %alloc_12[%c0] : memref<2xi16>
        %274 = bufferization.to_memref %14 : memref<4x2xf32>
        %alloc_52 = memref.alloc() : memref<2x2x2xi1>
        %alloc_53 = memref.alloc() : memref<2x2x2xf16>
        %275 = vector.insert %c-26606_i16, %66 [3] : i16 into vector<4xi16>
        scf.yield
      }
      case 4 {
        %264 = vector.broadcast %cst_3 : f32 to vector<2x2x2xf32>
        %265 = vector.fma %264, %86, %264 : vector<2x2x2xf32>
        %266 = index.add %c10, %40
        %267 = vector.broadcast %true_21 : i1 to vector<2x2xi1>
        %268 = vector.outerproduct %166, %83, %267 {kind = #vector.kind<mul>} : vector<2xi1>, vector<2xi1>
        %269 = vector.extract_strided_slice %265 {offsets = [0, 0], sizes = [2, 2], strides = [1, 1]} : vector<2x2x2xf32> to vector<2x2x2xf32>
        %rank_51 = tensor.rank %4 : tensor<2x2x2xf32>
        %270 = math.absi %true_33 : i1
        %alloc_52 = memref.alloc() : memref<2xf16>
        %271 = arith.cmpi ne, %false, %true : i1
        %272 = affine.max affine_map<(d0, d1, d2) -> (d2 * -64)>(%39, %158, %190)
        %273 = math.log %14 : tensor<4x2xf32>
        %274 = affine.max affine_map<(d0) -> (d0 mod 16 + 4)>(%133)
        %275 = math.copysign %cst_1, %179 : f16
        %cast_53 = tensor.cast %splat : tensor<2xf32> to tensor<?xf32>
        %276 = vector.broadcast %cst_1 : f16 to vector<7x7xf16>
        %277 = vector.transfer_write %276, %transposed[%33, %161, %272] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<7x7xf16>, tensor<2x2x2xf16>
        %278 = vector.create_mask %rank, %rank_51 : vector<4x2xi1>
        memref.assume_alignment %alloc_16, 8 : memref<2x2x7xf32>
        scf.yield
      }
      default {
        %expanded_51 = tensor.expand_shape %8 [[0, 1]] : tensor<2xi64> into tensor<2x1xi64>
        %264 = vector.broadcast %93 : f32 to vector<2x2x2xf32>
        %265 = vector.fma %264, %264, %86 : vector<2x2x2xf32>
        %266 = arith.cmpf ord, %cst_3, %cst : f32
        %267 = index.casts %false_47 : i1 to index
        %268 = arith.remf %93, %cst_0 : f32
        %269 = math.atan2 %transposed, %transposed : tensor<2x2x2xf16>
        %270 = arith.remf %183, %183 : f16
        %271 = arith.mulf %183, %183 : f16
        %272 = math.roundeven %12 : tensor<2x2x2xf16>
        %273 = math.exp2 %4 : tensor<2x2x2xf32>
        %274 = affine.min affine_map<(d0, d1, d2) -> (d2 * 32, d1 * 2 - 4, d2 - 8)>(%c0, %139, %rank_43)
        %275 = math.sqrt %10 : tensor<2x2x7xf32>
        %276 = index.add %c1, %rank_30
        %277 = vector.broadcast %cst_3 : f32 to vector<2x2x7xf32>
        %278 = math.absf %cst_1 : f16
        %c14579_i16 = arith.constant 14579 : i16
      }
      %253 = vector.insertelement %179, %193[%33 : index] : vector<4xf16>
      %254 = math.atan2 %cst_36, %183 : f16
      %255 = arith.maxsi %97, %c1099344021_i32 : i32
      %256 = vector.broadcast %cst : f32 to vector<2x2x2xf32>
      %257 = vector.fma %256, %86, %86 : vector<2x2x2xf32>
      %258 = index.casts %160 : index to i32
      %259 = index.casts %38 : i32 to index
      %260 = vector.shuffle %84, %84 [1, 3] : vector<2xi16>, vector<2xi16>
      %261 = bufferization.to_tensor %alloc_7 : memref<4x2xf32>
      %262 = math.floor %from_elements : tensor<2x2x2xf32>
      %splat_50 = tensor.splat %38 : tensor<2xi32>
      %263 = arith.mulf %179, %cst_4 : f16
      scf.yield
    }
    case 3 {
      %249 = bufferization.to_memref %128 : memref<4x7xi1>
      %true_50 = index.bool.constant true
      affine.store %cst_1, %alloc[%c14, %c1, %c3] : memref<2x2x2xf16>
      %250 = index.add %33, %c9
      %251 = tensor.empty() : tensor<2x2x7xi64>
      %252 = vector.broadcast %c1474615974_i32 : i32 to vector<2x2x7xi32>
      %253 = index.sizeof
      %254 = scf.while (%arg0 = %alloc_19) : (memref<2x2x2xf16>) -> memref<2x2x2xf16> {
        %263 = vector.create_mask %rank_38, %190, %62 : vector<2x2x2xi1>
        %264 = arith.shrsi %97, %38 : i32
        %265 = arith.floordivsi %false_47, %true : i1
        %266 = affine.max affine_map<(d0, d1, d2) -> (d1 mod 4, d1 * 16, d1 mod 32 + d1, d1 * 128)>(%80, %204, %178)
        memref.assume_alignment %arg0, 16 : memref<2x2x2xf16>
        %267 = index.ceildivu %37, %c13
        %268 = bufferization.to_tensor %alloc_13 : memref<2xi32>
        %269 = arith.cmpi ne, %c1138427490_i32, %c1474615974_i32 : i32
        scf.condition(%false_25) %arg0 : memref<2x2x2xf16>
      } do {
      ^bb0(%arg0: memref<2x2x2xf16>):
        %263 = math.ceil %cst : f32
        %264 = arith.maxui %165, %false_25 : i1
        %265 = affine.min affine_map<(d0, d1, d2, d3) -> (d1, d2 ceildiv 64, d0 + (d2 ceildiv 64) mod 16 - d0, d3)>(%223, %c9, %175, %40)
        %266 = math.fpowi %10, %212 : tensor<2x2x7xf32>, tensor<2x2x7xi32>
        %267 = math.log1p %10 : tensor<2x2x7xf32>
        %268 = arith.remf %179, %cst_4 : f16
        %269 = arith.shrui %c1415562437_i64, %c1415562437_i64 : i64
        %inserted = tensor.insert %extracted into %8[%c0] : tensor<2xi64>
        %270 = vector.load %alloc_10[%c2, %c0] : memref<4x2xi16>, vector<2xi16>
        %271 = affine.load %alloc_20[%c1] : memref<2xi32>
        %272 = index.add %rank_43, %c6
        %273 = arith.divui %202, %true_21 : i1
        %274 = math.expm1 %cst_0 : f32
        %275 = math.log %145 : f32
        %276 = affine.load %alloc_17[%c11, %c8] : memref<4x2xi1>
        %277 = vector.broadcast %cst_0 : f32 to vector<4x4xf32>
        %278 = vector.outerproduct %42, %42, %277 {kind = #vector.kind<maxf>} : vector<4xf32>, vector<4xf32>
        scf.yield %alloc : memref<2x2x2xf16>
      }
      %255 = math.ctlz %3 : tensor<2x2x2xi32>
      %256 = arith.shrsi %c1600625636_i64, %c1127819723_i64 : i64
      %257 = vector.create_mask %40, %37 : vector<4x2xi1>
      %258 = math.rsqrt %22 : tensor<f16>
      %259 = arith.negf %93 : f32
      %260 = affine.for %arg0 = 0 to 28 iter_args(%arg1 = %c-26606_i16) -> (i16) {
        affine.yield %c-26606_i16 : i16
      }
      %261 = arith.minui %extracted, %c1_i64 : i64
      %262 = affine.max affine_map<(d0, d1) -> ((d0 - d1) ceildiv 128, d0 mod 128, (d0 mod 128) * 2 + d0 - d1 - (d0 - d1 - 1))>(%rank, %139)
      scf.yield
    }
    case 4 {
      %249 = math.rsqrt %cst_3 : f32
      %250 = bufferization.clone %alloc_10 : memref<4x2xi16> to memref<4x2xi16>
      %251 = math.absf %cst_4 : f16
      %252 = arith.maxf %145, %93 : f32
      %253 = arith.divui %c-26606_i16, %c-26606_i16 : i16
      %254 = memref.atomic_rmw assign %c32381_i16, %124[%c0] : (i16, memref<2xi16>) -> i16
      %255 = arith.ceildivsi %false_47, %165 : i1
      %alloc_50 = memref.alloc() : memref<2x2x2xi16>
      memref.copy %alloc_11, %alloc_50 : memref<2x2x2xi16> to memref<2x2x2xi16>
      %256 = arith.shli %c1138427490_i32, %c1474615974_i32 : i32
      %257 = arith.remf %cst_1, %179 : f16
      %258 = math.ipowi %c1099344021_i32, %38 : i32
      %259 = vector.broadcast %cst_1 : f16 to vector<4x4xf16>
      %260 = vector.outerproduct %91, %118, %259 {kind = #vector.kind<minf>} : vector<4xf16>, vector<4xf16>
      %alloc_51 = memref.alloc() : memref<2x4xi1>
      %261 = tensor.empty() : tensor<4x4xi1>
      %262 = linalg.matmul ins(%9, %alloc_51 : tensor<4x2xi1>, memref<2x4xi1>) outs(%261 : tensor<4x4xi1>) -> tensor<4x4xi1>
      %263 = index.sizeof
      %264 = arith.andi %202, %202 : i1
      %expanded_52 = tensor.expand_shape %15 [[0], [1], [2, 3]] : tensor<2x2x2xf16> into tensor<2x2x2x1xf16>
      scf.yield
    }
    default {
      %249 = vector.maskedload %alloc_15[%c1], %43, %19 : memref<2xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
      %250 = math.round %214 : tensor<4x2xf32>
      %251 = index.add %161, %c8
      %252 = vector.create_mask %178 : vector<2xi1>
      %253 = math.floor %cst_4 : f16
      %254 = memref.load %alloc_8[%c0, %c1, %c6] : memref<2x2x7xf16>
      %255 = vector.transpose %31, [] : vector<i32> to vector<i32>
      %256 = bufferization.to_tensor %alloc_11 : memref<2x2x2xi16>
      %257 = arith.cmpi ne, %extracted, %extracted : i64
      %258 = arith.floordivsi %c32381_i16, %c32381_i16 : i16
      %259 = index.mul %c8, %62
      %260 = math.log2 %from_elements : tensor<2x2x2xf32>
      %generated_50 = tensor.generate %79 {
      ^bb0(%arg0: index):
        %264 = memref.realloc %181 : memref<2xi16> to memref<2xi16>
        %265 = arith.remf %cst_0, %cst_0 : f32
        %266 = math.fpowi %10, %212 : tensor<2x2x7xf32>, tensor<2x2x7xi32>
        %267 = math.floor %4 : tensor<2x2x2xf32>
        tensor.yield %cst_4 : f16
      } : tensor<?xf16>
      %261 = math.ceil %12 : tensor<2x2x2xf16>
      %262 = math.log10 %183 : f16
      %263 = arith.mulf %cst_0, %93 : f32
    }
    vector.print %43 : vector<4xi1>
    %229 = scf.while (%arg0 = %c1_i64) : (i64) -> i64 {
      %249 = arith.ceildivsi %165, %false : i1
      %250 = index.maxu %60, %rank_38
      %251 = arith.negf %cst_3 : f32
      %252 = math.tanh %120 : tensor<2x2x7xf16>
      %253 = affine.min affine_map<(d0, d1, d2, d3) -> ((d1 mod 32 + d2) floordiv 64)>(%139, %192, %37, %rank)
      %254 = math.absf %12 : tensor<2x2x2xf16>
      %255 = affine.for %arg1 = 0 to 116 iter_args(%arg2 = %250) -> (index) {
        affine.yield %175 : index
      }
      %256 = vector.insert %106, %86 [0, 0] : vector<2xf32> into vector<2x2x2xf32>
      scf.condition(%165) %arg0 : i64
    } do {
    ^bb0(%arg0: i64):
      %249 = vector.broadcast %179 : f16 to vector<4x4xf16>
      %250 = vector.outerproduct %118, %193, %249 {kind = #vector.kind<minf>} : vector<4xf16>, vector<4xf16>
      %251 = affine.min affine_map<(d0, d1, d2) -> ((d0 floordiv 128) * 16, (d0 floordiv 32) floordiv 64)>(%c13, %c5, %c6)
      %252 = vector.create_mask %192 : vector<2xi1>
      %253 = math.ctlz %2 : tensor<2xi16>
      %254 = math.exp %12 : tensor<2x2x2xf16>
      %255 = math.exp2 %15 : tensor<2x2x2xf16>
      %256 = bufferization.clone %alloc_6 : memref<2x2x2xi32> to memref<2x2x2xi32>
      %cst_50 = arith.constant 0x4E46772F : f32
      %c1_i64_51 = arith.constant 1 : i64
      %257 = vector.transfer_read %13[%c0, %198], %c1_i64_51 : tensor<4x2xi64>, vector<4xi64>
      %258 = math.ceil %4 : tensor<2x2x2xf32>
      %259 = arith.remf %179, %cst_4 : f16
      %260 = memref.load %100[] : memref<f16>
      %261 = arith.cmpf ogt, %cst_0, %145 : f32
      %from_elements_52 = tensor.from_elements %c32381_i16, %c32381_i16, %c-26606_i16, %c-26606_i16, %c32381_i16, %c32381_i16, %c-26606_i16, %c32381_i16 : tensor<2x2x2xi16>
      %262 = vector.insert %c-26606_i16, %84 [0] : i16 into vector<2xi16>
      %263 = math.atan2 %214, %214 : tensor<4x2xf32>
      scf.yield %c1_i64 : i64
    }
    %230 = bufferization.to_memref %cast : memref<?x?x?xf16>
    %231 = index.floordivs %104, %40
    %232 = vector.broadcast %c-26606_i16 : i16 to vector<2x2xi16>
    %233 = vector.outerproduct %82, %84, %232 {kind = #vector.kind<maxsi>} : vector<2xi16>, vector<2xi16>
    %234 = affine.for %arg0 = 0 to 69 iter_args(%arg1 = %207) -> (vector<4xf16>) {
      affine.yield %19 : vector<4xf16>
    }
    memref.assume_alignment %alloc_16, 1 : memref<2x2x7xf32>
    %235 = math.copysign %120, %46 : tensor<2x2x7xf16>
    %236 = index.sizeof
    %237 = arith.shrui %extracted, %c1127819723_i64 : i64
    %238 = arith.minsi %202, %165 : i1
    %239 = arith.shli %c1415562437_i64, %c1415562437_i64 : i64
    %240 = index.divs %51, %rank_38
    %241 = index.castu %false_47 : i1 to index
    %242 = math.sqrt %4 : tensor<2x2x2xf32>
    %243 = tensor.empty() : tensor<2x2x2xi1>
    %244 = memref.atomic_rmw minf %cst_1, %alloc_8[%c0, %c0, %c3] : (f16, memref<2x2x7xf16>) -> f16
    %245 = tensor.empty() : tensor<2x2x2xi32>
    %246 = linalg.copy ins(%1 : tensor<2x2x2xi32>) outs(%245 : tensor<2x2x2xi32>) -> tensor<2x2x2xi32>
    %alloc_48 = memref.alloc() : memref<7x2x2xi16>
    linalg.transpose ins(%splat_42 : tensor<2x2x7xi16>) outs(%alloc_48 : memref<7x2x2xi16>) permutation = [2, 0, 1] 
    %alloc_49 = memref.alloc() : memref<2xi1>
    linalg.reduce ins(%6 : tensor<4x2xi1>) outs(%alloc_49 : memref<2xi1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %249 = math.log2 %cst_36 : f16
        %250 = vector.create_mask %c1, %175 : vector<4x2xi1>
        %251 = tensor.empty(%60) : tensor<2x2x?xi64>
        %252 = index.maxs %198, %c9
        %253 = affine.if affine_set<(d0, d1, d2, d3) : (d0 mod 2 == 0, ((d0 - d1) floordiv 2) * 32 >= 0, ((d0 - d1) floordiv 2) * 32 + 16 == 0)>(%c5, %c13, %c10, %c14) -> memref<2xf32> {
          %256 = arith.maxui %c1_i64, %c1415562437_i64 : i64
          %257 = index.maxs %rank_43, %160
          memref.assume_alignment %alloc_7, 8 : memref<4x2xf32>
          %258 = vector.broadcast %cst : f32 to vector<2xf32>
          %259 = vector.fma %258, %258, %143 : vector<2xf32>
          %260 = bufferization.clone %alloc_18 : memref<4x2xi32> to memref<4x2xi32>
          %261 = affine.min affine_map<(d0) -> ((d0 * 8) ceildiv 16, d0 * 4096, d0 floordiv 128)>(%241)
          %262 = math.copysign %14, %14 : tensor<4x2xf32>
          %splat_51 = tensor.splat %cst_3 : tensor<4x2xf32>
          %alloc_52 = memref.alloc() : memref<2xf32>
          affine.yield %alloc_52 : memref<2xf32>
        } else {
          %256 = vector.flat_transpose %19 {columns = 2 : i32, rows = 2 : i32} : vector<4xf16> -> vector<4xf16>
          %257 = math.absf %10 : tensor<2x2x7xf32>
          %258 = arith.ceildivsi %c-26606_i16, %c32381_i16 : i16
          memref.copy %181, %155 : memref<2xi16> to memref<2xi16>
          %259 = arith.remsi %c-26606_i16, %c32381_i16 : i16
          %260 = bufferization.clone %alloc_12 : memref<2xi16> to memref<2xi16>
          %261 = bufferization.to_tensor %alloc_5 : memref<2x2x2xf32>
          %262 = arith.negf %cst_0 : f32
          %alloc_51 = memref.alloc() : memref<2xf32>
          affine.yield %alloc_51 : memref<2xf32>
        }
        %254 = index.maxu %190, %c13
        %255 = tensor.empty() : tensor<2x2x7xf32>
        memref.copy %alloc_20, %alloc_13 : memref<2xi32> to memref<2xi32>
        %false_50 = arith.constant false
        linalg.yield %false_50 : i1
      }
    %247 = scf.parallel (%arg0) = (%c6) to (%c10) step (%c12) init (%15) -> tensor<2x2x2xf16> {
      scf.execute_region {
        memref.tensor_store %14, %alloc_7 : memref<4x2xf32>
        %262 = bufferization.to_memref %16 : memref<2x2x2xi16>
        %263 = math.ceil %145 : f32
        %264 = math.log1p %214 : tensor<4x2xf32>
        %265 = vector.reduction <mul>, %84 : vector<2xi16> into i16
        %266 = math.absf %10 : tensor<2x2x7xf32>
        %267 = affine.load %138[%c11] : memref<2xf16>
        %268 = vector.broadcast %145 : f32 to vector<4x4xf32>
        %269 = vector.outerproduct %44, %115, %268 {kind = #vector.kind<maxf>} : vector<4xf32>, vector<4xf32>
        %270 = index.maxs %arg0, %223
        %271 = arith.shrsi %c-26606_i16, %c-26606_i16 : i16
        %272 = arith.negf %145 : f32
        %273 = math.fpowi %145, %c1138427490_i32 : f32, i32
        %274 = index.casts %139 : index to i32
        %rank_51 = tensor.rank %2 : tensor<2xi16>
        %275 = math.round %cst_3 : f32
        %276 = bufferization.to_memref %243 : memref<2x2x2xi1>
        scf.yield
      }
      %249 = vector.shuffle %150, %150 [1] : vector<2xi16>, vector<2xi16>
      affine.store %c1474615974_i32, %alloc_13[%c12] : memref<2xi32>
      %250 = vector.insertelement %cst_3, %106[%rank_38 : index] : vector<2xf32>
      %251 = arith.remf %93, %145 : f32
      scf.index_switch %231 
      case 1 {
        %262 = arith.maxui %false, %true : i1
        %263 = vector.broadcast %c-26606_i16 : i16 to vector<i16>
        vector.transfer_write %263, %181[%236] : vector<i16>, memref<2xi16>
        %264 = affine.min affine_map<(d0, d1) -> (0, -64)>(%rank_38, %178)
        %265 = affine.load %alloc_16[%c5, %c13, %c2] : memref<2x2x7xf32>
        %splat_51 = tensor.splat %cst_4 : tensor<2xf16>
        %266 = math.log10 %4 : tensor<2x2x2xf32>
        %267 = bufferization.to_memref %9 : memref<4x2xi1>
        %268 = arith.divui %extracted, %extracted : i64
        %269 = arith.andi %false, %false_47 : i1
        %270 = arith.ori %202, %202 : i1
        %271 = bufferization.to_tensor %138 : memref<2xf16>
        %272 = bufferization.clone %138 : memref<2xf16> to memref<2xf16>
        %cast_52 = tensor.cast %128 : tensor<4x7xi1> to tensor<?x?xi1>
        %273 = math.log10 %cst_1 : f16
        %274 = index.ceildivs %192, %178
        %275 = math.fpowi %15, %1 : tensor<2x2x2xf16>, tensor<2x2x2xi32>
        scf.yield
      }
      default {
        %262 = index.maxs %231, %c9
        %263 = arith.cmpf ule, %93, %cst_0 : f32
        %264 = arith.minf %145, %cst_3 : f32
        %265 = math.ctpop %false_2 : i1
        %266 = arith.divui %c1_i64, %c1600625636_i64 : i64
        %267 = index.sizeof
        %268 = math.ctlz %1 : tensor<2x2x2xi32>
        %269 = math.tan %4 : tensor<2x2x2xf32>
        %270 = arith.minui %false_25, %false_2 : i1
        %271 = index.divs %80, %c11
        %272 = arith.negf %cst : f32
        %273 = math.cttz %false_47 : i1
        %274 = memref.atomic_rmw assign %c1474615974_i32, %alloc_20[%c1] : (i32, memref<2xi32>) -> i32
        %275 = math.powf %20, %11 : tensor<2xf16>
        %276 = index.sizeof
        affine.store %c1138427490_i32, %alloc_6[%c2, %c13, %c10] : memref<2x2x2xi32>
      }
      %252 = index.sizeof
      %253 = arith.maxsi %c1138427490_i32, %c1099344021_i32 : i32
      %254 = math.expm1 %cst_36 : f16
      %255 = index.floordivs %62, %80
      %256 = arith.muli %true_33, %false : i1
      %257 = arith.minsi %c1415562437_i64, %c1_i64 : i64
      %alloca_50 = memref.alloca() : memref<4x2xf16>
      %258 = arith.minui %c32381_i16, %c-26606_i16 : i16
      %259 = arith.mulf %cst_0, %93 : f32
      %260 = index.maxu %255, %236
      %261 = tensor.empty() : tensor<2x2x2xf16>
      scf.reduce(%261)  : tensor<2x2x2xf16> {
      ^bb0(%arg1: tensor<2x2x2xf16>, %arg2: tensor<2x2x2xf16>):
        memref.copy %alloc_13, %alloc_20 : memref<2xi32> to memref<2xi32>
        %262 = arith.remsi %extracted, %c1600625636_i64 : i64
        %263 = math.absf %46 : tensor<2x2x7xf16>
        %264 = arith.divui %false, %true_21 : i1
        %265 = bufferization.to_tensor %alloc_18 : memref<4x2xi32>
        %266 = math.cttz %131 : tensor<4x2xi1>
        %cast_51 = tensor.cast %15 : tensor<2x2x2xf16> to tensor<?x?x?xf16>
        %267 = arith.remsi %c1127819723_i64, %c1_i64 : i64
        %268 = tensor.empty() : tensor<2x2x2xf16>
        scf.reduce.return %268 : tensor<2x2x2xf16>
      }
      scf.yield
    }
    %248 = affine.vector_load %155[%rank_43] : memref<2xi16>, vector<2xi16>
    affine.vector_store %67, %alloc_12[%158] : memref<2xi16>, vector<4xi16>
    vector.print %19 : vector<4xf16>
    vector.print %31 : vector<i32>
    vector.print %42 : vector<4xf32>
    vector.print %43 : vector<4xi1>
    vector.print %44 : vector<4xf32>
    vector.print %66 : vector<4xi16>
    vector.print %67 : vector<4xi16>
    vector.print %82 : vector<2xi16>
    vector.print %83 : vector<2xi1>
    vector.print %84 : vector<2xi16>
    vector.print %86 : vector<2x2x2xf32>
    vector.print %91 : vector<4xf16>
    vector.print %106 : vector<2xf32>
    vector.print %115 : vector<4xf32>
    vector.print %118 : vector<4xf16>
    vector.print %126 : vector<4x2xi16>
    vector.print %143 : vector<2xf32>
    vector.print %150 : vector<2xi16>
    vector.print %166 : vector<2xi1>
    vector.print %193 : vector<4xf16>
    vector.print %207 : vector<4xf16>
    vector.print %213 : vector<4xf16>
    vector.print %248 : vector<2xi16>
    vector.print %cst : f32
    vector.print %c1415562437_i64 : i64
    vector.print %c1138427490_i32 : i32
    vector.print %cst_0 : f32
    vector.print %c1099344021_i32 : i32
    vector.print %c1127819723_i64 : i64
    vector.print %c1474615974_i32 : i32
    vector.print %true : i1
    vector.print %false : i1
    vector.print %c-26606_i16 : i16
    vector.print %cst_1 : f16
    vector.print %false_2 : i1
    vector.print %c32381_i16 : i16
    vector.print %c1600625636_i64 : i64
    vector.print %cst_3 : f32
    vector.print %cst_4 : f16
    vector.print %true_21 : i1
    vector.print %38 : i32
    vector.print %false_25 : i1
    vector.print %93 : f32
    vector.print %97 : i32
    vector.print %true_32 : i1
    vector.print %true_33 : i1
    vector.print %145 : f32
    vector.print %extracted : i64
    vector.print %165 : i1
    vector.print %cst_36 : f16
    vector.print %179 : f16
    vector.print %183 : f16
    vector.print %202 : i1
    vector.print %c1_i64 : i64
    vector.print %false_47 : i1
    return
  }
}
