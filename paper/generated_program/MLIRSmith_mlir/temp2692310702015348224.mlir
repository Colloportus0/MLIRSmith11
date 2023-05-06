module {
  func.func private @func1(%arg0: index) -> tensor<5xi64> {
    %cst = arith.constant 1.49494298E+9 : f32
    %c14916_i16 = arith.constant 14916 : i16
    %c-9675_i16 = arith.constant -9675 : i16
    %cst_0 = arith.constant 0x4D9D636B : f32
    %c1867734685_i64 = arith.constant 1867734685 : i64
    %false = arith.constant false
    %c1404000026_i32 = arith.constant 1404000026 : i32
    %cst_1 = arith.constant 1.976000e+04 : f16
    %false_2 = arith.constant false
    %cst_3 = arith.constant 0x4CDE6F9E : f32
    %true = arith.constant true
    %cst_4 = arith.constant 0x4BABF3D0 : f32
    %c507242457_i32 = arith.constant 507242457 : i32
    %true_5 = arith.constant true
    %true_6 = arith.constant true
    %c1064313233_i32 = arith.constant 1064313233 : i32
    %0 = tensor.empty() : tensor<5xi16>
    %1 = tensor.empty() : tensor<2xi1>
    %2 = tensor.empty() : tensor<5xf32>
    %3 = tensor.empty() : tensor<5x4xf32>
    %4 = tensor.empty() : tensor<5xi64>
    %5 = tensor.empty() : tensor<2xi64>
    %6 = tensor.empty() : tensor<2xf32>
    %7 = tensor.empty() : tensor<5xi32>
    %8 = tensor.empty() : tensor<5xi16>
    %9 = tensor.empty() : tensor<2xi16>
    %10 = tensor.empty() : tensor<5x4xi16>
    %11 = tensor.empty() : tensor<5xi32>
    %12 = tensor.empty() : tensor<5x4xi64>
    %13 = tensor.empty() : tensor<5xf32>
    %14 = tensor.empty() : tensor<5xi32>
    %15 = tensor.empty() : tensor<5xi64>
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
    %alloc = memref.alloc() : memref<5xi64>
    %alloc_7 = memref.alloc() : memref<2xi16>
    %alloc_8 = memref.alloc() : memref<2xi1>
    %alloc_9 = memref.alloc() : memref<5x4xi64>
    %alloc_10 = memref.alloc() : memref<5x4xf16>
    %alloc_11 = memref.alloc() : memref<5xi32>
    %alloc_12 = memref.alloc() : memref<5xi32>
    %alloc_13 = memref.alloc() : memref<2xi16>
    %alloc_14 = memref.alloc() : memref<5x4xi64>
    %alloc_15 = memref.alloc() : memref<2xf16>
    %alloc_16 = memref.alloc() : memref<5xf32>
    %alloc_17 = memref.alloc() : memref<5x4xf32>
    %alloc_18 = memref.alloc() : memref<5xi64>
    %alloc_19 = memref.alloc() : memref<5xi32>
    %alloc_20 = memref.alloc() : memref<5xi32>
    %alloc_21 = memref.alloc() : memref<5x4xi16>
    %16 = tensor.empty() : tensor<5xi64>
    %17 = linalg.copy ins(%4 : tensor<5xi64>) outs(%16 : tensor<5xi64>) -> tensor<5xi64>
    %18 = tensor.empty() : tensor<5xf32>
    %transposed = linalg.transpose ins(%13 : tensor<5xf32>) outs(%18 : tensor<5xf32>) permutation = [0] 
    %alloc_22 = memref.alloc() : memref<i16>
    linalg.reduce ins(%alloc_7 : memref<2xi16>) outs(%alloc_22 : memref<i16>) dimensions = [0] 
      (%in: i16, %init: i16) {
        %cst_63 = arith.constant 1.24411315E+9 : f32
        %generated_64 = tensor.generate %c10 {
        ^bb0(%arg1: index):
          %cast_66 = tensor.cast %1 : tensor<2xi1> to tensor<?xi1>
          bufferization.dealloc_tensor %8 : tensor<5xi16>
          %265 = arith.minsi %true, %false_2 : i1
          %266 = arith.mulf %cst, %cst_4 : f32
          tensor.yield %c1867734685_i64 : i64
        } : tensor<?xi64>
        %inserted_65 = tensor.insert %c1867734685_i64 into %15[%c1] : tensor<5xi64>
        %257 = math.absi %5 : tensor<2xi64>
        %258 = index.casts %c-9675_i16 : i16 to index
        %259 = vector.load %alloc_7[%c1] : memref<2xi16>, vector<5x4xi16>
        %260 = vector.broadcast %cst_3 : f32 to vector<5xf32>
        %261 = vector.broadcast %true : i1 to vector<5xi1>
        %262 = vector.broadcast %c1404000026_i32 : i32 to vector<5xi32>
        %263 = vector.gather %3[%c9, %c11] [%262], %261, %260 : tensor<5x4xf32>, vector<5xi32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
        %264 = vector.transpose %262, [0] : vector<5xi32> to vector<5xi32>
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %19 = scf.parallel (%arg1, %arg2) = (%c2, %c4) to (%c14, %c6) step (%c8, %c13) init (%alloc_11) -> memref<5xi32> {
      %257 = memref.load %alloc_10[%c3, %c3] : memref<5x4xf16>
      %258 = arith.divui %c14916_i16, %c14916_i16 : i16
      %alloc_63 = memref.alloc() : memref<i16>
      memref.copy %alloc_22, %alloc_63 : memref<i16> to memref<i16>
      %259 = affine.min affine_map<(d0, d1) -> (0, d0 * 4)>(%c4, %c1)
      %260 = affine.if affine_set<(d0, d1, d2, d3) : (d2 + 1 >= 0)>(%c6, %c3, %c4, %c3) -> memref<5xf32> {
        %alloca_67 = memref.alloca() : memref<5xf16>
        %275 = vector.broadcast %true : i1 to vector<4xi1>
        %276 = vector.broadcast %true_5 : i1 to vector<4x4xi1>
        %277 = vector.outerproduct %275, %275, %276 {kind = #vector.kind<or>} : vector<4xi1>, vector<4xi1>
        %c852025004_i64 = arith.constant 852025004 : i64
        %collapsed_68 = tensor.collapse_shape %12 [[0, 1]] : tensor<5x4xi64> into tensor<20xi64>
        %278 = arith.divf %cst_4, %cst : f32
        %279 = arith.remsi %c1867734685_i64, %c1867734685_i64 : i64
        %from_elements = tensor.from_elements %c1404000026_i32, %c507242457_i32 : tensor<2xi32>
        %280 = arith.shrsi %c1867734685_i64, %c1867734685_i64 : i64
        affine.yield %alloc_16 : memref<5xf32>
      } else {
        affine.store %c14916_i16, %alloc_13[%c8] : memref<2xi16>
        %c0_i32_67 = arith.constant 0 : i32
        %275 = vector.transfer_read %alloc_11[%arg2], %c0_i32_67 : memref<5xi32>, vector<i32>
        %276 = arith.minf %cst_3, %cst_4 : f32
        %277 = arith.xori %c0_i32_67, %c507242457_i32 : i32
        %278 = bufferization.to_tensor %alloc_15 : memref<2xf16>
        %279 = memref.realloc %alloc_11 : memref<5xi32> to memref<2xi32>
        %280 = math.log %13 : tensor<5xf32>
        %281 = arith.muli %c1064313233_i32, %c507242457_i32 : i32
        affine.yield %alloc_16 : memref<5xf32>
      }
      %261 = vector.broadcast %c1404000026_i32 : i32 to vector<5x4xi32>
      %262 = vector.shuffle %261, %261 [1, 2, 4, 7, 9] : vector<5x4xi32>, vector<5x4xi32>
      %263 = tensor.empty() : tensor<5xi16>
      %mapped_64 = linalg.map ins(%8, %8, %8 : tensor<5xi16>, tensor<5xi16>, tensor<5xi16>) outs(%263 : tensor<5xi16>)
        (%in: i16, %in_67: i16, %in_68: i16) {
          %275 = math.log2 %transposed : tensor<5xf32>
          %276 = arith.andi %c-9675_i16, %c-9675_i16 : i16
          %277 = arith.addi %true_5, %true : i1
          %278 = tensor.empty() : tensor<2xi64>
          bufferization.dealloc_tensor %12 : tensor<5x4xi64>
          %279 = math.fpowi %cst, %c507242457_i32 : f32, i32
          %280 = arith.cmpf false, %cst_1, %cst_1 : f16
          %281 = math.absi %9 : tensor<2xi16>
          %282 = vector.broadcast %cst_1 : f16 to vector<1xf16>
          %283 = vector.broadcast %cst_1 : f16 to vector<1xf16>
          %284 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %282, %283, %cst_1 : vector<1xf16>, vector<1xf16> into f16
          %expanded_69 = tensor.expand_shape %278 [[0, 1]] : tensor<2xi64> into tensor<2x1xi64>
          %285 = vector.multi_reduction <maxf>, %282, %282 [] : vector<1xf16> to vector<1xf16>
          vector.print %282 : vector<1xf16>
          %286 = index.mul %c1, %c11
          %287 = vector.create_mask %c8 : vector<5xi1>
          %288 = affine.max affine_map<(d0, d1, d2) -> (((d2 + d0) ceildiv 128) ceildiv 2, d2 mod 4, (d2 + d0) ceildiv 128, (d2 mod 4) * 16 - 1)>(%259, %c1, %c10)
          %289 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %282, %282, %cst_1 : vector<1xf16>, vector<1xf16> into f16
          %290 = bufferization.to_tensor %alloc_21 : memref<5x4xi16>
          %collapsed_70 = tensor.collapse_shape %10 [[0, 1]] : tensor<5x4xi16> into tensor<20xi16>
          %expanded_71 = tensor.expand_shape %278 [[0, 1]] : tensor<2xi64> into tensor<2x1xi64>
          memref.tensor_store %1, %alloc_8 : memref<2xi1>
          %expanded_72 = tensor.expand_shape %4 [[0, 1]] : tensor<5xi64> into tensor<5x1xi64>
          %291 = index.mul %c2, %c11
          %292 = vector.bitcast %282 : vector<1xf16> to vector<1xf16>
          %false_73 = index.bool.constant false
          %293 = bufferization.to_tensor %alloc_22 : memref<i16>
          %inserted_74 = tensor.insert %c14916_i16 into %8[%c2] : tensor<5xi16>
          %294 = math.log2 %transposed : tensor<5xf32>
          %rank_75 = tensor.rank %8 : tensor<5xi16>
          %295 = math.absi %0 : tensor<5xi16>
          %296 = arith.minf %cst_1, %cst_1 : f16
          %297 = math.log10 %2 : tensor<5xf32>
          %298 = math.round %cst_1 : f16
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      %264 = vector.broadcast %cst_3 : f32 to vector<5xf32>
      %265 = vector.broadcast %cst : f32 to vector<5x4xf32>
      %266 = vector.fma %265, %265, %265 : vector<5x4xf32>
      %267 = arith.minui %c14916_i16, %c-9675_i16 : i16
      %268 = math.exp %cst_1 : f16
      %269 = tensor.empty() : tensor<5x5x5xi16>
      %270 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%269, %0, %269 : tensor<5x5x5xi16>, tensor<5xi16>, tensor<5x5x5xi16>) outs(%269 : tensor<5x5x5xi16>) {
      ^bb0(%in: i16, %in_67: i16, %in_68: i16, %out: i16):
        %extracted_69 = tensor.extract %2[%c3] : tensor<5xf32>
        %275 = math.absi %in_68 : i16
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_70 = arith.constant 0 : i64
        %276 = vector.transfer_read %15[%c0], %c0_i64_70 : tensor<5xi64>, vector<i64>
        %277 = vector.broadcast %true : i1 to vector<5xi1>
        %278 = vector.broadcast %c507242457_i32 : i32 to vector<5xi32>
        %279 = vector.gather %2[%arg2] [%278], %277, %264 : tensor<5xf32>, vector<5xi32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
        %280 = arith.andi %true, %true_5 : i1
        %inserted_71 = tensor.insert %true_5 into %1[%c0] : tensor<2xi1>
        %281 = index.mul %c12, %c12
        %282 = math.ctpop %5 : tensor<2xi64>
        %283 = math.tan %cst_4 : f32
        %284 = bufferization.to_tensor %alloc_10 : memref<5x4xf16>
        %285 = math.ipowi %0, %0 : tensor<5xi16>
        %286 = arith.divui %in_67, %in : i16
        %287 = arith.remf %cst_1, %cst_1 : f16
        %288 = vector.transpose %277, [0] : vector<5xi1> to vector<5xi1>
        %289 = math.cttz %c1064313233_i32 : i32
        %290 = tensor.empty() : tensor<5xi16>
        %291 = vector.matrix_multiply %277, %277 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi1>, vector<5xi1>) -> vector<1xi1>
        %292 = arith.minsi %c0_i64, %c1867734685_i64 : i64
        %293 = math.ctpop %9 : tensor<2xi16>
        %294 = math.log %2 : tensor<5xf32>
        %alloc_72 = memref.alloc() : memref<5x4xi1>
        %295 = vector.broadcast %true_5 : i1 to vector<2xi1>
        %296 = vector.broadcast %c1064313233_i32 : i32 to vector<2xi32>
        %297 = vector.gather %alloc_72[%c0, %c6] [%296], %295, %295 : memref<5x4xi1>, vector<2xi32>, vector<2xi1>, vector<2xi1> into vector<2xi1>
        %dest_73, %accumulated_value_74 = vector.scan <mul>, %266, %279 {inclusive = true, reduction_dim = 1 : i64} : vector<5x4xf32>, vector<5xf32>
        %298 = vector.multi_reduction <minui>, %291, %true [0] : vector<1xi1> to i1
        %299 = math.exp2 %6 : tensor<2xf32>
        %300 = arith.divsi %true_6, %298 : i1
        memref.store %true, %alloc_72[%c0, %c0] : memref<5x4xi1>
        %301 = bufferization.clone %alloc_13 : memref<2xi16> to memref<2xi16>
        %302 = vector.load %alloc_22[] : memref<i16>, vector<5xi16>
        %303 = math.sqrt %13 : tensor<5xf32>
        %304 = vector.gather %8[%c12] [%278], %277, %302 : tensor<5xi16>, vector<5xi32>, vector<5xi1>, vector<5xi16> into vector<5xi16>
        %305 = vector.reduction <xor>, %277 : vector<5xi1> into i1
        %306 = arith.minsi %c1064313233_i32, %c1064313233_i32 : i32
        linalg.yield %in_68 : i16
      } -> tensor<5x5x5xi16>
      %271 = index.sizeof
      %272 = index.ceildivu %c9, %c14
      %cst_65 = arith.constant 5.350400e+04 : f16
      %273 = affine.min affine_map<(d0, d1, d2) -> (d1 - 16, d2 mod 128 - 1, d2 mod 128)>(%c13, %c12, %c10)
      %274 = arith.remsi %true_5, %true : i1
      %alloc_66 = memref.alloc() : memref<5xi32>
      scf.reduce(%alloc_66)  : memref<5xi32> {
      ^bb0(%arg3: memref<5xi32>, %arg4: memref<5xi32>):
        %splat = tensor.splat %cst : tensor<5x4xf32>
        %275 = index.add %c7, %c12
        %276 = arith.cmpf oge, %cst_3, %cst_4 : f32
        %277 = math.exp2 %3 : tensor<5x4xf32>
        %278 = math.exp %2 : tensor<5xf32>
        %279 = index.sub %c8, %c3
        %extracted_67 = tensor.extract %7[%c4] : tensor<5xi32>
        %280 = math.round %cst_4 : f32
        %alloc_68 = memref.alloc() : memref<5xi32>
        scf.reduce.return %alloc_68 : memref<5xi32>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_7[%c12] : memref<2xi16>, vector<2xi16>
    affine.vector_store %20, %alloc_22[] : memref<i16>, vector<2xi16>
    %21 = tensor.empty() : tensor<5xi64>
    %22 = tensor.empty() : tensor<i64>
    %23 = linalg.dot ins(%alloc_18, %21 : memref<5xi64>, tensor<5xi64>) outs(%22 : tensor<i64>) -> tensor<i64>
    %24 = arith.muli %true_6, %true_6 : i1
    %25 = arith.subi %false_2, %true : i1
    %26 = arith.remf %cst_4, %cst_0 : f32
    %27 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %20, %20, %c14916_i16 : vector<2xi16>, vector<2xi16> into i16
    %28 = index.castu %c1404000026_i32 : i32 to index
    %29 = math.exp2 %cst_0 : f32
    %30 = math.cos %cst : f32
    %31 = index.mul %c8, %c2
    %32 = scf.while (%arg1 = %false) : (i1) -> i1 {
      %257 = index.ceildivs %c5, %c10
      %258 = arith.subi %true, %arg1 : i1
      vector.print %20 : vector<2xi16>
      %259 = vector.insert %c-9675_i16, %20 [1] : i16 into vector<2xi16>
      %260 = index.sub %c5, %c1
      %261 = arith.remf %cst_3, %cst : f32
      %262 = tensor.empty() : tensor<5x5x5xi16>
      %alloc_63 = memref.alloc() : memref<5x5xi16>
      %263 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_63, %262, %alloc_63 : memref<5x5xi16>, tensor<5x5x5xi16>, memref<5x5xi16>) outs(%262 : tensor<5x5x5xi16>) {
      ^bb0(%in: i16, %in_64: i16, %in_65: i16, %out: i16):
        %265 = vector.reduction <minui>, %20 : vector<2xi16> into i16
        %266 = arith.muli %c14916_i16, %in : i16
        %cst_66 = arith.constant 1.000000e+00 : f32
        %cst_67 = arith.constant 0.000000e+00 : f32
        %267 = vector.transfer_read %3[%c15, %c15], %cst_67 : tensor<5x4xf32>, vector<f32>
        %268 = arith.minsi %c1404000026_i32, %c1404000026_i32 : i32
        %269 = arith.minf %cst_4, %cst_0 : f32
        %270 = arith.divsi %out, %in_64 : i16
        %271 = vector.multi_reduction <maxui>, %20, %20 [] : vector<2xi16> to vector<2xi16>
        %extracted_68 = tensor.extract %0[%c3] : tensor<5xi16>
        %true_69 = index.bool.constant true
        %272 = index.maxs %c13, %c15
        %273 = math.tanh %6 : tensor<2xf32>
        %274 = index.sub %c13, %28
        %275 = tensor.empty() : tensor<5xi1>
        %276 = vector.matrix_multiply %20, %20 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi16>, vector<2xi16>) -> vector<1xi16>
        %277 = index.casts %c1064313233_i32 : i32 to index
        %278 = math.fma %cst_0, %cst_4, %cst_4 : f32
        %from_elements = tensor.from_elements %cst_3, %cst_3, %cst_66, %cst, %cst_4 : tensor<5xf32>
        %rank_70 = tensor.rank %8 : tensor<5xi16>
        %279 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %20, %20, %extracted_68 : vector<2xi16>, vector<2xi16> into i16
        %280 = memref.realloc %alloc_11 : memref<5xi32> to memref<4xi32>
        memref.store %in_64, %alloc_13[%c1] : memref<2xi16>
        %281 = arith.remf %cst, %cst_3 : f32
        %splat = tensor.splat %c507242457_i32 : tensor<5xi32>
        %282 = index.add %277, %272
        %283 = arith.remf %cst_4, %cst_66 : f32
        %284 = index.sizeof
        %285 = vector.create_mask %282 : vector<5xi1>
        %286 = memref.realloc %alloc_7 : memref<2xi16> to memref<5xi16>
        %287 = arith.minsi %c1867734685_i64, %c1867734685_i64 : i64
        %288 = arith.cmpf ord, %cst, %cst_4 : f32
        %289 = index.add %c4, %c9
        %290 = math.roundeven %3 : tensor<5x4xf32>
        linalg.yield %in : i16
      } -> tensor<5x5x5xi16>
      %264 = math.sqrt %3 : tensor<5x4xf32>
      scf.condition(%false_2) %true_6 : i1
    } do {
    ^bb0(%arg1: i1):
      %257 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 + 8, (d3 - 2) mod 32, d2 + (d3 - 2) mod 32 - 4, -d0)>(%c14, %c9, %c12, %c13)
      %258 = math.log10 %cst_1 : f16
      %259 = memref.atomic_rmw mins %c1867734685_i64, %alloc[%c3] : (i64, memref<5xi64>) -> i64
      %260 = math.absf %6 : tensor<2xf32>
      %261 = vector.shuffle %20, %20 [0, 1] : vector<2xi16>, vector<2xi16>
      %262 = vector.extract_strided_slice %20 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi16> to vector<1xi16>
      %263 = math.log %transposed : tensor<5xf32>
      %264 = index.ceildivu %c4, %c1
      bufferization.dealloc_tensor %6 : tensor<2xf32>
      %265 = arith.shrsi %c-9675_i16, %c-9675_i16 : i16
      memref.alloca_scope  {
        %272 = vector.broadcast %cst_1 : f16 to vector<5xf16>
        %273 = vector.broadcast %true : i1 to vector<5xi1>
        %274 = vector.maskedload %alloc_15[%c0], %273, %272 : memref<2xf16>, vector<5xi1>, vector<5xf16> into vector<5xf16>
        %275 = vector.load %alloc_17[%c3, %c0] : memref<5x4xf32>, vector<2xf32>
        %276 = arith.floordivsi %c-9675_i16, %c14916_i16 : i16
        %alloca_65 = memref.alloca() : memref<5xi1>
        %277 = math.round %13 : tensor<5xf32>
        %278 = arith.cmpf ord, %cst, %cst : f32
        %279 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %275, %275, %cst_0 : vector<2xf32>, vector<2xf32> into f32
        %expanded_66 = tensor.expand_shape %15 [[0, 1]] : tensor<5xi64> into tensor<5x1xi64>
        %alloca_67 = memref.alloca() : memref<5xi32>
        %280 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %275, %275, %cst : vector<2xf32>, vector<2xf32> into f32
        %281 = arith.maxf %cst_0, %cst_4 : f32
        %282 = index.mul %c12, %c6
        %283 = math.log1p %13 : tensor<5xf32>
        %284 = index.add %264, %257
        %285 = arith.muli %c1064313233_i32, %c1404000026_i32 : i32
        %from_elements = tensor.from_elements %c14916_i16, %c-9675_i16, %c-9675_i16, %c-9675_i16, %c-9675_i16 : tensor<5xi16>
        %286 = math.floor %cst_0 : f32
        %287 = index.divu %31, %c1
        %true_68 = index.bool.constant true
        %288 = math.fma %6, %6, %6 : tensor<2xf32>
        %289 = arith.remf %cst_1, %cst_1 : f16
        %290 = index.sizeof
        %cast_69 = tensor.cast %16 : tensor<5xi64> to tensor<?xi64>
        %291 = vector.load %alloc_22[] : memref<i16>, vector<5xi16>
        memref.store %c1404000026_i32, %alloc_12[%c4] : memref<5xi32>
        %expanded_70 = tensor.expand_shape %18 [[0, 1]] : tensor<5xf32> into tensor<5x1xf32>
        %292 = index.divu %c7, %c15
        %293 = vector.transpose %291, [0] : vector<5xi16> to vector<5xi16>
        %294 = arith.divsi %true_68, %true_6 : i1
        %295 = math.atan2 %expanded_70, %expanded_70 : tensor<5x1xf32>
        %296 = vector.broadcast %cst_0 : f32 to vector<5x2x2xf32>
        %297 = vector.broadcast %cst : f32 to vector<5x2xf32>
        %dest_71, %accumulated_value_72 = vector.scan <minf>, %296, %297 {inclusive = true, reduction_dim = 1 : i64} : vector<5x2x2xf32>, vector<5x2xf32>
        vector.print %20 : vector<2xi16>
      }
      %266 = arith.remf %cst, %cst_0 : f32
      %267 = math.roundeven %2 : tensor<5xf32>
      %268 = vector.broadcast %cst_1 : f16 to vector<5x5xf16>
      %269 = vector.broadcast %cst_1 : f16 to vector<5xf16>
      %dest_63, %accumulated_value_64 = vector.scan <mul>, %268, %269 {inclusive = true, reduction_dim = 0 : i64} : vector<5x5xf16>, vector<5xf16>
      %270 = index.add %257, %c3
      %271 = index.add %c1, %31
      scf.yield %true : i1
    }
    %extracted = tensor.extract %13[%c4] : tensor<5xf32>
    %33 = scf.while (%arg1 = %true_6) : (i1) -> i1 {
      %257 = index.casts %c10 : index to i32
      %258 = memref.load %alloc_16[%c3] : memref<5xf32>
      %259 = math.exp2 %cst_0 : f32
      %260 = index.sub %c14, %c4
      %alloc_63 = memref.alloc() : memref<2xf16>
      memref.alloca_scope  {
        %262 = math.exp2 %cst : f32
        %263 = math.fma %cst_0, %cst, %cst_3 : f32
        %rank_65 = tensor.rank %16 : tensor<5xi64>
        %264 = vector.multi_reduction <maxui>, %20, %c14916_i16 [0] : vector<2xi16> to i16
        %265 = math.cos %cst_0 : f32
        %266 = arith.divui %arg1, %true_6 : i1
        %267 = arith.cmpf ole, %cst, %cst_3 : f32
        %268 = index.sub %260, %c4
        %269 = bufferization.to_tensor %alloc_7 : memref<2xi16>
        %270 = math.cos %cst_1 : f16
        %271 = index.ceildivs %c6, %c7
        %272 = arith.minf %cst_1, %cst_1 : f16
        %273 = math.ctpop %15 : tensor<5xi64>
        %274 = vector.create_mask %c4 : vector<5xi1>
        %from_elements = tensor.from_elements %c1867734685_i64, %c1867734685_i64 : tensor<2xi64>
        %275 = index.maxs %c8, %c13
        %276 = index.sizeof
        %277 = arith.floordivsi %true_6, %false_2 : i1
        %278 = arith.remf %cst_1, %cst_1 : f16
        %true_66 = index.bool.constant true
        %expanded_67 = tensor.expand_shape %5 [[0, 1]] : tensor<2xi64> into tensor<2x1xi64>
        %279 = bufferization.to_memref %12 : memref<5x4xi64>
        %280 = affine.min affine_map<(d0, d1) -> (d0)>(%c6, %275)
        %collapsed_68 = tensor.collapse_shape %3 [[0, 1]] : tensor<5x4xf32> into tensor<20xf32>
        %281 = vector.broadcast %false_2 : i1 to vector<5x5xi1>
        %282 = vector.outerproduct %274, %274, %281 {kind = #vector.kind<or>} : vector<5xi1>, vector<5xi1>
        %283 = math.cos %cst_1 : f16
        %284 = math.log10 %18 : tensor<5xf32>
        %285 = vector.matrix_multiply %274, %274 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi1>, vector<5xi1>) -> vector<1xi1>
        %286 = math.floor %cst_0 : f32
        %c1_i64_69 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %287 = vector.transfer_read %5[%c10], %c0_i64 : tensor<2xi64>, vector<i64>
        %alloc_70 = memref.alloc() : memref<5xi16>
        %288 = index.sizeof
      }
      %261 = vector.insert %c-9675_i16, %20 [0] : i16 into vector<2xi16>
      %expanded_64 = tensor.expand_shape %3 [[0], [1, 2]] : tensor<5x4xf32> into tensor<5x4x1xf32>
      scf.condition(%true_6) %false_2 : i1
    } do {
    ^bb0(%arg1: i1):
      %257 = math.rsqrt %cst : f32
      %258 = vector.load %alloc_13[%c1] : memref<2xi16>, vector<5xi16>
      %259 = math.cos %2 : tensor<5xf32>
      %inserted_63 = tensor.insert %extracted into %6[%c0] : tensor<2xf32>
      %260 = index.ceildivs %c6, %c3
      %261 = bufferization.to_memref %15 : memref<5xi64>
      %262 = math.expm1 %cst_1 : f16
      %263 = math.ctpop %15 : tensor<5xi64>
      %264 = affine.if affine_set<(d0, d1, d2, d3) : (d2 + 1 >= 0)>(%c4, %c2, %c12, %c14) -> i32 {
        %272 = math.tan %3 : tensor<5x4xf32>
        %273 = vector.insert %c-9675_i16, %20 [0] : i16 into vector<2xi16>
        %274 = math.exp %6 : tensor<2xf32>
        %275 = math.absf %cst : f32
        %276 = vector.multi_reduction <maxsi>, %20, %c14916_i16 [0] : vector<2xi16> to i16
        %277 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %258, %258, %276 : vector<5xi16>, vector<5xi16> into i16
        %278 = index.sizeof
        %279 = index.add %c10, %c1
        affine.yield %c507242457_i32 : i32
      } else {
        %272 = vector.broadcast %false : i1 to vector<5x2xi1>
        %273 = vector.broadcast %true_6 : i1 to vector<5xi1>
        %dest_67, %accumulated_value_68 = vector.scan <and>, %272, %273 {inclusive = false, reduction_dim = 1 : i64} : vector<5x2xi1>, vector<5xi1>
        %274 = arith.minf %cst, %extracted : f32
        %alloc_69 = memref.alloc() : memref<2xf32>
        memref.tensor_store %6, %alloc_69 : memref<2xf32>
        %alloc_70 = memref.alloc() : memref<5xf16>
        %275 = vector.broadcast %cst_1 : f16 to vector<5x4xf16>
        %276 = vector.broadcast %false : i1 to vector<5x4xi1>
        %277 = vector.broadcast %c1404000026_i32 : i32 to vector<5x4xi32>
        %278 = vector.gather %alloc_70[%c0] [%277], %276, %275 : memref<5xf16>, vector<5x4xi32>, vector<5x4xi1>, vector<5x4xf16> into vector<5x4xf16>
        %279 = math.expm1 %cst_1 : f16
        %280 = math.rsqrt %cst : f32
        %281 = vector.broadcast %c1404000026_i32 : i32 to vector<5xi32>
        %dest_71, %accumulated_value_72 = vector.scan <or>, %277, %281 {inclusive = true, reduction_dim = 1 : i64} : vector<5x4xi32>, vector<5xi32>
        %282 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %258, %258, %c14916_i16 : vector<5xi16>, vector<5xi16> into i16
        affine.yield %c1404000026_i32 : i32
      }
      %265 = vector.broadcast %c1867734685_i64 : i64 to vector<2x5xi64>
      %266 = vector.broadcast %c1867734685_i64 : i64 to vector<2xi64>
      %dest_64, %accumulated_value_65 = vector.scan <mul>, %265, %266 {inclusive = true, reduction_dim = 1 : i64} : vector<2x5xi64>, vector<2xi64>
      %267 = arith.addf %cst, %cst_0 : f32
      %268 = vector.load %alloc_15[%c1] : memref<2xf16>, vector<5xf16>
      %269 = vector.extract %20[0] : vector<2xi16>
      %270 = scf.while (%arg2 = %c14916_i16) : (i16) -> i16 {
        %272 = vector.matrix_multiply %20, %20 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi16>, vector<2xi16>) -> vector<1xi16>
        %cst_67 = arith.constant 1.39410483E+9 : f32
        %273 = math.floor %extracted : f32
        %274 = arith.negf %cst : f32
        %275 = math.round %transposed : tensor<5xf32>
        %276 = vector.insert %arg2, %272 [0] : i16 into vector<1xi16>
        %277 = math.cos %cst_1 : f16
        %278 = math.round %13 : tensor<5xf32>
        scf.condition(%false_2) %c14916_i16 : i16
      } do {
      ^bb0(%arg2: i16):
        %272 = vector.matrix_multiply %20, %20 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi16>, vector<2xi16>) -> vector<1xi16>
        %alloc_67 = memref.alloc() : memref<5xi16>
        %273 = vector.broadcast %arg2 : i16 to vector<5x4xi16>
        %274 = vector.broadcast %false_2 : i1 to vector<5x4xi1>
        %275 = vector.broadcast %c1404000026_i32 : i32 to vector<5x4xi32>
        %276 = vector.gather %alloc_67[%c10] [%275], %274, %273 : memref<5xi16>, vector<5x4xi32>, vector<5x4xi1>, vector<5x4xi16> into vector<5x4xi16>
        %277 = vector.matrix_multiply %268, %268 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf16>, vector<5xf16>) -> vector<1xf16>
        %278 = vector.shuffle %272, %258 [0, 5] : vector<1xi16>, vector<5xi16>
        %279 = vector.broadcast %c507242457_i32 : i32 to vector<4xi32>
        %dest_68, %accumulated_value_69 = vector.scan <xor>, %275, %279 {inclusive = true, reduction_dim = 0 : i64} : vector<5x4xi32>, vector<4xi32>
        %280 = arith.shrui %c1867734685_i64, %c1867734685_i64 : i64
        %281 = math.log10 %2 : tensor<5xf32>
        %282 = math.exp2 %13 : tensor<5xf32>
        %283 = index.ceildivs %c0, %c2
        %284 = arith.minui %c1867734685_i64, %c1867734685_i64 : i64
        %285 = math.sqrt %18 : tensor<5xf32>
        %286 = vector.create_mask %c3 : vector<5xi1>
        %287 = vector.extract_strided_slice %258 {offsets = [3], sizes = [2], strides = [1]} : vector<5xi16> to vector<2xi16>
        %288 = index.maxs %c11, %c15
        %289 = arith.minui %c14916_i16, %c-9675_i16 : i16
        %290 = math.atan %2 : tensor<5xf32>
        scf.yield %arg2 : i16
      }
      %collapsed_66 = tensor.collapse_shape %3 [[0, 1]] : tensor<5x4xf32> into tensor<20xf32>
      %271 = arith.ori %c-9675_i16, %c14916_i16 : i16
      scf.yield %arg1 : i1
    }
    %34 = tensor.empty() : tensor<2xi64>
    %35 = math.atan2 %cst_3, %cst_3 : f32
    %36 = math.log2 %cst_3 : f32
    %37 = arith.minui %true_6, %true : i1
    %38 = vector.broadcast %cst_4 : f32 to vector<5xf32>
    %39 = vector.fma %38, %38, %38 : vector<5xf32>
    %40 = index.maxs %c15, %c12
    %41 = arith.divf %extracted, %cst_3 : f32
    %42 = math.cos %13 : tensor<5xf32>
    memref.alloca_scope  {
      %257 = math.sqrt %transposed : tensor<5xf32>
      %c0_i32_63 = arith.constant 0 : i32
      %258 = vector.transfer_read %alloc_19[%c6], %c0_i32_63 : memref<5xi32>, vector<i32>
      %259 = vector.extract %39[0] : vector<5xf32>
      %260 = arith.mulf %cst_1, %cst_1 : f16
      %261 = arith.subi %c-9675_i16, %c-9675_i16 : i16
      %generated_64 = tensor.generate %c10 {
      ^bb0(%arg1: index, %arg2: index):
        %cast_69 = tensor.cast %15 : tensor<5xi64> to tensor<?xi64>
        %288 = memref.atomic_rmw addi %c14916_i16, %alloc_7[%c1] : (i16, memref<2xi16>) -> i16
        %289 = math.log2 %6 : tensor<2xf32>
        %290 = math.sqrt %extracted : f32
        tensor.yield %cst_1 : f16
      } : tensor<?x4xf16>
      %262 = arith.minui %true, %false : i1
      %c1267_i16 = arith.constant 1267 : i16
      %c1_i16 = arith.constant 1 : i16
      %263 = vector.transfer_read %alloc_13[%c2], %c1_i16 : memref<2xi16>, vector<i16>
      %264 = vector.matrix_multiply %38, %38 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<5xf32>) -> vector<1xf32>
      bufferization.dealloc_tensor %14 : tensor<5xi32>
      %265 = arith.maxf %cst_0, %cst : f32
      %266 = math.rsqrt %2 : tensor<5xf32>
      %267 = scf.execute_region -> vector<5x4xf32> {
        %288 = vector.load %alloc_7[%c0] : memref<2xi16>, vector<5xi16>
        memref.store %cst_1, %alloc_15[%c1] : memref<2xf16>
        %cst_69 = arith.constant 1.63078426E+9 : f32
        %289 = vector.broadcast %cst_3 : f32 to vector<5xf32>
        %290 = vector.fma %289, %289, %38 : vector<5xf32>
        %291 = index.casts %c6 : index to i32
        %inserted_70 = tensor.insert %c1064313233_i32 into %11[%c0] : tensor<5xi32>
        %292 = arith.minsi %true_5, %false : i1
        %293 = math.log1p %6 : tensor<2xf32>
        %294 = arith.divui %false_2, %true_6 : i1
        %295 = math.floor %13 : tensor<5xf32>
        %296 = math.fma %cst_3, %cst_0, %cst_0 : f32
        %297 = math.fma %6, %6, %6 : tensor<2xf32>
        %298 = index.maxs %c7, %c12
        %299 = vector.broadcast %cst : f32 to vector<5xf32>
        %300 = vector.fma %299, %290, %289 : vector<5xf32>
        %301 = index.maxs %c13, %c10
        %302 = math.floor %13 : tensor<5xf32>
        %303 = vector.broadcast %cst_0 : f32 to vector<5x4xf32>
        scf.yield %303 : vector<5x4xf32>
      }
      %268 = arith.remf %cst_3, %extracted : f32
      %269 = index.sub %28, %c12
      %270 = bufferization.to_tensor %alloc_8 : memref<2xi1>
      %271 = vector.broadcast %c507242457_i32 : i32 to vector<2x2x5xi32>
      %272 = vector.broadcast %c0_i32_63 : i32 to vector<2x5xi32>
      %dest_65, %accumulated_value_66 = vector.scan <minsi>, %271, %272 {inclusive = true, reduction_dim = 1 : i64} : vector<2x2x5xi32>, vector<2x5xi32>
      %273 = bufferization.to_tensor %alloc_20 : memref<5xi32>
      %274 = tensor.empty() : tensor<5x5x5xi16>
      %275 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%8 : tensor<5xi16>) outs(%274 : tensor<5x5x5xi16>) {
      ^bb0(%in: i16, %out: i16):
        %288 = memref.load %alloc_20[%c0] : memref<5xi32>
        %alloc_69 = memref.alloc() : memref<5xi1>
        %289 = index.ceildivu %c0, %c6
        %extracted_70 = tensor.extract %11[%c4] : tensor<5xi32>
        %290 = math.fma %13, %13, %13 : tensor<5xf32>
        %291 = vector.shuffle %38, %38 [0, 1, 2, 7, 9] : vector<5xf32>, vector<5xf32>
        %292 = math.absf %2 : tensor<5xf32>
        %293 = math.exp2 %cst_4 : f32
        %alloca_71 = memref.alloca() : memref<5xi1>
        %294 = math.fma %3, %3, %3 : tensor<5x4xf32>
        %295 = math.exp %18 : tensor<5xf32>
        %296 = math.round %3 : tensor<5x4xf32>
        %297 = index.divu %c4, %c11
        %298 = arith.shrsi %extracted_70, %c1064313233_i32 : i32
        %299 = vector.broadcast %c-9675_i16 : i16 to vector<4xi16>
        %300 = vector.broadcast %true_5 : i1 to vector<4xi1>
        %301 = vector.maskedload %alloc_21[%c2, %c0], %300, %299 : memref<5x4xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
        %302 = math.sqrt %6 : tensor<2xf32>
        %303 = affine.min affine_map<(d0) -> (d0 ceildiv 8 - d0, 0, d0 mod 2, d0 ceildiv 8 - d0)>(%c4)
        %from_elements = tensor.from_elements %c507242457_i32, %c507242457_i32, %c0_i32_63, %extracted_70, %c1404000026_i32 : tensor<5xi32>
        %304 = arith.andi %true_5, %false_2 : i1
        %305 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %20, %20, %in : vector<2xi16>, vector<2xi16> into i16
        %alloca_72 = memref.alloca() : memref<5xi16>
        %c-11721_i16 = arith.constant -11721 : i16
        %306 = arith.minsi %false_2, %true : i1
        %307 = vector.transpose %264, [0] : vector<1xf32> to vector<1xf32>
        %308 = arith.andi %c507242457_i32, %c0_i32_63 : i32
        %309 = arith.subi %false, %true_5 : i1
        %310 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %264, %264, %cst_0 : vector<1xf32>, vector<1xf32> into f32
        %311 = math.round %cst_0 : f32
        %312 = vector.extract %301[2] : vector<4xi16>
        %313 = vector.load %alloc_11[%c2] : memref<5xi32>, vector<5xi32>
        %314 = math.round %cst : f32
        %315 = math.cos %18 : tensor<5xf32>
        linalg.yield %c14916_i16 : i16
      } -> tensor<5x5x5xi16>
      %276 = math.floor %3 : tensor<5x4xf32>
      %277 = math.absf %3 : tensor<5x4xf32>
      %278 = arith.addi %false_2, %true : i1
      %inserted_67 = tensor.insert %c-9675_i16 into %9[%c0] : tensor<2xi16>
      %279 = math.round %6 : tensor<2xf32>
      %280 = arith.floordivsi %true_5, %false_2 : i1
      %281 = math.atan %extracted : f32
      %c1_i32_68 = arith.constant 1 : i32
      %282 = vector.transfer_read %7[%c15], %c1_i32_68 : tensor<5xi32>, vector<i32>
      %283 = math.fma %transposed, %transposed, %13 : tensor<5xf32>
      %284 = math.log %extracted : f32
      %285 = index.sub %c2, %c7
      %286 = vector.broadcast %extracted : f32 to vector<5xf32>
      %287 = vector.fma %286, %38, %38 : vector<5xf32>
    }
    %collapsed = tensor.collapse_shape %3 [[0, 1]] : tensor<5x4xf32> into tensor<20xf32>
    %43 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %39, %38, %cst_0 : vector<5xf32>, vector<5xf32> into f32
    %44 = tensor.empty() : tensor<2xf32>
    %mapped = linalg.map ins(%6, %6 : tensor<2xf32>, tensor<2xf32>) outs(%44 : tensor<2xf32>)
      (%in: f32, %in_63: f32) {
        %257 = math.rsqrt %3 : tensor<5x4xf32>
        %258 = math.floor %cst_4 : f32
        %259 = vector.load %alloc_20[%c1] : memref<5xi32>, vector<5x4xi32>
        %260 = affine.min affine_map<(d0) -> (d0 mod 4, 0, 0)>(%c7)
        %261 = math.round %6 : tensor<2xf32>
        %262 = math.atan2 %6, %6 : tensor<2xf32>
        %263 = arith.minf %in_63, %cst : f32
        %264 = math.round %extracted : f32
        %265 = arith.ceildivsi %true_5, %true_5 : i1
        %generated_64 = tensor.generate %c9 {
        ^bb0(%arg1: index):
          %289 = math.ipowi %17, %15 : tensor<5xi64>
          %290 = arith.ori %true, %false_2 : i1
          %291 = vector.broadcast %c1064313233_i32 : i32 to vector<2xi32>
          %292 = vector.broadcast %true : i1 to vector<2xi1>
          %293 = vector.maskedload %alloc_20[%c0], %292, %291 : memref<5xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
          %collapsed_69 = tensor.collapse_shape %3 [[0, 1]] : tensor<5x4xf32> into tensor<20xf32>
          tensor.yield %c-9675_i16 : i16
        } : tensor<?xi16>
        %266 = math.rsqrt %6 : tensor<2xf32>
        %267 = arith.addf %cst_3, %cst_3 : f32
        %268 = math.ctpop %c1064313233_i32 : i32
        %269 = vector.broadcast %c1867734685_i64 : i64 to vector<2xi64>
        %270 = vector.broadcast %true_6 : i1 to vector<2xi1>
        %271 = vector.maskedload %alloc_14[%c2, %c3], %270, %269 : memref<5x4xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
        %272 = math.log2 %44 : tensor<2xf32>
        %273 = math.expm1 %in : f32
        %274 = math.rsqrt %extracted : f32
        %275 = arith.cmpf ugt, %cst_1, %cst_1 : f16
        %276 = arith.remsi %c1867734685_i64, %c1867734685_i64 : i64
        %277 = tensor.empty() : tensor<5xi1>
        %278 = index.casts %c-9675_i16 : i16 to index
        %alloc_65 = memref.alloc() : memref<5xi64>
        %279 = math.ipowi %4, %17 : tensor<5xi64>
        %280 = math.log %13 : tensor<5xf32>
        %281 = arith.remf %cst_0, %in_63 : f32
        %282 = tensor.empty() : tensor<5xf32>
        %mapped_66 = linalg.map ins(%13, %18, %transposed : tensor<5xf32>, tensor<5xf32>, tensor<5xf32>) outs(%282 : tensor<5xf32>)
          (%in_69: f32, %in_70: f32, %in_71: f32) {
            %289 = math.log10 %collapsed : tensor<20xf32>
            %290 = arith.remf %cst_3, %extracted : f32
            %291 = arith.cmpf une, %in_70, %in_69 : f32
            %292 = arith.negf %in_70 : f32
            %293 = arith.remsi %false_2, %false_2 : i1
            %294 = index.maxs %c4, %c6
            %295 = vector.insert %c1867734685_i64, %269 [0] : i64 into vector<2xi64>
            %296 = index.sizeof
            %297 = memref.realloc %alloc_19 : memref<5xi32> to memref<2xi32>
            %298 = math.log %6 : tensor<2xf32>
            %299 = arith.andi %c507242457_i32, %c1064313233_i32 : i32
            %300 = vector.broadcast %c1867734685_i64 : i64 to vector<4xi64>
            %301 = vector.broadcast %true : i1 to vector<4xi1>
            %302 = vector.maskedload %alloc_9[%c0, %c2], %301, %300 : memref<5x4xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
            %alloca_72 = memref.alloca() : memref<5xi64>
            %303 = vector.broadcast %c1064313233_i32 : i32 to vector<5xi32>
            %dest_73, %accumulated_value_74 = vector.scan <minsi>, %259, %303 {inclusive = true, reduction_dim = 1 : i64} : vector<5x4xi32>, vector<5xi32>
            %rank_75 = tensor.rank %2 : tensor<5xf32>
            %304 = math.exp %13 : tensor<5xf32>
            %305 = index.sub %c4, %c13
            %306 = vector.broadcast %c1404000026_i32 : i32 to vector<4x4xi32>
            %307 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %259, %259, %306 : vector<5x4xi32>, vector<5x4xi32> into vector<4x4xi32>
            %308 = math.exp2 %18 : tensor<5xf32>
            %309 = arith.muli %c1064313233_i32, %c507242457_i32 : i32
            %310 = index.maxs %c3, %31
            %311 = vector.create_mask %28 : vector<5xi1>
            %312 = arith.divsi %c1404000026_i32, %c1404000026_i32 : i32
            %alloc_76 = memref.alloc() : memref<5x4xi16>
            memref.copy %alloc_21, %alloc_76 : memref<5x4xi16> to memref<5x4xi16>
            %313 = arith.remsi %c1867734685_i64, %c1867734685_i64 : i64
            %from_elements = tensor.from_elements %c1867734685_i64, %c1867734685_i64, %c1867734685_i64, %c1867734685_i64, %c1867734685_i64 : tensor<5xi64>
            %314 = index.ceildivs %c14, %c7
            %315 = arith.maxf %extracted, %cst_3 : f32
            %316 = arith.remui %c1404000026_i32, %c507242457_i32 : i32
            %317 = bufferization.to_tensor %alloc_16 : memref<5xf32>
            %318 = math.ipowi %277, %277 : tensor<5xi1>
            %319 = vector.insertelement %in_70, %39[%c12 : index] : vector<5xf32>
            %cst_77 = arith.constant 1.000000e+00 : f32
            linalg.yield %cst_77 : f32
          }
        %283 = scf.while (%arg1 = %in) : (f32) -> f32 {
          %289 = math.absf %arg1 : f32
          %290 = math.exp2 %cst_0 : f32
          affine.store %true_6, %alloc_8[%c6] : memref<2xi1>
          %291 = vector.insert %cst_4, %39 [1] : f32 into vector<5xf32>
          %cst_69 = arith.constant 3.328000e+04 : f16
          %292 = math.round %arg1 : f32
          %293 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %20, %20, %c14916_i16 : vector<2xi16>, vector<2xi16> into i16
          %collapsed_70 = tensor.collapse_shape %3 [[0, 1]] : tensor<5x4xf32> into tensor<20xf32>
          scf.condition(%true) %cst_0 : f32
        } do {
        ^bb0(%arg1: f32):
          %289 = index.maxs %c14, %c9
          %290 = index.maxs %260, %c7
          %291 = index.sizeof
          %collapsed_69 = tensor.collapse_shape %10 [[0, 1]] : tensor<5x4xi16> into tensor<20xi16>
          %cast_70 = tensor.cast %2 : tensor<5xf32> to tensor<?xf32>
          %292 = math.absi %true : i1
          %293 = math.log %6 : tensor<2xf32>
          %294 = vector.extract %38[3] : vector<5xf32>
          %alloc_71 = memref.alloc() : memref<5x4xi32>
          %295 = vector.broadcast %c1404000026_i32 : i32 to vector<5xi32>
          %296 = vector.broadcast %false : i1 to vector<5xi1>
          %297 = vector.gather %alloc_71[%c14, %c12] [%295], %296, %295 : memref<5x4xi32>, vector<5xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
          %298 = index.mul %c8, %c10
          %299 = vector.create_mask %260, %c5 : vector<5x4xi1>
          %300 = arith.maxf %cst_0, %cst : f32
          %301 = vector.insert %c1867734685_i64, %269 [0] : i64 into vector<2xi64>
          %dest_72, %accumulated_value_73 = vector.scan <maxui>, %299, %296 {inclusive = false, reduction_dim = 1 : i64} : vector<5x4xi1>, vector<5xi1>
          %302 = vector.broadcast %c1867734685_i64 : i64 to vector<5xi64>
          %303 = vector.gather %16[%c9] [%297], %296, %302 : tensor<5xi64>, vector<5xi32>, vector<5xi1>, vector<5xi64> into vector<5xi64>
          %304 = vector.create_mask %31 : vector<2xi1>
          scf.yield %cst_4 : f32
        }
        memref.tensor_store %transposed, %alloc_16 : memref<5xf32>
        %collapsed_67 = tensor.collapse_shape %12 [[0, 1]] : tensor<5x4xi64> into tensor<20xi64>
        %284 = affine.if affine_set<(d0, d1) : (d1 floordiv 8 == 0)>(%c14, %c15) -> memref<5xf32> {
          %289 = math.ipowi %false, %true_6 : i1
          %collapsed_69 = tensor.collapse_shape %10 [[0, 1]] : tensor<5x4xi16> into tensor<20xi16>
          %290 = arith.divsi %c14916_i16, %c14916_i16 : i16
          %291 = index.ceildivs %c4, %c7
          %292 = arith.ceildivsi %c14916_i16, %c-9675_i16 : i16
          %expanded_70 = tensor.expand_shape %277 [[0, 1]] : tensor<5xi1> into tensor<5x1xi1>
          %293 = vector.broadcast %c1064313233_i32 : i32 to vector<5xi32>
          %294 = vector.broadcast %true : i1 to vector<5xi1>
          %295 = vector.maskedload %alloc_11[%c0], %294, %293 : memref<5xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
          %296 = arith.maxf %cst_4, %in_63 : f32
          affine.yield %alloc_16 : memref<5xf32>
        } else {
          %289 = math.cos %3 : tensor<5x4xf32>
          %290 = index.sizeof
          memref.copy %alloc_18, %alloc : memref<5xi64> to memref<5xi64>
          %291 = vector.bitcast %270 : vector<2xi1> to vector<2xi1>
          %292 = math.cos %cst_1 : f16
          %293 = math.expm1 %cst_3 : f32
          %294 = arith.minsi %c507242457_i32, %c1064313233_i32 : i32
          %true_69 = index.bool.constant true
          affine.yield %alloc_16 : memref<5xf32>
        }
        %285 = scf.execute_region -> memref<5xi1> {
          %289 = math.ipowi %7, %14 : tensor<5xi32>
          %290 = math.log %282 : tensor<5xf32>
          %291 = math.absi %277 : tensor<5xi1>
          %collapsed_69 = tensor.collapse_shape %3 [[0, 1]] : tensor<5x4xf32> into tensor<20xf32>
          %292 = arith.mulf %in, %cst_4 : f32
          %collapsed_70 = tensor.collapse_shape %12 [[0, 1]] : tensor<5x4xi64> into tensor<20xi64>
          %293 = math.fma %13, %282, %13 : tensor<5xf32>
          %294 = vector.broadcast %c1867734685_i64 : i64 to vector<5x4xi64>
          %295 = vector.broadcast %false_2 : i1 to vector<5x4xi1>
          %296 = vector.gather %alloc[%28] [%259], %295, %294 : memref<5xi64>, vector<5x4xi32>, vector<5x4xi1>, vector<5x4xi64> into vector<5x4xi64>
          %297 = arith.maxf %cst_0, %extracted : f32
          %298 = arith.minf %in_63, %cst_0 : f32
          %299 = index.sub %c11, %c4
          %300 = math.fma %cst, %cst_3, %cst_4 : f32
          %301 = vector.broadcast %c1064313233_i32 : i32 to vector<4xi32>
          %302 = vector.insert %301, %259 [2] : vector<4xi32> into vector<5x4xi32>
          %303 = arith.minf %cst_3, %cst_0 : f32
          %304 = math.exp %in_63 : f32
          %cast_71 = tensor.cast %16 : tensor<5xi64> to tensor<?xi64>
          %alloc_72 = memref.alloc() : memref<5xi1>
          scf.yield %alloc_72 : memref<5xi1>
        }
        %286 = vector.broadcast %c-9675_i16 : i16 to vector<5xi16>
        %287 = vector.broadcast %false_2 : i1 to vector<5xi1>
        %288 = vector.maskedload %alloc_22[], %287, %286 : memref<i16>, vector<5xi1>, vector<5xi16> into vector<5xi16>
        %cst_68 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_68 : f32
      }
    %45 = math.powf %cst, %cst_3 : f32
    %46 = memref.load %alloc_18[%c0] : memref<5xi64>
    %47 = arith.divsi %false_2, %false_2 : i1
    %48 = tensor.empty() : tensor<5x4xi64>
    %mapped_23 = linalg.map ins(%12 : tensor<5x4xi64>) outs(%48 : tensor<5x4xi64>)
      (%in: i64) {
        %257 = math.fma %cst_4, %cst_4, %extracted : f32
        %false_63 = arith.constant false
        %false_64 = arith.constant false
        %258 = vector.transfer_read %1[%c0], %false_64 : tensor<2xi1>, vector<i1>
        %259 = math.exp2 %extracted : f32
        %260 = arith.minsi %in, %in : i64
        %261 = math.absi %c507242457_i32 : i32
        %alloc_65 = memref.alloc() : memref<5xi16>
        %262 = bufferization.clone %alloc_14 : memref<5x4xi64> to memref<5x4xi64>
        %263 = arith.divsi %c-9675_i16, %c14916_i16 : i16
        %264 = arith.shrui %false_63, %false : i1
        %265 = math.sqrt %cst_0 : f32
        %266 = arith.minui %c14916_i16, %c-9675_i16 : i16
        %267 = arith.ceildivsi %in, %c1867734685_i64 : i64
        %268 = arith.minf %cst_3, %extracted : f32
        %269 = vector.broadcast %c1867734685_i64 : i64 to vector<5x5xi64>
        %270 = vector.broadcast %in : i64 to vector<5xi64>
        %dest_66, %accumulated_value_67 = vector.scan <mul>, %269, %270 {inclusive = true, reduction_dim = 0 : i64} : vector<5x5xi64>, vector<5xi64>
        %271 = tensor.empty() : tensor<5xi16>
        %mapped_68 = linalg.map ins(%8, %8, %8 : tensor<5xi16>, tensor<5xi16>, tensor<5xi16>) outs(%271 : tensor<5xi16>)
          (%in_75: i16, %in_76: i16, %in_77: i16) {
            %285 = math.round %cst_1 : f16
            %286 = vector.broadcast %cst_0 : f32 to vector<2xf32>
            %287 = vector.fma %286, %286, %286 : vector<2xf32>
            %288 = arith.remf %cst, %cst : f32
            %289 = vector.broadcast %cst_4 : f32 to vector<5xf32>
            %290 = vector.fma %289, %39, %39 : vector<5xf32>
            %291 = math.exp2 %2 : tensor<5xf32>
            %collapsed_78 = tensor.collapse_shape %48 [[0, 1]] : tensor<5x4xi64> into tensor<20xi64>
            %292 = arith.divui %false_2, %false_2 : i1
            %293 = arith.mulf %cst, %cst_3 : f32
            %294 = vector.extract_strided_slice %287 {offsets = [0], sizes = [2], strides = [1]} : vector<2xf32> to vector<2xf32>
            %295 = index.casts %c14916_i16 : i16 to index
            %296 = arith.minsi %true_6, %false_2 : i1
            %297 = math.floor %cst_0 : f32
            %cast_79 = tensor.cast %0 : tensor<5xi16> to tensor<?xi16>
            %298 = arith.divsi %in_75, %in_76 : i16
            %299 = vector.broadcast %extracted : f32 to vector<2x2xf32>
            %300 = vector.outerproduct %294, %287, %299 {kind = #vector.kind<mul>} : vector<2xf32>, vector<2xf32>
            %301 = math.round %2 : tensor<5xf32>
            %302 = vector.broadcast %cst_3 : f32 to vector<2x2xf32>
            %303 = vector.outerproduct %287, %287, %302 {kind = #vector.kind<add>} : vector<2xf32>, vector<2xf32>
            %304 = vector.broadcast %in : i64 to vector<4x5xi64>
            %305 = vector.broadcast %in : i64 to vector<5xi64>
            %dest_80, %accumulated_value_81 = vector.scan <xor>, %304, %305 {inclusive = false, reduction_dim = 0 : i64} : vector<4x5xi64>, vector<5xi64>
            %306 = arith.mulf %cst_3, %extracted : f32
            %307 = index.sizeof
            %308 = math.ctlz %1 : tensor<2xi1>
            %309 = vector.broadcast %extracted : f32 to vector<5xf32>
            %310 = vector.fma %309, %39, %38 : vector<5xf32>
            %311 = math.log2 %extracted : f32
            %cst_82 = arith.constant 1.000000e+00 : f32
            %312 = vector.transfer_read %6[%c8], %cst_82 : tensor<2xf32>, vector<f32>
            %313 = index.mul %c13, %c9
            %extracted_83 = tensor.extract %5[%c0] : tensor<2xi64>
            %314 = arith.cmpf true, %extracted, %cst_4 : f32
            %315 = index.sub %c0, %295
            %316 = index.sub %c13, %c0
            %317 = math.log10 %cst_0 : f32
            %318 = vector.insert %cst, %286 [0] : f32 into vector<2xf32>
            %319 = arith.minui %c507242457_i32, %c507242457_i32 : i32
            %c0_i16 = arith.constant 0 : i16
            linalg.yield %c0_i16 : i16
          }
        %272 = math.ctlz %1 : tensor<2xi1>
        %true_69 = arith.constant true
        %273 = arith.minf %cst_4, %cst_4 : f32
        %274 = arith.cmpf false, %cst_0, %cst_4 : f32
        %rank_70 = tensor.rank %0 : tensor<5xi16>
        %inserted_71 = tensor.insert %c-9675_i16 into %9[%c1] : tensor<2xi16>
        %275 = index.add %c9, %c10
        %generated_72 = tensor.generate %c5 {
        ^bb0(%arg1: index):
          %285 = math.cttz %1 : tensor<2xi1>
          %286 = index.mul %c8, %28
          %287 = vector.shuffle %38, %39 [0, 1, 4, 9] : vector<5xf32>, vector<5xf32>
          %288 = arith.ceildivsi %c507242457_i32, %c1064313233_i32 : i32
          tensor.yield %c-9675_i16 : i16
        } : tensor<?xi16>
        %276 = tensor.empty() : tensor<5x5x5xi16>
        %277 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%276 : tensor<5x5x5xi16>) {
        ^bb0(%out: i16):
          %285 = math.floor %3 : tensor<5x4xf32>
          %286 = vector.extract %38[1] : vector<5xf32>
          %287 = vector.shuffle %20, %20 [0, 1, 3] : vector<2xi16>, vector<2xi16>
          %288 = math.ctpop %15 : tensor<5xi64>
          %289 = vector.insertelement %cst_3, %38[%c3 : index] : vector<5xf32>
          %alloc_75 = memref.alloc() : memref<5xi16>
          memref.tensor_store %271, %alloc_75 : memref<5xi16>
          %290 = math.log1p %2 : tensor<5xf32>
          %291 = index.castu %false_63 : i1 to index
          affine.store %cst_1, %alloc_10[%c1, %c6] : memref<5x4xf16>
          %292 = math.sqrt %3 : tensor<5x4xf32>
          vector.print %38 : vector<5xf32>
          %293 = arith.ceildivsi %false, %false : i1
          %294 = memref.load %alloc_22[] : memref<i16>
          %extracted_76 = tensor.extract %3[%c1, %c3] : tensor<5x4xf32>
          %295 = arith.remsi %false_2, %true_6 : i1
          %296 = vector.transpose %38, [0] : vector<5xf32> to vector<5xf32>
          %297 = vector.bitcast %39 : vector<5xf32> to vector<5xf32>
          %inserted_77 = tensor.insert %cst_0 into %2[%c0] : tensor<5xf32>
          %298 = affine.load %alloc_14[%c3, %c9] : memref<5x4xi64>
          %299 = vector.bitcast %20 : vector<2xi16> to vector<2xi16>
          %300 = math.log10 %extracted_76 : f32
          %301 = vector.broadcast %c1867734685_i64 : i64 to vector<4x2xi64>
          %302 = vector.broadcast %in : i64 to vector<4xi64>
          %dest_78, %accumulated_value_79 = vector.scan <mul>, %301, %302 {inclusive = true, reduction_dim = 1 : i64} : vector<4x2xi64>, vector<4xi64>
          %303 = vector.extract_strided_slice %297 {offsets = [1], sizes = [4], strides = [1]} : vector<5xf32> to vector<4xf32>
          %cast_80 = tensor.cast %15 : tensor<5xi64> to tensor<?xi64>
          %304 = vector.flat_transpose %299 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
          %305 = index.ceildivu %31, %c0
          %306 = arith.shrsi %c1064313233_i32, %c507242457_i32 : i32
          %307 = math.atan2 %2, %transposed : tensor<5xf32>
          memref.copy %alloc_14, %262 : memref<5x4xi64> to memref<5x4xi64>
          %308 = math.sqrt %cst_4 : f32
          %309 = arith.cmpf uno, %cst_4, %cst_4 : f32
          %310 = math.cttz %17 : tensor<5xi64>
          linalg.yield %c-9675_i16 : i16
        } -> tensor<5x5x5xi16>
        %278 = arith.ceildivsi %true, %false_2 : i1
        %279 = math.absi %10 : tensor<5x4xi16>
        %280 = math.sqrt %13 : tensor<5xf32>
        %281 = math.fma %13, %18, %18 : tensor<5xf32>
        %282 = math.powf %3, %3 : tensor<5x4xf32>
        %283 = arith.cmpf ule, %cst, %cst_4 : f32
        %284 = scf.while (%arg1 = %alloc_12) : (memref<5xi32>) -> memref<5xi32> {
          %285 = math.log2 %44 : tensor<2xf32>
          %286 = arith.muli %c1064313233_i32, %c507242457_i32 : i32
          %287 = vector.bitcast %20 : vector<2xi16> to vector<2xi16>
          memref.tensor_store %10, %alloc_21 : memref<5x4xi16>
          %288 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %39, %39, %extracted : vector<5xf32>, vector<5xf32> into f32
          %289 = math.round %cst_0 : f32
          %290 = arith.muli %c1064313233_i32, %c507242457_i32 : i32
          bufferization.dealloc_tensor %10 : tensor<5x4xi16>
          scf.condition(%false_63) %alloc_20 : memref<5xi32>
        } do {
        ^bb0(%arg1: memref<5xi32>):
          %c0_i64 = arith.constant 0 : i64
          %285 = vector.transfer_read %262[%c1, %c0], %c0_i64 : memref<5x4xi64>, vector<i64>
          %alloc_75 = memref.alloc() : memref<2xi64>
          %286 = vector.broadcast %in : i64 to vector<5xi64>
          %287 = vector.broadcast %true_6 : i1 to vector<5xi1>
          %288 = vector.broadcast %c507242457_i32 : i32 to vector<5xi32>
          %289 = vector.gather %alloc_75[%c15] [%288], %287, %286 : memref<2xi64>, vector<5xi32>, vector<5xi1>, vector<5xi64> into vector<5xi64>
          %290 = math.roundeven %cst_4 : f32
          %291 = index.sizeof
          %292 = index.maxs %c4, %31
          %293 = index.maxs %rank_70, %c2
          %cst_76 = arith.constant 1.000000e+00 : f32
          %cst_77 = arith.constant 0.000000e+00 : f32
          %294 = vector.transfer_read %3[%c9, %rank_70], %cst_77 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<5x4xf32>, vector<5xf32>
          %295 = math.log %13 : tensor<5xf32>
          %296 = memref.load %alloc_20[%c4] : memref<5xi32>
          %297 = math.log %cst : f32
          %298 = vector.extract_strided_slice %286 {offsets = [1], sizes = [4], strides = [1]} : vector<5xi64> to vector<4xi64>
          %299 = math.cos %6 : tensor<2xf32>
          %300 = vector.insert %in, %289 [2] : i64 into vector<5xi64>
          %301 = vector.create_mask %c12 : vector<5xi1>
          %302 = index.sub %c11, %c3
          %303 = math.atan2 %2, %2 : tensor<5xf32>
          scf.yield %alloc_12 : memref<5xi32>
        }
        %generated_73 = tensor.generate %c7 {
        ^bb0(%arg1: index):
          %285 = math.cos %2 : tensor<5xf32>
          %286 = arith.addi %c-9675_i16, %c-9675_i16 : i16
          %collapsed_75 = tensor.collapse_shape %12 [[0, 1]] : tensor<5x4xi64> into tensor<20xi64>
          %287 = memref.atomic_rmw addi %c-9675_i16, %alloc_13[%c0] : (i16, memref<2xi16>) -> i16
          tensor.yield %c1867734685_i64 : i64
        } : tensor<?xi64>
        %c1_i64_74 = arith.constant 1 : i64
        linalg.yield %c1_i64_74 : i64
      }
    %alloc_24 = memref.alloc() : memref<2xi64>
    %49 = vector.transpose %38, [0] : vector<5xf32> to vector<5xf32>
    %50 = vector.reduction <minf>, %38 : vector<5xf32> into f32
    %51 = tensor.empty() : tensor<5x5x5xi16>
    %52 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0 : tensor<5xi16>) outs(%51 : tensor<5x5x5xi16>) {
    ^bb0(%in: i16, %out: i16):
      %257 = arith.maxf %cst, %cst_4 : f32
      %258 = index.maxs %c0, %c11
      %259 = index.sizeof
      %260 = tensor.empty() : tensor<5x4xi1>
      %261 = vector.broadcast %false : i1 to vector<5x4xi1>
      %262 = vector.broadcast %c507242457_i32 : i32 to vector<5x4xi32>
      %263 = vector.gather %260[%31, %31] [%262], %261, %261 : tensor<5x4xi1>, vector<5x4xi32>, vector<5x4xi1>, vector<5x4xi1> into vector<5x4xi1>
      %264 = math.log2 %extracted : f32
      %265 = arith.floordivsi %c1867734685_i64, %c1867734685_i64 : i64
      %266 = vector.reduction <minf>, %38 : vector<5xf32> into f32
      %267 = arith.subi %c-9675_i16, %out : i16
      %268 = math.round %2 : tensor<5xf32>
      %269 = arith.addi %true, %true_5 : i1
      %270 = arith.muli %false_2, %false_2 : i1
      memref.alloca_scope  {
        %290 = vector.load %alloc_12[%c3] : memref<5xi32>, vector<2xi32>
        %291 = arith.muli %false, %true_5 : i1
        bufferization.dealloc_tensor %8 : tensor<5xi16>
        %292 = bufferization.to_tensor %alloc_14 : memref<5x4xi64>
        %293 = arith.addf %cst_0, %cst : f32
        %294 = memref.realloc %alloc_11 : memref<5xi32> to memref<4xi32>
        %295 = index.castu %c13 : index to i32
        %296 = memref.load %alloc_12[%c4] : memref<5xi32>
        %rank_68 = tensor.rank %2 : tensor<5xf32>
        %297 = arith.cmpi eq, %c1064313233_i32, %c1064313233_i32 : i32
        %298 = index.castu %true_6 : i1 to index
        %299 = arith.cmpf ueq, %cst_1, %cst_1 : f16
        %300 = vector.broadcast %true_5 : i1 to vector<5xi1>
        %301 = vector.broadcast %c1064313233_i32 : i32 to vector<5xi32>
        %302 = vector.gather %alloc_16[%31] [%301], %300, %38 : memref<5xf32>, vector<5xi32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
        %303 = tensor.empty(%c3) : tensor<?xf16>
        %304 = vector.create_mask %c9 : vector<5xi1>
        %305 = vector.shuffle %38, %39 [0, 2, 4, 7, 8, 9] : vector<5xf32>, vector<5xf32>
        %306 = index.casts %c2 : index to i32
        %307 = math.atan2 %cst_4, %cst_3 : f32
        %alloca_69 = memref.alloca() : memref<5x4xf16>
        %308 = math.log10 %18 : tensor<5xf32>
        %alloc_70 = memref.alloc() : memref<5xf32>
        memref.copy %alloc_16, %alloc_70 : memref<5xf32> to memref<5xf32>
        %309 = math.round %13 : tensor<5xf32>
        %310 = arith.maxf %cst, %cst : f32
        %311 = memref.atomic_rmw andi %c-9675_i16, %alloc_7[%c1] : (i16, memref<2xi16>) -> i16
        %false_71 = index.bool.constant false
        %312 = math.tan %cst_0 : f32
        %313 = affine.max affine_map<(d0, d1, d2, d3) -> (-2)>(%c4, %298, %c8, %c15)
        %extracted_72 = tensor.extract %5[%c1] : tensor<2xi64>
        %314 = math.exp2 %cst : f32
        %315 = arith.divui %c1064313233_i32, %c507242457_i32 : i32
        %cst_73 = arith.constant 0x4E31DD72 : f32
        %316 = math.copysign %cst_3, %cst : f32
      }
      %271 = vector.broadcast %cst : f32 to vector<5x4xf32>
      %272 = vector.fma %271, %271, %271 : vector<5x4xf32>
      %273 = math.cos %cst_0 : f32
      %cast_63 = tensor.cast %260 : tensor<5x4xi1> to tensor<?x?xi1>
      %274 = index.casts %true : i1 to index
      %275 = index.castu %c14916_i16 : i16 to index
      %276 = arith.ceildivsi %c1867734685_i64, %c1867734685_i64 : i64
      %277 = index.divu %40, %c15
      %278 = vector.broadcast %cst_4 : f32 to vector<5x4xf32>
      %279 = vector.fma %278, %278, %271 : vector<5x4xf32>
      %c1_i64_64 = arith.constant 1 : i64
      %280 = vector.transfer_read %5[%c11], %c1_i64_64 : tensor<2xi64>, vector<i64>
      %alloca_65 = memref.alloca() : memref<5xi64>
      %alloca_66 = memref.alloca() : memref<2xi1>
      %281 = math.round %extracted : f32
      %282 = math.atan %13 : tensor<5xf32>
      %c1_i64_67 = arith.constant 1 : i64
      %283 = vector.transfer_read %alloc_9[%c4, %259], %c1_i64_67 : memref<5x4xi64>, vector<2xi64>
      %284 = index.sub %c14, %c7
      %285 = math.log %cst_4 : f32
      %286 = arith.floordivsi %out, %out : i16
      %287 = arith.mulf %cst_3, %cst_3 : f32
      %288 = math.cos %3 : tensor<5x4xf32>
      %289 = arith.remf %cst, %cst_0 : f32
      linalg.yield %c14916_i16 : i16
    } -> tensor<5x5x5xi16>
    %53 = index.casts %c14916_i16 : i16 to index
    %54 = tensor.empty() : tensor<5x4xi32>
    %55 = math.fpowi %3, %54 : tensor<5x4xf32>, tensor<5x4xi32>
    %56 = math.fma %3, %3, %3 : tensor<5x4xf32>
    %57 = arith.xori %c14916_i16, %c-9675_i16 : i16
    %58 = math.cos %6 : tensor<2xf32>
    %expanded = tensor.expand_shape %14 [[0, 1]] : tensor<5xi32> into tensor<5x1xi32>
    %59 = bufferization.to_tensor %alloc_9 : memref<5x4xi64>
    %60 = arith.maxui %c507242457_i32, %c1404000026_i32 : i32
    %alloca = memref.alloca() : memref<2xf16>
    %61 = affine.load %alloc_9[%c6, %c1] : memref<5x4xi64>
    %62 = arith.minsi %c1867734685_i64, %61 : i64
    %63 = arith.andi %true_5, %true_5 : i1
    %64 = bufferization.clone %alloc_15 : memref<2xf16> to memref<2xf16>
    %65 = arith.divui %true, %true_5 : i1
    %66 = math.fma %extracted, %extracted, %cst_0 : f32
    %67 = math.sqrt %cst_3 : f32
    %68 = arith.minf %cst_4, %cst_0 : f32
    %69 = arith.ceildivsi %61, %61 : i64
    %70 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 floordiv 8)>(%c1, %c5, %53, %c12)
    %71 = math.exp2 %18 : tensor<5xf32>
    %72 = index.maxs %c8, %c9
    %73 = tensor.empty() : tensor<5xi64>
    %mapped_25 = linalg.map ins(%15, %alloc_18 : tensor<5xi64>, memref<5xi64>) outs(%73 : tensor<5xi64>)
      (%in: i64, %in_63: i64) {
        %257 = arith.minf %cst_3, %extracted : f32
        %258 = bufferization.to_tensor %alloc_21 : memref<5x4xi16>
        %259 = math.powf %6, %6 : tensor<2xf32>
        %260 = math.cos %18 : tensor<5xf32>
        %261 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 mod 4)>(%c11, %c2, %c8, %72)
        %262 = memref.alloca_scope  -> (memref<5xi1>) {
          %286 = bufferization.to_tensor %alloc_18 : memref<5xi64>
          %collapsed_70 = tensor.collapse_shape %3 [[0, 1]] : tensor<5x4xf32> into tensor<20xf32>
          %287 = math.round %44 : tensor<2xf32>
          %288 = memref.load %alloc_7[%c0] : memref<2xi16>
          %289 = index.add %28, %c4
          %290 = arith.floordivsi %true, %false : i1
          %291 = index.casts %61 : i64 to index
          %292 = vector.broadcast %c1867734685_i64 : i64 to vector<5xi64>
          %293 = vector.broadcast %true : i1 to vector<5xi1>
          %294 = vector.maskedload %alloc_18[%c0], %293, %292 : memref<5xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
          %295 = arith.ori %in_63, %in_63 : i64
          %296 = vector.reduction <minsi>, %20 : vector<2xi16> into i16
          %297 = arith.ceildivsi %c507242457_i32, %c1064313233_i32 : i32
          %298 = vector.broadcast %c1064313233_i32 : i32 to vector<5x4xi32>
          %extracted_71 = tensor.extract %5[%c0] : tensor<2xi64>
          %299 = index.ceildivu %c9, %c6
          %300 = vector.multi_reduction <minui>, %20, %20 [] : vector<2xi16> to vector<2xi16>
          %true_72 = arith.constant true
          %301 = math.ctpop %false : i1
          %302 = arith.shrsi %extracted_71, %in : i64
          %303 = math.fpowi %cst_1, %c1064313233_i32 : f16, i32
          %304 = vector.insert %cst_4, %38 [0] : f32 into vector<5xf32>
          %305 = arith.minui %in, %extracted_71 : i64
          %306 = index.maxs %299, %c5
          %307 = math.absi %9 : tensor<2xi16>
          %expanded_73 = tensor.expand_shape %258 [[0], [1, 2]] : tensor<5x4xi16> into tensor<5x4x1xi16>
          %rank_74 = tensor.rank %44 : tensor<2xf32>
          %308 = arith.addi %c14916_i16, %c-9675_i16 : i16
          %309 = arith.addi %true_5, %true : i1
          %310 = memref.realloc %alloc_13 : memref<2xi16> to memref<4xi16>
          %311 = vector.shuffle %20, %20 [1] : vector<2xi16>, vector<2xi16>
          %312 = index.maxs %rank_74, %306
          %313 = arith.shrsi %true_5, %false_2 : i1
          %inserted_75 = tensor.insert %61 into %4[%c4] : tensor<5xi64>
          %alloc_76 = memref.alloc() : memref<5xi1>
          memref.alloca_scope.return %alloc_76 : memref<5xi1>
        }
        %inserted_64 = tensor.insert %c-9675_i16 into %0[%c4] : tensor<5xi16>
        %263 = arith.shrsi %in, %61 : i64
        %264 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %20, %20, %c14916_i16 : vector<2xi16>, vector<2xi16> into i16
        %265 = arith.addi %c1404000026_i32, %c507242457_i32 : i32
        %266 = memref.load %alloc_7[%c1] : memref<2xi16>
        %267 = index.mul %c8, %c2
        %268 = arith.cmpf ueq, %cst_3, %cst : f32
        %from_elements = tensor.from_elements %cst_3, %extracted, %cst_0, %cst, %cst_4 : tensor<5xf32>
        %269 = math.expm1 %2 : tensor<5xf32>
        %270 = vector.create_mask %c2 : vector<5xi1>
        %271 = scf.while (%arg1 = %false) : (i1) -> i1 {
          %286 = math.sqrt %3 : tensor<5x4xf32>
          %cst_70 = arith.constant 1.000000e+00 : f32
          %cst_71 = arith.constant 0.000000e+00 : f32
          %287 = vector.transfer_read %44[%72], %cst_71 : tensor<2xf32>, vector<f32>
          %288 = math.log %cst_3 : f32
          %289 = arith.shrsi %false_2, %true_5 : i1
          %290 = math.powf %3, %3 : tensor<5x4xf32>
          %291 = math.round %cst_0 : f32
          %extracted_72 = tensor.extract %13[%c0] : tensor<5xf32>
          %292 = index.sizeof
          scf.condition(%true_6) %false_2 : i1
        } do {
        ^bb0(%arg1: i1):
          %286 = arith.divui %c14916_i16, %c-9675_i16 : i16
          %287 = math.round %2 : tensor<5xf32>
          %288 = math.sqrt %13 : tensor<5xf32>
          %289 = index.sizeof
          %290 = arith.negf %cst_0 : f32
          %291 = arith.remf %extracted, %cst_3 : f32
          %292 = math.ipowi %1, %1 : tensor<2xi1>
          %293 = math.round %cst_0 : f32
          %294 = tensor.empty() : tensor<4x2xi64>
          %295 = tensor.empty() : tensor<5x2xi64>
          %296 = linalg.matmul ins(%48, %294 : tensor<5x4xi64>, tensor<4x2xi64>) outs(%295 : tensor<5x2xi64>) -> tensor<5x2xi64>
          %297 = math.ipowi %true, %true_6 : i1
          %298 = vector.broadcast %extracted : f32 to vector<5xf32>
          %299 = vector.fma %298, %39, %38 : vector<5xf32>
          %300 = memref.realloc %alloc_11 : memref<5xi32> to memref<4xi32>
          %cast_70 = tensor.cast %expanded : tensor<5x1xi32> to tensor<?x?xi32>
          %301 = arith.minf %cst, %cst_0 : f32
          %302 = arith.divsi %in, %c1867734685_i64 : i64
          %303 = arith.subi %false_2, %false : i1
          scf.yield %false_2 : i1
        }
        %generated_65 = tensor.generate %53 {
        ^bb0(%arg1: index):
          %286 = math.log2 %cst_0 : f32
          %287 = memref.realloc %alloc_7 : memref<2xi16> to memref<2xi16>
          %288 = vector.load %alloc_11[%c0] : memref<5xi32>, vector<5x4xi32>
          %289 = arith.minf %cst_4, %cst_3 : f32
          tensor.yield %c1064313233_i32 : i32
        } : tensor<?xi32>
        %272 = index.sizeof
        %273 = arith.divsi %in_63, %61 : i64
        %cst_66 = arith.constant 1.57922483E+9 : f32
        %274 = math.absf %3 : tensor<5x4xf32>
        %275 = arith.divf %cst_0, %cst_0 : f32
        %276 = vector.insert %cst_4, %38 [1] : f32 into vector<5xf32>
        %277 = arith.subi %true_6, %true_6 : i1
        %278 = index.ceildivs %c10, %70
        %alloc_67 = memref.alloc() : memref<2xi64>
        %279 = vector.broadcast %in : i64 to vector<5x4xi64>
        %280 = vector.broadcast %true_6 : i1 to vector<5x4xi1>
        %281 = vector.broadcast %c507242457_i32 : i32 to vector<5x4xi32>
        %282 = vector.gather %alloc_67[%c4] [%281], %280, %279 : memref<2xi64>, vector<5x4xi32>, vector<5x4xi1>, vector<5x4xi64> into vector<5x4xi64>
        %283 = index.castu %c1867734685_i64 : i64 to index
        %284 = arith.minf %cst_1, %cst_1 : f16
        %285 = math.fpowi %3, %54 : tensor<5x4xf32>, tensor<5x4xi32>
        vector.print %20 : vector<2xi16>
        %from_elements_68 = tensor.from_elements %cst, %cst, %cst_4, %cst_0, %cst, %extracted, %cst_4, %cst_0, %cst, %cst_3, %extracted, %cst_3, %cst_4, %cst, %cst_3, %cst_3, %cst_0, %extracted, %cst_4, %cst_3 : tensor<5x4xf32>
        %c1_i64_69 = arith.constant 1 : i64
        linalg.yield %c1_i64_69 : i64
      }
    %74 = vector.splat %c1 : vector<2xindex>
    %alloc_26 = memref.alloc() : memref<5x4xi32>
    %75 = math.log10 %44 : tensor<2xf32>
    %76 = arith.remf %cst_3, %extracted : f32
    %collapsed_27 = tensor.collapse_shape %10 [[0, 1]] : tensor<5x4xi16> into tensor<20xi16>
    %77 = vector.broadcast %false : i1 to vector<2xi1>
    %78 = vector.maskedload %alloc_22[], %77, %20 : memref<i16>, vector<2xi1>, vector<2xi16> into vector<2xi16>
    %79 = math.sqrt %cst_0 : f32
    %80 = math.atan %cst_1 : f16
    %81 = math.exp %cst_3 : f32
    %82 = math.roundeven %cst_1 : f16
    %83 = vector.broadcast %c-9675_i16 : i16 to vector<5xi16>
    %84 = vector.broadcast %false_2 : i1 to vector<5xi1>
    %85 = vector.maskedload %alloc_22[], %84, %83 : memref<i16>, vector<5xi1>, vector<5xi16> into vector<5xi16>
    %86 = arith.maxsi %c14916_i16, %c-9675_i16 : i16
    %87 = arith.addi %61, %61 : i64
    %collapsed_28 = tensor.collapse_shape %3 [[0, 1]] : tensor<5x4xf32> into tensor<20xf32>
    %88 = memref.atomic_rmw assign %c1064313233_i32, %alloc_11[%c1] : (i32, memref<5xi32>) -> i32
    %cast = tensor.cast %0 : tensor<5xi16> to tensor<?xi16>
    %89 = memref.atomic_rmw assign %c1404000026_i32, %alloc_12[%c1] : (i32, memref<5xi32>) -> i32
    %90 = vector.multi_reduction <or>, %84, %true_5 [0] : vector<5xi1> to i1
    vector.print %85 : vector<5xi16>
    %91 = vector.broadcast %cst_4 : f32 to vector<5xf32>
    %92 = vector.fma %91, %91, %38 : vector<5xf32>
    %rank = tensor.rank %8 : tensor<5xi16>
    %93 = vector.insert %cst_4, %91 [2] : f32 into vector<5xf32>
    %94 = vector.transpose %20, [0] : vector<2xi16> to vector<2xi16>
    %95 = math.ctpop %17 : tensor<5xi64>
    %96 = index.maxs %c7, %c4
    %97 = math.round %44 : tensor<2xf32>
    %cast_29 = tensor.cast %10 : tensor<5x4xi16> to tensor<?x?xi16>
    %98 = math.absf %cst : f32
    %99 = vector.broadcast %cst_1 : f16 to vector<5x4xf16>
    %100 = arith.minf %cst_1, %cst_1 : f16
    %101 = math.roundeven %cst : f32
    %102 = math.atan %18 : tensor<5xf32>
    %103 = vector.broadcast %cst_1 : f16 to vector<4xf16>
    %dest, %accumulated_value = vector.scan <add>, %99, %103 {inclusive = false, reduction_dim = 0 : i64} : vector<5x4xf16>, vector<4xf16>
    %inserted = tensor.insert %c14916_i16 into %cast_29[%c0, %c0] : tensor<?x?xi16>
    %104 = vector.transpose %77, [0] : vector<2xi1> to vector<2xi1>
    %105 = vector.broadcast %61 : i64 to vector<5x4xi64>
    %106 = vector.broadcast %true : i1 to vector<5x4xi1>
    %107 = vector.broadcast %c1064313233_i32 : i32 to vector<5x4xi32>
    %108 = vector.gather %5[%53] [%107], %106, %105 : tensor<2xi64>, vector<5x4xi32>, vector<5x4xi1>, vector<5x4xi64> into vector<5x4xi64>
    %true_30 = index.bool.constant true
    %109 = math.round %cst_1 : f16
    %collapsed_31 = tensor.collapse_shape %3 [[0, 1]] : tensor<5x4xf32> into tensor<20xf32>
    %110 = index.casts %c14916_i16 : i16 to index
    %c1456418720_i32 = arith.constant 1456418720 : i32
    %111 = affine.max affine_map<(d0) -> (d0 floordiv 2 + (d0 ceildiv 128) mod 8 + d0 floordiv 2 + (d0 ceildiv 128) mod 8 - 64, d0, (d0 + d0 ceildiv 128 - 2) floordiv 4)>(%c5)
    %112 = vector.broadcast %c1404000026_i32 : i32 to vector<5xi32>
    %113 = vector.maskedload %alloc_19[%c3], %84, %112 : memref<5xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
    %114 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %38, %91, %cst_0 : vector<5xf32>, vector<5xf32> into f32
    %115 = math.absi %7 : tensor<5xi32>
    %116 = arith.subi %c1064313233_i32, %c1404000026_i32 : i32
    %cast_32 = tensor.cast %11 : tensor<5xi32> to tensor<?xi32>
    %117 = index.casts %true : i1 to index
    %118 = arith.divf %cst_0, %cst : f32
    %119 = arith.minui %false_2, %false : i1
    %120 = index.maxs %c15, %c0
    %121 = memref.load %64[%c0] : memref<2xf16>
    %122 = index.casts %40 : index to i32
    %extracted_33 = tensor.extract %16[%c2] : tensor<5xi64>
    %123 = memref.alloca_scope  -> (memref<5xi64>) {
      %257 = math.sqrt %6 : tensor<2xf32>
      %258 = vector.shuffle %39, %38 [2, 3, 7, 8, 9] : vector<5xf32>, vector<5xf32>
      %259 = arith.addf %extracted, %cst_0 : f32
      %260 = tensor.empty() : tensor<5x5x5xi16>
      %alloc_63 = memref.alloc() : memref<5x5xi16>
      %261 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%260, %8, %alloc_63 : tensor<5x5x5xi16>, tensor<5xi16>, memref<5x5xi16>) outs(%260 : tensor<5x5x5xi16>) {
      ^bb0(%in: i16, %in_68: i16, %in_69: i16, %out: i16):
        %c1_i16 = arith.constant 1 : i16
        %292 = vector.transfer_read %10[%c3, %110], %c1_i16 : tensor<5x4xi16>, vector<i16>
        %293 = vector.transpose %39, [0] : vector<5xf32> to vector<5xf32>
        %294 = arith.shrsi %true_6, %false_2 : i1
        %295 = math.atan2 %18, %18 : tensor<5xf32>
        %296 = math.log10 %collapsed : tensor<20xf32>
        %from_elements = tensor.from_elements %c-9675_i16, %c14916_i16, %c-9675_i16, %in_68, %out : tensor<5xi16>
        %297 = math.tan %6 : tensor<2xf32>
        %298 = vector.broadcast %61 : i64 to vector<5xi64>
        %299 = vector.maskedload %alloc[%c4], %84, %298 : memref<5xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
        %300 = math.cos %44 : tensor<2xf32>
        %301 = math.cos %6 : tensor<2xf32>
        %302 = arith.remf %cst_0, %cst : f32
        %303 = vector.gather %alloc[%c12] [%112], %84, %298 : memref<5xi64>, vector<5xi32>, vector<5xi1>, vector<5xi64> into vector<5xi64>
        %304 = vector.create_mask %c8 : vector<5xi1>
        %305 = vector.transpose %99, [1, 0] : vector<5x4xf16> to vector<4x5xf16>
        %306 = vector.shuffle %91, %39 [0, 4, 6, 8, 9] : vector<5xf32>, vector<5xf32>
        %307 = math.fma %collapsed_28, %collapsed_28, %collapsed_31 : tensor<20xf32>
        %308 = arith.xori %true_6, %true_5 : i1
        %309 = index.casts %false : i1 to index
        %310 = arith.remf %cst, %cst_3 : f32
        %311 = math.absf %collapsed : tensor<20xf32>
        %inserted_70 = tensor.insert %c507242457_i32 into %cast_32[%c0] : tensor<?xi32>
        %312 = math.absf %2 : tensor<5xf32>
        %313 = math.floor %3 : tensor<5x4xf32>
        %314 = vector.broadcast %cst_1 : f16 to vector<5xf16>
        %315 = vector.maskedload %alloc_10[%c3, %c3], %84, %314 : memref<5x4xf16>, vector<5xi1>, vector<5xf16> into vector<5xf16>
        %316 = arith.subi %true_30, %true_5 : i1
        %317 = index.sub %120, %c15
        %318 = math.absi %48 : tensor<5x4xi64>
        %319 = math.absi %extracted_33 : i64
        %320 = arith.minf %cst_3, %cst_4 : f32
        %321 = index.sub %110, %c14
        %322 = math.round %transposed : tensor<5xf32>
        %323 = math.roundeven %2 : tensor<5xf32>
        linalg.yield %in_68 : i16
      } -> tensor<5x5x5xi16>
      %262 = vector.broadcast %cst_1 : f16 to vector<4xf16>
      %dest_64, %accumulated_value_65 = vector.scan <maxf>, %99, %262 {inclusive = false, reduction_dim = 0 : i64} : vector<5x4xf16>, vector<4xf16>
      %263 = math.absf %cst_4 : f32
      %264 = bufferization.to_memref %15 : memref<5xi64>
      %265 = vector.broadcast %117 : index to vector<5xindex>
      vector.scatter %alloc_8[%c1] [%265], %84, %84 : memref<2xi1>, vector<5xindex>, vector<5xi1>, vector<5xi1>
      %266 = index.maxu %96, %c13
      %267 = arith.divui %true_6, %true_6 : i1
      %268 = math.roundeven %collapsed_31 : tensor<20xf32>
      %269 = math.tan %13 : tensor<5xf32>
      %270 = arith.divf %cst_3, %cst : f32
      %271 = vector.broadcast %61 : i64 to vector<i64>
      %272 = vector.transfer_write %271, %17[%c2] : vector<i64>, tensor<5xi64>
      %273 = arith.minsi %true, %true_5 : i1
      %274 = memref.realloc %alloc_19 : memref<5xi32> to memref<5xi32>
      %275 = bufferization.to_tensor %alloc_7 : memref<2xi16>
      %276 = memref.atomic_rmw ori %extracted_33, %264[%c0] : (i64, memref<5xi64>) -> i64
      %277 = math.log10 %18 : tensor<5xf32>
      %278 = math.exp %13 : tensor<5xf32>
      %279 = vector.broadcast %c507242457_i32 : i32 to vector<4xi32>
      %280 = vector.broadcast %true_30 : i1 to vector<4xi1>
      %281 = vector.maskedload %alloc_12[%c3], %280, %279 : memref<5xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
      %282 = index.divs %111, %c13
      %283 = tensor.empty() : tensor<5x5x5xi16>
      %alloc_66 = memref.alloc() : memref<5x5xi16>
      %284 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_66 : memref<5x5xi16>) outs(%283 : tensor<5x5x5xi16>) {
      ^bb0(%in: i16, %out: i16):
        %292 = math.fma %cst_0, %cst_4, %cst : f32
        memref.store %false_2, %alloc_8[%c1] : memref<2xi1>
        %293 = vector.multi_reduction <add>, %280, %true_5 [0] : vector<4xi1> to i1
        %294 = vector.broadcast %90 : i1 to vector<2x2xi1>
        %295 = vector.outerproduct %77, %77, %294 {kind = #vector.kind<and>} : vector<2xi1>, vector<2xi1>
        %296 = vector.flat_transpose %91 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
        %297 = math.log %13 : tensor<5xf32>
        %298 = vector.bitcast %112 : vector<5xi32> to vector<5xf32>
        %cast_68 = tensor.cast %13 : tensor<5xf32> to tensor<?xf32>
        %299 = vector.extract %85[2] : vector<5xi16>
        %300 = math.log %collapsed : tensor<20xf32>
        %301 = bufferization.to_tensor %alloc_14 : memref<5x4xi64>
        %302 = vector.matrix_multiply %296, %298 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<5xf32>) -> vector<1xf32>
        %303 = arith.minsi %extracted_33, %c1867734685_i64 : i64
        %304 = arith.shrsi %true, %true_30 : i1
        %305 = vector.matrix_multiply %84, %280 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 4 : i32} : (vector<5xi1>, vector<4xi1>) -> vector<20xi1>
        %306 = math.powf %3, %3 : tensor<5x4xf32>
        %307 = memref.realloc %alloc : memref<5xi64> to memref<4xi64>
        %308 = index.casts %true_30 : i1 to index
        %309 = arith.minsi %c14916_i16, %out : i16
        %310 = index.sizeof
        memref.copy %alloc_9, %alloc_14 : memref<5x4xi64> to memref<5x4xi64>
        %311 = memref.realloc %64 : memref<2xf16> to memref<2xf16>
        affine.store %cst, %alloc_16[%c2] : memref<5xf32>
        %rank_69 = tensor.rank %73 : tensor<5xi64>
        %c161361091_i32 = arith.constant 161361091 : i32
        %c1204293816_i64 = arith.constant 1204293816 : i64
        %312 = vector.insert %c1064313233_i32, %279 [2] : i32 into vector<4xi32>
        %313 = arith.shrsi %c1867734685_i64, %61 : i64
        %314 = math.fma %cst_3, %cst, %cst_3 : f32
        %315 = math.round %cst : f32
        %316 = math.floor %cst_0 : f32
        %317 = vector.maskedload %alloc_21[%c3, %c3], %84, %83 : memref<5x4xi16>, vector<5xi1>, vector<5xi16> into vector<5xi16>
        linalg.yield %c-9675_i16 : i16
      } -> tensor<5x5x5xi16>
      %cast_67 = tensor.cast %6 : tensor<2xf32> to tensor<?xf32>
      %285 = arith.subi %true_30, %true_30 : i1
      %286 = arith.minf %cst, %cst_0 : f32
      %287 = math.tanh %6 : tensor<2xf32>
      scf.execute_region {
        %292 = index.divs %31, %c9
        %293 = math.cttz %15 : tensor<5xi64>
        %294 = vector.broadcast %cst_1 : f16 to vector<2xf16>
        %295 = vector.maskedload %alloc_15[%c1], %77, %294 : memref<2xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
        %296 = math.expm1 %2 : tensor<5xf32>
        %297 = arith.divsi %extracted_33, %61 : i64
        %298 = math.tanh %44 : tensor<2xf32>
        %rank_68 = tensor.rank %transposed : tensor<5xf32>
        %299 = vector.transpose %112, [0] : vector<5xi32> to vector<5xi32>
        %300 = index.maxs %c4, %c11
        %301 = math.powf %2, %transposed : tensor<5xf32>
        %302 = arith.subi %false_2, %false_2 : i1
        %303 = math.ctpop %17 : tensor<5xi64>
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %304 = vector.transfer_read %alloc_7[%c3], %c0_i16 : memref<2xi16>, vector<i16>
        %false_69 = index.bool.constant false
        %false_70 = index.bool.constant false
        %305 = arith.negf %cst : f32
        scf.yield
      }
      %288 = affine.if affine_set<(d0, d1, d2) : ((d2 ceildiv 64) * 16 == 0, d2 * 128 == 0)>(%c9, %c7, %c8) -> i16 {
        %false_68 = arith.constant false
        %292 = index.maxs %c8, %c0
        %293 = math.copysign %2, %13 : tensor<5xf32>
        %from_elements = tensor.from_elements %true, %90 : tensor<2xi1>
        %294 = index.casts %40 : index to i32
        %295 = math.log1p %3 : tensor<5x4xf32>
        %296 = memref.realloc %alloc_20 : memref<5xi32> to memref<5xi32>
        %297 = math.log2 %13 : tensor<5xf32>
        affine.yield %c-9675_i16 : i16
      } else {
        %292 = math.absf %6 : tensor<2xf32>
        %293 = vector.insert %cst_3, %91 [3] : f32 into vector<5xf32>
        %294 = math.absi %c1867734685_i64 : i64
        %295 = bufferization.to_tensor %alloc_20 : memref<5xi32>
        %296 = arith.muli %extracted_33, %c1867734685_i64 : i64
        %297 = math.roundeven %13 : tensor<5xf32>
        %298 = index.maxu %28, %c3
        %299 = memref.realloc %alloc_7 : memref<2xi16> to memref<2xi16>
        affine.yield %c14916_i16 : i16
      }
      %289 = arith.ceildivsi %extracted_33, %extracted_33 : i64
      %290 = affine.if affine_set<(d0, d1, d2, d3) : (d1 * 128 - d2 >= 0, d1 * 128 - d2 == 0)>(%c7, %c9, %c7, %c8) -> memref<2xi16> {
        %292 = arith.muli %false_2, %true_5 : i1
        %expanded_68 = tensor.expand_shape %14 [[0, 1]] : tensor<5xi32> into tensor<5x1xi32>
        %293 = math.absf %3 : tensor<5x4xf32>
        %inserted_69 = tensor.insert %cst_0 into %3[%c4, %c1] : tensor<5x4xf32>
        %294 = math.exp %2 : tensor<5xf32>
        %295 = vector.splat %true_30 : vector<2xi1>
        %296 = vector.create_mask %111, %72 : vector<5x4xi1>
        %true_70 = index.bool.constant true
        affine.yield %alloc_13 : memref<2xi16>
      } else {
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %292 = vector.transfer_read %alloc_7[%c11], %c0_i16 : memref<2xi16>, vector<i16>
        %293 = arith.cmpf ole, %cst_3, %cst_4 : f32
        %294 = math.round %6 : tensor<2xf32>
        %cst_68 = arith.constant 0x4CE6A905 : f32
        %splat = tensor.splat %c1404000026_i32 : tensor<5xi32>
        %true_69 = arith.constant true
        %295 = vector.transpose %106, [1, 0] : vector<5x4xi1> to vector<4x5xi1>
        %296 = math.absi %collapsed_27 : tensor<20xi16>
        affine.yield %alloc_7 : memref<2xi16>
      }
      %291 = index.casts %false : i1 to index
      memref.alloca_scope.return %264 : memref<5xi64>
    }
    %124 = math.ctpop %extracted_33 : i64
    %125 = arith.divui %c-9675_i16, %c14916_i16 : i16
    bufferization.dealloc_tensor %collapsed_31 : tensor<20xf32>
    %126 = arith.minf %cst_4, %cst_4 : f32
    %127 = index.mul %c13, %c15
    memref.alloca_scope  {
      %257 = arith.minsi %90, %true_5 : i1
      %258 = vector.extract %83[1] : vector<5xi16>
      %259 = memref.realloc %alloc_19 : memref<5xi32> to memref<5xi32>
      %260 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %78, %78, %c14916_i16 : vector<2xi16>, vector<2xi16> into i16
      %261 = memref.realloc %123 : memref<5xi64> to memref<2xi64>
      %262 = index.maxs %c6, %c1
      %263 = index.divu %31, %111
      %264 = math.tan %cst : f32
      %265 = vector.extract %99[3] : vector<5x4xf16>
      %266 = arith.xori %true_6, %false : i1
      %267 = index.casts %c1064313233_i32 : i32 to index
      %268 = index.casts %true_30 : i1 to index
      %269 = affine.for %arg1 = 0 to 39 iter_args(%arg2 = %106) -> (vector<5x4xi1>) {
        affine.yield %106 : vector<5x4xi1>
      }
      %270 = arith.divsi %c1064313233_i32, %c507242457_i32 : i32
      %271 = math.fpowi %13, %7 : tensor<5xf32>, tensor<5xi32>
      %false_63 = index.bool.constant false
      %272 = arith.andi %false, %true_30 : i1
      %273 = arith.andi %true_30, %false_2 : i1
      %274 = arith.subi %false_63, %true_6 : i1
      %collapsed_64 = tensor.collapse_shape %12 [[0, 1]] : tensor<5x4xi64> into tensor<20xi64>
      %275 = vector.shuffle %112, %112 [1, 2, 3, 4, 7, 8] : vector<5xi32>, vector<5xi32>
      %276 = index.mul %c7, %40
      %277 = index.ceildivs %c15, %c5
      %278 = vector.matrix_multiply %20, %78 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi16>, vector<2xi16>) -> vector<1xi16>
      %279 = vector.broadcast %c1064313233_i32 : i32 to vector<5x5xi32>
      %280 = vector.outerproduct %113, %113, %279 {kind = #vector.kind<maxsi>} : vector<5xi32>, vector<5xi32>
      %generated_65 = tensor.generate %277 {
      ^bb0(%arg1: index):
        %collapsed_66 = tensor.collapse_shape %12 [[0, 1]] : tensor<5x4xi64> into tensor<20xi64>
        %286 = math.ipowi %54, %54 : tensor<5x4xi32>
        memref.store %61, %alloc_14[%c0, %c2] : memref<5x4xi64>
        %from_elements = tensor.from_elements %true, %true_30, %false_2, %false, %true_6 : tensor<5xi1>
        tensor.yield %cst_1 : f16
      } : tensor<?xf16>
      memref.tensor_store %7, %alloc_19 : memref<5xi32>
      %281 = index.maxu %c9, %263
      %282 = math.absf %collapsed : tensor<20xf32>
      %283 = index.divu %40, %262
      %284 = arith.ceildivsi %false_2, %false_2 : i1
      %285 = math.log2 %cst_4 : f32
    }
    %128 = vector.matrix_multiply %84, %84 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi1>, vector<5xi1>) -> vector<1xi1>
    %129 = vector.broadcast %c1867734685_i64 : i64 to vector<4xi64>
    %dest_34, %accumulated_value_35 = vector.scan <maxsi>, %108, %129 {inclusive = false, reduction_dim = 0 : i64} : vector<5x4xi64>, vector<4xi64>
    %130 = tensor.empty() : tensor<4x2xi16>
    %131 = tensor.empty() : tensor<5x2xi16>
    %132 = linalg.matmul ins(%10, %130 : tensor<5x4xi16>, tensor<4x2xi16>) outs(%131 : tensor<5x2xi16>) -> tensor<5x2xi16>
    %133 = math.tan %3 : tensor<5x4xf32>
    %134 = math.ctlz %true_6 : i1
    %135 = math.round %collapsed_31 : tensor<20xf32>
    %136 = vector.broadcast %61 : i64 to vector<5xi64>
    %137 = vector.maskedload %alloc_18[%c4], %84, %136 : memref<5xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
    %138 = math.roundeven %44 : tensor<2xf32>
    %139 = index.divu %c0, %c8
    %false_36 = index.bool.constant false
    %extracted_37 = tensor.extract %1[%c1] : tensor<2xi1>
    %cast_38 = tensor.cast %14 : tensor<5xi32> to tensor<?xi32>
    %140 = arith.minsi %61, %61 : i64
    %141 = arith.minf %cst_3, %extracted : f32
    %142 = math.sqrt %cst_0 : f32
    %143 = index.maxs %c14, %c13
    %144 = arith.minui %c507242457_i32, %c1064313233_i32 : i32
    %145 = affine.min affine_map<(d0, d1) -> (d0 * 2, -((d0 * 2) ceildiv 32))>(%c12, %c6)
    bufferization.dealloc_tensor %5 : tensor<2xi64>
    %146 = arith.remf %cst_0, %cst_0 : f32
    %147 = memref.load %alloc_18[%c2] : memref<5xi64>
    %148 = math.exp2 %44 : tensor<2xf32>
    %149 = bufferization.to_tensor %64 : memref<2xf16>
    %150 = vector.maskedload %alloc_20[%c1], %84, %112 : memref<5xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
    %false_39 = index.bool.constant false
    bufferization.dealloc_tensor %14 : tensor<5xi32>
    %generated = tensor.generate %c15 {
    ^bb0(%arg1: index):
      %257 = vector.create_mask %c11 : vector<5xi1>
      %258 = math.cos %18 : tensor<5xf32>
      %259 = vector.maskedload %alloc_22[], %77, %20 : memref<i16>, vector<2xi1>, vector<2xi16> into vector<2xi16>
      %260 = vector.broadcast %61 : i64 to vector<2xi64>
      %261 = vector.maskedload %alloc_9[%c2, %c0], %77, %260 : memref<5x4xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
      tensor.yield %c14916_i16 : i16
    } : tensor<?xi16>
    %151 = math.cttz %c1404000026_i32 : i32
    %cast_40 = tensor.cast %7 : tensor<5xi32> to tensor<?xi32>
    %extracted_41 = tensor.extract %2[%c4] : tensor<5xf32>
    %152 = tensor.empty() : tensor<4x2xi64>
    %153 = tensor.empty() : tensor<5x2xi64>
    %154 = linalg.matmul ins(%12, %152 : tensor<5x4xi64>, tensor<4x2xi64>) outs(%153 : tensor<5x2xi64>) -> tensor<5x2xi64>
    %alloc_42 = memref.alloc() : memref<5x2xi64>
    memref.tensor_store %153, %alloc_42 : memref<5x2xi64>
    %155 = index.casts %143 : index to i32
    %generated_43 = tensor.generate %c2 {
    ^bb0(%arg1: index):
      %cast_63 = tensor.cast %expanded : tensor<5x1xi32> to tensor<?x?xi32>
      %257 = scf.execute_region -> vector<5x4xi32> {
        %260 = math.exp %44 : tensor<2xf32>
        %261 = arith.divsi %true, %false : i1
        %262 = vector.broadcast %c-9675_i16 : i16 to vector<5x5xi16>
        %263 = vector.outerproduct %85, %83, %262 {kind = #vector.kind<minui>} : vector<5xi16>, vector<5xi16>
        %264 = vector.load %alloc_7[%c0] : memref<2xi16>, vector<5x4xi16>
        %265 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, d3 floordiv 16)>(%127, %117, %c15, %arg1)
        %266 = arith.muli %true_5, %false : i1
        %267 = vector.broadcast %c507242457_i32 : i32 to vector<4xi32>
        %268 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxui>} %107, %113, %267 : vector<5x4xi32>, vector<5xi32> into vector<4xi32>
        %269 = math.log10 %cst_1 : f16
        %270 = math.round %2 : tensor<5xf32>
        %271 = index.mul %40, %c1
        %272 = math.cttz %c1064313233_i32 : i32
        %273 = index.casts %c13 : index to i32
        %274 = vector.matrix_multiply %83, %20 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 2 : i32} : (vector<5xi16>, vector<2xi16>) -> vector<10xi16>
        %275 = index.add %143, %72
        %276 = vector.load %123[%c3] : memref<5xi64>, vector<5x4xi64>
        %277 = vector.bitcast %77 : vector<2xi1> to vector<2xi1>
        scf.yield %107 : vector<5x4xi32>
      }
      %258 = index.casts %120 : index to i32
      %259 = math.ctpop %12 : tensor<5x4xi64>
      tensor.yield %cst : f32
    } : tensor<?xf32>
    %156 = index.sub %c12, %c1
    %157 = math.absf %13 : tensor<5xf32>
    %158 = arith.minsi %61, %61 : i64
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %159 = vector.transfer_read %alloc_20[%c4], %c0_i32 : memref<5xi32>, vector<i32>
    %true_44 = index.bool.constant true
    %160 = index.mul %96, %40
    %161 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %84, %84, %false_39 : vector<5xi1>, vector<5xi1> into i1
    %162 = vector.gather %3[%139, %c4] [%150], %84, %91 : tensor<5x4xf32>, vector<5xi32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
    %extracted_45 = tensor.extract %expanded[%c3, %c0] : tensor<5x1xi32>
    %163 = math.exp2 %cst : f32
    %164 = math.log %transposed : tensor<5xf32>
    %165 = arith.shrsi %61, %c1867734685_i64 : i64
    %inserted_46 = tensor.insert %c14916_i16 into %10[%c1, %c0] : tensor<5x4xi16>
    %166 = memref.realloc %alloc_13 : memref<2xi16> to memref<5xi16>
    %167 = math.roundeven %3 : tensor<5x4xf32>
    %168 = arith.maxf %cst_0, %cst_3 : f32
    %169 = arith.muli %false, %true_6 : i1
    %170 = math.absf %collapsed : tensor<20xf32>
    %171 = math.log2 %44 : tensor<2xf32>
    %172 = math.ctpop %4 : tensor<5xi64>
    %cast_47 = tensor.cast %0 : tensor<5xi16> to tensor<?xi16>
    memref.copy %123, %alloc_18 : memref<5xi64> to memref<5xi64>
    %173 = tensor.empty() : tensor<5x5x5xi16>
    %174 = tensor.empty() : tensor<5x5xi16>
    %175 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%174, %173, %174 : tensor<5x5xi16>, tensor<5x5x5xi16>, tensor<5x5xi16>) outs(%173 : tensor<5x5x5xi16>) {
    ^bb0(%in: i16, %in_63: i16, %in_64: i16, %out: i16):
      %257 = index.divu %31, %c13
      %258 = tensor.empty() : tensor<2xi32>
      %259 = affine.for %arg1 = 0 to 13 iter_args(%arg2 = %11) -> (tensor<5xi32>) {
        affine.yield %7 : tensor<5xi32>
      }
      %260 = scf.execute_region -> vector<5x4xi64> {
        %rank_70 = tensor.rank %258 : tensor<2xi32>
        %283 = math.round %3 : tensor<5x4xf32>
        %284 = arith.minsi %false_2, %true : i1
        %285 = index.casts %c-9675_i16 : i16 to index
        %286 = vector.broadcast %c1_i32 : i32 to vector<i32>
        vector.transfer_write %286, %alloc_19[%120] : vector<i32>, memref<5xi32>
        %287 = vector.broadcast %cst_1 : f16 to vector<5xf16>
        %288 = vector.maskedload %alloc_10[%c3, %c0], %84, %287 : memref<5x4xf16>, vector<5xi1>, vector<5xf16> into vector<5xf16>
        %289 = arith.maxf %extracted, %cst_4 : f32
        %290 = arith.andi %c1_i32, %c507242457_i32 : i32
        %291 = affine.min affine_map<(d0, d1) -> (d0 + 192)>(%c0, %28)
        %292 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %136, %137, %c1867734685_i64 : vector<5xi64>, vector<5xi64> into i64
        %293 = vector.multi_reduction <minf>, %288, %cst_1 [0] : vector<5xf16> to f16
        %cast_71 = tensor.cast %6 : tensor<2xf32> to tensor<?xf32>
        %294 = index.mul %111, %c8
        %295 = math.ipowi %73, %21 : tensor<5xi64>
        %collapsed_72 = tensor.collapse_shape %48 [[0, 1]] : tensor<5x4xi64> into tensor<20xi64>
        %296 = vector.transpose %286, [] : vector<i32> to vector<i32>
        scf.yield %105 : vector<5x4xi64>
      }
      affine.for %arg1 = 0 to 22 {
      }
      %261 = bufferization.to_memref %149 : memref<2xf16>
      %262 = vector.broadcast %c1867734685_i64 : i64 to vector<4xi64>
      %263 = vector.insert %262, %105 [2] : vector<4xi64> into vector<5x4xi64>
      %264 = arith.muli %true, %false : i1
      %inserted_65 = tensor.insert %c1867734685_i64 into %73[%c4] : tensor<5xi64>
      %265 = index.maxu %111, %117
      %266 = memref.alloca_scope  -> (f16) {
        %283 = vector.shuffle %262, %262 [2, 3, 4, 5] : vector<4xi64>, vector<4xi64>
        %284 = math.log10 %3 : tensor<5x4xf32>
        %285 = math.floor %6 : tensor<2xf32>
        %286 = bufferization.to_tensor %alloc_17 : memref<5x4xf32>
        %287 = vector.load %123[%c0] : memref<5xi64>, vector<5x4xi64>
        bufferization.dealloc_tensor %2 : tensor<5xf32>
        %from_elements_70 = tensor.from_elements %out, %c-9675_i16, %c-9675_i16, %in, %in_63, %in_64, %c-9675_i16, %in, %c-9675_i16, %out, %in, %in, %in_64, %in_64, %out, %c14916_i16, %in, %c-9675_i16, %out, %in_64 : tensor<5x4xi16>
        %288 = vector.create_mask %c10 : vector<2xi1>
        %289 = arith.addi %true_5, %false_2 : i1
        %rank_71 = tensor.rank %expanded : tensor<5x1xi32>
        %290 = tensor.empty() : tensor<5x4xi64>
        %291 = arith.muli %c1404000026_i32, %c1_i32 : i32
        %292 = math.round %cst_0 : f32
        %inserted_72 = tensor.insert %c-9675_i16 into %131[%c4, %c0] : tensor<5x2xi16>
        %293 = index.mul %c9, %257
        %extracted_73 = tensor.extract %2[%c1] : tensor<5xf32>
        %cast_74 = tensor.cast %59 : tensor<5x4xi64> to tensor<?x?xi64>
        %294 = vector.broadcast %cst_1 : f16 to vector<4xf16>
        %dest_75, %accumulated_value_76 = vector.scan <minf>, %99, %294 {inclusive = false, reduction_dim = 0 : i64} : vector<5x4xf16>, vector<4xf16>
        %295 = arith.shrsi %c-9675_i16, %in : i16
        %296 = math.sqrt %3 : tensor<5x4xf32>
        memref.store %cst_1, %alloc_15[%c1] : memref<2xf16>
        %297 = math.log2 %44 : tensor<2xf32>
        %298 = math.absi %c507242457_i32 : i32
        %299 = math.round %6 : tensor<2xf32>
        %300 = arith.divsi %in_63, %in_63 : i16
        %301 = math.log2 %cst_0 : f32
        %rank_77 = tensor.rank %17 : tensor<5xi64>
        %302 = vector.insertelement %extracted_41, %92[%c12 : index] : vector<5xf32>
        %303 = math.exp2 %44 : tensor<2xf32>
        %304 = arith.andi %extracted_45, %extracted_45 : i32
        %305 = vector.matrix_multiply %20, %20 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi16>, vector<2xi16>) -> vector<1xi16>
        %306 = arith.addi %in, %in_64 : i16
        memref.alloca_scope.return %cst_1 : f16
      }
      %expanded_66 = tensor.expand_shape %0 [[0, 1]] : tensor<5xi16> into tensor<5x1xi16>
      %267 = math.round %cst : f32
      %cast_67 = tensor.cast %transposed : tensor<5xf32> to tensor<?xf32>
      %268 = index.divu %31, %c3
      %269 = index.sub %c6, %268
      %270 = vector.extract_strided_slice %99 {offsets = [3], sizes = [1], strides = [1]} : vector<5x4xf16> to vector<1x4xf16>
      %271 = math.sqrt %149 : tensor<2xf16>
      %272 = math.rsqrt %cst_0 : f32
      %273 = index.divu %53, %28
      %274 = math.exp2 %collapsed_28 : tensor<20xf32>
      %from_elements = tensor.from_elements %in_63, %c-9675_i16, %in, %out, %in_63 : tensor<5xi16>
      %275 = index.casts %c10 : index to i32
      %276 = bufferization.to_tensor %alloc_7 : memref<2xi16>
      %277 = math.expm1 %13 : tensor<5xf32>
      %278 = arith.divsi %61, %61 : i64
      %inserted_68 = tensor.insert %cst into %18[%c1] : tensor<5xf32>
      %rank_69 = tensor.rank %7 : tensor<5xi32>
      memref.tensor_store %3, %alloc_17 : memref<5x4xf32>
      %279 = math.sqrt %extracted : f32
      %280 = index.mul %c5, %c12
      %281 = tensor.empty() : tensor<5x5x5xi16>
      %282 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0 : tensor<5xi16>) outs(%281 : tensor<5x5x5xi16>) {
      ^bb0(%in_70: i16, %out_71: i16):
        %283 = vector.flat_transpose %112 {columns = 5 : i32, rows = 1 : i32} : vector<5xi32> -> vector<5xi32>
        %284 = arith.minf %cst_4, %cst_4 : f32
        %285 = math.exp2 %2 : tensor<5xf32>
        %286 = vector.broadcast %cst : f32 to vector<2xf32>
        %287 = vector.fma %286, %286, %286 : vector<2xf32>
        %288 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %113, %283, %c507242457_i32 : vector<5xi32>, vector<5xi32> into i32
        %289 = math.sqrt %149 : tensor<2xf16>
        %290 = arith.minf %extracted, %extracted_41 : f32
        %291 = math.sqrt %6 : tensor<2xf32>
        %292 = arith.minsi %c1064313233_i32, %c1_i32 : i32
        %293 = vector.maskedload %alloc_17[%c4, %c2], %77, %286 : memref<5x4xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
        %294 = index.casts %false_2 : i1 to index
        %295 = math.absf %2 : tensor<5xf32>
        %296 = math.rsqrt %2 : tensor<5xf32>
        %297 = affine.min affine_map<(d0) -> (0)>(%c3)
        %rank_72 = tensor.rank %5 : tensor<2xi64>
        %298 = affine.min affine_map<(d0) -> (0, 0)>(%127)
        %299 = arith.ceildivsi %false_2, %false_2 : i1
        %300 = vector.broadcast %cst : f32 to vector<2xf32>
        %301 = vector.fma %300, %286, %286 : vector<2xf32>
        %302 = math.cttz %c1064313233_i32 : i32
        %303 = vector.broadcast %cst_3 : f32 to vector<2xf32>
        %304 = vector.fma %303, %287, %301 : vector<2xf32>
        %305 = math.exp %cst_4 : f32
        %306 = math.log %3 : tensor<5x4xf32>
        %rank_73 = tensor.rank %generated_43 : tensor<?xf32>
        %307 = arith.muli %in_63, %in_63 : i16
        %308 = vector.broadcast %true_30 : i1 to vector<4xi1>
        %dest_74, %accumulated_value_75 = vector.scan <or>, %106, %308 {inclusive = true, reduction_dim = 0 : i64} : vector<5x4xi1>, vector<4xi1>
        %309 = arith.remf %extracted_41, %extracted_41 : f32
        %310 = math.exp2 %3 : tensor<5x4xf32>
        %311 = vector.broadcast %cst_0 : f32 to vector<2xf32>
        %312 = vector.fma %311, %304, %303 : vector<2xf32>
        %313 = arith.cmpf true, %extracted, %extracted_41 : f32
        %314 = vector.maskedload %123[%c1], %84, %136 : memref<5xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
        %c284641247_i32 = arith.constant 284641247 : i32
        %315 = index.divu %139, %c14
        linalg.yield %in_64 : i16
      } -> tensor<5x5x5xi16>
      linalg.yield %in_63 : i16
    } -> tensor<5x5x5xi16>
    %176 = affine.min affine_map<(d0, d1, d2, d3) -> (d0, 32)>(%c2, %53, %c8, %c15)
    %177 = vector.broadcast %61 : i64 to vector<4xi64>
    %178 = vector.insert %177, %105 [1] : vector<4xi64> into vector<5x4xi64>
    %179 = vector.bitcast %113 : vector<5xi32> to vector<5xi32>
    %180 = arith.shrsi %extracted_45, %extracted_45 : i32
    %181 = arith.minsi %false_39, %true_44 : i1
    %182 = vector.maskedload %alloc_21[%c1, %c2], %84, %83 : memref<5x4xi16>, vector<5xi1>, vector<5xi16> into vector<5xi16>
    scf.execute_region {
      %257 = vector.create_mask %53, %c7 : vector<5x4xi1>
      %258 = memref.load %alloc_19[%c3] : memref<5xi32>
      %cast_63 = tensor.cast %21 : tensor<5xi64> to tensor<?xi64>
      %259 = bufferization.to_tensor %alloc_22 : memref<i16>
      affine.store %cst_1, %alloc_10[%c5, %c14] : memref<5x4xf16>
      %260 = vector.transpose %137, [0] : vector<5xi64> to vector<5xi64>
      %261 = math.copysign %transposed, %2 : tensor<5xf32>
      %262 = math.ipowi %17, %73 : tensor<5xi64>
      %263 = arith.minsi %false_2, %false_2 : i1
      %264 = arith.remf %extracted, %cst_0 : f32
      bufferization.dealloc_tensor %cast_32 : tensor<?xi32>
      %265 = tensor.empty() : tensor<2xi1>
      %mapped_64 = linalg.map ins(%1 : tensor<2xi1>) outs(%265 : tensor<2xi1>)
        (%in: i1) {
          %268 = vector.maskedload %alloc_22[], %84, %182 : memref<i16>, vector<5xi1>, vector<5xi16> into vector<5xi16>
          %269 = index.divu %31, %139
          %cast_66 = tensor.cast %11 : tensor<5xi32> to tensor<?xi32>
          %270 = vector.extract %83[1] : vector<5xi16>
          %271 = math.tan %extracted_41 : f32
          %c13732_i16 = arith.constant 13732 : i16
          %272 = vector.insert %c1_i32, %179 [1] : i32 into vector<5xi32>
          %273 = math.cos %44 : tensor<2xf32>
          %274 = memref.realloc %alloc_11 : memref<5xi32> to memref<2xi32>
          %275 = arith.divsi %c14916_i16, %c-9675_i16 : i16
          %276 = index.maxu %c12, %117
          %277 = math.absi %true_30 : i1
          %false_67 = index.bool.constant false
          %278 = vector.shuffle %78, %182 [0, 1, 3, 5, 6] : vector<2xi16>, vector<5xi16>
          %279 = arith.divui %c1064313233_i32, %extracted_45 : i32
          %expanded_68 = tensor.expand_shape %14 [[0, 1]] : tensor<5xi32> into tensor<5x1xi32>
          %extracted_69 = tensor.extract %265[%c1] : tensor<2xi1>
          %280 = vector.maskedload %alloc[%c4], %84, %136 : memref<5xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
          %281 = arith.remf %cst_0, %cst_3 : f32
          %282 = arith.minsi %true_6, %90 : i1
          %283 = arith.shrsi %c1064313233_i32, %extracted_45 : i32
          %284 = index.castu %139 : index to i32
          %285 = arith.subi %c1867734685_i64, %61 : i64
          %286 = tensor.empty() : tensor<2xi16>
          %287 = math.exp %transposed : tensor<5xf32>
          %288 = arith.cmpi slt, %c1867734685_i64, %extracted_33 : i64
          %289 = math.roundeven %extracted_41 : f32
          %290 = arith.cmpf olt, %extracted, %extracted : f32
          %splat = tensor.splat %extracted_33 : tensor<5x4xi64>
          %291 = vector.load %alloc_15[%c0] : memref<2xf16>, vector<5xf16>
          %292 = vector.transpose %179, [0] : vector<5xi32> to vector<5xi32>
          %293 = math.log10 %collapsed : tensor<20xf32>
          %false_70 = arith.constant false
          linalg.yield %false_70 : i1
        }
      %266 = arith.shrsi %c-9675_i16, %c14916_i16 : i16
      %267 = bufferization.to_tensor %alloc_22 : memref<i16>
      %from_elements = tensor.from_elements %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1 : tensor<5x4xf16>
      %generated_65 = tensor.generate %c0, %96 {
      ^bb0(%arg1: index, %arg2: index):
        %268 = arith.cmpf oge, %cst_4, %cst_4 : f32
        %269 = bufferization.to_tensor %123 : memref<5xi64>
        %270 = math.roundeven %cst : f32
        %271 = math.ctpop %21 : tensor<5xi64>
        tensor.yield %extracted_33 : i64
      } : tensor<?x?xi64>
      scf.yield
    }
    %183 = arith.addf %extracted, %extracted : f32
    %184 = tensor.empty() : tensor<5xi64>
    %mapped_48 = linalg.map ins(%123, %21, %alloc_18 : memref<5xi64>, tensor<5xi64>, memref<5xi64>) outs(%184 : tensor<5xi64>)
      (%in: i64, %in_63: i64, %in_64: i64) {
        %257 = tensor.empty() : tensor<5x5x5xi16>
        %alloc_65 = memref.alloc() : memref<5x5xi16>
        %258 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_65, %257 : memref<5x5xi16>, tensor<5x5x5xi16>) outs(%257 : tensor<5x5x5xi16>) {
        ^bb0(%in_71: i16, %in_72: i16, %out: i16):
          %285 = math.absf %cst : f32
          %cast_73 = tensor.cast %1 : tensor<2xi1> to tensor<?xi1>
          %286 = vector.bitcast %99 : vector<5x4xf16> to vector<5x4xf16>
          %287 = vector.broadcast %extracted_41 : f32 to vector<5x4xf32>
          %288 = vector.gather %alloc_16[%c10] [%107], %106, %287 : memref<5xf32>, vector<5x4xi32>, vector<5x4xi1>, vector<5x4xf32> into vector<5x4xf32>
          %289 = index.sub %c0, %28
          %290 = math.tanh %transposed : tensor<5xf32>
          vector.print %182 : vector<5xi16>
          %291 = arith.minsi %c14916_i16, %c-9675_i16 : i16
          %292 = arith.andi %c-9675_i16, %c14916_i16 : i16
          %293 = math.absi %false : i1
          %294 = vector.broadcast %cst_4 : f32 to vector<5x4xf32>
          %295 = vector.fma %294, %294, %287 : vector<5x4xf32>
          %296 = math.round %collapsed_28 : tensor<20xf32>
          %297 = arith.divf %cst_4, %cst_4 : f32
          %collapsed_74 = tensor.collapse_shape %12 [[0, 1]] : tensor<5x4xi64> into tensor<20xi64>
          %298 = index.sizeof
          %299 = index.divu %72, %176
          %300 = vector.shuffle %179, %112 [0, 1, 2, 5, 8, 9] : vector<5xi32>, vector<5xi32>
          %301 = math.exp2 %extracted_41 : f32
          %302 = vector.broadcast %cst_1 : f16 to vector<4xf16>
          %303 = vector.insert %302, %286 [4] : vector<4xf16> into vector<5x4xf16>
          %304 = vector.broadcast %c-9675_i16 : i16 to vector<i16>
          %305 = vector.transfer_write %304, %9[%156] : vector<i16>, tensor<2xi16>
          %306 = vector.create_mask %145 : vector<5xi1>
          %307 = memref.atomic_rmw minf %cst, %alloc_17[%c3, %c3] : (f32, memref<5x4xf32>) -> f32
          %rank_75 = tensor.rank %13 : tensor<5xf32>
          %308 = math.powf %2, %transposed : tensor<5xf32>
          %rank_76 = tensor.rank %12 : tensor<5x4xi64>
          %309 = arith.muli %c1404000026_i32, %extracted_45 : i32
          %310 = vector.multi_reduction <add>, %136, %in_63 [0] : vector<5xi64> to i64
          %311 = math.exp %transposed : tensor<5xf32>
          %312 = arith.ceildivsi %false_36, %false_2 : i1
          %313 = math.absf %collapsed : tensor<20xf32>
          %314 = math.fma %3, %3, %3 : tensor<5x4xf32>
          %alloca_77 = memref.alloca() : memref<5xf16>
          linalg.yield %c14916_i16 : i16
        } -> tensor<5x5x5xi16>
        %259 = affine.if affine_set<(d0) : ((d0 - 2) mod 16 >= 0, (d0 - 2) * 16 >= 0, d0 - 2 >= 0, ((-d0) ceildiv 16) * 8 >= 0)>(%c15) -> memref<5xi64> {
          %285 = vector.extract %92[3] : vector<5xf32>
          %286 = vector.transpose %106, [1, 0] : vector<5x4xi1> to vector<4x5xi1>
          %287 = math.ctpop %12 : tensor<5x4xi64>
          %288 = arith.muli %in_63, %in_63 : i64
          %289 = math.log %extracted : f32
          %cst_71 = arith.constant 1.000000e+00 : f32
          %290 = vector.transfer_read %collapsed_28[%143], %cst_71 : tensor<20xf32>, vector<f32>
          %291 = arith.maxui %false_36, %false_36 : i1
          %true_72 = index.bool.constant true
          affine.yield %alloc_18 : memref<5xi64>
        } else {
          %285 = math.sqrt %3 : tensor<5x4xf32>
          %rank_71 = tensor.rank %44 : tensor<2xf32>
          %286 = math.sqrt %149 : tensor<2xf16>
          %287 = arith.divf %cst_4, %cst_3 : f32
          %288 = arith.divsi %c1064313233_i32, %extracted_45 : i32
          %289 = affine.min affine_map<(d0) -> ((d0 mod 128) ceildiv 8, d0 - (d0 - 128) - 4, d0 - (d0 - 128) - 4)>(%c13)
          memref.tensor_store %9, %alloc_7 : memref<2xi16>
          %true_72 = index.bool.constant true
          affine.yield %123 : memref<5xi64>
        }
        memref.alloca_scope  {
          %cast_71 = tensor.cast %59 : tensor<5x4xi64> to tensor<?x?xi64>
          %285 = index.divu %120, %28
          %286 = math.sqrt %cst_1 : f16
          %287 = memref.realloc %alloc_18 : memref<5xi64> to memref<5xi64>
          %288 = vector.insert %c14916_i16, %83 [3] : i16 into vector<5xi16>
          %289 = arith.divf %cst_0, %cst_0 : f32
          %290 = vector.matrix_multiply %38, %38 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<5xf32>) -> vector<1xf32>
          %291 = bufferization.to_memref %14 : memref<5xi32>
          %292 = tensor.empty() : tensor<4x2xi64>
          %293 = tensor.empty() : tensor<5x2xi64>
          %294 = linalg.matmul ins(%48, %292 : tensor<5x4xi64>, tensor<4x2xi64>) outs(%293 : tensor<5x2xi64>) -> tensor<5x2xi64>
          %c1_i64_72 = arith.constant 1 : i64
          %c0_i64_73 = arith.constant 0 : i64
          %295 = vector.transfer_read %12[%117, %176], %c0_i64_73 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<5x4xi64>, vector<5xi64>
          %296 = vector.shuffle %105, %105 [1, 2, 4, 5, 7, 8, 9] : vector<5x4xi64>, vector<5x4xi64>
          %297 = memref.realloc %64 : memref<2xf16> to memref<4xf16>
          %298 = math.tan %2 : tensor<5xf32>
          %299 = arith.remf %cst, %extracted_41 : f32
          %300 = math.fma %collapsed_31, %collapsed, %collapsed_31 : tensor<20xf32>
          %301 = vector.broadcast %extracted_41 : f32 to vector<5x4xf32>
          %302 = vector.fma %301, %301, %301 : vector<5x4xf32>
          %303 = arith.divf %cst_4, %cst_3 : f32
          %cast_74 = tensor.cast %2 : tensor<5xf32> to tensor<?xf32>
          %304 = arith.minui %false_39, %false_39 : i1
          %expanded_75 = tensor.expand_shape %8 [[0, 1]] : tensor<5xi16> into tensor<5x1xi16>
          %expanded_76 = tensor.expand_shape %17 [[0, 1]] : tensor<5xi64> into tensor<5x1xi64>
          memref.tensor_store %14, %alloc_19 : memref<5xi32>
          %305 = vector.broadcast %c1404000026_i32 : i32 to vector<4xi32>
          %dest_77, %accumulated_value_78 = vector.scan <xor>, %107, %305 {inclusive = false, reduction_dim = 0 : i64} : vector<5x4xi32>, vector<4xi32>
          %306 = arith.shrsi %in_63, %extracted_33 : i64
          %307 = arith.remf %cst, %cst_4 : f32
          %308 = vector.broadcast %extracted_41 : f32 to vector<5xf32>
          %309 = vector.fma %308, %91, %162 : vector<5xf32>
          %310 = affine.max affine_map<(d0, d1, d2, d3) -> ((-d0) mod 8)>(%111, %c6, %c8, %143)
          %311 = arith.maxui %true_44, %true_6 : i1
          %alloc_79 = memref.alloc() : memref<5xi16>
          memref.tensor_store %8, %alloc_79 : memref<5xi16>
          %312 = math.atan2 %transposed, %2 : tensor<5xf32>
          %313 = arith.maxf %extracted_41, %cst : f32
          %cast_80 = tensor.cast %44 : tensor<2xf32> to tensor<?xf32>
        }
        %collapsed_66 = tensor.collapse_shape %10 [[0, 1]] : tensor<5x4xi16> into tensor<20xi16>
        %260 = arith.cmpf ult, %cst_1, %cst_1 : f16
        %261 = arith.divui %c1_i32, %c507242457_i32 : i32
        %262 = arith.addi %true_5, %extracted_37 : i1
        memref.store %cst_1, %alloc_15[%c1] : memref<2xf16>
        %c15694403_i64 = arith.constant 15694403 : i64
        %cst_67 = arith.constant 1.000000e+00 : f32
        %263 = vector.transfer_read %6[%176], %cst_67 : tensor<2xf32>, vector<f32>
        %264 = math.ceil %18 : tensor<5xf32>
        %265 = vector.insert %c14916_i16, %78 [0] : i16 into vector<2xi16>
        %266 = index.maxs %72, %117
        %267 = math.absf %cst_67 : f32
        %268 = arith.addf %cst_0, %cst : f32
        %269 = math.floor %collapsed_31 : tensor<20xf32>
        %rank_68 = tensor.rank %cast_47 : tensor<?xi16>
        %270 = arith.andi %c507242457_i32, %c1404000026_i32 : i32
        %271 = vector.reduction <maxui>, %150 : vector<5xi32> into i32
        %272 = affine.if affine_set<(d0) : ((d0 - 2) mod 16 >= 0, (d0 - 2) * 16 >= 0, d0 - 2 >= 0, ((-d0) ceildiv 16) * 8 >= 0)>(%c8) -> memref<2xi64> {
          %285 = vector.bitcast %112 : vector<5xi32> to vector<5xi32>
          %286 = arith.ori %c1_i32, %c1_i32 : i32
          %287 = arith.minf %extracted_41, %cst_0 : f32
          %288 = arith.minf %cst_0, %cst_67 : f32
          %289 = affine.min affine_map<(d0, d1) -> ((d1 ceildiv 32) mod 128 + 32, d1 ceildiv 32 + 8)>(%c11, %c4)
          %290 = vector.extract %77[0] : vector<2xi1>
          %291 = index.maxs %c1, %156
          %292 = vector.broadcast %cst_1 : f16 to vector<2xf16>
          %293 = vector.broadcast %extracted_45 : i32 to vector<2xi32>
          %294 = vector.gather %alloc_15[%c15] [%293], %77, %292 : memref<2xf16>, vector<2xi32>, vector<2xi1>, vector<2xf16> into vector<2xf16>
          %alloc_71 = memref.alloc() : memref<2xi64>
          affine.yield %alloc_71 : memref<2xi64>
        } else {
          %285 = vector.matrix_multiply %182, %78 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 2 : i32} : (vector<5xi16>, vector<2xi16>) -> vector<10xi16>
          %286 = arith.ceildivsi %false_36, %false_39 : i1
          %287 = math.cttz %10 : tensor<5x4xi16>
          %288 = math.fma %6, %44, %6 : tensor<2xf32>
          %289 = math.exp %transposed : tensor<5xf32>
          %extracted_71 = tensor.extract %8[%c3] : tensor<5xi16>
          %alloc_72 = memref.alloc() : memref<5xi16>
          %290 = math.powf %6, %6 : tensor<2xf32>
          %alloc_73 = memref.alloc() : memref<2xi64>
          affine.yield %alloc_73 : memref<2xi64>
        }
        %273 = index.sizeof
        %274 = math.exp %extracted_41 : f32
        %expanded_69 = tensor.expand_shape %11 [[0, 1]] : tensor<5xi32> into tensor<5x1xi32>
        %275 = tensor.empty() : tensor<2xi1>
        %mapped_70 = linalg.map ins(%1, %alloc_8 : tensor<2xi1>, memref<2xi1>) outs(%275 : tensor<2xi1>)
          (%in_71: i1, %in_72: i1) {
            %285 = math.exp %collapsed : tensor<20xf32>
            %286 = memref.load %alloc_17[%c4, %c2] : memref<5x4xf32>
            %287 = index.maxs %117, %110
            bufferization.dealloc_tensor %0 : tensor<5xi16>
            %288 = arith.cmpi slt, %false, %true_30 : i1
            %289 = arith.remf %cst_4, %cst : f32
            %290 = vector.extract %107[0] : vector<5x4xi32>
            %291 = index.maxs %111, %266
            %292 = arith.minsi %61, %in_63 : i64
            memref.store %cst_1, %alloc_10[%c3, %c0] : memref<5x4xf16>
            %293 = math.round %collapsed_28 : tensor<20xf32>
            memref.store %c14916_i16, %alloc_22[] : memref<i16>
            %294 = math.exp %149 : tensor<2xf16>
            %295 = math.floor %44 : tensor<2xf32>
            %296 = index.mul %31, %c8
            %297 = arith.remf %cst_3, %cst_67 : f32
            %298 = arith.cmpf one, %extracted_41, %extracted : f32
            %299 = math.cos %6 : tensor<2xf32>
            %extracted_73 = tensor.extract %collapsed_27[%c8] : tensor<20xi16>
            %300 = arith.remf %cst_4, %cst_67 : f32
            bufferization.dealloc_tensor %cast : tensor<?xi16>
            bufferization.dealloc_tensor %275 : tensor<2xi1>
            %301 = arith.cmpf ugt, %extracted_41, %cst_4 : f32
            %302 = memref.load %alloc_9[%c3, %c1] : memref<5x4xi64>
            %303 = math.exp %transposed : tensor<5xf32>
            %304 = math.roundeven %6 : tensor<2xf32>
            %305 = math.round %2 : tensor<5xf32>
            %306 = memref.load %alloc_21[%c4, %c2] : memref<5x4xi16>
            %307 = vector.insertelement %c1_i32, %113[%c13 : index] : vector<5xi32>
            %true_74 = arith.constant true
            %false_75 = arith.constant false
            %308 = vector.transfer_read %alloc_8[%287], %false_75 : memref<2xi1>, vector<i1>
            %true_76 = arith.constant true
            %309 = math.exp %cst_0 : f32
            %true_77 = arith.constant true
            linalg.yield %true_77 : i1
          }
        %276 = bufferization.clone %alloc_17 : memref<5x4xf32> to memref<5x4xf32>
        %277 = arith.remsi %true_44, %true_30 : i1
        %278 = arith.minsi %c507242457_i32, %c1064313233_i32 : i32
        %279 = arith.shrsi %false, %true : i1
        %280 = vector.broadcast %cst_0 : f32 to vector<5x4xf32>
        %281 = vector.fma %280, %280, %280 : vector<5x4xf32>
        %c0_i16 = arith.constant 0 : i16
        %282 = vector.transfer_read %8[%c0], %c0_i16 : tensor<5xi16>, vector<i16>
        %283 = arith.ceildivsi %false_2, %90 : i1
        %284 = math.powf %collapsed_28, %collapsed : tensor<20xf32>
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %185 = vector.bitcast %92 : vector<5xf32> to vector<5xf32>
    %186 = arith.muli %extracted_45, %c1064313233_i32 : i32
    %187 = arith.minsi %false, %false_39 : i1
    %188 = arith.ceildivsi %61, %c1867734685_i64 : i64
    %generated_49 = tensor.generate %c15 {
    ^bb0(%arg1: index):
      %257 = arith.remsi %c1_i32, %extracted_45 : i32
      %258 = arith.addi %extracted_45, %c1404000026_i32 : i32
      %259 = math.absf %transposed : tensor<5xf32>
      %rank_63 = tensor.rank %cast_38 : tensor<?xi32>
      tensor.yield %extracted_41 : f32
    } : tensor<?xf32>
    %189 = vector.matrix_multiply %92, %91 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<5xf32>) -> vector<1xf32>
    memref.store %c14916_i16, %alloc_7[%c1] : memref<2xi16>
    %190 = arith.remsi %c-9675_i16, %c14916_i16 : i16
    %191 = arith.cmpf ult, %cst, %extracted : f32
    %192 = math.absf %cst_4 : f32
    %193 = math.absf %44 : tensor<2xf32>
    %194 = index.castu %c1867734685_i64 : i64 to index
    %195 = arith.subi %61, %extracted_33 : i64
    %196 = math.copysign %collapsed, %collapsed_28 : tensor<20xf32>
    %197 = math.round %6 : tensor<2xf32>
    %c0_i32_50 = arith.constant 0 : i32
    %c0_i32_51 = arith.constant 0 : i32
    %198 = vector.transfer_read %14[%c8], %c0_i32_51 : tensor<5xi32>, vector<i32>
    %199 = math.cttz %0 : tensor<5xi16>
    %200 = vector.flat_transpose %113 {columns = 5 : i32, rows = 1 : i32} : vector<5xi32> -> vector<5xi32>
    %false_52 = index.bool.constant false
    %201 = math.log1p %18 : tensor<5xf32>
    %202 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %185, %92, %cst_3 : vector<5xf32>, vector<5xf32> into f32
    %203 = math.absi %c1867734685_i64 : i64
    %204 = arith.divsi %c1_i32, %c507242457_i32 : i32
    %205 = math.log %18 : tensor<5xf32>
    %206 = math.tan %extracted_41 : f32
    %207 = index.castu %c-9675_i16 : i16 to index
    %208 = vector.load %alloc_13[%c0] : memref<2xi16>, vector<5xi16>
    %209 = index.sub %139, %53
    %210 = vector.insert %c-9675_i16, %182 [2] : i16 into vector<5xi16>
    %extracted_53 = tensor.extract %cast_38[%c0] : tensor<?xi32>
    %211 = index.ceildivs %160, %72
    %212 = bufferization.clone %alloc_15 : memref<2xf16> to memref<2xf16>
    %213 = math.round %149 : tensor<2xf16>
    %214 = math.roundeven %cst : f32
    %215 = arith.divf %cst_1, %cst_1 : f16
    %216 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %112, %200, %c507242457_i32 : vector<5xi32>, vector<5xi32> into i32
    %217 = arith.shrsi %extracted_53, %c0_i32_50 : i32
    %218 = bufferization.to_tensor %alloc_15 : memref<2xf16>
    %219 = math.cos %218 : tensor<2xf16>
    %220 = memref.alloca_scope  -> (f16) {
      %257 = math.log %transposed : tensor<5xf32>
      %258 = math.ctlz %true_30 : i1
      %259 = math.ipowi %12, %12 : tensor<5x4xi64>
      %260 = tensor.empty() : tensor<5xi64>
      %mapped_63 = linalg.map ins(%4, %alloc_18, %123 : tensor<5xi64>, memref<5xi64>, memref<5xi64>) outs(%260 : tensor<5xi64>)
        (%in: i64, %in_67: i64, %in_68: i64) {
          %289 = vector.gather %alloc_19[%c0] [%107], %106, %107 : memref<5xi32>, vector<5x4xi32>, vector<5x4xi1>, vector<5x4xi32> into vector<5x4xi32>
          %290 = math.round %cst_0 : f32
          bufferization.dealloc_tensor %16 : tensor<5xi64>
          %291 = math.rsqrt %18 : tensor<5xf32>
          %292 = math.tan %2 : tensor<5xf32>
          %cst_69 = arith.constant 6.048000e+03 : f16
          bufferization.dealloc_tensor %149 : tensor<2xf16>
          %293 = math.exp %149 : tensor<2xf16>
          %294 = arith.divf %cst_4, %cst : f32
          %295 = memref.realloc %alloc_12 : memref<5xi32> to memref<5xi32>
          %cst_70 = arith.constant 1.81909504E+9 : f32
          %296 = math.powf %149, %218 : tensor<2xf16>
          %inserted_71 = tensor.insert %61 into %12[%c0, %c1] : tensor<5x4xi64>
          %false_72 = index.bool.constant false
          %297 = math.sqrt %2 : tensor<5xf32>
          %298 = vector.broadcast %c1_i32 : i32 to vector<4xi32>
          %299 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<xor>} %112, %289, %298 : vector<5xi32>, vector<5x4xi32> into vector<4xi32>
          %300 = math.copysign %13, %18 : tensor<5xf32>
          %301 = arith.ceildivsi %false_72, %false_72 : i1
          %302 = affine.min affine_map<(d0) -> (0, (d0 - 128) * 128, d0)>(%127)
          memref.store %c-9675_i16, %alloc_13[%c0] : memref<2xi16>
          %303 = arith.ori %c-9675_i16, %c-9675_i16 : i16
          %c1_i32_73 = arith.constant 1 : i32
          %304 = vector.transfer_read %54[%143, %156], %c1_i32_73 : tensor<5x4xi32>, vector<i32>
          %305 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %136, %136, %in : vector<5xi64>, vector<5xi64> into i64
          %inserted_74 = tensor.insert %extracted_33 into %12[%c1, %c0] : tensor<5x4xi64>
          %306 = math.absi %true_6 : i1
          %c1577919208_i32 = arith.constant 1577919208 : i32
          %alloc_75 = memref.alloc() : memref<5xi16>
          memref.tensor_store %0, %alloc_75 : memref<5xi16>
          %307 = bufferization.to_tensor %alloc_14 : memref<5x4xi64>
          %308 = math.log %13 : tensor<5xf32>
          %309 = math.cos %13 : tensor<5xf32>
          %310 = arith.addi %90, %false_72 : i1
          %311 = arith.subi %false_36, %false_52 : i1
          %c1_i64_76 = arith.constant 1 : i64
          linalg.yield %c1_i64_76 : i64
        }
      bufferization.dealloc_tensor %6 : tensor<2xf32>
      %261 = index.add %145, %c4
      %262 = arith.remf %cst_1, %cst_1 : f16
      %263 = math.cos %extracted : f32
      %264 = vector.broadcast %c1_i32 : i32 to vector<4xi32>
      %265 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxsi>} %107, %112, %264 : vector<5x4xi32>, vector<5xi32> into vector<4xi32>
      %266 = index.sizeof
      %267 = arith.divsi %false_52, %true_44 : i1
      %268 = math.expm1 %collapsed_28 : tensor<20xf32>
      %269 = math.ipowi %73, %260 : tensor<5xi64>
      %270 = math.log2 %transposed : tensor<5xf32>
      memref.copy %64, %alloc_15 : memref<2xf16> to memref<2xf16>
      %271 = math.log %transposed : tensor<5xf32>
      %272 = index.casts %false_52 : i1 to index
      %273 = index.sizeof
      %274 = vector.broadcast %extracted_33 : i64 to vector<4x4xi64>
      %275 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %108, %105, %274 : vector<5x4xi64>, vector<5x4xi64> into vector<4x4xi64>
      %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %189, %189, %extracted : vector<1xf32>, vector<1xf32> into f32
      %277 = math.ipowi %true_6, %true_6 : i1
      %generated_64 = tensor.generate %117 {
      ^bb0(%arg1: index):
        %289 = math.sqrt %cst_3 : f32
        %alloca_67 = memref.alloca() : memref<5x4xf32>
        %290 = vector.create_mask %72 : vector<5xi1>
        %291 = math.ipowi %true, %extracted_37 : i1
        tensor.yield %true : i1
      } : tensor<?xi1>
      %278 = bufferization.to_memref %generated_43 : memref<?xf32>
      %279 = arith.minsi %c1064313233_i32, %c1064313233_i32 : i32
      %true_65 = index.bool.constant true
      %280 = tensor.empty() : tensor<5x5x5xi16>
      %281 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%280 : tensor<5x5x5xi16>) {
      ^bb0(%out: i16):
        %289 = index.divu %c5, %145
        %290 = arith.remf %cst_3, %cst : f32
        %291 = math.round %collapsed_31 : tensor<20xf32>
        %292 = math.floor %collapsed_28 : tensor<20xf32>
        %293 = arith.remf %cst, %extracted : f32
        %294 = arith.minsi %true_65, %false : i1
        %295 = arith.remf %cst_4, %cst_4 : f32
        %296 = vector.broadcast %true_44 : i1 to vector<4xi1>
        %dest_67, %accumulated_value_68 = vector.scan <maxsi>, %106, %296 {inclusive = false, reduction_dim = 0 : i64} : vector<5x4xi1>, vector<4xi1>
        %alloc_69 = memref.alloc() : memref<4x5xi64>
        %297 = tensor.empty() : tensor<5x5xi64>
        %298 = linalg.matmul ins(%59, %alloc_69 : tensor<5x4xi64>, memref<4x5xi64>) outs(%297 : tensor<5x5xi64>) -> tensor<5x5xi64>
        %299 = vector.insert %c0_i32_50, %200 [1] : i32 into vector<5xi32>
        %300 = affine.min affine_map<(d0) -> (-d0)>(%c10)
        %301 = arith.muli %extracted_33, %c1867734685_i64 : i64
        memref.assume_alignment %alloc_18, 8 : memref<5xi64>
        %302 = math.absf %18 : tensor<5xf32>
        %303 = math.ipowi %out, %c14916_i16 : i16
        %304 = memref.atomic_rmw ori %c-9675_i16, %alloc_21[%c0, %c2] : (i16, memref<5x4xi16>) -> i16
        bufferization.dealloc_tensor %5 : tensor<2xi64>
        %305 = vector.maskedload %alloc_9[%c1, %c1], %84, %137 : memref<5x4xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
        %306 = vector.maskedload %alloc_19[%c1], %84, %113 : memref<5xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
        %307 = math.ctpop %true : i1
        %308 = index.sizeof
        %309 = arith.divf %cst_3, %cst_3 : f32
        %310 = math.round %18 : tensor<5xf32>
        %311 = math.ctpop %153 : tensor<5x2xi64>
        %312 = arith.minf %cst_1, %cst_1 : f16
        %313 = arith.remf %cst_4, %cst_0 : f32
        %314 = math.log10 %3 : tensor<5x4xf32>
        %315 = math.round %2 : tensor<5xf32>
        %alloca_70 = memref.alloca() : memref<5xi16>
        %316 = vector.multi_reduction <or>, %112, %200 [] : vector<5xi32> to vector<5xi32>
        %317 = affine.max affine_map<(d0, d1) -> (8, d1, d1)>(%rank, %40)
        %318 = arith.floordivsi %extracted_37, %true_65 : i1
        linalg.yield %c14916_i16 : i16
      } -> tensor<5x5x5xi16>
      %282 = index.castu %c-9675_i16 : i16 to index
      %283 = arith.cmpf uge, %cst, %cst_0 : f32
      %284 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %136, %137, %c1867734685_i64 : vector<5xi64>, vector<5xi64> into i64
      %285 = math.sqrt %collapsed_31 : tensor<20xf32>
      %286 = math.cos %218 : tensor<2xf16>
      %287 = tensor.empty() : tensor<5x5x5xi16>
      %alloc_66 = memref.alloc() : memref<5x5xi16>
      %288 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_66, %8 : memref<5x5xi16>, tensor<5xi16>) outs(%287 : tensor<5x5x5xi16>) {
      ^bb0(%in: i16, %in_67: i16, %out: i16):
        %289 = arith.minf %extracted, %cst_4 : f32
        %290 = vector.broadcast %extracted_53 : i32 to vector<2xi32>
        %291 = vector.maskedload %alloc_19[%c0], %77, %290 : memref<5xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
        %292 = vector.broadcast %cst_4 : f32 to vector<5xf32>
        %293 = vector.fma %292, %91, %185 : vector<5xf32>
        %294 = index.maxu %194, %72
        %295 = math.log2 %extracted : f32
        %alloca_68 = memref.alloca() : memref<2xf16>
        %296 = arith.subi %false_52, %true_6 : i1
        %297 = vector.insert %in, %85 [4] : i16 into vector<5xi16>
        %298 = memref.realloc %alloc_11 : memref<5xi32> to memref<4xi32>
        %collapsed_69 = tensor.collapse_shape %expanded [[0, 1]] : tensor<5x1xi32> into tensor<5xi32>
        %299 = memref.atomic_rmw muli %c1_i32, %alloc_19[%c4] : (i32, memref<5xi32>) -> i32
        %300 = arith.remf %cst_0, %cst_0 : f32
        %301 = affine.load %123[%c11] : memref<5xi64>
        %302 = vector.create_mask %c14 : vector<5xi1>
        %303 = vector.flat_transpose %182 {columns = 5 : i32, rows = 1 : i32} : vector<5xi16> -> vector<5xi16>
        %304 = index.sub %117, %117
        %305 = vector.broadcast %c1_i32 : i32 to vector<5x5xi32>
        %306 = vector.outerproduct %200, %113, %305 {kind = #vector.kind<or>} : vector<5xi32>, vector<5xi32>
        %307 = bufferization.to_tensor %123 : memref<5xi64>
        %dest_70, %accumulated_value_71 = vector.scan <minui>, %105, %177 {inclusive = true, reduction_dim = 0 : i64} : vector<5x4xi64>, vector<4xi64>
        %308 = vector.shuffle %105, %105 [0, 2, 3, 6, 7, 8] : vector<5x4xi64>, vector<5x4xi64>
        %309 = vector.broadcast %cst_1 : f16 to vector<5xf16>
        %310 = vector.maskedload %alloc_10[%c0, %c0], %302, %309 : memref<5x4xf16>, vector<5xi1>, vector<5xf16> into vector<5xf16>
        %311 = arith.minf %cst_1, %cst_1 : f16
        %312 = math.exp2 %cst_3 : f32
        %collapsed_72 = tensor.collapse_shape %expanded [[0, 1]] : tensor<5x1xi32> into tensor<5xi32>
        %313 = math.log1p %collapsed_31 : tensor<20xf32>
        memref.tensor_store %collapsed_72, %alloc_11 : memref<5xi32>
        %314 = vector.create_mask %c9 : vector<2xi1>
        %c1161092213_i64 = arith.constant 1161092213 : i64
        %315 = arith.subi %extracted_53, %c0_i32_50 : i32
        %316 = vector.flat_transpose %314 {columns = 1 : i32, rows = 2 : i32} : vector<2xi1> -> vector<2xi1>
        %317 = arith.maxui %c1_i32, %extracted_53 : i32
        %318 = arith.addi %extracted_53, %c1_i32 : i32
        linalg.yield %c-9675_i16 : i16
      } -> tensor<5x5x5xi16>
      memref.alloca_scope.return %cst_1 : f16
    }
    %221 = arith.divsi %extracted_33, %extracted_33 : i64
    %222 = math.exp2 %cst_3 : f32
    %223 = math.absi %4 : tensor<5xi64>
    %224 = index.sub %207, %c1
    %225 = math.ceil %6 : tensor<2xf32>
    memref.tensor_store %73, %alloc_18 : memref<5xi64>
    %226 = vector.broadcast %c1867734685_i64 : i64 to vector<5x5xi64>
    %227 = vector.outerproduct %137, %136, %226 {kind = #vector.kind<add>} : vector<5xi64>, vector<5xi64>
    %228 = arith.minsi %true_44, %false_39 : i1
    %229 = math.fma %149, %149, %218 : tensor<2xf16>
    %c1395650819_i64 = arith.constant 1395650819 : i64
    %230 = math.absi %22 : tensor<i64>
    %231 = index.casts %28 : index to i32
    %232 = index.ceildivs %28, %c2
    %233 = vector.reduction <minf>, %92 : vector<5xf32> into f32
    %234 = index.add %194, %156
    %235 = math.ctpop %23 : tensor<i64>
    %236 = math.exp %3 : tensor<5x4xf32>
    %237 = vector.maskedload %alloc_17[%c1, %c0], %84, %39 : memref<5x4xf32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
    %238 = index.maxu %207, %40
    %alloc_54 = memref.alloc() : memref<4x5xi64>
    %239 = tensor.empty() : tensor<5x5xi64>
    %240 = linalg.matmul ins(%12, %alloc_54 : tensor<5x4xi64>, memref<4x5xi64>) outs(%239 : tensor<5x5xi64>) -> tensor<5x5xi64>
    %rank_55 = tensor.rank %13 : tensor<5xf32>
    %c1_i64 = arith.constant 1 : i64
    %241 = vector.transfer_read %4[%224], %c1_i64 : tensor<5xi64>, vector<i64>
    %242 = index.sub %c14, %28
    %false_56 = index.bool.constant false
    scf.index_switch %176 
    case 1 {
      %257 = memref.load %alloc[%c1] : memref<5xi64>
      %generated_63 = tensor.generate %c10 {
      ^bb0(%arg1: index):
        %268 = index.sizeof
        %269 = math.absi %4 : tensor<5xi64>
        %270 = arith.maxui %c507242457_i32, %extracted_53 : i32
        %271 = math.cos %collapsed : tensor<20xf32>
        tensor.yield %true_30 : i1
      } : tensor<?xi1>
      %258 = vector.broadcast %cst_0 : f32 to vector<5xf32>
      %259 = vector.fma %258, %237, %91 : vector<5xf32>
      %260 = affine.if affine_set<(d0, d1, d2, d3) : (d1 == 0)>(%c5, %c5, %c10, %c10) -> i32 {
        bufferization.dealloc_tensor %cast_29 : tensor<?x?xi16>
        %268 = vector.create_mask %145, %242 : vector<5x4xi1>
        %269 = math.atan2 %220, %220 : f16
        %rank_66 = tensor.rank %239 : tensor<5x5xi64>
        %270 = math.log2 %220 : f16
        %271 = memref.realloc %alloc_16 : memref<5xf32> to memref<5xf32>
        %272 = arith.addi %c1_i64, %extracted_33 : i64
        %273 = index.mul %c15, %72
        affine.yield %c1404000026_i32 : i32
      } else {
        %268 = memref.realloc %212 : memref<2xf16> to memref<2xf16>
        %collapsed_66 = tensor.collapse_shape %expanded [[0, 1]] : tensor<5x1xi32> into tensor<5xi32>
        %269 = arith.cmpi sle, %false_2, %extracted_37 : i1
        %false_67 = index.bool.constant false
        %true_68 = index.bool.constant true
        %270 = affine.max affine_map<(d0, d1, d2) -> ((d0 mod 8) floordiv 64 + 18)>(%c11, %31, %c9)
        %271 = math.fma %cst_3, %extracted_41, %cst : f32
        %272 = memref.load %alloc_20[%c4] : memref<5xi32>
        affine.yield %c1064313233_i32 : i32
      }
      %261 = math.round %collapsed : tensor<20xf32>
      %262 = arith.minsi %c1_i64, %c1867734685_i64 : i64
      memref.tensor_store %9, %alloc_7 : memref<2xi16>
      %263 = arith.ceildivsi %false_52, %false_2 : i1
      %264 = math.round %3 : tensor<5x4xf32>
      %extracted_64 = tensor.extract %12[%c4, %c2] : tensor<5x4xi64>
      %265 = math.cttz %true_6 : i1
      %266 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %189, %189, %cst_4 : vector<1xf32>, vector<1xf32> into f32
      %267 = vector.extract_strided_slice %106 {offsets = [0], sizes = [4], strides = [1]} : vector<5x4xi1> to vector<4x4xi1>
      memref.alloca_scope  {
        %268 = math.fma %cst_4, %extracted_41, %extracted : f32
        %269 = tensor.empty() : tensor<2xi32>
        %270 = vector.gather %269[%c6] [%179], %84, %113 : tensor<2xi32>, vector<5xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
        %271 = math.absf %13 : tensor<5xf32>
        %272 = math.log %3 : tensor<5x4xf32>
        affine.store %c0_i32_50, %alloc_20[%c1] : memref<5xi32>
        %273 = vector.extract %107[4] : vector<5x4xi32>
        %274 = index.mul %209, %rank_55
        %275 = vector.multi_reduction <mul>, %177, %61 [0] : vector<4xi64> to i64
        %276 = bufferization.to_tensor %alloc_22 : memref<i16>
        %277 = tensor.empty() : tensor<5x4xi64>
        %278 = linalg.matmul ins(%239, %59 : tensor<5x5xi64>, tensor<5x4xi64>) outs(%277 : tensor<5x4xi64>) -> tensor<5x4xi64>
        %279 = arith.divui %c1404000026_i32, %c0_i32_50 : i32
        %cast_66 = tensor.cast %0 : tensor<5xi16> to tensor<?xi16>
        %280 = arith.divsi %c14916_i16, %c14916_i16 : i16
        %281 = arith.shrsi %61, %extracted_33 : i64
        %282 = index.mul %31, %rank
        %283 = vector.load %alloc_10[%c2, %c0] : memref<5x4xf16>, vector<2xf16>
        %collapsed_67 = tensor.collapse_shape %239 [[0, 1]] : tensor<5x5xi64> into tensor<25xi64>
        %284 = vector.shuffle %84, %84 [0, 6, 7] : vector<5xi1>, vector<5xi1>
        %285 = math.exp %collapsed_28 : tensor<20xf32>
        memref.tensor_store %11, %alloc_20 : memref<5xi32>
        %286 = arith.minui %false_2, %true : i1
        %287 = vector.transpose %78, [0] : vector<2xi16> to vector<2xi16>
        bufferization.dealloc_tensor %9 : tensor<2xi16>
        %288 = index.mul %110, %111
        %289 = math.sqrt %18 : tensor<5xf32>
        %290 = arith.remui %extracted_33, %c1_i64 : i64
        %291 = math.cos %collapsed_28 : tensor<20xf32>
        %292 = math.fma %extracted, %cst_4, %cst_4 : f32
        %293 = vector.splat %c-9675_i16 : vector<5xi16>
        %294 = math.log10 %collapsed : tensor<20xf32>
        %cast_68 = tensor.cast %73 : tensor<5xi64> to tensor<?xi64>
        %295 = vector.extract %108[1] : vector<5x4xi64>
      }
      vector.print %189 : vector<1xf32>
      %inserted_65 = tensor.insert %c1_i64 into %184[%c1] : tensor<5xi64>
      scf.yield
    }
    case 2 {
      %257 = math.absf %13 : tensor<5xf32>
      %258 = arith.andi %false, %false : i1
      bufferization.dealloc_tensor %44 : tensor<2xf32>
      %cst_63 = arith.constant 1.000000e+00 : f32
      %259 = vector.transfer_read %alloc_16[%238], %cst_63 : memref<5xf32>, vector<f32>
      %260 = vector.create_mask %rank : vector<5xi1>
      %cst_64 = arith.constant 1.000000e+00 : f16
      %cst_65 = arith.constant 0.000000e+00 : f16
      %261 = vector.transfer_read %64[%40], %cst_65 : memref<2xf16>, vector<f16>
      %cst_66 = arith.constant 6.185600e+04 : f16
      %262 = vector.flat_transpose %128 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
      %263 = memref.atomic_rmw mulf %220, %alloc_10[%c4, %c3] : (f16, memref<5x4xf16>) -> f16
      %expanded_67 = tensor.expand_shape %14 [[0, 1]] : tensor<5xi32> into tensor<5x1xi32>
      %cast_68 = tensor.cast %1 : tensor<2xi1> to tensor<?xi1>
      %264 = arith.minui %c1_i64, %61 : i64
      %265 = math.sqrt %cst : f32
      %266 = arith.cmpf one, %extracted_41, %extracted : f32
      %267 = arith.remf %cst_4, %cst : f32
      %268 = math.cos %2 : tensor<5xf32>
      scf.yield
    }
    case 3 {
      bufferization.dealloc_tensor %transposed : tensor<5xf32>
      %257 = index.castu %c1 : index to i32
      %258 = tensor.empty() : tensor<5x5x5xi16>
      %259 = tensor.empty() : tensor<5x5xi16>
      %260 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%259, %8, %259 : tensor<5x5xi16>, tensor<5xi16>, tensor<5x5xi16>) outs(%258 : tensor<5x5x5xi16>) {
      ^bb0(%in: i16, %in_66: i16, %in_67: i16, %out: i16):
        %276 = memref.realloc %alloc_15 : memref<2xf16> to memref<2xf16>
        bufferization.dealloc_tensor %4 : tensor<5xi64>
        %277 = bufferization.to_tensor %alloc_8 : memref<2xi1>
        memref.copy %alloc_14, %alloc_9 : memref<5x4xi64> to memref<5x4xi64>
        %278 = vector.extract %200[0] : vector<5xi32>
        %279 = memref.realloc %alloc_12 : memref<5xi32> to memref<5xi32>
        %280 = arith.ceildivsi %c1_i64, %61 : i64
        %281 = arith.floordivsi %false_56, %true : i1
        %282 = arith.minf %extracted_41, %cst_3 : f32
        %c19 = arith.constant 19 : index
        %inserted_68 = tensor.insert %extracted_41 into %collapsed_28[%c19] : tensor<20xf32>
        %283 = vector.load %alloc_9[%c2, %c1] : memref<5x4xi64>, vector<5xi64>
        %extracted_69 = tensor.extract %10[%c3, %c2] : tensor<5x4xi16>
        %284 = math.exp %3 : tensor<5x4xf32>
        %285 = arith.divsi %true_6, %true : i1
        %286 = arith.remsi %extracted_33, %c1_i64 : i64
        %expanded_70 = tensor.expand_shape %12 [[0], [1, 2]] : tensor<5x4xi64> into tensor<5x4x1xi64>
        %287 = index.sub %c9, %c10
        %288 = arith.muli %out, %c14916_i16 : i16
        memref.store %220, %64[%c1] : memref<2xf16>
        %alloc_71 = memref.alloc() : memref<i64>
        memref.tensor_store %22, %alloc_71 : memref<i64>
        %289 = bufferization.to_tensor %alloc_22 : memref<i16>
        %290 = arith.remf %extracted_41, %cst_3 : f32
        %291 = math.expm1 %2 : tensor<5xf32>
        %292 = vector.broadcast %cst_0 : f32 to vector<2xf32>
        %293 = vector.fma %292, %292, %292 : vector<2xf32>
        %294 = vector.broadcast %cst_3 : f32 to vector<2xf32>
        %295 = vector.fma %294, %294, %292 : vector<2xf32>
        %296 = math.log2 %3 : tensor<5x4xf32>
        %297 = index.add %c12, %139
        %rank_72 = tensor.rank %23 : tensor<i64>
        %expanded_73 = tensor.expand_shape %2 [[0, 1]] : tensor<5xf32> into tensor<5x1xf32>
        %298 = math.tan %collapsed_31 : tensor<20xf32>
        %cast_74 = tensor.cast %54 : tensor<5x4xi32> to tensor<?x?xi32>
        memref.tensor_store %21, %alloc : memref<5xi64>
        linalg.yield %out : i16
      } -> tensor<5x5x5xi16>
      %261 = arith.floordivsi %false_2, %true_44 : i1
      %262 = tensor.empty() : tensor<5x5x5xi16>
      %263 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%262 : tensor<5x5x5xi16>) {
      ^bb0(%out: i16):
        %extracted_66 = tensor.extract %10[%c0, %c2] : tensor<5x4xi16>
        %276 = math.fma %cst_4, %extracted, %cst_4 : f32
        %277 = arith.muli %c1867734685_i64, %c1_i64 : i64
        %278 = affine.min affine_map<(d0, d1, d2) -> (d1 + d2 floordiv 128)>(%194, %96, %c14)
        %279 = index.mul %145, %160
        %280 = arith.addf %extracted, %extracted : f32
        %281 = index.sub %120, %c6
        %inserted_67 = tensor.insert %cst_0 into %13[%c4] : tensor<5xf32>
        %282 = bufferization.to_tensor %alloc_17 : memref<5x4xf32>
        %283 = vector.broadcast %c14916_i16 : i16 to vector<4xi16>
        %284 = vector.broadcast %false_56 : i1 to vector<4xi1>
        %285 = vector.maskedload %alloc_22[], %284, %283 : memref<i16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
        %286 = math.absi %false : i1
        %287 = math.log %6 : tensor<2xf32>
        %288 = math.log1p %transposed : tensor<5xf32>
        %289 = index.sizeof
        %290 = math.tan %transposed : tensor<5xf32>
        %291 = index.divu %c4, %c0
        %292 = index.sub %232, %72
        %293 = arith.remsi %extracted_45, %c1064313233_i32 : i32
        %294 = math.cttz %48 : tensor<5x4xi64>
        %295 = math.log10 %extracted : f32
        %296 = math.powf %extracted, %cst : f32
        %297 = math.atan %13 : tensor<5xf32>
        %298 = vector.load %alloc_22[] : memref<i16>, vector<2xi16>
        %299 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 mod 128, -d2)>(%120, %194, %c3, %143)
        %300 = affine.max affine_map<(d0, d1) -> ((-(d1 ceildiv 4) - 32) ceildiv 128, -d0)>(%c9, %207)
        %301 = index.mul %238, %72
        %302 = vector.extract %162[3] : vector<5xf32>
        %expanded_68 = tensor.expand_shape %9 [[0, 1]] : tensor<2xi16> into tensor<2x1xi16>
        %303 = index.sub %c1, %289
        %304 = math.absi %8 : tensor<5xi16>
        %305 = arith.cmpf ult, %cst_3, %cst : f32
        %306 = memref.load %123[%c2] : memref<5xi64>
        linalg.yield %c-9675_i16 : i16
      } -> tensor<5x5x5xi16>
      %264 = vector.broadcast %cst_4 : f32 to vector<5x5xf32>
      %265 = vector.outerproduct %185, %38, %264 {kind = #vector.kind<minf>} : vector<5xf32>, vector<5xf32>
      %266 = vector.multi_reduction <minsi>, %85, %83 [] : vector<5xi16> to vector<5xi16>
      %267 = vector.create_mask %111 : vector<5xi1>
      %268 = memref.alloca_scope  -> (memref<5x4xf16>) {
        %276 = index.mul %31, %117
        %rank_66 = tensor.rank %15 : tensor<5xi64>
        %277 = math.round %extracted_41 : f32
        %278 = math.exp %6 : tensor<2xf32>
        %cast_67 = tensor.cast %14 : tensor<5xi32> to tensor<?xi32>
        %279 = math.cttz %0 : tensor<5xi16>
        %280 = arith.remf %cst_0, %cst_4 : f32
        %expanded_68 = tensor.expand_shape %16 [[0, 1]] : tensor<5xi64> into tensor<5x1xi64>
        %cast_69 = tensor.cast %59 : tensor<5x4xi64> to tensor<?x?xi64>
        %281 = arith.cmpf ogt, %extracted, %cst_4 : f32
        %282 = index.maxs %c0, %127
        %rank_70 = tensor.rank %4 : tensor<5xi64>
        %283 = tensor.empty() : tensor<5x4xi1>
        %284 = vector.gather %283[%211, %c4] [%179], %267, %267 : tensor<5x4xi1>, vector<5xi32>, vector<5xi1>, vector<5xi1> into vector<5xi1>
        %cast_71 = tensor.cast %15 : tensor<5xi64> to tensor<?xi64>
        %285 = math.exp2 %18 : tensor<5xf32>
        %c1_i64_72 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %286 = vector.transfer_read %17[%c4], %c0_i64 : tensor<5xi64>, vector<i64>
        %287 = index.sizeof
        %288 = arith.subi %90, %false_56 : i1
        %289 = vector.create_mask %40, %rank : vector<5x4xi1>
        %290 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %136, %137, %c1_i64 : vector<5xi64>, vector<5xi64> into i64
        %cst_73 = arith.constant 1.000000e+00 : f16
        %cst_74 = arith.constant 0.000000e+00 : f16
        %291 = vector.transfer_read %alloc_15[%40], %cst_74 : memref<2xf16>, vector<f16>
        %292 = arith.remf %220, %220 : f16
        %293 = vector.broadcast %cst_3 : f32 to vector<5xf32>
        %294 = vector.fma %293, %293, %185 : vector<5xf32>
        %295 = vector.matrix_multiply %267, %267 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi1>, vector<5xi1>) -> vector<1xi1>
        %296 = affine.load %alloc_20[%c9] : memref<5xi32>
        %297 = vector.insert %c-9675_i16, %78 [1] : i16 into vector<2xi16>
        %298 = index.casts %c10 : index to i32
        %299 = index.maxs %c0, %c9
        %300 = memref.load %alloc_9[%c4, %c3] : memref<5x4xi64>
        %301 = math.log2 %6 : tensor<2xf32>
        %302 = arith.addi %false, %extracted_37 : i1
        %collapsed_75 = tensor.collapse_shape %59 [[0, 1]] : tensor<5x4xi64> into tensor<20xi64>
        memref.alloca_scope.return %alloc_10 : memref<5x4xf16>
      }
      %inserted_63 = tensor.insert %cst_1 into %218[%c1] : tensor<2xf16>
      %269 = math.atan %cst_4 : f32
      %270 = vector.multi_reduction <add>, %91, %extracted_41 [0] : vector<5xf32> to f32
      %271 = vector.broadcast %220 : f16 to vector<4xf16>
      %dest_64, %accumulated_value_65 = vector.scan <minf>, %99, %271 {inclusive = false, reduction_dim = 0 : i64} : vector<5x4xf16>, vector<4xf16>
      %272 = arith.maxf %cst_3, %extracted : f32
      %273 = math.exp %13 : tensor<5xf32>
      %274 = vector.broadcast %c1404000026_i32 : i32 to vector<4xi32>
      %275 = vector.insert %274, %107 [0] : vector<4xi32> into vector<5x4xi32>
      scf.yield
    }
    case 4 {
      %257 = arith.floordivsi %c1_i32, %extracted_53 : i32
      %258 = arith.ori %extracted_53, %c0_i32_50 : i32
      %cast_63 = tensor.cast %13 : tensor<5xf32> to tensor<?xf32>
      %alloca_64 = memref.alloca() : memref<5xi64>
      bufferization.dealloc_tensor %cast_63 : tensor<?xf32>
      %259 = index.sizeof
      %260 = vector.shuffle %85, %78 [0, 1, 2, 3, 4, 5, 6] : vector<5xi16>, vector<2xi16>
      affine.store %true_30, %alloc_8[%c9] : memref<2xi1>
      %261 = arith.ceildivsi %c1404000026_i32, %c1_i32 : i32
      %262 = arith.remf %cst, %extracted_41 : f32
      %263 = arith.minsi %c1064313233_i32, %c1404000026_i32 : i32
      %264 = index.add %156, %c4
      %inserted_65 = tensor.insert %c-9675_i16 into %131[%c3, %c0] : tensor<5x2xi16>
      %265 = arith.remf %extracted, %cst_4 : f32
      %collapsed_66 = tensor.collapse_shape %12 [[0, 1]] : tensor<5x4xi64> into tensor<20xi64>
      %266 = arith.andi %true_30, %false_36 : i1
      scf.yield
    }
    default {
      %257 = index.add %c2, %234
      %cst_63 = arith.constant 1.000000e+00 : f32
      %cst_64 = arith.constant 0.000000e+00 : f32
      %258 = vector.transfer_read %3[%28, %156], %cst_64 : tensor<5x4xf32>, vector<f32>
      %259 = math.powf %collapsed, %collapsed_28 : tensor<20xf32>
      %260 = arith.remf %extracted, %cst : f32
      %261 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<xor>} %136, %105, %177 : vector<5xi64>, vector<5x4xi64> into vector<4xi64>
      %262 = index.casts %117 : index to i32
      affine.for %arg1 = 0 to 2 {
      }
      %263 = math.rsqrt %44 : tensor<2xf32>
      %264 = index.casts %c1_i64 : i64 to index
      %265 = vector.multi_reduction <add>, %208, %c14916_i16 [0] : vector<5xi16> to i16
      %266 = vector.transpose %99, [1, 0] : vector<5x4xf16> to vector<4x5xf16>
      %267 = bufferization.to_memref %3 : memref<5x4xf32>
      %268 = math.log10 %2 : tensor<5xf32>
      %269 = arith.minf %cst_4, %cst_63 : f32
      %270 = math.round %6 : tensor<2xf32>
      %false_65 = arith.constant false
    }
    %243 = arith.floordivsi %c1_i32, %c0_i32_50 : i32
    %244 = math.log10 %6 : tensor<2xf32>
    %245 = index.sub %rank, %160
    %246 = affine.if affine_set<(d0, d1, d2) : ((d2 ceildiv 64) * 16 == 0, d2 * 128 == 0)>(%c4, %c15, %c5) -> i32 {
      %257 = arith.remf %cst_0, %cst_4 : f32
      %258 = arith.divsi %c1_i64, %c1867734685_i64 : i64
      %259 = vector.splat %true_44 : vector<2xi1>
      %260 = math.absi %false_52 : i1
      %261 = scf.index_switch %c7 -> tensor<5xi1> 
      case 1 {
        %267 = math.log10 %3 : tensor<5x4xf32>
        %268 = arith.remf %cst_3, %cst_0 : f32
        %from_elements = tensor.from_elements %c1404000026_i32, %extracted_45, %c0_i32_50, %extracted_53, %c1404000026_i32 : tensor<5xi32>
        %269 = math.roundeven %cst_1 : f16
        %cast_63 = tensor.cast %21 : tensor<5xi64> to tensor<?xi64>
        %270 = arith.remf %cst, %extracted : f32
        %271 = arith.addi %extracted_37, %false_36 : i1
        %272 = vector.shuffle %92, %38 [2, 4, 7, 9] : vector<5xf32>, vector<5xf32>
        %273 = index.sizeof
        %274 = vector.flat_transpose %179 {columns = 5 : i32, rows = 1 : i32} : vector<5xi32> -> vector<5xi32>
        %275 = arith.ceildivsi %c507242457_i32, %c1_i32 : i32
        %276 = vector.broadcast %cst_4 : f32 to vector<5xf32>
        %277 = vector.fma %276, %185, %92 : vector<5xf32>
        %278 = arith.minsi %extracted_33, %61 : i64
        %279 = index.sub %c14, %c7
        %280 = arith.shrsi %true_30, %false_2 : i1
        %281 = arith.negf %cst_4 : f32
        %282 = tensor.empty() : tensor<5xi1>
        scf.yield %282 : tensor<5xi1>
      }
      default {
        %267 = math.floor %3 : tensor<5x4xf32>
        %268 = math.round %extracted_41 : f32
        %269 = math.absi %12 : tensor<5x4xi64>
        %270 = math.exp2 %cst : f32
        %271 = index.mul %c7, %245
        %272 = math.round %6 : tensor<2xf32>
        %273 = math.floor %18 : tensor<5xf32>
        %274 = arith.andi %true_5, %false_2 : i1
        %275 = arith.muli %c1404000026_i32, %c507242457_i32 : i32
        %276 = math.fma %cst_4, %cst_4, %cst : f32
        %rank_63 = tensor.rank %expanded : tensor<5x1xi32>
        %277 = vector.broadcast %cst_1 : f16 to vector<5xf16>
        %278 = vector.maskedload %64[%c1], %84, %277 : memref<2xf16>, vector<5xi1>, vector<5xf16> into vector<5xf16>
        %279 = math.absi %c507242457_i32 : i32
        %280 = arith.minf %220, %cst_1 : f16
        %collapsed_64 = tensor.collapse_shape %cast_29 [[0, 1]] : tensor<?x?xi16> into tensor<?xi16>
        %281 = vector.load %alloc_11[%c4] : memref<5xi32>, vector<5xi32>
        %282 = tensor.empty() : tensor<5xi1>
        scf.yield %282 : tensor<5xi1>
      }
      %262 = math.powf %2, %13 : tensor<5xf32>
      %263 = tensor.empty() : tensor<5x5x5xi16>
      %264 = tensor.empty() : tensor<5x5xi16>
      %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%264, %0, %8 : tensor<5x5xi16>, tensor<5xi16>, tensor<5xi16>) outs(%263 : tensor<5x5x5xi16>) {
      ^bb0(%in: i16, %in_63: i16, %in_64: i16, %out: i16):
        %267 = math.atan2 %2, %18 : tensor<5xf32>
        %268 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %200, %179, %extracted_53 : vector<5xi32>, vector<5xi32> into i32
        %269 = index.add %40, %72
        %270 = arith.divf %cst_1, %cst_1 : f16
        %271 = math.atan %3 : tensor<5x4xf32>
        %272 = math.cos %cst_0 : f32
        %273 = vector.splat %143 : vector<5xindex>
        memref.store %extracted_53, %alloc_11[%c1] : memref<5xi32>
        %274 = vector.transpose %128, [0] : vector<1xi1> to vector<1xi1>
        %275 = bufferization.to_tensor %alloc_15 : memref<2xf16>
        %c-17618_i16 = arith.constant -17618 : i16
        %276 = math.rsqrt %218 : tensor<2xf16>
        %277 = vector.insert %c1_i64, %136 [2] : i64 into vector<5xi64>
        %278 = arith.maxui %extracted_53, %c1064313233_i32 : i32
        %279 = arith.andi %in_64, %out : i16
        %280 = math.powf %149, %218 : tensor<2xf16>
        %rank_65 = tensor.rank %44 : tensor<2xf32>
        bufferization.dealloc_tensor %cast_40 : tensor<?xi32>
        %281 = vector.broadcast %c0_i32_50 : i32 to vector<4xi32>
        %282 = vector.broadcast %true_44 : i1 to vector<4xi1>
        %283 = vector.maskedload %alloc_20[%c2], %282, %281 : memref<5xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
        %284 = arith.addi %c14916_i16, %out : i16
        %from_elements = tensor.from_elements %c-9675_i16, %out, %out, %c14916_i16, %in_64 : tensor<5xi16>
        %285 = arith.addi %true_6, %false_36 : i1
        %286 = math.exp %2 : tensor<5xf32>
        %287 = math.round %cst_1 : f16
        %288 = index.maxs %28, %160
        %289 = math.roundeven %13 : tensor<5xf32>
        %c-29812_i16 = arith.constant -29812 : i16
        %290 = math.ctpop %extracted_33 : i64
        %cast_66 = tensor.cast %131 : tensor<5x2xi16> to tensor<?x?xi16>
        %291 = affine.max affine_map<(d0, d1, d2, d3) -> (d0)>(%c9, %117, %c1, %rank_65)
        %292 = math.sqrt %cst_4 : f32
        %293 = arith.subi %extracted_53, %c0_i32_50 : i32
        linalg.yield %c-9675_i16 : i16
      } -> tensor<5x5x5xi16>
      %266 = arith.floordivsi %false_2, %false_52 : i1
      affine.yield %c507242457_i32 : i32
    } else {
      memref.tensor_store %12, %alloc_9 : memref<5x4xi64>
      %257 = bufferization.to_tensor %alloc_11 : memref<5xi32>
      %258 = vector.maskedload %alloc_13[%c1], %84, %182 : memref<2xi16>, vector<5xi1>, vector<5xi16> into vector<5xi16>
      %259 = arith.divsi %true_5, %true_30 : i1
      %260 = math.exp2 %6 : tensor<2xf32>
      %261 = arith.cmpf ole, %cst_4, %cst_0 : f32
      %262 = math.floor %2 : tensor<5xf32>
      %263 = math.atan2 %13, %2 : tensor<5xf32>
      affine.yield %extracted_45 : i32
    }
    %cast_57 = tensor.cast %10 : tensor<5x4xi16> to tensor<?x?xi16>
    %247 = arith.minf %cst_4, %cst_4 : f32
    %248 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %83, %85, %c-9675_i16 : vector<5xi16>, vector<5xi16> into i16
    %dest_58, %accumulated_value_59 = vector.scan <or>, %106, %84 {inclusive = true, reduction_dim = 1 : i64} : vector<5x4xi1>, vector<5xi1>
    %249 = vector.load %alloc_7[%c1] : memref<2xi16>, vector<5x4xi16>
    %250 = tensor.empty() : tensor<5xi16>
    %mapped_60 = linalg.map ins(%8, %8, %8 : tensor<5xi16>, tensor<5xi16>, tensor<5xi16>) outs(%250 : tensor<5xi16>)
      (%in: i16, %in_63: i16, %in_64: i16) {
        %257 = arith.floordivsi %true_6, %false_2 : i1
        %258 = arith.minf %cst_4, %cst_3 : f32
        %259 = arith.negf %extracted : f32
        %260 = vector.broadcast %cst : f32 to vector<5xf32>
        %261 = vector.fma %260, %162, %38 : vector<5xf32>
        %262 = math.cttz %extracted_45 : i32
        %263 = arith.divsi %61, %c1867734685_i64 : i64
        %264 = math.log10 %44 : tensor<2xf32>
        %265 = affine.for %arg1 = 0 to 68 iter_args(%arg2 = %collapsed_31) -> (tensor<20xf32>) {
          affine.yield %arg2 : tensor<20xf32>
        }
        %266 = math.ctpop %15 : tensor<5xi64>
        %267 = tensor.empty() : tensor<2xf16>
        %mapped_65 = linalg.map ins(%64 : memref<2xf16>) outs(%267 : tensor<2xf16>)
          (%in_66: f16) {
            %collapsed_67 = tensor.collapse_shape %153 [[0, 1]] : tensor<5x2xi64> into tensor<10xi64>
            %291 = vector.shuffle %261, %39 [2, 3, 7, 8, 9] : vector<5xf32>, vector<5xf32>
            %292 = bufferization.to_memref %collapsed_28 : memref<20xf32>
            %293 = vector.bitcast %136 : vector<5xi64> to vector<5xi64>
            %294 = memref.atomic_rmw maxs %extracted_53, %alloc_20[%c4] : (i32, memref<5xi32>) -> i32
            %295 = bufferization.clone %alloc_20 : memref<5xi32> to memref<5xi32>
            %296 = arith.remsi %false, %false_52 : i1
            %297 = arith.maxf %220, %cst_1 : f16
            %expanded_68 = tensor.expand_shape %collapsed_31 [[0, 1]] : tensor<20xf32> into tensor<20x1xf32>
            %298 = arith.floordivsi %in_63, %in : i16
            %299 = math.absi %c0_i32_50 : i32
            %300 = arith.subi %false_56, %true_6 : i1
            %301 = math.log2 %18 : tensor<5xf32>
            bufferization.dealloc_tensor %14 : tensor<5xi32>
            %302 = vector.multi_reduction <minf>, %261, %162 [] : vector<5xf32> to vector<5xf32>
            %303 = vector.broadcast %c1404000026_i32 : i32 to vector<2xi32>
            %304 = math.log %extracted : f32
            %305 = memref.atomic_rmw mulf %extracted_41, %alloc_17[%c1, %c0] : (f32, memref<5x4xf32>) -> f32
            %306 = math.expm1 %6 : tensor<2xf32>
            %307 = math.exp %extracted_41 : f32
            %308 = tensor.empty() : tensor<4x5xi16>
            %309 = tensor.empty() : tensor<5x5xi16>
            %310 = linalg.matmul ins(%10, %308 : tensor<5x4xi16>, tensor<4x5xi16>) outs(%309 : tensor<5x5xi16>) -> tensor<5x5xi16>
            %311 = memref.load %alloc_18[%c1] : memref<5xi64>
            %312 = index.maxu %c5, %53
            %313 = arith.addf %cst_4, %cst : f32
            %dest_69, %accumulated_value_70 = vector.scan <mul>, %105, %177 {inclusive = false, reduction_dim = 0 : i64} : vector<5x4xi64>, vector<4xi64>
            bufferization.dealloc_tensor %7 : tensor<5xi32>
            %314 = arith.subi %false_39, %false_36 : i1
            %315 = math.sqrt %extracted_41 : f32
            %316 = math.log %44 : tensor<2xf32>
            %317 = memref.load %alloc_10[%c0, %c1] : memref<5x4xf16>
            %318 = arith.remf %220, %in_66 : f16
            %319 = math.log %267 : tensor<2xf16>
            %cst_71 = arith.constant 1.000000e+00 : f16
            linalg.yield %cst_71 : f16
          }
        %268 = math.log10 %extracted_41 : f32
        %269 = bufferization.clone %64 : memref<2xf16> to memref<2xf16>
        %270 = arith.minf %extracted_41, %extracted_41 : f32
        %271 = arith.maxf %220, %220 : f16
        %272 = math.log2 %13 : tensor<5xf32>
        %273 = index.sub %111, %c14
        %274 = affine.min affine_map<(d0, d1, d2, d3) -> (d3, d1, d3, (-d3 + d0) * 64 - 32)>(%c7, %238, %143, %c0)
        %275 = math.sqrt %2 : tensor<5xf32>
        %276 = math.powf %collapsed, %collapsed : tensor<20xf32>
        %277 = arith.muli %90, %extracted_37 : i1
        %278 = index.maxs %c5, %207
        %279 = vector.bitcast %249 : vector<5x4xi16> to vector<5x4xi16>
        %280 = scf.index_switch %232 -> i32 
        case 1 {
          %291 = math.log2 %13 : tensor<5xf32>
          %292 = math.absf %extracted_41 : f32
          %c0_i16_66 = arith.constant 0 : i16
          %c0_i16_67 = arith.constant 0 : i16
          %293 = vector.transfer_read %10[%242, %211], %c0_i16_67 : tensor<5x4xi16>, vector<i16>
          %294 = math.sqrt %218 : tensor<2xf16>
          %from_elements = tensor.from_elements %220, %220, %cst_1, %cst_1, %cst_1 : tensor<5xf16>
          %295 = vector.gather %alloc_14[%c5, %209] [%107], %106, %105 : memref<5x4xi64>, vector<5x4xi32>, vector<5x4xi1>, vector<5x4xi64> into vector<5x4xi64>
          %296 = math.log %220 : f16
          %297 = vector.broadcast %c507242457_i32 : i32 to vector<4xi32>
          %298 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minui>} %113, %107, %297 : vector<5xi32>, vector<5x4xi32> into vector<4xi32>
          %299 = math.log %collapsed_31 : tensor<20xf32>
          %300 = index.divu %c5, %211
          %alloc_68 = memref.alloc() : memref<5x2xi16>
          memref.tensor_store %131, %alloc_68 : memref<5x2xi16>
          %301 = arith.remf %220, %cst_1 : f16
          %302 = arith.minf %cst_1, %220 : f16
          %303 = math.ipowi %c0_i16_66, %in_63 : i16
          %304 = math.cttz %0 : tensor<5xi16>
          %305 = arith.shrsi %false, %false_39 : i1
          scf.yield %c1404000026_i32 : i32
        }
        case 2 {
          %291 = index.sub %143, %72
          %c1_i32_66 = arith.constant 1 : i32
          %292 = vector.transfer_read %expanded[%c15, %c3], %c1_i32_66 : tensor<5x1xi32>, vector<4xi32>
          %293 = vector.create_mask %c12 : vector<2xi1>
          %294 = vector.transpose %84, [0] : vector<5xi1> to vector<5xi1>
          %295 = math.round %extracted_41 : f32
          %296 = math.cos %3 : tensor<5x4xf32>
          %297 = math.sqrt %extracted : f32
          memref.store %extracted_45, %alloc_19[%c0] : memref<5xi32>
          %298 = arith.divsi %true_5, %90 : i1
          %299 = arith.ceildivsi %c0_i32_50, %extracted_45 : i32
          %300 = arith.muli %extracted_37, %false_39 : i1
          %cast_67 = tensor.cast %6 : tensor<2xf32> to tensor<?xf32>
          memref.tensor_store %14, %alloc_20 : memref<5xi32>
          %301 = vector.create_mask %c13, %120 : vector<5x4xi1>
          %302 = vector.extract %150[1] : vector<5xi32>
          %303 = vector.transpose %208, [0] : vector<5xi16> to vector<5xi16>
          scf.yield %extracted_45 : i32
        }
        default {
          %291 = affine.max affine_map<(d0, d1, d2) -> ((d2 floordiv 128 - 8) ceildiv 16)>(%245, %207, %c15)
          %alloca_66 = memref.alloca() : memref<2xi16>
          %292 = affine.load %alloc_15[%c9] : memref<2xf16>
          %293 = arith.shrsi %90, %extracted_37 : i1
          %294 = index.ceildivs %c9, %rank
          %295 = arith.addf %cst_1, %cst_1 : f16
          %296 = math.cos %cst_0 : f32
          %297 = arith.subi %extracted_53, %c1404000026_i32 : i32
          %298 = arith.cmpf ugt, %292, %292 : f16
          %cast_67 = tensor.cast %54 : tensor<5x4xi32> to tensor<?x?xi32>
          %299 = memref.realloc %alloc : memref<5xi64> to memref<5xi64>
          %300 = math.rsqrt %collapsed : tensor<20xf32>
          %301 = math.log %6 : tensor<2xf32>
          %302 = vector.shuffle %249, %249 [0, 1, 2, 5] : vector<5x4xi16>, vector<5x4xi16>
          %true_68 = index.bool.constant true
          %303 = arith.andi %false_36, %true_30 : i1
          scf.yield %c1064313233_i32 : i32
        }
        %281 = math.atan2 %3, %3 : tensor<5x4xf32>
        %282 = math.round %transposed : tensor<5xf32>
        %283 = math.round %3 : tensor<5x4xf32>
        %284 = tensor.empty() : tensor<5x5x5xi16>
        %285 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%284 : tensor<5x5x5xi16>) {
        ^bb0(%out: i16):
          %291 = arith.remf %extracted, %cst_3 : f32
          %292 = math.cos %cst_1 : f16
          %cst_66 = arith.constant 1.000000e+00 : f32
          %293 = vector.transfer_read %2[%72], %cst_66 : tensor<5xf32>, vector<f32>
          %294 = math.sqrt %218 : tensor<2xf16>
          %alloc_67 = memref.alloc() : memref<5xi16>
          memref.tensor_store %0, %alloc_67 : memref<5xi16>
          %295 = vector.broadcast %cst_3 : f32 to vector<5xf32>
          %296 = vector.fma %295, %295, %260 : vector<5xf32>
          %true_68 = index.bool.constant true
          %297 = math.cos %6 : tensor<2xf32>
          %298 = memref.realloc %64 : memref<2xf16> to memref<5xf16>
          %299 = arith.minf %cst, %cst_66 : f32
          %300 = math.log10 %3 : tensor<5x4xf32>
          %301 = arith.remf %cst_0, %cst_66 : f32
          %302 = vector.multi_reduction <maxf>, %189, %189 [] : vector<1xf32> to vector<1xf32>
          %cast_69 = tensor.cast %73 : tensor<5xi64> to tensor<?xi64>
          %303 = arith.addi %c507242457_i32, %c507242457_i32 : i32
          %304 = arith.negf %cst : f32
          %305 = affine.load %alloc_15[%c7] : memref<2xf16>
          %306 = vector.transpose %295, [0] : vector<5xf32> to vector<5xf32>
          %307 = math.absi %4 : tensor<5xi64>
          %308 = arith.andi %c1_i32, %c1_i32 : i32
          %309 = vector.bitcast %260 : vector<5xf32> to vector<5xf32>
          %310 = index.sizeof
          %311 = memref.realloc %alloc_8 : memref<2xi1> to memref<2xi1>
          %312 = vector.broadcast %cst_66 : f32 to vector<5x4xf32>
          %313 = vector.fma %312, %312, %312 : vector<5x4xf32>
          %rank_70 = tensor.rank %14 : tensor<5xi32>
          %314 = math.tanh %3 : tensor<5x4xf32>
          %315 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minui>} %108, %177, %137 : vector<5x4xi64>, vector<4xi64> into vector<5xi64>
          %collapsed_71 = tensor.collapse_shape %3 [[0, 1]] : tensor<5x4xf32> into tensor<20xf32>
          %316 = math.copysign %6, %44 : tensor<2xf32>
          %317 = arith.addf %cst_3, %cst_0 : f32
          %collapsed_72 = tensor.collapse_shape %54 [[0, 1]] : tensor<5x4xi32> into tensor<20xi32>
          %318 = math.expm1 %13 : tensor<5xf32>
          linalg.yield %c14916_i16 : i16
        } -> tensor<5x5x5xi16>
        %286 = math.roundeven %2 : tensor<5xf32>
        %287 = math.ceil %extracted_41 : f32
        %288 = math.powf %44, %6 : tensor<2xf32>
        %289 = index.mul %207, %194
        %290 = arith.remf %cst_4, %cst_4 : f32
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %251 = math.rsqrt %collapsed_28 : tensor<20xf32>
    %252 = tensor.empty() : tensor<5xf32>
    %253 = linalg.copy ins(%13 : tensor<5xf32>) outs(%252 : tensor<5xf32>) -> tensor<5xf32>
    %254 = tensor.empty() : tensor<2xf16>
    %transposed_61 = linalg.transpose ins(%218 : tensor<2xf16>) outs(%254 : tensor<2xf16>) permutation = [0] 
    %alloc_62 = memref.alloc() : memref<f32>
    linalg.reduce ins(%6 : tensor<2xf32>) outs(%alloc_62 : memref<f32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %257 = vector.multi_reduction <mul>, %85, %83 [] : vector<5xi16> to vector<5xi16>
        %258 = math.ctpop %7 : tensor<5xi32>
        %259 = math.powf %252, %transposed : tensor<5xf32>
        %260 = math.rsqrt %2 : tensor<5xf32>
        %261 = affine.load %alloc_9[%c7, %c2] : memref<5x4xi64>
        %262 = affine.for %arg1 = 0 to 78 iter_args(%arg2 = %15) -> (tensor<5xi64>) {
          affine.yield %21 : tensor<5xi64>
        }
        %263 = vector.matrix_multiply %189, %237 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 5 : i32} : (vector<1xf32>, vector<5xf32>) -> vector<5xf32>
        %264 = scf.while (%arg1 = %false_52) : (i1) -> i1 {
          %265 = vector.create_mask %110, %31 : vector<5x4xi1>
          %266 = math.fma %transposed, %13, %transposed : tensor<5xf32>
          %267 = arith.divsi %c1867734685_i64, %extracted_33 : i64
          %268 = arith.divf %cst_0, %cst_0 : f32
          %extracted_64 = tensor.extract %5[%c0] : tensor<2xi64>
          %269 = index.sub %238, %238
          %270 = arith.subi %90, %false_2 : i1
          %271 = memref.load %alloc_15[%c1] : memref<2xf16>
          scf.condition(%false_2) %90 : i1
        } do {
        ^bb0(%arg1: i1):
          %265 = math.atan %220 : f16
          %266 = vector.matrix_multiply %128, %77 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<1xi1>, vector<2xi1>) -> vector<2xi1>
          %267 = arith.muli %c14916_i16, %c14916_i16 : i16
          %268 = tensor.empty() : tensor<5x4xi1>
          %269 = vector.broadcast %c0_i32_50 : i32 to vector<2xi32>
          %270 = vector.gather %268[%c14, %c13] [%269], %266, %266 : tensor<5x4xi1>, vector<2xi32>, vector<2xi1>, vector<2xi1> into vector<2xi1>
          %271 = arith.addi %90, %extracted_37 : i1
          %272 = vector.load %alloc_10[%c2, %c1] : memref<5x4xf16>, vector<5xf16>
          %273 = vector.flat_transpose %84 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
          %274 = vector.create_mask %156 : vector<2xi1>
          %collapsed_64 = tensor.collapse_shape %153 [[0, 1]] : tensor<5x2xi64> into tensor<10xi64>
          %275 = arith.remf %220, %220 : f16
          %276 = bufferization.to_tensor %alloc_13 : memref<2xi16>
          %277 = arith.negf %init : f32
          %278 = tensor.empty() : tensor<2xi32>
          %279 = vector.gather %278[%c7] [%107], %106, %107 : tensor<2xi32>, vector<5x4xi32>, vector<5x4xi1>, vector<5x4xi32> into vector<5x4xi32>
          %rank_65 = tensor.rank %276 : tensor<2xi16>
          %280 = index.sub %c8, %c7
          %281 = vector.broadcast %61 : i64 to vector<2xi64>
          %282 = vector.maskedload %alloc_18[%c2], %77, %281 : memref<5xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
          scf.yield %true_44 : i1
        }
        %cst_63 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_63 : f32
      }
    %255 = scf.parallel (%arg1, %arg2) = (%c10, %c8) to (%53, %211) step (%c7, %c3) init (%12) -> tensor<5x4xi64> {
      %257 = vector.extract %208[2] : vector<5xi16>
      %258 = index.mul %70, %rank_55
      %259 = math.fma %253, %2, %18 : tensor<5xf32>
      %260 = index.sizeof
      %cst_63 = arith.constant 1.000000e+00 : f16
      %cst_64 = arith.constant 0.000000e+00 : f16
      %261 = vector.transfer_read %64[%c14], %cst_64 : memref<2xf16>, vector<f16>
      %c1_i16 = arith.constant 1 : i16
      %c0_i16 = arith.constant 0 : i16
      %262 = vector.transfer_read %collapsed_27[%c3], %c0_i16 : tensor<20xi16>, vector<i16>
      %263 = vector.extract_strided_slice %107 {offsets = [0], sizes = [5], strides = [1]} : vector<5x4xi32> to vector<5x4xi32>
      %264 = math.absi %true_5 : i1
      %265 = math.rsqrt %collapsed_28 : tensor<20xf32>
      %266 = math.absi %90 : i1
      %267 = memref.load %alloc_14[%c1, %c1] : memref<5x4xi64>
      %268 = vector.broadcast %cst_3 : f32 to vector<5x4xf32>
      %269 = vector.fma %268, %268, %268 : vector<5x4xf32>
      %270 = tensor.empty() : tensor<5x4xi64>
      %mapped_65 = linalg.map ins(%48, %12 : tensor<5x4xi64>, tensor<5x4xi64>) outs(%270 : tensor<5x4xi64>)
        (%in: i64, %in_66: i64) {
          %276 = math.cos %extracted_41 : f32
          %277 = arith.minf %extracted, %cst_0 : f32
          %278 = index.divs %rank, %96
          %279 = math.powf %18, %2 : tensor<5xf32>
          %280 = arith.cmpf ule, %cst_3, %cst_3 : f32
          %281 = index.ceildivs %238, %c9
          %282 = vector.create_mask %c9 : vector<2xi1>
          %283 = arith.minf %cst_3, %cst_0 : f32
          %284 = math.fma %13, %253, %253 : tensor<5xf32>
          bufferization.dealloc_tensor %7 : tensor<5xi32>
          %285 = arith.remui %c1_i32, %c0_i32_50 : i32
          memref.store %false_2, %alloc_8[%c1] : memref<2xi1>
          %286 = math.round %220 : f16
          %287 = vector.transpose %249, [1, 0] : vector<5x4xi16> to vector<4x5xi16>
          %288 = vector.load %alloc_20[%c3] : memref<5xi32>, vector<5x4xi32>
          %289 = math.fma %extracted_41, %extracted, %cst_4 : f32
          %290 = index.castu %false : i1 to index
          %expanded_67 = tensor.expand_shape %13 [[0, 1]] : tensor<5xf32> into tensor<5x1xf32>
          %291 = index.maxu %242, %209
          %292 = index.divu %117, %c5
          %extracted_68 = tensor.extract %3[%c4, %c0] : tensor<5x4xf32>
          %293 = vector.shuffle %136, %137 [0, 2, 3, 6, 7, 9] : vector<5xi64>, vector<5xi64>
          %294 = vector.reduction <mul>, %112 : vector<5xi32> into i32
          %295 = index.ceildivs %207, %260
          %296 = math.log2 %cst_1 : f16
          %297 = math.tan %253 : tensor<5xf32>
          %cst_69 = arith.constant 1.000000e+00 : f32
          %298 = vector.transfer_read %alloc_16[%c1], %cst_69 : memref<5xf32>, vector<f32>
          %299 = vector.broadcast %extracted : f32 to vector<4xf32>
          %300 = vector.insert %299, %269 [3] : vector<4xf32> into vector<5x4xf32>
          %c794724742_i32 = arith.constant 794724742 : i32
          %301 = math.roundeven %cst_69 : f32
          %302 = math.sqrt %expanded_67 : tensor<5x1xf32>
          %303 = arith.ori %c1_i16, %c14916_i16 : i16
          %c0_i64 = arith.constant 0 : i64
          linalg.yield %c0_i64 : i64
        }
      %271 = index.divu %232, %120
      %272 = memref.realloc %64 : memref<2xf16> to memref<5xf16>
      %273 = tensor.empty() : tensor<5x5x5xi16>
      %274 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%273 : tensor<5x5x5xi16>) outs(%273 : tensor<5x5x5xi16>) {
      ^bb0(%in: i16, %out: i16):
        %276 = arith.remf %cst_3, %cst_0 : f32
        %277 = arith.minf %cst, %cst_3 : f32
        %278 = vector.broadcast %cst : f32 to vector<5x4xf32>
        %279 = vector.fma %278, %269, %269 : vector<5x4xf32>
        %280 = arith.ceildivsi %true, %false_36 : i1
        %281 = arith.minf %cst, %cst_4 : f32
        %cast_66 = tensor.cast %73 : tensor<5xi64> to tensor<?xi64>
        %282 = math.cos %13 : tensor<5xf32>
        %283 = arith.maxf %cst_63, %cst_63 : f16
        bufferization.dealloc_tensor %cast_32 : tensor<?xi32>
        %284 = arith.addi %c1404000026_i32, %c507242457_i32 : i32
        %285 = index.ceildivu %c2, %c7
        %286 = bufferization.to_tensor %alloc_7 : memref<2xi16>
        %287 = arith.remf %cst_3, %extracted : f32
        %alloc_67 = memref.alloc() : memref<i64>
        memref.tensor_store %23, %alloc_67 : memref<i64>
        %288 = arith.floordivsi %extracted_37, %extracted_37 : i1
        %c0_i16_68 = arith.constant 0 : i16
        %289 = vector.transfer_read %9[%160], %c0_i16_68 : tensor<2xi16>, vector<i16>
        %290 = memref.atomic_rmw minf %cst_0, %alloc_16[%c3] : (f32, memref<5xf32>) -> f32
        %291 = arith.minf %cst, %extracted : f32
        %292 = math.atan %cst_1 : f16
        %293 = math.round %252 : tensor<5xf32>
        %294 = vector.broadcast %cst_3 : f32 to vector<5x4xf32>
        %295 = vector.fma %294, %269, %268 : vector<5x4xf32>
        %296 = index.sizeof
        %297 = vector.flat_transpose %77 {columns = 1 : i32, rows = 2 : i32} : vector<2xi1> -> vector<2xi1>
        %298 = arith.remf %cst_0, %cst_3 : f32
        %299 = math.sqrt %149 : tensor<2xf16>
        %300 = bufferization.to_tensor %alloc_8 : memref<2xi1>
        %301 = index.sub %c14, %c10
        %302 = arith.mulf %extracted_41, %cst : f32
        %303 = math.exp %transposed : tensor<5xf32>
        %304 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %77, %77, %false_2 : vector<2xi1>, vector<2xi1> into i1
        %305 = arith.mulf %cst_0, %cst_0 : f32
        affine.store %extracted_33, %alloc_14[%c14, %c7] : memref<5x4xi64>
        linalg.yield %out : i16
      } -> tensor<5x5x5xi16>
      %275 = tensor.empty() : tensor<5x4xi64>
      scf.reduce(%275)  : tensor<5x4xi64> {
      ^bb0(%arg3: tensor<5x4xi64>, %arg4: tensor<5x4xi64>):
        %276 = index.maxs %209, %127
        %277 = math.cttz %153 : tensor<5x2xi64>
        %278 = math.fma %extracted, %extracted, %extracted_41 : f32
        %279 = vector.broadcast %cst_3 : f32 to vector<5x4xf32>
        %280 = vector.fma %279, %279, %269 : vector<5x4xf32>
        %281 = vector.insert %c-9675_i16, %85 [1] : i16 into vector<5xi16>
        %alloc_66 = memref.alloc() : memref<20xf32>
        memref.tensor_store %collapsed, %alloc_66 : memref<20xf32>
        %282 = arith.minsi %extracted_33, %c1867734685_i64 : i64
        %283 = math.cos %2 : tensor<5xf32>
        %284 = tensor.empty() : tensor<5x4xi64>
        scf.reduce.return %284 : tensor<5x4xi64>
      }
      scf.yield
    }
    %256 = affine.vector_load %123[%234] : memref<5xi64>, vector<4xi64>
    affine.vector_store %185, %alloc_16[%127] : memref<5xf32>, vector<5xf32>
    vector.print %20 : vector<2xi16>
    vector.print %38 : vector<5xf32>
    vector.print %39 : vector<5xf32>
    vector.print %77 : vector<2xi1>
    vector.print %78 : vector<2xi16>
    vector.print %83 : vector<5xi16>
    vector.print %84 : vector<5xi1>
    vector.print %85 : vector<5xi16>
    vector.print %91 : vector<5xf32>
    vector.print %92 : vector<5xf32>
    vector.print %99 : vector<5x4xf16>
    vector.print %105 : vector<5x4xi64>
    vector.print %106 : vector<5x4xi1>
    vector.print %107 : vector<5x4xi32>
    vector.print %108 : vector<5x4xi64>
    vector.print %112 : vector<5xi32>
    vector.print %113 : vector<5xi32>
    vector.print %128 : vector<1xi1>
    vector.print %136 : vector<5xi64>
    vector.print %137 : vector<5xi64>
    vector.print %150 : vector<5xi32>
    vector.print %162 : vector<5xf32>
    vector.print %177 : vector<4xi64>
    vector.print %179 : vector<5xi32>
    vector.print %182 : vector<5xi16>
    vector.print %185 : vector<5xf32>
    vector.print %189 : vector<1xf32>
    vector.print %200 : vector<5xi32>
    vector.print %208 : vector<5xi16>
    vector.print %237 : vector<5xf32>
    vector.print %249 : vector<5x4xi16>
    vector.print %256 : vector<4xi64>
    vector.print %cst : f32
    vector.print %c14916_i16 : i16
    vector.print %c-9675_i16 : i16
    vector.print %cst_0 : f32
    vector.print %c1867734685_i64 : i64
    vector.print %false : i1
    vector.print %c1404000026_i32 : i32
    vector.print %cst_1 : f16
    vector.print %false_2 : i1
    vector.print %cst_3 : f32
    vector.print %true : i1
    vector.print %cst_4 : f32
    vector.print %c507242457_i32 : i32
    vector.print %true_5 : i1
    vector.print %true_6 : i1
    vector.print %c1064313233_i32 : i32
    vector.print %extracted : f32
    vector.print %61 : i64
    vector.print %90 : i1
    vector.print %true_30 : i1
    vector.print %extracted_33 : i64
    vector.print %false_36 : i1
    vector.print %extracted_37 : i1
    vector.print %false_39 : i1
    vector.print %extracted_41 : f32
    vector.print %c1_i32 : i32
    vector.print %true_44 : i1
    vector.print %extracted_45 : i32
    vector.print %c0_i32_50 : i32
    vector.print %false_52 : i1
    vector.print %extracted_53 : i32
    vector.print %220 : f16
    vector.print %c1_i64 : i64
    vector.print %false_56 : i1
    return %16 : tensor<5xi64>
  }
}
