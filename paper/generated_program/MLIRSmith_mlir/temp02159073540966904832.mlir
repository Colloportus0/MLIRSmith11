module {
  func.func @func1() {
    %false = arith.constant false
    %c615313423_i32 = arith.constant 615313423 : i32
    %cst = arith.constant 1.14540595E+9 : f32
    %false_0 = arith.constant false
    %true = arith.constant true
    %cst_1 = arith.constant 4.743460e+07 : f32
    %c426148679_i64 = arith.constant 426148679 : i64
    %cst_2 = arith.constant 1.3492233E+9 : f32
    %cst_3 = arith.constant 6.448000e+04 : f16
    %c200632833_i32 = arith.constant 200632833 : i32
    %c8820_i16 = arith.constant 8820 : i16
    %c1996824902_i32 = arith.constant 1996824902 : i32
    %false_4 = arith.constant false
    %c1786215703_i64 = arith.constant 1786215703 : i64
    %c32632_i16 = arith.constant 32632 : i16
    %c-27843_i16 = arith.constant -27843 : i16
    %0 = tensor.empty() : tensor<14xf32>
    %1 = tensor.empty() : tensor<8x8xi64>
    %2 = tensor.empty() : tensor<8x8xf16>
    %3 = tensor.empty() : tensor<8x4x9xi1>
    %4 = tensor.empty() : tensor<8x4x9xi16>
    %5 = tensor.empty() : tensor<8x8xi1>
    %6 = tensor.empty() : tensor<4x14xi32>
    %7 = tensor.empty() : tensor<4x14xi16>
    %8 = tensor.empty() : tensor<4x14xi32>
    %9 = tensor.empty() : tensor<8x4x9xi32>
    %10 = tensor.empty() : tensor<8x4x9xi32>
    %11 = tensor.empty() : tensor<4x14xi64>
    %12 = tensor.empty() : tensor<14xf16>
    %13 = tensor.empty() : tensor<8x4x9xi32>
    %14 = tensor.empty() : tensor<8x4x9xf32>
    %15 = tensor.empty() : tensor<4x14xf32>
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
    %alloc = memref.alloc() : memref<8x8xi16>
    %alloc_5 = memref.alloc() : memref<8x4x9xf32>
    %alloc_6 = memref.alloc() : memref<8x8xi16>
    %alloc_7 = memref.alloc() : memref<14xi32>
    %alloc_8 = memref.alloc() : memref<4x14xf32>
    %alloc_9 = memref.alloc() : memref<4x14xi64>
    %alloc_10 = memref.alloc() : memref<4x14xi64>
    %alloc_11 = memref.alloc() : memref<8x4x9xi16>
    %alloc_12 = memref.alloc() : memref<8x4x9xi32>
    %alloc_13 = memref.alloc() : memref<14xi1>
    %alloc_14 = memref.alloc() : memref<8x8xi32>
    %alloc_15 = memref.alloc() : memref<8x8xf32>
    %alloc_16 = memref.alloc() : memref<8x4x9xf32>
    %alloc_17 = memref.alloc() : memref<4x14xf16>
    %alloc_18 = memref.alloc() : memref<8x4x9xi1>
    %alloc_19 = memref.alloc() : memref<8x8xf32>
    %16 = tensor.empty() : tensor<4x14xi32>
    %17 = linalg.copy ins(%8 : tensor<4x14xi32>) outs(%16 : tensor<4x14xi32>) -> tensor<4x14xi32>
    %18 = tensor.empty() : tensor<14xf16>
    %transposed = linalg.transpose ins(%12 : tensor<14xf16>) outs(%18 : tensor<14xf16>) permutation = [0] 
    %alloc_20 = memref.alloc() : memref<4xi64>
    linalg.reduce ins(%alloc_9 : memref<4x14xi64>) outs(%alloc_20 : memref<4xi64>) dimensions = [1] 
      (%in: i64, %init: i64) {
        %277 = vector.broadcast %cst_2 : f32 to vector<8xf32>
        %278 = vector.flat_transpose %277 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
        %279 = math.copysign %0, %0 : tensor<14xf32>
        %280 = math.log10 %15 : tensor<4x14xf32>
        %281 = arith.shrsi %c-27843_i16, %c32632_i16 : i16
        %282 = arith.cmpf ugt, %cst_2, %cst : f32
        %283 = arith.mulf %cst_3, %cst_3 : f16
        %284 = arith.divui %false_4, %false_0 : i1
        %285 = affine.apply affine_map<(d0, d1, d2, d3) -> (-((-(d3 ceildiv 4)) mod 8))>(%c4, %c10, %c11, %c12)
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    scf.parallel (%arg0, %arg1) = (%c2, %c14) to (%c4, %c4) step (%c3, %c12) {
      %277 = math.sqrt %14 : tensor<8x4x9xf32>
      %278 = affine.load %alloc_9[%c13, %c0] : memref<4x14xi64>
      %279 = vector.broadcast %false : i1 to vector<4x14xi1>
      vector.print %279 : vector<4x14xi1>
      %280 = vector.broadcast %c32632_i16 : i16 to vector<9xi16>
      %281 = vector.broadcast %false_4 : i1 to vector<9xi1>
      %282 = vector.maskedload %alloc_6[%c4, %c0], %281, %280 : memref<8x8xi16>, vector<9xi1>, vector<9xi16> into vector<9xi16>
      %283 = math.copysign %18, %12 : tensor<14xf16>
      %284 = vector.extract %280[2] : vector<9xi16>
      %285 = math.rsqrt %cst_1 : f32
      %286 = math.cos %0 : tensor<14xf32>
      %287 = vector.bitcast %281 : vector<9xi1> to vector<9xi1>
      scf.execute_region {
        %293 = math.round %14 : tensor<8x4x9xf32>
        %294 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 - (-(d2 - d3) - d1 + 2), d2 * 16, d3)>(%c9, %c1, %c0, %c5)
        %295 = arith.maxsi %c200632833_i32, %c1996824902_i32 : i32
        %296 = vector.bitcast %287 : vector<9xi1> to vector<9xi1>
        %297 = index.divu %c12, %c2
        %298 = affine.load %alloc_10[%c15, %c8] : memref<4x14xi64>
        %299 = vector.shuffle %280, %280 [0, 1, 5, 8, 10, 11, 12, 13, 14, 15, 16, 17] : vector<9xi16>, vector<9xi16>
        %300 = index.maxu %c11, %arg1
        %301 = math.log2 %transposed : tensor<14xf16>
        %expanded_54 = tensor.expand_shape %12 [[0, 1]] : tensor<14xf16> into tensor<14x1xf16>
        %302 = index.ceildivs %arg0, %c10
        %303 = arith.andi %c32632_i16, %c8820_i16 : i16
        vector.print %287 : vector<9xi1>
        %304 = math.round %15 : tensor<4x14xf32>
        %305 = math.floor %cst_2 : f32
        %306 = index.divu %c14, %c12
        scf.yield
      }
      %288 = math.tan %2 : tensor<8x8xf16>
      scf.if %true {
        %293 = arith.minsi %true, %false_4 : i1
        %294 = vector.broadcast %false_4 : i1 to vector<14xi1>
        %dest_54, %accumulated_value_55 = vector.scan <minsi>, %279, %294 {inclusive = false, reduction_dim = 0 : i64} : vector<4x14xi1>, vector<14xi1>
        %295 = arith.ceildivsi %c1996824902_i32, %c615313423_i32 : i32
        %296 = affine.load %alloc_8[%c12, %c13] : memref<4x14xf32>
        %297 = index.ceildivu %c5, %c1
        %298 = math.round %15 : tensor<4x14xf32>
        %299 = index.divu %c4, %c7
        %expanded_56 = tensor.expand_shape %9 [[0], [1], [2, 3]] : tensor<8x4x9xi32> into tensor<8x4x9x1xi32>
      }
      %289 = index.divu %c3, %c14
      %290 = memref.load %alloc[%c3, %c2] : memref<8x8xi16>
      %291 = math.absi %10 : tensor<8x4x9xi32>
      %292 = vector.load %alloc_5[%c5, %c1, %c5] : memref<8x4x9xf32>, vector<4x14xf32>
      scf.yield
    }
    %19 = affine.vector_load %alloc_6[%c1, %c9] : memref<8x8xi16>, vector<14xi16>
    affine.vector_store %19, %alloc_6[%c4, %c7] : memref<8x8xi16>, vector<14xi16>
    %20 = tensor.empty() : tensor<14xf16>
    %21 = tensor.empty() : tensor<f16>
    %22 = linalg.dot ins(%18, %20 : tensor<14xf16>, tensor<14xf16>) outs(%21 : tensor<f16>) -> tensor<f16>
    %alloc_21 = memref.alloc() : memref<8x4x9xi64>
    %23 = vector.broadcast %c426148679_i64 : i64 to vector<8x4x9xi64>
    %24 = vector.broadcast %false : i1 to vector<8x4x9xi1>
    %25 = vector.broadcast %c1996824902_i32 : i32 to vector<8x4x9xi32>
    %26 = vector.gather %alloc_21[%c12, %c1, %c1] [%25], %24, %23 : memref<8x4x9xi64>, vector<8x4x9xi32>, vector<8x4x9xi1>, vector<8x4x9xi64> into vector<8x4x9xi64>
    %27 = math.fpowi %14, %9 : tensor<8x4x9xf32>, tensor<8x4x9xi32>
    %28 = vector.shuffle %23, %23 [2, 4, 8, 10, 11, 13, 15] : vector<8x4x9xi64>, vector<8x4x9xi64>
    %29 = vector.create_mask %c1, %c3 : vector<8x8xi1>
    %30 = arith.remf %cst, %cst_2 : f32
    %31 = math.powf %transposed, %12 : tensor<14xf16>
    memref.assume_alignment %alloc_18, 1 : memref<8x4x9xi1>
    %32 = arith.divui %c200632833_i32, %c1996824902_i32 : i32
    %33 = vector.reduction <maxsi>, %19 : vector<14xi16> into i16
    %34 = vector.broadcast %false_0 : i1 to vector<8x4xi1>
    %dest, %accumulated_value = vector.scan <minui>, %24, %34 {inclusive = false, reduction_dim = 2 : i64} : vector<8x4x9xi1>, vector<8x4xi1>
    %35 = arith.maxui %true, %false_4 : i1
    %36 = math.log1p %transposed : tensor<14xf16>
    %37 = memref.load %alloc_9[%c2, %c1] : memref<4x14xi64>
    %false_22 = index.bool.constant false
    %38 = vector.insertelement %c8820_i16, %19[%c11 : index] : vector<14xi16>
    %39 = math.rsqrt %15 : tensor<4x14xf32>
    %40 = math.log2 %12 : tensor<14xf16>
    %41 = arith.negf %cst : f32
    %42 = arith.minsi %false, %false_22 : i1
    %43 = math.log1p %cst : f32
    %44 = arith.ori %c-27843_i16, %c-27843_i16 : i16
    %45 = vector.broadcast %c-27843_i16 : i16 to vector<14x14xi16>
    %46 = vector.outerproduct %19, %19, %45 {kind = #vector.kind<add>} : vector<14xi16>, vector<14xi16>
    %47 = math.fpowi %cst, %c200632833_i32 : f32, i32
    scf.index_switch %c0 
    case 1 {
      %277 = affine.if affine_set<(d0) : (d0 * 2 == 0, d0 * 64 >= 0)>(%c8) -> memref<4x14xi1> {
        %293 = index.ceildivs %c6, %c9
        %294 = affine.apply affine_map<(d0) -> (d0 mod 16)>(%c2)
        %295 = vector.broadcast %c426148679_i64 : i64 to vector<9xi64>
        %296 = vector.broadcast %false_4 : i1 to vector<9xi1>
        %297 = vector.maskedload %alloc_21[%c3, %c3, %c3], %296, %295 : memref<8x4x9xi64>, vector<9xi1>, vector<9xi64> into vector<9xi64>
        %298 = arith.remui %c200632833_i32, %c1996824902_i32 : i32
        %299 = arith.mulf %cst_2, %cst : f32
        %300 = vector.extract %297[8] : vector<9xi64>
        %301 = arith.floordivsi %true, %true : i1
        %c535_i16 = arith.constant 535 : i16
        %alloc_54 = memref.alloc() : memref<4x14xi1>
        affine.yield %alloc_54 : memref<4x14xi1>
      } else {
        %293 = arith.minf %cst_1, %cst : f32
        %294 = arith.minui %true, %false_22 : i1
        bufferization.dealloc_tensor %16 : tensor<4x14xi32>
        %295 = index.sub %c0, %c10
        %296 = arith.ceildivsi %false, %false_0 : i1
        %297 = vector.extract_strided_slice %26 {offsets = [1], sizes = [7], strides = [1]} : vector<8x4x9xi64> to vector<7x4x9xi64>
        %298 = math.powf %2, %2 : tensor<8x8xf16>
        %inserted_54 = tensor.insert %cst_1 into %14[%c6, %c3, %c3] : tensor<8x4x9xf32>
        %alloc_55 = memref.alloc() : memref<4x14xi1>
        affine.yield %alloc_55 : memref<4x14xi1>
      }
      vector.print %25 : vector<8x4x9xi32>
      %278 = scf.execute_region -> vector<14xf32> {
        %293 = vector.broadcast %c426148679_i64 : i64 to vector<8x9xi64>
        %dest_54, %accumulated_value_55 = vector.scan <maxsi>, %23, %293 {inclusive = false, reduction_dim = 1 : i64} : vector<8x4x9xi64>, vector<8x9xi64>
        %inserted_56 = tensor.insert %c1996824902_i32 into %6[%c0, %c11] : tensor<4x14xi32>
        %294 = math.powf %0, %0 : tensor<14xf32>
        %295 = arith.shrsi %c1996824902_i32, %c1996824902_i32 : i32
        %296 = memref.load %alloc_15[%c1, %c5] : memref<8x8xf32>
        %297 = arith.negf %cst : f32
        %298 = vector.broadcast %c200632833_i32 : i32 to vector<14xi32>
        %299 = arith.shli %c200632833_i32, %c615313423_i32 : i32
        %300 = arith.shli %false_0, %false_0 : i1
        %301 = bufferization.to_memref %1 : memref<8x8xi64>
        %302 = arith.floordivsi %false, %false_22 : i1
        %303 = arith.addi %false, %false_22 : i1
        %splat = tensor.splat %false_0 : tensor<8x4x9xi1>
        %304 = index.divu %c3, %c6
        %305 = vector.matrix_multiply %19, %19 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi16>, vector<14xi16>) -> vector<1xi16>
        %306 = math.fma %cst_2, %cst_2, %cst : f32
        %307 = vector.broadcast %cst_2 : f32 to vector<14xf32>
        scf.yield %307 : vector<14xf32>
      }
      %279 = affine.load %alloc_16[%c2, %c11, %c9] : memref<8x4x9xf32>
      %280 = arith.divui %false, %false : i1
      %281 = scf.while (%arg0 = %false_0) : (i1) -> i1 {
        %293 = math.round %transposed : tensor<14xf16>
        %294 = bufferization.to_tensor %alloc_6 : memref<8x8xi16>
        vector.print %19 : vector<14xi16>
        %295 = vector.broadcast %c426148679_i64 : i64 to vector<4x9x4x9xi64>
        %296 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<and>} %23, %26, %295 : vector<8x4x9xi64>, vector<8x4x9xi64> into vector<4x9x4x9xi64>
        %297 = vector.broadcast %c1996824902_i32 : i32 to vector<14xi32>
        %298 = vector.broadcast %false_4 : i1 to vector<14xi1>
        %299 = vector.maskedload %alloc_14[%c7, %c2], %298, %297 : memref<8x8xi32>, vector<14xi1>, vector<14xi32> into vector<14xi32>
        %300 = arith.addi %c1786215703_i64, %c1786215703_i64 : i64
        %301 = arith.remf %279, %279 : f32
        %302 = affine.max affine_map<(d0, d1, d2, d3) -> ((d0 mod 64 - 4) floordiv 64 + 1, (d0 mod 64 - 4) floordiv 64, d1 floordiv 8)>(%c9, %c5, %c2, %c12)
        scf.condition(%true) %true : i1
      } do {
      ^bb0(%arg0: i1):
        %293 = math.powf %20, %12 : tensor<14xf16>
        %294 = memref.load %alloc_15[%c5, %c7] : memref<8x8xf32>
        %295 = math.absi %1 : tensor<8x8xi64>
        %296 = vector.extract %26[1, 2] : vector<8x4x9xi64>
        %297 = math.rsqrt %14 : tensor<8x4x9xf32>
        %298 = vector.broadcast %c-27843_i16 : i16 to vector<14x14xi16>
        %299 = vector.outerproduct %19, %19, %298 {kind = #vector.kind<or>} : vector<14xi16>, vector<14xi16>
        %300 = arith.maxui %c1996824902_i32, %c200632833_i32 : i32
        %301 = arith.maxf %279, %cst_2 : f32
        %302 = vector.flat_transpose %19 {columns = 7 : i32, rows = 2 : i32} : vector<14xi16> -> vector<14xi16>
        %303 = math.log1p %14 : tensor<8x4x9xf32>
        %304 = math.exp2 %20 : tensor<14xf16>
        %305 = tensor.empty() : tensor<14xi1>
        %306 = bufferization.to_tensor %alloc_6 : memref<8x8xi16>
        %307 = arith.mulf %cst_1, %cst_2 : f32
        %308 = arith.shrsi %c8820_i16, %c32632_i16 : i16
        %309 = tensor.empty() : tensor<i32>
        %310 = math.fpowi %21, %309 : tensor<f16>, tensor<i32>
        scf.yield %true : i1
      }
      %282 = math.round %14 : tensor<8x4x9xf32>
      %283 = math.ctpop %false_0 : i1
      %rank = tensor.rank %11 : tensor<4x14xi64>
      %284 = vector.extract %26[7, 2] : vector<8x4x9xi64>
      %285 = vector.broadcast %cst : f32 to vector<14xf32>
      %286 = vector.fma %285, %285, %285 : vector<14xf32>
      %287 = arith.cmpi sge, %c32632_i16, %c8820_i16 : i16
      %288 = vector.bitcast %23 : vector<8x4x9xi64> to vector<8x4x9xi64>
      %289 = math.atan2 %14, %14 : tensor<8x4x9xf32>
      %290 = vector.broadcast %cst_2 : f32 to vector<8x8xf32>
      %291 = vector.fma %290, %290, %290 : vector<8x8xf32>
      %292 = memref.load %alloc_13[%c6] : memref<14xi1>
      scf.yield
    }
    case 2 {
      %277 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d0 - (d2 - 64)) floordiv 128)>(%c8, %c5, %c3, %c13)
      %278 = math.atan2 %cst_3, %cst_3 : f16
      %279 = vector.insertelement %c-27843_i16, %19[%c1 : index] : vector<14xi16>
      %280 = vector.flat_transpose %19 {columns = 7 : i32, rows = 2 : i32} : vector<14xi16> -> vector<14xi16>
      scf.if %false_4 {
        %extracted = tensor.extract %2[%c3, %c6] : tensor<8x8xf16>
        %289 = vector.shuffle %19, %19 [3, 4, 6, 8, 9, 11, 12, 19, 23, 24] : vector<14xi16>, vector<14xi16>
        %290 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 * 8)>(%c9, %c4, %c14, %c10)
        %291 = math.log2 %2 : tensor<8x8xf16>
        %292 = arith.ceildivsi %c200632833_i32, %c615313423_i32 : i32
        %cst_56 = arith.constant 1.000000e+00 : f32
        %293 = vector.transfer_read %15[%c7, %c13], %cst_56 : tensor<4x14xf32>, vector<14xf32>
        %inserted_57 = tensor.insert %extracted into %12[%c13] : tensor<14xf16>
        %294 = arith.mulf %cst_1, %cst_56 : f32
      }
      %281 = arith.remsi %c1996824902_i32, %c615313423_i32 : i32
      %282 = vector.flat_transpose %19 {columns = 7 : i32, rows = 2 : i32} : vector<14xi16> -> vector<14xi16>
      %283 = math.fma %12, %18, %20 : tensor<14xf16>
      %false_54 = index.bool.constant false
      %284 = arith.cmpi ugt, %c200632833_i32, %c1996824902_i32 : i32
      %285 = vector.broadcast %cst : f32 to vector<8x8xf32>
      %286 = vector.extract %26[7] : vector<8x4x9xi64>
      %287 = arith.maxsi %true, %false_0 : i1
      %expanded_55 = tensor.expand_shape %13 [[0], [1], [2, 3]] : tensor<8x4x9xi32> into tensor<8x4x9x1xi32>
      vector.print %26 : vector<8x4x9xi64>
      %288 = arith.maxsi %true, %true : i1
      scf.yield
    }
    default {
      %277 = index.maxu %c7, %c14
      %278 = arith.remsi %c426148679_i64, %c1786215703_i64 : i64
      %279 = index.add %c15, %c12
      %inserted_54 = tensor.insert %cst_3 into %12[%c9] : tensor<14xf16>
      %280 = tensor.empty() : tensor<14xi1>
      %281 = vector.load %alloc_7[%c2] : memref<14xi32>, vector<14xi32>
      %282 = arith.remsi %c1786215703_i64, %c426148679_i64 : i64
      %283 = vector.bitcast %281 : vector<14xi32> to vector<14xi32>
      %284 = bufferization.to_tensor %alloc_17 : memref<4x14xf16>
      %285 = affine.if affine_set<(d0) : (d0 * 2 == 0, d0 * 64 >= 0)>(%c7) -> memref<4x14xi16> {
        %290 = vector.transpose %23, [0, 1, 2] : vector<8x4x9xi64> to vector<8x4x9xi64>
        %cast_55 = tensor.cast %15 : tensor<4x14xf32> to tensor<?x?xf32>
        %291 = affine.load %alloc_13[%c4] : memref<14xi1>
        %292 = math.sqrt %20 : tensor<14xf16>
        %293 = arith.shrsi %false, %false : i1
        %294 = math.sqrt %cst : f32
        %295 = arith.negf %cst_2 : f32
        %expanded_56 = tensor.expand_shape %20 [[0, 1]] : tensor<14xf16> into tensor<14x1xf16>
        %alloc_57 = memref.alloc() : memref<4x14xi16>
        affine.yield %alloc_57 : memref<4x14xi16>
      } else {
        %290 = arith.remui %false_22, %false_4 : i1
        %291 = bufferization.to_tensor %alloc_14 : memref<8x8xi32>
        %292 = vector.multi_reduction <add>, %24, %24 [] : vector<8x4x9xi1> to vector<8x4x9xi1>
        %293 = vector.transpose %25, [1, 2, 0] : vector<8x4x9xi32> to vector<4x9x8xi32>
        %294 = arith.remf %cst_1, %cst_1 : f32
        %295 = index.ceildivu %c9, %c5
        %296 = math.log1p %22 : tensor<f16>
        %297 = vector.broadcast %c426148679_i64 : i64 to vector<4x9xi64>
        %298 = vector.insert %297, %23 [2] : vector<4x9xi64> into vector<8x4x9xi64>
        %alloc_55 = memref.alloc() : memref<4x14xi16>
        affine.yield %alloc_55 : memref<4x14xi16>
      }
      %286 = math.log10 %cst_1 : f32
      %from_elements = tensor.from_elements %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3 : tensor<8x8xf16>
      %287 = math.cos %12 : tensor<14xf16>
      memref.assume_alignment %alloc_21, 4 : memref<8x4x9xi64>
      %288 = arith.maxui %c1786215703_i64, %c1786215703_i64 : i64
      %289 = math.log1p %14 : tensor<8x4x9xf32>
    }
    %generated = tensor.generate %c8 {
    ^bb0(%arg0: index, %arg1: index):
      %277 = arith.addi %false, %false_0 : i1
      %278 = math.round %2 : tensor<8x8xf16>
      %279 = index.divu %arg1, %c8
      %280 = scf.while (%arg2 = %c-27843_i16) : (i16) -> i16 {
        %281 = vector.transpose %24, [1, 2, 0] : vector<8x4x9xi1> to vector<4x9x8xi1>
        %282 = vector.matrix_multiply %19, %19 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi16>, vector<14xi16>) -> vector<1xi16>
        %283 = math.log1p %cst : f32
        %284 = arith.maxf %cst, %cst : f32
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %285 = vector.transfer_read %alloc[%c12, %c7], %c0_i16 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<8x8xi16>, vector<4xi16>
        %286 = bufferization.to_memref %15 : memref<4x14xf32>
        %287 = affine.apply affine_map<(d0) -> (((d0 mod 2) floordiv 2) mod 2)>(%279)
        %288 = tensor.empty() : tensor<14x9xi64>
        %289 = tensor.empty() : tensor<4x9xi64>
        %290 = linalg.matmul ins(%11, %288 : tensor<4x14xi64>, tensor<14x9xi64>) outs(%289 : tensor<4x9xi64>) -> tensor<4x9xi64>
        scf.condition(%false) %c-27843_i16 : i16
      } do {
      ^bb0(%arg2: i16):
        %281 = arith.minui %true, %false_4 : i1
        %alloca_54 = memref.alloca() : memref<8x8xi64>
        %282 = memref.load %alloc_14[%c0, %c3] : memref<8x8xi32>
        %283 = tensor.empty(%c9) : tensor<?x14xi16>
        %inserted_55 = tensor.insert %c1786215703_i64 into %1[%c7, %c1] : tensor<8x8xi64>
        %284 = memref.load %alloc_15[%c2, %c6] : memref<8x8xf32>
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_56 = arith.constant 0 : i16
        %285 = vector.transfer_read %7[%c0, %arg1], %c0_i16_56 : tensor<4x14xi16>, vector<i16>
        %286 = memref.load %alloc_10[%c0, %c12] : memref<4x14xi64>
        %287 = math.sqrt %cst_3 : f16
        %288 = arith.divsi %false_0, %false_22 : i1
        %289 = vector.broadcast %cst_2 : f32 to vector<14xf32>
        %290 = vector.fma %289, %289, %289 : vector<14xf32>
        %291 = math.cttz %6 : tensor<4x14xi32>
        %292 = math.log1p %cst : f32
        %293 = vector.bitcast %23 : vector<8x4x9xi64> to vector<8x4x9xi64>
        affine.store %cst_2, %alloc_5[%c2, %c0, %c10] : memref<8x4x9xf32>
        %294 = math.floor %22 : tensor<f16>
        scf.yield %arg2 : i16
      }
      tensor.yield %cst : f32
    } : tensor<?x8xf32>
    %48 = affine.apply affine_map<(d0, d1) -> ((d0 mod 2 - 16) ceildiv 4)>(%c3, %c7)
    %49 = vector.broadcast %false : i1 to vector<14xi1>
    %50 = vector.maskedload %alloc[%c5, %c2], %49, %19 : memref<8x8xi16>, vector<14xi1>, vector<14xi16> into vector<14xi16>
    %51 = arith.remsi %c8820_i16, %c-27843_i16 : i16
    %true_23 = arith.constant true
    %52 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %49, %49, %false : vector<14xi1>, vector<14xi1> into i1
    %53 = math.ctpop %1 : tensor<8x8xi64>
    %54 = scf.if %false_0 -> (memref<14xi1>) {
      %277 = vector.load %alloc_20[%c2] : memref<4xi64>, vector<4x14xi64>
      %278 = index.castu %c10 : index to i32
      %279 = math.rsqrt %14 : tensor<8x4x9xf32>
      %280 = tensor.empty() : tensor<8x8xi1>
      %281 = linalg.matmul ins(%5, %5 : tensor<8x8xi1>, tensor<8x8xi1>) outs(%280 : tensor<8x8xi1>) -> tensor<8x8xi1>
      %282 = math.rsqrt %12 : tensor<14xf16>
      %283 = math.powf %12, %20 : tensor<14xf16>
      %c1451925614_i32 = arith.constant 1451925614 : i32
      %284 = vector.broadcast %c1996824902_i32 : i32 to vector<4x14xi32>
      %285 = vector.broadcast %true : i1 to vector<4x14xi1>
      %286 = vector.gather %alloc_12[%c13, %c12, %c6] [%284], %285, %284 : memref<8x4x9xi32>, vector<4x14xi32>, vector<4x14xi1>, vector<4x14xi32> into vector<4x14xi32>
      scf.yield %alloc_13 : memref<14xi1>
    } else {
      %277 = tensor.empty() : tensor<i32>
      %278 = math.fpowi %21, %277 : tensor<f16>, tensor<i32>
      %279 = arith.floordivsi %c426148679_i64, %c1786215703_i64 : i64
      %280 = math.roundeven %cst_1 : f32
      vector.print %25 : vector<8x4x9xi32>
      %281 = math.powf %cst_2, %cst_2 : f32
      %282 = arith.addf %cst_1, %cst_1 : f32
      %alloca_54 = memref.alloca() : memref<14xf16>
      %283 = index.sub %c2, %c10
      scf.yield %alloc_13 : memref<14xi1>
    }
    %55 = tensor.empty() : tensor<14xi32>
    %56 = math.fpowi %18, %55 : tensor<14xf16>, tensor<14xi32>
    %true_24 = index.bool.constant true
    %57 = index.ceildivs %c12, %c15
    memref.assume_alignment %54, 1 : memref<14xi1>
    memref.assume_alignment %alloc_10, 4 : memref<4x14xi64>
    %58 = index.ceildivu %c9, %c2
    %59 = vector.create_mask %c8, %c4 : vector<8x8xi1>
    %60 = math.powf %12, %20 : tensor<14xf16>
    %61 = index.maxs %57, %c0
    %62 = vector.extract_strided_slice %50 {offsets = [10], sizes = [2], strides = [1]} : vector<14xi16> to vector<2xi16>
    %63 = arith.negf %cst_1 : f32
    %64 = vector.load %alloc_14[%c7, %c7] : memref<8x8xi32>, vector<4x14xi32>
    %true_25 = index.bool.constant true
    %65 = index.maxu %61, %c4
    %66 = math.fpowi %12, %55 : tensor<14xf16>, tensor<14xi32>
    memref.assume_alignment %alloc_9, 16 : memref<4x14xi64>
    %67 = vector.broadcast %c-27843_i16 : i16 to vector<2x2xi16>
    %68 = vector.outerproduct %62, %62, %67 {kind = #vector.kind<mul>} : vector<2xi16>, vector<2xi16>
    %69 = vector.broadcast %cst_1 : f32 to vector<14xf32>
    %70 = vector.fma %69, %69, %69 : vector<14xf32>
    memref.assume_alignment %alloc_13, 4 : memref<14xi1>
    %71 = vector.extract_strided_slice %50 {offsets = [9], sizes = [3], strides = [1]} : vector<14xi16> to vector<3xi16>
    %72 = arith.minsi %true_24, %false_22 : i1
    %c26364_i16 = arith.constant 26364 : i16
    %73 = arith.addi %true_24, %true_24 : i1
    %74 = bufferization.to_memref %6 : memref<4x14xi32>
    %75 = vector.insert %c32632_i16, %62 [1] : i16 into vector<2xi16>
    %76 = memref.load %alloc_18[%c0, %c0, %c0] : memref<8x4x9xi1>
    %77 = vector.insertelement %cst_2, %69[%c6 : index] : vector<14xf32>
    %cast = tensor.cast %22 : tensor<f16> to tensor<f16>
    %78 = arith.addf %cst_3, %cst_3 : f16
    %79 = vector.broadcast %cst_2 : f32 to vector<8x8xf32>
    %80 = vector.fma %79, %79, %79 : vector<8x8xf32>
    %false_26 = index.bool.constant false
    %81 = math.fpowi %12, %55 : tensor<14xf16>, tensor<14xi32>
    %false_27 = index.bool.constant false
    %82 = arith.ori %false, %false_22 : i1
    %83 = vector.load %alloc_12[%c5, %c3, %c2] : memref<8x4x9xi32>, vector<8x8xi32>
    %84 = vector.broadcast %cst : f32 to vector<8x4x9xf32>
    %85 = vector.fma %84, %84, %84 : vector<8x4x9xf32>
    %86 = tensor.empty(%c10) : tensor<4x?xi1>
    %87 = vector.broadcast %c32632_i16 : i16 to vector<8xi16>
    %88 = vector.broadcast %false_0 : i1 to vector<8xi1>
    %89 = vector.maskedload %alloc_11[%c7, %c3, %c7], %88, %87 : memref<8x4x9xi16>, vector<8xi1>, vector<8xi16> into vector<8xi16>
    %90 = arith.shli %c426148679_i64, %c426148679_i64 : i64
    %91 = vector.broadcast %cst : f32 to vector<14xf32>
    %92 = vector.fma %91, %91, %91 : vector<14xf32>
    %93 = arith.maxui %c1996824902_i32, %c1996824902_i32 : i32
    %94 = arith.cmpf one, %cst, %cst : f32
    %95 = vector.broadcast %cst : f32 to vector<8x9xf32>
    %dest_28, %accumulated_value_29 = vector.scan <mul>, %85, %95 {inclusive = false, reduction_dim = 1 : i64} : vector<8x4x9xf32>, vector<8x9xf32>
    %96 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %62, %62, %c32632_i16 : vector<2xi16>, vector<2xi16> into i16
    %97 = arith.cmpf false, %cst_3, %cst_3 : f16
    %98 = arith.negf %cst_1 : f32
    %99 = math.atan2 %0, %0 : tensor<14xf32>
    %100 = arith.cmpi ule, %true, %false : i1
    %101 = arith.divsi %false_22, %true_24 : i1
    %102 = arith.remf %cst_1, %cst : f32
    %103 = scf.execute_region -> i64 {
      %277 = arith.ceildivsi %c8820_i16, %c8820_i16 : i16
      %278 = arith.negf %cst_3 : f16
      %279 = affine.min affine_map<(d0, d1, d2) -> (d1 - 2)>(%58, %c11, %c11)
      %280 = arith.ori %false_26, %false_26 : i1
      %281 = vector.bitcast %80 : vector<8x8xf32> to vector<8x8xf32>
      %282 = arith.cmpi ne, %false_27, %false : i1
      %283 = arith.remui %false_4, %false_0 : i1
      %284 = tensor.empty() : tensor<8x8xi32>
      %285 = math.fpowi %2, %284 : tensor<8x8xf16>, tensor<8x8xi32>
      %286 = vector.bitcast %89 : vector<8xi16> to vector<8xi16>
      %287 = index.add %c12, %65
      %288 = vector.broadcast %cst_2 : f32 to vector<4x9x4x9xf32>
      %289 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %85, %84, %288 : vector<8x4x9xf32>, vector<8x4x9xf32> into vector<4x9x4x9xf32>
      %290 = vector.bitcast %88 : vector<8xi1> to vector<8xi1>
      %expanded_54 = tensor.expand_shape %10 [[0], [1], [2, 3]] : tensor<8x4x9xi32> into tensor<8x4x9x1xi32>
      %291 = arith.negf %cst_3 : f16
      %292 = arith.subi %c8820_i16, %c32632_i16 : i16
      %293 = vector.bitcast %89 : vector<8xi16> to vector<8xi16>
      scf.yield %c426148679_i64 : i64
    }
    %104 = tensor.empty() : tensor<8x4x9xi32>
    %mapped = linalg.map ins(%9 : tensor<8x4x9xi32>) outs(%104 : tensor<8x4x9xi32>)
      (%in: i32) {
        memref.alloca_scope  {
          %alloc_59 = memref.alloc() : memref<4x14xf16>
          %cst_60 = arith.constant 1.000000e+00 : f32
          %cst_61 = arith.constant 0.000000e+00 : f32
          %308 = vector.transfer_read %alloc_16[%c11, %65, %c1], %cst_61 : memref<8x4x9xf32>, vector<f32>
          %309 = tensor.empty() : tensor<8x4x9xi64>
          %310 = arith.remsi %false_4, %false_22 : i1
          %311 = bufferization.to_tensor %alloc_7 : memref<14xi32>
          %312 = arith.addf %cst_2, %cst : f32
          %313 = memref.load %alloc_21[%c3, %c1, %c8] : memref<8x4x9xi64>
          %inserted_62 = tensor.insert %c615313423_i32 into %9[%c4, %c3, %c5] : tensor<8x4x9xi32>
          %inserted_63 = tensor.insert %c1996824902_i32 into %6[%c1, %c12] : tensor<4x14xi32>
          %314 = vector.insertelement %c-27843_i16, %19[%c14 : index] : vector<14xi16>
          %315 = vector.extract_strided_slice %79 {offsets = [4], sizes = [4], strides = [1]} : vector<8x8xf32> to vector<4x8xf32>
          %316 = arith.floordivsi %true_24, %false_0 : i1
          %317 = vector.broadcast %cst_2 : f32 to vector<8x4x9xf32>
          %318 = vector.fma %317, %317, %85 : vector<8x4x9xf32>
          %319 = bufferization.clone %alloc_12 : memref<8x4x9xi32> to memref<8x4x9xi32>
          %320 = vector.broadcast %false_0 : i1 to vector<9xi1>
          %321 = vector.transfer_write %320, %5[%65, %48] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xi1>, tensor<8x8xi1>
          %322 = index.divu %c1, %61
          %323 = vector.load %alloc_19[%c4, %c2] : memref<8x8xf32>, vector<14xf32>
          %324 = arith.cmpf false, %cst, %cst_1 : f32
          %325 = arith.divsi %true_24, %false_0 : i1
          %326 = index.ceildivs %c1, %58
          %cst_64 = arith.constant 1.000000e+00 : f16
          %327 = vector.transfer_read %alloc_17[%c4, %c1], %cst_64 : memref<4x14xf16>, vector<f16>
          %alloc_65 = memref.alloc() : memref<14xi16>
          %328 = vector.broadcast %true_24 : i1 to vector<4x9x8xi1>
          %329 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0, d1)>, affine_map<(d0, d1, d2, d3) -> (d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %24, %59, %328 : vector<8x4x9xi1>, vector<8x8xi1> into vector<4x9x8xi1>
          %330 = vector.insertelement %false_22, %320[%c10 : index] : vector<9xi1>
          %331 = arith.addi %c615313423_i32, %c200632833_i32 : i32
          %332 = vector.broadcast %cst_2 : f32 to vector<8x4x9xf32>
          %333 = math.log2 %0 : tensor<14xf32>
          %334 = math.powf %cst_2, %cst_2 : f32
          %alloc_66 = memref.alloc() : memref<8x4x9xf32>
          %335 = vector.transpose %318, [1, 0, 2] : vector<8x4x9xf32> to vector<4x8x9xf32>
          %336 = arith.xori %103, %c1786215703_i64 : i64
          %337 = arith.shli %c1786215703_i64, %c1786215703_i64 : i64
        }
        %277 = vector.broadcast %cst : f32 to vector<4x14xf32>
        %278 = vector.fma %277, %277, %277 : vector<4x14xf32>
        %279 = math.cos %20 : tensor<14xf16>
        %280 = arith.remsi %c615313423_i32, %c1996824902_i32 : i32
        %281 = arith.maxui %false_22, %false_0 : i1
        %282 = math.atan2 %12, %12 : tensor<14xf16>
        %283 = memref.load %alloc_11[%c3, %c3, %c2] : memref<8x4x9xi16>
        %284 = arith.addf %cst, %cst_2 : f32
        %285 = math.fma %2, %2, %2 : tensor<8x8xf16>
        %286 = vector.broadcast %c426148679_i64 : i64 to vector<4x9xi64>
        %287 = vector.insert %286, %26 [2] : vector<4x9xi64> into vector<8x4x9xi64>
        %288 = arith.divui %false, %false_22 : i1
        %289 = scf.while (%arg0 = %alloc_10) : (memref<4x14xi64>) -> memref<4x14xi64> {
          %alloca_59 = memref.alloca() : memref<14xf16>
          %308 = arith.divui %c426148679_i64, %c1786215703_i64 : i64
          %309 = arith.negf %cst_1 : f32
          %310 = index.floordivs %65, %57
          %311 = math.fpowi %0, %55 : tensor<14xf32>, tensor<14xi32>
          %true_60 = index.bool.constant true
          %312 = arith.remui %c615313423_i32, %c1996824902_i32 : i32
          %313 = index.mul %57, %c0
          scf.condition(%false_4) %alloc_10 : memref<4x14xi64>
        } do {
        ^bb0(%arg0: memref<4x14xi64>):
          %308 = arith.remui %true_24, %false_26 : i1
          %309 = index.castu %c200632833_i32 : i32 to index
          %310 = math.sqrt %22 : tensor<f16>
          %311 = arith.ori %c1996824902_i32, %c200632833_i32 : i32
          %312 = math.log2 %20 : tensor<14xf16>
          %313 = arith.addi %in, %c200632833_i32 : i32
          %314 = math.log1p %0 : tensor<14xf32>
          %315 = arith.addf %cst_3, %cst_3 : f16
          %316 = math.fma %2, %2, %2 : tensor<8x8xf16>
          %317 = math.log1p %18 : tensor<14xf16>
          %318 = memref.realloc %alloc_13 : memref<14xi1> to memref<14xi1>
          %319 = arith.remf %cst_1, %cst_2 : f32
          %320 = vector.maskedload %alloc_15[%c5, %c2], %49, %69 : memref<8x8xf32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
          %321 = math.roundeven %21 : tensor<f16>
          memref.assume_alignment %alloc_15, 4 : memref<8x8xf32>
          %322 = vector.broadcast %cst_2 : f32 to vector<14xf32>
          %323 = vector.fma %322, %69, %322 : vector<14xf32>
          scf.yield %arg0 : memref<4x14xi64>
        }
        memref.assume_alignment %alloc_18, 4 : memref<8x4x9xi1>
        %290 = tensor.empty() : tensor<4x8xf32>
        %291 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%290 : tensor<4x8xf32>) outs(%14 : tensor<8x4x9xf32>) {
        ^bb0(%in_59: f32, %out: f32):
          %308 = index.ceildivs %c0, %c6
          %309 = bufferization.to_memref %cast : memref<f16>
          %310 = index.ceildivs %c14, %c3
          %alloc_60 = memref.alloc() : memref<8x8xf16>
          %311 = vector.broadcast %cst_3 : f16 to vector<8x4x9xf16>
          %312 = vector.gather %alloc_60[%57, %c0] [%25], %24, %311 : memref<8x8xf16>, vector<8x4x9xi32>, vector<8x4x9xi1>, vector<8x4x9xf16> into vector<8x4x9xf16>
          %313 = bufferization.to_tensor %alloc_18 : memref<8x4x9xi1>
          %314 = index.castu %false_22 : i1 to index
          %315 = arith.minui %true, %false_26 : i1
          %316 = math.round %2 : tensor<8x8xf16>
          %317 = vector.transpose %23, [0, 2, 1] : vector<8x4x9xi64> to vector<8x9x4xi64>
          %318 = arith.divsi %false_0, %true : i1
          %319 = arith.maxsi %true_25, %false : i1
          %320 = index.ceildivu %c12, %61
          %321 = index.ceildivu %c5, %c2
          %322 = math.round %cst_3 : f16
          %323 = arith.negf %cst_3 : f16
          %324 = vector.bitcast %29 : vector<8x8xi1> to vector<8x8xi1>
          memref.assume_alignment %309, 16 : memref<f16>
          %325 = math.cttz %16 : tensor<4x14xi32>
          %alloc_61 = memref.alloc() : memref<14xi64>
          %326 = arith.shrui %c200632833_i32, %c1996824902_i32 : i32
          %327 = vector.shuffle %70, %70 [0, 2, 3, 4, 6, 7, 8, 9, 11, 12, 14, 15, 17, 18, 19, 20, 22, 26] : vector<14xf32>, vector<14xf32>
          %328 = arith.ceildivsi %c8820_i16, %c8820_i16 : i16
          %329 = index.mul %c9, %308
          %330 = math.tan %12 : tensor<14xf16>
          %331 = arith.ceildivsi %c426148679_i64, %c426148679_i64 : i64
          %cst_62 = arith.constant 1.000000e+00 : f16
          %cst_63 = arith.constant 0.000000e+00 : f16
          %332 = vector.transfer_read %alloc_60[%c6, %c6], %cst_63 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<8x8xf16>, vector<14xf16>
          %333 = vector.load %alloc_8[%c2, %c7] : memref<4x14xf32>, vector<8x8xf32>
          %334 = arith.cmpf ueq, %out, %in_59 : f32
          %335 = math.powf %in_59, %cst_1 : f32
          %336 = math.fma %14, %14, %14 : tensor<8x4x9xf32>
          %337 = affine.load %alloc_12[%c8, %c9, %c11] : memref<8x4x9xi32>
          %338 = index.mul %329, %310
          linalg.yield %cst : f32
        } -> tensor<8x4x9xf32>
        %292 = arith.remsi %false, %false_0 : i1
        %293 = arith.remsi %c1786215703_i64, %103 : i64
        %294 = vector.broadcast %c200632833_i32 : i32 to vector<8xi32>
        %dest_54, %accumulated_value_55 = vector.scan <mul>, %83, %294 {inclusive = true, reduction_dim = 1 : i64} : vector<8x8xi32>, vector<8xi32>
        %295 = arith.maxsi %true, %false : i1
        %true_56 = index.bool.constant true
        %296 = arith.maxui %c200632833_i32, %in : i32
        %297 = bufferization.to_memref %5 : memref<8x8xi1>
        %298 = arith.addi %c1996824902_i32, %c200632833_i32 : i32
        %inserted_57 = tensor.insert %cst_3 into %20[%c0] : tensor<14xf16>
        %299 = math.log10 %cst_3 : f16
        %300 = arith.maxsi %c615313423_i32, %c1996824902_i32 : i32
        %301 = affine.load %alloc_17[%c13, %c3] : memref<4x14xf16>
        %302 = vector.broadcast %true_24 : i1 to vector<8x8xi1>
        %303 = arith.cmpi sle, %c200632833_i32, %c1996824902_i32 : i32
        %304 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 * -3)>(%c9, %c13, %c15, %c4)
        %305 = arith.floordivsi %c8820_i16, %c-27843_i16 : i16
        %306 = vector.broadcast %cst_3 : f16 to vector<f16>
        %307 = vector.transfer_write %306, %12[%c5] : vector<f16>, tensor<14xf16>
        %alloca_58 = memref.alloca() : memref<14xi16>
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    %105 = math.atan2 %cst, %cst_1 : f32
    %cast_30 = tensor.cast %9 : tensor<8x4x9xi32> to tensor<?x?x?xi32>
    %106 = arith.maxsi %c8820_i16, %c8820_i16 : i16
    %107 = math.absi %10 : tensor<8x4x9xi32>
    %108 = index.add %c10, %c1
    %109 = arith.shrui %c-27843_i16, %c8820_i16 : i16
    %110 = math.fma %20, %20, %transposed : tensor<14xf16>
    %111 = affine.min affine_map<(d0, d1, d2) -> (d1 mod 64 + 64, d2 * 128)>(%c7, %c9, %48)
    %112 = vector.broadcast %true_24 : i1 to vector<i1>
    vector.transfer_write %112, %54[%c10] : vector<i1>, memref<14xi1>
    %113 = math.log10 %12 : tensor<14xf16>
    %alloc_31 = memref.alloc() : memref<4x14xi1>
    %114 = vector.broadcast %c1996824902_i32 : i32 to vector<14xi32>
    %115 = vector.gather %alloc_31[%c3, %c7] [%114], %49, %49 : memref<4x14xi1>, vector<14xi32>, vector<14xi1>, vector<14xi1> into vector<14xi1>
    %116 = arith.addi %c8820_i16, %c8820_i16 : i16
    %117 = arith.divsi %false_27, %false_26 : i1
    %118 = tensor.empty() : tensor<4x14xf16>
    %119 = math.powf %21, %21 : tensor<f16>
    %120 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %92, %92, %cst : vector<14xf32>, vector<14xf32> into f32
    %alloca = memref.alloca() : memref<8x8xi32>
    %121 = math.roundeven %14 : tensor<8x4x9xf32>
    %122 = tensor.empty() : tensor<8x8xi64>
    %123 = linalg.matmul ins(%1, %1 : tensor<8x8xi64>, tensor<8x8xi64>) outs(%122 : tensor<8x8xi64>) -> tensor<8x8xi64>
    %124 = arith.maxui %c8820_i16, %c8820_i16 : i16
    %expanded = tensor.expand_shape %5 [[0], [1, 2]] : tensor<8x8xi1> into tensor<8x8x1xi1>
    %125 = vector.broadcast %c1786215703_i64 : i64 to vector<9xi64>
    %126 = vector.broadcast %false_27 : i1 to vector<9xi1>
    %127 = vector.maskedload %alloc_20[%c0], %126, %125 : memref<4xi64>, vector<9xi1>, vector<9xi64> into vector<9xi64>
    %128 = vector.extract %126[8] : vector<9xi1>
    %129 = vector.flat_transpose %89 {columns = 4 : i32, rows = 2 : i32} : vector<8xi16> -> vector<8xi16>
    %130 = arith.addi %c32632_i16, %c-27843_i16 : i16
    %131 = arith.shli %false_22, %false_22 : i1
    %132 = scf.execute_region -> tensor<8x4x9xi16> {
      %277 = arith.divsi %c1786215703_i64, %c1786215703_i64 : i64
      %278 = math.round %21 : tensor<f16>
      %279 = math.round %15 : tensor<4x14xf32>
      %280 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 + d0 - 16)>(%57, %c3, %c3, %57)
      %281 = vector.extract_strided_slice %127 {offsets = [4], sizes = [3], strides = [1]} : vector<9xi64> to vector<3xi64>
      %282 = arith.shrui %false_22, %true : i1
      %alloc_54 = memref.alloc() : memref<4x14xi16>
      %283 = scf.while (%arg0 = %alloc_5) : (memref<8x4x9xf32>) -> memref<8x4x9xf32> {
        %291 = tensor.empty(%48, %c8) : tensor<?x?xi1>
        %292 = index.mul %c2, %58
        %293 = vector.bitcast %50 : vector<14xi16> to vector<14xi16>
        %294 = arith.negf %cst_1 : f32
        %295 = math.absi %c200632833_i32 : i32
        bufferization.dealloc_tensor %4 : tensor<8x4x9xi16>
        %296 = arith.cmpf olt, %cst, %cst_1 : f32
        %297 = vector.bitcast %71 : vector<3xi16> to vector<3xi16>
        scf.condition(%true_24) %arg0 : memref<8x4x9xf32>
      } do {
      ^bb0(%arg0: memref<8x4x9xf32>):
        %291 = arith.shrsi %103, %c1786215703_i64 : i64
        %292 = vector.broadcast %c8820_i16 : i16 to vector<8x8xi16>
        %293 = vector.outerproduct %89, %129, %292 {kind = #vector.kind<xor>} : vector<8xi16>, vector<8xi16>
        %294 = math.atan2 %20, %12 : tensor<14xf16>
        %alloc_56 = memref.alloc() : memref<8x4x9xi64>
        %295 = arith.floordivsi %true, %false_4 : i1
        %296 = bufferization.to_tensor %74 : memref<4x14xi32>
        %297 = math.fma %0, %0, %0 : tensor<14xf32>
        %298 = index.mul %65, %c5
        %299 = arith.xori %c-27843_i16, %c8820_i16 : i16
        %300 = arith.remsi %true_24, %false_26 : i1
        %c792670122_i32 = arith.constant 792670122 : i32
        %301 = index.sizeof
        %c0_i32 = arith.constant 0 : i32
        %302 = vector.transfer_read %9[%c8, %c9, %65], %c0_i32 : tensor<8x4x9xi32>, vector<4xi32>
        %303 = math.atan %118 : tensor<4x14xf16>
        %304 = math.log1p %0 : tensor<14xf32>
        %305 = arith.addi %c200632833_i32, %c0_i32 : i32
        scf.yield %alloc_16 : memref<8x4x9xf32>
      }
      %284 = vector.insert %cst, %92 [12] : f32 into vector<14xf32>
      %285 = math.log10 %2 : tensor<8x8xf16>
      %286 = index.mul %c10, %c12
      %alloc_55 = memref.alloc() : memref<8x4x9xi64>
      %287 = arith.floordivsi %c1996824902_i32, %c200632833_i32 : i32
      %288 = scf.if %true_25 -> (i1) {
        %291 = arith.mulf %cst_1, %cst_2 : f32
        %292 = arith.muli %true_25, %false_22 : i1
        %293 = index.add %c4, %c15
        %294 = arith.addi %c1786215703_i64, %c426148679_i64 : i64
        %295 = math.log1p %cst_1 : f32
        %296 = index.ceildivu %c2, %48
        %297 = arith.divui %c32632_i16, %c8820_i16 : i16
        %298 = vector.broadcast %false_0 : i1 to vector<i1>
        vector.transfer_write %298, %alloc_13[%c9] : vector<i1>, memref<14xi1>
        scf.yield %true : i1
      } else {
        %291 = math.powf %cst, %cst_2 : f32
        %292 = arith.shli %true_25, %true_24 : i1
        %293 = arith.divui %false_0, %false : i1
        %294 = affine.apply affine_map<(d0) -> ((-(d0 ceildiv 32)) ceildiv 8)>(%108)
        %295 = bufferization.to_memref %15 : memref<4x14xf32>
        %296 = vector.broadcast %cst_3 : f16 to vector<8x4x9xf16>
        %297 = vector.gather %20[%c9] [%25], %24, %296 : tensor<14xf16>, vector<8x4x9xi32>, vector<8x4x9xi1>, vector<8x4x9xf16> into vector<8x4x9xf16>
        %298 = vector.extract_strided_slice %114 {offsets = [10], sizes = [2], strides = [1]} : vector<14xi32> to vector<2xi32>
        %299 = vector.broadcast %c-27843_i16 : i16 to vector<8x4x9xi16>
        scf.yield %false_4 : i1
      }
      %289 = scf.index_switch %57 -> i1 
      case 1 {
        %291 = memref.atomic_rmw assign %c426148679_i64, %alloc_21[%c5, %c0, %c5] : (i64, memref<8x4x9xi64>) -> i64
        %292 = arith.ori %c615313423_i32, %c200632833_i32 : i32
        %293 = arith.floordivsi %c1786215703_i64, %103 : i64
        %c0_i32 = arith.constant 0 : i32
        %294 = vector.transfer_read %6[%58, %c8], %c0_i32 : tensor<4x14xi32>, vector<14xi32>
        %295 = arith.subi %c-27843_i16, %c8820_i16 : i16
        %296 = arith.andi %c0_i32, %c1996824902_i32 : i32
        %297 = math.rsqrt %cst_3 : f16
        %298 = vector.broadcast %cst_3 : f16 to vector<f16>
        %299 = vector.transfer_write %298, %118[%c7, %61] : vector<f16>, tensor<4x14xf16>
        %300 = vector.multi_reduction <mul>, %59, %88 [0] : vector<8x8xi1> to vector<8xi1>
        %301 = arith.ori %c-27843_i16, %c-27843_i16 : i16
        %302 = math.log1p %0 : tensor<14xf32>
        %303 = arith.minsi %c1786215703_i64, %c1786215703_i64 : i64
        %304 = affine.load %alloc_6[%c2, %c2] : memref<8x8xi16>
        %305 = bufferization.to_memref %1 : memref<8x8xi64>
        %306 = memref.atomic_rmw mins %304, %alloc_6[%c6, %c4] : (i16, memref<8x8xi16>) -> i16
        %307 = vector.flat_transpose %281 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
        scf.yield %true_24 : i1
      }
      default {
        %expanded_56 = tensor.expand_shape %14 [[0], [1], [2, 3]] : tensor<8x4x9xf32> into tensor<8x4x9x1xf32>
        %291 = vector.transpose %26, [2, 1, 0] : vector<8x4x9xi64> to vector<9x4x8xi64>
        %292 = arith.shli %c8820_i16, %c-27843_i16 : i16
        %293 = vector.broadcast %cst_2 : f32 to vector<8xf32>
        %dest_57, %accumulated_value_58 = vector.scan <mul>, %80, %293 {inclusive = true, reduction_dim = 0 : i64} : vector<8x8xf32>, vector<8xf32>
        %294 = index.ceildivs %c14, %c14
        %295 = vector.create_mask %57, %c1 : vector<4x14xi1>
        %296 = memref.load %alloc_5[%c4, %c2, %c8] : memref<8x4x9xf32>
        %297 = arith.remf %cst, %cst : f32
        %c9218_i16 = arith.constant 9218 : i16
        %alloca_59 = memref.alloca() : memref<14xi32>
        %false_60 = index.bool.constant false
        %298 = math.cos %22 : tensor<f16>
        %299 = math.round %transposed : tensor<14xf16>
        %300 = vector.create_mask %c6 : vector<14xi1>
        %301 = arith.minf %cst, %cst_1 : f32
        %302 = math.log2 %2 : tensor<8x8xf16>
        scf.yield %false : i1
      }
      %290 = arith.floordivsi %false_4, %false_27 : i1
      scf.yield %4 : tensor<8x4x9xi16>
    }
    %133 = math.absi %true_24 : i1
    %134 = math.copysign %14, %14 : tensor<8x4x9xf32>
    %135 = arith.ceildivsi %true, %true_25 : i1
    %alloc_32 = memref.alloc() : memref<14x4xi32>
    %136 = tensor.empty() : tensor<4x4xi32>
    %137 = linalg.matmul ins(%17, %alloc_32 : tensor<4x14xi32>, memref<14x4xi32>) outs(%136 : tensor<4x4xi32>) -> tensor<4x4xi32>
    %138 = vector.flat_transpose %125 {columns = 3 : i32, rows = 3 : i32} : vector<9xi64> -> vector<9xi64>
    %139 = arith.remsi %c1786215703_i64, %c426148679_i64 : i64
    %140 = index.maxu %57, %58
    %141 = affine.load %alloc_16[%c13, %c12, %c12] : memref<8x4x9xf32>
    %142 = vector.matrix_multiply %127, %127 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<9xi64>) -> vector<1xi64>
    %143 = arith.cmpi sgt, %c200632833_i32, %c200632833_i32 : i32
    %144 = arith.minf %cst_2, %cst : f32
    %145 = tensor.empty() : tensor<4x8x9xi32>
    %146 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%145 : tensor<4x8x9xi32>) outs(%13 : tensor<8x4x9xi32>) {
    ^bb0(%in: i32, %out: i32):
      %277 = scf.while (%arg0 = %127) : (vector<9xi64>) -> vector<9xi64> {
        %true_62 = index.bool.constant true
        affine.store %false_0, %alloc_31[%c2, %c15] : memref<4x14xi1>
        %303 = arith.minui %true_24, %false_0 : i1
        %304 = arith.floordivsi %c32632_i16, %c32632_i16 : i16
        %305 = arith.maxsi %false_26, %false_22 : i1
        %306 = vector.broadcast %cst : f32 to vector<14xf32>
        %307 = vector.fma %306, %91, %92 : vector<14xf32>
        %308 = math.powf %18, %transposed : tensor<14xf16>
        %309 = math.exp2 %15 : tensor<4x14xf32>
        scf.condition(%false_26) %127 : vector<9xi64>
      } do {
      ^bb0(%arg0: vector<9xi64>):
        %303 = math.absi %true_25 : i1
        %true_62 = index.bool.constant true
        %304 = arith.cmpf olt, %cst, %141 : f32
        %305 = math.roundeven %0 : tensor<14xf32>
        %306 = math.fma %12, %18, %18 : tensor<14xf16>
        %307 = vector.broadcast %in : i32 to vector<14xi32>
        %308 = arith.negf %141 : f32
        %309 = arith.ori %true_25, %false : i1
        %310 = vector.shuffle %115, %88 [0, 1, 2, 3, 4, 8, 12, 14, 15, 17, 18, 19, 20, 21] : vector<14xi1>, vector<8xi1>
        %311 = vector.load %alloc_21[%c3, %c3, %c3] : memref<8x4x9xi64>, vector<8x8xi64>
        %alloc_63 = memref.alloc() : memref<8x8xi16>
        %312 = arith.remui %out, %c200632833_i32 : i32
        %313 = vector.insertelement %c8820_i16, %71[%c7 : index] : vector<3xi16>
        %314 = math.exp2 %118 : tensor<4x14xf16>
        %315 = index.ceildivu %c14, %c6
        %316 = index.sizeof
        scf.yield %125 : vector<9xi64>
      }
      %278 = math.log2 %12 : tensor<14xf16>
      scf.index_switch %65 
      case 1 {
        %303 = arith.floordivsi %false_27, %false : i1
        %304 = math.log10 %2 : tensor<8x8xf16>
        %305 = arith.divsi %true_24, %false_26 : i1
        %306 = math.round %12 : tensor<14xf16>
        %307 = arith.shrsi %103, %c426148679_i64 : i64
        %308 = arith.maxsi %c-27843_i16, %c32632_i16 : i16
        %309 = arith.ori %false_0, %false : i1
        %310 = vector.insertelement %cst, %69[%c11 : index] : vector<14xf32>
        affine.store %c8820_i16, %alloc_11[%c3, %c11, %c14] : memref<8x4x9xi16>
        %311 = math.log1p %21 : tensor<f16>
        %312 = math.fma %22, %22, %22 : tensor<f16>
        %313 = arith.muli %c32632_i16, %c8820_i16 : i16
        %314 = math.fpowi %12, %55 : tensor<14xf16>, tensor<14xi32>
        %315 = math.roundeven %12 : tensor<14xf16>
        %inserted_62 = tensor.insert %c1996824902_i32 into %104[%c2, %c2, %c7] : tensor<8x4x9xi32>
        %316 = arith.negf %141 : f32
        scf.yield
      }
      case 2 {
        %303 = vector.broadcast %false_22 : i1 to vector<9xi1>
        vector.transfer_write %303, %alloc_18[%c13, %c12, %c0] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<9xi1>, memref<8x4x9xi1>
        %304 = index.mul %c5, %57
        %alloc_62 = memref.alloc() : memref<4x14xi64>
        %305 = math.log10 %18 : tensor<14xf16>
        %306 = affine.load %74[%c4, %c6] : memref<4x14xi32>
        %false_63 = index.bool.constant false
        %307 = arith.shli %true, %false_0 : i1
        %308 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %87, %87, %c32632_i16 : vector<8xi16>, vector<8xi16> into i16
        bufferization.dealloc_tensor %3 : tensor<8x4x9xi1>
        %309 = vector.broadcast %c426148679_i64 : i64 to vector<9x9xi64>
        %310 = vector.outerproduct %125, %125, %309 {kind = #vector.kind<minui>} : vector<9xi64>, vector<9xi64>
        %false_64 = index.bool.constant false
        %311 = math.atan2 %15, %15 : tensor<4x14xf32>
        %312 = vector.broadcast %cst_1 : f32 to vector<4x9x8xf32>
        %313 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0, d1)>, affine_map<(d0, d1, d2, d3) -> (d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %85, %79, %312 : vector<8x4x9xf32>, vector<8x8xf32> into vector<4x9x8xf32>
        %314 = index.sub %c13, %65
        %315 = arith.ceildivsi %false_64, %false_0 : i1
        %316 = index.divs %c15, %c6
        scf.yield
      }
      default {
        %303 = index.mul %c3, %48
        %304 = arith.ori %out, %c1996824902_i32 : i32
        %305 = math.sqrt %118 : tensor<4x14xf16>
        %306 = vector.broadcast %cst_2 : f32 to vector<4x9xf32>
        %dest_62, %accumulated_value_63 = vector.scan <add>, %84, %306 {inclusive = true, reduction_dim = 0 : i64} : vector<8x4x9xf32>, vector<4x9xf32>
        %307 = arith.shrsi %false_0, %false_4 : i1
        %308 = arith.ori %c1786215703_i64, %c426148679_i64 : i64
        memref.assume_alignment %alloc_7, 8 : memref<14xi32>
        %309 = bufferization.to_memref %expanded : memref<8x8x1xi1>
        %310 = arith.xori %out, %in : i32
        %311 = arith.remsi %false_27, %false_22 : i1
        %312 = affine.load %alloc_11[%c4, %c6, %c9] : memref<8x4x9xi16>
        %c1_i64 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %313 = vector.transfer_read %1[%48, %58], %c0_i64 : tensor<8x8xi64>, vector<i64>
        vector.print %69 : vector<14xf32>
        %314 = arith.remsi %c1786215703_i64, %c1_i64 : i64
        %315 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 mod 128)>(%c9, %c14, %58, %c1)
        %316 = vector.broadcast %c1996824902_i32 : i32 to vector<i32>
        %317 = vector.transfer_write %316, %10[%57, %c4, %c0] : vector<i32>, tensor<8x4x9xi32>
      }
      %279 = math.exp2 %15 : tensor<4x14xf32>
      %280 = math.atan %14 : tensor<8x4x9xf32>
      %281 = math.roundeven %0 : tensor<14xf32>
      %282 = math.cos %118 : tensor<4x14xf16>
      %283 = scf.execute_region -> index {
        %303 = affine.load %alloc_13[%c11] : memref<14xi1>
        %304 = arith.remsi %false_22, %false : i1
        %305 = arith.ceildivsi %false_4, %false : i1
        %306 = math.rsqrt %0 : tensor<14xf32>
        %307 = math.tanh %18 : tensor<14xf16>
        %308 = memref.load %alloc_21[%c6, %c3, %c7] : memref<8x4x9xi64>
        %309 = vector.broadcast %c4 : index to vector<8xindex>
        %310 = vector.broadcast %c426148679_i64 : i64 to vector<8xi64>
        vector.scatter %alloc_9[%c2, %c5] [%309], %88, %310 : memref<4x14xi64>, vector<8xindex>, vector<8xi1>, vector<8xi64>
        %311 = math.round %14 : tensor<8x4x9xf32>
        %312 = bufferization.to_tensor %74 : memref<4x14xi32>
        %313 = memref.load %alloc_14[%c4, %c1] : memref<8x8xi32>
        %314 = math.sqrt %14 : tensor<8x4x9xf32>
        %rank = tensor.rank %9 : tensor<8x4x9xi32>
        %315 = vector.extract_strided_slice %84 {offsets = [4, 1], sizes = [3, 1], strides = [1, 1]} : vector<8x4x9xf32> to vector<3x1x9xf32>
        %alloc_62 = memref.alloc() : memref<14xi1>
        %316 = vector.broadcast %false_0 : i1 to vector<4x14xi1>
        %317 = math.atan2 %transposed, %12 : tensor<14xf16>
        scf.yield %c6 : index
      }
      %284 = tensor.empty() : tensor<8x4x9xi32>
      %mapped_54 = linalg.map ins(%9, %10 : tensor<8x4x9xi32>, tensor<8x4x9xi32>) outs(%284 : tensor<8x4x9xi32>)
        (%in_62: i32, %in_63: i32) {
          %303 = math.floor %0 : tensor<14xf32>
          %304 = math.fma %141, %141, %cst : f32
          %305 = index.sub %c8, %c14
          %306 = math.round %22 : tensor<f16>
          %307 = vector.matrix_multiply %89, %19 {lhs_columns = 2 : i32, lhs_rows = 4 : i32, rhs_columns = 7 : i32} : (vector<8xi16>, vector<14xi16>) -> vector<28xi16>
          %308 = math.log10 %20 : tensor<14xf16>
          %309 = arith.cmpi eq, %out, %in_63 : i32
          %310 = arith.addi %c8820_i16, %c32632_i16 : i16
          %311 = index.divu %c2, %c7
          %312 = arith.remsi %false_22, %false_4 : i1
          %313 = vector.broadcast %103 : i64 to vector<4xi64>
          %314 = vector.multi_reduction <maxui>, %23, %313 [0, 2] : vector<8x4x9xi64> to vector<4xi64>
          %315 = arith.remui %c1786215703_i64, %c426148679_i64 : i64
          memref.assume_alignment %alloc_20, 4 : memref<4xi64>
          %316 = math.log10 %0 : tensor<14xf32>
          %317 = arith.ceildivsi %103, %103 : i64
          %318 = affine.load %alloc_16[%c10, %c8, %c4] : memref<8x4x9xf32>
          %319 = arith.divsi %false_22, %false_27 : i1
          vector.print %50 : vector<14xi16>
          %320 = arith.mulf %cst_3, %cst_3 : f16
          %false_64 = index.bool.constant false
          %321 = arith.divsi %true, %true_24 : i1
          %322 = bufferization.clone %alloc_13 : memref<14xi1> to memref<14xi1>
          %323 = vector.broadcast %141 : f32 to vector<14xf32>
          %324 = vector.fma %323, %323, %323 : vector<14xf32>
          %325 = math.round %2 : tensor<8x8xf16>
          %326 = arith.maxui %c1996824902_i32, %in_63 : i32
          %327 = index.divu %305, %65
          %328 = vector.create_mask %c9 : vector<14xi1>
          %329 = arith.addi %c8820_i16, %c-27843_i16 : i16
          %330 = index.sub %c13, %c7
          bufferization.dealloc_tensor %cast : tensor<f16>
          %331 = affine.min affine_map<(d0, d1) -> (d1 * -8)>(%140, %108)
          %332 = index.mul %c0, %c13
          %c0_i32_65 = arith.constant 0 : i32
          linalg.yield %c0_i32_65 : i32
        }
      %285 = arith.cmpf ult, %cst_2, %cst : f32
      %286 = vector.shuffle %112, %112 [0, 1] : vector<i1>, vector<i1>
      %287 = math.ipowi %3, %3 : tensor<8x4x9xi1>
      %288 = index.sizeof
      %289 = vector.maskedload %alloc_16[%c4, %c2, %c7], %49, %69 : memref<8x4x9xf32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
      %290 = index.mul %111, %c14
      %alloca_55 = memref.alloca() : memref<14xi1>
      %291 = arith.maxsi %false, %false_27 : i1
      %292 = arith.ceildivsi %false_26, %true_25 : i1
      %c0_i32 = arith.constant 0 : i32
      %c0_i32_56 = arith.constant 0 : i32
      %293 = vector.transfer_read %16[%288, %c7], %c0_i32_56 : tensor<4x14xi32>, vector<i32>
      %alloca_57 = memref.alloca() : memref<8x4x9xi1>
      %294 = math.expm1 %22 : tensor<f16>
      %295 = math.round %cst_1 : f32
      %296 = scf.while (%arg0 = %85) : (vector<8x4x9xf32>) -> vector<8x4x9xf32> {
        %303 = bufferization.to_memref %122 : memref<8x8xi64>
        %304 = vector.reduction <maxsi>, %127 : vector<9xi64> into i64
        %305 = math.ipowi %true_25, %false_26 : i1
        %alloc_62 = memref.alloc() : memref<8x8xi1>
        %306 = vector.matrix_multiply %138, %142 {lhs_columns = 1 : i32, lhs_rows = 9 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<1xi64>) -> vector<9xi64>
        %307 = arith.negf %cst_3 : f16
        %308 = index.ceildivu %c11, %c11
        %309 = arith.divsi %out, %c0_i32 : i32
        scf.condition(%false) %85 : vector<8x4x9xf32>
      } do {
      ^bb0(%arg0: vector<8x4x9xf32>):
        %303 = arith.ori %false, %false : i1
        %304 = vector.matrix_multiply %92, %92 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xf32>, vector<14xf32>) -> vector<1xf32>
        %alloca_62 = memref.alloca() : memref<4x14xf16>
        %305 = math.powf %15, %15 : tensor<4x14xf32>
        %306 = bufferization.to_tensor %alloc_21 : memref<8x4x9xi64>
        %307 = index.floordivs %c8, %c7
        %308 = bufferization.to_memref %5 : memref<8x8xi1>
        %true_63 = arith.constant true
        %309 = math.log10 %15 : tensor<4x14xf32>
        %310 = arith.shli %c1786215703_i64, %c426148679_i64 : i64
        %311 = math.round %2 : tensor<8x8xf16>
        %312 = vector.broadcast %cst_2 : f32 to vector<9xf32>
        %313 = vector.insert %312, %84 [3, 3] : vector<9xf32> into vector<8x4x9xf32>
        %314 = vector.load %alloc_6[%c1, %c4] : memref<8x8xi16>, vector<8x8xi16>
        %inserted_64 = tensor.insert %cst_2 into %0[%c10] : tensor<14xf32>
        %315 = arith.shli %true, %false_27 : i1
        %316 = memref.load %alloc_14[%c1, %c2] : memref<8x8xi32>
        scf.yield %84 : vector<8x4x9xf32>
      }
      %297 = memref.alloca_scope  -> (i32) {
        %303 = vector.broadcast %cst_3 : f16 to vector<9xf16>
        %304 = vector.maskedload %alloc_17[%c1, %c4], %126, %303 : memref<4x14xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
        %305 = math.sqrt %141 : f32
        %306 = index.castu %false_22 : i1 to index
        %307 = tensor.empty() : tensor<8x8xi64>
        %308 = linalg.matmul ins(%122, %122 : tensor<8x8xi64>, tensor<8x8xi64>) outs(%307 : tensor<8x8xi64>) -> tensor<8x8xi64>
        %309 = arith.remf %cst_2, %cst : f32
        %310 = math.log1p %12 : tensor<14xf16>
        %311 = vector.extract_strided_slice %71 {offsets = [1], sizes = [2], strides = [1]} : vector<3xi16> to vector<2xi16>
        %312 = bufferization.to_tensor %alloc_20 : memref<4xi64>
        %313 = arith.minf %cst, %cst_1 : f32
        %314 = tensor.empty() : tensor<8x8xi64>
        %315 = linalg.matmul ins(%1, %122 : tensor<8x8xi64>, tensor<8x8xi64>) outs(%314 : tensor<8x8xi64>) -> tensor<8x8xi64>
        %316 = bufferization.to_tensor %alloc_20 : memref<4xi64>
        %317 = arith.divsi %false, %false : i1
        %318 = math.log1p %21 : tensor<f16>
        %319 = tensor.empty() : tensor<8x8xf16>
        %320 = linalg.matmul ins(%2, %2 : tensor<8x8xf16>, tensor<8x8xf16>) outs(%319 : tensor<8x8xf16>) -> tensor<8x8xf16>
        %321 = arith.divui %c1996824902_i32, %c615313423_i32 : i32
        memref.assume_alignment %alloc_16, 1 : memref<8x4x9xf32>
        %322 = math.powf %transposed, %transposed : tensor<14xf16>
        %323 = vector.matrix_multiply %50, %129 {lhs_columns = 2 : i32, lhs_rows = 7 : i32, rhs_columns = 4 : i32} : (vector<14xi16>, vector<8xi16>) -> vector<28xi16>
        %324 = math.log1p %0 : tensor<14xf32>
        %325 = index.castu %c6 : index to i32
        %326 = vector.load %alloc_16[%c2, %c3, %c4] : memref<8x4x9xf32>, vector<8x4x9xf32>
        %327 = index.castu %true : i1 to index
        %328 = arith.cmpi slt, %true, %false_26 : i1
        %329 = math.log10 %cst_3 : f16
        %330 = arith.maxui %false_27, %false_0 : i1
        %331 = vector.broadcast %cst_1 : f32 to vector<8xf32>
        %dest_62, %accumulated_value_63 = vector.scan <minf>, %79, %331 {inclusive = true, reduction_dim = 1 : i64} : vector<8x8xf32>, vector<8xf32>
        %332 = index.mul %c9, %c5
        %333 = math.tan %2 : tensor<8x8xf16>
        %334 = math.round %transposed : tensor<14xf16>
        %335 = vector.multi_reduction <minui>, %142, %c1786215703_i64 [0] : vector<1xi64> to i64
        %cst_64 = arith.constant 1.000000e+00 : f16
        %336 = vector.transfer_read %12[%327], %cst_64 : tensor<14xf16>, vector<f16>
        %inserted_65 = tensor.insert %c0_i32 into %8[%c2, %c0] : tensor<4x14xi32>
        memref.alloca_scope.return %out : i32
      }
      %298 = math.exp2 %cst : f32
      %alloc_58 = memref.alloc() : memref<8x8xi64>
      %299 = math.tan %14 : tensor<8x4x9xf32>
      memref.alloca_scope  {
        %303 = index.divu %c0, %108
        %304 = vector.flat_transpose %126 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
        vector.print %138 : vector<9xi64>
        %305 = index.divu %c5, %c4
        %306 = index.add %c11, %288
        %307 = vector.broadcast %cst_2 : f32 to vector<4x14xf32>
        %308 = vector.fma %307, %307, %307 : vector<4x14xf32>
        %309 = vector.broadcast %cst_2 : f32 to vector<8x8xf32>
        %310 = arith.minsi %c8820_i16, %c8820_i16 : i16
        %311 = arith.ceildivsi %c8820_i16, %c8820_i16 : i16
        %312 = vector.extract %126[5] : vector<9xi1>
        %313 = math.log1p %14 : tensor<8x4x9xf32>
        %314 = math.log10 %cst_3 : f16
        %315 = arith.minf %cst_2, %cst_2 : f32
        %316 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d3 - d2) * 16 - 2)>(%c5, %140, %303, %c9)
        %317 = arith.divsi %in, %c1996824902_i32 : i32
        %318 = index.castu %true : i1 to index
        %319 = math.exp2 %14 : tensor<8x4x9xf32>
        %320 = vector.broadcast %false_22 : i1 to vector<14x14xi1>
        %321 = vector.outerproduct %115, %49, %320 {kind = #vector.kind<maxui>} : vector<14xi1>, vector<14xi1>
        %inserted_62 = tensor.insert %false_27 into %expanded[%c5, %c0, %c0] : tensor<8x8x1xi1>
        %322 = arith.shrsi %297, %297 : i32
        %323 = vector.insert %cst_2, %70 [12] : f32 into vector<14xf32>
        %324 = index.maxs %318, %c0
        %325 = vector.broadcast %c8820_i16 : i16 to vector<14x14xi16>
        %326 = vector.outerproduct %19, %19, %325 {kind = #vector.kind<xor>} : vector<14xi16>, vector<14xi16>
        %327 = math.round %transposed : tensor<14xf16>
        %328 = arith.maxsi %c615313423_i32, %c615313423_i32 : i32
        %329 = arith.ceildivsi %false_26, %false_27 : i1
        %330 = vector.insert %cst, %70 [11] : f32 into vector<14xf32>
        %331 = math.round %141 : f32
        %332 = index.castu %303 : index to i32
        %333 = memref.realloc %54 : memref<14xi1> to memref<8xi1>
        %334 = arith.xori %c200632833_i32, %out : i32
        %335 = bufferization.clone %74 : memref<4x14xi32> to memref<4x14xi32>
      }
      %300 = vector.broadcast %cst_1 : f32 to vector<8xf32>
      %dest_59, %accumulated_value_60 = vector.scan <maxf>, %79, %300 {inclusive = false, reduction_dim = 0 : i64} : vector<8x8xf32>, vector<8xf32>
      %inserted_61 = tensor.insert %cst_3 into %118[%c3, %c7] : tensor<4x14xf16>
      %301 = index.sub %c0, %c4
      %302 = vector.extract_strided_slice %71 {offsets = [1], sizes = [1], strides = [1]} : vector<3xi16> to vector<1xi16>
      linalg.yield %out : i32
    } -> tensor<8x4x9xi32>
    memref.assume_alignment %alloc_12, 2 : memref<8x4x9xi32>
    %147 = tensor.empty() : tensor<14x8xi32>
    %148 = tensor.empty() : tensor<4x8xi32>
    %149 = linalg.matmul ins(%8, %147 : tensor<4x14xi32>, tensor<14x8xi32>) outs(%148 : tensor<4x8xi32>) -> tensor<4x8xi32>
    %150 = arith.ceildivsi %false, %true : i1
    %151 = arith.minsi %c426148679_i64, %c1786215703_i64 : i64
    %152 = vector.bitcast %70 : vector<14xf32> to vector<14xf32>
    %153 = scf.execute_region -> tensor<8x8xf16> {
      %277 = bufferization.to_memref %10 : memref<8x4x9xi32>
      %278 = index.sizeof
      %279 = arith.maxsi %c615313423_i32, %c200632833_i32 : i32
      %c0_i32 = arith.constant 0 : i32
      %c0_i32_54 = arith.constant 0 : i32
      %280 = vector.transfer_read %104[%c6, %278, %58], %c0_i32_54 {permutation_map = affine_map<(d0, d1, d2) -> (0, 0)>} : tensor<8x4x9xi32>, vector<14x9xi32>
      %281 = affine.if affine_set<(d0, d1, d2) : (d0 == 0, d2 >= 0, d1 == 0)>(%c4, %c1, %c14) -> i1 {
        %294 = math.rsqrt %14 : tensor<8x4x9xf32>
        %295 = tensor.empty() : tensor<4x14xi64>
        %296 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %62, %62, %c-27843_i16 : vector<2xi16>, vector<2xi16> into i16
        %297 = math.powf %141, %cst_1 : f32
        %298 = arith.muli %103, %103 : i64
        %299 = arith.minf %cst_2, %141 : f32
        %300 = math.rsqrt %cst_3 : f16
        %301 = math.log2 %18 : tensor<14xf16>
        affine.yield %false_26 : i1
      } else {
        %alloc_55 = memref.alloc() : memref<4x14xi16>
        %294 = tensor.empty() : tensor<i32>
        %295 = math.fpowi %21, %294 : tensor<f16>, tensor<i32>
        %296 = arith.minui %false, %true : i1
        %297 = index.sub %108, %108
        %298 = vector.extract_strided_slice %59 {offsets = [5], sizes = [3], strides = [1]} : vector<8x8xi1> to vector<3x8xi1>
        %299 = arith.maxsi %c-27843_i16, %c32632_i16 : i16
        %300 = arith.floordivsi %c0_i32, %c1996824902_i32 : i32
        %301 = arith.cmpf oeq, %cst, %141 : f32
        affine.yield %false_27 : i1
      }
      %282 = bufferization.to_tensor %alloc_7 : memref<14xi32>
      %283 = math.absi %148 : tensor<4x8xi32>
      %284 = vector.maskedload %alloc_18[%c4, %c1, %c8], %49, %49 : memref<8x4x9xi1>, vector<14xi1>, vector<14xi1> into vector<14xi1>
      %285 = affine.if affine_set<(d0, d1, d2) : (d0 == 0, d2 + d2 ceildiv 128 - d2 == 0, d0 mod 32 >= 0, (d1 + d2) ceildiv 2 >= 0)>(%c12, %c5, %c8) -> i32 {
        %294 = arith.xori %c426148679_i64, %c426148679_i64 : i64
        %295 = arith.shli %true_24, %false_26 : i1
        %296 = vector.extract_strided_slice %26 {offsets = [3], sizes = [2], strides = [1]} : vector<8x4x9xi64> to vector<2x4x9xi64>
        %297 = vector.broadcast %103 : i64 to vector<8x4xi64>
        %298 = vector.multi_reduction <maxsi>, %23, %297 [2] : vector<8x4x9xi64> to vector<8x4xi64>
        %299 = affine.apply affine_map<(d0, d1, d2) -> ((d2 + d1) * 64)>(%c0, %c12, %58)
        %300 = math.rsqrt %12 : tensor<14xf16>
        %cast_55 = tensor.cast %12 : tensor<14xf16> to tensor<?xf16>
        %301 = math.log2 %14 : tensor<8x4x9xf32>
        affine.yield %c200632833_i32 : i32
      } else {
        %294 = index.divu %c15, %c6
        %295 = arith.floordivsi %c-27843_i16, %c-27843_i16 : i16
        %296 = vector.broadcast %cst : f32 to vector<8x4x9xf32>
        %297 = vector.fma %296, %85, %84 : vector<8x4x9xf32>
        %298 = math.powf %15, %15 : tensor<4x14xf32>
        %299 = math.log1p %12 : tensor<14xf16>
        %300 = index.divu %c15, %c15
        %301 = arith.shrsi %103, %c426148679_i64 : i64
        %c20921_i16 = arith.constant 20921 : i16
        affine.yield %c615313423_i32 : i32
      }
      %286 = math.fpowi %cst_1, %c615313423_i32 : f32, i32
      %287 = math.floor %12 : tensor<14xf16>
      %288 = tensor.empty() : tensor<8x8xi64>
      %289 = vector.broadcast %cst_2 : f32 to vector<14x14xf32>
      %290 = vector.outerproduct %69, %70, %289 {kind = #vector.kind<minf>} : vector<14xf32>, vector<14xf32>
      %291 = arith.remf %cst_1, %141 : f32
      %292 = tensor.empty(%c8, %65) : tensor<?x?xi1>
      %293 = math.atan2 %21, %21 : tensor<f16>
      scf.yield %2 : tensor<8x8xf16>
    }
    %154 = arith.minsi %false_0, %false : i1
    %155 = bufferization.to_tensor %alloc_9 : memref<4x14xi64>
    %c309457051_i32 = arith.constant 309457051 : i32
    %156 = vector.load %alloc_18[%c6, %c3, %c0] : memref<8x4x9xi1>, vector<8x8xi1>
    %157 = vector.broadcast %cst_2 : f32 to vector<4x14xf32>
    %158 = vector.fma %157, %157, %157 : vector<4x14xf32>
    %159 = vector.extract %129[0] : vector<8xi16>
    %160 = index.add %c3, %c1
    %161 = math.powf %15, %15 : tensor<4x14xf32>
    %162 = index.floordivs %c13, %c13
    %163 = arith.floordivsi %false_26, %false_26 : i1
    %164 = arith.remsi %c615313423_i32, %c615313423_i32 : i32
    %cst_33 = arith.constant 0x4DA0B79D : f32
    %165 = vector.insertelement %103, %142[%c8 : index] : vector<1xi64>
    %166 = vector.extract_strided_slice %24 {offsets = [1], sizes = [7], strides = [1]} : vector<8x4x9xi1> to vector<7x4x9xi1>
    %167 = math.log2 %12 : tensor<14xf16>
    %168 = arith.remf %cst_1, %cst_2 : f32
    %169 = index.floordivs %65, %c1
    %170 = math.powf %12, %12 : tensor<14xf16>
    %171 = bufferization.to_memref %122 : memref<8x8xi64>
    %172 = arith.ori %103, %c1786215703_i64 : i64
    %173 = vector.extract %142[0] : vector<1xi64>
    memref.alloca_scope  {
      %277 = vector.bitcast %80 : vector<8x8xf32> to vector<8x8xf32>
      %true_54 = index.bool.constant true
      %278 = arith.ceildivsi %c8820_i16, %c-27843_i16 : i16
      %279 = vector.shuffle %156, %29 [2, 3, 4, 5, 6, 7, 10, 11, 12, 13, 15] : vector<8x8xi1>, vector<8x8xi1>
      %280 = vector.broadcast %c-27843_i16 : i16 to vector<4x14xi16>
      %c954901063_i32 = arith.constant 954901063 : i32
      %281 = index.maxu %c4, %c9
      %282 = tensor.empty(%57, %c9) : tensor<?x?xi64>
      %283 = arith.ceildivsi %false, %false_0 : i1
      %284 = index.ceildivu %c0, %c14
      %inserted_55 = tensor.insert %cst_2 into %0[%c3] : tensor<14xf32>
      %285 = arith.xori %false, %true_25 : i1
      bufferization.dealloc_tensor %7 : tensor<4x14xi16>
      %generated_56 = tensor.generate %48, %c6 {
      ^bb0(%arg0: index, %arg1: index):
        %303 = arith.minf %cst_3, %cst_3 : f16
        %304 = index.mul %c14, %c15
        %305 = arith.addi %true_25, %false_22 : i1
        %306 = arith.remui %true_25, %true : i1
        tensor.yield %c1786215703_i64 : i64
      } : tensor<?x?xi64>
      %286 = vector.flat_transpose %152 {columns = 7 : i32, rows = 2 : i32} : vector<14xf32> -> vector<14xf32>
      %generated_57 = tensor.generate %c7 {
      ^bb0(%arg0: index, %arg1: index):
        vector.print %85 : vector<8x4x9xf32>
        %303 = affine.apply affine_map<(d0, d1) -> ((d1 + d0) floordiv 2)>(%169, %c0)
        %304 = math.log2 %15 : tensor<4x14xf32>
        %305 = bufferization.to_memref %13 : memref<8x4x9xi32>
        tensor.yield %cst_3 : f16
      } : tensor<?x8xf16>
      %alloca_58 = memref.alloca() : memref<8x4x9xf16>
      %287 = scf.while (%arg0 = %false_27) : (i1) -> i1 {
        %303 = bufferization.to_memref %122 : memref<8x8xi64>
        %304 = vector.broadcast %141 : f32 to vector<8x4x9xf32>
        %305 = vector.fma %304, %304, %85 : vector<8x4x9xf32>
        %306 = math.fma %cst_3, %cst_3, %cst_3 : f16
        %307 = vector.broadcast %140 : index to vector<9xindex>
        %308 = vector.broadcast %141 : f32 to vector<9xf32>
        vector.scatter %alloc_15[%c5, %c2] [%307], %126, %308 : memref<8x8xf32>, vector<9xindex>, vector<9xi1>, vector<9xf32>
        %309 = math.atan2 %20, %transposed : tensor<14xf16>
        %310 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %62, %62, %c32632_i16 : vector<2xi16>, vector<2xi16> into i16
        %311 = affine.apply affine_map<(d0, d1, d2, d3) -> (-((-(d3 ceildiv 4)) mod 8))>(%108, %c10, %c8, %61)
        %312 = math.powf %12, %18 : tensor<14xf16>
        scf.condition(%true) %false_0 : i1
      } do {
      ^bb0(%arg0: i1):
        %303 = vector.create_mask %57 : vector<14xi1>
        %304 = math.cos %21 : tensor<f16>
        %305 = memref.load %alloc_6[%c6, %c2] : memref<8x8xi16>
        %306 = vector.broadcast %c615313423_i32 : i32 to vector<4xi32>
        %307 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<or>} %64, %114, %306 : vector<4x14xi32>, vector<14xi32> into vector<4xi32>
        %308 = vector.bitcast %62 : vector<2xi16> to vector<2xi16>
        %309 = index.maxs %c14, %c7
        %310 = arith.maxsi %c426148679_i64, %c426148679_i64 : i64
        %311 = arith.maxsi %c615313423_i32, %c615313423_i32 : i32
        %312 = vector.broadcast %true : i1 to vector<8x8xi1>
        %313 = arith.ori %true_24, %false_4 : i1
        %314 = vector.multi_reduction <mul>, %152, %cst_1 [0] : vector<14xf32> to f32
        %alloca_59 = memref.alloca() : memref<14xi32>
        %315 = index.sizeof
        %c1631463904_i64 = arith.constant 1631463904 : i64
        %316 = math.log2 %153 : tensor<8x8xf16>
        %317 = tensor.empty() : tensor<14x4xi64>
        %318 = tensor.empty() : tensor<4x4xi64>
        %319 = linalg.matmul ins(%155, %317 : tensor<4x14xi64>, tensor<14x4xi64>) outs(%318 : tensor<4x4xi64>) -> tensor<4x4xi64>
        scf.yield %true_24 : i1
      }
      %288 = vector.broadcast %cst_2 : f32 to vector<8x8xf32>
      %289 = vector.fma %288, %79, %80 : vector<8x8xf32>
      %290 = arith.ori %c1786215703_i64, %c426148679_i64 : i64
      scf.index_switch %48 
      case 1 {
        %c-27957_i16 = arith.constant -27957 : i16
        %303 = vector.broadcast %cst : f32 to vector<4x14xf32>
        %304 = index.mul %c0, %c14
        %305 = math.powf %15, %15 : tensor<4x14xf32>
        %306 = affine.load %74[%c8, %c6] : memref<4x14xi32>
        %307 = index.ceildivs %c5, %48
        %308 = arith.minui %true_25, %false_0 : i1
        %309 = vector.broadcast %cst_3 : f16 to vector<f16>
        %310 = vector.transfer_write %309, %12[%65] : vector<f16>, tensor<14xf16>
        %311 = math.exp2 %15 : tensor<4x14xf32>
        %312 = bufferization.to_memref %132 : memref<8x4x9xi16>
        %false_59 = index.bool.constant false
        %313 = vector.gather %alloc_12[%307, %c14, %307] [%83], %29, %83 : memref<8x4x9xi32>, vector<8x8xi32>, vector<8x8xi1>, vector<8x8xi32> into vector<8x8xi32>
        %314 = math.atan2 %18, %12 : tensor<14xf16>
        %315 = vector.outerproduct %88, %88, %59 {kind = #vector.kind<add>} : vector<8xi1>, vector<8xi1>
        %316 = arith.minf %cst, %cst : f32
        memref.tensor_store %3, %alloc_18 : memref<8x4x9xi1>
        scf.yield
      }
      case 2 {
        affine.store %cst_2, %alloc_16[%c12, %c2, %c7] : memref<8x4x9xf32>
        %303 = arith.ceildivsi %c200632833_i32, %c615313423_i32 : i32
        %cst_59 = arith.constant 1.000000e+00 : f16
        %cst_60 = arith.constant 0.000000e+00 : f16
        %304 = vector.transfer_read %18[%c14], %cst_60 : tensor<14xf16>, vector<f16>
        %305 = tensor.empty() : tensor<14xi64>
        %306 = vector.gather %305[%c0] [%25], %24, %23 : tensor<14xi64>, vector<8x4x9xi32>, vector<8x4x9xi1>, vector<8x4x9xi64> into vector<8x4x9xi64>
        %alloc_61 = memref.alloc() : memref<14xf32>
        %307 = vector.load %alloc_20[%c3] : memref<4xi64>, vector<4x14xi64>
        %308 = math.log1p %153 : tensor<8x8xf16>
        %309 = arith.floordivsi %false_26, %false : i1
        %310 = vector.create_mask %284, %57 : vector<8x8xi1>
        %311 = math.copysign %141, %cst_1 : f32
        memref.store %c32632_i16, %alloc[%c5, %c3] : memref<8x8xi16>
        %312 = bufferization.to_tensor %54 : memref<14xi1>
        %alloc_62 = memref.alloc() : memref<14x14xi16>
        %313 = tensor.empty() : tensor<4x14xi16>
        %314 = linalg.matmul ins(%7, %alloc_62 : tensor<4x14xi16>, memref<14x14xi16>) outs(%313 : tensor<4x14xi16>) -> tensor<4x14xi16>
        %315 = index.sizeof
        %316 = vector.broadcast %cst_3 : f16 to vector<4x14xf16>
        %317 = math.expm1 %12 : tensor<14xf16>
        scf.yield
      }
      case 3 {
        %303 = arith.shrsi %false_4, %false_0 : i1
        %304 = vector.broadcast %cst : f32 to vector<4xf32>
        %305 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minf>} %69, %158, %304 : vector<14xf32>, vector<4x14xf32> into vector<4xf32>
        %306 = vector.broadcast %cst : f32 to vector<8xf32>
        %307 = vector.multi_reduction <minf>, %277, %306 [0] : vector<8x8xf32> to vector<8xf32>
        %308 = index.add %65, %61
        %309 = index.divu %c14, %c0
        %310 = math.ctpop %c-27843_i16 : i16
        %311 = math.round %cst_1 : f32
        %312 = math.rsqrt %14 : tensor<8x4x9xf32>
        %313 = arith.cmpf ord, %cst_1, %cst_1 : f32
        %314 = math.rsqrt %18 : tensor<14xf16>
        %315 = index.add %169, %57
        %316 = math.log1p %141 : f32
        %317 = arith.maxsi %c615313423_i32, %c615313423_i32 : i32
        %318 = bufferization.to_tensor %alloc_10 : memref<4x14xi64>
        %319 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d3 - d2) * 16 - 2)>(%c14, %c1, %58, %c4)
        memref.assume_alignment %alloc_10, 8 : memref<4x14xi64>
        scf.yield
      }
      default {
        %303 = vector.extract_strided_slice %158 {offsets = [0], sizes = [3], strides = [1]} : vector<4x14xf32> to vector<3x14xf32>
        %304 = arith.remsi %c615313423_i32, %c200632833_i32 : i32
        %305 = vector.matrix_multiply %127, %142 {lhs_columns = 1 : i32, lhs_rows = 9 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<1xi64>) -> vector<9xi64>
        %306 = arith.cmpf true, %cst_3, %cst_3 : f16
        %true_59 = index.bool.constant true
        %307 = vector.broadcast %103 : i64 to vector<8x8xi64>
        %308 = vector.gather %alloc_9[%160, %c14] [%83], %59, %307 : memref<4x14xi64>, vector<8x8xi32>, vector<8x8xi1>, vector<8x8xi64> into vector<8x8xi64>
        %309 = vector.flat_transpose %125 {columns = 3 : i32, rows = 3 : i32} : vector<9xi64> -> vector<9xi64>
        %310 = arith.remsi %c1996824902_i32, %c615313423_i32 : i32
        %alloc_60 = memref.alloc() : memref<8x4x9xi32>
        %311 = vector.broadcast %true_59 : i1 to vector<4x14xi1>
        %312 = vector.gather %15[%c1, %c2] [%64], %311, %158 : tensor<4x14xf32>, vector<4x14xi32>, vector<4x14xi1>, vector<4x14xf32> into vector<4x14xf32>
        vector.print %59 : vector<8x8xi1>
        %313 = memref.atomic_rmw muli %103, %alloc_10[%c3, %c8] : (i64, memref<4x14xi64>) -> i64
        %c1_i16 = arith.constant 1 : i16
        %314 = vector.transfer_read %alloc_6[%58, %c4], %c1_i16 : memref<8x8xi16>, vector<i16>
        %315 = math.log2 %22 : tensor<f16>
        %316 = vector.shuffle %289, %277 [1, 4, 6, 8, 11, 12] : vector<8x8xf32>, vector<8x8xf32>
        %317 = affine.load %alloc_13[%c7] : memref<14xi1>
      }
      %291 = tensor.empty(%169, %c15) : tensor<?x?xi64>
      %292 = vector.multi_reduction <minf>, %157, %158 [] : vector<4x14xf32> to vector<4x14xf32>
      %293 = index.add %284, %c8
      %294 = vector.shuffle %29, %29 [0, 6, 10, 11, 12] : vector<8x8xi1>, vector<8x8xi1>
      %295 = bufferization.to_memref %generated_57 : memref<?x8xf16>
      %c1463986458_i64 = arith.constant 1463986458 : i64
      %296 = vector.insertelement %c1786215703_i64, %125[%160 : index] : vector<9xi64>
      %297 = arith.minsi %c200632833_i32, %c615313423_i32 : i32
      %298 = math.fma %cst_2, %141, %cst : f32
      %299 = vector.broadcast %103 : i64 to vector<8xi64>
      %300 = vector.maskedload %171[%c2, %c0], %88, %299 : memref<8x8xi64>, vector<8xi1>, vector<8xi64> into vector<8xi64>
      %301 = vector.broadcast %cst_3 : f16 to vector<8x4x9xf16>
      %302 = vector.gather %118[%169, %c2] [%25], %24, %301 : tensor<4x14xf16>, vector<8x4x9xi32>, vector<8x4x9xi1>, vector<8x4x9xf16> into vector<8x4x9xf16>
    }
    %true_34 = index.bool.constant true
    %174 = math.tan %15 : tensor<4x14xf32>
    %175 = math.round %21 : tensor<f16>
    %176 = vector.broadcast %true_24 : i1 to vector<14x14xi1>
    %177 = vector.outerproduct %49, %115, %176 {kind = #vector.kind<mul>} : vector<14xi1>, vector<14xi1>
    %178 = vector.bitcast %127 : vector<9xi64> to vector<9xi64>
    %179 = math.sqrt %15 : tensor<4x14xf32>
    %180 = math.powf %141, %cst : f32
    %181 = index.divu %c2, %c14
    %182 = math.copysign %0, %0 : tensor<14xf32>
    %183 = vector.bitcast %114 : vector<14xi32> to vector<14xi32>
    %cst_35 = arith.constant 1.000000e+00 : f32
    %184 = vector.transfer_read %alloc_8[%140, %c2], %cst_35 : memref<4x14xf32>, vector<f32>
    %185 = arith.maxui %c8820_i16, %c-27843_i16 : i16
    %186 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 mod 128)>(%c12, %c7, %c4, %58)
    %187 = bufferization.to_tensor %alloc_9 : memref<4x14xi64>
    %cast_36 = tensor.cast %155 : tensor<4x14xi64> to tensor<?x?xi64>
    %188 = vector.broadcast %c1786215703_i64 : i64 to vector<4xi64>
    %189 = vector.broadcast %false : i1 to vector<4xi1>
    %190 = vector.maskedload %alloc_10[%c0, %c2], %189, %188 : memref<4x14xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
    %191 = memref.realloc %54 : memref<14xi1> to memref<4xi1>
    %192 = math.powf %0, %0 : tensor<14xf32>
    affine.store %c200632833_i32, %alloc_14[%c5, %c11] : memref<8x8xi32>
    %193 = affine.if affine_set<(d0, d1) : (d0 * 4 >= 0, 0 >= 0, d1 - 4 == 0)>(%c1, %c6) -> i64 {
      %277 = affine.load %alloc[%c7, %c5] : memref<8x8xi16>
      %278 = arith.remui %true_25, %true_24 : i1
      %279 = vector.matrix_multiply %19, %50 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi16>, vector<14xi16>) -> vector<1xi16>
      %280 = arith.ceildivsi %true_34, %false_27 : i1
      %281 = tensor.empty() : tensor<14xi16>
      %282 = vector.broadcast %277 : i16 to vector<8x4x9xi16>
      %283 = vector.gather %281[%162] [%25], %24, %282 : tensor<14xi16>, vector<8x4x9xi32>, vector<8x4x9xi1>, vector<8x4x9xi16> into vector<8x4x9xi16>
      %284 = math.roundeven %0 : tensor<14xf32>
      %285 = math.powf %2, %153 : tensor<8x8xf16>
      %286 = arith.cmpi ugt, %true_34, %false_22 : i1
      affine.yield %c426148679_i64 : i64
    } else {
      %277 = arith.ceildivsi %false_27, %false_26 : i1
      %278 = arith.shrsi %c200632833_i32, %c1996824902_i32 : i32
      %279 = scf.execute_region -> vector<8x8xi16> {
        %283 = vector.load %alloc_5[%c0, %c3, %c4] : memref<8x4x9xf32>, vector<4x14xf32>
        %284 = math.powf %18, %12 : tensor<14xf16>
        %285 = math.fma %cst_2, %cst_35, %cst_2 : f32
        %286 = affine.min affine_map<(d0) -> (0, -60, -60, -64)>(%58)
        vector.print %127 : vector<9xi64>
        %287 = math.log1p %cst_35 : f32
        %cst_57 = arith.constant 1.000000e+00 : f16
        %288 = vector.transfer_read %12[%140], %cst_57 : tensor<14xf16>, vector<f16>
        %289 = arith.muli %false, %false_27 : i1
        %290 = vector.flat_transpose %89 {columns = 4 : i32, rows = 2 : i32} : vector<8xi16> -> vector<8xi16>
        %291 = bufferization.to_memref %0 : memref<14xf32>
        %alloc_58 = memref.alloc() : memref<14xf32>
        %292 = math.log10 %cst_3 : f16
        %293 = arith.remui %c1786215703_i64, %103 : i64
        %294 = index.floordivs %286, %111
        %295 = bufferization.to_tensor %171 : memref<8x8xi64>
        %296 = vector.extract_strided_slice %49 {offsets = [0], sizes = [11], strides = [1]} : vector<14xi1> to vector<11xi1>
        %297 = vector.broadcast %c8820_i16 : i16 to vector<8x8xi16>
        scf.yield %297 : vector<8x8xi16>
      }
      %alloca_54 = memref.alloca() : memref<4x14xi32>
      %280 = arith.minf %cst_2, %cst_1 : f32
      %281 = scf.if %false_22 -> (i64) {
        %283 = arith.addf %141, %141 : f32
        %284 = index.mul %c7, %c2
        %285 = vector.broadcast %141 : f32 to vector<4x9xf32>
        %286 = vector.insert %285, %84 [1] : vector<4x9xf32> into vector<8x4x9xf32>
        %287 = math.cos %22 : tensor<f16>
        %288 = math.round %cst_2 : f32
        %289 = index.sizeof
        %290 = index.ceildivu %284, %61
        %291 = math.fma %cst_2, %cst, %cst_2 : f32
        scf.yield %c426148679_i64 : i64
      } else {
        %283 = arith.muli %true_25, %true : i1
        %284 = arith.minsi %true_24, %false_4 : i1
        %285 = math.fpowi %118, %16 : tensor<4x14xf16>, tensor<4x14xi32>
        %286 = arith.divui %103, %c426148679_i64 : i64
        %287 = arith.ceildivsi %c8820_i16, %c32632_i16 : i16
        memref.assume_alignment %alloc_20, 4 : memref<4xi64>
        %288 = vector.bitcast %69 : vector<14xf32> to vector<14xf32>
        %289 = math.powf %15, %15 : tensor<4x14xf32>
        scf.yield %c1786215703_i64 : i64
      }
      %282 = index.castu %c1996824902_i32 : i32 to index
      %dest_55, %accumulated_value_56 = vector.scan <add>, %64, %183 {inclusive = true, reduction_dim = 0 : i64} : vector<4x14xi32>, vector<14xi32>
      affine.yield %103 : i64
    }
    %194 = affine.load %alloc_11[%c1, %c10, %c4] : memref<8x4x9xi16>
    %195 = affine.min affine_map<(d0, d1, d2) -> (d1 - d0, d2, d1 + 16, d0 + d1 + 8 + 128)>(%108, %c13, %c4)
    %196 = arith.andi %c32632_i16, %c8820_i16 : i16
    %197 = vector.matrix_multiply %62, %89 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<2xi16>, vector<8xi16>) -> vector<4xi16>
    %198 = scf.index_switch %140 -> i1 
    case 1 {
      %277 = index.add %c5, %c3
      %alloca_54 = memref.alloca() : memref<4x14xi32>
      %278 = vector.load %alloc_21[%c0, %c2, %c0] : memref<8x4x9xi64>, vector<8x4x9xi64>
      %279 = bufferization.to_tensor %alloc_8 : memref<4x14xf32>
      %280 = vector.multi_reduction <maxf>, %70, %cst_35 [0] : vector<14xf32> to f32
      %cst_55 = arith.constant 1.06860397E+9 : f32
      %281 = bufferization.to_tensor %alloc_10 : memref<4x14xi64>
      %282 = vector.insertelement %cst_2, %92[%140 : index] : vector<14xf32>
      %cast_56 = tensor.cast %7 : tensor<4x14xi16> to tensor<?x?xi16>
      %283 = vector.insertelement %true_24, %115[%c5 : index] : vector<14xi1>
      %284 = index.maxu %48, %61
      %285 = arith.ceildivsi %false_4, %false : i1
      %286 = memref.alloca_scope  -> (memref<8x4x9xi64>) {
        %291 = affine.load %alloc_20[%c13] : memref<4xi64>
        %292 = index.maxu %61, %c0
        %293 = index.sizeof
        %294 = arith.ceildivsi %false_4, %true_24 : i1
        %295 = math.cttz %132 : tensor<8x4x9xi16>
        %296 = math.roundeven %118 : tensor<4x14xf16>
        %297 = math.log2 %280 : f32
        %298 = index.floordivs %181, %c3
        %299 = math.log2 %21 : tensor<f16>
        %300 = arith.xori %c426148679_i64, %c1786215703_i64 : i64
        %301 = vector.load %alloc_11[%c6, %c2, %c5] : memref<8x4x9xi16>, vector<8x4x9xi16>
        %302 = arith.xori %true_34, %false_0 : i1
        %303 = vector.flat_transpose %69 {columns = 7 : i32, rows = 2 : i32} : vector<14xf32> -> vector<14xf32>
        %alloca_57 = memref.alloca() : memref<4x14xf16>
        %304 = vector.extract %19[4] : vector<14xi16>
        %305 = arith.remsi %194, %c32632_i16 : i16
        %306 = math.fpowi %cst_2, %c200632833_i32 : f32, i32
        vector.print %85 : vector<8x4x9xf32>
        %307 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %129, %129, %194 : vector<8xi16>, vector<8xi16> into i16
        %308 = affine.apply affine_map<(d0, d1) -> ((d0 mod 2 - 16) ceildiv 4)>(%c15, %181)
        %309 = vector.create_mask %c10 : vector<14xi1>
        %310 = arith.ceildivsi %c32632_i16, %c-27843_i16 : i16
        %alloca_58 = memref.alloca() : memref<8x8xf16>
        %cst_59 = arith.constant 1.833600e+04 : f16
        %c1646994252_i32 = arith.constant 1646994252 : i32
        %rank = tensor.rank %7 : tensor<4x14xi16>
        %cast_60 = tensor.cast %155 : tensor<4x14xi64> to tensor<?x?xi64>
        %311 = arith.remui %false_4, %true_25 : i1
        bufferization.dealloc_tensor %1 : tensor<8x8xi64>
        %312 = memref.load %alloc_13[%c4] : memref<14xi1>
        %313 = math.powf %279, %15 : tensor<4x14xf32>
        %314 = index.divu %c9, %c3
        memref.alloca_scope.return %alloc_21 : memref<8x4x9xi64>
      }
      %287 = vector.broadcast %cst_3 : f16 to vector<f16>
      %288 = vector.transfer_write %287, %2[%58, %181] : vector<f16>, tensor<8x8xf16>
      %289 = arith.ori %c1786215703_i64, %c1786215703_i64 : i64
      %290 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 + 4, (d1 floordiv 32) * 2, 0, d2 + 32)>(%181, %169, %181, %181)
      scf.yield %true_24 : i1
    }
    case 2 {
      %277 = arith.ori %false_0, %false : i1
      %278 = vector.insert %103, %190 [3] : i64 into vector<4xi64>
      %false_54 = arith.constant false
      %279 = vector.transfer_read %alloc_31[%c11, %58], %false_54 : memref<4x14xi1>, vector<i1>
      %280 = vector.broadcast %103 : i64 to vector<8xi64>
      %281 = vector.maskedload %171[%c3, %c6], %88, %280 : memref<8x8xi64>, vector<8xi1>, vector<8xi64> into vector<8xi64>
      %282 = math.fma %14, %14, %14 : tensor<8x4x9xf32>
      scf.execute_region {
        %alloc_57 = memref.alloc() : memref<8x8xi64>
        %292 = arith.floordivsi %false_54, %true_24 : i1
        %293 = arith.divsi %true_34, %true_25 : i1
        %294 = vector.broadcast %true_34 : i1 to vector<7x9xi1>
        %dest_58, %accumulated_value_59 = vector.scan <maxsi>, %166, %294 {inclusive = false, reduction_dim = 1 : i64} : vector<7x4x9xi1>, vector<7x9xi1>
        %295 = vector.broadcast %c200632833_i32 : i32 to vector<i32>
        %296 = vector.transfer_write %295, %16[%c12, %c11] : vector<i32>, tensor<4x14xi32>
        %297 = vector.load %alloc_14[%c3, %c7] : memref<8x8xi32>, vector<14xi32>
        %298 = arith.shli %c200632833_i32, %c200632833_i32 : i32
        %299 = arith.divui %c8820_i16, %c32632_i16 : i16
        %300 = math.fpowi %118, %6 : tensor<4x14xf16>, tensor<4x14xi32>
        %301 = arith.addi %c615313423_i32, %c615313423_i32 : i32
        %302 = math.log10 %14 : tensor<8x4x9xf32>
        %303 = math.fma %153, %2, %2 : tensor<8x8xf16>
        %304 = arith.maxui %false_27, %false_22 : i1
        %305 = tensor.empty() : tensor<14x9xi32>
        %306 = tensor.empty() : tensor<4x9xi32>
        %307 = linalg.matmul ins(%17, %305 : tensor<4x14xi32>, tensor<14x9xi32>) outs(%306 : tensor<4x9xi32>) -> tensor<4x9xi32>
        %308 = arith.ori %false_54, %false_0 : i1
        %309 = vector.flat_transpose %115 {columns = 7 : i32, rows = 2 : i32} : vector<14xi1> -> vector<14xi1>
        scf.yield
      }
      %283 = arith.xori %c8820_i16, %c32632_i16 : i16
      %false_55 = index.bool.constant false
      %284 = math.round %cst_3 : f16
      %285 = math.fma %15, %15, %15 : tensor<4x14xf32>
      %286 = scf.while (%arg0 = %alloc_10) : (memref<4x14xi64>) -> memref<4x14xi64> {
        %292 = index.ceildivs %57, %c5
        %293 = arith.remf %cst_35, %cst_2 : f32
        %294 = vector.extract %24[2] : vector<8x4x9xi1>
        %295 = arith.divsi %false_26, %true_34 : i1
        %296 = arith.addf %cst_2, %cst_1 : f32
        %cst_57 = arith.constant 2.982400e+04 : f16
        %297 = vector.broadcast %141 : f32 to vector<4x14xf32>
        %298 = vector.fma %297, %297, %158 : vector<4x14xf32>
        %299 = arith.ori %c-27843_i16, %c32632_i16 : i16
        scf.condition(%true_25) %arg0 : memref<4x14xi64>
      } do {
      ^bb0(%arg0: memref<4x14xi64>):
        %292 = arith.addi %c32632_i16, %c-27843_i16 : i16
        %293 = vector.insertelement %cst, %70[%c13 : index] : vector<14xf32>
        %294 = tensor.empty() : tensor<14xi1>
        %295 = vector.gather %294[%c13] [%114], %115, %115 : tensor<14xi1>, vector<14xi32>, vector<14xi1>, vector<14xi1> into vector<14xi1>
        %296 = vector.broadcast %true_34 : i1 to vector<8x8xi1>
        %297 = math.tan %cst : f32
        %298 = math.atan2 %cst_35, %cst_2 : f32
        vector.print %29 : vector<8x8xi1>
        %299 = math.tanh %0 : tensor<14xf32>
        affine.store %194, %alloc[%c12, %c7] : memref<8x8xi16>
        %300 = vector.broadcast %cst_2 : f32 to vector<14x14xf32>
        %301 = vector.outerproduct %69, %70, %300 {kind = #vector.kind<mul>} : vector<14xf32>, vector<14xf32>
        %302 = arith.addi %true_34, %false_0 : i1
        %303 = vector.shuffle %126, %295 [0, 4, 6, 7, 11, 12, 14, 15, 20, 21, 22] : vector<9xi1>, vector<14xi1>
        %304 = arith.divui %c8820_i16, %c32632_i16 : i16
        %305 = affine.min affine_map<(d0, d1) -> (-(d0 mod 64), 0)>(%c5, %111)
        %306 = math.absi %194 : i16
        %307 = arith.cmpf false, %141, %cst_35 : f32
        scf.yield %alloc_10 : memref<4x14xi64>
      }
      %287 = math.ipowi %7, %7 : tensor<4x14xi16>
      %288 = arith.maxui %true_24, %true_34 : i1
      %289 = vector.broadcast %c8820_i16 : i16 to vector<i16>
      %290 = vector.transfer_write %289, %7[%c6, %c2] : vector<i16>, tensor<4x14xi16>
      %cast_56 = tensor.cast %10 : tensor<8x4x9xi32> to tensor<?x?x?xi32>
      %291 = vector.matrix_multiply %138, %138 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<9xi64>) -> vector<1xi64>
      scf.yield %true_25 : i1
    }
    case 3 {
      %277 = vector.maskedload %171[%c6, %c3], %126, %127 : memref<8x8xi64>, vector<9xi1>, vector<9xi64> into vector<9xi64>
      %278 = math.log1p %18 : tensor<14xf16>
      %279 = math.log2 %22 : tensor<f16>
      %280 = math.powf %cst_2, %cst_1 : f32
      %alloc_54 = memref.alloc() : memref<8x9xi1>
      %281 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_54 : memref<8x9xi1>) outs(%3 : tensor<8x4x9xi1>) {
      ^bb0(%in: i1, %out: i1):
        %293 = tensor.empty(%186) : tensor<4x?xf32>
        %294 = bufferization.to_memref %3 : memref<8x4x9xi1>
        %295 = arith.divui %c615313423_i32, %c615313423_i32 : i32
        %296 = math.log1p %0 : tensor<14xf32>
        %splat = tensor.splat %cst_3 : tensor<8x4x9xf16>
        %297 = vector.load %alloc_9[%c3, %c5] : memref<4x14xi64>, vector<14xi64>
        %298 = vector.extract_strided_slice %80 {offsets = [2], sizes = [5], strides = [1]} : vector<8x8xf32> to vector<5x8xf32>
        %299 = bufferization.clone %alloc_9 : memref<4x14xi64> to memref<4x14xi64>
        %300 = vector.broadcast %103 : i64 to vector<9x9xi64>
        %301 = vector.outerproduct %178, %178, %300 {kind = #vector.kind<minui>} : vector<9xi64>, vector<9xi64>
        %302 = vector.broadcast %c32632_i16 : i16 to vector<4x4xi16>
        %303 = vector.outerproduct %197, %197, %302 {kind = #vector.kind<and>} : vector<4xi16>, vector<4xi16>
        %304 = arith.remf %141, %cst_2 : f32
        %305 = arith.cmpf une, %cst_3, %cst_3 : f16
        %306 = bufferization.to_tensor %alloc_16 : memref<8x4x9xf32>
        %307 = arith.divui %false_4, %false : i1
        %308 = arith.remsi %c1996824902_i32, %c1996824902_i32 : i32
        %309 = tensor.empty() : tensor<14xi1>
        %310 = math.log2 %12 : tensor<14xf16>
        %311 = tensor.empty() : tensor<8x8xi64>
        %312 = linalg.matmul ins(%1, %1 : tensor<8x8xi64>, tensor<8x8xi64>) outs(%311 : tensor<8x8xi64>) -> tensor<8x8xi64>
        %313 = arith.minsi %true, %true_34 : i1
        %314 = tensor.empty(%c3) : tensor<?x14xi64>
        %315 = index.ceildivs %160, %162
        %316 = math.atan2 %15, %15 : tensor<4x14xf32>
        %317 = arith.minsi %c1786215703_i64, %103 : i64
        %318 = math.log1p %12 : tensor<14xf16>
        %319 = index.maxs %c1, %186
        %c1_i32 = arith.constant 1 : i32
        %c0_i32 = arith.constant 0 : i32
        %320 = vector.transfer_read %13[%c0, %160, %195], %c0_i32 {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : tensor<8x4x9xi32>, vector<4x8xi32>
        %321 = memref.realloc %alloc_20 : memref<4xi64> to memref<4xi64>
        %c1_i64 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %322 = vector.transfer_read %alloc_21[%169, %140, %61], %c0_i64 : memref<8x4x9xi64>, vector<i64>
        %323 = vector.broadcast %cst_35 : f32 to vector<8x8xf32>
        %324 = vector.fma %323, %80, %80 : vector<8x8xf32>
        %325 = math.absi %4 : tensor<8x4x9xi16>
        vector.print %323 : vector<8x8xf32>
        vector.print %85 : vector<8x4x9xf32>
        linalg.yield %false_27 : i1
      } -> tensor<8x4x9xi1>
      %282 = math.round %0 : tensor<14xf32>
      %283 = math.fpowi %cst_1, %c615313423_i32 : f32, i32
      %284 = arith.floordivsi %103, %c426148679_i64 : i64
      %alloc_55 = memref.alloc() : memref<4x4xi32>
      memref.tensor_store %136, %alloc_55 : memref<4x4xi32>
      %285 = arith.remui %c1786215703_i64, %103 : i64
      %286 = math.ctpop %1 : tensor<8x8xi64>
      %287 = tensor.empty() : tensor<8x8xf16>
      %288 = linalg.matmul ins(%2, %153 : tensor<8x8xf16>, tensor<8x8xf16>) outs(%287 : tensor<8x8xf16>) -> tensor<8x8xf16>
      %289 = math.ipowi %132, %4 : tensor<8x4x9xi16>
      %290 = scf.execute_region -> index {
        %cast_56 = tensor.cast %136 : tensor<4x4xi32> to tensor<?x?xi32>
        %293 = math.tanh %14 : tensor<8x4x9xf32>
        vector.print %29 : vector<8x8xi1>
        %false_57 = index.bool.constant false
        %294 = math.log2 %15 : tensor<4x14xf32>
        %295 = arith.remui %false_26, %true : i1
        %296 = arith.negf %141 : f32
        %297 = affine.apply affine_map<(d0, d1, d2) -> ((d2 + d1) * 64)>(%169, %c11, %c9)
        %298 = vector.flat_transpose %88 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
        %299 = arith.addf %141, %cst_2 : f32
        %300 = affine.min affine_map<(d0) -> ((d0 * 4) floordiv 128, (((d0 * 4) floordiv 128) ceildiv 64) mod 8, (((d0 * 4) floordiv 128) ceildiv 64) mod 8 - 128)>(%160)
        %301 = math.exp2 %0 : tensor<14xf32>
        %302 = math.powf %20, %12 : tensor<14xf16>
        %303 = index.sub %c0, %c6
        %splat = tensor.splat %c615313423_i32 : tensor<14xi32>
        %304 = index.castu %162 : index to i32
        scf.yield %c14 : index
      }
      %291 = index.add %c7, %c15
      %292 = arith.floordivsi %c426148679_i64, %c426148679_i64 : i64
      scf.yield %false_22 : i1
    }
    case 4 {
      %c0_i16 = arith.constant 0 : i16
      %c0_i16_54 = arith.constant 0 : i16
      %277 = vector.transfer_read %4[%162, %181, %c4], %c0_i16_54 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<8x4x9xi16>, vector<8xi16>
      scf.index_switch %108 
      case 1 {
        %alloca_58 = memref.alloca() : memref<8x8xf32>
        %290 = tensor.empty() : tensor<14xi16>
        %291 = vector.broadcast %c8820_i16 : i16 to vector<8x4x9xi16>
        %292 = vector.gather %290[%c5] [%25], %24, %291 : tensor<14xi16>, vector<8x4x9xi32>, vector<8x4x9xi1>, vector<8x4x9xi16> into vector<8x4x9xi16>
        %293 = math.exp2 %0 : tensor<14xf32>
        %294 = math.sqrt %14 : tensor<8x4x9xf32>
        %295 = vector.broadcast %141 : f32 to vector<8xf32>
        %dest_59, %accumulated_value_60 = vector.scan <add>, %80, %295 {inclusive = false, reduction_dim = 1 : i64} : vector<8x8xf32>, vector<8xf32>
        %296 = math.log10 %cst_2 : f32
        memref.assume_alignment %alloc_16, 4 : memref<8x4x9xf32>
        %297 = math.ipowi %136, %136 : tensor<4x4xi32>
        %298 = arith.negf %141 : f32
        %299 = arith.divui %false, %false_27 : i1
        %300 = math.log10 %0 : tensor<14xf32>
        %301 = math.log10 %cst_2 : f32
        %302 = math.rsqrt %14 : tensor<8x4x9xf32>
        %303 = vector.broadcast %cst : f32 to vector<4x9x8xf32>
        %304 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0, d1)>, affine_map<(d0, d1, d2, d3) -> (d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %84, %80, %303 : vector<8x4x9xf32>, vector<8x8xf32> into vector<4x9x8xf32>
        %305 = arith.divsi %false_4, %true : i1
        %306 = arith.divui %false_26, %true_24 : i1
        scf.yield
      }
      case 2 {
        %290 = math.powf %2, %2 : tensor<8x8xf16>
        %291 = vector.broadcast %c15 : index to vector<8xindex>
        %292 = vector.broadcast %cst_2 : f32 to vector<8xf32>
        vector.scatter %alloc_15[%c3, %c6] [%291], %88, %292 : memref<8x8xf32>, vector<8xindex>, vector<8xi1>, vector<8xf32>
        %293 = arith.maxui %true_25, %false_4 : i1
        %294 = vector.broadcast %c32632_i16 : i16 to vector<4x14xi16>
        %295 = arith.minsi %c426148679_i64, %103 : i64
        %296 = bufferization.clone %alloc_9 : memref<4x14xi64> to memref<4x14xi64>
        %alloc_58 = memref.alloc() : memref<14xf32>
        %297 = vector.gather %alloc_58[%108] [%114], %49, %91 : memref<14xf32>, vector<14xi32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
        %298 = math.expm1 %transposed : tensor<14xf16>
        %299 = index.ceildivs %181, %140
        memref.assume_alignment %alloc_14, 4 : memref<8x8xi32>
        %300 = index.floordivs %c5, %c7
        %301 = vector.broadcast %103 : i64 to vector<4x4xi64>
        %302 = vector.outerproduct %190, %190, %301 {kind = #vector.kind<and>} : vector<4xi64>, vector<4xi64>
        %303 = math.fma %15, %15, %15 : tensor<4x14xf32>
        %304 = vector.flat_transpose %114 {columns = 7 : i32, rows = 2 : i32} : vector<14xi32> -> vector<14xi32>
        %305 = arith.addf %cst, %cst_1 : f32
        %c0_i64 = arith.constant 0 : i64
        %306 = vector.transfer_read %122[%c7, %299], %c0_i64 : tensor<8x8xi64>, vector<i64>
        scf.yield
      }
      case 3 {
        %290 = math.roundeven %21 : tensor<f16>
        %291 = vector.broadcast %cst_2 : f32 to vector<8x8xf32>
        %292 = vector.fma %291, %291, %80 : vector<8x8xf32>
        %293 = memref.atomic_rmw minf %cst_1, %alloc_5[%c1, %c2, %c4] : (f32, memref<8x4x9xf32>) -> f32
        %294 = arith.ori %c200632833_i32, %c200632833_i32 : i32
        %295 = arith.divsi %103, %c426148679_i64 : i64
        %296 = arith.addf %cst_2, %141 : f32
        memref.assume_alignment %alloc_16, 2 : memref<8x4x9xf32>
        %297 = index.maxs %c7, %c9
        %alloca_58 = memref.alloca() : memref<8x4x9xi32>
        %298 = index.sub %108, %61
        %299 = vector.matrix_multiply %125, %125 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<9xi64>) -> vector<1xi64>
        %300 = index.castu %false_26 : i1 to index
        %301 = vector.broadcast %cst_2 : f32 to vector<14xf32>
        %302 = vector.fma %301, %69, %91 : vector<14xf32>
        %303 = math.absi %8 : tensor<4x14xi32>
        %304 = affine.apply affine_map<(d0, d1, d2) -> ((d2 + d1) * 64)>(%297, %108, %186)
        %305 = math.absi %17 : tensor<4x14xi32>
        scf.yield
      }
      case 4 {
        %290 = vector.broadcast %cst_35 : f32 to vector<4xf32>
        %dest_58, %accumulated_value_59 = vector.scan <maxf>, %158, %290 {inclusive = true, reduction_dim = 1 : i64} : vector<4x14xf32>, vector<4xf32>
        %291 = vector.bitcast %70 : vector<14xf32> to vector<14xi32>
        %292 = arith.minui %false_22, %false : i1
        %293 = math.exp2 %20 : tensor<14xf16>
        %294 = arith.remui %103, %c426148679_i64 : i64
        %inserted_60 = tensor.insert %cst_3 into %transposed[%c12] : tensor<14xf16>
        %295 = arith.remui %true_25, %false_26 : i1
        memref.assume_alignment %alloc_17, 8 : memref<4x14xf16>
        %296 = math.atan2 %0, %0 : tensor<14xf32>
        %297 = vector.insertelement %c426148679_i64, %142[%186 : index] : vector<1xi64>
        %298 = math.log1p %14 : tensor<8x4x9xf32>
        %299 = memref.load %alloc_16[%c4, %c0, %c7] : memref<8x4x9xf32>
        %dest_61, %accumulated_value_62 = vector.scan <minui>, %156, %88 {inclusive = false, reduction_dim = 0 : i64} : vector<8x8xi1>, vector<8xi1>
        %300 = math.log1p %20 : tensor<14xf16>
        %301 = vector.maskedload %alloc_13[%c13], %126, %126 : memref<14xi1>, vector<9xi1>, vector<9xi1> into vector<9xi1>
        %302 = tensor.empty() : tensor<8x8xi16>
        %303 = vector.broadcast %c8820_i16 : i16 to vector<8x4x9xi16>
        %304 = vector.gather %302[%140, %c13] [%25], %24, %303 : tensor<8x8xi16>, vector<8x4x9xi32>, vector<8x4x9xi1>, vector<8x4x9xi16> into vector<8x4x9xi16>
        scf.yield
      }
      default {
        %290 = memref.atomic_rmw addf %cst_2, %alloc_5[%c1, %c0, %c2] : (f32, memref<8x4x9xf32>) -> f32
        %291 = arith.divui %true_24, %true_34 : i1
        %292 = vector.extract %178[5] : vector<9xi64>
        %293 = math.round %141 : f32
        %294 = math.copysign %21, %21 : tensor<f16>
        %295 = arith.muli %c32632_i16, %194 : i16
        %rank = tensor.rank %22 : tensor<f16>
        %inserted_58 = tensor.insert %c1786215703_i64 into %11[%c1, %c7] : tensor<4x14xi64>
        %296 = math.rsqrt %2 : tensor<8x8xf16>
        %dest_59, %accumulated_value_60 = vector.scan <or>, %64, %183 {inclusive = false, reduction_dim = 0 : i64} : vector<4x14xi32>, vector<14xi32>
        %297 = math.fma %0, %0, %0 : tensor<14xf32>
        %298 = math.log2 %118 : tensor<4x14xf16>
        %299 = vector.broadcast %c-27843_i16 : i16 to vector<8x8xi16>
        %300 = vector.gather %7[%c9, %c7] [%83], %29, %299 : tensor<4x14xi16>, vector<8x8xi32>, vector<8x8xi1>, vector<8x8xi16> into vector<8x8xi16>
        %301 = math.ctpop %true_34 : i1
        %302 = tensor.empty() : tensor<8x8xi16>
        %303 = vector.broadcast %194 : i16 to vector<4x14xi16>
        %304 = vector.broadcast %false_0 : i1 to vector<4x14xi1>
        %305 = vector.gather %302[%c10, %108] [%64], %304, %303 : tensor<8x8xi16>, vector<4x14xi32>, vector<4x14xi1>, vector<4x14xi16> into vector<4x14xi16>
        %306 = index.divu %c14, %c13
      }
      %278 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %197, %197, %c8820_i16 : vector<4xi16>, vector<4xi16> into i16
      %279 = arith.shrsi %c1996824902_i32, %c615313423_i32 : i32
      %280 = arith.remf %cst_1, %cst : f32
      %281 = arith.remsi %true_24, %true_24 : i1
      %282 = vector.broadcast %cst_35 : f32 to vector<8xf32>
      %dest_55, %accumulated_value_56 = vector.scan <minf>, %80, %282 {inclusive = false, reduction_dim = 0 : i64} : vector<8x8xf32>, vector<8xf32>
      %283 = arith.divsi %c426148679_i64, %c1786215703_i64 : i64
      %284 = arith.remsi %true, %false_0 : i1
      %285 = math.log1p %transposed : tensor<14xf16>
      %generated_57 = tensor.generate %65 {
      ^bb0(%arg0: index):
        %290 = index.ceildivs %c9, %c15
        %true_58 = index.bool.constant true
        %291 = vector.broadcast %cst_1 : f32 to vector<14x14xf32>
        %292 = vector.outerproduct %152, %152, %291 {kind = #vector.kind<minf>} : vector<14xf32>, vector<14xf32>
        %293 = vector.broadcast %c1786215703_i64 : i64 to vector<i64>
        %294 = vector.transfer_write %293, %11[%c4, %c6] : vector<i64>, tensor<4x14xi64>
        tensor.yield %c0_i16 : i16
      } : tensor<?xi16>
      %c1833210106_i32 = arith.constant 1833210106 : i32
      %286 = bufferization.to_tensor %alloc_20 : memref<4xi64>
      %287 = math.cos %cst_1 : f32
      %288 = scf.index_switch %65 -> i32 
      case 1 {
        bufferization.dealloc_tensor %6 : tensor<4x14xi32>
        memref.assume_alignment %alloc_21, 8 : memref<8x4x9xi64>
        %290 = index.divu %108, %58
        %291 = index.sub %c14, %c8
        %292 = arith.shrui %c-27843_i16, %c0_i16 : i16
        %293 = arith.floordivsi %false_26, %true_34 : i1
        %294 = index.mul %c10, %c13
        %295 = arith.shli %c200632833_i32, %c615313423_i32 : i32
        %296 = vector.flat_transpose %125 {columns = 3 : i32, rows = 3 : i32} : vector<9xi64> -> vector<9xi64>
        %297 = math.round %0 : tensor<14xf32>
        %298 = math.sqrt %14 : tensor<8x4x9xf32>
        %299 = math.log1p %15 : tensor<4x14xf32>
        %300 = vector.create_mask %291, %291, %160 : vector<8x4x9xi1>
        %301 = arith.ori %true_34, %false_26 : i1
        %splat = tensor.splat %c426148679_i64 : tensor<4x14xi64>
        %302 = math.atan2 %14, %14 : tensor<8x4x9xf32>
        scf.yield %c1996824902_i32 : i32
      }
      default {
        %290 = index.sub %c7, %c3
        %291 = arith.floordivsi %c-27843_i16, %c8820_i16 : i16
        %from_elements = tensor.from_elements %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3 : tensor<14xf16>
        %292 = vector.broadcast %cst_1 : f32 to vector<9xf32>
        %293 = vector.maskedload %alloc_16[%c1, %c2, %c0], %126, %292 : memref<8x4x9xf32>, vector<9xi1>, vector<9xf32> into vector<9xf32>
        %294 = index.add %c7, %c10
        %295 = tensor.empty() : tensor<14x9xi64>
        %296 = tensor.empty() : tensor<4x9xi64>
        %297 = linalg.matmul ins(%155, %295 : tensor<4x14xi64>, tensor<14x9xi64>) outs(%296 : tensor<4x9xi64>) -> tensor<4x9xi64>
        %298 = arith.ceildivsi %true_25, %true_24 : i1
        %alloc_58 = memref.alloc() : memref<14x14xi64>
        %299 = tensor.empty() : tensor<4x14xi64>
        %300 = linalg.matmul ins(%11, %alloc_58 : tensor<4x14xi64>, memref<14x14xi64>) outs(%299 : tensor<4x14xi64>) -> tensor<4x14xi64>
        %301 = arith.muli %c426148679_i64, %103 : i64
        %302 = arith.maxui %194, %194 : i16
        %303 = math.powf %20, %12 : tensor<14xf16>
        %304 = arith.minf %141, %cst_1 : f32
        %305 = math.sqrt %2 : tensor<8x8xf16>
        %306 = bufferization.to_memref %9 : memref<8x4x9xi32>
        %307 = tensor.empty() : tensor<8x4x9xi1>
        %308 = arith.ori %c32632_i16, %c8820_i16 : i16
        scf.yield %c1996824902_i32 : i32
      }
      %289 = memref.load %alloc_7[%c6] : memref<14xi32>
      scf.yield %true_24 : i1
    }
    default {
      %277 = vector.load %alloc_20[%c1] : memref<4xi64>, vector<8x4x9xi64>
      %278 = math.atan %transposed : tensor<14xf16>
      %279 = vector.flat_transpose %19 {columns = 7 : i32, rows = 2 : i32} : vector<14xi16> -> vector<14xi16>
      %280 = math.absf %20 : tensor<14xf16>
      memref.assume_alignment %74, 8 : memref<4x14xi32>
      %281 = arith.remsi %false_27, %true_34 : i1
      %282 = index.sizeof
      %283 = arith.cmpi ne, %c8820_i16, %c-27843_i16 : i16
      %alloc_54 = memref.alloc() : memref<8x4x9xi64>
      %284 = scf.execute_region -> i32 {
        %290 = arith.shrsi %true, %true_24 : i1
        %291 = vector.broadcast %103 : i64 to vector<4x14xi64>
        %292 = vector.broadcast %false : i1 to vector<4x14xi1>
        %293 = vector.gather %alloc_9[%65, %282] [%64], %292, %291 : memref<4x14xi64>, vector<4x14xi32>, vector<4x14xi1>, vector<4x14xi64> into vector<4x14xi64>
        %294 = math.round %15 : tensor<4x14xf32>
        %cst_56 = arith.constant 1.000000e+00 : f32
        %cst_57 = arith.constant 0.000000e+00 : f32
        %295 = vector.transfer_read %alloc_8[%61, %57], %cst_57 : memref<4x14xf32>, vector<f32>
        %296 = index.castu %false_22 : i1 to index
        %297 = arith.cmpi ule, %false_27, %false_27 : i1
        %298 = arith.shli %103, %c426148679_i64 : i64
        %299 = math.log1p %2 : tensor<8x8xf16>
        %300 = arith.shrsi %false_22, %false_27 : i1
        %301 = arith.remui %c1996824902_i32, %c615313423_i32 : i32
        %302 = arith.xori %false_26, %false_26 : i1
        memref.assume_alignment %alloc_12, 16 : memref<8x4x9xi32>
        %303 = math.roundeven %2 : tensor<8x8xf16>
        %304 = arith.floordivsi %false_22, %true_34 : i1
        %305 = vector.matrix_multiply %127, %178 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<9xi64>) -> vector<1xi64>
        %306 = arith.remui %false_26, %true_25 : i1
        scf.yield %c200632833_i32 : i32
      }
      %285 = math.fpowi %12, %55 : tensor<14xf16>, tensor<14xi32>
      %286 = arith.cmpf ueq, %cst_2, %141 : f32
      %false_55 = index.bool.constant false
      %287 = math.powf %22, %21 : tensor<f16>
      %288 = math.roundeven %14 : tensor<8x4x9xf32>
      %289 = arith.divui %c32632_i16, %c8820_i16 : i16
      scf.yield %false_22 : i1
    }
    %199 = vector.broadcast %141 : f32 to vector<8x4x9xf32>
    %200 = vector.fma %199, %84, %85 : vector<8x4x9xf32>
    %201 = arith.remui %c8820_i16, %c-27843_i16 : i16
    %202 = math.tan %12 : tensor<14xf16>
    %203 = bufferization.to_tensor %alloc_8 : memref<4x14xf32>
    affine.for %arg0 = 0 to 105 {
    }
    %204 = vector.broadcast %cst_35 : f32 to vector<8x4x9xf32>
    %205 = vector.fma %204, %85, %84 : vector<8x4x9xf32>
    bufferization.dealloc_tensor %15 : tensor<4x14xf32>
    %206 = math.powf %cst_3, %cst_3 : f16
    %alloc_37 = memref.alloc() : memref<8xi32>
    %alloc_38 = memref.alloc() : memref<9x4x8xi32>
    %alloc_39 = memref.alloc() : memref<4x9x8xi32>
    %207 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_37, %alloc_38, %alloc_39 : memref<8xi32>, memref<9x4x8xi32>, memref<4x9x8xi32>) outs(%10 : tensor<8x4x9xi32>) {
    ^bb0(%in: i32, %in_54: i32, %in_55: i32, %out: i32):
      %277 = scf.while (%arg0 = %126) : (vector<9xi1>) -> vector<9xi1> {
        %303 = arith.remui %194, %c32632_i16 : i16
        %304 = index.sizeof
        %305 = index.floordivs %48, %61
        %306 = bufferization.to_tensor %74 : memref<4x14xi32>
        %307 = vector.insertelement %cst_1, %69[%186 : index] : vector<14xf32>
        %308 = math.atan2 %2, %2 : tensor<8x8xf16>
        %309 = math.powf %18, %12 : tensor<14xf16>
        %310 = math.roundeven %cst_2 : f32
        scf.condition(%true_25) %126 : vector<9xi1>
      } do {
      ^bb0(%arg0: vector<9xi1>):
        %303 = index.maxu %c5, %111
        %304 = math.roundeven %14 : tensor<8x4x9xf32>
        %305 = index.add %c15, %57
        %306 = arith.negf %cst_2 : f32
        %307 = math.floor %15 : tensor<4x14xf32>
        %308 = arith.minf %cst_2, %141 : f32
        %309 = arith.divui %c32632_i16, %194 : i16
        %alloc_58 = memref.alloc() : memref<8x8xf32>
        %310 = bufferization.to_memref %21 : memref<f16>
        %rank = tensor.rank %expanded : tensor<8x8x1xi1>
        %311 = arith.ori %c615313423_i32, %in_54 : i32
        %312 = arith.remui %c615313423_i32, %in_54 : i32
        %313 = vector.flat_transpose %91 {columns = 7 : i32, rows = 2 : i32} : vector<14xf32> -> vector<14xf32>
        %314 = index.divu %181, %65
        %315 = vector.broadcast %cst : f32 to vector<8x9xf32>
        %316 = vector.multi_reduction <mul>, %85, %315 [1] : vector<8x4x9xf32> to vector<8x9xf32>
        %317 = index.add %c15, %65
        scf.yield %126 : vector<9xi1>
      }
      %278 = arith.negf %cst_1 : f32
      %279 = vector.broadcast %false_0 : i1 to vector<8x8xi1>
      memref.assume_alignment %alloc_19, 1 : memref<8x8xf32>
      %280 = affine.if affine_set<(d0, d1) : (d0 * 4 >= 0, 0 >= 0, d1 - 4 == 0)>(%c3, %c5) -> i16 {
        %303 = math.roundeven %15 : tensor<4x14xf32>
        %304 = vector.extract_strided_slice %71 {offsets = [1], sizes = [1], strides = [1]} : vector<3xi16> to vector<1xi16>
        %305 = math.powf %cst_2, %141 : f32
        %306 = index.ceildivu %c10, %162
        %307 = vector.multi_reduction <and>, %88, %88 [] : vector<8xi1> to vector<8xi1>
        %308 = vector.extract_strided_slice %70 {offsets = [4], sizes = [5], strides = [1]} : vector<14xf32> to vector<5xf32>
        %alloc_58 = memref.alloc() : memref<14xi16>
        %309 = vector.broadcast %c32632_i16 : i16 to vector<8x4x9xi16>
        %310 = vector.gather %alloc_58[%c6] [%25], %24, %309 : memref<14xi16>, vector<8x4x9xi32>, vector<8x4x9xi1>, vector<8x4x9xi16> into vector<8x4x9xi16>
        %311 = vector.broadcast %cst_2 : f32 to vector<8xf32>
        %dest_59, %accumulated_value_60 = vector.scan <mul>, %80, %311 {inclusive = false, reduction_dim = 0 : i64} : vector<8x8xf32>, vector<8xf32>
        affine.yield %c8820_i16 : i16
      } else {
        %303 = vector.broadcast %cst_35 : f32 to vector<8x4x9xf32>
        %304 = index.ceildivu %c7, %c1
        %c0_i64 = arith.constant 0 : i64
        %305 = vector.transfer_read %122[%111, %c8], %c0_i64 : tensor<8x8xi64>, vector<i64>
        %306 = bufferization.to_tensor %alloc_7 : memref<14xi32>
        %307 = arith.ori %in_54, %out : i32
        %308 = arith.negf %cst_1 : f32
        %alloc_58 = memref.alloc() : memref<14xi32>
        %309 = arith.negf %141 : f32
        affine.yield %c32632_i16 : i16
      }
      %alloc_56 = memref.alloc() : memref<8x8xi64>
      memref.copy %171, %alloc_56 : memref<8x8xi64> to memref<8x8xi64>
      %281 = arith.shli %c615313423_i32, %c200632833_i32 : i32
      vector.print %279 : vector<8x8xi1>
      %splat = tensor.splat %in : tensor<8x4x9xi32>
      %282 = scf.execute_region -> memref<8x8xi1> {
        %303 = vector.broadcast %true_34 : i1 to vector<7x9xi1>
        %dest_58, %accumulated_value_59 = vector.scan <xor>, %166, %303 {inclusive = false, reduction_dim = 1 : i64} : vector<7x4x9xi1>, vector<7x9xi1>
        %304 = math.roundeven %15 : tensor<4x14xf32>
        %305 = arith.xori %c426148679_i64, %c1786215703_i64 : i64
        %306 = arith.shli %c615313423_i32, %c615313423_i32 : i32
        %307 = affine.min affine_map<(d0) -> (d0 ceildiv 16, d0 ceildiv 16, d0 ceildiv 16)>(%c6)
        %extracted = tensor.extract %2[%c4, %c0] : tensor<8x8xf16>
        %308 = vector.broadcast %true : i1 to vector<8x8xi1>
        %309 = vector.transfer_write %308, %3[%c15, %c15, %58] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<8x8xi1>, tensor<8x4x9xi1>
        %310 = math.exp2 %12 : tensor<14xf16>
        %311 = math.sqrt %0 : tensor<14xf32>
        %312 = math.atan2 %0, %0 : tensor<14xf32>
        vector.print %79 : vector<8x8xf32>
        %313 = vector.broadcast %in_54 : i32 to vector<i32>
        %314 = vector.transfer_write %313, %8[%c9, %c12] : vector<i32>, tensor<4x14xi32>
        %315 = index.sub %169, %160
        %inserted_60 = tensor.insert %c200632833_i32 into %6[%c3, %c12] : tensor<4x14xi32>
        %316 = affine.apply affine_map<(d0, d1, d2, d3) -> (-(d2 + 8))>(%c9, %58, %160, %c15)
        %317 = math.log2 %12 : tensor<14xf16>
        %alloc_61 = memref.alloc() : memref<8x8xi1>
        scf.yield %alloc_61 : memref<8x8xi1>
      }
      %283 = index.ceildivu %58, %111
      %284 = math.absi %132 : tensor<8x4x9xi16>
      %285 = bufferization.to_tensor %alloc_16 : memref<8x4x9xf32>
      affine.store %false_26, %alloc_31[%c0, %c5] : memref<4x14xi1>
      %false_57 = index.bool.constant false
      %286 = index.divu %c10, %c12
      %287 = index.add %c2, %c0
      %288 = math.absi %false_0 : i1
      %289 = arith.divsi %in, %c200632833_i32 : i32
      %290 = arith.maxui %in_54, %in : i32
      %291 = math.fpowi %cst_2, %c615313423_i32 : f32, i32
      %292 = vector.insertelement %in_55, %183[%c9 : index] : vector<14xi32>
      %293 = arith.shrui %in, %c1996824902_i32 : i32
      %294 = math.powf %cst_35, %cst_2 : f32
      %295 = vector.broadcast %false_0 : i1 to vector<8x4x9xi1>
      %296 = index.mul %c2, %57
      %297 = vector.shuffle %87, %129 [2, 5, 9, 10, 12, 15] : vector<8xi16>, vector<8xi16>
      %298 = math.cos %14 : tensor<8x4x9xf32>
      %299 = math.powf %2, %153 : tensor<8x8xf16>
      %300 = arith.muli %103, %c426148679_i64 : i64
      %301 = math.round %22 : tensor<f16>
      %302 = math.exp2 %0 : tensor<14xf32>
      linalg.yield %in_55 : i32
    } -> tensor<8x4x9xi32>
    %208 = math.rsqrt %118 : tensor<4x14xf16>
    %alloc_40 = memref.alloc() : memref<8x4x9xf16>
    %209 = tensor.empty() : tensor<8x8xi64>
    %210 = math.cos %cst_2 : f32
    %c-27243_i16 = arith.constant -27243 : i16
    memref.assume_alignment %alloc_20, 4 : memref<4xi64>
    %211 = math.fma %14, %14, %14 : tensor<8x4x9xf32>
    %212 = math.log1p %cst_35 : f32
    %generated_41 = tensor.generate %c5, %195 {
    ^bb0(%arg0: index, %arg1: index, %arg2: index):
      %277 = arith.mulf %cst, %cst_2 : f32
      %c0_i32 = arith.constant 0 : i32
      %278 = vector.transfer_read %6[%162, %c6], %c0_i32 : tensor<4x14xi32>, vector<4xi32>
      %279 = math.log1p %21 : tensor<f16>
      %280 = tensor.empty() : tensor<8x8xi16>
      %281 = vector.gather %280[%c0, %169] [%114], %115, %50 : tensor<8x8xi16>, vector<14xi32>, vector<14xi1>, vector<14xi16> into vector<14xi16>
      tensor.yield %cst_3 : f16
    } : tensor<?x?x9xf16>
    %213 = vector.matrix_multiply %92, %91 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xf32>, vector<14xf32>) -> vector<1xf32>
    %214 = arith.ceildivsi %c1996824902_i32, %c200632833_i32 : i32
    %215 = math.cos %20 : tensor<14xf16>
    %216 = math.sqrt %0 : tensor<14xf32>
    %217 = index.sub %c5, %181
    %218 = vector.broadcast %cst_3 : f16 to vector<8x8xf16>
    %219 = vector.gather %alloc_17[%108, %c0] [%83], %59, %218 : memref<4x14xf16>, vector<8x8xi32>, vector<8x8xi1>, vector<8x8xf16> into vector<8x8xf16>
    %220 = index.floordivs %c10, %c10
    %true_42 = arith.constant true
    %221 = vector.broadcast %cst : f32 to vector<14xf32>
    %222 = vector.fma %221, %91, %91 : vector<14xf32>
    %223 = bufferization.to_memref %20 : memref<14xf16>
    %224 = math.log10 %12 : tensor<14xf16>
    scf.index_switch %140 
    case 1 {
      %277 = index.sizeof
      %278 = arith.divui %c32632_i16, %c32632_i16 : i16
      %279 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %49, %115, %false_0 : vector<14xi1>, vector<14xi1> into i1
      %280 = index.add %217, %48
      %281 = vector.broadcast %cst_3 : f16 to vector<8x4x9xf16>
      %282 = vector.gather %12[%c9] [%25], %24, %281 : tensor<14xf16>, vector<8x4x9xi32>, vector<8x4x9xi1>, vector<8x4x9xf16> into vector<8x4x9xf16>
      %283 = index.mul %c1, %c7
      %284 = arith.shrsi %true_34, %true_24 : i1
      %285 = vector.multi_reduction <add>, %138, %127 [] : vector<9xi64> to vector<9xi64>
      %286 = scf.if %true_24 -> (i64) {
        %291 = vector.extract_strided_slice %152 {offsets = [8], sizes = [4], strides = [1]} : vector<14xf32> to vector<4xf32>
        %292 = arith.addi %true_25, %true_34 : i1
        %293 = vector.transpose %166, [2, 0, 1] : vector<7x4x9xi1> to vector<9x7x4xi1>
        %294 = vector.broadcast %141 : f32 to vector<4x9x4x9xf32>
        %295 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %84, %205, %294 : vector<8x4x9xf32>, vector<8x4x9xf32> into vector<4x9x4x9xf32>
        %296 = arith.mulf %cst, %141 : f32
        %alloc_55 = memref.alloc() : memref<14x14xi32>
        %297 = tensor.empty() : tensor<4x14xi32>
        %298 = linalg.matmul ins(%16, %alloc_55 : tensor<4x14xi32>, memref<14x14xi32>) outs(%297 : tensor<4x14xi32>) -> tensor<4x14xi32>
        %299 = math.log2 %15 : tensor<4x14xf32>
        vector.print %126 : vector<9xi1>
        scf.yield %103 : i64
      } else {
        %291 = vector.broadcast %c32632_i16 : i16 to vector<2x2xi16>
        %292 = vector.outerproduct %62, %62, %291 {kind = #vector.kind<and>} : vector<2xi16>, vector<2xi16>
        %293 = arith.negf %cst : f32
        %294 = math.powf %cst_35, %cst_2 : f32
        %295 = vector.broadcast %cst_1 : f32 to vector<14x14xf32>
        %296 = vector.outerproduct %91, %69, %295 {kind = #vector.kind<mul>} : vector<14xf32>, vector<14xf32>
        %297 = vector.broadcast %cst : f32 to vector<14xf32>
        %298 = index.sizeof
        %299 = vector.gather %alloc_5[%61, %108, %280] [%183], %49, %297 : memref<8x4x9xf32>, vector<14xi32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
        %300 = math.ipowi %4, %4 : tensor<8x4x9xi16>
        scf.yield %c1786215703_i64 : i64
      }
      %287 = index.floordivs %c3, %c15
      %rank = tensor.rank %18 : tensor<14xf16>
      %288 = vector.broadcast %true_25 : i1 to vector<14xi1>
      %289 = arith.minsi %c1786215703_i64, %c1786215703_i64 : i64
      %inserted_54 = tensor.insert %cst_3 into %2[%c7, %c7] : tensor<8x8xf16>
      %290 = vector.broadcast %c615313423_i32 : i32 to vector<8x8xi32>
      memref.assume_alignment %alloc_6, 2 : memref<8x8xi16>
      scf.yield
    }
    default {
      %inserted_54 = tensor.insert %cst_1 into %15[%c2, %c4] : tensor<4x14xf32>
      %277 = index.floordivs %c9, %c10
      %278 = affine.min affine_map<(d0, d1) -> (d1)>(%c5, %c4)
      %279 = vector.create_mask %c14, %65, %108 : vector<8x4x9xi1>
      %inserted_55 = tensor.insert %cst_3 into %22[] : tensor<f16>
      %generated_56 = tensor.generate %181 {
      ^bb0(%arg0: index):
        %288 = arith.xori %false_0, %false : i1
        %alloc_59 = memref.alloc() : memref<8x4x9xi16>
        memref.copy %alloc_11, %alloc_59 : memref<8x4x9xi16> to memref<8x4x9xi16>
        %289 = math.log1p %cst : f32
        %290 = math.rsqrt %203 : tensor<4x14xf32>
        tensor.yield %true_24 : i1
      } : tensor<?xi1>
      %280 = arith.maxsi %c200632833_i32, %c200632833_i32 : i32
      %281 = vector.shuffle %158, %158 [0, 5, 7] : vector<4x14xf32>, vector<4x14xf32>
      %282 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<8x4x9xi16>) {
      ^bb0(%out: i16):
        %288 = math.tanh %0 : tensor<14xf32>
        %289 = vector.broadcast %c32632_i16 : i16 to vector<4x4xi16>
        %290 = vector.outerproduct %197, %197, %289 {kind = #vector.kind<add>} : vector<4xi16>, vector<4xi16>
        %291 = arith.divui %false_22, %false : i1
        %alloc_59 = memref.alloc() : memref<14xi16>
        %292 = vector.gather %alloc_59[%195] [%183], %49, %19 : memref<14xi16>, vector<14xi32>, vector<14xi1>, vector<14xi16> into vector<14xi16>
        %293 = arith.minsi %out, %out : i16
        %294 = index.ceildivs %111, %61
        %295 = index.floordivs %c11, %c3
        %296 = math.floor %12 : tensor<14xf16>
        %297 = arith.ceildivsi %c32632_i16, %c32632_i16 : i16
        %298 = arith.ceildivsi %194, %c32632_i16 : i16
        %299 = vector.broadcast %c1786215703_i64 : i64 to vector<4xi64>
        vector.transfer_write %299, %171[%186, %195] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi64>, memref<8x8xi64>
        %300 = math.cos %14 : tensor<8x4x9xf32>
        %301 = math.cos %0 : tensor<14xf32>
        %302 = vector.bitcast %158 : vector<4x14xf32> to vector<4x14xf32>
        %303 = math.powf %cst_1, %cst : f32
        %304 = math.round %0 : tensor<14xf32>
        %305 = math.powf %22, %22 : tensor<f16>
        %true_60 = index.bool.constant true
        %306 = vector.broadcast %true_25 : i1 to vector<8x8xi1>
        %307 = index.sizeof
        %308 = math.atan2 %15, %15 : tensor<4x14xf32>
        %309 = math.powf %transposed, %transposed : tensor<14xf16>
        %310 = arith.addi %false_22, %false : i1
        %alloc_61 = memref.alloc() : memref<4x14xi1>
        %311 = arith.remui %c615313423_i32, %c200632833_i32 : i32
        %312 = math.round %20 : tensor<14xf16>
        %313 = vector.create_mask %277, %c5 : vector<8x8xi1>
        memref.assume_alignment %alloc_9, 2 : memref<4x14xi64>
        %314 = math.sqrt %14 : tensor<8x4x9xf32>
        %315 = vector.broadcast %c1786215703_i64 : i64 to vector<9x9xi64>
        %316 = vector.outerproduct %178, %125, %315 {kind = #vector.kind<mul>} : vector<9xi64>, vector<9xi64>
        %317 = vector.maskedload %alloc_21[%c5, %c1, %c7], %189, %190 : memref<8x4x9xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
        %318 = bufferization.to_memref %transposed : memref<14xf16>
        linalg.yield %c-27843_i16 : i16
      } -> tensor<8x4x9xi16>
      vector.print %157 : vector<4x14xf32>
      %283 = bufferization.to_memref %5 : memref<8x8xi1>
      %284 = affine.if affine_set<(d0, d1) : ((d0 - 128) * -8 >= 0, d1 floordiv 16 + 128 >= 0, d0 - 128 == 0)>(%c0, %c2) -> memref<8x8xf16> {
        vector.print %197 : vector<4xi16>
        %288 = math.roundeven %cst : f32
        %289 = vector.broadcast %cst_2 : f32 to vector<9xf32>
        %290 = vector.maskedload %alloc_5[%c4, %c1, %c5], %126, %289 : memref<8x4x9xf32>, vector<9xi1>, vector<9xf32> into vector<9xf32>
        %291 = math.powf %153, %153 : tensor<8x8xf16>
        %292 = math.log10 %cst_2 : f32
        %293 = math.round %14 : tensor<8x4x9xf32>
        %294 = vector.broadcast %false_22 : i1 to vector<4x14xi1>
        %295 = vector.broadcast %cst_3 : f16 to vector<4xf16>
        %296 = vector.maskedload %223[%c0], %189, %295 : memref<14xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
        %alloc_59 = memref.alloc() : memref<8x8xf16>
        affine.yield %alloc_59 : memref<8x8xf16>
      } else {
        %288 = math.fma %118, %118, %118 : tensor<4x14xf16>
        %289 = vector.matrix_multiply %125, %188 {lhs_columns = 1 : i32, lhs_rows = 9 : i32, rhs_columns = 4 : i32} : (vector<9xi64>, vector<4xi64>) -> vector<36xi64>
        %290 = arith.floordivsi %false_22, %true : i1
        %291 = arith.floordivsi %true_24, %false_27 : i1
        %292 = vector.broadcast %cst_2 : f32 to vector<8x4x9xf32>
        %293 = vector.fma %292, %199, %199 : vector<8x4x9xf32>
        %294 = arith.remui %c200632833_i32, %c200632833_i32 : i32
        %295 = math.fma %141, %cst_1, %141 : f32
        %296 = bufferization.to_tensor %alloc_6 : memref<8x8xi16>
        %alloc_59 = memref.alloc() : memref<8x8xf16>
        affine.yield %alloc_59 : memref<8x8xf16>
      }
      %alloca_57 = memref.alloca() : memref<14xf16>
      %285 = tensor.empty() : tensor<8xi16>
      %286 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%285 : tensor<8xi16>) outs(%4 : tensor<8x4x9xi16>) {
      ^bb0(%in: i16, %out: i16):
        %288 = index.add %c8, %c5
        %289 = vector.multi_reduction <minsi>, %59, %59 [] : vector<8x8xi1> to vector<8x8xi1>
        bufferization.dealloc_tensor %14 : tensor<8x4x9xf32>
        %290 = index.castu %out : i16 to index
        %291 = affine.apply affine_map<(d0, d1, d2) -> ((d2 + d1) * 64)>(%c9, %278, %c9)
        %292 = arith.ori %103, %c1786215703_i64 : i64
        %293 = vector.broadcast %141 : f32 to vector<8x4xf32>
        %dest_59, %accumulated_value_60 = vector.scan <maxf>, %199, %293 {inclusive = false, reduction_dim = 2 : i64} : vector<8x4x9xf32>, vector<8x4xf32>
        %294 = arith.maxui %false_4, %false_27 : i1
        %cst_61 = arith.constant 1.000000e+00 : f16
        %295 = vector.transfer_read %2[%290, %57], %cst_61 : tensor<8x8xf16>, vector<9xf16>
        %296 = memref.atomic_rmw mulf %cst_2, %alloc_19[%c5, %c1] : (f32, memref<8x8xf32>) -> f32
        %297 = math.cos %15 : tensor<4x14xf32>
        %298 = math.log10 %cst_2 : f32
        %299 = arith.andi %false_26, %false_27 : i1
        %splat = tensor.splat %c32632_i16 : tensor<14xi16>
        %300 = math.roundeven %cst_35 : f32
        %301 = math.round %15 : tensor<4x14xf32>
        %302 = vector.broadcast %false_27 : i1 to vector<9x9xi1>
        %303 = vector.outerproduct %126, %126, %302 {kind = #vector.kind<or>} : vector<9xi1>, vector<9xi1>
        %304 = tensor.empty() : tensor<8x8xi64>
        %305 = linalg.matmul ins(%1, %1 : tensor<8x8xi64>, tensor<8x8xi64>) outs(%304 : tensor<8x8xi64>) -> tensor<8x8xi64>
        %306 = vector.bitcast %125 : vector<9xi64> to vector<9xi64>
        %307 = bufferization.to_memref %7 : memref<4x14xi16>
        %308 = tensor.empty(%220) : tensor<4x?xf32>
        %309 = arith.minsi %false, %false_26 : i1
        %310 = arith.minsi %false_0, %false : i1
        %311 = math.atan2 %transposed, %12 : tensor<14xf16>
        %312 = arith.remf %cst_1, %cst_2 : f32
        %313 = arith.muli %true, %true_25 : i1
        %314 = vector.splat %cst_1 : vector<14xf32>
        %315 = math.atan2 %cst_2, %cst : f32
        %316 = vector.insertelement %in, %50[%160 : index] : vector<14xi16>
        %317 = bufferization.to_memref %148 : memref<4x8xi32>
        %c1_i32 = arith.constant 1 : i32
        %318 = vector.transfer_read %6[%181, %c9], %c1_i32 : tensor<4x14xi32>, vector<14xi32>
        %319 = arith.mulf %cst_2, %cst_1 : f32
        linalg.yield %c8820_i16 : i16
      } -> tensor<8x4x9xi16>
      %expanded_58 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<4x14xi32> into tensor<4x14x1xi32>
      %287 = arith.addf %cst_3, %cst_3 : f16
    }
    %225 = math.atan2 %118, %118 : tensor<4x14xf16>
    %226 = math.fpowi %cst_1, %c1996824902_i32 : f32, i32
    %227 = math.fpowi %14, %13 : tensor<8x4x9xf32>, tensor<8x4x9xi32>
    %228 = vector.broadcast %141 : f32 to vector<14xf32>
    %229 = vector.fma %228, %92, %228 : vector<14xf32>
    %230 = index.sizeof
    %231 = index.ceildivs %169, %108
    %generated_43 = tensor.generate %c11, %c6 {
    ^bb0(%arg0: index, %arg1: index):
      %277 = tensor.empty() : tensor<8x8xi16>
      %false_54 = index.bool.constant false
      %278 = arith.shli %c200632833_i32, %c200632833_i32 : i32
      %279 = math.powf %14, %14 : tensor<8x4x9xf32>
      tensor.yield %false_0 : i1
    } : tensor<?x?xi1>
    %232 = index.ceildivu %61, %217
    %233 = tensor.empty() : tensor<8x8xi64>
    %234 = linalg.matmul ins(%1, %1 : tensor<8x8xi64>, tensor<8x8xi64>) outs(%233 : tensor<8x8xi64>) -> tensor<8x8xi64>
    %false_44 = index.bool.constant false
    %235 = index.sizeof
    %236 = index.mul %231, %140
    %237 = math.powf %20, %18 : tensor<14xf16>
    scf.index_switch %c9 
    case 1 {
      %277 = vector.extract %219[1] : vector<8x8xf16>
      %278 = vector.broadcast %c200632833_i32 : i32 to vector<8xi32>
      %279 = vector.maskedload %74[%c1, %c5], %88, %278 : memref<4x14xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
      %280 = arith.remsi %c200632833_i32, %c1996824902_i32 : i32
      scf.if %false {
        %290 = affine.load %alloc_21[%c4, %c5, %c7] : memref<8x4x9xi64>
        %291 = math.ceil %transposed : tensor<14xf16>
        %292 = vector.transpose %279, [0] : vector<8xi32> to vector<8xi32>
        %293 = bufferization.to_memref %187 : memref<4x14xi64>
        %294 = vector.broadcast %141 : f32 to vector<4x9xf32>
        %295 = vector.insert %294, %84 [6] : vector<4x9xf32> into vector<8x4x9xf32>
        vector.print %59 : vector<8x8xi1>
        %296 = affine.load %alloc_19[%c11, %c14] : memref<8x8xf32>
        %297 = math.powf %cst_1, %cst_35 : f32
      }
      %281 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %142, %142, %c1786215703_i64 : vector<1xi64>, vector<1xi64> into i64
      %282 = vector.broadcast %false_44 : i1 to vector<8x4x9xi1>
      %283 = affine.if affine_set<(d0, d1) : ((d0 - 32) ceildiv 4 == 0, d1 - d0 - (d1 - d0) ceildiv 32 >= 0, d0 + 96 == 0, d1 - d0 == 0)>(%c5, %c15) -> memref<4x14xi1> {
        %290 = bufferization.clone %alloc_14 : memref<8x8xi32> to memref<8x8xi32>
        %291 = math.powf %0, %0 : tensor<14xf32>
        %alloc_55 = memref.alloc() : memref<14xi16>
        %292 = vector.broadcast %c8820_i16 : i16 to vector<8x8xi16>
        %293 = vector.gather %alloc_55[%c14] [%83], %156, %292 : memref<14xi16>, vector<8x8xi32>, vector<8x8xi1>, vector<8x8xi16> into vector<8x8xi16>
        %294 = arith.divui %true_25, %false_27 : i1
        %295 = index.ceildivs %48, %181
        %296 = arith.divsi %true, %true : i1
        %297 = vector.flat_transpose %178 {columns = 3 : i32, rows = 3 : i32} : vector<9xi64> -> vector<9xi64>
        %cst_56 = arith.constant 1.000000e+00 : f32
        %cst_57 = arith.constant 0.000000e+00 : f32
        %298 = vector.transfer_read %0[%c14], %cst_57 : tensor<14xf32>, vector<f32>
        affine.yield %alloc_31 : memref<4x14xi1>
      } else {
        memref.tensor_store %20, %223 : memref<14xf16>
        %290 = vector.outerproduct %88, %88, %156 {kind = #vector.kind<or>} : vector<8xi1>, vector<8xi1>
        %c1_i16 = arith.constant 1 : i16
        %291 = vector.transfer_read %alloc_6[%c11, %108], %c1_i16 : memref<8x8xi16>, vector<i16>
        %292 = math.atan %203 : tensor<4x14xf32>
        %293 = bufferization.to_tensor %alloc_17 : memref<4x14xf16>
        %294 = vector.load %alloc_19[%c0, %c0] : memref<8x8xf32>, vector<4x14xf32>
        %cast_55 = tensor.cast %14 : tensor<8x4x9xf32> to tensor<?x?x?xf32>
        %295 = vector.broadcast %cst_1 : f32 to vector<9xf32>
        %296 = vector.maskedload %alloc_8[%c1, %c2], %126, %295 : memref<4x14xf32>, vector<9xi1>, vector<9xf32> into vector<9xf32>
        affine.yield %alloc_31 : memref<4x14xi1>
      }
      %284 = arith.maxui %103, %c426148679_i64 : i64
      %285 = arith.maxui %true_25, %true_24 : i1
      %286 = bufferization.clone %alloc_12 : memref<8x4x9xi32> to memref<8x4x9xi32>
      %true_54 = index.bool.constant true
      %287 = affine.load %alloc_21[%c7, %c13, %c2] : memref<8x4x9xi64>
      %288 = arith.xori %c615313423_i32, %c200632833_i32 : i32
      bufferization.dealloc_tensor %9 : tensor<8x4x9xi32>
      %289 = arith.minui %c615313423_i32, %c1996824902_i32 : i32
      bufferization.dealloc_tensor %55 : tensor<14xi32>
      scf.yield
    }
    default {
      %277 = vector.maskedload %alloc_20[%c3], %189, %190 : memref<4xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
      %278 = bufferization.to_tensor %alloc_17 : memref<4x14xf16>
      %279 = tensor.empty() : tensor<8x8xf16>
      %280 = linalg.matmul ins(%153, %2 : tensor<8x8xf16>, tensor<8x8xf16>) outs(%279 : tensor<8x8xf16>) -> tensor<8x8xf16>
      %281 = scf.while (%arg0 = %c32632_i16) : (i16) -> i16 {
        %294 = arith.shli %c426148679_i64, %c426148679_i64 : i64
        %295 = index.ceildivs %c8, %65
        %296 = arith.maxui %c1786215703_i64, %103 : i64
        %297 = affine.apply affine_map<(d0, d1) -> ((d1 + d0) floordiv 2)>(%195, %217)
        vector.print %200 : vector<8x4x9xf32>
        %298 = vector.load %alloc_6[%c4, %c6] : memref<8x8xi16>, vector<8x4x9xi16>
        %299 = index.ceildivs %c3, %c15
        %300 = arith.floordivsi %c426148679_i64, %c426148679_i64 : i64
        scf.condition(%true) %c32632_i16 : i16
      } do {
      ^bb0(%arg0: i16):
        %294 = index.ceildivs %186, %169
        %295 = index.floordivs %c15, %c12
        %296 = affine.apply affine_map<(d0) -> (((d0 mod 2) floordiv 2) mod 2)>(%58)
        memref.assume_alignment %alloc_15, 2 : memref<8x8xf32>
        %297 = vector.load %alloc_16[%c0, %c3, %c6] : memref<8x4x9xf32>, vector<4x14xf32>
        %298 = arith.divui %true, %true_34 : i1
        %true_55 = index.bool.constant true
        %299 = arith.maxui %103, %c1786215703_i64 : i64
        %300 = math.exp2 %118 : tensor<4x14xf16>
        %301 = vector.broadcast %cst_1 : f32 to vector<8x4x9xf32>
        %302 = vector.fma %301, %199, %205 : vector<8x4x9xf32>
        %303 = vector.create_mask %230, %c12, %c12 : vector<8x4x9xi1>
        %304 = index.maxu %c8, %c8
        bufferization.dealloc_tensor %148 : tensor<4x8xi32>
        %305 = bufferization.to_memref %0 : memref<14xf32>
        %306 = index.sub %c6, %235
        %307 = index.mul %c0, %295
        scf.yield %c32632_i16 : i16
      }
      %282 = index.castu %58 : index to i32
      %283 = arith.divui %c615313423_i32, %c200632833_i32 : i32
      %284 = arith.shrui %true, %false_0 : i1
      %285 = vector.broadcast %cst_35 : f32 to vector<8x4x9xf32>
      %286 = vector.fma %285, %205, %85 : vector<8x4x9xf32>
      memref.assume_alignment %54, 2 : memref<14xi1>
      %287 = affine.load %alloc_10[%c15, %c11] : memref<4x14xi64>
      %288 = vector.broadcast %cst_35 : f32 to vector<8x8xf32>
      %289 = vector.fma %288, %288, %80 : vector<8x8xf32>
      %290 = vector.insertelement %103, %127[%c9 : index] : vector<9xi64>
      %cast_54 = tensor.cast %10 : tensor<8x4x9xi32> to tensor<?x?x?xi32>
      %291 = arith.ori %false_44, %true_34 : i1
      %292 = index.mul %65, %181
      %293 = math.rsqrt %15 : tensor<4x14xf32>
    }
    %238 = vector.flat_transpose %92 {columns = 7 : i32, rows = 2 : i32} : vector<14xf32> -> vector<14xf32>
    %239 = arith.negf %cst : f32
    %240 = arith.ceildivsi %true_24, %true_24 : i1
    %true_45 = index.bool.constant true
    %241 = arith.xori %false_44, %true_24 : i1
    %242 = arith.divf %cst_2, %cst : f32
    %243 = scf.while (%arg0 = %alloc_15) : (memref<8x8xf32>) -> memref<8x8xf32> {
      %277 = vector.broadcast %194 : i16 to vector<8x8xi16>
      %278 = vector.outerproduct %129, %87, %277 {kind = #vector.kind<minui>} : vector<8xi16>, vector<8xi16>
      %279 = arith.negf %cst : f32
      %280 = arith.shrui %false_22, %false : i1
      %281 = scf.while (%arg1 = %152) : (vector<14xf32>) -> vector<14xf32> {
        %284 = arith.shli %c200632833_i32, %c1996824902_i32 : i32
        %285 = vector.broadcast %cst_2 : f32 to vector<8x4x9xf32>
        %286 = vector.fma %285, %205, %199 : vector<8x4x9xf32>
        %287 = math.log2 %cst_1 : f32
        memref.assume_alignment %alloc_11, 8 : memref<8x4x9xi16>
        %cst_55 = arith.constant 1.000000e+00 : f32
        %288 = vector.transfer_read %arg0[%111, %c3], %cst_55 : memref<8x8xf32>, vector<8xf32>
        %289 = index.castu %194 : i16 to index
        %290 = math.exp %cst_35 : f32
        %291 = index.divu %61, %c14
        scf.condition(%true) %92 : vector<14xf32>
      } do {
      ^bb0(%arg1: vector<14xf32>):
        %284 = vector.bitcast %26 : vector<8x4x9xi64> to vector<8x4x9xi64>
        %285 = bufferization.to_memref %cast : memref<f16>
        %286 = bufferization.to_tensor %alloc_19 : memref<8x8xf32>
        %287 = index.floordivs %c7, %c5
        %288 = arith.minf %cst_3, %cst_3 : f16
        %289 = vector.extract_strided_slice %26 {offsets = [6, 0], sizes = [1, 3], strides = [1, 1]} : vector<8x4x9xi64> to vector<1x3x9xi64>
        %290 = arith.cmpf ole, %141, %cst_1 : f32
        %291 = arith.ceildivsi %true_45, %false_22 : i1
        %292 = vector.matrix_multiply %125, %125 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<9xi64>) -> vector<1xi64>
        %293 = bufferization.to_tensor %alloc_10 : memref<4x14xi64>
        %294 = arith.shrui %c-27843_i16, %194 : i16
        %295 = math.fpowi %20, %55 : tensor<14xf16>, tensor<14xi32>
        %296 = index.ceildivs %c0, %236
        %297 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 mod 128)>(%140, %c12, %c14, %58)
        %298 = math.atan2 %cst, %cst : f32
        %299 = arith.shrui %false_4, %true : i1
        scf.yield %229 : vector<14xf32>
      }
      %282 = math.fma %cst_2, %141, %cst_1 : f32
      %alloc_54 = memref.alloc() : memref<8x4x9xi32>
      %283 = affine.if affine_set<(d0, d1) : (-d1 == 0, d1 * 8 >= 0, d1 * 128 >= 0)>(%c9, %c9) -> f32 {
        %284 = arith.divui %c-27843_i16, %c8820_i16 : i16
        %285 = index.maxu %48, %c8
        %286 = vector.broadcast %c200632833_i32 : i32 to vector<4xi32>
        %287 = vector.transfer_write %286, %8[%236, %c3] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi32>, tensor<4x14xi32>
        %288 = math.log10 %12 : tensor<14xf16>
        memref.assume_alignment %alloc_9, 4 : memref<4x14xi64>
        %289 = arith.ceildivsi %false_44, %false_22 : i1
        %290 = math.roundeven %0 : tensor<14xf32>
        %291 = math.powf %cst_35, %cst_1 : f32
        affine.yield %cst_2 : f32
      } else {
        %284 = bufferization.to_memref %8 : memref<4x14xi32>
        %285 = math.round %15 : tensor<4x14xf32>
        %286 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %125, %178, %c426148679_i64 : vector<9xi64>, vector<9xi64> into i64
        %287 = math.log10 %cst_2 : f32
        %288 = vector.broadcast %c1786215703_i64 : i64 to vector<8x9xi64>
        %289 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %190, %23, %288 : vector<4xi64>, vector<8x4x9xi64> into vector<8x9xi64>
        %290 = math.atan2 %21, %22 : tensor<f16>
        %291 = math.exp2 %21 : tensor<f16>
        %292 = arith.ceildivsi %103, %c426148679_i64 : i64
        affine.yield %cst_2 : f32
      }
      memref.assume_alignment %alloc_10, 8 : memref<4x14xi64>
      scf.condition(%false_22) %alloc_19 : memref<8x8xf32>
    } do {
    ^bb0(%arg0: memref<8x8xf32>):
      %false_54 = index.bool.constant false
      %277 = arith.minui %false_54, %true_24 : i1
      %278 = vector.matrix_multiply %92, %238 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xf32>, vector<14xf32>) -> vector<1xf32>
      %279 = math.floor %18 : tensor<14xf16>
      %280 = math.absi %c1786215703_i64 : i64
      %281 = arith.cmpf true, %cst_3, %cst_3 : f16
      %282 = arith.maxui %true_34, %false_22 : i1
      %283 = math.log2 %15 : tensor<4x14xf32>
      %284 = index.ceildivu %140, %c1
      %285 = vector.broadcast %c200632833_i32 : i32 to vector<4x9xi32>
      %286 = vector.multi_reduction <minsi>, %25, %285 [0] : vector<8x4x9xi32> to vector<4x9xi32>
      %287 = arith.divui %103, %c426148679_i64 : i64
      %288 = vector.insertelement %c1996824902_i32, %183[%c12 : index] : vector<14xi32>
      %289 = math.powf %14, %14 : tensor<8x4x9xf32>
      %290 = arith.remf %cst_1, %cst_2 : f32
      %291 = index.divu %c5, %48
      vector.print %84 : vector<8x4x9xf32>
      scf.yield %arg0 : memref<8x8xf32>
    }
    %244 = vector.bitcast %49 : vector<14xi1> to vector<14xi1>
    %245 = arith.addf %cst_1, %cst : f32
    %246 = vector.broadcast %103 : i64 to vector<9x9xi64>
    %247 = vector.outerproduct %178, %125, %246 {kind = #vector.kind<maxsi>} : vector<9xi64>, vector<9xi64>
    %248 = index.ceildivs %c4, %65
    %249 = index.ceildivu %160, %c15
    %250 = arith.minui %false_4, %true_45 : i1
    %false_46 = index.bool.constant false
    %251 = scf.while (%arg0 = %69) : (vector<14xf32>) -> vector<14xf32> {
      %277 = math.round %21 : tensor<f16>
      %true_54 = index.bool.constant true
      %278 = bufferization.clone %alloc_20 : memref<4xi64> to memref<4xi64>
      %279 = vector.shuffle %29, %156 [0, 3, 4, 5, 6, 7, 10, 13] : vector<8x8xi1>, vector<8x8xi1>
      %280 = vector.bitcast %59 : vector<8x8xi1> to vector<8x8xi1>
      %281 = math.powf %cst_3, %cst_3 : f16
      memref.assume_alignment %171, 4 : memref<8x8xi64>
      %282 = vector.load %alloc_16[%c5, %c0, %c2] : memref<8x4x9xf32>, vector<4x14xf32>
      scf.condition(%false_22) %152 : vector<14xf32>
    } do {
    ^bb0(%arg0: vector<14xf32>):
      %277 = arith.minsi %c615313423_i32, %c200632833_i32 : i32
      %278 = index.mul %c13, %c12
      %279 = memref.realloc %54 : memref<14xi1> to memref<4xi1>
      %280 = arith.remf %cst_1, %cst : f32
      %281 = vector.flat_transpose %190 {columns = 2 : i32, rows = 2 : i32} : vector<4xi64> -> vector<4xi64>
      %282 = memref.atomic_rmw mulf %cst_3, %223[%c4] : (f16, memref<14xf16>) -> f16
      %283 = arith.minui %c426148679_i64, %103 : i64
      %284 = arith.ceildivsi %false_27, %false_0 : i1
      %c94870645_i32 = arith.constant 94870645 : i32
      %285 = math.log1p %141 : f32
      %286 = tensor.empty() : tensor<4x14xi32>
      %287 = arith.shrui %true_34, %false : i1
      %288 = arith.addf %cst_3, %cst_3 : f16
      %289 = vector.broadcast %false_44 : i1 to vector<14x14xi1>
      %290 = vector.outerproduct %49, %115, %289 {kind = #vector.kind<maxsi>} : vector<14xi1>, vector<14xi1>
      %291 = scf.index_switch %236 -> memref<4x14xf32> 
      case 1 {
        %294 = arith.maxui %c200632833_i32, %c200632833_i32 : i32
        %295 = arith.negf %cst : f32
        %296 = arith.divui %c-27843_i16, %c-27843_i16 : i16
        %297 = affine.apply affine_map<(d0, d1, d2, d3) -> (-(d2 + 8))>(%c7, %181, %249, %48)
        %298 = math.absf %153 : tensor<8x8xf16>
        %c1_i64 = arith.constant 1 : i64
        %299 = vector.transfer_read %alloc_21[%249, %162, %297], %c1_i64 : memref<8x4x9xi64>, vector<14x8xi64>
        %300 = arith.remsi %true_45, %true_34 : i1
        %301 = vector.multi_reduction <maxsi>, %166, %189 [0, 2] : vector<7x4x9xi1> to vector<4xi1>
        %302 = arith.minui %false_46, %false : i1
        %303 = vector.broadcast %c200632833_i32 : i32 to vector<8xi32>
        %304 = vector.maskedload %alloc_14[%c5, %c1], %88, %303 : memref<8x8xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
        %305 = arith.addi %true, %false_4 : i1
        %false_54 = arith.constant false
        %306 = math.log1p %15 : tensor<4x14xf32>
        %307 = math.tanh %12 : tensor<14xf16>
        %308 = math.log10 %141 : f32
        %309 = vector.load %171[%c0, %c2] : memref<8x8xi64>, vector<8x8xi64>
        scf.yield %alloc_8 : memref<4x14xf32>
      }
      default {
        %294 = index.floordivs %c12, %140
        %295 = arith.floordivsi %false_0, %true_24 : i1
        %296 = memref.realloc %223 : memref<14xf16> to memref<9xf16>
        %297 = arith.xori %c8820_i16, %c8820_i16 : i16
        %298 = arith.cmpi uge, %c8820_i16, %194 : i16
        affine.store %c32632_i16, %alloc_6[%c9, %c12] : memref<8x8xi16>
        %cast_54 = tensor.cast %21 : tensor<f16> to tensor<f16>
        %299 = math.absi %233 : tensor<8x8xi64>
        %300 = vector.extract_strided_slice %84 {offsets = [4], sizes = [1], strides = [1]} : vector<8x4x9xf32> to vector<1x4x9xf32>
        %301 = vector.broadcast %c615313423_i32 : i32 to vector<8x9xi32>
        %dest_55, %accumulated_value_56 = vector.scan <maxsi>, %25, %301 {inclusive = false, reduction_dim = 1 : i64} : vector<8x4x9xi32>, vector<8x9xi32>
        %302 = math.absi %17 : tensor<4x14xi32>
        %303 = index.ceildivu %65, %c0
        %304 = math.atan2 %cst_1, %cst_35 : f32
        %305 = index.sub %c11, %162
        %306 = affine.min affine_map<(d0, d1) -> ((d1 floordiv 128) ceildiv 16, ((d1 floordiv 128) ceildiv 16) mod 4 - ((d1 floordiv 128) ceildiv 16 - ((d1 floordiv 128) ceildiv 16) mod 8 + 128))>(%48, %231)
        %inserted_57 = tensor.insert %c615313423_i32 into %8[%c0, %c1] : tensor<4x14xi32>
        scf.yield %alloc_8 : memref<4x14xf32>
      }
      %292 = vector.broadcast %cst : f32 to vector<8x8xf32>
      %293 = vector.fma %292, %79, %79 : vector<8x8xf32>
      scf.yield %222 : vector<14xf32>
    }
    %252 = vector.load %alloc_9[%c0, %c11] : memref<4x14xi64>, vector<8x8xi64>
    %253 = vector.broadcast %c8820_i16 : i16 to vector<4x4xi16>
    %254 = vector.outerproduct %197, %197, %253 {kind = #vector.kind<xor>} : vector<4xi16>, vector<4xi16>
    %255 = arith.cmpi ne, %true_45, %false_27 : i1
    %256 = bufferization.to_memref %3 : memref<8x4x9xi1>
    %257 = vector.bitcast %83 : vector<8x8xi32> to vector<8x8xf32>
    %inserted = tensor.insert %cst_3 into %22[] : tensor<f16>
    %258 = math.absi %1 : tensor<8x8xi64>
    %259 = arith.ceildivsi %false_0, %true_34 : i1
    %260 = vector.broadcast %c1786215703_i64 : i64 to vector<14xi64>
    %261 = math.fma %141, %cst_2, %cst_1 : f32
    %262 = arith.subi %false, %true_24 : i1
    %263 = math.fma %14, %14, %14 : tensor<8x4x9xf32>
    %264 = math.fpowi %transposed, %55 : tensor<14xf16>, tensor<14xi32>
    %265 = vector.broadcast %cst_1 : f32 to vector<4x14xf32>
    %266 = vector.fma %265, %265, %158 : vector<4x14xf32>
    %267 = memref.atomic_rmw addi %c426148679_i64, %alloc_9[%c0, %c2] : (i64, memref<4x14xi64>) -> i64
    %268 = arith.maxui %c1996824902_i32, %c1996824902_i32 : i32
    %269 = arith.cmpi ugt, %c32632_i16, %c-27843_i16 : i16
    %270 = vector.broadcast %103 : i64 to vector<9x9xi64>
    %271 = vector.outerproduct %127, %127, %270 {kind = #vector.kind<xor>} : vector<9xi64>, vector<9xi64>
    %272 = vector.broadcast %c200632833_i32 : i32 to vector<8x9xi32>
    %dest_47, %accumulated_value_48 = vector.scan <mul>, %25, %272 {inclusive = true, reduction_dim = 1 : i64} : vector<8x4x9xi32>, vector<8x9xi32>
    %273 = vector.broadcast %cst_2 : f32 to vector<8x9xf32>
    %dest_49, %accumulated_value_50 = vector.scan <add>, %200, %273 {inclusive = true, reduction_dim = 1 : i64} : vector<8x4x9xf32>, vector<8x9xf32>
    %cast_51 = tensor.cast %13 : tensor<8x4x9xi32> to tensor<?x?x?xi32>
    %274 = tensor.empty() : tensor<8x8xi1>
    %275 = linalg.copy ins(%5 : tensor<8x8xi1>) outs(%274 : tensor<8x8xi1>) -> tensor<8x8xi1>
    %alloc_52 = memref.alloc() : memref<14x4xi64>
    linalg.transpose ins(%155 : tensor<4x14xi64>) outs(%alloc_52 : memref<14x4xi64>) permutation = [1, 0] 
    %alloc_53 = memref.alloc() : memref<8xf32>
    linalg.reduce ins(%alloc_16 : memref<8x4x9xf32>) outs(%alloc_53 : memref<8xf32>) dimensions = [1, 2] 
      (%in: f32, %init: f32) {
        %277 = scf.index_switch %169 -> memref<8x8xi1> 
        case 1 {
          %286 = vector.broadcast %c1996824902_i32 : i32 to vector<i32>
          %287 = vector.transfer_write %286, %104[%61, %249, %231] : vector<i32>, tensor<8x4x9xi32>
          %288 = arith.remsi %c1996824902_i32, %c1996824902_i32 : i32
          %289 = arith.remui %c615313423_i32, %c200632833_i32 : i32
          %290 = arith.cmpf one, %cst_3, %cst_3 : f16
          %291 = arith.maxf %cst_1, %cst_1 : f32
          %292 = math.round %12 : tensor<14xf16>
          %293 = arith.remui %false_46, %false : i1
          %294 = memref.realloc %alloc_13 : memref<14xi1> to memref<14xi1>
          %295 = vector.shuffle %138, %142 [1, 2, 3, 4, 5, 6, 7, 8] : vector<9xi64>, vector<1xi64>
          bufferization.dealloc_tensor %0 : tensor<14xf32>
          %296 = index.add %230, %217
          memref.assume_alignment %alloc_13, 1 : memref<14xi1>
          %297 = memref.atomic_rmw assign %c1786215703_i64, %alloc_10[%c0, %c0] : (i64, memref<4x14xi64>) -> i64
          %298 = vector.create_mask %c1, %57 : vector<4x14xi1>
          %299 = bufferization.to_memref %13 : memref<8x4x9xi32>
          %300 = vector.flat_transpose %189 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
          %alloc_55 = memref.alloc() : memref<8x8xi1>
          scf.yield %alloc_55 : memref<8x8xi1>
        }
        case 2 {
          %286 = vector.flat_transpose %19 {columns = 7 : i32, rows = 2 : i32} : vector<14xi16> -> vector<14xi16>
          %287 = math.rsqrt %14 : tensor<8x4x9xf32>
          %288 = vector.broadcast %false_44 : i1 to vector<4x9xi1>
          %dest_55, %accumulated_value_56 = vector.scan <minsi>, %24, %288 {inclusive = true, reduction_dim = 0 : i64} : vector<8x4x9xi1>, vector<4x9xi1>
          %289 = arith.ceildivsi %false_26, %true_25 : i1
          %290 = arith.minui %false_22, %false_46 : i1
          %alloc_57 = memref.alloc() : memref<4x14xi64>
          %291 = index.castu %65 : index to i32
          %292 = math.round %transposed : tensor<14xf16>
          %293 = arith.minsi %c200632833_i32, %c615313423_i32 : i32
          %294 = index.sub %236, %c10
          %295 = vector.broadcast %true_45 : i1 to vector<8x4x9xi1>
          %296 = math.powf %init, %141 : f32
          %297 = arith.minf %cst_3, %cst_3 : f16
          %298 = vector.matrix_multiply %19, %19 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi16>, vector<14xi16>) -> vector<1xi16>
          %299 = index.castu %c1 : index to i32
          %300 = arith.floordivsi %c426148679_i64, %c1786215703_i64 : i64
          %alloc_58 = memref.alloc() : memref<8x8xi1>
          scf.yield %alloc_58 : memref<8x8xi1>
        }
        case 3 {
          %286 = tensor.empty() : tensor<8x9xi32>
          %287 = tensor.empty() : tensor<4x9xi32>
          %288 = linalg.matmul ins(%148, %286 : tensor<4x8xi32>, tensor<8x9xi32>) outs(%287 : tensor<4x9xi32>) -> tensor<4x9xi32>
          %289 = arith.minsi %false_0, %false_46 : i1
          %290 = arith.shrsi %false_27, %false_26 : i1
          %291 = arith.floordivsi %false_46, %true_34 : i1
          %true_55 = arith.constant true
          %292 = vector.broadcast %c11 : index to vector<14xindex>
          vector.scatter %alloc_14[%c5, %c5] [%292], %49, %114 : memref<8x8xi32>, vector<14xindex>, vector<14xi1>, vector<14xi32>
          %293 = math.round %20 : tensor<14xf16>
          %294 = arith.ori %194, %194 : i16
          memref.assume_alignment %alloc, 4 : memref<8x8xi16>
          %295 = vector.extract_strided_slice %197 {offsets = [0], sizes = [4], strides = [1]} : vector<4xi16> to vector<4xi16>
          %296 = vector.load %alloc_17[%c3, %c3] : memref<4x14xf16>, vector<8x8xf16>
          %297 = index.sub %c9, %c4
          %298 = math.atan2 %22, %21 : tensor<f16>
          %299 = vector.create_mask %c4, %c2 : vector<8x8xi1>
          %300 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 mod 128)>(%248, %160, %181, %c12)
          %301 = arith.remf %cst_3, %cst_3 : f16
          %alloc_56 = memref.alloc() : memref<8x8xi1>
          scf.yield %alloc_56 : memref<8x8xi1>
        }
        default {
          %286 = affine.load %alloc_5[%c4, %c0, %c2] : memref<8x4x9xf32>
          %287 = arith.minui %false, %false : i1
          %alloc_55 = memref.alloc() : memref<8x8xf16>
          %288 = math.log2 %12 : tensor<14xf16>
          %289 = index.add %48, %195
          %290 = arith.cmpf oeq, %init, %in : f32
          %291 = index.add %249, %249
          %292 = arith.remsi %true_45, %false_46 : i1
          %293 = math.powf %cst_1, %init : f32
          %294 = arith.negf %286 : f32
          %295 = vector.bitcast %115 : vector<14xi1> to vector<14xi1>
          %296 = tensor.empty() : tensor<8x4x9xi64>
          %297 = vector.gather %296[%289, %c4, %235] [%114], %295, %260 : tensor<8x4x9xi64>, vector<14xi32>, vector<14xi1>, vector<14xi64> into vector<14xi64>
          %298 = math.round %12 : tensor<14xf16>
          %299 = vector.broadcast %cst_3 : f16 to vector<8xf16>
          %300 = vector.maskedload %223[%c11], %88, %299 : memref<14xf16>, vector<8xi1>, vector<8xf16> into vector<8xf16>
          %c0_i16 = arith.constant 0 : i16
          %301 = vector.transfer_read %7[%289, %61], %c0_i16 : tensor<4x14xi16>, vector<8xi16>
          %302 = arith.minsi %false_26, %false_46 : i1
          %alloc_56 = memref.alloc() : memref<8x8xi1>
          scf.yield %alloc_56 : memref<8x8xi1>
        }
        %278 = math.sqrt %203 : tensor<4x14xf32>
        %279 = arith.divf %cst_1, %cst_1 : f32
        %280 = math.log10 %2 : tensor<8x8xf16>
        %281 = arith.negf %141 : f32
        %282 = math.roundeven %init : f32
        %283 = vector.broadcast %cst_3 : f16 to vector<f16>
        %284 = vector.transfer_write %283, %transposed[%c3] : vector<f16>, tensor<14xf16>
        %285 = arith.shrui %103, %c1786215703_i64 : i64
        %cst_54 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_54 : f32
      }
    scf.parallel (%arg0, %arg1) = (%c11, %160) to (%249, %248) step (%c8, %c10) {
      %277 = arith.minf %cst, %cst_1 : f32
      %278 = bufferization.clone %256 : memref<8x4x9xi1> to memref<8x4x9xi1>
      %279 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %71, %71, %c8820_i16 : vector<3xi16>, vector<3xi16> into i16
      %280 = scf.while (%arg2 = %cst) : (f32) -> f32 {
        %292 = arith.floordivsi %true_24, %false_0 : i1
        %293 = memref.load %alloc_9[%c2, %c4] : memref<4x14xi64>
        %false_56 = arith.constant false
        %294 = vector.transfer_read %3[%c9, %186, %249], %false_56 : tensor<8x4x9xi1>, vector<i1>
        %295 = math.floor %2 : tensor<8x8xf16>
        %296 = memref.load %alloc_11[%c7, %c2, %c0] : memref<8x4x9xi16>
        %c1_i64 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %297 = vector.transfer_read %alloc_52[%c2, %c12], %c0_i64 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<14x4xi64>, vector<9xi64>
        %298 = math.atan2 %cst_35, %cst_1 : f32
        %299 = vector.extract %49[8] : vector<14xi1>
        scf.condition(%false_44) %cst_35 : f32
      } do {
      ^bb0(%arg2: f32):
        %292 = vector.broadcast %141 : f32 to vector<8x8xf32>
        %293 = vector.fma %292, %79, %257 : vector<8x8xf32>
        %294 = vector.broadcast %c32632_i16 : i16 to vector<8x8xi16>
        %295 = vector.outerproduct %89, %89, %294 {kind = #vector.kind<minui>} : vector<8xi16>, vector<8xi16>
        %296 = vector.gather %155[%61, %arg0] [%183], %49, %260 : tensor<4x14xi64>, vector<14xi32>, vector<14xi1>, vector<14xi64> into vector<14xi64>
        %297 = math.log1p %14 : tensor<8x4x9xf32>
        %298 = vector.shuffle %80, %257 [2, 3, 5, 6, 7, 8, 13, 15] : vector<8x8xf32>, vector<8x8xf32>
        %299 = arith.minui %c200632833_i32, %c1996824902_i32 : i32
        %300 = math.round %cst_2 : f32
        %301 = vector.broadcast %false_0 : i1 to vector<4x14xi1>
        %c1907818809_i64 = arith.constant 1907818809 : i64
        %302 = index.ceildivs %c11, %arg1
        %303 = math.absf %15 : tensor<4x14xf32>
        %304 = tensor.empty(%c13) : tensor<?xf16>
        %305 = math.log2 %transposed : tensor<14xf16>
        %306 = index.divu %c11, %231
        %307 = arith.remsi %false_44, %true_25 : i1
        %308 = index.add %c1, %162
        scf.yield %cst : f32
      }
      %281 = tensor.empty() : tensor<14xi1>
      %mapped_54 = linalg.map ins(%54, %alloc_13 : memref<14xi1>, memref<14xi1>) outs(%281 : tensor<14xi1>)
        (%in: i1, %in_56: i1) {
          %292 = arith.remui %false_26, %false_26 : i1
          %293 = vector.broadcast %cst_2 : f32 to vector<4x14xf32>
          %294 = vector.fma %293, %266, %157 : vector<4x14xf32>
          %295 = math.round %12 : tensor<14xf16>
          affine.store %cst_3, %223[%c2] : memref<14xf16>
          %296 = index.ceildivu %c11, %140
          %false_57 = index.bool.constant false
          %297 = vector.broadcast %c200632833_i32 : i32 to vector<9xi32>
          %298 = vector.transfer_write %297, %8[%160, %248] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xi32>, tensor<4x14xi32>
          %299 = arith.addi %true_24, %false_44 : i1
          %splat = tensor.splat %true : tensor<8x8xi1>
          bufferization.dealloc_tensor %3 : tensor<8x4x9xi1>
          %expanded_58 = tensor.expand_shape %transposed [[0, 1]] : tensor<14xf16> into tensor<14x1xf16>
          bufferization.dealloc_tensor %187 : tensor<4x14xi64>
          %300 = arith.remsi %false_44, %false_26 : i1
          %301 = vector.matrix_multiply %197, %87 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<4xi16>, vector<8xi16>) -> vector<2xi16>
          %302 = arith.remsi %false_26, %true : i1
          %303 = math.powf %expanded_58, %expanded_58 : tensor<14x1xf16>
          %304 = math.atan2 %cst_35, %141 : f32
          %true_59 = index.bool.constant true
          %alloc_60 = memref.alloc() : memref<4x4xi32>
          memref.tensor_store %136, %alloc_60 : memref<4x4xi32>
          %305 = vector.extract_strided_slice %183 {offsets = [7], sizes = [6], strides = [1]} : vector<14xi32> to vector<6xi32>
          %306 = index.maxu %48, %181
          %307 = math.log2 %21 : tensor<f16>
          %c0_i32 = arith.constant 0 : i32
          %c0_i32_61 = arith.constant 0 : i32
          %308 = vector.transfer_read %13[%48, %arg0, %220], %c0_i32_61 {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : tensor<8x4x9xi32>, vector<14x9xi32>
          %309 = affine.min affine_map<(d0, d1) -> (d0 + d1 floordiv 64)>(%65, %235)
          %splat_62 = tensor.splat %false_22 : tensor<14xi1>
          %310 = math.atan2 %0, %0 : tensor<14xf32>
          %311 = arith.mulf %cst, %141 : f32
          %312 = arith.ceildivsi %in_56, %false_46 : i1
          %c615485155_i32 = arith.constant 615485155 : i32
          %313 = tensor.empty() : tensor<4x14xf32>
          %314 = math.roundeven %14 : tensor<8x4x9xf32>
          %315 = arith.mulf %cst_3, %cst_3 : f16
          %true_63 = arith.constant true
          linalg.yield %true_63 : i1
        }
      %282 = vector.bitcast %88 : vector<8xi1> to vector<8xi1>
      memref.assume_alignment %alloc_8, 2 : memref<4x14xf32>
      %283 = math.round %transposed : tensor<14xf16>
      %cast_55 = tensor.cast %6 : tensor<4x14xi32> to tensor<?x?xi32>
      %284 = affine.if affine_set<(d0, d1, d2) : (d0 == 0, d2 >= 0, d1 == 0)>(%c5, %c12, %c12) -> f32 {
        %292 = vector.bitcast %188 : vector<4xi64> to vector<4xi64>
        %293 = index.ceildivu %c9, %c8
        %294 = arith.minsi %c615313423_i32, %c1996824902_i32 : i32
        %295 = math.atan2 %153, %2 : tensor<8x8xf16>
        %296 = vector.extract_strided_slice %80 {offsets = [2], sizes = [4], strides = [1]} : vector<8x8xf32> to vector<4x8xf32>
        %297 = arith.remui %c32632_i16, %c8820_i16 : i16
        %298 = vector.broadcast %false : i1 to vector<14x14xi1>
        %299 = vector.outerproduct %115, %49, %298 {kind = #vector.kind<minsi>} : vector<14xi1>, vector<14xi1>
        %300 = math.fma %18, %12, %12 : tensor<14xf16>
        affine.yield %cst_1 : f32
      } else {
        %292 = arith.addi %c8820_i16, %c32632_i16 : i16
        %293 = index.floordivs %61, %235
        %294 = index.floordivs %230, %c12
        %295 = math.log1p %cst_35 : f32
        %296 = arith.minf %cst_1, %141 : f32
        %true_56 = arith.constant true
        %false_57 = arith.constant false
        %297 = vector.transfer_read %256[%c5, %c13, %195], %false_57 {permutation_map = affine_map<(d0, d1, d2) -> (0, d1)>} : memref<8x4x9xi1>, vector<4x14xi1>
        %298 = bufferization.to_memref %55 : memref<14xi32>
        %alloca_58 = memref.alloca() : memref<4x14xf32>
        affine.yield %cst_2 : f32
      }
      %285 = arith.floordivsi %194, %c-27843_i16 : i16
      %286 = index.floordivs %230, %c14
      %287 = index.mul %arg0, %65
      %288 = vector.broadcast %cst_35 : f32 to vector<8x4x9xf32>
      %289 = vector.fma %288, %205, %84 : vector<8x4x9xf32>
      %290 = bufferization.to_memref %5 : memref<8x8xi1>
      %291 = index.ceildivs %236, %c0
      scf.yield
    }
    %276 = affine.vector_load %alloc_5[%217, %c5, %160] : memref<8x4x9xf32>, vector<4xf32>
    affine.vector_store %213, %alloc_19[%236, %111] : memref<8x8xf32>, vector<1xf32>
    vector.print %19 : vector<14xi16>
    vector.print %23 : vector<8x4x9xi64>
    vector.print %24 : vector<8x4x9xi1>
    vector.print %25 : vector<8x4x9xi32>
    vector.print %26 : vector<8x4x9xi64>
    vector.print %29 : vector<8x8xi1>
    vector.print %49 : vector<14xi1>
    vector.print %50 : vector<14xi16>
    vector.print %59 : vector<8x8xi1>
    vector.print %62 : vector<2xi16>
    vector.print %64 : vector<4x14xi32>
    vector.print %69 : vector<14xf32>
    vector.print %70 : vector<14xf32>
    vector.print %71 : vector<3xi16>
    vector.print %79 : vector<8x8xf32>
    vector.print %80 : vector<8x8xf32>
    vector.print %83 : vector<8x8xi32>
    vector.print %84 : vector<8x4x9xf32>
    vector.print %85 : vector<8x4x9xf32>
    vector.print %87 : vector<8xi16>
    vector.print %88 : vector<8xi1>
    vector.print %89 : vector<8xi16>
    vector.print %91 : vector<14xf32>
    vector.print %92 : vector<14xf32>
    vector.print %112 : vector<i1>
    vector.print %114 : vector<14xi32>
    vector.print %115 : vector<14xi1>
    vector.print %125 : vector<9xi64>
    vector.print %126 : vector<9xi1>
    vector.print %127 : vector<9xi64>
    vector.print %129 : vector<8xi16>
    vector.print %138 : vector<9xi64>
    vector.print %142 : vector<1xi64>
    vector.print %152 : vector<14xf32>
    vector.print %156 : vector<8x8xi1>
    vector.print %157 : vector<4x14xf32>
    vector.print %158 : vector<4x14xf32>
    vector.print %166 : vector<7x4x9xi1>
    vector.print %178 : vector<9xi64>
    vector.print %183 : vector<14xi32>
    vector.print %188 : vector<4xi64>
    vector.print %189 : vector<4xi1>
    vector.print %190 : vector<4xi64>
    vector.print %197 : vector<4xi16>
    vector.print %199 : vector<8x4x9xf32>
    vector.print %200 : vector<8x4x9xf32>
    vector.print %204 : vector<8x4x9xf32>
    vector.print %205 : vector<8x4x9xf32>
    vector.print %213 : vector<1xf32>
    vector.print %218 : vector<8x8xf16>
    vector.print %219 : vector<8x8xf16>
    vector.print %221 : vector<14xf32>
    vector.print %222 : vector<14xf32>
    vector.print %228 : vector<14xf32>
    vector.print %229 : vector<14xf32>
    vector.print %238 : vector<14xf32>
    vector.print %244 : vector<14xi1>
    vector.print %252 : vector<8x8xi64>
    vector.print %257 : vector<8x8xf32>
    vector.print %260 : vector<14xi64>
    vector.print %265 : vector<4x14xf32>
    vector.print %266 : vector<4x14xf32>
    vector.print %276 : vector<4xf32>
    vector.print %false : i1
    vector.print %c615313423_i32 : i32
    vector.print %cst : f32
    vector.print %false_0 : i1
    vector.print %true : i1
    vector.print %cst_1 : f32
    vector.print %c426148679_i64 : i64
    vector.print %cst_2 : f32
    vector.print %cst_3 : f16
    vector.print %c200632833_i32 : i32
    vector.print %c8820_i16 : i16
    vector.print %c1996824902_i32 : i32
    vector.print %false_4 : i1
    vector.print %c1786215703_i64 : i64
    vector.print %c32632_i16 : i16
    vector.print %c-27843_i16 : i16
    vector.print %false_22 : i1
    vector.print %true_24 : i1
    vector.print %true_25 : i1
    vector.print %false_26 : i1
    vector.print %false_27 : i1
    vector.print %103 : i64
    vector.print %141 : f32
    vector.print %true_34 : i1
    vector.print %cst_35 : f32
    vector.print %194 : i16
    vector.print %false_44 : i1
    vector.print %true_45 : i1
    vector.print %false_46 : i1
    return
  }
}
