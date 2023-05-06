module {
  func.func private @func1() -> vector<10x14xf32> {
    %c1645118049_i32 = arith.constant 1645118049 : i32
    %true = arith.constant true
    %cst = arith.constant 3.702400e+04 : f16
    %c-17027_i16 = arith.constant -17027 : i16
    %false = arith.constant false
    %c-32682_i16 = arith.constant -32682 : i16
    %c-16538_i16 = arith.constant -16538 : i16
    %c1016796092_i32 = arith.constant 1016796092 : i32
    %c1043795320_i64 = arith.constant 1043795320 : i64
    %c1422950367_i64 = arith.constant 1422950367 : i64
    %c299780581_i32 = arith.constant 299780581 : i32
    %c18165_i16 = arith.constant 18165 : i16
    %true_0 = arith.constant true
    %cst_1 = arith.constant 1.651200e+04 : f16
    %c1270732898_i32 = arith.constant 1270732898 : i32
    %cst_2 = arith.constant 5.369600e+04 : f16
    %0 = tensor.empty() : tensor<10x14xi16>
    %1 = tensor.empty() : tensor<10x14xf32>
    %2 = tensor.empty() : tensor<8x14xi1>
    %3 = tensor.empty() : tensor<10x14xi16>
    %4 = tensor.empty() : tensor<8x14xi64>
    %5 = tensor.empty() : tensor<8x14xi32>
    %6 = tensor.empty() : tensor<8x14xi32>
    %7 = tensor.empty() : tensor<5x8x14xi32>
    %8 = tensor.empty() : tensor<5x8x14xi64>
    %9 = tensor.empty() : tensor<8x14xi64>
    %10 = tensor.empty() : tensor<8x14xi32>
    %11 = tensor.empty() : tensor<10x14xi1>
    %12 = tensor.empty() : tensor<8x14xi16>
    %13 = tensor.empty() : tensor<5x8x14xf32>
    %14 = tensor.empty() : tensor<8x14xi32>
    %15 = tensor.empty() : tensor<5x8x14xi64>
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
    %alloc = memref.alloc() : memref<5x8x14xi32>
    %alloc_3 = memref.alloc() : memref<5x8x14xi1>
    %alloc_4 = memref.alloc() : memref<8x14xf32>
    %alloc_5 = memref.alloc() : memref<10x14xi64>
    %alloc_6 = memref.alloc() : memref<14x8xf32>
    %alloc_7 = memref.alloc() : memref<8x14xf16>
    %alloc_8 = memref.alloc() : memref<10x14xi16>
    %alloc_9 = memref.alloc() : memref<5x8x14xi16>
    %alloc_10 = memref.alloc() : memref<8x14xf32>
    %alloc_11 = memref.alloc() : memref<8x14xi64>
    %alloc_12 = memref.alloc() : memref<5x8x14xi64>
    %alloc_13 = memref.alloc() : memref<5x8x14xi32>
    %alloc_14 = memref.alloc() : memref<8x14xi16>
    %alloc_15 = memref.alloc() : memref<14x8xi16>
    %alloc_16 = memref.alloc() : memref<8x14xi16>
    %alloc_17 = memref.alloc() : memref<14x8xi32>
    %16 = tensor.empty() : tensor<5x8x14xi64>
    %17 = linalg.copy ins(%15 : tensor<5x8x14xi64>) outs(%16 : tensor<5x8x14xi64>) -> tensor<5x8x14xi64>
    %alloc_18 = memref.alloc() : memref<14x8xi32>
    linalg.transpose ins(%14 : tensor<8x14xi32>) outs(%alloc_18 : memref<14x8xi32>) permutation = [1, 0] 
    %alloc_19 = memref.alloc() : memref<14xi16>
    linalg.reduce ins(%alloc_8 : memref<10x14xi16>) outs(%alloc_19 : memref<14xi16>) dimensions = [0] 
      (%in: i16, %init: i16) {
        %267 = arith.remf %cst_1, %cst_1 : f16
        %268 = index.add %c6, %c1
        %269 = arith.addf %cst_1, %cst : f16
        %270 = index.sub %c6, %c8
        %271 = arith.addf %cst_2, %cst_2 : f16
        %272 = math.absf %13 : tensor<5x8x14xf32>
        %273 = arith.andi %false, %false : i1
        %cst_46 = arith.constant 1.000000e+00 : f32
        %274 = vector.broadcast %cst_46 : f32 to vector<14x8xf32>
        %275 = vector.broadcast %true : i1 to vector<14x8xi1>
        %276 = vector.broadcast %c1016796092_i32 : i32 to vector<14x8xi32>
        %277 = vector.gather %alloc_4[%c0, %c0] [%276], %275, %274 : memref<8x14xf32>, vector<14x8xi32>, vector<14x8xi1>, vector<14x8xf32> into vector<14x8xf32>
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    scf.parallel (%arg0, %arg1) = (%c2, %c9) to (%c7, %c12) step (%c12, %c13) {
      %267 = vector.splat %arg1 : vector<10x14xindex>
      %268 = vector.broadcast %c1422950367_i64 : i64 to vector<8x14xi64>
      %alloc_46 = memref.alloc() : memref<10x14xi1>
      %269 = index.mul %arg1, %c7
      %270 = vector.broadcast %c1422950367_i64 : i64 to vector<8xi64>
      %dest_47, %accumulated_value_48 = vector.scan <maxui>, %268, %270 {inclusive = false, reduction_dim = 1 : i64} : vector<8x14xi64>, vector<8xi64>
      %271 = affine.min affine_map<(d0, d1, d2) -> ((d1 + 120) floordiv 128, d0 ceildiv 128, d2, d0 + d1)>(%arg0, %arg1, %c3)
      %272 = affine.for %arg2 = 0 to 121 iter_args(%arg3 = %c7) -> (index) {
        affine.yield %c13 : index
      }
      affine.for %arg2 = 0 to 71 {
      }
      %273 = math.log2 %13 : tensor<5x8x14xf32>
      %true_49 = index.bool.constant true
      %274 = index.add %c13, %arg0
      %275 = arith.maxf %cst_1, %cst_1 : f16
      %276 = math.atan %1 : tensor<10x14xf32>
      %277 = vector.splat %274 : vector<5x8x14xindex>
      %278 = memref.load %alloc_4[%c2, %c6] : memref<8x14xf32>
      memref.copy %alloc, %alloc_13 : memref<5x8x14xi32> to memref<5x8x14xi32>
      scf.yield
    }
    %18 = affine.vector_load %alloc_7[%c7, %c8] : memref<8x14xf16>, vector<14xf16>
    affine.vector_store %18, %alloc_7[%c14, %c0] : memref<8x14xf16>, vector<14xf16>
    %19 = tensor.empty() : tensor<14xi16>
    %20 = tensor.empty() : tensor<i16>
    %21 = linalg.dot ins(%alloc_19, %19 : memref<14xi16>, tensor<14xi16>) outs(%20 : tensor<i16>) -> tensor<i16>
    %alloc_20 = memref.alloc() : memref<5x8x14xi64>
    memref.copy %alloc_12, %alloc_20 : memref<5x8x14xi64> to memref<5x8x14xi64>
    %22 = memref.realloc %alloc_19 : memref<14xi16> to memref<5xi16>
    %23 = vector.multi_reduction <minf>, %18, %18 [] : vector<14xf16> to vector<14xf16>
    %24 = vector.broadcast %c1016796092_i32 : i32 to vector<10x14xi32>
    %25 = vector.broadcast %true : i1 to vector<10x14xi1>
    %26 = vector.gather %alloc_17[%c8, %c2] [%24], %25, %24 : memref<14x8xi32>, vector<10x14xi32>, vector<10x14xi1>, vector<10x14xi32> into vector<10x14xi32>
    %27 = arith.addf %cst_2, %cst_1 : f16
    %28 = arith.xori %c1043795320_i64, %c1422950367_i64 : i64
    %29 = vector.create_mask %c9, %c1, %c12 : vector<5x8x14xi1>
    %30 = affine.apply affine_map<(d0, d1) -> (2)>(%c6, %c6)
    %31 = arith.shrui %c-32682_i16, %c-16538_i16 : i16
    %cst_21 = arith.constant 1.000000e+00 : f32
    %32 = vector.broadcast %cst_21 : f32 to vector<10x14xf32>
    %33 = vector.fma %32, %32, %32 : vector<10x14xf32>
    %34 = memref.load %alloc_15[%c8, %c5] : memref<14x8xi16>
    %35 = arith.divf %cst, %cst : f16
    %36 = vector.broadcast %cst_21 : f32 to vector<14xf32>
    %dest, %accumulated_value = vector.scan <add>, %32, %36 {inclusive = true, reduction_dim = 0 : i64} : vector<10x14xf32>, vector<14xf32>
    %37 = arith.cmpi slt, %c18165_i16, %c-32682_i16 : i16
    %38 = arith.maxf %cst, %cst : f16
    %39 = math.floor %cst : f16
    %false_22 = index.bool.constant false
    %40 = arith.cmpf oeq, %cst_21, %cst_21 : f32
    %41 = arith.shrui %c-32682_i16, %c-16538_i16 : i16
    %42 = math.round %cst_1 : f16
    %43 = arith.minsi %c299780581_i32, %c299780581_i32 : i32
    %44 = vector.splat %c8 : vector<8x14xindex>
    %45 = index.maxu %c11, %c5
    %46 = index.maxu %c6, %c14
    %47 = vector.broadcast %cst_2 : f16 to vector<14x8xf16>
    %48 = math.absi %c299780581_i32 : i32
    %49 = bufferization.clone %alloc_15 : memref<14x8xi16> to memref<14x8xi16>
    %50 = math.fma %13, %13, %13 : tensor<5x8x14xf32>
    bufferization.dealloc_tensor %13 : tensor<5x8x14xf32>
    %51 = math.absf %cst : f16
    %52 = vector.shuffle %18, %18 [3, 4, 6, 8, 10, 12, 14, 16, 17, 20, 21, 25, 26, 27] : vector<14xf16>, vector<14xf16>
    %53 = index.divu %c1, %c7
    %54 = index.divs %c2, %c1
    %55 = arith.cmpf une, %cst, %cst : f16
    %56 = index.ceildivu %c7, %53
    %57 = index.divu %c11, %c1
    %58 = vector.matrix_multiply %18, %18 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xf16>, vector<14xf16>) -> vector<1xf16>
    %59 = index.sub %c0, %c14
    %true_23 = index.bool.constant true
    %60 = bufferization.clone %alloc_8 : memref<10x14xi16> to memref<10x14xi16>
    %61 = index.divs %c1, %30
    %62 = tensor.empty() : tensor<8xi64>
    %alloc_24 = memref.alloc() : memref<14xi64>
    %alloc_25 = memref.alloc() : memref<8x5xi64>
    %63 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%62, %alloc_24, %alloc_25 : tensor<8xi64>, memref<14xi64>, memref<8x5xi64>) outs(%15 : tensor<5x8x14xi64>) {
    ^bb0(%in: i64, %in_46: i64, %in_47: i64, %out: i64):
      %alloc_48 = memref.alloc() : memref<14x8xi32>
      %267 = tensor.empty() : tensor<8x8xi32>
      %268 = linalg.matmul ins(%6, %alloc_48 : tensor<8x14xi32>, memref<14x8xi32>) outs(%267 : tensor<8x8xi32>) -> tensor<8x8xi32>
      %269 = vector.splat %in_46 : vector<8x14xi64>
      %270 = arith.remf %cst, %cst : f16
      %271 = math.absf %cst : f16
      %c1_i32 = arith.constant 1 : i32
      %c0_i32 = arith.constant 0 : i32
      %272 = vector.transfer_read %10[%c9, %c14], %c0_i32 : tensor<8x14xi32>, vector<i32>
      %273 = math.log10 %13 : tensor<5x8x14xf32>
      %from_elements_49 = tensor.from_elements %false_22, %true_23, %false_22, %true_23, %true_0, %true_23, %true, %false, %false_22, %false_22, %true, %true_23, %true, %true_0, %true_23, %true_0, %true_23, %false, %true, %true, %false, %true_23, %true_23, %true_0, %true_0, %true_23, %true_23, %true_0, %false, %true, %true_23, %true_0, %false_22, %false, %false_22, %true, %true_0, %true_23, %true_23, %false, %true_0, %false, %false_22, %false, %true_0, %true_0, %true, %true, %true_0, %false_22, %true, %false_22, %false, %true_23, %true_0, %true_0, %true_0, %true, %true_0, %false_22, %false_22, %false, %true_0, %true_23, %true_0, %true_23, %true_0, %true_23, %false_22, %true, %false_22, %true_0, %true, %true, %false_22, %true_23, %false_22, %false, %false_22, %true, %true_0, %true_0, %false, %true_0, %true_0, %true_0, %true, %true_23, %true, %true, %true_0, %false_22, %false_22, %true_0, %true_23, %false_22, %false_22, %true, %true_23, %true, %false_22, %true, %true, %true_23, %true_23, %false_22, %false_22, %false, %true, %false_22, %true, %false_22, %true_0, %true_0, %true_0, %false, %false, %false, %false_22, %true_0, %false_22, %true_0, %false_22, %true_23, %false_22, %true, %true_23, %true, %false_22, %false, %true_23, %false, %true_23, %true_23, %true, %true_23, %false_22, %true, %false, %false_22, %false_22, %true_23, %true, %true, %true_0, %true_23, %true, %true_23, %true_23, %false_22, %true, %true_0, %true, %false_22, %true, %true_23, %true_0, %true_23, %false_22, %true, %false, %true_0, %true_23, %true_23, %false_22, %false, %true, %true_23, %true_23, %false, %true_23, %true_23, %true, %true, %false, %false_22, %true_0, %false, %true_23, %false, %true_0, %true_0, %true, %true_0, %false_22, %false, %true_23, %false, %true_0, %true_0, %false_22, %false, %true_0, %true_0, %true_23, %true_0, %false_22, %false, %true_23, %true, %true, %true_23, %false_22, %true_23, %true_0, %false_22, %true_23, %true_0, %true_0, %false, %false, %false_22, %true_0, %true, %false, %true_0, %false_22, %true, %true, %true_0, %true_0, %false, %true_23, %true, %false, %false_22, %true, %true_0, %false_22, %false_22, %true_23, %true, %true_23, %false_22, %true_0, %false, %true, %true_0, %true, %true_23, %true_23, %true_0, %false_22, %true_23, %false, %true_23, %true_23, %false, %true_0, %false, %true, %false, %false_22, %false_22, %true, %true, %true_23, %true_0, %false_22, %false_22, %true_23, %true_23, %true, %false, %true_0, %true_23, %true, %false, %true_23, %false, %false, %true_0, %true_23, %true, %false_22, %false, %false_22, %true_23, %true, %true, %false, %true, %true, %true_23, %true, %true_0, %true_0, %true_0, %true_0, %true_23, %false, %false, %true_23, %true_0, %false, %false, %true_23, %true, %true, %true_0, %false, %false, %true_0, %true_23, %true_0, %true_23, %true, %true_0, %false_22, %false_22, %true, %true, %true_23, %true_0, %true, %false_22, %true, %true_23, %true_0, %false_22, %false, %true_23, %false, %false, %true, %true_23, %true, %true, %true_23, %true, %true_23, %true, %true_0, %false_22, %true_0, %true_0, %true_0, %true, %true_23, %false, %true_23, %true_23, %true_23, %true, %false, %true, %false, %true, %false, %false_22, %true, %false, %false_22, %true_23, %true_0, %false, %true_23, %true_0, %false, %true, %true_0, %true_0, %true_0, %true_0, %false, %false, %false_22, %false, %false, %true_0, %true_23, %true_0, %true, %false, %true_23, %false, %true, %false, %true, %false, %true, %false, %false_22, %false_22, %false, %true, %false_22, %true, %true_23, %true_23, %true_23, %true_23, %true_0, %true_23, %false_22, %true_0, %false_22, %true_23, %false_22, %true_0, %false_22, %false_22, %true_23, %true_0, %true, %true_23, %false, %false, %true_0, %true_23, %true_0, %false, %false, %false_22, %false_22, %true, %true_23, %false_22, %true, %true_23, %true_0, %false_22, %true, %true, %false, %false, %false, %false, %true, %false_22, %false, %true_23, %false_22, %false, %false_22, %true_23, %true_0, %false, %false, %false, %true_23, %true_0, %true_23, %true, %true_0, %true_0, %true_23, %true, %false_22, %false, %true, %true_23, %true, %false, %false_22, %false_22, %true_0, %true_23, %false_22, %true_0, %true_23, %true_0, %true_23, %true, %true_0, %false_22, %true_23, %false, %true, %true, %true, %true, %true_0, %true_23, %true, %true_0, %true, %true_23, %true_23, %true_0, %false_22, %false, %false_22, %false, %true, %true_23, %false_22, %true_0, %false_22, %false, %true, %false_22, %false, %true_23, %true_0, %true, %false_22, %true_23, %true_0, %true_23, %false, %false, %false, %true_0, %false, %false_22, %true, %true, %false, %false_22, %false, %true_23, %true_23, %false_22, %false_22, %false_22, %true_0, %false, %false, %true, %false, %false_22, %true, %false, %false_22, %false_22, %true_0, %true, %true_0, %true_23, %false_22, %true_0, %false_22, %true, %true, %true, %false_22, %true_23, %false, %true_23, %true_23, %false_22, %false_22, %true_0, %true_0, %true, %false, %false, %true_23, %false, %false, %true, %true_0, %true, %true_0, %false_22, %true_0, %true_0, %false_22, %false : tensor<5x8x14xi1>
      %274 = index.castu %c1043795320_i64 : i64 to index
      %expanded_50 = tensor.expand_shape %15 [[0], [1], [2, 3]] : tensor<5x8x14xi64> into tensor<5x8x14x1xi64>
      %275 = arith.xori %c1_i32, %c299780581_i32 : i32
      %276 = index.divu %56, %46
      %277 = index.sub %46, %c8
      affine.for %arg0 = 0 to 113 {
      }
      %278 = arith.shrui %c1_i32, %c299780581_i32 : i32
      %279 = math.round %cst_2 : f16
      %280 = index.divu %c10, %61
      %281 = arith.maxf %cst, %cst : f16
      %282 = vector.matrix_multiply %58, %58 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
      %283 = arith.addi %true_23, %false_22 : i1
      %284 = tensor.empty() : tensor<10x14xf32>
      %285 = arith.shrui %c299780581_i32, %c299780581_i32 : i32
      %286 = math.expm1 %284 : tensor<10x14xf32>
      %287 = index.divs %61, %276
      %rank_51 = tensor.rank %4 : tensor<8x14xi64>
      %288 = index.ceildivu %56, %276
      %289 = arith.shrsi %true_23, %false_22 : i1
      %290 = vector.create_mask %c1, %280 : vector<10x14xi1>
      %291 = math.ipowi %false, %true_23 : i1
      %292 = math.tan %cst_21 : f32
      %293 = vector.broadcast %cst_21 : f32 to vector<14x8xf32>
      %294 = vector.fma %293, %293, %293 : vector<14x8xf32>
      %295 = arith.remui %c-32682_i16, %c18165_i16 : i16
      %296 = bufferization.clone %alloc : memref<5x8x14xi32> to memref<5x8x14xi32>
      linalg.yield %c1043795320_i64 : i64
    } -> tensor<5x8x14xi64>
    %64 = scf.index_switch %30 -> tensor<5x8x14xi16> 
    case 1 {
      %267 = math.round %1 : tensor<10x14xf32>
      %268 = index.divu %c8, %53
      %269 = index.sub %30, %61
      %270 = index.divs %268, %c10
      %271 = math.cos %cst_1 : f16
      %272 = arith.cmpf ogt, %cst_21, %cst_21 : f32
      %273 = index.ceildivu %c1, %45
      %274 = math.atan2 %1, %1 : tensor<10x14xf32>
      %275 = arith.xori %c1645118049_i32, %c1016796092_i32 : i32
      %276 = math.cos %1 : tensor<10x14xf32>
      %277 = vector.matrix_multiply %18, %58 {lhs_columns = 1 : i32, lhs_rows = 14 : i32, rhs_columns = 1 : i32} : (vector<14xf16>, vector<1xf16>) -> vector<14xf16>
      %278 = index.add %c5, %c2
      %279 = arith.maxui %c1422950367_i64, %c1043795320_i64 : i64
      %280 = index.ceildivs %c1, %c7
      %281 = index.divu %c10, %269
      %282 = memref.realloc %alloc_19 : memref<14xi16> to memref<14xi16>
      %283 = tensor.empty() : tensor<5x8x14xi16>
      scf.yield %283 : tensor<5x8x14xi16>
    }
    case 2 {
      %267 = math.ipowi %true, %false_22 : i1
      %268 = vector.broadcast %cst_21 : f32 to vector<10x14xf32>
      %269 = math.roundeven %13 : tensor<5x8x14xf32>
      %from_elements_46 = tensor.from_elements %c-17027_i16, %c-32682_i16, %c-32682_i16, %c-32682_i16, %c-32682_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c-32682_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c18165_i16, %c-32682_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c18165_i16, %c-17027_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c-32682_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c18165_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c-16538_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c-32682_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c18165_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c-32682_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c18165_i16, %c18165_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c18165_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c18165_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c18165_i16, %c-17027_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c18165_i16, %c-16538_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c-32682_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c18165_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c18165_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c18165_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-32682_i16, %c-32682_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c18165_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16 : tensor<5x8x14xi16>
      %270 = math.floor %1 : tensor<10x14xf32>
      %splat = tensor.splat %c1043795320_i64 : tensor<8x14xi64>
      %271 = math.expm1 %cst : f16
      %generated_47 = tensor.generate %56 {
      ^bb0(%arg0: index, %arg1: index):
        %rank_48 = tensor.rank %11 : tensor<10x14xi1>
        %282 = memref.atomic_rmw maxu %c1016796092_i32, %alloc_17[%c9, %c4] : (i32, memref<14x8xi32>) -> i32
        %283 = index.maxu %arg0, %c4
        %284 = arith.shli %true_0, %true_23 : i1
        tensor.yield %true_0 : i1
      } : tensor<?x8xi1>
      %272 = arith.minf %cst, %cst : f16
      %273 = arith.remf %cst, %cst_2 : f16
      %274 = arith.cmpi sgt, %c-17027_i16, %c-32682_i16 : i16
      %275 = arith.remf %cst_1, %cst_2 : f16
      %276 = vector.matrix_multiply %18, %58 {lhs_columns = 1 : i32, lhs_rows = 14 : i32, rhs_columns = 1 : i32} : (vector<14xf16>, vector<1xf16>) -> vector<14xf16>
      %277 = vector.broadcast %c1 : index to vector<14xindex>
      %278 = vector.broadcast %false_22 : i1 to vector<14xi1>
      %279 = vector.broadcast %c18165_i16 : i16 to vector<14xi16>
      vector.scatter %49[%c8, %c6] [%277], %278, %279 : memref<14x8xi16>, vector<14xindex>, vector<14xi1>, vector<14xi16>
      %280 = memref.realloc %alloc_19 : memref<14xi16> to memref<14xi16>
      %281 = vector.matrix_multiply %276, %58 {lhs_columns = 1 : i32, lhs_rows = 14 : i32, rhs_columns = 1 : i32} : (vector<14xf16>, vector<1xf16>) -> vector<14xf16>
      scf.yield %from_elements_46 : tensor<5x8x14xi16>
    }
    case 3 {
      %267 = vector.broadcast %cst_21 : f32 to vector<14xf32>
      %dest_46, %accumulated_value_47 = vector.scan <maxf>, %32, %267 {inclusive = false, reduction_dim = 0 : i64} : vector<10x14xf32>, vector<14xf32>
      vector.print %26 : vector<10x14xi32>
      vector.print %47 : vector<14x8xf16>
      %268 = math.fma %1, %1, %1 : tensor<10x14xf32>
      %269 = arith.minf %cst, %cst : f16
      %270 = affine.for %arg0 = 0 to 68 iter_args(%arg1 = %26) -> (vector<10x14xi32>) {
        affine.yield %24 : vector<10x14xi32>
      }
      %271 = math.fma %cst, %cst_2, %cst : f16
      %272 = arith.maxf %cst, %cst : f16
      %273 = math.atan2 %cst_1, %cst_1 : f16
      %274 = vector.broadcast %cst_2 : f16 to vector<8xf16>
      %275 = vector.insert %274, %47 [6] : vector<8xf16> into vector<14x8xf16>
      %276 = index.maxs %c4, %c12
      %277 = tensor.empty() : tensor<10x14xi32>
      %278 = math.fpowi %1, %277 : tensor<10x14xf32>, tensor<10x14xi32>
      %279 = index.add %276, %c3
      %280 = bufferization.to_tensor %alloc_12 : memref<5x8x14xi64>
      %281 = affine.apply affine_map<(d0, d1, d2) -> (d0)>(%56, %54, %c10)
      %282 = vector.broadcast %cst_21 : f32 to vector<14xf32>
      %dest_48, %accumulated_value_49 = vector.scan <maxf>, %32, %282 {inclusive = true, reduction_dim = 0 : i64} : vector<10x14xf32>, vector<14xf32>
      %283 = tensor.empty() : tensor<5x8x14xi16>
      scf.yield %283 : tensor<5x8x14xi16>
    }
    case 4 {
      scf.if %false {
        %285 = math.expm1 %cst_2 : f16
        memref.tensor_store %19, %alloc_19 : memref<14xi16>
        %286 = arith.maxui %c1645118049_i32, %c1270732898_i32 : i32
        %287 = math.absi %c299780581_i32 : i32
        %288 = tensor.empty() : tensor<10x14xf16>
        %expanded_46 = tensor.expand_shape %288 [[0], [1, 2]] : tensor<10x14xf16> into tensor<10x14x1xf16>
        %289 = arith.mulf %cst_2, %cst : f16
        %290 = math.atan %cst : f16
      }
      %267 = index.add %c12, %56
      %268 = math.atan2 %cst_21, %cst_21 : f32
      %269 = arith.maxui %c-17027_i16, %c18165_i16 : i16
      %270 = arith.maxui %true_23, %true_0 : i1
      %271 = arith.mulf %cst_2, %cst : f16
      %c0_i16 = arith.constant 0 : i16
      %272 = vector.transfer_read %3[%c15, %c0], %c0_i16 : tensor<10x14xi16>, vector<i16>
      %273 = arith.divf %cst_2, %cst_1 : f16
      %274 = vector.broadcast %53 : index to vector<14xindex>
      %275 = vector.broadcast %false_22 : i1 to vector<14xi1>
      %276 = vector.broadcast %c0_i16 : i16 to vector<14xi16>
      vector.scatter %alloc_19[%c4] [%274], %275, %276 : memref<14xi16>, vector<14xindex>, vector<14xi1>, vector<14xi16>
      %277 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%7 : tensor<5x8x14xi32>) {
      ^bb0(%out: i32):
        memref.assume_alignment %alloc_6, 8 : memref<14x8xf32>
        %285 = index.maxu %c8, %c14
        %286 = vector.insertelement %cst_2, %58[%c5 : index] : vector<1xf16>
        %287 = affine.max affine_map<(d0, d1, d2) -> ((d2 ceildiv 2) floordiv 2 + d2 + 1, d2 floordiv 64, d2 floordiv 4)>(%54, %285, %59)
        %288 = arith.cmpi ne, %c1270732898_i32, %c1016796092_i32 : i32
        %289 = index.maxu %45, %57
        %290 = math.atan %13 : tensor<5x8x14xf32>
        %291 = vector.reduction <add>, %18 : vector<14xf16> into f16
        %292 = vector.broadcast %cst_21 : f32 to vector<14xf32>
        %293 = vector.insert %292, %33 [9] : vector<14xf32> into vector<10x14xf32>
        %294 = arith.xori %c299780581_i32, %c1645118049_i32 : i32
        %295 = index.ceildivs %c11, %46
        %296 = math.ipowi %out, %c299780581_i32 : i32
        %297 = index.maxu %59, %56
        %298 = arith.remf %cst_2, %cst_2 : f16
        %299 = arith.shrui %c18165_i16, %c-17027_i16 : i16
        %false_46 = index.bool.constant false
        %300 = index.maxu %59, %289
        %301 = index.add %267, %c3
        memref.assume_alignment %alloc_18, 4 : memref<14x8xi32>
        %302 = bufferization.to_memref %21 : memref<i16>
        %303 = affine.load %alloc_19[%c14] : memref<14xi16>
        %304 = arith.addf %cst_21, %cst_21 : f32
        %true_47 = arith.constant true
        %305 = arith.addi %true_0, %true : i1
        %306 = arith.maxui %c-32682_i16, %c-16538_i16 : i16
        memref.assume_alignment %alloc_19, 2 : memref<14xi16>
        %from_elements_48 = tensor.from_elements %false_46, %false_46, %false_46, %false_46, %true_23, %false_46, %false, %true_23, %true, %false_22, %true_23, %false_46, %true_23, %false_46, %true, %false, %false, %false, %true, %false_46, %true_0, %false_22, %false_22, %false_46, %true, %false, %true_0, %true_0, %true_23, %false, %true_0, %false_46, %false_46, %false_46, %true_23, %true, %false_46, %false_46, %false_22, %false_22, %false, %false_22, %false_22, %true, %true, %false, %false_46, %true_23, %false, %false_46, %true_23, %true, %false_22, %true_0, %true, %false_22, %true_0, %false_46, %false, %true_23, %true_23, %false, %false_22, %false_22, %false_46, %true_23, %false, %false_46, %false_46, %true, %false_46, %true, %false_22, %true, %false, %false_22, %false, %false, %false_46, %false_22, %true, %true, %false_46, %true, %true, %true_23, %true_23, %true, %true, %true, %true_23, %true_0, %false, %true_0, %true_23, %true, %true_0, %false_46, %false_46, %false_46, %true_23, %false_46, %true_23, %false_22, %true, %false_46, %false_22, %true_0, %true_0, %true_23, %false, %false, %false, %true_23, %true_23, %false_46, %true_23, %false_46, %true_0, %false, %true_0, %true, %true, %true_23, %false, %false, %false, %true_0, %false_46, %true_23, %true_23, %false_46, %false, %false, %false_46, %false_46, %true, %false, %false_46, %false : tensor<10x14xi1>
        %307 = math.atan2 %cst_1, %cst : f16
        %308 = arith.xori %c1422950367_i64, %c1422950367_i64 : i64
        %309 = vector.broadcast %out : i32 to vector<14xi32>
        %310 = vector.insert %309, %24 [8] : vector<14xi32> into vector<10x14xi32>
        %311 = math.log %cst_2 : f16
        %312 = index.mul %c13, %c3
        linalg.yield %c1270732898_i32 : i32
      } -> tensor<5x8x14xi32>
      %278 = arith.xori %true_23, %false : i1
      %279 = vector.reduction <add>, %58 : vector<1xf16> into f16
      %280 = vector.matrix_multiply %18, %58 {lhs_columns = 1 : i32, lhs_rows = 14 : i32, rhs_columns = 1 : i32} : (vector<14xf16>, vector<1xf16>) -> vector<14xf16>
      %281 = affine.apply affine_map<(d0, d1, d2) -> (d0)>(%267, %c8, %c6)
      %282 = arith.mulf %cst, %cst : f16
      %283 = arith.xori %false, %false_22 : i1
      %284 = tensor.empty() : tensor<5x8x14xi16>
      scf.yield %284 : tensor<5x8x14xi16>
    }
    default {
      %267 = scf.execute_region -> vector<14x8xi16> {
        %281 = index.castu %true_0 : i1 to index
        %282 = math.ctpop %c1270732898_i32 : i32
        %283 = arith.minsi %true_23, %false_22 : i1
        %284 = vector.reduction <mul>, %18 : vector<14xf16> into f16
        %285 = vector.create_mask %54, %59 : vector<8x14xi1>
        %286 = bufferization.to_memref %0 : memref<10x14xi16>
        %287 = arith.maxsi %c-16538_i16, %c-16538_i16 : i16
        %288 = index.add %57, %61
        %289 = arith.shli %false, %true : i1
        %false_49 = index.bool.constant false
        %c0_i32 = arith.constant 0 : i32
        %290 = vector.transfer_read %14[%46, %c8], %c0_i32 : tensor<8x14xi32>, vector<8xi32>
        %291 = index.divs %288, %c0
        %292 = vector.broadcast %c0_i32 : i32 to vector<14x8xi32>
        %293 = memref.atomic_rmw addi %c18165_i16, %49[%c11, %c6] : (i16, memref<14x8xi16>) -> i16
        %294 = math.floor %cst_21 : f32
        %295 = vector.bitcast %29 : vector<5x8x14xi1> to vector<5x8x14xi1>
        %296 = vector.broadcast %c-17027_i16 : i16 to vector<14x8xi16>
        scf.yield %296 : vector<14x8xi16>
      }
      %alloca = memref.alloca() : memref<10x14xi1>
      %268 = index.castu %c1422950367_i64 : i64 to index
      %269 = bufferization.clone %alloc_4 : memref<8x14xf32> to memref<8x14xf32>
      %270 = math.absf %1 : tensor<10x14xf32>
      %271 = arith.floordivsi %c1016796092_i32, %c1645118049_i32 : i32
      %collapsed_46 = tensor.collapse_shape %9 [[0, 1]] : tensor<8x14xi64> into tensor<112xi64>
      %272 = vector.broadcast %cst_21 : f32 to vector<14x8xf32>
      %273 = vector.fma %272, %272, %272 : vector<14x8xf32>
      %274 = memref.alloca_scope  -> (memref<14x8xi64>) {
        %281 = index.ceildivu %c5, %c12
        %282 = arith.xori %c-16538_i16, %c-17027_i16 : i16
        %283 = vector.reduction <minf>, %58 : vector<1xf16> into f16
        %dest_49, %accumulated_value_50 = vector.scan <minf>, %47, %18 {inclusive = true, reduction_dim = 1 : i64} : vector<14x8xf16>, vector<14xf16>
        %alloc_51 = memref.alloc() : memref<14x14xi64>
        %284 = tensor.empty() : tensor<8x14xi64>
        %285 = linalg.matmul ins(%4, %alloc_51 : tensor<8x14xi64>, memref<14x14xi64>) outs(%284 : tensor<8x14xi64>) -> tensor<8x14xi64>
        %286 = math.absf %1 : tensor<10x14xf32>
        %287 = index.divu %54, %c5
        %splat = tensor.splat %c1645118049_i32 : tensor<8x14xi32>
        %288 = math.log %cst_21 : f32
        %289 = math.log2 %1 : tensor<10x14xf32>
        memref.assume_alignment %alloc_13, 4 : memref<5x8x14xi32>
        %expanded_52 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<8x14xi1> into tensor<8x14x1xi1>
        %290 = memref.load %60[%c9, %c2] : memref<10x14xi16>
        %291 = vector.extract %273[7] : vector<14x8xf32>
        %292 = math.ipowi %11, %11 : tensor<10x14xi1>
        %293 = memref.realloc %alloc_19 : memref<14xi16> to memref<5xi16>
        %294 = index.divs %c6, %c1
        %295 = bufferization.to_memref %10 : memref<8x14xi32>
        %296 = math.absi %false : i1
        memref.store %cst_21, %alloc_6[%c10, %c3] : memref<14x8xf32>
        %297 = memref.realloc %alloc_19 : memref<14xi16> to memref<8xi16>
        %298 = index.sub %c13, %281
        %cast_53 = tensor.cast %1 : tensor<10x14xf32> to tensor<?x?xf32>
        %299 = vector.broadcast %true_0 : i1 to vector<8x14xi1>
        %300 = vector.insert %299, %29 [1] : vector<8x14xi1> into vector<5x8x14xi1>
        %301 = vector.broadcast %cst_21 : f32 to vector<10x14xf32>
        %302 = vector.fma %301, %32, %301 : vector<10x14xf32>
        %303 = index.ceildivu %57, %c13
        %304 = tensor.empty() : tensor<5x8x14xi64>
        %305 = math.fma %cst_1, %cst, %cst_2 : f16
        %306 = bufferization.clone %alloc_16 : memref<8x14xi16> to memref<8x14xi16>
        %307 = math.tanh %cst_1 : f16
        %308 = bufferization.clone %49 : memref<14x8xi16> to memref<14x8xi16>
        %309 = arith.xori %c-16538_i16, %c18165_i16 : i16
        %alloc_54 = memref.alloc() : memref<14x8xi64>
        memref.alloca_scope.return %alloc_54 : memref<14x8xi64>
      }
      scf.index_switch %c11 
      case 1 {
        %281 = math.ctlz %3 : tensor<10x14xi16>
        %282 = arith.minsi %true_23, %false : i1
        %283 = index.divu %56, %30
        %284 = index.castu %c9 : index to i32
        %285 = bufferization.to_memref %9 : memref<8x14xi64>
        %286 = vector.matrix_multiply %18, %18 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xf16>, vector<14xf16>) -> vector<1xf16>
        %287 = index.divu %30, %c5
        %288 = arith.addi %c1270732898_i32, %c299780581_i32 : i32
        %289 = arith.shrsi %c299780581_i32, %c299780581_i32 : i32
        %290 = arith.addi %c1422950367_i64, %c1043795320_i64 : i64
        %291 = arith.remf %cst, %cst_1 : f16
        %292 = arith.addf %cst_1, %cst : f16
        %rank_49 = tensor.rank %13 : tensor<5x8x14xf32>
        %293 = vector.matrix_multiply %286, %286 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
        %294 = math.tanh %cst_21 : f32
        %295 = arith.andi %c1422950367_i64, %c1422950367_i64 : i64
        scf.yield
      }
      case 2 {
        %281 = vector.transpose %273, [1, 0] : vector<14x8xf32> to vector<8x14xf32>
        %282 = math.log %cst_2 : f16
        %283 = affine.max affine_map<(d0) -> (-d0, 2, 2)>(%268)
        %284 = math.floor %1 : tensor<10x14xf32>
        %285 = vector.broadcast %c6 : index to vector<10xindex>
        %286 = vector.broadcast %true_0 : i1 to vector<10xi1>
        %287 = vector.broadcast %c-17027_i16 : i16 to vector<10xi16>
        vector.scatter %60[%c7, %c5] [%285], %286, %287 : memref<10x14xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
        %288 = affine.load %alloc_16[%c11, %c0] : memref<8x14xi16>
        %289 = arith.shrui %false, %true_0 : i1
        %290 = arith.shli %c299780581_i32, %c1270732898_i32 : i32
        %291 = index.maxu %c4, %59
        %292 = math.tan %13 : tensor<5x8x14xf32>
        %293 = index.ceildivu %c10, %45
        %294 = math.absf %1 : tensor<10x14xf32>
        %295 = vector.load %alloc_16[%c5, %c8] : memref<8x14xi16>, vector<14x8xi16>
        %cst_49 = arith.constant 1.000000e+00 : f32
        %cst_50 = arith.constant 0.000000e+00 : f32
        %296 = vector.transfer_read %alloc_4[%c6, %c6], %cst_50 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<8x14xf32>, vector<14xf32>
        %297 = vector.matrix_multiply %58, %18 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 14 : i32} : (vector<1xf16>, vector<14xf16>) -> vector<14xf16>
        %298 = vector.broadcast %c18165_i16 : i16 to vector<8x14xi16>
        %299 = vector.broadcast %true_0 : i1 to vector<8x14xi1>
        %300 = vector.broadcast %c1645118049_i32 : i32 to vector<8x14xi32>
        %301 = vector.gather %alloc_8[%c11, %c9] [%300], %299, %298 : memref<10x14xi16>, vector<8x14xi32>, vector<8x14xi1>, vector<8x14xi16> into vector<8x14xi16>
        scf.yield
      }
      case 3 {
        memref.copy %60, %alloc_8 : memref<10x14xi16> to memref<10x14xi16>
        %281 = affine.apply affine_map<(d0) -> (-(d0 floordiv 8))>(%61)
        %282 = vector.broadcast %c10 : index to vector<14xindex>
        %283 = vector.broadcast %false_22 : i1 to vector<14xi1>
        %284 = vector.broadcast %cst_21 : f32 to vector<14xf32>
        vector.scatter %alloc_6[%c10, %c2] [%282], %283, %284 : memref<14x8xf32>, vector<14xindex>, vector<14xi1>, vector<14xf32>
        %285 = index.sub %c5, %c14
        %286 = memref.realloc %alloc_19 : memref<14xi16> to memref<10xi16>
        %287 = vector.broadcast %c2 : index to vector<5xindex>
        %288 = vector.broadcast %false : i1 to vector<5xi1>
        %289 = vector.broadcast %c1043795320_i64 : i64 to vector<5xi64>
        vector.scatter %274[%c11, %c2] [%287], %288, %289 : memref<14x8xi64>, vector<5xindex>, vector<5xi1>, vector<5xi64>
        %290 = vector.broadcast %cst_21 : f32 to vector<8xf32>
        %291 = vector.broadcast %false : i1 to vector<8xi1>
        %292 = vector.maskedload %alloc_10[%c1, %c6], %291, %290 : memref<8x14xf32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
        %293 = index.divs %c3, %c2
        %294 = math.copysign %1, %1 : tensor<10x14xf32>
        %295 = index.floordivs %54, %59
        %296 = arith.maxsi %c1016796092_i32, %c299780581_i32 : i32
        %297 = index.divu %c11, %53
        %298 = math.absi %8 : tensor<5x8x14xi64>
        %299 = vector.broadcast %46 : index to vector<10xindex>
        %300 = vector.broadcast %false_22 : i1 to vector<10xi1>
        %301 = vector.broadcast %c-16538_i16 : i16 to vector<10xi16>
        vector.scatter %49[%c9, %c7] [%299], %300, %301 : memref<14x8xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
        %302 = tensor.empty() : tensor<10x14xi64>
        %303 = vector.broadcast %c1043795320_i64 : i64 to vector<5x8x14xi64>
        %304 = vector.broadcast %c1016796092_i32 : i32 to vector<5x8x14xi32>
        %305 = vector.gather %302[%c12, %268] [%304], %29, %303 : tensor<10x14xi64>, vector<5x8x14xi32>, vector<5x8x14xi1>, vector<5x8x14xi64> into vector<5x8x14xi64>
        %306 = arith.addi %false_22, %false_22 : i1
        scf.yield
      }
      case 4 {
        %281 = math.floor %cst_21 : f32
        %282 = arith.minui %c1016796092_i32, %c1270732898_i32 : i32
        %283 = vector.create_mask %46, %c0 : vector<10x14xi1>
        %alloc_49 = memref.alloc() : memref<5x8x14xi16>
        %284 = arith.remf %cst_2, %cst : f16
        %285 = math.tan %1 : tensor<10x14xf32>
        %286 = math.fma %1, %1, %1 : tensor<10x14xf32>
        %287 = math.absf %cst_2 : f16
        %rank_50 = tensor.rank %collapsed_46 : tensor<112xi64>
        %c30580538_i32 = arith.constant 30580538 : i32
        %288 = vector.broadcast %cst_21 : f32 to vector<f32>
        vector.transfer_write %288, %alloc_10[%54, %c5] : vector<f32>, memref<8x14xf32>
        %expanded_51 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<8x14xi64> into tensor<8x14x1xi64>
        %289 = index.divs %c0, %c9
        %290 = vector.broadcast %true_23 : i1 to vector<8x14xi1>
        %291 = math.log2 %cst_1 : f16
        %292 = index.ceildivu %c6, %c12
        scf.yield
      }
      default {
        %281 = math.absi %7 : tensor<5x8x14xi32>
        %282 = arith.shrsi %c18165_i16, %c18165_i16 : i16
        %283 = arith.remf %cst, %cst_1 : f16
        %284 = index.maxu %c3, %c9
        %285 = arith.shli %true_23, %false : i1
        %286 = memref.atomic_rmw addi %c-16538_i16, %alloc_14[%c7, %c5] : (i16, memref<8x14xi16>) -> i16
        %287 = arith.xori %c1016796092_i32, %c299780581_i32 : i32
        %288 = index.add %c9, %57
        %289 = vector.broadcast %c11 : index to vector<14xindex>
        %290 = vector.broadcast %true : i1 to vector<14xi1>
        %291 = vector.broadcast %c1043795320_i64 : i64 to vector<14xi64>
        vector.scatter %alloc_5[%c1, %c12] [%289], %290, %291 : memref<10x14xi64>, vector<14xindex>, vector<14xi1>, vector<14xi64>
        %collapsed_49 = tensor.collapse_shape %1 [[0, 1]] : tensor<10x14xf32> into tensor<140xf32>
        %292 = vector.create_mask %c11, %56 : vector<14x8xi1>
        %collapsed_50 = tensor.collapse_shape %15 [[0, 1], [2]] : tensor<5x8x14xi64> into tensor<40x14xi64>
        %293 = vector.broadcast %cst_21 : f32 to vector<8x14xf32>
        %294 = vector.fma %293, %293, %293 : vector<8x14xf32>
        %295 = vector.broadcast %true_0 : i1 to vector<5x8xi1>
        %296 = vector.multi_reduction <mul>, %29, %295 [2] : vector<5x8x14xi1> to vector<5x8xi1>
        %297 = index.mul %c5, %30
        %alloc_51 = memref.alloc() : memref<14x5xi32>
        %298 = tensor.empty() : tensor<8x5xi32>
        %299 = linalg.matmul ins(%14, %alloc_51 : tensor<8x14xi32>, memref<14x5xi32>) outs(%298 : tensor<8x5xi32>) -> tensor<8x5xi32>
      }
      %275 = math.ctlz %16 : tensor<5x8x14xi64>
      %276 = arith.remf %cst_21, %cst_21 : f32
      %277 = arith.shrsi %false, %true_23 : i1
      %278 = memref.load %49[%c9, %c1] : memref<14x8xi16>
      %279 = tensor.empty() : tensor<10x14xi1>
      %mapped_47 = linalg.map ins(%11 : tensor<10x14xi1>) outs(%279 : tensor<10x14xi1>)
        (%in: i1) {
          %281 = vector.matrix_multiply %18, %58 {lhs_columns = 1 : i32, lhs_rows = 14 : i32, rhs_columns = 1 : i32} : (vector<14xf16>, vector<1xf16>) -> vector<14xf16>
          %282 = arith.maxf %cst_21, %cst_21 : f32
          %283 = vector.broadcast %56 : index to vector<10xindex>
          %284 = vector.broadcast %false_22 : i1 to vector<10xi1>
          %285 = vector.broadcast %c1043795320_i64 : i64 to vector<10xi64>
          vector.scatter %alloc_12[%c4, %c7, %c7] [%283], %284, %285 : memref<5x8x14xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
          %286 = arith.maxui %in, %true_23 : i1
          %287 = index.ceildivu %c10, %61
          %288 = vector.splat %c1422950367_i64 : vector<8x14xi64>
          %289 = arith.remf %cst, %cst_1 : f16
          %290 = math.expm1 %13 : tensor<5x8x14xf32>
          %291 = memref.atomic_rmw maxs %c-17027_i16, %alloc_8[%c3, %c6] : (i16, memref<10x14xi16>) -> i16
          %292 = math.fma %13, %13, %13 : tensor<5x8x14xf32>
          %293 = bufferization.clone %alloc_9 : memref<5x8x14xi16> to memref<5x8x14xi16>
          %alloc_49 = memref.alloc() : memref<10x14xf32>
          %294 = math.log %1 : tensor<10x14xf32>
          %295 = arith.addf %cst_1, %cst_1 : f16
          %296 = affine.load %alloc_18[%c2, %c13] : memref<14x8xi32>
          %297 = arith.remf %cst, %cst_1 : f16
          %c1_i64 = arith.constant 1 : i64
          %c0_i64 = arith.constant 0 : i64
          %298 = vector.transfer_read %16[%57, %c4, %c10], %c0_i64 {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : tensor<5x8x14xi64>, vector<8x5xi64>
          %299 = math.atan2 %cst_2, %cst_1 : f16
          %300 = vector.transpose %47, [1, 0] : vector<14x8xf16> to vector<8x14xf16>
          %301 = vector.broadcast %c5 : index to vector<10xindex>
          %302 = vector.broadcast %in : i1 to vector<10xi1>
          %303 = vector.broadcast %cst_21 : f32 to vector<10xf32>
          vector.scatter %alloc_10[%c1, %c12] [%301], %302, %303 : memref<8x14xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
          %304 = memref.load %alloc_8[%c3, %c5] : memref<10x14xi16>
          %305 = index.floordivs %30, %c11
          %306 = arith.cmpf olt, %cst_2, %cst_2 : f16
          %307 = arith.cmpf ule, %cst_1, %cst : f16
          %308 = math.round %13 : tensor<5x8x14xf32>
          %309 = arith.remf %cst_21, %cst_21 : f32
          %310 = index.maxs %c8, %c15
          %311 = arith.remf %cst, %cst_2 : f16
          %312 = index.add %56, %287
          %313 = arith.divsi %c1043795320_i64, %c1_i64 : i64
          %314 = index.ceildivs %c7, %305
          %315 = bufferization.clone %alloc_19 : memref<14xi16> to memref<14xi16>
          %false_50 = arith.constant false
          linalg.yield %false_50 : i1
        }
      %inserted_48 = tensor.insert %cst_21 into %13[%c0, %c4, %c5] : tensor<5x8x14xf32>
      %280 = tensor.empty() : tensor<5x8x14xi16>
      scf.yield %280 : tensor<5x8x14xi16>
    }
    %65 = index.divu %c14, %c14
    %66 = memref.load %alloc_11[%c1, %c0] : memref<8x14xi64>
    %67 = math.expm1 %13 : tensor<5x8x14xf32>
    %68 = math.floor %cst_21 : f32
    %69 = math.log10 %cst : f16
    %70 = math.floor %13 : tensor<5x8x14xf32>
    %inserted = tensor.insert %c-16538_i16 into %12[%c1, %c4] : tensor<8x14xi16>
    %71 = index.casts %false_22 : i1 to index
    %72 = vector.broadcast %cst_21 : f32 to vector<10x14xf32>
    %73 = vector.fma %72, %33, %32 : vector<10x14xf32>
    %74 = affine.for %arg0 = 0 to 39 iter_args(%arg1 = %46) -> (index) {
      affine.yield %c8 : index
    }
    %75 = math.log2 %cst_1 : f16
    %76 = arith.cmpi ult, %true_0, %false : i1
    %77 = math.absi %0 : tensor<10x14xi16>
    %78 = math.tan %13 : tensor<5x8x14xf32>
    %79 = index.divs %c13, %c5
    %80 = index.divu %53, %59
    %81 = memref.atomic_rmw andi %c18165_i16, %60[%c2, %c0] : (i16, memref<10x14xi16>) -> i16
    %82 = arith.mulf %cst, %cst_1 : f16
    %83 = vector.load %alloc_6[%c3, %c1] : memref<14x8xf32>, vector<14x8xf32>
    %84 = arith.xori %c1645118049_i32, %c1016796092_i32 : i32
    %85 = math.absi %0 : tensor<10x14xi16>
    %86 = math.ctpop %c1016796092_i32 : i32
    affine.for %arg0 = 0 to 56 {
    }
    %true_26 = index.bool.constant true
    %87 = arith.remf %cst_21, %cst_21 : f32
    %88 = bufferization.clone %alloc_9 : memref<5x8x14xi16> to memref<5x8x14xi16>
    %89 = vector.load %alloc_15[%c12, %c5] : memref<14x8xi16>, vector<10x14xi16>
    %90 = arith.remf %cst, %cst_1 : f16
    %91 = arith.remf %cst_2, %cst_1 : f16
    %rank = tensor.rank %16 : tensor<5x8x14xi64>
    %92 = arith.minui %true_23, %true_26 : i1
    %93 = vector.load %alloc_19[%c11] : memref<14xi16>, vector<14x8xi16>
    %alloc_27 = memref.alloc() : memref<8x14xi16>
    %94 = bufferization.clone %alloc_19 : memref<14xi16> to memref<14xi16>
    %95 = index.sizeof
    %96 = arith.ceildivsi %c299780581_i32, %c1645118049_i32 : i32
    %97 = index.casts %c-32682_i16 : i16 to index
    %98 = arith.divsi %true_26, %false : i1
    %from_elements = tensor.from_elements %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21 : tensor<5x8x14xf32>
    %99 = arith.maxsi %c299780581_i32, %c1016796092_i32 : i32
    %100 = vector.broadcast %cst_21 : f32 to vector<14xf32>
    %101 = vector.insert %100, %33 [6] : vector<14xf32> into vector<10x14xf32>
    %collapsed = tensor.collapse_shape %4 [[0, 1]] : tensor<8x14xi64> into tensor<112xi64>
    %alloc_28 = memref.alloc() : memref<10x14xi1>
    %102 = vector.broadcast %false : i1 to vector<14x8xi1>
    %103 = vector.broadcast %c1016796092_i32 : i32 to vector<14x8xi32>
    %104 = vector.gather %alloc_28[%45, %65] [%103], %102, %102 : memref<10x14xi1>, vector<14x8xi32>, vector<14x8xi1>, vector<14x8xi1> into vector<14x8xi1>
    %105 = arith.remf %cst_2, %cst : f16
    %106 = math.log2 %13 : tensor<5x8x14xf32>
    %107 = vector.gather %2[%59, %30] [%103], %102, %102 : tensor<8x14xi1>, vector<14x8xi32>, vector<14x8xi1>, vector<14x8xi1> into vector<14x8xi1>
    %108 = math.ctpop %16 : tensor<5x8x14xi64>
    %109 = arith.shrsi %c1645118049_i32, %c1645118049_i32 : i32
    %collapsed_29 = tensor.collapse_shape %15 [[0, 1], [2]] : tensor<5x8x14xi64> into tensor<40x14xi64>
    affine.for %arg0 = 0 to 122 {
    }
    %110 = vector.insert %100, %72 [3] : vector<14xf32> into vector<10x14xf32>
    %111 = memref.realloc %94 : memref<14xi16> to memref<5xi16>
    %rank_30 = tensor.rank %3 : tensor<10x14xi16>
    %112 = scf.index_switch %c7 -> tensor<5x8x14xi1> 
    case 1 {
      %267 = vector.matrix_multiply %58, %58 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
      %268 = arith.ceildivsi %c299780581_i32, %c1016796092_i32 : i32
      %269 = math.cos %cst_1 : f16
      %270 = math.atan %13 : tensor<5x8x14xf32>
      %271 = math.round %cst : f16
      %inserted_46 = tensor.insert %c1043795320_i64 into %15[%c4, %c0, %c3] : tensor<5x8x14xi64>
      %272 = arith.divf %cst_2, %cst : f16
      %273 = arith.shrsi %c1645118049_i32, %c1270732898_i32 : i32
      vector.print %33 : vector<10x14xf32>
      %274 = index.castu %c0 : index to i32
      %275 = scf.while (%arg0 = %alloc_19) : (memref<14xi16>) -> memref<14xi16> {
        %282 = affine.apply affine_map<(d0, d1, d2) -> (d0)>(%c3, %c9, %56)
        %283 = math.ctlz %false_22 : i1
        %284 = vector.splat %cst_21 : vector<10x14xf32>
        %285 = bufferization.clone %alloc_19 : memref<14xi16> to memref<14xi16>
        %286 = bufferization.to_memref %1 : memref<10x14xf32>
        %287 = vector.transpose %24, [1, 0] : vector<10x14xi32> to vector<14x10xi32>
        %288 = arith.remsi %c1645118049_i32, %c299780581_i32 : i32
        %289 = index.ceildivu %rank_30, %97
        scf.condition(%true_26) %285 : memref<14xi16>
      } do {
      ^bb0(%arg0: memref<14xi16>):
        %282 = index.floordivs %95, %65
        %283 = bufferization.clone %alloc_19 : memref<14xi16> to memref<14xi16>
        %284 = vector.broadcast %c-17027_i16 : i16 to vector<14xi16>
        %285 = vector.broadcast %true_26 : i1 to vector<14xi1>
        %286 = vector.maskedload %60[%c3, %c13], %285, %284 : memref<10x14xi16>, vector<14xi1>, vector<14xi16> into vector<14xi16>
        %rank_47 = tensor.rank %0 : tensor<10x14xi16>
        %c1_i64 = arith.constant 1 : i64
        %287 = vector.transfer_read %8[%c8, %c1, %71], %c1_i64 : tensor<5x8x14xi64>, vector<i64>
        %288 = index.sub %30, %282
        %true_48 = index.bool.constant true
        %289 = math.ctlz %8 : tensor<5x8x14xi64>
        %290 = arith.remf %cst_21, %cst_21 : f32
        %291 = arith.floordivsi %c299780581_i32, %c1270732898_i32 : i32
        %292 = math.floor %cst_1 : f16
        %293 = index.maxs %c14, %46
        %294 = math.log10 %13 : tensor<5x8x14xf32>
        %true_49 = index.bool.constant true
        %295 = arith.floordivsi %false_22, %true_23 : i1
        %296 = vector.broadcast %c1_i64 : i64 to vector<5x8x14xi64>
        scf.yield %arg0 : memref<14xi16>
      }
      %276 = arith.maxf %cst_1, %cst_1 : f16
      %277 = math.fpowi %13, %7 : tensor<5x8x14xf32>, tensor<5x8x14xi32>
      %278 = arith.maxui %c-17027_i16, %c-32682_i16 : i16
      %279 = math.ipowi %15, %16 : tensor<5x8x14xi64>
      %280 = math.absi %14 : tensor<8x14xi32>
      %281 = tensor.empty() : tensor<5x8x14xi1>
      scf.yield %281 : tensor<5x8x14xi1>
    }
    case 2 {
      memref.store %c1043795320_i64, %alloc_5[%c7, %c3] : memref<10x14xi64>
      %267 = vector.transpose %83, [1, 0] : vector<14x8xf32> to vector<8x14xf32>
      %268 = vector.create_mask %97, %56, %61 : vector<5x8x14xi1>
      %collapsed_46 = tensor.collapse_shape %15 [[0, 1], [2]] : tensor<5x8x14xi64> into tensor<40x14xi64>
      scf.index_switch %95 
      case 1 {
        %282 = bufferization.to_memref %5 : memref<8x14xi32>
        %283 = math.round %13 : tensor<5x8x14xf32>
        %284 = vector.broadcast %cst_2 : f16 to vector<14x14xf16>
        %285 = vector.outerproduct %18, %18, %284 {kind = #vector.kind<minf>} : vector<14xf16>, vector<14xf16>
        %286 = vector.broadcast %cst_21 : f32 to vector<5x8x14xf32>
        %287 = vector.fma %286, %286, %286 : vector<5x8x14xf32>
        %288 = arith.xori %c-16538_i16, %c-32682_i16 : i16
        %inserted_48 = tensor.insert %cst_21 into %13[%c4, %c6, %c13] : tensor<5x8x14xf32>
        %c0_i16 = arith.constant 0 : i16
        %289 = vector.transfer_read %12[%c1, %c12], %c0_i16 : tensor<8x14xi16>, vector<i16>
        %290 = arith.cmpi eq, %false_22, %true_23 : i1
        memref.store %c-16538_i16, %49[%c6, %c6] : memref<14x8xi16>
        %291 = arith.remf %cst_21, %cst_21 : f32
        %292 = memref.atomic_rmw minf %cst_21, %alloc_6[%c2, %c4] : (f32, memref<14x8xf32>) -> f32
        %293 = math.absi %c1043795320_i64 : i64
        %false_49 = arith.constant false
        %294 = bufferization.clone %alloc_9 : memref<5x8x14xi16> to memref<5x8x14xi16>
        %295 = math.absf %cst : f16
        %296 = math.tanh %from_elements : tensor<5x8x14xf32>
        scf.yield
      }
      case 2 {
        %282 = math.absi %c-32682_i16 : i16
        %283 = arith.shrsi %c18165_i16, %c-32682_i16 : i16
        %284 = index.divs %65, %c13
        %285 = vector.broadcast %true_23 : i1 to vector<14x8xi1>
        %286 = math.roundeven %from_elements : tensor<5x8x14xf32>
        %287 = math.roundeven %cst : f16
        %288 = affine.load %alloc_18[%c15, %c4] : memref<14x8xi32>
        %289 = vector.insertelement %cst_21, %100[%c12 : index] : vector<14xf32>
        %290 = arith.ori %true_26, %true_26 : i1
        %291 = vector.flat_transpose %100 {columns = 7 : i32, rows = 2 : i32} : vector<14xf32> -> vector<14xf32>
        %292 = vector.broadcast %c18165_i16 : i16 to vector<14x8xi16>
        %293 = index.add %c5, %c9
        affine.store %c-16538_i16, %60[%c11, %c7] : memref<10x14xi16>
        %294 = bufferization.clone %alloc_14 : memref<8x14xi16> to memref<8x14xi16>
        %295 = math.roundeven %13 : tensor<5x8x14xf32>
        %296 = arith.mulf %cst_21, %cst_21 : f32
        scf.yield
      }
      case 3 {
        %c24 = arith.constant 24 : index
        %inserted_48 = tensor.insert %c1422950367_i64 into %collapsed[%c24] : tensor<112xi64>
        %282 = math.copysign %from_elements, %13 : tensor<5x8x14xf32>
        %283 = index.mul %c11, %c7
        %expanded_49 = tensor.expand_shape %3 [[0], [1, 2]] : tensor<10x14xi16> into tensor<10x14x1xi16>
        %284 = vector.broadcast %true_0 : i1 to vector<14x8xi1>
        %285 = vector.broadcast %false_22 : i1 to vector<8x14xi1>
        %286 = vector.insert %285, %268 [3] : vector<8x14xi1> into vector<5x8x14xi1>
        %from_elements_50 = tensor.from_elements %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21 : tensor<5x8x14xf32>
        %287 = vector.splat %53 : vector<8x14xindex>
        %288 = arith.shrui %false_22, %true_0 : i1
        %289 = vector.matrix_multiply %58, %58 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
        %290 = index.sub %61, %c9
        memref.assume_alignment %alloc_9, 16 : memref<5x8x14xi16>
        %291 = index.add %71, %c9
        %292 = arith.divf %cst_2, %cst_2 : f16
        %alloc_51 = memref.alloc() : memref<112xi64>
        memref.tensor_store %collapsed, %alloc_51 : memref<112xi64>
        affine.store %c299780581_i32, %alloc_17[%c9, %c15] : memref<14x8xi32>
        scf.yield
      }
      case 4 {
        %282 = vector.matrix_multiply %100, %100 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xf32>, vector<14xf32>) -> vector<1xf32>
        %283 = arith.mulf %cst_2, %cst_2 : f16
        %284 = math.fpowi %from_elements, %7 : tensor<5x8x14xf32>, tensor<5x8x14xi32>
        %285 = index.ceildivu %c10, %c14
        %286 = math.atan2 %cst_1, %cst_2 : f16
        %287 = math.log10 %13 : tensor<5x8x14xf32>
        %288 = math.atan2 %from_elements, %13 : tensor<5x8x14xf32>
        %289 = arith.addf %cst, %cst_1 : f16
        vector.print %100 : vector<14xf32>
        %290 = math.round %13 : tensor<5x8x14xf32>
        %291 = math.floor %13 : tensor<5x8x14xf32>
        %292 = math.cos %13 : tensor<5x8x14xf32>
        %293 = vector.create_mask %c13, %c0 : vector<8x14xi1>
        %294 = memref.load %alloc_5[%c1, %c12] : memref<10x14xi64>
        %295 = index.floordivs %c12, %c5
        %296 = math.absi %c1270732898_i32 : i32
        scf.yield
      }
      default {
        %282 = memref.realloc %alloc_19 : memref<14xi16> to memref<10xi16>
        %283 = math.absi %6 : tensor<8x14xi32>
        %expanded_48 = tensor.expand_shape %4 [[0], [1, 2]] : tensor<8x14xi64> into tensor<8x14x1xi64>
        %284 = vector.reduction <add>, %18 : vector<14xf16> into f16
        %285 = math.fma %cst_2, %cst_2, %cst_2 : f16
        %286 = math.fma %cst_21, %cst_21, %cst_21 : f32
        %287 = vector.matrix_multiply %100, %100 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xf32>, vector<14xf32>) -> vector<1xf32>
        %288 = math.log %cst_2 : f16
        %289 = tensor.empty() : tensor<14x8xi64>
        %290 = tensor.empty() : tensor<8x8xi64>
        %291 = linalg.matmul ins(%9, %289 : tensor<8x14xi64>, tensor<14x8xi64>) outs(%290 : tensor<8x8xi64>) -> tensor<8x8xi64>
        %292 = affine.min affine_map<(d0) -> (d0 * 8, ((d0 * -2) floordiv 8 + 8) ceildiv 8 + (d0 * -2) mod 32, (d0 * -2) floordiv 8 + 24, d0 - 4)>(%rank)
        %293 = vector.transpose %26, [1, 0] : vector<10x14xi32> to vector<14x10xi32>
        %294 = vector.matrix_multiply %287, %287 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
        %inserted_49 = tensor.insert %c-16538_i16 into %12[%c4, %c1] : tensor<8x14xi16>
        %295 = arith.remf %cst_1, %cst_2 : f16
        %296 = arith.xori %c-32682_i16, %c18165_i16 : i16
        %297 = vector.extract %103[0] : vector<14x8xi32>
      }
      %269 = math.log10 %cst : f16
      %270 = vector.reduction <minf>, %100 : vector<14xf32> into f32
      %271 = vector.create_mask %53, %45 : vector<14x8xi1>
      %272 = vector.extract %107[8] : vector<14x8xi1>
      %273 = bufferization.clone %alloc_8 : memref<10x14xi16> to memref<10x14xi16>
      %274 = memref.realloc %alloc_19 : memref<14xi16> to memref<14xi16>
      %275 = math.ipowi %c1043795320_i64, %c1043795320_i64 : i64
      %276 = memref.realloc %94 : memref<14xi16> to memref<8xi16>
      %277 = arith.floordivsi %c299780581_i32, %c1270732898_i32 : i32
      %alloc_47 = memref.alloc() : memref<14x14xi1>
      %278 = tensor.empty() : tensor<10x14xi1>
      %279 = linalg.matmul ins(%11, %alloc_47 : tensor<10x14xi1>, memref<14x14xi1>) outs(%278 : tensor<10x14xi1>) -> tensor<10x14xi1>
      %280 = math.absi %6 : tensor<8x14xi32>
      %281 = tensor.empty() : tensor<5x8x14xi1>
      scf.yield %281 : tensor<5x8x14xi1>
    }
    case 3 {
      %267 = math.roundeven %13 : tensor<5x8x14xf32>
      %268 = arith.addi %c-32682_i16, %c-16538_i16 : i16
      %269 = index.mul %c4, %57
      %270 = arith.remf %cst_2, %cst : f16
      %271 = vector.broadcast %c1270732898_i32 : i32 to vector<14xi32>
      %272 = vector.insert %271, %24 [4] : vector<14xi32> into vector<10x14xi32>
      %273 = arith.cmpi eq, %c1645118049_i32, %c1645118049_i32 : i32
      %274 = math.round %from_elements : tensor<5x8x14xf32>
      %collapsed_46 = tensor.collapse_shape %6 [[0, 1]] : tensor<8x14xi32> into tensor<112xi32>
      %275 = math.ipowi %7, %7 : tensor<5x8x14xi32>
      %c409203280_i64 = arith.constant 409203280 : i64
      vector.print %107 : vector<14x8xi1>
      %276 = math.cos %cst_1 : f16
      %inserted_47 = tensor.insert %cst_21 into %13[%c4, %c3, %c0] : tensor<5x8x14xf32>
      %277 = vector.create_mask %97, %97 : vector<8x14xi1>
      %278 = vector.broadcast %true_26 : i1 to vector<8x10xi1>
      %279 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %102, %25, %278 : vector<14x8xi1>, vector<10x14xi1> into vector<8x10xi1>
      %280 = memref.atomic_rmw addi %c-32682_i16, %60[%c0, %c7] : (i16, memref<10x14xi16>) -> i16
      %281 = tensor.empty() : tensor<5x8x14xi1>
      scf.yield %281 : tensor<5x8x14xi1>
    }
    case 4 {
      memref.assume_alignment %alloc_10, 2 : memref<8x14xf32>
      %267 = arith.maxf %cst_2, %cst_1 : f16
      %268 = memref.load %alloc_19[%c11] : memref<14xi16>
      %269 = vector.load %alloc_14[%c2, %c10] : memref<8x14xi16>, vector<10x14xi16>
      %alloc_46 = memref.alloc() : memref<14x8xi16>
      %270 = vector.broadcast %cst_21 : f32 to vector<10x14xf32>
      %271 = vector.fma %270, %270, %73 : vector<10x14xf32>
      %272 = tensor.empty() : tensor<14x5xi64>
      %273 = tensor.empty() : tensor<40x5xi64>
      %274 = linalg.matmul ins(%collapsed_29, %272 : tensor<40x14xi64>, tensor<14x5xi64>) outs(%273 : tensor<40x5xi64>) -> tensor<40x5xi64>
      %275 = vector.matrix_multiply %100, %100 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xf32>, vector<14xf32>) -> vector<1xf32>
      %276 = math.atan2 %cst_1, %cst : f16
      %277 = math.atan %13 : tensor<5x8x14xf32>
      %278 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1)>(%57, %59, %c7, %56)
      memref.assume_alignment %49, 2 : memref<14x8xi16>
      %279 = arith.shrsi %c1016796092_i32, %c299780581_i32 : i32
      %280 = scf.while (%arg0 = %alloc_12) : (memref<5x8x14xi64>) -> memref<5x8x14xi64> {
        %283 = arith.ori %c-16538_i16, %c-32682_i16 : i16
        %284 = vector.broadcast %c15 : index to vector<5xindex>
        %285 = vector.broadcast %true : i1 to vector<5xi1>
        %286 = vector.broadcast %c-17027_i16 : i16 to vector<5xi16>
        vector.scatter %alloc_14[%c6, %c9] [%284], %285, %286 : memref<8x14xi16>, vector<5xindex>, vector<5xi1>, vector<5xi16>
        %287 = vector.load %alloc_14[%c3, %c9] : memref<8x14xi16>, vector<10x14xi16>
        %288 = index.add %c4, %rank
        %289 = vector.matrix_multiply %100, %100 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xf32>, vector<14xf32>) -> vector<1xf32>
        %290 = math.ctlz %collapsed_29 : tensor<40x14xi64>
        %from_elements_48 = tensor.from_elements %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64 : tensor<10x14xi64>
        %291 = arith.divsi %false_22, %true_23 : i1
        scf.condition(%false_22) %arg0 : memref<5x8x14xi64>
      } do {
      ^bb0(%arg0: memref<5x8x14xi64>):
        %from_elements_48 = tensor.from_elements %c-16538_i16, %c-17027_i16, %c-17027_i16, %c18165_i16, %c18165_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c-32682_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c-32682_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c-17027_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c18165_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c18165_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c-17027_i16, %c18165_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c18165_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-32682_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c18165_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c18165_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c-32682_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c18165_i16, %c18165_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c18165_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c18165_i16, %c18165_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c18165_i16 : tensor<5x8x14xi16>
        %283 = math.tanh %cst_1 : f16
        %284 = index.ceildivs %57, %59
        %285 = math.cos %13 : tensor<5x8x14xf32>
        %286 = index.sizeof
        %287 = arith.shli %c1645118049_i32, %c1645118049_i32 : i32
        %288 = bufferization.to_memref %14 : memref<8x14xi32>
        %289 = arith.maxsi %c1645118049_i32, %c1016796092_i32 : i32
        %290 = arith.ceildivsi %c1645118049_i32, %c1645118049_i32 : i32
        %291 = bufferization.to_memref %8 : memref<5x8x14xi64>
        %292 = vector.broadcast %c1270732898_i32 : i32 to vector<14xi32>
        %293 = vector.multi_reduction <mul>, %26, %292 [0] : vector<10x14xi32> to vector<14xi32>
        %from_elements_49 = tensor.from_elements %c-32682_i16, %c-32682_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c18165_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c-32682_i16, %c-32682_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c18165_i16, %c18165_i16, %c-32682_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c-16538_i16, %c18165_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c18165_i16, %c-32682_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-32682_i16, %c-32682_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c18165_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c18165_i16, %c18165_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c18165_i16, %c-32682_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c18165_i16, %c-32682_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c18165_i16, %c18165_i16, %c18165_i16, %c-32682_i16, %c-32682_i16, %c18165_i16, %c18165_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c18165_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c-16538_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c18165_i16, %c18165_i16, %c18165_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c-32682_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c18165_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c18165_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c18165_i16 : tensor<5x8x14xi16>
        %294 = arith.shrui %c1043795320_i64, %c1043795320_i64 : i64
        %295 = vector.broadcast %true_23 : i1 to vector<8x14xi1>
        %dest_50, %accumulated_value_51 = vector.scan <xor>, %29, %295 {inclusive = false, reduction_dim = 0 : i64} : vector<5x8x14xi1>, vector<8x14xi1>
        %296 = math.fma %1, %1, %1 : tensor<10x14xf32>
        %297 = vector.broadcast %79 : index to vector<10xindex>
        %298 = vector.broadcast %true_26 : i1 to vector<10xi1>
        %299 = vector.broadcast %c-17027_i16 : i16 to vector<10xi16>
        vector.scatter %88[%c3, %c7, %c0] [%297], %298, %299 : memref<5x8x14xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
        scf.yield %291 : memref<5x8x14xi64>
      }
      %false_47 = index.bool.constant false
      %281 = index.add %c8, %97
      %282 = tensor.empty() : tensor<5x8x14xi1>
      scf.yield %282 : tensor<5x8x14xi1>
    }
    default {
      %267 = scf.while (%arg0 = %26) : (vector<10x14xi32>) -> vector<10x14xi32> {
        %281 = math.floor %13 : tensor<5x8x14xf32>
        %282 = math.ipowi %c1422950367_i64, %c1043795320_i64 : i64
        %283 = math.rsqrt %cst : f16
        %284 = vector.broadcast %cst_21 : f32 to vector<14x8xf32>
        %285 = vector.fma %284, %83, %83 : vector<14x8xf32>
        %286 = math.copysign %cst_21, %cst_21 : f32
        %287 = arith.maxsi %c-17027_i16, %c-16538_i16 : i16
        %from_elements_48 = tensor.from_elements %c299780581_i32, %c299780581_i32, %c1645118049_i32, %c1645118049_i32, %c1270732898_i32, %c1270732898_i32, %c1270732898_i32, %c299780581_i32, %c1645118049_i32, %c1645118049_i32, %c1270732898_i32, %c1645118049_i32, %c1270732898_i32, %c1016796092_i32, %c299780581_i32, %c299780581_i32, %c299780581_i32, %c1016796092_i32, %c1016796092_i32, %c1645118049_i32, %c1270732898_i32, %c1270732898_i32, %c1270732898_i32, %c299780581_i32, %c1016796092_i32, %c1270732898_i32, %c1270732898_i32, %c1016796092_i32, %c1016796092_i32, %c299780581_i32, %c299780581_i32, %c1645118049_i32, %c1016796092_i32, %c1270732898_i32, %c1645118049_i32, %c299780581_i32, %c1270732898_i32, %c299780581_i32, %c1270732898_i32, %c299780581_i32, %c299780581_i32, %c1645118049_i32, %c1016796092_i32, %c1016796092_i32, %c1270732898_i32, %c299780581_i32, %c1645118049_i32, %c299780581_i32, %c1016796092_i32, %c1645118049_i32, %c1016796092_i32, %c1645118049_i32, %c1645118049_i32, %c1270732898_i32, %c299780581_i32, %c1270732898_i32, %c1270732898_i32, %c1270732898_i32, %c1645118049_i32, %c299780581_i32, %c1270732898_i32, %c1016796092_i32, %c1645118049_i32, %c299780581_i32, %c1016796092_i32, %c299780581_i32, %c1016796092_i32, %c1270732898_i32, %c1016796092_i32, %c1016796092_i32, %c1645118049_i32, %c1645118049_i32, %c1645118049_i32, %c1270732898_i32, %c1270732898_i32, %c1016796092_i32, %c1270732898_i32, %c1270732898_i32, %c299780581_i32, %c1645118049_i32, %c1270732898_i32, %c1016796092_i32, %c1645118049_i32, %c1270732898_i32, %c1645118049_i32, %c1016796092_i32, %c1016796092_i32, %c1645118049_i32, %c1016796092_i32, %c1270732898_i32, %c1016796092_i32, %c1270732898_i32, %c299780581_i32, %c1270732898_i32, %c1270732898_i32, %c1270732898_i32, %c1016796092_i32, %c1645118049_i32, %c299780581_i32, %c1270732898_i32, %c1270732898_i32, %c299780581_i32, %c299780581_i32, %c1270732898_i32, %c299780581_i32, %c1270732898_i32, %c299780581_i32, %c1645118049_i32, %c1016796092_i32, %c1016796092_i32, %c1270732898_i32, %c1645118049_i32 : tensor<8x14xi32>
        %288 = index.maxu %57, %95
        scf.condition(%true_26) %26 : vector<10x14xi32>
      } do {
      ^bb0(%arg0: vector<10x14xi32>):
        %281 = arith.xori %c1016796092_i32, %c1270732898_i32 : i32
        %282 = index.sizeof
        %inserted_48 = tensor.insert %cst_21 into %13[%c4, %c0, %c0] : tensor<5x8x14xf32>
        %283 = memref.load %alloc_11[%c4, %c5] : memref<8x14xi64>
        %284 = index.ceildivs %46, %56
        %285 = index.maxu %rank, %59
        %286 = arith.addi %false, %true : i1
        %287 = tensor.empty(%59) : tensor<?x14xf16>
        %288 = math.round %from_elements : tensor<5x8x14xf32>
        %cast_49 = tensor.cast %16 : tensor<5x8x14xi64> to tensor<?x?x?xi64>
        %289 = arith.xori %false, %false_22 : i1
        %290 = arith.mulf %cst_2, %cst_1 : f16
        %291 = index.castu %c-17027_i16 : i16 to index
        %292 = arith.maxf %cst_21, %cst_21 : f32
        memref.copy %94, %alloc_19 : memref<14xi16> to memref<14xi16>
        %c64 = arith.constant 64 : index
        %extracted_50 = tensor.extract %collapsed[%c64] : tensor<112xi64>
        scf.yield %26 : vector<10x14xi32>
      }
      %268 = memref.load %alloc_11[%c0, %c6] : memref<8x14xi64>
      memref.copy %alloc_14, %alloc_16 : memref<8x14xi16> to memref<8x14xi16>
      %269 = vector.create_mask %c15, %80 : vector<8x14xi1>
      %270 = math.absi %true_23 : i1
      %271 = vector.multi_reduction <add>, %18, %cst_1 [0] : vector<14xf16> to f16
      %272 = index.divu %c10, %c6
      %collapsed_46 = tensor.collapse_shape %15 [[0, 1], [2]] : tensor<5x8x14xi64> into tensor<40x14xi64>
      %generated_47 = tensor.generate %61 {
      ^bb0(%arg0: index, %arg1: index):
        %281 = arith.remf %cst_2, %cst_1 : f16
        %282 = vector.splat %false_22 : vector<10x14xi1>
        %283 = vector.gather %alloc_4[%c12, %rank] [%103], %104, %83 : memref<8x14xf32>, vector<14x8xi32>, vector<14x8xi1>, vector<14x8xf32> into vector<14x8xf32>
        %284 = index.castu %97 : index to i32
        tensor.yield %271 : f16
      } : tensor<?x14xf16>
      %273 = math.roundeven %cst_21 : f32
      %274 = affine.load %alloc_4[%c8, %c15] : memref<8x14xf32>
      %275 = memref.load %alloc_10[%c4, %c11] : memref<8x14xf32>
      %276 = math.tan %cst_2 : f16
      %277 = arith.floordivsi %true_26, %true_23 : i1
      %278 = tensor.empty() : tensor<8x14xi64>
      %279 = arith.remsi %true, %false : i1
      %280 = tensor.empty() : tensor<5x8x14xi1>
      scf.yield %280 : tensor<5x8x14xi1>
    }
    %113 = index.ceildivu %57, %57
    %rank_31 = tensor.rank %14 : tensor<8x14xi32>
    memref.copy %94, %alloc_19 : memref<14xi16> to memref<14xi16>
    %114 = tensor.empty() : tensor<112xi64>
    %mapped = linalg.map ins(%collapsed, %collapsed : tensor<112xi64>, tensor<112xi64>) outs(%114 : tensor<112xi64>)
      (%in: i64, %in_46: i64) {
        %267 = math.log10 %1 : tensor<10x14xf32>
        %268 = bufferization.clone %alloc_9 : memref<5x8x14xi16> to memref<5x8x14xi16>
        %269 = vector.load %94[%c0] : memref<14xi16>, vector<14x8xi16>
        %270 = math.atan2 %from_elements, %from_elements : tensor<5x8x14xf32>
        %271 = scf.while (%arg0 = %alloc_8) : (memref<10x14xi16>) -> memref<10x14xi16> {
          %303 = affine.load %alloc_15[%c7, %c5] : memref<14x8xi16>
          %304 = math.copysign %cst_2, %cst : f16
          %305 = math.floor %13 : tensor<5x8x14xf32>
          %306 = vector.broadcast %cst_21 : f32 to vector<14x8xf32>
          %307 = vector.fma %306, %83, %83 : vector<14x8xf32>
          %308 = vector.multi_reduction <maxf>, %18, %cst_2 [0] : vector<14xf16> to f16
          %309 = arith.shrui %303, %c-17027_i16 : i16
          %310 = vector.broadcast %cst_21 : f32 to vector<14x14xf32>
          %311 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %73, %73, %310 : vector<10x14xf32>, vector<10x14xf32> into vector<14x14xf32>
          %312 = vector.shuffle %73, %33 [5, 6, 8, 11, 13, 14, 17, 19] : vector<10x14xf32>, vector<10x14xf32>
          scf.condition(%true_0) %60 : memref<10x14xi16>
        } do {
        ^bb0(%arg0: memref<10x14xi16>):
          %303 = index.ceildivs %59, %71
          %304 = memref.atomic_rmw andi %c299780581_i32, %alloc_13[%c0, %c1, %c2] : (i32, memref<5x8x14xi32>) -> i32
          %305 = index.ceildivs %59, %80
          %from_elements_48 = tensor.from_elements %c-16538_i16, %c-16538_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c18165_i16, %c-32682_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c18165_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c18165_i16, %c-17027_i16, %c-32682_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c18165_i16, %c18165_i16, %c-16538_i16, %c18165_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c18165_i16, %c18165_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c18165_i16, %c18165_i16, %c18165_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c18165_i16, %c18165_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c18165_i16 : tensor<10x14xi16>
          %306 = vector.broadcast %cst_21 : f32 to vector<5x8x14xf32>
          %307 = vector.fma %306, %306, %306 : vector<5x8x14xf32>
          %308 = math.round %from_elements : tensor<5x8x14xf32>
          %expanded_49 = tensor.expand_shape %11 [[0], [1, 2]] : tensor<10x14xi1> into tensor<10x14x1xi1>
          %309 = arith.addf %cst_21, %cst_21 : f32
          %310 = index.maxu %c8, %c0
          %c1_i32 = arith.constant 1 : i32
          %c0_i32 = arith.constant 0 : i32
          %311 = vector.transfer_read %alloc[%71, %c4, %c0], %c0_i32 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : memref<5x8x14xi32>, vector<8xi32>
          %c1461656196_i64 = arith.constant 1461656196 : i64
          vector.print %89 : vector<10x14xi16>
          %expanded_50 = tensor.expand_shape %4 [[0], [1, 2]] : tensor<8x14xi64> into tensor<8x14x1xi64>
          %312 = index.sizeof
          %313 = index.sub %57, %65
          %314 = vector.matrix_multiply %18, %18 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xf16>, vector<14xf16>) -> vector<1xf16>
          scf.yield %60 : memref<10x14xi16>
        }
        %272 = math.round %cst_2 : f16
        %273 = math.round %1 : tensor<10x14xf32>
        %274 = arith.shrsi %c1043795320_i64, %c1422950367_i64 : i64
        %275 = math.floor %13 : tensor<5x8x14xf32>
        %276 = vector.broadcast %c1016796092_i32 : i32 to vector<14x8xi32>
        %277 = index.mul %c0, %71
        %278 = vector.broadcast %c18165_i16 : i16 to vector<10x14xi16>
        %alloc_47 = memref.alloc() : memref<14x10xf32>
        %279 = tensor.empty() : tensor<10x10xf32>
        %280 = linalg.matmul ins(%1, %alloc_47 : tensor<10x14xf32>, memref<14x10xf32>) outs(%279 : tensor<10x10xf32>) -> tensor<10x10xf32>
        %281 = index.castu %c-32682_i16 : i16 to index
        %282 = affine.apply affine_map<(d0) -> (d0 * -32)>(%c0)
        %283 = arith.shrui %c1422950367_i64, %c1043795320_i64 : i64
        %284 = affine.apply affine_map<(d0, d1) -> (d0 ceildiv 16 - (d1 * 129 + 64))>(%61, %rank_30)
        %285 = arith.minui %true_26, %false : i1
        %286 = arith.floordivsi %c-17027_i16, %c18165_i16 : i16
        %287 = math.expm1 %13 : tensor<5x8x14xf32>
        %288 = math.atan2 %cst_2, %cst : f16
        %289 = vector.broadcast %c-16538_i16 : i16 to vector<8x14xi16>
        %290 = vector.broadcast %false : i1 to vector<8x14xi1>
        %291 = vector.broadcast %c1270732898_i32 : i32 to vector<8x14xi32>
        %292 = vector.gather %alloc_15[%c6, %c5] [%291], %290, %289 : memref<14x8xi16>, vector<8x14xi32>, vector<8x14xi1>, vector<8x14xi16> into vector<8x14xi16>
        %293 = math.fma %cst, %cst, %cst : f16
        %294 = memref.atomic_rmw maxs %c-16538_i16, %268[%c4, %c1, %c9] : (i16, memref<5x8x14xi16>) -> i16
        %295 = math.atan2 %cst, %cst : f16
        %296 = math.round %cst : f16
        %297 = vector.matrix_multiply %18, %58 {lhs_columns = 1 : i32, lhs_rows = 14 : i32, rhs_columns = 1 : i32} : (vector<14xf16>, vector<1xf16>) -> vector<14xf16>
        %298 = index.sub %rank, %59
        %299 = math.round %1 : tensor<10x14xf32>
        %300 = tensor.empty() : tensor<10x14xi64>
        %301 = index.divs %71, %56
        %302 = math.cos %1 : tensor<10x14xf32>
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %115 = arith.addi %c1422950367_i64, %c1043795320_i64 : i64
    %116 = tensor.empty() : tensor<10x14xf16>
    %117 = arith.floordivsi %c299780581_i32, %c1645118049_i32 : i32
    %118 = math.absi %true_23 : i1
    %119 = vector.broadcast %c1 : index to vector<14xindex>
    %120 = vector.broadcast %true_23 : i1 to vector<14xi1>
    %121 = vector.broadcast %c18165_i16 : i16 to vector<14xi16>
    vector.scatter %alloc_9[%c0, %c7, %c10] [%119], %120, %121 : memref<5x8x14xi16>, vector<14xindex>, vector<14xi1>, vector<14xi16>
    %cst_32 = arith.constant 2.598000e+03 : f16
    %inserted_33 = tensor.insert %c1043795320_i64 into %8[%c3, %c6, %c9] : tensor<5x8x14xi64>
    %122 = math.round %cst_21 : f32
    %123 = index.ceildivu %c6, %53
    %124 = arith.maxf %cst_1, %cst : f16
    %125 = vector.broadcast %c1016796092_i32 : i32 to vector<8xi32>
    %dest_34, %accumulated_value_35 = vector.scan <minui>, %103, %125 {inclusive = true, reduction_dim = 0 : i64} : vector<14x8xi32>, vector<8xi32>
    %126 = math.floor %cst_21 : f32
    %127 = arith.divf %cst_2, %cst_1 : f16
    memref.store %true_23, %alloc_3[%c4, %c6, %c5] : memref<5x8x14xi1>
    %128 = memref.alloca_scope  -> (memref<5x8x14xi1>) {
      %cast_46 = tensor.cast %114 : tensor<112xi64> to tensor<?xi64>
      %267 = tensor.empty() : tensor<10x14xi32>
      %268 = math.fpowi %116, %267 : tensor<10x14xf16>, tensor<10x14xi32>
      %generated_47 = tensor.generate %c7 {
      ^bb0(%arg0: index, %arg1: index):
        %292 = math.copysign %116, %116 : tensor<10x14xf16>
        %293 = arith.maxf %cst_1, %cst : f16
        %294 = affine.min affine_map<(d0, d1) -> ((d0 * 2) floordiv 8 - 8, d1 * 2 - d0 * 2, (d0 * 2) floordiv 8 - 8)>(%97, %c5)
        %collapsed_52 = tensor.collapse_shape %267 [[0, 1]] : tensor<10x14xi32> into tensor<140xi32>
        tensor.yield %cst_21 : f32
      } : tensor<?x14xf32>
      %269 = math.absi %12 : tensor<8x14xi16>
      %270 = math.floor %cst : f16
      %271 = vector.insert %cst_2, %58 [0] : f16 into vector<1xf16>
      %272 = index.ceildivs %30, %c11
      %273 = tensor.empty() : tensor<14x8xi1>
      %274 = vector.gather %273[%95, %113] [%103], %104, %102 : tensor<14x8xi1>, vector<14x8xi32>, vector<14x8xi1>, vector<14x8xi1> into vector<14x8xi1>
      %275 = math.rsqrt %cst_2 : f16
      %276 = vector.create_mask %80, %c8, %c7 : vector<5x8x14xi1>
      memref.assume_alignment %88, 16 : memref<5x8x14xi16>
      %277 = math.atan %cst : f16
      %278 = math.roundeven %13 : tensor<5x8x14xf32>
      %279 = index.divu %54, %57
      %280 = math.absf %13 : tensor<5x8x14xf32>
      %281 = arith.andi %c-32682_i16, %c-17027_i16 : i16
      %282 = vector.broadcast %true_0 : i1 to vector<5x8xi1>
      %dest_48, %accumulated_value_49 = vector.scan <minui>, %276, %282 {inclusive = false, reduction_dim = 2 : i64} : vector<5x8x14xi1>, vector<5x8xi1>
      %collapsed_50 = tensor.collapse_shape %1 [[0, 1]] : tensor<10x14xf32> into tensor<140xf32>
      %283 = arith.addf %cst_21, %cst_21 : f32
      %splat = tensor.splat %c1645118049_i32 : tensor<10x14xi32>
      %alloc_51 = memref.alloc() : memref<14x8xf32>
      memref.copy %alloc_6, %alloc_51 : memref<14x8xf32> to memref<14x8xf32>
      %284 = arith.xori %c1645118049_i32, %c1270732898_i32 : i32
      memref.assume_alignment %60, 4 : memref<10x14xi16>
      memref.assume_alignment %alloc_4, 1 : memref<8x14xf32>
      memref.copy %alloc_14, %alloc_16 : memref<8x14xi16> to memref<8x14xi16>
      %285 = math.absf %116 : tensor<10x14xf16>
      %286 = math.fma %116, %116, %116 : tensor<10x14xf16>
      %287 = math.round %1 : tensor<10x14xf32>
      %288 = index.ceildivs %c9, %c6
      %289 = vector.matrix_multiply %18, %58 {lhs_columns = 1 : i32, lhs_rows = 14 : i32, rhs_columns = 1 : i32} : (vector<14xf16>, vector<1xf16>) -> vector<14xf16>
      %290 = bufferization.clone %alloc_4 : memref<8x14xf32> to memref<8x14xf32>
      %291 = index.divs %61, %279
      memref.alloca_scope.return %alloc_3 : memref<5x8x14xi1>
    }
    %129 = vector.broadcast %c-32682_i16 : i16 to vector<5x8x14xi16>
    %alloc_36 = memref.alloc() : memref<5x8x14xi1>
    %130 = math.round %13 : tensor<5x8x14xf32>
    %131 = math.log10 %cst_1 : f16
    %132 = index.casts %c9 : index to i32
    affine.for %arg0 = 0 to 79 {
    }
    %expanded = tensor.expand_shape %3 [[0], [1, 2]] : tensor<10x14xi16> into tensor<10x14x1xi16>
    memref.assume_alignment %alloc_9, 4 : memref<5x8x14xi16>
    %133 = vector.broadcast %c299780581_i32 : i32 to vector<10xi32>
    %134 = vector.multi_reduction <maxui>, %24, %133 [1] : vector<10x14xi32> to vector<10xi32>
    %135 = vector.shuffle %26, %24 [0, 1, 2, 4, 6, 8, 12, 13, 14, 18, 19] : vector<10x14xi32>, vector<10x14xi32>
    %136 = math.atan %cst_21 : f32
    %137 = arith.andi %c1270732898_i32, %c299780581_i32 : i32
    %138 = arith.maxui %true, %true : i1
    %139 = math.tan %cst : f16
    %140 = index.add %53, %56
    %141 = math.floor %from_elements : tensor<5x8x14xf32>
    %142 = vector.broadcast %c-32682_i16 : i16 to vector<8x14xi16>
    %143 = vector.insert %142, %129 [3] : vector<8x14xi16> into vector<5x8x14xi16>
    memref.assume_alignment %alloc_17, 1 : memref<14x8xi32>
    %144 = arith.remui %true_23, %false_22 : i1
    %145 = arith.remf %cst, %cst_1 : f16
    %146 = vector.broadcast %c-32682_i16 : i16 to vector<8xi16>
    %147 = vector.insert %146, %93 [3] : vector<8xi16> into vector<14x8xi16>
    %148 = arith.divf %cst_1, %cst : f16
    %149 = memref.atomic_rmw ori %c-17027_i16, %alloc_19[%c0] : (i16, memref<14xi16>) -> i16
    %150 = math.round %1 : tensor<10x14xf32>
    %151 = math.cttz %7 : tensor<5x8x14xi32>
    %152 = bufferization.clone %alloc_19 : memref<14xi16> to memref<14xi16>
    memref.alloca_scope  {
      %267 = vector.matrix_multiply %58, %18 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 14 : i32} : (vector<1xf16>, vector<14xf16>) -> vector<14xf16>
      %268 = vector.broadcast %c-32682_i16 : i16 to vector<14x8xi16>
      %269 = memref.load %88[%c4, %c1, %c0] : memref<5x8x14xi16>
      %270 = arith.divf %cst, %cst_1 : f16
      %rank_46 = tensor.rank %9 : tensor<8x14xi64>
      %271 = vector.splat %45 : vector<14x8xindex>
      %272 = arith.ori %c1270732898_i32, %c1016796092_i32 : i32
      %273 = affine.min affine_map<(d0, d1) -> (d1 * -64, -d1 + d0)>(%53, %c5)
      %274 = math.fma %116, %116, %116 : tensor<10x14xf16>
      %275 = memref.alloca_scope  -> (memref<8x14xf16>) {
        %293 = math.absf %13 : tensor<5x8x14xf32>
        %294 = math.ceil %from_elements : tensor<5x8x14xf32>
        %295 = math.fma %cst_2, %cst_1, %cst_1 : f16
        %296 = math.ctlz %false : i1
        %297 = arith.shrsi %false_22, %false : i1
        %298 = arith.mulf %cst_21, %cst_21 : f32
        %299 = vector.gather %2[%30, %c7] [%26], %25, %25 : tensor<8x14xi1>, vector<10x14xi32>, vector<10x14xi1>, vector<10x14xi1> into vector<10x14xi1>
        %300 = math.round %from_elements : tensor<5x8x14xf32>
        %301 = arith.maxf %cst_1, %cst : f16
        %302 = arith.remsi %c-17027_i16, %c-32682_i16 : i16
        %alloc_50 = memref.alloc() : memref<10x14xi32>
        %303 = vector.gather %alloc_50[%c1, %c0] [%103], %102, %103 : memref<10x14xi32>, vector<14x8xi32>, vector<14x8xi1>, vector<14x8xi32> into vector<14x8xi32>
        %304 = vector.insert %142, %129 [2] : vector<8x14xi16> into vector<5x8x14xi16>
        %305 = arith.shrsi %true_0, %true : i1
        %306 = math.round %from_elements : tensor<5x8x14xf32>
        %307 = vector.insertelement %cst, %267[%c2 : index] : vector<14xf16>
        %308 = arith.xori %c1016796092_i32, %c1645118049_i32 : i32
        %309 = arith.maxui %true_26, %false_22 : i1
        %310 = math.absi %c1043795320_i64 : i64
        %311 = arith.cmpf oge, %cst_21, %cst_21 : f32
        %312 = affine.apply affine_map<(d0, d1) -> (2)>(%c10, %c7)
        %313 = math.floor %cst_1 : f16
        %314 = math.atan %cst_2 : f16
        %315 = bufferization.to_tensor %alloc_16 : memref<8x14xi16>
        %316 = index.maxu %rank_31, %113
        %317 = vector.broadcast %c-32682_i16 : i16 to vector<8x8xi16>
        %318 = vector.outerproduct %146, %146, %317 {kind = #vector.kind<add>} : vector<8xi16>, vector<8xi16>
        %319 = arith.remf %cst_1, %cst_2 : f16
        %splat = tensor.splat %true : tensor<5x8x14xi1>
        %320 = memref.realloc %94 : memref<14xi16> to memref<5xi16>
        %321 = index.divs %c10, %30
        %322 = math.absi %0 : tensor<10x14xi16>
        %collapsed_51 = tensor.collapse_shape %3 [[0, 1]] : tensor<10x14xi16> into tensor<140xi16>
        %323 = vector.broadcast %c-17027_i16 : i16 to vector<5x8x14xi16>
        memref.alloca_scope.return %alloc_7 : memref<8x14xf16>
      }
      %cast_47 = tensor.cast %6 : tensor<8x14xi32> to tensor<?x?xi32>
      memref.tensor_store %3, %alloc_8 : memref<10x14xi16>
      vector.print %18 : vector<14xf16>
      %276 = arith.maxsi %c-16538_i16, %c-16538_i16 : i16
      %277 = scf.while (%arg0 = %true_0) : (i1) -> i1 {
        %from_elements_50 = tensor.from_elements %c-17027_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c-17027_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c-32682_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c-17027_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c-16538_i16, %c18165_i16, %c18165_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c-17027_i16, %c-32682_i16, %c-32682_i16, %c-17027_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c-32682_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c-16538_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c-32682_i16, %c18165_i16, %c18165_i16, %c-17027_i16, %c-32682_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c-17027_i16, %c18165_i16, %c-32682_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c-17027_i16, %c-17027_i16, %c-16538_i16, %c-16538_i16, %c-32682_i16, %c18165_i16, %c-17027_i16, %c-32682_i16, %c-16538_i16, %c18165_i16, %c-16538_i16, %c-17027_i16, %c18165_i16, %c18165_i16 : tensor<10x14xi16>
        %293 = vector.broadcast %c14 : index to vector<14xindex>
        %294 = vector.broadcast %false_22 : i1 to vector<14xi1>
        %295 = vector.broadcast %c299780581_i32 : i32 to vector<14xi32>
        vector.scatter %alloc_13[%c1, %c7, %c12] [%293], %294, %295 : memref<5x8x14xi32>, vector<14xindex>, vector<14xi1>, vector<14xi32>
        %296 = arith.ceildivsi %c1270732898_i32, %c1270732898_i32 : i32
        %297 = math.rsqrt %from_elements : tensor<5x8x14xf32>
        %298 = arith.divsi %true_26, %true : i1
        %299 = affine.load %alloc_19[%c5] : memref<14xi16>
        %300 = tensor.empty() : tensor<10x14xi32>
        %301 = math.fpowi %116, %300 : tensor<10x14xf16>, tensor<10x14xi32>
        %302 = arith.floordivsi %c-17027_i16, %c-16538_i16 : i16
        scf.condition(%arg0) %true_26 : i1
      } do {
      ^bb0(%arg0: i1):
        affine.store %c-16538_i16, %49[%c2, %c13] : memref<14x8xi16>
        %alloc_50 = memref.alloc() : memref<112xi64>
        memref.tensor_store %collapsed, %alloc_50 : memref<112xi64>
        %293 = arith.xori %c-16538_i16, %c18165_i16 : i16
        memref.copy %alloc_13, %alloc : memref<5x8x14xi32> to memref<5x8x14xi32>
        %294 = arith.divf %cst, %cst_1 : f16
        %295 = tensor.empty() : tensor<14x8xi32>
        %296 = arith.addf %cst, %cst_1 : f16
        %297 = affine.load %128[%c2, %c14, %c13] : memref<5x8x14xi1>
        %298 = math.log10 %from_elements : tensor<5x8x14xf32>
        %299 = math.round %1 : tensor<10x14xf32>
        %300 = vector.broadcast %cst_21 : f32 to vector<5x8x14xf32>
        %301 = vector.fma %300, %300, %300 : vector<5x8x14xf32>
        %302 = memref.load %94[%c1] : memref<14xi16>
        %303 = vector.shuffle %133, %133 [1, 2, 6, 7, 12, 15, 16, 17] : vector<10xi32>, vector<10xi32>
        %304 = affine.max affine_map<(d0, d1, d2) -> (0, d0 + 1, 0, 0)>(%rank, %rank_46, %140)
        %305 = vector.create_mask %54, %c15, %123 : vector<5x8x14xi1>
        %306 = index.floordivs %c5, %59
        scf.yield %true_23 : i1
      }
      %278 = index.maxu %c15, %c7
      bufferization.dealloc_tensor %11 : tensor<10x14xi1>
      %279 = index.sizeof
      %collapsed_48 = tensor.collapse_shape %116 [[0, 1]] : tensor<10x14xf16> into tensor<140xf16>
      %280 = math.absi %15 : tensor<5x8x14xi64>
      %281 = index.maxs %c2, %c1
      %282 = index.mul %c2, %rank_46
      bufferization.dealloc_tensor %21 : tensor<i16>
      %283 = math.atan2 %cst, %cst_2 : f16
      %284 = math.log10 %cst_21 : f32
      %expanded_49 = tensor.expand_shape %114 [[0, 1]] : tensor<112xi64> into tensor<112x1xi64>
      %285 = math.floor %collapsed_48 : tensor<140xf16>
      %286 = arith.cmpf oge, %cst, %cst : f16
      %287 = index.floordivs %140, %c5
      %288 = memref.alloca_scope  -> (f32) {
        %293 = vector.extract %83[3] : vector<14x8xf32>
        %alloc_50 = memref.alloc() : memref<14x8xf32>
        memref.copy %alloc_6, %alloc_50 : memref<14x8xf32> to memref<14x8xf32>
        %294 = bufferization.to_memref %6 : memref<8x14xi32>
        %295 = vector.load %128[%c3, %c7, %c1] : memref<5x8x14xi1>, vector<10x14xi1>
        %296 = memref.realloc %94 : memref<14xi16> to memref<10xi16>
        %297 = math.roundeven %1 : tensor<10x14xf32>
        %c0_i16 = arith.constant 0 : i16
        %298 = vector.transfer_read %12[%c7, %c6], %c0_i16 : tensor<8x14xi16>, vector<i16>
        %299 = vector.multi_reduction <maxf>, %267, %18 [] : vector<14xf16> to vector<14xf16>
        %300 = index.divs %rank_46, %65
        %301 = index.ceildivu %c0, %rank_46
        %302 = math.tanh %from_elements : tensor<5x8x14xf32>
        %303 = affine.min affine_map<(d0, d1) -> (d0, d0 mod 2 + 1, d0, d0 mod 2 + 64)>(%71, %c14)
        affine.store %c299780581_i32, %294[%c3, %c12] : memref<8x14xi32>
        %304 = arith.floordivsi %true_0, %true_26 : i1
        %305 = vector.broadcast %cst_21 : f32 to vector<10x14xf32>
        %306 = vector.fma %305, %33, %305 : vector<10x14xf32>
        %307 = index.divs %c0, %rank_46
        %308 = vector.splat %true_23 : vector<10x14xi1>
        %309 = math.cos %13 : tensor<5x8x14xf32>
        memref.store %c-16538_i16, %49[%c11, %c5] : memref<14x8xi16>
        vector.print %47 : vector<14x8xf16>
        %310 = arith.addf %cst, %cst_2 : f16
        %311 = index.sub %300, %61
        %inserted_51 = tensor.insert %c0_i16 into %12[%c2, %c11] : tensor<8x14xi16>
        %312 = tensor.empty(%59) : tensor<?x14xi32>
        %from_elements_52 = tensor.from_elements %cst, %cst, %cst_1, %cst_1, %cst_2, %cst, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst, %cst, %cst_1, %cst_2, %cst_2, %cst, %cst, %cst_2, %cst_1, %cst_1, %cst, %cst, %cst_2, %cst, %cst, %cst_1, %cst_2, %cst, %cst, %cst, %cst, %cst_2, %cst_2, %cst, %cst, %cst_1, %cst_2, %cst, %cst_1, %cst_2, %cst, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst, %cst_2, %cst, %cst_2, %cst_1, %cst_1, %cst_2, %cst, %cst, %cst, %cst, %cst, %cst_2, %cst_1, %cst_1, %cst_1, %cst, %cst_1, %cst, %cst_1, %cst_1, %cst_2, %cst_2, %cst, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst, %cst_2, %cst, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst_1, %cst, %cst_1, %cst, %cst, %cst, %cst_2, %cst_2, %cst, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst, %cst, %cst_2, %cst_1, %cst_2, %cst : tensor<10x14xf16>
        %313 = arith.shrsi %c-32682_i16, %c-16538_i16 : i16
        %true_53 = index.bool.constant true
        %314 = arith.cmpf ugt, %cst_21, %cst_21 : f32
        %315 = vector.create_mask %57, %c10 : vector<14x8xi1>
        %316 = memref.load %alloc_6[%c0, %c3] : memref<14x8xf32>
        memref.assume_alignment %294, 4 : memref<8x14xi32>
        affine.store %c-32682_i16, %49[%c12, %c8] : memref<14x8xi16>
        memref.alloca_scope.return %cst_21 : f32
      }
      %289 = arith.maxsi %c-16538_i16, %c-32682_i16 : i16
      %290 = vector.broadcast %80 : index to vector<10xindex>
      %291 = vector.broadcast %true_23 : i1 to vector<10xi1>
      %292 = vector.broadcast %c-32682_i16 : i16 to vector<10xi16>
      vector.scatter %49[%c3, %c6] [%290], %291, %292 : memref<14x8xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
    }
    %153 = index.add %c6, %c4
    %154 = vector.splat %113 : vector<10x14xindex>
    %155 = math.copysign %116, %116 : tensor<10x14xf16>
    %156 = vector.broadcast %rank_31 : index to vector<10xindex>
    %157 = vector.broadcast %true_23 : i1 to vector<10xi1>
    vector.scatter %alloc[%c3, %c2, %c10] [%156], %157, %133 : memref<5x8x14xi32>, vector<10xindex>, vector<10xi1>, vector<10xi32>
    %158 = vector.broadcast %cst_1 : f16 to vector<10x14xf16>
    %159 = vector.gather %alloc_7[%c3, %30] [%26], %25, %158 : memref<8x14xf16>, vector<10x14xi32>, vector<10x14xi1>, vector<10x14xf16> into vector<10x14xf16>
    %160 = arith.divf %cst_2, %cst : f16
    %161 = arith.remf %cst, %cst : f16
    %inserted_37 = tensor.insert %c-16538_i16 into %19[%c0] : tensor<14xi16>
    %false_38 = index.bool.constant false
    %inserted_39 = tensor.insert %true_0 into %2[%c0, %c0] : tensor<8x14xi1>
    %162 = memref.realloc %152 : memref<14xi16> to memref<8xi16>
    %163 = arith.shrsi %c18165_i16, %c-17027_i16 : i16
    %164 = math.ctpop %7 : tensor<5x8x14xi32>
    %165 = math.round %cst_2 : f16
    %166 = vector.splat %c13 : vector<5x8x14xindex>
    %167 = vector.broadcast %cst_21 : f32 to vector<10x14xf32>
    %168 = vector.fma %167, %72, %33 : vector<10x14xf32>
    %169 = affine.apply affine_map<(d0, d1) -> (0)>(%113, %c3)
    %170 = bufferization.clone %128 : memref<5x8x14xi1> to memref<5x8x14xi1>
    %171 = arith.addi %true_0, %true_23 : i1
    %172 = vector.create_mask %59, %113 : vector<8x14xi1>
    %generated = tensor.generate %65 {
    ^bb0(%arg0: index, %arg1: index):
      %267 = arith.addi %true_26, %true_0 : i1
      %from_elements_46 = tensor.from_elements %c299780581_i32, %c1270732898_i32, %c1645118049_i32, %c1016796092_i32, %c299780581_i32, %c1270732898_i32, %c299780581_i32, %c1270732898_i32, %c1270732898_i32, %c1270732898_i32, %c299780581_i32, %c299780581_i32, %c1270732898_i32, %c1270732898_i32, %c299780581_i32, %c1270732898_i32, %c299780581_i32, %c1016796092_i32, %c1270732898_i32, %c1270732898_i32, %c299780581_i32, %c299780581_i32, %c1016796092_i32, %c1270732898_i32, %c299780581_i32, %c1270732898_i32, %c1645118049_i32, %c1016796092_i32, %c1270732898_i32, %c1645118049_i32, %c1645118049_i32, %c1016796092_i32, %c299780581_i32, %c1645118049_i32, %c1645118049_i32, %c1270732898_i32, %c1016796092_i32, %c299780581_i32, %c299780581_i32, %c299780581_i32, %c1645118049_i32, %c1016796092_i32, %c1270732898_i32, %c1016796092_i32, %c1270732898_i32, %c1270732898_i32, %c1645118049_i32, %c1016796092_i32, %c299780581_i32, %c1645118049_i32, %c1016796092_i32, %c1016796092_i32, %c1645118049_i32, %c1016796092_i32, %c1016796092_i32, %c299780581_i32, %c1016796092_i32, %c1270732898_i32, %c299780581_i32, %c299780581_i32, %c1016796092_i32, %c1645118049_i32, %c1016796092_i32, %c1645118049_i32, %c299780581_i32, %c1016796092_i32, %c1270732898_i32, %c299780581_i32, %c299780581_i32, %c1016796092_i32, %c299780581_i32, %c1016796092_i32, %c1270732898_i32, %c1270732898_i32, %c1645118049_i32, %c299780581_i32, %c299780581_i32, %c1270732898_i32, %c1270732898_i32, %c299780581_i32, %c1270732898_i32, %c1016796092_i32, %c299780581_i32, %c1016796092_i32, %c299780581_i32, %c1645118049_i32, %c1016796092_i32, %c1645118049_i32, %c299780581_i32, %c1016796092_i32, %c1016796092_i32, %c1645118049_i32, %c1016796092_i32, %c1270732898_i32, %c299780581_i32, %c299780581_i32, %c1016796092_i32, %c1270732898_i32, %c299780581_i32, %c1645118049_i32, %c299780581_i32, %c1645118049_i32, %c299780581_i32, %c1645118049_i32, %c1645118049_i32, %c299780581_i32, %c1016796092_i32, %c1645118049_i32, %c1016796092_i32, %c1270732898_i32, %c1016796092_i32, %c1645118049_i32, %c1645118049_i32, %c299780581_i32, %c1270732898_i32, %c299780581_i32, %c1270732898_i32, %c1016796092_i32, %c1270732898_i32, %c1016796092_i32, %c299780581_i32, %c1645118049_i32, %c299780581_i32, %c299780581_i32, %c1645118049_i32, %c1270732898_i32, %c299780581_i32, %c1270732898_i32, %c1270732898_i32, %c1645118049_i32, %c1016796092_i32, %c1645118049_i32, %c1645118049_i32, %c299780581_i32, %c299780581_i32, %c299780581_i32, %c1270732898_i32, %c1645118049_i32, %c1270732898_i32, %c299780581_i32 : tensor<10x14xi32>
      %268 = arith.maxsi %c-32682_i16, %c-17027_i16 : i16
      %269 = vector.load %alloc_3[%c3, %c1, %c5] : memref<5x8x14xi1>, vector<8x14xi1>
      tensor.yield %cst_21 : f32
    } : tensor<?x14xf32>
    %173 = arith.floordivsi %c-17027_i16, %c-32682_i16 : i16
    %174 = math.ipowi %12, %12 : tensor<8x14xi16>
    %175 = bufferization.clone %alloc_3 : memref<5x8x14xi1> to memref<5x8x14xi1>
    %176 = index.add %65, %56
    %177 = arith.shrsi %true_26, %true_0 : i1
    vector.print %89 : vector<10x14xi16>
    %178 = arith.divf %cst_21, %cst_21 : f32
    %179 = math.cos %cst : f16
    %180 = arith.remf %cst_1, %cst_1 : f16
    %inserted_40 = tensor.insert %c1043795320_i64 into %15[%c1, %c5, %c10] : tensor<5x8x14xi64>
    scf.if %false_38 {
      %true_46 = arith.constant true
      %267 = memref.alloca_scope  -> (memref<8x14xi64>) {
        %274 = arith.xori %c1422950367_i64, %c1422950367_i64 : i64
        %275 = math.round %13 : tensor<5x8x14xf32>
        %276 = math.tan %cst_2 : f16
        %277 = arith.remsi %c299780581_i32, %c1016796092_i32 : i32
        %278 = arith.remf %cst_2, %cst_2 : f16
        %279 = math.absi %0 : tensor<10x14xi16>
        %280 = arith.addf %cst_1, %cst_1 : f16
        %281 = index.divu %c14, %c8
        %282 = vector.extract %102[3] : vector<14x8xi1>
        %283 = vector.broadcast %c0 : index to vector<14xindex>
        %284 = vector.broadcast %true_23 : i1 to vector<14xi1>
        %285 = vector.broadcast %c-32682_i16 : i16 to vector<14xi16>
        vector.scatter %alloc_15[%c13, %c6] [%283], %284, %285 : memref<14x8xi16>, vector<14xindex>, vector<14xi1>, vector<14xi16>
        %286 = math.ipowi %21, %21 : tensor<i16>
        %287 = math.absf %1 : tensor<10x14xf32>
        %288 = vector.broadcast %c-16538_i16 : i16 to vector<10x14xi16>
        %289 = math.ipowi %19, %19 : tensor<14xi16>
        %290 = arith.divf %cst, %cst_1 : f16
        %291 = index.maxu %c8, %153
        %292 = math.atan2 %13, %from_elements : tensor<5x8x14xf32>
        %293 = arith.shrui %c299780581_i32, %c1270732898_i32 : i32
        %expanded_47 = tensor.expand_shape %0 [[0], [1, 2]] : tensor<10x14xi16> into tensor<10x14x1xi16>
        %294 = index.sub %113, %113
        %295 = math.ctlz %9 : tensor<8x14xi64>
        %296 = math.fpowi %cst_1, %c1645118049_i32 : f16, i32
        %alloc_48 = memref.alloc() : memref<14x8xf16>
        %297 = vector.broadcast %cst_2 : f16 to vector<5x8x14xf16>
        %298 = vector.broadcast %c1270732898_i32 : i32 to vector<5x8x14xi32>
        %299 = vector.gather %alloc_48[%c7, %176] [%298], %29, %297 : memref<14x8xf16>, vector<5x8x14xi32>, vector<5x8x14xi1>, vector<5x8x14xf16> into vector<5x8x14xf16>
        memref.assume_alignment %alloc_9, 8 : memref<5x8x14xi16>
        %300 = tensor.empty(%c14) : tensor<?x14xi64>
        %301 = arith.shrui %c299780581_i32, %c1016796092_i32 : i32
        %302 = math.exp %1 : tensor<10x14xf32>
        %303 = vector.broadcast %cst_1 : f16 to vector<8xf16>
        %304 = vector.multi_reduction <add>, %297, %303 [0, 2] : vector<5x8x14xf16> to vector<8xf16>
        %305 = math.ctlz %c1270732898_i32 : i32
        %306 = arith.remf %cst_2, %cst_1 : f16
        %307 = arith.addf %cst, %cst_1 : f16
        %308 = math.roundeven %1 : tensor<10x14xf32>
        memref.alloca_scope.return %alloc_11 : memref<8x14xi64>
      }
      %268 = vector.gather %11[%140, %56] [%103], %102, %104 : tensor<10x14xi1>, vector<14x8xi32>, vector<14x8xi1>, vector<14x8xi1> into vector<14x8xi1>
      %269 = memref.realloc %alloc_19 : memref<14xi16> to memref<5xi16>
      %270 = math.fma %116, %116, %116 : tensor<10x14xf16>
      %271 = math.atan %1 : tensor<10x14xf32>
      %272 = affine.min affine_map<(d0, d1, d2, d3) -> (d2)>(%61, %140, %71, %c1)
      %273 = vector.splat %false_22 : vector<10x14xi1>
    } else {
      %267 = arith.shrui %c1270732898_i32, %c1645118049_i32 : i32
      %268 = math.round %13 : tensor<5x8x14xf32>
      %269 = arith.remf %cst, %cst_2 : f16
      %270 = arith.maxsi %false_22, %true_26 : i1
      %271 = index.divu %rank, %30
      %272 = math.fma %cst, %cst, %cst_2 : f16
      %273 = vector.multi_reduction <mul>, %159, %159 [] : vector<10x14xf16> to vector<10x14xf16>
      %274 = arith.maxf %cst_21, %cst_21 : f32
    }
    affine.store %c-17027_i16, %60[%c8, %c3] : memref<10x14xi16>
    %181 = arith.shrui %c-17027_i16, %c-17027_i16 : i16
    %182 = math.ipowi %true_26, %true_23 : i1
    %183 = math.absi %4 : tensor<8x14xi64>
    %184 = math.copysign %13, %13 : tensor<5x8x14xf32>
    %185 = arith.maxsi %false_38, %true : i1
    %186 = scf.index_switch %rank -> index 
    case 1 {
      %267 = vector.broadcast %cst : f16 to vector<10xf16>
      %268 = vector.multi_reduction <maxf>, %159, %267 [1] : vector<10x14xf16> to vector<10xf16>
      %collapsed_46 = tensor.collapse_shape %7 [[0, 1], [2]] : tensor<5x8x14xi32> into tensor<40x14xi32>
      %alloca = memref.alloca() : memref<8x14xi16>
      %269 = vector.load %49[%c2, %c5] : memref<14x8xi16>, vector<5x8x14xi16>
      %270 = vector.broadcast %cst_21 : f32 to vector<10xf32>
      %271 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %73, %100, %270 : vector<10x14xf32>, vector<14xf32> into vector<10xf32>
      %272 = vector.broadcast %true_0 : i1 to vector<5x8x14xi1>
      affine.for %arg0 = 0 to 102 {
      }
      %273 = tensor.empty() : tensor<8x14xi32>
      %274 = index.ceildivu %rank_30, %rank_30
      %275 = arith.divf %cst_2, %cst : f16
      %276 = math.fpowi %from_elements, %7 : tensor<5x8x14xf32>, tensor<5x8x14xi32>
      memref.copy %alloc_14, %alloc_16 : memref<8x14xi16> to memref<8x14xi16>
      %277 = affine.load %alloc_5[%c15, %c11] : memref<10x14xi64>
      %expanded_47 = tensor.expand_shape %13 [[0], [1], [2, 3]] : tensor<5x8x14xf32> into tensor<5x8x14x1xf32>
      %278 = vector.broadcast %c299780581_i32 : i32 to vector<10x10xi32>
      %279 = vector.outerproduct %133, %133, %278 {kind = #vector.kind<xor>} : vector<10xi32>, vector<10xi32>
      %collapsed_48 = tensor.collapse_shape %expanded_47 [[0, 1], [2], [3]] : tensor<5x8x14x1xf32> into tensor<40x14x1xf32>
      scf.yield %30 : index
    }
    case 2 {
      %267 = index.castu %113 : index to i32
      %268 = index.divs %c11, %c2
      %269 = arith.addf %cst_1, %cst_1 : f16
      %270 = affine.for %arg0 = 0 to 105 iter_args(%arg1 = %alloc_9) -> (memref<5x8x14xi16>) {
        affine.yield %alloc_9 : memref<5x8x14xi16>
      }
      %271 = math.round %1 : tensor<10x14xf32>
      %272 = math.ipowi %10, %14 : tensor<8x14xi32>
      %273 = math.roundeven %cst_21 : f32
      %274 = arith.cmpf oge, %cst, %cst_1 : f16
      %275 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%8 : tensor<5x8x14xi64>) {
      ^bb0(%out: i64):
        %280 = memref.realloc %94 : memref<14xi16> to memref<8xi16>
        %281 = arith.addf %cst_21, %cst_21 : f32
        %282 = arith.shrsi %c18165_i16, %c-32682_i16 : i16
        %283 = memref.load %94[%c12] : memref<14xi16>
        %284 = index.divs %153, %57
        %285 = arith.minf %cst_21, %cst_21 : f32
        %286 = math.round %cst_21 : f32
        %287 = arith.divf %cst_21, %cst_21 : f32
        %288 = math.atan2 %from_elements, %13 : tensor<5x8x14xf32>
        %289 = arith.floordivsi %c18165_i16, %c18165_i16 : i16
        %c22699_i16 = arith.constant 22699 : i16
        %290 = index.divu %c6, %30
        %291 = bufferization.clone %alloc : memref<5x8x14xi32> to memref<5x8x14xi32>
        %292 = math.roundeven %from_elements : tensor<5x8x14xf32>
        %293 = math.log10 %1 : tensor<10x14xf32>
        %294 = arith.mulf %cst_2, %cst_1 : f16
        %295 = arith.remf %cst_2, %cst_1 : f16
        %296 = arith.addf %cst_21, %cst_21 : f32
        %297 = vector.load %alloc_6[%c11, %c7] : memref<14x8xf32>, vector<5x8x14xf32>
        %298 = math.round %cst : f16
        %299 = vector.gather %alloc_17[%176, %c6] [%24], %25, %24 : memref<14x8xi32>, vector<10x14xi32>, vector<10x14xi1>, vector<10x14xi32> into vector<10x14xi32>
        %300 = math.round %116 : tensor<10x14xf16>
        %301 = math.absi %3 : tensor<10x14xi16>
        %302 = arith.cmpf ogt, %cst, %cst : f16
        %303 = math.expm1 %cst : f16
        %304 = arith.divf %cst_2, %cst_2 : f16
        %305 = arith.shrsi %false_38, %true_26 : i1
        memref.assume_alignment %alloc_4, 1 : memref<8x14xf32>
        %alloc_47 = memref.alloc() : memref<5x8x14xf16>
        %alloc_48 = memref.alloc() : memref<8x14xf16>
        %306 = arith.shrsi %c-16538_i16, %c-16538_i16 : i16
        %307 = math.round %from_elements : tensor<5x8x14xf32>
        linalg.yield %c1043795320_i64 : i64
      } -> tensor<5x8x14xi64>
      scf.index_switch %97 
      case 1 {
        %280 = arith.maxui %false_22, %false_38 : i1
        %281 = index.sizeof
        %282 = arith.divsi %true_26, %true_26 : i1
        memref.store %c1645118049_i32, %alloc_18[%c13, %c6] : memref<14x8xi32>
        %283 = vector.broadcast %c1 : index to vector<10xindex>
        %284 = vector.broadcast %true_26 : i1 to vector<10xi1>
        %285 = vector.broadcast %c18165_i16 : i16 to vector<10xi16>
        vector.scatter %alloc_15[%c3, %c5] [%283], %284, %285 : memref<14x8xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
        %286 = vector.broadcast %cst_21 : f32 to vector<5x8x14xf32>
        %287 = vector.fma %286, %286, %286 : vector<5x8x14xf32>
        %288 = index.divu %71, %53
        %289 = vector.shuffle %47, %47 [1, 2, 3, 5, 6, 7, 9, 12, 13, 15, 17, 18, 19, 20, 21, 22, 26, 27] : vector<14x8xf16>, vector<14x8xf16>
        %290 = math.round %116 : tensor<10x14xf16>
        %291 = math.tanh %13 : tensor<5x8x14xf32>
        %292 = bufferization.to_memref %14 : memref<8x14xi32>
        %293 = tensor.empty(%c13) : tensor<14x?xi1>
        %294 = arith.addi %c18165_i16, %c-16538_i16 : i16
        %295 = arith.maxui %true_26, %false_22 : i1
        %296 = arith.remf %cst_2, %cst_2 : f16
        %297 = index.castu %c13 : index to i32
        scf.yield
      }
      case 2 {
        %280 = arith.remsi %c1422950367_i64, %c1043795320_i64 : i64
        %281 = index.divs %c1, %53
        %282 = arith.subi %c1016796092_i32, %c299780581_i32 : i32
        %expanded_47 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<8x14xi32> into tensor<8x14x1xi32>
        %283 = arith.shrsi %c-16538_i16, %c-17027_i16 : i16
        %284 = memref.realloc %152 : memref<14xi16> to memref<14xi16>
        %285 = math.atan2 %13, %13 : tensor<5x8x14xf32>
        %286 = arith.divf %cst_1, %cst : f16
        %287 = memref.load %170[%c3, %c3, %c4] : memref<5x8x14xi1>
        %288 = bufferization.clone %alloc_16 : memref<8x14xi16> to memref<8x14xi16>
        %289 = tensor.empty(%c13, %45) : tensor<?x?x14xf32>
        affine.store %c18165_i16, %alloc_16[%c3, %c9] : memref<8x14xi16>
        %290 = index.sub %c0, %54
        %inserted_48 = tensor.insert %c1043795320_i64 into %4[%c3, %c5] : tensor<8x14xi64>
        %291 = math.atan %cst_21 : f32
        %expanded_49 = tensor.expand_shape %4 [[0], [1, 2]] : tensor<8x14xi64> into tensor<8x14x1xi64>
        scf.yield
      }
      case 3 {
        %280 = arith.remf %cst_1, %cst_1 : f16
        %281 = vector.broadcast %true : i1 to vector<14xi1>
        %282 = vector.insert %281, %25 [1] : vector<14xi1> into vector<10x14xi1>
        %283 = vector.reduction <mul>, %18 : vector<14xf16> into f16
        %284 = arith.cmpf ole, %cst, %cst : f16
        %rank_47 = tensor.rank %114 : tensor<112xi64>
        %285 = vector.load %alloc_28[%c9, %c2] : memref<10x14xi1>, vector<10x14xi1>
        %286 = vector.broadcast %30 : index to vector<10xindex>
        %287 = vector.broadcast %true_26 : i1 to vector<10xi1>
        %288 = vector.broadcast %cst_1 : f16 to vector<10xf16>
        vector.scatter %alloc_7[%c7, %c11] [%286], %287, %288 : memref<8x14xf16>, vector<10xindex>, vector<10xi1>, vector<10xf16>
        %289 = memref.load %94[%c9] : memref<14xi16>
        %290 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 ceildiv 32)>(%56, %c3, %153, %79)
        %291 = index.ceildivs %c12, %c8
        %292 = math.round %1 : tensor<10x14xf32>
        %from_elements_48 = tensor.from_elements %c1645118049_i32, %c1270732898_i32, %c1016796092_i32, %c1645118049_i32, %c1645118049_i32, %c1016796092_i32, %c1270732898_i32, %c299780581_i32, %c299780581_i32, %c1270732898_i32, %c1016796092_i32, %c1016796092_i32, %c1270732898_i32, %c299780581_i32, %c299780581_i32, %c1270732898_i32, %c1270732898_i32, %c1645118049_i32, %c1270732898_i32, %c299780581_i32, %c299780581_i32, %c1270732898_i32, %c1016796092_i32, %c1270732898_i32, %c1270732898_i32, %c1645118049_i32, %c1270732898_i32, %c1270732898_i32, %c1016796092_i32, %c1270732898_i32, %c1016796092_i32, %c299780581_i32, %c1016796092_i32, %c1016796092_i32, %c1270732898_i32, %c1645118049_i32, %c1270732898_i32, %c299780581_i32, %c1645118049_i32, %c1270732898_i32, %c1645118049_i32, %c1016796092_i32, %c1016796092_i32, %c299780581_i32, %c1016796092_i32, %c1016796092_i32, %c1645118049_i32, %c299780581_i32, %c299780581_i32, %c299780581_i32, %c1270732898_i32, %c299780581_i32, %c1016796092_i32, %c1270732898_i32, %c1016796092_i32, %c1016796092_i32, %c299780581_i32, %c299780581_i32, %c299780581_i32, %c1016796092_i32, %c299780581_i32, %c1016796092_i32, %c299780581_i32, %c1645118049_i32, %c1270732898_i32, %c1016796092_i32, %c1645118049_i32, %c1016796092_i32, %c1270732898_i32, %c1270732898_i32, %c299780581_i32, %c299780581_i32, %c1270732898_i32, %c1270732898_i32, %c1016796092_i32, %c1016796092_i32, %c1270732898_i32, %c299780581_i32, %c299780581_i32, %c1016796092_i32, %c1016796092_i32, %c1645118049_i32, %c1016796092_i32, %c1270732898_i32, %c1016796092_i32, %c1645118049_i32, %c1270732898_i32, %c1645118049_i32, %c1270732898_i32, %c1270732898_i32, %c1645118049_i32, %c1645118049_i32, %c1270732898_i32, %c1645118049_i32, %c1016796092_i32, %c1270732898_i32, %c1270732898_i32, %c1016796092_i32, %c1016796092_i32, %c1645118049_i32, %c1270732898_i32, %c1270732898_i32, %c1645118049_i32, %c1645118049_i32, %c1270732898_i32, %c1645118049_i32, %c1645118049_i32, %c1270732898_i32, %c299780581_i32, %c1645118049_i32, %c1016796092_i32, %c1270732898_i32 : tensor<8x14xi32>
        %collapsed_49 = tensor.collapse_shape %6 [[0, 1]] : tensor<8x14xi32> into tensor<112xi32>
        %293 = vector.shuffle %281, %281 [0, 1, 3, 8, 17, 18, 19, 20, 23, 24, 25] : vector<14xi1>, vector<14xi1>
        %294 = memref.load %94[%c13] : memref<14xi16>
        %295 = affine.min affine_map<(d0, d1, d2) -> (d1 ceildiv 16, (d1 ceildiv 16) mod 8, (d0 + 2) ceildiv 128)>(%rank_47, %30, %59)
        scf.yield
      }
      case 4 {
        %280 = math.atan2 %cst_2, %cst_2 : f16
        %281 = math.floor %from_elements : tensor<5x8x14xf32>
        %282 = vector.broadcast %true : i1 to vector<14xi1>
        %dest_47, %accumulated_value_48 = vector.scan <xor>, %25, %282 {inclusive = true, reduction_dim = 0 : i64} : vector<10x14xi1>, vector<14xi1>
        %283 = vector.create_mask %80, %169, %c5 : vector<5x8x14xi1>
        %284 = vector.matrix_multiply %133, %133 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi32>, vector<10xi32>) -> vector<1xi32>
        %285 = arith.cmpf uge, %cst_1, %cst : f16
        %286 = index.sizeof
        %287 = math.tanh %13 : tensor<5x8x14xf32>
        %288 = vector.splat %cst_21 : vector<5x8x14xf32>
        %289 = math.absf %13 : tensor<5x8x14xf32>
        %290 = math.round %13 : tensor<5x8x14xf32>
        %291 = vector.splat %c3 : vector<8x14xindex>
        %292 = tensor.empty() : tensor<8x14xf32>
        %293 = math.copysign %cst_2, %cst_1 : f16
        %294 = vector.broadcast %c-17027_i16 : i16 to vector<14xi16>
        %295 = vector.insert %294, %129 [0, 6] : vector<14xi16> into vector<5x8x14xi16>
        %296 = arith.divsi %c1016796092_i32, %c299780581_i32 : i32
        scf.yield
      }
      default {
        %280 = math.atan2 %cst_2, %cst_1 : f16
        %alloc_47 = memref.alloc() : memref<112xi64>
        memref.tensor_store %114, %alloc_47 : memref<112xi64>
        %281 = arith.floordivsi %c18165_i16, %c-16538_i16 : i16
        %282 = vector.extract %107[6] : vector<14x8xi1>
        %283 = vector.shuffle %282, %282 [3, 4, 6, 8, 10, 11, 12, 15] : vector<8xi1>, vector<8xi1>
        %284 = arith.cmpf uge, %cst_1, %cst_1 : f16
        %285 = math.sqrt %cst_2 : f16
        %286 = arith.shrsi %c1422950367_i64, %c1422950367_i64 : i64
        %287 = index.maxu %176, %c12
        %288 = memref.realloc %152 : memref<14xi16> to memref<10xi16>
        %289 = arith.shrui %c1043795320_i64, %c1043795320_i64 : i64
        %dest_48, %accumulated_value_49 = vector.scan <maxf>, %73, %100 {inclusive = false, reduction_dim = 0 : i64} : vector<10x14xf32>, vector<14xf32>
        %290 = math.fpowi %cst, %c1270732898_i32 : f16, i32
        %291 = math.fpowi %13, %7 : tensor<5x8x14xf32>, tensor<5x8x14xi32>
        %expanded_50 = tensor.expand_shape %4 [[0], [1, 2]] : tensor<8x14xi64> into tensor<8x14x1xi64>
        %292 = index.maxu %30, %95
      }
      %276 = math.floor %cst : f16
      %277 = vector.load %alloc_13[%c4, %c4, %c2] : memref<5x8x14xi32>, vector<14x8xi32>
      %collapsed_46 = tensor.collapse_shape %7 [[0, 1], [2]] : tensor<5x8x14xi32> into tensor<40x14xi32>
      %278 = vector.extract %159[3] : vector<10x14xf16>
      %alloca = memref.alloca() : memref<10x14xi32>
      %279 = scf.while (%arg0 = %alloc_28) : (memref<10x14xi1>) -> memref<10x14xi1> {
        %280 = math.rsqrt %116 : tensor<10x14xf16>
        %281 = math.atan %from_elements : tensor<5x8x14xf32>
        %282 = affine.apply affine_map<(d0, d1) -> ((d1 + 4) * 8)>(%c0, %rank_30)
        %283 = index.divu %c6, %59
        %284 = arith.cmpi uge, %false_38, %false : i1
        %285 = math.ipowi %c-17027_i16, %c-17027_i16 : i16
        %286 = index.divs %79, %140
        %287 = vector.insertelement %cst_2, %18[%c13 : index] : vector<14xf16>
        scf.condition(%false_22) %arg0 : memref<10x14xi1>
      } do {
      ^bb0(%arg0: memref<10x14xi1>):
        %280 = math.cos %13 : tensor<5x8x14xf32>
        %281 = math.log10 %from_elements : tensor<5x8x14xf32>
        %splat = tensor.splat %c18165_i16 : tensor<5x8x14xi16>
        %282 = arith.divsi %c1043795320_i64, %c1043795320_i64 : i64
        %283 = arith.cmpf oge, %cst_2, %cst_2 : f16
        %from_elements_47 = tensor.from_elements %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21 : tensor<8x14xf32>
        %284 = arith.cmpf true, %cst, %cst : f16
        %285 = index.maxu %c13, %57
        %286 = memref.atomic_rmw mins %c1016796092_i32, %alloc_18[%c11, %c2] : (i32, memref<14x8xi32>) -> i32
        %287 = math.round %1 : tensor<10x14xf32>
        %288 = vector.gather %116[%c9, %80] [%277], %107, %47 : tensor<10x14xf16>, vector<14x8xi32>, vector<14x8xi1>, vector<14x8xf16> into vector<14x8xf16>
        %289 = arith.maxui %c1422950367_i64, %c1043795320_i64 : i64
        %290 = math.ipowi %4, %9 : tensor<8x14xi64>
        %291 = vector.broadcast %cst_21 : f32 to vector<8x14xf32>
        %292 = vector.fma %291, %291, %291 : vector<8x14xf32>
        %293 = math.absf %13 : tensor<5x8x14xf32>
        vector.print %158 : vector<10x14xf16>
        scf.yield %alloc_28 : memref<10x14xi1>
      }
      scf.yield %c12 : index
    }
    case 3 {
      %267 = arith.maxui %c1270732898_i32, %c299780581_i32 : i32
      %268 = math.absi %false_22 : i1
      %269 = math.log1p %cst_21 : f32
      %270 = tensor.empty() : tensor<14x8xi16>
      %271 = tensor.empty() : tensor<10x8xi16>
      %272 = linalg.matmul ins(%3, %270 : tensor<10x14xi16>, tensor<14x8xi16>) outs(%271 : tensor<10x8xi16>) -> tensor<10x8xi16>
      %273 = math.ipowi %true_0, %true : i1
      %274 = arith.maxsi %c1645118049_i32, %c1270732898_i32 : i32
      %275 = math.atan2 %cst_2, %cst_2 : f16
      %splat = tensor.splat %c299780581_i32 : tensor<10x14xi32>
      %276 = arith.divf %cst_1, %cst_1 : f16
      %277 = math.ipowi %5, %6 : tensor<8x14xi32>
      %278 = index.divs %176, %c4
      %splat_46 = tensor.splat %cst_21 : tensor<5x8x14xf32>
      %279 = index.maxu %c11, %46
      %280 = math.roundeven %13 : tensor<5x8x14xf32>
      memref.copy %60, %alloc_8 : memref<10x14xi16> to memref<10x14xi16>
      %281 = arith.andi %c1016796092_i32, %c1645118049_i32 : i32
      scf.yield %53 : index
    }
    default {
      %267 = vector.matrix_multiply %146, %146 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi16>, vector<8xi16>) -> vector<1xi16>
      %268 = vector.broadcast %cst_21 : f32 to vector<14x14xf32>
      %269 = vector.outerproduct %100, %100, %268 {kind = #vector.kind<add>} : vector<14xf32>, vector<14xf32>
      %270 = arith.cmpf one, %cst_21, %cst_21 : f32
      %271 = index.add %c3, %c12
      %generated_46 = tensor.generate %c1 {
      ^bb0(%arg0: index, %arg1: index):
        %282 = index.add %c9, %c9
        %283 = math.roundeven %116 : tensor<10x14xf16>
        %true_48 = index.bool.constant true
        %284 = bufferization.to_memref %11 : memref<10x14xi1>
        tensor.yield %cst_21 : f32
      } : tensor<?x8xf32>
      %272 = arith.addi %true_0, %false : i1
      %273 = vector.insertelement %cst_2, %18[%c14 : index] : vector<14xf16>
      %274 = tensor.empty(%113) : tensor<5x?x14xi32>
      %275 = arith.remf %cst_1, %cst_1 : f16
      %276 = index.sub %271, %c2
      %277 = vector.extract %172[6] : vector<8x14xi1>
      %278 = index.sizeof
      %279 = bufferization.clone %128 : memref<5x8x14xi1> to memref<5x8x14xi1>
      %280 = affine.apply affine_map<(d0, d1) -> (2)>(%153, %c11)
      vector.print %47 : vector<14x8xf16>
      %c0_i64 = arith.constant 0 : i64
      %c0_i64_47 = arith.constant 0 : i64
      %281 = vector.transfer_read %8[%153, %c6, %rank_31], %c0_i64_47 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<5x8x14xi64>, vector<8xi64>
      scf.yield %c10 : index
    }
    %187 = arith.xori %false_38, %false_22 : i1
    %inserted_41 = tensor.insert %c-32682_i16 into %21[] : tensor<i16>
    %188 = tensor.empty() : tensor<14x5x8xi32>
    %189 = tensor.empty() : tensor<5xi32>
    %190 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%188, %189 : tensor<14x5x8xi32>, tensor<5xi32>) outs(%7 : tensor<5x8x14xi32>) {
    ^bb0(%in: i32, %in_46: i32, %out: i32):
      %rank_47 = tensor.rank %5 : tensor<8x14xi32>
      %267 = vector.broadcast %false_22 : i1 to vector<5xi1>
      %268 = vector.maskedload %175[%c1, %c7, %c13], %267, %267 : memref<5x8x14xi1>, vector<5xi1>, vector<5xi1> into vector<5xi1>
      %inserted_48 = tensor.insert %c1270732898_i32 into %14[%c3, %c8] : tensor<8x14xi32>
      %269 = index.add %176, %c12
      %270 = arith.addi %false, %false : i1
      memref.store %c-32682_i16, %alloc_14[%c3, %c5] : memref<8x14xi16>
      %alloca = memref.alloca() : memref<10x14xi16>
      %271 = arith.mulf %cst_1, %cst_1 : f16
      %272 = vector.broadcast %c1016796092_i32 : i32 to vector<14xi32>
      %273 = vector.insert %272, %24 [2] : vector<14xi32> into vector<10x14xi32>
      %274 = vector.matrix_multiply %133, %272 {lhs_columns = 2 : i32, lhs_rows = 5 : i32, rhs_columns = 7 : i32} : (vector<10xi32>, vector<14xi32>) -> vector<35xi32>
      %275 = index.floordivs %176, %71
      %276 = arith.remui %true, %false : i1
      %277 = math.round %cst : f16
      %278 = tensor.empty() : tensor<8x14xi16>
      %279 = math.round %1 : tensor<10x14xf32>
      %280 = arith.addf %cst, %cst_2 : f16
      %281 = scf.execute_region -> i64 {
        %295 = arith.mulf %cst_2, %cst : f16
        %296 = math.atan2 %cst_2, %cst_2 : f16
        %297 = arith.floordivsi %true_23, %true : i1
        %298 = math.atan2 %cst_21, %cst_21 : f32
        %299 = vector.transpose %18, [0] : vector<14xf16> to vector<14xf16>
        %300 = vector.load %49[%c12, %c2] : memref<14x8xi16>, vector<5x8x14xi16>
        %301 = vector.create_mask %c1, %c13 : vector<8x14xi1>
        %302 = arith.maxsi %c1422950367_i64, %c1043795320_i64 : i64
        %303 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 + d0 * 8 - 32)>(%54, %95, %c3, %c14)
        %304 = math.floor %13 : tensor<5x8x14xf32>
        %305 = math.ipowi %14, %14 : tensor<8x14xi32>
        %306 = math.cttz %10 : tensor<8x14xi32>
        %307 = vector.insertelement %false_38, %267[%153 : index] : vector<5xi1>
        %308 = index.maxs %275, %113
        affine.store %false_22, %175[%c13, %c12, %c8] : memref<5x8x14xi1>
        %309 = math.atan2 %13, %from_elements : tensor<5x8x14xf32>
        scf.yield %c1043795320_i64 : i64
      }
      vector.print %104 : vector<14x8xi1>
      %282 = index.ceildivu %rank_31, %59
      %expanded_49 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<8x14xi32> into tensor<8x14x1xi32>
      %283 = vector.create_mask %45, %c12 : vector<10x14xi1>
      %284 = index.sizeof
      %285 = vector.create_mask %113, %c9 : vector<10x14xi1>
      %286 = math.roundeven %from_elements : tensor<5x8x14xf32>
      %287 = vector.broadcast %false_38 : i1 to vector<14x8xi1>
      %288 = tensor.empty(%c15, %56) : tensor<?x?x14xi16>
      %289 = arith.maxui %c-17027_i16, %c-32682_i16 : i16
      %c1_i32 = arith.constant 1 : i32
      %c0_i32 = arith.constant 0 : i32
      %290 = vector.transfer_read %6[%c5, %c9], %c0_i32 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<8x14xi32>, vector<5xi32>
      %291 = index.floordivs %c11, %153
      %292 = index.castu %false : i1 to index
      %293 = vector.matrix_multiply %272, %272 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi32>, vector<14xi32>) -> vector<1xi32>
      %294 = math.log10 %1 : tensor<10x14xf32>
      linalg.yield %in_46 : i32
    } -> tensor<5x8x14xi32>
    %191 = memref.alloca_scope  -> (f32) {
      memref.assume_alignment %alloc_3, 8 : memref<5x8x14xi1>
      %267 = arith.remf %cst_2, %cst_2 : f16
      %268 = vector.splat %c-32682_i16 : vector<5x8x14xi16>
      %269 = affine.min affine_map<(d0, d1, d2) -> ((d1 - d2) * 8 + 16, d0 - d2, (d1 - d2) * 8)>(%176, %176, %97)
      memref.assume_alignment %alloc_7, 1 : memref<8x14xf16>
      %270 = vector.broadcast %cst_1 : f16 to vector<14x14xf16>
      %271 = vector.outerproduct %18, %18, %270 {kind = #vector.kind<mul>} : vector<14xf16>, vector<14xf16>
      %272 = math.ctpop %c1016796092_i32 : i32
      %273 = memref.realloc %152 : memref<14xi16> to memref<5xi16>
      %274 = math.ipowi %11, %11 : tensor<10x14xi1>
      %275 = vector.broadcast %cst_21 : f32 to vector<14x8xf32>
      %276 = vector.fma %275, %83, %83 : vector<14x8xf32>
      %277 = index.castu %71 : index to i32
      %278 = vector.broadcast %95 : index to vector<14xindex>
      %279 = vector.broadcast %true : i1 to vector<14xi1>
      vector.scatter %alloc_3[%c2, %c2, %c9] [%278], %279, %279 : memref<5x8x14xi1>, vector<14xindex>, vector<14xi1>, vector<14xi1>
      %280 = math.round %1 : tensor<10x14xf32>
      %281 = vector.reduction <maxui>, %133 : vector<10xi32> into i32
      %282 = bufferization.to_tensor %alloc_11 : memref<8x14xi64>
      affine.for %arg0 = 0 to 66 {
      }
      %alloc_46 = memref.alloc() : memref<40x14xi64>
      memref.tensor_store %collapsed_29, %alloc_46 : memref<40x14xi64>
      %generated_47 = tensor.generate %153, %56 {
      ^bb0(%arg0: index, %arg1: index):
        %298 = index.maxu %57, %c0
        %299 = math.round %1 : tensor<10x14xf32>
        %300 = vector.shuffle %172, %172 [0, 1, 4, 5, 7, 9, 11, 13, 15] : vector<8x14xi1>, vector<8x14xi1>
        %true_49 = arith.constant true
        tensor.yield %cst_21 : f32
      } : tensor<?x?xf32>
      %283 = vector.broadcast %c1645118049_i32 : i32 to vector<5x8x14xi32>
      %284 = vector.gather %alloc_28[%c0, %123] [%283], %29, %29 : memref<10x14xi1>, vector<5x8x14xi32>, vector<5x8x14xi1>, vector<5x8x14xi1> into vector<5x8x14xi1>
      %285 = vector.broadcast %cst_21 : f32 to vector<8xf32>
      %286 = vector.insert %285, %276 [6] : vector<8xf32> into vector<14x8xf32>
      %287 = memref.realloc %152 : memref<14xi16> to memref<8xi16>
      vector.print %29 : vector<5x8x14xi1>
      %false_48 = index.bool.constant false
      %288 = vector.broadcast %cst_21 : f32 to vector<8x14xf32>
      %289 = vector.fma %288, %288, %288 : vector<8x14xf32>
      %290 = vector.splat %cst_1 : vector<5x8x14xf16>
      %291 = affine.apply affine_map<(d0, d1, d2, d3) -> ((-d1 - 4) * 16)>(%c13, %rank_31, %61, %153)
      %292 = arith.addi %c-32682_i16, %c-16538_i16 : i16
      %293 = math.round %116 : tensor<10x14xf16>
      %294 = bufferization.to_memref %2 : memref<8x14xi1>
      %295 = tensor.empty() : tensor<5x8x14xi64>
      %296 = index.mul %c5, %c3
      %297 = index.sub %c15, %95
      memref.alloca_scope.return %cst_21 : f32
    }
    %192 = vector.broadcast %rank_31 : index to vector<10xindex>
    %193 = vector.broadcast %true_0 : i1 to vector<10xi1>
    vector.scatter %alloc_18[%c7, %c7] [%192], %193, %133 : memref<14x8xi32>, vector<10xindex>, vector<10xi1>, vector<10xi32>
    %194 = arith.addf %cst_1, %cst_2 : f16
    %195 = memref.atomic_rmw assign %c1016796092_i32, %alloc[%c3, %c0, %c9] : (i32, memref<5x8x14xi32>) -> i32
    %196 = vector.bitcast %32 : vector<10x14xf32> to vector<10x14xf32>
    %true_42 = index.bool.constant true
    %197 = vector.broadcast %c-16538_i16 : i16 to vector<14xi16>
    %198 = vector.multi_reduction <xor>, %93, %197 [1] : vector<14x8xi16> to vector<14xi16>
    %199 = index.sub %46, %rank_30
    %200 = vector.broadcast %c13 : index to vector<14xindex>
    %201 = vector.broadcast %false_38 : i1 to vector<14xi1>
    vector.scatter %alloc_4[%c4, %c1] [%200], %201, %100 : memref<8x14xf32>, vector<14xindex>, vector<14xi1>, vector<14xf32>
    vector.print %100 : vector<14xf32>
    %202 = affine.max affine_map<(d0, d1, d2) -> (d2 floordiv 64)>(%199, %140, %199)
    %203 = arith.remui %c1422950367_i64, %c1043795320_i64 : i64
    %204 = arith.remf %191, %191 : f32
    %205 = arith.divf %191, %191 : f32
    %206 = bufferization.clone %alloc_7 : memref<8x14xf16> to memref<8x14xf16>
    %207 = arith.minui %c1645118049_i32, %c1016796092_i32 : i32
    %208 = index.ceildivu %c6, %c0
    %209 = vector.transpose %159, [1, 0] : vector<10x14xf16> to vector<14x10xf16>
    %rank_43 = tensor.rank %10 : tensor<8x14xi32>
    affine.store %191, %alloc_10[%c8, %c8] : memref<8x14xf32>
    %210 = arith.remui %c18165_i16, %c18165_i16 : i16
    %211 = scf.if %true -> (memref<8x14xi32>) {
      %from_elements_46 = tensor.from_elements %cst_21, %cst_21, %191, %cst_21, %191, %191, %191, %191, %cst_21, %cst_21, %191, %cst_21, %191, %191, %191, %cst_21, %191, %191, %cst_21, %191, %191, %cst_21, %cst_21, %191, %191, %cst_21, %cst_21, %cst_21, %cst_21, %191, %191, %cst_21, %cst_21, %191, %191, %191, %191, %cst_21, %cst_21, %cst_21, %191, %191, %cst_21, %191, %191, %191, %cst_21, %191, %191, %cst_21, %cst_21, %191, %cst_21, %191, %191, %191, %191, %191, %cst_21, %cst_21, %191, %cst_21, %191, %191, %191, %191, %cst_21, %cst_21, %191, %cst_21, %191, %cst_21, %191, %cst_21, %cst_21, %cst_21, %191, %cst_21, %cst_21, %191, %cst_21, %191, %cst_21, %cst_21, %191, %cst_21, %191, %cst_21, %cst_21, %191, %cst_21, %cst_21, %191, %191, %cst_21, %191, %cst_21, %191, %cst_21, %cst_21, %cst_21, %191, %cst_21, %191, %cst_21, %cst_21, %191, %191, %191, %cst_21, %191, %191, %191, %cst_21, %cst_21, %cst_21, %cst_21, %191, %191, %cst_21, %cst_21, %cst_21, %cst_21, %191, %cst_21, %cst_21, %cst_21, %cst_21, %191, %191, %191, %191, %191, %cst_21, %cst_21, %cst_21, %cst_21, %191, %191, %191 : tensor<10x14xf32>
      %267 = arith.remui %c1270732898_i32, %c1645118049_i32 : i32
      memref.assume_alignment %alloc_10, 1 : memref<8x14xf32>
      %268 = math.exp %from_elements_46 : tensor<10x14xf32>
      %269 = math.roundeven %1 : tensor<10x14xf32>
      %270 = arith.xori %c1422950367_i64, %c1043795320_i64 : i64
      affine.for %arg0 = 0 to 18 {
      }
      %271 = index.sizeof
      %alloc_47 = memref.alloc() : memref<8x14xi32>
      scf.yield %alloc_47 : memref<8x14xi32>
    } else {
      %cast_46 = tensor.cast %19 : tensor<14xi16> to tensor<?xi16>
      %267 = arith.floordivsi %false_38, %false : i1
      %268 = vector.reduction <xor>, %133 : vector<10xi32> into i32
      %269 = affine.for %arg0 = 0 to 101 iter_args(%arg1 = %32) -> (vector<10x14xf32>) {
        affine.yield %73 : vector<10x14xf32>
      }
      %270 = index.ceildivs %95, %71
      %271 = affine.apply affine_map<(d0) -> (-(d0 floordiv 8))>(%c8)
      %272 = memref.realloc %152 : memref<14xi16> to memref<5xi16>
      %inserted_47 = tensor.insert %c18165_i16 into %cast_46[%c0] : tensor<?xi16>
      %alloc_48 = memref.alloc() : memref<8x14xi32>
      scf.yield %alloc_48 : memref<8x14xi32>
    }
    %212 = affine.apply affine_map<(d0, d1) -> ((d1 + 4) * 8)>(%c10, %c11)
    %213 = tensor.empty() : tensor<14x5xi64>
    %214 = tensor.empty() : tensor<8x5xi64>
    %215 = linalg.matmul ins(%4, %213 : tensor<8x14xi64>, tensor<14x5xi64>) outs(%214 : tensor<8x5xi64>) -> tensor<8x5xi64>
    %216 = affine.load %206[%c6, %c11] : memref<8x14xf16>
    %217 = math.rsqrt %191 : f32
    %218 = arith.remf %216, %cst_2 : f16
    %219 = vector.broadcast %cst : f16 to vector<8x14xf16>
    %220 = index.sizeof
    %221 = index.floordivs %c4, %rank
    %222 = arith.shrsi %c-16538_i16, %c18165_i16 : i16
    %223 = vector.extract %29[1] : vector<5x8x14xi1>
    %224 = affine.min affine_map<(d0, d1) -> (d1 floordiv 16, (d0 mod 8 - d1 * 2) * 2, d0 - 16)>(%c4, %140)
    %225 = arith.addf %216, %cst_2 : f16
    %alloc_44 = memref.alloc() : memref<8x14xi16>
    %226 = vector.shuffle %158, %219 [1, 3, 5, 8, 9, 11, 13, 14, 15, 17] : vector<10x14xf16>, vector<8x14xf16>
    %227 = vector.broadcast %c8 : index to vector<5xindex>
    %228 = vector.broadcast %false_22 : i1 to vector<5xi1>
    %229 = vector.broadcast %c18165_i16 : i16 to vector<5xi16>
    vector.scatter %60[%c8, %c9] [%227], %228, %229 : memref<10x14xi16>, vector<5xindex>, vector<5xi1>, vector<5xi16>
    %230 = memref.alloca_scope  -> (memref<10x14xi32>) {
      %267 = index.sizeof
      %268 = vector.broadcast %c10 : index to vector<8xindex>
      %269 = vector.broadcast %true_23 : i1 to vector<8xi1>
      %270 = vector.broadcast %c1270732898_i32 : i32 to vector<8xi32>
      vector.scatter %alloc_17[%c11, %c7] [%268], %269, %270 : memref<14x8xi32>, vector<8xindex>, vector<8xi1>, vector<8xi32>
      %271 = arith.floordivsi %c1043795320_i64, %c1422950367_i64 : i64
      %272 = arith.maxui %true_23, %true_42 : i1
      %273 = math.atan %from_elements : tensor<5x8x14xf32>
      memref.copy %alloc_17, %alloc_18 : memref<14x8xi32> to memref<14x8xi32>
      %expanded_46 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<10x14xf32> into tensor<10x14x1xf32>
      %274 = arith.maxui %true, %false_38 : i1
      %275 = math.expm1 %216 : f16
      %276 = bufferization.to_tensor %alloc_7 : memref<8x14xf16>
      %277 = index.ceildivs %140, %208
      %278 = index.divu %79, %46
      %279 = arith.maxf %191, %191 : f32
      %280 = math.floor %13 : tensor<5x8x14xf32>
      %splat = tensor.splat %cst_2 : tensor<8x14xf16>
      %281 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %58, %58, %216 : vector<1xf16>, vector<1xf16> into f16
      %282 = vector.broadcast %cst_21 : f32 to vector<5x8x14xf32>
      %283 = vector.fma %282, %282, %282 : vector<5x8x14xf32>
      %284 = index.sub %153, %c3
      %285 = math.atan2 %cst_2, %cst : f16
      %286 = arith.remf %cst, %cst_1 : f16
      %287 = vector.broadcast %c7 : index to vector<14xindex>
      %288 = vector.broadcast %true_26 : i1 to vector<14xi1>
      vector.scatter %alloc_4[%c0, %c7] [%287], %288, %100 : memref<8x14xf32>, vector<14xindex>, vector<14xi1>, vector<14xf32>
      %289 = math.absi %8 : tensor<5x8x14xi64>
      %290 = arith.shrui %true_23, %true_42 : i1
      %291 = math.ctlz %0 : tensor<10x14xi16>
      %292 = math.ipowi %9, %9 : tensor<8x14xi64>
      %293 = math.atan %cst_2 : f16
      %294 = vector.broadcast %216 : f16 to vector<10xf16>
      %dest_47, %accumulated_value_48 = vector.scan <minf>, %158, %294 {inclusive = true, reduction_dim = 1 : i64} : vector<10x14xf16>, vector<10xf16>
      %295 = arith.maxui %c1043795320_i64, %c1043795320_i64 : i64
      %296 = bufferization.to_tensor %alloc_8 : memref<10x14xi16>
      %generated_49 = tensor.generate %140, %c4 {
      ^bb0(%arg0: index, %arg1: index):
        %298 = tensor.empty(%arg1, %45) : tensor<?x?xf32>
        %299 = arith.floordivsi %true_23, %false : i1
        %rank_52 = tensor.rank %2 : tensor<8x14xi1>
        %300 = math.round %splat : tensor<8x14xf16>
        tensor.yield %cst_1 : f16
      } : tensor<?x?xf16>
      %297 = arith.cmpi sgt, %c299780581_i32, %c1645118049_i32 : i32
      %generated_50 = tensor.generate %224 {
      ^bb0(%arg0: index, %arg1: index, %arg2: index):
        %298 = math.atan2 %191, %cst_21 : f32
        vector.print %142 : vector<8x14xi16>
        %299 = tensor.empty() : tensor<10x14xi32>
        %300 = vector.gather %299[%97, %278] [%24], %25, %24 : tensor<10x14xi32>, vector<10x14xi32>, vector<10x14xi1>, vector<10x14xi32> into vector<10x14xi32>
        %extracted_52 = tensor.extract %generated[%c0, %c7] : tensor<?x14xf32>
        tensor.yield %c299780581_i32 : i32
      } : tensor<?x8x14xi32>
      %alloc_51 = memref.alloc() : memref<10x14xi32>
      memref.alloca_scope.return %alloc_51 : memref<10x14xi32>
    }
    %231 = vector.load %alloc_16[%c0, %c3] : memref<8x14xi16>, vector<8x14xi16>
    %inserted_45 = tensor.insert %c1270732898_i32 into %6[%c6, %c5] : tensor<8x14xi32>
    %cast = tensor.cast %8 : tensor<5x8x14xi64> to tensor<?x?x?xi64>
    %232 = vector.broadcast %c1270732898_i32 : i32 to vector<5x8x14xi32>
    %233 = vector.gather %49[%c13, %56] [%232], %29, %129 : memref<14x8xi16>, vector<5x8x14xi32>, vector<5x8x14xi1>, vector<5x8x14xi16> into vector<5x8x14xi16>
    %234 = scf.index_switch %c10 -> i32 
    case 1 {
      %267 = index.divs %c8, %rank
      %expanded_46 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<10x14xf32> into tensor<10x14x1xf32>
      memref.store %c-17027_i16, %alloc_14[%c5, %c13] : memref<8x14xi16>
      memref.tensor_store %9, %alloc_11 : memref<8x14xi64>
      %268 = arith.shli %c1016796092_i32, %c1270732898_i32 : i32
      memref.alloca_scope  {
        %from_elements_49 = tensor.from_elements %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64 : tensor<14x8xi64>
        %277 = math.floor %191 : f32
        %rank_50 = tensor.rank %5 : tensor<8x14xi32>
        %278 = bufferization.clone %128 : memref<5x8x14xi1> to memref<5x8x14xi1>
        memref.assume_alignment %88, 4 : memref<5x8x14xi16>
        %279 = vector.broadcast %191 : f32 to vector<5x8x14xf32>
        %280 = vector.fma %279, %279, %279 : vector<5x8x14xf32>
        %281 = bufferization.to_memref %116 : memref<10x14xf16>
        %282 = arith.addi %c1270732898_i32, %c1645118049_i32 : i32
        %283 = arith.addf %cst, %216 : f16
        %284 = memref.atomic_rmw addf %191, %alloc_10[%c2, %c3] : (f32, memref<8x14xf32>) -> f32
        %285 = index.mul %95, %c13
        %286 = arith.xori %c18165_i16, %c-32682_i16 : i16
        %287 = vector.insertelement %216, %58[%rank_30 : index] : vector<1xf16>
        %true_51 = index.bool.constant true
        %288 = index.sizeof
        %splat = tensor.splat %false : tensor<5x8x14xi1>
        %289 = arith.remf %cst, %cst_2 : f16
        %from_elements_52 = tensor.from_elements %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64 : tensor<8x14xi64>
        %290 = index.maxu %285, %79
        %291 = math.fma %cst_21, %cst_21, %cst_21 : f32
        %292 = arith.shli %false, %true_26 : i1
        %293 = affine.apply affine_map<(d0, d1) -> (2)>(%169, %57)
        %from_elements_53 = tensor.from_elements %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64 : tensor<10x14xi64>
        %splat_54 = tensor.splat %191 : tensor<8x14xf32>
        %294 = arith.shrui %c18165_i16, %c-32682_i16 : i16
        %295 = affine.apply affine_map<(d0, d1) -> (0)>(%293, %199)
        %296 = math.round %1 : tensor<10x14xf32>
        %297 = affine.apply affine_map<(d0, d1) -> (0)>(%c0, %c4)
        %298 = math.floor %cst_1 : f16
        %299 = arith.addf %cst_1, %cst_1 : f16
        %300 = arith.maxf %cst_2, %216 : f16
        %301 = arith.minf %191, %cst_21 : f32
      }
      %269 = math.atan2 %from_elements, %13 : tensor<5x8x14xf32>
      %270 = arith.floordivsi %true, %true_23 : i1
      %cast_47 = tensor.cast %20 : tensor<i16> to tensor<i16>
      %271 = arith.xori %c1422950367_i64, %c1422950367_i64 : i64
      %272 = math.ipowi %14, %6 : tensor<8x14xi32>
      %273 = vector.insert %223, %29 [3] : vector<8x14xi1> into vector<5x8x14xi1>
      %274 = vector.insert %cst_1, %58 [0] : f16 into vector<1xf16>
      %275 = math.cos %cst : f16
      %from_elements_48 = tensor.from_elements %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1043795320_i64, %c1422950367_i64, %c1422950367_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64, %c1043795320_i64 : tensor<10x14xi64>
      %276 = vector.reduction <maxf>, %100 : vector<14xf32> into f32
      scf.yield %c1645118049_i32 : i32
    }
    default {
      %267 = index.castu %221 : index to i32
      %268 = vector.insert %18, %159 [5] : vector<14xf16> into vector<10x14xf16>
      %cast_46 = tensor.cast %6 : tensor<8x14xi32> to tensor<?x?xi32>
      %269 = arith.remf %cst_1, %cst : f16
      memref.assume_alignment %alloc_4, 2 : memref<8x14xf32>
      affine.store %c1270732898_i32, %alloc_13[%c8, %c0, %c8] : memref<5x8x14xi32>
      %270 = index.sizeof
      %271 = index.ceildivu %c12, %56
      %272 = scf.if %false_22 -> (memref<8x14xi1>) {
        %277 = math.absi %7 : tensor<5x8x14xi32>
        %alloc_49 = memref.alloc() : memref<5x8x14xf32>
        %alloc_50 = memref.alloc() : memref<14x8xi64>
        %278 = vector.broadcast %c1422950367_i64 : i64 to vector<5x8x14xi64>
        %279 = vector.gather %alloc_50[%c5, %123] [%232], %29, %278 : memref<14x8xi64>, vector<5x8x14xi32>, vector<5x8x14xi1>, vector<5x8x14xi64> into vector<5x8x14xi64>
        %280 = math.exp %cst_2 : f16
        %281 = arith.maxui %true_0, %true_42 : i1
        %282 = affine.apply affine_map<(d0, d1) -> (2)>(%c8, %61)
        %283 = vector.broadcast %191 : f32 to vector<10x14xf32>
        %284 = vector.fma %283, %32, %32 : vector<10x14xf32>
        %285 = math.log10 %191 : f32
        %alloc_51 = memref.alloc() : memref<8x14xi1>
        scf.yield %alloc_51 : memref<8x14xi1>
      } else {
        %dest_49, %accumulated_value_50 = vector.scan <mul>, %231, %146 {inclusive = false, reduction_dim = 1 : i64} : vector<8x14xi16>, vector<8xi16>
        %277 = arith.xori %true, %true_42 : i1
        %278 = arith.remf %cst_21, %cst_21 : f32
        %279 = arith.mulf %191, %cst_21 : f32
        %280 = index.floordivs %rank, %123
        %cast_51 = tensor.cast %14 : tensor<8x14xi32> to tensor<?x?xi32>
        vector.print %26 : vector<10x14xi32>
        %collapsed_52 = tensor.collapse_shape %12 [[0, 1]] : tensor<8x14xi16> into tensor<112xi16>
        %alloc_53 = memref.alloc() : memref<8x14xi1>
        scf.yield %alloc_53 : memref<8x14xi1>
      }
      %273 = arith.remf %191, %cst_21 : f32
      %alloc_47 = memref.alloc() : memref<14x8xi32>
      %274 = vector.multi_reduction <maxf>, %158, %158 [] : vector<10x14xf16> to vector<10x14xf16>
      %275 = affine.max affine_map<(d0, d1) -> (d1 + 1, d1 - 95, (d1 - 95) mod 64)>(%rank_30, %c15)
      memref.copy %alloc, %alloc_13 : memref<5x8x14xi32> to memref<5x8x14xi32>
      %276 = arith.mulf %cst_2, %cst_1 : f16
      %collapsed_48 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<5x8x14xi64> into tensor<40x14xi64>
      scf.yield %c1645118049_i32 : i32
    }
    %235 = math.tan %from_elements : tensor<5x8x14xf32>
    %236 = vector.matrix_multiply %100, %100 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xf32>, vector<14xf32>) -> vector<1xf32>
    %237 = arith.cmpf ule, %cst_2, %cst_2 : f16
    %238 = index.divu %c11, %rank
    %239 = index.divs %rank, %c14
    %240 = arith.floordivsi %true, %true : i1
    %241 = vector.broadcast %true_26 : i1 to vector<10xi1>
    %242 = vector.maskedload %alloc_3[%c4, %c5, %c8], %241, %241 : memref<5x8x14xi1>, vector<10xi1>, vector<10xi1> into vector<10xi1>
    %243 = vector.gather %128[%238, %c7, %c5] [%232], %29, %29 : memref<5x8x14xi1>, vector<5x8x14xi32>, vector<5x8x14xi1>, vector<5x8x14xi1> into vector<5x8x14xi1>
    %244 = math.ipowi %6, %14 : tensor<8x14xi32>
    %245 = memref.load %alloc_9[%c2, %c5, %c13] : memref<5x8x14xi16>
    vector.print %58 : vector<1xf16>
    %246 = vector.gather %0[%57, %c8] [%232], %29, %233 : tensor<10x14xi16>, vector<5x8x14xi32>, vector<5x8x14xi1>, vector<5x8x14xi16> into vector<5x8x14xi16>
    memref.tensor_store %8, %alloc_12 : memref<5x8x14xi64>
    %247 = arith.remf %cst_2, %cst_1 : f16
    %248 = arith.xori %true_23, %true_26 : i1
    %249 = math.round %216 : f16
    %250 = index.sub %59, %c6
    %251 = vector.create_mask %c0, %30 : vector<14x8xi1>
    %252 = math.absf %1 : tensor<10x14xf32>
    %253 = index.castu %c14 : index to i32
    %254 = memref.realloc %94 : memref<14xi16> to memref<5xi16>
    %255 = math.tan %cst : f16
    %256 = arith.shli %c-32682_i16, %c-16538_i16 : i16
    %257 = vector.transpose %72, [1, 0] : vector<10x14xf32> to vector<14x10xf32>
    %258 = math.fpowi %cst_2, %c1270732898_i32 : f16, i32
    %259 = arith.remsi %true_26, %true_23 : i1
    %260 = index.maxu %45, %140
    %extracted = tensor.extract %5[%c6, %c7] : tensor<8x14xi32>
    %261 = tensor.empty() : tensor<8x14xi64>
    %262 = linalg.copy ins(%9 : tensor<8x14xi64>) outs(%261 : tensor<8x14xi64>) -> tensor<8x14xi64>
    %263 = tensor.empty() : tensor<14x5x8xi1>
    %transposed = linalg.transpose ins(%170 : memref<5x8x14xi1>) outs(%263 : tensor<14x5x8xi1>) permutation = [2, 0, 1] 
    %264 = tensor.empty() : tensor<i16>
    %reduced = linalg.reduce ins(%19 : tensor<14xi16>) outs(%264 : tensor<i16>) dimensions = [0] 
      (%in: i16, %init: i16) {
        %267 = vector.broadcast %191 : f32 to vector<5x8x14xf32>
        %268 = vector.fma %267, %267, %267 : vector<5x8x14xf32>
        %269 = arith.cmpf uno, %cst_1, %cst_2 : f16
        %270 = tensor.empty() : tensor<10x14xf32>
        %expanded_46 = tensor.expand_shape %5 [[0], [1, 2]] : tensor<8x14xi32> into tensor<8x14x1xi32>
        %collapsed_47 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<5x8x14xf32> into tensor<40x14xf32>
        %271 = vector.broadcast %239 : index to vector<8xindex>
        %272 = vector.broadcast %true_26 : i1 to vector<8xi1>
        vector.scatter %60[%c6, %c13] [%271], %272, %146 : memref<10x14xi16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
        %273 = vector.matrix_multiply %100, %236 {lhs_columns = 1 : i32, lhs_rows = 14 : i32, rhs_columns = 1 : i32} : (vector<14xf32>, vector<1xf32>) -> vector<14xf32>
        %274 = arith.addf %cst_21, %191 : f32
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %265 = scf.parallel (%arg0) = (%c8) to (%95) step (%c9) init (%c18165_i16) -> i16 {
      %267 = arith.remf %cst_1, %cst_1 : f16
      %268 = arith.minsi %c1016796092_i32, %c1270732898_i32 : i32
      %269 = vector.multi_reduction <minsi>, %146, %146 [] : vector<8xi16> to vector<8xi16>
      %270 = math.round %216 : f16
      %271 = index.floordivs %239, %c9
      %272 = vector.broadcast %cst_1 : f16 to vector<14x14xf16>
      %273 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %219, %47, %272 : vector<8x14xf16>, vector<14x8xf16> into vector<14x14xf16>
      %274 = tensor.empty() : tensor<8xi64>
      %275 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%214, %274 : tensor<8x5xi64>, tensor<8xi64>) outs(%8 : tensor<5x8x14xi64>) {
      ^bb0(%in: i64, %in_48: i64, %out: i64):
        %285 = index.ceildivu %c12, %220
        %286 = vector.create_mask %59, %rank_30 : vector<14x8xi1>
        %287 = index.add %c9, %113
        %288 = vector.matrix_multiply %236, %100 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 14 : i32} : (vector<1xf32>, vector<14xf32>) -> vector<14xf32>
        %289 = tensor.empty() : tensor<14x8xi16>
        %290 = tensor.empty() : tensor<8x8xi16>
        %291 = linalg.matmul ins(%12, %289 : tensor<8x14xi16>, tensor<14x8xi16>) outs(%290 : tensor<8x8xi16>) -> tensor<8x8xi16>
        %splat = tensor.splat %c1043795320_i64 : tensor<10x14xi64>
        %292 = math.round %cst_21 : f32
        affine.store %c-32682_i16, %88[%c14, %c11, %c6] : memref<5x8x14xi16>
        %293 = memref.realloc %94 : memref<14xi16> to memref<5xi16>
        %294 = bufferization.clone %alloc_16 : memref<8x14xi16> to memref<8x14xi16>
        %295 = vector.broadcast %c-32682_i16 : i16 to vector<8xi16>
        vector.transfer_write %295, %alloc_9[%rank, %arg0, %202] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<8xi16>, memref<5x8x14xi16>
        %296 = arith.addi %true_26, %true : i1
        %297 = index.mul %c9, %59
        %alloc_49 = memref.alloc() : memref<14x5x8xi1>
        memref.tensor_store %transposed, %alloc_49 : memref<14x5x8xi1>
        %298 = math.log10 %cst_2 : f16
        %299 = vector.broadcast %arg0 : index to vector<8xindex>
        %300 = vector.broadcast %false_38 : i1 to vector<8xi1>
        vector.scatter %49[%c0, %c4] [%299], %300, %146 : memref<14x8xi16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
        %301 = affine.load %alloc_17[%c9, %c9] : memref<14x8xi32>
        memref.tensor_store %3, %alloc_8 : memref<10x14xi16>
        %302 = math.atan2 %116, %116 : tensor<10x14xf16>
        %303 = index.add %61, %c2
        %304 = vector.load %alloc_18[%c11, %c4] : memref<14x8xi32>, vector<10x14xi32>
        %alloc_50 = memref.alloc() : memref<5x8x14xi1>
        memref.copy %206, %alloc_7 : memref<8x14xf16> to memref<8x14xf16>
        %305 = math.round %216 : f16
        %306 = arith.xori %c1645118049_i32, %extracted : i32
        %307 = affine.min affine_map<(d0) -> (0, d0 * 2, (d0 * 2 + 1) * 2, d0 * 2 + 1)>(%220)
        %308 = arith.shrui %c18165_i16, %c-17027_i16 : i16
        %inserted_51 = tensor.insert %out into %9[%c1, %c3] : tensor<8x14xi64>
        %309 = index.ceildivs %30, %c10
        %310 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%80, %c0, %c15, %rank_43)
        %311 = math.absi %c-17027_i16 : i16
        %312 = math.cttz %c-17027_i16 : i16
        linalg.yield %in_48 : i64
      } -> tensor<5x8x14xi64>
      %276 = vector.load %175[%c3, %c7, %c0] : memref<5x8x14xi1>, vector<5x8x14xi1>
      %expanded_46 = tensor.expand_shape %0 [[0], [1, 2]] : tensor<10x14xi16> into tensor<10x14x1xi16>
      %277 = math.absf %cst_2 : f16
      %278 = index.sub %113, %c15
      %279 = index.sub %113, %rank
      %280 = math.floor %1 : tensor<10x14xf32>
      %281 = vector.broadcast %c13 : index to vector<5xindex>
      %282 = vector.broadcast %true : i1 to vector<5xi1>
      %283 = vector.broadcast %c-32682_i16 : i16 to vector<5xi16>
      vector.scatter %88[%c0, %c3, %c3] [%281], %282, %283 : memref<5x8x14xi16>, vector<5xindex>, vector<5xi1>, vector<5xi16>
      %284 = bufferization.to_memref %116 : memref<10x14xf16>
      %cast_47 = tensor.cast %10 : tensor<8x14xi32> to tensor<?x?xi32>
      %c0_i16 = arith.constant 0 : i16
      scf.reduce(%c0_i16)  : i16 {
      ^bb0(%arg1: i16, %arg2: i16):
        %285 = math.atan2 %cst, %cst_1 : f16
        %286 = math.copysign %216, %cst_1 : f16
        %287 = arith.shrui %arg1, %c-17027_i16 : i16
        %true_48 = index.bool.constant true
        %288 = math.expm1 %13 : tensor<5x8x14xf32>
        %289 = arith.shrsi %c1645118049_i32, %c1645118049_i32 : i32
        %290 = arith.divsi %c-32682_i16, %c-16538_i16 : i16
        %291 = vector.load %alloc_17[%c1, %c6] : memref<14x8xi32>, vector<5x8x14xi32>
        %c1_i16 = arith.constant 1 : i16
        scf.reduce.return %c1_i16 : i16
      }
      scf.yield
    }
    %266 = affine.vector_load %alloc_12[%80, %169, %c0] : memref<5x8x14xi64>, vector<10xi64>
    affine.vector_store %100, %alloc_10[%30, %199] : memref<8x14xf32>, vector<14xf32>
    vector.print %18 : vector<14xf16>
    vector.print %24 : vector<10x14xi32>
    vector.print %25 : vector<10x14xi1>
    vector.print %26 : vector<10x14xi32>
    vector.print %29 : vector<5x8x14xi1>
    vector.print %32 : vector<10x14xf32>
    vector.print %33 : vector<10x14xf32>
    vector.print %47 : vector<14x8xf16>
    vector.print %58 : vector<1xf16>
    vector.print %72 : vector<10x14xf32>
    vector.print %73 : vector<10x14xf32>
    vector.print %83 : vector<14x8xf32>
    vector.print %89 : vector<10x14xi16>
    vector.print %93 : vector<14x8xi16>
    vector.print %100 : vector<14xf32>
    vector.print %102 : vector<14x8xi1>
    vector.print %103 : vector<14x8xi32>
    vector.print %104 : vector<14x8xi1>
    vector.print %107 : vector<14x8xi1>
    vector.print %129 : vector<5x8x14xi16>
    vector.print %133 : vector<10xi32>
    vector.print %142 : vector<8x14xi16>
    vector.print %146 : vector<8xi16>
    vector.print %158 : vector<10x14xf16>
    vector.print %159 : vector<10x14xf16>
    vector.print %167 : vector<10x14xf32>
    vector.print %168 : vector<10x14xf32>
    vector.print %172 : vector<8x14xi1>
    vector.print %196 : vector<10x14xf32>
    vector.print %197 : vector<14xi16>
    vector.print %219 : vector<8x14xf16>
    vector.print %223 : vector<8x14xi1>
    vector.print %231 : vector<8x14xi16>
    vector.print %232 : vector<5x8x14xi32>
    vector.print %233 : vector<5x8x14xi16>
    vector.print %236 : vector<1xf32>
    vector.print %241 : vector<10xi1>
    vector.print %242 : vector<10xi1>
    vector.print %243 : vector<5x8x14xi1>
    vector.print %246 : vector<5x8x14xi16>
    vector.print %251 : vector<14x8xi1>
    vector.print %266 : vector<10xi64>
    vector.print %c1645118049_i32 : i32
    vector.print %true : i1
    vector.print %cst : f16
    vector.print %c-17027_i16 : i16
    vector.print %false : i1
    vector.print %c-32682_i16 : i16
    vector.print %c-16538_i16 : i16
    vector.print %c1016796092_i32 : i32
    vector.print %c1043795320_i64 : i64
    vector.print %c1422950367_i64 : i64
    vector.print %c299780581_i32 : i32
    vector.print %c18165_i16 : i16
    vector.print %true_0 : i1
    vector.print %cst_1 : f16
    vector.print %c1270732898_i32 : i32
    vector.print %cst_2 : f16
    vector.print %cst_21 : f32
    vector.print %false_22 : i1
    vector.print %true_23 : i1
    vector.print %true_26 : i1
    vector.print %false_38 : i1
    vector.print %191 : f32
    vector.print %true_42 : i1
    vector.print %216 : f16
    vector.print %extracted : i32
    return %167 : vector<10x14xf32>
  }
}
