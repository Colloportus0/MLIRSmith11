module {
  func.func nested @func1() {
    %c1682_i16 = arith.constant 1682 : i16
    %false = arith.constant false
    %cst = arith.constant 1.03938906E+9 : f32
    %c331352479_i64 = arith.constant 331352479 : i64
    %cst_0 = arith.constant 1.190000e+02 : f16
    %c357594057_i64 = arith.constant 357594057 : i64
    %cst_1 = arith.constant 2.108800e+04 : f16
    %false_2 = arith.constant false
    %c2074351184_i64 = arith.constant 2074351184 : i64
    %cst_3 = arith.constant 0x4DBC2BF4 : f32
    %cst_4 = arith.constant 6.364800e+04 : f16
    %true = arith.constant true
    %cst_5 = arith.constant 6.252800e+04 : f16
    %cst_6 = arith.constant 1.8641984E+9 : f32
    %cst_7 = arith.constant 1.80834355E+9 : f32
    %cst_8 = arith.constant 6.380800e+04 : f16
    %0 = tensor.empty() : tensor<6x9xi64>
    %1 = tensor.empty() : tensor<8xi64>
    %2 = tensor.empty() : tensor<8x8xi32>
    %3 = tensor.empty() : tensor<8xi32>
    %4 = tensor.empty() : tensor<8xf32>
    %5 = tensor.empty() : tensor<8x8xi16>
    %6 = tensor.empty() : tensor<6x9xi64>
    %7 = tensor.empty() : tensor<6x9xf32>
    %8 = tensor.empty() : tensor<8x8xf16>
    %9 = tensor.empty() : tensor<6x9xf16>
    %10 = tensor.empty() : tensor<8x9xf16>
    %11 = tensor.empty() : tensor<8x8xf16>
    %12 = tensor.empty() : tensor<8x8xi16>
    %13 = tensor.empty() : tensor<8xi16>
    %14 = tensor.empty() : tensor<8xf32>
    %15 = tensor.empty() : tensor<8x9xf16>
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
    %alloc = memref.alloc() : memref<8xi1>
    %alloc_9 = memref.alloc() : memref<8x9xi32>
    %alloc_10 = memref.alloc() : memref<8xi32>
    %alloc_11 = memref.alloc() : memref<8x9xi16>
    %alloc_12 = memref.alloc() : memref<8x8xi16>
    %alloc_13 = memref.alloc() : memref<8x8xi16>
    %alloc_14 = memref.alloc() : memref<8x9xi1>
    %alloc_15 = memref.alloc() : memref<8x9xi1>
    %alloc_16 = memref.alloc() : memref<6x9xi32>
    %alloc_17 = memref.alloc() : memref<8xi1>
    %alloc_18 = memref.alloc() : memref<8x9xi16>
    %alloc_19 = memref.alloc() : memref<8x8xi16>
    %alloc_20 = memref.alloc() : memref<8xf32>
    %alloc_21 = memref.alloc() : memref<8x9xi32>
    %alloc_22 = memref.alloc() : memref<8x8xf16>
    %alloc_23 = memref.alloc() : memref<6x9xi32>
    %16 = tensor.empty() : tensor<8x9xf16>
    %17 = linalg.copy ins(%10 : tensor<8x9xf16>) outs(%16 : tensor<8x9xf16>) -> tensor<8x9xf16>
    %alloc_24 = memref.alloc() : memref<8xf32>
    linalg.transpose ins(%4 : tensor<8xf32>) outs(%alloc_24 : memref<8xf32>) permutation = [0] 
    %alloc_25 = memref.alloc() : memref<9xf32>
    linalg.reduce ins(%7 : tensor<6x9xf32>) outs(%alloc_25 : memref<9xf32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %253 = vector.broadcast %c1682_i16 : i16 to vector<9xi16>
        %254 = vector.insertelement %c1682_i16, %253[%c2 : index] : vector<9xi16>
        %255 = memref.realloc %alloc_17 : memref<8xi1> to memref<9xi1>
        %256 = tensor.empty() : tensor<8x9xf16>
        %mapped_60 = linalg.map ins(%15, %16 : tensor<8x9xf16>, tensor<8x9xf16>) outs(%256 : tensor<8x9xf16>)
          (%in_64: f16, %in_65: f16) {
            %261 = arith.maxsi %c331352479_i64, %c357594057_i64 : i64
            %262 = math.fma %16, %15, %15 : tensor<8x9xf16>
            %263 = math.atan2 %in_65, %cst_4 : f16
            %264 = memref.realloc %alloc_20 : memref<8xf32> to memref<8xf32>
            %265 = math.round %14 : tensor<8xf32>
            %cst_66 = arith.constant 1.000000e+00 : f16
            %266 = vector.transfer_read %15[%c8, %c6], %cst_66 : tensor<8x9xf16>, vector<f16>
            %267 = vector.shuffle %253, %253 [0, 2, 3, 10, 11, 13, 15, 16, 17] : vector<9xi16>, vector<9xi16>
            %268 = math.copysign %cst_8, %cst_4 : f16
            %269 = math.ceil %cst_0 : f16
            vector.print %253 : vector<9xi16>
            %270 = index.ceildivs %c8, %c3
            %271 = arith.minsi %c1682_i16, %c1682_i16 : i16
            %272 = arith.divsi %c2074351184_i64, %c2074351184_i64 : i64
            %expanded_67 = tensor.expand_shape %12 [[0], [1, 2]] : tensor<8x8xi16> into tensor<8x8x1xi16>
            %273 = index.maxs %c12, %c3
            %274 = index.maxu %c4, %c12
            %275 = arith.floordivsi %c357594057_i64, %c357594057_i64 : i64
            %276 = vector.reduction <maxsi>, %253 : vector<9xi16> into i16
            %277 = math.copysign %15, %10 : tensor<8x9xf16>
            %278 = math.log2 %in_64 : f16
            %279 = index.maxu %c15, %c11
            memref.assume_alignment %alloc_25, 16 : memref<9xf32>
            %280 = math.fma %cst_7, %in, %cst_3 : f32
            %281 = arith.floordivsi %c357594057_i64, %c331352479_i64 : i64
            %282 = arith.minui %false_2, %true : i1
            %283 = math.absf %cst : f32
            %284 = arith.addi %false_2, %false : i1
            %285 = arith.maxui %false, %false_2 : i1
            memref.store %true, %alloc_15[%c3, %c8] : memref<8x9xi1>
            %286 = arith.remf %cst_0, %cst_66 : f16
            %inserted_68 = tensor.insert %cst into %14[%c3] : tensor<8xf32>
            bufferization.dealloc_tensor %7 : tensor<6x9xf32>
            %cst_69 = arith.constant 1.000000e+00 : f16
            linalg.yield %cst_69 : f16
          }
        %cast_61 = tensor.cast %15 : tensor<8x9xf16> to tensor<?x?xf16>
        %expanded_62 = tensor.expand_shape %0 [[0], [1, 2]] : tensor<6x9xi64> into tensor<6x9x1xi64>
        %257 = index.maxs %c0, %c4
        %258 = vector.broadcast %false : i1 to vector<6xi1>
        %259 = vector.maskedload %alloc_14[%c6, %c8], %258, %258 : memref<8x9xi1>, vector<6xi1>, vector<6xi1> into vector<6xi1>
        %260 = bufferization.to_tensor %alloc_16 : memref<6x9xi32>
        %cst_63 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_63 : f32
      }
    scf.parallel (%arg0) = (%c1) to (%c15) step (%c2) {
      %253 = arith.divsi %c1682_i16, %c1682_i16 : i16
      %254 = index.sub %c1, %c1
      bufferization.dealloc_tensor %2 : tensor<8x8xi32>
      %255 = tensor.empty() : tensor<8x9xi1>
      %mapped_60 = linalg.map ins(%alloc_15, %alloc_14, %alloc_15 : memref<8x9xi1>, memref<8x9xi1>, memref<8x9xi1>) outs(%255 : tensor<8x9xi1>)
        (%in: i1, %in_64: i1, %in_65: i1) {
          %269 = index.mul %c14, %c10
          %270 = memref.load %alloc_22[%c2, %c6] : memref<8x8xf16>
          %271 = vector.broadcast %cst_4 : f16 to vector<f16>
          %272 = vector.insertelement %cst_4, %271[] : vector<f16>
          %273 = math.copysign %17, %10 : tensor<8x9xf16>
          %274 = arith.maxf %cst, %cst_7 : f32
          %c0_i32_66 = arith.constant 0 : i32
          affine.store %c0_i32_66, %alloc_10[%c10] : memref<8xi32>
          %275 = index.sizeof
          %276 = math.log2 %15 : tensor<8x9xf16>
          %277 = math.cttz %0 : tensor<6x9xi64>
          %278 = math.log2 %11 : tensor<8x8xf16>
          %279 = math.fma %4, %4, %4 : tensor<8xf32>
          memref.copy %alloc_18, %alloc_11 : memref<8x9xi16> to memref<8x9xi16>
          %280 = vector.load %alloc_16[%c1, %c1] : memref<6x9xi32>, vector<8x9xi32>
          %281 = math.floor %7 : tensor<6x9xf32>
          %282 = math.absi %3 : tensor<8xi32>
          %283 = math.cttz %1 : tensor<8xi64>
          bufferization.dealloc_tensor %1 : tensor<8xi64>
          %splat = tensor.splat %false : tensor<6x9xi1>
          %284 = math.roundeven %cst_0 : f16
          bufferization.dealloc_tensor %15 : tensor<8x9xf16>
          %285 = arith.minsi %true, %in : i1
          %286 = bufferization.clone %alloc_16 : memref<6x9xi32> to memref<6x9xi32>
          %287 = math.log %11 : tensor<8x8xf16>
          %288 = index.maxu %c8, %c0
          %289 = tensor.empty() : tensor<8x9xi32>
          %290 = math.fpowi %15, %289 : tensor<8x9xf16>, tensor<8x9xi32>
          %alloc_67 = memref.alloc() : memref<6x9xi32>
          %291 = math.fpowi %14, %3 : tensor<8xf32>, tensor<8xi32>
          %292 = index.maxu %arg0, %c12
          %293 = math.copysign %9, %9 : tensor<6x9xf16>
          %294 = vector.broadcast %true : i1 to vector<6xi1>
          %295 = vector.maskedload %alloc_14[%c7, %c3], %294, %294 : memref<8x9xi1>, vector<6xi1>, vector<6xi1> into vector<6xi1>
          %296 = affine.min affine_map<(d0) -> ((-(d0 mod 2)) mod 2 - d0)>(%275)
          %297 = arith.shrsi %in_65, %in_64 : i1
          %false_68 = arith.constant false
          linalg.yield %false_68 : i1
        }
      %256 = math.log10 %cst_5 : f16
      affine.store %c1682_i16, %alloc_12[%c12, %c6] : memref<8x8xi16>
      %inserted_61 = tensor.insert %cst_8 into %8[%c5, %c1] : tensor<8x8xf16>
      memref.alloca_scope  {
        %alloc_64 = memref.alloc() : memref<8xi32>
        %269 = tensor.empty(%c0, %arg0) : tensor<?x?xi32>
        %270 = math.fma %cst_3, %cst_6, %cst_6 : f32
        %271 = index.maxs %c6, %c7
        %272 = index.maxu %c0, %c8
        %273 = math.cos %9 : tensor<6x9xf16>
        %274 = vector.broadcast %cst_0 : f16 to vector<8x9xf16>
        %275 = vector.transpose %274, [0, 1] : vector<8x9xf16> to vector<8x9xf16>
        %276 = arith.cmpi sge, %c331352479_i64, %c2074351184_i64 : i64
        %277 = math.tanh %10 : tensor<8x9xf16>
        %278 = affine.apply affine_map<(d0, d1) -> (d0 * 128)>(%c13, %c2)
        %279 = tensor.empty(%278) : tensor<?xi1>
        %280 = vector.broadcast %c14 : index to vector<9xindex>
        %281 = vector.broadcast %false : i1 to vector<9xi1>
        %282 = vector.broadcast %c1682_i16 : i16 to vector<9xi16>
        vector.scatter %alloc_19[%c6, %c4] [%280], %281, %282 : memref<8x8xi16>, vector<9xindex>, vector<9xi1>, vector<9xi16>
        %283 = arith.addf %cst_5, %cst_4 : f16
        %284 = vector.broadcast %c4 : index to vector<8xindex>
        %285 = vector.broadcast %true : i1 to vector<8xi1>
        %286 = vector.broadcast %c1682_i16 : i16 to vector<8xi16>
        vector.scatter %alloc_18[%c1, %c7] [%284], %285, %286 : memref<8x9xi16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
        %287 = arith.divf %cst, %cst : f32
        %288 = bufferization.clone %alloc_20 : memref<8xf32> to memref<8xf32>
        %289 = index.floordivs %c6, %c13
        %290 = vector.broadcast %c1682_i16 : i16 to vector<8xi16>
        %291 = vector.matrix_multiply %290, %290 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi16>, vector<8xi16>) -> vector<1xi16>
        %292 = math.log2 %cst_0 : f16
        %293 = vector.broadcast %cst_4 : f16 to vector<9x9xf16>
        %294 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %274, %274, %293 : vector<8x9xf16>, vector<8x9xf16> into vector<9x9xf16>
        %295 = math.copysign %cst_4, %cst_0 : f16
        vector.print %274 : vector<8x9xf16>
        %296 = math.fma %11, %11, %8 : tensor<8x8xf16>
        %297 = math.atan2 %8, %11 : tensor<8x8xf16>
        %298 = arith.maxui %c357594057_i64, %c331352479_i64 : i64
        %299 = math.floor %cst_8 : f16
        %rank_65 = tensor.rank %17 : tensor<8x9xf16>
        %300 = math.expm1 %8 : tensor<8x8xf16>
        %301 = arith.cmpi ule, %c331352479_i64, %c2074351184_i64 : i64
        %alloc_66 = memref.alloc() : memref<6x9xi64>
        memref.tensor_store %0, %alloc_66 : memref<6x9xi64>
        %302 = index.maxu %c10, %c7
        memref.assume_alignment %alloc, 2 : memref<8xi1>
      }
      %257 = index.maxu %254, %c2
      %258 = tensor.empty() : tensor<8x9xf32>
      %259 = vector.broadcast %cst_7 : f32 to vector<8x9xf32>
      %260 = vector.broadcast %true : i1 to vector<8x9xi1>
      %c1_i32_62 = arith.constant 1 : i32
      %261 = vector.broadcast %c1_i32_62 : i32 to vector<8x9xi32>
      %262 = vector.gather %258[%c1, %c8] [%261], %260, %259 : tensor<8x9xf32>, vector<8x9xi32>, vector<8x9xi1>, vector<8x9xf32> into vector<8x9xf32>
      %263 = math.atan2 %10, %15 : tensor<8x9xf16>
      %rank = tensor.rank %13 : tensor<8xi16>
      %cst_63 = arith.constant 5.676800e+04 : f16
      %264 = vector.bitcast %260 : vector<8x9xi1> to vector<8x9xi1>
      %265 = arith.mulf %cst_8, %cst_8 : f16
      %266 = vector.broadcast %arg0 : index to vector<8xindex>
      %267 = vector.broadcast %true : i1 to vector<8xi1>
      %268 = vector.broadcast %c1_i32_62 : i32 to vector<8xi32>
      vector.scatter %alloc_10[%c5] [%266], %267, %268 : memref<8xi32>, vector<8xindex>, vector<8xi1>, vector<8xi32>
      scf.yield
    }
    %18 = affine.vector_load %alloc_15[%c4, %c14] : memref<8x9xi1>, vector<9xi1>
    affine.vector_store %18, %alloc_17[%c1] : memref<8xi1>, vector<9xi1>
    %alloc_26 = memref.alloc() : memref<8xi1>
    %19 = tensor.empty() : tensor<i1>
    %20 = linalg.dot ins(%alloc, %alloc_26 : memref<8xi1>, memref<8xi1>) outs(%19 : tensor<i1>) -> tensor<i1>
    memref.copy %alloc_19, %alloc_13 : memref<8x8xi16> to memref<8x8xi16>
    %21 = index.maxu %c13, %c11
    %22 = math.log10 %9 : tensor<6x9xf16>
    %23 = index.maxs %c10, %c15
    %cst_27 = arith.constant 1.000000e+00 : f16
    %cst_28 = arith.constant 0.000000e+00 : f16
    %24 = vector.transfer_read %15[%c0, %23], %cst_28 : tensor<8x9xf16>, vector<f16>
    %25 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %18, %18, %false_2 : vector<9xi1>, vector<9xi1> into i1
    %26 = vector.broadcast %c12 : index to vector<8xindex>
    %27 = vector.broadcast %false : i1 to vector<8xi1>
    %c0_i32 = arith.constant 0 : i32
    %28 = vector.broadcast %c0_i32 : i32 to vector<8xi32>
    vector.scatter %alloc_21[%c1, %c3] [%26], %27, %28 : memref<8x9xi32>, vector<8xindex>, vector<8xi1>, vector<8xi32>
    %29 = math.floor %cst_7 : f32
    %30 = math.ceil %cst_5 : f16
    %31 = vector.broadcast %false : i1 to vector<9x9xi1>
    %32 = vector.outerproduct %18, %18, %31 {kind = #vector.kind<minsi>} : vector<9xi1>, vector<9xi1>
    %33 = arith.minf %cst_27, %cst_27 : f16
    %34 = vector.matrix_multiply %18, %18 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi1>, vector<9xi1>) -> vector<1xi1>
    %35 = arith.divsi %c331352479_i64, %c357594057_i64 : i64
    %alloc_29 = memref.alloc() : memref<6x9xf16>
    %36 = arith.ceildivsi %true, %false_2 : i1
    %37 = math.ctpop %1 : tensor<8xi64>
    %38 = tensor.empty() : tensor<8x8xi16>
    %39 = linalg.matmul ins(%5, %12 : tensor<8x8xi16>, tensor<8x8xi16>) outs(%38 : tensor<8x8xi16>) -> tensor<8x8xi16>
    %40 = math.log10 %14 : tensor<8xf32>
    %41 = math.cttz %c1682_i16 : i16
    %42 = index.ceildivs %c12, %c3
    %43 = arith.mulf %cst_1, %cst_8 : f16
    %44 = vector.flat_transpose %18 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
    %45 = arith.minui %c2074351184_i64, %c357594057_i64 : i64
    %46 = math.atan2 %cst_0, %cst_8 : f16
    %47 = arith.minf %cst_1, %cst_4 : f16
    %48 = math.absf %cst_8 : f16
    %49 = vector.splat %c4 : vector<6x9xindex>
    %50 = index.maxs %c5, %23
    %51 = vector.broadcast %false : i1 to vector<1x1xi1>
    %52 = vector.outerproduct %34, %34, %51 {kind = #vector.kind<xor>} : vector<1xi1>, vector<1xi1>
    %53 = arith.divui %true, %false_2 : i1
    %54 = math.cos %7 : tensor<6x9xf32>
    %55 = math.log2 %15 : tensor<8x9xf16>
    %56 = math.copysign %cst, %cst : f32
    %57 = arith.ceildivsi %false_2, %false : i1
    %58 = math.ctlz %13 : tensor<8xi16>
    %alloc_30 = memref.alloc() : memref<6x9xi1>
    %59 = math.ipowi %12, %5 : tensor<8x8xi16>
    %60 = math.tan %cst_7 : f32
    %61 = vector.splat %cst_6 : vector<8x8xf32>
    %62 = vector.matrix_multiply %44, %18 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi1>, vector<9xi1>) -> vector<1xi1>
    %63 = arith.cmpi sle, %c357594057_i64, %c331352479_i64 : i64
    %64 = vector.splat %c9 : vector<8x9xindex>
    %65 = vector.broadcast %cst_4 : f16 to vector<8x9xf16>
    %66 = math.floor %10 : tensor<8x9xf16>
    %67 = index.ceildivs %c8, %c3
    %68 = math.expm1 %14 : tensor<8xf32>
    %69 = vector.flat_transpose %18 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
    %70 = index.maxs %c4, %c0
    %71 = index.ceildivs %c10, %c12
    %72 = vector.broadcast %c1682_i16 : i16 to vector<6xi16>
    %73 = vector.broadcast %false_2 : i1 to vector<6xi1>
    %74 = vector.maskedload %alloc_13[%c0, %c2], %73, %72 : memref<8x8xi16>, vector<6xi1>, vector<6xi16> into vector<6xi16>
    %75 = bufferization.clone %alloc_18 : memref<8x9xi16> to memref<8x9xi16>
    %76 = math.exp %cst_5 : f16
    %77 = index.sub %c10, %c8
    %78 = arith.shrsi %true, %true : i1
    %cst_31 = arith.constant 5.520000e+03 : f16
    %c1_i32 = arith.constant 1 : i32
    %79 = math.fpowi %cst_27, %c1_i32 : f16, i32
    scf.index_switch %c12 
    case 1 {
      %253 = vector.splat %cst_3 : vector<8x8xf32>
      %collapsed_60 = tensor.collapse_shape %10 [[0, 1]] : tensor<8x9xf16> into tensor<72xf16>
      %254 = vector.reduction <and>, %73 : vector<6xi1> into i1
      %255 = arith.maxf %cst_1, %cst_27 : f16
      %alloca_61 = memref.alloca() : memref<8xi1>
      %256 = arith.addi %false, %true : i1
      %257 = arith.maxf %cst_1, %cst_4 : f16
      %258 = math.atan2 %cst_4, %cst_5 : f16
      %259 = index.sizeof
      %260 = vector.splat %77 : vector<8x9xindex>
      %261 = index.add %c11, %70
      %262 = vector.insertelement %false, %34[%50 : index] : vector<1xi1>
      %expanded_62 = tensor.expand_shape %0 [[0], [1, 2]] : tensor<6x9xi64> into tensor<6x9x1xi64>
      %263 = index.mul %c11, %70
      %alloc_63 = memref.alloc() : memref<6x9xi64>
      %264 = vector.broadcast %c357594057_i64 : i64 to vector<8xi64>
      %265 = vector.broadcast %false : i1 to vector<8xi1>
      %266 = vector.broadcast %c1_i32 : i32 to vector<8xi32>
      %267 = vector.gather %alloc_63[%c1, %c9] [%266], %265, %264 : memref<6x9xi64>, vector<8xi32>, vector<8xi1>, vector<8xi64> into vector<8xi64>
      %268 = math.tan %cst_27 : f16
      scf.yield
    }
    default {
      %253 = vector.reduction <or>, %73 : vector<6xi1> into i1
      %254 = index.maxs %c10, %c5
      %255 = vector.reduction <maxui>, %34 : vector<1xi1> into i1
      %256 = arith.divf %cst_0, %cst_8 : f16
      %splat = tensor.splat %c1_i32 : tensor<8xi32>
      %257 = vector.broadcast %c1682_i16 : i16 to vector<i16>
      vector.transfer_write %257, %alloc_13[%c2, %c7] : vector<i16>, memref<8x8xi16>
      %258 = arith.shrui %false, %false_2 : i1
      %259 = affine.apply affine_map<(d0) -> (d0 * 16)>(%c1)
      %260 = math.copysign %7, %7 : tensor<6x9xf32>
      %261 = index.castu %c1 : index to i32
      %262 = tensor.empty() : tensor<6x9xi16>
      %263 = vector.broadcast %c1682_i16 : i16 to vector<8x8xi16>
      %264 = vector.broadcast %false : i1 to vector<8x8xi1>
      %265 = vector.broadcast %c1_i32 : i32 to vector<8x8xi32>
      %266 = vector.gather %262[%70, %c5] [%265], %264, %263 : tensor<6x9xi16>, vector<8x8xi32>, vector<8x8xi1>, vector<8x8xi16> into vector<8x8xi16>
      %267 = affine.for %arg0 = 0 to 33 iter_args(%arg1 = %9) -> (tensor<6x9xf16>) {
        affine.yield %arg1 : tensor<6x9xf16>
      }
      %268 = arith.remui %c2074351184_i64, %c2074351184_i64 : i64
      %generated_60 = tensor.generate %70 {
      ^bb0(%arg0: index, %arg1: index):
        %272 = index.divs %c8, %c12
        %273 = math.fma %15, %16, %10 : tensor<8x9xf16>
        %c0_i16_61 = arith.constant 0 : i16
        %274 = vector.transfer_read %alloc_13[%c12, %c6], %c0_i16_61 : memref<8x8xi16>, vector<i16>
        %275 = vector.flat_transpose %44 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
        tensor.yield %cst_4 : f16
      } : tensor<?x9xf16>
      %269 = vector.broadcast %true : i1 to vector<9x9xi1>
      %270 = vector.outerproduct %69, %18, %269 {kind = #vector.kind<or>} : vector<9xi1>, vector<9xi1>
      %271 = memref.atomic_rmw mins %c1682_i16, %75[%c4, %c7] : (i16, memref<8x9xi16>) -> i16
    }
    %80 = memref.alloca_scope  -> (memref<6x9xi1>) {
      %rank = tensor.rank %15 : tensor<8x9xf16>
      %253 = vector.shuffle %44, %73 [0, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 13] : vector<9xi1>, vector<6xi1>
      %254 = scf.index_switch %c13 -> memref<6x9xi1> 
      case 1 {
        %282 = vector.transpose %65, [0, 1] : vector<8x9xf16> to vector<8x9xf16>
        %inserted_64 = tensor.insert %cst_8 into %8[%c7, %c1] : tensor<8x8xf16>
        %283 = math.fma %9, %9, %9 : tensor<6x9xf16>
        %284 = memref.load %alloc_22[%c2, %c5] : memref<8x8xf16>
        %285 = vector.insertelement %true, %73[%c10 : index] : vector<6xi1>
        %286 = arith.divf %cst_1, %cst_4 : f16
        %287 = vector.flat_transpose %73 {columns = 2 : i32, rows = 3 : i32} : vector<6xi1> -> vector<6xi1>
        %288 = arith.mulf %cst_0, %cst_8 : f16
        %alloca_65 = memref.alloca() : memref<8xi1>
        %cast_66 = tensor.cast %8 : tensor<8x8xf16> to tensor<?x?xf16>
        %289 = math.fpowi %4, %3 : tensor<8xf32>, tensor<8xi32>
        %290 = arith.maxui %c357594057_i64, %c2074351184_i64 : i64
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_67 = arith.constant 0 : i64
        %291 = vector.transfer_read %0[%c14, %rank], %c0_i64_67 : tensor<6x9xi64>, vector<i64>
        %292 = vector.bitcast %73 : vector<6xi1> to vector<6xi1>
        %293 = bufferization.clone %alloc_10 : memref<8xi32> to memref<8xi32>
        %294 = arith.maxf %cst_6, %cst : f32
        %alloc_68 = memref.alloc() : memref<6x9xi1>
        scf.yield %alloc_68 : memref<6x9xi1>
      }
      case 2 {
        %282 = arith.maxf %cst_3, %cst_3 : f32
        %283 = arith.maxf %cst_1, %cst_4 : f16
        %284 = vector.broadcast %c3 : index to vector<6xindex>
        %285 = vector.broadcast %c1_i32 : i32 to vector<6xi32>
        vector.scatter %alloc_10[%c2] [%284], %73, %285 : memref<8xi32>, vector<6xindex>, vector<6xi1>, vector<6xi32>
        %286 = math.ceil %cst_0 : f16
        %287 = index.maxu %c14, %c1
        bufferization.dealloc_tensor %9 : tensor<6x9xf16>
        %288 = index.ceildivs %c14, %rank
        %289 = math.exp2 %cst_7 : f32
        %290 = math.ceil %14 : tensor<8xf32>
        %291 = math.log10 %10 : tensor<8x9xf16>
        %extracted_64 = tensor.extract %17[%c7, %c3] : tensor<8x9xf16>
        %cast_65 = tensor.cast %3 : tensor<8xi32> to tensor<?xi32>
        %292 = math.cos %cst_7 : f32
        %293 = vector.transpose %18, [0] : vector<9xi1> to vector<9xi1>
        %294 = vector.splat %23 : vector<8x8xindex>
        affine.store %c1682_i16, %alloc_11[%c4, %c2] : memref<8x9xi16>
        %alloc_66 = memref.alloc() : memref<6x9xi1>
        scf.yield %alloc_66 : memref<6x9xi1>
      }
      case 3 {
        %282 = arith.addi %false_2, %false_2 : i1
        %283 = math.fma %cst_3, %cst, %cst : f32
        %284 = vector.reduction <mul>, %34 : vector<1xi1> into i1
        %285 = memref.realloc %alloc_10 : memref<8xi32> to memref<8xi32>
        %286 = math.cttz %c357594057_i64 : i64
        %287 = math.copysign %8, %8 : tensor<8x8xf16>
        %rank_64 = tensor.rank %6 : tensor<6x9xi64>
        %288 = index.ceildivs %c1, %c1
        %289 = index.add %rank_64, %c2
        %290 = arith.maxsi %false, %false_2 : i1
        %291 = tensor.empty() : tensor<8x8xi32>
        %292 = linalg.matmul ins(%2, %2 : tensor<8x8xi32>, tensor<8x8xi32>) outs(%291 : tensor<8x8xi32>) -> tensor<8x8xi32>
        %293 = arith.ceildivsi %c1_i32, %c1_i32 : i32
        %alloca_65 = memref.alloca() : memref<8x8xi16>
        %294 = arith.divsi %c1682_i16, %c1682_i16 : i16
        %295 = arith.addi %c331352479_i64, %c2074351184_i64 : i64
        %296 = arith.addi %c357594057_i64, %c2074351184_i64 : i64
        %alloc_66 = memref.alloc() : memref<6x9xi1>
        scf.yield %alloc_66 : memref<6x9xi1>
      }
      case 4 {
        %282 = vector.insertelement %false_2, %73[%c5 : index] : vector<6xi1>
        %283 = index.ceildivs %c8, %c7
        %284 = math.ctlz %2 : tensor<8x8xi32>
        %285 = math.fma %cst_1, %cst_8, %cst_8 : f16
        %286 = vector.splat %67 : vector<6x9xindex>
        %287 = arith.minui %c1682_i16, %c1682_i16 : i16
        %288 = arith.maxui %false, %false : i1
        %289 = arith.shli %c1682_i16, %c1682_i16 : i16
        %290 = arith.divf %cst_27, %cst_8 : f16
        %291 = math.fma %10, %10, %10 : tensor<8x9xf16>
        %292 = arith.ceildivsi %c331352479_i64, %c331352479_i64 : i64
        %293 = arith.mulf %cst, %cst_3 : f32
        %alloc_64 = memref.alloc() : memref<i1>
        memref.tensor_store %19, %alloc_64 : memref<i1>
        %294 = arith.maxf %cst_4, %cst_4 : f16
        %295 = math.fma %7, %7, %7 : tensor<6x9xf32>
        %296 = index.castu %c11 : index to i32
        %alloc_65 = memref.alloc() : memref<6x9xi1>
        scf.yield %alloc_65 : memref<6x9xi1>
      }
      default {
        %expanded_64 = tensor.expand_shape %38 [[0], [1, 2]] : tensor<8x8xi16> into tensor<8x8x1xi16>
        %282 = vector.shuffle %69, %69 [1, 2, 5, 10, 13, 16, 17] : vector<9xi1>, vector<9xi1>
        %283 = vector.shuffle %44, %34 [0, 4, 5, 6, 7, 8] : vector<9xi1>, vector<1xi1>
        %alloca_65 = memref.alloca() : memref<8x8xi1>
        %284 = arith.shrui %false_2, %false_2 : i1
        %285 = vector.insertelement %true, %69[%c4 : index] : vector<9xi1>
        %286 = vector.transpose %34, [0] : vector<1xi1> to vector<1xi1>
        %287 = arith.cmpi ugt, %c331352479_i64, %c331352479_i64 : i64
        %288 = arith.mulf %cst_8, %cst_1 : f16
        %289 = vector.insertelement %false_2, %34[%c14 : index] : vector<1xi1>
        %290 = arith.remui %true, %true : i1
        %291 = arith.ceildivsi %true, %false : i1
        %292 = memref.load %alloc_17[%c2] : memref<8xi1>
        %293 = memref.realloc %alloc_24 : memref<8xf32> to memref<6xf32>
        %294 = arith.shli %c2074351184_i64, %c2074351184_i64 : i64
        %inserted_66 = tensor.insert %c1_i32 into %2[%c1, %c4] : tensor<8x8xi32>
        %alloc_67 = memref.alloc() : memref<6x9xi1>
        scf.yield %alloc_67 : memref<6x9xi1>
      }
      %alloca_60 = memref.alloca() : memref<6x9xf32>
      %255 = index.sizeof
      %256 = vector.reduction <minsi>, %74 : vector<6xi16> into i16
      %257 = math.absf %14 : tensor<8xf32>
      %258 = affine.apply affine_map<(d0, d1) -> (d1 mod 32 + d1)>(%c3, %c1)
      %259 = arith.divsi %true, %true : i1
      %260 = math.roundeven %cst_27 : f16
      %261 = vector.broadcast %258 : index to vector<9xindex>
      vector.scatter %alloc[%c4] [%261], %69, %69 : memref<8xi1>, vector<9xindex>, vector<9xi1>, vector<9xi1>
      %262 = arith.mulf %cst_6, %cst : f32
      %263 = vector.flat_transpose %74 {columns = 2 : i32, rows = 3 : i32} : vector<6xi16> -> vector<6xi16>
      %264 = index.ceildivs %c14, %c6
      %265 = vector.extract %74[2] : vector<6xi16>
      %266 = math.cos %cst_4 : f16
      %267 = arith.divf %cst_6, %cst_6 : f32
      %268 = arith.divsi %false_2, %false : i1
      %269 = math.log2 %cst_3 : f32
      %expanded_61 = tensor.expand_shape %17 [[0], [1, 2]] : tensor<8x9xf16> into tensor<8x9x1xf16>
      %270 = math.powf %15, %17 : tensor<8x9xf16>
      %271 = math.absi %5 : tensor<8x8xi16>
      %272 = math.sqrt %cst_4 : f16
      %273 = math.atan2 %cst_8, %cst_1 : f16
      %274 = math.log2 %14 : tensor<8xf32>
      %275 = vector.broadcast %255 : index to vector<9xindex>
      %276 = vector.broadcast %c1_i32 : i32 to vector<9xi32>
      vector.scatter %alloc_9[%c6, %c2] [%275], %44, %276 : memref<8x9xi32>, vector<9xindex>, vector<9xi1>, vector<9xi32>
      %277 = math.copysign %14, %14 : tensor<8xf32>
      %278 = vector.broadcast %true : i1 to vector<i1>
      vector.transfer_write %278, %alloc_17[%c0] : vector<i1>, memref<8xi1>
      %inserted_62 = tensor.insert %cst_8 into %9[%c3, %c3] : tensor<6x9xf16>
      %279 = arith.divf %cst_27, %cst_1 : f16
      %280 = math.ctlz %3 : tensor<8xi32>
      %281 = math.cos %4 : tensor<8xf32>
      %alloc_63 = memref.alloc() : memref<6x9xi1>
      memref.alloca_scope.return %alloc_63 : memref<6x9xi1>
    }
    %81 = math.powf %14, %14 : tensor<8xf32>
    %82 = index.castu %c15 : index to i32
    %83 = arith.mulf %cst_6, %cst_6 : f32
    %84 = vector.extract %18[2] : vector<9xi1>
    %85 = index.sizeof
    %collapsed = tensor.collapse_shape %8 [[0, 1]] : tensor<8x8xf16> into tensor<64xf16>
    affine.for %arg0 = 0 to 40 {
    }
    %86 = index.sub %77, %70
    %87 = vector.insertelement %true, %18[%c6 : index] : vector<9xi1>
    %88 = index.ceildivs %c7, %c14
    %89 = affine.min affine_map<(d0, d1) -> (d0 - 96)>(%c14, %c4)
    %90 = vector.flat_transpose %69 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
    %91 = vector.shuffle %44, %62 [0, 1, 2, 3, 4, 7, 8] : vector<9xi1>, vector<1xi1>
    %extracted = tensor.extract %2[%c2, %c7] : tensor<8x8xi32>
    %92 = arith.mulf %cst_6, %cst_7 : f32
    %93 = arith.minsi %c1682_i16, %c1682_i16 : i16
    %expanded = tensor.expand_shape %6 [[0], [1, 2]] : tensor<6x9xi64> into tensor<6x9x1xi64>
    memref.assume_alignment %alloc_18, 4 : memref<8x9xi16>
    %94 = affine.apply affine_map<(d0) -> (d0 * 16)>(%c8)
    %95 = math.fpowi %14, %3 : tensor<8xf32>, tensor<8xi32>
    %96 = index.divs %c3, %21
    %97 = math.atan2 %cst, %cst_7 : f32
    %98 = arith.floordivsi %false, %false_2 : i1
    %99 = arith.floordivsi %c357594057_i64, %c2074351184_i64 : i64
    %100 = arith.maxf %cst, %cst_7 : f32
    %101 = index.sizeof
    %102 = arith.mulf %cst_3, %cst_7 : f32
    %103 = math.tan %11 : tensor<8x8xf16>
    %104 = math.absi %13 : tensor<8xi16>
    %105 = vector.broadcast %cst_4 : f16 to vector<9x9xf16>
    %106 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %65, %65, %105 : vector<8x9xf16>, vector<8x9xf16> into vector<9x9xf16>
    memref.assume_alignment %80, 8 : memref<6x9xi1>
    %cast = tensor.cast %14 : tensor<8xf32> to tensor<?xf32>
    %cst_32 = arith.constant 1.430400e+04 : f16
    %107 = vector.broadcast %c1682_i16 : i16 to vector<8xi16>
    %108 = vector.broadcast %false : i1 to vector<8xi1>
    %109 = vector.maskedload %alloc_13[%c5, %c5], %108, %107 : memref<8x8xi16>, vector<8xi1>, vector<8xi16> into vector<8xi16>
    %110 = memref.realloc %alloc : memref<8xi1> to memref<6xi1>
    %inserted = tensor.insert %cst_27 into %9[%c2, %c0] : tensor<6x9xf16>
    %alloca = memref.alloca() : memref<8x8xi64>
    %111 = arith.addi %extracted, %c1_i32 : i32
    %112 = vector.load %alloc_22[%c1, %c4] : memref<8x8xf16>, vector<8x8xf16>
    %113 = affine.apply affine_map<(d0, d1) -> (-d0)>(%c4, %23)
    %114 = math.cos %17 : tensor<8x9xf16>
    %115 = vector.insertelement %true, %73[%c3 : index] : vector<6xi1>
    %116 = arith.maxf %cst, %cst_6 : f32
    %117 = index.maxu %101, %c5
    %118 = vector.bitcast %74 : vector<6xi16> to vector<6xi16>
    %inserted_33 = tensor.insert %c1682_i16 into %12[%c7, %c1] : tensor<8x8xi16>
    %119 = memref.alloca_scope  -> (i64) {
      memref.store %extracted, %alloc_21[%c5, %c5] : memref<8x9xi32>
      %253 = memref.load %alloc_23[%c1, %c0] : memref<6x9xi32>
      %collapsed_60 = tensor.collapse_shape %6 [[0, 1]] : tensor<6x9xi64> into tensor<54xi64>
      %254 = arith.maxui %false_2, %false : i1
      %255 = vector.splat %c9 : vector<8x8xindex>
      %256 = arith.remf %cst_5, %cst_1 : f16
      %257 = affine.for %arg0 = 0 to 3 iter_args(%arg1 = %80) -> (memref<6x9xi1>) {
        affine.yield %80 : memref<6x9xi1>
      }
      %258 = vector.reduction <maxui>, %108 : vector<8xi1> into i1
      %259 = arith.ori %false_2, %false_2 : i1
      %260 = math.ctlz %12 : tensor<8x8xi16>
      %261 = math.floor %16 : tensor<8x9xf16>
      %262 = vector.load %alloc_20[%c6] : memref<8xf32>, vector<8x9xf32>
      %263 = arith.addi %false_2, %false_2 : i1
      %264 = index.maxu %70, %c3
      %265 = vector.insertelement %false_2, %90[%67 : index] : vector<9xi1>
      %266 = math.expm1 %15 : tensor<8x9xf16>
      %267 = memref.load %alloc_20[%c6] : memref<8xf32>
      %268 = arith.divsi %extracted, %c1_i32 : i32
      %269 = math.tan %7 : tensor<6x9xf32>
      %collapsed_61 = tensor.collapse_shape %9 [[0, 1]] : tensor<6x9xf16> into tensor<54xf16>
      %270 = scf.while (%arg0 = %c357594057_i64) : (i64) -> i64 {
        %283 = arith.negf %cst_3 : f32
        %284 = arith.remf %cst_7, %cst : f32
        %285 = arith.shrsi %extracted, %extracted : i32
        %286 = math.round %11 : tensor<8x8xf16>
        %287 = math.expm1 %11 : tensor<8x8xf16>
        %extracted_64 = tensor.extract %38[%c5, %c1] : tensor<8x8xi16>
        %splat = tensor.splat %cst_7 : tensor<8x8xf32>
        %288 = arith.remui %arg0, %c357594057_i64 : i64
        scf.condition(%true) %arg0 : i64
      } do {
      ^bb0(%arg0: i64):
        %cast_64 = tensor.cast %0 : tensor<6x9xi64> to tensor<?x?xi64>
        %283 = math.expm1 %10 : tensor<8x9xf16>
        bufferization.dealloc_tensor %9 : tensor<6x9xf16>
        %284 = index.casts %true : i1 to index
        %285 = vector.splat %c10 : vector<8x8xindex>
        %286 = arith.maxf %cst_1, %cst_0 : f16
        %287 = arith.divf %cst, %cst : f32
        %collapsed_65 = tensor.collapse_shape %8 [[0, 1]] : tensor<8x8xf16> into tensor<64xf16>
        %288 = arith.floordivsi %c1682_i16, %c1682_i16 : i16
        %289 = math.tan %15 : tensor<8x9xf16>
        %290 = index.floordivs %117, %86
        %291 = arith.remsi %c1682_i16, %c1682_i16 : i16
        %292 = math.sqrt %10 : tensor<8x9xf16>
        %293 = vector.splat %c11 : vector<8x8xindex>
        %294 = arith.mulf %cst_3, %cst_3 : f32
        %295 = tensor.empty() : tensor<8xf16>
        scf.yield %arg0 : i64
      }
      %271 = tensor.empty() : tensor<9xi64>
      %alloc_62 = memref.alloc() : memref<6x1xi64>
      %272 = tensor.empty() : tensor<6xi64>
      %273 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%271, %alloc_62, %272 : tensor<9xi64>, memref<6x1xi64>, tensor<6xi64>) outs(%expanded : tensor<6x9x1xi64>) {
      ^bb0(%in: i64, %in_64: i64, %in_65: i64, %out: i64):
        %283 = memref.realloc %alloc_25 : memref<9xf32> to memref<9xf32>
        %284 = memref.atomic_rmw addf %cst_8, %alloc_22[%c2, %c2] : (f16, memref<8x8xf16>) -> f16
        %285 = vector.load %alloc_24[%c1] : memref<8xf32>, vector<6x9xf32>
        %286 = vector.broadcast %113 : index to vector<6xindex>
        vector.scatter %alloc_17[%c5] [%286], %73, %73 : memref<8xi1>, vector<6xindex>, vector<6xi1>, vector<6xi1>
        %287 = math.cttz %1 : tensor<8xi64>
        %288 = math.ipowi %0, %0 : tensor<6x9xi64>
        %289 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %72, %74, %c1682_i16 : vector<6xi16>, vector<6xi16> into i16
        %290 = arith.maxsi %out, %c357594057_i64 : i64
        %291 = math.log10 %7 : tensor<6x9xf32>
        %292 = arith.mulf %cst_0, %cst_27 : f16
        %293 = arith.divf %cst_5, %cst_0 : f16
        %294 = vector.insertelement %c1682_i16, %107[%c14 : index] : vector<8xi16>
        %true_66 = arith.constant true
        %295 = arith.maxsi %in, %c2074351184_i64 : i64
        %296 = index.sub %101, %c13
        %297 = arith.cmpf true, %cst_6, %cst_3 : f32
        %298 = index.divu %71, %c13
        %299 = vector.flat_transpose %107 {columns = 4 : i32, rows = 2 : i32} : vector<8xi16> -> vector<8xi16>
        %300 = vector.bitcast %299 : vector<8xi16> to vector<8xi16>
        %301 = arith.divsi %c2074351184_i64, %in_65 : i64
        %302 = arith.maxsi %c1_i32, %c1_i32 : i32
        %303 = math.ipowi %in, %out : i64
        vector.print %44 : vector<9xi1>
        %inserted_67 = tensor.insert %c1682_i16 into %38[%c1, %c7] : tensor<8x8xi16>
        %304 = arith.remf %cst_3, %cst_3 : f32
        %inserted_68 = tensor.insert %cst_27 into %17[%c5, %c0] : tensor<8x9xf16>
        %305 = math.ipowi %12, %38 : tensor<8x8xi16>
        %306 = arith.mulf %cst_1, %cst_27 : f16
        %307 = vector.extract %90[4] : vector<9xi1>
        %308 = math.cos %17 : tensor<8x9xf16>
        %309 = index.floordivs %21, %c11
        %extracted_69 = tensor.extract %6[%c1, %c6] : tensor<6x9xi64>
        linalg.yield %extracted_69 : i64
      } -> tensor<6x9x1xi64>
      %alloc_63 = memref.alloc() : memref<54xi64>
      memref.tensor_store %collapsed_60, %alloc_63 : memref<54xi64>
      %274 = math.copysign %cst_1, %cst_1 : f16
      %275 = math.rsqrt %10 : tensor<8x9xf16>
      %276 = index.ceildivs %88, %50
      %277 = vector.splat %23 : vector<8x8xindex>
      %278 = vector.splat %c12 : vector<8x9xindex>
      %279 = arith.remf %cst, %cst_6 : f32
      %280 = scf.index_switch %89 -> vector<8xi16> 
      case 1 {
        %283 = bufferization.clone %alloc : memref<8xi1> to memref<8xi1>
        %collapsed_64 = tensor.collapse_shape %5 [[0, 1]] : tensor<8x8xi16> into tensor<64xi16>
        %284 = tensor.empty() : tensor<9x8xf16>
        %285 = tensor.empty() : tensor<6x8xf16>
        %286 = linalg.matmul ins(%9, %284 : tensor<6x9xf16>, tensor<9x8xf16>) outs(%285 : tensor<6x8xf16>) -> tensor<6x8xf16>
        %splat = tensor.splat %true : tensor<8x9xi1>
        %287 = math.tan %14 : tensor<8xf32>
        %288 = arith.divsi %c1682_i16, %c1682_i16 : i16
        %289 = index.sizeof
        %splat_65 = tensor.splat %c331352479_i64 : tensor<8xi64>
        %290 = math.cos %8 : tensor<8x8xf16>
        %291 = arith.minsi %c2074351184_i64, %c331352479_i64 : i64
        %292 = vector.broadcast %89 : index to vector<6xindex>
        %293 = vector.broadcast %cst_0 : f16 to vector<6xf16>
        vector.scatter %alloc_22[%c2, %c3] [%292], %73, %293 : memref<8x8xf16>, vector<6xindex>, vector<6xi1>, vector<6xf16>
        %294 = vector.bitcast %90 : vector<9xi1> to vector<9xi1>
        %295 = vector.bitcast %65 : vector<8x9xf16> to vector<8x9xf16>
        %296 = math.tan %cst : f32
        memref.store %extracted, %alloc_10[%c2] : memref<8xi32>
        %297 = memref.realloc %alloc_24 : memref<8xf32> to memref<9xf32>
        scf.yield %107 : vector<8xi16>
      }
      case 2 {
        %283 = vector.bitcast %74 : vector<6xi16> to vector<6xi16>
        %284 = vector.broadcast %c6 : index to vector<6xindex>
        %285 = vector.broadcast %c1_i32 : i32 to vector<6xi32>
        vector.scatter %alloc_10[%c0] [%284], %73, %285 : memref<8xi32>, vector<6xindex>, vector<6xi1>, vector<6xi32>
        %286 = vector.maskedload %alloc_11[%c7, %c3], %73, %72 : memref<8x9xi16>, vector<6xi1>, vector<6xi16> into vector<6xi16>
        %287 = vector.transpose %286, [0] : vector<6xi16> to vector<6xi16>
        %288 = bufferization.clone %75 : memref<8x9xi16> to memref<8x9xi16>
        %289 = vector.broadcast %false_2 : i1 to vector<1x1xi1>
        %290 = vector.outerproduct %34, %34, %289 {kind = #vector.kind<maxui>} : vector<1xi1>, vector<1xi1>
        memref.store %extracted, %alloc_10[%c1] : memref<8xi32>
        %291 = math.exp %15 : tensor<8x9xf16>
        %292 = math.log2 %cst_3 : f32
        %alloca_64 = memref.alloca() : memref<8x9xi16>
        %rank = tensor.rank %collapsed_61 : tensor<54xf16>
        %293 = arith.maxui %c1_i32, %extracted : i32
        %294 = vector.extract %90[6] : vector<9xi1>
        %c45 = arith.constant 45 : index
        %extracted_65 = tensor.extract %collapsed_61[%c45] : tensor<54xf16>
        %295 = vector.reduction <maxui>, %107 : vector<8xi16> into i16
        %296 = math.cos %cst_5 : f16
        scf.yield %109 : vector<8xi16>
      }
      case 3 {
        %283 = arith.maxui %c357594057_i64, %c331352479_i64 : i64
        %284 = index.sizeof
        %cst_64 = arith.constant 1.000000e+00 : f32
        %285 = vector.transfer_read %alloc_25[%c6], %cst_64 : memref<9xf32>, vector<f32>
        %286 = vector.extract_strided_slice %72 {offsets = [0], sizes = [6], strides = [1]} : vector<6xi16> to vector<6xi16>
        bufferization.dealloc_tensor %2 : tensor<8x8xi32>
        %287 = memref.atomic_rmw assign %cst_3, %alloc_24[%c3] : (f32, memref<8xf32>) -> f32
        %288 = memref.load %alloc_26[%c1] : memref<8xi1>
        %289 = arith.shrsi %false, %false_2 : i1
        %290 = index.sizeof
        %291 = arith.floordivsi %c1_i32, %c1_i32 : i32
        %292 = memref.load %alloc_9[%c4, %c7] : memref<8x9xi32>
        %293 = math.expm1 %14 : tensor<8xf32>
        %inserted_65 = tensor.insert %c1682_i16 into %13[%c4] : tensor<8xi16>
        %294 = arith.maxf %cst_7, %cst_7 : f32
        %295 = index.divu %96, %21
        %296 = arith.maxui %c1_i32, %c1_i32 : i32
        scf.yield %107 : vector<8xi16>
      }
      case 4 {
        %283 = index.casts %false : i1 to index
        memref.store %c1682_i16, %75[%c4, %c3] : memref<8x9xi16>
        %284 = vector.flat_transpose %74 {columns = 2 : i32, rows = 3 : i32} : vector<6xi16> -> vector<6xi16>
        %285 = index.casts %c3 : index to i32
        %286 = vector.transpose %108, [0] : vector<8xi1> to vector<8xi1>
        %287 = math.fma %cst_6, %cst_6, %cst : f32
        %288 = math.cttz %12 : tensor<8x8xi16>
        %289 = vector.matrix_multiply %18, %44 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi1>, vector<9xi1>) -> vector<1xi1>
        %290 = index.maxs %c5, %c4
        %alloc_64 = memref.alloc() : memref<8x9xf16>
        %291 = arith.cmpi ne, %true, %false_2 : i1
        %292 = vector.matrix_multiply %109, %118 {lhs_columns = 2 : i32, lhs_rows = 4 : i32, rhs_columns = 3 : i32} : (vector<8xi16>, vector<6xi16>) -> vector<12xi16>
        %293 = index.casts %c1_i32 : i32 to index
        %294 = vector.splat %c7 : vector<8xindex>
        %295 = vector.splat %290 : vector<8x9xindex>
        %296 = arith.remui %false_2, %false : i1
        scf.yield %107 : vector<8xi16>
      }
      default {
        %283 = arith.maxsi %c1682_i16, %c1682_i16 : i16
        %284 = vector.insertelement %true, %18[%89 : index] : vector<9xi1>
        %285 = math.log2 %cst_0 : f16
        memref.assume_alignment %alloc_24, 1 : memref<8xf32>
        %286 = vector.flat_transpose %62 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %287 = arith.maxsi %c2074351184_i64, %c2074351184_i64 : i64
        %splat = tensor.splat %c331352479_i64 : tensor<8x9xi64>
        %alloc_64 = memref.alloc() : memref<6x9xf32>
        memref.tensor_store %7, %alloc_64 : memref<6x9xf32>
        %alloc_65 = memref.alloc() : memref<8x9xf32>
        %288 = arith.ceildivsi %c357594057_i64, %c331352479_i64 : i64
        %289 = vector.broadcast %21 : index to vector<8xindex>
        vector.scatter %alloc_17[%c7] [%289], %108, %108 : memref<8xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
        %290 = index.ceildivs %85, %71
        %291 = arith.minui %c1_i32, %extracted : i32
        %292 = vector.broadcast %cst_3 : f32 to vector<8x9xf32>
        %293 = tensor.empty(%71) : tensor<8x?xi16>
        %294 = index.ceildivs %c10, %c4
        scf.yield %107 : vector<8xi16>
      }
      %281 = math.expm1 %cst_27 : f16
      %282 = arith.shrsi %extracted, %c1_i32 : i32
      memref.alloca_scope.return %c357594057_i64 : i64
    }
    %120 = math.round %11 : tensor<8x8xf16>
    %121 = math.fma %cst_27, %cst_27, %cst_1 : f16
    %122 = math.roundeven %10 : tensor<8x9xf16>
    %123 = bufferization.clone %alloc_22 : memref<8x8xf16> to memref<8x8xf16>
    %124 = vector.broadcast %c1682_i16 : i16 to vector<6x6xi16>
    %125 = vector.outerproduct %118, %118, %124 {kind = #vector.kind<or>} : vector<6xi16>, vector<6xi16>
    %126 = vector.load %75[%c0, %c0] : memref<8x9xi16>, vector<8x8xi16>
    %127 = math.fpowi %4, %3 : tensor<8xf32>, tensor<8xi32>
    %128 = math.floor %cst : f32
    %alloc_34 = memref.alloc() : memref<8x8xf32>
    %129 = index.add %c13, %67
    %inserted_35 = tensor.insert %c331352479_i64 into %6[%c3, %c6] : tensor<6x9xi64>
    %130 = index.sub %c12, %86
    %131 = vector.broadcast %cst_27 : f16 to vector<8xf16>
    %132 = vector.transfer_write %131, %15[%c5, %c14] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xf16>, tensor<8x9xf16>
    %133 = index.ceildivu %c9, %21
    %134 = arith.minsi %false_2, %false : i1
    %135 = vector.transpose %131, [0] : vector<8xf16> to vector<8xf16>
    %136 = arith.minsi %false_2, %false_2 : i1
    %extracted_36 = tensor.extract %13[%c3] : tensor<8xi16>
    %137 = arith.cmpi sle, %extracted_36, %extracted_36 : i16
    %138 = index.floordivs %42, %101
    %139 = arith.muli %false_2, %false_2 : i1
    %140 = math.ctlz %2 : tensor<8x8xi32>
    %141 = arith.remf %cst_1, %cst_27 : f16
    %142 = arith.divsi %false_2, %false_2 : i1
    %143 = math.fpowi %14, %3 : tensor<8xf32>, tensor<8xi32>
    %144 = math.sqrt %cst_0 : f16
    %145 = vector.insertelement %false_2, %34[%c6 : index] : vector<1xi1>
    %collapsed_37 = tensor.collapse_shape %12 [[0, 1]] : tensor<8x8xi16> into tensor<64xi16>
    %146 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded : tensor<6x9x1xi64>) {
    ^bb0(%out: i64):
      %253 = index.maxu %42, %117
      %expanded_60 = tensor.expand_shape %5 [[0], [1, 2]] : tensor<8x8xi16> into tensor<8x8x1xi16>
      %254 = arith.remf %cst_8, %cst_1 : f16
      %255 = math.round %cst_1 : f16
      %256 = affine.for %arg0 = 0 to 23 iter_args(%arg1 = %alloc_19) -> (memref<8x8xi16>) {
        affine.yield %alloc_12 : memref<8x8xi16>
      }
      %257 = memref.alloca_scope  -> (memref<8xi16>) {
        %278 = bufferization.clone %alloc_23 : memref<6x9xi32> to memref<6x9xi32>
        %279 = arith.remf %cst_0, %cst_5 : f16
        vector.print %109 : vector<8xi16>
        %280 = index.ceildivs %130, %133
        %281 = math.cos %cst_4 : f16
        %282 = math.round %cst_0 : f16
        %283 = memref.realloc %alloc_24 : memref<8xf32> to memref<6xf32>
        %284 = arith.remf %cst_1, %cst_1 : f16
        %285 = vector.maskedload %alloc_14[%c3, %c7], %108, %108 : memref<8x9xi1>, vector<8xi1>, vector<8xi1> into vector<8xi1>
        %286 = math.roundeven %15 : tensor<8x9xf16>
        %287 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 * -2, (-d0 - 8) ceildiv 4)>(%c15, %253, %21, %c13)
        %288 = arith.floordivsi %false, %false : i1
        %289 = arith.floordivsi %c357594057_i64, %c2074351184_i64 : i64
        %290 = arith.negf %cst_3 : f32
        %291 = bufferization.clone %123 : memref<8x8xf16> to memref<8x8xf16>
        %292 = math.ceil %8 : tensor<8x8xf16>
        %expanded_66 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<6x9xf16> into tensor<6x9x1xf16>
        %293 = index.castu %c357594057_i64 : i64 to index
        %294 = math.round %7 : tensor<6x9xf32>
        %extracted_67 = tensor.extract %6[%c5, %c3] : tensor<6x9xi64>
        %295 = arith.negf %cst_8 : f16
        %296 = math.roundeven %cst : f32
        %297 = index.castu %70 : index to i32
        %298 = arith.shrui %c1682_i16, %extracted_36 : i16
        %299 = math.floor %14 : tensor<8xf32>
        vector.print %112 : vector<8x8xf16>
        %300 = vector.insertelement %false, %62[%c13 : index] : vector<1xi1>
        %301 = index.floordivs %c13, %c13
        %302 = arith.divui %c1682_i16, %c1682_i16 : i16
        %303 = math.cttz %12 : tensor<8x8xi16>
        %304 = vector.broadcast %c5 : index to vector<6xindex>
        vector.scatter %alloc_17[%c0] [%304], %73, %73 : memref<8xi1>, vector<6xindex>, vector<6xi1>, vector<6xi1>
        %305 = vector.create_mask %129, %c0 : vector<6x9xi1>
        %alloc_68 = memref.alloc() : memref<8xi16>
        memref.alloca_scope.return %alloc_68 : memref<8xi16>
      }
      %258 = affine.if affine_set<(d0) : ((d0 - 8) * 32 == 0, (d0 ceildiv 4 + d0) * 4 == 0, (-(d0 - 8)) ceildiv 4 == 0)>(%c12) -> i64 {
        %278 = math.ctpop %false_2 : i1
        %279 = index.sizeof
        %280 = arith.muli %extracted, %extracted : i32
        %281 = index.maxu %86, %85
        %282 = math.log10 %14 : tensor<8xf32>
        %283 = vector.insertelement %false, %62[%c8 : index] : vector<1xi1>
        %284 = vector.extract_strided_slice %108 {offsets = [0], sizes = [2], strides = [1]} : vector<8xi1> to vector<2xi1>
        %285 = memref.load %alloc_14[%c0, %c6] : memref<8x9xi1>
        affine.yield %c357594057_i64 : i64
      } else {
        %278 = arith.mulf %cst_27, %cst_4 : f16
        memref.tensor_store %14, %alloc_20 : memref<8xf32>
        %279 = affine.apply affine_map<(d0) -> (d0 * 128 + 4)>(%c9)
        %280 = vector.broadcast %false : i1 to vector<8xi1>
        %281 = math.log10 %14 : tensor<8xf32>
        %282 = arith.andi %out, %c331352479_i64 : i64
        %283 = bufferization.clone %alloc_17 : memref<8xi1> to memref<8xi1>
        %284 = arith.ceildivsi %c331352479_i64, %out : i64
        affine.yield %c2074351184_i64 : i64
      }
      %259 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%133, %77, %c3)
      affine.for %arg0 = 0 to 55 {
      }
      %260 = tensor.empty() : tensor<8xi64>
      %mapped_61 = linalg.map ins(%1 : tensor<8xi64>) outs(%260 : tensor<8xi64>)
        (%in: i64) {
          vector.print %69 : vector<9xi1>
          %278 = index.add %c7, %259
          %279 = math.atan2 %9, %9 : tensor<6x9xf16>
          %280 = math.absf %7 : tensor<6x9xf32>
          %cst_66 = arith.constant 3.852800e+04 : f16
          %281 = vector.broadcast %cst_0 : f16 to vector<8x8xf16>
          %282 = vector.extract_strided_slice %69 {offsets = [2], sizes = [1], strides = [1]} : vector<9xi1> to vector<1xi1>
          %283 = index.castu %true : i1 to index
          %284 = math.tan %cst_8 : f16
          %285 = memref.realloc %257 : memref<8xi16> to memref<8xi16>
          %286 = index.maxs %c4, %117
          %inserted_67 = tensor.insert %cst_5 into %11[%c4, %c0] : tensor<8x8xf16>
          %c575033159_i32 = arith.constant 575033159 : i32
          %287 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %44, %18, %false_2 : vector<9xi1>, vector<9xi1> into i1
          %288 = math.log2 %cst_27 : f16
          %289 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %74, %74, %extracted_36 : vector<6xi16>, vector<6xi16> into i16
          %290 = index.floordivs %c5, %71
          %291 = math.log2 %4 : tensor<8xf32>
          %alloca_68 = memref.alloca() : memref<8xi32>
          %292 = math.cos %cst_4 : f16
          %293 = arith.floordivsi %119, %c2074351184_i64 : i64
          %294 = math.ceil %cst_7 : f32
          %295 = index.sub %c4, %c7
          %296 = math.tan %8 : tensor<8x8xf16>
          bufferization.dealloc_tensor %13 : tensor<8xi16>
          %cast_69 = tensor.cast %8 : tensor<8x8xf16> to tensor<?x?xf16>
          %297 = vector.bitcast %18 : vector<9xi1> to vector<9xi1>
          %298 = tensor.empty(%c6) : tensor<8x?xi1>
          %299 = index.floordivs %94, %295
          %300 = arith.shrsi %false, %false : i1
          %301 = vector.broadcast %85 : index to vector<8xindex>
          vector.scatter %alloc_26[%c1] [%301], %108, %108 : memref<8xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
          %302 = arith.minui %c1682_i16, %c1682_i16 : i16
          %c0_i64 = arith.constant 0 : i64
          linalg.yield %c0_i64 : i64
        }
      %261 = index.add %42, %117
      %262 = vector.matrix_multiply %109, %74 {lhs_columns = 2 : i32, lhs_rows = 4 : i32, rhs_columns = 3 : i32} : (vector<8xi16>, vector<6xi16>) -> vector<12xi16>
      %263 = bufferization.to_tensor %alloc_18 : memref<8x9xi16>
      %264 = math.ipowi %c1_i32, %extracted : i32
      %alloc_62 = memref.alloc() : memref<9x8xf16>
      %265 = tensor.empty() : tensor<8x8xf16>
      %266 = linalg.matmul ins(%10, %alloc_62 : tensor<8x9xf16>, memref<9x8xf16>) outs(%265 : tensor<8x8xf16>) -> tensor<8x8xf16>
      %267 = math.log %14 : tensor<8xf32>
      %268 = vector.flat_transpose %44 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
      %269 = vector.extract_strided_slice %268 {offsets = [2], sizes = [6], strides = [1]} : vector<9xi1> to vector<6xi1>
      %270 = scf.while (%arg0 = %cst_0) : (f16) -> f16 {
        %278 = arith.shli %false, %false_2 : i1
        %279 = index.maxu %89, %c14
        %280 = vector.bitcast %107 : vector<8xi16> to vector<8xi16>
        %281 = arith.minui %out, %119 : i64
        %282 = index.divs %c8, %21
        %283 = arith.remf %cst_8, %cst_4 : f16
        bufferization.dealloc_tensor %260 : tensor<8xi64>
        %cast_66 = tensor.cast %4 : tensor<8xf32> to tensor<?xf32>
        scf.condition(%false) %cst_8 : f16
      } do {
      ^bb0(%arg0: f16):
        %278 = vector.broadcast %133 : index to vector<8xindex>
        vector.scatter %80[%c4, %c3] [%278], %108, %108 : memref<6x9xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
        %279 = arith.ceildivsi %out, %c331352479_i64 : i64
        %280 = math.log %cst_1 : f16
        %expanded_66 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<6x9xf16> into tensor<6x9x1xf16>
        %281 = index.maxs %c3, %261
        %282 = math.atan2 %9, %9 : tensor<6x9xf16>
        %283 = vector.bitcast %269 : vector<6xi1> to vector<6xi1>
        %284 = memref.realloc %alloc_20 : memref<8xf32> to memref<9xf32>
        %285 = math.log2 %8 : tensor<8x8xf16>
        %286 = arith.ori %c331352479_i64, %c357594057_i64 : i64
        %287 = arith.divsi %out, %c331352479_i64 : i64
        %expanded_67 = tensor.expand_shape %3 [[0, 1]] : tensor<8xi32> into tensor<8x1xi32>
        %288 = bufferization.clone %alloc_13 : memref<8x8xi16> to memref<8x8xi16>
        %splat = tensor.splat %cst : tensor<6x9xf32>
        %289 = bufferization.to_tensor %alloc_22 : memref<8x8xf16>
        %alloc_68 = memref.alloc() : memref<6x9x1xi64>
        memref.tensor_store %expanded, %alloc_68 : memref<6x9x1xi64>
        scf.yield %cst_5 : f16
      }
      %271 = arith.addi %c1_i32, %extracted : i32
      affine.for %arg0 = 0 to 90 {
      }
      affine.store %c1_i32, %alloc_16[%c9, %c3] : memref<6x9xi32>
      memref.store %false, %alloc_14[%c2, %c8] : memref<8x9xi1>
      %272 = vector.splat %cst_6 : vector<8xf32>
      %273 = vector.extract %62[0] : vector<1xi1>
      %274 = index.sub %c0, %85
      %extracted_63 = tensor.extract %12[%c6, %c2] : tensor<8x8xi16>
      %275 = arith.divf %cst_4, %cst_27 : f16
      %276 = bufferization.to_tensor %alloc_24 : memref<8xf32>
      %generated_64 = tensor.generate %42 {
      ^bb0(%arg0: index, %arg1: index):
        %278 = vector.broadcast %cst_27 : f16 to vector<8x8xf16>
        %279 = memref.realloc %alloc : memref<8xi1> to memref<8xi1>
        %280 = index.floordivs %253, %50
        %281 = math.rsqrt %7 : tensor<6x9xf32>
        tensor.yield %extracted : i32
      } : tensor<?x9xi32>
      %extracted_65 = tensor.extract %collapsed_37[%c13] : tensor<64xi16>
      %277 = arith.divsi %extracted_63, %extracted_63 : i16
      linalg.yield %c2074351184_i64 : i64
    } -> tensor<6x9x1xi64>
    %c0_i16 = arith.constant 0 : i16
    %147 = vector.transfer_read %alloc_12[%138, %138], %c0_i16 : memref<8x8xi16>, vector<9xi16>
    %alloca_38 = memref.alloca() : memref<8x9xi32>
    %148 = math.tan %16 : tensor<8x9xf16>
    %alloc_39 = memref.alloc() : memref<9x8xf32>
    %149 = tensor.empty() : tensor<6x8xf32>
    %150 = linalg.matmul ins(%7, %alloc_39 : tensor<6x9xf32>, memref<9x8xf32>) outs(%149 : tensor<6x8xf32>) -> tensor<6x8xf32>
    %151 = tensor.empty(%c9) : tensor<?x8xi16>
    %152 = arith.negf %cst_5 : f16
    vector.print %44 : vector<9xi1>
    %153 = math.log %17 : tensor<8x9xf16>
    %154 = math.roundeven %9 : tensor<6x9xf16>
    %155 = arith.mulf %cst_6, %cst_7 : f32
    %156 = arith.maxui %false_2, %false : i1
    %157 = vector.insert %false, %44 [7] : i1 into vector<9xi1>
    %158 = vector.splat %c6 : vector<6x9xindex>
    %159 = bufferization.clone %alloc_11 : memref<8x9xi16> to memref<8x9xi16>
    affine.store %true, %alloc_17[%c3] : memref<8xi1>
    %160 = tensor.empty() : tensor<6x9xi32>
    %161 = vector.broadcast %extracted : i32 to vector<8xi32>
    %162 = vector.gather %160[%117, %c6] [%161], %108, %161 : tensor<6x9xi32>, vector<8xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
    %cst_40 = arith.constant 5.008000e+04 : f16
    %163 = arith.maxsi %true, %false : i1
    %164 = arith.addi %c1682_i16, %c1682_i16 : i16
    %165 = scf.index_switch %67 -> vector<8x9xi16> 
    case 1 {
      memref.assume_alignment %alloc_20, 16 : memref<8xf32>
      %253 = index.ceildivs %c8, %c3
      %254 = arith.divsi %extracted_36, %c1682_i16 : i16
      %255 = arith.divsi %c331352479_i64, %c2074351184_i64 : i64
      %256 = vector.broadcast %c9 : index to vector<8xindex>
      vector.scatter %alloc_23[%c1, %c6] [%256], %108, %162 : memref<6x9xi32>, vector<8xindex>, vector<8xi1>, vector<8xi32>
      %257 = memref.load %123[%c5, %c4] : memref<8x8xf16>
      %258 = affine.apply affine_map<(d0) -> (d0 * 128 + 4)>(%c4)
      %259 = math.rsqrt %cst_8 : f16
      %260 = arith.remf %cst_27, %cst_27 : f16
      %261 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %118, %74, %c1682_i16 : vector<6xi16>, vector<6xi16> into i16
      %262 = math.tan %16 : tensor<8x9xf16>
      %263 = index.maxs %138, %101
      %264 = arith.remf %cst_0, %cst_1 : f16
      %265 = memref.alloca_scope  -> (i16) {
        %269 = vector.load %alloc_14[%c1, %c4] : memref<8x9xi1>, vector<6x9xi1>
        %270 = index.maxs %67, %89
        %271 = arith.remsi %c331352479_i64, %c2074351184_i64 : i64
        %272 = index.castu %130 : index to i32
        %273 = affine.apply affine_map<(d0, d1) -> (-d1)>(%77, %42)
        affine.store %true, %alloc[%c0] : memref<8xi1>
        %274 = arith.maxsi %c2074351184_i64, %c2074351184_i64 : i64
        %275 = memref.load %75[%c4, %c8] : memref<8x9xi16>
        %276 = math.floor %collapsed : tensor<64xf16>
        %277 = math.ipowi %1, %1 : tensor<8xi64>
        %278 = arith.maxf %cst_27, %cst_0 : f16
        %279 = arith.ori %false, %false : i1
        %280 = index.sizeof
        %cast_60 = tensor.cast %2 : tensor<8x8xi32> to tensor<?x?xi32>
        %281 = memref.realloc %alloc_10 : memref<8xi32> to memref<8xi32>
        %282 = arith.minui %c0_i16, %c1682_i16 : i16
        %283 = arith.minui %false_2, %false_2 : i1
        %284 = arith.addi %false, %false_2 : i1
        %285 = arith.maxui %c357594057_i64, %c331352479_i64 : i64
        %286 = vector.matrix_multiply %109, %107 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi16>, vector<8xi16>) -> vector<1xi16>
        %287 = arith.minsi %false_2, %true : i1
        %288 = arith.divsi %extracted_36, %c1682_i16 : i16
        %289 = arith.maxsi %false, %false : i1
        %290 = arith.mulf %cst_27, %cst_0 : f16
        %291 = arith.shrui %false, %false_2 : i1
        %collapsed_61 = tensor.collapse_shape %160 [[0, 1]] : tensor<6x9xi32> into tensor<54xi32>
        %292 = arith.remf %cst_6, %cst_7 : f32
        %293 = vector.load %alloc_9[%c1, %c3] : memref<8x9xi32>, vector<8xi32>
        %294 = index.castu %270 : index to i32
        %295 = arith.negf %cst_0 : f16
        %296 = arith.minui %false_2, %false_2 : i1
        %297 = arith.cmpi eq, %true, %false : i1
        memref.alloca_scope.return %extracted_36 : i16
      }
      %266 = scf.index_switch %c9 -> index 
      case 1 {
        %269 = index.maxs %c5, %c12
        %270 = index.casts %117 : index to i32
        %271 = vector.flat_transpose %18 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
        %272 = arith.addi %c2074351184_i64, %c331352479_i64 : i64
        %273 = math.powf %15, %16 : tensor<8x9xf16>
        %274 = arith.divsi %extracted_36, %c1682_i16 : i16
        %275 = math.cos %10 : tensor<8x9xf16>
        %276 = index.floordivs %138, %c8
        %277 = vector.bitcast %44 : vector<9xi1> to vector<9xi1>
        %278 = vector.reduction <maxui>, %118 : vector<6xi16> into i16
        %279 = arith.addf %cst_5, %cst_8 : f16
        %alloc_60 = memref.alloc() : memref<6x9x1xi64>
        memref.tensor_store %expanded, %alloc_60 : memref<6x9x1xi64>
        %280 = vector.reduction <or>, %18 : vector<9xi1> into i1
        %281 = math.tan %collapsed : tensor<64xf16>
        %282 = math.round %cst_7 : f32
        %283 = arith.maxf %cst_0, %cst_5 : f16
        scf.yield %c7 : index
      }
      case 2 {
        %269 = arith.ceildivsi %extracted, %extracted : i32
        %270 = arith.addi %extracted_36, %265 : i16
        %271 = math.atan2 %15, %15 : tensor<8x9xf16>
        memref.copy %alloc_11, %75 : memref<8x9xi16> to memref<8x9xi16>
        %272 = vector.bitcast %118 : vector<6xi16> to vector<6xf16>
        %cst_60 = arith.constant 1.000000e+00 : f32
        %273 = vector.transfer_read %4[%88], %cst_60 : tensor<8xf32>, vector<f32>
        %274 = math.cttz %5 : tensor<8x8xi16>
        bufferization.dealloc_tensor %13 : tensor<8xi16>
        %275 = arith.shrui %c1_i32, %extracted : i32
        %276 = index.castu %extracted : i32 to index
        %277 = arith.maxsi %c2074351184_i64, %c2074351184_i64 : i64
        %278 = vector.insertelement %false, %62[%113 : index] : vector<1xi1>
        %279 = arith.addf %cst_4, %cst_0 : f16
        %280 = index.casts %false : i1 to index
        %281 = math.cos %15 : tensor<8x9xf16>
        memref.assume_alignment %80, 2 : memref<6x9xi1>
        scf.yield %c10 : index
      }
      default {
        %269 = index.casts %c6 : index to i32
        %270 = arith.floordivsi %false, %false : i1
        %271 = arith.negf %cst_0 : f16
        %272 = vector.broadcast %false : i1 to vector<9x9xi1>
        %273 = vector.outerproduct %90, %90, %272 {kind = #vector.kind<or>} : vector<9xi1>, vector<9xi1>
        %274 = index.castu %96 : index to i32
        %275 = arith.divsi %265, %265 : i16
        %276 = math.sqrt %8 : tensor<8x8xf16>
        %277 = math.atan2 %15, %15 : tensor<8x9xf16>
        %278 = arith.divsi %c1_i32, %extracted : i32
        %279 = arith.maxf %cst_27, %cst_27 : f16
        %280 = arith.shli %c2074351184_i64, %119 : i64
        %281 = arith.cmpi sle, %265, %265 : i16
        %expanded_60 = tensor.expand_shape %5 [[0], [1, 2]] : tensor<8x8xi16> into tensor<8x8x1xi16>
        %282 = arith.minui %extracted, %extracted : i32
        %283 = arith.divsi %c357594057_i64, %c357594057_i64 : i64
        affine.store %extracted, %alloc_21[%c12, %c8] : memref<8x9xi32>
        scf.yield %42 : index
      }
      %267 = vector.load %alloc_14[%c2, %c0] : memref<8x9xi1>, vector<6x9xi1>
      %268 = vector.broadcast %extracted_36 : i16 to vector<8x9xi16>
      scf.yield %268 : vector<8x9xi16>
    }
    case 2 {
      %253 = vector.reduction <mul>, %44 : vector<9xi1> into i1
      %rank = tensor.rank %4 : tensor<8xf32>
      %254 = math.powf %17, %10 : tensor<8x9xf16>
      %255 = arith.remsi %c0_i16, %c1682_i16 : i16
      %256 = math.rsqrt %cst : f32
      %257 = math.ceil %15 : tensor<8x9xf16>
      %258 = math.cos %collapsed : tensor<64xf16>
      %259 = arith.shrui %c1_i32, %c1_i32 : i32
      %260 = arith.minui %c357594057_i64, %c331352479_i64 : i64
      %261 = math.absf %17 : tensor<8x9xf16>
      %262 = index.sizeof
      %263 = affine.apply affine_map<(d0) -> ((d0 + 32) * 4096)>(%c8)
      %264 = arith.divf %cst_1, %cst_8 : f16
      %collapsed_60 = tensor.collapse_shape %6 [[0, 1]] : tensor<6x9xi64> into tensor<54xi64>
      %265 = math.tanh %cst_27 : f16
      memref.store %false, %alloc_17[%c2] : memref<8xi1>
      %266 = vector.broadcast %c0_i16 : i16 to vector<8x9xi16>
      scf.yield %266 : vector<8x9xi16>
    }
    case 3 {
      %253 = arith.remf %cst_8, %cst_1 : f16
      %254 = scf.while (%arg0 = %34) : (vector<1xi1>) -> vector<1xi1> {
        %268 = math.cos %11 : tensor<8x8xf16>
        %269 = vector.splat %c13 : vector<8xindex>
        %false_63 = index.bool.constant false
        %270 = arith.maxui %c331352479_i64, %c357594057_i64 : i64
        %271 = arith.divsi %false, %false_63 : i1
        %272 = memref.load %alloc_11[%c4, %c0] : memref<8x9xi16>
        %273 = vector.broadcast %cst_6 : f32 to vector<8x9xf32>
        %274 = vector.fma %273, %273, %273 : vector<8x9xf32>
        %cst_64 = arith.constant 1.000000e+00 : f16
        %cst_65 = arith.constant 0.000000e+00 : f16
        %275 = vector.transfer_read %8[%96, %c1], %cst_65 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<8x8xf16>, vector<9xf16>
        scf.condition(%true) %34 : vector<1xi1>
      } do {
      ^bb0(%arg0: vector<1xi1>):
        %268 = math.tan %cst_7 : f32
        %alloc_63 = memref.alloc() : memref<6x9xi16>
        %269 = arith.mulf %cst_7, %cst_7 : f32
        %270 = index.sizeof
        %271 = math.ipowi %12, %5 : tensor<8x8xi16>
        %272 = arith.minsi %c0_i16, %extracted_36 : i16
        %273 = vector.extract_strided_slice %65 {offsets = [5], sizes = [1], strides = [1]} : vector<8x9xf16> to vector<1x9xf16>
        %274 = memref.load %alloc_20[%c3] : memref<8xf32>
        %275 = arith.minsi %c1682_i16, %c1682_i16 : i16
        %splat = tensor.splat %true : tensor<8x9xi1>
        %cst_64 = arith.constant 1.000000e+00 : f32
        %276 = vector.transfer_read %alloc_24[%85], %cst_64 : memref<8xf32>, vector<f32>
        %277 = vector.flat_transpose %108 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
        %278 = arith.muli %c2074351184_i64, %c357594057_i64 : i64
        %279 = vector.broadcast %cst : f32 to vector<8x9xf32>
        %280 = vector.fma %279, %279, %279 : vector<8x9xf32>
        %281 = memref.atomic_rmw andi %c1682_i16, %alloc_13[%c3, %c7] : (i16, memref<8x8xi16>) -> i16
        %282 = arith.cmpi sgt, %119, %c331352479_i64 : i64
        scf.yield %62 : vector<1xi1>
      }
      %255 = memref.alloca_scope  -> (memref<8x9xi64>) {
        %268 = math.log10 %15 : tensor<8x9xf16>
        %269 = arith.divf %cst_7, %cst : f32
        %270 = arith.maxui %false_2, %false : i1
        %extracted_63 = tensor.extract %16[%c0, %c1] : tensor<8x9xf16>
        %271 = bufferization.clone %alloc_20 : memref<8xf32> to memref<8xf32>
        %272 = arith.maxui %c331352479_i64, %c331352479_i64 : i64
        %273 = vector.transpose %107, [0] : vector<8xi16> to vector<8xi16>
        %274 = vector.extract_strided_slice %107 {offsets = [2], sizes = [1], strides = [1]} : vector<8xi16> to vector<1xi16>
        %275 = index.castu %extracted : i32 to index
        %276 = index.add %c1, %c5
        %277 = math.ipowi %13, %13 : tensor<8xi16>
        %278 = math.floor %15 : tensor<8x9xf16>
        %279 = index.mul %c7, %c12
        %280 = math.ipowi %1, %1 : tensor<8xi64>
        %281 = arith.floordivsi %false, %false : i1
        %282 = vector.broadcast %c14 : index to vector<6xindex>
        vector.scatter %alloc_13[%c0, %c4] [%282], %73, %118 : memref<8x8xi16>, vector<6xindex>, vector<6xi1>, vector<6xi16>
        %283 = math.tan %cst_0 : f16
        %284 = affine.apply affine_map<(d0) -> ((d0 + 32) * 4096)>(%c15)
        %285 = index.sizeof
        %expanded_64 = tensor.expand_shape %5 [[0], [1, 2]] : tensor<8x8xi16> into tensor<8x8x1xi16>
        %286 = arith.maxsi %c357594057_i64, %c2074351184_i64 : i64
        %287 = arith.shrui %119, %119 : i64
        %288 = math.log %17 : tensor<8x9xf16>
        %cast_65 = tensor.cast %149 : tensor<6x8xf32> to tensor<?x?xf32>
        %289 = tensor.empty(%c11) : tensor<8x?xi32>
        %290 = index.divs %c7, %c4
        %291 = vector.broadcast %cst_6 : f32 to vector<8xf32>
        %292 = vector.fma %291, %291, %291 : vector<8xf32>
        %293 = math.log10 %16 : tensor<8x9xf16>
        %294 = math.round %14 : tensor<8xf32>
        %295 = index.maxs %c10, %c1
        %296 = math.cos %4 : tensor<8xf32>
        %297 = math.floor %cst_8 : f16
        %alloc_66 = memref.alloc() : memref<8x9xi64>
        memref.alloca_scope.return %alloc_66 : memref<8x9xi64>
      }
      %rank = tensor.rank %5 : tensor<8x8xi16>
      %256 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%c0, %rank, %c12)
      %generated_60 = tensor.generate %88 {
      ^bb0(%arg0: index, %arg1: index):
        %268 = math.powf %9, %9 : tensor<6x9xf16>
        %alloc_63 = memref.alloc() : memref<8x9xf16>
        memref.tensor_store %10, %alloc_63 : memref<8x9xf16>
        %269 = index.mul %101, %c13
        %270 = math.round %cst_0 : f16
        tensor.yield %cst : f32
      } : tensor<?x9xf32>
      %257 = tensor.empty() : tensor<8x8xi16>
      %mapped_61 = linalg.map ins(%alloc_12, %alloc_13 : memref<8x8xi16>, memref<8x8xi16>) outs(%257 : tensor<8x8xi16>)
        (%in: i16, %in_63: i16) {
          %268 = arith.mulf %cst_1, %cst_27 : f16
          %269 = tensor.empty() : tensor<8x9xi32>
          %270 = math.fpowi %10, %269 : tensor<8x9xf16>, tensor<8x9xi32>
          %271 = arith.remf %cst_5, %cst_27 : f16
          %rank_64 = tensor.rank %8 : tensor<8x8xf16>
          %272 = arith.shrui %c357594057_i64, %119 : i64
          %273 = vector.load %alloc_24[%c6] : memref<8xf32>, vector<8xf32>
          %274 = arith.cmpi uge, %c0_i16, %in_63 : i16
          %275 = affine.apply affine_map<(d0, d1, d2) -> (16)>(%77, %c7, %c15)
          %276 = vector.multi_reduction <or>, %162, %extracted [0] : vector<8xi32> to i32
          %277 = arith.divsi %true, %false : i1
          %278 = math.floor %16 : tensor<8x9xf16>
          %279 = index.ceildivu %c11, %c6
          %280 = bufferization.clone %alloc_23 : memref<6x9xi32> to memref<6x9xi32>
          %281 = vector.insertelement %c0_i16, %109[%50 : index] : vector<8xi16>
          %282 = math.log10 %17 : tensor<8x9xf16>
          %283 = arith.maxui %c331352479_i64, %c2074351184_i64 : i64
          %284 = math.ctlz %3 : tensor<8xi32>
          %285 = index.castu %279 : index to i32
          %286 = vector.flat_transpose %161 {columns = 4 : i32, rows = 2 : i32} : vector<8xi32> -> vector<8xi32>
          %287 = vector.extract %273[6] : vector<8xf32>
          %288 = memref.realloc %alloc_26 : memref<8xi1> to memref<8xi1>
          %289 = arith.cmpi ugt, %c2074351184_i64, %c357594057_i64 : i64
          %290 = math.fpowi %14, %3 : tensor<8xf32>, tensor<8xi32>
          %291 = index.maxu %c5, %42
          %292 = vector.reduction <minui>, %108 : vector<8xi1> into i1
          %293 = vector.insertelement %false_2, %73[%89 : index] : vector<6xi1>
          %294 = vector.flat_transpose %162 {columns = 4 : i32, rows = 2 : i32} : vector<8xi32> -> vector<8xi32>
          %c29424_i16 = arith.constant 29424 : i16
          %295 = arith.minui %true, %false : i1
          %296 = arith.maxui %276, %c1_i32 : i32
          %cast_65 = tensor.cast %9 : tensor<6x9xf16> to tensor<?x?xf16>
          %297 = math.expm1 %4 : tensor<8xf32>
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %258 = arith.maxsi %c331352479_i64, %c357594057_i64 : i64
      memref.assume_alignment %alloc_20, 8 : memref<8xf32>
      %259 = tensor.empty() : tensor<8xf16>
      %260 = vector.broadcast %false_2 : i1 to vector<8x8xi1>
      %261 = vector.broadcast %extracted : i32 to vector<8x8xi32>
      %262 = vector.gather %259[%c6] [%261], %260, %112 : tensor<8xf16>, vector<8x8xi32>, vector<8x8xi1>, vector<8x8xf16> into vector<8x8xf16>
      %263 = affine.apply affine_map<(d0) -> ((d0 + 32) * 4096)>(%21)
      %cast_62 = tensor.cast %5 : tensor<8x8xi16> to tensor<?x?xi16>
      affine.for %arg0 = 0 to 5 {
      }
      %264 = math.fpowi %11, %2 : tensor<8x8xf16>, tensor<8x8xi32>
      %265 = index.floordivs %21, %50
      %266 = arith.shli %extracted_36, %extracted_36 : i16
      %267 = vector.broadcast %c0_i16 : i16 to vector<8x9xi16>
      scf.yield %267 : vector<8x9xi16>
    }
    case 4 {
      %253 = memref.load %alloc_15[%c4, %c0] : memref<8x9xi1>
      %254 = arith.maxf %cst_8, %cst_0 : f16
      %255 = arith.mulf %cst_7, %cst_7 : f32
      %256 = arith.minui %false_2, %false_2 : i1
      %257 = arith.remf %cst_1, %cst_8 : f16
      %258 = vector.extract_strided_slice %107 {offsets = [3], sizes = [1], strides = [1]} : vector<8xi16> to vector<1xi16>
      %259 = affine.for %arg0 = 0 to 91 iter_args(%arg1 = %c1) -> (index) {
        affine.yield %70 : index
      }
      %260 = vector.reduction <maxsi>, %74 : vector<6xi16> into i16
      %261 = vector.broadcast %cst_6 : f32 to vector<8x9xf32>
      %262 = vector.broadcast %false_2 : i1 to vector<8x9xi1>
      %263 = vector.broadcast %extracted : i32 to vector<8x9xi32>
      %264 = vector.gather %14[%94] [%263], %262, %261 : tensor<8xf32>, vector<8x9xi32>, vector<8x9xi1>, vector<8x9xf32> into vector<8x9xf32>
      affine.store %true, %alloc_15[%c0, %c5] : memref<8x9xi1>
      %265 = vector.extract %161[6] : vector<8xi32>
      %266 = index.maxs %c7, %129
      %267 = scf.index_switch %c6 -> tensor<8xf16> 
      case 1 {
        %271 = index.ceildivs %23, %c14
        %272 = vector.insertelement %cst_4, %131[%85 : index] : vector<8xf16>
        %273 = arith.divsi %extracted, %extracted : i32
        %274 = math.expm1 %cst : f32
        %275 = math.absf %cst : f32
        %276 = math.ceil %149 : tensor<6x8xf32>
        %277 = arith.remsi %c331352479_i64, %119 : i64
        %278 = bufferization.to_memref %10 : memref<8x9xf16>
        %279 = index.sizeof
        memref.store %cst_8, %123[%c0, %c0] : memref<8x8xf16>
        %280 = vector.matrix_multiply %74, %107 {lhs_columns = 2 : i32, lhs_rows = 3 : i32, rhs_columns = 4 : i32} : (vector<6xi16>, vector<8xi16>) -> vector<12xi16>
        %281 = vector.broadcast %c1_i32 : i32 to vector<8x8xi32>
        %282 = vector.outerproduct %162, %162, %281 {kind = #vector.kind<minsi>} : vector<8xi32>, vector<8xi32>
        %283 = math.copysign %15, %15 : tensor<8x9xf16>
        %284 = math.cos %10 : tensor<8x9xf16>
        %285 = index.castu %c1 : index to i32
        %286 = arith.minui %extracted_36, %c1682_i16 : i16
        %287 = tensor.empty() : tensor<8xf16>
        scf.yield %287 : tensor<8xf16>
      }
      case 2 {
        %collapsed_60 = tensor.collapse_shape %7 [[0, 1]] : tensor<6x9xf32> into tensor<54xf32>
        %271 = math.tan %15 : tensor<8x9xf16>
        %272 = math.log2 %4 : tensor<8xf32>
        %collapsed_61 = tensor.collapse_shape %11 [[0, 1]] : tensor<8x8xf16> into tensor<64xf16>
        %273 = math.tan %cst_3 : f32
        %274 = index.maxu %c11, %c9
        %275 = math.fma %cst_1, %cst_5, %cst_27 : f16
        %276 = vector.splat %c4 : vector<6x9xindex>
        %277 = vector.bitcast %258 : vector<1xi16> to vector<1xi16>
        %true_62 = arith.constant true
        %splat = tensor.splat %cst : tensor<6x9xf32>
        %278 = arith.cmpi ule, %c357594057_i64, %c331352479_i64 : i64
        %279 = index.mul %c6, %77
        %280 = tensor.empty() : tensor<6x8xi32>
        %281 = math.fpowi %149, %280 : tensor<6x8xf32>, tensor<6x8xi32>
        %282 = index.mul %279, %85
        %283 = arith.ceildivsi %extracted_36, %extracted_36 : i16
        %284 = tensor.empty() : tensor<8xf16>
        scf.yield %284 : tensor<8xf16>
      }
      case 3 {
        %271 = math.ctlz %12 : tensor<8x8xi16>
        %272 = arith.muli %extracted_36, %c0_i16 : i16
        %273 = math.floor %cst_7 : f32
        %inserted_60 = tensor.insert %cst_7 into %4[%c4] : tensor<8xf32>
        %274 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %118, %72, %c0_i16 : vector<6xi16>, vector<6xi16> into i16
        %275 = arith.negf %cst_1 : f16
        %276 = arith.addi %c357594057_i64, %c331352479_i64 : i64
        %rank = tensor.rank %8 : tensor<8x8xf16>
        %277 = arith.mulf %cst, %cst_3 : f32
        %278 = math.roundeven %14 : tensor<8xf32>
        %279 = memref.load %alloc_9[%c5, %c3] : memref<8x9xi32>
        vector.print %73 : vector<6xi1>
        %280 = index.sizeof
        vector.print %107 : vector<8xi16>
        %281 = math.expm1 %16 : tensor<8x9xf16>
        %282 = math.cos %cst_6 : f32
        %283 = tensor.empty() : tensor<8xf16>
        scf.yield %283 : tensor<8xf16>
      }
      default {
        %271 = vector.splat %119 : vector<8xi64>
        %272 = math.exp2 %9 : tensor<6x9xf16>
        %273 = math.log %cst_27 : f16
        %274 = bufferization.clone %alloc_19 : memref<8x8xi16> to memref<8x8xi16>
        %275 = math.sqrt %15 : tensor<8x9xf16>
        %276 = arith.cmpi sge, %c357594057_i64, %c2074351184_i64 : i64
        %277 = arith.cmpi ne, %c331352479_i64, %c2074351184_i64 : i64
        %278 = arith.negf %cst_7 : f32
        %alloc_60 = memref.alloc() : memref<6x9xi64>
        %279 = index.floordivs %c0, %133
        %cast_61 = tensor.cast %20 : tensor<i1> to tensor<i1>
        %280 = index.ceildivs %c0, %c5
        %281 = arith.cmpi slt, %c357594057_i64, %c331352479_i64 : i64
        %282 = arith.addi %c331352479_i64, %c331352479_i64 : i64
        vector.print %69 : vector<9xi1>
        %283 = math.ceil %cst_27 : f16
        %284 = tensor.empty() : tensor<8xf16>
        scf.yield %284 : tensor<8xf16>
      }
      %268 = index.casts %96 : index to i32
      %269 = index.castu %c2 : index to i32
      bufferization.dealloc_tensor %7 : tensor<6x9xf32>
      %270 = vector.broadcast %extracted_36 : i16 to vector<8x9xi16>
      scf.yield %270 : vector<8x9xi16>
    }
    default {
      %253 = math.roundeven %cst_3 : f32
      %254 = vector.broadcast %c0_i16 : i16 to vector<6x6xi16>
      %255 = vector.outerproduct %74, %74, %254 {kind = #vector.kind<mul>} : vector<6xi16>, vector<6xi16>
      memref.store %cst_8, %alloc_22[%c2, %c3] : memref<8x8xf16>
      %256 = math.cos %cst_8 : f16
      %257 = math.cos %cst_27 : f16
      %258 = math.ctlz %c331352479_i64 : i64
      %259 = index.floordivs %133, %138
      %260 = vector.extract_strided_slice %162 {offsets = [3], sizes = [3], strides = [1]} : vector<8xi32> to vector<3xi32>
      %261 = math.tan %cst_6 : f32
      %262 = arith.negf %cst_27 : f16
      %generated_60 = tensor.generate %71 {
      ^bb0(%arg0: index):
        memref.assume_alignment %alloc_15, 16 : memref<8x9xi1>
        %269 = vector.flat_transpose %44 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
        %270 = memref.realloc %alloc_20 : memref<8xf32> to memref<8xf32>
        %271 = arith.maxf %cst_4, %cst_1 : f16
        tensor.yield %c1682_i16 : i16
      } : tensor<?xi16>
      %263 = index.castu %88 : index to i32
      %264 = arith.maxui %c357594057_i64, %119 : i64
      %265 = index.sizeof
      %266 = memref.load %alloc_21[%c6, %c7] : memref<8x9xi32>
      %267 = index.maxu %c0, %138
      %268 = vector.broadcast %c0_i16 : i16 to vector<8x9xi16>
      scf.yield %268 : vector<8x9xi16>
    }
    %c0_i16_41 = arith.constant 0 : i16
    %c0_i16_42 = arith.constant 0 : i16
    %166 = vector.transfer_read %13[%c9], %c0_i16_42 : tensor<8xi16>, vector<i16>
    %167 = memref.realloc %alloc_17 : memref<8xi1> to memref<9xi1>
    %168 = memref.load %alloc_19[%c1, %c7] : memref<8x8xi16>
    %169 = index.sub %129, %96
    %170 = memref.realloc %alloc_24 : memref<8xf32> to memref<8xf32>
    %171 = arith.shrsi %c0_i16_41, %c1682_i16 : i16
    %inserted_43 = tensor.insert %cst_8 into %9[%c0, %c1] : tensor<6x9xf16>
    %172 = vector.insertelement %false, %90[%88 : index] : vector<9xi1>
    affine.for %arg0 = 0 to 96 {
    }
    %173 = math.tan %16 : tensor<8x9xf16>
    %174 = index.maxu %c11, %c13
    %175 = arith.maxsi %c2074351184_i64, %c357594057_i64 : i64
    %176 = math.cttz %c0_i16_41 : i16
    %generated = tensor.generate %138 {
    ^bb0(%arg0: index):
      %253 = vector.matrix_multiply %73, %62 {lhs_columns = 1 : i32, lhs_rows = 6 : i32, rhs_columns = 1 : i32} : (vector<6xi1>, vector<1xi1>) -> vector<6xi1>
      affine.for %arg1 = 0 to 62 {
      }
      %254 = vector.bitcast %62 : vector<1xi1> to vector<1xi1>
      affine.for %arg1 = 0 to 81 {
      }
      tensor.yield %false : i1
    } : tensor<?xi1>
    affine.store %c1682_i16, %alloc_13[%c15, %c11] : memref<8x8xi16>
    %177 = math.fpowi %7, %160 : tensor<6x9xf32>, tensor<6x9xi32>
    %178 = math.atan2 %11, %11 : tensor<8x8xf16>
    %179 = vector.reduction <maxf>, %131 : vector<8xf16> into f16
    %180 = arith.ceildivsi %c331352479_i64, %c357594057_i64 : i64
    %181 = arith.remui %false_2, %false : i1
    %182 = math.round %cst_7 : f32
    %183 = arith.addi %false_2, %false : i1
    %extracted_44 = tensor.extract %5[%c5, %c2] : tensor<8x8xi16>
    %184 = arith.cmpi eq, %c0_i16_41, %c1682_i16 : i16
    %185 = math.round %9 : tensor<6x9xf16>
    %186 = math.ctpop %c1682_i16 : i16
    %cast_45 = tensor.cast %15 : tensor<8x9xf16> to tensor<?x?xf16>
    %187 = math.ceil %15 : tensor<8x9xf16>
    %188 = arith.cmpi ugt, %extracted_44, %c1682_i16 : i16
    %189 = math.log2 %8 : tensor<8x8xf16>
    %190 = math.floor %9 : tensor<6x9xf16>
    %191 = arith.floordivsi %c1_i32, %extracted : i32
    %192 = arith.shrui %c331352479_i64, %119 : i64
    %193 = arith.ceildivsi %119, %c357594057_i64 : i64
    %194 = math.absf %cst_8 : f16
    %195 = arith.minui %c1_i32, %c1_i32 : i32
    %196 = arith.remf %cst_8, %cst_0 : f16
    %alloc_46 = memref.alloc() : memref<6x9xf32>
    %197 = vector.transpose %65, [1, 0] : vector<8x9xf16> to vector<9x8xf16>
    %198 = vector.bitcast %72 : vector<6xi16> to vector<6xi16>
    %199 = arith.cmpi ne, %extracted_36, %c0_i16_41 : i16
    %200 = affine.for %arg0 = 0 to 4 iter_args(%arg1 = %198) -> (vector<6xi16>) {
      affine.yield %198 : vector<6xi16>
    }
    %201 = tensor.empty() : tensor<9x9xi64>
    %202 = tensor.empty() : tensor<6x9xi64>
    %203 = linalg.matmul ins(%6, %201 : tensor<6x9xi64>, tensor<9x9xi64>) outs(%202 : tensor<6x9xi64>) -> tensor<6x9xi64>
    scf.index_switch %c9 
    case 1 {
      %253 = math.log2 %cst_7 : f32
      %254 = vector.insertelement %true, %90[%129 : index] : vector<9xi1>
      %255 = arith.remf %cst_4, %cst_8 : f16
      %256 = index.maxu %c6, %138
      %257 = arith.mulf %cst_7, %cst : f32
      %258 = arith.divsi %c0_i16_41, %c0_i16_41 : i16
      %259 = index.mul %c2, %c9
      %260 = arith.maxsi %extracted_36, %extracted_44 : i16
      %261 = math.round %8 : tensor<8x8xf16>
      %262 = arith.cmpi ugt, %119, %119 : i64
      %263 = math.log10 %11 : tensor<8x8xf16>
      %264 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %126, %126, %126 : vector<8x8xi16>, vector<8x8xi16> into vector<8x8xi16>
      %265 = scf.while (%arg0 = %false) : (i1) -> i1 {
        %269 = memref.atomic_rmw muli %c0_i16, %alloc_13[%c2, %c3] : (i16, memref<8x8xi16>) -> i16
        %270 = memref.realloc %alloc_10 : memref<8xi32> to memref<8xi32>
        %271 = vector.insertelement %c1_i32, %161[%85 : index] : vector<8xi32>
        %inserted_60 = tensor.insert %c0_i16 into %13[%c2] : tensor<8xi16>
        %272 = math.round %7 : tensor<6x9xf32>
        %273 = index.castu %arg0 : i1 to index
        %274 = arith.cmpi uge, %arg0, %false : i1
        %275 = arith.maxsi %c1682_i16, %c0_i16_41 : i16
        scf.condition(%false) %arg0 : i1
      } do {
      ^bb0(%arg0: i1):
        %269 = index.maxs %77, %89
        %270 = arith.remf %cst_3, %cst_7 : f32
        %rank = tensor.rank %4 : tensor<8xf32>
        %271 = index.mul %101, %85
        %272 = math.round %cst_7 : f32
        %273 = math.fma %cst_3, %cst_7, %cst_6 : f32
        %274 = index.maxs %117, %67
        %275 = memref.realloc %alloc_10 : memref<8xi32> to memref<9xi32>
        %276 = index.castu %c0 : index to i32
        %277 = arith.negf %cst_1 : f16
        %278 = math.log2 %149 : tensor<6x8xf32>
        %279 = math.fma %4, %14, %4 : tensor<8xf32>
        %280 = vector.shuffle %107, %107 [4, 6, 13] : vector<8xi16>, vector<8xi16>
        %cst_60 = arith.constant 1.000000e+00 : f32
        %cst_61 = arith.constant 0.000000e+00 : f32
        %281 = vector.transfer_read %alloc_20[%138], %cst_61 : memref<8xf32>, vector<f32>
        %282 = index.floordivs %c14, %c2
        %283 = vector.create_mask %23, %c5 : vector<8x9xi1>
        scf.yield %false : i1
      }
      %266 = arith.mulf %cst_5, %cst_4 : f16
      %267 = math.cttz %20 : tensor<i1>
      %268 = arith.remsi %c331352479_i64, %119 : i64
      scf.yield
    }
    case 2 {
      %253 = arith.remf %cst, %cst_7 : f32
      scf.index_switch %c15 
      case 1 {
        %cast_62 = tensor.cast %1 : tensor<8xi64> to tensor<?xi64>
        %266 = math.tan %cst_6 : f32
        %267 = tensor.empty() : tensor<6x8xi32>
        %268 = math.fpowi %149, %267 : tensor<6x8xf32>, tensor<6x8xi32>
        %collapsed_63 = tensor.collapse_shape %cast_45 [[0, 1]] : tensor<?x?xf16> into tensor<?xf16>
        %269 = arith.shrsi %c331352479_i64, %c2074351184_i64 : i64
        %270 = arith.mulf %cst_8, %cst_8 : f16
        vector.print %126 : vector<8x8xi16>
        %271 = vector.broadcast %c14 : index to vector<8xindex>
        vector.scatter %alloc_23[%c2, %c7] [%271], %108, %161 : memref<6x9xi32>, vector<8xindex>, vector<8xi1>, vector<8xi32>
        %272 = math.fma %4, %14, %4 : tensor<8xf32>
        %273 = index.floordivs %c10, %101
        %274 = memref.realloc %alloc_17 : memref<8xi1> to memref<9xi1>
        %275 = arith.maxui %c0_i16, %extracted_44 : i16
        %276 = vector.shuffle %161, %161 [2, 3, 4, 5, 6, 9, 10, 14] : vector<8xi32>, vector<8xi32>
        %cast_64 = tensor.cast %6 : tensor<6x9xi64> to tensor<?x?xi64>
        %277 = arith.cmpi ne, %c0_i16, %c0_i16_41 : i16
        %278 = vector.insertelement %c1_i32, %161[%85 : index] : vector<8xi32>
        scf.yield
      }
      default {
        %266 = vector.insertelement %extracted_44, %107[%c9 : index] : vector<8xi16>
        %alloc_62 = memref.alloc() : memref<8xi32>
        memref.copy %alloc_10, %alloc_62 : memref<8xi32> to memref<8xi32>
        %267 = vector.outerproduct %107, %109, %126 {kind = #vector.kind<or>} : vector<8xi16>, vector<8xi16>
        %alloca_63 = memref.alloca() : memref<6x9xi64>
        %268 = vector.broadcast %extracted_44 : i16 to vector<8x8xi16>
        %rank = tensor.rank %14 : tensor<8xf32>
        %cst_64 = arith.constant 0x4E6CF04E : f32
        %alloca_65 = memref.alloca() : memref<8xi16>
        %269 = memref.load %159[%c7, %c6] : memref<8x9xi16>
        %270 = math.ceil %15 : tensor<8x9xf16>
        %inserted_66 = tensor.insert %extracted_36 into %12[%c0, %c6] : tensor<8x8xi16>
        %271 = math.fma %9, %9, %9 : tensor<6x9xf16>
        %272 = index.casts %101 : index to i32
        %273 = arith.ceildivsi %true, %false_2 : i1
        %274 = arith.ceildivsi %false, %false_2 : i1
        %275 = arith.negf %cst_27 : f16
      }
      %alloca_60 = memref.alloca() : memref<8x9xi16>
      %254 = memref.realloc %alloc : memref<8xi1> to memref<8xi1>
      %255 = vector.transpose %18, [0] : vector<9xi1> to vector<9xi1>
      %256 = index.mul %c9, %c11
      %257 = arith.negf %cst_0 : f16
      %258 = math.fma %7, %7, %7 : tensor<6x9xf32>
      %259 = memref.load %123[%c7, %c2] : memref<8x8xf16>
      %260 = arith.divsi %extracted_36, %c1682_i16 : i16
      %261 = tensor.empty() : tensor<8x9xi32>
      %262 = math.fpowi %10, %261 : tensor<8x9xf16>, tensor<8x9xi32>
      %263 = vector.flat_transpose %69 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
      %264 = index.castu %67 : index to i32
      memref.assume_alignment %alloc_10, 8 : memref<8xi32>
      %265 = math.expm1 %cst_27 : f16
      %collapsed_61 = tensor.collapse_shape %cast_45 [[0, 1]] : tensor<?x?xf16> into tensor<?xf16>
      scf.yield
    }
    default {
      %253 = tensor.empty() : tensor<9x6xi64>
      %254 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%253 : tensor<9x6xi64>) outs(%expanded : tensor<6x9x1xi64>) {
      ^bb0(%in: i64, %out: i64):
        %269 = bufferization.to_tensor %alloc_23 : memref<6x9xi32>
        %270 = affine.apply affine_map<(d0, d1) -> (0)>(%169, %c8)
        %271 = arith.minui %extracted_36, %extracted_44 : i16
        %272 = vector.bitcast %126 : vector<8x8xi16> to vector<8x8xi16>
        %273 = memref.load %159[%c2, %c3] : memref<8x9xi16>
        %274 = arith.maxf %cst, %cst_3 : f32
        %extracted_60 = tensor.extract %2[%c2, %c7] : tensor<8x8xi32>
        %275 = affine.apply affine_map<(d0, d1) -> (0)>(%c7, %c4)
        %276 = math.log10 %cst_4 : f16
        %277 = math.log %7 : tensor<6x9xf32>
        %278 = index.sizeof
        vector.print %126 : vector<8x8xi16>
        %279 = tensor.empty() : tensor<8x8xi16>
        %280 = linalg.matmul ins(%5, %12 : tensor<8x8xi16>, tensor<8x8xi16>) outs(%279 : tensor<8x8xi16>) -> tensor<8x8xi16>
        %281 = arith.cmpi ne, %c2074351184_i64, %c331352479_i64 : i64
        %282 = arith.maxf %cst_5, %cst_8 : f16
        %cst_61 = arith.constant 1.000000e+00 : f16
        %cst_62 = arith.constant 0.000000e+00 : f16
        %283 = vector.transfer_read %16[%270, %129], %cst_62 : tensor<8x9xf16>, vector<f16>
        %284 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %118, %74, %extracted_36 : vector<6xi16>, vector<6xi16> into i16
        %285 = vector.load %alloc_10[%c2] : memref<8xi32>, vector<6x9xi32>
        %collapsed_63 = tensor.collapse_shape %38 [[0, 1]] : tensor<8x8xi16> into tensor<64xi16>
        %286 = index.sub %c14, %c6
        %287 = index.maxu %85, %96
        %288 = arith.shrsi %c1682_i16, %c0_i16 : i16
        %289 = math.tan %10 : tensor<8x9xf16>
        %290 = index.sizeof
        %291 = arith.cmpi sle, %119, %in : i64
        %292 = math.roundeven %8 : tensor<8x8xf16>
        %extracted_64 = tensor.extract %14[%c1] : tensor<8xf32>
        %cst_65 = arith.constant 1.000000e+00 : f32
        %293 = vector.transfer_read %7[%85, %c3], %cst_65 : tensor<6x9xf32>, vector<f32>
        memref.tensor_store %5, %alloc_12 : memref<8x8xi16>
        %294 = index.castu %129 : index to i32
        %295 = memref.load %159[%c1, %c0] : memref<8x9xi16>
        %296 = index.ceildivu %138, %133
        linalg.yield %c331352479_i64 : i64
      } -> tensor<6x9x1xi64>
      vector.print %162 : vector<8xi32>
      %255 = arith.divsi %extracted, %c1_i32 : i32
      %256 = tensor.empty() : tensor<9x1xi64>
      %257 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded, %256 : tensor<6x9x1xi64>, tensor<9x1xi64>) outs(%expanded : tensor<6x9x1xi64>) {
      ^bb0(%in: i64, %in_60: i64, %out: i64):
        %269 = arith.addi %c1682_i16, %extracted_44 : i16
        %270 = arith.cmpi uge, %119, %c357594057_i64 : i64
        %271 = affine.apply affine_map<(d0, d1) -> (0)>(%117, %c4)
        %cast_61 = tensor.cast %15 : tensor<8x9xf16> to tensor<?x?xf16>
        %extracted_62 = tensor.extract %9[%c1, %c8] : tensor<6x9xf16>
        %272 = math.floor %11 : tensor<8x8xf16>
        %273 = math.absi %38 : tensor<8x8xi16>
        %274 = math.fma %10, %10, %16 : tensor<8x9xf16>
        %275 = math.atan2 %4, %4 : tensor<8xf32>
        %276 = math.log2 %8 : tensor<8x8xf16>
        %true_63 = index.bool.constant true
        %277 = vector.splat %c3 : vector<8x9xindex>
        %278 = math.log %cst : f32
        %279 = arith.cmpi sle, %false, %false_2 : i1
        %280 = math.fpowi %cst_8, %extracted : f16, i32
        %c1_i64 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %281 = vector.transfer_read %expanded[%77, %c11, %138], %c0_i64 : tensor<6x9x1xi64>, vector<i64>
        %alloca_64 = memref.alloca() : memref<8x8xi16>
        %282 = vector.insertelement %true, %90[%c12 : index] : vector<9xi1>
        %283 = arith.shli %119, %in : i64
        %284 = math.round %extracted_62 : f16
        %285 = math.floor %cst_4 : f16
        %286 = arith.minsi %extracted_36, %c0_i16 : i16
        vector.print %90 : vector<9xi1>
        %287 = index.mul %129, %21
        bufferization.dealloc_tensor %10 : tensor<8x9xf16>
        %288 = bufferization.clone %alloc_11 : memref<8x9xi16> to memref<8x9xi16>
        %289 = index.castu %c1_i32 : i32 to index
        %290 = vector.broadcast %cst_27 : f16 to vector<9xf16>
        %dest_65, %accumulated_value_66 = vector.scan <maxf>, %65, %290 {inclusive = true, reduction_dim = 0 : i64} : vector<8x9xf16>, vector<9xf16>
        %collapsed_67 = tensor.collapse_shape %6 [[0, 1]] : tensor<6x9xi64> into tensor<54xi64>
        %291 = arith.divsi %false_2, %true : i1
        %292 = index.castu %c2 : index to i32
        %293 = arith.divf %cst_6, %cst_3 : f32
        linalg.yield %c2074351184_i64 : i64
      } -> tensor<6x9x1xi64>
      %258 = math.roundeven %cst_1 : f16
      %259 = arith.minsi %c357594057_i64, %c2074351184_i64 : i64
      %260 = memref.realloc %alloc_20 : memref<8xf32> to memref<6xf32>
      %261 = vector.splat %cst_0 : vector<8x8xf16>
      %262 = index.sizeof
      %263 = math.log %15 : tensor<8x9xf16>
      %264 = vector.broadcast %c12 : index to vector<8xindex>
      vector.scatter %alloc_17[%c6] [%264], %108, %108 : memref<8xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
      %265 = affine.apply affine_map<(d0, d1) -> (0)>(%c11, %117)
      %266 = arith.cmpi ule, %c0_i16, %c1682_i16 : i16
      %267 = arith.maxf %cst_6, %cst_6 : f32
      %268 = index.maxu %94, %86
      vector.print %62 : vector<1xi1>
    }
    %204 = vector.load %159[%c7, %c4] : memref<8x9xi16>, vector<8x8xi16>
    %collapsed_47 = tensor.collapse_shape %11 [[0, 1]] : tensor<8x8xf16> into tensor<64xf16>
    %205 = index.casts %c10 : index to i32
    %206 = math.cos %8 : tensor<8x8xf16>
    %207 = vector.broadcast %c0 : index to vector<9xindex>
    %208 = vector.broadcast %extracted_44 : i16 to vector<9xi16>
    vector.scatter %alloc_13[%c6, %c6] [%207], %44, %208 : memref<8x8xi16>, vector<9xindex>, vector<9xi1>, vector<9xi16>
    %209 = arith.minui %extracted, %c1_i32 : i32
    %210 = affine.apply affine_map<(d0, d1) -> (0)>(%113, %c5)
    %211 = memref.load %alloc_12[%c1, %c7] : memref<8x8xi16>
    %212 = index.maxu %50, %c2
    %alloc_48 = memref.alloc() : memref<8x9xf16>
    memref.store %true, %alloc_14[%c4, %c6] : memref<8x9xi1>
    %213 = index.divs %c3, %71
    %214 = vector.broadcast %c12 : index to vector<8xindex>
    vector.scatter %alloc_23[%c3, %c5] [%214], %108, %161 : memref<6x9xi32>, vector<8xindex>, vector<8xi1>, vector<8xi32>
    %215 = bufferization.clone %alloc : memref<8xi1> to memref<8xi1>
    %216 = arith.maxsi %false_2, %true : i1
    %217 = arith.minsi %extracted, %c1_i32 : i32
    %expanded_49 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<8x9xf16> into tensor<8x9x1xf16>
    %218 = math.ipowi %extracted, %c1_i32 : i32
    %219 = arith.shli %extracted_44, %c0_i16_41 : i16
    %220 = math.fma %149, %149, %149 : tensor<6x8xf32>
    vector.print %73 : vector<6xi1>
    %221 = math.tan %7 : tensor<6x9xf32>
    %222 = math.fma %cst_0, %cst_8, %cst_27 : f16
    %223 = index.mul %c8, %c13
    %false_50 = index.bool.constant false
    %224 = arith.divsi %extracted_36, %extracted_44 : i16
    %expanded_51 = tensor.expand_shape %14 [[0, 1]] : tensor<8xf32> into tensor<8x1xf32>
    %225 = arith.minui %false_2, %false_2 : i1
    %alloca_52 = memref.alloca() : memref<6x9xf16>
    %226 = arith.cmpf true, %cst_27, %cst_8 : f16
    %227 = vector.flat_transpose %72 {columns = 2 : i32, rows = 3 : i32} : vector<6xi16> -> vector<6xi16>
    %dest, %accumulated_value = vector.scan <minf>, %112, %131 {inclusive = false, reduction_dim = 0 : i64} : vector<8x8xf16>, vector<8xf16>
    %true_53 = index.bool.constant true
    %228 = math.expm1 %9 : tensor<6x9xf16>
    %229 = math.cos %8 : tensor<8x8xf16>
    %230 = index.sizeof
    %231 = math.fpowi %cst_1, %extracted : f16, i32
    %232 = vector.maskedload %80[%c4, %c8], %69, %18 : memref<6x9xi1>, vector<9xi1>, vector<9xi1> into vector<9xi1>
    %233 = math.round %4 : tensor<8xf32>
    %234 = index.sub %c7, %c10
    %235 = arith.maxf %cst_8, %cst_27 : f16
    %expanded_54 = tensor.expand_shape %14 [[0, 1]] : tensor<8xf32> into tensor<8x1xf32>
    %collapsed_55 = tensor.collapse_shape %15 [[0, 1]] : tensor<8x9xf16> into tensor<72xf16>
    %236 = affine.load %alloc_17[%c5] : memref<8xi1>
    %237 = math.log2 %collapsed_47 : tensor<64xf16>
    %238 = math.tan %cst : f32
    %239 = memref.realloc %alloc_20 : memref<8xf32> to memref<9xf32>
    %240 = arith.minui %false_50, %false_50 : i1
    %241 = arith.remsi %c2074351184_i64, %119 : i64
    %242 = vector.insertelement %false_50, %90[%89 : index] : vector<9xi1>
    %243 = arith.remui %c1682_i16, %c0_i16_41 : i16
    %244 = arith.divf %cst_8, %cst_1 : f16
    %245 = index.sizeof
    %246 = tensor.empty() : tensor<8x9xf16>
    %mapped = linalg.map ins(%15, %15 : tensor<8x9xf16>, tensor<8x9xf16>) outs(%246 : tensor<8x9xf16>)
      (%in: f16, %in_60: f16) {
        %253 = math.floor %cst_7 : f32
        memref.assume_alignment %alloc_26, 2 : memref<8xi1>
        vector.print %204 : vector<8x8xi16>
        %254 = index.castu %119 : i64 to index
        %255 = index.sizeof
        %256 = tensor.empty() : tensor<8x9xi32>
        %257 = math.fpowi %15, %256 : tensor<8x9xf16>, tensor<8x9xi32>
        %258 = vector.load %alloc_12[%c3, %c3] : memref<8x8xi16>, vector<8x9xi16>
        bufferization.dealloc_tensor %202 : tensor<6x9xi64>
        %259 = math.ctlz %1 : tensor<8xi64>
        %260 = vector.splat %234 : vector<6x9xindex>
        memref.alloca_scope  {
          %expanded_65 = tensor.expand_shape %3 [[0, 1]] : tensor<8xi32> into tensor<8x1xi32>
          %c0_i32_66 = arith.constant 0 : i32
          %278 = vector.transfer_read %expanded_65[%213, %c7], %c0_i32_66 : tensor<8x1xi32>, vector<i32>
          %279 = index.casts %c10 : index to i32
          %alloca_67 = memref.alloca() : memref<8x8xf32>
          %280 = index.sizeof
          %281 = vector.broadcast %c0_i32_66 : i32 to vector<8x8xi32>
          %282 = vector.broadcast %true_53 : i1 to vector<8x8xi1>
          %283 = vector.gather %alloc_16[%169, %138] [%281], %282, %281 : memref<6x9xi32>, vector<8x8xi32>, vector<8x8xi1>, vector<8x8xi32> into vector<8x8xi32>
          %284 = bufferization.clone %alloc_16 : memref<6x9xi32> to memref<6x9xi32>
          %285 = memref.atomic_rmw addi %c0_i32_66, %284[%c3, %c5] : (i32, memref<6x9xi32>) -> i32
          %286 = vector.bitcast %126 : vector<8x8xi16> to vector<8x8xi16>
          %287 = arith.cmpi ule, %extracted, %c1_i32 : i32
          %288 = index.sub %c11, %c6
          %289 = math.fpowi %8, %2 : tensor<8x8xf16>, tensor<8x8xi32>
          %290 = arith.addi %c331352479_i64, %c331352479_i64 : i64
          %291 = math.exp %cst_6 : f32
          %292 = math.cos %expanded_51 : tensor<8x1xf32>
          %293 = math.roundeven %11 : tensor<8x8xf16>
          %294 = index.divs %212, %96
          %295 = arith.cmpi sle, %false_2, %true : i1
          %296 = vector.broadcast %169 : index to vector<6xindex>
          vector.scatter %alloc_15[%c0, %c1] [%296], %73, %73 : memref<8x9xi1>, vector<6xindex>, vector<6xi1>, vector<6xi1>
          %297 = tensor.empty() : tensor<9x8xf16>
          %298 = tensor.empty() : tensor<8x8xf16>
          %299 = linalg.matmul ins(%15, %297 : tensor<8x9xf16>, tensor<9x8xf16>) outs(%298 : tensor<8x8xf16>) -> tensor<8x8xf16>
          %300 = arith.remf %cst, %cst_7 : f32
          %301 = math.cos %cst_4 : f16
          %302 = arith.maxf %in, %cst_27 : f16
          %303 = math.ceil %298 : tensor<8x8xf16>
          %304 = bufferization.clone %215 : memref<8xi1> to memref<8xi1>
          %305 = vector.transpose %108, [0] : vector<8xi1> to vector<8xi1>
          %306 = math.ctlz %202 : tensor<6x9xi64>
          %collapsed_68 = tensor.collapse_shape %256 [[0, 1]] : tensor<8x9xi32> into tensor<72xi32>
          %alloca_69 = memref.alloca() : memref<8xf32>
          %307 = index.maxs %169, %c0
          %308 = arith.mulf %cst_5, %cst_5 : f16
          %extracted_70 = tensor.extract %256[%c7, %c8] : tensor<8x9xi32>
        }
        %261 = index.castu %236 : i1 to index
        %262 = arith.maxui %c2074351184_i64, %119 : i64
        %263 = index.mul %c6, %117
        affine.store %extracted_44, %alloc_13[%c0, %c13] : memref<8x8xi16>
        %264 = vector.insertelement %true_53, %108[%c1 : index] : vector<8xi1>
        %cst_61 = arith.constant 1.000000e+00 : f32
        %cst_62 = arith.constant 0.000000e+00 : f32
        %265 = vector.transfer_read %4[%77], %cst_62 : tensor<8xf32>, vector<f32>
        %266 = math.atan2 %7, %7 : tensor<6x9xf32>
        %267 = memref.load %alloc_25[%c2] : memref<9xf32>
        bufferization.dealloc_tensor %expanded_51 : tensor<8x1xf32>
        %268 = vector.broadcast %false_50 : i1 to vector<8x9xi1>
        %269 = math.sqrt %7 : tensor<6x9xf32>
        %270 = math.cttz %c0_i16_41 : i16
        %271 = math.floor %149 : tensor<6x8xf32>
        %272 = arith.mulf %cst_3, %cst_7 : f32
        %273 = vector.reduction <add>, %131 : vector<8xf16> into f16
        %274 = tensor.empty(%254) : tensor<?xf32>
        %false_63 = arith.constant false
        %275 = index.sizeof
        %276 = affine.apply affine_map<(d0, d1, d2) -> (16)>(%c8, %263, %88)
        %rank = tensor.rank %collapsed : tensor<64xf16>
        %277 = math.log2 %cst_6 : f32
        %cst_64 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_64 : f16
      }
    %247 = index.sub %c13, %71
    %248 = index.ceildivs %117, %70
    %inserted_56 = tensor.insert %false_2 into %20[] : tensor<i1>
    %extracted_57 = tensor.extract %11[%c1, %c4] : tensor<8x8xf16>
    %249 = tensor.empty() : tensor<8x8xi16>
    %250 = linalg.copy ins(%5 : tensor<8x8xi16>) outs(%249 : tensor<8x8xi16>) -> tensor<8x8xi16>
    %alloc_58 = memref.alloc() : memref<8x8xf16>
    linalg.transpose ins(%8 : tensor<8x8xf16>) outs(%alloc_58 : memref<8x8xf16>) permutation = [1, 0] 
    %alloc_59 = memref.alloc() : memref<i64>
    linalg.reduce ins(%0 : tensor<6x9xi64>) outs(%alloc_59 : memref<i64>) dimensions = [0, 1] 
      (%in: i64, %init: i64) {
        %253 = arith.shrui %c357594057_i64, %c357594057_i64 : i64
        %254 = arith.shrsi %true, %false_2 : i1
        %255 = memref.alloca_scope  -> (memref<8xi32>) {
          %260 = math.cos %7 : tensor<6x9xf32>
          memref.assume_alignment %alloc_15, 2 : memref<8x9xi1>
          %261 = arith.shrsi %c1_i32, %c1_i32 : i32
          %262 = vector.broadcast %true : i1 to vector<9x9xi1>
          %263 = vector.outerproduct %44, %90, %262 {kind = #vector.kind<mul>} : vector<9xi1>, vector<9xi1>
          %264 = vector.splat %245 : vector<8xindex>
          %265 = math.cttz %1 : tensor<8xi64>
          memref.tensor_store %249, %alloc_13 : memref<8x8xi16>
          %266 = vector.insertelement %236, %62[%223 : index] : vector<1xi1>
          %splat = tensor.splat %cst_1 : tensor<6x9xf16>
          %extracted_60 = tensor.extract %11[%c0, %c5] : tensor<8x8xf16>
          %extracted_61 = tensor.extract %0[%c1, %c7] : tensor<6x9xi64>
          %267 = vector.flat_transpose %18 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
          %268 = vector.splat %c1 : vector<8x9xindex>
          %269 = arith.remf %cst_6, %cst : f32
          %270 = vector.broadcast %cst_27 : f16 to vector<9xf16>
          %271 = vector.insert %270, %65 [0] : vector<9xf16> into vector<8x9xf16>
          %272 = arith.maxf %cst_7, %cst : f32
          %collapsed_62 = tensor.collapse_shape %5 [[0, 1]] : tensor<8x8xi16> into tensor<64xi16>
          %273 = math.log10 %cst_27 : f16
          %274 = arith.divf %cst_3, %cst_6 : f32
          %275 = vector.splat %245 : vector<8x8xindex>
          %276 = arith.muli %true, %true : i1
          %collapsed_63 = tensor.collapse_shape %expanded_54 [[0, 1]] : tensor<8x1xf32> into tensor<8xf32>
          %277 = arith.remf %extracted_60, %extracted_60 : f16
          %278 = math.roundeven %246 : tensor<8x9xf16>
          %279 = arith.minui %236, %false_50 : i1
          %280 = bufferization.clone %alloc_22 : memref<8x8xf16> to memref<8x8xf16>
          %281 = math.copysign %9, %9 : tensor<6x9xf16>
          %282 = arith.cmpi ult, %236, %true_53 : i1
          memref.store %cst_27, %alloc_58[%c2, %c5] : memref<8x8xf16>
          %283 = math.ipowi %12, %38 : tensor<8x8xi16>
          %284 = arith.minui %in, %init : i64
          %285 = arith.cmpi ugt, %119, %c331352479_i64 : i64
          memref.alloca_scope.return %alloc_10 : memref<8xi32>
        }
        %256 = math.cttz %119 : i64
        memref.alloca_scope  {
          %260 = math.fpowi %4, %3 : tensor<8xf32>, tensor<8xi32>
          %261 = math.atan2 %8, %8 : tensor<8x8xf16>
          %rank = tensor.rank %14 : tensor<8xf32>
          %262 = math.ipowi %249, %249 : tensor<8x8xi16>
          %263 = affine.apply affine_map<(d0, d1) -> (-d0)>(%86, %c6)
          %264 = arith.mulf %extracted_57, %cst_4 : f16
          %265 = vector.reduction <mul>, %73 : vector<6xi1> into i1
          %266 = vector.reduction <add>, %109 : vector<8xi16> into i16
          %267 = math.ctlz %0 : tensor<6x9xi64>
          %inserted_60 = tensor.insert %cst_1 into %expanded_49[%c2, %c6, %c0] : tensor<8x9x1xf16>
          %268 = index.maxu %c11, %212
          %269 = arith.maxf %cst_6, %cst_7 : f32
          %270 = math.absi %c2074351184_i64 : i64
          %271 = math.fpowi %4, %3 : tensor<8xf32>, tensor<8xi32>
          %272 = arith.maxui %true_53, %false_2 : i1
          %273 = vector.bitcast %112 : vector<8x8xf16> to vector<8x8xf16>
          memref.copy %alloc_23, %alloc_16 : memref<6x9xi32> to memref<6x9xi32>
          %inserted_61 = tensor.insert %cst_3 into %cast[%c0] : tensor<?xf32>
          %274 = vector.broadcast %false : i1 to vector<9x9xi1>
          %275 = vector.outerproduct %232, %18, %274 {kind = #vector.kind<maxsi>} : vector<9xi1>, vector<9xi1>
          %276 = arith.ceildivsi %init, %c357594057_i64 : i64
          %277 = math.ipowi %0, %6 : tensor<6x9xi64>
          %278 = index.maxu %42, %130
          %279 = vector.insertelement %cst_5, %131[%c8 : index] : vector<8xf16>
          %280 = arith.shrsi %c331352479_i64, %in : i64
          %281 = vector.broadcast %247 : index to vector<8xindex>
          vector.scatter %alloc_17[%c5] [%281], %108, %108 : memref<8xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
          %282 = tensor.empty() : tensor<8x8xf16>
          %283 = linalg.matmul ins(%8, %11 : tensor<8x8xf16>, tensor<8x8xf16>) outs(%282 : tensor<8x8xf16>) -> tensor<8x8xf16>
          %284 = arith.cmpi eq, %true_53, %true : i1
          %285 = math.rsqrt %cst_6 : f32
          %286 = vector.broadcast %cst : f32 to vector<8xf32>
          %287 = vector.fma %286, %286, %286 : vector<8xf32>
          %288 = affine.apply affine_map<(d0, d1, d2) -> (d2 + 128)>(%230, %245, %129)
          %289 = math.copysign %cst_4, %cst_4 : f16
          %290 = tensor.empty() : tensor<8x8xf32>
          %291 = vector.broadcast %cst : f32 to vector<8x9xf32>
          %292 = vector.broadcast %236 : i1 to vector<8x9xi1>
          %293 = vector.broadcast %extracted : i32 to vector<8x9xi32>
          %294 = vector.gather %290[%96, %174] [%293], %292, %291 : tensor<8x8xf32>, vector<8x9xi32>, vector<8x9xi1>, vector<8x9xf32> into vector<8x9xf32>
        }
        %257 = arith.ceildivsi %init, %in : i64
        %258 = arith.cmpi ult, %false_2, %236 : i1
        %259 = arith.minui %in, %c331352479_i64 : i64
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %251 = scf.parallel (%arg0, %arg1) = (%85, %138) to (%c7, %133) step (%c8, %c6) init (%69) -> vector<9xi1> {
      %253 = memref.load %alloc_26[%c2] : memref<8xi1>
      %expanded_60 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<8x8xi32> into tensor<8x8x1xi32>
      %254 = vector.extract_strided_slice %131 {offsets = [1], sizes = [2], strides = [1]} : vector<8xf16> to vector<2xf16>
      %255 = memref.alloca_scope  -> (i1) {
        %263 = math.log2 %expanded_51 : tensor<8x1xf32>
        %264 = math.fma %14, %14, %4 : tensor<8xf32>
        %265 = index.maxu %133, %223
        %266 = arith.minui %false, %236 : i1
        %267 = vector.insertelement %false_2, %108[%113 : index] : vector<8xi1>
        %alloc_66 = memref.alloc() : memref<6x9xi32>
        %268 = math.fma %extracted_57, %cst_5, %extracted_57 : f16
        %269 = vector.splat %265 : vector<8x8xindex>
        %270 = index.ceildivu %130, %210
        %271 = math.log10 %collapsed : tensor<64xf16>
        %272 = arith.minui %236, %true : i1
        %273 = index.ceildivs %c4, %c12
        %274 = math.cttz %160 : tensor<6x9xi32>
        %alloca_67 = memref.alloca() : memref<8x8xi1>
        %alloc_68 = memref.alloc() : memref<6x9xi16>
        memref.assume_alignment %alloc_16, 16 : memref<6x9xi32>
        %275 = math.atan2 %collapsed, %collapsed_47 : tensor<64xf16>
        %276 = vector.splat %arg0 : vector<8xindex>
        %277 = math.tan %149 : tensor<6x8xf32>
        %278 = vector.insertelement %true, %90[%129 : index] : vector<9xi1>
        %279 = math.atan2 %cst_7, %cst_7 : f32
        %280 = math.ctlz %202 : tensor<6x9xi64>
        %281 = index.mul %70, %174
        %282 = arith.minf %cst_8, %cst_27 : f16
        %283 = math.atan2 %cst_6, %cst : f32
        %284 = arith.shrui %c1_i32, %extracted : i32
        %285 = arith.maxf %cst_7, %cst_6 : f32
        %286 = math.round %15 : tensor<8x9xf16>
        %287 = math.absf %9 : tensor<6x9xf16>
        %extracted_69 = tensor.extract %4[%c5] : tensor<8xf32>
        memref.copy %123, %alloc_58 : memref<8x8xf16> to memref<8x8xf16>
        %288 = index.castu %c331352479_i64 : i64 to index
        memref.alloca_scope.return %false : i1
      }
      %256 = memref.load %alloc_17[%c5] : memref<8xi1>
      %alloc_61 = memref.alloc() : memref<8x8xi1>
      %inserted_62 = tensor.insert %cst_6 into %14[%c1] : tensor<8xf32>
      %257 = index.castu %false : i1 to index
      vector.print %73 : vector<6xi1>
      %cast_63 = tensor.cast %collapsed : tensor<64xf16> to tensor<?xf16>
      %258 = vector.shuffle %34, %73 [0, 1, 2, 3, 4, 5] : vector<1xi1>, vector<6xi1>
      %259 = vector.insertelement %255, %108[%248 : index] : vector<8xi1>
      %260 = math.cos %cst_4 : f16
      %261 = arith.divui %119, %c2074351184_i64 : i64
      %collapsed_64 = tensor.collapse_shape %38 [[0, 1]] : tensor<8x8xi16> into tensor<64xi16>
      %alloca_65 = memref.alloca() : memref<8xi1>
      %262 = vector.broadcast %false : i1 to vector<9xi1>
      scf.reduce(%262)  : vector<9xi1> {
      ^bb0(%arg2: vector<9xi1>, %arg3: vector<9xi1>):
        %expanded_66 = tensor.expand_shape %17 [[0], [1, 2]] : tensor<8x9xf16> into tensor<8x9x1xf16>
        %263 = math.absf %7 : tensor<6x9xf32>
        %264 = arith.maxui %c2074351184_i64, %c2074351184_i64 : i64
        %265 = math.round %9 : tensor<6x9xf16>
        %266 = vector.splat %cst_5 : vector<8x8xf16>
        %267 = math.atan2 %11, %8 : tensor<8x8xf16>
        %268 = arith.cmpi sgt, %236, %255 : i1
        %cast_67 = tensor.cast %160 : tensor<6x9xi32> to tensor<?x?xi32>
        %269 = vector.broadcast %false : i1 to vector<9xi1>
        scf.reduce.return %269 : vector<9xi1>
      }
      scf.yield
    }
    %252 = affine.vector_load %alloc_22[%c11, %c1] : memref<8x8xf16>, vector<8xf16>
    affine.vector_store %74, %alloc_11[%c15, %67] : memref<8x9xi16>, vector<6xi16>
    vector.print %18 : vector<9xi1>
    vector.print %34 : vector<1xi1>
    vector.print %44 : vector<9xi1>
    vector.print %62 : vector<1xi1>
    vector.print %65 : vector<8x9xf16>
    vector.print %69 : vector<9xi1>
    vector.print %72 : vector<6xi16>
    vector.print %73 : vector<6xi1>
    vector.print %74 : vector<6xi16>
    vector.print %90 : vector<9xi1>
    vector.print %107 : vector<8xi16>
    vector.print %108 : vector<8xi1>
    vector.print %109 : vector<8xi16>
    vector.print %112 : vector<8x8xf16>
    vector.print %118 : vector<6xi16>
    vector.print %126 : vector<8x8xi16>
    vector.print %131 : vector<8xf16>
    vector.print %161 : vector<8xi32>
    vector.print %162 : vector<8xi32>
    vector.print %198 : vector<6xi16>
    vector.print %204 : vector<8x8xi16>
    vector.print %227 : vector<6xi16>
    vector.print %232 : vector<9xi1>
    vector.print %252 : vector<8xf16>
    vector.print %c1682_i16 : i16
    vector.print %false : i1
    vector.print %cst : f32
    vector.print %c331352479_i64 : i64
    vector.print %cst_0 : f16
    vector.print %c357594057_i64 : i64
    vector.print %cst_1 : f16
    vector.print %false_2 : i1
    vector.print %c2074351184_i64 : i64
    vector.print %cst_3 : f32
    vector.print %cst_4 : f16
    vector.print %true : i1
    vector.print %cst_5 : f16
    vector.print %cst_6 : f32
    vector.print %cst_7 : f32
    vector.print %cst_8 : f16
    vector.print %cst_27 : f16
    vector.print %c1_i32 : i32
    vector.print %extracted : i32
    vector.print %119 : i64
    vector.print %extracted_36 : i16
    vector.print %c0_i16 : i16
    vector.print %c0_i16_41 : i16
    vector.print %extracted_44 : i16
    vector.print %false_50 : i1
    vector.print %true_53 : i1
    vector.print %236 : i1
    vector.print %extracted_57 : f16
    return
  }
}
