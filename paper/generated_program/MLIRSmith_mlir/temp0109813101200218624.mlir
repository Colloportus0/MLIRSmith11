module {
  func.func @func1(%arg0: vector<7x13x13xi32>, %arg1: vector<9x9xi16>) -> vector<13x13xi32> {
    %cst = arith.constant 3.440000e+04 : f16
    %cst_0 = arith.constant 4.844800e+04 : f16
    %c689840241_i32 = arith.constant 689840241 : i32
    %c677221256_i32 = arith.constant 677221256 : i32
    %c22838_i16 = arith.constant 22838 : i16
    %cst_1 = arith.constant 1.768000e+04 : f16
    %cst_2 = arith.constant 5.792000e+04 : f16
    %c1383263993_i64 = arith.constant 1383263993 : i64
    %c312423149_i64 = arith.constant 312423149 : i64
    %c833211059_i32 = arith.constant 833211059 : i32
    %c657591761_i64 = arith.constant 657591761 : i64
    %c1298902068_i64 = arith.constant 1298902068 : i64
    %c6231_i16 = arith.constant 6231 : i16
    %c12133_i16 = arith.constant 12133 : i16
    %false = arith.constant false
    %cst_3 = arith.constant 6.390400e+04 : f16
    %0 = tensor.empty() : tensor<13x16xi16>
    %1 = tensor.empty() : tensor<7x13x13xf16>
    %2 = tensor.empty() : tensor<9x9xi64>
    %3 = tensor.empty() : tensor<13x13xi32>
    %4 = tensor.empty() : tensor<13x16xi1>
    %5 = tensor.empty() : tensor<9x9xi32>
    %6 = tensor.empty() : tensor<13x13xi16>
    %7 = tensor.empty() : tensor<13x13xi1>
    %8 = tensor.empty() : tensor<13x16xi1>
    %9 = tensor.empty() : tensor<13x16xi64>
    %10 = tensor.empty() : tensor<7x13x13xi1>
    %11 = tensor.empty() : tensor<13x13xi64>
    %12 = tensor.empty() : tensor<13x16xi32>
    %13 = tensor.empty() : tensor<9x9xi32>
    %14 = tensor.empty() : tensor<13x13xi32>
    %15 = tensor.empty() : tensor<13x13xi64>
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
    %alloc = memref.alloc() : memref<7x13x13xi32>
    %alloc_4 = memref.alloc() : memref<9x9xf16>
    %alloc_5 = memref.alloc() : memref<7x13x13xi16>
    %alloc_6 = memref.alloc() : memref<7x13x13xi32>
    %alloc_7 = memref.alloc() : memref<7x13x13xf16>
    %alloc_8 = memref.alloc() : memref<7x13x13xi64>
    %alloc_9 = memref.alloc() : memref<13x13xi64>
    %alloc_10 = memref.alloc() : memref<7x13x13xi64>
    %alloc_11 = memref.alloc() : memref<13x16xf16>
    %alloc_12 = memref.alloc() : memref<7x13x13xf32>
    %alloc_13 = memref.alloc() : memref<13x16xi1>
    %alloc_14 = memref.alloc() : memref<13x13xf32>
    %alloc_15 = memref.alloc() : memref<7x13x13xi64>
    %alloc_16 = memref.alloc() : memref<9x9xi32>
    %alloc_17 = memref.alloc() : memref<13x16xi16>
    %alloc_18 = memref.alloc() : memref<7x13x13xf32>
    %16 = tensor.empty() : tensor<13x16xi1>
    %17 = linalg.copy ins(%4 : tensor<13x16xi1>) outs(%16 : tensor<13x16xi1>) -> tensor<13x16xi1>
    %18 = tensor.empty() : tensor<13x13xi1>
    %transposed = linalg.transpose ins(%7 : tensor<13x13xi1>) outs(%18 : tensor<13x13xi1>) permutation = [1, 0] 
    %19 = tensor.empty() : tensor<7x13xi1>
    %reduced = linalg.reduce ins(%10 : tensor<7x13x13xi1>) outs(%19 : tensor<7x13xi1>) dimensions = [1] 
      (%in: i1, %init: i1) {
        %275 = index.mul %c3, %c5
        %276 = math.expm1 %cst_1 : f16
        %277 = affine.apply affine_map<(d0) -> (d0 * 32)>(%c14)
        bufferization.dealloc_tensor %transposed : tensor<13x13xi1>
        %278 = math.cos %1 : tensor<7x13x13xf16>
        %279 = index.casts %c10 : index to i32
        %280 = vector.broadcast %init : i1 to vector<9xi1>
        %281 = vector.flat_transpose %280 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
        %282 = math.exp2 %cst_2 : f16
        %true_38 = arith.constant true
        linalg.yield %true_38 : i1
      }
    scf.parallel (%arg2) = (%c13) to (%c14) step (%c2) {
      %275 = affine.load %alloc[%c5, %c13, %c2] : memref<7x13x13xi32>
      %276 = math.log2 %cst : f16
      %277 = arith.minsi %c22838_i16, %c22838_i16 : i16
      %278 = math.ctlz %c22838_i16 : i16
      %279 = index.ceildivs %c1, %c11
      %280 = tensor.empty() : tensor<13xi1>
      %281 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%280, %280, %280 : tensor<13xi1>, tensor<13xi1>, tensor<13xi1>) outs(%10 : tensor<7x13x13xi1>) {
      ^bb0(%in: i1, %in_40: i1, %in_41: i1, %out: i1):
        %291 = arith.remsi %c1383263993_i64, %c312423149_i64 : i64
        %cst_42 = arith.constant 1.000000e+00 : f32
        %292 = vector.broadcast %cst_42 : f32 to vector<13x13xf32>
        %293 = vector.shuffle %292, %292 [0, 1, 2, 5, 6, 8, 10, 11, 15, 16, 17, 19, 22, 23, 24, 25] : vector<13x13xf32>, vector<13x13xf32>
        %294 = tensor.empty(%c4) : tensor<9x?xi32>
        %295 = arith.ori %c6231_i16, %c6231_i16 : i16
        %296 = math.exp2 %cst_1 : f16
        %297 = vector.broadcast %c22838_i16 : i16 to vector<1xi16>
        %298 = vector.extract %297[0] : vector<1xi16>
        %alloc_43 = memref.alloc() : memref<13x13xi16>
        %299 = arith.minf %cst_2, %cst_2 : f16
        %300 = math.exp2 %cst_2 : f16
        %301 = vector.extract %297[0] : vector<1xi16>
        %302 = arith.remf %cst_2, %cst_0 : f16
        %303 = math.fpowi %cst_0, %c689840241_i32 : f16, i32
        %304 = arith.minf %cst, %cst_2 : f16
        %305 = arith.remf %cst_0, %cst_3 : f16
        %alloc_44 = memref.alloc() : memref<9xi16>
        %306 = memref.realloc %alloc_44 : memref<9xi16> to memref<16xi16>
        %cst_45 = arith.constant 1.91512102E+9 : f32
        %307 = vector.create_mask %c1, %c9 : vector<13x16xi1>
        %308 = arith.divsi %c833211059_i32, %c677221256_i32 : i32
        %309 = arith.remf %cst_0, %cst_1 : f16
        %310 = arith.floordivsi %c1383263993_i64, %c312423149_i64 : i64
        %311 = index.maxs %c15, %c4
        %alloc_46 = memref.alloc() : memref<13x16xi64>
        %312 = vector.bitcast %307 : vector<13x16xi1> to vector<13x16xi1>
        %313 = index.maxs %c2, %c14
        %314 = arith.cmpf ult, %cst_0, %cst : f16
        memref.copy %alloc_10, %alloc_8 : memref<7x13x13xi64> to memref<7x13x13xi64>
        %315 = vector.bitcast %307 : vector<13x16xi1> to vector<13x16xi1>
        %316 = math.log2 %cst_0 : f16
        %317 = vector.matrix_multiply %297, %297 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
        %318 = arith.xori %c312423149_i64, %c1383263993_i64 : i64
        %319 = arith.remf %cst, %cst_3 : f16
        %expanded = tensor.expand_shape %transposed [[0], [1, 2]] : tensor<13x13xi1> into tensor<13x13x1xi1>
        linalg.yield %false : i1
      } -> tensor<7x13x13xi1>
      %282 = math.absi %10 : tensor<7x13x13xi1>
      %283 = arith.maxsi %c677221256_i32, %c833211059_i32 : i32
      %284 = vector.broadcast %c833211059_i32 : i32 to vector<1xi32>
      %285 = vector.bitcast %284 : vector<1xi32> to vector<1xi32>
      %286 = arith.cmpi ugt, %c22838_i16, %c6231_i16 : i16
      %287 = tensor.empty() : tensor<13x13xf32>
      %extracted_38 = tensor.extract %4[%c4, %c11] : tensor<13x16xi1>
      %288 = index.maxu %c4, %c3
      %false_39 = index.bool.constant false
      %289 = math.log2 %cst_3 : f16
      %290 = index.sizeof
      scf.yield
    }
    %20 = affine.vector_load %alloc_9[%c11, %c7] : memref<13x13xi64>, vector<16xi64>
    affine.vector_store %20, %alloc_9[%c5, %c15] : memref<13x13xi64>, vector<16xi64>
    %alloc_19 = memref.alloc() : memref<9xi32>
    %21 = tensor.empty() : tensor<9xi32>
    %22 = tensor.empty() : tensor<i32>
    %23 = linalg.dot ins(%alloc_19, %21 : memref<9xi32>, tensor<9xi32>) outs(%22 : tensor<i32>) -> tensor<i32>
    %24 = math.ctpop %10 : tensor<7x13x13xi1>
    %25 = affine.min affine_map<(d0) -> ((d0 - 32) * -4)>(%c4)
    %26 = vector.broadcast %cst_1 : f16 to vector<7xf16>
    %27 = vector.broadcast %false : i1 to vector<7xi1>
    %28 = vector.maskedload %alloc_7[%c3, %c4, %c1], %27, %26 : memref<7x13x13xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
    %29 = index.sizeof
    %30 = arith.mulf %cst_0, %cst_3 : f16
    %31 = math.cttz %5 : tensor<9x9xi32>
    %32 = arith.shrui %c22838_i16, %c22838_i16 : i16
    %33 = arith.maxsi %c6231_i16, %c22838_i16 : i16
    memref.tensor_store %11, %alloc_9 : memref<13x13xi64>
    %34 = arith.remui %c6231_i16, %c22838_i16 : i16
    %35 = memref.realloc %alloc_19 : memref<9xi32> to memref<13xi32>
    %36 = arith.andi %c312423149_i64, %c1298902068_i64 : i64
    %37 = math.rsqrt %1 : tensor<7x13x13xf16>
    %38 = affine.apply affine_map<(d0) -> ((d0 floordiv 8) ceildiv 2)>(%c2)
    %39 = arith.minsi %c6231_i16, %c22838_i16 : i16
    %40 = math.floor %cst_3 : f16
    %41 = vector.bitcast %20 : vector<16xi64> to vector<16xi64>
    %42 = arith.cmpi sgt, %c1383263993_i64, %c1383263993_i64 : i64
    %43 = arith.remf %cst, %cst_2 : f16
    %44 = arith.subi %c1383263993_i64, %c1383263993_i64 : i64
    %45 = vector.create_mask %c7, %c5, %c15 : vector<7x13x13xi1>
    %46 = index.ceildivs %c2, %c11
    %47 = index.maxu %c6, %c10
    %48 = arith.remf %cst_2, %cst : f16
    %49 = math.atan %1 : tensor<7x13x13xf16>
    memref.tensor_store %16, %alloc_13 : memref<13x16xi1>
    %50 = tensor.empty() : tensor<13x13xf32>
    %51 = math.ctpop %7 : tensor<13x13xi1>
    %52 = index.ceildivu %c8, %c9
    %53 = arith.cmpi sgt, %c22838_i16, %c12133_i16 : i16
    %54 = vector.load %alloc[%c0, %c9, %c11] : memref<7x13x13xi32>, vector<7x13x13xi32>
    %55 = vector.matrix_multiply %41, %41 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi64>, vector<16xi64>) -> vector<1xi64>
    %56 = tensor.empty() : tensor<13x13xi32>
    %57 = linalg.matmul ins(%3, %3 : tensor<13x13xi32>, tensor<13x13xi32>) outs(%56 : tensor<13x13xi32>) -> tensor<13x13xi32>
    %58 = arith.ceildivsi %c833211059_i32, %c833211059_i32 : i32
    %59 = vector.shuffle %41, %20 [3, 6, 7, 8, 11, 12, 13, 19, 21, 22, 23, 26, 27, 28, 29, 30, 31] : vector<16xi64>, vector<16xi64>
    %60 = vector.broadcast %c1298902068_i64 : i64 to vector<16x16xi64>
    %61 = vector.outerproduct %20, %41, %60 {kind = #vector.kind<maxsi>} : vector<16xi64>, vector<16xi64>
    %62 = index.mul %c3, %c15
    %63 = math.fma %cst_0, %cst_3, %cst_2 : f16
    %64 = arith.shli %c1298902068_i64, %c1298902068_i64 : i64
    %65 = vector.broadcast %false : i1 to vector<13xi1>
    %66 = vector.insert %65, %45 [1, 3] : vector<13xi1> into vector<7x13x13xi1>
    %67 = arith.andi %c312423149_i64, %c1298902068_i64 : i64
    %68 = arith.remf %cst_2, %cst : f16
    %69 = math.rsqrt %cst : f16
    %70 = math.copysign %1, %1 : tensor<7x13x13xf16>
    %71 = math.copysign %cst_2, %cst_1 : f16
    %72 = math.absf %cst_3 : f16
    %73 = arith.xori %c22838_i16, %c12133_i16 : i16
    %74 = math.floor %cst_3 : f16
    %75 = index.sub %47, %c1
    %76 = math.cos %1 : tensor<7x13x13xf16>
    %77 = arith.ori %c1298902068_i64, %c312423149_i64 : i64
    %78 = arith.minf %cst_1, %cst_3 : f16
    %79 = math.fpowi %cst, %c677221256_i32 : f16, i32
    %80 = vector.matrix_multiply %20, %41 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi64>, vector<16xi64>) -> vector<1xi64>
    %81 = tensor.empty() : tensor<13x13xi1>
    %82 = linalg.matmul ins(%7, %7 : tensor<13x13xi1>, tensor<13x13xi1>) outs(%81 : tensor<13x13xi1>) -> tensor<13x13xi1>
    %83 = math.powf %cst_0, %cst_3 : f16
    %84 = index.divu %c12, %c3
    %85 = math.atan %1 : tensor<7x13x13xf16>
    %86 = affine.apply affine_map<(d0) -> (d0 * 32)>(%84)
    %87 = index.divu %c8, %c14
    %88 = index.mul %c7, %c13
    affine.store %cst_2, %alloc_7[%c15, %c11, %c0] : memref<7x13x13xf16>
    %89 = arith.remf %cst_2, %cst_2 : f16
    %90 = arith.remf %cst_2, %cst : f16
    %91 = math.sqrt %cst : f16
    %92 = arith.ceildivsi %c312423149_i64, %c657591761_i64 : i64
    %93 = arith.shrui %c689840241_i32, %c677221256_i32 : i32
    %94 = arith.minf %cst_2, %cst_1 : f16
    %95 = arith.andi %c22838_i16, %c22838_i16 : i16
    %96 = index.casts %88 : index to i32
    %97 = math.log2 %1 : tensor<7x13x13xf16>
    %98 = math.cttz %16 : tensor<13x16xi1>
    %99 = arith.muli %c312423149_i64, %c657591761_i64 : i64
    %100 = vector.broadcast %false : i1 to vector<13x16xi1>
    %101 = vector.broadcast %c833211059_i32 : i32 to vector<13x16xi32>
    %102 = vector.gather %10[%46, %86, %c2] [%101], %100, %100 : tensor<7x13x13xi1>, vector<13x16xi32>, vector<13x16xi1>, vector<13x16xi1> into vector<13x16xi1>
    %103 = math.cos %1 : tensor<7x13x13xf16>
    %104 = arith.shrui %c6231_i16, %c6231_i16 : i16
    %105 = vector.broadcast %c22838_i16 : i16 to vector<9xi16>
    %106 = vector.broadcast %false : i1 to vector<9xi1>
    %107 = vector.maskedload %alloc_5[%c4, %c8, %c6], %106, %105 : memref<7x13x13xi16>, vector<9xi1>, vector<9xi16> into vector<9xi16>
    %108 = vector.load %alloc_8[%c2, %c7, %c9] : memref<7x13x13xi64>, vector<9x9xi64>
    %109 = math.cttz %21 : tensor<9xi32>
    %110 = index.castu %84 : index to i32
    %111 = scf.if %false -> (memref<7x13x13xf32>) {
      %275 = vector.extract %102[11] : vector<13x16xi1>
      %276 = math.cttz %transposed : tensor<13x13xi1>
      bufferization.dealloc_tensor %22 : tensor<i32>
      %277 = arith.floordivsi %false, %false : i1
      scf.index_switch %c11 
      case 1 {
        %280 = vector.shuffle %100, %100 [2, 4, 9, 10, 11, 13, 14, 15, 18, 22, 25] : vector<13x16xi1>, vector<13x16xi1>
        %281 = vector.broadcast %c22838_i16 : i16 to vector<i16>
        vector.transfer_write %281, %alloc_17[%c1, %47] : vector<i16>, memref<13x16xi16>
        %282 = vector.broadcast %c11 : index to vector<13xindex>
        %283 = vector.broadcast %c6231_i16 : i16 to vector<13xi16>
        vector.scatter %alloc_5[%c5, %c8, %c4] [%282], %65, %283 : memref<7x13x13xi16>, vector<13xindex>, vector<13xi1>, vector<13xi16>
        %284 = vector.bitcast %105 : vector<9xi16> to vector<9xi16>
        %285 = arith.divsi %false, %false : i1
        %286 = arith.maxf %cst_0, %cst_2 : f16
        %287 = vector.broadcast %cst_0 : f16 to vector<9x9xf16>
        %288 = arith.divui %c312423149_i64, %c657591761_i64 : i64
        %289 = index.sizeof
        vector.print %100 : vector<13x16xi1>
        %290 = arith.remf %cst, %cst : f16
        %291 = math.floor %1 : tensor<7x13x13xf16>
        %292 = arith.minf %cst, %cst_2 : f16
        %293 = arith.cmpf ule, %cst, %cst_2 : f16
        %294 = math.cos %cst_3 : f16
        %295 = arith.divsi %c12133_i16, %c22838_i16 : i16
        scf.yield
      }
      default {
        %false_38 = index.bool.constant false
        %280 = math.atan2 %1, %1 : tensor<7x13x13xf16>
        %281 = arith.remf %cst_1, %cst_2 : f16
        %282 = arith.cmpf false, %cst_1, %cst_3 : f16
        %283 = tensor.empty() : tensor<7x13x13xi16>
        %284 = vector.broadcast %c6231_i16 : i16 to vector<13x13xi16>
        %285 = vector.broadcast %false_38 : i1 to vector<13x13xi1>
        %286 = vector.broadcast %c689840241_i32 : i32 to vector<13x13xi32>
        %287 = vector.gather %283[%c5, %c13, %c9] [%286], %285, %284 : tensor<7x13x13xi16>, vector<13x13xi32>, vector<13x13xi1>, vector<13x13xi16> into vector<13x13xi16>
        %288 = math.cttz %16 : tensor<13x16xi1>
        %289 = affine.min affine_map<(d0, d1) -> (d0 - ((d0 floordiv 4) * 2 + 32), (d0 floordiv 4 - ((d0 floordiv 4) * 2 + 32) + 32) floordiv 128 - ((d0 floordiv 4) ceildiv 2) floordiv 8, ((d0 floordiv 4 - ((d0 floordiv 4) * 2 + 32) + 32) floordiv 128) * 2)>(%c11, %25)
        %alloc_39 = memref.alloc() : memref<9x9xi64>
        memref.tensor_store %2, %alloc_39 : memref<9x9xi64>
        %290 = affine.min affine_map<(d0, d1, d2) -> (d0, (d0 - d2) * 64, d0 * 2 - 16)>(%c1, %46, %c10)
        %291 = index.mul %c11, %c12
        %292 = arith.cmpf oeq, %cst_1, %cst_2 : f16
        %293 = index.add %38, %86
        %294 = math.floor %1 : tensor<7x13x13xf16>
        %295 = arith.divui %c312423149_i64, %c657591761_i64 : i64
        %296 = math.absf %cst_1 : f16
        %297 = index.ceildivs %c6, %289
      }
      %278 = tensor.empty(%c6) : tensor<7x?x13xf32>
      vector.print %27 : vector<7xi1>
      %279 = arith.remsi %c1383263993_i64, %c1383263993_i64 : i64
      scf.yield %alloc_12 : memref<7x13x13xf32>
    } else {
      %275 = arith.maxf %cst, %cst_1 : f16
      %276 = arith.divui %c12133_i16, %c22838_i16 : i16
      %277 = arith.divui %c677221256_i32, %c677221256_i32 : i32
      %278 = vector.matrix_multiply %65, %65 {lhs_columns = 13 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<13xi1>, vector<13xi1>) -> vector<1xi1>
      %279 = vector.bitcast %45 : vector<7x13x13xi1> to vector<7x13x13xi1>
      %280 = memref.realloc %alloc_19 : memref<9xi32> to memref<13xi32>
      %281 = vector.load %alloc_10[%c3, %c3, %c11] : memref<7x13x13xi64>, vector<7x13x13xi64>
      %282 = vector.extract_strided_slice %107 {offsets = [6], sizes = [1], strides = [1]} : vector<9xi16> to vector<1xi16>
      scf.yield %alloc_18 : memref<7x13x13xf32>
    }
    %112 = vector.transpose %102, [1, 0] : vector<13x16xi1> to vector<16x13xi1>
    %113 = index.divu %c8, %c7
    %inserted = tensor.insert %c657591761_i64 into %9[%c3, %c15] : tensor<13x16xi64>
    %114 = math.fpowi %cst_2, %c689840241_i32 : f16, i32
    %115 = vector.broadcast %c22838_i16 : i16 to vector<7xi16>
    %116 = vector.transfer_write %115, %6[%c7, %113] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi16>, tensor<13x13xi16>
    %117 = math.copysign %1, %1 : tensor<7x13x13xf16>
    %118 = arith.divui %c312423149_i64, %c657591761_i64 : i64
    %119 = math.ipowi %23, %22 : tensor<i32>
    %120 = arith.maxsi %c22838_i16, %c6231_i16 : i16
    %121 = math.round %cst : f16
    %122 = vector.insertelement %c312423149_i64, %20[%c7 : index] : vector<16xi64>
    %123 = math.expm1 %cst : f16
    %124 = tensor.empty() : tensor<13xi1>
    %125 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%10, %124 : tensor<7x13x13xi1>, tensor<13xi1>) outs(%10 : tensor<7x13x13xi1>) {
    ^bb0(%in: i1, %in_38: i1, %out: i1):
      %275 = math.roundeven %cst : f16
      %276 = arith.shli %c12133_i16, %c6231_i16 : i16
      %277 = index.ceildivs %c4, %84
      %278 = arith.mulf %cst_3, %cst_0 : f16
      %279 = bufferization.to_memref %19 : memref<7x13xi1>
      %280 = arith.divui %c312423149_i64, %c1383263993_i64 : i64
      %281 = arith.remf %cst_3, %cst_0 : f16
      %282 = tensor.empty(%c12) : tensor<9x?xi16>
      vector.print %41 : vector<16xi64>
      %283 = index.mul %25, %84
      %284 = vector.load %alloc_7[%c6, %c0, %c6] : memref<7x13x13xf16>, vector<13x16xf16>
      %285 = vector.create_mask %87, %75 : vector<13x13xi1>
      %inserted_39 = tensor.insert %c657591761_i64 into %2[%c8, %c1] : tensor<9x9xi64>
      %286 = arith.divsi %c1298902068_i64, %c1383263993_i64 : i64
      %287 = vector.flat_transpose %115 {columns = 7 : i32, rows = 1 : i32} : vector<7xi16> -> vector<7xi16>
      %alloca = memref.alloca() : memref<13x16xf32>
      %288 = math.ceil %1 : tensor<7x13x13xf16>
      %289 = math.ctlz %c22838_i16 : i16
      %290 = vector.insertelement %out, %27[%c5 : index] : vector<7xi1>
      %rank_40 = tensor.rank %8 : tensor<13x16xi1>
      %291 = arith.remf %cst_0, %cst : f16
      %292 = math.rsqrt %1 : tensor<7x13x13xf16>
      %293 = vector.broadcast %out : i1 to vector<i1>
      %294 = vector.transfer_write %293, %8[%62, %c5] : vector<i1>, tensor<13x16xi1>
      %295 = arith.shli %false, %false : i1
      %296 = arith.subi %c12133_i16, %c6231_i16 : i16
      %alloc_41 = memref.alloc() : memref<7x13x13xi16>
      %297 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%c9, %c0, %c7)
      %298 = math.ceil %1 : tensor<7x13x13xf16>
      %299 = math.ctlz %2 : tensor<9x9xi64>
      %300 = arith.mulf %cst_1, %cst : f16
      %301 = affine.load %alloc_8[%c3, %c5, %c6] : memref<7x13x13xi64>
      %302 = index.add %rank_40, %c4
      linalg.yield %in : i1
    } -> tensor<7x13x13xi1>
    %126 = scf.if %false -> (f16) {
      %275 = arith.ceildivsi %false, %false : i1
      %c0_i64 = arith.constant 0 : i64
      %276 = vector.transfer_read %alloc_8[%84, %47, %c7], %c0_i64 : memref<7x13x13xi64>, vector<9xi64>
      %277 = arith.cmpi ne, %c1298902068_i64, %c1383263993_i64 : i64
      %278 = arith.mulf %cst_2, %cst : f16
      %279 = arith.remf %cst_2, %cst_0 : f16
      %280 = index.sizeof
      bufferization.dealloc_tensor %13 : tensor<9x9xi32>
      %281 = vector.reduction <maxf>, %28 : vector<7xf16> into f16
      scf.yield %cst_2 : f16
    } else {
      %275 = affine.for %arg2 = 0 to 47 iter_args(%arg3 = %0) -> (tensor<13x16xi16>) {
        affine.yield %arg3 : tensor<13x16xi16>
      }
      %276 = vector.maskedload %alloc_7[%c0, %c2, %c10], %27, %26 : memref<7x13x13xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
      %277 = scf.if %false -> (memref<13x13xi16>) {
        %283 = math.atan %cst_3 : f16
        %284 = math.log %cst : f16
        %285 = math.exp2 %1 : tensor<7x13x13xf16>
        %286 = arith.mulf %cst, %cst_3 : f16
        %extracted_38 = tensor.extract %13[%c3, %c5] : tensor<9x9xi32>
        %287 = index.maxu %38, %c13
        %288 = arith.xori %c657591761_i64, %c1383263993_i64 : i64
        %289 = arith.shrui %c312423149_i64, %c1383263993_i64 : i64
        %alloc_39 = memref.alloc() : memref<13x13xi16>
        scf.yield %alloc_39 : memref<13x13xi16>
      } else {
        %283 = math.cttz %23 : tensor<i32>
        %284 = tensor.empty() : tensor<13x13xf16>
        %285 = math.exp2 %cst_0 : f16
        %286 = math.log2 %cst_3 : f16
        %rank_38 = tensor.rank %11 : tensor<13x13xi64>
        %287 = vector.flat_transpose %107 {columns = 3 : i32, rows = 3 : i32} : vector<9xi16> -> vector<9xi16>
        %288 = arith.ori %c657591761_i64, %c1298902068_i64 : i64
        %289 = bufferization.to_memref %8 : memref<13x16xi1>
        %alloc_39 = memref.alloc() : memref<13x13xi16>
        scf.yield %alloc_39 : memref<13x13xi16>
      }
      %278 = vector.transpose %45, [0, 1, 2] : vector<7x13x13xi1> to vector<7x13x13xi1>
      %279 = math.floor %cst_3 : f16
      %280 = math.powf %cst_2, %cst_1 : f16
      %281 = tensor.empty(%88) : tensor<13x?xf32>
      %282 = math.exp2 %cst_0 : f16
      scf.yield %cst_0 : f16
    }
    %127 = vector.insertelement %c657591761_i64, %55[%c11 : index] : vector<1xi64>
    %128 = vector.broadcast %88 : index to vector<9xindex>
    %129 = vector.broadcast %c1298902068_i64 : i64 to vector<9xi64>
    vector.scatter %alloc_9[%c8, %c3] [%128], %106, %129 : memref<13x13xi64>, vector<9xindex>, vector<9xi1>, vector<9xi64>
    %true = index.bool.constant true
    %130 = math.log %1 : tensor<7x13x13xf16>
    %131 = arith.ori %c657591761_i64, %c1383263993_i64 : i64
    %alloc_20 = memref.alloc() : memref<13x13xi32>
    memref.tensor_store %56, %alloc_20 : memref<13x13xi32>
    %132 = memref.realloc %alloc_19 : memref<9xi32> to memref<7xi32>
    %133 = index.add %c6, %52
    %inserted_21 = tensor.insert %false into %7[%c1, %c8] : tensor<13x13xi1>
    %alloc_22 = memref.alloc() : memref<13xf16>
    %134 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_7, %alloc_22, %alloc_22 : memref<7x13x13xf16>, memref<13xf16>, memref<13xf16>) outs(%1 : tensor<7x13x13xf16>) {
    ^bb0(%in: f16, %in_38: f16, %in_39: f16, %out: f16):
      %275 = math.copysign %126, %in : f16
      %276 = arith.maxf %cst_0, %out : f16
      %277 = vector.splat %in_39 : vector<13x13xf16>
      %278 = index.castu %c1298902068_i64 : i64 to index
      %cst_40 = arith.constant 1.000000e+00 : f32
      affine.store %cst_40, %alloc_12[%c1, %c6, %c4] : memref<7x13x13xf32>
      %inserted_41 = tensor.insert %c689840241_i32 into %14[%c10, %c9] : tensor<13x13xi32>
      %279 = math.cttz %22 : tensor<i32>
      %280 = scf.execute_region -> memref<13x13xi16> {
        %301 = index.mul %c12, %c12
        %302 = index.add %c2, %25
        %303 = index.maxu %c8, %88
        %304 = math.expm1 %126 : f16
        %305 = arith.xori %c312423149_i64, %c1298902068_i64 : i64
        %306 = tensor.empty() : tensor<9x9xi32>
        %307 = linalg.matmul ins(%13, %13 : tensor<9x9xi32>, tensor<9x9xi32>) outs(%306 : tensor<9x9xi32>) -> tensor<9x9xi32>
        %308 = arith.shrui %c1383263993_i64, %c657591761_i64 : i64
        %309 = math.ipowi %3, %14 : tensor<13x13xi32>
        %310 = tensor.empty() : tensor<9x9xi32>
        %311 = linalg.matmul ins(%5, %5 : tensor<9x9xi32>, tensor<9x9xi32>) outs(%310 : tensor<9x9xi32>) -> tensor<9x9xi32>
        %312 = vector.reduction <minf>, %28 : vector<7xf16> into f16
        %313 = vector.broadcast %false : i1 to vector<9x9xi1>
        %314 = vector.outerproduct %106, %106, %313 {kind = #vector.kind<and>} : vector<9xi1>, vector<9xi1>
        %315 = math.cttz %7 : tensor<13x13xi1>
        %316 = vector.flat_transpose %20 {columns = 4 : i32, rows = 4 : i32} : vector<16xi64> -> vector<16xi64>
        %extracted_44 = tensor.extract %0[%c0, %c15] : tensor<13x16xi16>
        vector.print %100 : vector<13x16xi1>
        %317 = arith.andi %c1383263993_i64, %c657591761_i64 : i64
        %alloc_45 = memref.alloc() : memref<13x13xi16>
        scf.yield %alloc_45 : memref<13x13xi16>
      }
      %281 = math.cttz %c657591761_i64 : i64
      %282 = math.cos %cst_1 : f16
      vector.print %80 : vector<1xi64>
      %283 = index.mul %c9, %c3
      %284 = math.floor %in_38 : f16
      %285 = math.copysign %126, %126 : f16
      %286 = arith.ori %c12133_i16, %c6231_i16 : i16
      %287 = math.cttz %18 : tensor<13x13xi1>
      %288 = index.sizeof
      %extracted_42 = tensor.extract %23[] : tensor<i32>
      %289 = vector.insert %c1298902068_i64, %55 [0] : i64 into vector<1xi64>
      %290 = arith.cmpi ne, %false, %true : i1
      %291 = scf.index_switch %47 -> tensor<13x16xf16> 
      case 1 {
        %301 = math.roundeven %cst_2 : f16
        %302 = math.cttz %15 : tensor<13x13xi64>
        %alloc_44 = memref.alloc() : memref<13x16xf32>
        %303 = index.maxs %288, %c8
        %304 = index.ceildivs %113, %c7
        %305 = vector.insertelement %c1298902068_i64, %20[%62 : index] : vector<16xi64>
        %306 = memref.realloc %alloc_19 : memref<9xi32> to memref<7xi32>
        %c1409656144_i64 = arith.constant 1409656144 : i64
        %inserted_45 = tensor.insert %c1298902068_i64 into %11[%c1, %c8] : tensor<13x13xi64>
        %307 = arith.negf %126 : f16
        %308 = math.log1p %cst_3 : f16
        %309 = vector.broadcast %c677221256_i32 : i32 to vector<13xi32>
        %310 = vector.maskedload %alloc[%c2, %c3, %c3], %65, %309 : memref<7x13x13xi32>, vector<13xi1>, vector<13xi32> into vector<13xi32>
        %311 = affine.min affine_map<(d0, d1, d2) -> ((d0 ceildiv 8 + 16) * 2, d2 * -4, d1, (d0 ceildiv 8 + 16) * 2)>(%303, %c14, %c3)
        %312 = vector.insert %true, %27 [3] : i1 into vector<7xi1>
        vector.print %20 : vector<16xi64>
        %313 = index.divu %c1, %46
        %314 = tensor.empty() : tensor<13x16xf16>
        scf.yield %314 : tensor<13x16xf16>
      }
      default {
        %301 = index.divs %c0, %133
        %302 = memref.load %alloc_17[%c6, %c5] : memref<13x16xi16>
        %303 = bufferization.to_tensor %alloc_9 : memref<13x13xi64>
        %304 = arith.subi %c657591761_i64, %c1383263993_i64 : i64
        %305 = math.cttz %10 : tensor<7x13x13xi1>
        %inserted_44 = tensor.insert %false into %18[%c0, %c0] : tensor<13x13xi1>
        %306 = arith.andi %c6231_i16, %c6231_i16 : i16
        %307 = index.maxu %c13, %c9
        %308 = math.cos %cst_40 : f32
        %309 = math.absf %cst : f16
        %alloc_45 = memref.alloc() : memref<9x9xf32>
        %310 = math.exp2 %out : f16
        %311 = math.cttz %9 : tensor<13x16xi64>
        affine.store %cst_2, %alloc_11[%c11, %c13] : memref<13x16xf16>
        %312 = arith.shli %c12133_i16, %c12133_i16 : i16
        %313 = index.floordivs %c9, %c7
        %314 = tensor.empty() : tensor<13x16xf16>
        scf.yield %314 : tensor<13x16xf16>
      }
      %292 = memref.realloc %alloc_19 : memref<9xi32> to memref<7xi32>
      %293 = math.cttz %81 : tensor<13x13xi1>
      %294 = arith.ori %c312423149_i64, %c1383263993_i64 : i64
      %295 = arith.shli %c312423149_i64, %c1298902068_i64 : i64
      %296 = vector.extract_strided_slice %102 {offsets = [4], sizes = [6], strides = [1]} : vector<13x16xi1> to vector<6x16xi1>
      %297 = vector.broadcast %c657591761_i64 : i64 to vector<9x9xi64>
      %extracted_43 = tensor.extract %17[%c10, %c8] : tensor<13x16xi1>
      scf.if %extracted_43 {
        %301 = math.tan %in_38 : f16
        %302 = arith.maxui %c689840241_i32, %extracted_42 : i32
        %303 = vector.transpose %41, [0] : vector<16xi64> to vector<16xi64>
        %304 = arith.remui %c6231_i16, %c12133_i16 : i16
        %305 = math.ceil %out : f16
        %306 = math.log2 %126 : f16
        %307 = arith.floordivsi %c12133_i16, %c22838_i16 : i16
        %308 = math.absf %cst_0 : f16
      } else {
        %301 = arith.andi %c689840241_i32, %c833211059_i32 : i32
        %302 = math.expm1 %out : f16
        %alloca = memref.alloca() : memref<13x13xi16>
        %303 = arith.andi %extracted_42, %c677221256_i32 : i32
        %304 = arith.maxsi %extracted_42, %extracted_42 : i32
        %305 = index.mul %c9, %113
        %306 = arith.ori %false, %true : i1
        %307 = arith.floordivsi %false, %extracted_43 : i1
      }
      %298 = math.log2 %1 : tensor<7x13x13xf16>
      %299 = index.add %25, %29
      %300 = math.ctpop %c12133_i16 : i16
      linalg.yield %out : f16
    } -> tensor<7x13x13xf16>
    %135 = vector.broadcast %c312423149_i64 : i64 to vector<1x1xi64>
    %136 = vector.outerproduct %80, %55, %135 {kind = #vector.kind<and>} : vector<1xi64>, vector<1xi64>
    %137 = bufferization.to_memref %6 : memref<13x13xi16>
    %138 = arith.remf %126, %cst_1 : f16
    %139 = vector.insert %c1298902068_i64, %20 [10] : i64 into vector<16xi64>
    %140 = math.ctpop %true : i1
    %141 = index.casts %c689840241_i32 : i32 to index
    %142 = arith.subi %c6231_i16, %c12133_i16 : i16
    %alloc_23 = memref.alloc() : memref<13x13xf16>
    %143 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_23, %alloc_23, %alloc_23 : memref<13x13xf16>, memref<13x13xf16>, memref<13x13xf16>) outs(%1 : tensor<7x13x13xf16>) {
    ^bb0(%in: f16, %in_38: f16, %in_39: f16, %out: f16):
      %275 = math.absf %in : f16
      %276 = arith.subi %c12133_i16, %c12133_i16 : i16
      vector.print %26 : vector<7xf16>
      %277 = math.roundeven %out : f16
      %278 = bufferization.to_tensor %alloc_17 : memref<13x16xi16>
      memref.tensor_store %8, %alloc_13 : memref<13x16xi1>
      %279 = arith.remf %in, %cst_3 : f16
      %280 = vector.transpose %106, [0] : vector<9xi1> to vector<9xi1>
      %281 = math.rsqrt %in : f16
      %282 = affine.min affine_map<(d0) -> (d0 mod 16 + d0 mod 2, (d0 mod 2) * 16 + 64)>(%c9)
      %283 = math.log2 %1 : tensor<7x13x13xf16>
      %284 = arith.shli %c12133_i16, %c22838_i16 : i16
      %285 = arith.shrui %c6231_i16, %c12133_i16 : i16
      %286 = arith.xori %c657591761_i64, %c1298902068_i64 : i64
      %287 = vector.shuffle %45, %45 [4, 7, 8, 9, 13] : vector<7x13x13xi1>, vector<7x13x13xi1>
      scf.index_switch %c7 
      case 1 {
        %304 = math.ctpop %8 : tensor<13x16xi1>
        %305 = arith.cmpi ne, %c12133_i16, %c6231_i16 : i16
        %alloc_40 = memref.alloc() : memref<16x9xi32>
        %306 = tensor.empty() : tensor<13x9xi32>
        %307 = linalg.matmul ins(%12, %alloc_40 : tensor<13x16xi32>, memref<16x9xi32>) outs(%306 : tensor<13x9xi32>) -> tensor<13x9xi32>
        %308 = math.powf %cst, %cst_0 : f16
        %309 = math.log1p %cst_3 : f16
        %310 = tensor.empty(%141) : tensor<13x?xi64>
        %alloca = memref.alloca() : memref<13x13xi32>
        %311 = index.maxu %87, %c8
        %312 = index.maxu %c13, %c14
        %313 = arith.remf %in_38, %cst_3 : f16
        %314 = arith.xori %c312423149_i64, %c657591761_i64 : i64
        %315 = index.divu %113, %c7
        %316 = vector.load %alloc_13[%c2, %c11] : memref<13x16xi1>, vector<13x13xi1>
        %317 = arith.remui %c833211059_i32, %c689840241_i32 : i32
        %318 = vector.broadcast %c12133_i16 : i16 to vector<9x9xi16>
        %319 = vector.broadcast %false : i1 to vector<9x9xi1>
        %320 = vector.broadcast %c689840241_i32 : i32 to vector<9x9xi32>
        %321 = vector.gather %137[%62, %315] [%320], %319, %318 : memref<13x13xi16>, vector<9x9xi32>, vector<9x9xi1>, vector<9x9xi16> into vector<9x9xi16>
        %322 = arith.minsi %c312423149_i64, %c657591761_i64 : i64
        scf.yield
      }
      default {
        %304 = arith.cmpi sge, %true, %true : i1
        %305 = math.ctpop %12 : tensor<13x16xi32>
        %306 = memref.load %alloc_12[%c6, %c4, %c10] : memref<7x13x13xf32>
        %cast_40 = tensor.cast %13 : tensor<9x9xi32> to tensor<?x?xi32>
        %307 = math.round %in_38 : f16
        %308 = vector.broadcast %cst_1 : f16 to vector<7x7xf16>
        %309 = vector.outerproduct %26, %26, %308 {kind = #vector.kind<maxf>} : vector<7xf16>, vector<7xf16>
        %310 = index.floordivs %c0, %c5
        %311 = index.sizeof
        %312 = math.floor %cst_3 : f16
        %313 = math.expm1 %cst_0 : f16
        %314 = vector.broadcast %113 : index to vector<7xindex>
        vector.scatter %alloc_5[%c0, %c2, %c7] [%314], %27, %115 : memref<7x13x13xi16>, vector<7xindex>, vector<7xi1>, vector<7xi16>
        %315 = arith.muli %c833211059_i32, %c833211059_i32 : i32
        %alloc_41 = memref.alloc() : memref<13x13xi1>
        memref.tensor_store %7, %alloc_41 : memref<13x13xi1>
        %alloc_42 = memref.alloc() : memref<9x9xi32>
        memref.copy %alloc_16, %alloc_42 : memref<9x9xi32> to memref<9x9xi32>
        %316 = math.floor %in_39 : f16
        %317 = memref.realloc %alloc_19 : memref<9xi32> to memref<7xi32>
      }
      %288 = scf.if %false -> (i16) {
        %304 = affine.load %alloc_9[%c2, %c14] : memref<13x13xi64>
        %305 = arith.shrui %c22838_i16, %c12133_i16 : i16
        %306 = arith.shrui %c12133_i16, %c6231_i16 : i16
        %307 = index.casts %c0 : index to i32
        %308 = index.divs %c2, %c13
        %309 = arith.remf %cst, %cst_1 : f16
        %cst_40 = arith.constant 9.152000e+03 : f16
        %310 = math.rsqrt %out : f16
        scf.yield %c12133_i16 : i16
      } else {
        %304 = math.ctlz %c677221256_i32 : i32
        %305 = memref.atomic_rmw ori %c1383263993_i64, %alloc_10[%c3, %c4, %c5] : (i64, memref<7x13x13xi64>) -> i64
        %306 = affine.min affine_map<(d0) -> (-d0 + (d0 ceildiv 16) floordiv 32, ((-d0) floordiv 32) ceildiv 8)>(%c0)
        %307 = index.castu %c1298902068_i64 : i64 to index
        %308 = math.copysign %cst_2, %cst : f16
        %309 = index.maxs %113, %c10
        %310 = index.add %38, %c7
        %311 = arith.divui %c12133_i16, %c22838_i16 : i16
        scf.yield %c12133_i16 : i16
      }
      %289 = vector.create_mask %c7, %c15 : vector<13x16xi1>
      %290 = vector.broadcast %c657591761_i64 : i64 to vector<9x9xi64>
      %291 = vector.reduction <minui>, %27 : vector<7xi1> into i1
      %292 = vector.extract_strided_slice %27 {offsets = [1], sizes = [2], strides = [1]} : vector<7xi1> to vector<2xi1>
      %293 = vector.bitcast %55 : vector<1xi64> to vector<1xi64>
      %294 = index.add %25, %c14
      %295 = arith.cmpi ult, %c1298902068_i64, %c1298902068_i64 : i64
      %296 = tensor.empty() : tensor<7x13x13xi32>
      %mapped = linalg.map ins(%alloc : memref<7x13x13xi32>) outs(%296 : tensor<7x13x13xi32>)
        (%in_40: i32) {
          %304 = affine.min affine_map<(d0, d1, d2, d3) -> ((d1 - d3) * 128, d1 - d3 - d0, d0, d2 - 112)>(%c1, %c15, %141, %c9)
          %305 = math.fpowi %out, %in_40 : f16, i32
          %306 = math.absf %1 : tensor<7x13x13xf16>
          %307 = arith.maxsi %c677221256_i32, %c677221256_i32 : i32
          %308 = tensor.empty() : tensor<9x9xi32>
          %309 = linalg.matmul ins(%5, %5 : tensor<9x9xi32>, tensor<9x9xi32>) outs(%308 : tensor<9x9xi32>) -> tensor<9x9xi32>
          %cst_41 = arith.constant 1.000000e+00 : f32
          %310 = vector.broadcast %cst_41 : f32 to vector<9x13xf32>
          vector.transfer_write %310, %111[%84, %29, %c2] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<9x13xf32>, memref<7x13x13xf32>
          %311 = arith.divsi %c677221256_i32, %c677221256_i32 : i32
          %312 = arith.cmpf one, %out, %in : f16
          %313 = memref.load %alloc_11[%c12, %c15] : memref<13x16xf16>
          %314 = math.powf %126, %in_38 : f16
          %315 = vector.multi_reduction <or>, %106, %106 [] : vector<9xi1> to vector<9xi1>
          %316 = arith.divsi %c689840241_i32, %in_40 : i32
          %317 = vector.broadcast %c312423149_i64 : i64 to vector<13x16xi64>
          %318 = arith.shli %c312423149_i64, %c312423149_i64 : i64
          %319 = vector.bitcast %107 : vector<9xi16> to vector<9xi16>
          %320 = affine.apply affine_map<(d0, d1) -> (d1 floordiv 2)>(%c14, %47)
          %321 = arith.remf %cst, %cst_2 : f16
          %322 = index.maxs %47, %87
          %323 = arith.maxf %in_38, %in_39 : f16
          %324 = vector.matrix_multiply %106, %292 {lhs_columns = 1 : i32, lhs_rows = 9 : i32, rhs_columns = 2 : i32} : (vector<9xi1>, vector<2xi1>) -> vector<18xi1>
          %325 = arith.minf %cst_0, %cst_1 : f16
          %326 = vector.transpose %100, [0, 1] : vector<13x16xi1> to vector<13x16xi1>
          %327 = index.casts %141 : index to i32
          %cast_42 = tensor.cast %3 : tensor<13x13xi32> to tensor<?x?xi32>
          %328 = tensor.empty() : tensor<13x16xi64>
          %329 = index.sizeof
          %330 = index.sizeof
          %331 = math.log1p %126 : f16
          %cast_43 = tensor.cast %23 : tensor<i32> to tensor<i32>
          %332 = affine.load %alloc_15[%c15, %c11, %c9] : memref<7x13x13xi64>
          %expanded = tensor.expand_shape %2 [[0], [1, 2]] : tensor<9x9xi64> into tensor<9x9x1xi64>
          %333 = index.maxu %47, %c14
          %c1_i32 = arith.constant 1 : i32
          linalg.yield %c1_i32 : i32
        }
      %297 = index.divu %88, %75
      %298 = affine.load %alloc_8[%c3, %c10, %c7] : memref<7x13x13xi64>
      %299 = index.maxu %25, %c0
      %300 = math.absf %cst : f16
      %301 = memref.realloc %alloc_19 : memref<9xi32> to memref<16xi32>
      %302 = math.ctpop %15 : tensor<13x13xi64>
      %303 = vector.multi_reduction <and>, %292, %true [0] : vector<2xi1> to i1
      linalg.yield %126 : f16
    } -> tensor<7x13x13xf16>
    %144 = arith.remsi %c12133_i16, %c22838_i16 : i16
    %145 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 + 16, d0)>(%113, %84, %c14, %c13)
    %146 = affine.load %alloc_18[%c4, %c2, %c0] : memref<7x13x13xf32>
    %147 = vector.reduction <or>, %55 : vector<1xi64> into i64
    %148 = vector.create_mask %87, %113 : vector<13x13xi1>
    %149 = index.floordivs %c1, %46
    %150 = vector.reduction <maxui>, %55 : vector<1xi64> into i64
    %151 = vector.bitcast %80 : vector<1xi64> to vector<1xi64>
    %alloc_24 = memref.alloc() : memref<13x16xi1>
    memref.copy %alloc_13, %alloc_24 : memref<13x16xi1> to memref<13x16xi1>
    %152 = math.fpowi %cst, %c689840241_i32 : f16, i32
    %153 = vector.insertelement %c22838_i16, %107[%c5 : index] : vector<9xi16>
    %154 = arith.remf %146, %146 : f32
    %155 = math.atan %cst_0 : f16
    %156 = arith.andi %c833211059_i32, %c689840241_i32 : i32
    %157 = index.sizeof
    %158 = math.log %cst_3 : f16
    %159 = arith.andi %c6231_i16, %c22838_i16 : i16
    memref.tensor_store %4, %alloc_13 : memref<13x16xi1>
    %160 = vector.insertelement %false, %27[%c3 : index] : vector<7xi1>
    %inserted_25 = tensor.insert %true into %81[%c10, %c8] : tensor<13x13xi1>
    %161 = vector.transpose %106, [0] : vector<9xi1> to vector<9xi1>
    %162 = affine.load %alloc_17[%c2, %c7] : memref<13x16xi16>
    %163 = vector.shuffle %26, %26 [0, 1, 3, 5, 6, 7, 8, 9, 12] : vector<7xf16>, vector<7xf16>
    %164 = vector.flat_transpose %20 {columns = 4 : i32, rows = 4 : i32} : vector<16xi64> -> vector<16xi64>
    %165 = arith.remf %cst_0, %cst_3 : f16
    %cast = tensor.cast %21 : tensor<9xi32> to tensor<?xi32>
    %166 = math.fpowi %cst_2, %c677221256_i32 : f16, i32
    %167 = math.ctpop %22 : tensor<i32>
    %168 = index.sizeof
    %169 = arith.mulf %cst_3, %cst_3 : f16
    %170 = arith.shrui %c657591761_i64, %c657591761_i64 : i64
    %171 = vector.create_mask %38, %86 : vector<13x16xi1>
    %172 = index.divu %133, %157
    %c1_i16 = arith.constant 1 : i16
    %173 = vector.transfer_read %0[%29, %168], %c1_i16 : tensor<13x16xi16>, vector<13xi16>
    %174 = math.powf %cst_0, %cst_2 : f16
    %175 = math.expm1 %1 : tensor<7x13x13xf16>
    %176 = scf.if %true -> (memref<7x13x13xi32>) {
      %inserted_38 = tensor.insert %c833211059_i32 into %12[%c7, %c13] : tensor<13x16xi32>
      %275 = math.copysign %cst_3, %cst_2 : f16
      %276 = vector.flat_transpose %151 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
      %277 = index.mul %c3, %149
      %278 = arith.cmpf ogt, %cst_3, %cst_1 : f16
      %279 = arith.cmpf one, %cst_2, %cst : f16
      %280 = vector.bitcast %26 : vector<7xf16> to vector<7xf16>
      %281 = arith.remf %cst_0, %cst_2 : f16
      scf.yield %alloc : memref<7x13x13xi32>
    } else {
      %275 = math.roundeven %cst_1 : f16
      %276 = vector.flat_transpose %20 {columns = 4 : i32, rows = 4 : i32} : vector<16xi64> -> vector<16xi64>
      %277 = vector.broadcast %c312423149_i64 : i64 to vector<16x16xi64>
      %278 = vector.outerproduct %164, %164, %277 {kind = #vector.kind<or>} : vector<16xi64>, vector<16xi64>
      %279 = scf.index_switch %c13 -> vector<13x16xi32> 
      case 1 {
        %284 = vector.insert %false, %106 [4] : i1 into vector<9xi1>
        %285 = math.absi %c1_i16 : i16
        %286 = index.maxu %86, %172
        %287 = index.ceildivs %172, %c7
        %inserted_39 = tensor.insert %true into %8[%c2, %c6] : tensor<13x16xi1>
        %288 = memref.load %alloc_12[%c5, %c12, %c6] : memref<7x13x13xf32>
        %289 = index.sizeof
        %290 = index.sizeof
        %expanded = tensor.expand_shape %6 [[0], [1, 2]] : tensor<13x13xi16> into tensor<13x13x1xi16>
        %291 = arith.maxsi %c22838_i16, %c12133_i16 : i16
        %292 = tensor.empty() : tensor<16x9xi32>
        %293 = tensor.empty() : tensor<13x9xi32>
        %294 = linalg.matmul ins(%12, %292 : tensor<13x16xi32>, tensor<16x9xi32>) outs(%293 : tensor<13x9xi32>) -> tensor<13x9xi32>
        %295 = math.absi %c312423149_i64 : i64
        %296 = vector.broadcast %false : i1 to vector<9x9xi1>
        %297 = vector.broadcast %c677221256_i32 : i32 to vector<9x9xi32>
        %298 = vector.gather %alloc_13[%46, %168] [%297], %296, %296 : memref<13x16xi1>, vector<9x9xi32>, vector<9x9xi1>, vector<9x9xi1> into vector<9x9xi1>
        %299 = vector.splat %290 : vector<13x16xindex>
        %300 = arith.divui %c312423149_i64, %c1298902068_i64 : i64
        %301 = index.sub %157, %c3
        scf.yield %101 : vector<13x16xi32>
      }
      default {
        %284 = vector.broadcast %c677221256_i32 : i32 to vector<i32>
        vector.transfer_write %284, %alloc_16[%c12, %149] : vector<i32>, memref<9x9xi32>
        %285 = arith.divui %c312423149_i64, %c1383263993_i64 : i64
        %286 = vector.matrix_multiply %151, %276 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 16 : i32} : (vector<1xi64>, vector<16xi64>) -> vector<16xi64>
        %287 = vector.broadcast %c677221256_i32 : i32 to vector<7x13x13xi32>
        %288 = math.ctpop %8 : tensor<13x16xi1>
        %289 = vector.transpose %55, [0] : vector<1xi64> to vector<1xi64>
        %290 = math.ctpop %4 : tensor<13x16xi1>
        %291 = math.ctlz %c1383263993_i64 : i64
        %292 = math.floor %126 : f16
        %293 = arith.minf %cst, %cst : f16
        %294 = vector.extract_strided_slice %148 {offsets = [0], sizes = [9], strides = [1]} : vector<13x13xi1> to vector<9x13xi1>
        %295 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %148, %148, %148 : vector<13x13xi1>, vector<13x13xi1> into vector<13x13xi1>
        %inserted_39 = tensor.insert %c677221256_i32 into %12[%c10, %c5] : tensor<13x16xi32>
        %296 = index.add %c2, %c1
        %297 = arith.andi %162, %162 : i16
        %298 = tensor.empty(%86) : tensor<13x?xi32>
        scf.yield %101 : vector<13x16xi32>
      }
      %false_38 = arith.constant false
      %280 = vector.transfer_read %81[%133, %c10], %false_38 : tensor<13x13xi1>, vector<7xi1>
      %281 = math.absf %cst_3 : f16
      %282 = arith.divsi %false_38, %false_38 : i1
      %283 = arith.andi %162, %162 : i16
      scf.yield %alloc_6 : memref<7x13x13xi32>
    }
    %177 = arith.xori %c677221256_i32, %c833211059_i32 : i32
    %178 = arith.cmpf false, %146, %146 : f32
    %179 = math.absf %146 : f32
    %180 = vector.bitcast %108 : vector<9x9xi64> to vector<9x9xi64>
    %181 = math.absf %cst_0 : f16
    %182 = math.log1p %126 : f16
    %183 = vector.shuffle %20, %164 [6, 8, 9, 10, 13, 15, 16, 17, 18, 19, 21, 22, 24, 27] : vector<16xi64>, vector<16xi64>
    %184 = vector.shuffle %28, %26 [0, 3, 7, 11, 12] : vector<7xf16>, vector<7xf16>
    %185 = math.rsqrt %1 : tensor<7x13x13xf16>
    %186 = index.casts %c1383263993_i64 : i64 to index
    %187 = bufferization.to_tensor %alloc_7 : memref<7x13x13xf16>
    %188 = tensor.empty() : tensor<7x13x13xf32>
    memref.assume_alignment %alloc_15, 2 : memref<7x13x13xi64>
    bufferization.dealloc_tensor %14 : tensor<13x13xi32>
    %189 = arith.andi %c689840241_i32, %c677221256_i32 : i32
    %190 = affine.min affine_map<(d0, d1, d2, d3) -> (d2)>(%c5, %88, %84, %29)
    %191 = math.ctpop %23 : tensor<i32>
    %192 = index.maxu %168, %c14
    %193 = arith.cmpf false, %126, %126 : f16
    %194 = arith.divsi %c12133_i16, %162 : i16
    %inserted_26 = tensor.insert %false into %7[%c7, %c12] : tensor<13x13xi1>
    %195 = math.floor %188 : tensor<7x13x13xf32>
    %196 = tensor.empty(%c15, %29) : tensor<?x13x?xi16>
    %197 = math.absf %1 : tensor<7x13x13xf16>
    %198 = arith.maxsi %c12133_i16, %c6231_i16 : i16
    %199 = math.cttz %8 : tensor<13x16xi1>
    %200 = vector.maskedload %alloc_13[%c12, %c15], %27, %27 : memref<13x16xi1>, vector<7xi1>, vector<7xi1> into vector<7xi1>
    %201 = affine.load %alloc_4[%c12, %c0] : memref<9x9xf16>
    %202 = math.ctpop %16 : tensor<13x16xi1>
    %203 = vector.broadcast %c1298902068_i64 : i64 to vector<i64>
    %204 = vector.transfer_write %203, %11[%c3, %157] : vector<i64>, tensor<13x13xi64>
    %205 = bufferization.to_memref %22 : memref<i32>
    %206 = scf.if %false -> (memref<9x9xf32>) {
      %expanded = tensor.expand_shape %0 [[0], [1, 2]] : tensor<13x16xi16> into tensor<13x16x1xi16>
      %275 = math.absi %7 : tensor<13x13xi1>
      %276 = index.divu %46, %c5
      %277 = math.log2 %cst : f16
      %278 = arith.ceildivsi %c1_i16, %162 : i16
      %279 = arith.maxf %126, %cst_2 : f16
      %280 = math.round %cst_3 : f16
      %281 = math.log1p %cst : f16
      %alloc_38 = memref.alloc() : memref<9x9xf32>
      scf.yield %alloc_38 : memref<9x9xf32>
    } else {
      %275 = math.copysign %cst, %cst_2 : f16
      %276 = index.add %88, %c0
      %277 = math.copysign %1, %187 : tensor<7x13x13xf16>
      %278 = affine.for %arg2 = 0 to 107 iter_args(%arg3 = %192) -> (index) {
        affine.yield %c15 : index
      }
      %279 = vector.matrix_multiply %107, %115 {lhs_columns = 1 : i32, lhs_rows = 9 : i32, rhs_columns = 7 : i32} : (vector<9xi16>, vector<7xi16>) -> vector<63xi16>
      %280 = vector.broadcast %true : i1 to vector<16x16xi1>
      %281 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %100, %171, %280 : vector<13x16xi1>, vector<13x16xi1> into vector<16x16xi1>
      %282 = vector.matrix_multiply %55, %55 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
      %283 = affine.load %alloc_7[%c9, %c4, %c1] : memref<7x13x13xf16>
      %alloc_38 = memref.alloc() : memref<9x9xf32>
      scf.yield %alloc_38 : memref<9x9xf32>
    }
    %207 = vector.flat_transpose %164 {columns = 4 : i32, rows = 4 : i32} : vector<16xi64> -> vector<16xi64>
    %208 = arith.ori %false, %false : i1
    %209 = arith.remsi %c1298902068_i64, %c312423149_i64 : i64
    %210 = index.maxs %38, %38
    %211 = arith.ceildivsi %c1_i16, %c1_i16 : i16
    %212 = math.rsqrt %188 : tensor<7x13x13xf32>
    %alloc_27 = memref.alloc() : memref<13x16xi64>
    memref.tensor_store %9, %alloc_27 : memref<13x16xi64>
    memref.tensor_store %1, %alloc_7 : memref<7x13x13xf16>
    %213 = arith.maxsi %c22838_i16, %162 : i16
    %214 = affine.apply affine_map<(d0) -> ((d0 floordiv 8) ceildiv 2)>(%c6)
    %215 = arith.remf %201, %cst : f16
    %216 = arith.minsi %c689840241_i32, %c689840241_i32 : i32
    %extracted = tensor.extract %0[%c5, %c11] : tensor<13x16xi16>
    %217 = math.log1p %188 : tensor<7x13x13xf32>
    %218 = index.floordivs %c14, %c10
    %rank = tensor.rank %0 : tensor<13x16xi16>
    %inserted_28 = tensor.insert %c312423149_i64 into %11[%c3, %c9] : tensor<13x13xi64>
    %219 = vector.bitcast %27 : vector<7xi1> to vector<7xi1>
    scf.if %true {
      %275 = vector.load %alloc_6[%c4, %c10, %c10] : memref<7x13x13xi32>, vector<13x16xi32>
      %276 = arith.divui %c1_i16, %extracted : i16
      %277 = tensor.empty() : tensor<7xi1>
      %278 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%277 : tensor<7xi1>) outs(%10 : tensor<7x13x13xi1>) {
      ^bb0(%in: i1, %out: i1):
        %283 = index.divu %52, %75
        %284 = memref.realloc %alloc_19 : memref<9xi32> to memref<13xi32>
        %285 = math.round %cst_0 : f16
        %286 = vector.load %alloc_6[%c0, %c8, %c0] : memref<7x13x13xi32>, vector<13x16xi32>
        %287 = arith.cmpf ugt, %146, %146 : f32
        %288 = vector.transpose %26, [0] : vector<7xf16> to vector<7xf16>
        %alloc_39 = memref.alloc() : memref<7x13x13xi1>
        %289 = index.ceildivs %283, %46
        %290 = math.log1p %cst_2 : f16
        %291 = math.cttz %56 : tensor<13x13xi32>
        %292 = math.copysign %cst_2, %cst_3 : f16
        %293 = vector.create_mask %87, %c4, %87 : vector<7x13x13xi1>
        %294 = arith.maxsi %c1_i16, %c12133_i16 : i16
        %cast_40 = tensor.cast %13 : tensor<9x9xi32> to tensor<?x?xi32>
        memref.assume_alignment %alloc_19, 2 : memref<9xi32>
        %295 = math.exp %1 : tensor<7x13x13xf16>
        %296 = index.divu %86, %c4
        %297 = math.ctlz %18 : tensor<13x13xi1>
        %298 = vector.insert %c312423149_i64, %41 [0] : i64 into vector<16xi64>
        %true_41 = index.bool.constant true
        memref.tensor_store %4, %alloc_13 : memref<13x16xi1>
        %299 = vector.broadcast %296 : index to vector<13xindex>
        %300 = vector.broadcast %c689840241_i32 : i32 to vector<13xi32>
        vector.scatter %176[%c3, %c8, %c10] [%299], %65, %300 : memref<7x13x13xi32>, vector<13xindex>, vector<13xi1>, vector<13xi32>
        %301 = math.ceil %188 : tensor<7x13x13xf32>
        %302 = arith.remf %146, %146 : f32
        %303 = math.ipowi %9, %9 : tensor<13x16xi64>
        %304 = arith.remsi %c1_i16, %c12133_i16 : i16
        %305 = math.fpowi %cst_2, %c833211059_i32 : f16, i32
        %306 = arith.remf %201, %201 : f16
        %307 = arith.shli %c657591761_i64, %c1383263993_i64 : i64
        %308 = math.atan %126 : f16
        %309 = vector.broadcast %c12133_i16 : i16 to vector<7x7xi16>
        %310 = vector.outerproduct %115, %115, %309 {kind = #vector.kind<xor>} : vector<7xi16>, vector<7xi16>
        %311 = arith.cmpi ugt, %c312423149_i64, %c1298902068_i64 : i64
        linalg.yield %false : i1
      } -> tensor<7x13x13xi1>
      %279 = math.log2 %188 : tensor<7x13x13xf32>
      %rank_38 = tensor.rank %15 : tensor<13x13xi64>
      %280 = tensor.empty() : tensor<13x13xi32>
      %281 = linalg.matmul ins(%14, %14 : tensor<13x13xi32>, tensor<13x13xi32>) outs(%280 : tensor<13x13xi32>) -> tensor<13x13xi32>
      %282 = math.copysign %cst_1, %201 : f16
      scf.if %true {
        %283 = arith.cmpi ule, %c12133_i16, %c6231_i16 : i16
        %284 = tensor.empty() : tensor<9x9xi1>
        %285 = vector.broadcast %c22838_i16 : i16 to vector<7x7xi16>
        %286 = vector.outerproduct %115, %115, %285 {kind = #vector.kind<minui>} : vector<7xi16>, vector<7xi16>
        %287 = vector.load %alloc_16[%c4, %c1] : memref<9x9xi32>, vector<13x16xi32>
        %288 = vector.extract_strided_slice %171 {offsets = [9], sizes = [4], strides = [1]} : vector<13x16xi1> to vector<4x16xi1>
        %289 = math.log1p %126 : f16
        %290 = math.expm1 %188 : tensor<7x13x13xf32>
        %291 = arith.shli %c12133_i16, %162 : i16
      }
    } else {
      %275 = math.copysign %1, %1 : tensor<7x13x13xf16>
      %276 = index.add %145, %84
      %277 = affine.apply affine_map<(d0, d1, d2) -> (d2)>(%c5, %38, %c3)
      %278 = tensor.empty() : tensor<13x16xi1>
      %279 = linalg.matmul ins(%81, %4 : tensor<13x13xi1>, tensor<13x16xi1>) outs(%278 : tensor<13x16xi1>) -> tensor<13x16xi1>
      %280 = arith.remsi %c677221256_i32, %c833211059_i32 : i32
      %281 = memref.realloc %alloc_19 : memref<9xi32> to memref<13xi32>
      %282 = bufferization.to_memref %10 : memref<7x13x13xi1>
      %283 = arith.cmpi slt, %c677221256_i32, %c689840241_i32 : i32
    }
    %220 = math.rsqrt %1 : tensor<7x13x13xf16>
    %221 = math.cttz %0 : tensor<13x16xi16>
    %222 = math.absf %cst_3 : f16
    %223 = math.ceil %126 : f16
    %extracted_29 = tensor.extract %16[%c7, %c1] : tensor<13x16xi1>
    %224 = math.copysign %187, %1 : tensor<7x13x13xf16>
    %225 = arith.remf %cst_3, %cst_3 : f16
    %226 = vector.insert %c12133_i16, %115 [6] : i16 into vector<7xi16>
    %227 = vector.flat_transpose %105 {columns = 3 : i32, rows = 3 : i32} : vector<9xi16> -> vector<9xi16>
    %228 = memref.atomic_rmw maxf %cst_2, %alloc_4[%c1, %c6] : (f16, memref<9x9xf16>) -> f16
    %229 = vector.matrix_multiply %200, %65 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 13 : i32} : (vector<7xi1>, vector<13xi1>) -> vector<91xi1>
    %230 = math.log1p %cst_2 : f16
    %extracted_30 = tensor.extract %14[%c6, %c1] : tensor<13x13xi32>
    %231 = math.cttz %16 : tensor<13x16xi1>
    %232 = affine.if affine_set<(d0, d1) : (-64 >= 0, d0 == 0)>(%c10, %c0) -> memref<7x13x13xi64> {
      %275 = index.mul %c13, %c8
      %276 = tensor.empty() : tensor<13x16xi16>
      %277 = linalg.matmul ins(%6, %0 : tensor<13x13xi16>, tensor<13x16xi16>) outs(%276 : tensor<13x16xi16>) -> tensor<13x16xi16>
      bufferization.dealloc_tensor %12 : tensor<13x16xi32>
      %278 = vector.extract_strided_slice %229 {offsets = [8], sizes = [20], strides = [1]} : vector<91xi1> to vector<20xi1>
      %279 = arith.cmpi eq, %c677221256_i32, %extracted_30 : i32
      %280 = memref.load %alloc_13[%c10, %c0] : memref<13x16xi1>
      %281 = arith.muli %c689840241_i32, %c689840241_i32 : i32
      %alloc_38 = memref.alloc() : memref<13x16xi32>
      %282 = vector.gather %alloc_38[%86, %186] [%101], %100, %101 : memref<13x16xi32>, vector<13x16xi32>, vector<13x16xi1>, vector<13x16xi32> into vector<13x16xi32>
      affine.yield %alloc_10 : memref<7x13x13xi64>
    } else {
      %275 = math.ceil %146 : f32
      %276 = arith.ceildivsi %c833211059_i32, %c833211059_i32 : i32
      %277 = math.ceil %cst_2 : f16
      %278 = math.ipowi %4, %4 : tensor<13x16xi1>
      %279 = math.atan %188 : tensor<7x13x13xf32>
      %280 = arith.shli %c657591761_i64, %c1298902068_i64 : i64
      %281 = arith.remf %cst_2, %cst_1 : f16
      %282 = math.rsqrt %cst_0 : f16
      affine.yield %alloc_10 : memref<7x13x13xi64>
    }
    %233 = arith.minsi %false, %true : i1
    %234 = arith.divsi %162, %c12133_i16 : i16
    %cast_31 = tensor.cast %3 : tensor<13x13xi32> to tensor<?x?xi32>
    %235 = math.absf %cst_3 : f16
    bufferization.dealloc_tensor %6 : tensor<13x13xi16>
    %236 = affine.if affine_set<(d0, d1, d2) : (d0 mod 64 >= 0, d0 mod 64 - 32 >= 0, d1 + d0 mod 64 - 32 - d1 mod 8 - 128 >= 0, d0 mod 64 >= 0)>(%c4, %c11, %c6) -> i1 {
      %275 = vector.broadcast %c1298902068_i64 : i64 to vector<9x9xi64>
      %276 = affine.load %alloc_4[%c4, %c10] : memref<9x9xf16>
      %expanded = tensor.expand_shape %5 [[0], [1, 2]] : tensor<9x9xi32> into tensor<9x9x1xi32>
      %277 = math.sqrt %cst_0 : f16
      %278 = affine.apply affine_map<(d0) -> (d0 * 32)>(%62)
      vector.print %41 : vector<16xi64>
      %279 = arith.remf %146, %146 : f32
      %280 = math.ceil %cst_1 : f16
      affine.yield %extracted_29 : i1
    } else {
      %275 = vector.broadcast %146 : f32 to vector<13xf32>
      %276 = vector.maskedload %alloc_14[%c5, %c10], %65, %275 : memref<13x13xf32>, vector<13xi1>, vector<13xf32> into vector<13xf32>
      %277 = vector.shuffle %45, %45 [0, 1, 2, 11, 13] : vector<7x13x13xi1>, vector<7x13x13xi1>
      %278 = memref.load %alloc_16[%c8, %c8] : memref<9x9xi32>
      %279 = arith.xori %extracted_30, %extracted_30 : i32
      %280 = arith.minf %cst, %cst : f16
      %281 = affine.for %arg2 = 0 to 20 iter_args(%arg3 = %c677221256_i32) -> (i32) {
        affine.yield %c833211059_i32 : i32
      }
      %282 = arith.andi %c1_i16, %c1_i16 : i16
      %283 = math.floor %201 : f16
      affine.yield %true : i1
    }
    %237 = vector.load %alloc_4[%c6, %c4] : memref<9x9xf16>, vector<13x13xf16>
    %extracted_32 = tensor.extract %9[%c9, %c0] : tensor<13x16xi64>
    %extracted_33 = tensor.extract %21[%c2] : tensor<9xi32>
    %238 = arith.xori %c12133_i16, %c22838_i16 : i16
    %239 = vector.extract_strided_slice %55 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
    %240 = arith.shrui %c677221256_i32, %c677221256_i32 : i32
    %241 = bufferization.to_tensor %206 : memref<9x9xf32>
    %242 = math.absf %241 : tensor<9x9xf32>
    %243 = vector.extract %28[6] : vector<7xf16>
    %244 = math.ctlz %c22838_i16 : i16
    %245 = vector.reduction <or>, %227 : vector<9xi16> into i16
    %246 = affine.load %alloc_7[%c9, %c14, %c15] : memref<7x13x13xf16>
    %247 = vector.extract %105[3] : vector<9xi16>
    %248 = vector.extract_strided_slice %200 {offsets = [0], sizes = [7], strides = [1]} : vector<7xi1> to vector<7xi1>
    %249 = tensor.empty() : tensor<7x13x13xi32>
    %250 = vector.gather %249[%47, %88, %113] [%101], %100, %101 : tensor<7x13x13xi32>, vector<13x16xi32>, vector<13x16xi1>, vector<13x16xi32> into vector<13x16xi32>
    memref.copy %alloc, %176 : memref<7x13x13xi32> to memref<7x13x13xi32>
    %251 = math.log1p %201 : f16
    %252 = bufferization.to_memref %22 : memref<i32>
    %253 = vector.reduction <maxui>, %20 : vector<16xi64> into i64
    %254 = affine.apply affine_map<(d0) -> (d0 * 32)>(%c3)
    %extracted_34 = tensor.extract %2[%c8, %c8] : tensor<9x9xi64>
    %255 = math.atan %cst_2 : f16
    %256 = arith.remf %cst_2, %cst_1 : f16
    %257 = math.absi %extracted : i16
    %alloc_35 = memref.alloc() : memref<16x13xi32>
    %258 = tensor.empty() : tensor<13x13xi32>
    %259 = linalg.matmul ins(%12, %alloc_35 : tensor<13x16xi32>, memref<16x13xi32>) outs(%258 : tensor<13x13xi32>) -> tensor<13x13xi32>
    %260 = math.absf %1 : tensor<7x13x13xf16>
    %261 = arith.divui %false, %false : i1
    %262 = arith.remf %cst_2, %201 : f16
    %263 = arith.maxf %cst, %246 : f16
    %264 = vector.broadcast %true : i1 to vector<16xi1>
    %265 = vector.insert %264, %100 [6] : vector<16xi1> into vector<13x16xi1>
    %266 = affine.if affine_set<(d0, d1, d2, d3) : (d3 >= 0, d3 >= 0, 64 >= 0, d1 mod 64 == 0)>(%c13, %c1, %c0, %c11) -> memref<9x9xi64> {
      %alloca = memref.alloca() : memref<7x13x13xi64>
      %275 = vector.bitcast %219 : vector<7xi1> to vector<7xi1>
      %276 = arith.remf %cst_3, %126 : f16
      %277 = vector.shuffle %171, %102 [1, 2, 3, 4, 6, 7, 8, 10, 12, 13, 14, 15, 16, 19, 25] : vector<13x16xi1>, vector<13x16xi1>
      %inserted_38 = tensor.insert %extracted_33 into %cast[%c0] : tensor<?xi32>
      %278 = arith.remf %126, %cst : f16
      %279 = math.rsqrt %1 : tensor<7x13x13xf16>
      %280 = tensor.empty(%38) : tensor<?x16xi32>
      %alloc_39 = memref.alloc() : memref<9x9xi64>
      affine.yield %alloc_39 : memref<9x9xi64>
    } else {
      %275 = math.ctpop %5 : tensor<9x9xi32>
      %276 = vector.load %206[%c1, %c8] : memref<9x9xf32>, vector<7x13x13xf32>
      %277 = index.maxs %rank, %c6
      %inserted_38 = tensor.insert %extracted_32 into %9[%c5, %c11] : tensor<13x16xi64>
      %278 = math.exp2 %246 : f16
      %279 = vector.broadcast %146 : f32 to vector<7x13xf32>
      %dest, %accumulated_value = vector.scan <minf>, %276, %279 {inclusive = true, reduction_dim = 1 : i64} : vector<7x13x13xf32>, vector<7x13xf32>
      %280 = vector.load %176[%c2, %c2, %c1] : memref<7x13x13xi32>, vector<9x9xi32>
      %281 = math.exp2 %188 : tensor<7x13x13xf32>
      %alloc_39 = memref.alloc() : memref<9x9xi64>
      affine.yield %alloc_39 : memref<9x9xi64>
    }
    %267 = math.ipowi %17, %17 : tensor<13x16xi1>
    %268 = index.add %46, %c14
    %269 = arith.maxf %cst_2, %246 : f16
    %270 = tensor.empty() : tensor<13x13xi16>
    %271 = linalg.copy ins(%6 : tensor<13x13xi16>) outs(%270 : tensor<13x13xi16>) -> tensor<13x13xi16>
    %272 = tensor.empty() : tensor<16x13xi1>
    %transposed_36 = linalg.transpose ins(%4 : tensor<13x16xi1>) outs(%272 : tensor<16x13xi1>) permutation = [1, 0] 
    %alloc_37 = memref.alloc() : memref<i1>
    linalg.reduce ins(%8 : tensor<13x16xi1>) outs(%alloc_37 : memref<i1>) dimensions = [0, 1] 
      (%in: i1, %init: i1) {
        %275 = arith.ori %extracted_33, %extracted_30 : i32
        %276 = bufferization.clone %alloc_6 : memref<7x13x13xi32> to memref<7x13x13xi32>
        %277 = tensor.empty() : tensor<9x9xi32>
        %278 = linalg.matmul ins(%5, %13 : tensor<9x9xi32>, tensor<9x9xi32>) outs(%277 : tensor<9x9xi32>) -> tensor<9x9xi32>
        vector.print %80 : vector<1xi64>
        %279 = tensor.empty() : tensor<9x9xi64>
        %280 = linalg.matmul ins(%2, %2 : tensor<9x9xi64>, tensor<9x9xi64>) outs(%279 : tensor<9x9xi64>) -> tensor<9x9xi64>
        %alloc_38 = memref.alloc() : memref<7x13x13xi1>
        %281 = vector.broadcast %true : i1 to vector<9x9xi1>
        %282 = vector.broadcast %c833211059_i32 : i32 to vector<9x9xi32>
        %283 = vector.gather %alloc_38[%c12, %88, %c5] [%282], %281, %281 : memref<7x13x13xi1>, vector<9x9xi32>, vector<9x9xi1>, vector<9x9xi1> into vector<9x9xi1>
        %alloca = memref.alloca() : memref<13x13xf32>
        %284 = affine.min affine_map<(d0, d1) -> (d1 ceildiv 64 + 32)>(%268, %c8)
        %true_39 = arith.constant true
        linalg.yield %true_39 : i1
      }
    scf.parallel (%arg2) = (%190) to (%168) step (%c9) {
      %275 = vector.broadcast %cst_2 : f16 to vector<7x13x13xf16>
      %276 = vector.extract %171[7] : vector<13x16xi1>
      %277 = math.rsqrt %246 : f16
      %278 = math.copysign %187, %1 : tensor<7x13x13xf16>
      %279 = vector.extract_strided_slice %171 {offsets = [4], sizes = [1], strides = [1]} : vector<13x16xi1> to vector<1x16xi1>
      %280 = vector.broadcast %c833211059_i32 : i32 to vector<13x16xi32>
      %281 = math.floor %187 : tensor<7x13x13xf16>
      %282 = arith.cmpi sle, %c677221256_i32, %c677221256_i32 : i32
      %283 = arith.ceildivsi %extracted_30, %c677221256_i32 : i32
      %284 = math.cos %cst : f16
      %285 = affine.apply affine_map<(d0) -> (d0)>(%arg2)
      %286 = arith.maxsi %c689840241_i32, %c677221256_i32 : i32
      memref.tensor_store %13, %alloc_16 : memref<9x9xi32>
      %287 = math.cttz %c1_i16 : i16
      %288 = vector.broadcast %c677221256_i32 : i32 to vector<16xi32>
      %289 = vector.insert %288, %101 [0] : vector<16xi32> into vector<13x16xi32>
      %290 = index.add %84, %c13
      scf.yield
    }
    %273 = affine.vector_load %alloc_12[%c7, %c2, %c1] : memref<7x13x13xf32>, vector<7xf32>
    affine.vector_store %227, %alloc_5[%c1, %75, %46] : memref<7x13x13xi16>, vector<9xi16>
    vector.print %20 : vector<16xi64>
    vector.print %26 : vector<7xf16>
    vector.print %27 : vector<7xi1>
    vector.print %28 : vector<7xf16>
    vector.print %41 : vector<16xi64>
    vector.print %45 : vector<7x13x13xi1>
    vector.print %54 : vector<7x13x13xi32>
    vector.print %55 : vector<1xi64>
    vector.print %65 : vector<13xi1>
    vector.print %80 : vector<1xi64>
    vector.print %100 : vector<13x16xi1>
    vector.print %101 : vector<13x16xi32>
    vector.print %102 : vector<13x16xi1>
    vector.print %105 : vector<9xi16>
    vector.print %106 : vector<9xi1>
    vector.print %107 : vector<9xi16>
    vector.print %108 : vector<9x9xi64>
    vector.print %115 : vector<7xi16>
    vector.print %148 : vector<13x13xi1>
    vector.print %151 : vector<1xi64>
    vector.print %164 : vector<16xi64>
    vector.print %171 : vector<13x16xi1>
    vector.print %180 : vector<9x9xi64>
    vector.print %200 : vector<7xi1>
    vector.print %203 : vector<i64>
    vector.print %207 : vector<16xi64>
    vector.print %219 : vector<7xi1>
    vector.print %227 : vector<9xi16>
    vector.print %229 : vector<91xi1>
    vector.print %237 : vector<13x13xf16>
    vector.print %239 : vector<1xi64>
    vector.print %248 : vector<7xi1>
    vector.print %250 : vector<13x16xi32>
    vector.print %264 : vector<16xi1>
    vector.print %273 : vector<7xf32>
    vector.print %cst : f16
    vector.print %cst_0 : f16
    vector.print %c689840241_i32 : i32
    vector.print %c677221256_i32 : i32
    vector.print %c22838_i16 : i16
    vector.print %cst_1 : f16
    vector.print %cst_2 : f16
    vector.print %c1383263993_i64 : i64
    vector.print %c312423149_i64 : i64
    vector.print %c833211059_i32 : i32
    vector.print %c657591761_i64 : i64
    vector.print %c1298902068_i64 : i64
    vector.print %c6231_i16 : i16
    vector.print %c12133_i16 : i16
    vector.print %false : i1
    vector.print %cst_3 : f16
    vector.print %126 : f16
    vector.print %true : i1
    vector.print %146 : f32
    vector.print %162 : i16
    vector.print %c1_i16 : i16
    vector.print %201 : f16
    vector.print %extracted : i16
    vector.print %extracted_29 : i1
    vector.print %extracted_30 : i32
    vector.print %extracted_32 : i64
    vector.print %extracted_33 : i32
    vector.print %246 : f16
    vector.print %extracted_34 : i64
    %274 = vector.broadcast %extracted_30 : i32 to vector<13x13xi32>
    return %274 : vector<13x13xi32>
  }
}
