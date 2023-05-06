module {
  func.func private @func1(%arg0: index, %arg1: memref<4x6xi1>, %arg2: memref<6xi32>) {
    %c7156_i16 = arith.constant 7156 : i16
    %cst = arith.constant 6.470400e+04 : f16
    %c450875939_i32 = arith.constant 450875939 : i32
    %cst_0 = arith.constant 6.473600e+04 : f16
    %cst_1 = arith.constant 0x4E31F820 : f32
    %cst_2 = arith.constant 0x4D346F61 : f32
    %c20322_i16 = arith.constant 20322 : i16
    %cst_3 = arith.constant 2.10719078E+9 : f32
    %c797964334_i64 = arith.constant 797964334 : i64
    %c1936549062_i64 = arith.constant 1936549062 : i64
    %c1209125426_i64 = arith.constant 1209125426 : i64
    %c-1563_i16 = arith.constant -1563 : i16
    %true = arith.constant true
    %c715236232_i32 = arith.constant 715236232 : i32
    %c18635_i16 = arith.constant 18635 : i16
    %c660254205_i64 = arith.constant 660254205 : i64
    %0 = tensor.empty() : tensor<6xi32>
    %1 = tensor.empty() : tensor<4x6xi64>
    %2 = tensor.empty() : tensor<6xf16>
    %3 = tensor.empty() : tensor<6xi1>
    %4 = tensor.empty() : tensor<6xi1>
    %5 = tensor.empty() : tensor<6xi64>
    %6 = tensor.empty() : tensor<6xi16>
    %7 = tensor.empty() : tensor<6xf32>
    %8 = tensor.empty() : tensor<6xi16>
    %9 = tensor.empty() : tensor<6xi64>
    %10 = tensor.empty() : tensor<4x6xf32>
    %11 = tensor.empty() : tensor<6xi16>
    %12 = tensor.empty() : tensor<6xi32>
    %13 = tensor.empty() : tensor<6xi64>
    %14 = tensor.empty() : tensor<6xi16>
    %15 = tensor.empty() : tensor<6xf32>
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
    %alloc = memref.alloc() : memref<6xi16>
    %alloc_4 = memref.alloc() : memref<6xf32>
    %alloc_5 = memref.alloc() : memref<6xi64>
    %alloc_6 = memref.alloc() : memref<6xi16>
    %alloc_7 = memref.alloc() : memref<6xi16>
    %alloc_8 = memref.alloc() : memref<4x6xi1>
    %alloc_9 = memref.alloc() : memref<4x6xi16>
    %alloc_10 = memref.alloc() : memref<4x6xi1>
    %alloc_11 = memref.alloc() : memref<6xi32>
    %alloc_12 = memref.alloc() : memref<4x6xf32>
    %alloc_13 = memref.alloc() : memref<6xi32>
    %alloc_14 = memref.alloc() : memref<6xi1>
    %alloc_15 = memref.alloc() : memref<6xi64>
    %alloc_16 = memref.alloc() : memref<6xi64>
    %alloc_17 = memref.alloc() : memref<6xi1>
    %alloc_18 = memref.alloc() : memref<6xi64>
    %16 = tensor.empty() : tensor<6xi1>
    %17 = linalg.copy ins(%4 : tensor<6xi1>) outs(%16 : tensor<6xi1>) -> tensor<6xi1>
    %alloc_19 = memref.alloc() : memref<6xf32>
    linalg.transpose ins(%alloc_4 : memref<6xf32>) outs(%alloc_19 : memref<6xf32>) permutation = [0] 
    %18 = tensor.empty() : tensor<i1>
    %reduced = linalg.reduce ins(%3 : tensor<6xi1>) outs(%18 : tensor<i1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %252 = arith.maxsi %c20322_i16, %c18635_i16 : i16
        %253 = math.ipowi %c7156_i16, %c-1563_i16 : i16
        %254 = bufferization.to_memref %16 : memref<6xi1>
        %255 = math.ctlz %in : i1
        %256 = arith.divui %c20322_i16, %c7156_i16 : i16
        %257 = arith.cmpi sge, %c18635_i16, %c18635_i16 : i16
        %258 = arith.mulf %cst_1, %cst_3 : f32
        %259 = index.sizeof
        %true_43 = arith.constant true
        linalg.yield %true_43 : i1
      }
    scf.parallel (%arg3, %arg4) = (%c15, %c15) to (%c8, %c6) step (%c14, %c2) {
      %252 = math.powf %cst_1, %cst_3 : f32
      %253 = vector.broadcast %c6 : index to vector<15xindex>
      %254 = vector.broadcast %true : i1 to vector<15xi1>
      %255 = vector.broadcast %c20322_i16 : i16 to vector<15xi16>
      vector.scatter %alloc_7[%c5] [%253], %254, %255 : memref<6xi16>, vector<15xindex>, vector<15xi1>, vector<15xi16>
      %256 = arith.shrsi %c20322_i16, %c7156_i16 : i16
      %257 = arith.xori %c1936549062_i64, %c660254205_i64 : i64
      %true_43 = index.bool.constant true
      %258 = index.divs %arg4, %c7
      %259 = math.powf %cst_1, %cst_1 : f32
      %260 = vector.broadcast %cst_1 : f32 to vector<6xf32>
      %261 = vector.shuffle %260, %260 [1, 4, 5, 6, 7, 8, 9, 11] : vector<6xf32>, vector<6xf32>
      %262 = vector.broadcast %c797964334_i64 : i64 to vector<6xi64>
      %263 = vector.broadcast %arg3 : index to vector<6xindex>
      %264 = vector.broadcast %true_43 : i1 to vector<6xi1>
      vector.scatter %alloc_16[%c2] [%263], %264, %262 : memref<6xi64>, vector<6xindex>, vector<6xi1>, vector<6xi64>
      %265 = vector.broadcast %cst_1 : f32 to vector<15x6xf32>
      %266 = vector.broadcast %cst_1 : f32 to vector<15xf32>
      %dest, %accumulated_value = vector.scan <mul>, %265, %266 {inclusive = false, reduction_dim = 1 : i64} : vector<15x6xf32>, vector<15xf32>
      %267 = index.ceildivu %c4, %c1
      %268 = index.divs %arg4, %c6
      %269 = arith.xori %c18635_i16, %c-1563_i16 : i16
      %270 = tensor.empty() : tensor<6x6xi64>
      %271 = tensor.empty() : tensor<4x6xi64>
      %272 = linalg.matmul ins(%1, %270 : tensor<4x6xi64>, tensor<6x6xi64>) outs(%271 : tensor<4x6xi64>) -> tensor<4x6xi64>
      %273 = arith.shrsi %c20322_i16, %c-1563_i16 : i16
      scf.yield
    }
    %19 = affine.vector_load %alloc_17[%c0] : memref<6xi1>, vector<6xi1>
    affine.vector_store %19, %alloc_10[%c8, %c1] : memref<4x6xi1>, vector<6xi1>
    %20 = tensor.empty() : tensor<6xi32>
    %21 = tensor.empty() : tensor<i32>
    %22 = linalg.dot ins(%alloc_13, %20 : memref<6xi32>, tensor<6xi32>) outs(%21 : tensor<i32>) -> tensor<i32>
    %23 = arith.ceildivsi %c450875939_i32, %c715236232_i32 : i32
    %24 = index.maxs %c8, %c5
    %25 = math.cos %cst_3 : f32
    %expanded = tensor.expand_shape %4 [[0, 1]] : tensor<6xi1> into tensor<6x1xi1>
    %26 = index.ceildivu %c1, %c5
    %27 = index.ceildivs %26, %c14
    %28 = math.ipowi %true, %true : i1
    %29 = vector.transpose %19, [0] : vector<6xi1> to vector<6xi1>
    %inserted = tensor.insert %c450875939_i32 into %21[] : tensor<i32>
    %30 = arith.ceildivsi %c660254205_i64, %c797964334_i64 : i64
    %31 = vector.transpose %19, [0] : vector<6xi1> to vector<6xi1>
    %32 = vector.transpose %19, [0] : vector<6xi1> to vector<6xi1>
    %33 = arith.remf %cst_3, %cst_2 : f32
    %34 = arith.xori %true, %true : i1
    %35 = arith.divf %cst, %cst : f16
    %true_20 = index.bool.constant true
    %36 = math.round %10 : tensor<4x6xf32>
    %37 = vector.flat_transpose %19 {columns = 2 : i32, rows = 3 : i32} : vector<6xi1> -> vector<6xi1>
    %38 = vector.matrix_multiply %37, %37 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi1>, vector<6xi1>) -> vector<1xi1>
    %39 = math.fpowi %15, %20 : tensor<6xf32>, tensor<6xi32>
    %40 = tensor.empty() : tensor<6xi16>
    %41 = vector.broadcast %cst_2 : f32 to vector<6xf32>
    %42 = vector.fma %41, %41, %41 : vector<6xf32>
    %43 = arith.ceildivsi %c-1563_i16, %c-1563_i16 : i16
    %44 = arith.xori %c660254205_i64, %c1936549062_i64 : i64
    %45 = tensor.empty() : tensor<4x6xi1>
    %46 = vector.broadcast %cst_1 : f32 to vector<6xf32>
    %47 = vector.fma %46, %42, %41 : vector<6xf32>
    %48 = arith.subi %c797964334_i64, %c1209125426_i64 : i64
    %49 = vector.reduction <minf>, %42 : vector<6xf32> into f32
    bufferization.dealloc_tensor %4 : tensor<6xi1>
    %50 = math.exp2 %2 : tensor<6xf16>
    %splat = tensor.splat %c20322_i16 : tensor<6xi16>
    %51 = math.atan2 %7, %15 : tensor<6xf32>
    %52 = arith.xori %c1936549062_i64, %c1936549062_i64 : i64
    %53 = arith.shrsi %true, %true_20 : i1
    %54 = arith.muli %c1209125426_i64, %c1209125426_i64 : i64
    %55 = arith.xori %c-1563_i16, %c18635_i16 : i16
    %56 = math.exp2 %cst_3 : f32
    %57 = arith.mulf %cst, %cst_0 : f16
    %collapsed = tensor.collapse_shape %1 [[0, 1]] : tensor<4x6xi64> into tensor<24xi64>
    %58 = index.ceildivs %c13, %c7
    %59 = arith.andi %true_20, %true_20 : i1
    %60 = arith.shrui %c797964334_i64, %c797964334_i64 : i64
    %61 = vector.create_mask %c12 : vector<6xi1>
    %62 = vector.transpose %38, [0] : vector<1xi1> to vector<1xi1>
    %alloca = memref.alloca() : memref<6xf32>
    memref.store %c1209125426_i64, %alloc_18[%c3] : memref<6xi64>
    %63 = math.log %7 : tensor<6xf32>
    %64 = math.cttz %c1936549062_i64 : i64
    %inserted_21 = tensor.insert %c-1563_i16 into %6[%c5] : tensor<6xi16>
    %65 = bufferization.to_memref %11 : memref<6xi16>
    %66 = index.sizeof
    %67 = arith.ceildivsi %c20322_i16, %c-1563_i16 : i16
    %68 = arith.remf %cst_0, %cst_0 : f16
    %69 = index.maxu %c12, %c13
    %70 = arith.remf %cst, %cst_0 : f16
    %71 = math.atan2 %15, %15 : tensor<6xf32>
    %72 = arith.muli %c1209125426_i64, %c1936549062_i64 : i64
    %73 = vector.broadcast %c450875939_i32 : i32 to vector<4xi32>
    %74 = vector.broadcast %true : i1 to vector<4xi1>
    %75 = vector.maskedload %alloc_13[%c3], %74, %73 : memref<6xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
    %76 = vector.insert %c450875939_i32, %73 [1] : i32 into vector<4xi32>
    %77 = math.log2 %cst_1 : f32
    %78 = arith.remf %cst_3, %cst_1 : f32
    %79 = math.ctpop %0 : tensor<6xi32>
    %80 = arith.maxf %cst_2, %cst_1 : f32
    %81 = math.ctpop %0 : tensor<6xi32>
    %82 = index.sizeof
    %splat_22 = tensor.splat %c715236232_i32 : tensor<6xi32>
    %83 = index.maxs %c11, %c9
    %84 = math.ipowi %18, %18 : tensor<i1>
    memref.alloca_scope  {
      %252 = vector.flat_transpose %61 {columns = 2 : i32, rows = 3 : i32} : vector<6xi1> -> vector<6xi1>
      %253 = arith.cmpf oeq, %cst_0, %cst_0 : f16
      %254 = index.floordivs %c1, %26
      vector.print %47 : vector<6xf32>
      %255 = math.exp2 %cst : f16
      %256 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 + 128, d2 floordiv 4 - d0, d0)>(%c12, %c14, %c4, %c14)
      %257 = math.absf %2 : tensor<6xf16>
      %rank_43 = tensor.rank %1 : tensor<4x6xi64>
      %258 = tensor.empty() : tensor<4x4x4xi32>
      %alloc_44 = memref.alloc() : memref<4xi32>
      %259 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_44, %alloc_44, %258 : memref<4xi32>, memref<4xi32>, tensor<4x4x4xi32>) outs(%258 : tensor<4x4x4xi32>) {
      ^bb0(%in: i32, %in_50: i32, %in_51: i32, %out: i32):
        %276 = math.log10 %2 : tensor<6xf16>
        %277 = arith.andi %c450875939_i32, %in_51 : i32
        %278 = vector.broadcast %26 : index to vector<4xindex>
        vector.scatter %alloc_14[%c4] [%278], %74, %74 : memref<6xi1>, vector<4xindex>, vector<4xi1>, vector<4xi1>
        %279 = arith.mulf %cst, %cst : f16
        %280 = arith.remf %cst, %cst : f16
        %281 = index.castu %out : i32 to index
        %282 = math.cttz %16 : tensor<6xi1>
        %283 = arith.ceildivsi %c660254205_i64, %c660254205_i64 : i64
        %284 = index.divu %83, %c7
        %285 = arith.shrsi %c20322_i16, %c-1563_i16 : i16
        %286 = arith.remsi %true_20, %true : i1
        %287 = vector.transpose %42, [0] : vector<6xf32> to vector<6xf32>
        %288 = vector.bitcast %41 : vector<6xf32> to vector<6xi32>
        %289 = arith.andi %c-1563_i16, %c20322_i16 : i16
        %290 = math.log %7 : tensor<6xf32>
        %291 = vector.flat_transpose %73 {columns = 2 : i32, rows = 2 : i32} : vector<4xi32> -> vector<4xi32>
        %292 = math.log %cst_1 : f32
        %293 = vector.insert %cst_2, %47 [4] : f32 into vector<6xf32>
        %extracted_52 = tensor.extract %5[%c1] : tensor<6xi64>
        %294 = bufferization.to_memref %12 : memref<6xi32>
        %295 = bufferization.clone %alloc_18 : memref<6xi64> to memref<6xi64>
        %296 = arith.xori %in, %c450875939_i32 : i32
        %297 = arith.xori %c-1563_i16, %c-1563_i16 : i16
        %298 = arith.maxf %cst_0, %cst : f16
        %299 = math.exp2 %cst : f16
        %300 = math.sqrt %cst : f16
        %301 = arith.remf %cst_0, %cst : f16
        %302 = index.maxu %c1, %284
        %303 = math.cttz %in : i32
        %304 = tensor.empty() : tensor<4x6xf16>
        %305 = math.copysign %cst_3, %cst_1 : f32
        %306 = math.absf %15 : tensor<6xf32>
        linalg.yield %in_50 : i32
      } -> tensor<4x4x4xi32>
      %260 = vector.transpose %73, [0] : vector<4xi32> to vector<4xi32>
      affine.store %true_20, %alloc_8[%c0, %c10] : memref<4x6xi1>
      %261 = affine.min affine_map<(d0, d1, d2) -> (0)>(%c10, %83, %24)
      memref.assume_alignment %alloc_6, 1 : memref<6xi16>
      %false_45 = arith.constant false
      %262 = vector.transfer_read %expanded[%c15, %c15], %false_45 : tensor<6x1xi1>, vector<i1>
      %extracted = tensor.extract %9[%c5] : tensor<6xi64>
      memref.assume_alignment %alloc_13, 2 : memref<6xi32>
      vector.print %252 : vector<6xi1>
      %263 = index.castu %c15 : index to i32
      %264 = index.castu %c715236232_i32 : i32 to index
      %265 = tensor.empty() : tensor<4x6xi1>
      %mapped_46 = linalg.map ins(%alloc_10, %alloc_8 : memref<4x6xi1>, memref<4x6xi1>) outs(%265 : tensor<4x6xi1>)
        (%in: i1, %in_50: i1) {
          %276 = vector.create_mask %256, %c11 : vector<4x6xi1>
          %277 = arith.maxsi %c18635_i16, %c7156_i16 : i16
          %278 = arith.andi %in_50, %in : i1
          %279 = affine.load %alloc_14[%c14] : memref<6xi1>
          %280 = vector.matrix_multiply %37, %61 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi1>, vector<6xi1>) -> vector<1xi1>
          %true_51 = index.bool.constant true
          %281 = math.log10 %7 : tensor<6xf32>
          %282 = arith.maxui %true, %279 : i1
          %283 = math.atan2 %cst, %cst : f16
          %284 = arith.cmpi slt, %in_50, %in_50 : i1
          %285 = memref.realloc %alloc_6 : memref<6xi16> to memref<4xi16>
          %286 = math.log2 %10 : tensor<4x6xf32>
          %287 = vector.insertelement %in_50, %280[%c1 : index] : vector<1xi1>
          %alloca_52 = memref.alloca() : memref<6xf32>
          %cst_53 = arith.constant 4.729600e+04 : f16
          %alloca_54 = memref.alloca() : memref<4x6xi1>
          affine.store %true_51, %alloc_14[%c5] : memref<6xi1>
          %inserted_55 = tensor.insert %c797964334_i64 into %9[%c0] : tensor<6xi64>
          %288 = index.castu %256 : index to i32
          %289 = math.tan %15 : tensor<6xf32>
          memref.store %c7156_i16, %alloc_9[%c2, %c1] : memref<4x6xi16>
          %290 = arith.shrsi %c450875939_i32, %c715236232_i32 : i32
          %291 = memref.realloc %alloc_15 : memref<6xi64> to memref<4xi64>
          %292 = index.add %c13, %c11
          memref.tensor_store %9, %alloc_18 : memref<6xi64>
          %293 = vector.broadcast %c10 : index to vector<6xindex>
          %294 = vector.broadcast %c715236232_i32 : i32 to vector<6xi32>
          vector.scatter %alloc_13[%c1] [%293], %37, %294 : memref<6xi32>, vector<6xindex>, vector<6xi1>, vector<6xi32>
          %295 = vector.bitcast %61 : vector<6xi1> to vector<6xi1>
          %c0_i16 = arith.constant 0 : i16
          %c0_i16_56 = arith.constant 0 : i16
          %296 = vector.transfer_read %alloc_9[%c3, %256], %c0_i16_56 : memref<4x6xi16>, vector<i16>
          %297 = memref.load %alloc_6[%c1] : memref<6xi16>
          %298 = math.atan2 %7, %7 : tensor<6xf32>
          %299 = math.log %15 : tensor<6xf32>
          bufferization.dealloc_tensor %9 : tensor<6xi64>
          %true_57 = arith.constant true
          linalg.yield %true_57 : i1
        }
      %cast_47 = tensor.cast %5 : tensor<6xi64> to tensor<?xi64>
      %266 = math.absi %0 : tensor<6xi32>
      %267 = index.sizeof
      %268 = arith.maxui %c797964334_i64, %c660254205_i64 : i64
      %269 = vector.broadcast %cst_2 : f32 to vector<6xf32>
      %270 = vector.fma %269, %47, %42 : vector<6xf32>
      %271 = math.rsqrt %15 : tensor<6xf32>
      %272 = tensor.empty() : tensor<6xi32>
      %mapped_48 = linalg.map ins(%12, %splat_22 : tensor<6xi32>, tensor<6xi32>) outs(%272 : tensor<6xi32>)
        (%in: i32, %in_50: i32) {
          %276 = bufferization.to_tensor %alloc_9 : memref<4x6xi16>
          %277 = arith.xori %false_45, %true : i1
          %278 = math.atan2 %2, %2 : tensor<6xf16>
          %279 = math.log1p %cst_2 : f32
          memref.copy %alloc_13, %alloc_11 : memref<6xi32> to memref<6xi32>
          %280 = math.log %cst_3 : f32
          %281 = vector.matrix_multiply %38, %74 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<1xi1>, vector<4xi1>) -> vector<4xi1>
          %282 = arith.cmpf uge, %cst_3, %cst_2 : f32
          %283 = arith.mulf %cst, %cst : f16
          %284 = arith.ceildivsi %c1209125426_i64, %c660254205_i64 : i64
          %285 = arith.minui %in, %in_50 : i32
          %286 = index.divs %254, %c7
          %cast_51 = tensor.cast %16 : tensor<6xi1> to tensor<?xi1>
          %287 = math.expm1 %7 : tensor<6xf32>
          %288 = vector.broadcast %c10 : index to vector<15xindex>
          %289 = vector.broadcast %false_45 : i1 to vector<15xi1>
          %290 = vector.broadcast %cst_1 : f32 to vector<15xf32>
          vector.scatter %alloc_12[%c1, %c0] [%288], %289, %290 : memref<4x6xf32>, vector<15xindex>, vector<15xi1>, vector<15xf32>
          affine.store %c-1563_i16, %alloc_7[%c1] : memref<6xi16>
          %291 = vector.broadcast %c20322_i16 : i16 to vector<6xi16>
          %292 = vector.maskedload %alloc_6[%c4], %252, %291 : memref<6xi16>, vector<6xi1>, vector<6xi16> into vector<6xi16>
          %293 = math.ipowi %12, %20 : tensor<6xi32>
          %294 = index.mul %24, %24
          bufferization.dealloc_tensor %0 : tensor<6xi32>
          %295 = math.exp2 %10 : tensor<4x6xf32>
          %296 = arith.negf %cst_0 : f16
          %297 = arith.mulf %cst_1, %cst_1 : f32
          %298 = arith.shrsi %in, %c450875939_i32 : i32
          %299 = vector.broadcast %in : i32 to vector<15x4xi32>
          %300 = vector.broadcast %in : i32 to vector<15xi32>
          %dest, %accumulated_value = vector.scan <xor>, %299, %300 {inclusive = false, reduction_dim = 1 : i64} : vector<15x4xi32>, vector<15xi32>
          %301 = index.sizeof
          %splat_52 = tensor.splat %c450875939_i32 : tensor<6xi32>
          %302 = bufferization.to_memref %14 : memref<6xi16>
          %303 = affine.load %65[%c1] : memref<6xi16>
          %304 = arith.remui %c1936549062_i64, %c797964334_i64 : i64
          memref.copy %alloc_16, %alloc_15 : memref<6xi64> to memref<6xi64>
          %305 = vector.insert %false_45, %61 [0] : i1 into vector<6xi1>
          %c1_i32 = arith.constant 1 : i32
          linalg.yield %c1_i32 : i32
        }
      %273 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 mod 8, d0, d1)>(%261, %264, %256, %c13)
      %274 = vector.transpose %269, [0] : vector<6xf32> to vector<6xf32>
      bufferization.dealloc_tensor %13 : tensor<6xi64>
      %alloca_49 = memref.alloca() : memref<4x6xi32>
      %275 = bufferization.to_memref %2 : memref<6xf16>
    }
    %cast = tensor.cast %16 : tensor<6xi1> to tensor<?xi1>
    %85 = vector.maskedload %alloc_13[%c1], %74, %75 : memref<6xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
    %86 = math.cttz %6 : tensor<6xi16>
    %87 = bufferization.to_tensor %65 : memref<6xi16>
    %88 = arith.remf %cst_0, %cst_0 : f16
    %89 = arith.addi %c7156_i16, %c20322_i16 : i16
    %90 = math.atan2 %15, %7 : tensor<6xf32>
    %91 = affine.max affine_map<(d0, d1, d2) -> (d0 ceildiv 2)>(%c9, %24, %c4)
    %92 = arith.subi %c450875939_i32, %c450875939_i32 : i32
    %93 = vector.broadcast %c450875939_i32 : i32 to vector<6xi32>
    %94 = vector.maskedload %alloc_13[%c5], %19, %93 : memref<6xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
    %95 = vector.broadcast %c715236232_i32 : i32 to vector<4x4xi32>
    %96 = vector.outerproduct %75, %73, %95 {kind = #vector.kind<mul>} : vector<4xi32>, vector<4xi32>
    vector.print %93 : vector<6xi32>
    %97 = arith.remf %cst_2, %cst_2 : f32
    %98 = arith.addi %true, %true_20 : i1
    %inserted_23 = tensor.insert %cst_0 into %2[%c1] : tensor<6xf16>
    %99 = arith.remui %c7156_i16, %c20322_i16 : i16
    %expanded_24 = tensor.expand_shape %15 [[0, 1]] : tensor<6xf32> into tensor<6x1xf32>
    %c0_i32 = arith.constant 0 : i32
    %100 = vector.transfer_read %12[%c8], %c0_i32 : tensor<6xi32>, vector<i32>
    %101 = vector.broadcast %cst_1 : f32 to vector<6xf32>
    %102 = vector.fma %101, %46, %42 : vector<6xf32>
    %103 = vector.transpose %38, [0] : vector<1xi1> to vector<1xi1>
    %104 = affine.min affine_map<(d0) -> (((d0 + d0 floordiv 32) ceildiv 4) mod 4, 0)>(%c5)
    %105 = index.sizeof
    %106 = affine.if affine_set<(d0, d1, d2) : (d2 floordiv 4 - d2 == 0, d2 mod 2 == 0, -d0 - d2 floordiv 4 - 8 >= 0)>(%c8, %c0, %c8) -> f16 {
      bufferization.dealloc_tensor %5 : tensor<6xi64>
      %252 = arith.mulf %cst, %cst_0 : f16
      %253 = arith.negf %cst_3 : f32
      %254 = arith.divsi %c715236232_i32, %c450875939_i32 : i32
      %255 = affine.load %65[%c2] : memref<6xi16>
      %256 = arith.divsi %c660254205_i64, %c1936549062_i64 : i64
      %extracted = tensor.extract %4[%c0] : tensor<6xi1>
      %rank_43 = tensor.rank %splat_22 : tensor<6xi32>
      affine.yield %cst : f16
    } else {
      memref.assume_alignment %alloc_16, 4 : memref<6xi64>
      %252 = arith.negf %cst_2 : f32
      %253 = arith.minui %c797964334_i64, %c660254205_i64 : i64
      %254 = arith.maxui %c18635_i16, %c7156_i16 : i16
      %255 = vector.bitcast %93 : vector<6xi32> to vector<6xi32>
      %256 = arith.xori %true_20, %true_20 : i1
      %257 = arith.ceildivsi %c0_i32, %c715236232_i32 : i32
      %258 = arith.divsi %c1936549062_i64, %c660254205_i64 : i64
      affine.yield %cst : f16
    }
    %107 = vector.flat_transpose %41 {columns = 2 : i32, rows = 3 : i32} : vector<6xf32> -> vector<6xf32>
    memref.assume_alignment %alloc, 16 : memref<6xi16>
    %108 = vector.reduction <minf>, %101 : vector<6xf32> into f32
    %109 = math.round %cst_3 : f32
    %110 = math.exp2 %10 : tensor<4x6xf32>
    %111 = vector.broadcast %cst_1 : f32 to vector<6xf32>
    %112 = vector.fma %111, %107, %102 : vector<6xf32>
    %113 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 floordiv 2 + 1, d2 - (d2 - (d1 + d3 + 4)))>(%c7, %c4, %c3, %27)
    %114 = vector.maskedload %alloc_19[%c0], %61, %111 : memref<6xf32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
    %115 = arith.minui %c1936549062_i64, %c660254205_i64 : i64
    %cast_25 = tensor.cast %12 : tensor<6xi32> to tensor<?xi32>
    %rank = tensor.rank %splat_22 : tensor<6xi32>
    %116 = arith.minui %c450875939_i32, %c715236232_i32 : i32
    %117 = memref.atomic_rmw mins %c797964334_i64, %alloc_18[%c4] : (i64, memref<6xi64>) -> i64
    %118 = index.ceildivs %82, %c10
    %119 = scf.index_switch %c0 -> memref<6xi64> 
    case 1 {
      %252 = math.exp2 %15 : tensor<6xf32>
      %253 = index.divu %c5, %c14
      %254 = tensor.empty() : tensor<4x4x4xi32>
      %255 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%254 : tensor<4x4x4xi32>) {
      ^bb0(%out: i32):
        %269 = arith.maxsi %c-1563_i16, %c-1563_i16 : i16
        %270 = index.castu %c1209125426_i64 : i64 to index
        %271 = arith.minui %c20322_i16, %c7156_i16 : i16
        %272 = arith.maxf %cst_1, %cst_2 : f32
        %alloc_43 = memref.alloc() : memref<6x1xi1>
        memref.tensor_store %expanded, %alloc_43 : memref<6x1xi1>
        %273 = arith.negf %cst_0 : f16
        %splat_44 = tensor.splat %c660254205_i64 : tensor<6xi64>
        %274 = arith.remsi %c20322_i16, %c18635_i16 : i16
        %275 = affine.min affine_map<(d0, d1) -> (d0, d1 * -15 - d0 * 4 + 32, d0, d1 * -15 - d0 * 4 + 32)>(%c12, %c9)
        %276 = index.divs %104, %c7
        %277 = index.divs %26, %26
        %278 = bufferization.to_tensor %alloc_16 : memref<6xi64>
        %279 = math.atan %cst_2 : f32
        %280 = index.mul %118, %c11
        %281 = math.log10 %2 : tensor<6xf16>
        %282 = arith.mulf %cst, %cst_0 : f16
        %283 = arith.divsi %c7156_i16, %c20322_i16 : i16
        %284 = index.divu %c6, %27
        %285 = math.expm1 %cst_0 : f16
        %286 = arith.floordivsi %c660254205_i64, %c1209125426_i64 : i64
        %287 = index.ceildivs %c9, %118
        %288 = bufferization.clone %65 : memref<6xi16> to memref<6xi16>
        %splat_45 = tensor.splat %cst_3 : tensor<6xf32>
        %289 = index.divs %c9, %rank
        %290 = vector.broadcast %289 : index to vector<6xindex>
        %291 = vector.broadcast %c-1563_i16 : i16 to vector<6xi16>
        vector.scatter %288[%c0] [%290], %37, %291 : memref<6xi16>, vector<6xindex>, vector<6xi1>, vector<6xi16>
        %292 = tensor.empty(%c4, %104) : tensor<?x?xi16>
        %alloca_46 = memref.alloca() : memref<4x6xi1>
        %293 = math.ipowi %14, %14 : tensor<6xi16>
        %294 = arith.floordivsi %c715236232_i32, %c715236232_i32 : i32
        %295 = memref.load %alloc_19[%c4] : memref<6xf32>
        %expanded_47 = tensor.expand_shape %15 [[0, 1]] : tensor<6xf32> into tensor<6x1xf32>
        %296 = arith.maxui %c715236232_i32, %c450875939_i32 : i32
        linalg.yield %out : i32
      } -> tensor<4x4x4xi32>
      %256 = arith.andi %c660254205_i64, %c797964334_i64 : i64
      %257 = scf.index_switch %27 -> f32 
      case 1 {
        %alloc_43 = memref.alloc() : memref<6xi1>
        %269 = arith.maxf %cst_2, %cst_2 : f32
        %270 = index.sizeof
        %alloca_44 = memref.alloca() : memref<6xi16>
        %271 = arith.subi %c797964334_i64, %c1936549062_i64 : i64
        %extracted = tensor.extract %1[%c2, %c0] : tensor<4x6xi64>
        %272 = vector.matrix_multiply %19, %19 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi1>, vector<6xi1>) -> vector<1xi1>
        %273 = math.atan2 %15, %7 : tensor<6xf32>
        %274 = vector.matrix_multiply %75, %94 {lhs_columns = 2 : i32, lhs_rows = 2 : i32, rhs_columns = 3 : i32} : (vector<4xi32>, vector<6xi32>) -> vector<6xi32>
        %275 = vector.reduction <maxsi>, %37 : vector<6xi1> into i1
        %276 = affine.min affine_map<(d0) -> (d0 mod 4 - d0, (-d0 + 8) mod 32, 0, d0 mod 4)>(%c13)
        %277 = arith.remsi %c18635_i16, %c18635_i16 : i16
        %278 = arith.subi %true, %true_20 : i1
        %279 = tensor.empty() : tensor<6xf32>
        %280 = math.powf %7, %7 : tensor<6xf32>
        %rank_45 = tensor.rank %0 : tensor<6xi32>
        scf.yield %cst_3 : f32
      }
      case 2 {
        %false_43 = index.bool.constant false
        %269 = vector.transpose %61, [0] : vector<6xi1> to vector<6xi1>
        %270 = index.maxu %c9, %58
        %271 = arith.minui %c18635_i16, %c-1563_i16 : i16
        %272 = index.divu %c5, %113
        %273 = math.log2 %cst_0 : f16
        %274 = arith.xori %c450875939_i32, %c450875939_i32 : i32
        %275 = vector.transpose %73, [0] : vector<4xi32> to vector<4xi32>
        %276 = arith.shrsi %c18635_i16, %c20322_i16 : i16
        %expanded_44 = tensor.expand_shape %9 [[0, 1]] : tensor<6xi64> into tensor<6x1xi64>
        %277 = vector.transpose %75, [0] : vector<4xi32> to vector<4xi32>
        %278 = arith.andi %c715236232_i32, %c715236232_i32 : i32
        memref.copy %65, %alloc_7 : memref<6xi16> to memref<6xi16>
        %279 = index.sizeof
        %280 = bufferization.to_tensor %alloc_13 : memref<6xi32>
        %281 = arith.remsi %true_20, %true_20 : i1
        scf.yield %cst_3 : f32
      }
      case 3 {
        %269 = arith.mulf %cst_2, %cst_1 : f32
        %270 = math.powf %10, %10 : tensor<4x6xf32>
        %271 = math.tanh %cst_0 : f16
        %272 = vector.broadcast %c1209125426_i64 : i64 to vector<6xi64>
        %273 = vector.gather %alloc_18[%c9] [%94], %61, %272 : memref<6xi64>, vector<6xi32>, vector<6xi1>, vector<6xi64> into vector<6xi64>
        %274 = memref.realloc %alloc_11 : memref<6xi32> to memref<6xi32>
        %275 = arith.addf %cst_2, %cst_2 : f32
        %276 = index.ceildivs %24, %91
        %277 = arith.maxui %c715236232_i32, %c715236232_i32 : i32
        %278 = arith.minsi %c660254205_i64, %c660254205_i64 : i64
        %279 = math.log2 %10 : tensor<4x6xf32>
        %280 = math.powf %10, %10 : tensor<4x6xf32>
        %281 = arith.maxsi %c20322_i16, %c20322_i16 : i16
        %282 = index.ceildivs %82, %c6
        vector.print %19 : vector<6xi1>
        %283 = index.sizeof
        %284 = math.log %cst_2 : f32
        scf.yield %cst_3 : f32
      }
      case 4 {
        %269 = arith.divsi %c1936549062_i64, %c660254205_i64 : i64
        %270 = math.ipowi %3, %3 : tensor<6xi1>
        %271 = arith.maxsi %c0_i32, %c715236232_i32 : i32
        %272 = arith.remf %cst_3, %cst_1 : f32
        %rank_43 = tensor.rank %5 : tensor<6xi64>
        %273 = arith.floordivsi %true, %true_20 : i1
        %274 = arith.addf %cst, %cst : f16
        %275 = arith.cmpf uge, %cst_2, %cst_3 : f32
        %276 = memref.realloc %65 : memref<6xi16> to memref<6xi16>
        %277 = math.round %cst_3 : f32
        %278 = arith.minsi %c-1563_i16, %c-1563_i16 : i16
        %279 = arith.mulf %cst_2, %cst_3 : f32
        %280 = math.fma %cst_0, %cst, %cst : f16
        %281 = index.castu %rank : index to i32
        %282 = math.log10 %10 : tensor<4x6xf32>
        %283 = math.round %cst_3 : f32
        scf.yield %cst_3 : f32
      }
      default {
        %269 = vector.transpose %74, [0] : vector<4xi1> to vector<4xi1>
        %270 = math.ipowi %c450875939_i32, %c715236232_i32 : i32
        %271 = affine.min affine_map<(d0, d1, d2) -> ((d2 mod 16 + d0 ceildiv 32) ceildiv 128, d0 ceildiv 32 - (d0 - 1))>(%c13, %c5, %c13)
        %272 = arith.remf %cst_3, %cst_1 : f32
        %273 = vector.matrix_multiply %101, %114 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xf32>, vector<6xf32>) -> vector<1xf32>
        %274 = math.ctlz %c1209125426_i64 : i64
        memref.copy %alloc, %alloc_7 : memref<6xi16> to memref<6xi16>
        %275 = arith.negf %cst_1 : f32
        %276 = arith.andi %true_20, %true : i1
        %277 = index.divu %c12, %83
        %278 = arith.cmpi ule, %c-1563_i16, %c18635_i16 : i16
        %alloc_43 = memref.alloc() : memref<4x6xf16>
        %279 = vector.broadcast %cst_0 : f16 to vector<6xf16>
        %280 = vector.gather %alloc_43[%253, %118] [%93], %61, %279 : memref<4x6xf16>, vector<6xi32>, vector<6xi1>, vector<6xf16> into vector<6xf16>
        %281 = index.divs %105, %c11
        %282 = arith.cmpi sgt, %c660254205_i64, %c660254205_i64 : i64
        %283 = math.fpowi %15, %12 : tensor<6xf32>, tensor<6xi32>
        %284 = math.fpowi %15, %0 : tensor<6xf32>, tensor<6xi32>
        scf.yield %cst_1 : f32
      }
      %258 = math.copysign %cst_3, %cst_3 : f32
      %259 = arith.xori %c715236232_i32, %c715236232_i32 : i32
      %260 = arith.remf %cst_3, %cst_2 : f32
      %261 = vector.matrix_multiply %74, %37 {lhs_columns = 2 : i32, lhs_rows = 2 : i32, rhs_columns = 3 : i32} : (vector<4xi1>, vector<6xi1>) -> vector<6xi1>
      %262 = index.castu %c450875939_i32 : i32 to index
      %263 = math.log2 %cst_0 : f16
      %264 = arith.cmpf ule, %cst_0, %cst_0 : f16
      %265 = index.maxu %118, %c0
      %266 = index.divs %c7, %113
      %267 = arith.maxsi %c797964334_i64, %c1209125426_i64 : i64
      %268 = vector.bitcast %112 : vector<6xf32> to vector<6xf32>
      scf.yield %alloc_16 : memref<6xi64>
    }
    default {
      %252 = math.fma %cst_0, %cst_0, %cst : f16
      %253 = math.ipowi %12, %0 : tensor<6xi32>
      %254 = math.cos %7 : tensor<6xf32>
      %255 = vector.matrix_multiply %73, %75 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi32>, vector<4xi32>) -> vector<1xi32>
      %256 = arith.muli %c1209125426_i64, %c660254205_i64 : i64
      %257 = arith.remsi %c18635_i16, %c7156_i16 : i16
      %258 = arith.remf %cst_3, %cst_2 : f32
      %259 = index.ceildivu %104, %91
      %260 = arith.remf %cst, %cst : f16
      %261 = math.copysign %cst, %cst : f16
      %262 = vector.flat_transpose %74 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
      %263 = arith.shrsi %c1936549062_i64, %c797964334_i64 : i64
      %264 = vector.broadcast %58 : index to vector<4xindex>
      vector.scatter %alloc_8[%c3, %c4] [%264], %262, %74 : memref<4x6xi1>, vector<4xindex>, vector<4xi1>, vector<4xi1>
      %265 = arith.mulf %cst_1, %cst_1 : f32
      %266 = arith.maxsi %c0_i32, %c0_i32 : i32
      %267 = tensor.empty() : tensor<6x1xi32>
      %268 = math.fpowi %expanded_24, %267 : tensor<6x1xf32>, tensor<6x1xi32>
      scf.yield %alloc_15 : memref<6xi64>
    }
    %120 = memref.alloca_scope  -> (i16) {
      %252 = arith.negf %cst_1 : f32
      %253 = affine.min affine_map<(d0) -> ((d0 * 2 + 2) ceildiv 4, d0, d0, ((d0 * 2 + 2) ceildiv 4) floordiv 16 + (d0 * 2 + 2) ceildiv 4 + 1)>(%c1)
      %254 = math.ipowi %6, %14 : tensor<6xi16>
      %255 = arith.maxf %cst_2, %cst_1 : f32
      %256 = arith.addi %c7156_i16, %c-1563_i16 : i16
      %257 = vector.broadcast %c660254205_i64 : i64 to vector<i64>
      %258 = vector.transfer_write %257, %9[%c2] : vector<i64>, tensor<6xi64>
      %259 = vector.gather %alloc_11[%113] [%93], %61, %94 : memref<6xi32>, vector<6xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
      %260 = index.casts %c6 : index to i32
      %261 = vector.splat %c8 : vector<6xindex>
      %262 = math.tanh %7 : tensor<6xf32>
      bufferization.dealloc_tensor %splat : tensor<6xi16>
      %263 = math.fma %2, %2, %2 : tensor<6xf16>
      bufferization.dealloc_tensor %6 : tensor<6xi16>
      %264 = vector.broadcast %c797964334_i64 : i64 to vector<6xi64>
      %265 = vector.gather %alloc_18[%c13] [%94], %61, %264 : memref<6xi64>, vector<6xi32>, vector<6xi1>, vector<6xi64> into vector<6xi64>
      %266 = math.log10 %10 : tensor<4x6xf32>
      %267 = math.ipowi %0, %splat_22 : tensor<6xi32>
      memref.assume_alignment %alloc_11, 2 : memref<6xi32>
      %inserted_43 = tensor.insert %c20322_i16 into %14[%c1] : tensor<6xi16>
      %268 = arith.divui %c20322_i16, %c20322_i16 : i16
      %269 = math.ceil %cst_3 : f32
      %270 = memref.alloca_scope  -> (i1) {
        %280 = arith.divsi %c450875939_i32, %c0_i32 : i32
        %281 = math.fma %10, %10, %10 : tensor<4x6xf32>
        %282 = math.copysign %7, %15 : tensor<6xf32>
        %283 = arith.muli %c1209125426_i64, %c660254205_i64 : i64
        %284 = math.fma %cst_3, %cst_1, %cst_3 : f32
        %285 = affine.min affine_map<(d0, d1, d2) -> (-d2, (((-d2) floordiv 8) floordiv 32) ceildiv 16, (-d2) mod 8, -d2)>(%105, %91, %c12)
        %286 = arith.ceildivsi %c715236232_i32, %c715236232_i32 : i32
        %287 = memref.realloc %alloc_6 : memref<6xi16> to memref<4xi16>
        %288 = math.ctpop %6 : tensor<6xi16>
        %289 = arith.andi %c715236232_i32, %c0_i32 : i32
        memref.assume_alignment %alloc_6, 1 : memref<6xi16>
        %290 = tensor.empty() : tensor<6xf32>
        %291 = vector.transpose %101, [0] : vector<6xf32> to vector<6xf32>
        %292 = math.ctlz %true : i1
        %splat_45 = tensor.splat %cst_3 : tensor<6xf32>
        %293 = tensor.empty() : tensor<4x1xf32>
        %294 = linalg.matmul ins(%10, %expanded_24 : tensor<4x6xf32>, tensor<6x1xf32>) outs(%293 : tensor<4x1xf32>) -> tensor<4x1xf32>
        %295 = vector.matrix_multiply %107, %46 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xf32>, vector<6xf32>) -> vector<1xf32>
        %296 = math.log10 %expanded_24 : tensor<6x1xf32>
        %297 = vector.reduction <maxsi>, %74 : vector<4xi1> into i1
        %298 = index.maxu %c4, %c15
        %299 = arith.maxf %cst_0, %cst : f16
        %300 = arith.remui %true, %true_20 : i1
        bufferization.dealloc_tensor %11 : tensor<6xi16>
        %301 = index.ceildivs %c9, %c3
        %302 = arith.remsi %true, %true : i1
        %303 = arith.minsi %c715236232_i32, %c715236232_i32 : i32
        %304 = affine.load %alloc_11[%c1] : memref<6xi32>
        %rank_46 = tensor.rank %0 : tensor<6xi32>
        %305 = arith.maxui %c660254205_i64, %c1936549062_i64 : i64
        %306 = affine.max affine_map<(d0, d1, d2, d3) -> ((d3 ceildiv 4) floordiv 2, (d1 - 64) * 128 + 4)>(%c2, %c0, %105, %c11)
        %307 = math.log2 %15 : tensor<6xf32>
        %308 = math.atan %cst_0 : f16
        memref.alloca_scope.return %true_20 : i1
      }
      %271 = arith.divsi %c660254205_i64, %c797964334_i64 : i64
      %272 = affine.if affine_set<(d0) : (0 == 0, 0 == 0, 0 >= 0, (d0 - 128) * 8 >= 0)>(%c11) -> memref<6xi32> {
        %collapsed_45 = tensor.collapse_shape %10 [[0, 1]] : tensor<4x6xf32> into tensor<24xf32>
        %280 = arith.remf %cst_3, %cst_1 : f32
        %expanded_46 = tensor.expand_shape %12 [[0, 1]] : tensor<6xi32> into tensor<6x1xi32>
        %281 = math.log2 %15 : tensor<6xf32>
        %expanded_47 = tensor.expand_shape %expanded_46 [[0], [1, 2]] : tensor<6x1xi32> into tensor<6x1x1xi32>
        %282 = index.ceildivs %c1, %26
        %expanded_48 = tensor.expand_shape %9 [[0, 1]] : tensor<6xi64> into tensor<6x1xi64>
        %283 = index.divu %c3, %c4
        affine.yield %alloc_11 : memref<6xi32>
      } else {
        %280 = math.sqrt %cst : f16
        %281 = arith.minsi %c715236232_i32, %c450875939_i32 : i32
        %282 = arith.negf %cst_1 : f32
        %283 = arith.negf %cst_1 : f32
        %284 = vector.broadcast %c18635_i16 : i16 to vector<15xi16>
        %285 = vector.broadcast %true : i1 to vector<15xi1>
        %286 = vector.maskedload %alloc[%c4], %285, %284 : memref<6xi16>, vector<15xi1>, vector<15xi16> into vector<15xi16>
        %287 = vector.transpose %286, [0] : vector<15xi16> to vector<15xi16>
        %inserted_45 = tensor.insert %c18635_i16 into %14[%c2] : tensor<6xi16>
        %288 = arith.minsi %true, %true_20 : i1
        affine.yield %alloc_11 : memref<6xi32>
      }
      memref.assume_alignment %alloc_9, 4 : memref<4x6xi16>
      %273 = math.rsqrt %2 : tensor<6xf16>
      %274 = arith.negf %cst_0 : f16
      %alloca_44 = memref.alloca() : memref<6xi1>
      %275 = affine.load %alloc_12[%c3, %c13] : memref<4x6xf32>
      %276 = math.tan %15 : tensor<6xf32>
      %c1_i16 = arith.constant 1 : i16
      %277 = vector.transfer_read %alloc_6[%c7], %c1_i16 : memref<6xi16>, vector<i16>
      %278 = math.ceil %cst : f16
      %279 = arith.muli %c0_i32, %c450875939_i32 : i32
      memref.alloca_scope.return %c20322_i16 : i16
    }
    %121 = math.expm1 %cst_1 : f32
    %122 = arith.remui %c-1563_i16, %120 : i16
    %true_26 = index.bool.constant true
    %123 = memref.realloc %alloc_13 : memref<6xi32> to memref<15xi32>
    %124 = math.absi %18 : tensor<i1>
    memref.assume_alignment %alloc_11, 8 : memref<6xi32>
    %125 = tensor.empty() : tensor<4x4x4xi32>
    %126 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%125 : tensor<4x4x4xi32>) {
    ^bb0(%out: i32):
      %252 = index.sizeof
      %253 = math.absi %120 : i16
      %254 = vector.bitcast %102 : vector<6xf32> to vector<6xf32>
      %255 = arith.muli %c1209125426_i64, %c660254205_i64 : i64
      %256 = arith.mulf %cst_3, %cst_1 : f32
      %257 = arith.xori %c7156_i16, %c20322_i16 : i16
      memref.store %true_26, %alloc_14[%c0] : memref<6xi1>
      scf.execute_region {
        %280 = arith.ceildivsi %true, %true : i1
        %281 = arith.cmpf one, %cst_1, %cst_3 : f32
        %282 = math.log2 %10 : tensor<4x6xf32>
        %283 = vector.transpose %61, [0] : vector<6xi1> to vector<6xi1>
        %284 = affine.min affine_map<(d0, d1, d2) -> (d1, d1 * 16 - d0 + 56, d0 - 2)>(%69, %104, %c9)
        %285 = vector.flat_transpose %46 {columns = 2 : i32, rows = 3 : i32} : vector<6xf32> -> vector<6xf32>
        %286 = index.casts %c660254205_i64 : i64 to index
        %287 = index.ceildivs %252, %83
        %inserted_45 = tensor.insert %out into %20[%c5] : tensor<6xi32>
        %288 = arith.minui %c0_i32, %c0_i32 : i32
        %289 = arith.shrui %c18635_i16, %c20322_i16 : i16
        %290 = math.cttz %9 : tensor<6xi64>
        %291 = math.ipowi %c18635_i16, %c18635_i16 : i16
        %292 = math.atan2 %7, %7 : tensor<6xf32>
        memref.store %true_26, %alloc_17[%c1] : memref<6xi1>
        %293 = vector.flat_transpose %42 {columns = 2 : i32, rows = 3 : i32} : vector<6xf32> -> vector<6xf32>
        scf.yield
      }
      %258 = arith.divui %c18635_i16, %c-1563_i16 : i16
      %259 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %85, %85, %c715236232_i32 : vector<4xi32>, vector<4xi32> into i32
      %260 = tensor.empty() : tensor<4x4x4xi32>
      %261 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%260 : tensor<4x4x4xi32>) {
      ^bb0(%out_45: i32):
        %alloca_46 = memref.alloca() : memref<4x6xi1>
        %280 = index.maxs %c12, %118
        %281 = index.divu %rank, %104
        %282 = arith.shrui %true_26, %true : i1
        %283 = affine.min affine_map<(d0) -> ((-d0) ceildiv 4 + 8, -d0 - 16)>(%rank)
        %284 = arith.maxsi %c450875939_i32, %c450875939_i32 : i32
        %285 = index.casts %c0_i32 : i32 to index
        %286 = arith.shrui %120, %120 : i16
        %287 = arith.cmpf ole, %cst_1, %cst_2 : f32
        %288 = arith.ceildivsi %out, %out : i32
        %289 = arith.divsi %c20322_i16, %c20322_i16 : i16
        %290 = bufferization.to_memref %15 : memref<6xf32>
        %291 = arith.mulf %cst_1, %cst_3 : f32
        %292 = arith.mulf %cst_0, %cst : f16
        %293 = index.add %c0, %69
        %294 = affine.min affine_map<(d0) -> (d0 + 8)>(%285)
        %295 = vector.matrix_multiply %41, %47 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xf32>, vector<6xf32>) -> vector<1xf32>
        %296 = arith.andi %c18635_i16, %120 : i16
        %297 = arith.addi %c660254205_i64, %c797964334_i64 : i64
        %298 = arith.xori %c660254205_i64, %c797964334_i64 : i64
        %299 = math.round %expanded_24 : tensor<6x1xf32>
        %300 = math.copysign %7, %7 : tensor<6xf32>
        %301 = vector.broadcast %66 : index to vector<6xindex>
        vector.scatter %alloc_17[%c3] [%301], %19, %19 : memref<6xi1>, vector<6xindex>, vector<6xi1>, vector<6xi1>
        %alloca_47 = memref.alloca() : memref<6xf16>
        %302 = arith.addi %true_20, %true_20 : i1
        %303 = arith.divui %true_26, %true_20 : i1
        %304 = math.log2 %7 : tensor<6xf32>
        %305 = math.cttz %c0_i32 : i32
        %306 = arith.shrsi %c450875939_i32, %c715236232_i32 : i32
        %307 = vector.maskedload %alloc_19[%c0], %61, %47 : memref<6xf32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
        %308 = arith.divui %c20322_i16, %c7156_i16 : i16
        %309 = arith.remsi %c0_i32, %c450875939_i32 : i32
        linalg.yield %out : i32
      } -> tensor<4x4x4xi32>
      %262 = tensor.empty() : tensor<6xi16>
      %mapped_43 = linalg.map ins(%alloc_7, %8 : memref<6xi16>, tensor<6xi16>) outs(%262 : tensor<6xi16>)
        (%in: i16, %in_45: i16) {
          %280 = index.add %26, %c3
          %281 = index.divs %69, %27
          %282 = math.cttz %c7156_i16 : i16
          %283 = math.copysign %15, %15 : tensor<6xf32>
          %284 = tensor.empty() : tensor<4x6xf16>
          %285 = arith.remsi %c1209125426_i64, %c1209125426_i64 : i64
          %286 = vector.broadcast %cst_1 : f32 to vector<6xf32>
          %287 = vector.fma %286, %114, %112 : vector<6xf32>
          %288 = tensor.empty() : tensor<4x6xi32>
          %289 = math.expm1 %10 : tensor<4x6xf32>
          %290 = affine.max affine_map<(d0, d1, d2) -> (d1 * 8 + d1 - 128, (d1 * 8) floordiv 32, d1 - 128, d1)>(%c9, %c1, %69)
          %splat_46 = tensor.splat %out : tensor<4x6xi32>
          memref.assume_alignment %alloc_10, 8 : memref<4x6xi1>
          %291 = math.fma %15, %15, %7 : tensor<6xf32>
          affine.store %c1936549062_i64, %alloc_15[%c9] : memref<6xi64>
          %292 = math.atan2 %cst, %cst_0 : f16
          %293 = math.round %cst_1 : f32
          %294 = arith.xori %c715236232_i32, %c450875939_i32 : i32
          %295 = vector.insertelement %true_20, %38[%c15 : index] : vector<1xi1>
          %296 = arith.remsi %c0_i32, %c450875939_i32 : i32
          %expanded_47 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<4x6xf32> into tensor<4x6x1xf32>
          %297 = arith.cmpi uge, %c7156_i16, %c7156_i16 : i16
          %298 = affine.load %alloc_10[%c8, %c5] : memref<4x6xi1>
          %299 = arith.divui %in_45, %120 : i16
          %c0_i16 = arith.constant 0 : i16
          %300 = vector.transfer_read %14[%c6], %c0_i16 : tensor<6xi16>, vector<i16>
          %splat_48 = tensor.splat %out : tensor<6xi32>
          %301 = arith.minsi %c715236232_i32, %c450875939_i32 : i32
          %302 = math.sqrt %15 : tensor<6xf32>
          %303 = vector.extract_strided_slice %75 {offsets = [1], sizes = [3], strides = [1]} : vector<4xi32> to vector<3xi32>
          %304 = arith.andi %out, %c715236232_i32 : i32
          %305 = math.expm1 %15 : tensor<6xf32>
          %306 = index.ceildivs %c5, %c3
          %307 = arith.ceildivsi %c7156_i16, %c20322_i16 : i16
          %c0_i16_49 = arith.constant 0 : i16
          linalg.yield %c0_i16_49 : i16
        }
      %263 = arith.addi %c0_i32, %c450875939_i32 : i32
      bufferization.dealloc_tensor %21 : tensor<i32>
      %264 = math.ctlz %c1209125426_i64 : i64
      %265 = affine.load %alloc_12[%c7, %c10] : memref<4x6xf32>
      %266 = memref.realloc %alloc : memref<6xi16> to memref<6xi16>
      %267 = math.copysign %cst_1, %cst_3 : f32
      %268 = math.copysign %cst, %cst_0 : f16
      %269 = math.atan %cst_1 : f32
      %270 = index.mul %c10, %c3
      %271 = vector.broadcast %cst : f16 to vector<4x6xf16>
      %272 = vector.broadcast %cst : f16 to vector<6xf16>
      %dest, %accumulated_value = vector.scan <add>, %271, %272 {inclusive = true, reduction_dim = 0 : i64} : vector<4x6xf16>, vector<6xf16>
      %273 = index.floordivs %83, %c4
      %274 = arith.divsi %true, %true_26 : i1
      %generated = tensor.generate %c0 {
      ^bb0(%arg3: index):
        %280 = arith.divsi %out, %c450875939_i32 : i32
        %281 = math.ceil %expanded_24 : tensor<6x1xf32>
        %282 = math.cttz %reduced : tensor<i1>
        %283 = index.sub %c13, %c9
        tensor.yield %c-1563_i16 : i16
      } : tensor<?xi16>
      %275 = math.ctpop %1 : tensor<4x6xi64>
      vector.print %73 : vector<4xi32>
      %276 = vector.reduction <minf>, %112 : vector<6xf32> into f32
      %277 = arith.cmpi sge, %c1936549062_i64, %c797964334_i64 : i64
      %278 = arith.negf %cst : f16
      %inserted_44 = tensor.insert %c0_i32 into %21[] : tensor<i32>
      %279 = index.castu %105 : index to i32
      linalg.yield %c0_i32 : i32
    } -> tensor<4x4x4xi32>
    %true_27 = index.bool.constant true
    %127 = arith.maxf %cst_1, %cst_1 : f32
    %128 = math.copysign %7, %7 : tensor<6xf32>
    %alloc_28 = memref.alloc() : memref<6xi16>
    %129 = arith.minui %c-1563_i16, %120 : i16
    %true_29 = index.bool.constant true
    %130 = vector.flat_transpose %94 {columns = 2 : i32, rows = 3 : i32} : vector<6xi32> -> vector<6xi32>
    %131 = arith.minui %c7156_i16, %120 : i16
    %132 = math.log2 %cst_2 : f32
    %133 = arith.subi %c20322_i16, %c7156_i16 : i16
    memref.assume_alignment %65, 4 : memref<6xi16>
    affine.store %true_26, %alloc_17[%c2] : memref<6xi1>
    %134 = vector.create_mask %rank, %c5 : vector<4x6xi1>
    %135 = arith.maxui %c-1563_i16, %c7156_i16 : i16
    %136 = affine.if affine_set<(d0, d1) : (d1 * 16 >= 0, d1 * -16 >= 0)>(%c11, %c0) -> f32 {
      %252 = math.ctpop %20 : tensor<6xi32>
      %253 = arith.cmpf true, %cst_3, %cst_3 : f32
      scf.index_switch %24 
      case 1 {
        %259 = index.floordivs %27, %c14
        memref.store %c797964334_i64, %alloc_16[%c5] : memref<6xi64>
        %splat_44 = tensor.splat %cst_1 : tensor<6xf32>
        %260 = index.divu %69, %c2
        %rank_45 = tensor.rank %13 : tensor<6xi64>
        %261 = math.fma %7, %15, %7 : tensor<6xf32>
        %262 = math.expm1 %10 : tensor<4x6xf32>
        %263 = vector.transpose %46, [0] : vector<6xf32> to vector<6xf32>
        %264 = index.castu %true_26 : i1 to index
        %265 = arith.maxf %cst_3, %cst_1 : f32
        %266 = arith.mulf %cst, %cst : f16
        %267 = vector.transpose %42, [0] : vector<6xf32> to vector<6xf32>
        %from_elements = tensor.from_elements %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c715236232_i32, %c450875939_i32, %c0_i32, %c0_i32, %c450875939_i32, %c715236232_i32, %c0_i32, %c450875939_i32, %c450875939_i32, %c0_i32, %c450875939_i32, %c450875939_i32, %c450875939_i32, %c450875939_i32, %c0_i32, %c450875939_i32, %c0_i32, %c450875939_i32, %c715236232_i32, %c450875939_i32 : tensor<4x6xi32>
        %268 = math.round %expanded_24 : tensor<6x1xf32>
        %269 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 - d0 - d1 - d0, d2, d2 - d0 - d1)>(%66, %c14, %c14, %c6)
        %270 = arith.maxf %cst_1, %cst_1 : f32
        scf.yield
      }
      case 2 {
        %259 = math.ipowi %6, %14 : tensor<6xi16>
        %260 = arith.divf %cst_0, %cst_0 : f16
        %false_44 = index.bool.constant false
        %261 = math.log2 %10 : tensor<4x6xf32>
        %262 = affine.max affine_map<(d0, d1, d2) -> (d1, d0 mod 4, (d0 floordiv 8 + 16) ceildiv 32, d1)>(%c10, %c5, %118)
        %263 = math.floor %cst_3 : f32
        %264 = math.absi %0 : tensor<6xi32>
        %265 = math.round %10 : tensor<4x6xf32>
        %266 = index.divu %c6, %c11
        %267 = arith.cmpi slt, %true_27, %true_29 : i1
        %268 = vector.gather %0[%58] [%130], %37, %130 : tensor<6xi32>, vector<6xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
        %inserted_45 = tensor.insert %cst_0 into %2[%c1] : tensor<6xf16>
        %269 = vector.broadcast %c0 : index to vector<15xindex>
        %270 = vector.broadcast %true_27 : i1 to vector<15xi1>
        %271 = vector.broadcast %c20322_i16 : i16 to vector<15xi16>
        vector.scatter %alloc_7[%c2] [%269], %270, %271 : memref<6xi16>, vector<15xindex>, vector<15xi1>, vector<15xi16>
        %272 = vector.insertelement %cst_2, %112[%113 : index] : vector<6xf32>
        %273 = vector.broadcast %c660254205_i64 : i64 to vector<6xi64>
        %274 = vector.gather %13[%26] [%130], %19, %273 : tensor<6xi64>, vector<6xi32>, vector<6xi1>, vector<6xi64> into vector<6xi64>
        %275 = arith.cmpi sgt, %c-1563_i16, %c20322_i16 : i16
        scf.yield
      }
      case 3 {
        %259 = math.absf %2 : tensor<6xf16>
        %260 = index.add %27, %c2
        %261 = arith.maxsi %c660254205_i64, %c797964334_i64 : i64
        %262 = bufferization.to_tensor %alloc_11 : memref<6xi32>
        %263 = index.maxs %c1, %c10
        %264 = vector.insert %61, %134 [3] : vector<6xi1> into vector<4x6xi1>
        %265 = arith.ceildivsi %c20322_i16, %c7156_i16 : i16
        %266 = arith.divui %c797964334_i64, %c1936549062_i64 : i64
        %267 = index.casts %91 : index to i32
        %268 = index.castu %c2 : index to i32
        %269 = math.expm1 %expanded_24 : tensor<6x1xf32>
        %270 = arith.maxf %cst_3, %cst_1 : f32
        %271 = arith.maxf %cst_1, %cst_3 : f32
        vector.print %111 : vector<6xf32>
        %272 = vector.flat_transpose %19 {columns = 2 : i32, rows = 3 : i32} : vector<6xi1> -> vector<6xi1>
        %collapsed_44 = tensor.collapse_shape %10 [[0, 1]] : tensor<4x6xf32> into tensor<24xf32>
        scf.yield
      }
      default {
        %inserted_44 = tensor.insert %c-1563_i16 into %11[%c5] : tensor<6xi16>
        %259 = arith.shrsi %true, %true_20 : i1
        %260 = tensor.empty() : tensor<6xf16>
        %261 = math.exp2 %2 : tensor<6xf16>
        %262 = math.powf %15, %7 : tensor<6xf32>
        memref.tensor_store %17, %alloc_14 : memref<6xi1>
        affine.store %cst_1, %alloc_19[%c8] : memref<6xf32>
        %263 = affine.min affine_map<(d0, d1) -> (d1 - d1 ceildiv 64 - ((d0 * 8) mod 16 - 32), d0, d0, d0 * 8)>(%c1, %c4)
        %264 = vector.reduction <maxf>, %41 : vector<6xf32> into f32
        %265 = arith.remf %cst_0, %cst_0 : f16
        %266 = arith.remf %cst_0, %cst : f16
        %267 = index.maxu %c2, %c6
        %268 = affine.load %alloc_17[%c12] : memref<6xi1>
        %false_45 = index.bool.constant false
        memref.assume_alignment %alloc_15, 8 : memref<6xi64>
        %269 = vector.matrix_multiply %75, %75 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi32>, vector<4xi32>) -> vector<1xi32>
      }
      %254 = vector.flat_transpose %112 {columns = 2 : i32, rows = 3 : i32} : vector<6xf32> -> vector<6xf32>
      %255 = math.copysign %cst_1, %cst_2 : f32
      %256 = math.log10 %15 : tensor<6xf32>
      %257 = tensor.empty() : tensor<6xi16>
      %mapped_43 = linalg.map ins(%87, %87, %14 : tensor<6xi16>, tensor<6xi16>, tensor<6xi16>) outs(%257 : tensor<6xi16>)
        (%in: i16, %in_44: i16, %in_45: i16) {
          %259 = arith.divsi %c0_i32, %c0_i32 : i32
          %260 = math.fma %2, %2, %2 : tensor<6xf16>
          %261 = index.ceildivu %105, %58
          %262 = math.rsqrt %expanded_24 : tensor<6x1xf32>
          %263 = math.cttz %true_20 : i1
          %264 = arith.divui %true_27, %true_29 : i1
          %265 = arith.muli %true_20, %true_20 : i1
          affine.store %true_29, %alloc_10[%c14, %c12] : memref<4x6xi1>
          %266 = arith.subi %c7156_i16, %in_44 : i16
          %267 = arith.remui %true_26, %true_20 : i1
          memref.tensor_store %7, %alloc_19 : memref<6xf32>
          %268 = math.log %10 : tensor<4x6xf32>
          %269 = math.ctpop %c7156_i16 : i16
          %270 = arith.cmpi ult, %c1936549062_i64, %c797964334_i64 : i64
          %271 = index.add %c15, %c4
          memref.tensor_store %4, %alloc_17 : memref<6xi1>
          %272 = index.divs %261, %69
          %273 = index.sizeof
          %274 = math.fpowi %cst_3, %c450875939_i32 : f32, i32
          memref.assume_alignment %65, 8 : memref<6xi16>
          %275 = math.cttz %20 : tensor<6xi32>
          %276 = affine.min affine_map<(d0) -> ((d0 - 2) floordiv 16 - 8, d0, d0 - d0 mod 128)>(%261)
          %277 = math.floor %cst_3 : f32
          %278 = tensor.empty(%83) : tensor<?xi64>
          %279 = math.expm1 %cst_0 : f16
          %280 = math.cttz %0 : tensor<6xi32>
          %inserted_46 = tensor.insert %cst_3 into %15[%c1] : tensor<6xf32>
          %281 = math.ipowi %c-1563_i16, %120 : i16
          %282 = vector.broadcast %cst_2 : f32 to vector<6xf32>
          %283 = vector.fma %282, %42, %254 : vector<6xf32>
          %alloca_47 = memref.alloca() : memref<6xi64>
          %284 = index.ceildivs %c2, %58
          %285 = arith.andi %c7156_i16, %c20322_i16 : i16
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %258 = vector.maskedload %alloc_19[%c4], %19, %41 : memref<6xf32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
      affine.yield %cst_3 : f32
    } else {
      %inserted_43 = tensor.insert %true_20 into %reduced[] : tensor<i1>
      %252 = bufferization.clone %alloc_14 : memref<6xi1> to memref<6xi1>
      %inserted_44 = tensor.insert %c1209125426_i64 into %9[%c4] : tensor<6xi64>
      %253 = vector.insert %true_27, %37 [1] : i1 into vector<6xi1>
      %254 = index.ceildivu %69, %c14
      %255 = arith.remsi %true_29, %true_26 : i1
      %256 = vector.insertelement %cst_3, %114[%c8 : index] : vector<6xf32>
      %257 = math.fma %2, %2, %2 : tensor<6xf16>
      affine.yield %cst_1 : f32
    }
    %137 = arith.maxf %cst_3, %cst_2 : f32
    %138 = vector.broadcast %cst_3 : f32 to vector<4xf32>
    %139 = vector.maskedload %alloc_4[%c2], %74, %138 : memref<6xf32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
    %140 = math.copysign %2, %2 : tensor<6xf16>
    %141 = math.cttz %expanded : tensor<6x1xi1>
    %142 = arith.muli %true_26, %true_27 : i1
    %143 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %73, %85, %c715236232_i32 : vector<4xi32>, vector<4xi32> into i32
    %144 = vector.extract %102[1] : vector<6xf32>
    %145 = arith.divsi %c20322_i16, %c20322_i16 : i16
    %146 = vector.flat_transpose %37 {columns = 2 : i32, rows = 3 : i32} : vector<6xi1> -> vector<6xi1>
    %rank_30 = tensor.rank %9 : tensor<6xi64>
    %cst_31 = arith.constant 0x4D92EC76 : f32
    %147 = math.atan2 %cst_3, %cst_3 : f32
    %148 = vector.matrix_multiply %102, %102 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xf32>, vector<6xf32>) -> vector<1xf32>
    %149 = index.ceildivs %c7, %104
    %150 = index.divs %c6, %c9
    %151 = index.casts %c7156_i16 : i16 to index
    %152 = vector.multi_reduction <xor>, %74, %true [0] : vector<4xi1> to i1
    %153 = arith.maxf %cst_2, %cst_2 : f32
    affine.store %c7156_i16, %alloc_7[%c8] : memref<6xi16>
    %154 = math.tan %cst_0 : f16
    %155 = arith.ceildivsi %c1209125426_i64, %c797964334_i64 : i64
    %156 = vector.broadcast %151 : index to vector<6xindex>
    vector.scatter %alloc_17[%c3] [%156], %146, %146 : memref<6xi1>, vector<6xindex>, vector<6xi1>, vector<6xi1>
    %157 = index.divs %82, %24
    %158 = arith.negf %cst_1 : f32
    %159 = vector.flat_transpose %75 {columns = 2 : i32, rows = 2 : i32} : vector<4xi32> -> vector<4xi32>
    %160 = math.log %10 : tensor<4x6xf32>
    %161 = affine.load %alloc_16[%c4] : memref<6xi64>
    %162 = arith.minui %161, %161 : i64
    %163 = arith.minui %true, %true_27 : i1
    %164 = vector.broadcast %c3 : index to vector<4xindex>
    vector.scatter %alloc_10[%c2, %c1] [%164], %74, %74 : memref<4x6xi1>, vector<4xindex>, vector<4xi1>, vector<4xi1>
    %165 = vector.broadcast %105 : index to vector<6xindex>
    vector.scatter %alloc_17[%c1] [%165], %37, %19 : memref<6xi1>, vector<6xindex>, vector<6xi1>, vector<6xi1>
    %166 = arith.xori %c20322_i16, %c18635_i16 : i16
    %167 = math.ceil %7 : tensor<6xf32>
    %168 = arith.shrui %c7156_i16, %c18635_i16 : i16
    %169 = math.fma %cst_2, %cst_3, %cst_3 : f32
    %false = index.bool.constant false
    %170 = index.ceildivu %150, %149
    %171 = arith.andi %true_27, %true_29 : i1
    %172 = memref.load %alloc_8[%c3, %c0] : memref<4x6xi1>
    %173 = arith.cmpf olt, %cst_2, %cst_3 : f32
    %174 = arith.negf %cst : f16
    %175 = arith.divui %120, %c18635_i16 : i16
    %176 = index.divs %104, %c3
    %expanded_32 = tensor.expand_shape %5 [[0, 1]] : tensor<6xi64> into tensor<6x1xi64>
    %177 = arith.minui %c20322_i16, %c18635_i16 : i16
    vector.print %93 : vector<6xi32>
    %178 = arith.ori %c18635_i16, %c-1563_i16 : i16
    %179 = bufferization.clone %alloc_14 : memref<6xi1> to memref<6xi1>
    %180 = tensor.empty() : tensor<6xi32>
    %mapped = linalg.map ins(%alloc_13, %0 : memref<6xi32>, tensor<6xi32>) outs(%180 : tensor<6xi32>)
      (%in: i32, %in_43: i32) {
        %inserted_44 = tensor.insert %c1209125426_i64 into %13[%c4] : tensor<6xi64>
        %252 = math.round %7 : tensor<6xf32>
        %253 = arith.maxf %cst_3, %cst_3 : f32
        %254 = arith.andi %161, %c1209125426_i64 : i64
        %255 = arith.cmpf ole, %cst_3, %cst_2 : f32
        %256 = memref.realloc %alloc_13 : memref<6xi32> to memref<6xi32>
        %257 = vector.broadcast %cst_2 : f32 to vector<6xf32>
        %258 = vector.fma %257, %42, %41 : vector<6xf32>
        %259 = memref.realloc %alloc_14 : memref<6xi1> to memref<4xi1>
        %260 = math.cos %cst_0 : f16
        %261 = math.copysign %2, %2 : tensor<6xf16>
        %262 = arith.remui %c7156_i16, %120 : i16
        %263 = tensor.empty() : tensor<6xi16>
        %mapped_45 = linalg.map ins(%8 : tensor<6xi16>) outs(%263 : tensor<6xi16>)
          (%in_48: i16) {
            %281 = arith.addi %161, %c660254205_i64 : i64
            %inserted_49 = tensor.insert %in into %12[%c4] : tensor<6xi32>
            %alloca_50 = memref.alloca() : memref<4x6xf16>
            %282 = math.ctpop %0 : tensor<6xi32>
            %283 = math.log10 %10 : tensor<4x6xf32>
            %284 = arith.ceildivsi %c20322_i16, %in_48 : i16
            bufferization.dealloc_tensor %expanded_24 : tensor<6x1xf32>
            %alloc_51 = memref.alloc() : memref<6xi1>
            %285 = vector.transpose %101, [0] : vector<6xf32> to vector<6xf32>
            %286 = affine.min affine_map<(d0) -> (d0 * 4, d0 * 3)>(%157)
            %287 = math.fma %expanded_24, %expanded_24, %expanded_24 : tensor<6x1xf32>
            %288 = arith.divui %true, %true_26 : i1
            %289 = math.log %cst_1 : f32
            %true_52 = index.bool.constant true
            %290 = index.ceildivs %151, %91
            %291 = arith.remui %c450875939_i32, %c450875939_i32 : i32
            %292 = math.copysign %10, %10 : tensor<4x6xf32>
            %293 = arith.maxui %c660254205_i64, %c1209125426_i64 : i64
            %294 = arith.xori %true_20, %true_29 : i1
            %295 = arith.divui %c20322_i16, %120 : i16
            %296 = math.cttz %17 : tensor<6xi1>
            %297 = vector.broadcast %cst_3 : f32 to vector<6x6xf32>
            %298 = vector.outerproduct %257, %42, %297 {kind = #vector.kind<maxf>} : vector<6xf32>, vector<6xf32>
            %299 = affine.min affine_map<(d0, d1, d2) -> (d2, d2, d1 - 8)>(%151, %c1, %82)
            %300 = arith.negf %cst_3 : f32
            %301 = bufferization.to_memref %splat_22 : memref<6xi32>
            %302 = index.sizeof
            %303 = arith.muli %152, %true : i1
            %304 = arith.muli %c1936549062_i64, %c1209125426_i64 : i64
            %305 = math.copysign %7, %15 : tensor<6xf32>
            %306 = math.log %2 : tensor<6xf16>
            %307 = arith.ceildivsi %in_48, %in_48 : i16
            %308 = arith.remf %cst, %cst_0 : f16
            %c1_i16 = arith.constant 1 : i16
            linalg.yield %c1_i16 : i16
          }
        %264 = math.cos %2 : tensor<6xf16>
        scf.execute_region {
          %281 = arith.addi %in_43, %c0_i32 : i32
          %282 = vector.maskedload %alloc_14[%c2], %74, %74 : memref<6xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
          %283 = math.roundeven %cst_3 : f32
          %extracted = tensor.extract %4[%c2] : tensor<6xi1>
          %284 = tensor.empty() : tensor<4x6xi32>
          %285 = vector.broadcast %c715236232_i32 : i32 to vector<4x6xi32>
          %286 = vector.gather %284[%c8, %c2] [%285], %134, %285 : tensor<4x6xi32>, vector<4x6xi32>, vector<4x6xi1>, vector<4x6xi32> into vector<4x6xi32>
          %287 = math.rsqrt %7 : tensor<6xf32>
          memref.store %c450875939_i32, %alloc_13[%c3] : memref<6xi32>
          %288 = arith.shrui %c450875939_i32, %c715236232_i32 : i32
          %289 = math.round %cst_3 : f32
          %290 = index.castu %c2 : index to i32
          %291 = arith.remui %true_20, %152 : i1
          %292 = math.exp %2 : tensor<6xf16>
          %293 = arith.maxf %cst, %cst_0 : f16
          %294 = math.expm1 %cst : f16
          %295 = math.round %2 : tensor<6xf16>
          %collapsed_48 = tensor.collapse_shape %1 [[0, 1]] : tensor<4x6xi64> into tensor<24xi64>
          scf.yield
        }
        %265 = math.tan %cst_3 : f32
        %266 = math.round %cst : f16
        %generated = tensor.generate %c13 {
        ^bb0(%arg3: index):
          %281 = tensor.empty() : tensor<1x4xf32>
          %282 = tensor.empty() : tensor<6x4xf32>
          %283 = linalg.matmul ins(%expanded_24, %281 : tensor<6x1xf32>, tensor<1x4xf32>) outs(%282 : tensor<6x4xf32>) -> tensor<6x4xf32>
          %284 = math.cos %cst_3 : f32
          %285 = tensor.empty(%104) : tensor<?x6xi32>
          %286 = vector.insert %in_43, %93 [2] : i32 into vector<6xi32>
          tensor.yield %cst_0 : f16
        } : tensor<?xf16>
        %267 = math.log %cst_2 : f32
        %268 = affine.if affine_set<(d0, d1, d2) : (d2 floordiv 4 - d2 == 0, d2 mod 2 == 0, -d0 - d2 floordiv 4 - 8 >= 0)>(%c6, %c2, %c3) -> i32 {
          %281 = affine.load %alloc_14[%c15] : memref<6xi1>
          %true_48 = arith.constant true
          %alloca_49 = memref.alloca() : memref<6xf16>
          %282 = vector.reduction <minsi>, %94 : vector<6xi32> into i32
          %283 = math.cttz %4 : tensor<6xi1>
          %284 = math.cttz %87 : tensor<6xi16>
          affine.store %cst_1, %alloc_4[%c0] : memref<6xf32>
          %285 = arith.negf %cst_0 : f16
          affine.yield %in : i32
        } else {
          %281 = math.powf %cst_3, %cst_1 : f32
          %false_48 = index.bool.constant false
          %282 = memref.realloc %alloc_11 : memref<6xi32> to memref<4xi32>
          %283 = math.atan2 %15, %15 : tensor<6xf32>
          %284 = arith.remf %cst_2, %cst_3 : f32
          %285 = tensor.empty() : tensor<6xi32>
          %rank_49 = tensor.rank %9 : tensor<6xi64>
          %alloca_50 = memref.alloca() : memref<6xi32>
          affine.yield %c450875939_i32 : i32
        }
        %expanded_46 = tensor.expand_shape %3 [[0, 1]] : tensor<6xi1> into tensor<6x1xi1>
        %269 = math.round %10 : tensor<4x6xf32>
        %270 = index.sizeof
        %271 = math.expm1 %15 : tensor<6xf32>
        %272 = arith.minui %c7156_i16, %c18635_i16 : i16
        %273 = vector.splat %113 : vector<6xindex>
        %274 = index.maxs %118, %105
        %275 = math.copysign %cst_1, %cst_2 : f32
        %276 = math.ipowi %expanded_46, %expanded_46 : tensor<6x1xi1>
        %277 = index.divu %105, %rank_30
        %278 = math.absf %2 : tensor<6xf16>
        %279 = index.ceildivu %157, %82
        %280 = affine.max affine_map<(d0, d1, d2) -> (-(((d2 floordiv 128) ceildiv 128) mod 32), d0 + 16)>(%157, %c5, %170)
        %c0_i32_47 = arith.constant 0 : i32
        linalg.yield %c0_i32_47 : i32
      }
    %181 = arith.xori %c797964334_i64, %c1209125426_i64 : i64
    %alloca_33 = memref.alloca() : memref<6xi16>
    bufferization.dealloc_tensor %12 : tensor<6xi32>
    memref.store %120, %65[%c0] : memref<6xi16>
    %splat_34 = tensor.splat %c660254205_i64 : tensor<6xi64>
    %182 = arith.remui %c1209125426_i64, %161 : i64
    %183 = math.cttz %87 : tensor<6xi16>
    %184 = arith.maxui %c-1563_i16, %c18635_i16 : i16
    %185 = math.round %10 : tensor<4x6xf32>
    memref.store %c7156_i16, %65[%c5] : memref<6xi16>
    %186 = arith.cmpf ueq, %cst_1, %cst_3 : f32
    %187 = arith.subi %c450875939_i32, %c715236232_i32 : i32
    %188 = math.log10 %cst_3 : f32
    %189 = math.copysign %15, %15 : tensor<6xf32>
    %190 = arith.ceildivsi %c20322_i16, %c-1563_i16 : i16
    %191 = math.log2 %cst_1 : f32
    %192 = math.powf %cst_2, %cst_1 : f32
    %193 = math.cttz %4 : tensor<6xi1>
    %194 = math.log2 %15 : tensor<6xf32>
    %195 = vector.insert %c0_i32, %73 [2] : i32 into vector<4xi32>
    %196 = vector.flat_transpose %75 {columns = 2 : i32, rows = 2 : i32} : vector<4xi32> -> vector<4xi32>
    %197 = math.log10 %expanded_24 : tensor<6x1xf32>
    %198 = arith.andi %true_26, %true : i1
    %199 = index.add %c15, %58
    %200 = math.cttz %180 : tensor<6xi32>
    %201 = vector.matrix_multiply %139, %111 {lhs_columns = 2 : i32, lhs_rows = 2 : i32, rhs_columns = 3 : i32} : (vector<4xf32>, vector<6xf32>) -> vector<6xf32>
    %202 = math.exp2 %cst_3 : f32
    %203 = vector.broadcast %true_29 : i1 to vector<6x6xi1>
    %204 = vector.outerproduct %19, %61, %203 {kind = #vector.kind<or>} : vector<6xi1>, vector<6xi1>
    %expanded_35 = tensor.expand_shape %8 [[0, 1]] : tensor<6xi16> into tensor<6x1xi16>
    %205 = arith.xori %c7156_i16, %120 : i16
    %206 = math.ctlz %6 : tensor<6xi16>
    %207 = math.fpowi %15, %180 : tensor<6xf32>, tensor<6xi32>
    bufferization.dealloc_tensor %14 : tensor<6xi16>
    %208 = arith.muli %c-1563_i16, %c-1563_i16 : i16
    %209 = arith.cmpf ueq, %cst_2, %cst_2 : f32
    %inserted_36 = tensor.insert %cst_1 into %15[%c4] : tensor<6xf32>
    %210 = vector.matrix_multiply %85, %130 {lhs_columns = 2 : i32, lhs_rows = 2 : i32, rhs_columns = 3 : i32} : (vector<4xi32>, vector<6xi32>) -> vector<6xi32>
    %211 = math.ipowi %false, %true_20 : i1
    %212 = math.powf %15, %15 : tensor<6xf32>
    %213 = arith.xori %c18635_i16, %c18635_i16 : i16
    %214 = math.log2 %cst_1 : f32
    %215 = arith.divui %c715236232_i32, %c715236232_i32 : i32
    %216 = math.roundeven %15 : tensor<6xf32>
    %217 = arith.addi %true_29, %152 : i1
    %218 = math.ctpop %5 : tensor<6xi64>
    %219 = arith.subi %true_27, %true_27 : i1
    %220 = arith.mulf %cst_0, %cst_0 : f16
    %221 = math.absf %15 : tensor<6xf32>
    %splat_37 = tensor.splat %c797964334_i64 : tensor<6xi64>
    %222 = index.sizeof
    %inserted_38 = tensor.insert %c1209125426_i64 into %collapsed[%c9] : tensor<24xi64>
    %223 = tensor.empty(%151) : tensor<?xi16>
    %224 = affine.if affine_set<(d0, d1, d2) : (d0 == 0, d2 floordiv 4 >= 0, -d0 == 0, (d2 + 4) * 4 == 0)>(%c2, %c14, %c6) -> memref<6xf16> {
      %252 = index.maxs %113, %c9
      %253 = memref.atomic_rmw ori %c20322_i16, %65[%c5] : (i16, memref<6xi16>) -> i16
      %dest, %accumulated_value = vector.scan <or>, %134, %74 {inclusive = false, reduction_dim = 1 : i64} : vector<4x6xi1>, vector<4xi1>
      %254 = math.log %cst_3 : f32
      %alloc_43 = memref.alloc() : memref<4x6xf16>
      %expanded_44 = tensor.expand_shape %8 [[0, 1]] : tensor<6xi16> into tensor<6x1xi16>
      %255 = arith.cmpi sge, %c-1563_i16, %c18635_i16 : i16
      %256 = math.ctlz %0 : tensor<6xi32>
      %alloc_45 = memref.alloc() : memref<6xf16>
      affine.yield %alloc_45 : memref<6xf16>
    } else {
      %252 = arith.mulf %cst, %cst : f16
      %253 = math.expm1 %7 : tensor<6xf32>
      %254 = vector.matrix_multiply %19, %146 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi1>, vector<6xi1>) -> vector<1xi1>
      %255 = math.log10 %10 : tensor<4x6xf32>
      bufferization.dealloc_tensor %splat_34 : tensor<6xi64>
      %256 = index.divu %c7, %c12
      %257 = math.log2 %cst_3 : f32
      %258 = index.castu %c1936549062_i64 : i64 to index
      %alloc_43 = memref.alloc() : memref<6xf16>
      affine.yield %alloc_43 : memref<6xf16>
    }
    %225 = index.maxu %151, %170
    %226 = bufferization.to_memref %reduced : memref<i1>
    %227 = arith.negf %cst_0 : f16
    %228 = vector.transpose %94, [0] : vector<6xi32> to vector<6xi32>
    memref.store %cst_1, %alloc_19[%c5] : memref<6xf32>
    %229 = index.casts %true_29 : i1 to index
    %230 = memref.atomic_rmw maxf %cst_2, %alloc_12[%c2, %c0] : (f32, memref<4x6xf32>) -> f32
    %231 = math.expm1 %2 : tensor<6xf16>
    %232 = vector.extract_strided_slice %196 {offsets = [0], sizes = [4], strides = [1]} : vector<4xi32> to vector<4xi32>
    %233 = math.rsqrt %cst : f16
    %234 = math.expm1 %15 : tensor<6xf32>
    %235 = vector.matrix_multiply %232, %159 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi32>, vector<4xi32>) -> vector<1xi32>
    %236 = arith.negf %cst_3 : f32
    %237 = math.floor %cst_3 : f32
    %238 = arith.xori %c0_i32, %c0_i32 : i32
    %239 = index.sizeof
    %splat_39 = tensor.splat %true_20 : tensor<6xi1>
    %240 = index.maxu %c15, %157
    %241 = arith.floordivsi %c1209125426_i64, %c660254205_i64 : i64
    %242 = tensor.empty() : tensor<6xi64>
    %mapped_40 = linalg.map ins(%13, %5 : tensor<6xi64>, tensor<6xi64>) outs(%242 : tensor<6xi64>)
      (%in: i64, %in_43: i64) {
        %252 = math.log10 %cst_2 : f32
        %253 = index.sizeof
        %254 = math.exp2 %7 : tensor<6xf32>
        %255 = vector.reduction <xor>, %235 : vector<1xi32> into i32
        bufferization.dealloc_tensor %15 : tensor<6xf32>
        %256 = math.log %10 : tensor<4x6xf32>
        %257 = vector.insert %cst_1, %41 [2] : f32 into vector<6xf32>
        %258 = arith.ceildivsi %c-1563_i16, %120 : i16
        %259 = arith.negf %cst_2 : f32
        %260 = bufferization.to_memref %12 : memref<6xi32>
        %261 = math.atan2 %15, %15 : tensor<6xf32>
        %rank_44 = tensor.rank %11 : tensor<6xi16>
        %262 = arith.mulf %cst_3, %cst_2 : f32
        %263 = math.cttz %11 : tensor<6xi16>
        %264 = math.expm1 %2 : tensor<6xf16>
        %265 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %42, %107, %cst_3 : vector<6xf32>, vector<6xf32> into f32
        %266 = math.absf %cst_2 : f32
        %267 = math.atan %cst : f16
        %expanded_45 = tensor.expand_shape %242 [[0, 1]] : tensor<6xi64> into tensor<6x1xi64>
        %268 = arith.addi %c660254205_i64, %c660254205_i64 : i64
        %269 = arith.andi %c20322_i16, %c20322_i16 : i16
        %270 = math.log2 %2 : tensor<6xf16>
        %271 = math.fpowi %cst_0, %c715236232_i32 : f16, i32
        %272 = tensor.empty() : tensor<4x4x4xi32>
        %273 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%272 : tensor<4x4x4xi32>) {
        ^bb0(%out: i32):
          %281 = bufferization.clone %alloc_9 : memref<4x6xi16> to memref<4x6xi16>
          %282 = bufferization.to_memref %splat_39 : memref<6xi1>
          %283 = vector.extract %37[5] : vector<6xi1>
          %284 = index.maxu %253, %151
          %dest, %accumulated_value = vector.scan <or>, %134, %37 {inclusive = false, reduction_dim = 0 : i64} : vector<4x6xi1>, vector<6xi1>
          %285 = arith.remf %cst_0, %cst_0 : f16
          %alloc_47 = memref.alloc() : memref<1x6xi16>
          %286 = tensor.empty() : tensor<6x6xi16>
          %287 = linalg.matmul ins(%expanded_35, %alloc_47 : tensor<6x1xi16>, memref<1x6xi16>) outs(%286 : tensor<6x6xi16>) -> tensor<6x6xi16>
          %288 = arith.negf %cst_0 : f16
          %289 = memref.realloc %alloc_4 : memref<6xf32> to memref<4xf32>
          memref.store %true_20, %alloc_14[%c3] : memref<6xi1>
          %290 = arith.addf %cst_3, %cst_1 : f32
          %291 = arith.shrui %c715236232_i32, %c0_i32 : i32
          %292 = math.exp2 %10 : tensor<4x6xf32>
          %293 = vector.transpose %196, [0] : vector<4xi32> to vector<4xi32>
          %collapsed_48 = tensor.collapse_shape %10 [[0, 1]] : tensor<4x6xf32> into tensor<24xf32>
          %294 = arith.cmpf ule, %cst, %cst_0 : f16
          %295 = math.exp2 %7 : tensor<6xf32>
          %296 = vector.matrix_multiply %210, %75 {lhs_columns = 2 : i32, lhs_rows = 3 : i32, rhs_columns = 2 : i32} : (vector<6xi32>, vector<4xi32>) -> vector<6xi32>
          %297 = vector.transpose %74, [0] : vector<4xi1> to vector<4xi1>
          bufferization.dealloc_tensor %cast_25 : tensor<?xi32>
          %298 = index.divs %240, %c10
          %299 = vector.flat_transpose %19 {columns = 2 : i32, rows = 3 : i32} : vector<6xi1> -> vector<6xi1>
          %300 = math.powf %2, %2 : tensor<6xf16>
          %301 = index.ceildivs %176, %c0
          %302 = vector.matrix_multiply %38, %146 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 6 : i32} : (vector<1xi1>, vector<6xi1>) -> vector<6xi1>
          %303 = affine.min affine_map<(d0, d1) -> (d1 - 1, d1 * 128 + d0 + 4, d1 - 1, d1 - 1)>(%c9, %69)
          %304 = arith.remf %cst_2, %cst_2 : f32
          %true_49 = index.bool.constant true
          %305 = math.ctlz %20 : tensor<6xi32>
          memref.assume_alignment %alloc_6, 8 : memref<6xi16>
          %306 = vector.broadcast %cst_2 : f32 to vector<6x6xf32>
          %307 = vector.outerproduct %41, %112, %306 {kind = #vector.kind<maxf>} : vector<6xf32>, vector<6xf32>
          %308 = arith.andi %c18635_i16, %c-1563_i16 : i16
          linalg.yield %out : i32
        } -> tensor<4x4x4xi32>
        %274 = math.tan %15 : tensor<6xf32>
        %275 = arith.addi %c660254205_i64, %c1936549062_i64 : i64
        %276 = arith.ceildivsi %true_20, %true_20 : i1
        %277 = math.ctlz %12 : tensor<6xi32>
        %278 = index.sizeof
        %279 = affine.min affine_map<(d0, d1) -> ((d0 + 8) floordiv 16 + d1 mod 64)>(%rank_30, %c5)
        %280 = index.sizeof
        %inserted_46 = tensor.insert %true_27 into %4[%c0] : tensor<6xi1>
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %243 = vector.broadcast %rank : index to vector<15xindex>
    %244 = vector.broadcast %true : i1 to vector<15xi1>
    %245 = vector.broadcast %cst_1 : f32 to vector<15xf32>
    vector.scatter %alloc_19[%c3] [%243], %244, %245 : memref<6xf32>, vector<15xindex>, vector<15xi1>, vector<15xf32>
    %246 = index.mul %24, %c8
    %247 = index.floordivs %c3, %118
    %248 = math.ctlz %12 : tensor<6xi32>
    %249 = tensor.empty() : tensor<6xi64>
    %250 = linalg.copy ins(%9 : tensor<6xi64>) outs(%249 : tensor<6xi64>) -> tensor<6xi64>
    %alloc_41 = memref.alloc() : memref<6x4xf32>
    linalg.transpose ins(%10 : tensor<4x6xf32>) outs(%alloc_41 : memref<6x4xf32>) permutation = [1, 0] 
    %alloc_42 = memref.alloc() : memref<i64>
    linalg.reduce ins(%13 : tensor<6xi64>) outs(%alloc_42 : memref<i64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        %252 = math.absf %7 : tensor<6xf32>
        %253 = math.exp2 %cst_3 : f32
        %alloca_43 = memref.alloca() : memref<6xi64>
        %254 = arith.divui %152, %152 : i1
        %255 = memref.load %alloc_14[%c2] : memref<6xi1>
        %splat_44 = tensor.splat %cst_0 : tensor<4x6xf16>
        %256 = affine.min affine_map<(d0, d1, d2, d3) -> ((d3 ceildiv 128) ceildiv 128, d3 * 8, (d3 ceildiv 128 + 8) * 2, ((d3 ceildiv 128 + 8) mod 16) floordiv 32 - 1)>(%rank, %104, %247, %66)
        affine.store %cst_1, %alloc_19[%c11] : memref<6xf32>
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    scf.parallel (%arg3, %arg4) = (%27, %199) to (%c15, %91) step (%c15, %c12) {
      %252 = arith.cmpf ule, %cst_1, %cst_1 : f32
      %253 = vector.extract_strided_slice %196 {offsets = [2], sizes = [1], strides = [1]} : vector<4xi32> to vector<1xi32>
      %254 = memref.atomic_rmw maxs %c7156_i16, %alloc_9[%c3, %c4] : (i16, memref<4x6xi16>) -> i16
      %inserted_43 = tensor.insert %true_27 into %16[%c3] : tensor<6xi1>
      %255 = index.sizeof
      %256 = memref.realloc %alloc_5 : memref<6xi64> to memref<15xi64>
      %257 = index.add %c12, %c3
      %258 = arith.mulf %cst_3, %cst_2 : f32
      %259 = vector.broadcast %cst_3 : f32 to vector<6xf32>
      %260 = vector.fma %259, %102, %111 : vector<6xf32>
      %261 = index.divs %c13, %149
      %262 = vector.transpose %148, [0] : vector<1xf32> to vector<1xf32>
      %263 = math.sqrt %15 : tensor<6xf32>
      %264 = arith.xori %c-1563_i16, %120 : i16
      %265 = arith.maxf %cst_1, %cst_1 : f32
      %alloc_44 = memref.alloc() : memref<i64>
      memref.copy %alloc_42, %alloc_44 : memref<i64> to memref<i64>
      %266 = math.fpowi %7, %180 : tensor<6xf32>, tensor<6xi32>
      scf.yield
    }
    %251 = affine.vector_load %alloc_6[%rank] : memref<6xi16>, vector<6xi16>
    affine.vector_store %130, %alloc_13[%104] : memref<6xi32>, vector<6xi32>
    vector.print %19 : vector<6xi1>
    vector.print %37 : vector<6xi1>
    vector.print %38 : vector<1xi1>
    vector.print %41 : vector<6xf32>
    vector.print %42 : vector<6xf32>
    vector.print %46 : vector<6xf32>
    vector.print %47 : vector<6xf32>
    vector.print %61 : vector<6xi1>
    vector.print %73 : vector<4xi32>
    vector.print %74 : vector<4xi1>
    vector.print %75 : vector<4xi32>
    vector.print %85 : vector<4xi32>
    vector.print %93 : vector<6xi32>
    vector.print %94 : vector<6xi32>
    vector.print %101 : vector<6xf32>
    vector.print %102 : vector<6xf32>
    vector.print %107 : vector<6xf32>
    vector.print %111 : vector<6xf32>
    vector.print %112 : vector<6xf32>
    vector.print %114 : vector<6xf32>
    vector.print %130 : vector<6xi32>
    vector.print %134 : vector<4x6xi1>
    vector.print %138 : vector<4xf32>
    vector.print %139 : vector<4xf32>
    vector.print %146 : vector<6xi1>
    vector.print %148 : vector<1xf32>
    vector.print %159 : vector<4xi32>
    vector.print %196 : vector<4xi32>
    vector.print %201 : vector<6xf32>
    vector.print %210 : vector<6xi32>
    vector.print %232 : vector<4xi32>
    vector.print %235 : vector<1xi32>
    vector.print %251 : vector<6xi16>
    vector.print %c7156_i16 : i16
    vector.print %cst : f16
    vector.print %c450875939_i32 : i32
    vector.print %cst_0 : f16
    vector.print %cst_1 : f32
    vector.print %cst_2 : f32
    vector.print %c20322_i16 : i16
    vector.print %cst_3 : f32
    vector.print %c797964334_i64 : i64
    vector.print %c1936549062_i64 : i64
    vector.print %c1209125426_i64 : i64
    vector.print %c-1563_i16 : i16
    vector.print %true : i1
    vector.print %c715236232_i32 : i32
    vector.print %c18635_i16 : i16
    vector.print %c660254205_i64 : i64
    vector.print %true_20 : i1
    vector.print %c0_i32 : i32
    vector.print %120 : i16
    vector.print %true_26 : i1
    vector.print %true_27 : i1
    vector.print %true_29 : i1
    vector.print %152 : i1
    vector.print %161 : i64
    vector.print %false : i1
    return
  }
}
