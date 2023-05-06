module {
  func.func nested @func1(%arg0: i16, %arg1: index) {
    %cst = arith.constant 0x4E285102 : f32
    %c196612051_i64 = arith.constant 196612051 : i64
    %cst_0 = arith.constant 0x4E0990EB : f32
    %c1554310511_i64 = arith.constant 1554310511 : i64
    %cst_1 = arith.constant 1.69540992E+9 : f32
    %c32507_i16 = arith.constant 32507 : i16
    %c661261267_i32 = arith.constant 661261267 : i32
    %c833196896_i32 = arith.constant 833196896 : i32
    %cst_2 = arith.constant 1.95141683E+9 : f32
    %c1299741594_i64 = arith.constant 1299741594 : i64
    %false = arith.constant false
    %c-6837_i16 = arith.constant -6837 : i16
    %cst_3 = arith.constant 3.340800e+04 : f16
    %false_4 = arith.constant false
    %c1039931041_i64 = arith.constant 1039931041 : i64
    %c-11797_i16 = arith.constant -11797 : i16
    %0 = tensor.empty() : tensor<7xi32>
    %1 = tensor.empty() : tensor<13x13x5xi16>
    %2 = tensor.empty() : tensor<2xf32>
    %3 = tensor.empty() : tensor<2xf32>
    %4 = tensor.empty() : tensor<7xi64>
    %5 = tensor.empty() : tensor<7xi32>
    %6 = tensor.empty() : tensor<7xi64>
    %7 = tensor.empty() : tensor<2x2x7xf32>
    %8 = tensor.empty() : tensor<7xi1>
    %9 = tensor.empty() : tensor<2xf32>
    %10 = tensor.empty() : tensor<2xi1>
    %11 = tensor.empty() : tensor<13x13x5xi64>
    %12 = tensor.empty() : tensor<2x2x7xi16>
    %13 = tensor.empty() : tensor<13x13x5xi1>
    %14 = tensor.empty() : tensor<7xi1>
    %15 = tensor.empty() : tensor<2xi1>
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
    %alloc = memref.alloc() : memref<13x13x5xi1>
    %alloc_5 = memref.alloc() : memref<2xi32>
    %alloc_6 = memref.alloc() : memref<2x2x7xf32>
    %alloc_7 = memref.alloc() : memref<2xi32>
    %alloc_8 = memref.alloc() : memref<2x2x7xi1>
    %alloc_9 = memref.alloc() : memref<2xi1>
    %alloc_10 = memref.alloc() : memref<13x13x5xi64>
    %alloc_11 = memref.alloc() : memref<2x2x7xi32>
    %alloc_12 = memref.alloc() : memref<7xi1>
    %alloc_13 = memref.alloc() : memref<2xi16>
    %alloc_14 = memref.alloc() : memref<2xf16>
    %alloc_15 = memref.alloc() : memref<13x13x5xi1>
    %alloc_16 = memref.alloc() : memref<2xf16>
    %alloc_17 = memref.alloc() : memref<2x2x7xi16>
    %alloc_18 = memref.alloc() : memref<13x13x5xf16>
    %alloc_19 = memref.alloc() : memref<2xi32>
    %16 = tensor.empty() : tensor<13x13x5xi64>
    %17 = linalg.copy ins(%11 : tensor<13x13x5xi64>) outs(%16 : tensor<13x13x5xi64>) -> tensor<13x13x5xi64>
    %18 = tensor.empty() : tensor<2xi1>
    %transposed = linalg.transpose ins(%10 : tensor<2xi1>) outs(%18 : tensor<2xi1>) permutation = [0] 
    %19 = tensor.empty() : tensor<f32>
    %reduced = linalg.reduce ins(%2 : tensor<2xf32>) outs(%19 : tensor<f32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %250 = vector.broadcast %c-6837_i16 : i16 to vector<1xi16>
        %251 = vector.multi_reduction <and>, %250, %250 [] : vector<1xi16> to vector<1xi16>
        %252 = math.tan %cst_1 : f32
        %253 = arith.maxsi %c661261267_i32, %c661261267_i32 : i32
        %254 = math.absi %6 : tensor<7xi64>
        %255 = affine.load %alloc_16[%c11] : memref<2xf16>
        %256 = index.divu %c10, %c6
        memref.tensor_store %18, %alloc_9 : memref<2xi1>
        %257 = scf.if %false -> (memref<2xi16>) {
          %alloc_50 = memref.alloc() : memref<2xi16>
          %258 = memref.load %alloc_6[%c0, %c0, %c5] : memref<2x2x7xf32>
          %259 = arith.shli %c1039931041_i64, %c1299741594_i64 : i64
          %260 = bufferization.clone %alloc : memref<13x13x5xi1> to memref<13x13x5xi1>
          %261 = affine.apply affine_map<(d0, d1, d2, d3) -> (0)>(%c8, %c7, %c0, %c8)
          %262 = arith.minsi %c196612051_i64, %c1039931041_i64 : i64
          %263 = vector.broadcast %c-6837_i16 : i16 to vector<2xi16>
          %264 = vector.broadcast %false_4 : i1 to vector<2xi1>
          %265 = vector.broadcast %c833196896_i32 : i32 to vector<2xi32>
          %266 = vector.gather %alloc_17[%c5, %c4, %c7] [%265], %264, %263 : memref<2x2x7xi16>, vector<2xi32>, vector<2xi1>, vector<2xi16> into vector<2xi16>
          vector.print %266 : vector<2xi16>
          scf.yield %alloc_13 : memref<2xi16>
        } else {
          %258 = index.castu %c3 : index to i32
          %259 = math.exp2 %7 : tensor<2x2x7xf32>
          %260 = index.castu %c6 : index to i32
          %c1841490901_i32 = arith.constant 1841490901 : i32
          %261 = math.ceil %cst_2 : f32
          %262 = vector.broadcast %c-11797_i16 : i16 to vector<7x5xi16>
          %263 = vector.broadcast %c-11797_i16 : i16 to vector<5xi16>
          %dest, %accumulated_value = vector.scan <minui>, %262, %263 {inclusive = true, reduction_dim = 0 : i64} : vector<7x5xi16>, vector<5xi16>
          %264 = arith.cmpi ult, %c-11797_i16, %c32507_i16 : i16
          %265 = math.absi %c1039931041_i64 : i64
          scf.yield %alloc_13 : memref<2xi16>
        }
        %cst_49 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_49 : f32
      }
    scf.parallel (%arg2, %arg3) = (%c3, %c1) to (%c11, %c12) step (%c6, %c3) {
      %250 = index.sub %c4, %c2
      %251 = arith.addi %c661261267_i32, %c661261267_i32 : i32
      %252 = vector.broadcast %c1039931041_i64 : i64 to vector<1xi64>
      %253 = vector.insert %c1554310511_i64, %252 [0] : i64 into vector<1xi64>
      %254 = arith.cmpi ult, %c661261267_i32, %c661261267_i32 : i32
      %255 = scf.if %false -> (memref<2xi64>) {
        %263 = arith.maxsi %c1554310511_i64, %c1299741594_i64 : i64
        %264 = arith.subi %c196612051_i64, %c196612051_i64 : i64
        %265 = index.sizeof
        %266 = vector.splat %cst : vector<7xf32>
        memref.store %c661261267_i32, %alloc_19[%c0] : memref<2xi32>
        %267 = bufferization.to_tensor %alloc_15 : memref<13x13x5xi1>
        %268 = vector.broadcast %cst_0 : f32 to vector<13x13x5xf32>
        %269 = vector.fma %268, %268, %268 : vector<13x13x5xf32>
        %270 = index.sizeof
        %alloc_53 = memref.alloc() : memref<2xi64>
        scf.yield %alloc_53 : memref<2xi64>
      } else {
        %263 = vector.broadcast %c1554310511_i64 : i64 to vector<1x1xi64>
        %264 = vector.outerproduct %252, %252, %263 {kind = #vector.kind<add>} : vector<1xi64>, vector<1xi64>
        affine.store %false, %alloc_12[%c3] : memref<7xi1>
        vector.print %252 : vector<1xi64>
        %265 = vector.broadcast %cst_0 : f32 to vector<13x13x5xf32>
        %266 = vector.fma %265, %265, %265 : vector<13x13x5xf32>
        %267 = math.log2 %3 : tensor<2xf32>
        %rank_53 = tensor.rank %0 : tensor<7xi32>
        %268 = math.tanh %3 : tensor<2xf32>
        %269 = index.divu %c12, %c6
        %alloc_54 = memref.alloc() : memref<2xi64>
        scf.yield %alloc_54 : memref<2xi64>
      }
      affine.store %c833196896_i32, %alloc_19[%c12] : memref<2xi32>
      %256 = vector.broadcast %cst_1 : f32 to vector<7xf32>
      %257 = vector.fma %256, %256, %256 : vector<7xf32>
      %258 = vector.broadcast %cst_0 : f32 to vector<2x2x7xf32>
      %259 = vector.fma %258, %258, %258 : vector<2x2x7xf32>
      %260 = arith.minui %c196612051_i64, %c1039931041_i64 : i64
      %alloc_49 = memref.alloc() : memref<2xf32>
      memref.tensor_store %2, %alloc_49 : memref<2xf32>
      %261 = affine.load %255[%c7] : memref<2xi64>
      %262 = math.sqrt %cst_0 : f32
      %alloc_50 = memref.alloc() : memref<2xi64>
      memref.copy %255, %alloc_50 : memref<2xi64> to memref<2xi64>
      %splat_51 = tensor.splat %cst_3 : tensor<2xf16>
      %inserted_52 = tensor.insert %cst into %7[%c0, %c1, %c1] : tensor<2x2x7xf32>
      scf.execute_region {
        %263 = arith.cmpi slt, %false, %false_4 : i1
        %264 = arith.addf %cst, %cst_1 : f32
        %265 = math.tan %cst_0 : f32
        %cst_53 = arith.constant 1.000000e+00 : f32
        %266 = vector.transfer_read %9[%c0], %cst_53 : tensor<2xf32>, vector<f32>
        %267 = vector.extract_strided_slice %252 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
        %c1880338484_i64 = arith.constant 1880338484 : i64
        %268 = vector.broadcast %c5 : index to vector<2xindex>
        %269 = vector.broadcast %false_4 : i1 to vector<2xi1>
        %270 = vector.broadcast %c833196896_i32 : i32 to vector<2xi32>
        vector.scatter %alloc_7[%c1] [%268], %269, %270 : memref<2xi32>, vector<2xindex>, vector<2xi1>, vector<2xi32>
        %271 = vector.broadcast %cst_53 : f32 to vector<7xf32>
        %272 = vector.fma %271, %271, %257 : vector<7xf32>
        %273 = math.log2 %7 : tensor<2x2x7xf32>
        %274 = vector.reduction <mul>, %257 : vector<7xf32> into f32
        %275 = math.ctpop %5 : tensor<7xi32>
        %false_54 = index.bool.constant false
        %276 = math.rsqrt %19 : tensor<f32>
        %277 = vector.broadcast %cst : f32 to vector<2x7xf32>
        %278 = vector.insert %277, %258 [0] : vector<2x7xf32> into vector<2x2x7xf32>
        %279 = math.expm1 %3 : tensor<2xf32>
        %280 = arith.addf %cst_3, %cst_3 : f16
        scf.yield
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_15[%c8, %c3, %c14] : memref<13x13x5xi1>, vector<13xi1>
    affine.vector_store %20, %alloc[%c7, %c12, %c1] : memref<13x13x5xi1>, vector<13xi1>
    %alloc_20 = memref.alloc() : memref<2xi32>
    %21 = tensor.empty() : tensor<i32>
    %22 = linalg.dot ins(%alloc_7, %alloc_20 : memref<2xi32>, memref<2xi32>) outs(%21 : tensor<i32>) -> tensor<i32>
    %23 = memref.load %alloc[%c11, %c2, %c0] : memref<13x13x5xi1>
    %24 = arith.subi %false, %false_4 : i1
    %25 = math.sqrt %cst : f32
    %26 = affine.apply affine_map<(d0) -> (0)>(%c12)
    %27 = arith.maxui %c661261267_i32, %c661261267_i32 : i32
    %28 = math.cttz %5 : tensor<7xi32>
    %29 = index.castu %c3 : index to i32
    %collapsed = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<2x2x7xi16> into tensor<4x7xi16>
    %splat = tensor.splat %c-6837_i16 : tensor<7xi16>
    %30 = math.log10 %cst_2 : f32
    %31 = scf.execute_region -> tensor<7xi32> {
      %250 = vector.broadcast %cst_0 : f32 to vector<2x2x7xf32>
      %251 = vector.fma %250, %250, %250 : vector<2x2x7xf32>
      %252 = scf.execute_region -> tensor<7xi1> {
        vector.print %20 : vector<13xi1>
        %true_51 = arith.constant true
        %false_52 = arith.constant false
        %269 = vector.transfer_read %alloc_15[%c7, %c6, %c8], %false_52 : memref<13x13x5xi1>, vector<i1>
        %270 = index.castu %c6 : index to i32
        %271 = math.ipowi %c1554310511_i64, %c1039931041_i64 : i64
        %272 = affine.apply affine_map<(d0) -> (0)>(%c15)
        %273 = affine.apply affine_map<(d0) -> (0)>(%c2)
        %alloc_53 = memref.alloc() : memref<7x2xi16>
        %274 = tensor.empty() : tensor<4x2xi16>
        %275 = linalg.matmul ins(%collapsed, %alloc_53 : tensor<4x7xi16>, memref<7x2xi16>) outs(%274 : tensor<4x2xi16>) -> tensor<4x2xi16>
        %276 = math.cos %7 : tensor<2x2x7xf32>
        %277 = arith.mulf %cst_0, %cst_1 : f32
        %278 = bufferization.clone %alloc_7 : memref<2xi32> to memref<2xi32>
        %279 = affine.apply affine_map<(d0) -> ((d0 floordiv 2) floordiv 4)>(%c2)
        %280 = vector.matrix_multiply %20, %20 {lhs_columns = 13 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<13xi1>, vector<13xi1>) -> vector<1xi1>
        %281 = math.log10 %cst_2 : f32
        %282 = math.absf %cst_1 : f32
        %283 = math.sqrt %reduced : tensor<f32>
        %284 = index.ceildivu %c1, %c9
        scf.yield %8 : tensor<7xi1>
      }
      %253 = arith.maxui %c196612051_i64, %c1039931041_i64 : i64
      %254 = bufferization.to_tensor %alloc_12 : memref<7xi1>
      %255 = vector.broadcast %c1554310511_i64 : i64 to vector<2x2x7xi64>
      %256 = vector.broadcast %false_4 : i1 to vector<2x2x7xi1>
      %257 = vector.broadcast %c661261267_i32 : i32 to vector<2x2x7xi32>
      %258 = vector.gather %alloc_10[%c12, %c8, %c4] [%257], %256, %255 : memref<13x13x5xi64>, vector<2x2x7xi32>, vector<2x2x7xi1>, vector<2x2x7xi64> into vector<2x2x7xi64>
      %259 = arith.remf %cst_0, %cst_0 : f32
      %true_49 = index.bool.constant true
      %260 = scf.execute_region -> memref<7xi64> {
        %269 = arith.maxsi %c1554310511_i64, %c196612051_i64 : i64
        %270 = vector.broadcast %cst_0 : f32 to vector<13x13x5xf32>
        %271 = vector.fma %270, %270, %270 : vector<13x13x5xf32>
        %272 = vector.broadcast %c1 : index to vector<2xindex>
        %273 = vector.broadcast %false : i1 to vector<2xi1>
        %274 = vector.broadcast %c-6837_i16 : i16 to vector<2xi16>
        vector.scatter %alloc_13[%c0] [%272], %273, %274 : memref<2xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
        %alloc_51 = memref.alloc() : memref<f32>
        memref.tensor_store %19, %alloc_51 : memref<f32>
        %275 = math.absi %c-11797_i16 : i16
        %rank_52 = tensor.rank %6 : tensor<7xi64>
        %276 = arith.maxsi %false_4, %false_4 : i1
        memref.copy %alloc_5, %alloc_19 : memref<2xi32> to memref<2xi32>
        bufferization.dealloc_tensor %6 : tensor<7xi64>
        %277 = arith.addi %false_4, %false : i1
        %278 = arith.ceildivsi %c1039931041_i64, %c196612051_i64 : i64
        %279 = bufferization.clone %alloc_7 : memref<2xi32> to memref<2xi32>
        %280 = vector.broadcast %c833196896_i32 : i32 to vector<2x7xi32>
        %281 = vector.multi_reduction <maxsi>, %257, %280 [1] : vector<2x2x7xi32> to vector<2x7xi32>
        %282 = arith.remf %cst_1, %cst : f32
        %283 = memref.load %alloc_10[%c2, %c7, %c0] : memref<13x13x5xi64>
        %284 = vector.splat %c10 : vector<2xindex>
        %alloc_53 = memref.alloc() : memref<7xi64>
        scf.yield %alloc_53 : memref<7xi64>
      }
      %261 = affine.for %arg2 = 0 to 13 iter_args(%arg3 = %c7) -> (index) {
        affine.yield %c15 : index
      }
      %262 = arith.addi %false, %false : i1
      %263 = vector.extract %20[9] : vector<13xi1>
      %264 = scf.while (%arg2 = %c833196896_i32) : (i32) -> i32 {
        %269 = index.maxu %c4, %c0
        %splat_51 = tensor.splat %cst_0 : tensor<13x13x5xf32>
        %270 = affine.load %alloc_19[%c7] : memref<2xi32>
        %271 = math.roundeven %7 : tensor<2x2x7xf32>
        %272 = index.castu %c7 : index to i32
        %273 = affine.apply affine_map<(d0, d1, d2, d3) -> (0)>(%c9, %c10, %c14, %c1)
        %274 = tensor.empty() : tensor<7xi1>
        %275 = index.castu %c7 : index to i32
        scf.condition(%true_49) %arg2 : i32
      } do {
      ^bb0(%arg2: i32):
        %269 = math.cttz %c32507_i16 : i16
        %270 = index.casts %c7 : index to i32
        %271 = arith.remui %c-11797_i16, %c-6837_i16 : i16
        %alloc_51 = memref.alloc() : memref<13x13x5xi64>
        memref.copy %alloc_10, %alloc_51 : memref<13x13x5xi64> to memref<13x13x5xi64>
        %272 = math.log10 %2 : tensor<2xf32>
        %273 = arith.subi %c661261267_i32, %arg2 : i32
        %274 = vector.reduction <and>, %20 : vector<13xi1> into i1
        %275 = math.absi %0 : tensor<7xi32>
        %276 = vector.extract %250[1] : vector<2x2x7xf32>
        %277 = math.log10 %19 : tensor<f32>
        %alloca_52 = memref.alloca() : memref<2x2x7xf16>
        %278 = memref.load %260[%c2] : memref<7xi64>
        %279 = arith.subi %c-6837_i16, %c32507_i16 : i16
        affine.store %false_4, %alloc[%c9, %c12, %c8] : memref<13x13x5xi1>
        %280 = math.powf %2, %3 : tensor<2xf32>
        %281 = affine.max affine_map<(d0, d1) -> (d1 + 16, (d1 + 16) * 128, d0 + d1, (d1 + 16) * 128)>(%c10, %c4)
        scf.yield %c661261267_i32 : i32
      }
      %cst_50 = arith.constant 1.000000e+00 : f32
      %265 = vector.transfer_read %3[%c13], %cst_50 : tensor<2xf32>, vector<f32>
      %c1_i64 = arith.constant 1 : i64
      %c0_i64 = arith.constant 0 : i64
      %266 = vector.transfer_read %4[%c1], %c0_i64 : tensor<7xi64>, vector<i64>
      %267 = math.floor %9 : tensor<2xf32>
      %268 = arith.andi %c1554310511_i64, %c1299741594_i64 : i64
      scf.yield %0 : tensor<7xi32>
    }
    %32 = math.cttz %transposed : tensor<2xi1>
    %33 = math.exp %7 : tensor<2x2x7xf32>
    %34 = arith.remui %c661261267_i32, %c833196896_i32 : i32
    %35 = vector.reduction <or>, %20 : vector<13xi1> into i1
    %36 = math.log10 %cst_3 : f16
    %splat_21 = tensor.splat %c32507_i16 : tensor<2x2x7xi16>
    %37 = math.atan %7 : tensor<2x2x7xf32>
    %38 = math.sqrt %9 : tensor<2xf32>
    scf.index_switch %c9 
    case 1 {
      %250 = math.round %cst_3 : f16
      memref.tensor_store %18, %alloc_9 : memref<2xi1>
      %collapsed_49 = tensor.collapse_shape %17 [[0, 1], [2]] : tensor<13x13x5xi64> into tensor<169x5xi64>
      %251 = math.ceil %cst_1 : f32
      %252 = arith.maxui %c32507_i16, %c32507_i16 : i16
      %253 = arith.minui %false_4, %false_4 : i1
      %c0_i32 = arith.constant 0 : i32
      %254 = vector.transfer_read %0[%c10], %c0_i32 : tensor<7xi32>, vector<i32>
      %255 = scf.while (%arg2 = %20) : (vector<13xi1>) -> vector<13xi1> {
        %264 = arith.negf %cst : f32
        %265 = index.divs %c1, %c7
        %266 = vector.broadcast %false : i1 to vector<13x13xi1>
        %267 = vector.outerproduct %20, %20, %266 {kind = #vector.kind<or>} : vector<13xi1>, vector<13xi1>
        %268 = math.floor %9 : tensor<2xf32>
        %269 = arith.andi %c32507_i16, %c-11797_i16 : i16
        %270 = vector.shuffle %20, %20 [1, 2, 3, 5, 10, 11, 12, 13, 14, 18, 19, 21, 22, 25] : vector<13xi1>, vector<13xi1>
        %271 = index.mul %c12, %c1
        affine.store %c32507_i16, %alloc_13[%c10] : memref<2xi16>
        scf.condition(%false_4) %20 : vector<13xi1>
      } do {
      ^bb0(%arg2: vector<13xi1>):
        %264 = math.absi %splat : tensor<7xi16>
        %265 = index.mul %c11, %c8
        %266 = math.floor %3 : tensor<2xf32>
        %267 = arith.divf %cst_3, %cst_3 : f16
        %268 = index.castu %c15 : index to i32
        %269 = math.floor %9 : tensor<2xf32>
        %270 = math.tan %reduced : tensor<f32>
        %271 = arith.remui %c-11797_i16, %c32507_i16 : i16
        bufferization.dealloc_tensor %reduced : tensor<f32>
        %272 = vector.multi_reduction <and>, %20, %false_4 [0] : vector<13xi1> to i1
        %273 = math.exp %7 : tensor<2x2x7xf32>
        memref.tensor_store %13, %alloc_15 : memref<13x13x5xi1>
        %274 = math.floor %3 : tensor<2xf32>
        memref.store %false_4, %alloc[%c12, %c1, %c0] : memref<13x13x5xi1>
        %275 = math.rsqrt %3 : tensor<2xf32>
        %276 = arith.cmpi ult, %false_4, %false_4 : i1
        scf.yield %20 : vector<13xi1>
      }
      %256 = arith.remui %c-6837_i16, %c-6837_i16 : i16
      %257 = index.divu %c11, %c2
      %258 = arith.andi %c-11797_i16, %c32507_i16 : i16
      %cst_50 = arith.constant 1.000000e+00 : f32
      %259 = vector.transfer_read %9[%c4], %cst_50 : tensor<2xf32>, vector<f32>
      %260 = arith.andi %c-11797_i16, %c-6837_i16 : i16
      %261 = math.roundeven %19 : tensor<f32>
      %262 = arith.cmpi sle, %c1554310511_i64, %c1299741594_i64 : i64
      %263 = tensor.empty() : tensor<7xi1>
      %mapped_51 = linalg.map ins(%8, %14 : tensor<7xi1>, tensor<7xi1>) outs(%263 : tensor<7xi1>)
        (%in: i1, %in_52: i1) {
          %264 = arith.andi %c1039931041_i64, %c196612051_i64 : i64
          memref.store %in, %alloc_8[%c0, %c1, %c3] : memref<2x2x7xi1>
          %265 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %20, %20, %in : vector<13xi1>, vector<13xi1> into i1
          %266 = arith.remui %c661261267_i32, %c0_i32 : i32
          %267 = arith.maxui %c-11797_i16, %c32507_i16 : i16
          %268 = arith.minui %false, %in : i1
          %269 = bufferization.to_tensor %alloc_15 : memref<13x13x5xi1>
          %270 = arith.shrsi %c0_i32, %c833196896_i32 : i32
          %271 = math.log2 %reduced : tensor<f32>
          %272 = math.sqrt %3 : tensor<2xf32>
          %273 = vector.broadcast %cst_2 : f32 to vector<13x13x5xf32>
          %c-1560_i16 = arith.constant -1560 : i16
          %274 = bufferization.clone %alloc_9 : memref<2xi1> to memref<2xi1>
          %275 = math.cttz %0 : tensor<7xi32>
          %276 = math.log2 %3 : tensor<2xf32>
          %277 = vector.shuffle %20, %20 [4, 7, 10, 13, 16, 19, 25] : vector<13xi1>, vector<13xi1>
          %278 = index.divu %c5, %c15
          %279 = arith.remui %false_4, %false_4 : i1
          %280 = vector.broadcast %c1039931041_i64 : i64 to vector<i64>
          %281 = vector.transfer_write %280, %6[%c14] : vector<i64>, tensor<7xi64>
          %282 = math.rsqrt %9 : tensor<2xf32>
          %283 = math.log10 %3 : tensor<2xf32>
          %expanded_53 = tensor.expand_shape %18 [[0, 1]] : tensor<2xi1> into tensor<2x1xi1>
          %rank_54 = tensor.rank %22 : tensor<i32>
          %284 = arith.addi %c-11797_i16, %c32507_i16 : i16
          %285 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %20, %20, %false_4 : vector<13xi1>, vector<13xi1> into i1
          %286 = math.rsqrt %9 : tensor<2xf32>
          %287 = vector.shuffle %20, %20 [0, 1, 8, 14, 15, 16, 19, 22, 23] : vector<13xi1>, vector<13xi1>
          %288 = arith.maxsi %c-6837_i16, %c-11797_i16 : i16
          %289 = affine.max affine_map<(d0, d1, d2) -> (-d1, d2 - 128)>(%c11, %26, %257)
          %c1909182564_i64 = arith.constant 1909182564 : i64
          %290 = index.castu %c8 : index to i32
          %291 = math.exp2 %2 : tensor<2xf32>
          %false_55 = arith.constant false
          linalg.yield %false_55 : i1
        }
      scf.yield
    }
    case 2 {
      %alloc_49 = memref.alloc() : memref<13x13x5xf16>
      memref.copy %alloc_18, %alloc_49 : memref<13x13x5xf16> to memref<13x13x5xf16>
      %250 = math.log2 %cst_3 : f16
      scf.if %false {
        %260 = math.rsqrt %3 : tensor<2xf32>
        %rank_52 = tensor.rank %2 : tensor<2xf32>
        %261 = index.maxu %c12, %rank_52
        %262 = affine.apply affine_map<(d0) -> (d0)>(%c7)
        %263 = arith.maxsi %c32507_i16, %c-6837_i16 : i16
        %264 = arith.andi %c1039931041_i64, %c196612051_i64 : i64
        %265 = arith.addf %cst_2, %cst_0 : f32
        %true_53 = index.bool.constant true
      }
      %251 = vector.broadcast %cst_1 : f32 to vector<2x2x7xf32>
      %252 = vector.fma %251, %251, %251 : vector<2x2x7xf32>
      vector.print %20 : vector<13xi1>
      memref.tensor_store %15, %alloc_9 : memref<2xi1>
      %253 = arith.muli %false, %false : i1
      bufferization.dealloc_tensor %18 : tensor<2xi1>
      %254 = arith.remf %cst_2, %cst_0 : f32
      %rank_50 = tensor.rank %0 : tensor<7xi32>
      %255 = index.divu %c13, %c1
      %256 = math.fma %2, %3, %2 : tensor<2xf32>
      %257 = arith.minf %cst_1, %cst_1 : f32
      %258 = arith.muli %c1299741594_i64, %c1039931041_i64 : i64
      %259 = index.mul %c13, %c15
      %false_51 = index.bool.constant false
      scf.yield
    }
    default {
      %250 = math.exp %cst : f32
      %251 = vector.shuffle %20, %20 [1, 2, 3, 5, 6, 9, 10, 11, 14, 15, 22, 25] : vector<13xi1>, vector<13xi1>
      %252 = tensor.empty() : tensor<7xi1>
      %mapped_49 = linalg.map ins(%14, %alloc_12 : tensor<7xi1>, memref<7xi1>) outs(%252 : tensor<7xi1>)
        (%in: i1, %in_51: i1) {
          %267 = index.sizeof
          %268 = vector.broadcast %in_51 : i1 to vector<13x13xi1>
          %269 = vector.outerproduct %20, %20, %268 {kind = #vector.kind<add>} : vector<13xi1>, vector<13xi1>
          %270 = arith.maxui %c1299741594_i64, %c1554310511_i64 : i64
          %false_52 = index.bool.constant false
          %271 = math.cttz %10 : tensor<2xi1>
          %272 = arith.andi %c1039931041_i64, %c1299741594_i64 : i64
          %alloc_53 = memref.alloc() : memref<2x2x7xi1>
          memref.copy %alloc_8, %alloc_53 : memref<2x2x7xi1> to memref<2x2x7xi1>
          %alloc_54 = memref.alloc() : memref<2xi1>
          %273 = index.divs %c10, %c11
          %274 = math.atan %cst_1 : f32
          %275 = vector.broadcast %false : i1 to vector<13x13xi1>
          %276 = vector.outerproduct %20, %20, %275 {kind = #vector.kind<maxsi>} : vector<13xi1>, vector<13xi1>
          bufferization.dealloc_tensor %1 : tensor<13x13x5xi16>
          %277 = math.cos %cst_0 : f32
          %rank_55 = tensor.rank %22 : tensor<i32>
          %278 = arith.addi %c32507_i16, %c-6837_i16 : i16
          %279 = arith.andi %c-11797_i16, %c-11797_i16 : i16
          %from_elements_56 = tensor.from_elements %c833196896_i32, %c833196896_i32, %c661261267_i32, %c833196896_i32, %c833196896_i32, %c661261267_i32, %c661261267_i32 : tensor<7xi32>
          %c1013669965_i64 = arith.constant 1013669965 : i64
          %280 = vector.multi_reduction <and>, %20, %in_51 [0] : vector<13xi1> to i1
          %alloc_57 = memref.alloc() : memref<2x2x7xf16>
          %281 = index.casts %false : i1 to index
          %282 = vector.reduction <or>, %20 : vector<13xi1> into i1
          %283 = bufferization.to_memref %1 : memref<13x13x5xi16>
          %284 = arith.addi %c833196896_i32, %c833196896_i32 : i32
          %285 = index.ceildivu %c3, %c6
          %286 = vector.reduction <maxsi>, %20 : vector<13xi1> into i1
          %287 = math.exp2 %3 : tensor<2xf32>
          %288 = vector.broadcast %c1299741594_i64 : i64 to vector<5xi64>
          %289 = vector.broadcast %280 : i1 to vector<5xi1>
          %290 = vector.maskedload %alloc_10[%c3, %c7, %c0], %289, %288 : memref<13x13x5xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
          %291 = tensor.empty(%c11) : tensor<2x2x?xi1>
          %extracted = tensor.extract %17[%c0, %c1, %c3] : tensor<13x13x5xi64>
          %292 = bufferization.clone %alloc_13 : memref<2xi16> to memref<2xi16>
          %293 = math.sqrt %9 : tensor<2xf32>
          %true_58 = arith.constant true
          linalg.yield %true_58 : i1
        }
      %253 = math.powf %9, %9 : tensor<2xf32>
      %254 = vector.broadcast %c833196896_i32 : i32 to vector<5xi32>
      %255 = vector.broadcast %false_4 : i1 to vector<5xi1>
      %256 = vector.maskedload %alloc_20[%c1], %255, %254 : memref<2xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
      %257 = math.floor %2 : tensor<2xf32>
      %258 = arith.addf %cst, %cst_0 : f32
      %splat_50 = tensor.splat %cst_3 : tensor<2xf16>
      %259 = affine.min affine_map<(d0) -> (d0 + 8, ((d0 + 1) ceildiv 32) ceildiv 64, (d0 + 1) ceildiv 32, ((d0 + 1) ceildiv 32) ceildiv 64)>(%c3)
      %260 = scf.while (%arg2 = %cst_1) : (f32) -> f32 {
        %267 = math.exp %2 : tensor<2xf32>
        %268 = memref.load %alloc_13[%c1] : memref<2xi16>
        %269 = index.mul %c0, %c3
        %270 = index.castu %false_4 : i1 to index
        %271 = math.sqrt %cst_2 : f32
        %272 = bufferization.clone %alloc_13 : memref<2xi16> to memref<2xi16>
        %273 = vector.extract %256[3] : vector<5xi32>
        %274 = index.divu %259, %269
        scf.condition(%false) %arg2 : f32
      } do {
      ^bb0(%arg2: f32):
        %expanded_51 = tensor.expand_shape %splat_21 [[0], [1], [2, 3]] : tensor<2x2x7xi16> into tensor<2x2x7x1xi16>
        %267 = arith.ceildivsi %false, %false_4 : i1
        %268 = affine.apply affine_map<(d0) -> (d0)>(%c15)
        %alloc_52 = memref.alloc() : memref<7x7xi16>
        %269 = tensor.empty() : tensor<4x7xi16>
        %270 = linalg.matmul ins(%collapsed, %alloc_52 : tensor<4x7xi16>, memref<7x7xi16>) outs(%269 : tensor<4x7xi16>) -> tensor<4x7xi16>
        %271 = math.ceil %9 : tensor<2xf32>
        %272 = affine.load %alloc_18[%c6, %c2, %c1] : memref<13x13x5xf16>
        %alloc_53 = memref.alloc() : memref<7xi64>
        memref.tensor_store %6, %alloc_53 : memref<7xi64>
        %273 = math.ipowi %10, %18 : tensor<2xi1>
        memref.tensor_store %7, %alloc_6 : memref<2x2x7xf32>
        %true_54 = arith.constant true
        %274 = vector.transfer_read %14[%c5], %true_54 : tensor<7xi1>, vector<i1>
        %expanded_55 = tensor.expand_shape %31 [[0, 1]] : tensor<7xi32> into tensor<7x1xi32>
        %275 = math.log10 %19 : tensor<f32>
        %276 = math.ctlz %splat_21 : tensor<2x2x7xi16>
        %277 = tensor.empty() : tensor<2xi1>
        %278 = math.floor %272 : f16
        %279 = math.cttz %transposed : tensor<2xi1>
        scf.yield %cst_2 : f32
      }
      %261 = arith.cmpi eq, %c1299741594_i64, %c196612051_i64 : i64
      %262 = index.ceildivs %26, %26
      %263 = arith.divsi %false, %false_4 : i1
      %264 = arith.andi %false, %false : i1
      %265 = arith.addf %cst_0, %cst : f32
      %266 = math.sqrt %3 : tensor<2xf32>
    }
    %false_22 = index.bool.constant false
    %39 = vector.extract %20[5] : vector<13xi1>
    %40 = math.sqrt %reduced : tensor<f32>
    %41 = index.ceildivs %26, %c5
    %42 = math.cttz %collapsed : tensor<4x7xi16>
    memref.tensor_store %11, %alloc_10 : memref<13x13x5xi64>
    %43 = arith.remf %cst_0, %cst_0 : f32
    %44 = math.ctpop %13 : tensor<13x13x5xi1>
    memref.tensor_store %15, %alloc_9 : memref<2xi1>
    %45 = arith.maxsi %c32507_i16, %c-6837_i16 : i16
    %46 = math.floor %reduced : tensor<f32>
    %47 = bufferization.clone %alloc_16 : memref<2xf16> to memref<2xf16>
    %48 = affine.load %alloc_7[%c8] : memref<2xi32>
    %49 = index.sizeof
    %50 = math.ipowi %0, %31 : tensor<7xi32>
    %51 = arith.remf %cst_2, %cst : f32
    %52 = vector.insert %false, %20 [7] : i1 into vector<13xi1>
    %53 = arith.divf %cst_2, %cst_2 : f32
    %generated = tensor.generate %c14, %c5, %c0 {
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      %250 = arith.cmpi ne, %c32507_i16, %c-6837_i16 : i16
      %251 = index.castu %26 : index to i32
      %252 = arith.cmpf ule, %cst_3, %cst_3 : f16
      %253 = math.log10 %cst_1 : f32
      tensor.yield %cst_2 : f32
    } : tensor<?x?x?xf32>
    %generated_23 = tensor.generate %c8 {
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      %collapsed_49 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<13x13x5xi1> into tensor<169x5xi1>
      %250 = vector.insertelement %false_4, %20[%c6 : index] : vector<13xi1>
      %251 = arith.remf %cst_2, %cst_2 : f32
      %252 = math.sqrt %7 : tensor<2x2x7xf32>
      tensor.yield %48 : i32
    } : tensor<?x13x5xi32>
    %54 = math.floor %cst_2 : f32
    %55 = math.log2 %reduced : tensor<f32>
    %splat_24 = tensor.splat %c196612051_i64 : tensor<7xi64>
    %56 = affine.load %alloc_13[%c2] : memref<2xi16>
    %splat_25 = tensor.splat %false : tensor<2x2x7xi1>
    %alloca = memref.alloca() : memref<2x2x7xf16>
    %57 = bufferization.clone %alloc_15 : memref<13x13x5xi1> to memref<13x13x5xi1>
    %rank = tensor.rank %15 : tensor<2xi1>
    %from_elements = tensor.from_elements %c196612051_i64, %c1039931041_i64, %c1039931041_i64, %c1039931041_i64, %c1039931041_i64, %c196612051_i64, %c1039931041_i64, %c1554310511_i64, %c196612051_i64, %c1039931041_i64, %c1554310511_i64, %c196612051_i64, %c1039931041_i64, %c196612051_i64, %c1299741594_i64, %c1039931041_i64, %c1039931041_i64, %c1039931041_i64, %c1039931041_i64, %c1039931041_i64, %c1039931041_i64, %c1554310511_i64, %c1039931041_i64, %c1554310511_i64, %c196612051_i64, %c1554310511_i64, %c1039931041_i64, %c1299741594_i64 : tensor<2x2x7xi64>
    %58 = vector.broadcast %cst_0 : f32 to vector<2xf32>
    %59 = vector.fma %58, %58, %58 : vector<2xf32>
    %60 = math.rsqrt %reduced : tensor<f32>
    %61 = vector.broadcast %cst_2 : f32 to vector<7xf32>
    %62 = vector.fma %61, %61, %61 : vector<7xf32>
    %63 = vector.broadcast %cst_0 : f32 to vector<2xf32>
    %64 = vector.fma %63, %59, %63 : vector<2xf32>
    %65 = vector.extract %58[0] : vector<2xf32>
    %66 = scf.index_switch %c5 -> memref<2xi64> 
    case 1 {
      %250 = math.cttz %splat_21 : tensor<2x2x7xi16>
      %251 = bufferization.to_tensor %alloc_6 : memref<2x2x7xf32>
      %252 = memref.load %alloc_20[%c0] : memref<2xi32>
      %253 = arith.divui %c196612051_i64, %c196612051_i64 : i64
      %254 = vector.splat %c32507_i16 : vector<2xi16>
      %255 = arith.remf %cst_2, %cst_0 : f32
      %256 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 mod 32)>(%c0, %c3, %c5, %26)
      %257 = index.sizeof
      %258 = math.ipowi %21, %22 : tensor<i32>
      %259 = math.cttz %11 : tensor<13x13x5xi64>
      %260 = vector.load %alloc_16[%c1] : memref<2xf16>, vector<2x2x7xf16>
      affine.store %c661261267_i32, %alloc_5[%c6] : memref<2xi32>
      %261 = vector.broadcast %56 : i16 to vector<13x13x5xi16>
      %262 = vector.broadcast %false_22 : i1 to vector<13x13x5xi1>
      %263 = vector.broadcast %c661261267_i32 : i32 to vector<13x13x5xi32>
      %264 = vector.gather %splat[%c6] [%263], %262, %261 : tensor<7xi16>, vector<13x13x5xi32>, vector<13x13x5xi1>, vector<13x13x5xi16> into vector<13x13x5xi16>
      %265 = math.exp %7 : tensor<2x2x7xf32>
      %266 = vector.extract_strided_slice %64 {offsets = [0], sizes = [2], strides = [1]} : vector<2xf32> to vector<2xf32>
      %267 = scf.index_switch %c10 -> i64 
      case 1 {
        %268 = index.sizeof
        %269 = math.log10 %2 : tensor<2xf32>
        %270 = arith.remui %56, %c-11797_i16 : i16
        %271 = math.exp2 %3 : tensor<2xf32>
        %272 = index.divs %c4, %c7
        %alloc_50 = memref.alloc() : memref<7x13xi16>
        %273 = tensor.empty() : tensor<4x13xi16>
        %274 = linalg.matmul ins(%collapsed, %alloc_50 : tensor<4x7xi16>, memref<7x13xi16>) outs(%273 : tensor<4x13xi16>) -> tensor<4x13xi16>
        %275 = vector.reduction <maxf>, %266 : vector<2xf32> into f32
        %276 = arith.remui %c661261267_i32, %c833196896_i32 : i32
        %277 = vector.broadcast %48 : i32 to vector<13x5x13x5xi32>
        %278 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %263, %263, %277 : vector<13x13x5xi32>, vector<13x13x5xi32> into vector<13x5x13x5xi32>
        %279 = math.ctpop %21 : tensor<i32>
        %280 = math.fma %cst_1, %cst_0, %cst : f32
        %281 = affine.apply affine_map<(d0) -> (d0 * 2)>(%256)
        %282 = bufferization.clone %alloc_13 : memref<2xi16> to memref<2xi16>
        %283 = math.exp2 %9 : tensor<2xf32>
        %false_51 = arith.constant false
        %284 = vector.transfer_read %13[%272, %c2, %c2], %false_51 : tensor<13x13x5xi1>, vector<i1>
        %285 = math.rsqrt %7 : tensor<2x2x7xf32>
        scf.yield %c1039931041_i64 : i64
      }
      case 2 {
        %268 = vector.multi_reduction <mul>, %266, %cst_2 [0] : vector<2xf32> to f32
        %269 = arith.cmpi ult, %false_4, %false_22 : i1
        %270 = arith.minui %false, %false_4 : i1
        %271 = math.copysign %3, %3 : tensor<2xf32>
        %272 = vector.extract_strided_slice %260 {offsets = [0], sizes = [2], strides = [1]} : vector<2x2x7xf16> to vector<2x2x7xf16>
        %273 = math.exp2 %7 : tensor<2x2x7xf32>
        %274 = math.powf %cst_2, %cst_0 : f32
        %rank_50 = tensor.rank %13 : tensor<13x13x5xi1>
        %275 = arith.divsi %false_4, %false_22 : i1
        %276 = bufferization.to_tensor %alloc_17 : memref<2x2x7xi16>
        %277 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 mod 8)>(%c11, %49, %c4, %c7)
        %278 = index.casts %c1299741594_i64 : i64 to index
        %279 = index.divs %c14, %c13
        %280 = vector.broadcast %48 : i32 to vector<7xi32>
        %281 = vector.broadcast %false : i1 to vector<7xi1>
        %282 = vector.gather %alloc_11[%c3, %c6, %c1] [%280], %281, %280 : memref<2x2x7xi32>, vector<7xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
        %283 = math.log2 %cst_1 : f32
        %284 = vector.multi_reduction <maxui>, %282, %c833196896_i32 [0] : vector<7xi32> to i32
        scf.yield %c196612051_i64 : i64
      }
      default {
        %268 = math.absi %48 : i32
        %269 = vector.extract %63[1] : vector<2xf32>
        %270 = affine.min affine_map<(d0) -> (-1)>(%49)
        %271 = arith.shrui %c1554310511_i64, %c1039931041_i64 : i64
        %272 = index.floordivs %c2, %270
        %true_50 = arith.constant true
        %273 = tensor.empty() : tensor<13x13x5xf16>
        %274 = tensor.empty() : tensor<2xf16>
        %collapsed_51 = tensor.collapse_shape %251 [[0, 1], [2]] : tensor<2x2x7xf32> into tensor<4x7xf32>
        %alloc_52 = memref.alloc() : memref<7xi16>
        memref.tensor_store %splat, %alloc_52 : memref<7xi16>
        %275 = arith.maxui %false_22, %false : i1
        %alloca_53 = memref.alloca() : memref<2xi16>
        %276 = math.ipowi %c-11797_i16, %56 : i16
        %277 = arith.muli %c32507_i16, %c32507_i16 : i16
        %expanded_54 = tensor.expand_shape %0 [[0, 1]] : tensor<7xi32> into tensor<7x1xi32>
        %278 = affine.apply affine_map<(d0, d1) -> (d0 floordiv 4 - d0)>(%c12, %256)
        scf.yield %c196612051_i64 : i64
      }
      %alloc_49 = memref.alloc() : memref<2xi64>
      scf.yield %alloc_49 : memref<2xi64>
    }
    case 2 {
      %splat_49 = tensor.splat %56 : tensor<2x2x7xi16>
      %250 = arith.maxsi %c1554310511_i64, %c1554310511_i64 : i64
      %251 = vector.broadcast %cst_2 : f32 to vector<2xf32>
      %252 = vector.fma %251, %63, %59 : vector<2xf32>
      %253 = memref.load %alloc_19[%c0] : memref<2xi32>
      %generated_50 = tensor.generate %c13, %c13, %c9 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %262 = math.absf %cst_1 : f32
        %263 = arith.shrsi %c-6837_i16, %c-6837_i16 : i16
        %264 = arith.maxui %c32507_i16, %c32507_i16 : i16
        %265 = arith.maxsi %c1039931041_i64, %c196612051_i64 : i64
        tensor.yield %cst_0 : f32
      } : tensor<?x?x?xf32>
      %254 = affine.for %arg2 = 0 to 5 iter_args(%arg3 = %alloc_18) -> (memref<13x13x5xf16>) {
        affine.yield %arg3 : memref<13x13x5xf16>
      }
      %255 = vector.broadcast %c32507_i16 : i16 to vector<7xi16>
      %collapsed_51 = tensor.collapse_shape %splat_49 [[0, 1], [2]] : tensor<2x2x7xi16> into tensor<4x7xi16>
      %256 = vector.multi_reduction <mul>, %64, %63 [] : vector<2xf32> to vector<2xf32>
      %257 = arith.remf %cst, %cst_0 : f32
      %258 = vector.insert %cst_2, %59 [0] : f32 into vector<2xf32>
      %true_52 = arith.constant true
      %259 = vector.matrix_multiply %64, %61 {lhs_columns = 1 : i32, lhs_rows = 2 : i32, rhs_columns = 7 : i32} : (vector<2xf32>, vector<7xf32>) -> vector<14xf32>
      %260 = arith.remf %cst_0, %cst_1 : f32
      %expanded_53 = tensor.expand_shape %14 [[0, 1]] : tensor<7xi1> into tensor<7x1xi1>
      %261 = arith.minf %cst_2, %cst_1 : f32
      %alloc_54 = memref.alloc() : memref<2xi64>
      scf.yield %alloc_54 : memref<2xi64>
    }
    case 3 {
      %250 = math.ctpop %0 : tensor<7xi32>
      %251 = vector.broadcast %c32507_i16 : i16 to vector<2x2x7xi16>
      %252 = vector.broadcast %false_22 : i1 to vector<2x2x7xi1>
      %253 = vector.broadcast %c833196896_i32 : i32 to vector<2x2x7xi32>
      %254 = vector.gather %1[%c7, %26, %c6] [%253], %252, %251 : tensor<13x13x5xi16>, vector<2x2x7xi32>, vector<2x2x7xi1>, vector<2x2x7xi16> into vector<2x2x7xi16>
      %255 = math.ceil %cst_1 : f32
      %256 = vector.broadcast %c6 : index to vector<7xindex>
      %257 = vector.broadcast %false : i1 to vector<7xi1>
      %258 = vector.broadcast %cst_3 : f16 to vector<7xf16>
      vector.scatter %alloc_16[%c0] [%256], %257, %258 : memref<2xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
      %259 = vector.insert %cst_0, %59 [1] : f32 into vector<2xf32>
      %260 = vector.reduction <add>, %59 : vector<2xf32> into f32
      %261 = index.castu %c-6837_i16 : i16 to index
      %262 = math.log2 %9 : tensor<2xf32>
      %263 = arith.addf %cst_3, %cst_3 : f16
      %264 = arith.remf %cst_0, %cst_0 : f32
      %265 = arith.cmpi slt, %c1039931041_i64, %c1299741594_i64 : i64
      %266 = math.rsqrt %cst_1 : f32
      memref.tensor_store %7, %alloc_6 : memref<2x2x7xf32>
      %267 = math.cttz %14 : tensor<7xi1>
      %268 = bufferization.clone %alloc : memref<13x13x5xi1> to memref<13x13x5xi1>
      %269 = tensor.empty() : tensor<2xi32>
      %270 = vector.gather %269[%c14] [%253], %252, %253 : tensor<2xi32>, vector<2x2x7xi32>, vector<2x2x7xi1>, vector<2x2x7xi32> into vector<2x2x7xi32>
      %alloc_49 = memref.alloc() : memref<2xi64>
      scf.yield %alloc_49 : memref<2xi64>
    }
    case 4 {
      %250 = arith.remui %56, %c-11797_i16 : i16
      %alloc_49 = memref.alloc() : memref<7xf32>
      %251 = vector.reduction <maxf>, %62 : vector<7xf32> into f32
      %252 = vector.insert %false, %20 [12] : i1 into vector<13xi1>
      %253 = index.divu %c5, %c10
      %254 = math.floor %7 : tensor<2x2x7xf32>
      %255 = vector.reduction <mul>, %63 : vector<2xf32> into f32
      bufferization.dealloc_tensor %3 : tensor<2xf32>
      %256 = vector.extract %61[4] : vector<7xf32>
      %257 = vector.shuffle %62, %63 [0, 1, 3, 4, 6, 7, 8] : vector<7xf32>, vector<2xf32>
      %258 = arith.divf %cst_3, %cst_3 : f16
      %259 = arith.remui %c-11797_i16, %56 : i16
      %260 = arith.remf %cst, %cst_2 : f32
      scf.index_switch %c10 
      case 1 {
        %262 = arith.shrsi %c1554310511_i64, %c1039931041_i64 : i64
        %inserted_52 = tensor.insert %c-11797_i16 into %1[%c2, %c7, %c1] : tensor<13x13x5xi16>
        %263 = arith.minui %false_4, %false_4 : i1
        %264 = arith.subi %c661261267_i32, %c833196896_i32 : i32
        %265 = vector.broadcast %cst_1 : f32 to vector<2xf32>
        %266 = vector.fma %265, %63, %59 : vector<2xf32>
        %267 = math.absi %48 : i32
        %268 = tensor.empty() : tensor<2xf16>
        %269 = vector.broadcast %cst_3 : f16 to vector<2xf16>
        %270 = vector.broadcast %false_4 : i1 to vector<2xi1>
        %271 = vector.broadcast %48 : i32 to vector<2xi32>
        %272 = vector.gather %268[%c12] [%271], %270, %269 : tensor<2xf16>, vector<2xi32>, vector<2xi1>, vector<2xf16> into vector<2xf16>
        %extracted = tensor.extract %12[%c1, %c1, %c4] : tensor<2x2x7xi16>
        %273 = index.divu %c15, %c5
        %rank_53 = tensor.rank %9 : tensor<2xf32>
        %274 = bufferization.to_memref %from_elements : memref<2x2x7xi64>
        %275 = math.ipowi %8, %14 : tensor<7xi1>
        %276 = arith.maxsi %false_4, %false : i1
        %277 = math.log2 %cst_2 : f32
        %278 = math.ctpop %false_22 : i1
        %279 = math.rsqrt %cst_3 : f16
        scf.yield
      }
      case 2 {
        %262 = vector.broadcast %c1299741594_i64 : i64 to vector<i64>
        %263 = vector.transfer_write %262, %4[%c8] : vector<i64>, tensor<7xi64>
        %264 = math.absi %16 : tensor<13x13x5xi64>
        %265 = vector.broadcast %cst_2 : f32 to vector<13x13x5xf32>
        %266 = vector.fma %265, %265, %265 : vector<13x13x5xf32>
        %267 = vector.shuffle %64, %58 [0, 1] : vector<2xf32>, vector<2xf32>
        %268 = index.casts %false : i1 to index
        %269 = arith.addi %48, %48 : i32
        bufferization.dealloc_tensor %splat : tensor<7xi16>
        %270 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 mod 32)>(%26, %c4, %c10, %c2)
        %271 = math.cos %2 : tensor<2xf32>
        %272 = arith.shrsi %c833196896_i32, %c661261267_i32 : i32
        %273 = math.rsqrt %9 : tensor<2xf32>
        %274 = vector.multi_reduction <add>, %63, %cst [0] : vector<2xf32> to f32
        %275 = tensor.empty(%c1) : tensor<13x?x5xf32>
        %276 = arith.remui %false, %false_22 : i1
        %277 = math.cos %7 : tensor<2x2x7xf32>
        %278 = vector.splat %c0 : vector<7xindex>
        scf.yield
      }
      case 3 {
        %262 = bufferization.clone %alloc_9 : memref<2xi1> to memref<2xi1>
        %263 = affine.apply affine_map<(d0) -> (0)>(%rank)
        %264 = bufferization.clone %alloc_18 : memref<13x13x5xf16> to memref<13x13x5xf16>
        %c28875_i16 = arith.constant 28875 : i16
        %265 = memref.load %alloc_13[%c1] : memref<2xi16>
        %266 = arith.remf %cst_3, %cst_3 : f16
        %267 = tensor.empty() : tensor<7x7xi16>
        %268 = tensor.empty() : tensor<4x7xi16>
        %269 = linalg.matmul ins(%collapsed, %267 : tensor<4x7xi16>, tensor<7x7xi16>) outs(%268 : tensor<4x7xi16>) -> tensor<4x7xi16>
        %270 = math.absf %cst : f32
        %271 = vector.flat_transpose %59 {columns = 1 : i32, rows = 2 : i32} : vector<2xf32> -> vector<2xf32>
        %272 = arith.remui %c-11797_i16, %c-11797_i16 : i16
        %273 = vector.shuffle %59, %58 [0, 2] : vector<2xf32>, vector<2xf32>
        %274 = bufferization.clone %47 : memref<2xf16> to memref<2xf16>
        %275 = arith.shrsi %c833196896_i32, %c833196896_i32 : i32
        %276 = vector.broadcast %cst : f32 to vector<2x2xf32>
        %277 = vector.outerproduct %59, %63, %276 {kind = #vector.kind<minf>} : vector<2xf32>, vector<2xf32>
        %alloc_52 = memref.alloc() : memref<2xf16>
        %278 = arith.shrui %false_22, %false_4 : i1
        scf.yield
      }
      case 4 {
        %262 = affine.apply affine_map<(d0, d1, d2, d3) -> (0)>(%c11, %rank, %c7, %253)
        %263 = vector.splat %c12 : vector<2xindex>
        %264 = arith.maxsi %c1039931041_i64, %c1299741594_i64 : i64
        %265 = index.castu %c196612051_i64 : i64 to index
        %266 = vector.reduction <add>, %63 : vector<2xf32> into f32
        %267 = index.add %c4, %c14
        %268 = affine.load %alloc_14[%c14] : memref<2xf16>
        %269 = math.powf %268, %cst_3 : f16
        %270 = tensor.empty() : tensor<2xi32>
        %271 = math.fpowi %3, %270 : tensor<2xf32>, tensor<2xi32>
        %272 = arith.cmpf uno, %cst_0, %cst : f32
        %273 = math.floor %cst_1 : f32
        %true_52 = index.bool.constant true
        %274 = math.powf %7, %7 : tensor<2x2x7xf32>
        %275 = index.maxu %253, %49
        %alloc_53 = memref.alloc() : memref<7x13xi16>
        %276 = tensor.empty() : tensor<4x13xi16>
        %277 = linalg.matmul ins(%collapsed, %alloc_53 : tensor<4x7xi16>, memref<7x13xi16>) outs(%276 : tensor<4x13xi16>) -> tensor<4x13xi16>
        %278 = math.atan %cst_3 : f16
        scf.yield
      }
      default {
        %262 = math.atan %9 : tensor<2xf32>
        %263 = vector.broadcast %cst : f32 to vector<2x2x7xf32>
        %264 = vector.fma %263, %263, %263 : vector<2x2x7xf32>
        %265 = arith.negf %cst_0 : f32
        %266 = math.sqrt %cst_2 : f32
        %267 = vector.broadcast %cst_1 : f32 to vector<2xf32>
        %268 = vector.fma %267, %267, %64 : vector<2xf32>
        %splat_52 = tensor.splat %false : tensor<2x2x7xi1>
        %269 = arith.maxui %false, %false_22 : i1
        %270 = arith.maxui %c-11797_i16, %c32507_i16 : i16
        %271 = vector.reduction <minf>, %63 : vector<2xf32> into f32
        %272 = math.ipowi %splat_24, %6 : tensor<7xi64>
        %273 = arith.ceildivsi %56, %56 : i16
        vector.print %64 : vector<2xf32>
        %274 = arith.muli %c1299741594_i64, %c196612051_i64 : i64
        %275 = arith.remui %c-6837_i16, %c-6837_i16 : i16
        %276 = math.round %7 : tensor<2x2x7xf32>
        %277 = arith.ceildivsi %56, %c-11797_i16 : i16
      }
      %261 = vector.extract %20[4] : vector<13xi1>
      %cst_50 = arith.constant 4.163200e+04 : f16
      %alloc_51 = memref.alloc() : memref<2xi64>
      scf.yield %alloc_51 : memref<2xi64>
    }
    default {
      %250 = scf.if %false -> (i32) {
        %265 = bufferization.to_memref %1 : memref<13x13x5xi16>
        %266 = vector.reduction <mul>, %64 : vector<2xf32> into f32
        %267 = math.ctlz %18 : tensor<2xi1>
        %268 = math.absi %31 : tensor<7xi32>
        %269 = arith.cmpi ult, %false, %false_22 : i1
        %270 = vector.extract %62[2] : vector<7xf32>
        %271 = arith.remui %c1554310511_i64, %c1554310511_i64 : i64
        %272 = math.ipowi %from_elements, %from_elements : tensor<2x2x7xi64>
        scf.yield %48 : i32
      } else {
        %265 = vector.broadcast %false_22 : i1 to vector<7xi1>
        %266 = vector.maskedload %alloc_6[%c1, %c1, %c5], %265, %61 : memref<2x2x7xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
        %267 = tensor.empty(%c3) : tensor<?xi64>
        %268 = affine.min affine_map<(d0, d1, d2, d3) -> (((d2 * 2) floordiv 32) * 4)>(%49, %c3, %c10, %c14)
        %269 = math.ceil %2 : tensor<2xf32>
        %270 = arith.shrsi %c661261267_i32, %c661261267_i32 : i32
        %splat_52 = tensor.splat %56 : tensor<7xi16>
        %271 = affine.load %57[%c10, %c9, %c13] : memref<13x13x5xi1>
        %c0_i64 = arith.constant 0 : i64
        %272 = vector.transfer_read %alloc_10[%c12, %rank, %c0], %c0_i64 : memref<13x13x5xi64>, vector<i64>
        scf.yield %c833196896_i32 : i32
      }
      %251 = math.powf %9, %9 : tensor<2xf32>
      %252 = math.absi %c1554310511_i64 : i64
      %253 = arith.shrui %250, %250 : i32
      %254 = index.casts %250 : i32 to index
      %splat_49 = tensor.splat %cst : tensor<2xf32>
      %255 = arith.maxui %c32507_i16, %56 : i16
      %256 = math.ceil %3 : tensor<2xf32>
      %257 = vector.load %alloc_17[%c1, %c1, %c4] : memref<2x2x7xi16>, vector<2xi16>
      %258 = math.sqrt %cst_3 : f16
      vector.print %59 : vector<2xf32>
      %259 = vector.broadcast %c10 : index to vector<5xindex>
      %260 = vector.broadcast %false_22 : i1 to vector<5xi1>
      %261 = vector.broadcast %250 : i32 to vector<5xi32>
      vector.scatter %alloc_11[%c0, %c0, %c4] [%259], %260, %261 : memref<2x2x7xi32>, vector<5xindex>, vector<5xi1>, vector<5xi32>
      %262 = arith.subi %false_4, %false : i1
      %263 = math.exp %9 : tensor<2xf32>
      %generated_50 = tensor.generate %c12 {
      ^bb0(%arg2: index):
        %265 = vector.broadcast %c196612051_i64 : i64 to vector<2x2x7xi64>
        %266 = vector.broadcast %false : i1 to vector<2x2x7xi1>
        %267 = vector.broadcast %c833196896_i32 : i32 to vector<2x2x7xi32>
        %268 = vector.gather %from_elements[%c3, %c8, %c10] [%267], %266, %265 : tensor<2x2x7xi64>, vector<2x2x7xi32>, vector<2x2x7xi1>, vector<2x2x7xi64> into vector<2x2x7xi64>
        %269 = affine.load %alloc_12[%c2] : memref<7xi1>
        %270 = arith.cmpi ugt, %c-6837_i16, %c32507_i16 : i16
        %271 = vector.broadcast %false : i1 to vector<i1>
        %272 = vector.transfer_write %271, %10[%254] : vector<i1>, tensor<2xi1>
        tensor.yield %c1039931041_i64 : i64
      } : tensor<?xi64>
      %264 = arith.remf %cst_0, %cst : f32
      %alloc_51 = memref.alloc() : memref<2xi64>
      scf.yield %alloc_51 : memref<2xi64>
    }
    %67 = arith.remui %false, %false_4 : i1
    %68 = arith.muli %c196612051_i64, %c1299741594_i64 : i64
    %69 = affine.load %alloc[%c9, %c6, %c11] : memref<13x13x5xi1>
    %70 = vector.extract %62[6] : vector<7xf32>
    %71 = math.ctpop %56 : i16
    %72 = math.ctpop %14 : tensor<7xi1>
    %rank_26 = tensor.rank %1 : tensor<13x13x5xi16>
    %73 = vector.insert %cst_0, %63 [0] : f32 into vector<2xf32>
    %alloc_27 = memref.alloc() : memref<2x7xf32>
    %alloc_28 = memref.alloc() : memref<7xf32>
    %74 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_27, %3, %alloc_28 : memref<2x7xf32>, tensor<2xf32>, memref<7xf32>) outs(%7 : tensor<2x2x7xf32>) {
    ^bb0(%in: f32, %in_49: f32, %in_50: f32, %out: f32):
      %250 = math.ctpop %56 : i16
      %251 = bufferization.clone %alloc_10 : memref<13x13x5xi64> to memref<13x13x5xi64>
      %splat_51 = tensor.splat %cst_2 : tensor<2xf32>
      memref.tensor_store %14, %alloc_12 : memref<7xi1>
      %alloc_52 = memref.alloc() : memref<2xi16>
      memref.copy %alloc_13, %alloc_52 : memref<2xi16> to memref<2xi16>
      %252 = vector.multi_reduction <maxf>, %59, %58 [] : vector<2xf32> to vector<2xf32>
      %253 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %59, %63, %in_49 : vector<2xf32>, vector<2xf32> into f32
      %254 = arith.subi %false_4, %69 : i1
      %255 = math.exp2 %cst_1 : f32
      %256 = arith.shrsi %c32507_i16, %c-6837_i16 : i16
      affine.store %cst_3, %alloc_18[%c11, %c4, %c13] : memref<13x13x5xf16>
      %257 = index.ceildivs %rank_26, %c1
      bufferization.dealloc_tensor %17 : tensor<13x13x5xi64>
      %258 = math.floor %in_49 : f32
      %259 = arith.negf %out : f32
      %cast = tensor.cast %splat_21 : tensor<2x2x7xi16> to tensor<?x?x?xi16>
      %260 = vector.broadcast %cst_0 : f32 to vector<2x2x7xf32>
      %261 = math.cttz %11 : tensor<13x13x5xi64>
      %262 = math.ipowi %false_22, %false_22 : i1
      %263 = vector.shuffle %61, %63 [3, 5, 8] : vector<7xf32>, vector<2xf32>
      %alloc_53 = memref.alloc() : memref<2xf32>
      memref.tensor_store %2, %alloc_53 : memref<2xf32>
      %264 = math.cos %7 : tensor<2x2x7xf32>
      %alloc_54 = memref.alloc() : memref<f32>
      memref.tensor_store %19, %alloc_54 : memref<f32>
      %265 = vector.extract %20[7] : vector<13xi1>
      %266 = affine.load %alloc[%c0, %c12, %c15] : memref<13x13x5xi1>
      %267 = arith.shrsi %false, %false : i1
      %268 = memref.atomic_rmw addi %c196612051_i64, %251[%c9, %c12, %c3] : (i64, memref<13x13x5xi64>) -> i64
      %false_55 = index.bool.constant false
      %collapsed_56 = tensor.collapse_shape %splat_21 [[0, 1], [2]] : tensor<2x2x7xi16> into tensor<4x7xi16>
      %collapsed_57 = tensor.collapse_shape %generated [[0, 1], [2]] : tensor<?x?x?xf32> into tensor<?x?xf32>
      %269 = arith.shrsi %false_22, %false_4 : i1
      %270 = math.atan2 %19, %reduced : tensor<f32>
      linalg.yield %cst_1 : f32
    } -> tensor<2x2x7xf32>
    %75 = arith.minsi %c661261267_i32, %c661261267_i32 : i32
    %76 = arith.minf %cst_3, %cst_3 : f16
    %77 = arith.cmpi ne, %c1554310511_i64, %c1554310511_i64 : i64
    %78 = vector.load %alloc_13[%c1] : memref<2xi16>, vector<7xi16>
    %79 = vector.broadcast %cst : f32 to vector<7xf32>
    %80 = vector.fma %79, %61, %61 : vector<7xf32>
    %81 = arith.remf %cst_0, %cst_2 : f32
    %82 = arith.addi %c-11797_i16, %c-11797_i16 : i16
    %83 = math.ctpop %c-11797_i16 : i16
    %84 = index.sizeof
    %85 = affine.load %alloc_13[%c13] : memref<2xi16>
    %86 = math.round %cst_2 : f32
    %87 = arith.cmpf false, %cst_2, %cst : f32
    vector.print %79 : vector<7xf32>
    %88 = math.absi %8 : tensor<7xi1>
    %true = index.bool.constant true
    %89 = vector.create_mask %c7, %c5, %c9 : vector<2x2x7xi1>
    %90 = tensor.empty() : tensor<2xf32>
    %mapped = linalg.map ins(%9, %2, %3 : tensor<2xf32>, tensor<2xf32>, tensor<2xf32>) outs(%90 : tensor<2xf32>)
      (%in: f32, %in_49: f32, %in_50: f32) {
        %250 = affine.apply affine_map<(d0) -> (0)>(%c14)
        %251 = vector.insert %in, %80 [0] : f32 into vector<7xf32>
        %252 = index.casts %c196612051_i64 : i64 to index
        %253 = scf.while (%arg2 = %alloc_12) : (memref<7xi1>) -> memref<7xi1> {
          %286 = vector.broadcast %false : i1 to vector<2xi1>
          %287 = vector.maskedload %arg2[%c4], %286, %286 : memref<7xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
          %cst_54 = arith.constant 5.324800e+04 : f16
          %288 = math.ctlz %false : i1
          %289 = arith.remf %cst_2, %cst_1 : f32
          %290 = vector.splat %false : vector<7xi1>
          %291 = arith.cmpi ugt, %c-6837_i16, %56 : i16
          %292 = bufferization.to_tensor %alloc_16 : memref<2xf16>
          %splat_55 = tensor.splat %c32507_i16 : tensor<7xi16>
          scf.condition(%false) %alloc_12 : memref<7xi1>
        } do {
        ^bb0(%arg2: memref<7xi1>):
          %286 = math.ceil %cst_2 : f32
          %287 = vector.extract %78[5] : vector<7xi16>
          %288 = arith.muli %true, %false_22 : i1
          %splat_54 = tensor.splat %true : tensor<2xi1>
          %289 = math.floor %in_50 : f32
          %290 = vector.insert %cst_2, %80 [0] : f32 into vector<7xf32>
          %291 = tensor.empty() : tensor<2xi32>
          %292 = vector.broadcast %c661261267_i32 : i32 to vector<13x13x5xi32>
          %293 = vector.broadcast %false_4 : i1 to vector<13x13x5xi1>
          %294 = vector.gather %291[%c8] [%292], %293, %292 : tensor<2xi32>, vector<13x13x5xi32>, vector<13x13x5xi1>, vector<13x13x5xi32> into vector<13x13x5xi32>
          %295 = vector.broadcast %c661261267_i32 : i32 to vector<13x5xi32>
          %dest, %accumulated_value = vector.scan <maxsi>, %292, %295 {inclusive = false, reduction_dim = 0 : i64} : vector<13x13x5xi32>, vector<13x5xi32>
          %296 = arith.remui %c-6837_i16, %c-6837_i16 : i16
          %alloc_55 = memref.alloc() : memref<7xi64>
          %297 = vector.broadcast %c196612051_i64 : i64 to vector<2x2x7xi64>
          %298 = vector.broadcast %c833196896_i32 : i32 to vector<2x2x7xi32>
          %299 = vector.gather %alloc_55[%c3] [%298], %89, %297 : memref<7xi64>, vector<2x2x7xi32>, vector<2x2x7xi1>, vector<2x2x7xi64> into vector<2x2x7xi64>
          %300 = math.tan %reduced : tensor<f32>
          %301 = math.cttz %c-6837_i16 : i16
          %302 = math.exp %cst_1 : f32
          %303 = math.exp %3 : tensor<2xf32>
          %304 = math.roundeven %reduced : tensor<f32>
          %305 = arith.divsi %c32507_i16, %c-6837_i16 : i16
          scf.yield %arg2 : memref<7xi1>
        }
        %254 = index.sizeof
        %255 = arith.remui %false_4, %false_4 : i1
        %256 = math.powf %in_49, %in_50 : f32
        %257 = vector.shuffle %79, %59 [2, 3, 6] : vector<7xf32>, vector<2xf32>
        %258 = arith.negf %in_50 : f32
        %259 = vector.broadcast %true : i1 to vector<2xi1>
        %260 = vector.transfer_write %259, %splat_25[%49, %c7, %c1] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<2xi1>, tensor<2x2x7xi1>
        %261 = vector.broadcast %in : f32 to vector<2x2x7xf32>
        %262 = vector.fma %261, %261, %261 : vector<2x2x7xf32>
        %263 = index.divu %rank, %250
        %264 = vector.multi_reduction <add>, %64, %63 [] : vector<2xf32> to vector<2xf32>
        %265 = index.castu %c661261267_i32 : i32 to index
        %266 = math.roundeven %in_49 : f32
        %267 = math.log2 %7 : tensor<2x2x7xf32>
        %268 = vector.broadcast %in_49 : f32 to vector<2x2xf32>
        %269 = vector.outerproduct %63, %63, %268 {kind = #vector.kind<minf>} : vector<2xf32>, vector<2xf32>
        %270 = math.floor %cst_1 : f32
        %generated_51 = tensor.generate %41 {
        ^bb0(%arg2: index):
          %286 = vector.create_mask %rank_26, %265, %49 : vector<2x2x7xi1>
          %287 = vector.reduction <add>, %80 : vector<7xf32> into f32
          %288 = math.exp2 %reduced : tensor<f32>
          %289 = math.log10 %cst_2 : f32
          tensor.yield %true : i1
        } : tensor<?xi1>
        %271 = index.divu %c10, %49
        %272 = math.log2 %cst_3 : f16
        %273 = vector.load %alloc_6[%c0, %c0, %c0] : memref<2x2x7xf32>, vector<7xf32>
        %274 = vector.broadcast %false_22 : i1 to vector<i1>
        vector.transfer_write %274, %alloc_9[%rank_26] : vector<i1>, memref<2xi1>
        %275 = math.cttz %c661261267_i32 : i32
        %276 = math.log2 %cst_1 : f32
        %277 = vector.shuffle %58, %59 [2] : vector<2xf32>, vector<2xf32>
        %278 = math.atan %2 : tensor<2xf32>
        %279 = math.ipowi %10, %10 : tensor<2xi1>
        %extracted = tensor.extract %19[] : tensor<f32>
        %280 = arith.shrsi %c1554310511_i64, %c1039931041_i64 : i64
        %alloc_52 = memref.alloc() : memref<2x2x7xf16>
        %281 = vector.broadcast %cst_3 : f16 to vector<13x13x5xf16>
        %282 = vector.broadcast %false : i1 to vector<13x13x5xi1>
        %283 = vector.broadcast %48 : i32 to vector<13x13x5xi32>
        %284 = vector.gather %alloc_52[%26, %c2, %26] [%283], %282, %281 : memref<2x2x7xf16>, vector<13x13x5xi32>, vector<13x13x5xi1>, vector<13x13x5xf16> into vector<13x13x5xf16>
        %285 = affine.load %alloc_10[%c12, %c6, %c8] : memref<13x13x5xi64>
        %cst_53 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_53 : f32
      }
    %91 = math.round %cst_0 : f32
    %92 = index.mul %c2, %c12
    %93 = arith.minf %cst_3, %cst_3 : f16
    %94 = arith.minf %cst, %cst_2 : f32
    %95 = affine.min affine_map<(d0) -> (0, (d0 ceildiv 32 + d0) ceildiv 16 + 4, d0 ceildiv 32 + d0 + 32, 0)>(%c5)
    %96 = arith.muli %c833196896_i32, %c833196896_i32 : i32
    %97 = math.atan %90 : tensor<2xf32>
    %98 = math.absf %9 : tensor<2xf32>
    %99 = math.cttz %from_elements : tensor<2x2x7xi64>
    %100 = arith.maxui %85, %c-6837_i16 : i16
    %101 = vector.create_mask %c4, %c14, %c4 : vector<13x13x5xi1>
    %102 = bufferization.to_memref %splat : memref<7xi16>
    %103 = vector.bitcast %101 : vector<13x13x5xi1> to vector<13x13x5xi1>
    %104 = vector.broadcast %c833196896_i32 : i32 to vector<2x2x7xi32>
    %105 = arith.remui %48, %c833196896_i32 : i32
    %106 = math.exp2 %9 : tensor<2xf32>
    %107 = arith.minf %cst_2, %cst_0 : f32
    %108 = arith.addf %cst_3, %cst_3 : f16
    %109 = math.sqrt %2 : tensor<2xf32>
    %110 = tensor.empty() : tensor<2x2x7xi16>
    %mapped_29 = linalg.map ins(%splat_21, %12 : tensor<2x2x7xi16>, tensor<2x2x7xi16>) outs(%110 : tensor<2x2x7xi16>)
      (%in: i16, %in_49: i16) {
        %250 = math.floor %90 : tensor<2xf32>
        %251 = memref.atomic_rmw maxu %c-11797_i16, %alloc_17[%c1, %c1, %c0] : (i16, memref<2x2x7xi16>) -> i16
        %true_50 = index.bool.constant true
        %252 = index.maxu %c9, %95
        %253 = bufferization.to_memref %4 : memref<7xi64>
        %254 = bufferization.to_memref %12 : memref<2x2x7xi16>
        %255 = vector.broadcast %cst_2 : f32 to vector<13xf32>
        %256 = vector.maskedload %alloc_6[%c0, %c0, %c4], %20, %255 : memref<2x2x7xf32>, vector<13xi1>, vector<13xf32> into vector<13xf32>
        %257 = vector.maskedload %alloc_12[%c4], %20, %20 : memref<7xi1>, vector<13xi1>, vector<13xi1> into vector<13xi1>
        %258 = arith.maxsi %c-6837_i16, %c32507_i16 : i16
        %259 = math.ipowi %12, %12 : tensor<2x2x7xi16>
        %260 = vector.splat %48 : vector<2x2x7xi32>
        %from_elements_51 = tensor.from_elements %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3 : tensor<13x13x5xf16>
        %261 = math.absi %11 : tensor<13x13x5xi64>
        %262 = vector.broadcast %cst_0 : f32 to vector<2xf32>
        %263 = vector.fma %262, %262, %64 : vector<2xf32>
        %264 = index.divu %c14, %rank_26
        %265 = index.divu %c9, %264
        %266 = vector.insert %cst_2, %256 [12] : f32 into vector<13xf32>
        %267 = math.absf %cst_0 : f32
        %268 = arith.remf %cst_1, %cst_0 : f32
        %269 = affine.load %alloc_8[%c5, %c13, %c4] : memref<2x2x7xi1>
        %270 = math.tanh %cst_0 : f32
        %271 = arith.addi %c196612051_i64, %c1039931041_i64 : i64
        %272 = index.ceildivu %92, %c6
        %generated_52 = tensor.generate %rank {
        ^bb0(%arg2: index):
          %281 = math.cttz %splat_21 : tensor<2x2x7xi16>
          %extracted = tensor.extract %splat[%c3] : tensor<7xi16>
          %282 = arith.remf %cst, %cst_0 : f32
          %false_53 = index.bool.constant false
          tensor.yield %cst_1 : f32
        } : tensor<?xf32>
        %273 = math.cttz %collapsed : tensor<4x7xi16>
        %274 = arith.remui %c1299741594_i64, %c1039931041_i64 : i64
        %275 = scf.if %false_4 -> (memref<2x2x7xi16>) {
          %collapsed_53 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<13x13x5xi16> into tensor<169x5xi16>
          %281 = math.rsqrt %cst_3 : f16
          %282 = vector.broadcast %cst_2 : f32 to vector<2x2x7xf32>
          %283 = vector.fma %282, %282, %282 : vector<2x2x7xf32>
          %284 = vector.reduction <add>, %61 : vector<7xf32> into f32
          %285 = vector.flat_transpose %257 {columns = 13 : i32, rows = 1 : i32} : vector<13xi1> -> vector<13xi1>
          %286 = index.ceildivs %c1, %41
          %287 = arith.maxsi %false_22, %269 : i1
          %288 = vector.broadcast %cst_0 : f32 to vector<2x2x7xf32>
          %289 = vector.fma %288, %283, %282 : vector<2x2x7xf32>
          scf.yield %254 : memref<2x2x7xi16>
        } else {
          %281 = arith.shrui %c661261267_i32, %c661261267_i32 : i32
          %282 = arith.divf %cst_3, %cst_3 : f16
          %283 = index.sizeof
          %284 = arith.remf %cst_1, %cst_0 : f32
          %285 = arith.mulf %cst_1, %cst : f32
          %286 = math.atan2 %reduced, %reduced : tensor<f32>
          %287 = arith.remf %cst_3, %cst_3 : f16
          %288 = arith.maxui %c661261267_i32, %48 : i32
          scf.yield %alloc_17 : memref<2x2x7xi16>
        }
        %276 = math.ipowi %false, %true_50 : i1
        %277 = math.powf %90, %3 : tensor<2xf32>
        %278 = math.tan %7 : tensor<2x2x7xf32>
        %279 = vector.shuffle %104, %104 [0, 2] : vector<2x2x7xi32>, vector<2x2x7xi32>
        %280 = vector.matrix_multiply %263, %262 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf32>, vector<2xf32>) -> vector<1xf32>
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %111 = vector.reduction <minf>, %62 : vector<7xf32> into f32
    %alloca_30 = memref.alloca() : memref<7xi16>
    %112 = math.powf %cst_0, %cst : f32
    %113 = math.ipowi %collapsed, %collapsed : tensor<4x7xi16>
    %114 = arith.muli %c1039931041_i64, %c1039931041_i64 : i64
    %115 = arith.andi %c833196896_i32, %c833196896_i32 : i32
    %116 = scf.if %false -> (memref<2xi64>) {
      %250 = math.cttz %18 : tensor<2xi1>
      %251 = arith.remf %cst_2, %cst_0 : f32
      %cst_49 = arith.constant 1.000000e+00 : f16
      %cst_50 = arith.constant 0.000000e+00 : f16
      %252 = vector.transfer_read %alloc_14[%c11], %cst_50 : memref<2xf16>, vector<f16>
      %false_51 = index.bool.constant false
      %253 = math.round %9 : tensor<2xf32>
      %254 = math.log2 %9 : tensor<2xf32>
      %255 = vector.insert %cst, %58 [1] : f32 into vector<2xf32>
      %256 = vector.reduction <add>, %79 : vector<7xf32> into f32
      %alloc_52 = memref.alloc() : memref<2xi64>
      scf.yield %alloc_52 : memref<2xi64>
    } else {
      %rank_49 = tensor.rank %21 : tensor<i32>
      %250 = math.ipowi %110, %12 : tensor<2x2x7xi16>
      %251 = index.maxu %c2, %c5
      %252 = vector.broadcast %cst_0 : f32 to vector<13x13x5xf32>
      %253 = vector.fma %252, %252, %252 : vector<13x13x5xf32>
      %254 = vector.load %alloc_17[%c1, %c0, %c0] : memref<2x2x7xi16>, vector<2xi16>
      %255 = math.cos %90 : tensor<2xf32>
      %256 = index.castu %251 : index to i32
      %257 = arith.shrui %c1039931041_i64, %c1299741594_i64 : i64
      %alloc_50 = memref.alloc() : memref<2xi64>
      scf.yield %alloc_50 : memref<2xi64>
    }
    %splat_31 = tensor.splat %false_4 : tensor<7xi1>
    %117 = math.ipowi %0, %5 : tensor<7xi32>
    %118 = index.sub %c4, %c11
    %119 = math.cttz %6 : tensor<7xi64>
    %120 = index.castu %41 : index to i32
    %121 = vector.broadcast %c661261267_i32 : i32 to vector<13x13x5xi32>
    %122 = vector.gather %alloc_20[%c6] [%121], %103, %121 : memref<2xi32>, vector<13x13x5xi32>, vector<13x13x5xi1>, vector<13x13x5xi32> into vector<13x13x5xi32>
    %splat_32 = tensor.splat %48 : tensor<7xi32>
    %123 = vector.broadcast %cst : f32 to vector<13x13x5xf32>
    %124 = vector.fma %123, %123, %123 : vector<13x13x5xf32>
    %125 = memref.load %alloc_15[%c8, %c10, %c1] : memref<13x13x5xi1>
    %126 = math.cos %cst_2 : f32
    %127 = math.roundeven %7 : tensor<2x2x7xf32>
    %128 = vector.create_mask %c15, %c3, %c12 : vector<2x2x7xi1>
    memref.assume_alignment %alloc, 1 : memref<13x13x5xi1>
    %129 = arith.maxsi %48, %c661261267_i32 : i32
    %130 = vector.broadcast %c661261267_i32 : i32 to vector<7xi32>
    %131 = vector.insert %130, %104 [1, 0] : vector<7xi32> into vector<2x2x7xi32>
    %132 = math.rsqrt %9 : tensor<2xf32>
    %133 = affine.apply affine_map<(d0, d1, d2, d3) -> (-(d1 + (d1 mod 2) * 16))>(%c3, %41, %c13, %c6)
    %134 = arith.andi %c833196896_i32, %48 : i32
    %135 = math.powf %cst_2, %cst_1 : f32
    %136 = index.casts %false_22 : i1 to index
    %137 = vector.shuffle %63, %80 [3, 7, 8] : vector<2xf32>, vector<7xf32>
    %138 = arith.remf %cst, %cst : f32
    %139 = math.absf %cst_0 : f32
    %140 = vector.broadcast %false_4 : i1 to vector<7xi1>
    %141 = vector.gather %splat_25[%c0, %c2, %c1] [%130], %140, %140 : tensor<2x2x7xi1>, vector<7xi32>, vector<7xi1>, vector<7xi1> into vector<7xi1>
    bufferization.dealloc_tensor %reduced : tensor<f32>
    %142 = math.absi %1 : tensor<13x13x5xi16>
    %143 = affine.apply affine_map<(d0) -> (0)>(%c10)
    %144 = vector.splat %48 : vector<7xi32>
    %145 = vector.extract_strided_slice %80 {offsets = [3], sizes = [2], strides = [1]} : vector<7xf32> to vector<2xf32>
    %collapsed_33 = tensor.collapse_shape %collapsed [[0, 1]] : tensor<4x7xi16> into tensor<28xi16>
    %146 = index.castu %rank : index to i32
    %147 = scf.execute_region -> memref<2x2x7xi32> {
      %250 = vector.broadcast %c833196896_i32 : i32 to vector<13x13xi32>
      %dest, %accumulated_value = vector.scan <xor>, %122, %250 {inclusive = false, reduction_dim = 2 : i64} : vector<13x13x5xi32>, vector<13x13xi32>
      %251 = math.exp2 %reduced : tensor<f32>
      %alloc_49 = memref.alloc() : memref<7xi16>
      memref.copy %102, %alloc_49 : memref<7xi16> to memref<7xi16>
      memref.assume_alignment %alloc_13, 8 : memref<2xi16>
      %252 = math.absi %c-11797_i16 : i16
      %253 = index.sizeof
      %254 = affine.apply affine_map<(d0, d1, d2) -> ((d0 + d2) floordiv 2)>(%95, %136, %c2)
      %255 = vector.extract_strided_slice %79 {offsets = [0], sizes = [6], strides = [1]} : vector<7xf32> to vector<6xf32>
      %256 = arith.shrsi %c-6837_i16, %c-6837_i16 : i16
      %257 = vector.create_mask %c3 : vector<7xi1>
      %258 = arith.shrsi %c-6837_i16, %56 : i16
      %259 = scf.execute_region -> vector<13x13x5xi64> {
        %264 = math.expm1 %2 : tensor<2xf32>
        %265 = arith.muli %c32507_i16, %56 : i16
        %266 = math.exp2 %90 : tensor<2xf32>
        %267 = vector.extract %89[0] : vector<2x2x7xi1>
        %alloca_50 = memref.alloca() : memref<2x2x7xf16>
        %268 = affine.min affine_map<(d0, d1) -> (d1, (-d1) ceildiv 64, (-d1) ceildiv 4)>(%c2, %c4)
        %269 = arith.addf %cst_1, %cst_1 : f32
        %270 = arith.maxui %false_22, %false_22 : i1
        %271 = math.ctpop %splat_21 : tensor<2x2x7xi16>
        %272 = math.ctpop %c196612051_i64 : i64
        %273 = vector.extract %123[2, 3] : vector<13x13x5xf32>
        %274 = arith.andi %true, %69 : i1
        %275 = math.cttz %11 : tensor<13x13x5xi64>
        %276 = math.sqrt %cst_0 : f32
        %277 = math.powf %3, %2 : tensor<2xf32>
        %278 = math.exp %2 : tensor<2xf32>
        %279 = vector.broadcast %c1554310511_i64 : i64 to vector<13x13x5xi64>
        scf.yield %279 : vector<13x13x5xi64>
      }
      %260 = arith.andi %69, %false_22 : i1
      %261 = index.ceildivs %c6, %84
      %262 = vector.insert %cst_0, %79 [4] : f32 into vector<7xf32>
      %263 = vector.reduction <add>, %79 : vector<7xf32> into f32
      scf.yield %alloc_11 : memref<2x2x7xi32>
    }
    %148 = math.cttz %6 : tensor<7xi64>
    %149 = arith.maxsi %false_22, %false_22 : i1
    %150 = vector.extract %130[2] : vector<7xi32>
    %151 = index.add %143, %c9
    %152 = arith.maxsi %c-6837_i16, %c-6837_i16 : i16
    %153 = vector.load %116[%c1] : memref<2xi64>, vector<2xi64>
    %154 = arith.ceildivsi %c-6837_i16, %56 : i16
    %155 = math.expm1 %7 : tensor<2x2x7xf32>
    %156 = math.powf %90, %9 : tensor<2xf32>
    %157 = math.ceil %7 : tensor<2x2x7xf32>
    %158 = arith.shrsi %false_22, %false_22 : i1
    %159 = arith.remui %c833196896_i32, %c661261267_i32 : i32
    %160 = math.ctpop %48 : i32
    %161 = arith.addi %85, %85 : i16
    %162 = bufferization.to_tensor %102 : memref<7xi16>
    %163 = math.ctpop %c32507_i16 : i16
    %164 = vector.insert %cst_2, %63 [0] : f32 into vector<2xf32>
    %165 = vector.reduction <add>, %64 : vector<2xf32> into f32
    %166 = vector.broadcast %48 : i32 to vector<7xi32>
    %167 = index.divu %c4, %c10
    %168 = arith.maxsi %false_4, %69 : i1
    %inserted = tensor.insert %false into %15[%c0] : tensor<2xi1>
    %169 = math.exp2 %7 : tensor<2x2x7xf32>
    %170 = arith.remf %cst_3, %cst_3 : f16
    %171 = math.floor %9 : tensor<2xf32>
    %172 = math.atan %9 : tensor<2xf32>
    %173 = arith.maxsi %false, %69 : i1
    scf.index_switch %136 
    case 1 {
      %250 = index.mul %118, %c2
      scf.if %69 {
        memref.assume_alignment %47, 1 : memref<2xf16>
        %262 = vector.extract_strided_slice %63 {offsets = [0], sizes = [2], strides = [1]} : vector<2xf32> to vector<2xf32>
        %263 = vector.extract %130[1] : vector<7xi32>
        %264 = bufferization.clone %alloc_14 : memref<2xf16> to memref<2xf16>
        %265 = vector.multi_reduction <minf>, %58, %cst_1 [0] : vector<2xf32> to f32
        %266 = bufferization.to_memref %splat_24 : memref<7xi64>
        %267 = arith.ceildivsi %c-11797_i16, %c-6837_i16 : i16
        %268 = math.fma %2, %3, %2 : tensor<2xf32>
      }
      %splat_49 = tensor.splat %false_4 : tensor<13x13x5xi1>
      bufferization.dealloc_tensor %10 : tensor<2xi1>
      %251 = math.rsqrt %3 : tensor<2xf32>
      %252 = math.ipowi %1, %1 : tensor<13x13x5xi16>
      %253 = arith.remf %cst_2, %cst : f32
      %254 = vector.shuffle %62, %63 [2, 3, 8] : vector<7xf32>, vector<2xf32>
      %255 = bufferization.to_tensor %alloc_11 : memref<2x2x7xi32>
      scf.if %true {
        %262 = bufferization.to_tensor %116 : memref<2xi64>
        %263 = memref.load %alloc_9[%c0] : memref<2xi1>
        %264 = index.ceildivs %136, %c1
        %265 = math.log2 %cst_2 : f32
        %alloc_50 = memref.alloc() : memref<2x2x7xf16>
        %266 = vector.broadcast %cst_3 : f16 to vector<2xf16>
        %267 = vector.broadcast %false_4 : i1 to vector<2xi1>
        %268 = vector.broadcast %c661261267_i32 : i32 to vector<2xi32>
        %269 = vector.gather %alloc_50[%167, %c3, %49] [%268], %267, %266 : memref<2x2x7xf16>, vector<2xi32>, vector<2xi1>, vector<2xf16> into vector<2xf16>
        %splat_51 = tensor.splat %false_22 : tensor<7xi1>
        %270 = math.ctpop %splat_25 : tensor<2x2x7xi1>
        %271 = arith.remf %cst, %cst_2 : f32
      } else {
        %262 = math.exp2 %19 : tensor<f32>
        %263 = arith.negf %cst_1 : f32
        %264 = arith.muli %c1299741594_i64, %c196612051_i64 : i64
        %extracted = tensor.extract %14[%c3] : tensor<7xi1>
        %265 = math.ipowi %17, %11 : tensor<13x13x5xi64>
        affine.store %48, %alloc_20[%c15] : memref<2xi32>
        %266 = arith.shrui %85, %c-6837_i16 : i16
        %267 = math.rsqrt %2 : tensor<2xf32>
      }
      %256 = index.castu %false_4 : i1 to index
      %257 = affine.load %alloc_5[%c10] : memref<2xi32>
      %258 = affine.min affine_map<(d0, d1, d2, d3) -> ((d0 + 2) floordiv 16, d2 - 1, (d0 + 2) ceildiv 128, (d0 + 2) floordiv 64)>(%143, %c4, %84, %95)
      %259 = math.floor %reduced : tensor<f32>
      %260 = arith.remf %cst_1, %cst : f32
      %261 = arith.subi %c-6837_i16, %c-6837_i16 : i16
      scf.yield
    }
    case 2 {
      bufferization.dealloc_tensor %10 : tensor<2xi1>
      %250 = arith.remf %cst_2, %cst_1 : f32
      %251 = vector.broadcast %167 : index to vector<5xindex>
      %252 = vector.broadcast %false : i1 to vector<5xi1>
      vector.scatter %alloc_8[%c0, %c1, %c3] [%251], %252, %252 : memref<2x2x7xi1>, vector<5xindex>, vector<5xi1>, vector<5xi1>
      %253 = affine.apply affine_map<(d0) -> (d0)>(%95)
      %254 = vector.reduction <minf>, %61 : vector<7xf32> into f32
      vector.print %128 : vector<2x2x7xi1>
      %255 = math.rsqrt %reduced : tensor<f32>
      %256 = scf.if %false_22 -> (memref<2xf16>) {
        memref.assume_alignment %alloc_5, 4 : memref<2xi32>
        %264 = arith.remui %true, %69 : i1
        %265 = arith.mulf %cst, %cst_2 : f32
        %266 = arith.subi %c833196896_i32, %c833196896_i32 : i32
        %splat_50 = tensor.splat %cst_0 : tensor<7xf32>
        %expanded_51 = tensor.expand_shape %8 [[0, 1]] : tensor<7xi1> into tensor<7x1xi1>
        %267 = math.log2 %3 : tensor<2xf32>
        %268 = arith.cmpi slt, %56, %c-6837_i16 : i16
        scf.yield %alloc_16 : memref<2xf16>
      } else {
        %264 = vector.matrix_multiply %58, %61 {lhs_columns = 1 : i32, lhs_rows = 2 : i32, rhs_columns = 7 : i32} : (vector<2xf32>, vector<7xf32>) -> vector<14xf32>
        %265 = math.ctpop %0 : tensor<7xi32>
        %266 = math.tanh %2 : tensor<2xf32>
        memref.store %48, %alloc_5[%c1] : memref<2xi32>
        %267 = vector.broadcast %49 : index to vector<7xindex>
        %268 = vector.broadcast %cst_3 : f16 to vector<7xf16>
        vector.scatter %alloc_16[%c0] [%267], %140, %268 : memref<2xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
        %269 = vector.insert %cst_0, %264 [4] : f32 into vector<14xf32>
        %270 = math.ipowi %4, %4 : tensor<7xi64>
        %alloc_50 = memref.alloc() : memref<2x2x7xf16>
        %271 = vector.broadcast %cst_3 : f16 to vector<13x13x5xf16>
        %272 = vector.gather %alloc_50[%253, %151, %c0] [%122], %101, %271 : memref<2x2x7xf16>, vector<13x13x5xi32>, vector<13x13x5xi1>, vector<13x13x5xf16> into vector<13x13x5xf16>
        scf.yield %alloc_16 : memref<2xf16>
      }
      %generated_49 = tensor.generate %133 {
      ^bb0(%arg2: index):
        %264 = index.divs %c1, %167
        %265 = math.absi %15 : tensor<2xi1>
        %266 = math.expm1 %cst_3 : f16
        %267 = math.cos %9 : tensor<2xf32>
        tensor.yield %cst_3 : f16
      } : tensor<?xf16>
      %257 = affine.min affine_map<(d0, d1, d2) -> ((d2 * 64) mod 128, -((d2 * 8) floordiv 64 - (d2 * 8) ceildiv 16), -((d2 * 8) floordiv 64 - (d2 * 8) ceildiv 16), d1 - 1)>(%c2, %49, %253)
      %258 = affine.min affine_map<(d0) -> (d0 ceildiv 16 - 4, (d0 ceildiv 16 - (d0 ceildiv 16 - 4)) floordiv 128)>(%c10)
      %259 = math.ceil %7 : tensor<2x2x7xf32>
      %260 = affine.apply affine_map<(d0, d1) -> (d0 - 144)>(%c7, %c3)
      %261 = tensor.empty() : tensor<2xi32>
      %262 = math.fpowi %90, %261 : tensor<2xf32>, tensor<2xi32>
      affine.for %arg2 = 0 to 94 {
      }
      %263 = arith.remf %cst_2, %cst_1 : f32
      scf.yield
    }
    default {
      %generated_49 = tensor.generate %133, %133 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %263 = arith.minf %cst_3, %cst_3 : f16
        %264 = arith.ceildivsi %48, %48 : i32
        %265 = memref.load %alloc_18[%c9, %c5, %c2] : memref<13x13x5xf16>
        %splat_53 = tensor.splat %c1039931041_i64 : tensor<13x13x5xi64>
        tensor.yield %false_22 : i1
      } : tensor<?x?x5xi1>
      %250 = arith.ceildivsi %false_4, %false_22 : i1
      %true_50 = index.bool.constant true
      %251 = arith.remui %false, %false_22 : i1
      %true_51 = index.bool.constant true
      %252 = vector.broadcast %c196612051_i64 : i64 to vector<13x13x5xi64>
      %253 = vector.gather %from_elements[%c9, %c15, %49] [%122], %101, %252 : tensor<2x2x7xi64>, vector<13x13x5xi32>, vector<13x13x5xi1>, vector<13x13x5xi64> into vector<13x13x5xi64>
      %254 = arith.remf %cst_1, %cst_2 : f32
      %255 = index.sizeof
      %256 = math.ctpop %162 : tensor<7xi16>
      %257 = math.ipowi %4, %splat_24 : tensor<7xi64>
      %258 = math.cos %19 : tensor<f32>
      %259 = arith.maxui %56, %85 : i16
      %260 = memref.load %116[%c0] : memref<2xi64>
      %261 = math.cttz %10 : tensor<2xi1>
      %262 = arith.negf %cst : f32
      %collapsed_52 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<13x13x5xi64> into tensor<169x5xi64>
    }
    scf.if %false {
      %250 = arith.shrui %c-6837_i16, %85 : i16
      %251 = math.ipowi %12, %splat_21 : tensor<2x2x7xi16>
      %splat_49 = tensor.splat %cst_2 : tensor<2xf32>
      %alloca_50 = memref.alloca() : memref<7xi1>
      %true_51 = index.bool.constant true
      %252 = affine.load %alloc_7[%c11] : memref<2xi32>
      %253 = math.sqrt %cst_0 : f32
      %254 = arith.cmpf one, %cst_0, %cst : f32
    } else {
      %250 = index.casts %136 : index to i32
      %251 = affine.min affine_map<(d0) -> ((-(d0 ceildiv 2)) mod 64)>(%26)
      %252 = arith.shrsi %true, %false : i1
      %253 = vector.splat %cst_2 : vector<2xf32>
      affine.for %arg2 = 0 to 64 {
      }
      affine.for %arg2 = 0 to 94 {
      }
      memref.alloca_scope  {
        %true_49 = arith.constant true
        %255 = arith.maxui %c1299741594_i64, %c1299741594_i64 : i64
        %256 = arith.minui %56, %85 : i16
        %257 = vector.broadcast %c833196896_i32 : i32 to vector<2xi32>
        %258 = vector.broadcast %true : i1 to vector<2xi1>
        %259 = vector.maskedload %alloc_5[%c1], %258, %257 : memref<2xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
        %260 = vector.broadcast %c-6837_i16 : i16 to vector<2x2x7xi16>
        %splat_50 = tensor.splat %cst : tensor<7xf32>
        %261 = vector.reduction <maxf>, %145 : vector<2xf32> into f32
        %262 = index.sizeof
        %263 = affine.apply affine_map<(d0) -> ((d0 floordiv 2) floordiv 4)>(%c5)
        %expanded_51 = tensor.expand_shape %collapsed [[0], [1, 2]] : tensor<4x7xi16> into tensor<4x7x1xi16>
        %264 = arith.ceildivsi %56, %c-6837_i16 : i16
        %265 = bufferization.to_memref %13 : memref<13x13x5xi1>
        %266 = math.powf %3, %2 : tensor<2xf32>
        %splat_52 = tensor.splat %69 : tensor<2x2x7xi1>
        %267 = arith.maxui %c-6837_i16, %c-11797_i16 : i16
        %268 = vector.splat %133 : vector<7xindex>
        %collapsed_53 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<13x13x5xi64> into tensor<169x5xi64>
        affine.store %false_4, %265[%c2, %c9, %c11] : memref<13x13x5xi1>
        %269 = math.round %19 : tensor<f32>
        %270 = index.divu %c2, %c14
        %271 = affine.apply affine_map<(d0) -> (0)>(%c10)
        %272 = index.sizeof
        %273 = arith.andi %false_4, %false : i1
        %274 = affine.load %alloc_20[%c0] : memref<2xi32>
        %alloc_54 = memref.alloc() : memref<7xi64>
        %275 = vector.reduction <maxf>, %64 : vector<2xf32> into f32
        %276 = vector.extract %122[4, 4] : vector<13x13x5xi32>
        %277 = math.cos %2 : tensor<2xf32>
        %278 = index.divu %26, %84
        %279 = math.cos %3 : tensor<2xf32>
        %alloc_55 = memref.alloc() : memref<13x13x5xf16>
        memref.copy %alloc_18, %alloc_55 : memref<13x13x5xf16> to memref<13x13x5xf16>
        %280 = arith.remui %c833196896_i32, %274 : i32
      }
      %254 = arith.ceildivsi %false, %false_4 : i1
    }
    %174 = math.atan %2 : tensor<2xf32>
    %175 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %58, %58, %cst_2 : vector<2xf32>, vector<2xf32> into f32
    %176 = math.exp %9 : tensor<2xf32>
    %177 = arith.subi %c661261267_i32, %c661261267_i32 : i32
    %178 = arith.addf %cst_0, %cst : f32
    %179 = arith.remf %cst_0, %cst_0 : f32
    %180 = index.maxu %c11, %c4
    %181 = arith.remf %cst, %cst_2 : f32
    %182 = math.cttz %1 : tensor<13x13x5xi16>
    %183 = math.sqrt %cst_0 : f32
    %184 = vector.broadcast %cst_2 : f32 to vector<7xf32>
    %185 = vector.fma %184, %184, %79 : vector<7xf32>
    %186 = affine.apply affine_map<(d0, d1, d2, d3) -> (0)>(%c4, %c10, %118, %c4)
    %187 = arith.remui %false_22, %true : i1
    %188 = index.castu %c196612051_i64 : i64 to index
    %189 = arith.cmpi slt, %85, %c-6837_i16 : i16
    %190 = memref.load %alloc_15[%c11, %c1, %c1] : memref<13x13x5xi1>
    %191 = math.log10 %19 : tensor<f32>
    %192 = math.ceil %2 : tensor<2xf32>
    %193 = affine.apply affine_map<(d0) -> (d0 * 2)>(%c3)
    %194 = arith.minui %true, %false_4 : i1
    %195 = vector.extract_strided_slice %122 {offsets = [6, 6], sizes = [2, 5], strides = [1, 1]} : vector<13x13x5xi32> to vector<2x5x5xi32>
    %196 = math.round %cst_1 : f32
    memref.tensor_store %12, %alloc_17 : memref<2x2x7xi16>
    %197 = affine.load %alloc_19[%c4] : memref<2xi32>
    %198 = tensor.empty() : tensor<2xf16>
    %199 = vector.broadcast %cst_3 : f16 to vector<13x13x5xf16>
    %200 = vector.gather %198[%c6] [%122], %103, %199 : tensor<2xf16>, vector<13x13x5xi32>, vector<13x13x5xi1>, vector<13x13x5xf16> into vector<13x13x5xf16>
    %false_34 = index.bool.constant false
    scf.index_switch %95 
    case 1 {
      vector.print %195 : vector<2x5x5xi32>
      %250 = arith.cmpi ugt, %false_4, %false : i1
      %251 = arith.ceildivsi %69, %true : i1
      %252 = arith.shrsi %c1039931041_i64, %c1299741594_i64 : i64
      %253 = affine.for %arg2 = 0 to 15 iter_args(%arg3 = %alloc_9) -> (memref<2xi1>) {
        affine.yield %alloc_9 : memref<2xi1>
      }
      %254 = arith.shrui %c1039931041_i64, %c1554310511_i64 : i64
      %255 = affine.load %alloc_10[%c4, %c11, %c15] : memref<13x13x5xi64>
      %256 = vector.broadcast %92 : index to vector<5xindex>
      %257 = vector.broadcast %69 : i1 to vector<5xi1>
      %258 = vector.broadcast %48 : i32 to vector<5xi32>
      vector.scatter %alloc_11[%c1, %c0, %c1] [%256], %257, %258 : memref<2x2x7xi32>, vector<5xindex>, vector<5xi1>, vector<5xi32>
      %259 = tensor.empty() : tensor<5xi64>
      %260 = tensor.empty() : tensor<13xi64>
      %261 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%259, %260 : tensor<5xi64>, tensor<13xi64>) outs(%17 : tensor<13x13x5xi64>) {
      ^bb0(%in: i64, %in_50: i64, %out: i64):
        %268 = math.cttz %from_elements : tensor<2x2x7xi64>
        %269 = math.tan %cst : f32
        vector.print %200 : vector<13x13x5xf16>
        %270 = tensor.empty() : tensor<7xf16>
        memref.store %c833196896_i32, %alloc_5[%c0] : memref<2xi32>
        %271 = vector.broadcast %cst_2 : f32 to vector<2x2xf32>
        %272 = vector.outerproduct %63, %63, %271 {kind = #vector.kind<minf>} : vector<2xf32>, vector<2xf32>
        %273 = math.exp2 %90 : tensor<2xf32>
        %274 = vector.extract_strided_slice %200 {offsets = [5], sizes = [5], strides = [1]} : vector<13x13x5xf16> to vector<5x13x5xf16>
        %275 = index.maxs %c6, %c4
        %276 = arith.cmpf ugt, %cst, %cst_2 : f32
        %277 = math.sqrt %cst_1 : f32
        %278 = index.mul %c4, %193
        %279 = arith.muli %c-6837_i16, %56 : i16
        %280 = vector.multi_reduction <minf>, %124, %123 [] : vector<13x13x5xf32> to vector<13x13x5xf32>
        %281 = vector.broadcast %false_34 : i1 to vector<2xi1>
        %282 = vector.maskedload %alloc_9[%c1], %281, %281 : memref<2xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
        %false_51 = index.bool.constant false
        %283 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 mod 4)>(%133, %c3, %c1, %275)
        %284 = math.exp2 %3 : tensor<2xf32>
        %285 = index.mul %186, %c7
        %expanded_52 = tensor.expand_shape %198 [[0, 1]] : tensor<2xf16> into tensor<2x1xf16>
        %286 = math.cttz %c-11797_i16 : i16
        %287 = bufferization.clone %alloc_11 : memref<2x2x7xi32> to memref<2x2x7xi32>
        %288 = math.rsqrt %cst : f32
        %289 = vector.insert %true, %281 [0] : i1 into vector<2xi1>
        %290 = affine.max affine_map<(d0, d1, d2, d3) -> ((-d1 + d1 ceildiv 4) mod 128, (d0 ceildiv 4) floordiv 32 - 16)>(%136, %188, %c15, %136)
        %291 = math.ctpop %85 : i16
        %292 = math.cttz %6 : tensor<7xi64>
        %293 = vector.broadcast %cst_1 : f32 to vector<13x5x13x5xf32>
        %294 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %123, %123, %293 : vector<13x13x5xf32>, vector<13x13x5xf32> into vector<13x5x13x5xf32>
        %295 = vector.broadcast %cst : f32 to vector<13x13x5xf32>
        %296 = vector.fma %295, %123, %123 : vector<13x13x5xf32>
        %297 = vector.create_mask %285, %26, %c5 : vector<2x2x7xi1>
        %298 = vector.load %alloc_17[%c1, %c1, %c4] : memref<2x2x7xi16>, vector<7xi16>
        %299 = affine.apply affine_map<(d0) -> ((d0 floordiv 2) floordiv 4)>(%92)
        linalg.yield %c1299741594_i64 : i64
      } -> tensor<13x13x5xi64>
      %262 = tensor.empty() : tensor<7xi1>
      %mapped_49 = linalg.map ins(%8, %14 : tensor<7xi1>, tensor<7xi1>) outs(%262 : tensor<7xi1>)
        (%in: i1, %in_50: i1) {
          %268 = math.absf %cst : f32
          %269 = math.exp %2 : tensor<2xf32>
          %270 = vector.flat_transpose %153 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
          %271 = arith.andi %false_22, %false_34 : i1
          %272 = math.tan %9 : tensor<2xf32>
          %alloc_51 = memref.alloc() : memref<2xf32>
          memref.tensor_store %2, %alloc_51 : memref<2xf32>
          %273 = index.casts %c833196896_i32 : i32 to index
          %cst_52 = arith.constant 4.739200e+04 : f16
          %alloc_53 = memref.alloc() : memref<7xi64>
          memref.tensor_store %4, %alloc_53 : memref<7xi64>
          %274 = math.copysign %reduced, %19 : tensor<f32>
          %275 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %59, %64, %cst_1 : vector<2xf32>, vector<2xf32> into f32
          %276 = math.log2 %7 : tensor<2x2x7xf32>
          %277 = arith.remui %false, %false : i1
          %278 = index.castu %c10 : index to i32
          %cst_54 = arith.constant 0x4E0141DA : f32
          %279 = arith.addf %cst_1, %cst : f32
          %280 = arith.remf %cst_0, %cst_2 : f32
          %281 = math.absf %9 : tensor<2xf32>
          %282 = vector.bitcast %104 : vector<2x2x7xi32> to vector<2x2x7xi32>
          %283 = math.ctpop %4 : tensor<7xi64>
          %284 = vector.broadcast %cst_0 : f32 to vector<2x2x7xf32>
          %285 = vector.fma %284, %284, %284 : vector<2x2x7xf32>
          %286 = arith.negf %cst_3 : f16
          %287 = memref.load %alloc_9[%c1] : memref<2xi1>
          %288 = arith.cmpi ule, %false, %true : i1
          %289 = arith.minf %cst_2, %cst_1 : f32
          %290 = arith.subi %false, %69 : i1
          %291 = vector.reduction <mul>, %59 : vector<2xf32> into f32
          %292 = arith.ceildivsi %c661261267_i32, %48 : i32
          %293 = vector.broadcast %cst_3 : f16 to vector<5xf16>
          %294 = vector.insert %293, %200 [5, 11] : vector<5xf16> into vector<13x13x5xf16>
          %295 = affine.max affine_map<(d0) -> (0, 8)>(%188)
          bufferization.dealloc_tensor %collapsed : tensor<4x7xi16>
          %296 = vector.bitcast %89 : vector<2x2x7xi1> to vector<2x2x7xi1>
          %true_55 = arith.constant true
          linalg.yield %true_55 : i1
        }
      scf.if %false {
        %268 = bufferization.clone %47 : memref<2xf16> to memref<2xf16>
        %269 = index.ceildivs %c5, %c2
        %c10789_i16 = arith.constant 10789 : i16
        %270 = arith.shrsi %false, %false_34 : i1
        %271 = arith.cmpi ule, %false_22, %69 : i1
        %272 = vector.multi_reduction <and>, %103, %20 [1, 2] : vector<13x13x5xi1> to vector<13xi1>
        %273 = bufferization.to_memref %1 : memref<13x13x5xi16>
        %274 = index.sizeof
      }
      %263 = math.atan %cst_3 : f16
      %264 = index.sizeof
      %265 = index.mul %c7, %188
      %266 = math.exp %2 : tensor<2xf32>
      %267 = vector.extract %140[5] : vector<7xi1>
      scf.yield
    }
    case 2 {
      %alloc_49 = memref.alloc() : memref<13x13x5xi16>
      %250 = vector.broadcast %c-11797_i16 : i16 to vector<2xi16>
      %251 = vector.broadcast %false_34 : i1 to vector<2xi1>
      %252 = vector.broadcast %197 : i32 to vector<2xi32>
      %253 = vector.gather %alloc_49[%c4, %26, %rank] [%252], %251, %250 : memref<13x13x5xi16>, vector<2xi32>, vector<2xi1>, vector<2xi16> into vector<2xi16>
      %254 = index.mul %rank, %c8
      %255 = index.mul %c8, %95
      %256 = math.powf %cst_0, %cst_2 : f32
      %257 = tensor.empty() : tensor<7xi32>
      %mapped_50 = linalg.map ins(%splat_32, %0 : tensor<7xi32>, tensor<7xi32>) outs(%257 : tensor<7xi32>)
        (%in: i32, %in_54: i32) {
          bufferization.dealloc_tensor %198 : tensor<2xf16>
          %267 = arith.divf %cst_0, %cst_2 : f32
          %268 = arith.andi %c-6837_i16, %c-11797_i16 : i16
          %269 = math.ipowi %c833196896_i32, %in_54 : i32
          %270 = index.castu %true : i1 to index
          %alloc_55 = memref.alloc() : memref<2xf32>
          memref.tensor_store %90, %alloc_55 : memref<2xf32>
          %271 = index.divu %c3, %143
          %272 = vector.reduction <maxf>, %184 : vector<7xf32> into f32
          %273 = arith.minf %cst_0, %cst_0 : f32
          %274 = index.sizeof
          %false_56 = index.bool.constant false
          %275 = affine.load %102[%c1] : memref<7xi16>
          %276 = math.absi %12 : tensor<2x2x7xi16>
          %277 = vector.broadcast %49 : index to vector<2xindex>
          vector.scatter %alloc_15[%c2, %c10, %c1] [%277], %251, %251 : memref<13x13x5xi1>, vector<2xindex>, vector<2xi1>, vector<2xi1>
          %278 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%c4, %c12, %143, %c9)
          %279 = arith.shrsi %c1039931041_i64, %c1299741594_i64 : i64
          %280 = math.floor %7 : tensor<2x2x7xf32>
          %281 = vector.create_mask %270 : vector<2xi1>
          %282 = vector.broadcast %c1 : index to vector<13xindex>
          %283 = vector.broadcast %cst_3 : f16 to vector<13xf16>
          vector.scatter %alloc_14[%c0] [%282], %20, %283 : memref<2xf16>, vector<13xindex>, vector<13xi1>, vector<13xf16>
          %284 = vector.broadcast %274 : index to vector<13xindex>
          vector.scatter %alloc_12[%c5] [%284], %20, %20 : memref<7xi1>, vector<13xindex>, vector<13xi1>, vector<13xi1>
          %285 = memref.load %alloc_20[%c1] : memref<2xi32>
          %286 = tensor.empty() : tensor<7xf32>
          %287 = vector.gather %286[%c9] [%252], %281, %59 : tensor<7xf32>, vector<2xi32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
          %288 = bufferization.clone %alloc_10 : memref<13x13x5xi64> to memref<13x13x5xi64>
          %289 = vector.gather %from_elements[%c9, %278, %186] [%252], %251, %153 : tensor<2x2x7xi64>, vector<2xi32>, vector<2xi1>, vector<2xi64> into vector<2xi64>
          %290 = affine.max affine_map<(d0, d1) -> (d1)>(%c12, %188)
          %291 = vector.extract %140[3] : vector<7xi1>
          %292 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %145, %58, %cst_2 : vector<2xf32>, vector<2xf32> into f32
          %293 = arith.shrsi %false, %true : i1
          %294 = math.exp %19 : tensor<f32>
          %295 = arith.xori %in, %197 : i32
          %296 = math.cos %3 : tensor<2xf32>
          %297 = arith.remf %cst_0, %cst_0 : f32
          %c0_i32 = arith.constant 0 : i32
          linalg.yield %c0_i32 : i32
        }
      %258 = arith.maxui %c1039931041_i64, %c196612051_i64 : i64
      %alloc_51 = memref.alloc() : memref<7xi64>
      memref.tensor_store %4, %alloc_51 : memref<7xi64>
      %259 = vector.broadcast %cst_0 : f32 to vector<2xf32>
      %260 = vector.fma %259, %145, %259 : vector<2xf32>
      %261 = vector.insert %c1039931041_i64, %153 [0] : i64 into vector<2xi64>
      %splat_52 = tensor.splat %cst_1 : tensor<7xf32>
      %alloc_53 = memref.alloc() : memref<13x13x5xf16>
      memref.copy %alloc_18, %alloc_53 : memref<13x13x5xf16> to memref<13x13x5xf16>
      %262 = bufferization.to_tensor %116 : memref<2xi64>
      %263 = math.cos %3 : tensor<2xf32>
      %264 = arith.maxui %false_22, %false_22 : i1
      %265 = index.sizeof
      %266 = math.log10 %3 : tensor<2xf32>
      scf.yield
    }
    default {
      %250 = index.divu %49, %167
      %251 = math.rsqrt %198 : tensor<2xf16>
      %252 = math.powf %7, %7 : tensor<2x2x7xf32>
      %253 = vector.gather %alloc_17[%rank_26, %95, %151] [%166], %141, %78 : memref<2x2x7xi16>, vector<7xi32>, vector<7xi1>, vector<7xi16> into vector<7xi16>
      %254 = arith.remui %false_4, %false_22 : i1
      memref.tensor_store %162, %102 : memref<7xi16>
      %255 = vector.shuffle %62, %184 [2, 4, 5, 6, 7, 8, 10] : vector<7xf32>, vector<7xf32>
      %256 = math.round %7 : tensor<2x2x7xf32>
      %257 = affine.load %alloc_20[%c7] : memref<2xi32>
      %258 = vector.broadcast %c-11797_i16 : i16 to vector<13xi16>
      vector.transfer_write %258, %alloc_17[%c10, %26, %c5] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<13xi16>, memref<2x2x7xi16>
      %259 = math.powf %7, %7 : tensor<2x2x7xf32>
      %260 = vector.broadcast %c833196896_i32 : i32 to vector<2x2x7xi32>
      %261 = arith.cmpf oge, %cst_0, %cst : f32
      %extracted = tensor.extract %splat[%c1] : tensor<7xi16>
      %262 = index.mul %c14, %41
      %263 = math.ipowi %14, %14 : tensor<7xi1>
    }
    %201 = arith.cmpi ule, %c1039931041_i64, %c196612051_i64 : i64
    %202 = affine.load %47[%c10] : memref<2xf16>
    %203 = vector.matrix_multiply %185, %80 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf32>, vector<7xf32>) -> vector<1xf32>
    %204 = math.powf %90, %9 : tensor<2xf32>
    %205 = arith.cmpi sgt, %false_4, %true : i1
    %expanded = tensor.expand_shape %13 [[0], [1], [2, 3]] : tensor<13x13x5xi1> into tensor<13x13x5x1xi1>
    %206 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 mod 8)>(%rank, %41, %41, %c15)
    %collapsed_35 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<13x13x5xi16> into tensor<169x5xi16>
    affine.store %197, %alloc_7[%c8] : memref<2xi32>
    %207 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %203, %203, %cst : vector<1xf32>, vector<1xf32> into f32
    %208 = tensor.empty() : tensor<2xf16>
    %mapped_36 = linalg.map ins(%47, %alloc_16 : memref<2xf16>, memref<2xf16>) outs(%208 : tensor<2xf16>)
      (%in: f16, %in_49: f16) {
        %250 = tensor.empty() : tensor<2xi64>
        %mapped_50 = linalg.map ins(%116, %116, %116 : memref<2xi64>, memref<2xi64>, memref<2xi64>) outs(%250 : tensor<2xi64>)
          (%in_58: i64, %in_59: i64, %in_60: i64) {
            %281 = index.casts %c10 : index to i32
            %282 = arith.maxui %c196612051_i64, %c1039931041_i64 : i64
            %283 = vector.broadcast %c3 : index to vector<13xindex>
            %284 = vector.broadcast %197 : i32 to vector<13xi32>
            vector.scatter %147[%c1, %c0, %c3] [%283], %20, %284 : memref<2x2x7xi32>, vector<13xindex>, vector<13xi1>, vector<13xi32>
            %285 = math.cos %2 : tensor<2xf32>
            %286 = math.expm1 %reduced : tensor<f32>
            %287 = vector.multi_reduction <xor>, %141, %141 [] : vector<7xi1> to vector<7xi1>
            %288 = arith.divsi %in_59, %c1039931041_i64 : i64
            %289 = index.castu %c-11797_i16 : i16 to index
            %290 = memref.load %alloc_9[%c1] : memref<2xi1>
            %291 = math.log2 %2 : tensor<2xf32>
            bufferization.dealloc_tensor %expanded : tensor<13x13x5x1xi1>
            %292 = bufferization.to_tensor %alloc_15 : memref<13x13x5xi1>
            %293 = vector.create_mask %c2, %c5, %143 : vector<13x13x5xi1>
            %294 = arith.cmpf one, %cst_2, %cst : f32
            %295 = vector.load %alloc_20[%c0] : memref<2xi32>, vector<2x2x7xi32>
            %296 = memref.load %alloc_10[%c8, %c0, %c1] : memref<13x13x5xi64>
            %297 = vector.splat %false_4 : vector<7xi1>
            %298 = vector.broadcast %c1 : index to vector<7xindex>
            %299 = vector.broadcast %cst_3 : f16 to vector<7xf16>
            vector.scatter %47[%c0] [%298], %141, %299 : memref<2xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
            %300 = arith.maxsi %c1554310511_i64, %c196612051_i64 : i64
            %301 = affine.apply affine_map<(d0, d1) -> (d0 - 144)>(%c5, %c13)
            %302 = affine.min affine_map<(d0) -> ((d0 floordiv 128) * 16 + 128, (d0 floordiv 128) * 16 - 1, (d0 floordiv 128) * 768)>(%186)
            %303 = index.divu %c15, %c10
            %304 = vector.insert %c-6837_i16, %78 [0] : i16 into vector<7xi16>
            %splat_61 = tensor.splat %85 : tensor<13x13x5xi16>
            %305 = vector.extract %80[6] : vector<7xf32>
            %306 = memref.load %alloc_17[%c1, %c1, %c6] : memref<2x2x7xi16>
            %splat_62 = tensor.splat %85 : tensor<7xi16>
            %307 = arith.remf %in, %in : f16
            %308 = vector.broadcast %48 : i32 to vector<5xi32>
            %309 = vector.insert %308, %122 [1, 4] : vector<5xi32> into vector<13x13x5xi32>
            %310 = index.casts %41 : index to i32
            %false_63 = index.bool.constant false
            memref.tensor_store %7, %alloc_6 : memref<2x2x7xf32>
            %c0_i64 = arith.constant 0 : i64
            linalg.yield %c0_i64 : i64
          }
        %251 = bufferization.clone %alloc_6 : memref<2x2x7xf32> to memref<2x2x7xf32>
        %252 = arith.minf %cst_1, %cst_1 : f32
        %253 = math.round %cst_0 : f32
        %alloc_51 = memref.alloc() : memref<7xi32>
        memref.tensor_store %splat_32, %alloc_51 : memref<7xi32>
        %254 = tensor.empty() : tensor<2x2x7xi16>
        %255 = affine.for %arg2 = 0 to 55 iter_args(%arg3 = %64) -> (vector<2xf32>) {
          affine.yield %145 : vector<2xf32>
        }
        %256 = tensor.empty() : tensor<2x2x7xf16>
        %257 = vector.broadcast %202 : f16 to vector<2xf16>
        %258 = vector.broadcast %false_34 : i1 to vector<2xi1>
        %259 = vector.broadcast %48 : i32 to vector<2xi32>
        %260 = vector.gather %256[%c3, %26, %c9] [%259], %258, %257 : tensor<2x2x7xf16>, vector<2xi32>, vector<2xi1>, vector<2xf16> into vector<2xf16>
        %261 = arith.mulf %cst, %cst : f32
        %262 = vector.reduction <add>, %257 : vector<2xf16> into f16
        %263 = arith.addi %c-11797_i16, %c32507_i16 : i16
        %264 = math.cttz %6 : tensor<7xi64>
        %265 = vector.insert %cst_0, %61 [0] : f32 into vector<7xf32>
        %266 = math.powf %cst_0, %cst_1 : f32
        %267 = arith.addf %cst_2, %cst_0 : f32
        %268 = math.cttz %splat_32 : tensor<7xi32>
        %true_52 = arith.constant true
        %269 = math.atan2 %3, %9 : tensor<2xf32>
        %splat_53 = tensor.splat %c-11797_i16 : tensor<13x13x5xi16>
        %generated_54 = tensor.generate %186 {
        ^bb0(%arg2: index, %arg3: index, %arg4: index):
          memref.store %false, %alloc_12[%c4] : memref<7xi1>
          vector.print %257 : vector<2xf16>
          %281 = arith.maxsi %69, %false_34 : i1
          vector.print %124 : vector<13x13x5xf32>
          tensor.yield %c1554310511_i64 : i64
        } : tensor<?x2x7xi64>
        %270 = math.log10 %256 : tensor<2x2x7xf16>
        %271 = index.castu %c2 : index to i32
        %false_55 = index.bool.constant false
        %272 = vector.broadcast %cst_0 : f32 to vector<13x13x5xf32>
        %273 = vector.fma %272, %124, %123 : vector<13x13x5xf32>
        %274 = math.absi %1 : tensor<13x13x5xi16>
        %275 = arith.maxsi %c661261267_i32, %48 : i32
        %276 = bufferization.clone %alloc_20 : memref<2xi32> to memref<2xi32>
        %277 = arith.maxui %false, %false_4 : i1
        %collapsed_56 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<13x13x5xi16> into tensor<169x5xi16>
        %278 = vector.broadcast %true : i1 to vector<13x5xi1>
        %dest, %accumulated_value = vector.scan <minui>, %103, %278 {inclusive = true, reduction_dim = 0 : i64} : vector<13x13x5xi1>, vector<13x5xi1>
        %279 = arith.maxui %48, %48 : i32
        %280 = arith.shli %85, %85 : i16
        %cst_57 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_57 : f16
      }
    %209 = arith.remf %cst, %cst_1 : f32
    %210 = math.cttz %48 : i32
    %211 = scf.if %69 -> (memref<2xi1>) {
      %250 = arith.remui %c1554310511_i64, %c1039931041_i64 : i64
      %false_49 = index.bool.constant false
      %251 = index.mul %c11, %180
      %252 = tensor.empty(%193) : tensor<2x?x7xi32>
      %253 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_13 : memref<2xi16>) outs(%splat_21 : tensor<2x2x7xi16>) {
      ^bb0(%in: i16, %out: i16):
        %256 = vector.shuffle %78, %78 [0, 1, 6, 7, 10, 12] : vector<7xi16>, vector<7xi16>
        %257 = vector.gather %10[%rank_26] [%121], %103, %101 : tensor<2xi1>, vector<13x13x5xi32>, vector<13x13x5xi1>, vector<13x13x5xi1> into vector<13x13x5xi1>
        %258 = arith.cmpf ueq, %cst, %cst : f32
        %259 = bufferization.to_memref %198 : memref<2xf16>
        %260 = vector.shuffle %257, %101 [1, 2, 3, 4, 7, 11, 12, 14, 15, 17, 20, 22, 23, 25] : vector<13x13x5xi1>, vector<13x13x5xi1>
        %261 = vector.broadcast %202 : f16 to vector<13x5xf16>
        %262 = vector.insert %261, %199 [7] : vector<13x5xf16> into vector<13x13x5xf16>
        %263 = arith.maxsi %false, %false : i1
        %264 = vector.multi_reduction <maxf>, %79, %61 [] : vector<7xf32> to vector<7xf32>
        %265 = vector.create_mask %c0, %188, %151 : vector<2x2x7xi1>
        affine.store %202, %alloc_14[%c0] : memref<2xf16>
        %266 = math.atan2 %2, %9 : tensor<2xf32>
        %267 = arith.minf %202, %202 : f16
        %268 = arith.shrsi %c833196896_i32, %197 : i32
        %269 = arith.muli %in, %out : i16
        %270 = math.sqrt %208 : tensor<2xf16>
        %271 = math.round %7 : tensor<2x2x7xf32>
        %272 = arith.minsi %197, %c661261267_i32 : i32
        %c152845247_i64 = arith.constant 152845247 : i64
        %273 = math.ceil %7 : tensor<2x2x7xf32>
        %274 = math.exp2 %198 : tensor<2xf16>
        %275 = bufferization.to_memref %31 : memref<7xi32>
        %276 = index.ceildivs %41, %188
        %277 = index.divu %188, %c13
        %278 = arith.cmpi ugt, %false_22, %false_4 : i1
        %279 = vector.insert %cst_2, %184 [5] : f32 into vector<7xf32>
        %280 = math.cos %3 : tensor<2xf32>
        %281 = vector.broadcast %c661261267_i32 : i32 to vector<5x5xi32>
        %282 = vector.insert %281, %195 [0] : vector<5x5xi32> into vector<2x5x5xi32>
        %283 = math.powf %19, %reduced : tensor<f32>
        %false_51 = index.bool.constant false
        %284 = arith.maxui %c32507_i16, %85 : i16
        bufferization.dealloc_tensor %collapsed_35 : tensor<169x5xi16>
        %285 = vector.reduction <minsi>, %130 : vector<7xi32> into i32
        linalg.yield %out : i16
      } -> tensor<2x2x7xi16>
      %generated_50 = tensor.generate %c10, %c1, %c6 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %256 = vector.broadcast %cst_0 : f32 to vector<7x7xf32>
        %257 = vector.outerproduct %184, %185, %256 {kind = #vector.kind<mul>} : vector<7xf32>, vector<7xf32>
        memref.tensor_store %15, %alloc_9 : memref<2xi1>
        %258 = math.absi %collapsed : tensor<4x7xi16>
        %259 = vector.shuffle %121, %122 [1, 3, 4, 5, 7, 16, 17, 23, 24] : vector<13x13x5xi32>, vector<13x13x5xi32>
        tensor.yield %c196612051_i64 : i64
      } : tensor<?x?x?xi64>
      %c1_i64 = arith.constant 1 : i64
      %c0_i64 = arith.constant 0 : i64
      %254 = vector.transfer_read %6[%c11], %c0_i64 : tensor<7xi64>, vector<i64>
      %255 = tensor.empty(%151) : tensor<13x13x?xf16>
      scf.yield %alloc_9 : memref<2xi1>
    } else {
      %250 = math.atan %9 : tensor<2xf32>
      %251 = math.tan %198 : tensor<2xf16>
      %252 = arith.ceildivsi %c1299741594_i64, %c1554310511_i64 : i64
      %253 = scf.if %false -> (i16) {
        %258 = arith.remf %202, %cst_3 : f16
        %259 = index.sizeof
        %260 = arith.addi %c32507_i16, %85 : i16
        %261 = index.castu %c1299741594_i64 : i64 to index
        %262 = vector.reduction <minf>, %62 : vector<7xf32> into f32
        %263 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %203, %203, %cst : vector<1xf32>, vector<1xf32> into f32
        %264 = affine.max affine_map<(d0, d1, d2) -> ((d2 - 1) * 64, d2 - 1)>(%84, %167, %c8)
        %265 = math.ceil %7 : tensor<2x2x7xf32>
        scf.yield %56 : i16
      } else {
        %258 = math.absf %9 : tensor<2xf32>
        %259 = math.cttz %162 : tensor<7xi16>
        %260 = arith.remf %cst_2, %cst_0 : f32
        %261 = affine.min affine_map<(d0, d1, d2) -> (d1 + d0 floordiv 16 - (d2 + d2 + d0 floordiv 16), d0 mod 8)>(%c13, %180, %41)
        %262 = math.floor %cst_1 : f32
        %263 = vector.broadcast %cst_2 : f32 to vector<7xf32>
        %264 = vector.fma %263, %79, %185 : vector<7xf32>
        %265 = memref.load %147[%c1, %c0, %c4] : memref<2x2x7xi32>
        %266 = index.castu %85 : i16 to index
        scf.yield %56 : i16
      }
      %254 = arith.shrui %56, %253 : i16
      %255 = bufferization.to_tensor %alloc_18 : memref<13x13x5xf16>
      %256 = vector.broadcast %cst_2 : f32 to vector<2x2x7xf32>
      %257 = vector.fma %256, %256, %256 : vector<2x2x7xf32>
      %inserted_49 = tensor.insert %c1039931041_i64 into %11[%c10, %c0, %c1] : tensor<13x13x5xi64>
      scf.yield %alloc_9 : memref<2xi1>
    }
    %212 = vector.create_mask %26 : vector<7xi1>
    %213 = index.maxs %rank, %118
    %214 = index.casts %c833196896_i32 : i32 to index
    bufferization.dealloc_tensor %22 : tensor<i32>
    %215 = math.cttz %false_22 : i1
    %alloca_37 = memref.alloca() : memref<13x13x5xf16>
    %expanded_38 = tensor.expand_shape %6 [[0, 1]] : tensor<7xi64> into tensor<7x1xi64>
    %216 = math.cttz %from_elements : tensor<2x2x7xi64>
    %217 = index.mul %180, %26
    %218 = vector.broadcast %c9 : index to vector<5xindex>
    %219 = vector.broadcast %true : i1 to vector<5xi1>
    vector.scatter %211[%c0] [%218], %219, %219 : memref<2xi1>, vector<5xindex>, vector<5xi1>, vector<5xi1>
    %220 = math.ipowi %from_elements, %from_elements : tensor<2x2x7xi64>
    %splat_39 = tensor.splat %56 : tensor<2xi16>
    %rank_40 = tensor.rank %collapsed_33 : tensor<28xi16>
    %221 = affine.apply affine_map<(d0, d1, d2, d3) -> (-(d1 + (d1 mod 2) * 16))>(%c4, %c10, %136, %92)
    %222 = arith.addi %c-11797_i16, %85 : i16
    %223 = math.tan %3 : tensor<2xf32>
    scf.if %false_22 {
      %250 = math.log10 %cst_2 : f32
      %251 = arith.cmpi ule, %c661261267_i32, %c661261267_i32 : i32
      %252 = arith.addf %cst_0, %cst_0 : f32
      %c25036_i16 = arith.constant 25036 : i16
      %253 = math.exp2 %reduced : tensor<f32>
      %254 = math.powf %cst, %cst_1 : f32
      %255 = vector.shuffle %62, %185 [0, 2, 5, 7, 8, 9, 13] : vector<7xf32>, vector<7xf32>
      %256 = arith.minf %cst_3, %202 : f16
    }
    %224 = arith.ceildivsi %c661261267_i32, %c833196896_i32 : i32
    %225 = vector.insert %cst, %59 [0] : f32 into vector<2xf32>
    memref.assume_alignment %alloc_11, 8 : memref<2x2x7xi32>
    %false_41 = index.bool.constant false
    %226 = arith.maxsi %69, %false : i1
    %c1649307923_i32 = arith.constant 1649307923 : i32
    vector.print %153 : vector<2xi64>
    %collapsed_42 = tensor.collapse_shape %generated [[0, 1], [2]] : tensor<?x?x?xf32> into tensor<?x?xf32>
    %227 = math.floor %208 : tensor<2xf16>
    %228 = math.absf %9 : tensor<2xf32>
    %229 = arith.minui %85, %c-6837_i16 : i16
    affine.store %false_22, %alloc_8[%c11, %c15, %c6] : memref<2x2x7xi1>
    %230 = arith.cmpi eq, %c196612051_i64, %c1299741594_i64 : i64
    %alloc_43 = memref.alloc() : memref<13x13x5xf32>
    %231 = vector.gather %alloc_43[%214, %167, %206] [%121], %103, %123 : memref<13x13x5xf32>, vector<13x13x5xi32>, vector<13x13x5xi1>, vector<13x13x5xf32> into vector<13x13x5xf32>
    %232 = arith.remui %c196612051_i64, %c1299741594_i64 : i64
    %233 = arith.addi %c1554310511_i64, %c1554310511_i64 : i64
    vector.print %63 : vector<2xf32>
    %234 = vector.extract %130[0] : vector<7xi32>
    %235 = vector.shuffle %231, %231 [0, 2, 3, 6, 7, 8, 11, 20, 22, 24] : vector<13x13x5xf32>, vector<13x13x5xf32>
    %true_44 = arith.constant true
    %236 = math.cttz %12 : tensor<2x2x7xi16>
    %237 = tensor.empty() : tensor<2xi32>
    %mapped_45 = linalg.map ins(%alloc_20, %alloc_5, %alloc_19 : memref<2xi32>, memref<2xi32>, memref<2xi32>) outs(%237 : tensor<2xi32>)
      (%in: i32, %in_49: i32, %in_50: i32) {
        %cast = tensor.cast %splat_25 : tensor<2x2x7xi1> to tensor<?x?x?xi1>
        %250 = math.log2 %7 : tensor<2x2x7xf32>
        %251 = math.log10 %3 : tensor<2xf32>
        %252 = index.sizeof
        %collapsed_51 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<13x13x5xi64> into tensor<169x5xi64>
        %253 = index.divs %186, %c14
        %254 = vector.reduction <add>, %80 : vector<7xf32> into f32
        %c1669236472_i32 = arith.constant 1669236472 : i32
        %255 = math.log10 %2 : tensor<2xf32>
        %256 = math.floor %3 : tensor<2xf32>
        %257 = index.sizeof
        %258 = affine.load %alloc_16[%c4] : memref<2xf16>
        %259 = math.expm1 %cst_0 : f32
        %260 = memref.load %211[%c1] : memref<2xi1>
        %c1_i64 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %261 = vector.transfer_read %11[%26, %c3, %214], %c0_i64 {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : tensor<13x13x5xi64>, vector<5x2xi64>
        %262 = affine.load %147[%c8, %c9, %c11] : memref<2x2x7xi32>
        %263 = arith.andi %c1039931041_i64, %c1554310511_i64 : i64
        memref.tensor_store %13, %57 : memref<13x13x5xi1>
        %264 = vector.reduction <xor>, %78 : vector<7xi16> into i16
        %265 = index.maxu %rank_40, %257
        %266 = math.expm1 %3 : tensor<2xf32>
        %267 = memref.load %47[%c1] : memref<2xf16>
        %268 = arith.shrui %false, %false_34 : i1
        %269 = bufferization.clone %147 : memref<2x2x7xi32> to memref<2x2x7xi32>
        %270 = index.divs %206, %193
        %271 = vector.extract %62[4] : vector<7xf32>
        %272 = math.ipowi %17, %17 : tensor<13x13x5xi64>
        %273 = math.log2 %19 : tensor<f32>
        %274 = arith.maxsi %69, %false_22 : i1
        %275 = math.round %cst_1 : f32
        %276 = index.mul %c14, %252
        %277 = vector.broadcast %cst_0 : f32 to vector<2xf32>
        %278 = vector.fma %277, %63, %64 : vector<2xf32>
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %238 = math.cttz %17 : tensor<13x13x5xi64>
    %239 = vector.broadcast %c10 : index to vector<5xindex>
    %240 = vector.broadcast %true : i1 to vector<5xi1>
    vector.scatter %alloc_12[%c5] [%239], %240, %240 : memref<7xi1>, vector<5xindex>, vector<5xi1>, vector<5xi1>
    %generated_46 = tensor.generate %84, %217 {
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      %250 = arith.minui %c661261267_i32, %c833196896_i32 : i32
      %251 = vector.broadcast %false_22 : i1 to vector<i1>
      %252 = vector.transfer_write %251, %8[%136] : vector<i1>, tensor<7xi1>
      bufferization.dealloc_tensor %transposed : tensor<2xi1>
      %253 = index.mul %84, %c11
      tensor.yield %c1039931041_i64 : i64
    } : tensor<?x?x7xi64>
    %241 = math.absf %3 : tensor<2xf32>
    %242 = arith.subi %c833196896_i32, %197 : i32
    %243 = arith.shrsi %c661261267_i32, %c833196896_i32 : i32
    %244 = math.ctlz %48 : i32
    %245 = tensor.empty() : tensor<2x2x7xf32>
    %246 = linalg.copy ins(%7 : tensor<2x2x7xf32>) outs(%245 : tensor<2x2x7xf32>) -> tensor<2x2x7xf32>
    %247 = tensor.empty() : tensor<7xi32>
    %transposed_47 = linalg.transpose ins(%splat_32 : tensor<7xi32>) outs(%247 : tensor<7xi32>) permutation = [0] 
    %248 = tensor.empty() : tensor<i16>
    %reduced_48 = linalg.reduce ins(%1 : tensor<13x13x5xi16>) outs(%248 : tensor<i16>) dimensions = [0, 1, 2] 
      (%in: i16, %init: i16) {
        %250 = arith.addi %c-6837_i16, %in : i16
        %false_49 = index.bool.constant false
        %251 = math.tan %cst_0 : f32
        %252 = vector.broadcast %cst_0 : f32 to vector<2x2x7xf32>
        %253 = vector.fma %252, %252, %252 : vector<2x2x7xf32>
        %254 = arith.remui %false_41, %false_34 : i1
        %255 = math.absi %22 : tensor<i32>
        %256 = arith.andi %false_49, %false_4 : i1
        %false_50 = index.bool.constant false
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    scf.parallel (%arg2) = (%167) to (%167) step (%c15) {
      %250 = arith.negf %cst_2 : f32
      %251 = arith.addi %c661261267_i32, %197 : i32
      %252 = vector.insert %cst, %145 [0] : f32 into vector<2xf32>
      %253 = math.powf %202, %cst_3 : f16
      %254 = arith.addi %false_41, %false_41 : i1
      %alloca_49 = memref.alloca() : memref<2xf16>
      %255 = vector.matrix_multiply %64, %58 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf32>, vector<2xf32>) -> vector<1xf32>
      %256 = math.roundeven %3 : tensor<2xf32>
      %257 = math.ceil %3 : tensor<2xf32>
      %258 = vector.broadcast %cst_0 : f32 to vector<13x13x5xf32>
      %259 = vector.fma %258, %124, %258 : vector<13x13x5xf32>
      %260 = affine.apply affine_map<(d0, d1, d2, d3) -> (-(d1 + (d1 mod 2) * 16))>(%214, %92, %c9, %133)
      %alloc_50 = memref.alloc() : memref<13xi64>
      %261 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_50 : memref<13xi64>) outs(%11 : tensor<13x13x5xi64>) {
      ^bb0(%in: i64, %out: i64):
        %268 = arith.ceildivsi %c32507_i16, %c-6837_i16 : i16
        %269 = bufferization.clone %alloc_11 : memref<2x2x7xi32> to memref<2x2x7xi32>
        memref.copy %269, %alloc_11 : memref<2x2x7xi32> to memref<2x2x7xi32>
        %270 = arith.cmpf false, %cst, %cst_0 : f32
        %271 = vector.broadcast %c6 : index to vector<7xindex>
        %272 = vector.broadcast %202 : f16 to vector<7xf16>
        vector.scatter %47[%c1] [%271], %212, %272 : memref<2xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
        %splat_51 = tensor.splat %cst_2 : tensor<2xf32>
        %273 = arith.addf %cst, %cst_0 : f32
        %alloc_52 = memref.alloc() : memref<5x13xi16>
        %274 = tensor.empty() : tensor<169x13xi16>
        %275 = linalg.matmul ins(%collapsed_35, %alloc_52 : tensor<169x5xi16>, memref<5x13xi16>) outs(%274 : tensor<169x13xi16>) -> tensor<169x13xi16>
        %276 = affine.load %alloc_10[%c14, %c1, %c14] : memref<13x13x5xi64>
        %277 = math.atan %cst_1 : f32
        %278 = arith.andi %c1299741594_i64, %out : i64
        %279 = index.mul %26, %c3
        %280 = vector.insert %cst_1, %255 [0] : f32 into vector<1xf32>
        %281 = bufferization.clone %alloc_8 : memref<2x2x7xi1> to memref<2x2x7xi1>
        %282 = arith.shrsi %c661261267_i32, %197 : i32
        %283 = vector.create_mask %92 : vector<7xi1>
        %splat_53 = tensor.splat %c1554310511_i64 : tensor<2xi64>
        %284 = vector.multi_reduction <minf>, %63, %cst [0] : vector<2xf32> to f32
        %285 = arith.xori %out, %276 : i64
        %alloc_54 = memref.alloc() : memref<7x5xi16>
        %286 = tensor.empty() : tensor<4x5xi16>
        %287 = linalg.matmul ins(%collapsed, %alloc_54 : tensor<4x7xi16>, memref<7x5xi16>) outs(%286 : tensor<4x5xi16>) -> tensor<4x5xi16>
        %cast = tensor.cast %13 : tensor<13x13x5xi1> to tensor<?x?x?xi1>
        %288 = vector.broadcast %92 : index to vector<2xindex>
        %289 = vector.broadcast %false_34 : i1 to vector<2xi1>
        %290 = vector.broadcast %c661261267_i32 : i32 to vector<2xi32>
        vector.scatter %alloc_5[%c0] [%288], %289, %290 : memref<2xi32>, vector<2xindex>, vector<2xi1>, vector<2xi32>
        %alloc_55 = memref.alloc() : memref<1x2xi64>
        %291 = tensor.empty() : tensor<7x2xi64>
        %292 = linalg.matmul ins(%expanded_38, %alloc_55 : tensor<7x1xi64>, memref<1x2xi64>) outs(%291 : tensor<7x2xi64>) -> tensor<7x2xi64>
        %293 = math.rsqrt %cst_3 : f16
        %294 = arith.negf %cst_2 : f32
        %extracted = tensor.extract %12[%c0, %c0, %c0] : tensor<2x2x7xi16>
        %false_56 = index.bool.constant false
        %295 = math.tanh %202 : f16
        %splat_57 = tensor.splat %false_22 : tensor<7xi1>
        %296 = arith.remf %cst_0, %cst_2 : f32
        %297 = arith.cmpf ule, %284, %cst_0 : f32
        %298 = math.round %2 : tensor<2xf32>
        linalg.yield %c1554310511_i64 : i64
      } -> tensor<13x13x5xi64>
      %262 = arith.addi %false_4, %69 : i1
      %263 = tensor.empty() : tensor<7x5xi16>
      %264 = tensor.empty() : tensor<4x5xi16>
      %265 = linalg.matmul ins(%collapsed, %263 : tensor<4x7xi16>, tensor<7x5xi16>) outs(%264 : tensor<4x5xi16>) -> tensor<4x5xi16>
      %266 = math.exp %cst_3 : f16
      %267 = affine.apply affine_map<(d0, d1) -> (d0 - 144)>(%180, %186)
      scf.yield
    }
    %249 = affine.vector_load %47[%118] : memref<2xf16>, vector<7xf16>
    affine.vector_store %62, %alloc_6[%c5, %221, %180] : memref<2x2x7xf32>, vector<7xf32>
    vector.print %20 : vector<13xi1>
    vector.print %58 : vector<2xf32>
    vector.print %59 : vector<2xf32>
    vector.print %61 : vector<7xf32>
    vector.print %62 : vector<7xf32>
    vector.print %63 : vector<2xf32>
    vector.print %64 : vector<2xf32>
    vector.print %78 : vector<7xi16>
    vector.print %79 : vector<7xf32>
    vector.print %80 : vector<7xf32>
    vector.print %89 : vector<2x2x7xi1>
    vector.print %101 : vector<13x13x5xi1>
    vector.print %103 : vector<13x13x5xi1>
    vector.print %104 : vector<2x2x7xi32>
    vector.print %121 : vector<13x13x5xi32>
    vector.print %122 : vector<13x13x5xi32>
    vector.print %123 : vector<13x13x5xf32>
    vector.print %124 : vector<13x13x5xf32>
    vector.print %128 : vector<2x2x7xi1>
    vector.print %130 : vector<7xi32>
    vector.print %140 : vector<7xi1>
    vector.print %141 : vector<7xi1>
    vector.print %145 : vector<2xf32>
    vector.print %153 : vector<2xi64>
    vector.print %166 : vector<7xi32>
    vector.print %184 : vector<7xf32>
    vector.print %185 : vector<7xf32>
    vector.print %195 : vector<2x5x5xi32>
    vector.print %199 : vector<13x13x5xf16>
    vector.print %200 : vector<13x13x5xf16>
    vector.print %203 : vector<1xf32>
    vector.print %212 : vector<7xi1>
    vector.print %231 : vector<13x13x5xf32>
    vector.print %249 : vector<7xf16>
    vector.print %cst : f32
    vector.print %c196612051_i64 : i64
    vector.print %cst_0 : f32
    vector.print %c1554310511_i64 : i64
    vector.print %cst_1 : f32
    vector.print %c32507_i16 : i16
    vector.print %c661261267_i32 : i32
    vector.print %c833196896_i32 : i32
    vector.print %cst_2 : f32
    vector.print %c1299741594_i64 : i64
    vector.print %false : i1
    vector.print %c-6837_i16 : i16
    vector.print %cst_3 : f16
    vector.print %false_4 : i1
    vector.print %c1039931041_i64 : i64
    vector.print %c-11797_i16 : i16
    vector.print %false_22 : i1
    vector.print %48 : i32
    vector.print %56 : i16
    vector.print %69 : i1
    vector.print %85 : i16
    vector.print %true : i1
    vector.print %197 : i32
    vector.print %false_34 : i1
    vector.print %202 : f16
    vector.print %false_41 : i1
    return
  }
}
