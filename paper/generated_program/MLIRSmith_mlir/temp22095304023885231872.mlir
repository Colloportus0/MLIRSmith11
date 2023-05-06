module {
  func.func private @func1(%arg0: index, %arg1: memref<8x3xi64>) {
    %cst = arith.constant 1.434390e+08 : f32
    %cst_0 = arith.constant 4.000000e+04 : f16
    %c896_i16 = arith.constant 896 : i16
    %cst_1 = arith.constant 1.98978944E+9 : f32
    %c2015405231_i64 = arith.constant 2015405231 : i64
    %c767271615_i32 = arith.constant 767271615 : i32
    %c247436524_i64 = arith.constant 247436524 : i64
    %false = arith.constant false
    %cst_2 = arith.constant 0x4E04A6F4 : f32
    %cst_3 = arith.constant 4.419200e+04 : f16
    %c16122441_i32 = arith.constant 16122441 : i32
    %c-25185_i16 = arith.constant -25185 : i16
    %c1963310662_i64 = arith.constant 1963310662 : i64
    %c1710974591_i64 = arith.constant 1710974591 : i64
    %c468411168_i32 = arith.constant 468411168 : i32
    %true = arith.constant true
    %0 = tensor.empty() : tensor<11x3xf32>
    %1 = tensor.empty() : tensor<11x3xi64>
    %2 = tensor.empty() : tensor<8x13x3xi64>
    %3 = tensor.empty() : tensor<3x13xi64>
    %4 = tensor.empty() : tensor<8x3xf16>
    %5 = tensor.empty() : tensor<8x13x3xi32>
    %6 = tensor.empty() : tensor<8x13x3xf16>
    %7 = tensor.empty() : tensor<8x13x3xi32>
    %8 = tensor.empty() : tensor<11x3xi16>
    %9 = tensor.empty() : tensor<8x3xi1>
    %10 = tensor.empty() : tensor<3x13xi16>
    %11 = tensor.empty() : tensor<11x3xi32>
    %12 = tensor.empty() : tensor<8x13x3xi64>
    %13 = tensor.empty() : tensor<11x3xi16>
    %14 = tensor.empty() : tensor<3x13xi1>
    %15 = tensor.empty() : tensor<11x3xf16>
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
    %alloc = memref.alloc() : memref<8x13x3xi16>
    %alloc_4 = memref.alloc() : memref<8x13x3xf32>
    %alloc_5 = memref.alloc() : memref<3x13xi1>
    %alloc_6 = memref.alloc() : memref<3x13xi64>
    %alloc_7 = memref.alloc() : memref<8x13x3xf16>
    %alloc_8 = memref.alloc() : memref<11x3xi64>
    %alloc_9 = memref.alloc() : memref<3x13xf16>
    %alloc_10 = memref.alloc() : memref<8x13x3xi16>
    %alloc_11 = memref.alloc() : memref<8x3xi32>
    %alloc_12 = memref.alloc() : memref<11x3xi1>
    %alloc_13 = memref.alloc() : memref<8x3xf16>
    %alloc_14 = memref.alloc() : memref<11x3xi64>
    %alloc_15 = memref.alloc() : memref<8x3xf16>
    %alloc_16 = memref.alloc() : memref<3x13xi64>
    %alloc_17 = memref.alloc() : memref<8x13x3xf32>
    %alloc_18 = memref.alloc() : memref<8x13x3xf16>
    %16 = tensor.empty() : tensor<8x13x3xi64>
    %17 = linalg.copy ins(%2 : tensor<8x13x3xi64>) outs(%16 : tensor<8x13x3xi64>) -> tensor<8x13x3xi64>
    %18 = tensor.empty() : tensor<3x8x13xi32>
    %transposed = linalg.transpose ins(%7 : tensor<8x13x3xi32>) outs(%18 : tensor<3x8x13xi32>) permutation = [2, 0, 1] 
    %alloc_19 = memref.alloc() : memref<8xi32>
    linalg.reduce ins(%7 : tensor<8x13x3xi32>) outs(%alloc_19 : memref<8xi32>) dimensions = [1, 2] 
      (%in: i32, %init: i32) {
        %258 = math.sqrt %cst_3 : f16
        %259 = vector.broadcast %c-25185_i16 : i16 to vector<11xi16>
        %260 = vector.matrix_multiply %259, %259 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi16>, vector<11xi16>) -> vector<1xi16>
        %261 = vector.shuffle %259, %260 [0, 2, 5, 8, 9, 11] : vector<11xi16>, vector<1xi16>
        %262 = affine.for %arg2 = 0 to 76 iter_args(%arg3 = %5) -> (tensor<8x13x3xi32>) {
          affine.yield %arg3 : tensor<8x13x3xi32>
        }
        %263 = bufferization.clone %alloc_9 : memref<3x13xf16> to memref<3x13xf16>
        %264 = vector.transpose %260, [0] : vector<1xi16> to vector<1xi16>
        %265 = math.atan %cst_3 : f16
        %266 = vector.transpose %260, [0] : vector<1xi16> to vector<1xi16>
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %19 = scf.parallel (%arg2) = (%c7) to (%c9) step (%c12) init (%11) -> tensor<11x3xi32> {
      %from_elements_37 = tensor.from_elements %cst_3, %cst_0, %cst_3, %cst_3, %cst_0, %cst_0, %cst_3, %cst_3, %cst_3, %cst_3, %cst_0, %cst_3, %cst_0, %cst_0, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_0, %cst_0, %cst_0, %cst_3 : tensor<8x3xf16>
      %258 = index.ceildivu %c0, %c8
      %259 = index.sizeof
      %260 = arith.xori %c1963310662_i64, %c247436524_i64 : i64
      memref.store %cst_3, %alloc_13[%c2, %c0] : memref<8x3xf16>
      scf.index_switch %c15 
      case 1 {
        %cst_40 = arith.constant 0x4E102E31 : f32
        %273 = math.atan2 %cst_2, %cst : f32
        %274 = math.atan %15 : tensor<11x3xf16>
        memref.tensor_store %3, %alloc_6 : memref<3x13xi64>
        %275 = vector.broadcast %c468411168_i32 : i32 to vector<3x13xi32>
        %276 = vector.broadcast %cst_2 : f32 to vector<8x3xf32>
        %277 = vector.fma %276, %276, %276 : vector<8x3xf32>
        %278 = index.floordivs %c12, %c0
        %279 = arith.muli %c1710974591_i64, %c1963310662_i64 : i64
        %280 = affine.max affine_map<(d0, d1, d2) -> (-(d1 mod 128))>(%c13, %c2, %c1)
        %expanded_41 = tensor.expand_shape %11 [[0], [1, 2]] : tensor<11x3xi32> into tensor<11x3x1xi32>
        %alloca_42 = memref.alloca() : memref<3x13xi16>
        %281 = arith.maxsi %c2015405231_i64, %c1963310662_i64 : i64
        %c1411185994_i32 = arith.constant 1411185994 : i32
        %282 = index.maxu %c3, %259
        %283 = arith.ceildivsi %c16122441_i32, %c767271615_i32 : i32
        %284 = arith.subi %c767271615_i32, %c16122441_i32 : i32
        %285 = index.maxs %280, %c9
        scf.yield
      }
      default {
        %273 = vector.broadcast %cst_0 : f16 to vector<3x13xf16>
        %274 = vector.shuffle %273, %273 [0, 1, 3] : vector<3x13xf16>, vector<3x13xf16>
        %275 = index.ceildivu %arg2, %c15
        %276 = index.ceildivu %275, %c0
        memref.assume_alignment %alloc_16, 8 : memref<3x13xi64>
        %277 = arith.ceildivsi %false, %false : i1
        %278 = math.ceil %0 : tensor<11x3xf32>
        %279 = vector.broadcast %c896_i16 : i16 to vector<1xi16>
        %280 = vector.multi_reduction <maxui>, %279, %c896_i16 [0] : vector<1xi16> to i16
        %281 = vector.splat %false : vector<8x3xi1>
        %282 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 * 64, d2 * 64)>(%c2, %c5, %c11, %276)
        %283 = math.fpowi %15, %11 : tensor<11x3xf16>, tensor<11x3xi32>
        %284 = index.add %c10, %259
        %285 = vector.insert %280, %279 [0] : i16 into vector<1xi16>
        %286 = arith.divf %cst, %cst_1 : f32
        %287 = vector.broadcast %c896_i16 : i16 to vector<11x3xi16>
        %288 = vector.broadcast %280 : i16 to vector<11xi16>
        %dest_40, %accumulated_value_41 = vector.scan <maxui>, %287, %288 {inclusive = true, reduction_dim = 1 : i64} : vector<11x3xi16>, vector<11xi16>
        %289 = math.roundeven %6 : tensor<8x13x3xf16>
        %290 = vector.bitcast %279 : vector<1xi16> to vector<1xi16>
      }
      %261 = vector.broadcast %cst_3 : f16 to vector<8x13x3xf16>
      %262 = vector.transpose %261, [0, 1, 2] : vector<8x13x3xf16> to vector<8x13x3xf16>
      %alloca = memref.alloca() : memref<8x13x3xi1>
      %263 = math.cttz %c1963310662_i64 : i64
      %264 = index.sizeof
      %265 = math.log10 %cst_2 : f32
      %true_38 = arith.constant true
      %splat_39 = tensor.splat %cst_1 : tensor<8x13x3xf32>
      %266 = math.round %0 : tensor<11x3xf32>
      %267 = arith.remf %cst_3, %cst_3 : f16
      %268 = vector.broadcast %c896_i16 : i16 to vector<3x13xi16>
      %269 = vector.broadcast %true : i1 to vector<3x13xi1>
      %270 = vector.broadcast %c468411168_i32 : i32 to vector<3x13xi32>
      %271 = vector.gather %alloc[%c14, %c5, %c13] [%270], %269, %268 : memref<8x13x3xi16>, vector<3x13xi32>, vector<3x13xi1>, vector<3x13xi16> into vector<3x13xi16>
      %272 = tensor.empty() : tensor<11x3xi32>
      scf.reduce(%272)  : tensor<11x3xi32> {
      ^bb0(%arg3: tensor<11x3xi32>, %arg4: tensor<11x3xi32>):
        %alloc_40 = memref.alloc() : memref<3x13xi1>
        bufferization.dealloc_tensor %arg3 : tensor<11x3xi32>
        memref.copy %alloc_6, %alloc_16 : memref<3x13xi64> to memref<3x13xi64>
        %273 = vector.broadcast %cst_0 : f16 to vector<11x3xf16>
        %true_41 = arith.constant true
        %274 = index.sizeof
        %275 = vector.broadcast %cst : f32 to vector<11x3xf32>
        %276 = vector.fma %275, %275, %275 : vector<11x3xf32>
        %277 = math.fpowi %cst_3, %c767271615_i32 : f16, i32
        %278 = tensor.empty() : tensor<11x3xi32>
        scf.reduce.return %278 : tensor<11x3xi32>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_16[%c1, %c7] : memref<3x13xi64>, vector<11xi64>
    affine.vector_store %20, %alloc_16[%c4, %c10] : memref<3x13xi64>, vector<11xi64>
    %21 = tensor.empty() : tensor<8xi32>
    %22 = tensor.empty() : tensor<i32>
    %23 = linalg.dot ins(%alloc_19, %21 : memref<8xi32>, tensor<8xi32>) outs(%22 : tensor<i32>) -> tensor<i32>
    %24 = vector.multi_reduction <add>, %20, %20 [] : vector<11xi64> to vector<11xi64>
    %25 = math.fma %4, %4, %4 : tensor<8x3xf16>
    %26 = math.atan %4 : tensor<8x3xf16>
    %27 = math.ctpop %16 : tensor<8x13x3xi64>
    %28 = vector.transpose %20, [0] : vector<11xi64> to vector<11xi64>
    %29 = tensor.empty(%c13, %c14) : tensor<?x?xf16>
    %30 = vector.splat %c14 : vector<8x13x3xindex>
    %31 = arith.muli %c896_i16, %c896_i16 : i16
    %expanded = tensor.expand_shape %5 [[0], [1], [2, 3]] : tensor<8x13x3xi32> into tensor<8x13x3x1xi32>
    %32 = vector.insert %c247436524_i64, %20 [8] : i64 into vector<11xi64>
    %33 = math.log10 %cst_1 : f32
    %34 = memref.alloca_scope  -> (memref<8x13x3xi16>) {
      %258 = math.round %cst : f32
      %259 = math.rsqrt %15 : tensor<11x3xf16>
      %260 = arith.ceildivsi %c767271615_i32, %c468411168_i32 : i32
      %alloc_37 = memref.alloc() : memref<13x8xi64>
      %261 = tensor.empty() : tensor<3x8xi64>
      %262 = linalg.matmul ins(%3, %alloc_37 : tensor<3x13xi64>, memref<13x8xi64>) outs(%261 : tensor<3x8xi64>) -> tensor<3x8xi64>
      %alloca = memref.alloca() : memref<8x13x3xi1>
      %263 = arith.ceildivsi %c896_i16, %c896_i16 : i16
      %264 = arith.remsi %c2015405231_i64, %c1710974591_i64 : i64
      %265 = vector.broadcast %c11 : index to vector<13xindex>
      %266 = vector.broadcast %true : i1 to vector<13xi1>
      %267 = vector.broadcast %c16122441_i32 : i32 to vector<13xi32>
      vector.scatter %alloc_11[%c2, %c2] [%265], %266, %267 : memref<8x3xi32>, vector<13xindex>, vector<13xi1>, vector<13xi32>
      %268 = math.log %15 : tensor<11x3xf16>
      %269 = math.atan %6 : tensor<8x13x3xf16>
      %270 = vector.broadcast %c2 : index to vector<3xindex>
      %271 = vector.broadcast %true : i1 to vector<3xi1>
      %272 = vector.broadcast %c247436524_i64 : i64 to vector<3xi64>
      vector.scatter %alloc_16[%c1, %c11] [%270], %271, %272 : memref<3x13xi64>, vector<3xindex>, vector<3xi1>, vector<3xi64>
      %273 = arith.minsi %c896_i16, %c896_i16 : i16
      %274 = arith.remf %cst_0, %cst_3 : f16
      %275 = math.tanh %4 : tensor<8x3xf16>
      %276 = affine.if affine_set<(d0) : (((d0 floordiv 16) ceildiv 16) ceildiv 128 == 0, (d0 floordiv 16) ceildiv 4 - d0 == 0, -((d0 floordiv 16) ceildiv 16) == 0)>(%c13) -> i32 {
        %289 = math.copysign %4, %4 : tensor<8x3xf16>
        %290 = index.divs %c13, %c6
        %291 = index.casts %c13 : index to i32
        %292 = math.round %6 : tensor<8x13x3xf16>
        %collapsed_41 = tensor.collapse_shape %0 [[0, 1]] : tensor<11x3xf32> into tensor<33xf32>
        %293 = arith.mulf %cst_3, %cst_0 : f16
        %294 = math.absf %cst_3 : f16
        %295 = arith.minui %c1963310662_i64, %c2015405231_i64 : i64
        affine.yield %c468411168_i32 : i32
      } else {
        %289 = vector.multi_reduction <maxui>, %20, %20 [] : vector<11xi64> to vector<11xi64>
        %290 = math.ceil %4 : tensor<8x3xf16>
        %291 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 + 64, d1 + 64, ((d1 + 4) mod 32 + d1 + 4) * 32, (d1 + 4) ceildiv 64)>(%c14, %c11, %c15, %c5)
        %292 = math.copysign %6, %6 : tensor<8x13x3xf16>
        %293 = memref.realloc %alloc_19 : memref<8xi32> to memref<3xi32>
        %294 = math.rsqrt %cst_1 : f32
        %295 = arith.minui %c-25185_i16, %c896_i16 : i16
        %296 = memref.atomic_rmw minu %c468411168_i32, %alloc_11[%c3, %c0] : (i32, memref<8x3xi32>) -> i32
        affine.yield %c468411168_i32 : i32
      }
      %277 = arith.muli %c247436524_i64, %c1710974591_i64 : i64
      %278 = vector.bitcast %20 : vector<11xi64> to vector<11xi64>
      %279 = math.ctpop %c1710974591_i64 : i64
      %280 = vector.bitcast %278 : vector<11xi64> to vector<11xi64>
      memref.assume_alignment %alloc_18, 8 : memref<8x13x3xf16>
      %281 = scf.while (%arg2 = %c767271615_i32) : (i32) -> i32 {
        %289 = bufferization.clone %alloc_7 : memref<8x13x3xf16> to memref<8x13x3xf16>
        %rank_41 = tensor.rank %16 : tensor<8x13x3xi64>
        %290 = index.maxu %c14, %c5
        %alloc_42 = memref.alloc() : memref<8x3xi16>
        %291 = math.fpowi %0, %11 : tensor<11x3xf32>, tensor<11x3xi32>
        memref.store %c1963310662_i64, %alloc_8[%c0, %c1] : memref<11x3xi64>
        %292 = vector.multi_reduction <minsi>, %280, %c247436524_i64 [0] : vector<11xi64> to i64
        %293 = arith.remf %cst_2, %cst_2 : f32
        scf.condition(%true) %arg2 : i32
      } do {
      ^bb0(%arg2: i32):
        %289 = math.tanh %cst_2 : f32
        %inserted_41 = tensor.insert %cst_0 into %6[%c4, %c8, %c1] : tensor<8x13x3xf16>
        %290 = arith.addi %c247436524_i64, %c1963310662_i64 : i64
        %291 = arith.xori %c2015405231_i64, %c247436524_i64 : i64
        %292 = vector.broadcast %c0 : index to vector<3xindex>
        %293 = vector.broadcast %false : i1 to vector<3xi1>
        %294 = vector.broadcast %cst_0 : f16 to vector<3xf16>
        vector.scatter %alloc_15[%c6, %c1] [%292], %293, %294 : memref<8x3xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
        %295 = memref.realloc %alloc_19 : memref<8xi32> to memref<11xi32>
        %296 = affine.max affine_map<(d0) -> ((d0 mod 64 - d0) * 16, (((d0 mod 64 - d0) * 16) floordiv 32) floordiv 16 - ((d0 mod 64 - d0) * 16) floordiv 32, -(d0 mod 64 - d0))>(%c10)
        %297 = index.sizeof
        %298 = math.copysign %cst_1, %cst : f32
        %299 = vector.broadcast %arg2 : i32 to vector<8x3xi32>
        %300 = math.roundeven %0 : tensor<11x3xf32>
        %301 = arith.muli %true, %false : i1
        memref.copy %alloc_8, %alloc_14 : memref<11x3xi64> to memref<11x3xi64>
        %302 = affine.max affine_map<(d0, d1) -> ((d0 mod 16) floordiv 64, (d0 mod 16) floordiv 64 - 1, (d0 mod 16) floordiv 64 - 1, d1 + 130)>(%c0, %c8)
        %303 = math.rsqrt %15 : tensor<11x3xf16>
        bufferization.dealloc_tensor %6 : tensor<8x13x3xf16>
        scf.yield %c767271615_i32 : i32
      }
      %282 = math.tanh %6 : tensor<8x13x3xf16>
      %283 = affine.if affine_set<(d0) : (128 == 0)>(%c7) -> memref<8x3xi32> {
        %expanded_41 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<8x3xi1> into tensor<8x3x1xi1>
        %289 = math.rsqrt %cst_0 : f16
        %290 = index.divu %c12, %c14
        %291 = vector.shuffle %278, %278 [1, 2, 5, 6, 15, 16, 20, 21] : vector<11xi64>, vector<11xi64>
        memref.store %c16122441_i32, %alloc_11[%c0, %c1] : memref<8x3xi32>
        %alloca_42 = memref.alloca() : memref<8x13x3xi64>
        bufferization.dealloc_tensor %expanded : tensor<8x13x3x1xi32>
        %292 = vector.transpose %278, [0] : vector<11xi64> to vector<11xi64>
        affine.yield %alloc_11 : memref<8x3xi32>
      } else {
        %289 = vector.matrix_multiply %20, %280 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi64>, vector<11xi64>) -> vector<1xi64>
        %290 = math.ctpop %22 : tensor<i32>
        %alloca_41 = memref.alloca() : memref<8x13x3xi1>
        %291 = math.exp2 %cst_3 : f16
        %292 = affine.load %alloc_5[%c3, %c15] : memref<3x13xi1>
        %293 = index.divu %c1, %c4
        %294 = math.ceil %4 : tensor<8x3xf16>
        %295 = math.atan2 %cst_0, %cst_0 : f16
        affine.yield %alloc_11 : memref<8x3xi32>
      }
      %284 = math.round %cst_0 : f16
      %expanded_38 = tensor.expand_shape %16 [[0], [1], [2, 3]] : tensor<8x13x3xi64> into tensor<8x13x3x1xi64>
      %285 = math.ctpop %5 : tensor<8x13x3xi32>
      memref.store %c1710974591_i64, %alloc_14[%c1, %c2] : memref<11x3xi64>
      %inserted_39 = tensor.insert %c1963310662_i64 into %17[%c1, %c7, %c1] : tensor<8x13x3xi64>
      %286 = index.divu %c14, %c9
      %287 = arith.xori %c767271615_i32, %c468411168_i32 : i32
      %inserted_40 = tensor.insert %c896_i16 into %10[%c1, %c5] : tensor<3x13xi16>
      %288 = math.ceil %cst_3 : f16
      memref.alloca_scope.return %alloc : memref<8x13x3xi16>
    }
    %35 = math.ctpop %1 : tensor<11x3xi64>
    %36 = math.ctpop %14 : tensor<3x13xi1>
    %rank = tensor.rank %3 : tensor<3x13xi64>
    %37 = vector.broadcast %cst : f32 to vector<8x13x3xf32>
    %38 = vector.fma %37, %37, %37 : vector<8x13x3xf32>
    %39 = vector.broadcast %cst_2 : f32 to vector<13x3xf32>
    %dest, %accumulated_value = vector.scan <maxf>, %38, %39 {inclusive = false, reduction_dim = 0 : i64} : vector<8x13x3xf32>, vector<13x3xf32>
    affine.store %true, %alloc_12[%c12, %c9] : memref<11x3xi1>
    %40 = math.sqrt %0 : tensor<11x3xf32>
    %41 = arith.negf %cst_1 : f32
    %42 = math.fpowi %6, %7 : tensor<8x13x3xf16>, tensor<8x13x3xi32>
    %43 = affine.if affine_set<(d0, d1, d2) : (d0 + 31 == 0, (d0 floordiv 32) floordiv 32 == 0, d2 >= 0, ((d0 floordiv 32) ceildiv 2 + (d0 floordiv 32) floordiv 32) mod 128 >= 0)>(%c14, %c8, %c4) -> memref<3x13xf32> {
      %258 = arith.remf %cst_3, %cst_0 : f16
      %259 = index.ceildivu %c11, %c4
      memref.store %c896_i16, %34[%c5, %c4, %c0] : memref<8x13x3xi16>
      %260 = arith.maxf %cst_1, %cst : f32
      %261 = vector.broadcast %c767271615_i32 : i32 to vector<3x13xi32>
      %collapsed_37 = tensor.collapse_shape %17 [[0, 1], [2]] : tensor<8x13x3xi64> into tensor<104x3xi64>
      %262 = vector.create_mask %c4, %c4 : vector<8x3xi1>
      %263 = memref.alloca_scope  -> (memref<3x13xf16>) {
        %264 = bufferization.clone %alloc_19 : memref<8xi32> to memref<8xi32>
        %265 = arith.muli %c16122441_i32, %c16122441_i32 : i32
        %266 = index.sizeof
        %267 = math.cttz %21 : tensor<8xi32>
        %268 = math.ctpop %18 : tensor<3x8x13xi32>
        %269 = math.copysign %cst, %cst_1 : f32
        %270 = vector.splat %cst_2 : vector<8x3xf32>
        %271 = arith.minui %c896_i16, %c896_i16 : i16
        %272 = math.roundeven %15 : tensor<11x3xf16>
        %273 = arith.ori %true, %true : i1
        %274 = arith.addf %cst_3, %cst_0 : f16
        %rank_39 = tensor.rank %2 : tensor<8x13x3xi64>
        %275 = math.round %6 : tensor<8x13x3xf16>
        %276 = arith.remf %cst_1, %cst_2 : f32
        %277 = vector.insert %c1710974591_i64, %20 [3] : i64 into vector<11xi64>
        %278 = index.ceildivu %c11, %c5
        %279 = index.divu %c14, %259
        %280 = math.fpowi %0, %11 : tensor<11x3xf32>, tensor<11x3xi32>
        %281 = math.log10 %4 : tensor<8x3xf16>
        %282 = math.tanh %4 : tensor<8x3xf16>
        %283 = vector.flat_transpose %20 {columns = 11 : i32, rows = 1 : i32} : vector<11xi64> -> vector<11xi64>
        %284 = bufferization.clone %alloc_12 : memref<11x3xi1> to memref<11x3xi1>
        %285 = math.exp2 %cst : f32
        %286 = math.atan %6 : tensor<8x13x3xf16>
        %rank_40 = tensor.rank %16 : tensor<8x13x3xi64>
        %287 = math.fma %cst_1, %cst, %cst_1 : f32
        %288 = vector.broadcast %c1710974591_i64 : i64 to vector<11xi64>
        %289 = vector.transfer_write %288, %1[%c13, %c10] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<11xi64>, tensor<11x3xi64>
        %290 = arith.maxf %cst_1, %cst : f32
        memref.store %cst_1, %alloc_4[%c5, %c11, %c0] : memref<8x13x3xf32>
        %291 = memref.load %alloc_7[%c2, %c5, %c0] : memref<8x13x3xf16>
        %292 = vector.extract %262[2] : vector<8x3xi1>
        %293 = arith.remf %cst, %cst_1 : f32
        memref.alloca_scope.return %alloc_9 : memref<3x13xf16>
      }
      %alloc_38 = memref.alloc() : memref<3x13xf32>
      affine.yield %alloc_38 : memref<3x13xf32>
    } else {
      %258 = math.exp %0 : tensor<11x3xf32>
      %259 = memref.alloca_scope  -> (memref<3x13xi32>) {
        %267 = arith.cmpi slt, %c247436524_i64, %c1710974591_i64 : i64
        %268 = math.log %4 : tensor<8x3xf16>
        %269 = math.log10 %0 : tensor<11x3xf32>
        %270 = arith.ori %c1710974591_i64, %c247436524_i64 : i64
        %271 = arith.ceildivsi %c468411168_i32, %c767271615_i32 : i32
        %272 = index.ceildivu %c7, %c5
        %273 = arith.divsi %c896_i16, %c-25185_i16 : i16
        %274 = vector.matrix_multiply %20, %20 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi64>, vector<11xi64>) -> vector<1xi64>
        %275 = math.exp %0 : tensor<11x3xf32>
        %276 = math.ceil %6 : tensor<8x13x3xf16>
        %277 = index.maxs %c12, %c11
        %278 = math.ceil %cst_2 : f32
        %279 = vector.broadcast %c4 : index to vector<13xindex>
        %280 = vector.broadcast %false : i1 to vector<13xi1>
        %281 = vector.broadcast %c2015405231_i64 : i64 to vector<13xi64>
        vector.scatter %alloc_8[%c7, %c0] [%279], %280, %281 : memref<11x3xi64>, vector<13xindex>, vector<13xi1>, vector<13xi64>
        %282 = index.sizeof
        %283 = vector.broadcast %cst_0 : f16 to vector<11x3xf16>
        %284 = vector.broadcast %false : i1 to vector<11x3xi1>
        %285 = vector.broadcast %c16122441_i32 : i32 to vector<11x3xi32>
        %286 = vector.gather %alloc_13[%c14, %c3] [%285], %284, %283 : memref<8x3xf16>, vector<11x3xi32>, vector<11x3xi1>, vector<11x3xf16> into vector<11x3xf16>
        %287 = memref.load %alloc_16[%c1, %c1] : memref<3x13xi64>
        %288 = arith.andi %c-25185_i16, %c896_i16 : i16
        %289 = tensor.empty() : tensor<8x13x3xf16>
        %290 = arith.minui %c767271615_i32, %c468411168_i32 : i32
        %291 = math.atan %0 : tensor<11x3xf32>
        %292 = vector.shuffle %20, %274 [0, 3, 4, 6, 7, 8, 11] : vector<11xi64>, vector<1xi64>
        %293 = math.round %cst : f32
        %294 = vector.bitcast %285 : vector<11x3xi32> to vector<11x3xi32>
        %295 = affine.max affine_map<(d0, d1, d2, d3) -> (0)>(%c10, %c2, %c12, %c9)
        %true_40 = arith.constant true
        %296 = math.atan %0 : tensor<11x3xf32>
        %297 = index.castu %c-25185_i16 : i16 to index
        %298 = arith.maxsi %c896_i16, %c896_i16 : i16
        %299 = index.maxu %297, %282
        %300 = arith.addi %false, %true : i1
        %301 = math.rsqrt %cst_1 : f32
        memref.store %cst_2, %alloc_4[%c2, %c7, %c0] : memref<8x13x3xf32>
        %alloc_41 = memref.alloc() : memref<3x13xi32>
        memref.alloca_scope.return %alloc_41 : memref<3x13xi32>
      }
      %260 = math.ceil %cst_1 : f32
      %alloc_37 = memref.alloc() : memref<3x13xf16>
      %261 = tensor.empty() : tensor<11x13xf16>
      %262 = linalg.matmul ins(%15, %alloc_37 : tensor<11x3xf16>, memref<3x13xf16>) outs(%261 : tensor<11x13xf16>) -> tensor<11x13xf16>
      %263 = memref.atomic_rmw maxf %cst_0, %alloc_7[%c2, %c8, %c2] : (f16, memref<8x13x3xf16>) -> f16
      %264 = vector.broadcast %cst : f32 to vector<13x3xf32>
      %265 = vector.multi_reduction <minf>, %38, %264 [0] : vector<8x13x3xf32> to vector<13x3xf32>
      %alloc_38 = memref.alloc() : memref<8x13x3xf16>
      %266 = scf.index_switch %c6 -> tensor<8x13x3xf32> 
      case 1 {
        %267 = bufferization.to_memref %8 : memref<11x3xi16>
        %268 = arith.remf %cst_2, %cst_1 : f32
        %269 = arith.minui %c896_i16, %c896_i16 : i16
        %270 = vector.broadcast %cst_3 : f16 to vector<11xf16>
        vector.transfer_write %270, %alloc_15[%c8, %c14] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<11xf16>, memref<8x3xf16>
        %271 = vector.matrix_multiply %20, %20 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi64>, vector<11xi64>) -> vector<1xi64>
        %272 = tensor.empty() : tensor<3x3xi32>
        %273 = tensor.empty() : tensor<11x3xi32>
        %274 = linalg.matmul ins(%11, %272 : tensor<11x3xi32>, tensor<3x3xi32>) outs(%273 : tensor<11x3xi32>) -> tensor<11x3xi32>
        %275 = index.sub %c13, %c6
        affine.store %cst_2, %alloc_4[%c3, %c12, %c6] : memref<8x13x3xf32>
        %276 = arith.remf %cst_1, %cst_2 : f32
        %277 = arith.ori %c896_i16, %c-25185_i16 : i16
        %278 = math.sqrt %261 : tensor<11x13xf16>
        %279 = arith.andi %c247436524_i64, %c2015405231_i64 : i64
        %280 = arith.maxf %cst, %cst_1 : f32
        %281 = index.maxs %c3, %c5
        %282 = math.log10 %6 : tensor<8x13x3xf16>
        %283 = arith.minf %cst_1, %cst : f32
        %284 = tensor.empty() : tensor<8x13x3xf32>
        scf.yield %284 : tensor<8x13x3xf32>
      }
      case 2 {
        %267 = math.exp %6 : tensor<8x13x3xf16>
        %268 = vector.shuffle %38, %37 [1, 2, 5, 11, 12] : vector<8x13x3xf32>, vector<8x13x3xf32>
        %269 = math.sqrt %cst_0 : f16
        %270 = memref.realloc %alloc_19 : memref<8xi32> to memref<8xi32>
        %271 = memref.load %alloc_17[%c6, %c3, %c2] : memref<8x13x3xf32>
        %272 = math.fpowi %6, %7 : tensor<8x13x3xf16>, tensor<8x13x3xi32>
        %273 = arith.xori %true, %false : i1
        affine.store %c896_i16, %alloc_10[%c12, %c9, %c12] : memref<8x13x3xi16>
        %274 = vector.splat %c14 : vector<8x3xindex>
        %275 = index.maxu %c1, %c7
        %276 = vector.shuffle %264, %264 [1, 2, 3, 6, 9, 11, 13, 17, 18, 19, 21, 22, 23, 24, 25] : vector<13x3xf32>, vector<13x3xf32>
        %277 = index.ceildivu %c13, %c12
        %278 = arith.muli %c767271615_i32, %c468411168_i32 : i32
        %279 = arith.negf %cst_0 : f16
        %280 = arith.remf %cst_1, %cst_1 : f32
        %extracted = tensor.extract %7[%c3, %c11, %c0] : tensor<8x13x3xi32>
        %281 = tensor.empty() : tensor<8x13x3xf32>
        scf.yield %281 : tensor<8x13x3xf32>
      }
      case 3 {
        memref.assume_alignment %alloc, 2 : memref<8x13x3xi16>
        %alloca = memref.alloca() : memref<3x13xi1>
        %267 = arith.shrsi %c2015405231_i64, %c2015405231_i64 : i64
        %268 = vector.broadcast %c3 : index to vector<13xindex>
        %269 = vector.broadcast %false : i1 to vector<13xi1>
        %270 = vector.broadcast %c896_i16 : i16 to vector<13xi16>
        vector.scatter %alloc[%c7, %c8, %c1] [%268], %269, %270 : memref<8x13x3xi16>, vector<13xindex>, vector<13xi1>, vector<13xi16>
        memref.store %c767271615_i32, %alloc_11[%c1, %c0] : memref<8x3xi32>
        %271 = vector.broadcast %cst : f32 to vector<3x13xf32>
        %272 = math.copysign %0, %0 : tensor<11x3xf32>
        %273 = arith.divui %c-25185_i16, %c896_i16 : i16
        %274 = math.roundeven %15 : tensor<11x3xf16>
        %275 = index.maxu %c10, %c2
        %276 = affine.max affine_map<(d0, d1, d2) -> ((d0 - 8) * 128 - 64)>(%c12, %c12, %c0)
        %277 = arith.remsi %c468411168_i32, %c468411168_i32 : i32
        memref.copy %alloc_8, %alloc_14 : memref<11x3xi64> to memref<11x3xi64>
        %278 = index.maxs %c7, %c2
        %279 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 ceildiv 8)>(%c6, %rank, %c15, %c8)
        %280 = math.log2 %15 : tensor<11x3xf16>
        %281 = tensor.empty() : tensor<8x13x3xf32>
        scf.yield %281 : tensor<8x13x3xf32>
      }
      default {
        %267 = math.copysign %15, %15 : tensor<11x3xf16>
        %268 = vector.broadcast %cst : f32 to vector<8x3xf32>
        %269 = vector.fma %268, %268, %268 : vector<8x3xf32>
        %270 = math.atan %cst_1 : f32
        %271 = index.maxu %c1, %c6
        %272 = arith.maxf %cst_2, %cst_2 : f32
        %273 = index.maxu %c15, %c14
        %274 = index.sizeof
        %275 = vector.broadcast %cst : f32 to vector<8x13x3xf32>
        %276 = vector.fma %275, %38, %38 : vector<8x13x3xf32>
        %277 = vector.broadcast %cst : f32 to vector<3xf32>
        %278 = vector.insert %277, %275 [1, 11] : vector<3xf32> into vector<8x13x3xf32>
        %expanded_40 = tensor.expand_shape %0 [[0], [1, 2]] : tensor<11x3xf32> into tensor<11x3x1xf32>
        %extracted = tensor.extract %9[%c1, %c2] : tensor<8x3xi1>
        %alloc_41 = memref.alloc() : memref<11x3xf32>
        memref.tensor_store %0, %alloc_41 : memref<11x3xf32>
        %279 = math.roundeven %expanded_40 : tensor<11x3x1xf32>
        %280 = arith.ori %c767271615_i32, %c468411168_i32 : i32
        %281 = index.maxs %c15, %c6
        %282 = bufferization.clone %alloc_17 : memref<8x13x3xf32> to memref<8x13x3xf32>
        %283 = tensor.empty() : tensor<8x13x3xf32>
        scf.yield %283 : tensor<8x13x3xf32>
      }
      %alloc_39 = memref.alloc() : memref<3x13xf32>
      affine.yield %alloc_39 : memref<3x13xf32>
    }
    %44 = math.absf %4 : tensor<8x3xf16>
    %45 = scf.while (%arg2 = %false) : (i1) -> i1 {
      %true_37 = index.bool.constant true
      %258 = vector.broadcast %c6 : index to vector<11xindex>
      %259 = vector.broadcast %true_37 : i1 to vector<11xi1>
      %260 = vector.broadcast %cst_0 : f16 to vector<11xf16>
      vector.scatter %alloc_13[%c2, %c2] [%258], %259, %260 : memref<8x3xf16>, vector<11xindex>, vector<11xi1>, vector<11xf16>
      %261 = math.copysign %cst, %cst_1 : f32
      %262 = math.expm1 %cst_0 : f16
      %263 = arith.muli %arg2, %true_37 : i1
      affine.for %arg3 = 0 to 53 {
      }
      %264 = math.copysign %cst_1, %cst_2 : f32
      scf.execute_region {
        %265 = vector.bitcast %20 : vector<11xi64> to vector<11xi64>
        %266 = math.roundeven %15 : tensor<11x3xf16>
        %267 = arith.remsi %c896_i16, %c-25185_i16 : i16
        %268 = index.maxs %c9, %c9
        %269 = arith.remf %cst_3, %cst_0 : f16
        %270 = math.log2 %4 : tensor<8x3xf16>
        %271 = bufferization.clone %alloc_9 : memref<3x13xf16> to memref<3x13xf16>
        %alloc_38 = memref.alloc() : memref<8x3xi1>
        memref.tensor_store %9, %alloc_38 : memref<8x3xi1>
        %272 = arith.remf %cst, %cst_2 : f32
        %273 = arith.negf %cst : f32
        %274 = math.cos %6 : tensor<8x13x3xf16>
        %275 = math.tan %0 : tensor<11x3xf32>
        %276 = arith.divsi %c-25185_i16, %c896_i16 : i16
        %277 = index.ceildivu %c9, %c0
        %278 = vector.splat %c3 : vector<8x13x3xindex>
        %279 = arith.xori %c767271615_i32, %c767271615_i32 : i32
        scf.yield
      }
      scf.condition(%arg2) %true_37 : i1
    } do {
    ^bb0(%arg2: i1):
      %258 = bufferization.clone %alloc_17 : memref<8x13x3xf32> to memref<8x13x3xf32>
      %259 = vector.shuffle %20, %20 [0, 3, 4, 5, 7, 8, 9, 10, 11, 12, 15, 16, 17, 18, 19, 20, 21] : vector<11xi64>, vector<11xi64>
      %generated_37 = tensor.generate %c4 {
      ^bb0(%arg3: index, %arg4: index):
        %271 = index.divu %c6, %c13
        %272 = vector.shuffle %37, %38 [1, 2, 3, 6, 7, 8, 10] : vector<8x13x3xf32>, vector<8x13x3xf32>
        %273 = math.absf %cst_2 : f32
        %c351689263_i32 = arith.constant 351689263 : i32
        tensor.yield %cst_2 : f32
      } : tensor<?x3xf32>
      %260 = vector.broadcast %cst_0 : f16 to vector<13xf16>
      vector.transfer_write %260, %alloc_15[%c14, %c15] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<13xf16>, memref<8x3xf16>
      %261 = math.cttz %c16122441_i32 : i32
      %262 = vector.bitcast %38 : vector<8x13x3xf32> to vector<8x13x3xi32>
      %263 = math.ceil %4 : tensor<8x3xf16>
      %264 = affine.if affine_set<(d0) : (d0 >= 0)>(%c3) -> memref<3x13xi32> {
        %271 = arith.minf %cst_2, %cst : f32
        %272 = index.maxs %c3, %c10
        %273 = math.round %cst_3 : f16
        %274 = memref.atomic_rmw addf %cst_3, %alloc_13[%c5, %c0] : (f16, memref<8x3xf16>) -> f16
        %275 = arith.remf %cst_3, %cst_0 : f16
        %276 = vector.extract_strided_slice %38 {offsets = [3, 10], sizes = [3, 2], strides = [1, 1]} : vector<8x13x3xf32> to vector<3x2x3xf32>
        %277 = math.roundeven %6 : tensor<8x13x3xf16>
        %splat_40 = tensor.splat %cst_2 : tensor<8x13x3xf32>
        %alloc_41 = memref.alloc() : memref<3x13xi32>
        affine.yield %alloc_41 : memref<3x13xi32>
      } else {
        %271 = arith.divui %c247436524_i64, %c247436524_i64 : i64
        %272 = math.log10 %0 : tensor<11x3xf32>
        %273 = math.fpowi %cst_3, %c767271615_i32 : f16, i32
        %274 = vector.broadcast %cst_3 : f16 to vector<3x13xf16>
        %275 = vector.broadcast %false : i1 to vector<3x13xi1>
        %276 = vector.broadcast %c767271615_i32 : i32 to vector<3x13xi32>
        %277 = vector.gather %alloc_7[%c1, %c5, %c6] [%276], %275, %274 : memref<8x13x3xf16>, vector<3x13xi32>, vector<3x13xi1>, vector<3x13xf16> into vector<3x13xf16>
        %278 = arith.addi %c2015405231_i64, %c2015405231_i64 : i64
        %279 = index.casts %c247436524_i64 : i64 to index
        %280 = math.round %0 : tensor<11x3xf32>
        %281 = bufferization.clone %34 : memref<8x13x3xi16> to memref<8x13x3xi16>
        %alloc_40 = memref.alloc() : memref<3x13xi32>
        affine.yield %alloc_40 : memref<3x13xi32>
      }
      %inserted_38 = tensor.insert %arg2 into %9[%c4, %c2] : tensor<8x3xi1>
      %expanded_39 = tensor.expand_shape %7 [[0], [1], [2, 3]] : tensor<8x13x3xi32> into tensor<8x13x3x1xi32>
      %265 = arith.xori %true, %false : i1
      %266 = index.ceildivu %c3, %c3
      %267 = arith.ori %c16122441_i32, %c16122441_i32 : i32
      %268 = math.atan2 %6, %6 : tensor<8x13x3xf16>
      %269 = math.absi %9 : tensor<8x3xi1>
      %270 = bufferization.clone %alloc_19 : memref<8xi32> to memref<8xi32>
      scf.yield %true : i1
    }
    %46 = index.divu %c15, %c2
    %47 = vector.broadcast %cst : f32 to vector<8x3xf32>
    %48 = vector.multi_reduction <minf>, %37, %47 [1] : vector<8x13x3xf32> to vector<8x3xf32>
    %49 = vector.bitcast %37 : vector<8x13x3xf32> to vector<8x13x3xf32>
    %splat = tensor.splat %c247436524_i64 : tensor<11x3xi64>
    %50 = index.sizeof
    %51 = vector.multi_reduction <maxf>, %38, %cst_2 [0, 1, 2] : vector<8x13x3xf32> to f32
    %52 = math.log10 %cst_0 : f16
    %53 = vector.shuffle %47, %47 [1, 2, 4, 5, 9, 10, 11, 12, 13, 14, 15] : vector<8x3xf32>, vector<8x3xf32>
    affine.store %true, %alloc_5[%c7, %c5] : memref<3x13xi1>
    %54 = vector.multi_reduction <xor>, %20, %20 [] : vector<11xi64> to vector<11xi64>
    %splat_20 = tensor.splat %c1963310662_i64 : tensor<11x3xi64>
    %55 = vector.broadcast %c247436524_i64 : i64 to vector<8x3xi64>
    %56 = memref.realloc %alloc_19 : memref<8xi32> to memref<11xi32>
    %57 = math.round %15 : tensor<11x3xf16>
    %58 = arith.divf %cst_3, %cst_0 : f16
    %59 = scf.while (%arg2 = %alloc_10) : (memref<8x13x3xi16>) -> memref<8x13x3xi16> {
      %258 = math.absi %splat : tensor<11x3xi64>
      affine.store %true, %alloc_12[%c8, %c12] : memref<11x3xi1>
      %259 = bufferization.clone %alloc_4 : memref<8x13x3xf32> to memref<8x13x3xf32>
      %260 = math.sqrt %cst_1 : f32
      %261 = scf.while (%arg3 = %arg2) : (memref<8x13x3xi16>) -> memref<8x13x3xi16> {
        %264 = index.sizeof
        %265 = math.log %4 : tensor<8x3xf16>
        %266 = vector.flat_transpose %20 {columns = 11 : i32, rows = 1 : i32} : vector<11xi64> -> vector<11xi64>
        %267 = bufferization.clone %alloc_11 : memref<8x3xi32> to memref<8x3xi32>
        %268 = math.roundeven %15 : tensor<11x3xf16>
        %269 = index.ceildivu %c4, %c0
        %270 = vector.broadcast %51 : f32 to vector<8x13xf32>
        %dest_37, %accumulated_value_38 = vector.scan <mul>, %38, %270 {inclusive = false, reduction_dim = 2 : i64} : vector<8x13x3xf32>, vector<8x13xf32>
        %271 = math.roundeven %cst_3 : f16
        scf.condition(%false) %arg2 : memref<8x13x3xi16>
      } do {
      ^bb0(%arg3: memref<8x13x3xi16>):
        %expanded_37 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<3x13xi1> into tensor<3x13x1xi1>
        %264 = math.ctpop %8 : tensor<11x3xi16>
        %265 = math.ceil %cst_0 : f16
        %266 = vector.broadcast %c11 : index to vector<8xindex>
        %267 = vector.broadcast %false : i1 to vector<8xi1>
        %268 = vector.broadcast %c896_i16 : i16 to vector<8xi16>
        vector.scatter %alloc_10[%c6, %c8, %c2] [%266], %267, %268 : memref<8x13x3xi16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
        %269 = math.ctpop %splat : tensor<11x3xi64>
        %270 = arith.divui %c767271615_i32, %c468411168_i32 : i32
        affine.store %c896_i16, %arg3[%c14, %c10, %c15] : memref<8x13x3xi16>
        memref.assume_alignment %arg3, 4 : memref<8x13x3xi16>
        %alloca = memref.alloca() : memref<8x13x3xi64>
        %271 = math.tanh %15 : tensor<11x3xf16>
        %272 = math.ceil %15 : tensor<11x3xf16>
        %273 = memref.load %alloc_8[%c2, %c0] : memref<11x3xi64>
        %274 = math.cttz %splat : tensor<11x3xi64>
        affine.store %c468411168_i32, %alloc_11[%c8, %c11] : memref<8x3xi32>
        %275 = memref.realloc %alloc_19 : memref<8xi32> to memref<8xi32>
        memref.store %c1710974591_i64, %alloc_16[%c0, %c0] : memref<3x13xi64>
        scf.yield %arg3 : memref<8x13x3xi16>
      }
      %262 = math.log1p %cst : f32
      %263 = vector.extract %55[2] : vector<8x3xi64>
      scf.index_switch %c7 
      case 1 {
        %true_37 = arith.constant true
        %264 = vector.extract_strided_slice %37 {offsets = [0, 4], sizes = [2, 1], strides = [1, 1]} : vector<8x13x3xf32> to vector<2x1x3xf32>
        %265 = memref.load %alloc_14[%c2, %c1] : memref<11x3xi64>
        bufferization.dealloc_tensor %splat_20 : tensor<11x3xi64>
        %266 = vector.extract_strided_slice %37 {offsets = [4, 0], sizes = [4, 11], strides = [1, 1]} : vector<8x13x3xf32> to vector<4x11x3xf32>
        %267 = vector.matrix_multiply %263, %20 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 11 : i32} : (vector<3xi64>, vector<11xi64>) -> vector<33xi64>
        %268 = arith.negf %cst : f32
        %269 = vector.bitcast %38 : vector<8x13x3xf32> to vector<8x13x3xf32>
        %270 = vector.matrix_multiply %267, %263 {lhs_columns = 3 : i32, lhs_rows = 11 : i32, rhs_columns = 1 : i32} : (vector<33xi64>, vector<3xi64>) -> vector<11xi64>
        %271 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 + 128)>(%c7, %c4, %c7, %c0)
        %alloc_38 = memref.alloc() : memref<8x3xf32>
        %272 = math.round %0 : tensor<11x3xf32>
        %273 = vector.create_mask %c5, %c4 : vector<11x3xi1>
        %274 = arith.ceildivsi %c16122441_i32, %c468411168_i32 : i32
        %275 = affine.max affine_map<(d0, d1, d2, d3) -> (d1, d1)>(%c5, %c0, %46, %c11)
        memref.store %c896_i16, %34[%c2, %c12, %c2] : memref<8x13x3xi16>
        scf.yield
      }
      case 2 {
        %264 = math.expm1 %15 : tensor<11x3xf16>
        %265 = math.copysign %6, %6 : tensor<8x13x3xf16>
        %266 = math.exp2 %4 : tensor<8x3xf16>
        %267 = math.ctlz %13 : tensor<11x3xi16>
        %268 = index.ceildivu %c1, %c9
        %269 = math.rsqrt %cst_2 : f32
        %270 = bufferization.clone %alloc_6 : memref<3x13xi64> to memref<3x13xi64>
        memref.store %c16122441_i32, %alloc_11[%c3, %c2] : memref<8x3xi32>
        %271 = index.maxs %rank, %c0
        %272 = index.ceildivu %c10, %c13
        %273 = math.ipowi %21, %21 : tensor<8xi32>
        %274 = math.fpowi %cst_0, %c16122441_i32 : f16, i32
        %splat_37 = tensor.splat %false : tensor<8x13x3xi1>
        memref.copy %alloc_6, %270 : memref<3x13xi64> to memref<3x13xi64>
        %275 = vector.broadcast %cst : f32 to vector<11x3xf32>
        %276 = vector.fma %275, %275, %275 : vector<11x3xf32>
        %277 = arith.shrsi %c1963310662_i64, %c247436524_i64 : i64
        scf.yield
      }
      case 3 {
        %264 = bufferization.clone %alloc_4 : memref<8x13x3xf32> to memref<8x13x3xf32>
        %265 = bufferization.clone %34 : memref<8x13x3xi16> to memref<8x13x3xi16>
        memref.assume_alignment %alloc_6, 2 : memref<3x13xi64>
        %266 = vector.flat_transpose %20 {columns = 11 : i32, rows = 1 : i32} : vector<11xi64> -> vector<11xi64>
        %267 = vector.load %alloc[%c6, %c8, %c1] : memref<8x13x3xi16>, vector<3x13xi16>
        memref.store %51, %alloc_17[%c7, %c7, %c1] : memref<8x13x3xf32>
        %268 = arith.negf %cst_1 : f32
        %269 = arith.mulf %51, %cst : f32
        %270 = index.maxs %c9, %c0
        %271 = vector.shuffle %38, %37 [0, 1, 2, 4, 5, 6, 7, 11, 12, 13, 14] : vector<8x13x3xf32>, vector<8x13x3xf32>
        memref.assume_alignment %alloc_16, 4 : memref<3x13xi64>
        %272 = math.expm1 %cst_0 : f16
        %273 = vector.extract %55[3] : vector<8x3xi64>
        %274 = math.cttz %splat_20 : tensor<11x3xi64>
        %275 = arith.shrsi %c247436524_i64, %c2015405231_i64 : i64
        %276 = index.ceildivu %c1, %c0
        scf.yield
      }
      default {
        %264 = math.ctlz %splat_20 : tensor<11x3xi64>
        %265 = math.copysign %0, %0 : tensor<11x3xf32>
        %266 = arith.divui %c468411168_i32, %c16122441_i32 : i32
        %267 = arith.ceildivsi %true, %false : i1
        memref.store %cst_3, %alloc_18[%c2, %c3, %c2] : memref<8x13x3xf16>
        %268 = math.cttz %17 : tensor<8x13x3xi64>
        %269 = math.absi %9 : tensor<8x3xi1>
        %270 = arith.negf %cst : f32
        %271 = vector.broadcast %c14 : index to vector<8xindex>
        %272 = vector.broadcast %true : i1 to vector<8xi1>
        %273 = vector.broadcast %c-25185_i16 : i16 to vector<8xi16>
        vector.scatter %alloc_10[%c2, %c4, %c1] [%271], %272, %273 : memref<8x13x3xi16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
        %274 = math.tanh %cst_3 : f16
        %275 = math.log %cst_0 : f16
        %276 = math.atan2 %15, %15 : tensor<11x3xf16>
        %277 = vector.insert %263, %55 [2] : vector<3xi64> into vector<8x3xi64>
        %278 = arith.andi %c896_i16, %c-25185_i16 : i16
        %279 = math.ctlz %11 : tensor<11x3xi32>
        %280 = vector.transpose %37, [0, 2, 1] : vector<8x13x3xf32> to vector<8x3x13xf32>
      }
      scf.condition(%false) %alloc : memref<8x13x3xi16>
    } do {
    ^bb0(%arg2: memref<8x13x3xi16>):
      %258 = scf.while (%arg3 = %cst_1) : (f32) -> f32 {
        %270 = memref.load %alloc_5[%c1, %c0] : memref<3x13xi1>
        %271 = math.log10 %cst_1 : f32
        %272 = bufferization.clone %arg2 : memref<8x13x3xi16> to memref<8x13x3xi16>
        %273 = math.atan2 %arg3, %51 : f32
        %274 = bufferization.to_tensor %alloc_13 : memref<8x3xf16>
        %275 = index.add %c12, %c5
        %276 = math.absi %11 : tensor<11x3xi32>
        %expanded_38 = tensor.expand_shape %17 [[0], [1], [2, 3]] : tensor<8x13x3xi64> into tensor<8x13x3x1xi64>
        scf.condition(%false) %cst_1 : f32
      } do {
      ^bb0(%arg3: f32):
        %from_elements_38 = tensor.from_elements %true, %true, %true, %false, %false, %false, %true, %true, %false, %false, %true, %false, %true, %true, %true, %false, %false, %false, %true, %false, %false, %false, %false, %true : tensor<8x3xi1>
        %270 = bufferization.clone %alloc_4 : memref<8x13x3xf32> to memref<8x13x3xf32>
        %271 = math.sqrt %cst_3 : f16
        %272 = index.maxu %c8, %50
        %273 = arith.ceildivsi %c-25185_i16, %c896_i16 : i16
        %274 = math.log1p %cst_1 : f32
        %275 = arith.muli %c896_i16, %c-25185_i16 : i16
        %276 = arith.divsi %c767271615_i32, %c767271615_i32 : i32
        %277 = index.ceildivs %c14, %c5
        %278 = vector.load %alloc_12[%c2, %c1] : memref<11x3xi1>, vector<8x3xi1>
        %279 = math.exp %15 : tensor<11x3xf16>
        %280 = vector.broadcast %51 : f32 to vector<3x13xf32>
        %281 = vector.fma %280, %280, %280 : vector<3x13xf32>
        %282 = arith.divui %c767271615_i32, %c468411168_i32 : i32
        %283 = arith.mulf %cst, %cst_2 : f32
        %284 = math.ctpop %expanded : tensor<8x13x3x1xi32>
        %285 = math.fma %cst_1, %arg3, %arg3 : f32
        scf.yield %cst_1 : f32
      }
      affine.for %arg3 = 0 to 26 {
      }
      %cast = tensor.cast %7 : tensor<8x13x3xi32> to tensor<?x?x?xi32>
      %259 = arith.ori %c1710974591_i64, %c1963310662_i64 : i64
      %260 = vector.splat %cst_0 : vector<3x13xf16>
      %261 = vector.broadcast %cst_3 : f16 to vector<f16>
      vector.transfer_write %261, %alloc_9[%50, %c3] : vector<f16>, memref<3x13xf16>
      %262 = vector.broadcast %cst_2 : f32 to vector<3x13xf32>
      %263 = math.round %0 : tensor<11x3xf32>
      %from_elements_37 = tensor.from_elements %cst_2, %cst_2, %cst_1, %cst_2, %cst, %cst_1, %cst_1, %cst, %cst_2, %cst_2, %cst_1, %51, %cst_1, %cst, %51, %cst_1, %cst_2, %cst_2, %cst_2, %51, %cst, %cst, %cst_1, %51, %cst_2, %cst_1, %51, %cst_1, %cst_1, %cst_2, %cst, %cst_1, %cst_2, %cst_1, %cst, %cst, %cst_1, %cst_2, %cst : tensor<3x13xf32>
      %264 = vector.bitcast %49 : vector<8x13x3xf32> to vector<8x13x3xf32>
      %265 = math.copysign %6, %6 : tensor<8x13x3xf16>
      %266 = bufferization.clone %alloc_5 : memref<3x13xi1> to memref<3x13xi1>
      %267 = vector.broadcast %c468411168_i32 : i32 to vector<8x3xi32>
      %268 = math.copysign %15, %15 : tensor<11x3xf16>
      vector.print %264 : vector<8x13x3xf32>
      %269 = memref.atomic_rmw assign %cst_3, %alloc_13[%c7, %c1] : (f16, memref<8x3xf16>) -> f16
      scf.yield %34 : memref<8x13x3xi16>
    }
    %60 = affine.load %alloc_8[%c2, %c0] : memref<11x3xi64>
    %61 = math.ctlz %22 : tensor<i32>
    %62 = memref.realloc %alloc_19 : memref<8xi32> to memref<3xi32>
    %63 = index.sizeof
    %64 = math.roundeven %cst_3 : f16
    %65 = vector.flat_transpose %20 {columns = 11 : i32, rows = 1 : i32} : vector<11xi64> -> vector<11xi64>
    %66 = vector.bitcast %55 : vector<8x3xi64> to vector<8x3xi64>
    %67 = math.ctpop %13 : tensor<11x3xi16>
    %68 = math.round %6 : tensor<8x13x3xf16>
    %69 = math.ctlz %transposed : tensor<3x8x13xi32>
    %70 = math.cttz %60 : i64
    %71 = math.tanh %6 : tensor<8x13x3xf16>
    %72 = math.floor %4 : tensor<8x3xf16>
    %73 = memref.load %alloc_5[%c1, %c0] : memref<3x13xi1>
    %74 = index.ceildivu %c13, %c6
    %expanded_21 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<11x3xi16> into tensor<11x3x1xi16>
    %inserted = tensor.insert %60 into %17[%c3, %c9, %c0] : tensor<8x13x3xi64>
    %75 = index.maxs %63, %74
    %76 = scf.index_switch %c6 -> f32 
    case 1 {
      %258 = math.fpowi %cst, %c16122441_i32 : f32, i32
      %259 = scf.index_switch %c9 -> tensor<3x13xf16> 
      case 1 {
        %269 = vector.broadcast %false : i1 to vector<11xi1>
        %270 = vector.maskedload %alloc_5[%c2, %c4], %269, %269 : memref<3x13xi1>, vector<11xi1>, vector<11xi1> into vector<11xi1>
        %271 = math.roundeven %4 : tensor<8x3xf16>
        bufferization.dealloc_tensor %1 : tensor<11x3xi64>
        %272 = vector.broadcast %c1710974591_i64 : i64 to vector<3x13xi64>
        %273 = arith.remsi %c-25185_i16, %c896_i16 : i16
        %274 = math.ipowi %c247436524_i64, %c2015405231_i64 : i64
        memref.store %c767271615_i32, %alloc_19[%c1] : memref<8xi32>
        %275 = vector.bitcast %55 : vector<8x3xi64> to vector<8x3xi64>
        memref.assume_alignment %alloc_18, 16 : memref<8x13x3xf16>
        vector.print %66 : vector<8x3xi64>
        memref.copy %alloc_8, %alloc_14 : memref<11x3xi64> to memref<11x3xi64>
        %inserted_38 = tensor.insert %c1710974591_i64 into %2[%c7, %c3, %c2] : tensor<8x13x3xi64>
        %276 = index.maxs %c1, %c10
        memref.assume_alignment %alloc_11, 1 : memref<8x3xi32>
        %277 = arith.negf %cst_2 : f32
        %278 = arith.ceildivsi %c767271615_i32, %c767271615_i32 : i32
        %279 = tensor.empty() : tensor<3x13xf16>
        scf.yield %279 : tensor<3x13xf16>
      }
      case 2 {
        %269 = arith.maxf %cst_0, %cst_0 : f16
        affine.store %60, %alloc_6[%c7, %c9] : memref<3x13xi64>
        %270 = bufferization.clone %alloc_14 : memref<11x3xi64> to memref<11x3xi64>
        %271 = index.add %c13, %c13
        %272 = vector.broadcast %c247436524_i64 : i64 to vector<3xi64>
        %dest_38, %accumulated_value_39 = vector.scan <or>, %66, %272 {inclusive = true, reduction_dim = 0 : i64} : vector<8x3xi64>, vector<3xi64>
        %273 = affine.max affine_map<(d0) -> (-d0, d0, d0)>(%c9)
        %274 = arith.addf %51, %cst_1 : f32
        %275 = math.log %6 : tensor<8x13x3xf16>
        %276 = memref.realloc %alloc_19 : memref<8xi32> to memref<3xi32>
        %277 = index.ceildivu %c3, %c15
        %278 = index.add %c14, %46
        %279 = vector.multi_reduction <and>, %20, %60 [0] : vector<11xi64> to i64
        %280 = index.maxu %c7, %c8
        %281 = vector.create_mask %c4, %46, %c13 : vector<8x13x3xi1>
        %282 = index.ceildivu %c5, %c4
        %283 = vector.broadcast %cst_1 : f32 to vector<8x3xf32>
        %284 = vector.fma %283, %283, %47 : vector<8x3xf32>
        %285 = tensor.empty() : tensor<3x13xf16>
        scf.yield %285 : tensor<3x13xf16>
      }
      default {
        %269 = math.round %15 : tensor<11x3xf16>
        %270 = math.cos %cst_1 : f32
        %271 = bufferization.clone %alloc_5 : memref<3x13xi1> to memref<3x13xi1>
        %272 = arith.cmpi ult, %60, %c1963310662_i64 : i64
        %273 = arith.divf %cst_0, %cst_0 : f16
        %274 = vector.broadcast %cst : f32 to vector<13x3x3xf32>
        %275 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0, d1)>, affine_map<(d0, d1, d2, d3) -> (d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %37, %47, %274 : vector<8x13x3xf32>, vector<8x3xf32> into vector<13x3x3xf32>
        %276 = tensor.empty() : tensor<11x3xf16>
        %277 = affine.max affine_map<(d0, d1, d2, d3) -> (d3, d2, d2 + d0 + 8)>(%c10, %46, %c11, %c0)
        memref.store %cst, %alloc_17[%c0, %c6, %c0] : memref<8x13x3xf32>
        %278 = memref.load %alloc_13[%c3, %c0] : memref<8x3xf16>
        %279 = arith.divui %c1963310662_i64, %c1710974591_i64 : i64
        %280 = arith.divf %cst_2, %51 : f32
        %collapsed_38 = tensor.collapse_shape %15 [[0, 1]] : tensor<11x3xf16> into tensor<33xf16>
        %281 = math.sqrt %0 : tensor<11x3xf32>
        memref.assume_alignment %alloc_5, 1 : memref<3x13xi1>
        %282 = arith.maxsi %c767271615_i32, %c16122441_i32 : i32
        %283 = tensor.empty() : tensor<3x13xf16>
        scf.yield %283 : tensor<3x13xf16>
      }
      %260 = math.absi %c-25185_i16 : i16
      %261 = scf.index_switch %c8 -> tensor<3x13xi16> 
      case 1 {
        %269 = arith.remf %cst_3, %cst_0 : f16
        %270 = arith.remui %c2015405231_i64, %c1710974591_i64 : i64
        %271 = arith.subi %c1963310662_i64, %c1710974591_i64 : i64
        %cst_38 = arith.constant 1.000000e+00 : f16
        %272 = vector.transfer_read %alloc_9[%c15, %rank], %cst_38 : memref<3x13xf16>, vector<f16>
        %273 = arith.minui %c2015405231_i64, %c1710974591_i64 : i64
        %274 = arith.maxsi %60, %c1710974591_i64 : i64
        %c0_i64 = arith.constant 0 : i64
        %275 = vector.transfer_read %2[%c2, %c3, %c14], %c0_i64 : tensor<8x13x3xi64>, vector<8x3xi64>
        %276 = vector.broadcast %c1710974591_i64 : i64 to vector<3xi64>
        %277 = vector.multi_reduction <xor>, %66, %276 [0] : vector<8x3xi64> to vector<3xi64>
        %collapsed_39 = tensor.collapse_shape %9 [[0, 1]] : tensor<8x3xi1> into tensor<24xi1>
        %278 = math.rsqrt %6 : tensor<8x13x3xf16>
        %279 = arith.divf %cst_0, %cst_38 : f16
        %expanded_40 = tensor.expand_shape %transposed [[0], [1], [2, 3]] : tensor<3x8x13xi32> into tensor<3x8x13x1xi32>
        %alloca_41 = memref.alloca() : memref<11x3xi16>
        %280 = math.ctpop %7 : tensor<8x13x3xi32>
        %281 = arith.muli %c468411168_i32, %c16122441_i32 : i32
        %282 = math.powf %6, %6 : tensor<8x13x3xf16>
        scf.yield %10 : tensor<3x13xi16>
      }
      default {
        %from_elements_38 = tensor.from_elements %60, %c2015405231_i64, %c1710974591_i64, %c2015405231_i64, %c1963310662_i64, %c1963310662_i64, %c247436524_i64, %c2015405231_i64, %c1963310662_i64, %c1963310662_i64, %60, %c2015405231_i64, %c1963310662_i64, %60, %c247436524_i64, %c1710974591_i64, %c1710974591_i64, %60, %c247436524_i64, %c2015405231_i64, %c1710974591_i64, %60, %c1963310662_i64, %60, %c247436524_i64, %60, %c1710974591_i64, %c1710974591_i64, %c2015405231_i64, %c1963310662_i64, %c1963310662_i64, %60, %c247436524_i64, %c247436524_i64, %c1710974591_i64, %c247436524_i64, %c1710974591_i64, %c247436524_i64, %60 : tensor<3x13xi64>
        %269 = index.divu %c13, %c15
        %alloc_39 = memref.alloc() : memref<8xi32>
        memref.copy %alloc_19, %alloc_39 : memref<8xi32> to memref<8xi32>
        %expanded_40 = tensor.expand_shape %21 [[0, 1]] : tensor<8xi32> into tensor<8x1xi32>
        memref.store %c896_i16, %34[%c0, %c7, %c1] : memref<8x13x3xi16>
        %270 = arith.ceildivsi %60, %c1710974591_i64 : i64
        %271 = arith.xori %c16122441_i32, %c767271615_i32 : i32
        %272 = math.atan2 %15, %15 : tensor<11x3xf16>
        %273 = math.ipowi %9, %9 : tensor<8x3xi1>
        %inserted_41 = tensor.insert %cst_0 into %6[%c6, %c4, %c1] : tensor<8x13x3xf16>
        %274 = arith.subi %c896_i16, %c896_i16 : i16
        %275 = index.floordivs %75, %c1
        %276 = memref.atomic_rmw assign %c896_i16, %alloc_10[%c2, %c0, %c1] : (i16, memref<8x13x3xi16>) -> i16
        %277 = bufferization.to_tensor %alloc_7 : memref<8x13x3xf16>
        %278 = bufferization.to_memref %splat : memref<11x3xi64>
        memref.tensor_store %from_elements_38, %alloc_6 : memref<3x13xi64>
        scf.yield %10 : tensor<3x13xi16>
      }
      %262 = arith.minsi %c2015405231_i64, %c2015405231_i64 : i64
      %263 = vector.bitcast %47 : vector<8x3xf32> to vector<8x3xf32>
      %alloca = memref.alloca() : memref<8x3xi64>
      %expanded_37 = tensor.expand_shape %6 [[0], [1], [2, 3]] : tensor<8x13x3xf16> into tensor<8x13x3x1xf16>
      affine.store %c-25185_i16, %alloc[%c12, %c1, %c15] : memref<8x13x3xi16>
      %264 = arith.remf %cst, %cst : f32
      affine.store %cst_0, %alloc_9[%c3, %c10] : memref<3x13xf16>
      %265 = math.ctlz %3 : tensor<3x13xi64>
      %266 = index.maxu %c4, %c14
      memref.store %cst, %alloc_17[%c0, %c0, %c1] : memref<8x13x3xf32>
      %267 = bufferization.clone %alloc_16 : memref<3x13xi64> to memref<3x13xi64>
      %268 = index.add %50, %c14
      scf.yield %cst_2 : f32
    }
    case 2 {
      %258 = math.exp2 %6 : tensor<8x13x3xf16>
      %inserted_37 = tensor.insert %c468411168_i32 into %21[%c2] : tensor<8xi32>
      %259 = vector.flat_transpose %20 {columns = 11 : i32, rows = 1 : i32} : vector<11xi64> -> vector<11xi64>
      %260 = arith.ceildivsi %c1963310662_i64, %c247436524_i64 : i64
      %from_elements_38 = tensor.from_elements %true, %true, %true, %true, %true, %false, %false, %false, %false, %false, %true, %true, %false, %false, %false, %false, %true, %false, %true, %false, %true, %false, %false, %true, %true, %true, %false, %true, %true, %true, %true, %false, %true : tensor<11x3xi1>
      %261 = affine.load %alloc[%c6, %c12, %c3] : memref<8x13x3xi16>
      %262 = affine.if affine_set<(d0, d1) : (d0 + 1 == 0, d0 + 64 == 0, d0 + 64 == 0, d0 * 2 + 48 >= 0)>(%c13, %c10) -> memref<8x13x3xi32> {
        %271 = vector.extract %49[2] : vector<8x13x3xf32>
        %272 = arith.shrsi %c896_i16, %c896_i16 : i16
        %273 = arith.remsi %c1963310662_i64, %c2015405231_i64 : i64
        %274 = bufferization.clone %alloc_7 : memref<8x13x3xf16> to memref<8x13x3xf16>
        %275 = math.ctpop %14 : tensor<3x13xi1>
        %276 = bufferization.clone %alloc_12 : memref<11x3xi1> to memref<11x3xi1>
        %rank_42 = tensor.rank %4 : tensor<8x3xf16>
        %277 = math.sqrt %4 : tensor<8x3xf16>
        %alloc_43 = memref.alloc() : memref<8x13x3xi32>
        affine.yield %alloc_43 : memref<8x13x3xi32>
      } else {
        vector.print %259 : vector<11xi64>
        %271 = math.sqrt %15 : tensor<11x3xf16>
        %alloc_42 = memref.alloc() : memref<8xi32>
        memref.copy %alloc_19, %alloc_42 : memref<8xi32> to memref<8xi32>
        %272 = arith.divf %cst_1, %cst : f32
        %273 = index.divu %c14, %75
        %274 = index.casts %c7 : index to i32
        %275 = math.ctpop %c1710974591_i64 : i64
        %276 = tensor.empty() : tensor<8x3xi32>
        %277 = math.fpowi %4, %276 : tensor<8x3xf16>, tensor<8x3xi32>
        %alloc_43 = memref.alloc() : memref<8x13x3xi32>
        affine.yield %alloc_43 : memref<8x13x3xi32>
      }
      %263 = arith.negf %cst_1 : f32
      %264 = index.maxu %c5, %74
      %265 = arith.divf %51, %cst : f32
      %266 = arith.maxsi %261, %c896_i16 : i16
      %rank_39 = tensor.rank %5 : tensor<8x13x3xi32>
      %267 = vector.broadcast %cst_2 : f32 to vector<3x13xf32>
      %268 = vector.fma %267, %267, %267 : vector<3x13xf32>
      %269 = vector.shuffle %259, %259 [0, 2, 4, 5, 6, 8, 12, 15, 17, 20, 21] : vector<11xi64>, vector<11xi64>
      %dest_40, %accumulated_value_41 = vector.scan <mul>, %49, %47 {inclusive = false, reduction_dim = 1 : i64} : vector<8x13x3xf32>, vector<8x3xf32>
      %270 = bufferization.clone %alloc : memref<8x13x3xi16> to memref<8x13x3xi16>
      scf.yield %cst_2 : f32
    }
    case 3 {
      %258 = vector.broadcast %60 : i64 to vector<3xi64>
      %259 = vector.insert %258, %66 [5] : vector<3xi64> into vector<8x3xi64>
      %260 = math.atan2 %0, %0 : tensor<11x3xf32>
      %261 = memref.load %alloc_8[%c4, %c1] : memref<11x3xi64>
      %262 = index.sizeof
      %263 = math.cttz %1 : tensor<11x3xi64>
      %264 = bufferization.clone %alloc_10 : memref<8x13x3xi16> to memref<8x13x3xi16>
      %collapsed_37 = tensor.collapse_shape %splat_20 [[0, 1]] : tensor<11x3xi64> into tensor<33xi64>
      memref.assume_alignment %alloc_16, 1 : memref<3x13xi64>
      %265 = vector.splat %c8 : vector<8x3xindex>
      %false_38 = index.bool.constant false
      %inserted_39 = tensor.insert %c1710974591_i64 into %2[%c2, %c8, %c0] : tensor<8x13x3xi64>
      %alloc_40 = memref.alloc() : memref<11x3xf16>
      memref.tensor_store %15, %alloc_40 : memref<11x3xf16>
      %266 = math.ctpop %expanded_21 : tensor<11x3x1xi16>
      %267 = arith.ceildivsi %c1963310662_i64, %c247436524_i64 : i64
      %268 = index.ceildivu %c10, %rank
      %269 = affine.for %arg2 = 0 to 59 iter_args(%arg3 = %264) -> (memref<8x13x3xi16>) {
        affine.yield %alloc : memref<8x13x3xi16>
      }
      scf.yield %cst_1 : f32
    }
    default {
      %splat_37 = tensor.splat %cst_0 : tensor<8x13x3xf16>
      %258 = vector.transpose %38, [0, 2, 1] : vector<8x13x3xf32> to vector<8x3x13xf32>
      %259 = arith.ori %c247436524_i64, %c2015405231_i64 : i64
      %260 = vector.broadcast %c1710974591_i64 : i64 to vector<i64>
      %261 = vector.transfer_write %260, %16[%c4, %c15, %46] : vector<i64>, tensor<8x13x3xi64>
      %262 = vector.shuffle %65, %20 [0, 8, 10, 11, 14, 15, 16, 21] : vector<11xi64>, vector<11xi64>
      vector.print %37 : vector<8x13x3xf32>
      %263 = index.divs %c4, %46
      %264 = math.ctpop %13 : tensor<11x3xi16>
      %265 = affine.load %alloc_9[%c13, %c4] : memref<3x13xf16>
      %266 = vector.splat %true : vector<8x3xi1>
      %267 = scf.while (%arg2 = %c-25185_i16) : (i16) -> i16 {
        %275 = vector.extract_strided_slice %47 {offsets = [5], sizes = [1], strides = [1]} : vector<8x3xf32> to vector<1x3xf32>
        %276 = math.round %4 : tensor<8x3xf16>
        %277 = arith.maxf %cst_3, %265 : f16
        %278 = arith.ceildivsi %arg2, %c-25185_i16 : i16
        %279 = index.sizeof
        %280 = math.roundeven %15 : tensor<11x3xf16>
        vector.print %65 : vector<11xi64>
        %281 = math.log2 %cst_1 : f32
        scf.condition(%false) %c-25185_i16 : i16
      } do {
      ^bb0(%arg2: i16):
        %275 = bufferization.clone %alloc_11 : memref<8x3xi32> to memref<8x3xi32>
        %276 = arith.mulf %cst_3, %cst_0 : f16
        %277 = arith.remui %c2015405231_i64, %60 : i64
        %278 = math.powf %265, %cst_0 : f16
        %279 = tensor.empty() : tensor<8x3xi32>
        %280 = math.fpowi %4, %279 : tensor<8x3xf16>, tensor<8x3xi32>
        %281 = memref.realloc %alloc_19 : memref<8xi32> to memref<11xi32>
        memref.assume_alignment %34, 8 : memref<8x13x3xi16>
        %282 = vector.broadcast %c12 : index to vector<11xindex>
        %283 = vector.broadcast %false : i1 to vector<11xi1>
        %284 = vector.broadcast %51 : f32 to vector<11xf32>
        vector.scatter %alloc_17[%c3, %c8, %c2] [%282], %283, %284 : memref<8x13x3xf32>, vector<11xindex>, vector<11xi1>, vector<11xf32>
        %rank_38 = tensor.rank %8 : tensor<11x3xi16>
        %alloc_39 = memref.alloc() : memref<11x3xi64>
        %285 = math.sqrt %265 : f16
        %286 = memref.load %alloc_12[%c6, %c0] : memref<11x3xi1>
        %287 = math.sqrt %cst : f32
        %288 = vector.extract %65[4] : vector<11xi64>
        %289 = bufferization.clone %34 : memref<8x13x3xi16> to memref<8x13x3xi16>
        %290 = tensor.empty() : tensor<13x8xi64>
        %291 = tensor.empty() : tensor<3x8xi64>
        %292 = linalg.matmul ins(%3, %290 : tensor<3x13xi64>, tensor<13x8xi64>) outs(%291 : tensor<3x8xi64>) -> tensor<3x8xi64>
        scf.yield %arg2 : i16
      }
      %268 = scf.index_switch %75 -> index 
      case 1 {
        %splat_38 = tensor.splat %cst_0 : tensor<3x13xf16>
        %275 = affine.max affine_map<(d0, d1, d2) -> ((d0 * 2 + 1) ceildiv 128)>(%c2, %50, %50)
        %276 = math.expm1 %cst_3 : f16
        %277 = arith.ceildivsi %60, %c247436524_i64 : i64
        %278 = math.cttz %c1710974591_i64 : i64
        %279 = arith.divui %c1963310662_i64, %60 : i64
        %280 = vector.reduction <xor>, %20 : vector<11xi64> into i64
        %281 = bufferization.clone %alloc_14 : memref<11x3xi64> to memref<11x3xi64>
        %282 = bufferization.clone %alloc_7 : memref<8x13x3xf16> to memref<8x13x3xf16>
        %283 = vector.extract %20[6] : vector<11xi64>
        %284 = math.atan %splat_38 : tensor<3x13xf16>
        %285 = math.round %cst_3 : f16
        %286 = vector.broadcast %cst : f32 to vector<8x3xf32>
        %287 = vector.fma %286, %286, %47 : vector<8x3xf32>
        affine.store %false, %alloc_12[%c10, %c8] : memref<11x3xi1>
        %288 = memref.atomic_rmw andi %c247436524_i64, %alloc_14[%c2, %c0] : (i64, memref<11x3xi64>) -> i64
        %289 = arith.xori %true, %false : i1
        scf.yield %c15 : index
      }
      case 2 {
        %inserted_38 = tensor.insert %c2015405231_i64 into %12[%c2, %c3, %c1] : tensor<8x13x3xi64>
        %275 = math.ipowi %3, %3 : tensor<3x13xi64>
        %276 = vector.broadcast %51 : f32 to vector<3xf32>
        %277 = vector.insert %276, %47 [7] : vector<3xf32> into vector<8x3xf32>
        %278 = vector.create_mask %50, %c15 : vector<8x3xi1>
        %279 = math.round %cst : f32
        affine.store %c1963310662_i64, %alloc_6[%c7, %c15] : memref<3x13xi64>
        %280 = index.sizeof
        %281 = arith.muli %false, %true : i1
        bufferization.dealloc_tensor %12 : tensor<8x13x3xi64>
        %282 = math.rsqrt %265 : f16
        %283 = math.log10 %4 : tensor<8x3xf16>
        %284 = affine.max affine_map<(d0, d1, d2) -> (d2, d0)>(%63, %c12, %c15)
        %rank_39 = tensor.rank %15 : tensor<11x3xf16>
        %285 = vector.bitcast %47 : vector<8x3xf32> to vector<8x3xf32>
        %286 = math.log1p %51 : f32
        affine.store %c896_i16, %34[%c0, %c12, %c14] : memref<8x13x3xi16>
        scf.yield %280 : index
      }
      default {
        %275 = bufferization.clone %alloc_18 : memref<8x13x3xf16> to memref<8x13x3xf16>
        bufferization.dealloc_tensor %1 : tensor<11x3xi64>
        %276 = arith.ceildivsi %c247436524_i64, %c1710974591_i64 : i64
        %277 = arith.divf %cst_1, %cst : f32
        affine.store %c896_i16, %34[%c8, %c10, %c6] : memref<8x13x3xi16>
        %278 = bufferization.clone %alloc_17 : memref<8x13x3xf32> to memref<8x13x3xf32>
        %279 = vector.load %alloc_12[%c0, %c0] : memref<11x3xi1>, vector<8x3xi1>
        %280 = vector.splat %c15 : vector<11x3xindex>
        %281 = affine.max affine_map<(d0, d1, d2) -> (d2)>(%c9, %50, %c4)
        %282 = arith.divui %true, %true : i1
        bufferization.dealloc_tensor %10 : tensor<3x13xi16>
        %283 = vector.broadcast %60 : i64 to vector<8x13x3xi64>
        %c1_i32 = arith.constant 1 : i32
        %284 = vector.transfer_read %7[%263, %50, %c3], %c1_i32 : tensor<8x13x3xi32>, vector<i32>
        %285 = vector.matrix_multiply %65, %20 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi64>, vector<11xi64>) -> vector<1xi64>
        memref.store %c896_i16, %alloc_10[%c6, %c6, %c0] : memref<8x13x3xi16>
        %286 = math.ipowi %splat_20, %splat_20 : tensor<11x3xi64>
        scf.yield %c12 : index
      }
      %269 = tensor.empty() : tensor<13x13xi64>
      %270 = tensor.empty() : tensor<3x13xi64>
      %271 = linalg.matmul ins(%3, %269 : tensor<3x13xi64>, tensor<13x13xi64>) outs(%270 : tensor<3x13xi64>) -> tensor<3x13xi64>
      %272 = tensor.empty() : tensor<8x3xi64>
      %273 = arith.divui %c767271615_i32, %c767271615_i32 : i32
      %274 = math.ipowi %expanded, %expanded : tensor<8x13x3x1xi32>
      scf.yield %51 : f32
    }
    %77 = arith.ceildivsi %c2015405231_i64, %60 : i64
    %78 = math.copysign %4, %4 : tensor<8x3xf16>
    %79 = math.sqrt %6 : tensor<8x13x3xf16>
    %80 = arith.ceildivsi %false, %true : i1
    %81 = vector.broadcast %c16122441_i32 : i32 to vector<i32>
    %82 = vector.transfer_write %81, %5[%46, %c14, %c8] : vector<i32>, tensor<8x13x3xi32>
    %true_22 = index.bool.constant true
    %83 = math.round %15 : tensor<11x3xf16>
    %84 = arith.negf %cst_0 : f16
    %85 = vector.flat_transpose %20 {columns = 11 : i32, rows = 1 : i32} : vector<11xi64> -> vector<11xi64>
    memref.store %c247436524_i64, %alloc_6[%c2, %c8] : memref<3x13xi64>
    %86 = arith.divui %c468411168_i32, %c16122441_i32 : i32
    %87 = math.cttz %13 : tensor<11x3xi16>
    %88 = scf.index_switch %c4 -> tensor<3x13xi16> 
    case 1 {
      %258 = math.roundeven %51 : f32
      %259 = arith.subi %true, %false : i1
      %260 = math.fpowi %cst_1, %c767271615_i32 : f32, i32
      %261 = index.maxu %c13, %c0
      %262 = arith.divui %true, %true_22 : i1
      %263 = vector.bitcast %20 : vector<11xi64> to vector<11xi64>
      %264 = vector.extract %47[3] : vector<8x3xf32>
      %265 = vector.flat_transpose %20 {columns = 11 : i32, rows = 1 : i32} : vector<11xi64> -> vector<11xi64>
      %266 = arith.minui %c-25185_i16, %c896_i16 : i16
      %267 = vector.broadcast %c247436524_i64 : i64 to vector<13xi64>
      %268 = vector.broadcast %true : i1 to vector<13xi1>
      %269 = vector.maskedload %alloc_8[%c5, %c2], %268, %267 : memref<11x3xi64>, vector<13xi1>, vector<13xi64> into vector<13xi64>
      %270 = math.ctpop %c896_i16 : i16
      %271 = scf.while (%arg2 = %268) : (vector<13xi1>) -> vector<13xi1> {
        %276 = memref.load %alloc_19[%c3] : memref<8xi32>
        %277 = math.round %6 : tensor<8x13x3xf16>
        %278 = math.exp2 %6 : tensor<8x13x3xf16>
        %279 = math.ceil %cst : f32
        %280 = vector.broadcast %c1710974591_i64 : i64 to vector<3xi64>
        %281 = vector.insert %280, %66 [3] : vector<3xi64> into vector<8x3xi64>
        %282 = arith.maxsi %false, %false : i1
        %283 = vector.broadcast %cst : f32 to vector<8x13xf32>
        %dest_37, %accumulated_value_38 = vector.scan <minf>, %38, %283 {inclusive = false, reduction_dim = 2 : i64} : vector<8x13x3xf32>, vector<8x13xf32>
        vector.print %267 : vector<13xi64>
        scf.condition(%true_22) %268 : vector<13xi1>
      } do {
      ^bb0(%arg2: vector<13xi1>):
        %collapsed_37 = tensor.collapse_shape %14 [[0, 1]] : tensor<3x13xi1> into tensor<39xi1>
        %276 = bufferization.to_tensor %alloc_18 : memref<8x13x3xf16>
        %277 = vector.extract %267[3] : vector<13xi64>
        %278 = arith.muli %c767271615_i32, %c767271615_i32 : i32
        %279 = arith.remf %cst_2, %cst : f32
        %splat_38 = tensor.splat %cst_0 : tensor<3x13xf16>
        %280 = arith.remsi %false, %true_22 : i1
        %281 = vector.broadcast %c14 : index to vector<3xindex>
        %282 = vector.broadcast %false : i1 to vector<3xi1>
        %283 = vector.broadcast %cst_3 : f16 to vector<3xf16>
        vector.scatter %alloc_9[%c0, %c6] [%281], %282, %283 : memref<3x13xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
        %284 = memref.load %alloc_7[%c7, %c4, %c2] : memref<8x13x3xf16>
        %285 = math.cos %cst : f32
        affine.store %c1963310662_i64, %alloc_16[%c4, %c14] : memref<3x13xi64>
        %286 = vector.bitcast %65 : vector<11xi64> to vector<11xi64>
        %287 = arith.negf %cst_0 : f16
        %288 = math.fma %cst_2, %cst_2, %cst_2 : f32
        memref.store %cst_0, %alloc_18[%c2, %c8, %c2] : memref<8x13x3xf16>
        %289 = vector.broadcast %true_22 : i1 to vector<8x3xi1>
        %290 = vector.broadcast %c468411168_i32 : i32 to vector<8x3xi32>
        %291 = vector.gather %0[%46, %c13] [%290], %289, %47 : tensor<11x3xf32>, vector<8x3xi32>, vector<8x3xi1>, vector<8x3xf32> into vector<8x3xf32>
        scf.yield %268 : vector<13xi1>
      }
      %272 = arith.divui %true, %true : i1
      %273 = affine.min affine_map<(d0, d1) -> (d1 * 32 + 8, (d1 * 32) mod 128 - (d0 * -4 + d1 floordiv 8))>(%c7, %rank)
      %274 = vector.splat %63 : vector<3x13xindex>
      %275 = arith.ceildivsi %60, %c1710974591_i64 : i64
      scf.yield %10 : tensor<3x13xi16>
    }
    case 2 {
      %258 = math.rsqrt %0 : tensor<11x3xf32>
      %259 = math.exp2 %cst_1 : f32
      %alloc_37 = memref.alloc() : memref<11x3xf16>
      memref.tensor_store %15, %alloc_37 : memref<11x3xf16>
      %260 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%2 : tensor<8x13x3xi64>) {
      ^bb0(%out: i64):
        %270 = arith.maxf %cst_3, %cst_0 : f16
        %271 = math.tanh %0 : tensor<11x3xf32>
        %272 = math.rsqrt %4 : tensor<8x3xf16>
        %273 = index.sizeof
        %expanded_39 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<11x3xf16> into tensor<11x3x1xf16>
        %274 = math.round %0 : tensor<11x3xf32>
        %275 = index.maxs %75, %c15
        memref.assume_alignment %alloc_17, 2 : memref<8x13x3xf32>
        %276 = memref.atomic_rmw ori %c468411168_i32, %alloc_11[%c5, %c1] : (i32, memref<8x3xi32>) -> i32
        %277 = index.sizeof
        %278 = arith.xori %c-25185_i16, %c896_i16 : i16
        %inserted_40 = tensor.insert %c-25185_i16 into %10[%c2, %c4] : tensor<3x13xi16>
        %279 = arith.muli %c896_i16, %c896_i16 : i16
        %280 = vector.transpose %85, [0] : vector<11xi64> to vector<11xi64>
        %281 = vector.bitcast %47 : vector<8x3xf32> to vector<8x3xf32>
        %282 = bufferization.clone %alloc_4 : memref<8x13x3xf32> to memref<8x13x3xf32>
        %283 = math.ctpop %11 : tensor<11x3xi32>
        %284 = arith.minui %false, %true_22 : i1
        %285 = vector.extract_strided_slice %38 {offsets = [3], sizes = [2], strides = [1]} : vector<8x13x3xf32> to vector<2x13x3xf32>
        %286 = math.cos %0 : tensor<11x3xf32>
        %287 = arith.ceildivsi %c896_i16, %c896_i16 : i16
        %288 = arith.muli %60, %c247436524_i64 : i64
        %289 = arith.remf %cst_0, %cst_0 : f16
        %290 = index.ceildivu %275, %c3
        %291 = vector.shuffle %81, %81 [0, 1] : vector<i32>, vector<i32>
        %292 = index.ceildivu %277, %c7
        %293 = index.maxu %c14, %c15
        %294 = arith.remf %cst_2, %51 : f32
        %295 = math.cttz %expanded_21 : tensor<11x3x1xi16>
        %296 = arith.remf %cst_2, %cst : f32
        %297 = arith.andi %c1963310662_i64, %c1963310662_i64 : i64
        %298 = math.fpowi %cst_2, %c16122441_i32 : f32, i32
        linalg.yield %c1710974591_i64 : i64
      } -> tensor<8x13x3xi64>
      %inserted_38 = tensor.insert %c767271615_i32 into %7[%c3, %c9, %c1] : tensor<8x13x3xi32>
      %alloca = memref.alloca() : memref<8x13x3xf32>
      %261 = math.tanh %4 : tensor<8x3xf16>
      %262 = affine.load %alloc[%c3, %c1, %c3] : memref<8x13x3xi16>
      %263 = math.log10 %cst_0 : f16
      %264 = arith.mulf %cst_1, %cst_1 : f32
      %265 = arith.remsi %true, %true_22 : i1
      %266 = math.powf %4, %4 : tensor<8x3xf16>
      %267 = arith.muli %c1963310662_i64, %c1963310662_i64 : i64
      %268 = index.add %c1, %rank
      %269 = memref.load %alloc_17[%c6, %c1, %c1] : memref<8x13x3xf32>
      vector.print %55 : vector<8x3xi64>
      scf.yield %10 : tensor<3x13xi16>
    }
    case 3 {
      %258 = math.exp2 %15 : tensor<11x3xf16>
      %from_elements_37 = tensor.from_elements %c16122441_i32, %c767271615_i32, %c767271615_i32, %c16122441_i32, %c16122441_i32, %c767271615_i32, %c767271615_i32, %c16122441_i32, %c468411168_i32, %c767271615_i32, %c767271615_i32, %c16122441_i32, %c767271615_i32, %c468411168_i32, %c16122441_i32, %c16122441_i32, %c767271615_i32, %c468411168_i32, %c468411168_i32, %c767271615_i32, %c767271615_i32, %c767271615_i32, %c16122441_i32, %c767271615_i32 : tensor<8x3xi32>
      %259 = bufferization.clone %alloc_18 : memref<8x13x3xf16> to memref<8x13x3xf16>
      memref.store %cst_0, %alloc_18[%c2, %c0, %c2] : memref<8x13x3xf16>
      %260 = math.copysign %6, %6 : tensor<8x13x3xf16>
      %rank_38 = tensor.rank %expanded_21 : tensor<11x3x1xi16>
      %261 = math.floor %0 : tensor<11x3xf32>
      %262 = bufferization.to_memref %2 : memref<8x13x3xi64>
      %expanded_39 = tensor.expand_shape %expanded_21 [[0], [1], [2, 3]] : tensor<11x3x1xi16> into tensor<11x3x1x1xi16>
      %263 = arith.minsi %c2015405231_i64, %c247436524_i64 : i64
      %alloc_40 = memref.alloc() : memref<3x11xi32>
      %264 = tensor.empty() : tensor<11x11xi32>
      %265 = linalg.matmul ins(%11, %alloc_40 : tensor<11x3xi32>, memref<3x11xi32>) outs(%264 : tensor<11x11xi32>) -> tensor<11x11xi32>
      %266 = affine.max affine_map<(d0) -> (d0 - d0 floordiv 32 - 16, (d0 floordiv 32) floordiv 2)>(%c6)
      %267 = math.tanh %6 : tensor<8x13x3xf16>
      %true_41 = index.bool.constant true
      %268 = arith.remui %c1963310662_i64, %c1710974591_i64 : i64
      %269 = vector.broadcast %cst : f32 to vector<3x3xf32>
      %270 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %47, %47, %269 : vector<8x3xf32>, vector<8x3xf32> into vector<3x3xf32>
      scf.yield %10 : tensor<3x13xi16>
    }
    default {
      %258 = scf.while (%arg2 = %c-25185_i16) : (i16) -> i16 {
        %272 = math.copysign %cst, %51 : f32
        %alloc_38 = memref.alloc() : memref<3x11xf32>
        %273 = tensor.empty() : tensor<11x11xf32>
        %274 = linalg.matmul ins(%0, %alloc_38 : tensor<11x3xf32>, memref<3x11xf32>) outs(%273 : tensor<11x11xf32>) -> tensor<11x11xf32>
        %275 = memref.atomic_rmw maxs %arg2, %alloc[%c7, %c11, %c1] : (i16, memref<8x13x3xi16>) -> i16
        %276 = tensor.empty() : tensor<3x3xi32>
        %277 = tensor.empty() : tensor<11x3xi32>
        %278 = linalg.matmul ins(%11, %276 : tensor<11x3xi32>, tensor<3x3xi32>) outs(%277 : tensor<11x3xi32>) -> tensor<11x3xi32>
        %279 = arith.shrui %true, %true : i1
        %280 = bufferization.clone %alloc_9 : memref<3x13xf16> to memref<3x13xf16>
        %281 = arith.subi %c896_i16, %c896_i16 : i16
        %282 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 - 1, d3 ceildiv 64 + 5)>(%rank, %c14, %74, %c14)
        scf.condition(%false) %c-25185_i16 : i16
      } do {
      ^bb0(%arg2: i16):
        %272 = arith.remsi %c1963310662_i64, %c2015405231_i64 : i64
        %273 = math.roundeven %6 : tensor<8x13x3xf16>
        %274 = index.divu %c6, %c0
        %275 = vector.broadcast %50 : index to vector<13xindex>
        %276 = vector.broadcast %false : i1 to vector<13xi1>
        %277 = vector.broadcast %c-25185_i16 : i16 to vector<13xi16>
        vector.scatter %34[%c0, %c7, %c0] [%275], %276, %277 : memref<8x13x3xi16>, vector<13xindex>, vector<13xi1>, vector<13xi16>
        %278 = arith.subi %c247436524_i64, %c2015405231_i64 : i64
        %279 = arith.muli %arg2, %c-25185_i16 : i16
        %280 = bufferization.to_memref %splat_20 : memref<11x3xi64>
        %281 = math.fpowi %15, %11 : tensor<11x3xf16>, tensor<11x3xi32>
        %282 = math.ceil %51 : f32
        %283 = arith.remsi %true, %true_22 : i1
        %284 = math.log10 %15 : tensor<11x3xf16>
        %285 = arith.remf %cst_3, %cst_3 : f16
        %286 = arith.remf %51, %cst_1 : f32
        %287 = arith.maxsi %c247436524_i64, %c1963310662_i64 : i64
        %expanded_38 = tensor.expand_shape %2 [[0], [1], [2, 3]] : tensor<8x13x3xi64> into tensor<8x13x3x1xi64>
        %extracted = tensor.extract %17[%c0, %c8, %c2] : tensor<8x13x3xi64>
        scf.yield %c896_i16 : i16
      }
      %259 = math.fpowi %6, %5 : tensor<8x13x3xf16>, tensor<8x13x3xi32>
      %260 = memref.atomic_rmw maxf %cst_0, %alloc_18[%c6, %c0, %c2] : (f16, memref<8x13x3xf16>) -> f16
      %261 = math.round %cst_3 : f16
      affine.store %cst_0, %alloc_18[%c1, %c2, %c9] : memref<8x13x3xf16>
      %262 = math.round %51 : f32
      %263 = math.log10 %0 : tensor<11x3xf32>
      %264 = vector.shuffle %81, %81 [0, 1] : vector<i32>, vector<i32>
      %inserted_37 = tensor.insert %c1710974591_i64 into %2[%c2, %c6, %c2] : tensor<8x13x3xi64>
      %265 = index.mul %rank, %c6
      %266 = math.tanh %0 : tensor<11x3xf32>
      %267 = arith.remf %cst_1, %cst_2 : f32
      %268 = arith.remui %60, %c1710974591_i64 : i64
      %269 = arith.remsi %c1963310662_i64, %c247436524_i64 : i64
      %270 = math.round %cst_1 : f32
      %271 = arith.ceildivsi %c-25185_i16, %c896_i16 : i16
      scf.yield %10 : tensor<3x13xi16>
    }
    memref.store %cst_0, %alloc_15[%c6, %c2] : memref<8x3xf16>
    %89 = memref.alloca_scope  -> (i16) {
      %258 = arith.divsi %c767271615_i32, %c767271615_i32 : i32
      %259 = tensor.empty() : tensor<8x3x13xi64>
      %260 = tensor.empty() : tensor<13xi64>
      %261 = tensor.empty() : tensor<3x13x8xi64>
      %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%259, %260, %261 : tensor<8x3x13xi64>, tensor<13xi64>, tensor<3x13x8xi64>) outs(%12 : tensor<8x13x3xi64>) {
      ^bb0(%in: i64, %in_42: i64, %in_43: i64, %out: i64):
        %c494935550_i32 = arith.constant 494935550 : i32
        %284 = math.log10 %cst_0 : f16
        %285 = index.divu %50, %c12
        %286 = arith.remf %cst_3, %cst_0 : f16
        memref.assume_alignment %alloc_6, 8 : memref<3x13xi64>
        %287 = index.sizeof
        %288 = arith.xori %c1963310662_i64, %c1710974591_i64 : i64
        %collapsed_44 = tensor.collapse_shape %4 [[0, 1]] : tensor<8x3xf16> into tensor<24xf16>
        %c-13693_i16 = arith.constant -13693 : i16
        affine.store %cst_0, %alloc_13[%c7, %c9] : memref<8x3xf16>
        %289 = math.log10 %cst : f32
        %290 = vector.multi_reduction <minui>, %20, %out [0] : vector<11xi64> to i64
        %291 = math.powf %15, %15 : tensor<11x3xf16>
        %292 = math.exp %6 : tensor<8x13x3xf16>
        %293 = arith.remf %cst_1, %51 : f32
        %294 = memref.load %alloc_8[%c2, %c1] : memref<11x3xi64>
        %collapsed_45 = tensor.collapse_shape %7 [[0, 1], [2]] : tensor<8x13x3xi32> into tensor<104x3xi32>
        %295 = arith.remf %cst_3, %cst_0 : f16
        %296 = math.log10 %cst_2 : f32
        %297 = arith.muli %c-25185_i16, %c-25185_i16 : i16
        %298 = index.mul %rank, %c3
        %299 = arith.negf %51 : f32
        %300 = vector.extract_strided_slice %55 {offsets = [1], sizes = [7], strides = [1]} : vector<8x3xi64> to vector<7x3xi64>
        %301 = arith.maxf %cst_0, %cst_3 : f16
        %302 = arith.minf %51, %cst : f32
        %303 = vector.create_mask %74, %c13, %46 : vector<8x13x3xi1>
        %304 = arith.subi %c896_i16, %c-25185_i16 : i16
        %305 = arith.divf %cst, %cst_1 : f32
        %306 = math.fpowi %6, %7 : tensor<8x13x3xf16>, tensor<8x13x3xi32>
        %307 = math.atan2 %collapsed_44, %collapsed_44 : tensor<24xf16>
        %308 = index.divs %c14, %74
        %309 = affine.load %alloc_9[%c4, %c8] : memref<3x13xf16>
        linalg.yield %c247436524_i64 : i64
      } -> tensor<8x13x3xi64>
      %263 = vector.matrix_multiply %85, %65 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi64>, vector<11xi64>) -> vector<1xi64>
      %264 = vector.flat_transpose %20 {columns = 11 : i32, rows = 1 : i32} : vector<11xi64> -> vector<11xi64>
      %265 = arith.remui %c247436524_i64, %c1963310662_i64 : i64
      %266 = math.round %15 : tensor<11x3xf16>
      %267 = memref.load %34[%c1, %c4, %c1] : memref<8x13x3xi16>
      %268 = math.rsqrt %cst_2 : f32
      %splat_37 = tensor.splat %c16122441_i32 : tensor<3x13xi32>
      %rank_38 = tensor.rank %4 : tensor<8x3xf16>
      scf.execute_region {
        %284 = index.sizeof
        %285 = bufferization.clone %alloc_18 : memref<8x13x3xf16> to memref<8x13x3xf16>
        %286 = vector.bitcast %38 : vector<8x13x3xf32> to vector<8x13x3xi32>
        %287 = arith.divsi %60, %c247436524_i64 : i64
        %288 = arith.maxsi %c896_i16, %c896_i16 : i16
        %289 = math.round %0 : tensor<11x3xf32>
        %290 = arith.muli %c2015405231_i64, %c247436524_i64 : i64
        %291 = math.round %0 : tensor<11x3xf32>
        %292 = math.ctlz %10 : tensor<3x13xi16>
        %293 = memref.atomic_rmw maxf %cst_1, %alloc_4[%c4, %c12, %c1] : (f32, memref<8x13x3xf32>) -> f32
        %294 = index.maxu %46, %rank_38
        %295 = math.cttz %22 : tensor<i32>
        %296 = math.roundeven %cst_1 : f32
        %297 = vector.insert %c1963310662_i64, %263 [0] : i64 into vector<1xi64>
        %298 = math.ceil %6 : tensor<8x13x3xf16>
        %299 = vector.extract_strided_slice %49 {offsets = [5], sizes = [2], strides = [1]} : vector<8x13x3xf32> to vector<2x13x3xf32>
        scf.yield
      }
      %269 = math.atan2 %0, %0 : tensor<11x3xf32>
      %alloca = memref.alloca() : memref<11x3xi32>
      %from_elements_39 = tensor.from_elements %c1963310662_i64, %c2015405231_i64, %c247436524_i64, %c1710974591_i64, %60, %c1710974591_i64, %c1710974591_i64, %60, %c2015405231_i64, %60, %c247436524_i64, %60, %c2015405231_i64, %c1710974591_i64, %60, %c2015405231_i64, %c247436524_i64, %c1963310662_i64, %60, %c1710974591_i64, %c2015405231_i64, %c1710974591_i64, %c1710974591_i64, %c2015405231_i64, %c2015405231_i64, %c247436524_i64, %c247436524_i64, %c1710974591_i64, %c1963310662_i64, %60, %c247436524_i64, %c247436524_i64, %c1963310662_i64, %60, %c1963310662_i64, %c1963310662_i64, %c1963310662_i64, %c2015405231_i64, %c247436524_i64 : tensor<3x13xi64>
      %270 = vector.multi_reduction <maxsi>, %263, %263 [] : vector<1xi64> to vector<1xi64>
      %271 = arith.remsi %60, %c2015405231_i64 : i64
      vector.print %65 : vector<11xi64>
      %272 = vector.multi_reduction <add>, %85, %20 [] : vector<11xi64> to vector<11xi64>
      %273 = math.roundeven %0 : tensor<11x3xf32>
      %274 = arith.ori %false, %true_22 : i1
      %275 = arith.andi %c247436524_i64, %c1963310662_i64 : i64
      %276 = arith.xori %c1963310662_i64, %c1963310662_i64 : i64
      %277 = vector.multi_reduction <maxsi>, %20, %c1710974591_i64 [0] : vector<11xi64> to i64
      %278 = index.add %c13, %63
      %279 = memref.atomic_rmw ori %c16122441_i32, %alloc_11[%c7, %c2] : (i32, memref<8x3xi32>) -> i32
      %true_40 = index.bool.constant true
      %280 = vector.broadcast %true_22 : i1 to vector<3x13xi1>
      %inserted_41 = tensor.insert %60 into %splat[%c5, %c0] : tensor<11x3xi64>
      %281 = index.add %46, %c10
      vector.print %66 : vector<8x3xi64>
      %282 = arith.remsi %c16122441_i32, %c468411168_i32 : i32
      %283 = arith.ori %true_22, %true_40 : i1
      memref.alloca_scope.return %c896_i16 : i16
    }
    %90 = math.cttz %22 : tensor<i32>
    %91 = memref.load %34[%c4, %c3, %c0] : memref<8x13x3xi16>
    %92 = math.fpowi %6, %5 : tensor<8x13x3xf16>, tensor<8x13x3xi32>
    %93 = bufferization.to_tensor %34 : memref<8x13x3xi16>
    %94 = math.atan %4 : tensor<8x3xf16>
    %95 = math.ctpop %23 : tensor<i32>
    affine.store %c468411168_i32, %alloc_11[%c7, %c3] : memref<8x3xi32>
    %96 = affine.if affine_set<(d0, d1, d2, d3) : (d1 ceildiv 2 + 32 >= 0, -d3 >= 0, d1 ceildiv 2 + 32 == 0)>(%c10, %c3, %c3, %c0) -> memref<8x13x3xi1> {
      %258 = math.absi %false : i1
      %259 = vector.extract %37[0, 12] : vector<8x13x3xf32>
      affine.store %60, %alloc_14[%c2, %c11] : memref<11x3xi64>
      %260 = arith.muli %c468411168_i32, %c767271615_i32 : i32
      %alloca = memref.alloca() : memref<8x13x3xi32>
      %261 = bufferization.clone %34 : memref<8x13x3xi16> to memref<8x13x3xi16>
      %262 = index.ceildivu %c4, %c15
      %expanded_37 = tensor.expand_shape %6 [[0], [1], [2, 3]] : tensor<8x13x3xf16> into tensor<8x13x3x1xf16>
      %alloc_38 = memref.alloc() : memref<8x13x3xi1>
      affine.yield %alloc_38 : memref<8x13x3xi1>
    } else {
      %258 = vector.matrix_multiply %65, %20 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi64>, vector<11xi64>) -> vector<1xi64>
      %259 = math.copysign %0, %0 : tensor<11x3xf32>
      affine.store %cst_3, %alloc_15[%c4, %c9] : memref<8x3xf16>
      %260 = arith.divsi %c896_i16, %c896_i16 : i16
      %c1_i32 = arith.constant 1 : i32
      %261 = vector.transfer_read %transposed[%c4, %c12, %c10], %c1_i32 : tensor<3x8x13xi32>, vector<13x13xi32>
      %262 = arith.remui %c1_i32, %c767271615_i32 : i32
      %263 = arith.shrui %60, %c2015405231_i64 : i64
      %264 = math.fma %6, %6, %6 : tensor<8x13x3xf16>
      %alloc_37 = memref.alloc() : memref<8x13x3xi1>
      affine.yield %alloc_37 : memref<8x13x3xi1>
    }
    %97 = vector.broadcast %c2015405231_i64 : i64 to vector<3xi64>
    %98 = vector.multi_reduction <minsi>, %55, %97 [0] : vector<8x3xi64> to vector<3xi64>
    %99 = arith.addf %cst_0, %cst_0 : f16
    %100 = scf.execute_region -> vector<8x13x3xi64> {
      memref.store %true_22, %alloc_5[%c2, %c8] : memref<3x13xi1>
      %258 = vector.broadcast %cst_0 : f16 to vector<f16>
      vector.transfer_write %258, %alloc_18[%c15, %c12, %c12] : vector<f16>, memref<8x13x3xf16>
      affine.for %arg2 = 0 to 43 {
      }
      %259 = memref.realloc %alloc_19 : memref<8xi32> to memref<3xi32>
      %260 = arith.remsi %89, %89 : i16
      %splat_37 = tensor.splat %c1710974591_i64 : tensor<11x3xi64>
      %261 = vector.broadcast %cst_0 : f16 to vector<11x3xf16>
      %262 = arith.muli %c16122441_i32, %c767271615_i32 : i32
      %rank_38 = tensor.rank %2 : tensor<8x13x3xi64>
      %263 = vector.broadcast %cst_2 : f32 to vector<8x13xf32>
      %264 = vector.multi_reduction <add>, %38, %263 [2] : vector<8x13x3xf32> to vector<8x13xf32>
      %265 = vector.broadcast %cst : f32 to vector<8x13x3xf32>
      %266 = vector.fma %265, %38, %38 : vector<8x13x3xf32>
      %267 = index.add %c11, %75
      %268 = arith.remsi %60, %c1963310662_i64 : i64
      %269 = vector.multi_reduction <minf>, %261, %261 [] : vector<11x3xf16> to vector<11x3xf16>
      %cst_39 = arith.constant 1.441600e+04 : f16
      %alloca = memref.alloca() : memref<11x3xi1>
      %270 = vector.broadcast %c247436524_i64 : i64 to vector<8x13x3xi64>
      scf.yield %270 : vector<8x13x3xi64>
    }
    %101 = vector.extract %38[1, 9] : vector<8x13x3xf32>
    %102 = math.tanh %15 : tensor<11x3xf16>
    %103 = index.add %c10, %c1
    %104 = math.atan %6 : tensor<8x13x3xf16>
    %105 = arith.divsi %false, %true_22 : i1
    %106 = arith.ceildivsi %c1963310662_i64, %c1710974591_i64 : i64
    %107 = arith.minui %true_22, %true_22 : i1
    %108 = arith.xori %true, %true_22 : i1
    %109 = math.copysign %cst_1, %51 : f32
    %110 = math.atan2 %0, %0 : tensor<11x3xf32>
    %111 = arith.divui %c767271615_i32, %c16122441_i32 : i32
    %112 = scf.while (%arg2 = %alloc_8) : (memref<11x3xi64>) -> memref<11x3xi64> {
      %258 = math.ceil %6 : tensor<8x13x3xf16>
      %259 = math.ceil %15 : tensor<11x3xf16>
      %splat_37 = tensor.splat %true : tensor<3x13xi1>
      %alloc_38 = memref.alloc() : memref<11x3xi1>
      memref.copy %alloc_12, %alloc_38 : memref<11x3xi1> to memref<11x3xi1>
      %260 = math.log10 %51 : f32
      %261 = vector.extract %66[4] : vector<8x3xi64>
      %262 = math.fpowi %0, %11 : tensor<11x3xf32>, tensor<11x3xi32>
      %263 = affine.for %arg3 = 0 to 17 iter_args(%arg4 = %3) -> (tensor<3x13xi64>) {
        affine.yield %arg4 : tensor<3x13xi64>
      }
      scf.condition(%true_22) %alloc_14 : memref<11x3xi64>
    } do {
    ^bb0(%arg2: memref<11x3xi64>):
      %258 = math.fpowi %cst_3, %c16122441_i32 : f16, i32
      %259 = vector.bitcast %20 : vector<11xi64> to vector<11xi64>
      %260 = affine.for %arg3 = 0 to 104 iter_args(%arg4 = %4) -> (tensor<8x3xf16>) {
        affine.yield %arg4 : tensor<8x3xf16>
      }
      %261 = arith.remsi %false, %true_22 : i1
      %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%16 : tensor<8x13x3xi64>) {
      ^bb0(%out: i64):
        %273 = index.ceildivu %c1, %c9
        %rank_42 = tensor.rank %6 : tensor<8x13x3xf16>
        %274 = vector.extract_strided_slice %259 {offsets = [1], sizes = [1], strides = [1]} : vector<11xi64> to vector<1xi64>
        %275 = math.round %cst_3 : f16
        %276 = arith.minui %c-25185_i16, %89 : i16
        bufferization.dealloc_tensor %16 : tensor<8x13x3xi64>
        %expanded_43 = tensor.expand_shape %expanded_21 [[0], [1], [2, 3]] : tensor<11x3x1xi16> into tensor<11x3x1x1xi16>
        %277 = index.floordivs %rank_42, %c4
        %278 = arith.muli %c-25185_i16, %89 : i16
        %279 = index.maxu %50, %75
        %280 = arith.xori %c1710974591_i64, %60 : i64
        %281 = index.sizeof
        %282 = arith.ori %c16122441_i32, %c16122441_i32 : i32
        %283 = index.divu %c5, %50
        %284 = vector.broadcast %cst : f32 to vector<8x13x3xf32>
        %285 = vector.fma %284, %38, %49 : vector<8x13x3xf32>
        %inserted_44 = tensor.insert %c896_i16 into %8[%c6, %c1] : tensor<11x3xi16>
        %286 = arith.ceildivsi %89, %c896_i16 : i16
        %287 = vector.extract_strided_slice %285 {offsets = [0], sizes = [7], strides = [1]} : vector<8x13x3xf32> to vector<7x13x3xf32>
        %288 = index.ceildivu %c4, %c6
        %289 = vector.bitcast %85 : vector<11xi64> to vector<11xi64>
        %290 = memref.realloc %alloc_19 : memref<8xi32> to memref<13xi32>
        %291 = math.ctpop %18 : tensor<3x8x13xi32>
        %alloc_45 = memref.alloc() : memref<8x3xf16>
        affine.store %cst_3, %alloc_18[%c2, %c4, %c8] : memref<8x13x3xf16>
        %292 = math.atan %cst_3 : f16
        %293 = vector.broadcast %c1963310662_i64 : i64 to vector<8xi64>
        %dest_46, %accumulated_value_47 = vector.scan <add>, %55, %293 {inclusive = true, reduction_dim = 1 : i64} : vector<8x3xi64>, vector<8xi64>
        %294 = arith.maxsi %c1710974591_i64, %c2015405231_i64 : i64
        %295 = index.add %288, %c8
        %296 = math.log10 %cst_1 : f32
        %297 = math.ctpop %out : i64
        %298 = index.maxs %c8, %c11
        %299 = math.ceil %4 : tensor<8x3xf16>
        linalg.yield %c247436524_i64 : i64
      } -> tensor<8x13x3xi64>
      %alloc_37 = memref.alloc() : memref<3x8xf16>
      %263 = tensor.empty() : tensor<8x8xf16>
      %264 = linalg.matmul ins(%4, %alloc_37 : tensor<8x3xf16>, memref<3x8xf16>) outs(%263 : tensor<8x8xf16>) -> tensor<8x8xf16>
      %265 = index.sizeof
      %expanded_38 = tensor.expand_shape %expanded [[0], [1], [2], [3, 4]] : tensor<8x13x3x1xi32> into tensor<8x13x3x1x1xi32>
      %266 = math.exp2 %51 : f32
      %267 = arith.xori %false, %false : i1
      %268 = tensor.empty() : tensor<11x13xi16>
      %269 = linalg.matmul ins(%13, %10 : tensor<11x3xi16>, tensor<3x13xi16>) outs(%268 : tensor<11x13xi16>) -> tensor<11x13xi16>
      %270 = vector.broadcast %50 : index to vector<11xindex>
      %271 = vector.broadcast %true_22 : i1 to vector<11xi1>
      vector.scatter %alloc_16[%c1, %c7] [%270], %271, %20 : memref<3x13xi64>, vector<11xindex>, vector<11xi1>, vector<11xi64>
      %false_39 = index.bool.constant false
      %inserted_40 = tensor.insert %c247436524_i64 into %17[%c6, %c9, %c0] : tensor<8x13x3xi64>
      %expanded_41 = tensor.expand_shape %5 [[0], [1], [2, 3]] : tensor<8x13x3xi32> into tensor<8x13x3x1xi32>
      %272 = arith.andi %c247436524_i64, %60 : i64
      scf.yield %alloc_8 : memref<11x3xi64>
    }
    %113 = bufferization.to_tensor %alloc_12 : memref<11x3xi1>
    %inserted_23 = tensor.insert %c468411168_i32 into %7[%c2, %c3, %c1] : tensor<8x13x3xi32>
    %114 = vector.insert %c247436524_i64, %20 [4] : i64 into vector<11xi64>
    %115 = arith.minsi %c767271615_i32, %c16122441_i32 : i32
    %116 = bufferization.clone %alloc : memref<8x13x3xi16> to memref<8x13x3xi16>
    %117 = scf.index_switch %c13 -> i16 
    case 1 {
      %258 = memref.load %alloc_9[%c1, %c8] : memref<3x13xf16>
      %259 = math.tanh %cst_3 : f16
      %alloca = memref.alloca() : memref<8x3xi64>
      %260 = arith.maxui %c247436524_i64, %c1963310662_i64 : i64
      %261 = math.expm1 %0 : tensor<11x3xf32>
      %262 = bufferization.clone %alloc_12 : memref<11x3xi1> to memref<11x3xi1>
      %263 = vector.broadcast %cst_1 : f32 to vector<8x13xf32>
      %dest_37, %accumulated_value_38 = vector.scan <minf>, %37, %263 {inclusive = false, reduction_dim = 2 : i64} : vector<8x13x3xf32>, vector<8x13xf32>
      %264 = memref.load %alloc_7[%c4, %c4, %c2] : memref<8x13x3xf16>
      memref.copy %34, %alloc : memref<8x13x3xi16> to memref<8x13x3xi16>
      %265 = tensor.empty(%c14) : tensor<8x13x?xi1>
      %266 = affine.max affine_map<(d0, d1, d2) -> ((d2 - 1) * -16 - d1, (d2 - 1) * -16 + 16)>(%c9, %c11, %c14)
      %alloc_39 = memref.alloc() : memref<8x13x3xi64>
      memref.tensor_store %2, %alloc_39 : memref<8x13x3xi64>
      %267 = vector.load %alloc_15[%c1, %c0] : memref<8x3xf16>, vector<8x13x3xf16>
      %268 = arith.xori %c1710974591_i64, %c2015405231_i64 : i64
      %269 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 mod 128, d1 floordiv 16)>(%c10, %c13, %c9, %266)
      %inserted_40 = tensor.insert %c16122441_i32 into %18[%c1, %c4, %c4] : tensor<3x8x13xi32>
      scf.yield %89 : i16
    }
    default {
      %258 = math.exp2 %4 : tensor<8x3xf16>
      %259 = memref.realloc %alloc_19 : memref<8xi32> to memref<3xi32>
      %260 = index.castu %c5 : index to i32
      %261 = arith.maxsi %true_22, %true : i1
      memref.copy %34, %alloc_10 : memref<8x13x3xi16> to memref<8x13x3xi16>
      %alloc_37 = memref.alloc() : memref<8x3xi32>
      memref.copy %alloc_11, %alloc_37 : memref<8x3xi32> to memref<8x3xi32>
      %262 = bufferization.clone %alloc_4 : memref<8x13x3xf32> to memref<8x13x3xf32>
      %263 = arith.minui %false, %false : i1
      %alloc_38 = memref.alloc() : memref<3xi32>
      %264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_19, %alloc_38, %21 : memref<8xi32>, memref<3xi32>, tensor<8xi32>) outs(%transposed : tensor<3x8x13xi32>) {
      ^bb0(%in: i32, %in_39: i32, %in_40: i32, %out: i32):
        %false_41 = arith.constant false
        %270 = math.round %15 : tensor<11x3xf16>
        %271 = vector.broadcast %c7 : index to vector<13xindex>
        %272 = vector.broadcast %false : i1 to vector<13xi1>
        vector.scatter %alloc_5[%c1, %c9] [%271], %272, %272 : memref<3x13xi1>, vector<13xindex>, vector<13xi1>, vector<13xi1>
        %273 = vector.broadcast %c767271615_i32 : i32 to vector<i32>
        %274 = vector.transfer_write %273, %5[%74, %c12, %c9] : vector<i32>, tensor<8x13x3xi32>
        %275 = arith.remsi %true, %false : i1
        %276 = math.round %0 : tensor<11x3xf32>
        %277 = arith.remf %cst_1, %cst_1 : f32
        %278 = math.cttz %c468411168_i32 : i32
        %279 = index.divu %c2, %74
        %280 = math.fpowi %6, %5 : tensor<8x13x3xf16>, tensor<8x13x3xi32>
        %281 = math.atan %0 : tensor<11x3xf32>
        %282 = arith.mulf %cst, %cst_1 : f32
        %283 = math.absi %60 : i64
        memref.store %true, %alloc_5[%c0, %c10] : memref<3x13xi1>
        %284 = math.ctpop %expanded : tensor<8x13x3x1xi32>
        %285 = arith.divui %60, %c1710974591_i64 : i64
        %286 = memref.realloc %alloc_19 : memref<8xi32> to memref<11xi32>
        %287 = arith.ori %60, %c247436524_i64 : i64
        %288 = math.roundeven %15 : tensor<11x3xf16>
        %289 = arith.minui %in, %c16122441_i32 : i32
        %290 = math.floor %51 : f32
        %291 = math.ctlz %c896_i16 : i16
        %true_42 = arith.constant true
        %292 = arith.remui %in, %in : i32
        %293 = tensor.empty(%c3, %c8) : tensor<?x?x3xf32>
        %294 = vector.broadcast %cst_2 : f32 to vector<3x13xf32>
        %295 = vector.fma %294, %294, %294 : vector<3x13xf32>
        %296 = index.sizeof
        %expanded_43 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<8x3xi1> into tensor<8x3x1xi1>
        %false_44 = index.bool.constant false
        %297 = math.ctpop %c2015405231_i64 : i64
        %298 = arith.floordivsi %in, %in_40 : i32
        %299 = vector.broadcast %out : i32 to vector<13xi32>
        %300 = vector.broadcast %false : i1 to vector<13xi1>
        %301 = vector.maskedload %alloc_19[%c6], %300, %299 : memref<8xi32>, vector<13xi1>, vector<13xi32> into vector<13xi32>
        linalg.yield %in_39 : i32
      } -> tensor<3x8x13xi32>
      %265 = scf.while (%arg2 = %alloc_5) : (memref<3x13xi1>) -> memref<3x13xi1> {
        %270 = memref.realloc %alloc_19 : memref<8xi32> to memref<11xi32>
        %271 = vector.shuffle %66, %55 [1, 4, 5, 7, 9, 10, 11, 12, 14] : vector<8x3xi64>, vector<8x3xi64>
        %272 = arith.divui %c468411168_i32, %c767271615_i32 : i32
        %273 = memref.load %262[%c3, %c7, %c1] : memref<8x13x3xf32>
        %274 = vector.insertelement %c247436524_i64, %97[%c1 : index] : vector<3xi64>
        %275 = bufferization.to_tensor %116 : memref<8x13x3xi16>
        %276 = math.exp2 %cst_1 : f32
        %277 = arith.divf %cst_2, %cst_2 : f32
        scf.condition(%true_22) %alloc_5 : memref<3x13xi1>
      } do {
      ^bb0(%arg2: memref<3x13xi1>):
        %rank_39 = tensor.rank %9 : tensor<8x3xi1>
        %270 = math.ipowi %12, %17 : tensor<8x13x3xi64>
        %false_40 = arith.constant false
        memref.copy %arg2, %alloc_5 : memref<3x13xi1> to memref<3x13xi1>
        %271 = math.round %0 : tensor<11x3xf32>
        %272 = vector.create_mask %c1, %rank : vector<3x13xi1>
        %cast = tensor.cast %23 : tensor<i32> to tensor<i32>
        %273 = arith.divf %cst, %cst_1 : f32
        %274 = math.fpowi %cst_3, %c16122441_i32 : f16, i32
        %275 = math.round %cst_2 : f32
        memref.assume_alignment %alloc_9, 2 : memref<3x13xf16>
        %276 = math.rsqrt %15 : tensor<11x3xf16>
        %277 = arith.remsi %c468411168_i32, %c767271615_i32 : i32
        %278 = arith.minui %c16122441_i32, %c16122441_i32 : i32
        %279 = tensor.empty(%103) : tensor<?x3xi1>
        %280 = memref.realloc %alloc_19 : memref<8xi32> to memref<11xi32>
        scf.yield %alloc_5 : memref<3x13xi1>
      }
      %266 = arith.negf %cst : f32
      affine.store %c16122441_i32, %alloc_11[%c11, %c3] : memref<8x3xi32>
      %267 = affine.if affine_set<(d0, d1, d2) : ((d1 - 8) * 4 == 0, d0 floordiv 8 == 0, (d1 - 8) * 4 + 128 == 0, d0 == 0)>(%c8, %c6, %c14) -> i32 {
        %270 = arith.maxsi %true, %true_22 : i1
        %alloca = memref.alloca() : memref<8x3xi1>
        %271 = index.castu %c4 : index to i32
        %272 = arith.remsi %60, %c2015405231_i64 : i64
        memref.assume_alignment %alloc_16, 4 : memref<3x13xi64>
        %273 = arith.maxsi %c468411168_i32, %c767271615_i32 : i32
        %274 = arith.xori %c-25185_i16, %c896_i16 : i16
        %275 = arith.remf %cst_1, %cst : f32
        affine.yield %c468411168_i32 : i32
      } else {
        %270 = memref.load %116[%c6, %c4, %c1] : memref<8x13x3xi16>
        %271 = math.copysign %4, %4 : tensor<8x3xf16>
        %dest_39, %accumulated_value_40 = vector.scan <minf>, %49, %47 {inclusive = false, reduction_dim = 1 : i64} : vector<8x13x3xf32>, vector<8x3xf32>
        memref.assume_alignment %alloc_17, 8 : memref<8x13x3xf32>
        %272 = index.add %c2, %103
        %273 = affine.max affine_map<(d0) -> (-d0, d0, d0 * -2, d0 * 4)>(%c3)
        %alloc_41 = memref.alloc() : memref<8x3xi32>
        memref.copy %alloc_11, %alloc_41 : memref<8x3xi32> to memref<8x3xi32>
        %274 = memref.realloc %alloc_19 : memref<8xi32> to memref<13xi32>
        affine.yield %c468411168_i32 : i32
      }
      %268 = index.castu %c6 : index to i32
      %269 = arith.maxui %c896_i16, %89 : i16
      memref.assume_alignment %alloc_10, 4 : memref<8x13x3xi16>
      scf.yield %c-25185_i16 : i16
    }
    %118 = affine.for %arg2 = 0 to 67 iter_args(%arg3 = %10) -> (tensor<3x13xi16>) {
      affine.yield %10 : tensor<3x13xi16>
    }
    %119 = vector.matrix_multiply %97, %97 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi64>, vector<3xi64>) -> vector<1xi64>
    %120 = vector.broadcast %cst : f32 to vector<8x13x3xf32>
    %121 = vector.fma %120, %38, %37 : vector<8x13x3xf32>
    %122 = math.round %cst_3 : f16
    %123 = arith.addi %c247436524_i64, %c247436524_i64 : i64
    %124 = arith.muli %c2015405231_i64, %c1710974591_i64 : i64
    %125 = math.ipowi %2, %2 : tensor<8x13x3xi64>
    %126 = arith.remf %51, %51 : f32
    %127 = math.ctlz %1 : tensor<11x3xi64>
    %generated = tensor.generate %c4 {
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      %258 = arith.shrsi %c767271615_i32, %c767271615_i32 : i32
      %259 = arith.negf %cst_2 : f32
      vector.print %101 : vector<3xf32>
      %260 = math.rsqrt %15 : tensor<11x3xf16>
      tensor.yield %51 : f32
    } : tensor<?x13x3xf32>
    %128 = arith.xori %c1710974591_i64, %c1710974591_i64 : i64
    %129 = arith.maxf %cst_3, %cst_3 : f16
    %130 = arith.xori %false, %false : i1
    %131 = vector.broadcast %c9 : index to vector<3xindex>
    %132 = vector.broadcast %true : i1 to vector<3xi1>
    vector.scatter %alloc_5[%c2, %c1] [%131], %132, %132 : memref<3x13xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
    %133 = arith.remf %cst_1, %51 : f32
    %134 = arith.subi %c-25185_i16, %c-25185_i16 : i16
    %135 = bufferization.clone %alloc_8 : memref<11x3xi64> to memref<11x3xi64>
    %136 = math.round %4 : tensor<8x3xf16>
    %137 = vector.matrix_multiply %119, %20 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 11 : i32} : (vector<1xi64>, vector<11xi64>) -> vector<11xi64>
    %138 = math.copysign %cst_2, %cst_2 : f32
    %139 = vector.broadcast %c2 : index to vector<8xindex>
    %140 = vector.broadcast %true : i1 to vector<8xi1>
    %141 = vector.broadcast %89 : i16 to vector<8xi16>
    vector.scatter %34[%c4, %c5, %c1] [%139], %140, %141 : memref<8x13x3xi16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
    %142 = bufferization.to_memref %12 : memref<8x13x3xi64>
    %143 = bufferization.to_memref %expanded_21 : memref<11x3x1xi16>
    %144 = arith.divui %c468411168_i32, %c468411168_i32 : i32
    %145 = index.sizeof
    %146 = math.atan %4 : tensor<8x3xf16>
    memref.assume_alignment %alloc_9, 16 : memref<3x13xf16>
    %147 = vector.extract %66[2] : vector<8x3xi64>
    %148 = bufferization.to_memref %7 : memref<8x13x3xi32>
    memref.store %true, %alloc_5[%c2, %c5] : memref<3x13xi1>
    %149 = vector.bitcast %66 : vector<8x3xi64> to vector<8x3xi64>
    %150 = affine.if affine_set<(d0, d1, d2, d3) : (d1 ceildiv 2 + 32 >= 0, -d3 >= 0, d1 ceildiv 2 + 32 == 0)>(%c14, %c8, %c3, %c13) -> i64 {
      %258 = affine.load %alloc_5[%c1, %c3] : memref<3x13xi1>
      %259 = math.log %cst : f32
      %260 = index.sub %c13, %c15
      %alloca = memref.alloca() : memref<3x13xi64>
      %261 = memref.realloc %alloc_19 : memref<8xi32> to memref<13xi32>
      %262 = vector.broadcast %cst_0 : f16 to vector<11xf16>
      %263 = vector.broadcast %true : i1 to vector<11xi1>
      %264 = vector.maskedload %alloc_9[%c1, %c5], %263, %262 : memref<3x13xf16>, vector<11xi1>, vector<11xf16> into vector<11xf16>
      %265 = math.fpowi %cst_1, %c16122441_i32 : f32, i32
      %266 = math.ctlz %93 : tensor<8x13x3xi16>
      affine.yield %c1963310662_i64 : i64
    } else {
      %258 = math.fma %51, %cst_2, %cst_1 : f32
      %259 = math.exp2 %15 : tensor<11x3xf16>
      %260 = math.fpowi %15, %11 : tensor<11x3xf16>, tensor<11x3xi32>
      %261 = arith.addf %cst, %cst : f32
      %262 = arith.shrsi %c247436524_i64, %c247436524_i64 : i64
      %263 = arith.xori %c1710974591_i64, %c247436524_i64 : i64
      %264 = arith.minui %true, %false : i1
      %265 = scf.while (%arg2 = %c2015405231_i64) : (i64) -> i64 {
        %266 = vector.broadcast %c1963310662_i64 : i64 to vector<8xi64>
        %dest_37, %accumulated_value_38 = vector.scan <mul>, %55, %266 {inclusive = true, reduction_dim = 1 : i64} : vector<8x3xi64>, vector<8xi64>
        %267 = arith.minsi %arg2, %arg2 : i64
        %268 = vector.broadcast %c0 : index to vector<13xindex>
        %269 = vector.broadcast %false : i1 to vector<13xi1>
        %270 = vector.broadcast %c1710974591_i64 : i64 to vector<13xi64>
        vector.scatter %142[%c7, %c7, %c2] [%268], %269, %270 : memref<8x13x3xi64>, vector<13xindex>, vector<13xi1>, vector<13xi64>
        %271 = index.divu %75, %c13
        %272 = vector.insert %147, %149 [6] : vector<3xi64> into vector<8x3xi64>
        %273 = vector.bitcast %147 : vector<3xi64> to vector<3xi64>
        %274 = arith.remsi %c896_i16, %89 : i16
        %inserted_39 = tensor.insert %cst_3 into %4[%c6, %c0] : tensor<8x3xf16>
        scf.condition(%true_22) %c247436524_i64 : i64
      } do {
      ^bb0(%arg2: i64):
        %266 = arith.remf %cst_0, %cst_0 : f16
        %267 = index.sizeof
        %268 = index.sizeof
        %269 = vector.transpose %120, [2, 0, 1] : vector<8x13x3xf32> to vector<3x8x13xf32>
        %270 = math.cttz %true_22 : i1
        %271 = arith.muli %c896_i16, %c-25185_i16 : i16
        %alloca = memref.alloca() : memref<3x13xi1>
        %alloc_37 = memref.alloc() : memref<11x3xi64>
        %272 = index.divu %c13, %rank
        %rank_38 = tensor.rank %18 : tensor<3x8x13xi32>
        %273 = math.sqrt %6 : tensor<8x13x3xf16>
        %274 = tensor.empty() : tensor<8x3xi64>
        %splat_39 = tensor.splat %arg2 : tensor<3x13xi64>
        %275 = arith.remsi %c-25185_i16, %89 : i16
        %from_elements_40 = tensor.from_elements %cst_3, %cst_0, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_0, %cst_3, %cst_3, %cst_0, %cst_0, %cst_0, %cst_3, %cst_3, %cst_0, %cst_3, %cst_0, %cst_0, %cst_0, %cst_3, %cst_3, %cst_0, %cst_0, %cst_3, %cst_3, %cst_3, %cst_0, %cst_0, %cst_3, %cst_3, %cst_3, %cst_0 : tensor<11x3xf16>
        %276 = index.divu %c11, %103
        scf.yield %c247436524_i64 : i64
      }
      affine.yield %60 : i64
    }
    %151 = math.exp2 %cst_2 : f32
    %152 = math.ctlz %true_22 : i1
    %153 = math.fpowi %cst_3, %c767271615_i32 : f16, i32
    %154 = scf.while (%arg2 = %47) : (vector<8x3xf32>) -> vector<8x3xf32> {
      %258 = scf.while (%arg3 = %alloc_16) : (memref<3x13xi64>) -> memref<3x13xi64> {
        %true_37 = index.bool.constant true
        %265 = vector.bitcast %97 : vector<3xi64> to vector<3xi64>
        %266 = math.round %15 : tensor<11x3xf16>
        %267 = vector.matrix_multiply %147, %20 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 11 : i32} : (vector<3xi64>, vector<11xi64>) -> vector<33xi64>
        %268 = math.exp2 %cst : f32
        %269 = vector.splat %60 : vector<3x13xi64>
        %270 = arith.muli %false, %true_37 : i1
        memref.copy %alloc, %34 : memref<8x13x3xi16> to memref<8x13x3xi16>
        scf.condition(%true_37) %alloc_6 : memref<3x13xi64>
      } do {
      ^bb0(%arg3: memref<3x13xi64>):
        %265 = math.rsqrt %0 : tensor<11x3xf32>
        %266 = arith.subi %false, %true : i1
        %267 = index.ceildivs %c7, %c10
        %268 = index.sub %c2, %c14
        %269 = arith.mulf %51, %cst_1 : f32
        %270 = memref.load %alloc_16[%c1, %c6] : memref<3x13xi64>
        %271 = vector.broadcast %cst_1 : f32 to vector<8x13x3xf32>
        %272 = vector.fma %271, %120, %271 : vector<8x13x3xf32>
        %273 = vector.extract %47[7] : vector<8x3xf32>
        %274 = arith.ori %c-25185_i16, %c896_i16 : i16
        %275 = vector.splat %c15 : vector<8x13x3xindex>
        %276 = arith.ceildivsi %c896_i16, %c-25185_i16 : i16
        %277 = tensor.empty() : tensor<3x13xf32>
        %278 = index.maxu %50, %c1
        %279 = math.ctpop %transposed : tensor<3x8x13xi32>
        %true_37 = index.bool.constant true
        %280 = arith.ceildivsi %c1710974591_i64, %c1710974591_i64 : i64
        scf.yield %alloc_16 : memref<3x13xi64>
      }
      %alloca = memref.alloca() : memref<11x3xi64>
      %259 = arith.ceildivsi %c-25185_i16, %c896_i16 : i16
      %260 = index.add %103, %c7
      %261 = math.round %cst_3 : f16
      %262 = vector.multi_reduction <minui>, %65, %137 [] : vector<11xi64> to vector<11xi64>
      %263 = arith.negf %cst_0 : f16
      %264 = arith.xori %c247436524_i64, %c1710974591_i64 : i64
      scf.condition(%true_22) %47 : vector<8x3xf32>
    } do {
    ^bb0(%arg2: vector<8x3xf32>):
      %258 = math.log10 %4 : tensor<8x3xf16>
      %259 = arith.divsi %c2015405231_i64, %c247436524_i64 : i64
      %260 = math.copysign %4, %4 : tensor<8x3xf16>
      %261 = memref.atomic_rmw maxf %51, %alloc_4[%c1, %c0, %c0] : (f32, memref<8x13x3xf32>) -> f32
      %false_37 = arith.constant false
      %262 = affine.if affine_set<(d0, d1, d2) : (d2 mod 2 == 0)>(%c9, %c4, %c13) -> i16 {
        %272 = vector.broadcast %50 : index to vector<8xindex>
        %273 = vector.broadcast %true : i1 to vector<8xi1>
        vector.scatter %alloc_12[%c4, %c2] [%272], %273, %273 : memref<11x3xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
        %274 = vector.shuffle %149, %66 [1, 4, 6, 7, 8, 14] : vector<8x3xi64>, vector<8x3xi64>
        memref.assume_alignment %alloc_16, 4 : memref<3x13xi64>
        %275 = memref.load %alloc_6[%c0, %c7] : memref<3x13xi64>
        %c-3301_i16 = arith.constant -3301 : i16
        %276 = arith.negf %cst : f32
        %277 = affine.min affine_map<(d0) -> (((d0 + 32) * 2) ceildiv 4, d0 * 3, d0 + d0 floordiv 32 + 32, 16)>(%c11)
        %278 = math.log10 %6 : tensor<8x13x3xf16>
        affine.yield %89 : i16
      } else {
        %272 = math.log %0 : tensor<11x3xf32>
        %dest_40, %accumulated_value_41 = vector.scan <maxsi>, %55, %147 {inclusive = false, reduction_dim = 0 : i64} : vector<8x3xi64>, vector<3xi64>
        %273 = math.ctpop %c247436524_i64 : i64
        %274 = math.exp %15 : tensor<11x3xf16>
        %275 = vector.broadcast %51 : f32 to vector<8x13x3xf32>
        %276 = vector.fma %275, %120, %38 : vector<8x13x3xf32>
        %277 = arith.remsi %c-25185_i16, %89 : i16
        %278 = arith.minui %89, %c-25185_i16 : i16
        memref.assume_alignment %alloc_16, 1 : memref<3x13xi64>
        affine.yield %c-25185_i16 : i16
      }
      %263 = index.divu %74, %c6
      %alloc_38 = memref.alloc() : memref<13x3xi64>
      %264 = tensor.empty() : tensor<3x3xi64>
      %265 = linalg.matmul ins(%3, %alloc_38 : tensor<3x13xi64>, memref<13x3xi64>) outs(%264 : tensor<3x3xi64>) -> tensor<3x3xi64>
      affine.store %true_22, %alloc_5[%c0, %c15] : memref<3x13xi1>
      %266 = vector.shuffle %55, %66 [0, 1, 4, 8, 9, 10, 11, 13, 14] : vector<8x3xi64>, vector<8x3xi64>
      %expanded_39 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<11x3xi16> into tensor<11x3x1xi16>
      %267 = math.log %cst_0 : f16
      %268 = affine.if affine_set<(d0, d1, d2) : (-d1 >= 0, -d2 >= 0, d1 >= 0, (d1 - d2) mod 2 >= 0)>(%c10, %c7, %c2) -> memref<11x3xi64> {
        %272 = vector.broadcast %cst_1 : f32 to vector<11x3xf32>
        %273 = vector.fma %272, %272, %272 : vector<11x3xf32>
        %274 = index.ceildivu %c7, %c3
        %dest_40, %accumulated_value_41 = vector.scan <maxsi>, %55, %147 {inclusive = true, reduction_dim = 0 : i64} : vector<8x3xi64>, vector<3xi64>
        %275 = vector.splat %cst_0 : vector<3x13xf16>
        %276 = vector.bitcast %49 : vector<8x13x3xf32> to vector<8x13x3xf32>
        %277 = index.maxu %c6, %c0
        %278 = index.divs %103, %103
        %279 = math.rsqrt %6 : tensor<8x13x3xf16>
        affine.yield %alloc_14 : memref<11x3xi64>
      } else {
        %272 = math.rsqrt %6 : tensor<8x13x3xf16>
        %273 = vector.multi_reduction <xor>, %147, %97 [] : vector<3xi64> to vector<3xi64>
        memref.assume_alignment %143, 1 : memref<11x3x1xi16>
        memref.copy %alloc_10, %alloc : memref<8x13x3xi16> to memref<8x13x3xi16>
        %274 = vector.bitcast %20 : vector<11xi64> to vector<11xi64>
        %275 = math.floor %6 : tensor<8x13x3xf16>
        %276 = arith.divf %cst_3, %cst_3 : f16
        %277 = memref.realloc %alloc_19 : memref<8xi32> to memref<8xi32>
        affine.yield %alloc_14 : memref<11x3xi64>
      }
      %269 = math.log10 %6 : tensor<8x13x3xf16>
      %270 = affine.max affine_map<(d0, d1, d2) -> (-((d2 * 16) ceildiv 64), d1, 0)>(%63, %c11, %103)
      %271 = arith.divf %51, %cst_1 : f32
      scf.yield %47 : vector<8x3xf32>
    }
    %155 = arith.minf %cst_3, %cst_0 : f16
    %156 = scf.index_switch %74 -> vector<3x13xi32> 
    case 1 {
      vector.print %147 : vector<3xi64>
      %258 = arith.minui %60, %c1710974591_i64 : i64
      %259 = math.rsqrt %15 : tensor<11x3xf16>
      %c446146130_i32 = arith.constant 446146130 : i32
      %260 = index.divu %c4, %c10
      %261 = vector.bitcast %49 : vector<8x13x3xf32> to vector<8x13x3xi32>
      %262 = math.tanh %0 : tensor<11x3xf32>
      memref.tensor_store %14, %alloc_5 : memref<3x13xi1>
      %263 = bufferization.clone %142 : memref<8x13x3xi64> to memref<8x13x3xi64>
      %264 = math.copysign %cst_3, %cst_0 : f16
      memref.copy %142, %263 : memref<8x13x3xi64> to memref<8x13x3xi64>
      %265 = vector.broadcast %false : i1 to vector<3x13xi1>
      %266 = math.copysign %6, %6 : tensor<8x13x3xf16>
      %267 = arith.divf %cst, %cst : f32
      vector.print %149 : vector<8x3xi64>
      %268 = math.copysign %6, %6 : tensor<8x13x3xf16>
      %269 = vector.broadcast %c16122441_i32 : i32 to vector<3x13xi32>
      scf.yield %269 : vector<3x13xi32>
    }
    case 2 {
      %258 = math.log %0 : tensor<11x3xf32>
      %259 = vector.transpose %97, [0] : vector<3xi64> to vector<3xi64>
      %rank_37 = tensor.rank %generated : tensor<?x13x3xf32>
      %260 = arith.divf %cst_0, %cst_3 : f16
      %261 = memref.atomic_rmw muli %c247436524_i64, %135[%c8, %c0] : (i64, memref<11x3xi64>) -> i64
      %alloca = memref.alloca() : memref<11x3xi16>
      %from_elements_38 = tensor.from_elements %cst_2, %cst, %cst_2, %cst, %51, %cst_2, %cst, %51, %cst_2, %cst_1, %51, %cst_2, %cst_1, %cst_1, %cst, %cst_2, %51, %cst, %cst_1, %51, %cst_2, %51, %cst_1, %51, %cst_2, %51, %cst, %cst, %cst_2, %cst_2, %51, %cst_1, %51, %cst, %cst_2, %cst_1, %cst, %cst, %51, %cst, %51, %51, %cst_2, %cst, %cst_1, %cst_2, %51, %cst, %cst_1, %51, %cst, %cst, %cst, %cst_2, %51, %cst_1, %cst_2, %cst_1, %cst, %cst, %cst, %cst_2, %cst_2, %cst_2, %51, %51, %cst_1, %51, %cst, %cst_1, %cst, %cst_2, %51, %51, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst, %cst, %cst, %51, %51, %cst_1, %cst_2, %51, %51, %cst, %cst_2, %cst_2, %51, %51, %cst_1, %cst, %cst_2, %cst_1, %cst_2, %cst_1, %51, %cst_2, %51, %cst_2, %cst, %cst_1, %cst, %cst_2, %cst, %cst, %cst_2, %51, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %51, %cst_1, %cst_1, %cst, %cst_1, %cst_2, %51, %cst_1, %51, %cst_1, %cst, %cst, %51, %cst_2, %cst_2, %cst_1, %51, %51, %cst_1, %cst_2, %51, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst, %cst_2, %51, %cst, %cst_2, %cst, %51, %cst, %51, %cst_2, %cst_2, %51, %cst_2, %cst, %51, %cst, %cst, %cst_2, %cst, %cst_1, %cst_1, %cst, %cst_2, %cst_2, %cst, %cst_1, %cst, %cst_2, %cst_1, %cst_2, %cst_1, %cst, %cst_2, %cst_1, %cst_1, %cst, %51, %51, %cst_1, %cst_2, %cst_1, %51, %cst, %cst, %cst, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst, %51, %51, %cst, %cst_1, %cst_2, %51, %cst_1, %cst, %cst_2, %cst_2, %cst_1, %cst, %cst_1, %cst, %cst_1, %cst_1, %cst, %cst, %51, %cst_2, %cst_1, %51, %cst_1, %cst, %51, %cst, %51, %51, %51, %cst, %cst, %cst, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst, %cst_2, %cst_2, %51, %cst_1, %51, %51, %cst, %cst_2, %cst, %cst_1, %cst_2, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst_2, %cst, %cst_2, %51, %cst_2, %51, %cst_1, %cst_2, %51, %cst_1, %51, %cst, %cst, %cst_1, %cst_2, %cst, %cst_2, %cst_1, %cst_2, %cst_1, %51, %cst_2, %cst_1, %51, %cst, %cst_1, %cst_1, %51, %cst_2, %51, %51, %cst_1, %cst, %cst_1, %51, %cst_2, %cst_2, %cst, %cst_1, %51, %51, %cst_1, %cst_1, %cst_2, %cst_2, %cst, %cst_2, %51, %51, %cst_1, %51, %cst_2, %cst, %cst_1, %cst_1, %cst_2, %cst_1, %cst, %cst_1, %cst_2, %cst_1, %cst, %51 : tensor<8x13x3xf32>
      %262 = vector.broadcast %cst_2 : f32 to vector<8xf32>
      %263 = vector.multi_reduction <mul>, %47, %262 [1] : vector<8x3xf32> to vector<8xf32>
      %264 = index.divu %c1, %c5
      scf.execute_region {
        affine.store %cst_3, %alloc_18[%c13, %c6, %c9] : memref<8x13x3xf16>
        memref.copy %alloc, %116 : memref<8x13x3xi16> to memref<8x13x3xi16>
        %271 = bufferization.to_memref %8 : memref<11x3xi16>
        %272 = tensor.empty() : tensor<3x13xi32>
        %273 = bufferization.clone %alloc_13 : memref<8x3xf16> to memref<8x3xf16>
        %274 = arith.muli %true, %false : i1
        %275 = math.log %15 : tensor<11x3xf16>
        %276 = arith.divf %cst_3, %cst_3 : f16
        %277 = arith.maxsi %true, %true : i1
        %278 = math.expm1 %51 : f32
        %279 = vector.transpose %262, [0] : vector<8xf32> to vector<8xf32>
        %alloca_40 = memref.alloca() : memref<8x3xf16>
        %280 = vector.broadcast %51 : f32 to vector<3x13xf32>
        %281 = vector.fma %280, %280, %280 : vector<3x13xf32>
        %282 = bufferization.clone %143 : memref<11x3x1xi16> to memref<11x3x1xi16>
        %283 = math.copysign %6, %6 : tensor<8x13x3xf16>
        %284 = tensor.empty() : tensor<8x13x3xi1>
        scf.yield
      }
      %from_elements_39 = tensor.from_elements %cst, %cst_1, %cst_2, %51, %51, %cst, %51, %cst, %cst_1, %cst, %cst_1, %51, %cst_1, %51, %cst, %cst_2, %cst_2, %cst_1, %cst_1, %cst, %51, %cst_2, %51, %cst_2, %cst_2, %cst_1, %cst, %cst, %51, %cst, %cst, %cst, %51, %51, %cst_1, %cst_1, %cst, %cst, %51 : tensor<3x13xf32>
      %265 = arith.andi %c247436524_i64, %c1963310662_i64 : i64
      %266 = index.ceildivu %c10, %c10
      %267 = memref.realloc %alloc_19 : memref<8xi32> to memref<13xi32>
      %268 = index.maxu %c15, %c15
      %269 = scf.index_switch %c8 -> i32 
      case 1 {
        %271 = math.absi %18 : tensor<3x8x13xi32>
        %272 = index.add %c0, %c12
        memref.assume_alignment %alloc_16, 8 : memref<3x13xi64>
        memref.copy %34, %alloc : memref<8x13x3xi16> to memref<8x13x3xi16>
        memref.copy %alloc_18, %alloc_7 : memref<8x13x3xf16> to memref<8x13x3xf16>
        %273 = index.sub %c6, %63
        memref.assume_alignment %alloc_8, 4 : memref<11x3xi64>
        %274 = arith.maxsi %c-25185_i16, %89 : i16
        affine.store %60, %alloc_8[%c9, %c8] : memref<11x3xi64>
        %275 = vector.insert %97, %149 [5] : vector<3xi64> into vector<8x3xi64>
        %alloca_40 = memref.alloca() : memref<8x3xi32>
        %276 = affine.max affine_map<(d0, d1, d2, d3) -> (d3)>(%c1, %c4, %264, %63)
        affine.store %c-25185_i16, %alloc_10[%c14, %c0, %c14] : memref<8x13x3xi16>
        %277 = vector.broadcast %cst_1 : f32 to vector<11x3xf32>
        %278 = vector.fma %277, %277, %277 : vector<11x3xf32>
        %279 = math.rsqrt %15 : tensor<11x3xf16>
        %collapsed_41 = tensor.collapse_shape %3 [[0, 1]] : tensor<3x13xi64> into tensor<39xi64>
        scf.yield %c767271615_i32 : i32
      }
      case 2 {
        %271 = math.sqrt %cst_2 : f32
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_40 = arith.constant 0 : i16
        %272 = vector.transfer_read %8[%c12, %c1], %c0_i16_40 : tensor<11x3xi16>, vector<i16>
        %273 = math.floor %from_elements_38 : tensor<8x13x3xf32>
        %274 = index.sub %264, %74
        %275 = index.sizeof
        %276 = vector.insert %cst_2, %101 [2] : f32 into vector<3xf32>
        %277 = bufferization.clone %alloc_9 : memref<3x13xf16> to memref<3x13xf16>
        %278 = index.maxu %c12, %c13
        %279 = affine.min affine_map<(d0, d1, d2) -> (-(d2 * 2 - d1), d1 + 4)>(%c4, %c8, %75)
        %280 = arith.remf %cst_2, %cst_1 : f32
        %281 = index.sizeof
        %282 = arith.remsi %c1963310662_i64, %c1963310662_i64 : i64
        %283 = bufferization.clone %alloc_4 : memref<8x13x3xf32> to memref<8x13x3xf32>
        %from_elements_41 = tensor.from_elements %c0_i16, %c0_i16, %c-25185_i16, %c0_i16, %89, %c-25185_i16, %c-25185_i16, %c896_i16, %c-25185_i16, %c896_i16, %c896_i16, %89, %c-25185_i16, %c0_i16, %c896_i16, %c896_i16, %c-25185_i16, %89, %c896_i16, %c896_i16, %c0_i16, %c896_i16, %c-25185_i16, %c896_i16, %c0_i16, %c-25185_i16, %c0_i16, %89, %89, %89, %c-25185_i16, %c0_i16, %89, %c896_i16, %89, %c896_i16, %c-25185_i16, %89, %c896_i16, %c-25185_i16, %89, %89, %c-25185_i16, %c-25185_i16, %89, %89, %89, %c-25185_i16, %89, %89, %c-25185_i16, %89, %89, %c896_i16, %c0_i16, %c-25185_i16, %c0_i16, %c0_i16, %c896_i16, %c896_i16, %c896_i16, %c-25185_i16, %c896_i16, %c0_i16, %c0_i16, %c0_i16, %c896_i16, %89, %c-25185_i16, %c-25185_i16, %c896_i16, %89, %89, %c896_i16, %c-25185_i16, %c896_i16, %89, %c-25185_i16, %c0_i16, %c-25185_i16, %89, %89, %c-25185_i16, %89, %c0_i16, %c0_i16, %89, %89, %89, %c0_i16, %89, %c-25185_i16, %c-25185_i16, %c0_i16, %c0_i16, %c0_i16, %c896_i16, %c896_i16, %89, %c896_i16, %89, %c896_i16, %c896_i16, %c-25185_i16, %c-25185_i16, %c-25185_i16, %c-25185_i16, %c-25185_i16, %c-25185_i16, %c0_i16, %c-25185_i16, %89, %c-25185_i16, %c0_i16, %c-25185_i16, %c-25185_i16, %89, %c0_i16, %c896_i16, %c896_i16, %89, %89, %c896_i16, %c-25185_i16, %c0_i16, %89, %c896_i16, %89, %c0_i16, %c896_i16, %c896_i16, %c0_i16, %c0_i16, %c896_i16, %c0_i16, %c-25185_i16, %c-25185_i16, %c896_i16, %89, %c896_i16, %c0_i16, %89, %c0_i16, %c896_i16, %c-25185_i16, %89, %89, %c0_i16, %c0_i16, %c896_i16, %c0_i16, %c896_i16, %c-25185_i16, %c0_i16, %c0_i16, %89, %c-25185_i16, %c-25185_i16, %c-25185_i16, %89, %c-25185_i16, %c896_i16, %c-25185_i16, %c896_i16, %c0_i16, %c896_i16, %c0_i16, %c0_i16, %c-25185_i16, %c896_i16, %c-25185_i16, %89, %c0_i16, %c0_i16, %c896_i16, %89, %89, %c-25185_i16, %89, %c-25185_i16, %c0_i16, %c0_i16, %c-25185_i16, %89, %c-25185_i16, %c0_i16, %c-25185_i16, %89, %c-25185_i16, %c896_i16, %c0_i16, %c896_i16, %c-25185_i16, %89, %c0_i16, %c896_i16, %c896_i16, %c896_i16, %c0_i16, %c896_i16, %89, %c0_i16, %89, %c896_i16, %c0_i16, %c-25185_i16, %c0_i16, %c896_i16, %c0_i16, %c896_i16, %c-25185_i16, %c-25185_i16, %c-25185_i16, %c0_i16, %c896_i16, %c896_i16, %c0_i16, %89, %c-25185_i16, %c-25185_i16, %89, %c0_i16, %c896_i16, %c0_i16, %89, %c-25185_i16, %c896_i16, %c-25185_i16, %c896_i16, %c-25185_i16, %c0_i16, %c0_i16, %89, %c896_i16, %c0_i16, %c896_i16, %c896_i16, %c0_i16, %89, %c0_i16, %89, %c896_i16, %c0_i16, %c896_i16, %c-25185_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c-25185_i16, %c-25185_i16, %c896_i16, %c896_i16, %c-25185_i16, %89, %c0_i16, %c-25185_i16, %89, %c896_i16, %c0_i16, %c896_i16, %c-25185_i16, %c-25185_i16, %c-25185_i16, %c-25185_i16, %c0_i16, %c0_i16, %c896_i16, %89, %c-25185_i16, %89, %c896_i16, %c0_i16, %c0_i16, %c-25185_i16, %c896_i16, %c896_i16, %c-25185_i16, %c0_i16, %89, %c896_i16, %89, %c896_i16, %89, %c896_i16, %c0_i16, %c896_i16, %c-25185_i16, %89, %c0_i16, %89, %c-25185_i16, %c-25185_i16, %c896_i16, %c896_i16, %c896_i16, %c0_i16, %c0_i16, %c-25185_i16, %c-25185_i16, %c-25185_i16, %c0_i16, %c896_i16, %c896_i16, %c896_i16, %89, %c0_i16, %c-25185_i16, %89, %c-25185_i16, %c0_i16, %c0_i16 : tensor<8x13x3xi16>
        %dest_42, %accumulated_value_43 = vector.scan <minui>, %66, %147 {inclusive = true, reduction_dim = 0 : i64} : vector<8x3xi64>, vector<3xi64>
        %284 = arith.remsi %c1710974591_i64, %60 : i64
        scf.yield %c16122441_i32 : i32
      }
      case 3 {
        %271 = memref.load %alloc_18[%c2, %c11, %c0] : memref<8x13x3xf16>
        %272 = math.fpowi %cst_0, %c16122441_i32 : f16, i32
        %expanded_40 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<3x13xi1> into tensor<3x13x1xi1>
        %cst_41 = arith.constant 1.60531776E+9 : f32
        %273 = math.sqrt %cst_2 : f32
        %274 = index.sizeof
        %275 = vector.create_mask %75, %50 : vector<8x3xi1>
        %276 = math.fma %6, %6, %6 : tensor<8x13x3xf16>
        memref.copy %alloc_18, %alloc_7 : memref<8x13x3xf16> to memref<8x13x3xf16>
        %277 = vector.broadcast %89 : i16 to vector<3x13xi16>
        %278 = vector.multi_reduction <maxf>, %47, %47 [] : vector<8x3xf32> to vector<8x3xf32>
        %279 = vector.broadcast %51 : f32 to vector<8x13x3xf32>
        %280 = vector.fma %279, %49, %49 : vector<8x13x3xf32>
        %281 = math.rsqrt %6 : tensor<8x13x3xf16>
        %282 = math.ctpop %13 : tensor<11x3xi16>
        %alloca_42 = memref.alloca() : memref<8x13x3xf32>
        %283 = arith.xori %c896_i16, %c896_i16 : i16
        scf.yield %c16122441_i32 : i32
      }
      case 4 {
        %271 = math.ceil %51 : f32
        %272 = arith.ori %89, %89 : i16
        %273 = math.copysign %cst_1, %51 : f32
        %274 = arith.remf %cst_1, %cst_2 : f32
        %275 = math.ctlz %113 : tensor<11x3xi1>
        %276 = memref.atomic_rmw muli %c16122441_i32, %alloc_11[%c1, %c1] : (i32, memref<8x3xi32>) -> i32
        %277 = vector.insert %c247436524_i64, %119 [0] : i64 into vector<1xi64>
        %278 = index.castu %63 : index to i32
        %279 = math.ipowi %transposed, %18 : tensor<3x8x13xi32>
        %280 = math.tanh %4 : tensor<8x3xf16>
        %281 = vector.shuffle %20, %65 [2, 6, 7, 9, 12, 13, 14, 15, 16, 17, 19, 20, 21] : vector<11xi64>, vector<11xi64>
        %282 = arith.minui %c767271615_i32, %c468411168_i32 : i32
        %283 = tensor.empty(%c4) : tensor<11x?xf16>
        %284 = arith.maxsi %c2015405231_i64, %c247436524_i64 : i64
        %285 = bufferization.clone %142 : memref<8x13x3xi64> to memref<8x13x3xi64>
        %286 = vector.multi_reduction <maxui>, %65, %c247436524_i64 [0] : vector<11xi64> to i64
        scf.yield %c767271615_i32 : i32
      }
      default {
        %271 = affine.load %alloc_14[%c1, %c15] : memref<11x3xi64>
        %272 = vector.broadcast %51 : f32 to vector<13xf32>
        %273 = vector.multi_reduction <mul>, %37, %272 [0, 2] : vector<8x13x3xf32> to vector<13xf32>
        %274 = memref.atomic_rmw addi %89, %143[%c6, %c2, %c0] : (i16, memref<11x3x1xi16>) -> i16
        %275 = memref.atomic_rmw mulf %cst_3, %alloc_18[%c6, %c8, %c0] : (f16, memref<8x13x3xf16>) -> f16
        %276 = math.ctlz %271 : i64
        %extracted = tensor.extract %transposed[%c1, %c7, %c7] : tensor<3x8x13xi32>
        %277 = bufferization.clone %alloc_5 : memref<3x13xi1> to memref<3x13xi1>
        %278 = arith.remf %51, %51 : f32
        %279 = vector.broadcast %c8 : index to vector<3xindex>
        %280 = vector.broadcast %true_22 : i1 to vector<3xi1>
        vector.scatter %alloc_6[%c0, %c10] [%279], %280, %97 : memref<3x13xi64>, vector<3xindex>, vector<3xi1>, vector<3xi64>
        %281 = math.atan2 %0, %0 : tensor<11x3xf32>
        %282 = vector.broadcast %cst_2 : f32 to vector<13x3xf32>
        %dest_40, %accumulated_value_41 = vector.scan <maxf>, %37, %282 {inclusive = true, reduction_dim = 0 : i64} : vector<8x13x3xf32>, vector<13x3xf32>
        %283 = math.absf %cst_0 : f16
        %284 = index.ceildivu %c1, %264
        %285 = arith.divsi %c-25185_i16, %c-25185_i16 : i16
        %286 = bufferization.to_tensor %alloc_5 : memref<3x13xi1>
        %287 = math.atan2 %0, %0 : tensor<11x3xf32>
        scf.yield %c16122441_i32 : i32
      }
      %270 = vector.broadcast %c16122441_i32 : i32 to vector<3x13xi32>
      scf.yield %270 : vector<3x13xi32>
    }
    case 3 {
      %258 = math.ceil %0 : tensor<11x3xf32>
      %259 = arith.remf %51, %cst : f32
      %260 = math.atan %51 : f32
      %261 = arith.divf %cst_1, %51 : f32
      %262 = math.atan2 %cst_3, %cst_0 : f16
      %263 = arith.divf %cst, %cst_1 : f32
      %264 = arith.divf %cst_1, %cst_2 : f32
      %dest_37, %accumulated_value_38 = vector.scan <add>, %49, %47 {inclusive = true, reduction_dim = 1 : i64} : vector<8x13x3xf32>, vector<8x3xf32>
      %265 = math.copysign %0, %0 : tensor<11x3xf32>
      %266 = arith.addf %51, %cst_1 : f32
      %267 = math.copysign %cst_0, %cst_3 : f16
      memref.assume_alignment %alloc_6, 1 : memref<3x13xi64>
      %268 = vector.bitcast %85 : vector<11xi64> to vector<11xi64>
      %269 = arith.divsi %60, %c1963310662_i64 : i64
      %270 = index.maxu %c2, %103
      %271 = math.fpowi %cst_2, %c16122441_i32 : f32, i32
      %272 = vector.broadcast %c16122441_i32 : i32 to vector<3x13xi32>
      scf.yield %272 : vector<3x13xi32>
    }
    case 4 {
      %258 = math.absi %transposed : tensor<3x8x13xi32>
      %alloca = memref.alloca() : memref<8x3xf32>
      %259 = memref.alloca_scope  -> (memref<11x3xi64>) {
        %273 = math.tanh %0 : tensor<11x3xf32>
        %274 = vector.broadcast %c247436524_i64 : i64 to vector<8xi64>
        %dest_40, %accumulated_value_41 = vector.scan <add>, %149, %274 {inclusive = true, reduction_dim = 1 : i64} : vector<8x3xi64>, vector<8xi64>
        %275 = vector.broadcast %c767271615_i32 : i32 to vector<3x13xi32>
        %276 = vector.broadcast %c468411168_i32 : i32 to vector<3x13xi32>
        %277 = math.ctpop %2 : tensor<8x13x3xi64>
        %278 = math.tanh %cst_0 : f16
        %279 = memref.load %alloc_8[%c5, %c1] : memref<11x3xi64>
        %280 = bufferization.clone %135 : memref<11x3xi64> to memref<11x3xi64>
        %281 = math.round %15 : tensor<11x3xf16>
        %282 = affine.max affine_map<(d0, d1, d2) -> (d0 mod 8, d2 - 16, (-(d0 mod 8 - (d1 floordiv 32) * 2)) mod 32)>(%c2, %c11, %c1)
        %283 = vector.splat %c-25185_i16 : vector<8x3xi16>
        %284 = tensor.empty() : tensor<11x3xi1>
        %285 = math.copysign %0, %0 : tensor<11x3xf32>
        %286 = math.ctpop %3 : tensor<3x13xi64>
        %287 = arith.remf %cst, %cst_2 : f32
        %288 = arith.mulf %cst_2, %cst : f32
        %289 = vector.broadcast %51 : f32 to vector<8x3xf32>
        %290 = math.ctpop %splat_20 : tensor<11x3xi64>
        %291 = vector.bitcast %120 : vector<8x13x3xf32> to vector<8x13x3xf32>
        %292 = math.exp %6 : tensor<8x13x3xf16>
        %293 = arith.divf %cst_0, %cst_0 : f16
        %294 = math.round %0 : tensor<11x3xf32>
        %295 = math.exp %6 : tensor<8x13x3xf16>
        %c0_i16 = arith.constant 0 : i16
        %296 = vector.transfer_read %13[%c10, %c7], %c0_i16 : tensor<11x3xi16>, vector<i16>
        memref.store %c0_i16, %34[%c0, %c3, %c1] : memref<8x13x3xi16>
        %inserted_42 = tensor.insert %false into %113[%c9, %c2] : tensor<11x3xi1>
        %297 = math.absi %9 : tensor<8x3xi1>
        %298 = index.maxs %c10, %63
        %299 = memref.realloc %alloc_19 : memref<8xi32> to memref<3xi32>
        %300 = math.rsqrt %15 : tensor<11x3xf16>
        %true_43 = index.bool.constant true
        %301 = vector.broadcast %c767271615_i32 : i32 to vector<13xi32>
        %dest_44, %accumulated_value_45 = vector.scan <maxsi>, %275, %301 {inclusive = true, reduction_dim = 0 : i64} : vector<3x13xi32>, vector<13xi32>
        memref.alloca_scope.return %135 : memref<11x3xi64>
      }
      %260 = arith.maxf %51, %cst_1 : f32
      %261 = vector.broadcast %cst : f32 to vector<f32>
      vector.transfer_write %261, %alloc_4[%c7, %c1, %c10] : vector<f32>, memref<8x13x3xf32>
      %262 = index.add %46, %c12
      %263 = affine.if affine_set<(d0, d1, d2) : ((d1 - 8) * 4 == 0, d0 floordiv 8 == 0, (d1 - 8) * 4 + 128 == 0, d0 == 0)>(%c0, %c11, %c0) -> f32 {
        %273 = arith.minui %true, %true : i1
        %274 = arith.divf %cst_3, %cst_3 : f16
        %expanded_40 = tensor.expand_shape %7 [[0], [1], [2, 3]] : tensor<8x13x3xi32> into tensor<8x13x3x1xi32>
        %275 = bufferization.clone %alloc_14 : memref<11x3xi64> to memref<11x3xi64>
        %276 = math.copysign %6, %6 : tensor<8x13x3xf16>
        %277 = arith.maxf %cst_1, %51 : f32
        %278 = vector.broadcast %c14 : index to vector<3xindex>
        %279 = vector.broadcast %true_22 : i1 to vector<3xi1>
        %280 = vector.broadcast %c-25185_i16 : i16 to vector<3xi16>
        vector.scatter %116[%c5, %c0, %c2] [%278], %279, %280 : memref<8x13x3xi16>, vector<3xindex>, vector<3xi1>, vector<3xi16>
        %281 = math.exp2 %0 : tensor<11x3xf32>
        affine.yield %cst_1 : f32
      } else {
        %273 = math.ctpop %1 : tensor<11x3xi64>
        %274 = math.ctpop %true_22 : i1
        %275 = arith.minui %c247436524_i64, %60 : i64
        %276 = vector.broadcast %true : i1 to vector<11x3xi1>
        %277 = math.round %cst_1 : f32
        %278 = math.log10 %0 : tensor<11x3xf32>
        %279 = math.copysign %cst, %cst_2 : f32
        %280 = math.rsqrt %cst_0 : f16
        affine.yield %cst : f32
      }
      %splat_37 = tensor.splat %c16122441_i32 : tensor<8x13x3xi32>
      %expanded_38 = tensor.expand_shape %6 [[0], [1], [2, 3]] : tensor<8x13x3xf16> into tensor<8x13x3x1xf16>
      %264 = vector.splat %c7 : vector<11x3xindex>
      %265 = arith.maxsi %c1963310662_i64, %c1963310662_i64 : i64
      %266 = vector.broadcast %c1963310662_i64 : i64 to vector<8xi64>
      %267 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %147, %66, %266 : vector<3xi64>, vector<8x3xi64> into vector<8xi64>
      %268 = math.ctlz %5 : tensor<8x13x3xi32>
      %269 = arith.muli %60, %60 : i64
      %false_39 = arith.constant false
      %270 = vector.transfer_read %alloc_5[%145, %c7], %false_39 : memref<3x13xi1>, vector<11xi1>
      %271 = index.castu %c5 : index to i32
      %272 = vector.broadcast %c767271615_i32 : i32 to vector<3x13xi32>
      scf.yield %272 : vector<3x13xi32>
    }
    default {
      %258 = vector.shuffle %101, %101 [0, 2, 4] : vector<3xf32>, vector<3xf32>
      %259 = memref.atomic_rmw mulf %cst_0, %alloc_15[%c3, %c1] : (f16, memref<8x3xf16>) -> f16
      %260 = arith.divf %cst_1, %cst : f32
      %261 = arith.maxsi %c-25185_i16, %89 : i16
      %262 = math.round %4 : tensor<8x3xf16>
      %263 = vector.broadcast %60 : i64 to vector<3x3xi64>
      %264 = vector.outerproduct %147, %147, %263 {kind = #vector.kind<and>} : vector<3xi64>, vector<3xi64>
      %265 = math.rsqrt %51 : f32
      %266 = memref.atomic_rmw minu %c468411168_i32, %148[%c2, %c5, %c1] : (i32, memref<8x13x3xi32>) -> i32
      %267 = memref.alloca_scope  -> (i64) {
        %277 = math.rsqrt %cst_0 : f16
        %278 = index.maxu %c15, %c15
        %279 = math.round %6 : tensor<8x13x3xf16>
        %280 = arith.shrsi %true_22, %true : i1
        %inserted_37 = tensor.insert %89 into %13[%c3, %c0] : tensor<11x3xi16>
        %281 = math.roundeven %6 : tensor<8x13x3xf16>
        %alloca = memref.alloca() : memref<8x3xi32>
        %282 = arith.minui %c16122441_i32, %c16122441_i32 : i32
        %283 = math.copysign %cst_2, %cst_1 : f32
        %284 = math.exp2 %0 : tensor<11x3xf32>
        %285 = arith.mulf %cst, %cst_1 : f32
        %286 = math.ctpop %5 : tensor<8x13x3xi32>
        %287 = index.ceildivu %50, %c5
        %288 = arith.minf %cst_1, %cst : f32
        %289 = math.round %4 : tensor<8x3xf16>
        %290 = arith.remui %c896_i16, %c896_i16 : i16
        %291 = vector.extract %49[2, 10] : vector<8x13x3xf32>
        %292 = math.cttz %c247436524_i64 : i64
        memref.store %c767271615_i32, %148[%c3, %c1, %c0] : memref<8x13x3xi32>
        %293 = math.log10 %6 : tensor<8x13x3xf16>
        %294 = arith.divf %cst, %cst_1 : f32
        %295 = affine.load %142[%c12, %c1, %c15] : memref<8x13x3xi64>
        %296 = math.log10 %0 : tensor<11x3xf32>
        memref.copy %alloc, %34 : memref<8x13x3xi16> to memref<8x13x3xi16>
        %297 = math.log10 %51 : f32
        %expanded_38 = tensor.expand_shape %transposed [[0], [1], [2, 3]] : tensor<3x8x13xi32> into tensor<3x8x13x1xi32>
        %298 = arith.ceildivsi %c-25185_i16, %c896_i16 : i16
        %299 = vector.flat_transpose %291 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
        %300 = arith.andi %89, %89 : i16
        %301 = math.atan2 %6, %6 : tensor<8x13x3xf16>
        %302 = affine.max affine_map<(d0) -> (d0 mod 4 + d0, -d0, 0, d0 mod 4 + d0 + 16)>(%c9)
        memref.copy %alloc_14, %alloc_8 : memref<11x3xi64> to memref<11x3xi64>
        memref.alloca_scope.return %295 : i64
      }
      %268 = index.divu %46, %c9
      memref.tensor_store %1, %135 : memref<11x3xi64>
      %269 = scf.while (%arg2 = %alloc_5) : (memref<3x13xi1>) -> memref<3x13xi1> {
        %277 = vector.create_mask %rank, %75, %c2 : vector<8x13x3xi1>
        %inserted_37 = tensor.insert %c2015405231_i64 into %17[%c0, %c7, %c1] : tensor<8x13x3xi64>
        %278 = math.atan2 %cst_2, %cst_2 : f32
        %279 = math.copysign %6, %6 : tensor<8x13x3xf16>
        %280 = tensor.empty() : tensor<8x3xi1>
        %collapsed_38 = tensor.collapse_shape %15 [[0, 1]] : tensor<11x3xf16> into tensor<33xf16>
        %281 = index.add %c2, %c12
        %282 = index.castu %c896_i16 : i16 to index
        scf.condition(%true_22) %arg2 : memref<3x13xi1>
      } do {
      ^bb0(%arg2: memref<3x13xi1>):
        %277 = vector.transpose %85, [0] : vector<11xi64> to vector<11xi64>
        %278 = math.log10 %15 : tensor<11x3xf16>
        %279 = arith.divui %false, %true : i1
        %280 = math.log10 %0 : tensor<11x3xf32>
        %281 = tensor.empty(%c13) : tensor<11x?xi32>
        %rank_37 = tensor.rank %splat : tensor<11x3xi64>
        %282 = vector.broadcast %c2015405231_i64 : i64 to vector<11x3xi64>
        %283 = vector.broadcast %true : i1 to vector<11x3xi1>
        %284 = vector.broadcast %c468411168_i32 : i32 to vector<11x3xi32>
        %285 = vector.gather %3[%c14, %c15] [%284], %283, %282 : tensor<3x13xi64>, vector<11x3xi32>, vector<11x3xi1>, vector<11x3xi64> into vector<11x3xi64>
        %286 = memref.atomic_rmw muli %89, %alloc[%c7, %c9, %c0] : (i16, memref<8x13x3xi16>) -> i16
        %287 = vector.bitcast %284 : vector<11x3xi32> to vector<11x3xi32>
        %288 = arith.ceildivsi %c2015405231_i64, %c247436524_i64 : i64
        bufferization.dealloc_tensor %113 : tensor<11x3xi1>
        %289 = arith.muli %c2015405231_i64, %c1963310662_i64 : i64
        affine.store %cst_3, %alloc_9[%c1, %c7] : memref<3x13xf16>
        %expanded_38 = tensor.expand_shape %2 [[0], [1], [2, 3]] : tensor<8x13x3xi64> into tensor<8x13x3x1xi64>
        %290 = affine.max affine_map<(d0, d1) -> ((d1 ceildiv 2) mod 4, (d1 ceildiv 2) mod 4, d1 floordiv 128 + 32, (d1 ceildiv 2) * 2)>(%46, %c2)
        memref.assume_alignment %alloc_13, 2 : memref<8x3xf16>
        scf.yield %arg2 : memref<3x13xi1>
      }
      %270 = math.atan %cst_0 : f16
      %271 = tensor.empty() : tensor<13x13xi16>
      %272 = tensor.empty() : tensor<3x13xi16>
      %273 = linalg.matmul ins(%10, %271 : tensor<3x13xi16>, tensor<13x13xi16>) outs(%272 : tensor<3x13xi16>) -> tensor<3x13xi16>
      %274 = scf.while (%arg2 = %alloc_11) : (memref<8x3xi32>) -> memref<8x3xi32> {
        %collapsed_37 = tensor.collapse_shape %expanded_21 [[0, 1], [2]] : tensor<11x3x1xi16> into tensor<33x1xi16>
        %277 = memref.atomic_rmw minu %c896_i16, %116[%c1, %c11, %c2] : (i16, memref<8x13x3xi16>) -> i16
        memref.assume_alignment %alloc_14, 8 : memref<11x3xi64>
        %c928056298_i64 = arith.constant 928056298 : i64
        %278 = vector.shuffle %81, %81 [0, 1] : vector<i32>, vector<i32>
        %279 = index.ceildivu %c8, %c5
        %280 = math.roundeven %0 : tensor<11x3xf32>
        %from_elements_38 = tensor.from_elements %c1963310662_i64, %c2015405231_i64, %60, %c1710974591_i64, %c247436524_i64, %c1710974591_i64, %60, %267, %60, %c1710974591_i64, %c2015405231_i64, %60, %c1710974591_i64, %c1963310662_i64, %267, %267, %c1963310662_i64, %c1963310662_i64, %267, %267, %60, %c1963310662_i64, %c1963310662_i64, %267, %c247436524_i64, %c247436524_i64, %c1710974591_i64, %c1963310662_i64, %c247436524_i64, %c1963310662_i64, %c1710974591_i64, %c247436524_i64, %c2015405231_i64, %60, %60, %c1963310662_i64, %c2015405231_i64, %c1963310662_i64, %c247436524_i64, %c1963310662_i64, %c2015405231_i64, %c2015405231_i64, %c2015405231_i64, %c1710974591_i64, %60, %267, %c1963310662_i64, %c1710974591_i64, %c247436524_i64, %c1710974591_i64, %60, %267, %c2015405231_i64, %60, %c247436524_i64, %c2015405231_i64, %c1710974591_i64, %c247436524_i64, %60, %c1963310662_i64, %c1963310662_i64, %60, %c1710974591_i64, %c1963310662_i64, %c1963310662_i64, %c1710974591_i64, %c2015405231_i64, %267, %c247436524_i64, %c1963310662_i64, %267, %c1710974591_i64, %60, %c1710974591_i64, %c1710974591_i64, %60, %60, %c1710974591_i64, %c1710974591_i64, %c247436524_i64, %60, %c2015405231_i64, %c2015405231_i64, %267, %c1710974591_i64, %c1710974591_i64, %c247436524_i64, %267, %60, %c247436524_i64, %c1963310662_i64, %c1963310662_i64, %c2015405231_i64, %60, %60, %c1710974591_i64, %60, %60, %c2015405231_i64, %60, %60, %60, %c1710974591_i64, %c2015405231_i64, %c247436524_i64, %c1963310662_i64, %c1710974591_i64, %60, %267, %c1963310662_i64, %c247436524_i64, %267, %60, %c1963310662_i64, %267, %c1963310662_i64, %c2015405231_i64, %c247436524_i64, %267, %267, %c1710974591_i64, %c2015405231_i64, %267, %267, %c2015405231_i64, %c247436524_i64, %c1710974591_i64, %267, %60, %c2015405231_i64, %c1963310662_i64, %60, %c247436524_i64, %c1710974591_i64, %267, %c2015405231_i64, %60, %c1963310662_i64, %267, %c1963310662_i64, %c2015405231_i64, %267, %60, %c247436524_i64, %60, %267, %c2015405231_i64, %c2015405231_i64, %c247436524_i64, %c1710974591_i64, %267, %60, %267, %c1710974591_i64, %267, %c1963310662_i64, %c2015405231_i64, %c247436524_i64, %c1963310662_i64, %c1710974591_i64, %60, %c1710974591_i64, %c2015405231_i64, %60, %c2015405231_i64, %c1963310662_i64, %c1963310662_i64, %c2015405231_i64, %267, %c1963310662_i64, %c2015405231_i64, %c1710974591_i64, %c2015405231_i64, %c2015405231_i64, %c1710974591_i64, %c1710974591_i64, %60, %c1710974591_i64, %c1710974591_i64, %c2015405231_i64, %267, %c2015405231_i64, %c2015405231_i64, %c1963310662_i64, %60, %c1963310662_i64, %c1710974591_i64, %c2015405231_i64, %60, %c247436524_i64, %c2015405231_i64, %c2015405231_i64, %c1963310662_i64, %c1710974591_i64, %c247436524_i64, %60, %c1963310662_i64, %c1710974591_i64, %c2015405231_i64, %c1963310662_i64, %267, %267, %60, %c1710974591_i64, %c247436524_i64, %c247436524_i64, %c1963310662_i64, %60, %c1963310662_i64, %c247436524_i64, %c2015405231_i64, %c247436524_i64, %c1710974591_i64, %c1710974591_i64, %c247436524_i64, %c1963310662_i64, %60, %267, %c1963310662_i64, %c1963310662_i64, %c247436524_i64, %60, %60, %c247436524_i64, %c1710974591_i64, %60, %267, %c1710974591_i64, %267, %c2015405231_i64, %c2015405231_i64, %c247436524_i64, %60, %c1963310662_i64, %60, %c1710974591_i64, %c247436524_i64, %c247436524_i64, %c2015405231_i64, %c247436524_i64, %c1710974591_i64, %c2015405231_i64, %c1710974591_i64, %267, %c1710974591_i64, %267, %c2015405231_i64, %267, %c2015405231_i64, %c1710974591_i64, %267, %c1710974591_i64, %60, %c247436524_i64, %c1710974591_i64, %c1710974591_i64, %c1710974591_i64, %c2015405231_i64, %c2015405231_i64, %267, %267, %267, %c1710974591_i64, %267, %c1963310662_i64, %c1710974591_i64, %c1710974591_i64, %c2015405231_i64, %c1963310662_i64, %c2015405231_i64, %c2015405231_i64, %c247436524_i64, %c2015405231_i64, %c2015405231_i64, %c2015405231_i64, %c1963310662_i64, %60, %c2015405231_i64, %c247436524_i64, %c2015405231_i64, %c1963310662_i64, %c247436524_i64, %c247436524_i64, %267, %c1963310662_i64, %267, %c247436524_i64, %c2015405231_i64, %267, %c2015405231_i64, %60, %267, %267, %c1963310662_i64, %c2015405231_i64, %c1963310662_i64, %c1710974591_i64, %c1963310662_i64, %c2015405231_i64, %c1963310662_i64, %c2015405231_i64, %c1710974591_i64, %c1963310662_i64, %c247436524_i64, %c1963310662_i64, %c247436524_i64, %c1710974591_i64, %c247436524_i64, %267, %c2015405231_i64, %c2015405231_i64, %c1710974591_i64 : tensor<8x13x3xi64>
        scf.condition(%true_22) %alloc_11 : memref<8x3xi32>
      } do {
      ^bb0(%arg2: memref<8x3xi32>):
        %277 = index.sizeof
        %278 = memref.realloc %alloc_19 : memref<8xi32> to memref<3xi32>
        %279 = arith.muli %c1710974591_i64, %c1963310662_i64 : i64
        %280 = vector.broadcast %51 : f32 to vector<8x13x3xf32>
        %281 = arith.remf %cst_3, %cst_3 : f16
        %282 = vector.insert %60, %97 [0] : i64 into vector<3xi64>
        %alloc_37 = memref.alloc() : memref<8x13x3xi32>
        %283 = vector.matrix_multiply %147, %147 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi64>, vector<3xi64>) -> vector<1xi64>
        %284 = vector.extract_strided_slice %65 {offsets = [7], sizes = [1], strides = [1]} : vector<11xi64> to vector<1xi64>
        %285 = arith.minui %60, %c247436524_i64 : i64
        %286 = bufferization.to_tensor %alloc_8 : memref<11x3xi64>
        %cast = tensor.cast %1 : tensor<11x3xi64> to tensor<?x?xi64>
        %287 = index.floordivs %c10, %c3
        %from_elements_38 = tensor.from_elements %c2015405231_i64, %267, %c2015405231_i64, %c2015405231_i64, %c2015405231_i64, %60, %c1710974591_i64, %c1710974591_i64, %60, %c1710974591_i64, %267, %267, %c1963310662_i64, %c2015405231_i64, %c247436524_i64, %c1963310662_i64, %c1710974591_i64, %c1963310662_i64, %c247436524_i64, %c1710974591_i64, %c1710974591_i64, %c1710974591_i64, %c247436524_i64, %c247436524_i64 : tensor<8x3xi64>
        %288 = vector.broadcast %cst_3 : f16 to vector<11x3xf16>
        %289 = affine.load %alloc_4[%c8, %c13, %c4] : memref<8x13x3xf32>
        scf.yield %arg2 : memref<8x3xi32>
      }
      %275 = math.sqrt %51 : f32
      %276 = vector.broadcast %c767271615_i32 : i32 to vector<3x13xi32>
      scf.yield %276 : vector<3x13xi32>
    }
    %splat_24 = tensor.splat %true_22 : tensor<8x13x3xi1>
    %157 = math.atan2 %6, %6 : tensor<8x13x3xf16>
    %158 = math.cos %4 : tensor<8x3xf16>
    %cst_25 = arith.constant 0x4E62A10D : f32
    %159 = arith.divsi %c767271615_i32, %c16122441_i32 : i32
    %160 = vector.load %alloc_10[%c5, %c10, %c2] : memref<8x13x3xi16>, vector<8x13x3xi16>
    %161 = arith.ori %c1710974591_i64, %c1963310662_i64 : i64
    %162 = arith.xori %true_22, %false : i1
    %163 = arith.remf %cst_3, %cst_3 : f16
    %164 = arith.remui %c1963310662_i64, %c1710974591_i64 : i64
    %165 = vector.shuffle %101, %101 [2, 3, 5] : vector<3xf32>, vector<3xf32>
    %166 = math.roundeven %0 : tensor<11x3xf32>
    %167 = math.ctlz %113 : tensor<11x3xi1>
    %168 = bufferization.to_tensor %alloc_19 : memref<8xi32>
    %169 = memref.atomic_rmw muli %c247436524_i64, %alloc_16[%c1, %c3] : (i64, memref<3x13xi64>) -> i64
    %170 = arith.maxui %true, %true : i1
    %171 = math.log %0 : tensor<11x3xf32>
    %172 = arith.divsi %60, %c2015405231_i64 : i64
    %173 = math.cttz %8 : tensor<11x3xi16>
    %174 = math.exp2 %cst_2 : f32
    %175 = memref.atomic_rmw maxs %c-25185_i16, %143[%c1, %c0, %c0] : (i16, memref<11x3x1xi16>) -> i16
    %176 = math.absi %5 : tensor<8x13x3xi32>
    %inserted_26 = tensor.insert %c16122441_i32 into %22[] : tensor<i32>
    bufferization.dealloc_tensor %expanded : tensor<8x13x3x1xi32>
    %177 = vector.broadcast %cst : f32 to vector<11x3xf32>
    %178 = vector.fma %177, %177, %177 : vector<11x3xf32>
    %from_elements = tensor.from_elements %cst, %cst_2, %51, %51, %cst, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst, %cst, %cst_1, %cst_1, %cst_1, %51, %cst_2, %51, %51, %51, %cst, %cst_2, %cst_2, %cst_1, %cst, %cst_2, %cst, %cst, %cst, %51, %cst, %51, %51, %cst, %cst, %cst_1, %51, %cst_1, %cst, %cst_2, %cst_2, %cst, %cst_2, %cst, %cst_2, %cst, %cst_1, %cst_1, %cst_1, %51, %cst, %cst_2, %cst, %cst_1, %cst_2, %cst, %51, %cst_2, %cst_1, %cst, %cst_2, %cst_2, %51, %cst_1, %cst, %cst_1, %cst_1, %51, %51, %cst_2, %cst, %cst_1, %51, %cst_1, %cst_2, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %51, %cst_2, %cst_2, %51, %cst_1, %cst_1, %cst_1, %51, %cst, %51, %cst_1, %51, %cst_1, %51, %cst_1, %cst, %51, %cst, %cst_2, %cst_2, %51, %cst_1, %cst_2, %51, %cst, %cst_1, %51, %cst, %cst_1, %cst_2, %cst_1, %cst, %cst_1, %cst_2, %51, %cst_2, %51, %51, %cst, %cst, %cst, %cst_2, %cst_2, %51, %cst_2, %cst_2, %cst_1, %cst, %cst_2, %cst_2, %cst_2, %cst, %cst, %51, %cst_1, %cst_1, %cst, %cst_1, %cst_2, %cst_2, %51, %cst, %51, %cst_2, %cst_2, %51, %cst_1, %cst_1, %51, %cst_2, %51, %51, %51, %cst_2, %cst_1, %cst_2, %cst_1, %cst, %cst_2, %cst_1, %51, %cst, %cst_1, %cst_2, %cst_2, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst, %51, %cst_1, %cst_1, %cst_2, %51, %cst, %cst_2, %cst_1, %cst_1, %cst_1, %cst, %51, %cst_1, %cst_2, %51, %cst_2, %cst, %cst_1, %51, %cst, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %51, %cst_1, %cst_2, %cst, %cst_1, %51, %cst_2, %51, %cst, %cst_1, %cst, %51, %51, %cst, %cst_2, %cst, %cst, %cst_2, %cst, %51, %cst_1, %51, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %51, %cst, %cst_2, %cst_2, %cst, %cst, %cst, %cst_1, %51, %cst_1, %cst_1, %cst_1, %51, %cst_1, %cst_1, %cst_1, %cst, %cst, %cst, %cst_2, %cst_1, %cst_2, %51, %cst_1, %cst_1, %cst_1, %51, %cst_2, %cst_1, %cst_2, %51, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %51, %cst_1, %51, %cst_1, %cst_2, %51, %cst, %51, %cst_1, %51, %cst_1, %51, %cst, %51, %cst_2, %cst_2, %51, %cst, %cst_2, %51, %51, %cst_1, %cst, %cst, %cst_2, %cst_1, %cst, %cst_1, %cst_2, %51, %cst, %cst_2, %cst_1, %cst_2, %51, %cst, %51, %cst_1, %cst_2, %cst, %cst, %51, %cst_2, %cst_2, %cst, %cst_1 : tensor<8x13x3xf32>
    %179 = memref.alloca_scope  -> (i16) {
      %258 = scf.while (%arg2 = %alloc_19) : (memref<8xi32>) -> memref<8xi32> {
        memref.store %c247436524_i64, %135[%c0, %c1] : memref<11x3xi64>
        %285 = math.ctpop %89 : i16
        %286 = arith.minui %c-25185_i16, %c896_i16 : i16
        %287 = arith.remsi %c247436524_i64, %c1963310662_i64 : i64
        %288 = math.log10 %from_elements : tensor<8x13x3xf32>
        %289 = arith.muli %true_22, %true : i1
        %290 = memref.atomic_rmw minu %c896_i16, %alloc[%c2, %c11, %c0] : (i16, memref<8x13x3xi16>) -> i16
        memref.assume_alignment %alloc_5, 8 : memref<3x13xi1>
        scf.condition(%false) %alloc_19 : memref<8xi32>
      } do {
      ^bb0(%arg2: memref<8xi32>):
        %285 = math.ctpop %11 : tensor<11x3xi32>
        %286 = math.log10 %cst_1 : f32
        %287 = vector.shuffle %38, %37 [1, 2, 3, 4, 5, 8, 9, 13, 15] : vector<8x13x3xf32>, vector<8x13x3xf32>
        %288 = arith.ori %c247436524_i64, %c1963310662_i64 : i64
        %289 = vector.matrix_multiply %137, %147 {lhs_columns = 1 : i32, lhs_rows = 11 : i32, rhs_columns = 3 : i32} : (vector<11xi64>, vector<3xi64>) -> vector<33xi64>
        %290 = math.log10 %0 : tensor<11x3xf32>
        %291 = vector.splat %51 : vector<8x3xf32>
        %292 = index.ceildivu %75, %c7
        %293 = vector.matrix_multiply %97, %65 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 11 : i32} : (vector<3xi64>, vector<11xi64>) -> vector<33xi64>
        %294 = vector.broadcast %c1 : index to vector<8xindex>
        %295 = vector.broadcast %true_22 : i1 to vector<8xi1>
        %296 = vector.broadcast %c767271615_i32 : i32 to vector<8xi32>
        vector.scatter %alloc_19[%c5] [%294], %295, %296 : memref<8xi32>, vector<8xindex>, vector<8xi1>, vector<8xi32>
        %297 = index.castu %c11 : index to i32
        %298 = arith.negf %cst_1 : f32
        %299 = tensor.empty() : tensor<3x13xi1>
        %300 = tensor.empty() : tensor<13x11xi64>
        %301 = tensor.empty() : tensor<3x11xi64>
        %302 = linalg.matmul ins(%3, %300 : tensor<3x13xi64>, tensor<13x11xi64>) outs(%301 : tensor<3x11xi64>) -> tensor<3x11xi64>
        %303 = math.round %cst_3 : f16
        %304 = bufferization.to_memref %12 : memref<8x13x3xi64>
        scf.yield %alloc_19 : memref<8xi32>
      }
      %259 = vector.bitcast %101 : vector<3xf32> to vector<3xf32>
      %260 = affine.max affine_map<(d0) -> (((d0 * 2 - 1) * 2) floordiv 16, d0 * 3 + 132, d0 * 2)>(%c10)
      %261 = arith.ori %true, %false : i1
      %262 = math.round %cst_2 : f32
      %263 = affine.max affine_map<(d0, d1, d2) -> ((d2 + 64) * 32, d2 ceildiv 2)>(%c3, %c4, %c0)
      vector.print %47 : vector<8x3xf32>
      %alloc_37 = memref.alloc() : memref<11x3xf16>
      memref.tensor_store %15, %alloc_37 : memref<11x3xf16>
      %264 = math.exp2 %cst_0 : f16
      %265 = vector.shuffle %49, %49 [6, 8, 9, 10, 13, 15] : vector<8x13x3xf32>, vector<8x13x3xf32>
      %266 = tensor.empty() : tensor<8x13x3xf32>
      %267 = arith.maxf %cst_3, %cst_3 : f16
      %268 = math.ceil %15 : tensor<11x3xf16>
      %269 = affine.if affine_set<(d0, d1, d2) : ((-d2) ceildiv 128 >= 0, d0 - 1 == 0, d0 - 1 >= 0)>(%c7, %c13, %c7) -> memref<11x3xi16> {
        %285 = math.cttz %c247436524_i64 : i64
        %286 = vector.matrix_multiply %101, %101 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xf32>, vector<3xf32>) -> vector<1xf32>
        %287 = memref.load %143[%c7, %c0, %c0] : memref<11x3x1xi16>
        %288 = math.copysign %51, %cst_2 : f32
        %c1292589899_i64 = arith.constant 1292589899 : i64
        %inserted_41 = tensor.insert %c468411168_i32 into %11[%c2, %c0] : tensor<11x3xi32>
        %289 = index.castu %c-25185_i16 : i16 to index
        %290 = vector.flat_transpose %286 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
        %alloc_42 = memref.alloc() : memref<11x3xi16>
        affine.yield %alloc_42 : memref<11x3xi16>
      } else {
        %285 = math.copysign %6, %6 : tensor<8x13x3xf16>
        %from_elements_41 = tensor.from_elements %c247436524_i64, %c1963310662_i64, %c2015405231_i64, %c1710974591_i64, %c247436524_i64, %c1710974591_i64, %60, %60, %c1963310662_i64, %c247436524_i64, %c1710974591_i64, %c1963310662_i64, %c2015405231_i64, %c1963310662_i64, %c247436524_i64, %60, %c2015405231_i64, %c2015405231_i64, %c1710974591_i64, %c2015405231_i64, %c247436524_i64, %c1710974591_i64, %c1963310662_i64, %c1710974591_i64, %c247436524_i64, %c247436524_i64, %c1710974591_i64, %60, %c2015405231_i64, %60, %60, %c247436524_i64, %c1963310662_i64 : tensor<11x3xi64>
        %286 = math.copysign %cst, %51 : f32
        %inserted_42 = tensor.insert %c-25185_i16 into %13[%c7, %c0] : tensor<11x3xi16>
        %alloca_43 = memref.alloca() : memref<3x13xi32>
        %287 = vector.transpose %178, [1, 0] : vector<11x3xf32> to vector<3x11xf32>
        %288 = tensor.empty() : tensor<8x13x3xi32>
        %289 = arith.shrsi %true, %true_22 : i1
        %alloc_44 = memref.alloc() : memref<11x3xi16>
        affine.yield %alloc_44 : memref<11x3xi16>
      }
      %splat_38 = tensor.splat %cst_1 : tensor<3x13xf32>
      %270 = vector.matrix_multiply %259, %259 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xf32>, vector<3xf32>) -> vector<1xf32>
      %271 = math.atan2 %0, %0 : tensor<11x3xf32>
      memref.assume_alignment %alloc_12, 2 : memref<11x3xi1>
      %272 = index.ceildivu %c12, %75
      %expanded_39 = tensor.expand_shape %168 [[0, 1]] : tensor<8xi32> into tensor<8x1xi32>
      %alloca = memref.alloca() : memref<11x3xf16>
      %273 = affine.min affine_map<(d0, d1) -> ((d1 floordiv 16) ceildiv 2 + d1, (d1 floordiv 16) ceildiv 2)>(%c13, %c8)
      %274 = math.absi %true : i1
      %rank_40 = tensor.rank %3 : tensor<3x13xi64>
      %275 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %119, %119, %c247436524_i64 : vector<1xi64>, vector<1xi64> into i64
      %276 = arith.xori %true_22, %true : i1
      %277 = arith.divsi %true, %false : i1
      %278 = bufferization.clone %148 : memref<8x13x3xi32> to memref<8x13x3xi32>
      %279 = vector.broadcast %51 : f32 to vector<13x3x13x3xf32>
      %280 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %38, %37, %279 : vector<8x13x3xf32>, vector<8x13x3xf32> into vector<13x3x13x3xf32>
      %281 = tensor.empty() : tensor<11x13xi64>
      %282 = linalg.matmul ins(%splat_20, %3 : tensor<11x3xi64>, tensor<3x13xi64>) outs(%281 : tensor<11x13xi64>) -> tensor<11x13xi64>
      %283 = math.ctpop %7 : tensor<8x13x3xi32>
      %284 = vector.flat_transpose %270 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      memref.alloca_scope.return %c-25185_i16 : i16
    }
    %180 = scf.while (%arg2 = %119) : (vector<1xi64>) -> vector<1xi64> {
      %258 = affine.max affine_map<(d0, d1) -> ((d1 * 2) mod 32, ((d1 * 2) mod 32) * 4)>(%50, %63)
      %expanded_37 = tensor.expand_shape %expanded [[0], [1], [2], [3, 4]] : tensor<8x13x3x1xi32> into tensor<8x13x3x1x1xi32>
      %259 = index.castu %c16122441_i32 : i32 to index
      %260 = arith.subi %c468411168_i32, %c16122441_i32 : i32
      %261 = math.floor %cst_0 : f16
      %262 = scf.index_switch %c6 -> index 
      case 1 {
        %264 = arith.minui %60, %c247436524_i64 : i64
        %265 = vector.multi_reduction <mul>, %97, %c247436524_i64 [0] : vector<3xi64> to i64
        %collapsed_39 = tensor.collapse_shape %17 [[0, 1], [2]] : tensor<8x13x3xi64> into tensor<104x3xi64>
        memref.assume_alignment %alloc_17, 4 : memref<8x13x3xf32>
        %266 = math.log2 %6 : tensor<8x13x3xf16>
        %267 = arith.minui %c468411168_i32, %c16122441_i32 : i32
        %268 = math.exp2 %cst_3 : f16
        %269 = memref.atomic_rmw ori %179, %34[%c3, %c5, %c0] : (i16, memref<8x13x3xi16>) -> i16
        %270 = vector.shuffle %65, %85 [0, 2, 6, 9, 10, 11, 12, 13, 18, 19, 20, 21] : vector<11xi64>, vector<11xi64>
        %271 = vector.extract %160[5] : vector<8x13x3xi16>
        %alloca = memref.alloca() : memref<11x3xi32>
        %272 = vector.flat_transpose %20 {columns = 11 : i32, rows = 1 : i32} : vector<11xi64> -> vector<11xi64>
        %273 = index.sizeof
        %274 = math.cttz %17 : tensor<8x13x3xi64>
        %275 = index.ceildivs %c3, %rank
        %276 = vector.bitcast %66 : vector<8x3xi64> to vector<8x3xi64>
        scf.yield %c3 : index
      }
      case 2 {
        %dest_39, %accumulated_value_40 = vector.scan <maxui>, %66, %147 {inclusive = false, reduction_dim = 0 : i64} : vector<8x3xi64>, vector<3xi64>
        %264 = math.roundeven %cst_2 : f32
        %265 = arith.minui %c-25185_i16, %89 : i16
        %266 = arith.remsi %60, %c247436524_i64 : i64
        affine.store %cst_2, %alloc_17[%c3, %c11, %c6] : memref<8x13x3xf32>
        %267 = tensor.empty() : tensor<3x13xf16>
        %268 = arith.ceildivsi %179, %179 : i16
        %269 = math.round %cst_3 : f16
        %270 = arith.ceildivsi %179, %89 : i16
        %rank_41 = tensor.rank %13 : tensor<11x3xi16>
        %271 = math.atan %0 : tensor<11x3xf32>
        affine.store %51, %alloc_4[%c9, %c11, %c1] : memref<8x13x3xf32>
        %272 = math.atan2 %6, %6 : tensor<8x13x3xf16>
        %273 = memref.load %34[%c4, %c2, %c0] : memref<8x13x3xi16>
        memref.store %cst_1, %alloc_17[%c0, %c0, %c0] : memref<8x13x3xf32>
        %274 = affine.max affine_map<(d0, d1, d2) -> (d2 + 128, d2 floordiv 8, d2 + 128)>(%c13, %c8, %259)
        scf.yield %c9 : index
      }
      default {
        %264 = memref.load %34[%c7, %c0, %c2] : memref<8x13x3xi16>
        affine.store %c16122441_i32, %148[%c3, %c2, %c5] : memref<8x13x3xi32>
        %265 = vector.multi_reduction <and>, %147, %c1710974591_i64 [0] : vector<3xi64> to i64
        %alloc_39 = memref.alloc() : memref<8x3xi64>
        memref.copy %116, %alloc_10 : memref<8x13x3xi16> to memref<8x13x3xi16>
        %266 = math.fpowi %cst_1, %c468411168_i32 : f32, i32
        %267 = arith.ceildivsi %c16122441_i32, %c767271615_i32 : i32
        %rank_40 = tensor.rank %expanded : tensor<8x13x3x1xi32>
        %268 = arith.remui %c2015405231_i64, %265 : i64
        %269 = math.log10 %cst_3 : f16
        %270 = tensor.empty() : tensor<8x3xi32>
        %271 = vector.shuffle %49, %121 [0, 1, 8, 11, 12, 13, 14, 15] : vector<8x13x3xf32>, vector<8x13x3xf32>
        %272 = index.maxu %c10, %46
        %273 = vector.broadcast %c-25185_i16 : i16 to vector<13x3xi16>
        %274 = vector.multi_reduction <minsi>, %160, %273 [0] : vector<8x13x3xi16> to vector<13x3xi16>
        %collapsed_41 = tensor.collapse_shape %expanded_37 [[0, 1], [2], [3, 4]] : tensor<8x13x3x1x1xi32> into tensor<104x3x1xi32>
        %275 = vector.bitcast %49 : vector<8x13x3xf32> to vector<8x13x3xf32>
        scf.yield %c4 : index
      }
      %263 = math.roundeven %cst_1 : f32
      %from_elements_38 = tensor.from_elements %cst_2, %cst_2, %cst, %51, %cst_1, %cst_1, %cst_1, %cst_2, %51, %cst_2, %cst_2, %cst_1, %cst, %cst_2, %cst_2, %cst_2, %cst, %51, %cst_1, %cst_1, %51, %cst_2, %cst_2, %cst_2, %51, %cst, %51, %cst_1, %51, %cst, %cst, %cst_2, %cst, %cst_2, %51, %51, %cst_1, %cst_2, %cst_1 : tensor<3x13xf32>
      scf.condition(%true) %119 : vector<1xi64>
    } do {
    ^bb0(%arg2: vector<1xi64>):
      affine.store %c1963310662_i64, %142[%c12, %c6, %c0] : memref<8x13x3xi64>
      %258 = memref.atomic_rmw assign %c16122441_i32, %alloc_11[%c0, %c0] : (i32, memref<8x3xi32>) -> i32
      %259 = affine.if affine_set<(d0, d1, d2) : (d1 * 4 >= 0, d1 + 16 == 0)>(%c2, %c9, %c7) -> memref<11x3xi16> {
        %275 = math.ceil %cst : f32
        %276 = vector.extract %147[2] : vector<3xi64>
        %expanded_38 = tensor.expand_shape %5 [[0], [1], [2, 3]] : tensor<8x13x3xi32> into tensor<8x13x3x1xi32>
        %277 = math.copysign %4, %4 : tensor<8x3xf16>
        %278 = bufferization.clone %alloc_8 : memref<11x3xi64> to memref<11x3xi64>
        %279 = math.ctlz %3 : tensor<3x13xi64>
        %280 = math.rsqrt %6 : tensor<8x13x3xf16>
        %281 = math.round %4 : tensor<8x3xf16>
        %alloc_39 = memref.alloc() : memref<11x3xi16>
        affine.yield %alloc_39 : memref<11x3xi16>
      } else {
        %275 = vector.shuffle %65, %119 [0, 2, 3, 4, 5, 9, 11] : vector<11xi64>, vector<1xi64>
        %276 = index.ceildivu %c9, %c6
        %277 = math.log2 %0 : tensor<11x3xf32>
        %278 = math.absi %expanded : tensor<8x13x3x1xi32>
        %279 = arith.ceildivsi %c1963310662_i64, %c1710974591_i64 : i64
        %280 = math.round %cst_2 : f32
        %281 = math.atan %51 : f32
        %282 = memref.load %142[%c0, %c0, %c1] : memref<8x13x3xi64>
        %alloc_38 = memref.alloc() : memref<11x3xi16>
        affine.yield %alloc_38 : memref<11x3xi16>
      }
      %260 = vector.bitcast %178 : vector<11x3xf32> to vector<11x3xf32>
      %261 = math.powf %cst, %cst : f32
      %expanded_37 = tensor.expand_shape %7 [[0], [1], [2, 3]] : tensor<8x13x3xi32> into tensor<8x13x3x1xi32>
      %262 = bufferization.to_memref %11 : memref<11x3xi32>
      %263 = math.ctlz %c1963310662_i64 : i64
      %264 = memref.atomic_rmw addf %51, %alloc_17[%c6, %c7, %c0] : (f32, memref<8x13x3xf32>) -> f32
      %265 = tensor.empty() : tensor<11x13xi64>
      %266 = linalg.matmul ins(%splat, %3 : tensor<11x3xi64>, tensor<3x13xi64>) outs(%265 : tensor<11x13xi64>) -> tensor<11x13xi64>
      %267 = arith.maxsi %c-25185_i16, %c896_i16 : i16
      %268 = math.atan2 %4, %4 : tensor<8x3xf16>
      %269 = vector.broadcast %cst_1 : f32 to vector<8x13x3xf32>
      %270 = vector.fma %269, %37, %121 : vector<8x13x3xf32>
      %271 = arith.remf %51, %cst_2 : f32
      %272 = vector.broadcast %cst : f32 to vector<11xf32>
      %273 = vector.multi_reduction <mul>, %260, %272 [1] : vector<11x3xf32> to vector<11xf32>
      %274 = math.round %cst_3 : f16
      scf.yield %119 : vector<1xi64>
    }
    %rank_27 = tensor.rank %0 : tensor<11x3xf32>
    %181 = arith.minui %c-25185_i16, %c-25185_i16 : i16
    %182 = arith.muli %false, %true : i1
    %183 = index.add %75, %50
    %184 = arith.ori %c896_i16, %89 : i16
    %185 = arith.divui %c767271615_i32, %c468411168_i32 : i32
    memref.copy %alloc_10, %alloc : memref<8x13x3xi16> to memref<8x13x3xi16>
    %186 = vector.insert %101, %121 [2, 5] : vector<3xf32> into vector<8x13x3xf32>
    %187 = tensor.empty() : tensor<11x13xi16>
    %188 = linalg.matmul ins(%8, %10 : tensor<11x3xi16>, tensor<3x13xi16>) outs(%187 : tensor<11x13xi16>) -> tensor<11x13xi16>
    %189 = math.copysign %cst_3, %cst_0 : f16
    %190 = arith.remf %cst_2, %51 : f32
    %191 = bufferization.clone %alloc_8 : memref<11x3xi64> to memref<11x3xi64>
    %192 = math.fpowi %51, %c767271615_i32 : f32, i32
    %193 = vector.transpose %65, [0] : vector<11xi64> to vector<11xi64>
    %194 = vector.extract_strided_slice %178 {offsets = [2], sizes = [6], strides = [1]} : vector<11x3xf32> to vector<6x3xf32>
    %195 = vector.extract %147[2] : vector<3xi64>
    %196 = affine.if affine_set<(d0, d1, d2) : (d0 + 31 == 0, (d0 floordiv 32) floordiv 32 == 0, d2 >= 0, ((d0 floordiv 32) ceildiv 2 + (d0 floordiv 32) floordiv 32) mod 128 >= 0)>(%c7, %c9, %c8) -> i16 {
      %258 = math.tan %cst_2 : f32
      %259 = bufferization.to_tensor %alloc_16 : memref<3x13xi64>
      %260 = vector.transpose %120, [0, 2, 1] : vector<8x13x3xf32> to vector<8x3x13xf32>
      %261 = tensor.empty() : tensor<13x3xi64>
      %262 = tensor.empty() : tensor<8x13xi64>
      %263 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%261, %262 : tensor<13x3xi64>, tensor<8x13xi64>) outs(%2 : tensor<8x13x3xi64>) {
      ^bb0(%in: i64, %in_37: i64, %out: i64):
        %268 = vector.insert %out, %85 [6] : i64 into vector<11xi64>
        %269 = index.castu %rank : index to i32
        %270 = math.sqrt %cst_0 : f16
        %271 = arith.divui %out, %in : i64
        %272 = arith.divf %cst_3, %cst_3 : f16
        %273 = arith.xori %c468411168_i32, %c767271615_i32 : i32
        %274 = affine.max affine_map<(d0, d1, d2) -> (((d0 - 1) * 4) mod 128, d0 + 3, (d0 - 1) * 4)>(%rank, %c0, %c10)
        %275 = math.tanh %51 : f32
        %276 = math.cttz %21 : tensor<8xi32>
        %277 = arith.remui %c468411168_i32, %c16122441_i32 : i32
        %278 = index.maxu %74, %c9
        %279 = index.ceildivu %c9, %63
        %280 = arith.xori %c16122441_i32, %c767271615_i32 : i32
        %281 = arith.remf %cst_3, %cst_3 : f16
        %282 = vector.matrix_multiply %137, %147 {lhs_columns = 1 : i32, lhs_rows = 11 : i32, rhs_columns = 3 : i32} : (vector<11xi64>, vector<3xi64>) -> vector<33xi64>
        %283 = arith.xori %c2015405231_i64, %in : i64
        %inserted_38 = tensor.insert %c247436524_i64 into %2[%c4, %c3, %c1] : tensor<8x13x3xi64>
        %284 = math.tanh %from_elements : tensor<8x13x3xf32>
        %285 = vector.multi_reduction <maxsi>, %149, %97 [0] : vector<8x3xi64> to vector<3xi64>
        %286 = arith.remf %cst, %cst_1 : f32
        %287 = vector.broadcast %c16122441_i32 : i32 to vector<13xi32>
        %288 = vector.broadcast %true_22 : i1 to vector<13xi1>
        %289 = vector.maskedload %alloc_19[%c6], %288, %287 : memref<8xi32>, vector<13xi1>, vector<13xi32> into vector<13xi32>
        %290 = memref.load %142[%c3, %c11, %c0] : memref<8x13x3xi64>
        %291 = vector.broadcast %89 : i16 to vector<13xi16>
        %292 = vector.maskedload %34[%c0, %c11, %c0], %288, %291 : memref<8x13x3xi16>, vector<13xi1>, vector<13xi16> into vector<13xi16>
        %293 = math.ceil %51 : f32
        %294 = index.castu %c16122441_i32 : i32 to index
        %295 = vector.multi_reduction <minf>, %194, %cst_1 [0, 1] : vector<6x3xf32> to f32
        %296 = math.atan %cst : f32
        %297 = memref.atomic_rmw andi %89, %alloc_10[%c6, %c7, %c0] : (i16, memref<8x13x3xi16>) -> i16
        %298 = math.ctpop %179 : i16
        %false_39 = index.bool.constant false
        %299 = arith.ori %true_22, %true : i1
        %300 = index.maxu %279, %145
        linalg.yield %c2015405231_i64 : i64
      } -> tensor<8x13x3xi64>
      %264 = math.sqrt %cst_0 : f16
      %265 = scf.index_switch %c1 -> f16 
      case 1 {
        %268 = tensor.empty() : tensor<8x3xf32>
        %269 = vector.broadcast %c1963310662_i64 : i64 to vector<3x13xi64>
        %270 = bufferization.clone %alloc_14 : memref<11x3xi64> to memref<11x3xi64>
        %271 = affine.max affine_map<(d0, d1, d2, d3) -> (((-(d1 - d2)) ceildiv 4) mod 8, d2, 0, d2)>(%c13, %c4, %183, %c5)
        %272 = arith.maxf %51, %cst : f32
        %273 = vector.extract %119[0] : vector<1xi64>
        %274 = vector.insert %101, %49 [6, 5] : vector<3xf32> into vector<8x13x3xf32>
        %275 = math.absi %14 : tensor<3x13xi1>
        %276 = arith.divf %cst_0, %cst_0 : f16
        %277 = vector.broadcast %c247436524_i64 : i64 to vector<11x11xi64>
        %278 = vector.outerproduct %65, %65, %277 {kind = #vector.kind<minsi>} : vector<11xi64>, vector<11xi64>
        %279 = index.divu %c1, %74
        %280 = arith.maxsi %c16122441_i32, %c468411168_i32 : i32
        %281 = vector.load %alloc_19[%c1] : memref<8xi32>, vector<8x3xi32>
        affine.store %179, %116[%c2, %c4, %c13] : memref<8x13x3xi16>
        %282 = math.rsqrt %15 : tensor<11x3xf16>
        %283 = arith.remf %cst_0, %cst_0 : f16
        scf.yield %cst_0 : f16
      }
      default {
        %268 = arith.andi %c896_i16, %179 : i16
        %269 = vector.broadcast %51 : f32 to vector<11x3xf32>
        %270 = vector.fma %269, %178, %177 : vector<11x3xf32>
        %271 = math.copysign %cst_0, %cst_3 : f16
        %272 = vector.splat %c11 : vector<11x3xindex>
        %273 = bufferization.clone %alloc_18 : memref<8x13x3xf16> to memref<8x13x3xf16>
        %274 = tensor.empty() : tensor<13x13xi16>
        %275 = tensor.empty() : tensor<3x13xi16>
        %276 = linalg.matmul ins(%10, %274 : tensor<3x13xi16>, tensor<13x13xi16>) outs(%275 : tensor<3x13xi16>) -> tensor<3x13xi16>
        %277 = arith.muli %c16122441_i32, %c16122441_i32 : i32
        %278 = math.copysign %from_elements, %from_elements : tensor<8x13x3xf32>
        %from_elements_37 = tensor.from_elements %cst_1, %cst_1, %cst, %51, %cst_1, %cst_2, %cst_1, %cst_1, %51, %51, %cst_1, %cst, %cst, %51, %cst_2, %cst, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst, %cst_1, %51, %cst_1, %cst, %cst_1, %cst_1, %cst, %cst_2, %51, %cst_2, %cst_2, %cst_1, %cst_1, %cst, %51, %51 : tensor<3x13xf32>
        %279 = arith.cmpi ule, %c1710974591_i64, %60 : i64
        %280 = arith.shrsi %c1710974591_i64, %c1963310662_i64 : i64
        %281 = arith.maxsi %c767271615_i32, %c468411168_i32 : i32
        %282 = arith.xori %c1963310662_i64, %c1710974591_i64 : i64
        %283 = bufferization.to_tensor %alloc_12 : memref<11x3xi1>
        %284 = arith.remsi %c-25185_i16, %c896_i16 : i16
        %285 = arith.divui %c2015405231_i64, %c1710974591_i64 : i64
        scf.yield %cst_0 : f16
      }
      %266 = math.atan2 %cst_3, %cst_0 : f16
      %267 = scf.while (%arg2 = %20) : (vector<11xi64>) -> vector<11xi64> {
        %268 = arith.ori %c468411168_i32, %c767271615_i32 : i32
        %alloca = memref.alloca() : memref<11x3xi32>
        %rank_37 = tensor.rank %3 : tensor<3x13xi64>
        %269 = tensor.empty(%c3, %63) : tensor<?x?xf16>
        memref.assume_alignment %alloc_6, 16 : memref<3x13xi64>
        %alloca_38 = memref.alloca() : memref<11x3xi64>
        %270 = arith.ceildivsi %c1710974591_i64, %c1710974591_i64 : i64
        %271 = math.log %cst_1 : f32
        scf.condition(%true_22) %20 : vector<11xi64>
      } do {
      ^bb0(%arg2: vector<11xi64>):
        memref.assume_alignment %142, 8 : memref<8x13x3xi64>
        %268 = arith.xori %179, %89 : i16
        %269 = math.floor %6 : tensor<8x13x3xf16>
        %270 = vector.broadcast %true_22 : i1 to vector<3x13xi1>
        %271 = vector.splat %c-25185_i16 : vector<3x13xi16>
        %272 = bufferization.clone %alloc_19 : memref<8xi32> to memref<8xi32>
        %273 = math.tan %cst_3 : f16
        %alloc_37 = memref.alloc() : memref<11x3xf16>
        %274 = tensor.empty() : tensor<11x13xi16>
        %275 = linalg.matmul ins(%13, %10 : tensor<11x3xi16>, tensor<3x13xi16>) outs(%274 : tensor<11x13xi16>) -> tensor<11x13xi16>
        %276 = arith.xori %179, %c896_i16 : i16
        %277 = arith.divui %c1710974591_i64, %c247436524_i64 : i64
        %278 = math.exp2 %4 : tensor<8x3xf16>
        %279 = math.atan %cst_1 : f32
        %280 = vector.reduction <minui>, %147 : vector<3xi64> into i64
        %281 = arith.ceildivsi %c468411168_i32, %c468411168_i32 : i32
        %282 = arith.muli %c1710974591_i64, %c1710974591_i64 : i64
        scf.yield %85 : vector<11xi64>
      }
      affine.yield %c896_i16 : i16
    } else {
      %258 = scf.while (%arg2 = %alloc_8) : (memref<11x3xi64>) -> memref<11x3xi64> {
        %265 = memref.atomic_rmw maxs %c2015405231_i64, %alloc_16[%c0, %c8] : (i64, memref<3x13xi64>) -> i64
        %266 = arith.divui %60, %60 : i64
        %267 = arith.addi %false, %true : i1
        %268 = bufferization.clone %alloc_8 : memref<11x3xi64> to memref<11x3xi64>
        %269 = math.floor %4 : tensor<8x3xf16>
        memref.copy %alloc_18, %alloc_7 : memref<8x13x3xf16> to memref<8x13x3xf16>
        %270 = arith.ceildivsi %c1710974591_i64, %c247436524_i64 : i64
        %271 = arith.minui %89, %c-25185_i16 : i16
        scf.condition(%true) %268 : memref<11x3xi64>
      } do {
      ^bb0(%arg2: memref<11x3xi64>):
        %265 = arith.minui %c468411168_i32, %c767271615_i32 : i32
        %266 = math.cttz %7 : tensor<8x13x3xi32>
        %collapsed_37 = tensor.collapse_shape %expanded [[0, 1], [2, 3]] : tensor<8x13x3x1xi32> into tensor<104x3xi32>
        %267 = math.copysign %from_elements, %from_elements : tensor<8x13x3xf32>
        %268 = index.maxs %c9, %c8
        affine.store %cst_0, %alloc_7[%c14, %c6, %c9] : memref<8x13x3xf16>
        vector.print %55 : vector<8x3xi64>
        %269 = arith.divui %c247436524_i64, %c2015405231_i64 : i64
        %270 = arith.shrui %c896_i16, %c-25185_i16 : i16
        %271 = bufferization.clone %alloc_15 : memref<8x3xf16> to memref<8x3xf16>
        memref.copy %alloc_10, %116 : memref<8x13x3xi16> to memref<8x13x3xi16>
        %272 = arith.remsi %c767271615_i32, %c16122441_i32 : i32
        %273 = vector.matrix_multiply %97, %137 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 11 : i32} : (vector<3xi64>, vector<11xi64>) -> vector<33xi64>
        %274 = memref.realloc %alloc_19 : memref<8xi32> to memref<3xi32>
        %275 = vector.shuffle %65, %147 [1, 2, 3, 12, 13] : vector<11xi64>, vector<3xi64>
        %276 = arith.ceildivsi %c16122441_i32, %c16122441_i32 : i32
        scf.yield %alloc_14 : memref<11x3xi64>
      }
      %259 = vector.splat %cst_1 : vector<3x13xf32>
      %260 = math.fpowi %cst_0, %c767271615_i32 : f16, i32
      %261 = math.log2 %4 : tensor<8x3xf16>
      %262 = math.copysign %cst_2, %cst_2 : f32
      %263 = arith.ceildivsi %c1710974591_i64, %c247436524_i64 : i64
      scf.execute_region {
        memref.store %c1963310662_i64, %142[%c5, %c3, %c2] : memref<8x13x3xi64>
        %265 = arith.divui %true_22, %false : i1
        bufferization.dealloc_tensor %4 : tensor<8x3xf16>
        %from_elements_37 = tensor.from_elements %cst_1, %cst_1, %cst, %cst_2, %cst_1, %cst, %51, %51, %cst_1, %cst, %cst_1, %cst_1, %51, %51, %51, %51, %cst, %51, %cst_2, %cst_2, %cst, %cst, %cst, %cst : tensor<8x3xf32>
        %266 = math.cttz %splat_24 : tensor<8x13x3xi1>
        %267 = arith.maxsi %c468411168_i32, %c16122441_i32 : i32
        %268 = affine.load %alloc_19[%c0] : memref<8xi32>
        %269 = math.round %from_elements : tensor<8x13x3xf32>
        memref.store %c2015405231_i64, %135[%c1, %c2] : memref<11x3xi64>
        %270 = arith.ori %c-25185_i16, %179 : i16
        %271 = affine.max affine_map<(d0, d1) -> (0, d0)>(%c2, %c2)
        %272 = vector.broadcast %60 : i64 to vector<i64>
        %273 = vector.transfer_write %272, %3[%145, %c8] : vector<i64>, tensor<3x13xi64>
        %274 = index.maxs %c14, %rank_27
        %inserted_38 = tensor.insert %268 into %expanded[%c3, %c11, %c2, %c0] : tensor<8x13x3x1xi32>
        %275 = math.round %cst_0 : f16
        %276 = math.cttz %12 : tensor<8x13x3xi64>
        scf.yield
      }
      %264 = arith.maxf %cst_2, %cst : f32
      affine.yield %c-25185_i16 : i16
    }
    %dest_28, %accumulated_value_29 = vector.scan <minf>, %177, %101 {inclusive = false, reduction_dim = 0 : i64} : vector<11x3xf32>, vector<3xf32>
    %collapsed = tensor.collapse_shape %expanded_21 [[0, 1], [2]] : tensor<11x3x1xi16> into tensor<33x1xi16>
    %197 = arith.divf %cst, %cst_2 : f32
    %198 = arith.maxf %cst_2, %cst_1 : f32
    affine.store %c247436524_i64, %alloc_14[%c4, %c10] : memref<11x3xi64>
    memref.store %cst_0, %alloc_13[%c5, %c0] : memref<8x3xf16>
    %199 = math.atan2 %51, %cst_1 : f32
    %200 = scf.while (%arg2 = %c16122441_i32) : (i32) -> i32 {
      %258 = math.ctpop %c2015405231_i64 : i64
      %259 = memref.load %116[%c1, %c0, %c1] : memref<8x13x3xi16>
      bufferization.dealloc_tensor %generated : tensor<?x13x3xf32>
      %260 = bufferization.to_memref %0 : memref<11x3xf32>
      %261 = bufferization.to_tensor %142 : memref<8x13x3xi64>
      %262 = index.maxu %c0, %c7
      %263 = math.log10 %0 : tensor<11x3xf32>
      memref.tensor_store %14, %alloc_5 : memref<3x13xi1>
      scf.condition(%false) %c767271615_i32 : i32
    } do {
    ^bb0(%arg2: i32):
      %258 = vector.broadcast %cst_1 : f32 to vector<13x3xf32>
      %259 = vector.insert %258, %49 [0] : vector<13x3xf32> into vector<8x13x3xf32>
      %260 = affine.max affine_map<(d0, d1, d2) -> (d0 + d1 - d0, d2, 0)>(%145, %50, %rank_27)
      %261 = math.sqrt %15 : tensor<11x3xf16>
      %262 = bufferization.to_memref %8 : memref<11x3xi16>
      %splat_37 = tensor.splat %c1963310662_i64 : tensor<8x13x3xi64>
      %263 = affine.if affine_set<(d0) : (d0 >= 0)>(%c0) -> memref<8x3xi64> {
        %273 = arith.addi %c767271615_i32, %c468411168_i32 : i32
        %from_elements_40 = tensor.from_elements %cst_3, %cst_0, %cst_3, %cst_3, %cst_3, %cst_0, %cst_3, %cst_0, %cst_0, %cst_0, %cst_3, %cst_3, %cst_3, %cst_0, %cst_0, %cst_0, %cst_0, %cst_3, %cst_3, %cst_3, %cst_0, %cst_0, %cst_0, %cst_3 : tensor<8x3xf16>
        %274 = math.ceil %cst_0 : f16
        %from_elements_41 = tensor.from_elements %c1710974591_i64, %60, %60, %60, %60, %c2015405231_i64, %60, %c1710974591_i64, %c247436524_i64, %c1710974591_i64, %60, %c1963310662_i64, %60, %c1963310662_i64, %60, %c2015405231_i64, %c2015405231_i64, %c1963310662_i64, %c2015405231_i64, %c1963310662_i64, %c1963310662_i64, %60, %c247436524_i64, %60 : tensor<8x3xi64>
        %275 = vector.flat_transpose %65 {columns = 11 : i32, rows = 1 : i32} : vector<11xi64> -> vector<11xi64>
        memref.copy %alloc_16, %alloc_6 : memref<3x13xi64> to memref<3x13xi64>
        %276 = tensor.empty(%c0) : tensor<?x13x3xf32>
        %277 = arith.xori %c16122441_i32, %c767271615_i32 : i32
        %alloc_42 = memref.alloc() : memref<8x3xi64>
        affine.yield %alloc_42 : memref<8x3xi64>
      } else {
        %273 = index.maxu %c13, %c15
        %274 = bufferization.clone %116 : memref<8x13x3xi16> to memref<8x13x3xi16>
        %275 = arith.remui %89, %c896_i16 : i16
        %276 = math.expm1 %51 : f32
        %from_elements_40 = tensor.from_elements %cst_0, %cst_0, %cst_0, %cst_3, %cst_3, %cst_3, %cst_0, %cst_0, %cst_0, %cst_3, %cst_3, %cst_0, %cst_0, %cst_3, %cst_3, %cst_3, %cst_0, %cst_0, %cst_3, %cst_3, %cst_3, %cst_0, %cst_0, %cst_3 : tensor<8x3xf16>
        %277 = arith.remsi %c1710974591_i64, %c2015405231_i64 : i64
        %alloca = memref.alloca() : memref<8x13x3xi64>
        %278 = arith.negf %cst_0 : f16
        %alloc_41 = memref.alloc() : memref<8x3xi64>
        affine.yield %alloc_41 : memref<8x3xi64>
      }
      %alloc_38 = memref.alloc() : memref<3x13xi32>
      %264 = tensor.empty() : tensor<11x13xi32>
      %265 = linalg.matmul ins(%11, %alloc_38 : tensor<11x3xi32>, memref<3x13xi32>) outs(%264 : tensor<11x13xi32>) -> tensor<11x13xi32>
      %266 = math.atan2 %cst_2, %cst_1 : f32
      %267 = vector.multi_reduction <maxf>, %101, %cst_1 [0] : vector<3xf32> to f32
      %268 = math.log1p %cst_0 : f16
      %true_39 = index.bool.constant true
      %269 = vector.broadcast %267 : f32 to vector<13x3x13x3xf32>
      %270 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %120, %37, %269 : vector<8x13x3xf32>, vector<8x13x3xf32> into vector<13x3x13x3xf32>
      memref.copy %alloc, %34 : memref<8x13x3xi16> to memref<8x13x3xi16>
      %271 = math.expm1 %4 : tensor<8x3xf16>
      %272 = math.atan %15 : tensor<11x3xf16>
      memref.copy %alloc_4, %alloc_17 : memref<8x13x3xf32> to memref<8x13x3xf32>
      scf.yield %c16122441_i32 : i32
    }
    %201 = arith.ceildivsi %c-25185_i16, %c896_i16 : i16
    %202 = vector.matrix_multiply %85, %65 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi64>, vector<11xi64>) -> vector<1xi64>
    %203 = math.floor %4 : tensor<8x3xf16>
    %204 = vector.transpose %119, [0] : vector<1xi64> to vector<1xi64>
    memref.assume_alignment %148, 8 : memref<8x13x3xi32>
    %205 = affine.max affine_map<(d0, d1, d2, d3) -> (d2)>(%c7, %74, %rank, %rank)
    %c1_i64 = arith.constant 1 : i64
    %206 = vector.transfer_read %alloc_14[%c10, %183], %c1_i64 : memref<11x3xi64>, vector<11xi64>
    %207 = vector.multi_reduction <minui>, %160, %160 [] : vector<8x13x3xi16> to vector<8x13x3xi16>
    %208 = vector.splat %true_22 : vector<3x13xi1>
    %209 = affine.if affine_set<(d0) : (128 == 0)>(%c15) -> i16 {
      %258 = index.maxu %c0, %c7
      bufferization.dealloc_tensor %5 : tensor<8x13x3xi32>
      %rank_37 = tensor.rank %9 : tensor<8x3xi1>
      %259 = vector.broadcast %c247436524_i64 : i64 to vector<8xi64>
      %260 = vector.multi_reduction <or>, %55, %259 [1] : vector<8x3xi64> to vector<8xi64>
      %261 = memref.load %alloc_17[%c5, %c3, %c1] : memref<8x13x3xf32>
      %262 = math.log %0 : tensor<11x3xf32>
      %263 = vector.broadcast %cst_2 : f32 to vector<11x3xf32>
      %264 = vector.fma %263, %263, %177 : vector<11x3xf32>
      bufferization.dealloc_tensor %22 : tensor<i32>
      affine.yield %c896_i16 : i16
    } else {
      %258 = vector.multi_reduction <mul>, %38, %37 [] : vector<8x13x3xf32> to vector<8x13x3xf32>
      %259 = math.ceil %from_elements : tensor<8x13x3xf32>
      %260 = math.ceil %51 : f32
      %261 = math.rsqrt %6 : tensor<8x13x3xf16>
      %262 = vector.matrix_multiply %20, %85 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi64>, vector<11xi64>) -> vector<1xi64>
      %263 = math.round %cst_3 : f16
      %264 = math.ipowi %c896_i16, %c-25185_i16 : i16
      %265 = index.casts %c896_i16 : i16 to index
      affine.yield %179 : i16
    }
    %210 = scf.index_switch %46 -> i1 
    case 1 {
      %258 = arith.muli %c896_i16, %c-25185_i16 : i16
      %259 = arith.andi %false, %true : i1
      %260 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%21 : tensor<8xi32>) outs(%18 : tensor<3x8x13xi32>) {
      ^bb0(%in: i32, %out: i32):
        %272 = vector.bitcast %20 : vector<11xi64> to vector<11xi64>
        %273 = arith.remf %cst_1, %cst_2 : f32
        %274 = bufferization.clone %142 : memref<8x13x3xi64> to memref<8x13x3xi64>
        %275 = arith.divui %c896_i16, %c896_i16 : i16
        %276 = arith.divf %cst_1, %51 : f32
        %277 = arith.remf %cst, %cst_2 : f32
        %278 = vector.broadcast %c-25185_i16 : i16 to vector<8x3xi16>
        %dest_38, %accumulated_value_39 = vector.scan <xor>, %160, %278 {inclusive = false, reduction_dim = 1 : i64} : vector<8x13x3xi16>, vector<8x3xi16>
        %279 = arith.xori %false, %true_22 : i1
        %280 = math.fpowi %cst_2, %out : f32, i32
        %281 = vector.broadcast %179 : i16 to vector<8x3xi16>
        %dest_40, %accumulated_value_41 = vector.scan <maxui>, %160, %281 {inclusive = true, reduction_dim = 1 : i64} : vector<8x13x3xi16>, vector<8x3xi16>
        %282 = index.add %46, %50
        %inserted_42 = tensor.insert %c468411168_i32 into %5[%c0, %c12, %c2] : tensor<8x13x3xi32>
        %expanded_43 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<11x3xi64> into tensor<11x3x1xi64>
        %283 = vector.multi_reduction <mul>, %120, %38 [] : vector<8x13x3xf32> to vector<8x13x3xf32>
        %284 = math.round %cst_2 : f32
        %285 = index.divu %c7, %c14
        %splat_44 = tensor.splat %c16122441_i32 : tensor<3x13xi32>
        %286 = index.ceildivu %rank, %rank
        %287 = math.copysign %4, %4 : tensor<8x3xf16>
        bufferization.dealloc_tensor %0 : tensor<11x3xf32>
        %288 = vector.broadcast %cst : f32 to vector<8x13x3xf32>
        %289 = vector.fma %288, %288, %49 : vector<8x13x3xf32>
        %290 = math.floor %0 : tensor<11x3xf32>
        %291 = math.ceil %6 : tensor<8x13x3xf16>
        %292 = math.ceil %from_elements : tensor<8x13x3xf32>
        %alloca = memref.alloca() : memref<8x13x3xi64>
        %293 = math.fma %15, %15, %15 : tensor<11x3xf16>
        %294 = memref.realloc %alloc_19 : memref<8xi32> to memref<8xi32>
        %alloc_45 = memref.alloc() : memref<8x3xi1>
        %295 = math.round %from_elements : tensor<8x13x3xf32>
        %296 = vector.broadcast %cst : f32 to vector<8x13x3xf32>
        %297 = vector.fma %296, %289, %121 : vector<8x13x3xf32>
        %dest_46, %accumulated_value_47 = vector.scan <minf>, %296, %47 {inclusive = true, reduction_dim = 1 : i64} : vector<8x13x3xf32>, vector<8x3xf32>
        %expanded_48 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<3x13xi16> into tensor<3x13x1xi16>
        linalg.yield %in : i32
      } -> tensor<3x8x13xi32>
      %261 = math.rsqrt %cst : f32
      %262 = math.round %4 : tensor<8x3xf16>
      %263 = arith.ceildivsi %c2015405231_i64, %c1710974591_i64 : i64
      %264 = math.log2 %from_elements : tensor<8x13x3xf32>
      %265 = scf.index_switch %c13 -> tensor<11x3xi64> 
      case 1 {
        %272 = index.maxu %c2, %74
        %273 = vector.bitcast %160 : vector<8x13x3xi16> to vector<8x13x3xi16>
        %274 = tensor.empty() : tensor<8x3xi32>
        %275 = math.fpowi %4, %274 : tensor<8x3xf16>, tensor<8x3xi32>
        %276 = vector.extract %149[1] : vector<8x3xi64>
        %277 = affine.max affine_map<(d0, d1) -> (d1, d0 * 9 - d1, d0 * 9 + (d0 * 36) floordiv 32, (d0 * 36) floordiv 32)>(%c8, %75)
        memref.tensor_store %splat, %135 : memref<11x3xi64>
        %278 = vector.shuffle %121, %120 [0, 2, 5, 6, 7, 8, 9, 11, 12, 15] : vector<8x13x3xf32>, vector<8x13x3xf32>
        %279 = vector.broadcast %60 : i64 to vector<8xi64>
        %dest_38, %accumulated_value_39 = vector.scan <add>, %55, %279 {inclusive = true, reduction_dim = 1 : i64} : vector<8x3xi64>, vector<8xi64>
        %280 = math.expm1 %15 : tensor<11x3xf16>
        %281 = memref.realloc %alloc_19 : memref<8xi32> to memref<8xi32>
        %282 = index.castu %60 : i64 to index
        vector.print %81 : vector<i32>
        %283 = vector.extract %55[4] : vector<8x3xi64>
        %284 = memref.load %alloc_9[%c2, %c11] : memref<3x13xf16>
        %285 = vector.extract %160[4, 10] : vector<8x13x3xi16>
        %286 = math.expm1 %from_elements : tensor<8x13x3xf32>
        scf.yield %splat : tensor<11x3xi64>
      }
      case 2 {
        %272 = index.ceildivs %c10, %c7
        %true_38 = index.bool.constant true
        %273 = math.tan %15 : tensor<11x3xf16>
        %274 = vector.broadcast %cst_3 : f16 to vector<3x13xf16>
        %275 = memref.realloc %alloc_19 : memref<8xi32> to memref<3xi32>
        %276 = math.tanh %cst_3 : f16
        %277 = math.atan2 %51, %cst_1 : f32
        %278 = math.tanh %15 : tensor<11x3xf16>
        %279 = math.exp2 %6 : tensor<8x13x3xf16>
        %280 = bufferization.clone %148 : memref<8x13x3xi32> to memref<8x13x3xi32>
        %281 = vector.shuffle %65, %65 [2, 3, 5, 6, 8, 11, 13, 15, 17] : vector<11xi64>, vector<11xi64>
        %282 = bufferization.to_tensor %alloc : memref<8x13x3xi16>
        %283 = arith.divui %60, %c2015405231_i64 : i64
        %284 = memref.atomic_rmw assign %c767271615_i32, %280[%c6, %c1, %c2] : (i32, memref<8x13x3xi32>) -> i32
        %285 = vector.insert %147, %149 [0] : vector<3xi64> into vector<8x3xi64>
        %286 = vector.extract_strided_slice %55 {offsets = [2], sizes = [4], strides = [1]} : vector<8x3xi64> to vector<4x3xi64>
        scf.yield %splat : tensor<11x3xi64>
      }
      default {
        %272 = math.ctlz %93 : tensor<8x13x3xi16>
        %273 = arith.ori %c1710974591_i64, %c247436524_i64 : i64
        %274 = math.round %4 : tensor<8x3xf16>
        bufferization.dealloc_tensor %3 : tensor<3x13xi64>
        %275 = memref.atomic_rmw assign %cst_0, %alloc_9[%c1, %c4] : (f16, memref<3x13xf16>) -> f16
        %276 = tensor.empty() : tensor<13x11xi16>
        %277 = tensor.empty() : tensor<11x11xi16>
        %278 = linalg.matmul ins(%187, %276 : tensor<11x13xi16>, tensor<13x11xi16>) outs(%277 : tensor<11x11xi16>) -> tensor<11x11xi16>
        %279 = vector.broadcast %true_22 : i1 to vector<8x3xi1>
        %280 = vector.broadcast %c16122441_i32 : i32 to vector<8x3xi32>
        %281 = vector.gather %14[%c5, %c8] [%280], %279, %279 : tensor<3x13xi1>, vector<8x3xi32>, vector<8x3xi1>, vector<8x3xi1> into vector<8x3xi1>
        memref.assume_alignment %142, 1 : memref<8x13x3xi64>
        %282 = vector.broadcast %c1_i64 : i64 to vector<3x13xi64>
        %283 = index.ceildivu %c2, %145
        %284 = arith.xori %c2015405231_i64, %c2015405231_i64 : i64
        %285 = arith.ceildivsi %c1_i64, %c1710974591_i64 : i64
        %286 = vector.splat %c4 : vector<8x13x3xindex>
        memref.store %false, %alloc_5[%c2, %c6] : memref<3x13xi1>
        %287 = affine.max affine_map<(d0, d1, d2) -> (d1 floordiv 8, d1 * 2, d1 ceildiv 64 - 1, (d1 - 128) ceildiv 2)>(%103, %283, %rank_27)
        %288 = arith.remf %cst_0, %cst_3 : f16
        scf.yield %1 : tensor<11x3xi64>
      }
      %266 = arith.negf %cst_1 : f32
      bufferization.dealloc_tensor %18 : tensor<3x8x13xi32>
      %267 = vector.splat %c2 : vector<8x13x3xindex>
      %268 = math.copysign %0, %0 : tensor<11x3xf32>
      %269 = arith.divf %cst, %cst : f32
      %270 = vector.shuffle %160, %160 [0, 1, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13] : vector<8x13x3xi16>, vector<8x13x3xi16>
      %271 = math.copysign %6, %6 : tensor<8x13x3xf16>
      %splat_37 = tensor.splat %89 : tensor<8x13x3xi16>
      scf.yield %true : i1
    }
    default {
      %258 = tensor.empty() : tensor<13x3x8xi64>
      %259 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%258, %258 : tensor<13x3x8xi64>, tensor<13x3x8xi64>) outs(%2 : tensor<8x13x3xi64>) {
      ^bb0(%in: i64, %in_39: i64, %out: i64):
        %272 = tensor.empty() : tensor<11x13xi16>
        %273 = linalg.matmul ins(%8, %10 : tensor<11x3xi16>, tensor<3x13xi16>) outs(%272 : tensor<11x13xi16>) -> tensor<11x13xi16>
        %274 = math.floor %15 : tensor<11x3xf16>
        %275 = math.rsqrt %51 : f32
        %276 = math.absi %3 : tensor<3x13xi64>
        affine.store %89, %34[%c3, %c6, %c7] : memref<8x13x3xi16>
        %277 = arith.ceildivsi %c16122441_i32, %c468411168_i32 : i32
        %278 = arith.remf %51, %cst : f32
        %279 = bufferization.clone %alloc_17 : memref<8x13x3xf32> to memref<8x13x3xf32>
        %280 = index.divs %c3, %63
        %281 = arith.minf %cst_0, %cst_0 : f16
        %282 = bufferization.clone %alloc_14 : memref<11x3xi64> to memref<11x3xi64>
        %283 = arith.addi %c896_i16, %179 : i16
        %284 = index.divu %46, %74
        %rank_40 = tensor.rank %splat : tensor<11x3xi64>
        %285 = math.sqrt %4 : tensor<8x3xf16>
        %286 = math.round %cst_3 : f16
        %287 = math.round %cst : f32
        %288 = arith.maxf %51, %cst_2 : f32
        %289 = arith.remsi %out, %c1_i64 : i64
        %290 = index.castu %false : i1 to index
        memref.copy %279, %alloc_17 : memref<8x13x3xf32> to memref<8x13x3xf32>
        %291 = bufferization.to_memref %1 : memref<11x3xi64>
        %292 = math.round %from_elements : tensor<8x13x3xf32>
        %293 = math.atan %4 : tensor<8x3xf16>
        %294 = arith.negf %cst_0 : f16
        %inserted_41 = tensor.insert %true_22 into %splat_24[%c0, %c11, %c1] : tensor<8x13x3xi1>
        %splat_42 = tensor.splat %179 : tensor<11x3xi16>
        %295 = vector.multi_reduction <minui>, %149, %147 [0] : vector<8x3xi64> to vector<3xi64>
        %296 = affine.max affine_map<(d0, d1, d2) -> (d1, d2, d2)>(%c8, %c12, %c14)
        %expanded_43 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<3x13xi16> into tensor<3x13x1xi16>
        %297 = math.log10 %6 : tensor<8x13x3xf16>
        memref.assume_alignment %alloc_12, 16 : memref<11x3xi1>
        linalg.yield %out : i64
      } -> tensor<8x13x3xi64>
      %260 = scf.while (%arg2 = %c1963310662_i64) : (i64) -> i64 {
        %inserted_39 = tensor.insert %c16122441_i32 into %11[%c8, %c2] : tensor<11x3xi32>
        %272 = vector.multi_reduction <maxf>, %101, %101 [] : vector<3xf32> to vector<3xf32>
        %273 = index.add %75, %63
        %274 = math.absi %collapsed : tensor<33x1xi16>
        memref.copy %alloc_15, %alloc_13 : memref<8x3xf16> to memref<8x3xf16>
        %275 = affine.load %alloc_17[%c3, %c3, %c5] : memref<8x13x3xf32>
        %276 = tensor.empty(%183, %46) : tensor<?x?xi1>
        %277 = arith.maxsi %true, %true : i1
        scf.condition(%true) %60 : i64
      } do {
      ^bb0(%arg2: i64):
        %272 = index.castu %c5 : index to i32
        %273 = math.ctlz %3 : tensor<3x13xi64>
        %274 = arith.divui %c2015405231_i64, %c1963310662_i64 : i64
        %275 = vector.load %alloc_16[%c0, %c9] : memref<3x13xi64>, vector<3x13xi64>
        %276 = arith.maxsi %179, %179 : i16
        %277 = affine.max affine_map<(d0, d1) -> (d0)>(%74, %183)
        %278 = math.ceil %cst_3 : f16
        %279 = arith.divui %false, %true : i1
        %280 = memref.atomic_rmw maxf %cst_0, %alloc_7[%c1, %c2, %c1] : (f16, memref<8x13x3xf16>) -> f16
        bufferization.dealloc_tensor %generated : tensor<?x13x3xf32>
        %expanded_39 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<11x3xf16> into tensor<11x3x1xf16>
        %281 = vector.broadcast %51 : f32 to vector<11x3xf32>
        %282 = vector.fma %281, %281, %177 : vector<11x3xf32>
        %283 = memref.atomic_rmw addf %cst_0, %alloc_7[%c4, %c8, %c1] : (f16, memref<8x13x3xf16>) -> f16
        %284 = arith.maxf %cst_0, %cst_3 : f16
        %285 = math.tanh %cst_2 : f32
        %286 = arith.ceildivsi %true_22, %true_22 : i1
        scf.yield %c2015405231_i64 : i64
      }
      %261 = affine.max affine_map<(d0, d1, d2) -> (4, d0, d0)>(%50, %c10, %c15)
      %262 = arith.minf %cst_0, %cst_3 : f16
      memref.copy %alloc_8, %alloc_14 : memref<11x3xi64> to memref<11x3xi64>
      %from_elements_37 = tensor.from_elements %c468411168_i32, %c16122441_i32, %c468411168_i32, %c468411168_i32, %c468411168_i32, %c16122441_i32, %c767271615_i32, %c468411168_i32, %c16122441_i32, %c16122441_i32, %c468411168_i32, %c16122441_i32, %c16122441_i32, %c16122441_i32, %c16122441_i32, %c767271615_i32, %c16122441_i32, %c16122441_i32, %c16122441_i32, %c468411168_i32, %c16122441_i32, %c468411168_i32, %c468411168_i32, %c468411168_i32, %c468411168_i32, %c468411168_i32, %c16122441_i32, %c16122441_i32, %c767271615_i32, %c767271615_i32, %c468411168_i32, %c468411168_i32, %c468411168_i32 : tensor<11x3xi32>
      %263 = math.cos %6 : tensor<8x13x3xf16>
      %264 = affine.max affine_map<(d0, d1, d2) -> (d1 - 128, d0 floordiv 64 - 2, d0 ceildiv 32)>(%63, %c8, %c0)
      %265 = bufferization.clone %alloc_8 : memref<11x3xi64> to memref<11x3xi64>
      %266 = math.ceil %15 : tensor<11x3xf16>
      %267 = math.floor %15 : tensor<11x3xf16>
      %268 = math.ctpop %9 : tensor<8x3xi1>
      %alloc_38 = memref.alloc() : memref<3x13x8xi32>
      %269 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_38 : memref<3x13x8xi32>) outs(%transposed : tensor<3x8x13xi32>) {
      ^bb0(%in: i32, %out: i32):
        %272 = math.cttz %7 : tensor<8x13x3xi32>
        %273 = bufferization.to_tensor %135 : memref<11x3xi64>
        %rank_39 = tensor.rank %7 : tensor<8x13x3xi32>
        %274 = arith.remsi %false, %false : i1
        %275 = vector.load %148[%c6, %c1, %c2] : memref<8x13x3xi32>, vector<8x13x3xi32>
        %alloca = memref.alloca() : memref<8x13x3xi64>
        %276 = math.round %cst_1 : f32
        %from_elements_40 = tensor.from_elements %true_22, %true, %false, %true, %true, %true, %true_22, %true, %true_22, %true, %true_22, %false, %true, %true_22, %false, %true_22, %false, %false, %true, %false, %true_22, %true, %true_22, %false : tensor<8x3xi1>
        %277 = index.add %75, %261
        %278 = memref.realloc %alloc_19 : memref<8xi32> to memref<3xi32>
        %279 = math.ipowi %expanded_21, %expanded_21 : tensor<11x3x1xi16>
        %280 = math.exp2 %cst : f32
        %281 = math.atan %cst_2 : f32
        %282 = math.cttz %1 : tensor<11x3xi64>
        %283 = arith.xori %c1_i64, %c2015405231_i64 : i64
        %284 = index.ceildivu %rank_27, %c6
        %285 = vector.extract_strided_slice %66 {offsets = [2], sizes = [2], strides = [1]} : vector<8x3xi64> to vector<2x3xi64>
        %286 = arith.divui %179, %179 : i16
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_41 = arith.constant 0 : i64
        %287 = vector.transfer_read %1[%c1, %145], %c0_i64_41 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<11x3xi64>, vector<8xi64>
        %288 = arith.shrsi %c16122441_i32, %out : i32
        memref.assume_alignment %alloc_6, 4 : memref<3x13xi64>
        %289 = tensor.empty() : tensor<8x3xi32>
        %290 = math.fpowi %4, %289 : tensor<8x3xf16>, tensor<8x3xi32>
        %291 = math.ceil %6 : tensor<8x13x3xf16>
        %292 = tensor.empty() : tensor<11x13xi1>
        %293 = linalg.matmul ins(%113, %14 : tensor<11x3xi1>, tensor<3x13xi1>) outs(%292 : tensor<11x13xi1>) -> tensor<11x13xi1>
        %294 = vector.extract %55[4] : vector<8x3xi64>
        %295 = math.copysign %4, %4 : tensor<8x3xf16>
        %296 = memref.atomic_rmw ori %c-25185_i16, %alloc_10[%c3, %c6, %c2] : (i16, memref<8x13x3xi16>) -> i16
        %297 = math.absf %cst_0 : f16
        %298 = tensor.empty() : tensor<11x3xi16>
        %alloc_42 = memref.alloc() : memref<8x13x3xi64>
        memref.copy %142, %alloc_42 : memref<8x13x3xi64> to memref<8x13x3xi64>
        %cst_43 = arith.constant 1.000000e+00 : f32
        %cst_44 = arith.constant 0.000000e+00 : f32
        %299 = vector.transfer_read %alloc_17[%rank_27, %145, %c11], %cst_44 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : memref<8x13x3xf32>, vector<13xf32>
        %300 = vector.shuffle %160, %160 [2, 5, 6, 12, 13, 14] : vector<8x13x3xi16>, vector<8x13x3xi16>
        linalg.yield %c468411168_i32 : i32
      } -> tensor<3x8x13xi32>
      %270 = vector.extract %55[4] : vector<8x3xi64>
      bufferization.dealloc_tensor %splat_20 : tensor<11x3xi64>
      %271 = math.floor %51 : f32
      scf.yield %false : i1
    }
    %211 = vector.broadcast %c2015405231_i64 : i64 to vector<8xi64>
    %212 = vector.multi_reduction <minui>, %149, %211 [1] : vector<8x3xi64> to vector<8xi64>
    %213 = math.rsqrt %cst : f32
    %214 = math.copysign %cst_3, %cst_0 : f16
    %215 = math.round %cst_3 : f16
    %216 = bufferization.clone %alloc_8 : memref<11x3xi64> to memref<11x3xi64>
    %217 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%2 : tensor<8x13x3xi64>) {
    ^bb0(%out: i64):
      %258 = arith.ori %c1710974591_i64, %c1963310662_i64 : i64
      %259 = arith.cmpi sgt, %c1_i64, %c247436524_i64 : i64
      %260 = math.atan2 %cst_2, %cst_1 : f32
      %261 = index.ceildivu %c6, %c13
      %262 = affine.load %148[%c3, %c3, %c5] : memref<8x13x3xi32>
      %263 = arith.muli %c896_i16, %89 : i16
      %264 = math.ceil %cst_0 : f16
      %265 = vector.broadcast %cst : f32 to vector<8x13xf32>
      %dest_37, %accumulated_value_38 = vector.scan <minf>, %37, %265 {inclusive = true, reduction_dim = 2 : i64} : vector<8x13x3xf32>, vector<8x13xf32>
      %266 = math.copysign %15, %15 : tensor<11x3xf16>
      %267 = vector.load %143[%c10, %c2, %c0] : memref<11x3x1xi16>, vector<8x13x3xi16>
      %alloc_39 = memref.alloc() : memref<13x13xi1>
      %268 = tensor.empty() : tensor<3x13xi1>
      %269 = linalg.matmul ins(%14, %alloc_39 : tensor<3x13xi1>, memref<13x13xi1>) outs(%268 : tensor<3x13xi1>) -> tensor<3x13xi1>
      %rank_40 = tensor.rank %268 : tensor<3x13xi1>
      %270 = vector.bitcast %65 : vector<11xi64> to vector<11xi64>
      %inserted_41 = tensor.insert %c468411168_i32 into %18[%c0, %c1, %c8] : tensor<3x8x13xi32>
      %rank_42 = tensor.rank %23 : tensor<i32>
      %271 = vector.splat %205 : vector<8x3xindex>
      %272 = index.maxu %75, %46
      %273 = arith.remf %cst, %cst_1 : f32
      %inserted_43 = tensor.insert %c1963310662_i64 into %splat_20[%c5, %c1] : tensor<11x3xi64>
      %274 = vector.broadcast %cst_2 : f32 to vector<13x3xf32>
      %275 = vector.insert %274, %37 [3] : vector<13x3xf32> into vector<8x13x3xf32>
      %276 = bufferization.to_tensor %alloc_6 : memref<3x13xi64>
      %277 = scf.while (%arg2 = %alloc) : (memref<8x13x3xi16>) -> memref<8x13x3xi16> {
        %284 = tensor.empty() : tensor<8x3xf16>
        %285 = bufferization.clone %alloc_13 : memref<8x3xf16> to memref<8x3xf16>
        %286 = arith.divui %c247436524_i64, %out : i64
        %287 = memref.load %alloc_18[%c5, %c6, %c1] : memref<8x13x3xf16>
        %false_47 = arith.constant false
        %288 = arith.maxf %cst_2, %cst : f32
        %289 = math.absi %1 : tensor<11x3xi64>
        %290 = math.round %cst_2 : f32
        scf.condition(%false) %alloc_10 : memref<8x13x3xi16>
      } do {
      ^bb0(%arg2: memref<8x13x3xi16>):
        %284 = bufferization.clone %alloc_19 : memref<8xi32> to memref<8xi32>
        %expanded_47 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<11x3xi16> into tensor<11x3x1xi16>
        %285 = math.cttz %splat_24 : tensor<8x13x3xi1>
        %alloca = memref.alloca() : memref<8x13x3xi32>
        %286 = index.castu %c4 : index to i32
        %287 = index.add %46, %rank_42
        %288 = math.absi %5 : tensor<8x13x3xi32>
        %289 = arith.minui %60, %c2015405231_i64 : i64
        %290 = vector.bitcast %37 : vector<8x13x3xf32> to vector<8x13x3xf32>
        memref.copy %284, %alloc_19 : memref<8xi32> to memref<8xi32>
        bufferization.dealloc_tensor %3 : tensor<3x13xi64>
        %291 = arith.maxui %c16122441_i32, %c16122441_i32 : i32
        %292 = math.atan %15 : tensor<11x3xf16>
        %293 = index.ceildivu %c5, %183
        %inserted_48 = tensor.insert %c468411168_i32 into %7[%c3, %c6, %c0] : tensor<8x13x3xi32>
        %294 = math.rsqrt %0 : tensor<11x3xf32>
        scf.yield %arg2 : memref<8x13x3xi16>
      }
      %generated_44 = tensor.generate %c12 {
      ^bb0(%arg2: index, %arg3: index):
        %284 = math.round %cst_1 : f32
        %c-19251_i16 = arith.constant -19251 : i16
        %285 = arith.subi %c468411168_i32, %262 : i32
        %286 = math.copysign %51, %cst : f32
        tensor.yield %89 : i16
      } : tensor<?x3xi16>
      %278 = affine.if affine_set<(d0, d1, d2, d3) : (d1 ceildiv 2 + 32 >= 0, -d3 >= 0, d1 ceildiv 2 + 32 == 0)>(%c11, %c6, %c1, %c15) -> i64 {
        %284 = math.expm1 %cst : f32
        %285 = index.sizeof
        %alloc_47 = memref.alloc() : memref<8x13x3xi64>
        %286 = tensor.empty() : tensor<8x13x3xf16>
        %287 = math.rsqrt %4 : tensor<8x3xf16>
        %288 = vector.extract %55[2] : vector<8x3xi64>
        memref.assume_alignment %alloc_5, 1 : memref<3x13xi1>
        %289 = arith.minui %false, %true : i1
        affine.yield %60 : i64
      } else {
        %284 = arith.addf %cst_3, %cst_3 : f16
        %285 = math.ctpop %c-25185_i16 : i16
        %alloc_47 = memref.alloc() : memref<11x3xf32>
        %alloc_48 = memref.alloc() : memref<11x3xi32>
        memref.tensor_store %11, %alloc_48 : memref<11x3xi32>
        %inserted_49 = tensor.insert %true_22 into %113[%c0, %c2] : tensor<11x3xi1>
        %alloc_50 = memref.alloc() : memref<3x13xi64>
        %286 = bufferization.clone %alloc_8 : memref<11x3xi64> to memref<11x3xi64>
        memref.assume_alignment %alloc_13, 2 : memref<8x3xf16>
        affine.yield %c1710974591_i64 : i64
      }
      %alloc_45 = memref.alloc() : memref<3x13xi32>
      %279 = math.absi %collapsed : tensor<33x1xi16>
      %c883472626_i32 = arith.constant 883472626 : i32
      %280 = vector.broadcast %89 : i16 to vector<11x3xi16>
      %from_elements_46 = tensor.from_elements %cst_0, %cst_0, %cst_0, %cst_3, %cst_3, %cst_0, %cst_0, %cst_3, %cst_3, %cst_3, %cst_0, %cst_0, %cst_3, %cst_3, %cst_0, %cst_3, %cst_0, %cst_0, %cst_0, %cst_3, %cst_3, %cst_3, %cst_0, %cst_0 : tensor<8x3xf16>
      %281 = math.log10 %6 : tensor<8x13x3xf16>
      %282 = arith.shrsi %c468411168_i32, %c468411168_i32 : i32
      %283 = math.ctpop %8 : tensor<11x3xi16>
      linalg.yield %out : i64
    } -> tensor<8x13x3xi64>
    bufferization.dealloc_tensor %0 : tensor<11x3xf32>
    scf.index_switch %c2 
    case 1 {
      %258 = arith.xori %179, %89 : i16
      %259 = scf.while (%arg2 = %c1_i64) : (i64) -> i64 {
        %272 = math.copysign %15, %15 : tensor<11x3xf16>
        %273 = vector.multi_reduction <minsi>, %20, %c1_i64 [0] : vector<11xi64> to i64
        %274 = memref.realloc %alloc_19 : memref<8xi32> to memref<8xi32>
        %275 = arith.remsi %89, %c-25185_i16 : i16
        %276 = arith.xori %false, %true_22 : i1
        %277 = math.atan %cst_2 : f32
        %278 = bufferization.to_tensor %alloc_12 : memref<11x3xi1>
        %279 = arith.xori %c1710974591_i64, %c1963310662_i64 : i64
        scf.condition(%true) %273 : i64
      } do {
      ^bb0(%arg2: i64):
        %272 = math.sqrt %4 : tensor<8x3xf16>
        %273 = math.tanh %cst_2 : f32
        %from_elements_38 = tensor.from_elements %c16122441_i32, %c16122441_i32, %c767271615_i32, %c767271615_i32, %c16122441_i32, %c468411168_i32, %c16122441_i32, %c767271615_i32, %c767271615_i32, %c16122441_i32, %c16122441_i32, %c468411168_i32, %c767271615_i32, %c468411168_i32, %c16122441_i32, %c468411168_i32, %c468411168_i32, %c468411168_i32, %c468411168_i32, %c468411168_i32, %c16122441_i32, %c767271615_i32, %c468411168_i32, %c468411168_i32, %c16122441_i32, %c767271615_i32, %c767271615_i32, %c16122441_i32, %c767271615_i32, %c767271615_i32, %c468411168_i32, %c16122441_i32, %c468411168_i32 : tensor<11x3xi32>
        %c0_i32 = arith.constant 0 : i32
        %274 = vector.transfer_read %7[%c8, %183, %c2], %c0_i32 : tensor<8x13x3xi32>, vector<i32>
        %275 = arith.divf %cst_3, %cst_3 : f16
        %276 = math.log1p %cst_2 : f32
        %277 = vector.splat %cst : vector<11x3xf32>
        %278 = math.log10 %cst_0 : f16
        %279 = memref.load %alloc_4[%c3, %c11, %c2] : memref<8x13x3xf32>
        %280 = math.sqrt %15 : tensor<11x3xf16>
        %281 = math.log10 %from_elements : tensor<8x13x3xf32>
        %282 = arith.maxf %51, %51 : f32
        %283 = arith.mulf %cst, %51 : f32
        %284 = math.copysign %cst_0, %cst_3 : f16
        %285 = index.sizeof
        %alloca = memref.alloca() : memref<8x3xi32>
        scf.yield %c1_i64 : i64
      }
      %260 = math.fma %0, %0, %0 : tensor<11x3xf32>
      %261 = index.add %74, %c11
      %262 = affine.if affine_set<(d0, d1, d2) : (d2 >= 0, (d1 floordiv 4) * 128 == 0, (d2 floordiv 16) mod 2 == 0)>(%c6, %c9, %c14) -> f16 {
        %from_elements_38 = tensor.from_elements %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_3, %cst_3, %cst_0, %cst_0, %cst_3, %cst_3, %cst_0, %cst_0, %cst_0, %cst_3, %cst_0, %cst_0, %cst_0, %cst_0, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_0, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_0 : tensor<11x3xf16>
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_39 = arith.constant 0 : i64
        %272 = vector.transfer_read %2[%183, %103, %c6], %c0_i64_39 : tensor<8x13x3xi64>, vector<i64>
        %273 = math.round %4 : tensor<8x3xf16>
        %274 = arith.remf %cst_2, %cst_1 : f32
        %275 = vector.multi_reduction <add>, %177, %cst_2 [0, 1] : vector<11x3xf32> to f32
        %276 = math.round %cst_2 : f32
        %277 = index.sizeof
        %278 = math.atan2 %cst_1, %275 : f32
        affine.yield %cst_3 : f16
      } else {
        %c77099898_i32 = arith.constant 77099898 : i32
        %272 = arith.negf %cst_1 : f32
        %273 = bufferization.clone %alloc_6 : memref<3x13xi64> to memref<3x13xi64>
        %274 = math.sqrt %15 : tensor<11x3xf16>
        vector.print %97 : vector<3xi64>
        %275 = vector.load %alloc_6[%c0, %c12] : memref<3x13xi64>, vector<11x3xi64>
        %inserted_38 = tensor.insert %c247436524_i64 into %3[%c1, %c7] : tensor<3x13xi64>
        %276 = math.round %15 : tensor<11x3xf16>
        affine.yield %cst_0 : f16
      }
      %263 = memref.atomic_rmw muli %89, %116[%c5, %c6, %c1] : (i16, memref<8x13x3xi16>) -> i16
      %264 = affine.max affine_map<(d0) -> (d0 - 3)>(%c1)
      memref.store %60, %alloc_6[%c1, %c1] : memref<3x13xi64>
      %splat_37 = tensor.splat %true : tensor<8x13x3xi1>
      vector.print %121 : vector<8x13x3xf32>
      %265 = memref.load %116[%c3, %c4, %c0] : memref<8x13x3xi16>
      %266 = vector.extract %178[6] : vector<11x3xf32>
      %267 = vector.broadcast %cst : f32 to vector<8x3xf32>
      %268 = vector.fma %267, %47, %267 : vector<8x3xf32>
      %269 = arith.maxsi %true_22, %true_22 : i1
      %270 = arith.minui %89, %c896_i16 : i16
      %271 = affine.max affine_map<(d0, d1, d2) -> (d0 * 32, d0 * 32 - 8)>(%rank, %rank, %c6)
      scf.yield
    }
    case 2 {
      %258 = math.atan %cst_3 : f16
      %259 = arith.xori %c767271615_i32, %c16122441_i32 : i32
      %260 = math.log10 %cst_3 : f16
      %261 = bufferization.to_tensor %alloc_6 : memref<3x13xi64>
      %262 = arith.negf %cst : f32
      %alloca = memref.alloca() : memref<11x3xf16>
      %263 = math.atan2 %0, %0 : tensor<11x3xf32>
      %264 = math.tanh %15 : tensor<11x3xf16>
      %265 = math.round %cst_0 : f16
      %266 = vector.broadcast %51 : f32 to vector<13x3x13x3xf32>
      %267 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %120, %49, %266 : vector<8x13x3xf32>, vector<8x13x3xf32> into vector<13x3x13x3xf32>
      %268 = vector.insert %c1963310662_i64, %119 [0] : i64 into vector<1xi64>
      %269 = math.roundeven %cst_2 : f32
      %270 = index.casts %74 : index to i32
      %alloca_37 = memref.alloca() : memref<11x3xi16>
      memref.tensor_store %6, %alloc_18 : memref<8x13x3xf16>
      %271 = scf.execute_region -> tensor<8x13x3xi16> {
        %272 = math.tan %15 : tensor<11x3xf16>
        %273 = index.divu %75, %75
        %274 = index.divu %c0, %c7
        %275 = vector.splat %c7 : vector<11x3xindex>
        %276 = index.ceildivu %74, %c3
        %277 = math.log10 %cst : f32
        %278 = arith.remf %cst, %cst_1 : f32
        %279 = arith.remsi %89, %c-25185_i16 : i16
        %280 = vector.extract %66[5] : vector<8x3xi64>
        %281 = math.powf %6, %6 : tensor<8x13x3xf16>
        memref.store %c1963310662_i64, %191[%c8, %c1] : memref<11x3xi64>
        %282 = vector.insert %c1963310662_i64, %137 [2] : i64 into vector<11xi64>
        %283 = vector.broadcast %cst : f32 to vector<6xf32>
        %284 = vector.multi_reduction <mul>, %194, %283 [1] : vector<6x3xf32> to vector<6xf32>
        %rank_38 = tensor.rank %14 : tensor<3x13xi1>
        %285 = vector.broadcast %51 : f32 to vector<8x13x3xf32>
        %286 = vector.fma %285, %37, %38 : vector<8x13x3xf32>
        memref.store %cst_1, %alloc_17[%c4, %c6, %c2] : memref<8x13x3xf32>
        scf.yield %93 : tensor<8x13x3xi16>
      }
      scf.yield
    }
    case 3 {
      %258 = math.log %15 : tensor<11x3xf16>
      %259 = math.round %4 : tensor<8x3xf16>
      %cst_37 = arith.constant 2.558400e+04 : f16
      %260 = index.sizeof
      %261 = vector.splat %c3 : vector<8x13x3xindex>
      %262 = vector.splat %60 : vector<3x13xi64>
      %263 = memref.load %alloc_5[%c0, %c3] : memref<3x13xi1>
      %alloca = memref.alloca() : memref<8x13x3xi16>
      %264 = vector.shuffle %160, %160 [0, 1, 2, 3, 5, 8, 11, 12, 14, 15] : vector<8x13x3xi16>, vector<8x13x3xi16>
      %expanded_38 = tensor.expand_shape %7 [[0], [1], [2, 3]] : tensor<8x13x3xi32> into tensor<8x13x3x1xi32>
      %265 = vector.broadcast %cst_2 : f32 to vector<13x3xf32>
      %266 = vector.insert %265, %49 [4] : vector<13x3xf32> into vector<8x13x3xf32>
      %267 = arith.remf %51, %cst_1 : f32
      %268 = vector.load %116[%c7, %c3, %c2] : memref<8x13x3xi16>, vector<8x13x3xi16>
      %269 = arith.shrui %89, %c896_i16 : i16
      %270 = arith.xori %c468411168_i32, %c16122441_i32 : i32
      %271 = arith.ori %179, %c-25185_i16 : i16
      scf.yield
    }
    default {
      %258 = tensor.empty() : tensor<8x3xi64>
      %259 = index.sizeof
      %260 = index.maxs %rank_27, %c11
      %261 = arith.minui %c896_i16, %c-25185_i16 : i16
      %262 = affine.if affine_set<(d0, d1, d2) : (d2 >= 0, (d1 floordiv 4) * 128 == 0, (d2 floordiv 16) mod 2 == 0)>(%c8, %c5, %c15) -> f32 {
        %274 = vector.multi_reduction <mul>, %178, %101 [0] : vector<11x3xf32> to vector<3xf32>
        %alloc_39 = memref.alloc() : memref<3x13xf16>
        memref.copy %alloc_9, %alloc_39 : memref<3x13xf16> to memref<3x13xf16>
        %275 = vector.multi_reduction <and>, %66, %97 [0] : vector<8x3xi64> to vector<3xi64>
        %276 = arith.subi %89, %179 : i16
        %277 = arith.minsi %c1710974591_i64, %c1963310662_i64 : i64
        %278 = math.powf %0, %0 : tensor<11x3xf32>
        %279 = math.ceil %0 : tensor<11x3xf32>
        %280 = arith.addi %c16122441_i32, %c767271615_i32 : i32
        affine.yield %cst_2 : f32
      } else {
        %274 = vector.broadcast %cst_2 : f32 to vector<13x3xf32>
        %275 = vector.insert %274, %37 [5] : vector<13x3xf32> into vector<8x13x3xf32>
        %276 = index.ceildivu %46, %260
        %277 = arith.maxf %cst_0, %cst_0 : f16
        %alloc_39 = memref.alloc() : memref<11x3xf32>
        %278 = affine.min affine_map<(d0, d1) -> ((d0 - d1) floordiv 128 - (d1 + 1), d1 - 8)>(%c1, %50)
        %279 = vector.bitcast %274 : vector<13x3xf32> to vector<13x3xf32>
        %280 = math.ceil %6 : tensor<8x13x3xf16>
        %281 = memref.realloc %alloc_19 : memref<8xi32> to memref<3xi32>
        affine.yield %cst : f32
      }
      %263 = math.ctpop %c-25185_i16 : i16
      %264 = math.fpowi %51, %c16122441_i32 : f32, i32
      %alloc_37 = memref.alloc() : memref<8x3xi32>
      %265 = math.atan2 %0, %0 : tensor<11x3xf32>
      %266 = math.fpowi %cst_1, %c468411168_i32 : f32, i32
      %267 = math.sqrt %0 : tensor<11x3xf32>
      %268 = math.round %6 : tensor<8x13x3xf16>
      %269 = math.exp2 %15 : tensor<11x3xf16>
      %270 = tensor.empty() : tensor<3x11xf16>
      %271 = tensor.empty() : tensor<11x11xf16>
      %272 = linalg.matmul ins(%15, %270 : tensor<11x3xf16>, tensor<3x11xf16>) outs(%271 : tensor<11x11xf16>) -> tensor<11x11xf16>
      %273 = math.atan %51 : f32
      %expanded_38 = tensor.expand_shape %collapsed [[0], [1, 2]] : tensor<33x1xi16> into tensor<33x1x1xi16>
    }
    %218 = bufferization.to_memref %18 : memref<3x8x13xi32>
    %219 = math.round %cst_2 : f32
    %220 = vector.multi_reduction <minsi>, %147, %60 [0] : vector<3xi64> to i64
    %221 = math.cttz %220 : i64
    %222 = math.expm1 %51 : f32
    %223 = vector.broadcast %cst_2 : f32 to vector<8x13x3xf32>
    %224 = vector.fma %223, %38, %37 : vector<8x13x3xf32>
    %225 = arith.divui %c1963310662_i64, %c247436524_i64 : i64
    %226 = vector.create_mask %63, %46, %c7 : vector<8x13x3xi1>
    %alloc_30 = memref.alloc() : memref<11x3xf16>
    %227 = math.tanh %6 : tensor<8x13x3xf16>
    %228 = index.ceildivu %c0, %c3
    memref.store %c896_i16, %34[%c6, %c6, %c1] : memref<8x13x3xi16>
    %229 = math.round %0 : tensor<11x3xf32>
    %230 = vector.broadcast %c12 : index to vector<8xindex>
    %231 = vector.broadcast %true : i1 to vector<8xi1>
    %232 = vector.broadcast %cst : f32 to vector<8xf32>
    vector.scatter %alloc_17[%c3, %c3, %c0] [%230], %231, %232 : memref<8x13x3xf32>, vector<8xindex>, vector<8xi1>, vector<8xf32>
    vector.print %226 : vector<8x13x3xi1>
    %rank_31 = tensor.rank %expanded_21 : tensor<11x3x1xi16>
    %233 = arith.remf %51, %cst_2 : f32
    %234 = math.log %15 : tensor<11x3xf16>
    %235 = math.cttz %c896_i16 : i16
    %236 = math.log10 %0 : tensor<11x3xf32>
    %237 = affine.for %arg2 = 0 to 6 iter_args(%arg3 = %alloc_6) -> (memref<3x13xi64>) {
      affine.yield %alloc_6 : memref<3x13xi64>
    }
    %238 = arith.remf %cst_0, %cst_3 : f16
    %239 = math.atan %6 : tensor<8x13x3xf16>
    vector.print %121 : vector<8x13x3xf32>
    %240 = affine.for %arg2 = 0 to 33 iter_args(%arg3 = %119) -> (vector<1xi64>) {
      affine.yield %119 : vector<1xi64>
    }
    %241 = index.floordivs %c9, %rank
    memref.assume_alignment %216, 1 : memref<11x3xi64>
    %242 = index.sizeof
    %243 = vector.flat_transpose %137 {columns = 11 : i32, rows = 1 : i32} : vector<11xi64> -> vector<11xi64>
    %244 = math.tanh %4 : tensor<8x3xf16>
    memref.store %c468411168_i32, %alloc_11[%c4, %c0] : memref<8x3xi32>
    %expanded_32 = tensor.expand_shape %splat [[0], [1, 2]] : tensor<11x3xi64> into tensor<11x3x1xi64>
    %245 = arith.ceildivsi %c2015405231_i64, %c1710974591_i64 : i64
    %246 = index.add %rank, %c8
    %247 = vector.shuffle %243, %119 [0, 3, 6, 7, 8, 11] : vector<11xi64>, vector<1xi64>
    %248 = index.ceildivu %242, %rank_27
    %249 = math.floor %cst_2 : f32
    %rank_33 = tensor.rank %9 : tensor<8x3xi1>
    %alloc_34 = memref.alloc() : memref<8x13x3xi32>
    memref.copy %148, %alloc_34 : memref<8x13x3xi32> to memref<8x13x3xi32>
    %250 = math.round %15 : tensor<11x3xf16>
    bufferization.dealloc_tensor %168 : tensor<8xi32>
    %251 = arith.ceildivsi %c468411168_i32, %c16122441_i32 : i32
    %252 = arith.divf %cst_1, %cst_2 : f32
    %253 = tensor.empty() : tensor<i32>
    %254 = linalg.copy ins(%22 : tensor<i32>) outs(%253 : tensor<i32>) -> tensor<i32>
    %255 = tensor.empty() : tensor<3x11xi64>
    %transposed_35 = linalg.transpose ins(%135 : memref<11x3xi64>) outs(%255 : tensor<3x11xi64>) permutation = [1, 0] 
    %alloc_36 = memref.alloc() : memref<11xi64>
    linalg.reduce ins(%255 : tensor<3x11xi64>) outs(%alloc_36 : memref<11xi64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        %258 = math.round %cst : f32
        %259 = math.atan2 %0, %0 : tensor<11x3xf32>
        %260 = vector.broadcast %cst_2 : f32 to vector<13x3xf32>
        %261 = vector.insert %260, %121 [5] : vector<13x3xf32> into vector<8x13x3xf32>
        %262 = vector.bitcast %101 : vector<3xf32> to vector<3xf32>
        %263 = tensor.empty(%rank) : tensor<?x3xi1>
        %264 = math.tanh %from_elements : tensor<8x13x3xf32>
        %265 = arith.maxsi %220, %c1963310662_i64 : i64
        %266 = affine.if affine_set<(d0, d1, d2, d3) : (d1 ceildiv 2 + 32 >= 0, -d3 >= 0, d1 ceildiv 2 + 32 == 0)>(%c3, %c9, %c12, %c4) -> i16 {
          %c1_i64_38 = arith.constant 1 : i64
          %267 = vector.transfer_read %142[%c4, %c0, %74], %c1_i64_38 : memref<8x13x3xi64>, vector<3x8xi64>
          %extracted = tensor.extract %splat[%c1, %c0] : tensor<11x3xi64>
          %268 = arith.maxsi %c1_i64, %c1_i64 : i64
          %269 = math.fpowi %cst_3, %c16122441_i32 : f16, i32
          memref.store %c896_i16, %116[%c1, %c4, %c0] : memref<8x13x3xi16>
          %270 = math.log1p %cst_3 : f16
          %271 = bufferization.clone %alloc_14 : memref<11x3xi64> to memref<11x3xi64>
          %272 = memref.realloc %alloc_36 : memref<11xi64> to memref<11xi64>
          affine.yield %179 : i16
        } else {
          %267 = memref.load %142[%c5, %c5, %c1] : memref<8x13x3xi64>
          vector.print %20 : vector<11xi64>
          %268 = arith.xori %c767271615_i32, %c468411168_i32 : i32
          memref.copy %alloc_10, %116 : memref<8x13x3xi16> to memref<8x13x3xi16>
          %inserted_38 = tensor.insert %c16122441_i32 into %23[] : tensor<i32>
          %269 = math.absf %15 : tensor<11x3xf16>
          %270 = index.ceildivu %50, %c10
          %alloc_39 = memref.alloc() : memref<3x13xf16>
          affine.yield %179 : i16
        }
        %c1_i64_37 = arith.constant 1 : i64
        linalg.yield %c1_i64_37 : i64
      }
    %256 = scf.parallel (%arg2, %arg3) = (%rank_31, %c0) to (%50, %75) step (%c1, %c15) init (%14) -> tensor<3x13xi1> {
      %258 = arith.minui %c767271615_i32, %c16122441_i32 : i32
      %259 = arith.mulf %51, %cst_2 : f32
      %260 = math.log %4 : tensor<8x3xf16>
      %261 = vector.bitcast %243 : vector<11xi64> to vector<11xi64>
      %262 = scf.while (%arg4 = %121) : (vector<8x13x3xf32>) -> vector<8x13x3xf32> {
        %276 = math.exp2 %0 : tensor<11x3xf32>
        %277 = math.log1p %cst_3 : f16
        %expanded_37 = tensor.expand_shape %0 [[0], [1, 2]] : tensor<11x3xf32> into tensor<11x3x1xf32>
        %278 = math.atan2 %from_elements, %from_elements : tensor<8x13x3xf32>
        %279 = vector.bitcast %66 : vector<8x3xi64> to vector<8x3xi64>
        %280 = vector.flat_transpose %101 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
        %c25342_i16 = arith.constant 25342 : i16
        %281 = arith.shrsi %c767271615_i32, %c468411168_i32 : i32
        scf.condition(%false) %223 : vector<8x13x3xf32>
      } do {
      ^bb0(%arg4: vector<8x13x3xf32>):
        %276 = arith.remsi %220, %c2015405231_i64 : i64
        %277 = math.roundeven %0 : tensor<11x3xf32>
        %278 = vector.broadcast %246 : index to vector<11xindex>
        %279 = vector.broadcast %true : i1 to vector<11xi1>
        %280 = vector.broadcast %cst_0 : f16 to vector<11xf16>
        vector.scatter %alloc_13[%c4, %c1] [%278], %279, %280 : memref<8x3xf16>, vector<11xindex>, vector<11xi1>, vector<11xf16>
        %281 = arith.divsi %c247436524_i64, %60 : i64
        %282 = affine.max affine_map<(d0, d1) -> (d0, 16, 0)>(%c2, %46)
        memref.copy %191, %alloc_14 : memref<11x3xi64> to memref<11x3xi64>
        %283 = math.exp2 %15 : tensor<11x3xf16>
        %284 = arith.subi %c468411168_i32, %c468411168_i32 : i32
        %false_37 = arith.constant false
        %false_38 = arith.constant false
        %285 = vector.transfer_read %9[%242, %c4], %false_38 : tensor<8x3xi1>, vector<i1>
        %286 = arith.maxsi %179, %89 : i16
        affine.store %cst_1, %alloc_17[%c3, %c3, %c11] : memref<8x13x3xf32>
        %287 = math.sqrt %0 : tensor<11x3xf32>
        %inserted_39 = tensor.insert %c-25185_i16 into %expanded_21[%c1, %c0, %c0] : tensor<11x3x1xi16>
        %288 = arith.ori %c1963310662_i64, %c1710974591_i64 : i64
        %289 = vector.multi_reduction <minf>, %38, %101 [0, 1] : vector<8x13x3xf32> to vector<3xf32>
        %290 = index.ceildivu %228, %183
        scf.yield %223 : vector<8x13x3xf32>
      }
      %263 = math.tanh %0 : tensor<11x3xf32>
      %264 = vector.broadcast %cst : f32 to vector<8x13x11xf32>
      %265 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %120, %177, %264 : vector<8x13x3xf32>, vector<11x3xf32> into vector<8x13x11xf32>
      %266 = vector.multi_reduction <or>, %243, %c2015405231_i64 [0] : vector<11xi64> to i64
      %267 = arith.muli %c1963310662_i64, %c247436524_i64 : i64
      %268 = vector.broadcast %51 : f32 to vector<8x13x3xf32>
      %269 = vector.fma %268, %49, %223 : vector<8x13x3xf32>
      bufferization.dealloc_tensor %6 : tensor<8x13x3xf16>
      %270 = index.add %c13, %c11
      %271 = math.cttz %transposed : tensor<3x8x13xi32>
      %272 = arith.ori %true_22, %false : i1
      %273 = index.maxs %74, %183
      %274 = index.floordivs %75, %arg3
      %275 = tensor.empty() : tensor<3x13xi1>
      scf.reduce(%275)  : tensor<3x13xi1> {
      ^bb0(%arg4: tensor<3x13xi1>, %arg5: tensor<3x13xi1>):
        %276 = math.fpowi %0, %11 : tensor<11x3xf32>, tensor<11x3xi32>
        %277 = arith.divf %cst_3, %cst_3 : f16
        %278 = vector.multi_reduction <add>, %224, %101 [0, 1] : vector<8x13x3xf32> to vector<3xf32>
        memref.assume_alignment %alloc_14, 2 : memref<11x3xi64>
        %279 = arith.xori %c2015405231_i64, %c2015405231_i64 : i64
        %280 = tensor.empty() : tensor<3x11xf16>
        %281 = tensor.empty() : tensor<11x11xf16>
        %282 = linalg.matmul ins(%15, %280 : tensor<11x3xf16>, tensor<3x11xf16>) outs(%281 : tensor<11x11xf16>) -> tensor<11x11xf16>
        %alloc_37 = memref.alloc() : memref<8x13x3xi16>
        %283 = arith.subi %179, %c-25185_i16 : i16
        %284 = tensor.empty() : tensor<3x13xi1>
        scf.reduce.return %284 : tensor<3x13xi1>
      }
      scf.yield
    }
    %257 = affine.vector_load %142[%c3, %183, %rank_27] : memref<8x13x3xi64>, vector<3xi64>
    affine.vector_store %147, %135[%228, %rank_31] : memref<11x3xi64>, vector<3xi64>
    vector.print %20 : vector<11xi64>
    vector.print %37 : vector<8x13x3xf32>
    vector.print %38 : vector<8x13x3xf32>
    vector.print %47 : vector<8x3xf32>
    vector.print %49 : vector<8x13x3xf32>
    vector.print %55 : vector<8x3xi64>
    vector.print %65 : vector<11xi64>
    vector.print %66 : vector<8x3xi64>
    vector.print %81 : vector<i32>
    vector.print %85 : vector<11xi64>
    vector.print %97 : vector<3xi64>
    vector.print %101 : vector<3xf32>
    vector.print %119 : vector<1xi64>
    vector.print %120 : vector<8x13x3xf32>
    vector.print %121 : vector<8x13x3xf32>
    vector.print %137 : vector<11xi64>
    vector.print %147 : vector<3xi64>
    vector.print %149 : vector<8x3xi64>
    vector.print %160 : vector<8x13x3xi16>
    vector.print %177 : vector<11x3xf32>
    vector.print %178 : vector<11x3xf32>
    vector.print %194 : vector<6x3xf32>
    vector.print %202 : vector<1xi64>
    vector.print %211 : vector<8xi64>
    vector.print %223 : vector<8x13x3xf32>
    vector.print %224 : vector<8x13x3xf32>
    vector.print %226 : vector<8x13x3xi1>
    vector.print %243 : vector<11xi64>
    vector.print %257 : vector<3xi64>
    vector.print %cst : f32
    vector.print %cst_0 : f16
    vector.print %c896_i16 : i16
    vector.print %cst_1 : f32
    vector.print %c2015405231_i64 : i64
    vector.print %c767271615_i32 : i32
    vector.print %c247436524_i64 : i64
    vector.print %false : i1
    vector.print %cst_2 : f32
    vector.print %cst_3 : f16
    vector.print %c16122441_i32 : i32
    vector.print %c-25185_i16 : i16
    vector.print %c1963310662_i64 : i64
    vector.print %c1710974591_i64 : i64
    vector.print %c468411168_i32 : i32
    vector.print %true : i1
    vector.print %51 : f32
    vector.print %60 : i64
    vector.print %true_22 : i1
    vector.print %89 : i16
    vector.print %179 : i16
    vector.print %c1_i64 : i64
    vector.print %220 : i64
    return
  }
}
