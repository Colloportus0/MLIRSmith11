module {
  func.func private @func1(%arg0: memref<11x4x16xi64>, %arg1: vector<4x11xi1>) {
    %c1477322855_i32 = arith.constant 1477322855 : i32
    %false = arith.constant false
    %c118904530_i32 = arith.constant 118904530 : i32
    %cst = arith.constant 1.333600e+04 : f16
    %cst_0 = arith.constant 1.37944307E+9 : f32
    %c1829376760_i64 = arith.constant 1829376760 : i64
    %c-20887_i16 = arith.constant -20887 : i16
    %c2005209551_i32 = arith.constant 2005209551 : i32
    %cst_1 = arith.constant 0x4CB9DA57 : f32
    %cst_2 = arith.constant 3.888000e+04 : f16
    %cst_3 = arith.constant 4.720000e+03 : f16
    %c1694361209_i64 = arith.constant 1694361209 : i64
    %c-13043_i16 = arith.constant -13043 : i16
    %c1234797326_i64 = arith.constant 1234797326 : i64
    %true = arith.constant true
    %c1780117628_i32 = arith.constant 1780117628 : i32
    %0 = tensor.empty() : tensor<11xi64>
    %1 = tensor.empty() : tensor<4xf16>
    %2 = tensor.empty() : tensor<4x11xi64>
    %3 = tensor.empty() : tensor<4x11xi64>
    %4 = tensor.empty() : tensor<11xf16>
    %5 = tensor.empty() : tensor<4x11xi16>
    %6 = tensor.empty() : tensor<4x11xf16>
    %7 = tensor.empty() : tensor<11x4x16xi32>
    %8 = tensor.empty() : tensor<11xf32>
    %9 = tensor.empty() : tensor<4x11xf32>
    %10 = tensor.empty() : tensor<11xi16>
    %11 = tensor.empty() : tensor<4x11xf32>
    %12 = tensor.empty() : tensor<11x4x16xi16>
    %13 = tensor.empty() : tensor<11xi16>
    %14 = tensor.empty() : tensor<11xf32>
    %15 = tensor.empty() : tensor<4x11xi16>
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
    %alloc = memref.alloc() : memref<4x11xf32>
    %alloc_4 = memref.alloc() : memref<4x11xi64>
    %alloc_5 = memref.alloc() : memref<4x11xi16>
    %alloc_6 = memref.alloc() : memref<4x11xi32>
    %alloc_7 = memref.alloc() : memref<4xf32>
    %alloc_8 = memref.alloc() : memref<11xf16>
    %alloc_9 = memref.alloc() : memref<11xi32>
    %alloc_10 = memref.alloc() : memref<4xf32>
    %alloc_11 = memref.alloc() : memref<4x11xi32>
    %alloc_12 = memref.alloc() : memref<11xi64>
    %alloc_13 = memref.alloc() : memref<4x11xi32>
    %alloc_14 = memref.alloc() : memref<11x4x16xi32>
    %alloc_15 = memref.alloc() : memref<4xi32>
    %alloc_16 = memref.alloc() : memref<4xi16>
    %alloc_17 = memref.alloc() : memref<4x11xi64>
    %alloc_18 = memref.alloc() : memref<4x11xi64>
    %16 = tensor.empty() : tensor<11xi64>
    %17 = linalg.copy ins(%0 : tensor<11xi64>) outs(%16 : tensor<11xi64>) -> tensor<11xi64>
    %alloc_19 = memref.alloc() : memref<11xf32>
    linalg.transpose ins(%8 : tensor<11xf32>) outs(%alloc_19 : memref<11xf32>) permutation = [0] 
    %alloc_20 = memref.alloc() : memref<f16>
    linalg.reduce ins(%1 : tensor<4xf16>) outs(%alloc_20 : memref<f16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %256 = index.casts %c2005209551_i32 : i32 to index
        %257 = tensor.empty() : tensor<4xf32>
        %mapped = linalg.map ins(%alloc_7 : memref<4xf32>) outs(%257 : tensor<4xf32>)
          (%in_40: f32) {
            %263 = arith.minui %c-13043_i16, %c-13043_i16 : i16
            %264 = vector.broadcast %c-13043_i16 : i16 to vector<11xi16>
            %265 = vector.broadcast %in_40 : f32 to vector<4x11xf32>
            %266 = vector.fma %265, %265, %265 : vector<4x11xf32>
            %267 = math.tan %8 : tensor<11xf32>
            %268 = arith.addf %cst, %cst_3 : f16
            %269 = index.casts %c8 : index to i32
            %270 = math.atan2 %14, %14 : tensor<11xf32>
            %271 = arith.shrui %c-13043_i16, %c-20887_i16 : i16
            %272 = affine.load %alloc_6[%c9, %c6] : memref<4x11xi32>
            %273 = memref.realloc %alloc_15 : memref<4xi32> to memref<4xi32>
            %splat_41 = tensor.splat %in : tensor<4xf16>
            %274 = index.add %c3, %c8
            %275 = vector.shuffle %266, %266 [4, 7] : vector<4x11xf32>, vector<4x11xf32>
            %splat_42 = tensor.splat %in : tensor<4x11xf16>
            %276 = math.sqrt %in_40 : f32
            %277 = index.maxu %c10, %c10
            %278 = math.ipowi %15, %15 : tensor<4x11xi16>
            %279 = arith.addi %c-13043_i16, %c-13043_i16 : i16
            %280 = memref.load %alloc_12[%c0] : memref<11xi64>
            %281 = math.log1p %in_40 : f32
            %282 = memref.atomic_rmw minu %c1234797326_i64, %alloc_12[%c9] : (i64, memref<11xi64>) -> i64
            %283 = arith.shrsi %c-13043_i16, %c-20887_i16 : i16
            %284 = index.castu %c1829376760_i64 : i64 to index
            affine.store %c1234797326_i64, %alloc_18[%c12, %c2] : memref<4x11xi64>
            %285 = math.round %cst_3 : f16
            %286 = math.exp %4 : tensor<11xf16>
            affine.store %c1234797326_i64, %alloc_12[%c14] : memref<11xi64>
            %287 = index.maxu %c0, %c8
            %288 = arith.addi %c1780117628_i32, %c2005209551_i32 : i32
            %289 = math.rsqrt %4 : tensor<11xf16>
            %290 = math.log10 %9 : tensor<4x11xf32>
            %291 = index.maxs %c13, %256
            %292 = math.log %8 : tensor<11xf32>
            %cst_43 = arith.constant 1.000000e+00 : f32
            linalg.yield %cst_43 : f32
          }
        %258 = arith.shli %c1780117628_i32, %c118904530_i32 : i32
        %259 = arith.floordivsi %c1780117628_i32, %c118904530_i32 : i32
        %260 = math.absi %c1780117628_i32 : i32
        %261 = arith.shrui %c118904530_i32, %c1477322855_i32 : i32
        bufferization.dealloc_tensor %17 : tensor<11xi64>
        %262 = arith.minsi %c1477322855_i32, %c118904530_i32 : i32
        %cst_39 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_39 : f16
      }
    scf.parallel (%arg2, %arg3) = (%c6, %c11) to (%c5, %c10) step (%c2, %c14) {
      %256 = math.exp %cst_2 : f16
      %257 = math.rsqrt %9 : tensor<4x11xf32>
      %258 = math.exp %8 : tensor<11xf32>
      %259 = affine.if affine_set<(d0) : (d0 + 127 >= 0, d0 * 16 == 0, 0 == 0, d0 >= 0)>(%c9) -> i32 {
        %272 = bufferization.clone %alloc_7 : memref<4xf32> to memref<4xf32>
        affine.store %c1477322855_i32, %alloc_15[%c7] : memref<4xi32>
        %273 = math.ceil %4 : tensor<11xf16>
        %274 = arith.cmpi ule, %c-20887_i16, %c-20887_i16 : i16
        %275 = math.rsqrt %1 : tensor<4xf16>
        %276 = index.casts %true : i1 to index
        %277 = vector.broadcast %false : i1 to vector<16x16x15xi1>
        %278 = vector.broadcast %true : i1 to vector<16x15xi1>
        %dest_40, %accumulated_value_41 = vector.scan <minui>, %277, %278 {inclusive = false, reduction_dim = 1 : i64} : vector<16x16x15xi1>, vector<16x15xi1>
        %279 = arith.minsi %c118904530_i32, %c1477322855_i32 : i32
        affine.yield %c118904530_i32 : i32
      } else {
        %272 = arith.minf %cst_3, %cst_2 : f16
        %273 = memref.atomic_rmw maxs %c1829376760_i64, %alloc_4[%c2, %c4] : (i64, memref<4x11xi64>) -> i64
        %274 = math.ctlz %13 : tensor<11xi16>
        %275 = math.atan2 %1, %1 : tensor<4xf16>
        %276 = arith.maxui %c1694361209_i64, %c1829376760_i64 : i64
        %277 = vector.broadcast %cst_1 : f32 to vector<11xf32>
        %278 = vector.matrix_multiply %277, %277 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xf32>, vector<11xf32>) -> vector<1xf32>
        %279 = arith.addf %cst, %cst : f16
        %280 = math.log10 %cst : f16
        affine.yield %c1477322855_i32 : i32
      }
      %260 = arith.minui %c1694361209_i64, %c1234797326_i64 : i64
      %261 = scf.while (%arg4 = %c1694361209_i64) : (i64) -> i64 {
        %272 = arith.xori %c1694361209_i64, %c1694361209_i64 : i64
        %c0_i64_40 = arith.constant 0 : i64
        %273 = vector.transfer_read %alloc_17[%c6, %c9], %c0_i64_40 : memref<4x11xi64>, vector<i64>
        %274 = bufferization.clone %alloc_17 : memref<4x11xi64> to memref<4x11xi64>
        %275 = affine.max affine_map<(d0) -> (0, 6, d0 * 128 - 32, 0)>(%c4)
        %276 = vector.broadcast %c-20887_i16 : i16 to vector<1xi16>
        %277 = vector.extract_strided_slice %276 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi16> to vector<1xi16>
        %splat_41 = tensor.splat %c0_i64_40 : tensor<11x4x16xi64>
        %278 = arith.xori %c1829376760_i64, %c1829376760_i64 : i64
        %279 = index.casts %c1829376760_i64 : i64 to index
        scf.condition(%true) %c0_i64_40 : i64
      } do {
      ^bb0(%arg4: i64):
        %collapsed_40 = tensor.collapse_shape %6 [[0, 1]] : tensor<4x11xf16> into tensor<44xf16>
        %272 = vector.load %alloc_18[%c0, %c2] : memref<4x11xi64>, vector<4xi64>
        %273 = math.cttz %15 : tensor<4x11xi16>
        %274 = index.floordivs %c5, %c12
        %275 = math.absi %13 : tensor<11xi16>
        %rank_41 = tensor.rank %16 : tensor<11xi64>
        %276 = vector.insert %c1829376760_i64, %272 [3] : i64 into vector<4xi64>
        %277 = vector.create_mask %c12 : vector<4xi1>
        %278 = arith.maxf %cst, %cst : f16
        %279 = arith.divf %cst_2, %cst : f16
        %280 = affine.min affine_map<(d0) -> ((d0 floordiv 4 + d0) floordiv 64, d0 * -2 + d0 floordiv 4 - (d0 * 2 + 32))>(%c5)
        %281 = arith.addf %cst_0, %cst_0 : f32
        %extracted_42 = tensor.extract %14[%c7] : tensor<11xf32>
        bufferization.dealloc_tensor %3 : tensor<4x11xi64>
        memref.store %c-20887_i16, %alloc_16[%c3] : memref<4xi16>
        %282 = math.log2 %11 : tensor<4x11xf32>
        scf.yield %arg4 : i64
      }
      %262 = arith.xori %c1234797326_i64, %c1234797326_i64 : i64
      %collapsed_39 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<11x4x16xi16> into tensor<44x16xi16>
      %263 = tensor.empty() : tensor<4x11xi32>
      %264 = math.fpowi %11, %263 : tensor<4x11xf32>, tensor<4x11xi32>
      %265 = bufferization.clone %alloc_11 : memref<4x11xi32> to memref<4x11xi32>
      %266 = arith.xori %c-13043_i16, %c-13043_i16 : i16
      %267 = arith.floordivsi %false, %false : i1
      %268 = index.maxs %c5, %c5
      %269 = math.absf %11 : tensor<4x11xf32>
      %270 = arith.minui %c2005209551_i32, %c118904530_i32 : i32
      %271 = arith.muli %c2005209551_i32, %c118904530_i32 : i32
      scf.yield
    }
    %18 = affine.vector_load %alloc_7[%c1] : memref<4xf32>, vector<16xf32>
    affine.vector_store %18, %alloc[%c8, %c6] : memref<4x11xf32>, vector<16xf32>
    %alloc_21 = memref.alloc() : memref<11xi64>
    %19 = tensor.empty() : tensor<i64>
    %20 = linalg.dot ins(%17, %alloc_21 : tensor<11xi64>, memref<11xi64>) outs(%19 : tensor<i64>) -> tensor<i64>
    %21 = math.copysign %14, %14 : tensor<11xf32>
    %22 = arith.muli %c1234797326_i64, %c1694361209_i64 : i64
    %23 = arith.cmpi ult, %c-20887_i16, %c-20887_i16 : i16
    %24 = arith.negf %cst_3 : f16
    %25 = arith.shli %false, %false : i1
    %26 = index.add %c12, %c7
    %27 = bufferization.to_tensor %alloc_5 : memref<4x11xi16>
    %28 = arith.maxui %false, %true : i1
    %29 = affine.min affine_map<(d0) -> (d0 + 80)>(%c15)
    %30 = memref.atomic_rmw andi %c1694361209_i64, %alloc_17[%c0, %c5] : (i64, memref<4x11xi64>) -> i64
    %31 = math.log10 %8 : tensor<11xf32>
    %splat = tensor.splat %c-13043_i16 : tensor<11xi16>
    %32 = arith.remf %cst_3, %cst_3 : f16
    %33 = arith.maxf %cst_3, %cst : f16
    %34 = vector.create_mask %c10 : vector<4xi1>
    %35 = index.add %c10, %c14
    %36 = arith.shli %c1694361209_i64, %c1694361209_i64 : i64
    %37 = index.sub %c8, %26
    %38 = affine.if affine_set<(d0) : (((d0 + 16) floordiv 128) mod 128 + d0 + 16 >= 0, ((d0 + 16) floordiv 128) mod 128 == 0, ((d0 + 16) floordiv 128) mod 128 + d0 + 16 == 0)>(%c6) -> i16 {
      %256 = vector.broadcast %c2005209551_i32 : i32 to vector<16x15x16xi32>
      %257 = vector.broadcast %c118904530_i32 : i32 to vector<15x16xi32>
      %dest_39, %accumulated_value_40 = vector.scan <add>, %256, %257 {inclusive = false, reduction_dim = 0 : i64} : vector<16x15x16xi32>, vector<15x16xi32>
      %258 = vector.shuffle %34, %34 [1, 2, 3, 5, 6, 7] : vector<4xi1>, vector<4xi1>
      %259 = arith.cmpf ole, %cst, %cst_2 : f16
      %260 = math.roundeven %6 : tensor<4x11xf16>
      %261 = math.exp %cst_3 : f16
      %262 = math.copysign %6, %6 : tensor<4x11xf16>
      %263 = vector.transpose %34, [0] : vector<4xi1> to vector<4xi1>
      %264 = tensor.empty() : tensor<f16>
      %mapped = linalg.map ins(%alloc_20, %alloc_20 : memref<f16>, memref<f16>) outs(%264 : tensor<f16>)
        (%in: f16, %in_41: f16) {
          %265 = arith.floordivsi %c118904530_i32, %c1780117628_i32 : i32
          affine.store %c1477322855_i32, %alloc_6[%c15, %c6] : memref<4x11xi32>
          %266 = arith.negf %in : f16
          %cast_42 = tensor.cast %5 : tensor<4x11xi16> to tensor<?x?xi16>
          %267 = arith.minui %c1477322855_i32, %c1477322855_i32 : i32
          %268 = index.maxu %c0, %c3
          memref.store %c1477322855_i32, %alloc_9[%c3] : memref<11xi32>
          %269 = vector.broadcast %cst_0 : f32 to vector<16x16xf32>
          %270 = vector.outerproduct %18, %18, %269 {kind = #vector.kind<mul>} : vector<16xf32>, vector<16xf32>
          %271 = index.maxs %29, %c4
          %272 = memref.realloc %alloc_19 : memref<11xf32> to memref<16xf32>
          %273 = vector.reduction <minui>, %34 : vector<4xi1> into i1
          %274 = index.ceildivs %c9, %271
          %275 = vector.broadcast %true : i1 to vector<4x4xi1>
          %276 = vector.outerproduct %34, %34, %275 {kind = #vector.kind<add>} : vector<4xi1>, vector<4xi1>
          %277 = arith.xori %c1780117628_i32, %c118904530_i32 : i32
          %278 = vector.load %alloc_4[%c3, %c7] : memref<4x11xi64>, vector<4x11xi64>
          %279 = vector.broadcast %29 : index to vector<16xindex>
          %280 = vector.broadcast %true : i1 to vector<16xi1>
          %281 = vector.broadcast %c-13043_i16 : i16 to vector<16xi16>
          vector.scatter %alloc_16[%c0] [%279], %280, %281 : memref<4xi16>, vector<16xindex>, vector<16xi1>, vector<16xi16>
          %282 = math.sqrt %1 : tensor<4xf16>
          %283 = arith.xori %c1780117628_i32, %c2005209551_i32 : i32
          memref.store %cst_2, %alloc_8[%c1] : memref<11xf16>
          vector.print %278 : vector<4x11xi64>
          %284 = math.ipowi %15, %15 : tensor<4x11xi16>
          %285 = vector.shuffle %18, %18 [5, 6, 7, 8, 13, 15, 16, 17, 18, 20, 23, 24, 26, 28, 29, 30] : vector<16xf32>, vector<16xf32>
          %286 = arith.maxsi %c2005209551_i32, %c1780117628_i32 : i32
          %287 = math.log1p %cst_2 : f16
          %288 = math.fma %cst_2, %cst_3, %in : f16
          %extracted_43 = tensor.extract %17[%c8] : tensor<11xi64>
          affine.store %c118904530_i32, %alloc_11[%c12, %c6] : memref<4x11xi32>
          %289 = vector.create_mask %c2 : vector<11xi1>
          %290 = math.exp2 %9 : tensor<4x11xf32>
          %291 = math.rsqrt %11 : tensor<4x11xf32>
          %292 = vector.broadcast %c15 : index to vector<15xindex>
          %293 = vector.broadcast %false : i1 to vector<15xi1>
          %294 = vector.broadcast %c1694361209_i64 : i64 to vector<15xi64>
          vector.scatter %alloc_17[%c3, %c8] [%292], %293, %294 : memref<4x11xi64>, vector<15xindex>, vector<15xi1>, vector<15xi64>
          %295 = math.exp %cst : f16
          %cst_44 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_44 : f16
        }
      affine.yield %c-20887_i16 : i16
    } else {
      scf.index_switch %37 
      case 1 {
        %262 = math.atan %1 : tensor<4xf16>
        %263 = math.cttz %15 : tensor<4x11xi16>
        %264 = index.castu %c8 : index to i32
        %265 = math.log10 %6 : tensor<4x11xf16>
        %266 = vector.splat %c2005209551_i32 : vector<11xi32>
        %collapsed_39 = tensor.collapse_shape %3 [[0, 1]] : tensor<4x11xi64> into tensor<44xi64>
        %267 = arith.cmpi ugt, %c1477322855_i32, %c2005209551_i32 : i32
        %268 = vector.extract_strided_slice %18 {offsets = [14], sizes = [2], strides = [1]} : vector<16xf32> to vector<2xf32>
        %269 = arith.mulf %cst_1, %cst_0 : f32
        %270 = math.atan2 %1, %1 : tensor<4xf16>
        %271 = math.round %14 : tensor<11xf32>
        %272 = math.absf %11 : tensor<4x11xf32>
        %273 = arith.shrui %c1780117628_i32, %c1477322855_i32 : i32
        %from_elements = tensor.from_elements %cst_1, %cst_0, %cst_1, %cst_0, %cst_0, %cst_1, %cst_1, %cst_0, %cst_1, %cst_1, %cst_1 : tensor<11xf32>
        %274 = math.ceil %9 : tensor<4x11xf32>
        %275 = arith.floordivsi %c1829376760_i64, %c1234797326_i64 : i64
        scf.yield
      }
      case 2 {
        %cast_39 = tensor.cast %27 : tensor<4x11xi16> to tensor<?x?xi16>
        %rank_40 = tensor.rank %4 : tensor<11xf16>
        %262 = vector.insertelement %cst_0, %18[%26 : index] : vector<16xf32>
        %263 = math.exp %cst_1 : f32
        %264 = vector.matrix_multiply %18, %18 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xf32>, vector<16xf32>) -> vector<1xf32>
        %265 = memref.atomic_rmw addi %c1234797326_i64, %alloc_18[%c3, %c2] : (i64, memref<4x11xi64>) -> i64
        %266 = math.ctlz %c2005209551_i32 : i32
        %267 = index.sub %c12, %rank_40
        %268 = arith.divf %cst, %cst_2 : f16
        %269 = vector.broadcast %c13 : index to vector<11xindex>
        %270 = vector.broadcast %true : i1 to vector<11xi1>
        %271 = vector.broadcast %cst_2 : f16 to vector<11xf16>
        vector.scatter %alloc_8[%c8] [%269], %270, %271 : memref<11xf16>, vector<11xindex>, vector<11xi1>, vector<11xf16>
        %272 = vector.extract_strided_slice %264 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
        %273 = math.powf %11, %11 : tensor<4x11xf32>
        %274 = arith.remf %cst_1, %cst_0 : f32
        %275 = index.floordivs %c7, %c12
        %extracted_41 = tensor.extract %8[%c6] : tensor<11xf32>
        %276 = vector.shuffle %18, %272 [1, 2, 3, 4, 6, 7, 8, 10, 13, 15, 16] : vector<16xf32>, vector<1xf32>
        scf.yield
      }
      case 3 {
        %262 = arith.addf %cst_2, %cst_2 : f16
        %263 = index.floordivs %35, %c6
        %264 = arith.maxf %cst_1, %cst_0 : f32
        %265 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %18, %18, %cst_1 : vector<16xf32>, vector<16xf32> into f32
        %266 = arith.divf %cst_3, %cst_3 : f16
        %267 = math.log1p %8 : tensor<11xf32>
        memref.store %c1234797326_i64, %alloc_12[%c2] : memref<11xi64>
        %268 = arith.divui %c118904530_i32, %c118904530_i32 : i32
        %269 = math.fma %14, %14, %8 : tensor<11xf32>
        bufferization.dealloc_tensor %4 : tensor<11xf16>
        %270 = index.maxu %c1, %c7
        %271 = vector.insertelement %true, %34[%29 : index] : vector<4xi1>
        %272 = memref.atomic_rmw addi %c2005209551_i32, %alloc_11[%c3, %c4] : (i32, memref<4x11xi32>) -> i32
        %273 = vector.matrix_multiply %34, %34 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
        %274 = index.divs %c2, %c13
        %275 = index.divu %c8, %c1
        scf.yield
      }
      case 4 {
        %262 = arith.addi %c1234797326_i64, %c1829376760_i64 : i64
        %263 = vector.broadcast %c2 : index to vector<16xindex>
        %264 = vector.broadcast %true : i1 to vector<16xi1>
        %265 = vector.broadcast %c-13043_i16 : i16 to vector<16xi16>
        vector.scatter %alloc_16[%c3] [%263], %264, %265 : memref<4xi16>, vector<16xindex>, vector<16xi1>, vector<16xi16>
        %266 = math.roundeven %cst_3 : f16
        %267 = index.casts %c8 : index to i32
        %268 = math.log10 %6 : tensor<4x11xf16>
        %269 = arith.muli %c1234797326_i64, %c1829376760_i64 : i64
        %270 = math.cos %cst : f16
        %271 = arith.floordivsi %c1477322855_i32, %c2005209551_i32 : i32
        affine.store %cst_1, %alloc_7[%c2] : memref<4xf32>
        %272 = index.floordivs %c11, %37
        bufferization.dealloc_tensor %20 : tensor<i64>
        %273 = vector.broadcast %c1829376760_i64 : i64 to vector<16x15xi64>
        %274 = vector.broadcast %c1234797326_i64 : i64 to vector<16xi64>
        %dest_39, %accumulated_value_40 = vector.scan <maxsi>, %273, %274 {inclusive = false, reduction_dim = 1 : i64} : vector<16x15xi64>, vector<16xi64>
        %275 = arith.shli %c-13043_i16, %c-13043_i16 : i16
        %276 = index.add %c7, %c5
        %277 = index.maxs %37, %c12
        memref.store %c1234797326_i64, %alloc_4[%c2, %c1] : memref<4x11xi64>
        scf.yield
      }
      default {
        %262 = math.round %9 : tensor<4x11xf32>
        %263 = math.log2 %cst_3 : f16
        %264 = vector.broadcast %37 : index to vector<15xindex>
        %265 = vector.broadcast %true : i1 to vector<15xi1>
        %266 = vector.broadcast %c1234797326_i64 : i64 to vector<15xi64>
        vector.scatter %alloc_17[%c0, %c2] [%264], %265, %266 : memref<4x11xi64>, vector<15xindex>, vector<15xi1>, vector<15xi64>
        %267 = vector.broadcast %29 : index to vector<4xindex>
        %268 = vector.broadcast %cst_3 : f16 to vector<4xf16>
        vector.scatter %alloc_20[] [%267], %34, %268 : memref<f16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
        %269 = arith.addf %cst_1, %cst_1 : f32
        %270 = arith.floordivsi %false, %false : i1
        %271 = arith.minsi %c1829376760_i64, %c1694361209_i64 : i64
        %272 = arith.cmpf oeq, %cst_1, %cst_0 : f32
        %273 = arith.addf %cst_2, %cst : f16
        %274 = arith.cmpf olt, %cst_1, %cst_0 : f32
        %275 = bufferization.clone %alloc_10 : memref<4xf32> to memref<4xf32>
        %276 = math.expm1 %4 : tensor<11xf16>
        %277 = arith.minui %false, %false : i1
        %false_39 = index.bool.constant false
        %278 = index.castu %true : i1 to index
        affine.store %c-20887_i16, %alloc_16[%c12] : memref<4xi16>
      }
      memref.store %cst, %alloc_20[] : memref<f16>
      %256 = bufferization.clone %alloc_20 : memref<f16> to memref<f16>
      %257 = math.log1p %4 : tensor<11xf16>
      %258 = arith.remf %cst, %cst_2 : f16
      %259 = arith.cmpi sge, %c1477322855_i32, %c2005209551_i32 : i32
      %260 = math.sqrt %8 : tensor<11xf32>
      %261 = vector.transpose %18, [0] : vector<16xf32> to vector<16xf32>
      affine.yield %c-13043_i16 : i16
    }
    %alloc_22 = memref.alloc() : memref<4xi16>
    memref.copy %alloc_16, %alloc_22 : memref<4xi16> to memref<4xi16>
    %39 = math.cttz %5 : tensor<4x11xi16>
    %40 = affine.load %alloc_21[%c14] : memref<11xi64>
    %41 = index.sub %c13, %c1
    %42 = math.exp %11 : tensor<4x11xf32>
    %43 = vector.load %alloc_11[%c0, %c7] : memref<4x11xi32>, vector<11xi32>
    %44 = vector.broadcast %c1780117628_i32 : i32 to vector<4x11xi32>
    %c1707995644_i32 = arith.constant 1707995644 : i32
    %45 = vector.broadcast %c-20887_i16 : i16 to vector<11xi16>
    %46 = vector.broadcast %false : i1 to vector<11xi1>
    %47 = vector.gather %alloc_16[%c1] [%43], %46, %45 : memref<4xi16>, vector<11xi32>, vector<11xi1>, vector<11xi16> into vector<11xi16>
    %48 = bufferization.clone %alloc_6 : memref<4x11xi32> to memref<4x11xi32>
    %splat_23 = tensor.splat %false : tensor<4xi1>
    %49 = scf.index_switch %c9 -> tensor<11x4x16xf32> 
    case 1 {
      %256 = arith.divf %cst_0, %cst_0 : f32
      %257 = math.absf %cst_0 : f32
      %alloca_39 = memref.alloca() : memref<4x11xf16>
      %258 = affine.for %arg2 = 0 to 108 iter_args(%arg3 = %12) -> (tensor<11x4x16xi16>) {
        affine.yield %arg3 : tensor<11x4x16xi16>
      }
      %259 = vector.splat %29 : vector<4x11xindex>
      %rank_40 = tensor.rank %4 : tensor<11xf16>
      %260 = math.ctlz %c1780117628_i32 : i32
      %261 = math.ctlz %splat : tensor<11xi16>
      %262 = arith.xori %c1829376760_i64, %c1829376760_i64 : i64
      %263 = arith.remf %cst_1, %cst_0 : f32
      %264 = arith.remsi %c-20887_i16, %c-13043_i16 : i16
      %265 = math.atan2 %cst_3, %cst_3 : f16
      %266 = math.ctlz %13 : tensor<11xi16>
      %267 = bufferization.clone %alloc_9 : memref<11xi32> to memref<11xi32>
      %268 = arith.remf %cst_3, %cst : f16
      %269 = vector.load %alloc_6[%c2, %c10] : memref<4x11xi32>, vector<4xi32>
      %270 = tensor.empty() : tensor<11x4x16xf32>
      scf.yield %270 : tensor<11x4x16xf32>
    }
    case 2 {
      %256 = vector.splat %40 : vector<11xi64>
      %257 = scf.execute_region -> index {
        %271 = memref.atomic_rmw ori %c-13043_i16, %alloc_5[%c0, %c8] : (i16, memref<4x11xi16>) -> i16
        %272 = vector.broadcast %c0 : index to vector<4xindex>
        %273 = vector.broadcast %40 : i64 to vector<4xi64>
        vector.scatter %alloc_21[%c8] [%272], %34, %273 : memref<11xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
        %274 = vector.insert %c-13043_i16, %45 [4] : i16 into vector<11xi16>
        %275 = index.divu %c6, %c8
        %276 = arith.minsi %c1234797326_i64, %40 : i64
        %277 = arith.remf %cst_2, %cst_3 : f16
        %278 = arith.minf %cst_0, %cst_1 : f32
        %279 = math.log2 %14 : tensor<11xf32>
        %280 = vector.insert %false, %46 [2] : i1 into vector<11xi1>
        %281 = index.sub %c2, %c12
        %collapsed_40 = tensor.collapse_shape %5 [[0, 1]] : tensor<4x11xi16> into tensor<44xi16>
        %282 = affine.load %alloc_17[%c5, %c0] : memref<4x11xi64>
        %283 = memref.atomic_rmw ori %c118904530_i32, %alloc_6[%c1, %c5] : (i32, memref<4x11xi32>) -> i32
        %284 = math.cttz %c1234797326_i64 : i64
        %285 = math.log10 %6 : tensor<4x11xf16>
        %286 = vector.shuffle %47, %45 [0, 2, 3, 5, 12, 13, 14, 18, 19, 21] : vector<11xi16>, vector<11xi16>
        scf.yield %c4 : index
      }
      %258 = vector.insert %false, %34 [0] : i1 into vector<4xi1>
      %259 = math.copysign %11, %11 : tensor<4x11xf32>
      %260 = arith.cmpi ult, %c-13043_i16, %c-13043_i16 : i16
      %261 = bufferization.clone %alloc_15 : memref<4xi32> to memref<4xi32>
      memref.store %c1477322855_i32, %alloc_6[%c0, %c10] : memref<4x11xi32>
      %262 = affine.if affine_set<(d0, d1, d2, d3) : ((d2 + d3 * 2 - 4) ceildiv 8 >= 0, d2 + d3 * 2 - 4 == 0, d0 mod 4 == 0, d0 mod 4 == 0)>(%c2, %c7, %c3, %c1) -> memref<4x11xi32> {
        %271 = arith.maxsi %c2005209551_i32, %c1780117628_i32 : i32
        %272 = math.tanh %11 : tensor<4x11xf32>
        %273 = math.exp2 %cst_1 : f32
        %274 = math.ctpop %16 : tensor<11xi64>
        %275 = math.log10 %cst_0 : f32
        %276 = math.copysign %8, %8 : tensor<11xf32>
        %277 = arith.remf %cst_0, %cst_1 : f32
        %278 = math.log1p %4 : tensor<11xf16>
        affine.yield %alloc_13 : memref<4x11xi32>
      } else {
        %271 = math.rsqrt %6 : tensor<4x11xf16>
        %272 = arith.minf %cst_3, %cst : f16
        %273 = bufferization.to_memref %8 : memref<11xf32>
        %rank_40 = tensor.rank %14 : tensor<11xf32>
        %splat_41 = tensor.splat %c1477322855_i32 : tensor<4xi32>
        %dest_42, %accumulated_value_43 = vector.scan <minsi>, %44, %43 {inclusive = true, reduction_dim = 0 : i64} : vector<4x11xi32>, vector<11xi32>
        %274 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %46, %46, %false : vector<11xi1>, vector<11xi1> into i1
        %expanded = tensor.expand_shape %5 [[0], [1, 2]] : tensor<4x11xi16> into tensor<4x11x1xi16>
        affine.yield %alloc_6 : memref<4x11xi32>
      }
      memref.store %c118904530_i32, %alloc_14[%c7, %c2, %c0] : memref<11x4x16xi32>
      %263 = scf.index_switch %c15 -> vector<11xf16> 
      case 1 {
        %271 = vector.extract_strided_slice %34 {offsets = [1], sizes = [1], strides = [1]} : vector<4xi1> to vector<1xi1>
        %272 = arith.xori %false, %false : i1
        %273 = math.cttz %5 : tensor<4x11xi16>
        %274 = arith.cmpf uno, %cst, %cst_3 : f16
        %275 = arith.addi %c2005209551_i32, %c1780117628_i32 : i32
        %276 = bufferization.clone %alloc_4 : memref<4x11xi64> to memref<4x11xi64>
        %277 = tensor.empty() : tensor<11xi32>
        %278 = index.ceildivu %c1, %41
        %279 = arith.cmpf ult, %cst_2, %cst : f16
        %280 = vector.extract_strided_slice %18 {offsets = [3], sizes = [7], strides = [1]} : vector<16xf32> to vector<7xf32>
        %281 = memref.realloc %alloc_12 : memref<11xi64> to memref<11xi64>
        %cst_40 = arith.constant 2.931200e+04 : f16
        %282 = index.ceildivs %c2, %c9
        %283 = math.sqrt %cst_3 : f16
        %284 = arith.minf %cst_0, %cst_1 : f32
        %285 = vector.transpose %271, [0] : vector<1xi1> to vector<1xi1>
        %286 = vector.broadcast %cst_3 : f16 to vector<11xf16>
        scf.yield %286 : vector<11xf16>
      }
      case 2 {
        %271 = arith.minsi %c1694361209_i64, %c1694361209_i64 : i64
        %272 = math.ctlz %splat_23 : tensor<4xi1>
        %273 = arith.remf %cst_2, %cst : f16
        %274 = math.cttz %7 : tensor<11x4x16xi32>
        %275 = math.copysign %cst, %cst : f16
        %276 = math.sqrt %14 : tensor<11xf32>
        %277 = index.castu %c1780117628_i32 : i32 to index
        %278 = math.cttz %splat_23 : tensor<4xi1>
        %279 = vector.transpose %34, [0] : vector<4xi1> to vector<4xi1>
        %280 = index.ceildivu %c10, %c10
        %281 = bufferization.clone %alloc_12 : memref<11xi64> to memref<11xi64>
        %282 = arith.maxui %c-20887_i16, %c-20887_i16 : i16
        %283 = arith.maxf %cst, %cst : f16
        %284 = index.sub %277, %c1
        %285 = math.log %cst_2 : f16
        %286 = math.log10 %9 : tensor<4x11xf32>
        %287 = vector.broadcast %cst_3 : f16 to vector<11xf16>
        scf.yield %287 : vector<11xf16>
      }
      case 3 {
        %271 = index.floordivs %26, %c5
        %272 = arith.maxsi %c1694361209_i64, %c1694361209_i64 : i64
        %273 = vector.broadcast %cst_1 : f32 to vector<f32>
        %274 = vector.transfer_write %273, %9[%26, %35] : vector<f32>, tensor<4x11xf32>
        %rank_40 = tensor.rank %8 : tensor<11xf32>
        %275 = vector.broadcast %257 : index to vector<15xindex>
        %276 = vector.broadcast %true : i1 to vector<15xi1>
        %277 = vector.broadcast %c1234797326_i64 : i64 to vector<15xi64>
        vector.scatter %alloc_21[%c5] [%275], %276, %277 : memref<11xi64>, vector<15xindex>, vector<15xi1>, vector<15xi64>
        %278 = math.log1p %cst : f16
        %279 = index.maxu %c11, %35
        %280 = math.exp %6 : tensor<4x11xf16>
        %281 = arith.remsi %c2005209551_i32, %c118904530_i32 : i32
        %282 = arith.maxf %cst_0, %cst_1 : f32
        %inserted = tensor.insert %cst_2 into %4[%c5] : tensor<11xf16>
        %283 = index.maxs %29, %c4
        %284 = math.ceil %14 : tensor<11xf32>
        %285 = vector.extract_strided_slice %45 {offsets = [8], sizes = [2], strides = [1]} : vector<11xi16> to vector<2xi16>
        %286 = math.atan2 %9, %11 : tensor<4x11xf32>
        %287 = vector.reduction <maxsi>, %34 : vector<4xi1> into i1
        %288 = vector.broadcast %cst_3 : f16 to vector<11xf16>
        scf.yield %288 : vector<11xf16>
      }
      default {
        %271 = index.maxu %c15, %c5
        %272 = math.rsqrt %1 : tensor<4xf16>
        %collapsed_40 = tensor.collapse_shape %5 [[0, 1]] : tensor<4x11xi16> into tensor<44xi16>
        %273 = math.rsqrt %1 : tensor<4xf16>
        %274 = arith.remsi %c-20887_i16, %c-13043_i16 : i16
        %275 = vector.insert %c-20887_i16, %47 [0] : i16 into vector<11xi16>
        %276 = arith.minsi %c1477322855_i32, %c1780117628_i32 : i32
        affine.store %cst_0, %alloc_10[%c3] : memref<4xf32>
        %277 = vector.matrix_multiply %34, %34 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
        %278 = math.rsqrt %11 : tensor<4x11xf32>
        %279 = vector.splat %c8 : vector<4x11xindex>
        %280 = arith.divf %cst, %cst_2 : f16
        %281 = vector.extract %18[12] : vector<16xf32>
        %282 = arith.maxsi %40, %c1829376760_i64 : i64
        %283 = arith.shrsi %c1780117628_i32, %c1780117628_i32 : i32
        %284 = index.castu %c2005209551_i32 : i32 to index
        %285 = vector.broadcast %cst_2 : f16 to vector<11xf16>
        scf.yield %285 : vector<11xf16>
      }
      %cast_39 = tensor.cast %8 : tensor<11xf32> to tensor<?xf32>
      bufferization.dealloc_tensor %15 : tensor<4x11xi16>
      %264 = arith.shrui %c1829376760_i64, %c1694361209_i64 : i64
      %265 = vector.broadcast %c1780117628_i32 : i32 to vector<16xi32>
      %266 = vector.broadcast %false : i1 to vector<16xi1>
      %267 = vector.maskedload %alloc_9[%c0], %266, %265 : memref<11xi32>, vector<16xi1>, vector<16xi32> into vector<16xi32>
      %268 = math.tanh %11 : tensor<4x11xf32>
      %269 = arith.floordivsi %c1780117628_i32, %c118904530_i32 : i32
      %270 = tensor.empty() : tensor<11x4x16xf32>
      scf.yield %270 : tensor<11x4x16xf32>
    }
    case 3 {
      %256 = arith.divf %cst_0, %cst_0 : f32
      %257 = index.ceildivu %c2, %c7
      %258 = arith.remf %cst_0, %cst_1 : f32
      %259 = vector.transpose %45, [0] : vector<11xi16> to vector<11xi16>
      vector.print %34 : vector<4xi1>
      %260 = math.absf %cst_3 : f16
      %261 = math.log %9 : tensor<4x11xf32>
      %from_elements = tensor.from_elements %true, %false, %true, %false, %true, %true, %true, %true, %false, %false, %true, %true, %false, %true, %false, %false, %true, %true, %false, %false, %true, %false, %true, %false, %false, %false, %false, %true, %true, %false, %true, %true, %false, %true, %true, %false, %false, %true, %true, %false, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %true, %false, %true, %false, %true, %false, %true, %true, %true, %true, %true, %false, %false, %false, %true, %false, %false, %true, %true, %true, %false, %true, %true, %true, %false, %true, %true, %true, %false, %true, %false, %false, %true, %true, %true, %true, %false, %true, %false, %true, %true, %true, %true, %true, %true, %true, %true, %false, %true, %true, %false, %true, %true, %true, %true, %true, %true, %false, %false, %false, %false, %true, %true, %false, %false, %false, %false, %false, %true, %true, %false, %true, %true, %true, %true, %true, %false, %false, %true, %false, %false, %false, %false, %true, %false, %false, %true, %true, %false, %true, %false, %false, %false, %false, %false, %true, %false, %false, %true, %false, %false, %true, %true, %true, %true, %false, %true, %false, %false, %true, %false, %true, %true, %true, %true, %false, %false, %true, %false, %false, %false, %true, %false, %true, %true, %false, %true, %true, %true, %false, %true, %false, %false, %true, %true, %false, %true, %false, %false, %true, %true, %false, %true, %true, %true, %true, %false, %true, %true, %true, %false, %true, %true, %true, %false, %true, %true, %true, %false, %true, %false, %true, %true, %true, %true, %true, %false, %false, %true, %false, %false, %false, %true, %false, %false, %false, %true, %true, %false, %true, %true, %true, %false, %true, %true, %false, %true, %true, %true, %false, %false, %true, %false, %true, %true, %true, %false, %true, %false, %true, %false, %true, %true, %false, %true, %false, %false, %false, %false, %false, %false, %true, %true, %false, %true, %true, %false, %true, %false, %false, %true, %false, %false, %false, %true, %true, %true, %false, %false, %true, %false, %false, %false, %false, %true, %true, %true, %false, %true, %true, %false, %true, %false, %true, %false, %false, %true, %false, %false, %false, %true, %true, %true, %true, %true, %true, %false, %false, %false, %false, %true, %true, %true, %false, %false, %false, %true, %true, %false, %true, %false, %false, %true, %false, %true, %true, %true, %true, %false, %false, %true, %true, %true, %true, %false, %false, %false, %false, %false, %false, %true, %true, %true, %true, %true, %false, %true, %true, %false, %true, %false, %true, %true, %false, %false, %false, %false, %true, %false, %true, %true, %false, %false, %false, %true, %true, %false, %true, %true, %false, %false, %false, %true, %false, %true, %true, %false, %false, %false, %true, %true, %false, %false, %false, %true, %true, %false, %true, %true, %true, %false, %false, %true, %true, %false, %false, %false, %false, %true, %true, %false, %true, %false, %false, %false, %false, %true, %true, %true, %true, %false, %true, %true, %false, %false, %true, %false, %true, %true, %false, %false, %true, %false, %true, %true, %true, %true, %false, %true, %false, %false, %false, %false, %true, %false, %true, %true, %true, %true, %true, %false, %true, %false, %true, %false, %true, %true, %true, %false, %false, %false, %false, %false, %false, %true, %true, %false, %false, %false, %false, %true, %true, %true, %true, %true, %false, %true, %false, %false, %true, %true, %true, %false, %false, %true, %true, %false, %false, %false, %false, %true, %false, %true, %false, %false, %false, %true, %true, %true, %true, %true, %true, %false, %false, %true, %true, %false, %true, %true, %false, %true, %false, %true, %true, %false, %false, %true, %false, %true, %true, %false, %true, %true, %false, %false, %true, %false, %false, %true, %true, %false, %true, %false, %false, %true, %true, %true, %false, %true, %false, %true, %false, %false, %true, %false, %true, %true, %false, %false, %false, %true, %true, %true, %false, %true, %true, %true, %false, %false, %true, %false, %true, %true, %true, %false, %false, %false, %false, %false, %false, %true, %false, %false, %false, %false, %true, %false, %true, %true, %false, %false, %true, %false, %true, %true, %true, %true, %true, %false, %false, %true, %false, %true, %true, %false, %false, %true, %false, %false, %false, %false, %false, %true, %true, %false, %true, %false, %false, %false, %false, %true, %false, %true, %false, %true, %false, %false, %true, %true, %false, %false, %false, %false, %false, %true, %true, %false, %true, %true, %false, %false, %false, %true, %true, %false, %true, %false, %false, %true, %false, %true, %true, %true, %true, %false, %true, %false, %false, %true, %true, %false, %false, %true, %false, %true, %false, %true, %true, %true, %true, %false, %false, %false, %false, %false, %true, %true, %true, %false, %false, %false, %true, %true, %false, %true, %true, %false, %true, %false, %false, %true, %false, %true, %true, %true, %false, %true, %true, %true, %false, %false, %true, %true, %false, %true, %true, %false, %true, %true, %false, %true, %true, %true, %false, %true, %true, %true, %true : tensor<11x4x16xi1>
      %262 = math.roundeven %6 : tensor<4x11xf16>
      %263 = arith.minsi %c-13043_i16, %c-13043_i16 : i16
      scf.index_switch %c2 
      case 1 {
        %270 = arith.cmpf olt, %cst, %cst : f16
        memref.tensor_store %7, %alloc_14 : memref<11x4x16xi32>
        %collapsed_39 = tensor.collapse_shape %from_elements [[0, 1], [2]] : tensor<11x4x16xi1> into tensor<44x16xi1>
        %271 = math.atan2 %cst_3, %cst_2 : f16
        %272 = arith.xori %c2005209551_i32, %c1780117628_i32 : i32
        %true_40 = index.bool.constant true
        %273 = math.ipowi %0, %17 : tensor<11xi64>
        %274 = vector.transpose %44, [1, 0] : vector<4x11xi32> to vector<11x4xi32>
        %275 = index.casts %c2 : index to i32
        %rank_41 = tensor.rank %9 : tensor<4x11xf32>
        %276 = arith.shli %c-13043_i16, %c-20887_i16 : i16
        %277 = index.ceildivu %c6, %c0
        %278 = memref.atomic_rmw minu %c1829376760_i64, %alloc_4[%c2, %c10] : (i64, memref<4x11xi64>) -> i64
        %279 = math.exp %14 : tensor<11xf32>
        %280 = bufferization.clone %alloc_17 : memref<4x11xi64> to memref<4x11xi64>
        %281 = arith.floordivsi %c1829376760_i64, %40 : i64
        scf.yield
      }
      case 2 {
        %270 = math.round %8 : tensor<11xf32>
        %271 = arith.shli %c118904530_i32, %c2005209551_i32 : i32
        %272 = memref.load %alloc_20[] : memref<f16>
        %273 = vector.broadcast %cst : f16 to vector<11xf16>
        %274 = math.cttz %5 : tensor<4x11xi16>
        %from_elements_39 = tensor.from_elements %cst_0, %cst_0, %cst_0, %cst_1 : tensor<4xf32>
        %275 = math.cttz %40 : i64
        %276 = bufferization.clone %48 : memref<4x11xi32> to memref<4x11xi32>
        %277 = math.floor %4 : tensor<11xf16>
        %278 = arith.divf %cst_0, %cst_0 : f32
        %279 = affine.load %alloc_6[%c0, %c2] : memref<4x11xi32>
        %280 = arith.mulf %cst, %cst_2 : f16
        %281 = index.castu %279 : i32 to index
        %282 = vector.create_mask %35, %35, %c12 : vector<11x4x16xi1>
        %283 = index.add %c15, %c9
        %284 = vector.extract_strided_slice %45 {offsets = [3], sizes = [5], strides = [1]} : vector<11xi16> to vector<5xi16>
        scf.yield
      }
      case 3 {
        %270 = index.ceildivs %c4, %29
        affine.store %c1780117628_i32, %alloc_15[%c0] : memref<4xi32>
        %271 = math.atan2 %cst_2, %cst_3 : f16
        %272 = arith.shrsi %c1234797326_i64, %40 : i64
        memref.assume_alignment %alloc_9, 2 : memref<11xi32>
        %alloca_39 = memref.alloca() : memref<4xi16>
        %273 = math.fpowi %cst_0, %c1477322855_i32 : f32, i32
        %274 = affine.apply affine_map<(d0, d1, d2) -> ((d1 - 64) * 2)>(%c5, %c3, %c6)
        %275 = affine.load %alloc_7[%c4] : memref<4xf32>
        %276 = arith.ori %c-20887_i16, %c-20887_i16 : i16
        %277 = math.roundeven %4 : tensor<11xf16>
        %278 = memref.realloc %alloc_12 : memref<11xi64> to memref<11xi64>
        %279 = index.casts %c13 : index to i32
        %280 = index.castu %c6 : index to i32
        %expanded = tensor.expand_shape %14 [[0, 1]] : tensor<11xf32> into tensor<11x1xf32>
        %281 = vector.create_mask %37, %c1, %c15 : vector<11x4x16xi1>
        scf.yield
      }
      case 4 {
        %270 = math.rsqrt %4 : tensor<11xf16>
        memref.store %c1780117628_i32, %alloc_11[%c2, %c10] : memref<4x11xi32>
        %271 = arith.minsi %c1694361209_i64, %c1694361209_i64 : i64
        %272 = index.castu %c1234797326_i64 : i64 to index
        %273 = math.sqrt %14 : tensor<11xf32>
        %274 = index.castu %c15 : index to i32
        %275 = math.ctlz %19 : tensor<i64>
        %dest_39, %accumulated_value_40 = vector.scan <add>, %44, %43 {inclusive = true, reduction_dim = 0 : i64} : vector<4x11xi32>, vector<11xi32>
        %276 = arith.maxf %cst_3, %cst : f16
        %277 = math.ceil %11 : tensor<4x11xf32>
        %278 = index.castu %true : i1 to index
        %279 = arith.shli %c1780117628_i32, %c1477322855_i32 : i32
        %extracted_41 = tensor.extract %0[%c10] : tensor<11xi64>
        %280 = index.floordivs %c13, %c11
        %281 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %46, %46, %true : vector<11xi1>, vector<11xi1> into i1
        %282 = math.log2 %4 : tensor<11xf16>
        scf.yield
      }
      default {
        %extracted_39 = tensor.extract %9[%c2, %c1] : tensor<4x11xf32>
        %cast_40 = tensor.cast %19 : tensor<i64> to tensor<i64>
        %270 = bufferization.clone %alloc_15 : memref<4xi32> to memref<4xi32>
        %splat_41 = tensor.splat %c-13043_i16 : tensor<4x11xi16>
        bufferization.dealloc_tensor %11 : tensor<4x11xf32>
        %271 = bufferization.clone %alloc_8 : memref<11xf16> to memref<11xf16>
        %272 = math.exp2 %8 : tensor<11xf32>
        %273 = memref.atomic_rmw maxu %c118904530_i32, %alloc_9[%c1] : (i32, memref<11xi32>) -> i32
        %274 = arith.negf %cst_2 : f16
        %expanded = tensor.expand_shape %15 [[0], [1, 2]] : tensor<4x11xi16> into tensor<4x11x1xi16>
        %275 = arith.divf %cst_0, %cst_0 : f32
        vector.print %18 : vector<16xf32>
        %276 = vector.broadcast %40 : i64 to vector<4xi64>
        %277 = vector.maskedload %alloc_4[%c2, %c10], %34, %276 : memref<4x11xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
        %278 = arith.negf %cst : f16
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %279 = vector.transfer_read %15[%c9, %c4], %c0_i16 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<4x11xi16>, vector<11xi16>
        %280 = arith.cmpf ult, %cst_0, %cst_0 : f32
      }
      %264 = bufferization.clone %alloc_4 : memref<4x11xi64> to memref<4x11xi64>
      %265 = affine.for %arg2 = 0 to 60 iter_args(%arg3 = %splat) -> (tensor<11xi16>) {
        affine.yield %10 : tensor<11xi16>
      }
      %266 = arith.remf %cst_2, %cst : f16
      %267 = arith.minsi %c1234797326_i64, %c1234797326_i64 : i64
      %268 = affine.if affine_set<(d0, d1) : (d0 ceildiv 16 + d0 ceildiv 16 - 32 + 4 >= 0, d0 - (d0 ceildiv 16 - 32) + 64 == 0, d0 ceildiv 64 == 0)>(%c4, %c13) -> memref<4xi16> {
        %c1_i32 = arith.constant 1 : i32
        %c0_i32 = arith.constant 0 : i32
        %270 = vector.transfer_read %alloc_14[%c9, %c14, %c14], %c0_i32 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : memref<11x4x16xi32>, vector<11xi32>
        %271 = arith.shli %40, %c1234797326_i64 : i64
        %272 = arith.addi %false, %false : i1
        %273 = math.absf %14 : tensor<11xf32>
        %274 = arith.xori %c2005209551_i32, %c1477322855_i32 : i32
        %275 = math.atan %11 : tensor<4x11xf32>
        %276 = arith.negf %cst_2 : f16
        %277 = math.exp %cst : f16
        affine.yield %alloc_16 : memref<4xi16>
      } else {
        %270 = bufferization.clone %alloc_4 : memref<4x11xi64> to memref<4x11xi64>
        %271 = index.maxs %c10, %c15
        %272 = math.atan2 %8, %14 : tensor<11xf32>
        %273 = vector.broadcast %c-13043_i16 : i16 to vector<11x11xi16>
        %274 = vector.outerproduct %47, %45, %273 {kind = #vector.kind<minsi>} : vector<11xi16>, vector<11xi16>
        %275 = math.rsqrt %8 : tensor<11xf32>
        %276 = arith.minsi %c1829376760_i64, %c1234797326_i64 : i64
        %277 = vector.multi_reduction <maxsi>, %46, %46 [] : vector<11xi1> to vector<11xi1>
        %278 = arith.negf %cst_3 : f16
        affine.yield %alloc_16 : memref<4xi16>
      }
      %269 = tensor.empty() : tensor<11x4x16xf32>
      scf.yield %269 : tensor<11x4x16xf32>
    }
    default {
      %256 = vector.transpose %34, [0] : vector<4xi1> to vector<4xi1>
      %257 = memref.atomic_rmw minf %cst, %alloc_20[] : (f16, memref<f16>) -> f16
      %extracted_39 = tensor.extract %9[%c3, %c4] : tensor<4x11xf32>
      %alloc_40 = memref.alloc() : memref<4x11xi16>
      memref.copy %alloc_5, %alloc_40 : memref<4x11xi16> to memref<4x11xi16>
      bufferization.dealloc_tensor %10 : tensor<11xi16>
      %258 = index.casts %c6 : index to i32
      %259 = affine.load %48[%c6, %c5] : memref<4x11xi32>
      %cst_41 = arith.constant 1.000000e+00 : f16
      %cst_42 = arith.constant 0.000000e+00 : f16
      %260 = vector.transfer_read %4[%c13], %cst_42 : tensor<11xf16>, vector<f16>
      %false_43 = arith.constant false
      %261 = bufferization.to_tensor %alloc_12 : memref<11xi64>
      affine.store %c-20887_i16, %alloc_5[%c14, %c10] : memref<4x11xi16>
      %262 = memref.atomic_rmw andi %c1780117628_i32, %48[%c0, %c1] : (i32, memref<4x11xi32>) -> i32
      %263 = vector.broadcast %true : i1 to vector<11x11xi1>
      %264 = vector.outerproduct %46, %46, %263 {kind = #vector.kind<maxsi>} : vector<11xi1>, vector<11xi1>
      %cast_44 = tensor.cast %9 : tensor<4x11xf32> to tensor<?x?xf32>
      %265 = arith.andi %c-13043_i16, %c-20887_i16 : i16
      %266 = vector.extract %47[8] : vector<11xi16>
      %267 = tensor.empty() : tensor<11x4x16xf32>
      scf.yield %267 : tensor<11x4x16xf32>
    }
    %50 = index.sub %c15, %c4
    %51 = arith.divf %cst_1, %cst_0 : f32
    %52 = math.absf %cst : f16
    %53 = memref.alloca_scope  -> (i64) {
      %true_39 = index.bool.constant true
      %256 = math.atan2 %9, %11 : tensor<4x11xf32>
      %257 = arith.minsi %c2005209551_i32, %c2005209551_i32 : i32
      scf.index_switch %c15 
      case 1 {
        %rank_44 = tensor.rank %11 : tensor<4x11xf32>
        %282 = arith.maxui %true_39, %false : i1
        %283 = index.floordivs %c7, %c10
        %284 = arith.cmpf ord, %cst_3, %cst : f16
        %285 = math.floor %4 : tensor<11xf16>
        %286 = vector.reduction <maxui>, %43 : vector<11xi32> into i32
        %287 = arith.remf %cst, %cst_3 : f16
        %288 = index.mul %c7, %c9
        %289 = arith.remsi %c1829376760_i64, %c1694361209_i64 : i64
        %290 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 + 2)>(%37, %c0, %c7, %c1)
        %291 = arith.ori %c1694361209_i64, %c1234797326_i64 : i64
        %rank_45 = tensor.rank %7 : tensor<11x4x16xi32>
        %292 = math.log2 %1 : tensor<4xf16>
        %293 = vector.broadcast %cst_1 : f32 to vector<11x4x16xf32>
        %294 = vector.fma %293, %293, %293 : vector<11x4x16xf32>
        %295 = vector.splat %41 : vector<11x4x16xindex>
        %296 = vector.broadcast %c8 : index to vector<11xindex>
        %297 = vector.broadcast %40 : i64 to vector<11xi64>
        vector.scatter %alloc_18[%c0, %c0] [%296], %46, %297 : memref<4x11xi64>, vector<11xindex>, vector<11xi1>, vector<11xi64>
        scf.yield
      }
      case 2 {
        %282 = math.rsqrt %14 : tensor<11xf32>
        %283 = index.divu %c10, %c12
        %284 = bufferization.clone %alloc : memref<4x11xf32> to memref<4x11xf32>
        %285 = math.absi %c-13043_i16 : i16
        %286 = math.absf %cst_2 : f16
        %287 = index.mul %c15, %c1
        %288 = bufferization.clone %284 : memref<4x11xf32> to memref<4x11xf32>
        %289 = arith.negf %cst_2 : f16
        %290 = vector.create_mask %c13 : vector<11xi1>
        %291 = vector.load %alloc_18[%c3, %c4] : memref<4x11xi64>, vector<4xi64>
        %292 = vector.broadcast %c15 : index to vector<4xindex>
        %293 = vector.broadcast %cst_0 : f32 to vector<4xf32>
        vector.scatter %284[%c0, %c1] [%292], %34, %293 : memref<4x11xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
        %294 = memref.atomic_rmw mulf %cst_1, %alloc_7[%c3] : (f32, memref<4xf32>) -> f32
        %295 = arith.andi %c1694361209_i64, %c1829376760_i64 : i64
        %296 = math.copysign %11, %9 : tensor<4x11xf32>
        %297 = arith.addf %cst_2, %cst_3 : f16
        %298 = vector.reduction <or>, %43 : vector<11xi32> into i32
        scf.yield
      }
      case 3 {
        %282 = math.floor %1 : tensor<4xf16>
        %283 = math.exp2 %8 : tensor<11xf32>
        %splat_44 = tensor.splat %c1477322855_i32 : tensor<4x11xi32>
        %284 = arith.divf %cst, %cst : f16
        memref.copy %alloc_21, %alloc_12 : memref<11xi64> to memref<11xi64>
        %285 = vector.splat %c9 : vector<4x11xindex>
        %286 = math.fma %9, %9, %9 : tensor<4x11xf32>
        %287 = index.maxs %c0, %c11
        %288 = vector.splat %c13 : vector<4xindex>
        %289 = math.log1p %8 : tensor<11xf32>
        %290 = index.casts %c4 : index to i32
        %291 = math.log1p %4 : tensor<11xf16>
        %292 = affine.min affine_map<(d0, d1) -> (d1 * -8 + 1)>(%c10, %c14)
        %293 = affine.max affine_map<(d0) -> (d0 - 128, d0 floordiv 16 - 8, d0 - 128, -(d0 - 128))>(%c3)
        %294 = math.sqrt %cst : f16
        %295 = math.log2 %9 : tensor<4x11xf32>
        scf.yield
      }
      case 4 {
        %282 = math.log1p %6 : tensor<4x11xf16>
        %283 = vector.extract_strided_slice %18 {offsets = [14], sizes = [1], strides = [1]} : vector<16xf32> to vector<1xf32>
        %284 = vector.insert %cst_1, %283 [0] : f32 into vector<1xf32>
        %285 = math.cttz %2 : tensor<4x11xi64>
        %286 = index.floordivs %c11, %c6
        %287 = math.ipowi %c1780117628_i32, %c1780117628_i32 : i32
        %288 = vector.extract %283[0] : vector<1xf32>
        %289 = affine.load %alloc_10[%c0] : memref<4xf32>
        %290 = vector.insert %c1477322855_i32, %43 [8] : i32 into vector<11xi32>
        %291 = arith.divf %cst_0, %289 : f32
        %292 = vector.load %alloc_18[%c0, %c7] : memref<4x11xi64>, vector<4x11xi64>
        %293 = vector.transpose %46, [0] : vector<11xi1> to vector<11xi1>
        %294 = index.casts %286 : index to i32
        %295 = vector.broadcast %c1234797326_i64 : i64 to vector<11x4x16xi64>
        %296 = vector.broadcast %true_39 : i1 to vector<11x4x16xi1>
        %297 = vector.broadcast %c1477322855_i32 : i32 to vector<11x4x16xi32>
        %298 = vector.gather %17[%c7] [%297], %296, %295 : tensor<11xi64>, vector<11x4x16xi32>, vector<11x4x16xi1>, vector<11x4x16xi64> into vector<11x4x16xi64>
        %from_elements = tensor.from_elements %false, %true_39, %true_39, %true, %true_39, %false, %true, %true_39, %true_39, %false, %false, %true_39, %true_39, %true, %true, %true, %true, %true, %true_39, %true_39, %true_39, %true_39, %true, %true, %true, %false, %true_39, %false, %true, %true, %true, %true_39, %false, %true, %true_39, %false, %true_39, %true, %false, %true_39, %true, %false, %false, %true_39, %true, %false, %true_39, %true, %true_39, %true, %true_39, %true, %false, %true_39, %true_39, %true_39, %true, %true_39, %true, %false, %true, %true, %true, %false, %true, %true_39, %true, %true_39, %false, %false, %false, %true_39, %true_39, %false, %true, %false, %true, %true_39, %true, %true, %false, %true, %true_39, %true, %true_39, %true, %false, %true_39, %true_39, %false, %true_39, %true_39, %true, %true, %true_39, %true_39, %false, %true, %false, %true_39, %true, %false, %false, %true_39, %false, %true_39, %true, %false, %true_39, %true_39, %true_39, %true, %false, %false, %true_39, %false, %true, %true_39, %false, %true_39, %false, %false, %true_39, %true_39, %false, %true_39, %true_39, %true_39, %false, %true_39, %false, %true, %false, %false, %true, %true, %true_39, %true, %true, %false, %false, %false, %false, %false, %false, %true_39, %false, %true, %false, %true_39, %true, %false, %true, %true_39, %true_39, %false, %true, %true_39, %false, %true_39, %true, %false, %true, %true, %true, %true_39, %false, %false, %true_39, %true, %true, %true_39, %false, %true_39, %false, %true, %true_39, %false, %false, %true, %false, %true_39, %true, %true, %true, %false, %true_39, %true, %false, %true, %false, %true, %true, %false, %true, %true_39, %true_39, %true_39, %true, %false, %false, %true, %false, %true_39, %false, %true_39, %true, %true_39, %false, %false, %true, %false, %true, %true_39, %false, %true, %true_39, %false, %true_39, %true_39, %false, %false, %true, %true_39, %true_39, %true_39, %true_39, %false, %false, %true_39, %false, %true_39, %true, %false, %false, %false, %false, %false, %true, %false, %false, %true, %true, %false, %true, %false, %true, %true, %true, %false, %true_39, %true_39, %true, %true_39, %true, %true_39, %true_39, %false, %true, %false, %true, %false, %false, %true, %false, %true, %false, %true_39, %true, %true, %false, %false, %true, %true, %true_39, %false, %true_39, %true, %true, %true_39, %true, %false, %true, %true_39, %true_39, %true_39, %true_39, %true_39, %true, %true, %false, %true, %true, %true_39, %false, %true_39, %false, %true, %true_39, %true_39, %false, %true_39, %true, %true, %true_39, %false, %true, %true_39, %false, %true, %true, %false, %true, %true_39, %true_39, %true_39, %false, %true_39, %true_39, %true_39, %true, %true_39, %false, %false, %true, %false, %false, %true_39, %false, %false, %true, %false, %true, %true_39, %true, %true, %true_39, %true_39, %true, %true_39, %true, %true_39, %false, %false, %true, %true, %true_39, %false, %true, %false, %false, %false, %true, %true, %true_39, %true_39, %true, %true, %false, %true, %true, %true_39, %true, %true_39, %false, %true, %true_39, %false, %true_39, %false, %true, %true_39, %false, %false, %true, %true_39, %false, %true, %true, %true_39, %false, %true, %true_39, %true, %false, %true_39, %true, %true_39, %true_39, %true_39, %false, %true_39, %false, %false, %true_39, %false, %false, %true, %false, %true_39, %false, %true_39, %true, %true_39, %true, %false, %false, %false, %true, %false, %true_39, %false, %true_39, %true, %false, %true, %true_39, %false, %true_39, %true_39, %true_39, %false, %true_39, %false, %true_39, %false, %true_39, %true, %false, %false, %true_39, %false, %false, %true_39, %true_39, %false, %true, %false, %true, %true_39, %true, %true, %true_39, %true_39, %true_39, %true_39, %false, %false, %false, %true, %false, %true_39, %true_39, %true_39, %true, %true_39, %false, %false, %true_39, %false, %true, %true_39, %false, %true_39, %false, %true_39, %false, %true_39, %true, %false, %true_39, %false, %true_39, %true, %true, %true, %true_39, %true, %true_39, %true, %false, %true_39, %true_39, %true_39, %false, %true, %true_39, %true_39, %false, %true, %true_39, %false, %true_39, %false, %true, %false, %true, %true_39, %true_39, %false, %false, %false, %true, %false, %true_39, %true, %false, %true, %true_39, %true, %true_39, %false, %true_39, %false, %false, %true_39, %false, %true_39, %true_39, %true, %true_39, %true_39, %true_39, %false, %true, %true_39, %false, %true_39, %true, %true, %false, %true_39, %true, %false, %true_39, %true, %false, %false, %false, %false, %true_39, %true_39, %false, %false, %false, %true_39, %true, %true_39, %true_39, %true_39, %true, %false, %true, %false, %true_39, %true, %true_39, %true_39, %false, %false, %true_39, %true_39, %true_39, %true_39, %true_39, %true, %true_39, %true, %true_39, %true_39, %false, %true, %true, %true_39, %true_39, %true, %true_39, %false, %true_39, %true_39, %false, %true, %false, %false, %false, %false, %true_39, %true_39, %true_39, %false, %true, %false, %true_39, %true_39, %false, %true, %true_39, %true_39, %true, %false, %false, %false, %false, %true, %true_39, %true, %true, %false, %true, %true, %true_39, %false, %false, %true, %true, %false, %true_39, %false, %false, %true, %true, %false, %true, %true_39, %true, %false, %true, %true_39, %false, %true_39, %true_39, %true, %true_39, %true, %true_39, %true_39, %true_39, %false, %true_39, %true, %false, %true_39, %true_39, %false, %false, %true_39, %false, %true, %true, %true_39, %false, %true_39, %true, %false, %true_39, %true_39, %true_39, %false, %true_39, %true, %false, %false, %true, %false, %false, %false, %true, %false, %false, %true, %false, %false, %true, %true, %true, %false, %true_39, %false, %true, %true_39, %false, %true, %false, %false, %true, %true, %true, %true_39, %true_39, %true_39, %false, %true, %true, %false, %true, %true, %false, %true_39, %true, %true_39, %true, %true, %true_39, %false : tensor<11x4x16xi1>
        %299 = vector.insertelement %false, %34[%c0 : index] : vector<4xi1>
        scf.yield
      }
      default {
        %282 = index.add %c15, %50
        %283 = math.cos %1 : tensor<4xf16>
        %284 = vector.transpose %43, [0] : vector<11xi32> to vector<11xi32>
        bufferization.dealloc_tensor %4 : tensor<11xf16>
        %285 = vector.broadcast %cst_0 : f32 to vector<15xf32>
        %286 = vector.broadcast %true : i1 to vector<15xi1>
        %287 = vector.maskedload %alloc_10[%c1], %286, %285 : memref<4xf32>, vector<15xi1>, vector<15xf32> into vector<15xf32>
        %288 = index.sub %35, %37
        %289 = vector.broadcast %c2005209551_i32 : i32 to vector<4xi32>
        %dest_44, %accumulated_value_45 = vector.scan <add>, %44, %289 {inclusive = true, reduction_dim = 1 : i64} : vector<4x11xi32>, vector<4xi32>
        %splat_46 = tensor.splat %cst_0 : tensor<4xf32>
        %290 = vector.insertelement %cst_1, %18[%c13 : index] : vector<16xf32>
        %291 = arith.maxui %c2005209551_i32, %c1477322855_i32 : i32
        %splat_47 = tensor.splat %c1694361209_i64 : tensor<11xi64>
        %292 = tensor.empty() : tensor<11x4x16xf32>
        %293 = vector.broadcast %cst_0 : f32 to vector<4x11xf32>
        %294 = vector.broadcast %false : i1 to vector<4x11xi1>
        %295 = vector.gather %292[%c11, %288, %c1] [%44], %294, %293 : tensor<11x4x16xf32>, vector<4x11xi32>, vector<4x11xi1>, vector<4x11xf32> into vector<4x11xf32>
        %296 = affine.min affine_map<(d0, d1, d2) -> (d2 floordiv 4 + 15, d0, 0)>(%c9, %c6, %c8)
        %297 = math.atan %11 : tensor<4x11xf32>
        %298 = index.castu %c-13043_i16 : i16 to index
        %extracted_48 = tensor.extract %splat[%c3] : tensor<11xi16>
      }
      %258 = arith.remf %cst_1, %cst_0 : f32
      %259 = math.log %6 : tensor<4x11xf16>
      %260 = arith.minsi %c1694361209_i64, %c1694361209_i64 : i64
      memref.store %c1829376760_i64, %alloc_21[%c0] : memref<11xi64>
      %261 = vector.broadcast %40 : i64 to vector<16xi64>
      %262 = vector.broadcast %false : i1 to vector<16xi1>
      %263 = vector.maskedload %alloc_12[%c3], %262, %261 : memref<11xi64>, vector<16xi1>, vector<16xi64> into vector<16xi64>
      %264 = math.floor %9 : tensor<4x11xf32>
      %265 = math.log1p %6 : tensor<4x11xf16>
      %266 = affine.if affine_set<(d0, d1, d2, d3) : (d2 * 4 == 0)>(%c3, %c0, %c8, %c0) -> f16 {
        %282 = arith.remf %cst_1, %cst_0 : f32
        %283 = math.exp %cst_1 : f32
        %284 = math.absf %11 : tensor<4x11xf32>
        %285 = arith.andi %c2005209551_i32, %c1477322855_i32 : i32
        %286 = math.exp %6 : tensor<4x11xf16>
        %287 = vector.insertelement %cst_0, %18[%c4 : index] : vector<16xf32>
        %288 = bufferization.clone %alloc : memref<4x11xf32> to memref<4x11xf32>
        %289 = math.absf %4 : tensor<11xf16>
        affine.yield %cst_2 : f16
      } else {
        %282 = arith.xori %true_39, %false : i1
        %283 = arith.remf %cst_0, %cst_0 : f32
        %284 = math.absi %2 : tensor<4x11xi64>
        %285 = vector.broadcast %cst_0 : f32 to vector<11x4x16xf32>
        %286 = vector.fma %285, %285, %285 : vector<11x4x16xf32>
        %287 = index.sub %c10, %c10
        %288 = arith.addf %cst_0, %cst_1 : f32
        %289 = arith.xori %c2005209551_i32, %c1780117628_i32 : i32
        %290 = index.divu %c13, %c8
        affine.yield %cst_3 : f16
      }
      %267 = scf.index_switch %37 -> index 
      case 1 {
        %282 = tensor.empty() : tensor<11x4x16xf32>
        %283 = vector.broadcast %cst_0 : f32 to vector<4xf32>
        %284 = vector.broadcast %c118904530_i32 : i32 to vector<4xi32>
        %285 = vector.gather %282[%c14, %35, %41] [%284], %34, %283 : tensor<11x4x16xf32>, vector<4xi32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
        %286 = index.divu %c10, %c1
        %287 = index.add %37, %c3
        %288 = vector.load %alloc_15[%c2] : memref<4xi32>, vector<11xi32>
        %289 = vector.splat %c9 : vector<11x4x16xindex>
        %290 = vector.insertelement %c1694361209_i64, %261[%c14 : index] : vector<16xi64>
        %291 = math.exp %cst_2 : f16
        %292 = math.copysign %11, %9 : tensor<4x11xf32>
        %293 = bufferization.clone %alloc_18 : memref<4x11xi64> to memref<4x11xi64>
        %splat_44 = tensor.splat %c2005209551_i32 : tensor<4x11xi32>
        %294 = affine.min affine_map<(d0, d1) -> (d1 * 2, d0 + 32, ((d0 - 32) mod 128) * 127, -d0)>(%37, %c9)
        %295 = vector.broadcast %c11 : index to vector<4xindex>
        %296 = vector.broadcast %c1829376760_i64 : i64 to vector<4xi64>
        vector.scatter %293[%c0, %c8] [%295], %34, %296 : memref<4x11xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
        %297 = vector.splat %c1694361209_i64 : vector<11xi64>
        %splat_45 = tensor.splat %c-13043_i16 : tensor<11x4x16xi16>
        %298 = index.castu %false : i1 to index
        memref.tensor_store %11, %alloc : memref<4x11xf32>
        scf.yield %c14 : index
      }
      case 2 {
        %282 = math.log10 %9 : tensor<4x11xf32>
        %283 = vector.splat %cst : vector<11xf16>
        %284 = math.copysign %6, %6 : tensor<4x11xf16>
        %285 = math.log2 %4 : tensor<11xf16>
        %286 = vector.transpose %44, [0, 1] : vector<4x11xi32> to vector<4x11xi32>
        %287 = arith.minui %c1694361209_i64, %40 : i64
        %288 = index.floordivs %c8, %c4
        %289 = affine.load %alloc_11[%c14, %c1] : memref<4x11xi32>
        %290 = math.copysign %cst_1, %cst_0 : f32
        %291 = vector.extract_strided_slice %45 {offsets = [0], sizes = [3], strides = [1]} : vector<11xi16> to vector<3xi16>
        %292 = math.absi %2 : tensor<4x11xi64>
        %293 = math.log2 %8 : tensor<11xf32>
        %294 = vector.matrix_multiply %291, %47 {lhs_columns = 1 : i32, lhs_rows = 3 : i32, rhs_columns = 11 : i32} : (vector<3xi16>, vector<11xi16>) -> vector<33xi16>
        %295 = vector.load %alloc_15[%c2] : memref<4xi32>, vector<4xi32>
        %296 = arith.xori %c1694361209_i64, %c1694361209_i64 : i64
        %297 = vector.transpose %263, [0] : vector<16xi64> to vector<16xi64>
        scf.yield %c1 : index
      }
      case 3 {
        %282 = vector.matrix_multiply %34, %46 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 11 : i32} : (vector<4xi1>, vector<11xi1>) -> vector<44xi1>
        %283 = index.divu %c10, %26
        %284 = math.absi %c-20887_i16 : i16
        %285 = math.roundeven %4 : tensor<11xf16>
        %286 = arith.minsi %true_39, %false : i1
        %287 = index.castu %c2005209551_i32 : i32 to index
        %alloc_44 = memref.alloc() : memref<4xi1>
        memref.tensor_store %splat_23, %alloc_44 : memref<4xi1>
        %288 = vector.reduction <or>, %34 : vector<4xi1> into i1
        %dest_45, %accumulated_value_46 = vector.scan <minui>, %44, %43 {inclusive = false, reduction_dim = 0 : i64} : vector<4x11xi32>, vector<11xi32>
        %289 = index.sizeof
        %290 = vector.broadcast %false : i1 to vector<11xi1>
        %291 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %43, %43, %c2005209551_i32 : vector<11xi32>, vector<11xi32> into i32
        %292 = arith.minsi %c118904530_i32, %c118904530_i32 : i32
        %293 = math.log2 %cst_3 : f16
        %294 = math.log1p %4 : tensor<11xf16>
        %295 = memref.realloc %alloc_21 : memref<11xi64> to memref<15xi64>
        scf.yield %50 : index
      }
      case 4 {
        %282 = vector.broadcast %cst_1 : f32 to vector<4xf32>
        %283 = vector.transfer_write %282, %11[%c4, %37] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xf32>, tensor<4x11xf32>
        %284 = vector.matrix_multiply %282, %18 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<4xf32>, vector<16xf32>) -> vector<4xf32>
        %285 = index.castu %c-20887_i16 : i16 to index
        %286 = arith.addf %cst_0, %cst_1 : f32
        %alloc_44 = memref.alloc() : memref<11xf32>
        memref.copy %alloc_19, %alloc_44 : memref<11xf32> to memref<11xf32>
        bufferization.dealloc_tensor %15 : tensor<4x11xi16>
        %287 = arith.remsi %c-13043_i16, %c-20887_i16 : i16
        %288 = bufferization.clone %alloc_16 : memref<4xi16> to memref<4xi16>
        %289 = vector.broadcast %c1694361209_i64 : i64 to vector<11xi64>
        %290 = vector.maskedload %alloc_12[%c9], %46, %289 : memref<11xi64>, vector<11xi1>, vector<11xi64> into vector<11xi64>
        %291 = index.sizeof
        affine.store %c1694361209_i64, %alloc_4[%c2, %c10] : memref<4x11xi64>
        %292 = arith.andi %c1694361209_i64, %c1234797326_i64 : i64
        %collapsed_45 = tensor.collapse_shape %3 [[0, 1]] : tensor<4x11xi64> into tensor<44xi64>
        %293 = vector.broadcast %c-13043_i16 : i16 to vector<16xi16>
        %294 = vector.maskedload %alloc_5[%c2, %c8], %262, %293 : memref<4x11xi16>, vector<16xi1>, vector<16xi16> into vector<16xi16>
        %295 = math.cttz %3 : tensor<4x11xi64>
        %296 = vector.extract %282[1] : vector<4xf32>
        scf.yield %c2 : index
      }
      default {
        %282 = memref.load %alloc_13[%c2, %c4] : memref<4x11xi32>
        %283 = vector.broadcast %40 : i64 to vector<11xi64>
        %284 = vector.splat %c1694361209_i64 : vector<11x4x16xi64>
        %285 = math.copysign %14, %14 : tensor<11xf32>
        %286 = math.log %6 : tensor<4x11xf16>
        vector.print %261 : vector<16xi64>
        %extracted_44 = tensor.extract %13[%c9] : tensor<11xi16>
        %287 = tensor.empty() : tensor<4x11xi32>
        %288 = math.fpowi %9, %287 : tensor<4x11xf32>, tensor<4x11xi32>
        %289 = math.atan2 %11, %11 : tensor<4x11xf32>
        %290 = arith.divsi %c1829376760_i64, %c1234797326_i64 : i64
        %collapsed_45 = tensor.collapse_shape %15 [[0, 1]] : tensor<4x11xi16> into tensor<44xi16>
        %291 = math.sqrt %4 : tensor<11xf16>
        %292 = arith.shrui %c1829376760_i64, %40 : i64
        memref.tensor_store %16, %alloc_12 : memref<11xi64>
        %293 = index.casts %c2005209551_i32 : i32 to index
        %294 = bufferization.clone %alloc_13 : memref<4x11xi32> to memref<4x11xi32>
        scf.yield %c8 : index
      }
      %268 = arith.negf %cst_1 : f32
      %269 = math.log1p %14 : tensor<11xf32>
      %270 = arith.remf %cst_3, %cst_2 : f16
      %271 = arith.minf %cst, %cst : f16
      %272 = math.copysign %8, %8 : tensor<11xf32>
      %273 = math.log1p %9 : tensor<4x11xf32>
      bufferization.dealloc_tensor %11 : tensor<4x11xf32>
      %inserted = tensor.insert %c1829376760_i64 into %3[%c2, %c4] : tensor<4x11xi64>
      %274 = math.exp2 %8 : tensor<11xf32>
      %275 = bufferization.clone %alloc_7 : memref<4xf32> to memref<4xf32>
      %c0_i64_40 = arith.constant 0 : i64
      %c0_i64_41 = arith.constant 0 : i64
      %276 = vector.transfer_read %alloc_12[%c15], %c0_i64_41 : memref<11xi64>, vector<i64>
      %277 = vector.reduction <maxui>, %46 : vector<11xi1> into i1
      %278 = arith.addf %cst_2, %cst_3 : f16
      bufferization.dealloc_tensor %10 : tensor<11xi16>
      %279 = vector.insert %c2005209551_i32, %43 [0] : i32 into vector<11xi32>
      %280 = arith.addi %c2005209551_i32, %c1780117628_i32 : i32
      %splat_42 = tensor.splat %true : tensor<11x4x16xi1>
      %rank_43 = tensor.rank %11 : tensor<4x11xf32>
      %281 = math.log2 %14 : tensor<11xf32>
      memref.alloca_scope.return %c0_i64_40 : i64
    }
    %54 = index.sizeof
    %55 = math.exp %6 : tensor<4x11xf16>
    %56 = index.ceildivu %c10, %50
    memref.alloca_scope  {
      %256 = arith.addf %cst_1, %cst_1 : f32
      vector.print %45 : vector<11xi16>
      %from_elements = tensor.from_elements %53, %c1829376760_i64, %53, %c1234797326_i64 : tensor<4xi64>
      %257 = index.maxu %56, %c9
      %258 = vector.create_mask %c6 : vector<4xi1>
      %259 = arith.maxf %cst_2, %cst : f16
      %260 = affine.if affine_set<(d0, d1, d2) : ((d0 ceildiv 4) * 2 - 2 == 0)>(%c2, %c5, %c10) -> memref<11x4x16xf16> {
        %280 = vector.transpose %18, [0] : vector<16xf32> to vector<16xf32>
        %281 = vector.extract_strided_slice %34 {offsets = [1], sizes = [1], strides = [1]} : vector<4xi1> to vector<1xi1>
        %282 = arith.divui %true, %true : i1
        %283 = arith.shrui %true, %true : i1
        %284 = vector.broadcast %c1780117628_i32 : i32 to vector<4xi32>
        %285 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxui>} %43, %44, %284 : vector<11xi32>, vector<4x11xi32> into vector<4xi32>
        %286 = math.roundeven %11 : tensor<4x11xf32>
        %inserted_41 = tensor.insert %53 into %0[%c2] : tensor<11xi64>
        %287 = index.maxs %c15, %c8
        %alloc_42 = memref.alloc() : memref<11x4x16xf16>
        affine.yield %alloc_42 : memref<11x4x16xf16>
      } else {
        memref.store %cst_0, %alloc_19[%c0] : memref<11xf32>
        %280 = math.cttz %2 : tensor<4x11xi64>
        %281 = index.castu %c2005209551_i32 : i32 to index
        %extracted_41 = tensor.extract %15[%c2, %c3] : tensor<4x11xi16>
        %282 = math.sqrt %14 : tensor<11xf32>
        %283 = arith.remf %cst_2, %cst_2 : f16
        %true_42 = index.bool.constant true
        %284 = arith.subi %53, %40 : i64
        %alloc_43 = memref.alloc() : memref<11x4x16xf16>
        affine.yield %alloc_43 : memref<11x4x16xf16>
      }
      %261 = affine.if affine_set<(d0, d1, d2, d3) : (d3 * 16 >= 0)>(%c14, %c9, %c8, %c15) -> memref<11xi1> {
        %280 = arith.maxf %cst_0, %cst_1 : f32
        %281 = math.log2 %9 : tensor<4x11xf32>
        %282 = arith.xori %c1234797326_i64, %c1829376760_i64 : i64
        %283 = vector.splat %53 : vector<4x11xi64>
        %284 = math.log1p %11 : tensor<4x11xf32>
        %285 = index.sub %c8, %c12
        %286 = math.exp %14 : tensor<11xf32>
        %287 = affine.max affine_map<(d0, d1, d2) -> (d1, (d0 mod 4) * 64)>(%285, %285, %54)
        %alloc_41 = memref.alloc() : memref<11xi1>
        affine.yield %alloc_41 : memref<11xi1>
      } else {
        %280 = math.exp %11 : tensor<4x11xf32>
        %splat_41 = tensor.splat %cst_1 : tensor<4xf32>
        %281 = vector.load %alloc_15[%c2] : memref<4xi32>, vector<11xi32>
        %282 = math.cttz %3 : tensor<4x11xi64>
        %283 = arith.shli %c2005209551_i32, %c2005209551_i32 : i32
        %284 = math.expm1 %11 : tensor<4x11xf32>
        %285 = arith.minf %cst_1, %cst_1 : f32
        %286 = math.log2 %4 : tensor<11xf16>
        %alloc_42 = memref.alloc() : memref<11xi1>
        affine.yield %alloc_42 : memref<11xi1>
      }
      %262 = math.log10 %cst_0 : f32
      %263 = vector.extract_strided_slice %45 {offsets = [2], sizes = [9], strides = [1]} : vector<11xi16> to vector<9xi16>
      %264 = arith.addf %cst_1, %cst_1 : f32
      %265 = memref.atomic_rmw andi %c1234797326_i64, %alloc_4[%c3, %c1] : (i64, memref<4x11xi64>) -> i64
      %266 = vector.transpose %34, [0] : vector<4xi1> to vector<4xi1>
      %267 = arith.ori %c1694361209_i64, %40 : i64
      %extracted_39 = tensor.extract %13[%c8] : tensor<11xi16>
      %inserted = tensor.insert %cst_0 into %8[%c0] : tensor<11xf32>
      %268 = math.log2 %6 : tensor<4x11xf16>
      %269 = arith.addi %c1694361209_i64, %c1234797326_i64 : i64
      %270 = math.ipowi %3, %3 : tensor<4x11xi64>
      %271 = arith.shli %false, %false : i1
      %272 = vector.transpose %263, [0] : vector<9xi16> to vector<9xi16>
      %273 = arith.ori %c1780117628_i32, %c1477322855_i32 : i32
      %274 = index.maxu %41, %c1
      %275 = arith.minui %c1780117628_i32, %c118904530_i32 : i32
      %generated_40 = tensor.generate %c0 {
      ^bb0(%arg2: index):
        %280 = arith.shli %c1234797326_i64, %40 : i64
        %281 = arith.minsi %c1780117628_i32, %c118904530_i32 : i32
        %282 = affine.load %alloc_9[%c8] : memref<11xi32>
        %283 = arith.shli %53, %53 : i64
        tensor.yield %cst_0 : f32
      } : tensor<?xf32>
      %276 = arith.shli %c1780117628_i32, %c1477322855_i32 : i32
      affine.for %arg2 = 0 to 118 {
      }
      %277 = index.floordivs %c11, %37
      %278 = index.sub %257, %56
      affine.store %cst_2, %alloc_20[] : memref<f16>
      bufferization.dealloc_tensor %5 : tensor<4x11xi16>
      %279 = index.maxu %54, %c8
    }
    %57 = vector.broadcast %c-13043_i16 : i16 to vector<11x11xi16>
    %58 = vector.outerproduct %45, %47, %57 {kind = #vector.kind<minui>} : vector<11xi16>, vector<11xi16>
    %59 = scf.index_switch %29 -> f16 
    case 1 {
      %256 = arith.remf %cst_0, %cst_1 : f32
      %257 = vector.reduction <xor>, %47 : vector<11xi16> into i16
      %258 = index.maxs %c9, %c0
      %259 = arith.andi %true, %false : i1
      %260 = math.round %cst_2 : f16
      %261 = index.maxs %c2, %c5
      %262 = vector.create_mask %c10 : vector<11xi1>
      %263 = affine.if affine_set<(d0, d1) : (d0 ceildiv 16 + d0 ceildiv 16 - 32 + 4 >= 0, d0 - (d0 ceildiv 16 - 32) + 64 == 0, d0 ceildiv 64 == 0)>(%c8, %c12) -> memref<11x4x16xi16> {
        %272 = math.log2 %cst : f16
        %273 = arith.negf %cst_2 : f16
        %false_39 = arith.constant false
        %274 = index.floordivs %37, %54
        %275 = arith.maxf %cst, %cst_3 : f16
        %276 = math.log2 %6 : tensor<4x11xf16>
        %277 = index.divu %c5, %50
        %278 = index.maxu %26, %c0
        %alloc_40 = memref.alloc() : memref<11x4x16xi16>
        affine.yield %alloc_40 : memref<11x4x16xi16>
      } else {
        %272 = math.ceil %1 : tensor<4xf16>
        %273 = math.rsqrt %cst_0 : f32
        %274 = arith.addf %cst, %cst_2 : f16
        %275 = arith.shrsi %c1829376760_i64, %53 : i64
        %276 = index.ceildivu %41, %c8
        %inserted_39 = tensor.insert %c-20887_i16 into %splat[%c9] : tensor<11xi16>
        %277 = arith.minui %c1477322855_i32, %c118904530_i32 : i32
        %278 = vector.insert %c-20887_i16, %45 [7] : i16 into vector<11xi16>
        %alloc_40 = memref.alloc() : memref<11x4x16xi16>
        affine.yield %alloc_40 : memref<11x4x16xi16>
      }
      %264 = math.round %4 : tensor<11xf16>
      %265 = math.tanh %9 : tensor<4x11xf32>
      %266 = vector.extract_strided_slice %43 {offsets = [1], sizes = [6], strides = [1]} : vector<11xi32> to vector<6xi32>
      %267 = math.atan %11 : tensor<4x11xf32>
      %inserted = tensor.insert %cst_3 into %6[%c1, %c6] : tensor<4x11xf16>
      %268 = math.fma %14, %8, %8 : tensor<11xf32>
      %269 = arith.remf %cst_0, %cst_1 : f32
      %270 = tensor.empty() : tensor<4x11xi32>
      %271 = math.fpowi %6, %270 : tensor<4x11xf16>, tensor<4x11xi32>
      scf.yield %cst_3 : f16
    }
    default {
      %256 = index.maxs %29, %c14
      %257 = arith.minui %c1829376760_i64, %c1694361209_i64 : i64
      %258 = arith.shli %c118904530_i32, %c1780117628_i32 : i32
      %259 = affine.for %arg2 = 0 to 68 iter_args(%arg3 = %54) -> (index) {
        affine.yield %29 : index
      }
      %260 = arith.floordivsi %true, %false : i1
      %261 = vector.splat %c0 : vector<4xindex>
      %262 = index.ceildivu %256, %256
      %c-6897_i16 = arith.constant -6897 : i16
      %263 = math.atan2 %11, %9 : tensor<4x11xf32>
      memref.store %53, %alloc_4[%c3, %c7] : memref<4x11xi64>
      %264 = arith.divf %cst, %cst_3 : f16
      %265 = arith.floordivsi %c2005209551_i32, %c118904530_i32 : i32
      %266 = vector.flat_transpose %45 {columns = 11 : i32, rows = 1 : i32} : vector<11xi16> -> vector<11xi16>
      %cast_39 = tensor.cast %17 : tensor<11xi64> to tensor<?xi64>
      memref.store %cst_2, %alloc_20[] : memref<f16>
      %267 = math.rsqrt %9 : tensor<4x11xf32>
      scf.yield %cst_3 : f16
    }
    %60 = arith.remf %cst_3, %cst_2 : f16
    %c1_i64 = arith.constant 1 : i64
    %c0_i64 = arith.constant 0 : i64
    %61 = vector.transfer_read %0[%c10], %c0_i64 : tensor<11xi64>, vector<i64>
    %62 = math.copysign %cst_3, %cst_3 : f16
    %63 = vector.create_mask %c4, %26 : vector<4x11xi1>
    %64 = arith.xori %c2005209551_i32, %c1780117628_i32 : i32
    %65 = math.tanh %4 : tensor<11xf16>
    %66 = arith.cmpi ule, %c1_i64, %40 : i64
    %cst_24 = arith.constant 2.048000e+04 : f16
    %67 = math.log10 %6 : tensor<4x11xf16>
    %68 = math.log10 %1 : tensor<4xf16>
    %69 = affine.if affine_set<(d0, d1, d2, d3) : (d3 * 16 >= 0)>(%c14, %c2, %c9, %c15) -> i1 {
      %splat_39 = tensor.splat %cst : tensor<11xf16>
      %256 = arith.minf %cst_1, %cst_0 : f32
      %257 = arith.divf %cst_2, %cst_2 : f16
      %rank_40 = tensor.rank %10 : tensor<11xi16>
      %258 = vector.broadcast %c-13043_i16 : i16 to vector<11x11xi16>
      %259 = vector.outerproduct %47, %45, %258 {kind = #vector.kind<minui>} : vector<11xi16>, vector<11xi16>
      %260 = vector.reduction <add>, %18 : vector<16xf32> into f32
      %261 = arith.andi %53, %c1234797326_i64 : i64
      %262 = math.log1p %6 : tensor<4x11xf16>
      affine.yield %false : i1
    } else {
      %256 = math.cttz %10 : tensor<11xi16>
      %257 = arith.shli %c118904530_i32, %c1780117628_i32 : i32
      %rank_39 = tensor.rank %6 : tensor<4x11xf16>
      %258 = arith.addi %true, %false : i1
      %259 = math.ctlz %5 : tensor<4x11xi16>
      %260 = math.exp2 %14 : tensor<11xf32>
      %splat_40 = tensor.splat %c-20887_i16 : tensor<4x11xi16>
      %261 = arith.negf %cst_1 : f32
      affine.yield %false : i1
    }
    %70 = index.add %c7, %c10
    %71 = affine.min affine_map<(d0, d1, d2) -> (d1, 0)>(%41, %c13, %c5)
    %72 = index.sub %c10, %c5
    %73 = vector.broadcast %c11 : index to vector<4xindex>
    %74 = vector.broadcast %cst_0 : f32 to vector<4xf32>
    vector.scatter %alloc_10[%c3] [%73], %34, %74 : memref<4xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
    %75 = arith.subi %c1780117628_i32, %c1780117628_i32 : i32
    %76 = vector.broadcast %cst_0 : f32 to vector<4x11xf32>
    %77 = vector.fma %76, %76, %76 : vector<4x11xf32>
    %78 = arith.minui %c1829376760_i64, %c1829376760_i64 : i64
    %79 = arith.shrsi %false, %true : i1
    %80 = vector.insertelement %true, %34[%c6 : index] : vector<4xi1>
    %81 = math.roundeven %cst_2 : f16
    %82 = arith.remui %c1234797326_i64, %40 : i64
    %83 = math.tanh %4 : tensor<11xf16>
    %84 = affine.min affine_map<(d0, d1, d2) -> (d0 ceildiv 16 - d2, d0 ceildiv 16 - d2, d0)>(%c2, %71, %c11)
    %85 = memref.alloca_scope  -> (f16) {
      %256 = math.log1p %14 : tensor<11xf32>
      memref.store %c1_i64, %alloc_21[%c1] : memref<11xi64>
      %false_39 = index.bool.constant false
      %257 = scf.index_switch %c10 -> tensor<11xf16> 
      case 1 {
        %282 = arith.addf %cst_1, %cst_1 : f32
        %283 = arith.cmpf ueq, %cst_2, %cst_3 : f16
        %284 = math.log10 %1 : tensor<4xf16>
        %285 = math.expm1 %cst_3 : f16
        %286 = index.ceildivs %c9, %56
        %287 = math.exp2 %6 : tensor<4x11xf16>
        %288 = arith.minsi %c1_i64, %c1_i64 : i64
        %289 = math.sqrt %cst_3 : f16
        %expanded = tensor.expand_shape %3 [[0], [1, 2]] : tensor<4x11xi64> into tensor<4x11x1xi64>
        %290 = index.casts %c1_i64 : i64 to index
        %291 = bufferization.clone %alloc_20 : memref<f16> to memref<f16>
        %292 = math.copysign %11, %11 : tensor<4x11xf32>
        %293 = bufferization.clone %alloc_10 : memref<4xf32> to memref<4xf32>
        %294 = vector.load %alloc_13[%c1, %c10] : memref<4x11xi32>, vector<4x11xi32>
        %295 = math.rsqrt %6 : tensor<4x11xf16>
        %296 = index.add %50, %70
        scf.yield %4 : tensor<11xf16>
      }
      default {
        %282 = vector.broadcast %cst_0 : f32 to vector<11xf32>
        %283 = vector.fma %282, %282, %282 : vector<11xf32>
        %284 = arith.cmpi sle, %c1_i64, %c1829376760_i64 : i64
        %285 = arith.xori %c1694361209_i64, %40 : i64
        %286 = arith.minui %c2005209551_i32, %c1780117628_i32 : i32
        %287 = arith.maxui %c1694361209_i64, %c1234797326_i64 : i64
        affine.store %c2005209551_i32, %alloc_11[%c0, %c9] : memref<4x11xi32>
        %288 = vector.matrix_multiply %18, %283 {lhs_columns = 1 : i32, lhs_rows = 16 : i32, rhs_columns = 11 : i32} : (vector<16xf32>, vector<11xf32>) -> vector<176xf32>
        %289 = arith.floordivsi %true, %true : i1
        %290 = math.rsqrt %8 : tensor<11xf32>
        %291 = arith.remsi %40, %c1694361209_i64 : i64
        %292 = math.exp %9 : tensor<4x11xf32>
        %alloc_42 = memref.alloc() : memref<11x4x16xi16>
        memref.tensor_store %12, %alloc_42 : memref<11x4x16xi16>
        %293 = affine.max affine_map<(d0, d1) -> (-d0 + 18, (d0 floordiv 64) * 8, -d0 - d0 floordiv 64)>(%c5, %c11)
        %alloc_43 = memref.alloc() : memref<11x16xi16>
        %294 = tensor.empty() : tensor<4x16xi16>
        %295 = linalg.matmul ins(%5, %alloc_43 : tensor<4x11xi16>, memref<11x16xi16>) outs(%294 : tensor<4x16xi16>) -> tensor<4x16xi16>
        %296 = vector.broadcast %cst_2 : f16 to vector<11xf16>
        %297 = vector.maskedload %alloc_8[%c8], %46, %296 : memref<11xf16>, vector<11xi1>, vector<11xf16> into vector<11xf16>
        %298 = math.log1p %6 : tensor<4x11xf16>
        scf.yield %4 : tensor<11xf16>
      }
      %258 = arith.minui %c1780117628_i32, %c1780117628_i32 : i32
      affine.store %cst_0, %alloc[%c6, %c2] : memref<4x11xf32>
      %259 = affine.max affine_map<(d0, d1) -> (-4, -d1)>(%c4, %c4)
      %collapsed_40 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<11x4x16xi16> into tensor<44x16xi16>
      memref.alloca_scope  {
        %true_42 = index.bool.constant true
        %282 = vector.transpose %43, [0] : vector<11xi32> to vector<11xi32>
        %splat_43 = tensor.splat %cst_1 : tensor<11x4x16xf32>
        %283 = arith.addi %40, %53 : i64
        %284 = vector.load %alloc_19[%c2] : memref<11xf32>, vector<11xf32>
        %285 = affine.load %alloc[%c15, %c2] : memref<4x11xf32>
        %286 = vector.broadcast %26 : index to vector<4xindex>
        %287 = vector.broadcast %c1477322855_i32 : i32 to vector<4xi32>
        vector.scatter %alloc_11[%c0, %c7] [%286], %34, %287 : memref<4x11xi32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
        %false_44 = index.bool.constant false
        %288 = index.divu %c13, %c3
        %289 = arith.xori %c1_i64, %c1829376760_i64 : i64
        %290 = vector.broadcast %true : i1 to vector<4x4xi1>
        %291 = vector.outerproduct %34, %34, %290 {kind = #vector.kind<minsi>} : vector<4xi1>, vector<4xi1>
        %292 = arith.addi %c1829376760_i64, %c1234797326_i64 : i64
        %293 = math.powf %8, %8 : tensor<11xf32>
        %294 = memref.atomic_rmw mins %40, %alloc_12[%c10] : (i64, memref<11xi64>) -> i64
        %295 = math.tanh %14 : tensor<11xf32>
        memref.copy %alloc_11, %alloc_13 : memref<4x11xi32> to memref<4x11xi32>
        %296 = math.log1p %4 : tensor<11xf16>
        %297 = arith.addf %cst_1, %cst_0 : f32
        %298 = vector.insert %c1780117628_i32, %43 [9] : i32 into vector<11xi32>
        %299 = arith.negf %cst_1 : f32
        %false_45 = index.bool.constant false
        %300 = math.powf %285, %285 : f32
        %301 = arith.addf %cst_1, %285 : f32
        %302 = index.floordivs %71, %41
        bufferization.dealloc_tensor %3 : tensor<4x11xi64>
        %collapsed_46 = tensor.collapse_shape %2 [[0, 1]] : tensor<4x11xi64> into tensor<44xi64>
        %303 = index.sub %26, %c2
        %304 = math.ipowi %10, %10 : tensor<11xi16>
        %cst_47 = arith.constant 1.000000e+00 : f16
        %cst_48 = arith.constant 0.000000e+00 : f16
        %305 = vector.transfer_read %1[%50], %cst_48 : tensor<4xf16>, vector<f16>
        %splat_49 = tensor.splat %285 : tensor<4xf32>
        %306 = arith.remf %cst_47, %cst_47 : f16
        %307 = math.floor %11 : tensor<4x11xf32>
      }
      %260 = math.atan2 %14, %14 : tensor<11xf32>
      %261 = vector.insertelement %c118904530_i32, %43[%54 : index] : vector<11xi32>
      %262 = index.maxs %c12, %70
      %263 = vector.insert %c1780117628_i32, %43 [6] : i32 into vector<11xi32>
      %264 = math.cttz %20 : tensor<i64>
      %265 = bufferization.clone %alloc_17 : memref<4x11xi64> to memref<4x11xi64>
      %266 = vector.broadcast %c9 : index to vector<4xindex>
      %267 = vector.broadcast %c118904530_i32 : i32 to vector<4xi32>
      vector.scatter %alloc_9[%c4] [%266], %34, %267 : memref<11xi32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
      memref.alloca_scope  {
        %282 = vector.broadcast %c1_i64 : i64 to vector<11x4x16xi64>
        %283 = vector.broadcast %true : i1 to vector<11x4x16xi1>
        %284 = vector.broadcast %c118904530_i32 : i32 to vector<11x4x16xi32>
        %285 = vector.gather %3[%26, %262] [%284], %283, %282 : tensor<4x11xi64>, vector<11x4x16xi32>, vector<11x4x16xi1>, vector<11x4x16xi64> into vector<11x4x16xi64>
        %286 = arith.xori %c1694361209_i64, %c1234797326_i64 : i64
        bufferization.dealloc_tensor %9 : tensor<4x11xf32>
        %from_elements = tensor.from_elements %c1234797326_i64, %c1829376760_i64, %c1829376760_i64, %c1694361209_i64, %c1694361209_i64, %53, %40, %53, %c1234797326_i64, %c1829376760_i64, %c1234797326_i64 : tensor<11xi64>
        %287 = vector.broadcast %c-20887_i16 : i16 to vector<i16>
        %288 = vector.transfer_write %287, %10[%c2] : vector<i16>, tensor<11xi16>
        %289 = bufferization.clone %alloc_15 : memref<4xi32> to memref<4xi32>
        %290 = math.log1p %8 : tensor<11xf32>
        %291 = arith.remf %cst, %cst_2 : f16
        %292 = vector.extract_strided_slice %77 {offsets = [2], sizes = [1], strides = [1]} : vector<4x11xf32> to vector<1x11xf32>
        %293 = arith.minsi %c1829376760_i64, %c1_i64 : i64
        %294 = index.maxs %c1, %c13
        %295 = vector.extract %63[3] : vector<4x11xi1>
        %296 = math.log10 %cst_0 : f32
        %297 = math.fma %1, %1, %1 : tensor<4xf16>
        %298 = math.atan2 %4, %4 : tensor<11xf16>
        %299 = index.sub %37, %26
        %300 = math.exp2 %9 : tensor<4x11xf32>
        %301 = arith.addf %cst_1, %cst_1 : f32
        %collapsed_42 = tensor.collapse_shape %9 [[0, 1]] : tensor<4x11xf32> into tensor<44xf32>
        %302 = index.mul %c3, %84
        %303 = affine.min affine_map<(d0, d1, d2) -> (d2 ceildiv 32 + 4, -d0)>(%259, %c15, %26)
        %304 = bufferization.to_tensor %alloc_21 : memref<11xi64>
        bufferization.dealloc_tensor %4 : tensor<11xf16>
        %305 = math.absi %40 : i64
        %306 = vector.insertelement %cst_0, %18[%c10 : index] : vector<16xf32>
        %307 = vector.matrix_multiply %45, %47 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi16>, vector<11xi16>) -> vector<1xi16>
        %308 = bufferization.clone %alloc_9 : memref<11xi32> to memref<11xi32>
        %309 = arith.addf %cst_0, %cst_1 : f32
        %310 = index.castu %c1780117628_i32 : i32 to index
        %311 = vector.broadcast %c1780117628_i32 : i32 to vector<4xi32>
        %312 = vector.maskedload %alloc_9[%c0], %34, %311 : memref<11xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
        %313 = vector.transpose %284, [1, 0, 2] : vector<11x4x16xi32> to vector<4x11x16xi32>
        %alloc_43 = memref.alloc() : memref<4xi1>
      }
      %268 = vector.broadcast %cst_1 : f32 to vector<11xf32>
      %269 = vector.gather %11[%41, %37] [%43], %46, %268 : tensor<4x11xf32>, vector<11xi32>, vector<11xi1>, vector<11xf32> into vector<11xf32>
      %270 = vector.insert %46, %63 [2] : vector<11xi1> into vector<4x11xi1>
      %271 = scf.if %true -> (f32) {
        %282 = vector.create_mask %c14, %c13, %54 : vector<11x4x16xi1>
        %283 = index.divu %c8, %262
        %284 = affine.load %alloc_15[%c3] : memref<4xi32>
        %285 = index.casts %c13 : index to i32
        %286 = index.divu %c0, %c14
        %287 = index.add %54, %54
        %288 = tensor.empty() : tensor<4x11xi1>
        %289 = index.maxs %262, %c11
        scf.yield %cst_1 : f32
      } else {
        %alloc_42 = memref.alloc() : memref<11xf32>
        %282 = math.sqrt %cst_0 : f32
        %283 = vector.insert %269, %77 [1] : vector<11xf32> into vector<4x11xf32>
        %284 = vector.splat %37 : vector<11x4x16xindex>
        %285 = arith.floordivsi %c1477322855_i32, %c1780117628_i32 : i32
        %286 = math.powf %cst, %cst : f16
        %287 = index.add %37, %262
        %288 = vector.broadcast %c1_i64 : i64 to vector<11xi64>
        %289 = vector.maskedload %265[%c0, %c7], %46, %288 : memref<4x11xi64>, vector<11xi1>, vector<11xi64> into vector<11xi64>
        scf.yield %cst_1 : f32
      }
      affine.store %cst, %alloc_20[] : memref<f16>
      %272 = index.ceildivu %26, %26
      %alloc_41 = memref.alloc() : memref<11x4x16xi16>
      %273 = vector.gather %alloc_41[%c10, %c0, %c3] [%43], %46, %45 : memref<11x4x16xi16>, vector<11xi32>, vector<11xi1>, vector<11xi16> into vector<11xi16>
      %274 = arith.cmpi slt, %c1_i64, %c1829376760_i64 : i64
      %275 = index.divs %c7, %72
      bufferization.dealloc_tensor %14 : tensor<11xf32>
      %276 = index.floordivs %29, %c6
      %277 = arith.shrsi %c1694361209_i64, %40 : i64
      %278 = math.round %14 : tensor<11xf32>
      %279 = arith.minf %cst, %cst : f16
      %280 = arith.shli %c1477322855_i32, %c1477322855_i32 : i32
      %281 = math.copysign %9, %11 : tensor<4x11xf32>
      memref.alloca_scope.return %cst_3 : f16
    }
    %86 = arith.remf %cst_1, %cst_0 : f32
    %87 = arith.xori %c1780117628_i32, %c118904530_i32 : i32
    %88 = arith.addi %c1234797326_i64, %c1829376760_i64 : i64
    %89 = vector.splat %c13 : vector<11xindex>
    %90 = vector.insert %c-13043_i16, %47 [0] : i16 into vector<11xi16>
    %91 = arith.minf %cst_1, %cst_1 : f32
    %extracted = tensor.extract %13[%c0] : tensor<11xi16>
    %92 = memref.alloca_scope  -> (f32) {
      %256 = affine.min affine_map<(d0, d1) -> (-d0)>(%35, %c3)
      %257 = math.log10 %9 : tensor<4x11xf32>
      %258 = vector.broadcast %c2005209551_i32 : i32 to vector<4xi32>
      %259 = vector.broadcast %cst_1 : f32 to vector<11xf32>
      %260 = vector.insert %259, %76 [2] : vector<11xf32> into vector<4x11xf32>
      %261 = index.ceildivu %c11, %c5
      %262 = math.log10 %4 : tensor<11xf16>
      %263 = math.exp %8 : tensor<11xf32>
      %264 = math.exp2 %8 : tensor<11xf32>
      %265 = index.divu %50, %c8
      %266 = vector.reduction <or>, %43 : vector<11xi32> into i32
      %267 = index.sub %c4, %c15
      %268 = index.mul %c6, %56
      %269 = vector.insertelement %c-13043_i16, %47[%41 : index] : vector<11xi16>
      %270 = vector.broadcast %40 : i64 to vector<11xi64>
      %271 = vector.maskedload %alloc_18[%c3, %c7], %46, %270 : memref<4x11xi64>, vector<11xi1>, vector<11xi64> into vector<11xi64>
      %272 = math.log %11 : tensor<4x11xf32>
      %273 = index.add %268, %c9
      %274 = bufferization.clone %alloc_12 : memref<11xi64> to memref<11xi64>
      %275 = vector.splat %40 : vector<4x11xi64>
      %generated_39 = tensor.generate %265 {
      ^bb0(%arg2: index, %arg3: index):
        %289 = affine.load %alloc_10[%c0] : memref<4xf32>
        %290 = index.maxs %84, %c2
        %cast_40 = tensor.cast %6 : tensor<4x11xf16> to tensor<?x?xf16>
        %extracted_41 = tensor.extract %14[%c0] : tensor<11xf32>
        tensor.yield %c-20887_i16 : i16
      } : tensor<?x11xi16>
      %276 = vector.maskedload %alloc_5[%c3, %c9], %46, %47 : memref<4x11xi16>, vector<11xi1>, vector<11xi16> into vector<11xi16>
      %from_elements = tensor.from_elements %c-13043_i16, %c-13043_i16, %c-13043_i16, %c-20887_i16, %extracted, %c-20887_i16, %c-20887_i16, %c-20887_i16, %extracted, %extracted, %c-13043_i16, %c-20887_i16, %extracted, %c-20887_i16, %c-20887_i16, %c-20887_i16, %extracted, %c-20887_i16, %extracted, %c-13043_i16, %extracted, %extracted, %c-13043_i16, %c-20887_i16, %extracted, %c-20887_i16, %extracted, %c-13043_i16, %c-20887_i16, %c-13043_i16, %c-20887_i16, %c-13043_i16, %c-13043_i16, %extracted, %c-20887_i16, %c-13043_i16, %extracted, %c-13043_i16, %c-13043_i16, %c-20887_i16, %extracted, %c-13043_i16, %extracted, %extracted, %c-13043_i16, %c-20887_i16, %extracted, %extracted, %c-13043_i16, %extracted, %c-13043_i16, %c-13043_i16, %extracted, %c-20887_i16, %c-13043_i16, %extracted, %c-20887_i16, %c-20887_i16, %c-20887_i16, %extracted, %c-13043_i16, %c-20887_i16, %extracted, %c-20887_i16, %c-20887_i16, %c-20887_i16, %c-13043_i16, %c-13043_i16, %extracted, %extracted, %c-13043_i16, %c-13043_i16, %extracted, %extracted, %extracted, %c-13043_i16, %extracted, %c-13043_i16, %c-13043_i16, %extracted, %extracted, %extracted, %extracted, %c-20887_i16, %c-13043_i16, %c-20887_i16, %c-20887_i16, %extracted, %c-20887_i16, %c-13043_i16, %c-13043_i16, %c-13043_i16, %extracted, %c-13043_i16, %c-20887_i16, %c-13043_i16, %c-13043_i16, %c-13043_i16, %c-13043_i16, %extracted, %extracted, %c-13043_i16, %extracted, %c-20887_i16, %extracted, %c-13043_i16, %c-20887_i16, %extracted, %c-13043_i16, %c-20887_i16, %extracted, %extracted, %extracted, %c-13043_i16, %extracted, %c-20887_i16, %extracted, %extracted, %extracted, %extracted, %extracted, %c-20887_i16, %c-20887_i16, %c-13043_i16, %c-20887_i16, %c-20887_i16, %extracted, %c-13043_i16, %extracted, %extracted, %extracted, %c-20887_i16, %extracted, %extracted, %c-20887_i16, %extracted, %extracted, %c-20887_i16, %c-20887_i16, %c-13043_i16, %c-20887_i16, %c-20887_i16, %c-20887_i16, %c-13043_i16, %extracted, %c-20887_i16, %c-13043_i16, %extracted, %c-13043_i16, %extracted, %c-20887_i16, %extracted, %c-13043_i16, %c-13043_i16, %extracted, %c-20887_i16, %c-13043_i16, %c-20887_i16, %extracted, %c-20887_i16, %extracted, %c-20887_i16, %extracted, %c-20887_i16, %extracted, %extracted, %extracted, %c-13043_i16, %extracted, %c-20887_i16, %c-20887_i16, %c-13043_i16, %c-20887_i16, %extracted, %c-20887_i16, %extracted, %c-20887_i16, %c-20887_i16, %c-20887_i16, %c-20887_i16, %c-13043_i16, %extracted, %extracted, %c-20887_i16, %extracted, %extracted, %c-20887_i16, %c-20887_i16, %extracted, %extracted, %c-13043_i16, %c-20887_i16, %c-20887_i16, %c-20887_i16, %c-20887_i16, %c-13043_i16, %c-20887_i16, %c-20887_i16, %c-20887_i16, %c-13043_i16, %c-20887_i16, %c-20887_i16, %extracted, %extracted, %extracted, %c-13043_i16, %c-13043_i16, %extracted, %extracted, %c-20887_i16, %c-20887_i16, %extracted, %c-13043_i16, %c-20887_i16, %c-13043_i16, %c-13043_i16, %extracted, %c-20887_i16, %c-13043_i16, %c-20887_i16, %extracted, %c-20887_i16, %c-20887_i16, %c-20887_i16, %c-13043_i16, %extracted, %extracted, %c-13043_i16, %extracted, %c-20887_i16, %c-13043_i16, %c-13043_i16, %c-13043_i16, %c-20887_i16, %extracted, %extracted, %c-13043_i16, %c-20887_i16, %c-13043_i16, %c-13043_i16, %c-20887_i16, %c-20887_i16, %c-20887_i16, %c-13043_i16, %c-13043_i16, %c-13043_i16, %c-20887_i16, %c-20887_i16, %extracted, %c-13043_i16, %c-20887_i16, %c-13043_i16, %extracted, %c-20887_i16, %c-20887_i16, %extracted, %extracted, %extracted, %extracted, %c-20887_i16, %c-20887_i16, %c-13043_i16, %c-13043_i16, %extracted, %extracted, %c-20887_i16, %c-13043_i16, %c-20887_i16, %c-20887_i16, %c-20887_i16, %c-20887_i16, %extracted, %c-13043_i16, %c-13043_i16, %extracted, %c-13043_i16, %c-13043_i16, %extracted, %extracted, %c-20887_i16, %c-20887_i16, %extracted, %c-20887_i16, %c-13043_i16, %extracted, %c-13043_i16, %c-20887_i16, %extracted, %extracted, %extracted, %c-20887_i16, %extracted, %extracted, %extracted, %extracted, %c-13043_i16, %c-13043_i16, %extracted, %extracted, %c-20887_i16, %c-13043_i16, %extracted, %extracted, %extracted, %c-20887_i16, %extracted, %extracted, %c-13043_i16, %c-13043_i16, %c-13043_i16, %c-20887_i16, %extracted, %c-20887_i16, %extracted, %extracted, %extracted, %c-13043_i16, %c-13043_i16, %c-20887_i16, %c-13043_i16, %extracted, %c-20887_i16, %c-13043_i16, %extracted, %c-13043_i16, %extracted, %extracted, %c-20887_i16, %extracted, %c-13043_i16, %c-13043_i16, %extracted, %c-20887_i16, %c-13043_i16, %c-13043_i16, %c-13043_i16, %c-20887_i16, %c-20887_i16, %c-20887_i16, %extracted, %extracted, %extracted, %c-20887_i16, %c-13043_i16, %c-20887_i16, %c-13043_i16, %c-20887_i16, %extracted, %c-13043_i16, %c-20887_i16, %c-20887_i16, %c-13043_i16, %c-20887_i16, %c-20887_i16, %extracted, %c-20887_i16, %c-20887_i16, %c-13043_i16, %c-20887_i16, %c-20887_i16, %c-20887_i16, %extracted, %extracted, %extracted, %c-13043_i16, %c-13043_i16, %extracted, %c-13043_i16, %extracted, %c-20887_i16, %c-13043_i16, %c-13043_i16, %extracted, %c-13043_i16, %c-20887_i16, %c-13043_i16, %extracted, %c-13043_i16, %c-13043_i16, %c-13043_i16, %c-13043_i16, %c-20887_i16, %c-13043_i16, %extracted, %c-20887_i16, %extracted, %extracted, %extracted, %c-20887_i16, %extracted, %c-13043_i16, %c-13043_i16, %c-20887_i16, %c-13043_i16, %c-13043_i16, %c-20887_i16, %c-20887_i16, %extracted, %c-13043_i16, %c-13043_i16, %extracted, %extracted, %extracted, %extracted, %c-20887_i16, %c-20887_i16, %c-13043_i16, %c-20887_i16, %c-20887_i16, %extracted, %extracted, %extracted, %c-20887_i16, %extracted, %c-13043_i16, %c-13043_i16, %c-20887_i16, %c-20887_i16, %c-13043_i16, %extracted, %extracted, %c-13043_i16, %c-20887_i16, %c-20887_i16, %extracted, %c-20887_i16, %extracted, %c-13043_i16, %c-13043_i16, %extracted, %extracted, %extracted, %c-20887_i16, %c-20887_i16, %c-20887_i16, %extracted, %extracted, %c-20887_i16, %c-13043_i16, %c-20887_i16, %c-13043_i16, %c-13043_i16, %c-20887_i16, %extracted, %extracted, %c-20887_i16, %c-20887_i16, %extracted, %c-20887_i16, %c-13043_i16, %extracted, %extracted, %c-20887_i16, %extracted, %extracted, %c-13043_i16, %extracted, %c-13043_i16, %c-20887_i16, %extracted, %extracted, %extracted, %extracted, %c-20887_i16, %c-20887_i16, %c-20887_i16, %c-20887_i16, %c-13043_i16, %c-13043_i16, %extracted, %extracted, %extracted, %extracted, %c-13043_i16, %c-13043_i16, %extracted, %c-13043_i16, %c-20887_i16, %c-20887_i16, %c-20887_i16, %c-13043_i16, %c-20887_i16, %c-13043_i16, %c-13043_i16, %c-13043_i16, %extracted, %extracted, %extracted, %extracted, %c-13043_i16, %c-20887_i16, %c-20887_i16, %c-20887_i16, %extracted, %c-20887_i16, %extracted, %c-20887_i16, %c-20887_i16, %extracted, %extracted, %c-20887_i16, %c-13043_i16, %extracted, %extracted, %c-13043_i16, %c-13043_i16, %c-20887_i16, %c-13043_i16, %c-13043_i16, %extracted, %extracted, %c-20887_i16, %extracted, %extracted, %c-20887_i16, %c-20887_i16, %c-13043_i16, %c-20887_i16, %c-13043_i16, %extracted, %c-20887_i16, %c-20887_i16, %extracted, %extracted, %c-13043_i16, %c-20887_i16, %c-13043_i16, %extracted, %c-13043_i16, %c-13043_i16, %extracted, %extracted, %c-20887_i16, %c-13043_i16, %extracted, %c-13043_i16, %extracted, %c-13043_i16, %c-13043_i16, %extracted, %extracted, %c-20887_i16, %extracted, %c-20887_i16, %c-13043_i16, %extracted, %c-13043_i16, %c-20887_i16, %extracted, %extracted, %c-13043_i16, %c-20887_i16, %c-13043_i16, %c-13043_i16, %c-20887_i16, %extracted, %c-20887_i16, %extracted, %extracted, %c-13043_i16, %extracted, %c-20887_i16, %c-20887_i16, %c-13043_i16, %c-20887_i16, %extracted, %c-13043_i16, %extracted, %extracted, %c-20887_i16, %c-13043_i16, %c-13043_i16, %extracted, %c-20887_i16, %c-13043_i16, %c-13043_i16, %c-20887_i16, %c-20887_i16, %c-13043_i16, %c-13043_i16, %c-20887_i16, %c-20887_i16, %extracted, %c-13043_i16, %c-13043_i16, %c-13043_i16, %c-13043_i16, %c-13043_i16, %c-13043_i16, %extracted, %extracted, %extracted, %extracted, %extracted, %c-20887_i16, %extracted, %c-20887_i16, %c-13043_i16, %c-13043_i16, %extracted, %extracted, %extracted, %c-13043_i16, %extracted, %extracted, %c-20887_i16, %c-13043_i16, %extracted, %c-20887_i16, %c-13043_i16, %extracted, %c-20887_i16, %c-20887_i16, %c-20887_i16, %c-13043_i16, %c-13043_i16, %c-13043_i16, %extracted, %extracted, %extracted, %c-13043_i16, %c-20887_i16, %c-13043_i16, %extracted, %c-13043_i16, %c-13043_i16, %extracted, %c-20887_i16, %c-13043_i16, %c-20887_i16, %c-20887_i16, %c-20887_i16, %extracted, %c-20887_i16, %extracted, %c-13043_i16, %c-13043_i16, %c-13043_i16, %c-13043_i16, %c-20887_i16, %c-20887_i16, %c-13043_i16, %c-20887_i16, %c-13043_i16, %extracted, %c-13043_i16, %c-13043_i16, %extracted, %c-13043_i16, %c-20887_i16, %c-20887_i16, %c-13043_i16, %extracted, %c-20887_i16, %extracted, %c-20887_i16, %extracted, %extracted, %c-13043_i16, %extracted, %c-20887_i16, %extracted, %c-20887_i16, %c-13043_i16, %c-20887_i16, %c-13043_i16, %c-13043_i16, %extracted, %c-13043_i16, %c-13043_i16, %extracted, %c-20887_i16, %c-13043_i16, %extracted, %c-13043_i16, %c-13043_i16, %extracted, %extracted, %c-20887_i16, %c-20887_i16, %extracted, %c-13043_i16, %extracted, %c-13043_i16, %c-13043_i16, %c-13043_i16, %c-13043_i16, %c-20887_i16, %c-20887_i16, %c-13043_i16, %extracted, %c-20887_i16, %c-13043_i16, %c-20887_i16, %c-13043_i16, %c-13043_i16, %c-13043_i16, %c-13043_i16, %extracted, %c-13043_i16, %c-20887_i16, %extracted, %extracted, %extracted : tensor<11x4x16xi16>
      %277 = math.cttz %7 : tensor<11x4x16xi32>
      %278 = affine.for %arg2 = 0 to 42 iter_args(%arg3 = %259) -> (vector<11xf32>) {
        affine.yield %259 : vector<11xf32>
      }
      %279 = vector.broadcast %cst_3 : f16 to vector<11xf16>
      %280 = vector.maskedload %alloc_8[%c4], %46, %279 : memref<11xf16>, vector<11xi1>, vector<11xf16> into vector<11xf16>
      %281 = index.sub %70, %256
      %282 = math.log2 %6 : tensor<4x11xf16>
      %283 = math.atan2 %cst_3, %cst : f16
      %284 = math.round %14 : tensor<11xf32>
      %285 = vector.matrix_multiply %45, %47 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi16>, vector<11xi16>) -> vector<1xi16>
      %286 = index.ceildivu %54, %c4
      %287 = math.cttz %7 : tensor<11x4x16xi32>
      %288 = math.exp %cst_2 : f16
      memref.alloca_scope.return %cst_0 : f32
    }
    %93 = arith.cmpi slt, %c1_i64, %53 : i64
    %94 = vector.extract_strided_slice %63 {offsets = [1], sizes = [2], strides = [1]} : vector<4x11xi1> to vector<2x11xi1>
    %alloc_25 = memref.alloc() : memref<11xi32>
    memref.copy %alloc_9, %alloc_25 : memref<11xi32> to memref<11xi32>
    %95 = math.round %11 : tensor<4x11xf32>
    %extracted_26 = tensor.extract %16[%c4] : tensor<11xi64>
    %96 = math.rsqrt %11 : tensor<4x11xf32>
    %97 = arith.remf %cst_0, %cst_1 : f32
    %98 = arith.minf %cst_3, %cst_3 : f16
    %99 = vector.broadcast %92 : f32 to vector<11xf32>
    %100 = vector.fma %99, %99, %99 : vector<11xf32>
    %101 = arith.minui %c1234797326_i64, %c1829376760_i64 : i64
    %102 = math.ctlz %12 : tensor<11x4x16xi16>
    %103 = index.sub %84, %c12
    %true_27 = index.bool.constant true
    %104 = arith.cmpi ugt, %c1_i64, %53 : i64
    %105 = arith.cmpf ult, %cst_3, %cst : f16
    %106 = vector.broadcast %cst_1 : f32 to vector<11x4x16xf32>
    %107 = vector.fma %106, %106, %106 : vector<11x4x16xf32>
    %108 = index.floordivs %c2, %c8
    %collapsed = tensor.collapse_shape %6 [[0, 1]] : tensor<4x11xf16> into tensor<44xf16>
    %109 = arith.remf %cst_3, %cst : f16
    %collapsed_28 = tensor.collapse_shape %5 [[0, 1]] : tensor<4x11xi16> into tensor<44xi16>
    %110 = math.log %14 : tensor<11xf32>
    %111 = math.cttz %collapsed_28 : tensor<44xi16>
    %splat_29 = tensor.splat %c2005209551_i32 : tensor<11xi32>
    %112 = arith.maxui %c-20887_i16, %c-13043_i16 : i16
    %113 = math.sqrt %cst_0 : f32
    scf.index_switch %c9 
    case 1 {
      %256 = vector.extract_strided_slice %63 {offsets = [1], sizes = [3], strides = [1]} : vector<4x11xi1> to vector<3x11xi1>
      %257 = math.rsqrt %14 : tensor<11xf32>
      %splat_39 = tensor.splat %extracted_26 : tensor<11xi64>
      %258 = math.roundeven %1 : tensor<4xf16>
      %259 = arith.cmpi uge, %53, %c1234797326_i64 : i64
      %260 = arith.cmpi sge, %40, %c1_i64 : i64
      %261 = math.ipowi %extracted, %extracted : i16
      %262 = vector.matrix_multiply %100, %99 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xf32>, vector<11xf32>) -> vector<1xf32>
      %263 = vector.broadcast %c3 : index to vector<15xindex>
      %264 = vector.broadcast %true_27 : i1 to vector<15xi1>
      %265 = vector.broadcast %40 : i64 to vector<15xi64>
      vector.scatter %alloc_12[%c10] [%263], %264, %265 : memref<11xi64>, vector<15xindex>, vector<15xi1>, vector<15xi64>
      %266 = arith.xori %c1780117628_i32, %c1780117628_i32 : i32
      %267 = math.copysign %4, %4 : tensor<11xf16>
      %cst_40 = arith.constant 1.000000e+00 : f16
      %cst_41 = arith.constant 0.000000e+00 : f16
      %268 = vector.transfer_read %6[%26, %54], %cst_41 : tensor<4x11xf16>, vector<f16>
      %269 = arith.minsi %true_27, %true_27 : i1
      %270 = math.atan2 %1, %1 : tensor<4xf16>
      %271 = vector.insert %46, %94 [0] : vector<11xi1> into vector<2x11xi1>
      %272 = index.sizeof
      scf.yield
    }
    case 2 {
      %256 = math.log2 %collapsed : tensor<44xf16>
      %257 = tensor.empty() : tensor<16xi16>
      %alloc_39 = memref.alloc() : memref<11x16xi16>
      %258 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%257, %alloc_39 : tensor<16xi16>, memref<11x16xi16>) outs(%12 : tensor<11x4x16xi16>) {
      ^bb0(%in: i16, %in_40: i16, %out: i16):
        %275 = vector.broadcast %c8 : index to vector<11xindex>
        vector.scatter %alloc_15[%c2] [%275], %46, %43 : memref<4xi32>, vector<11xindex>, vector<11xi1>, vector<11xi32>
        %276 = affine.min affine_map<(d0) -> (-(d0 ceildiv 128), 0, d0 ceildiv 64, -(d0 ceildiv 128))>(%c6)
        %277 = arith.maxf %cst_1, %92 : f32
        %278 = math.absi %16 : tensor<11xi64>
        %279 = vector.load %alloc_10[%c1] : memref<4xf32>, vector<4x11xf32>
        %dest_41, %accumulated_value_42 = vector.scan <mul>, %279, %100 {inclusive = true, reduction_dim = 0 : i64} : vector<4x11xf32>, vector<11xf32>
        memref.store %cst_0, %alloc_19[%c6] : memref<11xf32>
        %280 = index.maxs %35, %72
        %281 = math.rsqrt %9 : tensor<4x11xf32>
        %282 = index.floordivs %35, %41
        %283 = arith.remf %cst_3, %cst : f16
        %284 = vector.insertelement %true, %46[%84 : index] : vector<11xi1>
        %285 = vector.broadcast %cst_0 : f32 to vector<4x11xf32>
        %286 = vector.fma %285, %76, %285 : vector<4x11xf32>
        %287 = index.sub %c12, %c10
        %288 = arith.divui %true, %false : i1
        %289 = affine.apply affine_map<(d0, d1) -> (-d1)>(%287, %70)
        %290 = math.exp2 %14 : tensor<11xf32>
        %291 = vector.maskedload %alloc_13[%c3, %c0], %46, %43 : memref<4x11xi32>, vector<11xi1>, vector<11xi32> into vector<11xi32>
        %292 = vector.broadcast %cst_1 : f32 to vector<11x4x16xf32>
        %293 = vector.fma %292, %107, %107 : vector<11x4x16xf32>
        %294 = vector.insertelement %c2005209551_i32, %291[%287 : index] : vector<11xi32>
        %295 = memref.load %alloc_7[%c2] : memref<4xf32>
        %296 = bufferization.clone %alloc_17 : memref<4x11xi64> to memref<4x11xi64>
        %297 = math.log10 %8 : tensor<11xf32>
        %298 = math.cttz %3 : tensor<4x11xi64>
        %299 = math.exp2 %cst_1 : f32
        %300 = arith.addi %c1_i64, %c1694361209_i64 : i64
        %301 = bufferization.clone %alloc : memref<4x11xf32> to memref<4x11xf32>
        %302 = memref.load %alloc_20[] : memref<f16>
        %303 = arith.divui %in_40, %extracted : i16
        %304 = math.exp %collapsed : tensor<44xf16>
        %305 = math.atan %6 : tensor<4x11xf16>
        %306 = math.log10 %collapsed : tensor<44xf16>
        linalg.yield %c-13043_i16 : i16
      } -> tensor<11x4x16xi16>
      %259 = arith.cmpi sgt, %true_27, %true_27 : i1
      %260 = vector.broadcast %cst_0 : f32 to vector<15xf32>
      %261 = vector.broadcast %true : i1 to vector<15xi1>
      %262 = vector.maskedload %alloc_19[%c5], %261, %260 : memref<11xf32>, vector<15xi1>, vector<15xf32> into vector<15xf32>
      %263 = index.castu %extracted_26 : i64 to index
      %264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%12 : tensor<11x4x16xi16>) outs(%12 : tensor<11x4x16xi16>) {
      ^bb0(%in: i16, %out: i16):
        %275 = arith.minf %cst_2, %cst_2 : f16
        %false_40 = index.bool.constant false
        %276 = vector.load %alloc_13[%c2, %c0] : memref<4x11xi32>, vector<4xi32>
        %277 = vector.insert %92, %99 [7] : f32 into vector<11xf32>
        %extracted_41 = tensor.extract %4[%c4] : tensor<11xf16>
        %278 = math.floor %cst_3 : f16
        %279 = affine.load %alloc_5[%c12, %c0] : memref<4x11xi16>
        %280 = arith.shrui %c1780117628_i32, %c1780117628_i32 : i32
        %281 = math.cttz %c1234797326_i64 : i64
        %282 = vector.broadcast %in : i16 to vector<4xi16>
        %283 = vector.maskedload %alloc_5[%c1, %c10], %34, %282 : memref<4x11xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
        %284 = arith.divf %cst_1, %cst_0 : f32
        %285 = math.sqrt %8 : tensor<11xf32>
        %286 = vector.create_mask %c3, %c12, %263 : vector<11x4x16xi1>
        %287 = math.log1p %14 : tensor<11xf32>
        %288 = math.tan %6 : tensor<4x11xf16>
        %289 = math.log10 %92 : f32
        %290 = arith.shli %extracted_26, %c1234797326_i64 : i64
        %291 = index.mul %c6, %c6
        %292 = index.maxu %50, %108
        %293 = index.maxs %c6, %c14
        memref.store %c2005209551_i32, %alloc_6[%c2, %c3] : memref<4x11xi32>
        %294 = affine.max affine_map<(d0, d1) -> (0, d0 ceildiv 128, d1 + d0)>(%72, %263)
        %295 = math.log1p %6 : tensor<4x11xf16>
        %296 = vector.broadcast %279 : i16 to vector<11x4x16xi16>
        %collapsed_42 = tensor.collapse_shape %15 [[0, 1]] : tensor<4x11xi16> into tensor<44xi16>
        %297 = math.ipowi %0, %0 : tensor<11xi64>
        %298 = index.sub %108, %c11
        %299 = vector.maskedload %alloc_16[%c0], %34, %283 : memref<4xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
        %300 = math.copysign %9, %9 : tensor<4x11xf32>
        %301 = arith.shrui %true, %false_40 : i1
        memref.copy %alloc_17, %alloc_4 : memref<4x11xi64> to memref<4x11xi64>
        %302 = vector.broadcast %cst_0 : f32 to vector<11x4x16xf32>
        linalg.yield %c-13043_i16 : i16
      } -> tensor<11x4x16xi16>
      %265 = math.roundeven %cst_2 : f16
      %266 = math.exp2 %4 : tensor<11xf16>
      vector.print %106 : vector<11x4x16xf32>
      %267 = tensor.empty() : tensor<11x15xf16>
      %268 = tensor.empty() : tensor<4x15xf16>
      %269 = linalg.matmul ins(%6, %267 : tensor<4x11xf16>, tensor<11x15xf16>) outs(%268 : tensor<4x15xf16>) -> tensor<4x15xf16>
      %270 = math.absf %14 : tensor<11xf32>
      bufferization.dealloc_tensor %splat_23 : tensor<4xi1>
      %271 = math.log2 %4 : tensor<11xf16>
      %272 = arith.xori %true, %true : i1
      %273 = math.log2 %cst_3 : f16
      %274 = vector.multi_reduction <maxsi>, %44, %43 [0] : vector<4x11xi32> to vector<11xi32>
      scf.yield
    }
    case 3 {
      %generated_39 = tensor.generate %c5 {
      ^bb0(%arg2: index):
        %alloc_41 = memref.alloc() : memref<11xf16>
        memref.copy %alloc_8, %alloc_41 : memref<11xf16> to memref<11xf16>
        %269 = vector.insertelement %true_27, %34[%37 : index] : vector<4xi1>
        %cst_42 = arith.constant 1.000000e+00 : f32
        %270 = vector.transfer_read %alloc_10[%c10], %cst_42 : memref<4xf32>, vector<f32>
        %271 = vector.insertelement %c-20887_i16, %47[%c3 : index] : vector<11xi16>
        tensor.yield %c1477322855_i32 : i32
      } : tensor<?xi32>
      %256 = arith.shli %53, %c1234797326_i64 : i64
      %257 = bufferization.clone %alloc_15 : memref<4xi32> to memref<4xi32>
      %258 = math.sqrt %cst_2 : f16
      %259 = vector.matrix_multiply %99, %18 {lhs_columns = 1 : i32, lhs_rows = 11 : i32, rhs_columns = 16 : i32} : (vector<11xf32>, vector<16xf32>) -> vector<176xf32>
      %260 = vector.broadcast %c1234797326_i64 : i64 to vector<15xi64>
      %261 = vector.broadcast %true : i1 to vector<15xi1>
      %262 = vector.maskedload %alloc_12[%c7], %261, %260 : memref<11xi64>, vector<15xi1>, vector<15xi64> into vector<15xi64>
      %inserted = tensor.insert %extracted into %12[%c6, %c1, %c9] : tensor<11x4x16xi16>
      bufferization.dealloc_tensor %14 : tensor<11xf32>
      %263 = math.absf %1 : tensor<4xf16>
      %264 = vector.reduction <maxsi>, %34 : vector<4xi1> into i1
      %265 = math.copysign %4, %4 : tensor<11xf16>
      %266 = math.exp %92 : f32
      %extracted_40 = tensor.extract %8[%c6] : tensor<11xf32>
      vector.print %18 : vector<16xf32>
      %267 = math.expm1 %14 : tensor<11xf32>
      %268 = vector.transpose %260, [0] : vector<15xi64> to vector<15xi64>
      scf.yield
    }
    default {
      %256 = arith.floordivsi %c1_i64, %c1829376760_i64 : i64
      %alloca_39 = memref.alloca() : memref<4x11xi16>
      %generated_40 = tensor.generate %26 {
      ^bb0(%arg2: index):
        %265 = math.exp %9 : tensor<4x11xf32>
        %266 = arith.remf %cst_0, %92 : f32
        %267 = affine.min affine_map<(d0, d1) -> (d1 ceildiv 8, d0 mod 64 + 1, (d0 mod 64 + 2) * 32 + 64)>(%71, %50)
        %268 = math.atan2 %11, %9 : tensor<4x11xf32>
        tensor.yield %false : i1
      } : tensor<?xi1>
      memref.alloca_scope  {
        %265 = arith.xori %true_27, %false : i1
        %266 = vector.splat %c1 : vector<4xindex>
        %267 = vector.matrix_multiply %45, %45 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi16>, vector<11xi16>) -> vector<1xi16>
        %268 = vector.transpose %43, [0] : vector<11xi32> to vector<11xi32>
        %269 = vector.splat %c118904530_i32 : vector<4xi32>
        bufferization.dealloc_tensor %5 : tensor<4x11xi16>
        %270 = math.log2 %92 : f32
        %271 = arith.maxui %53, %extracted_26 : i64
        %272 = memref.atomic_rmw andi %c1_i64, %alloc_18[%c0, %c10] : (i64, memref<4x11xi64>) -> i64
        %273 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %46, %46, %true_27 : vector<11xi1>, vector<11xi1> into i1
        %274 = vector.broadcast %37 : index to vector<4xindex>
        %275 = vector.broadcast %c1477322855_i32 : i32 to vector<4xi32>
        vector.scatter %alloc_11[%c1, %c5] [%274], %34, %275 : memref<4x11xi32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
        %276 = vector.broadcast %true : i1 to vector<11x11xi1>
        %277 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %94, %94, %276 : vector<2x11xi1>, vector<2x11xi1> into vector<11x11xi1>
        %splat_41 = tensor.splat %85 : tensor<4x11xf16>
        %278 = math.absi %3 : tensor<4x11xi64>
        %279 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minsi>} %46, %63, %34 : vector<11xi1>, vector<4x11xi1> into vector<4xi1>
        %280 = vector.transpose %106, [2, 0, 1] : vector<11x4x16xf32> to vector<16x11x4xf32>
        %281 = affine.load %alloc_15[%c10] : memref<4xi32>
        %282 = arith.minsi %extracted, %extracted : i16
        %283 = arith.muli %c-20887_i16, %c-20887_i16 : i16
        %284 = vector.reduction <minf>, %18 : vector<16xf32> into f32
        %285 = vector.splat %85 : vector<4x11xf16>
        %286 = math.floor %cst_0 : f32
        %287 = vector.broadcast %35 : index to vector<4xindex>
        %288 = vector.broadcast %c1694361209_i64 : i64 to vector<4xi64>
        vector.scatter %alloc_12[%c3] [%287], %34, %288 : memref<11xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
        %289 = arith.maxui %c2005209551_i32, %c1780117628_i32 : i32
        %290 = math.absi %5 : tensor<4x11xi16>
        %291 = arith.muli %53, %c1234797326_i64 : i64
        %292 = math.log10 %85 : f16
        %293 = index.floordivs %c6, %54
        %294 = arith.divf %92, %cst_0 : f32
        %295 = arith.shli %c2005209551_i32, %c1477322855_i32 : i32
        %296 = bufferization.to_tensor %alloc_18 : memref<4x11xi64>
        %297 = arith.cmpf ule, %cst_3, %cst_2 : f16
      }
      %257 = bufferization.to_tensor %alloc : memref<4x11xf32>
      %258 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, d0 * 16 - d2 - d1)>(%c6, %c10, %c0, %108)
      bufferization.dealloc_tensor %9 : tensor<4x11xf32>
      %259 = affine.load %alloc[%c11, %c12] : memref<4x11xf32>
      %260 = affine.max affine_map<(d0, d1) -> (0, 0, d0)>(%258, %c12)
      %261 = math.ceil %9 : tensor<4x11xf32>
      vector.print %43 : vector<11xi32>
      affine.for %arg2 = 0 to 3 {
      }
      %262 = math.ctpop %19 : tensor<i64>
      %263 = math.sqrt %4 : tensor<11xf16>
      scf.execute_region {
        %265 = math.floor %1 : tensor<4xf16>
        %266 = vector.broadcast %cst_0 : f32 to vector<4x16xf32>
        %267 = vector.insert %266, %106 [7] : vector<4x16xf32> into vector<11x4x16xf32>
        memref.store %cst_0, %alloc_7[%c3] : memref<4xf32>
        %268 = arith.negf %cst_3 : f16
        %cst_41 = arith.constant 1.000000e+00 : f32
        %cst_42 = arith.constant 0.000000e+00 : f32
        %269 = vector.transfer_read %alloc_10[%72], %cst_42 : memref<4xf32>, vector<f32>
        %270 = vector.broadcast %cst_2 : f16 to vector<4xf16>
        %271 = vector.broadcast %c1780117628_i32 : i32 to vector<4xi32>
        %272 = vector.gather %1[%c8] [%271], %34, %270 : tensor<4xf16>, vector<4xi32>, vector<4xi1>, vector<4xf16> into vector<4xf16>
        %273 = memref.realloc %alloc_9 : memref<11xi32> to memref<4xi32>
        %274 = vector.flat_transpose %45 {columns = 11 : i32, rows = 1 : i32} : vector<11xi16> -> vector<11xi16>
        %275 = index.maxu %37, %c1
        %276 = math.cttz %c2005209551_i32 : i32
        %277 = memref.atomic_rmw minu %40, %alloc_17[%c0, %c10] : (i64, memref<4x11xi64>) -> i64
        %278 = arith.minui %c1829376760_i64, %extracted_26 : i64
        %279 = arith.subi %40, %c1_i64 : i64
        %280 = arith.maxsi %c2005209551_i32, %c118904530_i32 : i32
        %281 = arith.floordivsi %53, %40 : i64
        %282 = math.cttz %12 : tensor<11x4x16xi16>
        scf.yield
      }
      %264 = math.sqrt %6 : tensor<4x11xf16>
    }
    memref.tensor_store %5, %alloc_5 : memref<4x11xi16>
    %114 = math.atan2 %collapsed, %collapsed : tensor<44xf16>
    %115 = math.cttz %3 : tensor<4x11xi64>
    %116 = math.log1p %9 : tensor<4x11xf32>
    %117 = vector.create_mask %71 : vector<11xi1>
    affine.for %arg2 = 0 to 17 {
    }
    %118 = math.log %8 : tensor<11xf32>
    %119 = vector.transpose %45, [0] : vector<11xi16> to vector<11xi16>
    %120 = arith.addi %c1780117628_i32, %c2005209551_i32 : i32
    %121 = vector.shuffle %43, %43 [0, 2, 3, 6, 7, 10, 11, 15, 20, 21] : vector<11xi32>, vector<11xi32>
    %generated = tensor.generate %c6 {
    ^bb0(%arg2: index):
      %256 = memref.atomic_rmw maxu %c1780117628_i32, %alloc_11[%c3, %c1] : (i32, memref<4x11xi32>) -> i32
      memref.copy %alloc_17, %alloc_18 : memref<4x11xi64> to memref<4x11xi64>
      %257 = vector.broadcast %cst_1 : f32 to vector<4xf32>
      %dest_39, %accumulated_value_40 = vector.scan <mul>, %77, %257 {inclusive = true, reduction_dim = 1 : i64} : vector<4x11xf32>, vector<4xf32>
      %258 = arith.shrsi %53, %c1_i64 : i64
      tensor.yield %53 : i64
    } : tensor<?xi64>
    %122 = vector.broadcast %cst_0 : f32 to vector<4x16xf32>
    %123 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %107, %99, %122 : vector<11x4x16xf32>, vector<11xf32> into vector<4x16xf32>
    %124 = math.floor %cst_1 : f32
    %125 = math.atan2 %6, %6 : tensor<4x11xf16>
    %126 = math.copysign %4, %4 : tensor<11xf16>
    %127 = bufferization.clone %alloc_5 : memref<4x11xi16> to memref<4x11xi16>
    %128 = arith.divf %85, %cst : f16
    %129 = math.cttz %3 : tensor<4x11xi64>
    %130 = affine.load %alloc_13[%c14, %c12] : memref<4x11xi32>
    %131 = arith.maxsi %c1234797326_i64, %c1829376760_i64 : i64
    %132 = vector.transpose %99, [0] : vector<11xf32> to vector<11xf32>
    %133 = vector.broadcast %92 : f32 to vector<4xf32>
    %dest, %accumulated_value = vector.scan <maxf>, %77, %133 {inclusive = false, reduction_dim = 1 : i64} : vector<4x11xf32>, vector<4xf32>
    %134 = math.log1p %1 : tensor<4xf16>
    %135 = vector.create_mask %c12, %37 : vector<4x11xi1>
    %136 = vector.reduction <maxui>, %117 : vector<11xi1> into i1
    %137 = arith.mulf %92, %cst_1 : f32
    %138 = affine.load %alloc_12[%c2] : memref<11xi64>
    %139 = math.log %92 : f32
    memref.tensor_store %2, %alloc_18 : memref<4x11xi64>
    %140 = index.castu %c11 : index to i32
    %141 = arith.divf %cst_0, %cst_0 : f32
    %142 = vector.gather %11[%c10, %c4] [%43], %46, %99 : tensor<4x11xf32>, vector<11xi32>, vector<11xi1>, vector<11xf32> into vector<11xf32>
    %143 = arith.remf %cst_3, %cst : f16
    %144 = arith.maxf %85, %85 : f16
    %145 = math.rsqrt %cst_1 : f32
    %146 = math.log %cst_0 : f32
    memref.store %cst_1, %alloc_7[%c3] : memref<4xf32>
    %147 = vector.broadcast %true : i1 to vector<11x11xi1>
    %148 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %135, %63, %147 : vector<4x11xi1>, vector<4x11xi1> into vector<11x11xi1>
    %149 = math.ceil %11 : tensor<4x11xf32>
    memref.alloca_scope  {
      %256 = affine.min affine_map<(d0, d1, d2, d3) -> ((d1 floordiv 16) floordiv 128, d1 floordiv 16, d1 floordiv 16)>(%c6, %103, %70, %c0)
      %257 = arith.subi %c1694361209_i64, %c1_i64 : i64
      %258 = index.floordivs %56, %c5
      %259 = arith.cmpi sge, %c1477322855_i32, %c2005209551_i32 : i32
      %260 = bufferization.to_tensor %alloc_13 : memref<4x11xi32>
      %261 = math.absi %130 : i32
      %extracted_39 = tensor.extract %13[%c5] : tensor<11xi16>
      %262 = bufferization.to_tensor %alloc_20 : memref<f16>
      %263 = vector.matrix_multiply %43, %43 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi32>, vector<11xi32>) -> vector<1xi32>
      %264 = math.sqrt %1 : tensor<4xf16>
      %265 = arith.negf %cst : f16
      %266 = arith.shrui %c1477322855_i32, %c1477322855_i32 : i32
      %267 = vector.broadcast %cst_1 : f32 to vector<4xf32>
      %268 = vector.maskedload %alloc_10[%c0], %34, %267 : memref<4xf32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
      %269 = vector.insert %true, %46 [5] : i1 into vector<11xi1>
      %270 = math.atan %collapsed : tensor<44xf16>
      %271 = arith.remsi %c1477322855_i32, %c1477322855_i32 : i32
      %cast_40 = tensor.cast %260 : tensor<4x11xi32> to tensor<?x?xi32>
      %272 = arith.negf %cst_0 : f32
      %273 = math.floor %9 : tensor<4x11xf32>
      %dest_41, %accumulated_value_42 = vector.scan <and>, %135, %46 {inclusive = true, reduction_dim = 0 : i64} : vector<4x11xi1>, vector<11xi1>
      %274 = vector.extract_strided_slice %107 {offsets = [3, 2], sizes = [7, 2], strides = [1, 1]} : vector<11x4x16xf32> to vector<7x2x16xf32>
      %275 = arith.shrui %c-13043_i16, %extracted : i16
      memref.store %cst, %alloc_20[] : memref<f16>
      %276 = arith.shrui %c1780117628_i32, %c2005209551_i32 : i32
      %277 = math.log2 %1 : tensor<4xf16>
      %278 = math.ctlz %19 : tensor<i64>
      %279 = memref.load %alloc_19[%c2] : memref<11xf32>
      %280 = index.castu %35 : index to i32
      %281 = math.exp %4 : tensor<11xf16>
      %282 = math.expm1 %11 : tensor<4x11xf32>
      %283 = tensor.empty() : tensor<4x11xi32>
      %mapped = linalg.map ins(%alloc_6, %48 : memref<4x11xi32>, memref<4x11xi32>) outs(%283 : tensor<4x11xi32>)
        (%in: i32, %in_43: i32) {
          %285 = index.divu %29, %256
          %286 = vector.broadcast %c2 : index to vector<4xindex>
          %287 = vector.broadcast %40 : i64 to vector<4xi64>
          vector.scatter %alloc_18[%c1, %c5] [%286], %34, %287 : memref<4x11xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
          %288 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %99, %100, %92 : vector<11xf32>, vector<11xf32> into f32
          %289 = vector.reduction <mul>, %47 : vector<11xi16> into i16
          %290 = arith.shrui %c1694361209_i64, %c1694361209_i64 : i64
          %c1_i64_44 = arith.constant 1 : i64
          %291 = vector.transfer_read %0[%c1], %c1_i64_44 : tensor<11xi64>, vector<i64>
          %292 = math.ceil %11 : tensor<4x11xf32>
          %rank_45 = tensor.rank %6 : tensor<4x11xf16>
          %293 = index.add %35, %c9
          %294 = index.ceildivs %293, %c2
          %295 = math.ipowi %15, %5 : tensor<4x11xi16>
          %alloca_46 = memref.alloca() : memref<11xf32>
          %splat_47 = tensor.splat %40 : tensor<4xi64>
          %296 = vector.create_mask %c15, %35, %c0 : vector<11x4x16xi1>
          %297 = index.castu %c8 : index to i32
          %298 = bufferization.to_tensor %alloc_19 : memref<11xf32>
          %inserted = tensor.insert %extracted_26 into %3[%c2, %c3] : tensor<4x11xi64>
          %splat_48 = tensor.splat %cst_3 : tensor<11xf16>
          %299 = math.fma %11, %9, %9 : tensor<4x11xf32>
          %300 = math.floor %8 : tensor<11xf32>
          %301 = affine.max affine_map<(d0, d1, d2) -> (1, (d2 + d0 - 127) ceildiv 4)>(%c12, %c1, %c9)
          %302 = arith.andi %extracted_39, %extracted : i16
          %303 = arith.shli %c1829376760_i64, %c1234797326_i64 : i64
          %304 = vector.insert %100, %76 [3] : vector<11xf32> into vector<4x11xf32>
          %false_49 = index.bool.constant false
          %305 = index.casts %extracted_26 : i64 to index
          %306 = memref.atomic_rmw maxu %c118904530_i32, %alloc_6[%c2, %c5] : (i32, memref<4x11xi32>) -> i32
          %307 = memref.load %alloc_14[%c6, %c3, %c8] : memref<11x4x16xi32>
          %308 = vector.insertelement %cst_0, %268[%c10 : index] : vector<4xf32>
          %rank_50 = tensor.rank %4 : tensor<11xf16>
          %309 = vector.broadcast %cst_1 : f32 to vector<4x11xf32>
          %310 = vector.fma %309, %76, %309 : vector<4x11xf32>
          %311 = math.atan2 %11, %9 : tensor<4x11xf32>
          %c1_i32 = arith.constant 1 : i32
          linalg.yield %c1_i32 : i32
        }
      %284 = index.castu %c1477322855_i32 : i32 to index
    }
    %150 = arith.muli %c1477322855_i32, %c1477322855_i32 : i32
    %151 = math.log2 %collapsed : tensor<44xf16>
    scf.index_switch %72 
    case 1 {
      %256 = arith.shrsi %40, %40 : i64
      %257 = index.casts %c1_i64 : i64 to index
      %258 = index.ceildivs %54, %c1
      %259 = affine.load %alloc_18[%c10, %c3] : memref<4x11xi64>
      %260 = vector.broadcast %cst_1 : f32 to vector<4xf32>
      %261 = vector.fma %260, %260, %260 : vector<4xf32>
      %262 = arith.cmpi ule, %c1829376760_i64, %c1_i64 : i64
      %263 = arith.divf %cst_1, %cst_1 : f32
      %264 = math.exp %4 : tensor<11xf16>
      %265 = bufferization.clone %alloc_11 : memref<4x11xi32> to memref<4x11xi32>
      %266 = vector.reduction <minf>, %18 : vector<16xf32> into f32
      %267 = math.cttz %10 : tensor<11xi16>
      %collapsed_39 = tensor.collapse_shape %11 [[0, 1]] : tensor<4x11xf32> into tensor<44xf32>
      %268 = math.log2 %8 : tensor<11xf32>
      %269 = arith.andi %53, %138 : i64
      %270 = arith.negf %cst : f16
      %271 = arith.maxf %cst, %cst : f16
      scf.yield
    }
    case 2 {
      %256 = math.atan %8 : tensor<11xf32>
      %257 = math.round %cst : f16
      %258 = arith.maxf %cst_2, %cst_2 : f16
      %259 = tensor.empty() : tensor<11xf16>
      %mapped = linalg.map ins(%4 : tensor<11xf16>) outs(%259 : tensor<11xf16>)
        (%in: f16) {
          %271 = vector.broadcast %cst : f16 to vector<f16>
          %272 = vector.transfer_write %271, %1[%c15] : vector<f16>, tensor<4xf16>
          %273 = vector.broadcast %true_27 : i1 to vector<4xi1>
          %274 = math.log %4 : tensor<11xf16>
          %275 = index.maxu %c9, %c15
          %276 = index.maxu %50, %c4
          %277 = math.atan %259 : tensor<11xf16>
          %278 = math.absi %extracted : i16
          %279 = arith.divf %cst_0, %92 : f32
          %280 = vector.load %alloc_17[%c1, %c10] : memref<4x11xi64>, vector<11xi64>
          %281 = vector.broadcast %cst_0 : f32 to vector<4xf32>
          %282 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %100, %76, %281 : vector<11xf32>, vector<4x11xf32> into vector<4xf32>
          %283 = arith.floordivsi %true, %false : i1
          %alloca_40 = memref.alloca() : memref<11xf16>
          %284 = math.roundeven %1 : tensor<4xf16>
          %285 = vector.broadcast %c1829376760_i64 : i64 to vector<4xi64>
          %286 = vector.transfer_write %285, %3[%275, %26] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi64>, tensor<4x11xi64>
          %287 = index.maxs %108, %56
          %288 = math.rsqrt %collapsed : tensor<44xf16>
          %289 = math.sqrt %92 : f32
          %290 = arith.floordivsi %40, %53 : i64
          %291 = math.log2 %1 : tensor<4xf16>
          %292 = index.ceildivs %50, %84
          %293 = arith.shrsi %c1_i64, %138 : i64
          %294 = math.ipowi %0, %0 : tensor<11xi64>
          %295 = arith.maxsi %extracted_26, %40 : i64
          %296 = arith.cmpf oeq, %in, %cst : f16
          %297 = vector.multi_reduction <maxsi>, %280, %280 [] : vector<11xi64> to vector<11xi64>
          %298 = vector.matrix_multiply %47, %47 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi16>, vector<11xi16>) -> vector<1xi16>
          %true_41 = arith.constant true
          %rank_42 = tensor.rank %10 : tensor<11xi16>
          %299 = vector.reduction <and>, %34 : vector<4xi1> into i1
          %300 = math.atan2 %9, %9 : tensor<4x11xf32>
          %301 = index.castu %c-13043_i16 : i16 to index
          %302 = math.log %14 : tensor<11xf32>
          %cst_43 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_43 : f16
        }
      %260 = affine.if affine_set<(d0, d1, d2, d3) : ((d2 + d3 * 2 - 4) ceildiv 8 >= 0, d2 + d3 * 2 - 4 == 0, d0 mod 4 == 0, d0 mod 4 == 0)>(%c1, %c12, %c1, %c14) -> i32 {
        %271 = vector.extract_strided_slice %76 {offsets = [2], sizes = [2], strides = [1]} : vector<4x11xf32> to vector<2x11xf32>
        %272 = index.sub %54, %50
        %collapsed_40 = tensor.collapse_shape %7 [[0, 1], [2]] : tensor<11x4x16xi32> into tensor<44x16xi32>
        affine.store %cst_1, %alloc[%c12, %c8] : memref<4x11xf32>
        %273 = math.log %259 : tensor<11xf16>
        bufferization.dealloc_tensor %splat_29 : tensor<11xi32>
        %274 = affine.min affine_map<(d0, d1, d2) -> (d0)>(%c12, %c11, %c12)
        %rank_41 = tensor.rank %20 : tensor<i64>
        affine.yield %130 : i32
      } else {
        %271 = index.floordivs %c15, %c6
        %272 = vector.shuffle %63, %94 [2, 3, 4, 5] : vector<4x11xi1>, vector<2x11xi1>
        %273 = vector.broadcast %cst_0 : f32 to vector<11x4x16xf32>
        %274 = vector.fma %273, %106, %106 : vector<11x4x16xf32>
        %275 = vector.broadcast %c118904530_i32 : i32 to vector<16xi32>
        %276 = vector.broadcast %false : i1 to vector<16xi1>
        %277 = vector.maskedload %48[%c3, %c0], %276, %275 : memref<4x11xi32>, vector<16xi1>, vector<16xi32> into vector<16xi32>
        %278 = math.ceil %9 : tensor<4x11xf32>
        %279 = vector.insertelement %true_27, %276[%c7 : index] : vector<16xi1>
        %280 = math.tanh %9 : tensor<4x11xf32>
        %281 = math.ceil %1 : tensor<4xf16>
        affine.yield %130 : i32
      }
      %261 = index.castu %extracted : i16 to index
      %262 = arith.shli %extracted, %extracted : i16
      %263 = index.castu %c1780117628_i32 : i32 to index
      %264 = scf.execute_region -> index {
        %271 = vector.matrix_multiply %45, %45 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi16>, vector<11xi16>) -> vector<1xi16>
        %272 = index.sub %50, %103
        %273 = math.rsqrt %14 : tensor<11xf32>
        memref.store %cst_3, %alloc_20[] : memref<f16>
        %274 = arith.maxf %cst_3, %cst_2 : f16
        %275 = math.log10 %cst_3 : f16
        %276 = arith.floordivsi %c-13043_i16, %c-20887_i16 : i16
        %277 = memref.load %alloc_20[] : memref<f16>
        memref.store %c-20887_i16, %alloc_5[%c1, %c3] : memref<4x11xi16>
        %278 = vector.broadcast %c2005209551_i32 : i32 to vector<16xi32>
        %279 = vector.broadcast %false : i1 to vector<16xi1>
        %280 = vector.maskedload %alloc_15[%c0], %279, %278 : memref<4xi32>, vector<16xi1>, vector<16xi32> into vector<16xi32>
        %281 = arith.maxf %cst_0, %92 : f32
        %282 = math.log1p %14 : tensor<11xf32>
        bufferization.dealloc_tensor %16 : tensor<11xi64>
        %283 = index.floordivs %c3, %c4
        %284 = affine.min affine_map<(d0, d1, d2, d3) -> (d0, d0)>(%70, %37, %70, %261)
        %285 = index.divu %c15, %37
        scf.yield %c14 : index
      }
      %265 = index.sizeof
      %266 = math.copysign %cst, %cst_3 : f16
      %extracted_39 = tensor.extract %14[%c1] : tensor<11xf32>
      %267 = math.sqrt %4 : tensor<11xf16>
      %268 = vector.insertelement %cst_1, %142[%c0 : index] : vector<11xf32>
      %269 = index.castu %c1780117628_i32 : i32 to index
      %270 = math.ctlz %2 : tensor<4x11xi64>
      scf.yield
    }
    case 3 {
      %256 = affine.if affine_set<(d0, d1, d2, d3) : (d2 * 4 == 0)>(%c2, %c9, %c7, %c5) -> memref<11xi64> {
        %271 = bufferization.clone %alloc_6 : memref<4x11xi32> to memref<4x11xi32>
        %272 = math.fma %6, %6, %6 : tensor<4x11xf16>
        %alloc_40 = memref.alloc() : memref<11xi16>
        memref.tensor_store %splat, %alloc_40 : memref<11xi16>
        %273 = vector.reduction <minf>, %99 : vector<11xf32> into f32
        %274 = arith.shli %c-13043_i16, %c-20887_i16 : i16
        %275 = arith.cmpf une, %85, %cst_2 : f16
        %276 = arith.remsi %c2005209551_i32, %c1477322855_i32 : i32
        %277 = vector.broadcast %c5 : index to vector<11xindex>
        %278 = vector.broadcast %extracted_26 : i64 to vector<11xi64>
        vector.scatter %alloc_4[%c3, %c0] [%277], %46, %278 : memref<4x11xi64>, vector<11xindex>, vector<11xi1>, vector<11xi64>
        affine.yield %alloc_12 : memref<11xi64>
      } else {
        %271 = arith.minui %c1_i64, %40 : i64
        %272 = arith.andi %c2005209551_i32, %c1477322855_i32 : i32
        %273 = math.atan2 %85, %cst_3 : f16
        %274 = arith.remf %85, %85 : f16
        %275 = index.maxu %c1, %c15
        %276 = arith.negf %92 : f32
        %from_elements = tensor.from_elements %c1234797326_i64, %c1829376760_i64, %extracted_26, %c1234797326_i64, %c1_i64, %c1_i64, %40, %40, %40, %138, %c1829376760_i64, %c1694361209_i64, %c1694361209_i64, %extracted_26, %c1694361209_i64, %c1_i64, %53, %extracted_26, %c1694361209_i64, %53, %c1234797326_i64, %c1694361209_i64, %53, %c1234797326_i64, %c1829376760_i64, %c1_i64, %c1_i64, %c1694361209_i64, %c1_i64, %extracted_26, %c1694361209_i64, %c1234797326_i64, %c1694361209_i64, %c1829376760_i64, %c1694361209_i64, %c1234797326_i64, %c1_i64, %c1829376760_i64, %c1829376760_i64, %c1829376760_i64, %40, %c1829376760_i64, %c1_i64, %138 : tensor<4x11xi64>
        %277 = vector.maskedload %alloc_15[%c3], %117, %43 : memref<4xi32>, vector<11xi1>, vector<11xi32> into vector<11xi32>
        affine.yield %alloc_12 : memref<11xi64>
      }
      %257 = vector.insert %92, %142 [6] : f32 into vector<11xf32>
      %258 = arith.divf %cst_1, %cst_0 : f32
      %259 = math.sqrt %8 : tensor<11xf32>
      %260 = index.sub %108, %c8
      %261 = vector.create_mask %c0 : vector<4xi1>
      %262 = math.log1p %9 : tensor<4x11xf32>
      %263 = math.log %cst_3 : f16
      %c0_i16 = arith.constant 0 : i16
      %264 = vector.transfer_read %12[%c0, %c4, %c0], %c0_i16 : tensor<11x4x16xi16>, vector<i16>
      %generated_39 = tensor.generate %c6 {
      ^bb0(%arg2: index, %arg3: index):
        %271 = math.absi %3 : tensor<4x11xi64>
        %272 = bufferization.clone %alloc_21 : memref<11xi64> to memref<11xi64>
        %273 = tensor.empty() : tensor<4x11xi32>
        %274 = math.fpowi %11, %273 : tensor<4x11xf32>, tensor<4x11xi32>
        %275 = index.castu %c14 : index to i32
        tensor.yield %cst_0 : f32
      } : tensor<?x11xf32>
      %265 = math.exp %1 : tensor<4xf16>
      %266 = math.floor %8 : tensor<11xf32>
      %267 = vector.gather %splat_23[%c1] [%44], %63, %135 : tensor<4xi1>, vector<4x11xi32>, vector<4x11xi1>, vector<4x11xi1> into vector<4x11xi1>
      %268 = math.log2 %4 : tensor<11xf16>
      %269 = vector.multi_reduction <mul>, %107, %18 [0, 1] : vector<11x4x16xf32> to vector<16xf32>
      %270 = vector.insert %100, %77 [0] : vector<11xf32> into vector<4x11xf32>
      scf.yield
    }
    case 4 {
      %256 = index.divu %c11, %70
      %257 = math.cttz %15 : tensor<4x11xi16>
      %alloca_39 = memref.alloca() : memref<11x4x16xi32>
      %258 = vector.extract %44[1] : vector<4x11xi32>
      %alloc_40 = memref.alloc() : memref<11x4x16xi16>
      %259 = vector.broadcast %cst_0 : f32 to vector<11x4x16xf32>
      %260 = vector.fma %259, %259, %107 : vector<11x4x16xf32>
      %261 = arith.remf %cst_1, %cst_0 : f32
      %262 = index.castu %c4 : index to i32
      %alloca_41 = memref.alloca() : memref<11xi16>
      %263 = arith.floordivsi %c1234797326_i64, %c1694361209_i64 : i64
      affine.store %92, %alloc_10[%c3] : memref<4xf32>
      %264 = tensor.empty() : tensor<4xf16>
      %mapped = linalg.map ins(%1 : tensor<4xf16>) outs(%264 : tensor<4xf16>)
        (%in: f16) {
          %269 = math.log2 %6 : tensor<4x11xf16>
          %270 = math.tanh %in : f16
          %271 = arith.minui %40, %c1234797326_i64 : i64
          %272 = index.castu %c2005209551_i32 : i32 to index
          %273 = math.log2 %collapsed : tensor<44xf16>
          %274 = vector.reduction <add>, %43 : vector<11xi32> into i32
          %275 = index.mul %72, %256
          %276 = arith.divf %cst_3, %cst : f16
          %277 = math.log2 %cst_1 : f32
          %278 = vector.broadcast %cst_1 : f32 to vector<4xf32>
          %279 = vector.fma %278, %278, %278 : vector<4xf32>
          %dest_42, %accumulated_value_43 = vector.scan <or>, %63, %46 {inclusive = false, reduction_dim = 0 : i64} : vector<4x11xi1>, vector<11xi1>
          %280 = math.exp %cst_0 : f32
          %281 = arith.shrui %true_27, %true : i1
          %282 = vector.shuffle %46, %34 [0, 1, 5, 7, 8, 9, 11, 14] : vector<11xi1>, vector<4xi1>
          %283 = arith.shrui %53, %c1829376760_i64 : i64
          memref.copy %alloc_17, %alloc_4 : memref<4x11xi64> to memref<4x11xi64>
          %284 = math.copysign %9, %11 : tensor<4x11xf32>
          %285 = vector.flat_transpose %142 {columns = 11 : i32, rows = 1 : i32} : vector<11xf32> -> vector<11xf32>
          %286 = vector.reduction <add>, %279 : vector<4xf32> into f32
          %287 = arith.muli %false, %true_27 : i1
          %288 = vector.insert %100, %77 [0] : vector<11xf32> into vector<4x11xf32>
          %289 = arith.addi %c2005209551_i32, %c2005209551_i32 : i32
          %290 = math.atan2 %8, %8 : tensor<11xf32>
          %291 = math.log1p %14 : tensor<11xf32>
          %292 = index.castu %130 : i32 to index
          %293 = math.ceil %85 : f16
          %splat_44 = tensor.splat %false : tensor<4xi1>
          %294 = index.add %c0, %c11
          %295 = arith.remf %cst_3, %85 : f16
          %296 = vector.insert %cst_1, %279 [0] : f32 into vector<4xf32>
          %297 = arith.addi %c1234797326_i64, %40 : i64
          %298 = arith.maxui %extracted_26, %extracted_26 : i64
          %cst_45 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_45 : f16
        }
      %265 = math.powf %9, %9 : tensor<4x11xf32>
      %266 = tensor.empty() : tensor<11xi32>
      %267 = arith.divsi %c1234797326_i64, %c1829376760_i64 : i64
      %268 = arith.remf %cst_1, %92 : f32
      scf.yield
    }
    default {
      %256 = math.exp %85 : f16
      %257 = vector.extract %18[14] : vector<16xf32>
      %258 = arith.cmpf uno, %cst, %cst : f16
      %259 = arith.shrsi %extracted, %c-20887_i16 : i16
      %260 = arith.maxf %92, %cst_0 : f32
      %261 = math.tan %cst : f16
      %262 = math.exp %collapsed : tensor<44xf16>
      %263 = index.maxs %50, %70
      scf.if %true_27 {
        %270 = vector.create_mask %72, %c0, %70 : vector<11x4x16xi1>
        %271 = arith.mulf %cst_2, %85 : f16
        %alloc_41 = memref.alloc() : memref<11x4x16xf16>
        %272 = math.absi %12 : tensor<11x4x16xi16>
        %273 = arith.addf %cst_3, %85 : f16
        %274 = arith.floordivsi %c1234797326_i64, %40 : i64
        %275 = index.add %c15, %29
        %276 = math.log10 %11 : tensor<4x11xf32>
      }
      %264 = arith.shli %c1694361209_i64, %extracted_26 : i64
      %265 = arith.divf %cst_1, %cst_1 : f32
      %generated_39 = tensor.generate %70 {
      ^bb0(%arg2: index):
        %270 = arith.ori %c-13043_i16, %extracted : i16
        %271 = arith.shrsi %c1234797326_i64, %40 : i64
        %272 = arith.cmpi eq, %false, %true : i1
        %273 = math.exp %14 : tensor<11xf32>
        tensor.yield %c1_i64 : i64
      } : tensor<?xi64>
      %266 = arith.xori %c1_i64, %c1694361209_i64 : i64
      %267 = vector.broadcast %cst_0 : f32 to vector<4x16x4xf32>
      %268 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0, d1)>, affine_map<(d0, d1, d2, d3) -> (d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %107, %77, %267 : vector<11x4x16xf32>, vector<4x11xf32> into vector<4x16x4xf32>
      %269 = arith.maxui %true_27, %false : i1
      %rank_40 = tensor.rank %14 : tensor<11xf32>
    }
    %152 = arith.xori %extracted_26, %40 : i64
    %153 = math.ctlz %extracted_26 : i64
    %154 = vector.load %alloc_18[%c1, %c1] : memref<4x11xi64>, vector<4x11xi64>
    %155 = arith.ori %c1694361209_i64, %c1_i64 : i64
    %156 = math.copysign %cst, %85 : f16
    %157 = vector.transpose %107, [2, 0, 1] : vector<11x4x16xf32> to vector<16x11x4xf32>
    vector.print %142 : vector<11xf32>
    %158 = arith.addi %true, %false : i1
    %159 = vector.create_mask %c15 : vector<4xi1>
    %160 = arith.minf %cst_2, %85 : f16
    %161 = bufferization.clone %alloc_16 : memref<4xi16> to memref<4xi16>
    memref.store %c-20887_i16, %127[%c2, %c9] : memref<4x11xi16>
    %162 = math.copysign %cst_2, %85 : f16
    %163 = arith.cmpi ne, %true_27, %false : i1
    %164 = index.maxs %84, %c15
    %165 = arith.negf %cst_2 : f16
    %166 = scf.while (%arg2 = %alloc_12) : (memref<11xi64>) -> memref<11xi64> {
      %rank_39 = tensor.rank %3 : tensor<4x11xi64>
      %256 = math.ipowi %c1829376760_i64, %c1234797326_i64 : i64
      %257 = vector.extract_strided_slice %45 {offsets = [5], sizes = [3], strides = [1]} : vector<11xi16> to vector<3xi16>
      %splat_40 = tensor.splat %cst_3 : tensor<4xf16>
      %258 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%12 : tensor<11x4x16xi16>) {
      ^bb0(%out: i16):
        %262 = math.sqrt %11 : tensor<4x11xf32>
        %263 = bufferization.to_tensor %alloc_7 : memref<4xf32>
        %264 = math.tanh %92 : f32
        %expanded = tensor.expand_shape %5 [[0], [1, 2]] : tensor<4x11xi16> into tensor<4x11x1xi16>
        %265 = math.sqrt %cst_1 : f32
        %266 = math.atan2 %14, %8 : tensor<11xf32>
        %cst_41 = arith.constant 1.000000e+00 : f32
        %267 = vector.transfer_read %alloc[%c0, %c13], %cst_41 : memref<4x11xf32>, vector<15xf32>
        %268 = arith.shrui %c1477322855_i32, %c2005209551_i32 : i32
        %269 = math.absi %15 : tensor<4x11xi16>
        %270 = math.roundeven %6 : tensor<4x11xf16>
        %rank_42 = tensor.rank %10 : tensor<11xi16>
        %271 = tensor.empty(%108) : tensor<11x4x?xf32>
        %272 = math.powf %85, %cst_2 : f16
        %273 = math.sqrt %11 : tensor<4x11xf32>
        %274 = arith.shrui %c1829376760_i64, %c1829376760_i64 : i64
        %275 = math.copysign %cst, %cst : f16
        %cast_43 = tensor.cast %collapsed_28 : tensor<44xi16> to tensor<?xi16>
        %276 = affine.load %arg2[%c4] : memref<11xi64>
        %277 = math.exp %11 : tensor<4x11xf32>
        %278 = arith.maxui %c1234797326_i64, %53 : i64
        %279 = arith.cmpf oeq, %cst_3, %85 : f16
        %280 = math.absi %12 : tensor<11x4x16xi16>
        %281 = arith.shli %true_27, %true_27 : i1
        %282 = bufferization.to_tensor %alloc_9 : memref<11xi32>
        %283 = arith.shrui %c1_i64, %c1234797326_i64 : i64
        %284 = bufferization.to_memref %4 : memref<11xf16>
        %285 = affine.apply affine_map<(d0, d1, d2) -> ((d1 - 64) * 2)>(%c11, %c7, %c9)
        %286 = vector.bitcast %45 : vector<11xi16> to vector<11xi16>
        %287 = math.atan2 %6, %6 : tensor<4x11xf16>
        %288 = arith.remf %92, %cst_0 : f32
        %289 = vector.insertelement %cst_1, %142[%103 : index] : vector<11xf32>
        %290 = arith.maxf %cst_1, %cst_41 : f32
        linalg.yield %extracted : i16
      } -> tensor<11x4x16xi16>
      %259 = index.sub %c10, %50
      %260 = index.mul %c11, %103
      %261 = arith.floordivsi %c2005209551_i32, %c118904530_i32 : i32
      scf.condition(%true_27) %arg2 : memref<11xi64>
    } do {
    ^bb0(%arg2: memref<11xi64>):
      %256 = vector.transpose %99, [0] : vector<11xf32> to vector<11xf32>
      %from_elements = tensor.from_elements %cst_3, %cst_3, %cst_2, %cst_2, %cst_3, %85, %85, %cst_2, %85, %cst_2, %cst, %cst_2, %cst_3, %85, %85, %cst_3, %cst_2, %cst_2, %85, %cst_2, %cst_2, %cst_3, %cst_2, %cst_3, %cst_3, %cst_2, %cst, %cst_2, %cst_2, %85, %85, %cst_2, %cst_3, %85, %cst, %85, %cst_2, %cst_2, %cst, %85, %85, %cst, %cst_3, %cst_3 : tensor<4x11xf16>
      %257 = math.copysign %1, %1 : tensor<4xf16>
      %258 = bufferization.clone %alloc_9 : memref<11xi32> to memref<11xi32>
      %259 = vector.create_mask %c5 : vector<4xi1>
      %260 = math.round %1 : tensor<4xf16>
      memref.store %c1780117628_i32, %alloc_15[%c3] : memref<4xi32>
      %261 = memref.alloca_scope  -> (f32) {
        %271 = index.maxu %84, %c13
        %272 = vector.reduction <minsi>, %259 : vector<4xi1> into i1
        memref.store %extracted, %alloc_5[%c2, %c8] : memref<4x11xi16>
        %273 = arith.maxf %cst, %cst : f16
        %274 = arith.cmpi sge, %138, %138 : i64
        %275 = arith.floordivsi %138, %c1234797326_i64 : i64
        %276 = index.sizeof
        %277 = arith.divf %92, %cst_1 : f32
        %extracted_40 = tensor.extract %splat_23[%c2] : tensor<4xi1>
        %278 = vector.transpose %117, [0] : vector<11xi1> to vector<11xi1>
        %279 = math.log1p %6 : tensor<4x11xf16>
        %280 = arith.maxui %true_27, %false : i1
        %281 = math.ipowi %2, %2 : tensor<4x11xi64>
        %282 = bufferization.clone %alloc_18 : memref<4x11xi64> to memref<4x11xi64>
        %283 = vector.splat %72 : vector<4x11xindex>
        %284 = math.log10 %1 : tensor<4xf16>
        %285 = vector.transpose %18, [0] : vector<16xf32> to vector<16xf32>
        %286 = arith.maxsi %true, %extracted_40 : i1
        %287 = math.log1p %cst_0 : f32
        %extracted_41 = tensor.extract %5[%c2, %c3] : tensor<4x11xi16>
        %288 = arith.mulf %cst_1, %92 : f32
        %expanded = tensor.expand_shape %15 [[0], [1, 2]] : tensor<4x11xi16> into tensor<4x11x1xi16>
        %289 = affine.max affine_map<(d0, d1, d2) -> (-d2, -d1)>(%84, %72, %70)
        %290 = vector.broadcast %92 : f32 to vector<11xf32>
        %291 = math.expm1 %cst_1 : f32
        %false_42 = index.bool.constant false
        %292 = math.log10 %from_elements : tensor<4x11xf16>
        %splat_43 = tensor.splat %false_42 : tensor<4xi1>
        %293 = affine.load %alloc_15[%c0] : memref<4xi32>
        %alloc_44 = memref.alloc() : memref<11x4x16xi32>
        memref.copy %alloc_14, %alloc_44 : memref<11x4x16xi32> to memref<11x4x16xi32>
        %294 = vector.matrix_multiply %290, %142 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xf32>, vector<11xf32>) -> vector<1xf32>
        %295 = vector.insert %142, %76 [0] : vector<11xf32> into vector<4x11xf32>
        memref.alloca_scope.return %92 : f32
      }
      %262 = affine.load %48[%c6, %c15] : memref<4x11xi32>
      %263 = vector.broadcast %92 : f32 to vector<11x11xf32>
      %264 = vector.outerproduct %100, %142, %263 {kind = #vector.kind<maxf>} : vector<11xf32>, vector<11xf32>
      %265 = math.fpowi %92, %c2005209551_i32 : f32, i32
      %266 = math.log10 %11 : tensor<4x11xf32>
      %267 = arith.remf %cst, %cst : f16
      %alloca_39 = memref.alloca() : memref<11x4x16xi32>
      %268 = math.absf %261 : f32
      %269 = vector.broadcast %c6 : index to vector<4xindex>
      %270 = vector.broadcast %262 : i32 to vector<4xi32>
      vector.scatter %258[%c4] [%269], %259, %270 : memref<11xi32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
      scf.yield %alloc_21 : memref<11xi64>
    }
    %167 = arith.cmpi uge, %c1694361209_i64, %extracted_26 : i64
    %168 = math.sqrt %1 : tensor<4xf16>
    %169 = arith.cmpf false, %cst_0, %92 : f32
    %170 = index.add %108, %108
    %171 = math.round %cst_0 : f32
    %cst_30 = arith.constant 1.000000e+00 : f32
    %cst_31 = arith.constant 0.000000e+00 : f32
    %172 = vector.transfer_read %14[%108], %cst_31 : tensor<11xf32>, vector<f32>
    %173 = index.casts %c9 : index to i32
    %174 = math.log10 %collapsed : tensor<44xf16>
    %175 = vector.reduction <maxf>, %18 : vector<16xf32> into f32
    %176 = index.divu %c14, %c1
    %177 = index.divu %c8, %56
    %178 = math.sqrt %85 : f16
    %179 = math.cttz %2 : tensor<4x11xi64>
    %180 = math.atan2 %14, %14 : tensor<11xf32>
    %181 = index.castu %c118904530_i32 : i32 to index
    %182 = math.round %11 : tensor<4x11xf32>
    %183 = arith.divf %cst_2, %cst : f16
    %184 = arith.ori %true, %true : i1
    %185 = math.copysign %1, %1 : tensor<4xf16>
    %186 = arith.divf %cst_3, %cst_3 : f16
    %187 = arith.minsi %130, %c1780117628_i32 : i32
    %188 = math.exp2 %9 : tensor<4x11xf32>
    scf.execute_region {
      %256 = index.maxu %c3, %c1
      %257 = math.log10 %9 : tensor<4x11xf32>
      %258 = math.ipowi %7, %7 : tensor<11x4x16xi32>
      %true_39 = arith.constant true
      %259 = vector.transfer_read %splat_23[%54], %true_39 : tensor<4xi1>, vector<i1>
      %260 = index.maxu %72, %26
      %261 = bufferization.clone %alloc_9 : memref<11xi32> to memref<11xi32>
      %262 = arith.negf %cst_30 : f32
      %263 = vector.insertelement %true_27, %34[%c1 : index] : vector<4xi1>
      %264 = math.round %cst_30 : f32
      %265 = math.atan2 %1, %1 : tensor<4xf16>
      %266 = index.maxu %70, %54
      %267 = index.maxu %256, %56
      %268 = math.exp2 %9 : tensor<4x11xf32>
      %269 = vector.insert %100, %77 [0] : vector<11xf32> into vector<4x11xf32>
      %270 = vector.broadcast %92 : f32 to vector<4x11xf32>
      %271 = arith.negf %cst_3 : f16
      scf.yield
    }
    %189 = vector.shuffle %94, %94 [0, 2, 3] : vector<2x11xi1>, vector<2x11xi1>
    %190 = memref.atomic_rmw addi %138, %alloc_18[%c2, %c10] : (i64, memref<4x11xi64>) -> i64
    %191 = vector.broadcast %cst_30 : f32 to vector<11x11xf32>
    %192 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %76, %76, %191 : vector<4x11xf32>, vector<4x11xf32> into vector<11x11xf32>
    %193 = arith.xori %c118904530_i32, %c1477322855_i32 : i32
    vector.print %63 : vector<4x11xi1>
    %194 = affine.load %alloc_17[%c9, %c12] : memref<4x11xi64>
    %195 = arith.maxf %85, %cst : f16
    bufferization.dealloc_tensor %splat_29 : tensor<11xi32>
    %196 = math.absi %27 : tensor<4x11xi16>
    %197 = bufferization.clone %alloc_14 : memref<11x4x16xi32> to memref<11x4x16xi32>
    %198 = index.castu %c1829376760_i64 : i64 to index
    %199 = math.rsqrt %4 : tensor<11xf16>
    %alloca = memref.alloca() : memref<11xi64>
    %true_32 = index.bool.constant true
    %extracted_33 = tensor.extract %3[%c2, %c2] : tensor<4x11xi64>
    %200 = math.copysign %8, %8 : tensor<11xf32>
    %201 = vector.broadcast %cst_1 : f32 to vector<4xf32>
    %202 = vector.fma %201, %201, %201 : vector<4xf32>
    %203 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%12 : tensor<11x4x16xi16>) {
    ^bb0(%out: i16):
      %256 = bufferization.clone %alloc_19 : memref<11xf32> to memref<11xf32>
      bufferization.dealloc_tensor %collapsed : tensor<44xf16>
      %257 = index.maxu %50, %c12
      %258 = arith.addi %c118904530_i32, %c118904530_i32 : i32
      %alloc_39 = memref.alloc() : memref<44xf16>
      memref.tensor_store %collapsed, %alloc_39 : memref<44xf16>
      %259 = math.fma %1, %1, %1 : tensor<4xf16>
      %260 = arith.remf %cst_1, %cst_30 : f32
      %261 = arith.divui %extracted_26, %c1234797326_i64 : i64
      %262 = tensor.empty() : tensor<16x4xi16>
      %263 = tensor.empty() : tensor<16xi16>
      %264 = tensor.empty() : tensor<11x16x4xi16>
      %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%262, %263, %264 : tensor<16x4xi16>, tensor<16xi16>, tensor<11x16x4xi16>) outs(%12 : tensor<11x4x16xi16>) {
      ^bb0(%in: i16, %in_42: i16, %in_43: i16, %out_44: i16):
        %287 = arith.minf %cst_0, %cst_0 : f32
        %288 = tensor.empty() : tensor<4x11xi32>
        %289 = math.fpowi %6, %288 : tensor<4x11xf16>, tensor<4x11xi32>
        %290 = arith.addf %cst_2, %cst : f16
        %291 = vector.transpose %99, [0] : vector<11xf32> to vector<11xf32>
        %292 = index.floordivs %c5, %c3
        %293 = math.exp %cst_1 : f32
        %294 = tensor.empty() : tensor<4x11xi1>
        %295 = vector.broadcast %130 : i32 to vector<4xi32>
        %296 = vector.gather %294[%181, %50] [%295], %34, %34 : tensor<4x11xi1>, vector<4xi32>, vector<4xi1>, vector<4xi1> into vector<4xi1>
        %297 = vector.extract_strided_slice %296 {offsets = [1], sizes = [3], strides = [1]} : vector<4xi1> to vector<3xi1>
        memref.tensor_store %3, %alloc_4 : memref<4x11xi64>
        vector.print %159 : vector<4xi1>
        memref.store %cst_0, %256[%c0] : memref<11xf32>
        %alloc_45 = memref.alloc() : memref<4x11xf16>
        %298 = vector.broadcast %cst_2 : f16 to vector<11x4x16xf16>
        %299 = vector.broadcast %true_32 : i1 to vector<11x4x16xi1>
        %300 = vector.broadcast %c1780117628_i32 : i32 to vector<11x4x16xi32>
        %301 = vector.gather %alloc_45[%c5, %c6] [%300], %299, %298 : memref<4x11xf16>, vector<11x4x16xi32>, vector<11x4x16xi1>, vector<11x4x16xf16> into vector<11x4x16xf16>
        %302 = arith.minsi %extracted_33, %194 : i64
        %303 = vector.insert %true_27, %296 [2] : i1 into vector<4xi1>
        %304 = index.casts %181 : index to i32
        %305 = arith.maxsi %c1234797326_i64, %extracted_26 : i64
        %306 = affine.load %alloc_20[] : memref<f16>
        %307 = math.expm1 %9 : tensor<4x11xf32>
        %308 = bufferization.clone %256 : memref<11xf32> to memref<11xf32>
        %309 = math.rsqrt %11 : tensor<4x11xf32>
        %310 = arith.addi %c2005209551_i32, %c2005209551_i32 : i32
        %from_elements = tensor.from_elements %c118904530_i32, %c1780117628_i32, %c2005209551_i32, %c118904530_i32, %c118904530_i32, %c118904530_i32, %130, %c118904530_i32, %c1477322855_i32, %c2005209551_i32, %130 : tensor<11xi32>
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %311 = vector.transfer_read %27[%c4, %c10], %c0_i16 : tensor<4x11xi16>, vector<i16>
        %312 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %63, %296, %46 : vector<4x11xi1>, vector<4xi1> into vector<11xi1>
        %313 = math.atan2 %cst, %cst : f16
        %314 = arith.shli %c118904530_i32, %c2005209551_i32 : i32
        %315 = affine.load %256[%c0] : memref<11xf32>
        %316 = affine.max affine_map<(d0, d1) -> ((d1 - d0 + 4) ceildiv 32)>(%c13, %c3)
        %317 = index.sub %c5, %41
        %318 = arith.remf %85, %cst : f16
        %319 = index.mul %c7, %50
        %320 = arith.shli %false, %true_27 : i1
        linalg.yield %c1_i16 : i16
      } -> tensor<11x4x16xi16>
      %266 = arith.remf %cst_1, %cst_0 : f32
      %267 = math.absi %7 : tensor<11x4x16xi32>
      %extracted_40 = tensor.extract %9[%c3, %c6] : tensor<4x11xf32>
      %268 = math.absf %9 : tensor<4x11xf32>
      %269 = math.sqrt %cst_1 : f32
      %270 = vector.insert %cst_0, %201 [1] : f32 into vector<4xf32>
      %rank_41 = tensor.rank %0 : tensor<11xi64>
      %271 = math.ipowi %13, %10 : tensor<11xi16>
      %272 = vector.create_mask %c6, %108, %c1 : vector<11x4x16xi1>
      %273 = arith.cmpi ne, %true_32, %false : i1
      %274 = vector.matrix_multiply %159, %117 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 11 : i32} : (vector<4xi1>, vector<11xi1>) -> vector<44xi1>
      %275 = math.log1p %14 : tensor<11xf32>
      %276 = arith.maxf %extracted_40, %extracted_40 : f32
      %277 = math.log2 %cst_1 : f32
      %278 = arith.xori %53, %138 : i64
      %279 = vector.broadcast %c118904530_i32 : i32 to vector<16xi32>
      vector.transfer_write %279, %alloc_11[%c12, %c0] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<16xi32>, memref<4x11xi32>
      %280 = math.log1p %4 : tensor<11xf16>
      %281 = bufferization.clone %alloc_12 : memref<11xi64> to memref<11xi64>
      %282 = affine.min affine_map<(d0) -> (d0, d0 floordiv 8 + 129)>(%c14)
      %283 = vector.transpose %274, [0] : vector<44xi1> to vector<44xi1>
      %284 = scf.index_switch %c6 -> memref<4x11xf16> 
      case 1 {
        %287 = math.sqrt %11 : tensor<4x11xf32>
        %288 = index.floordivs %198, %c12
        %289 = index.maxs %rank_41, %288
        %290 = arith.divf %cst_30, %extracted_40 : f32
        memref.store %cst_2, %alloc_8[%c2] : memref<11xf16>
        %extracted_42 = tensor.extract %splat_23[%c3] : tensor<4xi1>
        %291 = math.absf %11 : tensor<4x11xf32>
        %292 = arith.remsi %c1694361209_i64, %194 : i64
        %293 = index.add %c3, %c15
        %294 = arith.cmpf ole, %cst_30, %extracted_40 : f32
        %295 = vector.broadcast %c10 : index to vector<11xindex>
        %296 = vector.broadcast %cst : f16 to vector<11xf16>
        vector.scatter %alloc_20[] [%295], %46, %296 : memref<f16>, vector<11xindex>, vector<11xi1>, vector<11xf16>
        %297 = bufferization.clone %alloc_5 : memref<4x11xi16> to memref<4x11xi16>
        %298 = vector.load %alloc_13[%c1, %c0] : memref<4x11xi32>, vector<4xi32>
        %299 = vector.broadcast %40 : i64 to vector<4xi64>
        %300 = vector.gather %2[%c1, %c13] [%298], %34, %299 : tensor<4x11xi64>, vector<4xi32>, vector<4xi1>, vector<4xi64> into vector<4xi64>
        affine.store %cst_0, %alloc_7[%c10] : memref<4xf32>
        %301 = affine.min affine_map<(d0, d1, d2, d3) -> (-(d1 - (d2 + 1) - 2), d2 + 1, d2, (-(d1 - 4)) floordiv 2)>(%50, %c4, %293, %c1)
        %alloc_43 = memref.alloc() : memref<4x11xf16>
        scf.yield %alloc_43 : memref<4x11xf16>
      }
      default {
        %287 = vector.extract_strided_slice %279 {offsets = [12], sizes = [3], strides = [1]} : vector<16xi32> to vector<3xi32>
        %288 = math.copysign %14, %8 : tensor<11xf32>
        %289 = vector.reduction <and>, %34 : vector<4xi1> into i1
        %290 = vector.extract_strided_slice %77 {offsets = [1], sizes = [1], strides = [1]} : vector<4x11xf32> to vector<1x11xf32>
        %291 = affine.load %alloc_19[%c9] : memref<11xf32>
        %292 = math.cttz %2 : tensor<4x11xi64>
        %293 = index.divu %rank_41, %c14
        %294 = vector.create_mask %103 : vector<4xi1>
        %295 = math.log2 %cst_1 : f32
        %296 = math.log10 %1 : tensor<4xf16>
        %297 = math.log10 %9 : tensor<4x11xf32>
        %298 = index.floordivs %56, %71
        %299 = math.fma %4, %4, %4 : tensor<11xf16>
        affine.store %92, %alloc_7[%c1] : memref<4xf32>
        %300 = arith.shrui %194, %138 : i64
        %301 = vector.create_mask %c15 : vector<11xi1>
        %alloc_42 = memref.alloc() : memref<4x11xf16>
        scf.yield %alloc_42 : memref<4x11xf16>
      }
      %285 = memref.realloc %alloc_19 : memref<11xf32> to memref<11xf32>
      %286 = vector.broadcast %29 : index to vector<11xindex>
      vector.scatter %alloc_6[%c3, %c9] [%286], %46, %43 : memref<4x11xi32>, vector<11xindex>, vector<11xi1>, vector<11xi32>
      linalg.yield %c-13043_i16 : i16
    } -> tensor<11x4x16xi16>
    %splat_34 = tensor.splat %c1234797326_i64 : tensor<11x4x16xi64>
    %204 = affine.load %alloc_9[%c8] : memref<11xi32>
    %205 = vector.reduction <xor>, %47 : vector<11xi16> into i16
    %206 = arith.floordivsi %extracted, %extracted : i16
    scf.if %false {
      %256 = arith.cmpf ule, %cst_3, %cst_3 : f16
      %257 = vector.broadcast %92 : f32 to vector<4x11xf32>
      %258 = vector.fma %257, %77, %76 : vector<4x11xf32>
      %259 = vector.broadcast %181 : index to vector<15xindex>
      %260 = vector.broadcast %true_27 : i1 to vector<15xi1>
      %261 = vector.broadcast %cst_30 : f32 to vector<15xf32>
      vector.scatter %alloc[%c0, %c9] [%259], %260, %261 : memref<4x11xf32>, vector<15xindex>, vector<15xi1>, vector<15xf32>
      %262 = vector.broadcast %c3 : index to vector<16xindex>
      %263 = vector.broadcast %true : i1 to vector<16xi1>
      %264 = vector.broadcast %extracted_33 : i64 to vector<16xi64>
      vector.scatter %alloc_21[%c8] [%262], %263, %264 : memref<11xi64>, vector<16xindex>, vector<16xi1>, vector<16xi64>
      %265 = memref.atomic_rmw mins %130, %197[%c4, %c0, %c6] : (i32, memref<11x4x16xi32>) -> i32
      %alloc_39 = memref.alloc() : memref<11xi16>
      memref.tensor_store %10, %alloc_39 : memref<11xi16>
      %266 = math.ceil %85 : f16
      %267 = vector.extract_strided_slice %154 {offsets = [2], sizes = [1], strides = [1]} : vector<4x11xi64> to vector<1x11xi64>
    }
    %207 = memref.atomic_rmw mins %c1780117628_i32, %alloc_14[%c8, %c0, %c6] : (i32, memref<11x4x16xi32>) -> i32
    %208 = vector.matrix_multiply %99, %201 {lhs_columns = 1 : i32, lhs_rows = 11 : i32, rhs_columns = 4 : i32} : (vector<11xf32>, vector<4xf32>) -> vector<44xf32>
    %209 = math.log1p %cst_30 : f32
    %210 = math.absi %true_32 : i1
    %211 = math.absf %8 : tensor<11xf32>
    %212 = memref.atomic_rmw addi %130, %alloc_15[%c2] : (i32, memref<4xi32>) -> i32
    %213 = vector.broadcast %108 : index to vector<4xindex>
    vector.scatter %alloc_7[%c3] [%213], %34, %202 : memref<4xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
    %214 = arith.minf %cst_2, %cst_3 : f16
    %215 = arith.mulf %85, %85 : f16
    %rank = tensor.rank %1 : tensor<4xf16>
    %cast = tensor.cast %12 : tensor<11x4x16xi16> to tensor<?x?x?xi16>
    %216 = vector.broadcast %false : i1 to vector<4x11xi1>
    bufferization.dealloc_tensor %collapsed_28 : tensor<44xi16>
    %217 = scf.while (%arg2 = %c1477322855_i32) : (i32) -> i32 {
      %256 = vector.insert %204, %43 [7] : i32 into vector<11xi32>
      %from_elements = tensor.from_elements %cst_3, %cst_3, %cst_2, %85, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3 : tensor<11xf16>
      vector.print %99 : vector<11xf32>
      %257 = arith.minsi %c1477322855_i32, %c1780117628_i32 : i32
      %258 = arith.minf %cst_0, %cst_30 : f32
      %259 = math.exp %cst_30 : f32
      %260 = memref.atomic_rmw ori %c2005209551_i32, %alloc_14[%c9, %c1, %c14] : (i32, memref<11x4x16xi32>) -> i32
      %261 = math.log10 %14 : tensor<11xf32>
      scf.condition(%true) %arg2 : i32
    } do {
    ^bb0(%arg2: i32):
      %256 = math.round %11 : tensor<4x11xf32>
      %257 = math.ipowi %3, %3 : tensor<4x11xi64>
      %258 = affine.if affine_set<(d0) : (d0 + 127 >= 0, d0 * 16 == 0, 0 == 0, d0 >= 0)>(%c1) -> memref<4xi16> {
        %270 = math.fma %4, %4, %4 : tensor<11xf16>
        %271 = index.maxu %71, %41
        %272 = math.absf %11 : tensor<4x11xf32>
        %273 = memref.atomic_rmw maxs %194, %alloc_12[%c10] : (i64, memref<11xi64>) -> i64
        %274 = arith.divf %92, %cst_1 : f32
        %275 = arith.shrsi %true_27, %false : i1
        %276 = vector.broadcast %c1694361209_i64 : i64 to vector<4xi64>
        %277 = math.round %cst_3 : f16
        affine.yield %161 : memref<4xi16>
      } else {
        %270 = math.atan2 %11, %9 : tensor<4x11xf32>
        vector.print %100 : vector<11xf32>
        %271 = vector.matrix_multiply %201, %201 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %272 = math.round %14 : tensor<11xf32>
        %273 = vector.extract %44[3] : vector<4x11xi32>
        %274 = arith.cmpf ule, %cst, %cst : f16
        %275 = arith.cmpi ult, %194, %extracted_26 : i64
        %276 = arith.xori %extracted_26, %c1829376760_i64 : i64
        affine.yield %alloc_16 : memref<4xi16>
      }
      %259 = affine.max affine_map<(d0) -> (d0 - 80)>(%c12)
      %260 = math.sqrt %cst_1 : f32
      %261 = index.maxs %41, %56
      %262 = arith.negf %cst_30 : f32
      %rank_39 = tensor.rank %1 : tensor<4xf16>
      %263 = vector.load %48[%c2, %c7] : memref<4x11xi32>, vector<4x11xi32>
      %264 = math.ceil %9 : tensor<4x11xf32>
      scf.if %true_27 {
        memref.store %c1780117628_i32, %alloc_11[%c0, %c4] : memref<4x11xi32>
        %270 = math.ipowi %c1477322855_i32, %130 : i32
        affine.store %130, %alloc_14[%c1, %c5, %c8] : memref<11x4x16xi32>
        %271 = index.sub %rank_39, %37
        %272 = math.exp %11 : tensor<4x11xf32>
        %273 = vector.insert %cst_0, %201 [2] : f32 into vector<4xf32>
        %274 = index.castu %c1_i64 : i64 to index
        %275 = affine.min affine_map<(d0) -> (0, 0, (d0 - 1) floordiv 4)>(%c13)
      } else {
        %inserted = tensor.insert %cst into %4[%c6] : tensor<11xf16>
        bufferization.dealloc_tensor %3 : tensor<4x11xi64>
        %270 = bufferization.to_tensor %alloc_5 : memref<4x11xi16>
        %271 = vector.reduction <and>, %117 : vector<11xi1> into i1
        %272 = math.fpowi %cst_30, %arg2 : f32, i32
        %273 = arith.remf %cst, %85 : f16
        %274 = math.copysign %6, %6 : tensor<4x11xf16>
        %275 = arith.divf %cst_30, %cst_30 : f32
      }
      %265 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %100, %77, %202 : vector<11xf32>, vector<4x11xf32> into vector<4xf32>
      %266 = vector.extract_strided_slice %46 {offsets = [6], sizes = [1], strides = [1]} : vector<11xi1> to vector<1xi1>
      %267 = math.tanh %1 : tensor<4xf16>
      %268 = math.atan2 %9, %11 : tensor<4x11xf32>
      %269 = scf.while (%arg3 = %201) : (vector<4xf32>) -> vector<4xf32> {
        %cast_40 = tensor.cast %10 : tensor<11xi16> to tensor<?xi16>
        bufferization.dealloc_tensor %cast : tensor<?x?x?xi16>
        %270 = math.cttz %c1694361209_i64 : i64
        %271 = math.copysign %9, %9 : tensor<4x11xf32>
        %collapsed_41 = tensor.collapse_shape %splat_34 [[0, 1], [2]] : tensor<11x4x16xi64> into tensor<44x16xi64>
        %272 = vector.insert %204, %43 [6] : i32 into vector<11xi32>
        %rank_42 = tensor.rank %collapsed_41 : tensor<44x16xi64>
        %273 = vector.insertelement %true_32, %46[%c6 : index] : vector<11xi1>
        scf.condition(%true_32) %201 : vector<4xf32>
      } do {
      ^bb0(%arg3: vector<4xf32>):
        %inserted = tensor.insert %c2005209551_i32 into %7[%c10, %c2, %c9] : tensor<11x4x16xi32>
        %270 = arith.addf %cst_1, %cst_1 : f32
        %271 = vector.load %alloc_13[%c2, %c10] : memref<4x11xi32>, vector<4xi32>
        %272 = vector.shuffle %18, %208 [0, 3, 4, 9, 10, 12, 13, 15, 16, 18, 19, 20, 22, 24, 27, 28, 29, 30, 33, 34, 35, 36, 37, 38, 39, 41, 42, 43, 45, 48, 50, 52, 54, 55, 57, 58, 59] : vector<16xf32>, vector<44xf32>
        %273 = arith.addi %204, %c1477322855_i32 : i32
        %cast_40 = tensor.cast %9 : tensor<4x11xf32> to tensor<?x?xf32>
        %274 = math.round %cst : f16
        %275 = arith.cmpi slt, %c2005209551_i32, %c2005209551_i32 : i32
        %276 = vector.create_mask %261 : vector<4xi1>
        %277 = arith.maxui %c1_i64, %138 : i64
        %278 = math.roundeven %cst_30 : f32
        %279 = arith.divf %cst_1, %cst_30 : f32
        %280 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 * 16, d3, d1 - d2 + d3 - 32, d1 - d2)>(%c11, %c14, %c6, %259)
        %c1733604996_i64 = arith.constant 1733604996 : i64
        %281 = memref.atomic_rmw addi %c1694361209_i64, %alloc_4[%c1, %c5] : (i64, memref<4x11xi64>) -> i64
        %282 = math.absi %extracted : i16
        scf.yield %201 : vector<4xf32>
      }
      scf.yield %c1780117628_i32 : i32
    }
    %218 = index.add %c0, %rank
    %219 = affine.max affine_map<(d0) -> (d0 + 96, d0 floordiv 32 + 1)>(%c0)
    %220 = index.divu %c2, %c6
    %221 = index.maxu %c5, %198
    %222 = vector.flat_transpose %117 {columns = 11 : i32, rows = 1 : i32} : vector<11xi1> -> vector<11xi1>
    %223 = tensor.empty() : tensor<4x11xi32>
    %224 = math.fpowi %11, %223 : tensor<4x11xf32>, tensor<4x11xi32>
    %225 = affine.min affine_map<(d0, d1, d2, d3) -> ((d2 - d3) mod 128, (d2 - 2) floordiv 16)>(%c9, %c6, %c15, %c12)
    affine.store %cst_1, %alloc_19[%c5] : memref<11xf32>
    %226 = affine.load %alloc_10[%c14] : memref<4xf32>
    %227 = vector.shuffle %208, %202 [1, 4, 5, 6, 7, 9, 10, 11, 15, 16, 19, 20, 24, 25, 26, 28, 30, 31, 32, 33, 34, 35, 36, 39, 41, 44, 46, 47] : vector<44xf32>, vector<4xf32>
    %228 = arith.xori %138, %extracted_26 : i64
    %229 = math.log10 %85 : f16
    %collapsed_35 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<11x4x16xi16> into tensor<44x16xi16>
    %230 = math.ctlz %10 : tensor<11xi16>
    %231 = affine.max affine_map<(d0, d1, d2) -> (-d0 + 8, (-d0) mod 64)>(%103, %26, %71)
    %232 = scf.while (%arg2 = %48) : (memref<4x11xi32>) -> memref<4x11xi32> {
      %256 = math.rsqrt %cst_1 : f32
      %257 = math.fpowi %8, %splat_29 : tensor<11xf32>, tensor<11xi32>
      %258 = math.round %85 : f16
      %259 = math.rsqrt %cst_30 : f32
      %260 = arith.xori %c1_i64, %c1234797326_i64 : i64
      %261 = math.absf %cst_1 : f32
      memref.store %c1829376760_i64, %alloc_21[%c2] : memref<11xi64>
      %262 = index.castu %c4 : index to i32
      scf.condition(%true) %48 : memref<4x11xi32>
    } do {
    ^bb0(%arg2: memref<4x11xi32>):
      %256 = arith.maxsi %c118904530_i32, %c2005209551_i32 : i32
      %257 = bufferization.clone %alloc_8 : memref<11xf16> to memref<11xf16>
      %258 = arith.shli %c1_i64, %138 : i64
      %259 = math.atan2 %1, %1 : tensor<4xf16>
      %260 = index.maxs %c2, %221
      bufferization.dealloc_tensor %splat : tensor<11xi16>
      %261 = math.log1p %6 : tensor<4x11xf16>
      %262 = affine.for %arg3 = 0 to 6 iter_args(%arg4 = %43) -> (vector<11xi32>) {
        affine.yield %43 : vector<11xi32>
      }
      %263 = math.cttz %12 : tensor<11x4x16xi16>
      %264 = scf.index_switch %c0 -> memref<11x4x16xi16> 
      case 1 {
        %271 = index.maxu %70, %c0
        %272 = vector.create_mask %c11, %c4 : vector<4x11xi1>
        %273 = vector.extract_strided_slice %159 {offsets = [0], sizes = [3], strides = [1]} : vector<4xi1> to vector<3xi1>
        %274 = math.round %cst_3 : f16
        %275 = index.add %rank, %198
        %276 = vector.splat %rank : vector<11xindex>
        %277 = arith.shli %c1829376760_i64, %c1829376760_i64 : i64
        %collapsed_39 = tensor.collapse_shape %6 [[0, 1]] : tensor<4x11xf16> into tensor<44xf16>
        %278 = memref.realloc %alloc_9 : memref<11xi32> to memref<15xi32>
        %279 = arith.minf %85, %cst : f16
        %280 = arith.negf %92 : f32
        %281 = index.add %198, %181
        %282 = index.floordivs %72, %220
        %283 = affine.load %alloc_20[] : memref<f16>
        %alloca_40 = memref.alloca() : memref<4x11xi64>
        %284 = index.mul %176, %221
        %alloc_41 = memref.alloc() : memref<11x4x16xi16>
        scf.yield %alloc_41 : memref<11x4x16xi16>
      }
      case 2 {
        %271 = math.exp %1 : tensor<4xf16>
        %inserted = tensor.insert %extracted into %13[%c8] : tensor<11xi16>
        %272 = vector.extract_strided_slice %46 {offsets = [6], sizes = [4], strides = [1]} : vector<11xi1> to vector<4xi1>
        %273 = vector.insert %100, %76 [2] : vector<11xf32> into vector<4x11xf32>
        %274 = math.copysign %8, %14 : tensor<11xf32>
        %275 = math.fpowi %cst, %130 : f16, i32
        %276 = math.ceil %226 : f32
        %splat_39 = tensor.splat %cst_3 : tensor<11xf16>
        %277 = vector.broadcast %54 : index to vector<11xindex>
        vector.scatter %alloc_7[%c3] [%277], %117, %99 : memref<4xf32>, vector<11xindex>, vector<11xi1>, vector<11xf32>
        %278 = index.ceildivs %c3, %c13
        memref.store %85, %alloc_8[%c2] : memref<11xf16>
        %279 = arith.addf %cst_30, %cst_30 : f32
        %280 = math.rsqrt %9 : tensor<4x11xf32>
        %281 = arith.minf %cst_30, %92 : f32
        %282 = arith.shrui %c-20887_i16, %c-20887_i16 : i16
        %283 = math.exp2 %cst_2 : f16
        %alloc_40 = memref.alloc() : memref<11x4x16xi16>
        scf.yield %alloc_40 : memref<11x4x16xi16>
      }
      case 3 {
        %splat_39 = tensor.splat %cst : tensor<11xf16>
        %collapsed_40 = tensor.collapse_shape %9 [[0, 1]] : tensor<4x11xf32> into tensor<44xf32>
        %271 = vector.insert %46, %63 [3] : vector<11xi1> into vector<4x11xi1>
        %272 = arith.remf %cst_2, %cst_2 : f16
        %273 = memref.atomic_rmw maxu %c-20887_i16, %127[%c0, %c5] : (i16, memref<4x11xi16>) -> i16
        %274 = vector.broadcast %cst_1 : f32 to vector<4x16xf32>
        %275 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %100, %106, %274 : vector<11xf32>, vector<11x4x16xf32> into vector<4x16xf32>
        memref.copy %alloc_18, %alloc_17 : memref<4x11xi64> to memref<4x11xi64>
        %276 = vector.insertelement %cst_1, %201[%37 : index] : vector<4xf32>
        %277 = bufferization.clone %alloc_18 : memref<4x11xi64> to memref<4x11xi64>
        %278 = arith.negf %cst_0 : f32
        %279 = vector.broadcast %true_32 : i1 to vector<4x11xi1>
        %280 = math.log10 %226 : f32
        %dest_41, %accumulated_value_42 = vector.scan <or>, %63, %159 {inclusive = false, reduction_dim = 1 : i64} : vector<4x11xi1>, vector<4xi1>
        %281 = math.sqrt %6 : tensor<4x11xf16>
        %dest_43, %accumulated_value_44 = vector.scan <or>, %94, %46 {inclusive = true, reduction_dim = 0 : i64} : vector<2x11xi1>, vector<11xi1>
        %282 = affine.load %alloc_14[%c0, %c8, %c8] : memref<11x4x16xi32>
        %alloc_45 = memref.alloc() : memref<11x4x16xi16>
        scf.yield %alloc_45 : memref<11x4x16xi16>
      }
      case 4 {
        %271 = vector.transpose %45, [0] : vector<11xi16> to vector<11xi16>
        %dest_39, %accumulated_value_40 = vector.scan <maxf>, %77, %202 {inclusive = false, reduction_dim = 1 : i64} : vector<4x11xf32>, vector<4xf32>
        %272 = arith.addf %cst_30, %cst_30 : f32
        memref.store %c1_i64, %alloc_18[%c0, %c1] : memref<4x11xi64>
        %273 = arith.minsi %c1234797326_i64, %138 : i64
        %274 = vector.insertelement %92, %99[%218 : index] : vector<11xf32>
        %275 = arith.cmpi eq, %138, %138 : i64
        %276 = arith.maxf %cst_2, %85 : f16
        %277 = index.ceildivu %c2, %260
        %278 = arith.divf %cst_1, %226 : f32
        %279 = affine.load %127[%c15, %c9] : memref<4x11xi16>
        %280 = affine.min affine_map<(d0, d1, d2) -> (d2 * 2)>(%c13, %181, %221)
        %281 = math.cttz %53 : i64
        %282 = math.atan2 %8, %8 : tensor<11xf32>
        %283 = math.log2 %14 : tensor<11xf32>
        %c1_i32 = arith.constant 1 : i32
        %c0_i32 = arith.constant 0 : i32
        %284 = vector.transfer_read %alloc_15[%37], %c0_i32 : memref<4xi32>, vector<i32>
        %alloc_41 = memref.alloc() : memref<11x4x16xi16>
        scf.yield %alloc_41 : memref<11x4x16xi16>
      }
      default {
        %271 = vector.load %alloc_19[%c6] : memref<11xf32>, vector<4x11xf32>
        %272 = vector.broadcast %true : i1 to vector<2xi1>
        %dest_39, %accumulated_value_40 = vector.scan <xor>, %94, %272 {inclusive = true, reduction_dim = 1 : i64} : vector<2x11xi1>, vector<2xi1>
        %273 = vector.matrix_multiply %159, %117 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 11 : i32} : (vector<4xi1>, vector<11xi1>) -> vector<44xi1>
        %274 = vector.splat %260 : vector<11xindex>
        %275 = math.ctpop %17 : tensor<11xi64>
        %276 = vector.load %alloc[%c3, %c4] : memref<4x11xf32>, vector<11xf32>
        %277 = index.floordivs %84, %c2
        affine.store %c1780117628_i32, %arg2[%c4, %c8] : memref<4x11xi32>
        bufferization.dealloc_tensor %8 : tensor<11xf32>
        %278 = math.log2 %85 : f16
        %279 = math.exp %cst_30 : f32
        %280 = math.log2 %cst_30 : f32
        %dest_41, %accumulated_value_42 = vector.scan <minsi>, %216, %46 {inclusive = true, reduction_dim = 0 : i64} : vector<4x11xi1>, vector<11xi1>
        %281 = math.sqrt %9 : tensor<4x11xf32>
        %collapsed_43 = tensor.collapse_shape %5 [[0, 1]] : tensor<4x11xi16> into tensor<44xi16>
        %282 = arith.ori %extracted, %extracted : i16
        %alloc_44 = memref.alloc() : memref<11x4x16xi16>
        scf.yield %alloc_44 : memref<11x4x16xi16>
      }
      %265 = vector.load %alloc_16[%c1] : memref<4xi16>, vector<11x4x16xi16>
      %266 = vector.load %alloc_9[%c2] : memref<11xi32>, vector<4x11xi32>
      %267 = math.log1p %collapsed : tensor<44xf16>
      %268 = math.ipowi %c118904530_i32, %c118904530_i32 : i32
      %269 = affine.max affine_map<(d0) -> (d0, 2, ((d0 floordiv 2) mod 4) ceildiv 16)>(%219)
      %270 = math.rsqrt %cst_1 : f32
      scf.yield %alloc_13 : memref<4x11xi32>
    }
    %233 = math.round %85 : f16
    %extracted_36 = tensor.extract %collapsed[%c11] : tensor<44xf16>
    %234 = vector.extract %159[1] : vector<4xi1>
    %235 = math.ceil %11 : tensor<4x11xf32>
    %236 = math.atan2 %1, %1 : tensor<4xf16>
    %237 = math.rsqrt %1 : tensor<4xf16>
    %238 = arith.andi %c1477322855_i32, %c118904530_i32 : i32
    %239 = bufferization.clone %127 : memref<4x11xi16> to memref<4x11xi16>
    %240 = vector.broadcast %c1694361209_i64 : i64 to vector<11x11xi64>
    %241 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %154, %154, %240 : vector<4x11xi64>, vector<4x11xi64> into vector<11x11xi64>
    %242 = arith.remf %cst_0, %226 : f32
    %243 = math.fma %85, %cst_2, %extracted_36 : f16
    %244 = math.absf %extracted_36 : f16
    %245 = math.log2 %cst_3 : f16
    %246 = math.sqrt %9 : tensor<4x11xf32>
    vector.print %107 : vector<11x4x16xf32>
    %247 = vector.broadcast %35 : index to vector<4xindex>
    %248 = vector.broadcast %53 : i64 to vector<4xi64>
    vector.scatter %alloc_18[%c1, %c7] [%247], %34, %248 : memref<4x11xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
    %249 = affine.if affine_set<(d0, d1) : (-(d1 ceildiv 32) >= 0, (d0 - 1) mod 2 - (d0 + 63) == 0, d0 floordiv 4 >= 0, (d1 ceildiv 32) ceildiv 64 == 0)>(%c10, %c6) -> i32 {
      %256 = index.ceildivs %219, %108
      %257 = arith.subi %c118904530_i32, %130 : i32
      %258 = math.exp2 %9 : tensor<4x11xf32>
      %259 = math.cttz %40 : i64
      %260 = scf.while (%arg2 = %43) : (vector<11xi32>) -> vector<11xi32> {
        %263 = math.log2 %226 : f32
        %264 = index.mul %c10, %220
        %265 = index.sub %231, %164
        %266 = vector.splat %c5 : vector<11x4x16xindex>
        %267 = math.absf %226 : f32
        %268 = math.absf %6 : tensor<4x11xf16>
        %269 = arith.floordivsi %c-20887_i16, %c-13043_i16 : i16
        %270 = arith.addf %cst_30, %cst_0 : f32
        scf.condition(%true) %43 : vector<11xi32>
      } do {
      ^bb0(%arg2: vector<11xi32>):
        %263 = affine.min affine_map<(d0, d1, d2) -> (d1)>(%177, %256, %198)
        memref.copy %alloc_13, %alloc_11 : memref<4x11xi32> to memref<4x11xi32>
        %264 = math.atan2 %6, %6 : tensor<4x11xf16>
        %265 = vector.splat %50 : vector<11x4x16xindex>
        %266 = arith.remf %cst_3, %85 : f16
        %267 = arith.minui %130, %c2005209551_i32 : i32
        %268 = index.maxs %108, %c11
        %269 = vector.create_mask %54, %c4, %c3 : vector<11x4x16xi1>
        %270 = math.absf %cst : f16
        %271 = vector.broadcast %c-20887_i16 : i16 to vector<11xi16>
        %extracted_40 = tensor.extract %splat_34[%c5, %c0, %c4] : tensor<11x4x16xi64>
        memref.store %c1477322855_i32, %alloc_9[%c3] : memref<11xi32>
        %272 = vector.broadcast %extracted_26 : i64 to vector<4xi64>
        %273 = vector.multi_reduction <add>, %154, %272 [1] : vector<4x11xi64> to vector<4xi64>
        memref.store %53, %alloc_17[%c1, %c10] : memref<4x11xi64>
        %274 = arith.maxui %true_27, %true : i1
        %275 = index.add %256, %220
        scf.yield %43 : vector<11xi32>
      }
      %false_39 = index.bool.constant false
      %261 = memref.atomic_rmw minu %c118904530_i32, %alloc_15[%c1] : (i32, memref<4xi32>) -> i32
      %262 = arith.minsi %c-20887_i16, %c-13043_i16 : i16
      affine.yield %c2005209551_i32 : i32
    } else {
      %256 = affine.min affine_map<(d0) -> (-d0 - (d0 mod 8 - 8) floordiv 16)>(%177)
      %cast_39 = tensor.cast %14 : tensor<11xf32> to tensor<?xf32>
      %257 = math.round %8 : tensor<11xf32>
      %258 = arith.muli %true_27, %true : i1
      %259 = math.absf %226 : f32
      bufferization.dealloc_tensor %5 : tensor<4x11xi16>
      %260 = vector.extract_strided_slice %201 {offsets = [1], sizes = [2], strides = [1]} : vector<4xf32> to vector<2xf32>
      %false_40 = index.bool.constant false
      affine.yield %204 : i32
    }
    %250 = memref.realloc %alloc_7 : memref<4xf32> to memref<16xf32>
    %251 = math.absf %cst_0 : f32
    %252 = vector.matrix_multiply %34, %159 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
    %253 = tensor.empty() : tensor<i64>
    %254 = linalg.copy ins(%19 : tensor<i64>) outs(%253 : tensor<i64>) -> tensor<i64>
    %alloc_37 = memref.alloc() : memref<4xi32>
    linalg.transpose ins(%alloc_15 : memref<4xi32>) outs(%alloc_37 : memref<4xi32>) permutation = [0] 
    %alloc_38 = memref.alloc() : memref<4xi16>
    linalg.reduce ins(%27 : tensor<4x11xi16>) outs(%alloc_38 : memref<4xi16>) dimensions = [1] 
      (%in: i16, %init: i16) {
        memref.store %c-13043_i16, %239[%c3, %c5] : memref<4x11xi16>
        %256 = index.castu %rank : index to i32
        %257 = math.exp2 %cst_3 : f16
        %258 = math.exp %cst_3 : f16
        memref.store %cst_3, %alloc_20[] : memref<f16>
        %259 = arith.maxui %c1694361209_i64, %extracted_26 : i64
        %260 = math.atan2 %92, %cst_30 : f32
        %261 = math.exp2 %6 : tensor<4x11xf16>
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    scf.parallel (%arg2, %arg3) = (%108, %c4) to (%c9, %54) step (%c14, %c14) {
      %inserted = tensor.insert %cst into %4[%c0] : tensor<11xf16>
      %256 = math.absi %extracted_26 : i64
      %257 = index.ceildivu %c14, %164
      %258 = math.tanh %4 : tensor<11xf16>
      %259 = index.divu %c5, %c8
      %260 = math.ceil %11 : tensor<4x11xf32>
      %261 = arith.andi %40, %c1234797326_i64 : i64
      %262 = math.cttz %253 : tensor<i64>
      %263 = math.atan2 %226, %cst_0 : f32
      %264 = math.absf %92 : f32
      %generated_39 = tensor.generate %c0 {
      ^bb0(%arg4: index, %arg5: index, %arg6: index):
        memref.copy %alloc_16, %161 : memref<4xi16> to memref<4xi16>
        %269 = arith.divf %226, %cst_0 : f32
        %270 = arith.xori %extracted, %c-20887_i16 : i16
        %271 = bufferization.clone %alloc_10 : memref<4xf32> to memref<4xf32>
        tensor.yield %85 : f16
      } : tensor<?x4x16xf16>
      memref.store %53, %alloc_17[%c2, %c8] : memref<4x11xi64>
      %265 = math.cttz %10 : tensor<11xi16>
      %266 = math.log10 %cst_3 : f16
      %267 = vector.insert %true_32, %117 [0] : i1 into vector<11xi1>
      %268 = arith.minui %true_27, %false : i1
      scf.yield
    }
    %255 = affine.vector_load %alloc_11[%177, %103] : memref<4x11xi32>, vector<11xi32>
    affine.vector_store %47, %127[%29, %170] : memref<4x11xi16>, vector<11xi16>
    vector.print %18 : vector<16xf32>
    vector.print %34 : vector<4xi1>
    vector.print %43 : vector<11xi32>
    vector.print %44 : vector<4x11xi32>
    vector.print %45 : vector<11xi16>
    vector.print %46 : vector<11xi1>
    vector.print %47 : vector<11xi16>
    vector.print %63 : vector<4x11xi1>
    vector.print %76 : vector<4x11xf32>
    vector.print %77 : vector<4x11xf32>
    vector.print %94 : vector<2x11xi1>
    vector.print %99 : vector<11xf32>
    vector.print %100 : vector<11xf32>
    vector.print %106 : vector<11x4x16xf32>
    vector.print %107 : vector<11x4x16xf32>
    vector.print %117 : vector<11xi1>
    vector.print %135 : vector<4x11xi1>
    vector.print %142 : vector<11xf32>
    vector.print %154 : vector<4x11xi64>
    vector.print %159 : vector<4xi1>
    vector.print %201 : vector<4xf32>
    vector.print %202 : vector<4xf32>
    vector.print %208 : vector<44xf32>
    vector.print %216 : vector<4x11xi1>
    vector.print %222 : vector<11xi1>
    vector.print %252 : vector<1xi1>
    vector.print %255 : vector<11xi32>
    vector.print %c1477322855_i32 : i32
    vector.print %false : i1
    vector.print %c118904530_i32 : i32
    vector.print %cst : f16
    vector.print %cst_0 : f32
    vector.print %c1829376760_i64 : i64
    vector.print %c-20887_i16 : i16
    vector.print %c2005209551_i32 : i32
    vector.print %cst_1 : f32
    vector.print %cst_2 : f16
    vector.print %cst_3 : f16
    vector.print %c1694361209_i64 : i64
    vector.print %c-13043_i16 : i16
    vector.print %c1234797326_i64 : i64
    vector.print %true : i1
    vector.print %c1780117628_i32 : i32
    vector.print %40 : i64
    vector.print %53 : i64
    vector.print %c1_i64 : i64
    vector.print %85 : f16
    vector.print %extracted : i16
    vector.print %92 : f32
    vector.print %extracted_26 : i64
    vector.print %true_27 : i1
    vector.print %130 : i32
    vector.print %138 : i64
    vector.print %cst_30 : f32
    vector.print %194 : i64
    vector.print %true_32 : i1
    vector.print %extracted_33 : i64
    vector.print %204 : i32
    vector.print %226 : f32
    vector.print %extracted_36 : f16
    return
  }
}
