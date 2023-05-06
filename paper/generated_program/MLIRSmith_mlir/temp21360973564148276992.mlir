module {
  func.func private @func1(%arg0: memref<13x3xi16>, %arg1: memref<10x16x16xi64>) -> f32 {
    %cst = arith.constant 6.435200e+04 : f16
    %cst_0 = arith.constant 3.852800e+04 : f16
    %true = arith.constant true
    %c-2710_i16 = arith.constant -2710 : i16
    %false = arith.constant false
    %cst_1 = arith.constant 1.32334502E+9 : f32
    %c-32034_i16 = arith.constant -32034 : i16
    %c299102284_i32 = arith.constant 299102284 : i32
    %cst_2 = arith.constant 0x4D9CDCDF : f32
    %false_3 = arith.constant false
    %c1966963025_i64 = arith.constant 1966963025 : i64
    %c615519904_i32 = arith.constant 615519904 : i32
    %cst_4 = arith.constant 2.326400e+04 : f16
    %cst_5 = arith.constant 3.462400e+04 : f16
    %c460165649_i32 = arith.constant 460165649 : i32
    %c355128154_i64 = arith.constant 355128154 : i64
    %0 = tensor.empty() : tensor<13x3xi16>
    %1 = tensor.empty() : tensor<13x3xi1>
    %2 = tensor.empty() : tensor<10x3x3xi1>
    %3 = tensor.empty() : tensor<3x13xi64>
    %4 = tensor.empty() : tensor<10x16x16xf32>
    %5 = tensor.empty() : tensor<13x3xi1>
    %6 = tensor.empty() : tensor<3x13xf16>
    %7 = tensor.empty() : tensor<13x3xi1>
    %8 = tensor.empty() : tensor<13x3xf32>
    %9 = tensor.empty() : tensor<13x3xi64>
    %10 = tensor.empty() : tensor<13x3xf16>
    %11 = tensor.empty() : tensor<10x16x16xi1>
    %12 = tensor.empty() : tensor<10x16x16xi32>
    %13 = tensor.empty() : tensor<13x3xi32>
    %14 = tensor.empty() : tensor<13x3xi16>
    %15 = tensor.empty() : tensor<10x16x16xi64>
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
    %alloc = memref.alloc() : memref<13x3xi64>
    %alloc_6 = memref.alloc() : memref<10x16x16xi64>
    %alloc_7 = memref.alloc() : memref<3x13xi32>
    %alloc_8 = memref.alloc() : memref<13x3xi16>
    %alloc_9 = memref.alloc() : memref<3x13xi1>
    %alloc_10 = memref.alloc() : memref<3x13xi32>
    %alloc_11 = memref.alloc() : memref<13x3xf16>
    %alloc_12 = memref.alloc() : memref<10x3x3xi1>
    %alloc_13 = memref.alloc() : memref<10x16x16xi1>
    %alloc_14 = memref.alloc() : memref<10x16x16xi32>
    %alloc_15 = memref.alloc() : memref<13x3xf32>
    %alloc_16 = memref.alloc() : memref<10x3x3xf32>
    %alloc_17 = memref.alloc() : memref<10x3x3xf32>
    %alloc_18 = memref.alloc() : memref<13x3xi16>
    %alloc_19 = memref.alloc() : memref<10x3x3xi32>
    %alloc_20 = memref.alloc() : memref<3x13xi1>
    %16 = tensor.empty() : tensor<13x3xf16>
    %17 = linalg.copy ins(%10 : tensor<13x3xf16>) outs(%16 : tensor<13x3xf16>) -> tensor<13x3xf16>
    %18 = tensor.empty() : tensor<16x10x16xf32>
    %transposed = linalg.transpose ins(%4 : tensor<10x16x16xf32>) outs(%18 : tensor<16x10x16xf32>) permutation = [2, 0, 1] 
    %19 = tensor.empty() : tensor<i32>
    %reduced = linalg.reduce ins(%alloc_7 : memref<3x13xi32>) outs(%19 : tensor<i32>) dimensions = [0, 1] 
      (%in: i32, %init: i32) {
        %271 = arith.remf %cst_0, %cst_5 : f16
        %272 = arith.cmpf false, %cst_0, %cst_4 : f16
        %273 = math.roundeven %cst_0 : f16
        %274 = arith.divui %c1966963025_i64, %c1966963025_i64 : i64
        %275 = vector.broadcast %cst_4 : f16 to vector<1xf16>
        %276 = vector.extract_strided_slice %275 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
        %277 = math.fpowi %cst_4, %c615519904_i32 : f16, i32
        %278 = math.ctlz %c355128154_i64 : i64
        %279 = index.maxu %c1, %c15
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    scf.parallel (%arg2) = (%c14) to (%c1) step (%c3) {
      %271 = index.casts %c6 : index to i32
      %272 = index.ceildivu %c10, %c13
      %273 = math.exp %4 : tensor<10x16x16xf32>
      %274 = math.exp2 %16 : tensor<13x3xf16>
      %275 = arith.shrui %false_3, %true : i1
      %276 = arith.divsi %c299102284_i32, %c460165649_i32 : i32
      %277 = index.add %c3, %c1
      %278 = math.ctpop %5 : tensor<13x3xi1>
      %279 = bufferization.to_memref %5 : memref<13x3xi1>
      %280 = vector.load %alloc_14[%c7, %c10, %c10] : memref<10x16x16xi32>, vector<10x16x16xi32>
      %281 = arith.divsi %c-32034_i16, %c-2710_i16 : i16
      %282 = math.round %cst_4 : f16
      %alloc_51 = memref.alloc() : memref<10x16x16xf32>
      %cst_52 = arith.constant 1.40949069E+9 : f32
      %283 = arith.shli %c-2710_i16, %c-32034_i16 : i16
      %284 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 + 128, d3, d1 - 32, d2 floordiv 4 - (d1 - 32) ceildiv 128)>(%c8, %c1, %c4, %c14)
      scf.yield
    }
    %20 = affine.vector_load %alloc_15[%c9, %c13] : memref<13x3xf32>, vector<16xf32>
    affine.vector_store %20, %alloc_15[%c9, %c5] : memref<13x3xf32>, vector<16xf32>
    %21 = tensor.empty() : tensor<16xf32>
    %22 = tensor.empty() : tensor<16xf32>
    %23 = tensor.empty() : tensor<f32>
    %24 = linalg.dot ins(%21, %22 : tensor<16xf32>, tensor<16xf32>) outs(%23 : tensor<f32>) -> tensor<f32>
    %25 = index.ceildivu %c15, %c0
    %26 = arith.remf %cst, %cst_4 : f16
    %27 = affine.min affine_map<(d0, d1) -> (-d0, d1, d1 * 4)>(%c5, %c9)
    %28 = math.atan2 %6, %6 : tensor<3x13xf16>
    %29 = vector.broadcast %c460165649_i32 : i32 to vector<10xi32>
    %30 = vector.broadcast %true : i1 to vector<10xi1>
    %31 = vector.maskedload %alloc_10[%c1, %c1], %30, %29 : memref<3x13xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
    %32 = vector.broadcast %c460165649_i32 : i32 to vector<3x13xi32>
    %33 = vector.broadcast %false_3 : i1 to vector<3x13xi1>
    %34 = vector.gather %alloc_7[%c1, %c1] [%32], %33, %32 : memref<3x13xi32>, vector<3x13xi32>, vector<3x13xi1>, vector<3x13xi32> into vector<3x13xi32>
    %35 = index.floordivs %c11, %c6
    %36 = arith.maxui %c355128154_i64, %c1966963025_i64 : i64
    scf.execute_region {
      %271 = math.log %8 : tensor<13x3xf32>
      %272 = arith.ceildivsi %c615519904_i32, %c299102284_i32 : i32
      %273 = index.floordivs %c3, %c14
      %274 = arith.divsi %false, %false : i1
      %275 = index.maxu %c1, %c7
      %276 = math.log %4 : tensor<10x16x16xf32>
      %277 = arith.shrsi %c615519904_i32, %c299102284_i32 : i32
      %278 = arith.cmpi sgt, %true, %false : i1
      %279 = index.casts %273 : index to i32
      %280 = math.copysign %10, %16 : tensor<13x3xf16>
      %collapsed_51 = tensor.collapse_shape %8 [[0, 1]] : tensor<13x3xf32> into tensor<39xf32>
      %281 = vector.broadcast %c299102284_i32 : i32 to vector<13x3xi32>
      %282 = vector.broadcast %true : i1 to vector<13x3xi1>
      %283 = vector.gather %alloc_14[%c5, %35, %c9] [%281], %282, %281 : memref<10x16x16xi32>, vector<13x3xi32>, vector<13x3xi1>, vector<13x3xi32> into vector<13x3xi32>
      %284 = vector.broadcast %c615519904_i32 : i32 to vector<10x10xi32>
      %285 = vector.outerproduct %31, %31, %284 {kind = #vector.kind<maxui>} : vector<10xi32>, vector<10xi32>
      %286 = math.exp %collapsed_51 : tensor<39xf32>
      %287 = arith.floordivsi %true, %false_3 : i1
      %288 = index.maxu %273, %c4
      scf.yield
    }
    %37 = arith.remsi %false_3, %false : i1
    %38 = arith.divsi %true, %false : i1
    %39 = arith.muli %c-32034_i16, %c-2710_i16 : i16
    %40 = vector.broadcast %false : i1 to vector<10x16x16xi1>
    %41 = vector.create_mask %c8, %c7, %c9 : vector<10x3x3xi1>
    %42 = arith.addi %c615519904_i32, %c615519904_i32 : i32
    %43 = arith.xori %c460165649_i32, %c460165649_i32 : i32
    %44 = vector.bitcast %30 : vector<10xi1> to vector<10xi1>
    %45 = arith.subi %c-32034_i16, %c-2710_i16 : i16
    %46 = bufferization.to_memref %9 : memref<13x3xi64>
    %47 = vector.broadcast %c299102284_i32 : i32 to vector<10x10xi32>
    %48 = vector.outerproduct %31, %29, %47 {kind = #vector.kind<minui>} : vector<10xi32>, vector<10xi32>
    %49 = math.cttz %7 : tensor<13x3xi1>
    %50 = arith.remf %cst_1, %cst_2 : f32
    %51 = arith.floordivsi %c355128154_i64, %c1966963025_i64 : i64
    %52 = math.fma %cst_0, %cst_0, %cst : f16
    %53 = affine.min affine_map<(d0, d1) -> (d0, d0 floordiv 2 - ((d1 + 2) * 2 - ((d1 + 2) * 2 + 2)) + 64, d0 floordiv 2 + 64, (d1 + 2) * 2)>(%c15, %c14)
    %54 = vector.matrix_multiply %44, %30 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi1>, vector<10xi1>) -> vector<1xi1>
    memref.assume_alignment %alloc_16, 16 : memref<10x3x3xf32>
    %55 = vector.broadcast %cst_2 : f32 to vector<10xf32>
    %56 = vector.maskedload %alloc_17[%c5, %c1, %c2], %30, %55 : memref<10x3x3xf32>, vector<10xi1>, vector<10xf32> into vector<10xf32>
    %57 = arith.addi %c299102284_i32, %c615519904_i32 : i32
    memref.store %true, %alloc_13[%c8, %c15, %c11] : memref<10x16x16xi1>
    %58 = math.log2 %cst : f16
    %59 = arith.remf %cst_0, %cst_0 : f16
    %60 = vector.broadcast %cst_1 : f32 to vector<10x16x16xf32>
    %61 = vector.fma %60, %60, %60 : vector<10x16x16xf32>
    %62 = arith.mulf %cst_5, %cst_0 : f16
    %63 = math.atan2 %4, %4 : tensor<10x16x16xf32>
    %64 = math.copysign %transposed, %transposed : tensor<16x10x16xf32>
    %65 = math.cos %8 : tensor<13x3xf32>
    %66 = vector.broadcast %false_3 : i1 to vector<10x10xi1>
    %67 = vector.outerproduct %44, %44, %66 {kind = #vector.kind<maxsi>} : vector<10xi1>, vector<10xi1>
    %68 = arith.cmpf ueq, %cst_4, %cst : f16
    %69 = math.expm1 %8 : tensor<13x3xf32>
    %70 = math.log10 %cst_2 : f32
    %71 = affine.min affine_map<(d0, d1, d2) -> (d1 + d0 - d0 mod 4 - 2, d1, d2, d0 ceildiv 32)>(%35, %53, %27)
    %72 = math.log10 %22 : tensor<16xf32>
    %73 = arith.minui %c-2710_i16, %c-32034_i16 : i16
    %74 = arith.addi %c-32034_i16, %c-2710_i16 : i16
    %alloc_21 = memref.alloc() : memref<3x13xi16>
    %75 = math.log1p %18 : tensor<16x10x16xf32>
    %76 = arith.divf %cst, %cst_4 : f16
    %cast = tensor.cast %4 : tensor<10x16x16xf32> to tensor<?x?x?xf32>
    %77 = math.fma %16, %17, %17 : tensor<13x3xf16>
    %78 = vector.load %alloc_16[%c2, %c0, %c2] : memref<10x3x3xf32>, vector<3x13xf32>
    %79 = vector.broadcast %true : i1 to vector<3x13xi1>
    vector.print %56 : vector<10xf32>
    %80 = math.ctpop %c-32034_i16 : i16
    %81 = memref.load %alloc_20[%c2, %c12] : memref<3x13xi1>
    %82 = math.fma %21, %21, %21 : tensor<16xf32>
    %83 = affine.load %alloc_11[%c14, %c14] : memref<13x3xf16>
    %84 = math.cos %cst_5 : f16
    %85 = index.sizeof
    %86 = math.log2 %4 : tensor<10x16x16xf32>
    %87 = math.powf %16, %10 : tensor<13x3xf16>
    %88 = tensor.empty(%c12, %c7) : tensor<?x3x?xi32>
    %89 = math.log2 %6 : tensor<3x13xf16>
    %90 = arith.remui %c-32034_i16, %c-32034_i16 : i16
    %91 = math.ctlz %1 : tensor<13x3xi1>
    %92 = vector.shuffle %78, %78 [0, 5] : vector<3x13xf32>, vector<3x13xf32>
    %93 = arith.divsi %false, %false_3 : i1
    %94 = index.maxu %25, %27
    %95 = arith.divf %cst_1, %cst_2 : f32
    %96 = arith.maxf %83, %cst_4 : f16
    %97 = index.casts %27 : index to i32
    %98 = affine.min affine_map<(d0) -> (-d0)>(%c8)
    %99 = vector.insertelement %true, %54[%71 : index] : vector<1xi1>
    %100 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<10x16x16xf32>) {
    ^bb0(%out: f32):
      %271 = index.maxu %c15, %27
      %rank = tensor.rank %4 : tensor<10x16x16xf32>
      %272 = math.log10 %cst_5 : f16
      %273 = index.mul %94, %c11
      %274 = math.ctpop %5 : tensor<13x3xi1>
      %275 = arith.floordivsi %false, %false_3 : i1
      %276 = math.ceil %cst_1 : f32
      %277 = affine.min affine_map<(d0, d1, d2, d3) -> ((d3 ceildiv 128) floordiv 16, d2 floordiv 64, d0, d2 floordiv 64)>(%c13, %c13, %c6, %c8)
      %278 = tensor.empty() : tensor<16xf32>
      %mapped_51 = linalg.map ins(%22, %22, %21 : tensor<16xf32>, tensor<16xf32>, tensor<16xf32>) outs(%278 : tensor<16xf32>)
        (%in: f32, %in_55: f32, %in_56: f32) {
          %303 = vector.broadcast %83 : f16 to vector<3x13xf16>
          %304 = arith.xori %c460165649_i32, %c299102284_i32 : i32
          %305 = arith.addi %c460165649_i32, %c615519904_i32 : i32
          %306 = arith.minsi %c1966963025_i64, %c355128154_i64 : i64
          %splat_57 = tensor.splat %83 : tensor<13x3xf16>
          %307 = vector.matrix_multiply %20, %55 {lhs_columns = 2 : i32, lhs_rows = 8 : i32, rhs_columns = 5 : i32} : (vector<16xf32>, vector<10xf32>) -> vector<40xf32>
          %308 = math.roundeven %6 : tensor<3x13xf16>
          %309 = arith.maxf %in_56, %cst_1 : f32
          %310 = arith.cmpf olt, %in_56, %out : f32
          %311 = vector.bitcast %307 : vector<40xf32> to vector<40xf32>
          %312 = tensor.empty() : tensor<10x3x3xi16>
          %313 = vector.broadcast %c-2710_i16 : i16 to vector<3x13xi16>
          %314 = vector.gather %312[%273, %c3, %25] [%32], %33, %313 : tensor<10x3x3xi16>, vector<3x13xi32>, vector<3x13xi1>, vector<3x13xi16> into vector<3x13xi16>
          %315 = tensor.empty(%85) : tensor<?x13xf16>
          %316 = vector.broadcast %53 : index to vector<10xindex>
          vector.scatter %alloc_17[%c6, %c0, %c1] [%316], %30, %55 : memref<10x3x3xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
          %317 = vector.matrix_multiply %20, %307 {lhs_columns = 8 : i32, lhs_rows = 2 : i32, rhs_columns = 5 : i32} : (vector<16xf32>, vector<40xf32>) -> vector<10xf32>
          %318 = arith.shrui %true, %true : i1
          %319 = arith.maxf %cst_0, %cst_5 : f16
          %320 = math.round %21 : tensor<16xf32>
          %321 = arith.divsi %c299102284_i32, %c460165649_i32 : i32
          %322 = math.fma %8, %8, %8 : tensor<13x3xf32>
          %323 = arith.addi %false_3, %false : i1
          %324 = math.ctlz %15 : tensor<10x16x16xi64>
          %325 = arith.divf %cst_0, %cst_4 : f16
          %326 = vector.insertelement %in_56, %311[%c14 : index] : vector<40xf32>
          %327 = math.floor %24 : tensor<f32>
          %328 = vector.broadcast %c-2710_i16 : i16 to vector<3xi16>
          %329 = vector.broadcast %true : i1 to vector<3xi1>
          %330 = vector.maskedload %alloc_18[%c11, %c2], %329, %328 : memref<13x3xi16>, vector<3xi1>, vector<3xi16> into vector<3xi16>
          %331 = vector.broadcast %c0 : index to vector<13xindex>
          %332 = vector.broadcast %true : i1 to vector<13xi1>
          %333 = vector.broadcast %83 : f16 to vector<13xf16>
          vector.scatter %alloc_11[%c11, %c2] [%331], %332, %333 : memref<13x3xf16>, vector<13xindex>, vector<13xi1>, vector<13xf16>
          %334 = arith.maxf %cst_0, %cst_0 : f16
          %335 = index.mul %c8, %c4
          %336 = vector.broadcast %cst : f16 to vector<3x13xf16>
          %337 = math.ctpop %5 : tensor<13x3xi1>
          %338 = math.powf %cst_5, %cst_0 : f16
          %339 = arith.minf %cst_4, %cst : f16
          %cst_58 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_58 : f32
        }
      %279 = math.exp %cst_1 : f32
      %280 = arith.remf %cst, %cst_0 : f16
      %281 = affine.max affine_map<(d0, d1) -> (d0 mod 16 + d1 - (d0 mod 128 - 4), (d1 ceildiv 32) ceildiv 2)>(%277, %27)
      %282 = tensor.empty() : tensor<10x3x3xi16>
      %283 = vector.broadcast %c-2710_i16 : i16 to vector<10x16x16xi16>
      %284 = vector.broadcast %c299102284_i32 : i32 to vector<10x16x16xi32>
      %285 = vector.gather %282[%277, %c10, %c15] [%284], %40, %283 : tensor<10x3x3xi16>, vector<10x16x16xi32>, vector<10x16x16xi1>, vector<10x16x16xi16> into vector<10x16x16xi16>
      memref.assume_alignment %alloc_13, 4 : memref<10x16x16xi1>
      %alloc_52 = memref.alloc() : memref<3xi16>
      %286 = memref.realloc %alloc_52 : memref<3xi16> to memref<10xi16>
      %287 = arith.shrsi %c355128154_i64, %c355128154_i64 : i64
      %288 = vector.bitcast %34 : vector<3x13xi32> to vector<3x13xi32>
      %289 = math.ctlz %11 : tensor<10x16x16xi1>
      %290 = memref.load %alloc_17[%c9, %c0, %c0] : memref<10x3x3xf32>
      %291 = math.log1p %4 : tensor<10x16x16xf32>
      %splat_53 = tensor.splat %cst_4 : tensor<10x16x16xf16>
      %292 = math.expm1 %cst_5 : f16
      %cast_54 = tensor.cast %4 : tensor<10x16x16xf32> to tensor<?x?x?xf32>
      %293 = arith.divui %c-2710_i16, %c-32034_i16 : i16
      %294 = vector.broadcast %cst_1 : f32 to vector<10x10xf32>
      %295 = vector.outerproduct %55, %55, %294 {kind = #vector.kind<add>} : vector<10xf32>, vector<10xf32>
      %296 = arith.ceildivsi %false, %false : i1
      %297 = vector.flat_transpose %55 {columns = 5 : i32, rows = 2 : i32} : vector<10xf32> -> vector<10xf32>
      %298 = affine.load %alloc_15[%c9, %c6] : memref<13x3xf32>
      %299 = index.add %c3, %c0
      %300 = arith.remf %cst_0, %cst_5 : f16
      %301 = affine.max affine_map<(d0, d1) -> (d1 - (d1 - 16))>(%c12, %c6)
      %302 = vector.insertelement %298, %55[%c6 : index] : vector<10xf32>
      linalg.yield %out : f32
    } -> tensor<10x16x16xf32>
    %101 = tensor.empty() : tensor<10x16x16xi32>
    %mapped = linalg.map ins(%12, %12 : tensor<10x16x16xi32>, tensor<10x16x16xi32>) outs(%101 : tensor<10x16x16xi32>)
      (%in: i32, %in_51: i32) {
        bufferization.dealloc_tensor %14 : tensor<13x3xi16>
        %271 = arith.divf %cst_0, %cst : f16
        %272 = math.ctpop %13 : tensor<13x3xi32>
        %273 = vector.broadcast %c2 : index to vector<10xindex>
        %274 = vector.broadcast %c1966963025_i64 : i64 to vector<10xi64>
        vector.scatter %46[%c7, %c1] [%273], %44, %274 : memref<13x3xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
        %alloc_52 = memref.alloc() : memref<10xf32>
        %275 = tensor.empty() : tensor<16x16xf32>
        %276 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_52, %alloc_52, %275 : memref<10xf32>, memref<10xf32>, tensor<16x16xf32>) outs(%transposed : tensor<16x10x16xf32>) {
        ^bb0(%in_56: f32, %in_57: f32, %in_58: f32, %out: f32):
          %301 = index.ceildivu %98, %c15
          %302 = math.log1p %cst_1 : f32
          %303 = vector.create_mask %c13, %35, %c5 : vector<10x3x3xi1>
          %304 = vector.insertelement %false, %54[%c7 : index] : vector<1xi1>
          %305 = math.exp2 %4 : tensor<10x16x16xf32>
          %306 = arith.divf %in_57, %cst_2 : f32
          %c533073564_i64 = arith.constant 533073564 : i64
          %307 = arith.divui %c-32034_i16, %c-2710_i16 : i16
          %308 = math.log2 %4 : tensor<10x16x16xf32>
          %cast_59 = tensor.cast %9 : tensor<13x3xi64> to tensor<?x?xi64>
          %309 = math.log1p %24 : tensor<f32>
          %310 = arith.ceildivsi %c460165649_i32, %c299102284_i32 : i32
          %311 = arith.divsi %c-2710_i16, %c-2710_i16 : i16
          %312 = arith.ceildivsi %c-32034_i16, %c-32034_i16 : i16
          %313 = math.atan2 %4, %4 : tensor<10x16x16xf32>
          affine.store %c299102284_i32, %alloc_14[%c8, %c0, %c13] : memref<10x16x16xi32>
          %314 = index.maxu %53, %c12
          %315 = vector.broadcast %false : i1 to vector<10x3xi1>
          %dest_60, %accumulated_value_61 = vector.scan <xor>, %303, %315 {inclusive = true, reduction_dim = 2 : i64} : vector<10x3x3xi1>, vector<10x3xi1>
          %316 = math.expm1 %8 : tensor<13x3xf32>
          %317 = math.tan %21 : tensor<16xf32>
          %318 = arith.shli %c615519904_i32, %c299102284_i32 : i32
          %319 = vector.load %alloc_12[%c5, %c1, %c1] : memref<10x3x3xi1>, vector<10x16x16xi1>
          %320 = arith.remui %c-32034_i16, %c-2710_i16 : i16
          %321 = affine.load %alloc_11[%c14, %c1] : memref<13x3xf16>
          %322 = math.ceil %cst_0 : f16
          %323 = affine.min affine_map<(d0, d1) -> ((d0 - 8) * 32, -(d0 + (d0 - 8) * 32))>(%25, %c10)
          %324 = math.log1p %10 : tensor<13x3xf16>
          %325 = affine.min affine_map<(d0, d1, d2, d3) -> (d1, d0 * -4, d0 - d3 + 8)>(%27, %314, %c12, %c2)
          %326 = math.log10 %24 : tensor<f32>
          %c120198472_i64 = arith.constant 120198472 : i64
          %327 = index.sizeof
          %328 = affine.max affine_map<(d0) -> (-d0, ((d0 * -2) mod 64) ceildiv 64, -2, 0)>(%c13)
          linalg.yield %cst_1 : f32
        } -> tensor<16x10x16xf32>
        %277 = arith.maxui %in_51, %in : i32
        %278 = index.ceildivu %98, %c7
        vector.print %40 : vector<10x16x16xi1>
        %279 = scf.while (%arg2 = %alloc_6) : (memref<10x16x16xi64>) -> memref<10x16x16xi64> {
          %301 = arith.cmpf one, %cst_4, %cst : f16
          %302 = bufferization.clone %alloc_13 : memref<10x16x16xi1> to memref<10x16x16xi1>
          %303 = arith.ceildivsi %in, %c460165649_i32 : i32
          bufferization.dealloc_tensor %5 : tensor<13x3xi1>
          %304 = arith.cmpf uge, %cst_1, %cst_1 : f32
          %305 = arith.shrsi %false_3, %false : i1
          %306 = index.maxu %35, %35
          %307 = affine.max affine_map<(d0) -> (d0 - 4, d0 * 32, d0 - d0 floordiv 4, d0 * 31 + (d0 * 31) mod 32)>(%c14)
          scf.condition(%true) %alloc_6 : memref<10x16x16xi64>
        } do {
        ^bb0(%arg2: memref<10x16x16xi64>):
          vector.print %78 : vector<3x13xf32>
          %cast_56 = tensor.cast %6 : tensor<3x13xf16> to tensor<?x?xf16>
          %301 = arith.ori %true, %false : i1
          %302 = index.castu %27 : index to i32
          %303 = index.ceildivu %c13, %85
          %304 = arith.shrsi %c1966963025_i64, %c355128154_i64 : i64
          %305 = arith.shrsi %c460165649_i32, %c615519904_i32 : i32
          %306 = arith.shrsi %c615519904_i32, %c460165649_i32 : i32
          %307 = math.log2 %cst_1 : f32
          %308 = index.castu %c-32034_i16 : i16 to index
          %309 = math.atan2 %cst, %cst_4 : f16
          bufferization.dealloc_tensor %8 : tensor<13x3xf32>
          %310 = vector.insertelement %cst_1, %20[%94 : index] : vector<16xf32>
          %311 = math.ceil %cst_4 : f16
          %312 = math.copysign %83, %83 : f16
          %313 = math.fma %4, %4, %4 : tensor<10x16x16xf32>
          scf.yield %arg2 : memref<10x16x16xi64>
        }
        %splat_53 = tensor.splat %cst_5 : tensor<3x13xf16>
        affine.store %true, %alloc_13[%c15, %c0, %c6] : memref<10x16x16xi1>
        %280 = bufferization.clone %alloc_16 : memref<10x3x3xf32> to memref<10x3x3xf32>
        %281 = math.round %4 : tensor<10x16x16xf32>
        %282 = math.tanh %10 : tensor<13x3xf16>
        %283 = math.fpowi %cst, %in : f16, i32
        %284 = math.copysign %4, %4 : tensor<10x16x16xf32>
        %285 = arith.addi %in_51, %in : i32
        %286 = arith.minsi %c299102284_i32, %c460165649_i32 : i32
        %287 = tensor.empty() : tensor<16xi64>
        %288 = tensor.empty() : tensor<16x16xi64>
        %289 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%287, %288 : tensor<16xi64>, tensor<16x16xi64>) outs(%15 : tensor<10x16x16xi64>) {
        ^bb0(%in_56: i64, %in_57: i64, %out: i64):
          %301 = math.exp %4 : tensor<10x16x16xf32>
          %cast_58 = tensor.cast %3 : tensor<3x13xi64> to tensor<?x?xi64>
          %302 = math.log2 %6 : tensor<3x13xf16>
          %303 = math.tanh %4 : tensor<10x16x16xf32>
          %304 = vector.broadcast %cst_1 : f32 to vector<16x16xf32>
          %305 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %60, %56, %304 : vector<10x16x16xf32>, vector<10xf32> into vector<16x16xf32>
          %306 = bufferization.clone %46 : memref<13x3xi64> to memref<13x3xi64>
          %307 = math.round %6 : tensor<3x13xf16>
          %alloca_59 = memref.alloca() : memref<10x16x16xi1>
          %collapsed_60 = tensor.collapse_shape %17 [[0, 1]] : tensor<13x3xf16> into tensor<39xf16>
          %308 = memref.atomic_rmw muli %c1966963025_i64, %46[%c4, %c1] : (i64, memref<13x3xi64>) -> i64
          %309 = bufferization.to_memref %4 : memref<10x16x16xf32>
          memref.store %c-2710_i16, %alloc_8[%c11, %c0] : memref<13x3xi16>
          %310 = math.copysign %10, %10 : tensor<13x3xf16>
          %311 = index.add %c15, %35
          %312 = arith.xori %c299102284_i32, %c299102284_i32 : i32
          %collapsed_61 = tensor.collapse_shape %5 [[0, 1]] : tensor<13x3xi1> into tensor<39xi1>
          %313 = math.fma %cst_5, %cst_0, %cst_4 : f16
          %314 = math.cos %collapsed_60 : tensor<39xf16>
          %315 = arith.remsi %false_3, %false_3 : i1
          %316 = index.mul %c8, %c1
          memref.assume_alignment %alloc_20, 8 : memref<3x13xi1>
          %317 = arith.divsi %out, %c355128154_i64 : i64
          %318 = affine.min affine_map<(d0, d1, d2) -> (d1 * -2, d2 floordiv 8, d2 floordiv 8, d1 - 1)>(%c0, %c2, %c12)
          %319 = arith.ceildivsi %in_57, %out : i64
          %320 = math.log1p %4 : tensor<10x16x16xf32>
          %321 = vector.load %alloc_20[%c0, %c0] : memref<3x13xi1>, vector<3x13xi1>
          %322 = arith.remui %in, %c460165649_i32 : i32
          %323 = tensor.empty(%85) : tensor<?x13xi16>
          %324 = arith.andi %false, %false : i1
          %325 = index.add %c15, %c11
          %326 = math.ctpop %false : i1
          memref.store %cst_1, %alloc_16[%c0, %c0, %c1] : memref<10x3x3xf32>
          linalg.yield %in_57 : i64
        } -> tensor<10x16x16xi64>
        %290 = math.exp2 %cst_0 : f16
        %291 = memref.load %alloc_15[%c6, %c0] : memref<13x3xf32>
        %292 = math.atan2 %10, %16 : tensor<13x3xf16>
        %293 = arith.addi %c-2710_i16, %c-2710_i16 : i16
        %294 = math.tan %16 : tensor<13x3xf16>
        %295 = index.maxs %25, %c0
        %296 = math.roundeven %24 : tensor<f32>
        %297 = arith.maxf %cst_0, %cst_4 : f16
        %extracted_54 = tensor.extract %7[%c7, %c1] : tensor<13x3xi1>
        %298 = math.expm1 %cst_1 : f32
        %299 = arith.addi %c-32034_i16, %c-32034_i16 : i16
        %true_55 = index.bool.constant true
        %300 = bufferization.to_memref %7 : memref<13x3xi1>
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    %102 = arith.muli %false_3, %true : i1
    %103 = index.sizeof
    %alloc_22 = memref.alloc() : memref<10xf32>
    %104 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_22, %alloc_22, %18 : memref<10xf32>, memref<10xf32>, tensor<16x10x16xf32>) outs(%transposed : tensor<16x10x16xf32>) {
    ^bb0(%in: f32, %in_51: f32, %in_52: f32, %out: f32):
      %271 = index.divu %c8, %c2
      %272 = vector.extract %20[13] : vector<16xf32>
      %273 = math.log %cst_4 : f16
      %cast_53 = tensor.cast %1 : tensor<13x3xi1> to tensor<?x?xi1>
      %generated_54 = tensor.generate %c15, %c15 {
      ^bb0(%arg2: index, %arg3: index):
        %299 = index.ceildivu %c9, %c4
        %300 = math.tanh %cst_1 : f32
        memref.assume_alignment %alloc_13, 4 : memref<10x16x16xi1>
        %301 = math.atan2 %cst, %cst_0 : f16
        tensor.yield %cst_5 : f16
      } : tensor<?x?xf16>
      %274 = index.sizeof
      %275 = index.divs %c11, %c2
      %276 = arith.shrsi %c615519904_i32, %c615519904_i32 : i32
      bufferization.dealloc_tensor %transposed : tensor<16x10x16xf32>
      %277 = index.ceildivu %271, %c13
      %278 = vector.broadcast %83 : f16 to vector<10x3x3xf16>
      %279 = vector.broadcast %274 : index to vector<13xindex>
      %280 = vector.broadcast %false_3 : i1 to vector<13xi1>
      %281 = vector.broadcast %out : f32 to vector<13xf32>
      vector.scatter %alloc_16[%c7, %c1, %c1] [%279], %280, %281 : memref<10x3x3xf32>, vector<13xindex>, vector<13xi1>, vector<13xf32>
      %282 = arith.addf %83, %cst_5 : f16
      %283 = math.fpowi %cst_0, %c299102284_i32 : f16, i32
      %284 = tensor.empty() : tensor<13x3xi64>
      %mapped_55 = linalg.map ins(%alloc, %alloc, %9 : memref<13x3xi64>, memref<13x3xi64>, tensor<13x3xi64>) outs(%284 : tensor<13x3xi64>)
        (%in_60: i64, %in_61: i64, %in_62: i64) {
          %299 = math.ctlz %0 : tensor<13x3xi16>
          %300 = math.exp %8 : tensor<13x3xf32>
          %301 = arith.maxui %c1966963025_i64, %c355128154_i64 : i64
          %302 = math.exp2 %cst_0 : f16
          %303 = vector.load %alloc_8[%c7, %c1] : memref<13x3xi16>, vector<3x13xi16>
          %304 = tensor.empty() : tensor<16xi32>
          %305 = math.fpowi %21, %304 : tensor<16xf32>, tensor<16xi32>
          %306 = index.maxu %c6, %85
          %307 = index.sizeof
          %308 = index.casts %c4 : index to i32
          %splat_63 = tensor.splat %in : tensor<10x16x16xf32>
          vector.print %55 : vector<10xf32>
          %309 = arith.maxf %in, %cst_2 : f32
          %310 = arith.mulf %cst_0, %cst_4 : f16
          %311 = arith.shrui %c-2710_i16, %c-32034_i16 : i16
          %312 = index.casts %c355128154_i64 : i64 to index
          %313 = arith.minf %cst_0, %cst_4 : f16
          %314 = math.atan2 %18, %18 : tensor<16x10x16xf32>
          bufferization.dealloc_tensor %13 : tensor<13x3xi32>
          %315 = memref.load %alloc_11[%c5, %c0] : memref<13x3xf16>
          %316 = arith.mulf %cst_5, %cst : f16
          %317 = math.log2 %24 : tensor<f32>
          %318 = math.ctpop %7 : tensor<13x3xi1>
          %319 = math.expm1 %18 : tensor<16x10x16xf32>
          %c221331342_i64 = arith.constant 221331342 : i64
          %320 = math.log10 %out : f32
          %alloc_64 = memref.alloc() : memref<3x13xi1>
          %321 = index.sizeof
          %322 = index.mul %94, %274
          %323 = math.exp %22 : tensor<16xf32>
          %cast_65 = tensor.cast %6 : tensor<3x13xf16> to tensor<?x?xf16>
          %324 = vector.matrix_multiply %56, %20 {lhs_columns = 2 : i32, lhs_rows = 5 : i32, rhs_columns = 8 : i32} : (vector<10xf32>, vector<16xf32>) -> vector<40xf32>
          affine.store %cst_1, %alloc_15[%c3, %c12] : memref<13x3xf32>
          %c1_i64 = arith.constant 1 : i64
          linalg.yield %c1_i64 : i64
        }
      %285 = arith.divui %c355128154_i64, %c355128154_i64 : i64
      %generated_56 = tensor.generate %c2, %c0 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %299 = index.castu %c0 : index to i32
        %300 = arith.shrsi %c460165649_i32, %c615519904_i32 : i32
        %301 = bufferization.clone %alloc_14 : memref<10x16x16xi32> to memref<10x16x16xi32>
        %302 = arith.ceildivsi %c615519904_i32, %c299102284_i32 : i32
        tensor.yield %out : f32
      } : tensor<?x?x16xf32>
      %286 = bufferization.to_memref %generated_54 : memref<?x?xf16>
      %287 = index.divu %27, %274
      %288 = index.casts %277 : index to i32
      %289 = index.ceildivu %277, %c11
      memref.assume_alignment %alloc_12, 16 : memref<10x3x3xi1>
      %290 = vector.broadcast %false_3 : i1 to vector<10x16xi1>
      %dest_57, %accumulated_value_58 = vector.scan <or>, %40, %290 {inclusive = false, reduction_dim = 2 : i64} : vector<10x16x16xi1>, vector<10x16xi1>
      %291 = scf.index_switch %275 -> index 
      case 1 {
        %299 = arith.shli %false_3, %false_3 : i1
        vector.print %34 : vector<3x13xi32>
        %300 = vector.shuffle %278, %278 [2, 3, 4, 9, 11, 12, 13, 14, 16, 17, 19] : vector<10x3x3xf16>, vector<10x3x3xf16>
        %301 = vector.broadcast %85 : index to vector<13xindex>
        %302 = vector.broadcast %false : i1 to vector<13xi1>
        %303 = vector.broadcast %in : f32 to vector<13xf32>
        vector.scatter %alloc_16[%c4, %c2, %c1] [%301], %302, %303 : memref<10x3x3xf32>, vector<13xindex>, vector<13xi1>, vector<13xf32>
        %304 = arith.addi %c-2710_i16, %c-2710_i16 : i16
        %305 = arith.maxf %cst_1, %cst_1 : f32
        %306 = index.castu %c7 : index to i32
        %307 = arith.shli %c-2710_i16, %c-2710_i16 : i16
        %308 = arith.ori %c-2710_i16, %c-2710_i16 : i16
        %309 = vector.broadcast %c615519904_i32 : i32 to vector<3xi32>
        %dest_60, %accumulated_value_61 = vector.scan <and>, %32, %309 {inclusive = true, reduction_dim = 1 : i64} : vector<3x13xi32>, vector<3xi32>
        %310 = math.log2 %22 : tensor<16xf32>
        %311 = math.cos %transposed : tensor<16x10x16xf32>
        %312 = math.tan %4 : tensor<10x16x16xf32>
        %313 = math.tan %22 : tensor<16xf32>
        %alloca_62 = memref.alloca() : memref<10x16x16xf16>
        %314 = vector.bitcast %34 : vector<3x13xi32> to vector<3x13xi32>
        scf.yield %c5 : index
      }
      default {
        %299 = vector.insertelement %c299102284_i32, %29[%c7 : index] : vector<10xi32>
        memref.assume_alignment %alloc_15, 16 : memref<13x3xf32>
        bufferization.dealloc_tensor %23 : tensor<f32>
        %300 = arith.shrui %c-2710_i16, %c-32034_i16 : i16
        %301 = bufferization.clone %alloc_20 : memref<3x13xi1> to memref<3x13xi1>
        %302 = arith.maxui %c-32034_i16, %c-32034_i16 : i16
        %303 = vector.broadcast %in : f32 to vector<3xf32>
        %dest_60, %accumulated_value_61 = vector.scan <mul>, %78, %303 {inclusive = false, reduction_dim = 1 : i64} : vector<3x13xf32>, vector<3xf32>
        %304 = index.divs %c2, %289
        %305 = arith.addi %c615519904_i32, %c460165649_i32 : i32
        %306 = index.ceildivu %304, %103
        %307 = vector.broadcast %false : i1 to vector<i1>
        %308 = vector.transfer_write %307, %7[%71, %306] : vector<i1>, tensor<13x3xi1>
        %309 = arith.andi %c-2710_i16, %c-2710_i16 : i16
        %310 = vector.reduction <minf>, %56 : vector<10xf32> into f32
        %311 = index.add %27, %103
        %312 = affine.min affine_map<(d0, d1) -> (-32, 0, (d1 + 64) ceildiv 4 + 64)>(%c10, %c4)
        %313 = vector.multi_reduction <minsi>, %34, %c615519904_i32 [0, 1] : vector<3x13xi32> to i32
        scf.yield %311 : index
      }
      %cst_59 = arith.constant 5.500800e+04 : f16
      %292 = vector.broadcast %out : f32 to vector<10x3x3xf32>
      %293 = vector.insertelement %c460165649_i32, %31[%71 : index] : vector<10xi32>
      %294 = vector.broadcast %c299102284_i32 : i32 to vector<13xi32>
      %295 = vector.multi_reduction <add>, %32, %294 [0] : vector<3x13xi32> to vector<13xi32>
      %296 = math.log1p %transposed : tensor<16x10x16xf32>
      %297 = math.roundeven %16 : tensor<13x3xf16>
      memref.store %true, %alloc_20[%c2, %c0] : memref<3x13xi1>
      %298 = math.expm1 %8 : tensor<13x3xf32>
      linalg.yield %cst_1 : f32
    } -> tensor<16x10x16xf32>
    %105 = vector.insertelement %c460165649_i32, %29[%53 : index] : vector<10xi32>
    %106 = arith.mulf %cst_0, %cst : f16
    %107 = math.copysign %16, %10 : tensor<13x3xf16>
    %108 = arith.andi %c615519904_i32, %c615519904_i32 : i32
    %109 = index.ceildivs %85, %c7
    %110 = arith.addf %cst_0, %cst_0 : f16
    %cst_23 = arith.constant 2.432000e+03 : f16
    %111 = math.atan2 %22, %22 : tensor<16xf32>
    %112 = math.log2 %10 : tensor<13x3xf16>
    %113 = arith.subi %c1966963025_i64, %c1966963025_i64 : i64
    %114 = vector.insertelement %true, %54[%35 : index] : vector<1xi1>
    %115 = vector.broadcast %false : i1 to vector<10x3xi1>
    %dest, %accumulated_value = vector.scan <maxui>, %41, %115 {inclusive = true, reduction_dim = 1 : i64} : vector<10x3x3xi1>, vector<10x3xi1>
    %116 = math.expm1 %18 : tensor<16x10x16xf32>
    %117 = math.copysign %4, %4 : tensor<10x16x16xf32>
    %118 = math.log %17 : tensor<13x3xf16>
    %119 = arith.shrui %c299102284_i32, %c615519904_i32 : i32
    %120 = arith.divf %cst_4, %83 : f16
    %generated = tensor.generate %c3, %c3 {
    ^bb0(%arg2: index, %arg3: index):
      %alloc_51 = memref.alloc() : memref<3x13xi64>
      memref.tensor_store %3, %alloc_51 : memref<3x13xi64>
      %271 = arith.remui %c460165649_i32, %c615519904_i32 : i32
      %272 = affine.max affine_map<(d0) -> (-d0)>(%c10)
      %273 = math.atan2 %18, %18 : tensor<16x10x16xf32>
      tensor.yield %cst_1 : f32
    } : tensor<?x?xf32>
    %121 = math.copysign %10, %10 : tensor<13x3xf16>
    %122 = affine.load %46[%c9, %c6] : memref<13x3xi64>
    %123 = affine.min affine_map<(d0) -> ((d0 * 3) ceildiv 4, d0 * 2)>(%94)
    %124 = math.ctpop %reduced : tensor<i32>
    %125 = arith.maxui %c299102284_i32, %c615519904_i32 : i32
    %126 = index.castu %c615519904_i32 : i32 to index
    %127 = math.floor %22 : tensor<16xf32>
    vector.print %40 : vector<10x16x16xi1>
    vector.print %31 : vector<10xi32>
    %alloca = memref.alloca() : memref<13x3xi64>
    %128 = math.ctpop %11 : tensor<10x16x16xi1>
    %129 = vector.insertelement %cst_2, %55[%c10 : index] : vector<10xf32>
    %130 = bufferization.clone %alloc_9 : memref<3x13xi1> to memref<3x13xi1>
    %131 = arith.andi %122, %122 : i64
    %132 = vector.broadcast %true : i1 to vector<10x16xi1>
    %dest_24, %accumulated_value_25 = vector.scan <add>, %40, %132 {inclusive = true, reduction_dim = 2 : i64} : vector<10x16x16xi1>, vector<10x16xi1>
    %cst_26 = arith.constant 1.80124262E+9 : f32
    %133 = math.atan2 %4, %4 : tensor<10x16x16xf32>
    %collapsed = tensor.collapse_shape %8 [[0, 1]] : tensor<13x3xf32> into tensor<39xf32>
    %true_27 = arith.constant true
    %134 = vector.bitcast %30 : vector<10xi1> to vector<10xi1>
    %135 = vector.broadcast %cst_2 : f32 to vector<10x10xf32>
    %136 = vector.outerproduct %56, %56, %135 {kind = #vector.kind<mul>} : vector<10xf32>, vector<10xf32>
    %cast_28 = tensor.cast %1 : tensor<13x3xi1> to tensor<?x?xi1>
    %137 = tensor.empty(%126, %c7) : tensor<?x?xf32>
    %138 = arith.addi %122, %122 : i64
    %139 = vector.broadcast %c10 : index to vector<3xindex>
    %140 = vector.broadcast %false_3 : i1 to vector<3xi1>
    %141 = vector.broadcast %cst_2 : f32 to vector<3xf32>
    vector.scatter %alloc_17[%c1, %c0, %c1] [%139], %140, %141 : memref<10x3x3xf32>, vector<3xindex>, vector<3xi1>, vector<3xf32>
    %142 = math.copysign %10, %16 : tensor<13x3xf16>
    %143 = arith.ceildivsi %c-32034_i16, %c-32034_i16 : i16
    %144 = arith.shrui %c-32034_i16, %c-2710_i16 : i16
    %145 = math.cos %cst : f16
    memref.assume_alignment %130, 16 : memref<3x13xi1>
    %146 = arith.remf %83, %cst_0 : f16
    %147 = index.divu %c8, %c2
    %148 = math.log2 %17 : tensor<13x3xf16>
    %149 = bufferization.to_memref %15 : memref<10x16x16xi64>
    %cast_29 = tensor.cast %15 : tensor<10x16x16xi64> to tensor<?x?x?xi64>
    %150 = bufferization.to_tensor %alloc_10 : memref<3x13xi32>
    %151 = index.floordivs %53, %103
    %152 = arith.divui %true, %true : i1
    %153 = math.ctlz %3 : tensor<3x13xi64>
    %154 = vector.load %alloc[%c9, %c2] : memref<13x3xi64>, vector<13x3xi64>
    %155 = bufferization.clone %alloc_19 : memref<10x3x3xi32> to memref<10x3x3xi32>
    %156 = math.fma %collapsed, %collapsed, %collapsed : tensor<39xf32>
    %157 = memref.atomic_rmw minf %cst_1, %alloc_15[%c4, %c0] : (f32, memref<13x3xf32>) -> f32
    %158 = arith.cmpf true, %cst_4, %cst_4 : f16
    %159 = arith.remui %c355128154_i64, %122 : i64
    %cst_30 = arith.constant 6.512000e+04 : f16
    %160 = math.fma %cst_2, %cst_1, %cst_2 : f32
    scf.execute_region {
      %271 = affine.min affine_map<(d0, d1, d2) -> (d1 mod 4 - d0)>(%c15, %85, %c13)
      %272 = vector.multi_reduction <minui>, %29, %31 [] : vector<10xi32> to vector<10xi32>
      bufferization.dealloc_tensor %7 : tensor<13x3xi1>
      %273 = arith.floordivsi %false, %true : i1
      bufferization.dealloc_tensor %12 : tensor<10x16x16xi32>
      %274 = vector.flat_transpose %44 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
      %275 = index.ceildivu %53, %c7
      %276 = math.log1p %collapsed : tensor<39xf32>
      %277 = math.round %8 : tensor<13x3xf32>
      %278 = math.tanh %6 : tensor<3x13xf16>
      %279 = memref.atomic_rmw addf %cst_0, %alloc_11[%c0, %c1] : (f16, memref<13x3xf16>) -> f16
      memref.copy %alloc_6, %149 : memref<10x16x16xi64> to memref<10x16x16xi64>
      %280 = arith.ceildivsi %122, %122 : i64
      %281 = math.log2 %23 : tensor<f32>
      %282 = affine.if affine_set<(d0, d1, d2, d3) : (-d2 - d1 + 4 >= 0, d2 == 0, d0 ceildiv 16 == 0)>(%c2, %c9, %c1, %c13) -> memref<10x16x16xi16> {
        %284 = math.exp %83 : f16
        %285 = arith.divf %cst_2, %cst_2 : f32
        %286 = math.cttz %19 : tensor<i32>
        %287 = vector.flat_transpose %30 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
        %288 = arith.shrui %c1966963025_i64, %122 : i64
        %289 = math.fpowi %6, %150 : tensor<3x13xf16>, tensor<3x13xi32>
        %290 = arith.maxsi %c355128154_i64, %122 : i64
        %291 = math.ceil %24 : tensor<f32>
        %alloc_51 = memref.alloc() : memref<10x16x16xi16>
        affine.yield %alloc_51 : memref<10x16x16xi16>
      } else {
        %284 = bufferization.to_memref %2 : memref<10x3x3xi1>
        %285 = math.expm1 %cst_1 : f32
        %286 = arith.remf %cst_2, %cst_1 : f32
        %cast_51 = tensor.cast %10 : tensor<13x3xf16> to tensor<?x?xf16>
        %287 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %20, %20, %cst_1 : vector<16xf32>, vector<16xf32> into f32
        %288 = arith.divsi %false, %false : i1
        %289 = arith.shli %c-2710_i16, %c-32034_i16 : i16
        %290 = index.sizeof
        %alloc_52 = memref.alloc() : memref<10x16x16xi16>
        affine.yield %alloc_52 : memref<10x16x16xi16>
      }
      %283 = math.round %23 : tensor<f32>
      scf.yield
    }
    %161 = vector.broadcast %c299102284_i32 : i32 to vector<10x10xi32>
    %162 = vector.outerproduct %31, %31, %161 {kind = #vector.kind<maxsi>} : vector<10xi32>, vector<10xi32>
    %163 = bufferization.clone %alloc_20 : memref<3x13xi1> to memref<3x13xi1>
    %164 = math.log10 %cst : f16
    memref.tensor_store %11, %alloc_13 : memref<10x16x16xi1>
    %165 = arith.addi %c355128154_i64, %c1966963025_i64 : i64
    %166 = arith.maxsi %c355128154_i64, %c1966963025_i64 : i64
    %167 = arith.muli %c-32034_i16, %c-32034_i16 : i16
    %168 = vector.broadcast %false : i1 to vector<3x13xi1>
    %169 = index.maxu %c0, %85
    %170 = arith.shrsi %c-2710_i16, %c-2710_i16 : i16
    %171 = bufferization.clone %alloc_6 : memref<10x16x16xi64> to memref<10x16x16xi64>
    %172 = tensor.empty() : tensor<10x16x16xi1>
    %mapped_31 = linalg.map ins(%alloc_13, %alloc_13, %11 : memref<10x16x16xi1>, memref<10x16x16xi1>, tensor<10x16x16xi1>) outs(%172 : tensor<10x16x16xi1>)
      (%in: i1, %in_51: i1, %in_52: i1) {
        %cast_53 = tensor.cast %4 : tensor<10x16x16xf32> to tensor<?x?x?xf32>
        %271 = memref.atomic_rmw maxs %c1966963025_i64, %171[%c1, %c13, %c9] : (i64, memref<10x16x16xi64>) -> i64
        %272 = vector.bitcast %32 : vector<3x13xi32> to vector<3x13xi32>
        %273 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%2 : tensor<10x3x3xi1>) {
        ^bb0(%out: i1):
          %297 = vector.bitcast %44 : vector<10xi1> to vector<10xi1>
          %298 = math.copysign %10, %10 : tensor<13x3xf16>
          %splat_57 = tensor.splat %cst_5 : tensor<3x13xf16>
          %299 = arith.addf %cst, %cst_5 : f16
          %300 = math.log2 %cst_2 : f32
          %cast_58 = tensor.cast %2 : tensor<10x3x3xi1> to tensor<?x?x?xi1>
          %301 = math.floor %21 : tensor<16xf32>
          %cast_59 = tensor.cast %0 : tensor<13x3xi16> to tensor<?x?xi16>
          %302 = math.floor %24 : tensor<f32>
          %alloca_60 = memref.alloca() : memref<3x13xi32>
          %303 = math.expm1 %cst_0 : f16
          %304 = math.tanh %21 : tensor<16xf32>
          %305 = arith.subi %c-32034_i16, %c-32034_i16 : i16
          memref.assume_alignment %alloc_7, 8 : memref<3x13xi32>
          %306 = arith.mulf %83, %cst_0 : f16
          %307 = index.ceildivu %c5, %126
          %308 = index.mul %c15, %53
          %309 = arith.mulf %cst_4, %83 : f16
          %310 = arith.divsi %c615519904_i32, %c615519904_i32 : i32
          %311 = affine.max affine_map<(d0) -> (d0, d0 floordiv 2 + 32, d0 floordiv 2 + 28)>(%c10)
          %312 = vector.broadcast %in : i1 to vector<1x1xi1>
          %313 = vector.outerproduct %54, %54, %312 {kind = #vector.kind<mul>} : vector<1xi1>, vector<1xi1>
          %314 = index.castu %in_51 : i1 to index
          %315 = arith.xori %122, %c1966963025_i64 : i64
          %316 = arith.maxsi %c460165649_i32, %c299102284_i32 : i32
          %317 = bufferization.to_tensor %alloc_7 : memref<3x13xi32>
          %318 = math.ceil %10 : tensor<13x3xf16>
          memref.assume_alignment %alloc_12, 1 : memref<10x3x3xi1>
          %319 = affine.min affine_map<(d0) -> (d0 mod 64)>(%c12)
          %320 = index.ceildivs %109, %314
          %321 = math.cos %8 : tensor<13x3xf32>
          %322 = vector.broadcast %122 : i64 to vector<3x13xi64>
          %323 = vector.gather %46[%320, %c14] [%272], %168, %322 : memref<13x3xi64>, vector<3x13xi32>, vector<3x13xi1>, vector<3x13xi64> into vector<3x13xi64>
          %324 = affine.min affine_map<(d0, d1) -> (d0 mod 2 + d0 + d1, 0)>(%c1, %126)
          linalg.yield %true : i1
        } -> tensor<10x3x3xi1>
        %generated_54 = tensor.generate %c15, %c2 {
        ^bb0(%arg2: index, %arg3: index):
          %c1233023667_i32 = arith.constant 1233023667 : i32
          %297 = math.atan2 %16, %10 : tensor<13x3xf16>
          %rank_57 = tensor.rank %2 : tensor<10x3x3xi1>
          %298 = math.log2 %cst_2 : f32
          tensor.yield %cst_0 : f16
        } : tensor<?x?xf16>
        %274 = vector.gather %172[%c11, %126, %103] [%34], %33, %168 : tensor<10x16x16xi1>, vector<3x13xi32>, vector<3x13xi1>, vector<3x13xi1> into vector<3x13xi1>
        %275 = math.atan2 %8, %8 : tensor<13x3xf32>
        %276 = math.fma %10, %10, %10 : tensor<13x3xf16>
        %c756178855_i32 = arith.constant 756178855 : i32
        %277 = arith.remsi %c355128154_i64, %c1966963025_i64 : i64
        %278 = arith.divf %83, %cst_0 : f16
        %279 = arith.divsi %c299102284_i32, %c615519904_i32 : i32
        %280 = memref.atomic_rmw assign %c-2710_i16, %alloc_18[%c3, %c0] : (i16, memref<13x3xi16>) -> i16
        %281 = bufferization.to_tensor %alloc_14 : memref<10x16x16xi32>
        %rank = tensor.rank %1 : tensor<13x3xi1>
        %282 = arith.addi %c355128154_i64, %122 : i64
        %false_55 = arith.constant false
        %283 = vector.broadcast %cst_1 : f32 to vector<10x10xf32>
        %284 = vector.outerproduct %56, %55, %283 {kind = #vector.kind<mul>} : vector<10xf32>, vector<10xf32>
        %285 = arith.divf %cst, %83 : f16
        %286 = math.atan2 %4, %4 : tensor<10x16x16xf32>
        %287 = bufferization.to_memref %172 : memref<10x16x16xi1>
        %288 = math.atan2 %cst_1, %cst_1 : f32
        %289 = arith.maxf %cst_2, %cst_1 : f32
        %290 = bufferization.to_tensor %alloc_19 : memref<10x3x3xi32>
        %291 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %29, %29, %c615519904_i32 : vector<10xi32>, vector<10xi32> into i32
        memref.assume_alignment %287, 16 : memref<10x16x16xi1>
        %292 = index.mul %123, %123
        %293 = arith.remf %cst_5, %83 : f16
        %294 = math.tan %10 : tensor<13x3xf16>
        affine.store %c1966963025_i64, %alloc[%c2, %c8] : memref<13x3xi64>
        %295 = index.maxs %c10, %147
        %296 = vector.broadcast %cst_4 : f16 to vector<3x13xf16>
        %false_56 = arith.constant false
        linalg.yield %false_56 : i1
      }
    %173 = arith.shrui %false_3, %false : i1
    %alloc_32 = memref.alloc() : memref<10x16x16xi32>
    memref.copy %alloc_14, %alloc_32 : memref<10x16x16xi32> to memref<10x16x16xi32>
    %174 = math.atan2 %4, %4 : tensor<10x16x16xf32>
    %175 = arith.minsi %c355128154_i64, %c355128154_i64 : i64
    %176 = arith.minui %c299102284_i32, %c460165649_i32 : i32
    %177 = affine.max affine_map<(d0) -> (d0 * -64)>(%c8)
    %178 = math.fpowi %6, %150 : tensor<3x13xf16>, tensor<3x13xi32>
    %alloc_33 = memref.alloc() : memref<3x13xi64>
    %179 = math.tanh %23 : tensor<f32>
    affine.store %cst_1, %alloc_17[%c3, %c13, %c1] : memref<10x3x3xf32>
    %180 = arith.andi %true, %false_3 : i1
    %181 = vector.broadcast %c1966963025_i64 : i64 to vector<16xi64>
    %182 = vector.broadcast %true : i1 to vector<16xi1>
    %183 = vector.maskedload %alloc_6[%c6, %c11, %c2], %182, %181 : memref<10x16x16xi64>, vector<16xi1>, vector<16xi64> into vector<16xi64>
    %184 = math.atan2 %10, %10 : tensor<13x3xf16>
    %collapsed_34 = tensor.collapse_shape %14 [[0, 1]] : tensor<13x3xi16> into tensor<39xi16>
    %185 = math.powf %cst_0, %cst_0 : f16
    %186 = math.round %83 : f16
    %187 = tensor.empty() : tensor<16xf32>
    %mapped_35 = linalg.map ins(%21, %22 : tensor<16xf32>, tensor<16xf32>) outs(%187 : tensor<16xf32>)
      (%in: f32, %in_51: f32) {
        %271 = vector.matrix_multiply %30, %30 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi1>, vector<10xi1>) -> vector<1xi1>
        %272 = bufferization.to_memref %3 : memref<3x13xi64>
        %273 = vector.broadcast %false : i1 to vector<16x16xi1>
        %dest_52, %accumulated_value_53 = vector.scan <and>, %40, %273 {inclusive = true, reduction_dim = 0 : i64} : vector<10x16x16xi1>, vector<16x16xi1>
        affine.store %false_3, %alloc_9[%c3, %c6] : memref<3x13xi1>
        %274 = index.sizeof
        %275 = arith.maxui %c299102284_i32, %c299102284_i32 : i32
        %276 = arith.shrui %c355128154_i64, %122 : i64
        %277 = arith.shrui %c1966963025_i64, %122 : i64
        %278 = index.castu %c615519904_i32 : i32 to index
        %279 = math.tan %cst_2 : f32
        %280 = vector.matrix_multiply %183, %181 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi64>, vector<16xi64>) -> vector<1xi64>
        %281 = math.expm1 %cst_0 : f16
        %282 = bufferization.clone %46 : memref<13x3xi64> to memref<13x3xi64>
        %283 = memref.load %155[%c4, %c2, %c1] : memref<10x3x3xi32>
        %284 = math.tan %in_51 : f32
        %285 = index.divs %98, %169
        %286 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%11 : tensor<10x16x16xi1>) {
        ^bb0(%out: i1):
          %300 = vector.flat_transpose %30 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
          %301 = arith.divsi %c615519904_i32, %c299102284_i32 : i32
          %302 = vector.flat_transpose %30 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
          affine.store %out, %alloc_20[%c0, %c11] : memref<3x13xi1>
          %303 = arith.maxui %false, %true : i1
          %304 = vector.broadcast %c460165649_i32 : i32 to vector<10x10xi32>
          %305 = vector.outerproduct %31, %31, %304 {kind = #vector.kind<add>} : vector<10xi32>, vector<10xi32>
          %306 = math.log2 %in : f32
          %307 = arith.addf %in, %in : f32
          %308 = affine.load %272[%c15, %c14] : memref<3x13xi64>
          %309 = index.mul %c0, %126
          %310 = arith.remsi %308, %c355128154_i64 : i64
          %311 = index.add %c7, %94
          affine.store %c-2710_i16, %alloc_8[%c7, %c15] : memref<13x3xi16>
          %312 = vector.bitcast %168 : vector<3x13xi1> to vector<3x13xi1>
          %313 = arith.remf %cst_0, %cst_5 : f16
          %314 = arith.addi %c355128154_i64, %308 : i64
          %315 = math.floor %cst_2 : f32
          %316 = arith.ori %c-2710_i16, %c-32034_i16 : i16
          %317 = index.sizeof
          %318 = math.expm1 %17 : tensor<13x3xf16>
          %319 = math.absi %19 : tensor<i32>
          %320 = arith.remsi %c615519904_i32, %c615519904_i32 : i32
          %321 = vector.broadcast %c615519904_i32 : i32 to vector<13xi32>
          %dest_56, %accumulated_value_57 = vector.scan <minsi>, %32, %321 {inclusive = false, reduction_dim = 0 : i64} : vector<3x13xi32>, vector<13xi32>
          %322 = bufferization.to_tensor %alloc_8 : memref<13x3xi16>
          %323 = tensor.empty() : tensor<10x3x3xf32>
          %324 = bufferization.to_tensor %alloc_19 : memref<10x3x3xi32>
          %325 = arith.divsi %c615519904_i32, %c299102284_i32 : i32
          %alloc_58 = memref.alloc() : memref<13x3xi1>
          memref.tensor_store %7, %alloc_58 : memref<13x3xi1>
          memref.copy %alloc_6, %149 : memref<10x16x16xi64> to memref<10x16x16xi64>
          %326 = affine.apply affine_map<(d0) -> (d0 floordiv 2 + 112)>(%126)
          %splat_59 = tensor.splat %out : tensor<10x3x3xi1>
          memref.tensor_store %splat_59, %alloc_12 : memref<10x3x3xi1>
          linalg.yield %false_3 : i1
        } -> tensor<10x16x16xi1>
        %287 = arith.shrui %c460165649_i32, %c460165649_i32 : i32
        %288 = vector.broadcast %false_3 : i1 to vector<3x3xi1>
        %289 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %30, %41, %288 : vector<10xi1>, vector<10x3x3xi1> into vector<3x3xi1>
        bufferization.dealloc_tensor %reduced : tensor<i32>
        %290 = arith.mulf %cst_1, %in : f32
        %291 = vector.insertelement %122, %181[%147 : index] : vector<16xi64>
        %292 = vector.insertelement %c460165649_i32, %31[%c12 : index] : vector<10xi32>
        %293 = affine.max affine_map<(d0) -> ((d0 * 2 + 16) mod 64, ((-(d0 * 2 + 16)) ceildiv 2) * 16 - 128, (d0 * 2 + 16) mod 64, d0 + 16)>(%c7)
        %294 = arith.addi %true, %false_3 : i1
        %295 = math.fpowi %83, %c615519904_i32 : f16, i32
        %296 = vector.bitcast %54 : vector<1xi1> to vector<1xi1>
        %297 = bufferization.clone %alloc_20 : memref<3x13xi1> to memref<3x13xi1>
        affine.store %false, %163[%c7, %c13] : memref<3x13xi1>
        %collapsed_54 = tensor.collapse_shape %3 [[0, 1]] : tensor<3x13xi64> into tensor<39xi64>
        %298 = arith.shli %c299102284_i32, %c299102284_i32 : i32
        %299 = math.atan2 %cst_5, %cst : f16
        %cst_55 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_55 : f32
      }
    %188 = math.log2 %18 : tensor<16x10x16xf32>
    %189 = arith.shrsi %c615519904_i32, %c615519904_i32 : i32
    %190 = math.atan2 %187, %187 : tensor<16xf32>
    %191 = arith.floordivsi %false, %false : i1
    %192 = vector.bitcast %134 : vector<10xi1> to vector<10xi1>
    %193 = math.ceil %17 : tensor<13x3xf16>
    %194 = vector.broadcast %35 : index to vector<16xindex>
    %195 = vector.broadcast %cst_5 : f16 to vector<16xf16>
    vector.scatter %alloc_11[%c2, %c0] [%194], %182, %195 : memref<13x3xf16>, vector<16xindex>, vector<16xi1>, vector<16xf16>
    %196 = index.castu %c4 : index to i32
    %197 = math.log10 %cst_2 : f32
    %198 = math.ctpop %reduced : tensor<i32>
    %199 = math.floor %4 : tensor<10x16x16xf32>
    %200 = arith.andi %122, %c1966963025_i64 : i64
    %201 = arith.minsi %c1966963025_i64, %122 : i64
    %alloc_36 = memref.alloc() : memref<10x16xf32>
    %202 = tensor.empty() : tensor<10xf32>
    %203 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_36, %alloc_36, %202 : memref<10x16xf32>, memref<10x16xf32>, tensor<10xf32>) outs(%transposed : tensor<16x10x16xf32>) {
    ^bb0(%in: f32, %in_51: f32, %in_52: f32, %out: f32):
      %271 = vector.extract %134[6] : vector<10xi1>
      %272 = arith.andi %true, %false : i1
      %273 = arith.maxui %c-32034_i16, %c-32034_i16 : i16
      memref.store %c-32034_i16, %alloc_18[%c8, %c1] : memref<13x3xi16>
      %274 = math.fma %cst_0, %83, %cst_0 : f16
      %275 = bufferization.to_memref %2 : memref<10x3x3xi1>
      memref.assume_alignment %46, 8 : memref<13x3xi64>
      %276 = arith.remui %c-32034_i16, %c-2710_i16 : i16
      %277 = vector.extract_strided_slice %44 {offsets = [0], sizes = [9], strides = [1]} : vector<10xi1> to vector<9xi1>
      %278 = tensor.empty() : tensor<13x3xf16>
      %mapped_53 = linalg.map ins(%10 : tensor<13x3xf16>) outs(%278 : tensor<13x3xf16>)
        (%in_56: f16) {
          affine.store %c615519904_i32, %alloc_14[%c0, %c15, %c12] : memref<10x16x16xi32>
          %297 = vector.insertelement %false_3, %182[%169 : index] : vector<16xi1>
          %298 = vector.extract_strided_slice %183 {offsets = [7], sizes = [1], strides = [1]} : vector<16xi64> to vector<1xi64>
          %299 = index.casts %c615519904_i32 : i32 to index
          %300 = arith.divui %c355128154_i64, %122 : i64
          %301 = vector.create_mask %98, %71, %c2 : vector<10x16x16xi1>
          %302 = math.copysign %6, %6 : tensor<3x13xf16>
          %rank_57 = tensor.rank %collapsed_34 : tensor<39xi16>
          memref.store %false, %130[%c0, %c8] : memref<3x13xi1>
          %303 = math.roundeven %cst_4 : f16
          %304 = math.log10 %cst : f16
          %305 = index.add %c13, %123
          %306 = math.ceil %6 : tensor<3x13xf16>
          %307 = arith.remf %out, %cst_2 : f32
          %308 = vector.broadcast %false_3 : i1 to vector<13xi1>
          %309 = vector.maskedload %275[%c8, %c2, %c1], %308, %308 : memref<10x3x3xi1>, vector<13xi1>, vector<13xi1> into vector<13xi1>
          %310 = math.log %17 : tensor<13x3xf16>
          %311 = index.casts %c299102284_i32 : i32 to index
          %rank_58 = tensor.rank %14 : tensor<13x3xi16>
          %312 = bufferization.clone %130 : memref<3x13xi1> to memref<3x13xi1>
          %313 = vector.load %312[%c0, %c4] : memref<3x13xi1>, vector<13x3xi1>
          %314 = arith.divui %c615519904_i32, %c299102284_i32 : i32
          %315 = math.exp %21 : tensor<16xf32>
          %316 = bufferization.clone %46 : memref<13x3xi64> to memref<13x3xi64>
          %317 = vector.reduction <maxsi>, %308 : vector<13xi1> into i1
          %alloca_59 = memref.alloca() : memref<3x13xi1>
          affine.store %in_51, %alloc_16[%c8, %c14, %c12] : memref<10x3x3xf32>
          %318 = vector.broadcast %in : f32 to vector<3xf32>
          %dest_60, %accumulated_value_61 = vector.scan <minf>, %78, %318 {inclusive = false, reduction_dim = 1 : i64} : vector<3x13xf32>, vector<3xf32>
          %319 = math.roundeven %18 : tensor<16x10x16xf32>
          %320 = vector.broadcast %c11 : index to vector<10xindex>
          vector.scatter %155[%c4, %c0, %c0] [%320], %30, %29 : memref<10x3x3xi32>, vector<10xindex>, vector<10xi1>, vector<10xi32>
          %321 = vector.broadcast %false : i1 to vector<16x16xi1>
          %322 = vector.insert %321, %301 [5] : vector<16x16xi1> into vector<10x16x16xi1>
          %323 = arith.addi %c299102284_i32, %c299102284_i32 : i32
          %324 = arith.subi %c615519904_i32, %c299102284_i32 : i32
          %cst_62 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_62 : f16
        }
      %279 = arith.addi %122, %c1966963025_i64 : i64
      %280 = math.copysign %cst_1, %cst_2 : f32
      %281 = math.log10 %cst_5 : f16
      %282 = arith.shrsi %c299102284_i32, %c299102284_i32 : i32
      %283 = index.maxs %c7, %71
      %284 = scf.index_switch %c0 -> index 
      case 1 {
        %297 = vector.load %alloc_19[%c2, %c0, %c0] : memref<10x3x3xi32>, vector<10x3x3xi32>
        %298 = index.mul %c14, %103
        %299 = math.ctlz %172 : tensor<10x16x16xi1>
        %300 = vector.multi_reduction <minui>, %183, %c355128154_i64 [0] : vector<16xi64> to i64
        %301 = index.casts %c12 : index to i32
        %cst_56 = arith.constant 2.04513267E+9 : f32
        %302 = math.roundeven %16 : tensor<13x3xf16>
        %303 = math.atan2 %4, %4 : tensor<10x16x16xf32>
        %304 = math.tan %8 : tensor<13x3xf32>
        %305 = arith.shli %c-2710_i16, %c-32034_i16 : i16
        %306 = math.roundeven %out : f32
        %307 = math.log2 %6 : tensor<3x13xf16>
        %308 = math.log %cst_4 : f16
        %309 = arith.mulf %cst_0, %cst_5 : f16
        %310 = memref.load %alloc_20[%c2, %c11] : memref<3x13xi1>
        %cast_57 = tensor.cast %3 : tensor<3x13xi64> to tensor<?x?xi64>
        scf.yield %c8 : index
      }
      case 2 {
        %297 = arith.remf %83, %cst_5 : f16
        %splat_56 = tensor.splat %in_51 : tensor<10x16x16xf32>
        %298 = math.fma %23, %24, %23 : tensor<f32>
        %splat_57 = tensor.splat %122 : tensor<10x3x3xi64>
        %299 = vector.broadcast %c299102284_i32 : i32 to vector<10x10xi32>
        %300 = vector.outerproduct %31, %31, %299 {kind = #vector.kind<or>} : vector<10xi32>, vector<10xi32>
        %301 = arith.andi %false, %false_3 : i1
        vector.print %79 : vector<3x13xi1>
        %302 = math.log10 %cst_0 : f16
        %303 = math.copysign %187, %187 : tensor<16xf32>
        %304 = arith.floordivsi %c460165649_i32, %c615519904_i32 : i32
        %305 = arith.remui %c1966963025_i64, %c1966963025_i64 : i64
        %306 = vector.broadcast %c615519904_i32 : i32 to vector<10x10xi32>
        %307 = vector.outerproduct %31, %29, %306 {kind = #vector.kind<minui>} : vector<10xi32>, vector<10xi32>
        %308 = math.round %6 : tensor<3x13xf16>
        %309 = math.round %16 : tensor<13x3xf16>
        %310 = memref.load %alloc_11[%c0, %c1] : memref<13x3xf16>
        %311 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 - 2)>(%103, %94, %c3, %c3)
        scf.yield %c1 : index
      }
      default {
        %297 = math.log2 %22 : tensor<16xf32>
        %298 = arith.divf %out, %in_51 : f32
        %299 = index.ceildivs %177, %177
        %alloc_56 = memref.alloc() : memref<10x3x3xi1>
        %cast_57 = tensor.cast %0 : tensor<13x3xi16> to tensor<?x?xi16>
        %300 = math.log10 %in_52 : f32
        %301 = math.ceil %cst : f16
        %302 = arith.ceildivsi %c-2710_i16, %c-2710_i16 : i16
        %303 = index.ceildivu %c11, %c3
        %304 = arith.ceildivsi %c355128154_i64, %c355128154_i64 : i64
        %305 = affine.min affine_map<(d0, d1, d2) -> ((d0 - 8) ceildiv 2)>(%c2, %c7, %94)
        %306 = math.ctpop %0 : tensor<13x3xi16>
        %307 = math.expm1 %24 : tensor<f32>
        %308 = math.round %4 : tensor<10x16x16xf32>
        %309 = arith.shli %c355128154_i64, %122 : i64
        %310 = arith.mulf %cst_5, %cst_0 : f16
        scf.yield %94 : index
      }
      %285 = arith.ceildivsi %c-2710_i16, %c-2710_i16 : i16
      %rank = tensor.rank %4 : tensor<10x16x16xf32>
      %286 = tensor.empty() : tensor<10x3x3xi32>
      %287 = arith.remui %true, %true : i1
      %288 = math.log2 %collapsed : tensor<39xf32>
      %collapsed_54 = tensor.collapse_shape %13 [[0, 1]] : tensor<13x3xi32> into tensor<39xi32>
      %289 = tensor.empty() : tensor<3x13xi64>
      %mapped_55 = linalg.map ins(%3, %3, %3 : tensor<3x13xi64>, tensor<3x13xi64>, tensor<3x13xi64>) outs(%289 : tensor<3x13xi64>)
        (%in_56: i64, %in_57: i64, %in_58: i64) {
          %297 = arith.remf %cst_4, %cst_5 : f16
          memref.store %c460165649_i32, %alloc_10[%c0, %c7] : memref<3x13xi32>
          %298 = math.atan2 %83, %83 : f16
          %299 = math.floor %10 : tensor<13x3xf16>
          %300 = math.floor %cst_2 : f32
          %301 = math.exp2 %4 : tensor<10x16x16xf32>
          %302 = arith.andi %c615519904_i32, %c615519904_i32 : i32
          %303 = math.ctpop %1 : tensor<13x3xi1>
          %304 = math.absi %true : i1
          %cast_59 = tensor.cast %5 : tensor<13x3xi1> to tensor<?x?xi1>
          %collapsed_60 = tensor.collapse_shape %18 [[0, 1], [2]] : tensor<16x10x16xf32> into tensor<160x16xf32>
          %305 = arith.xori %true, %true : i1
          %c9779_i16 = arith.constant 9779 : i16
          %306 = math.ctlz %reduced : tensor<i32>
          %307 = vector.broadcast %false_3 : i1 to vector<1x1xi1>
          %308 = vector.outerproduct %54, %54, %307 {kind = #vector.kind<minsi>} : vector<1xi1>, vector<1xi1>
          %309 = arith.shrui %in_56, %c355128154_i64 : i64
          %310 = arith.shrui %in_58, %in_56 : i64
          %311 = arith.divf %cst_1, %cst_1 : f32
          %splat_61 = tensor.splat %cst_1 : tensor<10x16x16xf32>
          %312 = arith.shrui %c-2710_i16, %c-32034_i16 : i16
          %313 = arith.subi %c355128154_i64, %c1966963025_i64 : i64
          %314 = vector.broadcast %c615519904_i32 : i32 to vector<10x10xi32>
          %315 = vector.outerproduct %31, %29, %314 {kind = #vector.kind<add>} : vector<10xi32>, vector<10xi32>
          %316 = arith.shrui %false_3, %true : i1
          bufferization.dealloc_tensor %8 : tensor<13x3xf32>
          %317 = arith.andi %c1966963025_i64, %in_58 : i64
          %318 = math.exp %278 : tensor<13x3xf16>
          %319 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 * -2)>(%177, %c14, %35, %71)
          %320 = arith.shrui %in_57, %in_57 : i64
          %321 = math.roundeven %6 : tensor<3x13xf16>
          %c-3018_i16 = arith.constant -3018 : i16
          %322 = math.atan2 %cst, %83 : f16
          %323 = arith.divui %c1966963025_i64, %in_56 : i64
          %c0_i64 = arith.constant 0 : i64
          linalg.yield %c0_i64 : i64
        }
      %290 = arith.muli %c299102284_i32, %c299102284_i32 : i32
      memref.tensor_store %172, %alloc_13 : memref<10x16x16xi1>
      %291 = arith.mulf %cst_1, %out : f32
      %292 = math.round %23 : tensor<f32>
      %293 = math.log %8 : tensor<13x3xf32>
      %294 = affine.load %alloc_7[%c15, %c0] : memref<3x13xi32>
      %295 = arith.divui %c615519904_i32, %c299102284_i32 : i32
      %296 = math.exp %in : f32
      vector.print %182 : vector<16xi1>
      linalg.yield %in_52 : f32
    } -> tensor<16x10x16xf32>
    %204 = arith.minf %cst_4, %83 : f16
    %205 = arith.ori %false, %true : i1
    %206 = math.cttz %3 : tensor<3x13xi64>
    %207 = vector.broadcast %83 : f16 to vector<3x13xf16>
    %208 = math.expm1 %4 : tensor<10x16x16xf32>
    %collapsed_37 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<10x16x16xi32> into tensor<160x16xi32>
    %209 = index.floordivs %126, %94
    %210 = math.copysign %8, %8 : tensor<13x3xf32>
    %211 = vector.broadcast %c615519904_i32 : i32 to vector<10x16x16xi32>
    memref.assume_alignment %alloc_10, 2 : memref<3x13xi32>
    %212 = arith.minui %c1966963025_i64, %c355128154_i64 : i64
    %213 = affine.min affine_map<(d0, d1, d2, d3) -> ((d2 mod 2 - d1 floordiv 4) mod 64)>(%109, %147, %94, %151)
    %extracted = tensor.extract %8[%c9, %c1] : tensor<13x3xf32>
    %214 = arith.remf %cst_5, %cst_5 : f16
    %215 = math.log1p %4 : tensor<10x16x16xf32>
    %216 = arith.divsi %c299102284_i32, %c615519904_i32 : i32
    %217 = index.casts %false_3 : i1 to index
    %218 = arith.minsi %c299102284_i32, %c299102284_i32 : i32
    %219 = math.ceil %22 : tensor<16xf32>
    %220 = memref.atomic_rmw addf %cst_5, %alloc_11[%c4, %c2] : (f16, memref<13x3xf16>) -> f16
    %221 = index.casts %c3 : index to i32
    %222 = index.divs %109, %217
    %223 = arith.shli %c615519904_i32, %c615519904_i32 : i32
    %splat = tensor.splat %c-32034_i16 : tensor<10x16x16xi16>
    %224 = arith.andi %c299102284_i32, %c615519904_i32 : i32
    %225 = vector.insertelement %true, %192[%c8 : index] : vector<10xi1>
    %226 = vector.insertelement %cst_2, %56[%c15 : index] : vector<10xf32>
    %227 = math.copysign %collapsed, %collapsed : tensor<39xf32>
    %228 = arith.divf %cst_0, %cst : f16
    %229 = arith.subi %c460165649_i32, %c460165649_i32 : i32
    %generated_38 = tensor.generate %217 {
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      %271 = index.divs %c1, %151
      %272 = arith.divui %true, %false : i1
      %273 = arith.ceildivsi %false, %true : i1
      %274 = index.divs %c7, %123
      tensor.yield %c460165649_i32 : i32
    } : tensor<?x3x3xi32>
    %230 = vector.flat_transpose %181 {columns = 4 : i32, rows = 4 : i32} : vector<16xi64> -> vector<16xi64>
    %231 = vector.broadcast %false : i1 to vector<16x16xi1>
    %232 = vector.outerproduct %182, %182, %231 {kind = #vector.kind<mul>} : vector<16xi1>, vector<16xi1>
    %233 = index.ceildivu %222, %126
    %234 = vector.broadcast %cst_2 : f32 to vector<10x16x16xf32>
    %235 = math.log2 %4 : tensor<10x16x16xf32>
    %alloc_39 = memref.alloc() : memref<16xi1>
    %236 = tensor.empty() : tensor<16x16xi1>
    %alloc_40 = memref.alloc() : memref<10xi1>
    %237 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_39, %236, %alloc_40 : memref<16xi1>, tensor<16x16xi1>, memref<10xi1>) outs(%11 : tensor<10x16x16xi1>) {
    ^bb0(%in: i1, %in_51: i1, %in_52: i1, %out: i1):
      %271 = math.ctpop %0 : tensor<13x3xi16>
      %272 = index.ceildivu %c9, %c1
      %273 = math.log1p %21 : tensor<16xf32>
      %cast_53 = tensor.cast %collapsed_37 : tensor<160x16xi32> to tensor<?x?xi32>
      %274 = arith.subi %122, %c1966963025_i64 : i64
      %275 = affine.min affine_map<(d0, d1) -> (d0 * 8, 0, (d0 * -8) mod 128 + 1, d0 * 64)>(%126, %c5)
      bufferization.dealloc_tensor %11 : tensor<10x16x16xi1>
      %276 = math.ctpop %5 : tensor<13x3xi1>
      %277 = arith.maxsi %in_51, %true : i1
      %rank = tensor.rank %12 : tensor<10x16x16xi32>
      %278 = math.ceil %6 : tensor<3x13xf16>
      %279 = tensor.empty() : tensor<3x13xi1>
      %mapped_54 = linalg.map ins(%163, %alloc_20, %alloc_9 : memref<3x13xi1>, memref<3x13xi1>, memref<3x13xi1>) outs(%279 : tensor<3x13xi1>)
        (%in_57: i1, %in_58: i1, %in_59: i1) {
          affine.store %extracted, %alloc_16[%c2, %c14, %c7] : memref<10x3x3xf32>
          %297 = index.ceildivu %272, %c1
          %298 = math.tan %22 : tensor<16xf32>
          %cast_60 = tensor.cast %3 : tensor<3x13xi64> to tensor<?x?xi64>
          %cast_61 = tensor.cast %9 : tensor<13x3xi64> to tensor<?x?xi64>
          %299 = arith.minf %cst, %cst_4 : f16
          %300 = math.cos %17 : tensor<13x3xf16>
          %301 = bufferization.to_tensor %alloc_12 : memref<10x3x3xi1>
          %302 = math.log2 %transposed : tensor<16x10x16xf32>
          %303 = vector.insertelement %extracted, %20[%c1 : index] : vector<16xf32>
          %true_62 = index.bool.constant true
          %304 = index.castu %103 : index to i32
          %305 = bufferization.to_memref %7 : memref<13x3xi1>
          %306 = index.castu %85 : index to i32
          %307 = math.ceil %23 : tensor<f32>
          %308 = index.ceildivu %rank, %275
          %309 = bufferization.clone %alloc_8 : memref<13x3xi16> to memref<13x3xi16>
          %310 = index.floordivs %c2, %222
          %311 = index.maxu %c12, %217
          %312 = math.ctpop %c460165649_i32 : i32
          %313 = vector.shuffle %192, %30 [0, 1, 3, 4, 6, 8, 9, 13, 19] : vector<10xi1>, vector<10xi1>
          bufferization.dealloc_tensor %279 : tensor<3x13xi1>
          %314 = arith.mulf %83, %cst : f16
          %315 = math.log1p %21 : tensor<16xf32>
          %true_63 = arith.constant true
          %316 = vector.broadcast %in_58 : i1 to vector<1x1xi1>
          %317 = vector.outerproduct %54, %54, %316 {kind = #vector.kind<maxui>} : vector<1xi1>, vector<1xi1>
          %318 = vector.broadcast %in_57 : i1 to vector<10x10xi1>
          %319 = vector.outerproduct %44, %192, %318 {kind = #vector.kind<mul>} : vector<10xi1>, vector<10xi1>
          %320 = arith.andi %in_58, %false : i1
          %321 = vector.broadcast %true_62 : i1 to vector<3x3xi1>
          %322 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %41, %44, %321 : vector<10x3x3xi1>, vector<10xi1> into vector<3x3xi1>
          %323 = arith.shrui %false, %in_57 : i1
          %324 = bufferization.clone %alloc_7 : memref<3x13xi32> to memref<3x13xi32>
          %325 = math.cttz %0 : tensor<13x3xi16>
          %false_64 = arith.constant false
          linalg.yield %false_64 : i1
        }
      %280 = math.cos %4 : tensor<10x16x16xf32>
      %281 = index.maxu %c2, %177
      %collapsed_55 = tensor.collapse_shape %cast_29 [[0, 1], [2]] : tensor<?x?x?xi64> into tensor<?x?xi64>
      memref.assume_alignment %alloc_14, 1 : memref<10x16x16xi32>
      %282 = vector.insert %182, %40 [1, 8] : vector<16xi1> into vector<10x16x16xi1>
      %283 = math.absi %13 : tensor<13x3xi32>
      %284 = arith.mulf %cst_0, %cst_5 : f16
      %285 = math.log1p %4 : tensor<10x16x16xf32>
      %286 = vector.insertelement %out, %134[%103 : index] : vector<10xi1>
      %287 = arith.shli %false, %true : i1
      %288 = math.tan %cst_1 : f32
      %289 = bufferization.to_memref %10 : memref<13x3xf16>
      %290 = vector.broadcast %cst_4 : f16 to vector<3x13xf16>
      %291 = arith.divsi %c460165649_i32, %c460165649_i32 : i32
      %292 = arith.divsi %c-32034_i16, %c-2710_i16 : i16
      %293 = index.divu %233, %c6
      %rank_56 = tensor.rank %13 : tensor<13x3xi32>
      %294 = vector.extract_strided_slice %78 {offsets = [1], sizes = [1], strides = [1]} : vector<3x13xf32> to vector<1x13xf32>
      %295 = arith.maxf %cst_5, %cst_5 : f16
      %296 = arith.subi %true, %true : i1
      linalg.yield %in_52 : i1
    } -> tensor<10x16x16xi1>
    %238 = math.fma %cst, %83, %cst_5 : f16
    %239 = tensor.empty() : tensor<f32>
    %mapped_41 = linalg.map ins(%23 : tensor<f32>) outs(%239 : tensor<f32>)
      (%in: f32) {
        vector.print %34 : vector<3x13xi32>
        %271 = vector.broadcast %c1966963025_i64 : i64 to vector<10x13xi64>
        %272 = vector.transfer_write %271, %15[%177, %233, %98] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<10x13xi64>, tensor<10x16x16xi64>
        %273 = math.tanh %6 : tensor<3x13xf16>
        %alloc_51 = memref.alloc() : memref<3xi1>
        %alloc_52 = memref.alloc() : memref<3x10x3xi1>
        %274 = tensor.empty() : tensor<3x10xi1>
        %275 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_51, %alloc_52, %274 : memref<3xi1>, memref<3x10x3xi1>, tensor<3x10xi1>) outs(%2 : tensor<10x3x3xi1>) {
        ^bb0(%in_58: i1, %in_59: i1, %in_60: i1, %out: i1):
          %296 = vector.create_mask %c14, %213, %c7 : vector<10x16x16xi1>
          %297 = math.fpowi %4, %12 : tensor<10x16x16xf32>, tensor<10x16x16xi32>
          %298 = arith.cmpi eq, %c299102284_i32, %c460165649_i32 : i32
          %299 = math.fma %cst_2, %in, %extracted : f32
          %300 = math.tanh %extracted : f32
          %splat_61 = tensor.splat %cst_1 : tensor<10x3x3xf32>
          %301 = affine.apply affine_map<(d0, d1, d2) -> (d2 * 2)>(%151, %123, %213)
          %302 = index.ceildivu %71, %c13
          %303 = vector.flat_transpose %54 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
          %304 = bufferization.clone %155 : memref<10x3x3xi32> to memref<10x3x3xi32>
          %305 = arith.shrsi %out, %true : i1
          %306 = affine.apply affine_map<(d0, d1, d2) -> (d2 * 2)>(%109, %147, %c4)
          %307 = arith.divf %cst, %83 : f16
          %308 = vector.broadcast %in : f32 to vector<10x16x16xf32>
          %309 = vector.fma %308, %234, %60 : vector<10x16x16xf32>
          %310 = arith.subi %out, %in_59 : i1
          %311 = math.ctlz %true : i1
          %312 = math.tan %8 : tensor<13x3xf32>
          %313 = vector.broadcast %c1966963025_i64 : i64 to vector<3x13xi64>
          %alloc_62 = memref.alloc() : memref<39xi16>
          memref.tensor_store %collapsed_34, %alloc_62 : memref<39xi16>
          %314 = arith.remui %c-32034_i16, %c-32034_i16 : i16
          %315 = index.ceildivs %169, %c13
          %316 = bufferization.to_memref %172 : memref<10x16x16xi1>
          %317 = affine.load %163[%c1, %c9] : memref<3x13xi1>
          %318 = math.cos %cst_0 : f16
          %319 = vector.broadcast %false : i1 to vector<10x10xi1>
          %320 = vector.outerproduct %134, %134, %319 {kind = #vector.kind<maxui>} : vector<10xi1>, vector<10xi1>
          %321 = arith.divsi %true, %false_3 : i1
          %322 = math.copysign %6, %6 : tensor<3x13xf16>
          %323 = math.fma %cst_1, %extracted, %cst_2 : f32
          %324 = arith.remf %cst_4, %cst : f16
          memref.tensor_store %8, %alloc_15 : memref<13x3xf32>
          %325 = math.fma %4, %4, %4 : tensor<10x16x16xf32>
          %326 = math.exp %17 : tensor<13x3xf16>
          linalg.yield %false_3 : i1
        } -> tensor<10x3x3xi1>
        %276 = math.round %83 : f16
        %277 = math.ctlz %150 : tensor<3x13xi32>
        %278 = bufferization.to_memref %172 : memref<10x16x16xi1>
        %279 = arith.maxsi %c615519904_i32, %c460165649_i32 : i32
        %280 = arith.shrui %122, %c355128154_i64 : i64
        %alloc_53 = memref.alloc() : memref<10x16x16xi64>
        %true_54 = index.bool.constant true
        %281 = math.cttz %c460165649_i32 : i32
        %282 = vector.load %155[%c6, %c0, %c0] : memref<10x3x3xi32>, vector<10x3x3xi32>
        %283 = arith.subi %true, %true_54 : i1
        memref.assume_alignment %alloc_20, 4 : memref<3x13xi1>
        %284 = bufferization.clone %171 : memref<10x16x16xi64> to memref<10x16x16xi64>
        %285 = vector.insert %c355128154_i64, %183 [13] : i64 into vector<16xi64>
        %286 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %56, %56, %extracted : vector<10xf32>, vector<10xf32> into f32
        %alloca_55 = memref.alloca() : memref<10x3x3xi32>
        %c1784451446_i32 = arith.constant 1784451446 : i32
        %287 = arith.floordivsi %c-2710_i16, %c-2710_i16 : i16
        memref.store %true_54, %alloc_12[%c1, %c1, %c1] : memref<10x3x3xi1>
        %288 = bufferization.clone %149 : memref<10x16x16xi64> to memref<10x16x16xi64>
        %alloc_56 = memref.alloc() : memref<16xi1>
        %289 = memref.realloc %alloc_56 : memref<16xi1> to memref<10xi1>
        %290 = arith.cmpf oge, %cst_2, %cst_1 : f32
        %291 = arith.remf %in, %in : f32
        %292 = math.copysign %extracted, %extracted : f32
        memref.assume_alignment %alloc_19, 2 : memref<10x3x3xi32>
        %293 = vector.bitcast %55 : vector<10xf32> to vector<10xi32>
        vector.print %31 : vector<10xi32>
        %294 = arith.floordivsi %c-32034_i16, %c-2710_i16 : i16
        %295 = index.floordivs %c15, %c8
        %cst_57 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_57 : f32
      }
    %240 = arith.ori %false_3, %false_3 : i1
    affine.store %122, %alloc_6[%c11, %c2, %c13] : memref<10x16x16xi64>
    %collapsed_42 = tensor.collapse_shape %1 [[0, 1]] : tensor<13x3xi1> into tensor<39xi1>
    %alloca_43 = memref.alloca() : memref<13x3xf32>
    %241 = vector.flat_transpose %183 {columns = 4 : i32, rows = 4 : i32} : vector<16xi64> -> vector<16xi64>
    %242 = math.log2 %cst_5 : f16
    %243 = tensor.empty() : tensor<16xi32>
    %alloc_44 = memref.alloc() : memref<10x16xi32>
    %244 = tensor.empty() : tensor<10xi32>
    %245 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%243, %alloc_44, %244 : tensor<16xi32>, memref<10x16xi32>, tensor<10xi32>) outs(%12 : tensor<10x16x16xi32>) {
    ^bb0(%in: i32, %in_51: i32, %in_52: i32, %out: i32):
      %271 = index.maxu %c1, %213
      scf.execute_region {
        %301 = arith.divui %in, %c615519904_i32 : i32
        %302 = arith.shrui %c355128154_i64, %122 : i64
        %303 = index.ceildivu %94, %c4
        %304 = affine.min affine_map<(d0, d1, d2, d3) -> ((d0 mod 4 - 1) mod 8 + 32, (d0 mod 4) ceildiv 8)>(%c14, %c7, %c2, %123)
        %305 = arith.minsi %false_3, %false_3 : i1
        %306 = math.roundeven %collapsed : tensor<39xf32>
        %307 = arith.divsi %out, %c615519904_i32 : i32
        %308 = arith.remf %83, %83 : f16
        %309 = arith.maxsi %c-32034_i16, %c-32034_i16 : i16
        %310 = arith.maxf %extracted, %cst_1 : f32
        %311 = vector.broadcast %c11 : index to vector<3xindex>
        %312 = vector.broadcast %false : i1 to vector<3xi1>
        %313 = vector.broadcast %c-32034_i16 : i16 to vector<3xi16>
        vector.scatter %alloc_18[%c0, %c0] [%311], %312, %313 : memref<13x3xi16>, vector<3xindex>, vector<3xi1>, vector<3xi16>
        %314 = vector.insertelement %cst_1, %56[%126 : index] : vector<10xf32>
        %315 = math.ctlz %reduced : tensor<i32>
        %316 = bufferization.clone %alloc_18 : memref<13x3xi16> to memref<13x3xi16>
        %317 = vector.transpose %44, [0] : vector<10xi1> to vector<10xi1>
        %318 = math.cttz %in_51 : i32
        scf.yield
      }
      %272 = arith.andi %c-32034_i16, %c-2710_i16 : i16
      %273 = index.add %25, %217
      %274 = arith.andi %c-32034_i16, %c-32034_i16 : i16
      %275 = math.tanh %cst_4 : f16
      %276 = math.powf %cst_0, %83 : f16
      %277 = arith.remf %cst, %83 : f16
      %278 = math.roundeven %24 : tensor<f32>
      %279 = arith.remf %cst_2, %extracted : f32
      %280 = index.ceildivu %71, %53
      %281 = arith.muli %in_52, %in_52 : i32
      %282 = arith.andi %c355128154_i64, %c355128154_i64 : i64
      %283 = affine.min affine_map<(d0, d1) -> (d1 floordiv 32 - d1, d1, d0)>(%53, %233)
      %284 = tensor.empty() : tensor<16xf32>
      %mapped_53 = linalg.map ins(%21 : tensor<16xf32>) outs(%284 : tensor<16xf32>)
        (%in_55: f32) {
          %301 = math.ctlz %2 : tensor<10x3x3xi1>
          %302 = bufferization.clone %alloc_13 : memref<10x16x16xi1> to memref<10x16x16xi1>
          %303 = arith.remui %false_3, %false_3 : i1
          %304 = vector.transpose %31, [0] : vector<10xi32> to vector<10xi32>
          %305 = index.castu %122 : i64 to index
          %306 = math.log %4 : tensor<10x16x16xf32>
          %307 = math.ceil %239 : tensor<f32>
          %cst_56 = arith.constant 4.433000e+08 : f32
          %308 = arith.minui %c355128154_i64, %c1966963025_i64 : i64
          %309 = vector.broadcast %false : i1 to vector<10x10xi1>
          %310 = vector.outerproduct %44, %134, %309 {kind = #vector.kind<mul>} : vector<10xi1>, vector<10xi1>
          %alloc_57 = memref.alloc() : memref<10xf32>
          %311 = memref.realloc %alloc_57 : memref<10xf32> to memref<13xf32>
          %312 = arith.maxf %extracted, %cst_1 : f32
          %313 = arith.remui %c-32034_i16, %c-2710_i16 : i16
          %314 = vector.create_mask %c6, %35 : vector<3x13xi1>
          %315 = math.tanh %18 : tensor<16x10x16xf32>
          %collapsed_58 = tensor.collapse_shape %7 [[0, 1]] : tensor<13x3xi1> into tensor<39xi1>
          %316 = arith.remf %83, %83 : f16
          %317 = math.log %187 : tensor<16xf32>
          %318 = affine.apply affine_map<(d0, d1, d2) -> (d0)>(%c12, %c5, %147)
          %319 = math.fpowi %in_55, %in_51 : f32, i32
          %320 = math.ceil %cst_0 : f16
          %321 = math.powf %cst_5, %83 : f16
          %322 = math.ceil %22 : tensor<16xf32>
          %323 = math.absf %6 : tensor<3x13xf16>
          %324 = arith.muli %false_3, %false : i1
          %325 = math.atan2 %24, %24 : tensor<f32>
          %326 = bufferization.clone %302 : memref<10x16x16xi1> to memref<10x16x16xi1>
          %327 = math.tanh %cst_2 : f32
          %328 = arith.remui %c615519904_i32, %in_52 : i32
          %329 = math.log1p %10 : tensor<13x3xf16>
          %330 = math.log1p %4 : tensor<10x16x16xf32>
          %331 = math.log10 %22 : tensor<16xf32>
          %cst_59 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_59 : f32
        }
      %285 = memref.atomic_rmw minu %122, %alloc[%c6, %c1] : (i64, memref<13x3xi64>) -> i64
      %286 = index.castu %c460165649_i32 : i32 to index
      %287 = math.exp %24 : tensor<f32>
      %288 = arith.remui %in_51, %c299102284_i32 : i32
      %289 = math.log10 %6 : tensor<3x13xf16>
      %290 = math.ceil %10 : tensor<13x3xf16>
      %splat_54 = tensor.splat %c-32034_i16 : tensor<10x16x16xi16>
      %291 = vector.shuffle %41, %41 [1, 2, 8, 11, 12, 13, 14, 18] : vector<10x3x3xi1>, vector<10x3x3xi1>
      %292 = index.divs %233, %c11
      %293 = math.log1p %24 : tensor<f32>
      %294 = vector.insertelement %122, %181[%286 : index] : vector<16xi64>
      %295 = arith.subi %c-2710_i16, %c-32034_i16 : i16
      %296 = vector.broadcast %false_3 : i1 to vector<10x10xi1>
      %297 = vector.outerproduct %30, %192, %296 {kind = #vector.kind<add>} : vector<10xi1>, vector<10xi1>
      %298 = index.castu %c615519904_i32 : i32 to index
      %299 = arith.andi %c1966963025_i64, %122 : i64
      vector.print %44 : vector<10xi1>
      %300 = arith.divui %c460165649_i32, %c299102284_i32 : i32
      linalg.yield %c460165649_i32 : i32
    } -> tensor<10x16x16xi32>
    %246 = math.ceil %23 : tensor<f32>
    %247 = arith.divf %cst_2, %cst_2 : f32
    %248 = arith.shli %c355128154_i64, %122 : i64
    %249 = arith.minsi %c-2710_i16, %c-32034_i16 : i16
    %250 = vector.load %alloc_18[%c5, %c1] : memref<13x3xi16>, vector<10x3x3xi16>
    %251 = index.ceildivu %c15, %71
    %alloc_45 = memref.alloc() : memref<13x3xf32>
    %252 = index.castu %27 : index to i32
    %cst_46 = arith.constant 3.942400e+04 : f16
    %253 = index.floordivs %35, %233
    %254 = arith.addi %c1966963025_i64, %c1966963025_i64 : i64
    %255 = math.copysign %cst_1, %extracted : f32
    bufferization.dealloc_tensor %22 : tensor<16xf32>
    %256 = bufferization.clone %163 : memref<3x13xi1> to memref<3x13xi1>
    %257 = index.ceildivs %c1, %123
    %258 = index.maxu %123, %94
    %259 = vector.load %alloc_10[%c1, %c9] : memref<3x13xi32>, vector<10x3x3xi32>
    %260 = tensor.empty() : tensor<13x3xf16>
    %mapped_47 = linalg.map ins(%10, %17 : tensor<13x3xf16>, tensor<13x3xf16>) outs(%260 : tensor<13x3xf16>)
      (%in: f16, %in_51: f16) {
        %271 = math.ctlz %1 : tensor<13x3xi1>
        %272 = math.ctpop %15 : tensor<10x16x16xi64>
        scf.index_switch %c11 
        case 1 {
          %294 = index.maxu %169, %94
          %295 = arith.minf %cst_1, %cst_1 : f32
          %296 = math.fpowi %8, %13 : tensor<13x3xf32>, tensor<13x3xi32>
          %297 = arith.subi %c615519904_i32, %c460165649_i32 : i32
          %298 = arith.divui %c-2710_i16, %c-2710_i16 : i16
          %alloc_57 = memref.alloc() : memref<3x13xf16>
          memref.tensor_store %6, %alloc_57 : memref<3x13xf16>
          %299 = bufferization.to_tensor %alloc_17 : memref<10x3x3xf32>
          %300 = memref.load %149[%c2, %c11, %c3] : memref<10x16x16xi64>
          %301 = math.fpowi %cst_5, %c460165649_i32 : f16, i32
          %302 = math.log1p %22 : tensor<16xf32>
          vector.print %60 : vector<10x16x16xf32>
          %303 = arith.addi %true, %true : i1
          %304 = math.log1p %8 : tensor<13x3xf32>
          %305 = arith.floordivsi %false_3, %false_3 : i1
          %306 = index.maxu %c8, %c14
          %307 = vector.transpose %41, [2, 0, 1] : vector<10x3x3xi1> to vector<3x10x3xi1>
          scf.yield
        }
        case 2 {
          %294 = math.copysign %cst_2, %cst_2 : f32
          %295 = math.exp2 %22 : tensor<16xf32>
          %296 = index.mul %c4, %169
          %297 = math.round %extracted : f32
          %298 = bufferization.to_memref %1 : memref<13x3xi1>
          %299 = vector.broadcast %126 : index to vector<3xindex>
          %300 = vector.broadcast %true : i1 to vector<3xi1>
          vector.scatter %alloc_12[%c6, %c0, %c0] [%299], %300, %300 : memref<10x3x3xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
          %301 = affine.max affine_map<(d0) -> (((d0 - 32) ceildiv 16) floordiv 16, d0 * 32)>(%296)
          %302 = arith.addf %in, %83 : f16
          %false_57 = arith.constant false
          %303 = arith.remf %83, %cst_4 : f16
          %304 = math.ipowi %c615519904_i32, %c615519904_i32 : i32
          %305 = arith.divsi %false_3, %false_3 : i1
          %306 = tensor.empty(%c12) : tensor<10x3x?xf16>
          %307 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d0 - d3) floordiv 8)>(%c11, %c10, %257, %25)
          %308 = math.absf %8 : tensor<13x3xf32>
          %alloc_58 = memref.alloc() : memref<10x3x3xi32>
          scf.yield
        }
        default {
          %294 = math.ceil %83 : f16
          %295 = index.divu %c2, %222
          %296 = index.mul %217, %217
          %297 = index.floordivs %103, %258
          %298 = math.exp2 %cst_2 : f32
          %299 = index.castu %c299102284_i32 : i32 to index
          %300 = math.tan %6 : tensor<3x13xf16>
          %alloca_57 = memref.alloca() : memref<10x16x16xi16>
          memref.assume_alignment %171, 8 : memref<10x16x16xi64>
          %301 = math.fpowi %6, %150 : tensor<3x13xf16>, tensor<3x13xi32>
          %302 = vector.broadcast %false : i1 to vector<13x3xi1>
          %303 = bufferization.to_tensor %alloc_8 : memref<13x3xi16>
          %304 = math.log2 %17 : tensor<13x3xf16>
          %305 = math.exp %collapsed : tensor<39xf32>
          %306 = math.roundeven %4 : tensor<10x16x16xf32>
          %307 = math.log1p %cst_0 : f16
        }
        %273 = memref.load %alloc_19[%c9, %c0, %c2] : memref<10x3x3xi32>
        %274 = arith.mulf %cst_2, %cst_2 : f32
        %rank = tensor.rank %collapsed : tensor<39xf32>
        %275 = math.log10 %cst_0 : f16
        bufferization.dealloc_tensor %5 : tensor<13x3xi1>
        %276 = index.mul %147, %c2
        %277 = arith.divsi %false, %true : i1
        %278 = scf.execute_region -> memref<10x3x3xi32> {
          %294 = math.tan %in_51 : f16
          %295 = math.ctpop %reduced : tensor<i32>
          %296 = vector.broadcast %false : i1 to vector<10x3x3xi1>
          %297 = vector.insertelement %false, %54[%c8 : index] : vector<1xi1>
          bufferization.dealloc_tensor %16 : tensor<13x3xf16>
          %alloc_57 = memref.alloc() : memref<10x3x3xf16>
          %298 = math.log1p %cst_5 : f16
          %299 = index.ceildivs %94, %109
          %300 = arith.shrui %false_3, %false_3 : i1
          %301 = arith.muli %true, %false : i1
          %302 = math.log2 %17 : tensor<13x3xf16>
          %303 = index.add %c13, %123
          %304 = vector.insertelement %c355128154_i64, %230[%c10 : index] : vector<16xi64>
          %305 = math.ceil %collapsed : tensor<39xf32>
          %306 = vector.broadcast %true : i1 to vector<10x16xi1>
          %dest_58, %accumulated_value_59 = vector.scan <minsi>, %40, %306 {inclusive = false, reduction_dim = 2 : i64} : vector<10x16x16xi1>, vector<10x16xi1>
          %307 = arith.remui %false, %true : i1
          scf.yield %155 : memref<10x3x3xi32>
        }
        %279 = arith.shrsi %c460165649_i32, %c460165649_i32 : i32
        %280 = arith.floordivsi %c615519904_i32, %c460165649_i32 : i32
        %281 = memref.atomic_rmw assign %cst_1, %alloc_17[%c2, %c2, %c0] : (f32, memref<10x3x3xf32>) -> f32
        %282 = bufferization.clone %alloc_15 : memref<13x3xf32> to memref<13x3xf32>
        %283 = bufferization.to_tensor %alloc_19 : memref<10x3x3xi32>
        %284 = math.log2 %21 : tensor<16xf32>
        %cast_52 = tensor.cast %1 : tensor<13x3xi1> to tensor<?x?xi1>
        %285 = math.fpowi %cst_2, %c299102284_i32 : f32, i32
        %cast_53 = tensor.cast %11 : tensor<10x16x16xi1> to tensor<?x?x?xi1>
        %alloc_54 = memref.alloc() : memref<13x3xi1>
        memref.tensor_store %7, %alloc_54 : memref<13x3xi1>
        %286 = affine.load %alloc_20[%c0, %c0] : memref<3x13xi1>
        %287 = arith.negf %cst_4 : f16
        %288 = tensor.empty() : tensor<10xf32>
        %289 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%288, %22 : tensor<10xf32>, tensor<16xf32>) outs(%18 : tensor<16x10x16xf32>) {
        ^bb0(%in_57: f32, %in_58: f32, %out: f32):
          %294 = index.add %151, %258
          %295 = math.log %transposed : tensor<16x10x16xf32>
          memref.store %122, %alloc[%c5, %c2] : memref<13x3xi64>
          %296 = index.floordivs %169, %98
          %297 = vector.broadcast %c615519904_i32 : i32 to vector<10x16x16xi32>
          %298 = math.log1p %transposed : tensor<16x10x16xf32>
          %299 = tensor.empty() : tensor<13x13xi64>
          %300 = linalg.matmul ins(%9, %3 : tensor<13x3xi64>, tensor<3x13xi64>) outs(%299 : tensor<13x13xi64>) -> tensor<13x13xi64>
          %rank_59 = tensor.rank %generated_38 : tensor<?x3x3xi32>
          %301 = bufferization.clone %alloc_11 : memref<13x3xf16> to memref<13x3xf16>
          %302 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %30, %44, %false_3 : vector<10xi1>, vector<10xi1> into i1
          %303 = arith.andi %c355128154_i64, %c355128154_i64 : i64
          %304 = arith.minui %false, %false : i1
          %305 = math.log2 %239 : tensor<f32>
          %306 = arith.remf %cst_4, %83 : f16
          %307 = affine.max affine_map<(d0) -> ((d0 * 2 - 1) ceildiv 2)>(%c11)
          %308 = math.roundeven %8 : tensor<13x3xf32>
          %309 = arith.maxui %c299102284_i32, %c615519904_i32 : i32
          %310 = vector.insertelement %extracted, %20[%rank : index] : vector<16xf32>
          %311 = vector.broadcast %false_3 : i1 to vector<10x3x3xi1>
          %312 = arith.minui %c355128154_i64, %c355128154_i64 : i64
          %cast_60 = tensor.cast %6 : tensor<3x13xf16> to tensor<?x?xf16>
          %313 = tensor.empty() : tensor<13x3xi64>
          %314 = linalg.matmul ins(%299, %9 : tensor<13x13xi64>, tensor<13x3xi64>) outs(%313 : tensor<13x3xi64>) -> tensor<13x3xi64>
          %315 = arith.negf %cst_5 : f16
          %316 = math.tanh %24 : tensor<f32>
          %317 = math.roundeven %17 : tensor<13x3xf16>
          vector.print %79 : vector<3x13xi1>
          %318 = index.ceildivs %35, %c4
          %splat_61 = tensor.splat %false_3 : tensor<10x16x16xi1>
          %319 = vector.bitcast %168 : vector<3x13xi1> to vector<3x13xi1>
          %320 = arith.shli %false, %true : i1
          %321 = vector.insertelement %true, %44[%rank_59 : index] : vector<10xi1>
          %322 = vector.extract_strided_slice %32 {offsets = [1], sizes = [1], strides = [1]} : vector<3x13xi32> to vector<1x13xi32>
          linalg.yield %cst_2 : f32
        } -> tensor<16x10x16xf32>
        %290 = vector.bitcast %259 : vector<10x3x3xi32> to vector<10x3x3xi32>
        vector.print %183 : vector<16xi64>
        %alloca_55 = memref.alloca() : memref<10x3x3xf32>
        memref.assume_alignment %155, 2 : memref<10x3x3xi32>
        %291 = vector.broadcast %in : f16 to vector<10x16x16xf16>
        memref.store %false_3, %alloc_12[%c7, %c2, %c0] : memref<10x3x3xi1>
        %292 = math.cos %23 : tensor<f32>
        %293 = index.divs %c0, %c0
        %cst_56 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_56 : f16
      }
    %261 = arith.minsi %c1966963025_i64, %c355128154_i64 : i64
    %262 = index.add %c5, %94
    %263 = tensor.empty() : tensor<10x16x16xi32>
    %mapped_48 = linalg.map ins(%12, %12, %101 : tensor<10x16x16xi32>, tensor<10x16x16xi32>, tensor<10x16x16xi32>) outs(%263 : tensor<10x16x16xi32>)
      (%in: i32, %in_51: i32, %in_52: i32) {
        %271 = arith.floordivsi %122, %c1966963025_i64 : i64
        scf.execute_region {
          %304 = vector.broadcast %false_3 : i1 to vector<13xi1>
          %305 = vector.insert %304, %33 [2] : vector<13xi1> into vector<3x13xi1>
          %306 = affine.max affine_map<(d0) -> (-d0)>(%c0)
          %307 = vector.broadcast %c10 : index to vector<10xindex>
          vector.scatter %alloc_9[%c1, %c0] [%307], %192, %192 : memref<3x13xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
          %308 = affine.max affine_map<(d0, d1) -> (-d0 - 32, d1 + 8, d1 - (-d0 - 32) * 4 + 8, d0)>(%258, %126)
          %309 = math.atan2 %23, %24 : tensor<f32>
          memref.store %c-2710_i16, %alloc_8[%c3, %c0] : memref<13x3xi16>
          %310 = vector.broadcast %c4 : index to vector<10xindex>
          vector.scatter %130[%c2, %c7] [%310], %44, %30 : memref<3x13xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
          %311 = math.sqrt %18 : tensor<16x10x16xf32>
          %312 = math.cos %23 : tensor<f32>
          %313 = math.tan %8 : tensor<13x3xf32>
          %314 = vector.broadcast %cst_1 : f32 to vector<10x16x16xf32>
          %315 = bufferization.to_memref %260 : memref<13x3xf16>
          %316 = arith.mulf %extracted, %cst_1 : f32
          %317 = arith.minsi %c299102284_i32, %in_51 : i32
          %318 = arith.divf %cst, %cst_4 : f16
          %true_55 = index.bool.constant true
          scf.yield
        }
        %272 = index.ceildivu %94, %c9
        %273 = arith.remsi %in, %in : i32
        %274 = bufferization.to_memref %18 : memref<16x10x16xf32>
        %275 = arith.minf %cst_1, %cst_2 : f32
        %276 = vector.broadcast %c-32034_i16 : i16 to vector<i16>
        %277 = vector.transfer_write %276, %collapsed_34[%169] : vector<i16>, tensor<39xi16>
        %278 = arith.shli %c460165649_i32, %in : i32
        %279 = math.floor %24 : tensor<f32>
        %280 = vector.insertelement %c355128154_i64, %183[%257 : index] : vector<16xi64>
        %281 = index.ceildivu %151, %c2
        %282 = affine.apply affine_map<(d0, d1) -> (0)>(%53, %53)
        %283 = math.expm1 %10 : tensor<13x3xf16>
        %284 = arith.andi %c615519904_i32, %in_51 : i32
        %285 = arith.negf %83 : f16
        %286 = index.add %85, %c8
        %287 = arith.minf %cst_0, %cst_5 : f16
        %288 = affine.min affine_map<(d0, d1, d2, d3) -> ((d0 mod 8) floordiv 128 - d1 - d3 ceildiv 2, (d0 mod 8) floordiv 128 - d1 - d3 ceildiv 2, (d1 - d3 ceildiv 2) * 4, d2 * 128 - 32)>(%c4, %151, %c0, %213)
        %289 = arith.shli %c1966963025_i64, %122 : i64
        %290 = bufferization.to_tensor %alloc_14 : memref<10x16x16xi32>
        %291 = math.log2 %4 : tensor<10x16x16xf32>
        %collapsed_53 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<10x16x16xf32> into tensor<160x16xf32>
        %292 = bufferization.clone %149 : memref<10x16x16xi64> to memref<10x16x16xi64>
        %alloc_54 = memref.alloc() : memref<13xi1>
        %293 = memref.realloc %alloc_54 : memref<13xi1> to memref<13xi1>
        %294 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 - 113, d0 - 113, d0 + 7, d2 - (d0 - 129))>(%258, %177, %c10, %c12)
        %295 = arith.minf %cst_5, %cst_0 : f16
        %296 = arith.mulf %83, %cst_4 : f16
        %297 = arith.shrui %c299102284_i32, %c299102284_i32 : i32
        %298 = index.divs %c11, %35
        %299 = bufferization.to_tensor %alloc_10 : memref<3x13xi32>
        %300 = arith.divsi %122, %c1966963025_i64 : i64
        %301 = vector.broadcast %213 : index to vector<13xindex>
        %302 = vector.broadcast %true : i1 to vector<13xi1>
        %303 = vector.broadcast %c355128154_i64 : i64 to vector<13xi64>
        vector.scatter %alloc[%c3, %c2] [%301], %302, %303 : memref<13x3xi64>, vector<13xindex>, vector<13xi1>, vector<13xi64>
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %264 = arith.ceildivsi %c1966963025_i64, %c1966963025_i64 : i64
    %265 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 + 32, d0 ceildiv 64, d0 ceildiv 64)>(%222, %c10, %262, %262)
    %266 = tensor.empty(%c3, %c8, %c4) : tensor<?x?x?xi64>
    %267 = linalg.copy ins(%cast_29 : tensor<?x?x?xi64>) outs(%266 : tensor<?x?x?xi64>) -> tensor<?x?x?xi64>
    %alloc_49 = memref.alloc() : memref<13x3xi1>
    linalg.transpose ins(%alloc_20 : memref<3x13xi1>) outs(%alloc_49 : memref<13x3xi1>) permutation = [1, 0] 
    %268 = tensor.empty() : tensor<i16>
    %reduced_50 = linalg.reduce ins(%collapsed_34 : tensor<39xi16>) outs(%268 : tensor<i16>) dimensions = [0] 
      (%in: i16, %init: i16) {
        %alloc_51 = memref.alloc() : memref<10x3x3xf16>
        %271 = vector.gather %alloc_51[%251, %209, %109] [%32], %168, %207 : memref<10x3x3xf16>, vector<3x13xi32>, vector<3x13xi1>, vector<3x13xf16> into vector<3x13xf16>
        %272 = vector.create_mask %151, %177 : vector<3x13xi1>
        affine.store %cst_0, %alloc_11[%c2, %c9] : memref<13x3xf16>
        %cst_52 = arith.constant 2.568000e+04 : f16
        %273 = math.absf %24 : tensor<f32>
        %274 = math.exp2 %10 : tensor<13x3xf16>
        %275 = arith.addi %c299102284_i32, %c460165649_i32 : i32
        %276 = arith.remui %c-2710_i16, %c-2710_i16 : i16
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %269 = scf.parallel (%arg2, %arg3) = (%251, %217) to (%27, %c8) step (%c8, %c15) init (%31) -> vector<10xi32> {
      %rank = tensor.rank %10 : tensor<13x3xf16>
      %271 = vector.broadcast %c355128154_i64 : i64 to vector<16x16xi64>
      %272 = vector.outerproduct %230, %181, %271 {kind = #vector.kind<maxsi>} : vector<16xi64>, vector<16xi64>
      %273 = tensor.empty() : tensor<16x16x10xf32>
      %274 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%273, %18 : tensor<16x16x10xf32>, tensor<16x10x16xf32>) outs(%18 : tensor<16x10x16xf32>) {
      ^bb0(%in: f32, %in_52: f32, %out: f32):
        %288 = arith.ceildivsi %c299102284_i32, %c615519904_i32 : i32
        %289 = arith.maxsi %c-2710_i16, %c-32034_i16 : i16
        %290 = math.fma %6, %6, %6 : tensor<3x13xf16>
        %291 = math.fma %83, %cst_0, %83 : f16
        %292 = index.sizeof
        %293 = arith.remf %in, %in_52 : f32
        %294 = vector.broadcast %122 : i64 to vector<16x16xi64>
        %295 = vector.outerproduct %183, %241, %294 {kind = #vector.kind<mul>} : vector<16xi64>, vector<16xi64>
        %296 = math.log1p %187 : tensor<16xf32>
        %297 = arith.minf %cst_1, %cst_1 : f32
        %298 = math.ctpop %c460165649_i32 : i32
        %299 = vector.load %256[%c0, %c10] : memref<3x13xi1>, vector<10x16x16xi1>
        %300 = math.log1p %transposed : tensor<16x10x16xf32>
        %301 = arith.minf %83, %cst_5 : f16
        %302 = vector.flat_transpose %241 {columns = 4 : i32, rows = 4 : i32} : vector<16xi64> -> vector<16xi64>
        bufferization.dealloc_tensor %1 : tensor<13x3xi1>
        %303 = tensor.empty() : tensor<10x16x16xi16>
        affine.store %false_3, %alloc_20[%c6, %c3] : memref<3x13xi1>
        %304 = math.fma %cst_1, %extracted, %cst_1 : f32
        affine.store %cst_1, %alloc_16[%c12, %c5, %c5] : memref<10x3x3xf32>
        memref.assume_alignment %alloc_9, 16 : memref<3x13xi1>
        bufferization.dealloc_tensor %23 : tensor<f32>
        %305 = index.divs %c4, %arg3
        %306 = tensor.empty() : tensor<3x10xi1>
        %307 = tensor.empty() : tensor<13x10xi1>
        %308 = linalg.matmul ins(%7, %306 : tensor<13x3xi1>, tensor<3x10xi1>) outs(%307 : tensor<13x10xi1>) -> tensor<13x10xi1>
        %extracted_53 = tensor.extract %15[%c2, %c14, %c6] : tensor<10x16x16xi64>
        %309 = vector.broadcast %c460165649_i32 : i32 to vector<10x10xi32>
        %310 = vector.outerproduct %29, %31, %309 {kind = #vector.kind<minsi>} : vector<10xi32>, vector<10xi32>
        %311 = bufferization.to_memref %172 : memref<10x16x16xi1>
        memref.assume_alignment %alloc_14, 16 : memref<10x16x16xi32>
        %312 = arith.divf %83, %cst_4 : f16
        %313 = index.maxs %177, %305
        %splat_54 = tensor.splat %c460165649_i32 : tensor<10x3x3xi32>
        %314 = index.ceildivu %169, %c2
        %315 = vector.multi_reduction <or>, %259, %29 [1, 2] : vector<10x3x3xi32> to vector<10xi32>
        linalg.yield %cst_1 : f32
      } -> tensor<16x10x16xf32>
      %275 = arith.remf %extracted, %cst_1 : f32
      %276 = index.divs %222, %85
      %277 = math.expm1 %22 : tensor<16xf32>
      %278 = math.expm1 %22 : tensor<16xf32>
      %279 = memref.load %163[%c2, %c7] : memref<3x13xi1>
      %280 = index.add %98, %258
      %281 = index.mul %217, %98
      %282 = index.maxs %257, %258
      %283 = math.exp2 %collapsed : tensor<39xf32>
      %284 = arith.remui %c-2710_i16, %c-32034_i16 : i16
      %285 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%101 : tensor<10x16x16xi32>) {
      ^bb0(%out: i32):
        %288 = affine.min affine_map<(d0, d1) -> (d0 ceildiv 32 + 10, -d1)>(%c10, %123)
        memref.assume_alignment %alloc_6, 8 : memref<10x16x16xi64>
        %289 = affine.max affine_map<(d0, d1, d2, d3) -> (d1, d3 mod 16 - (d0 + d3) * 2, d0 - d3, d0 + d3)>(%251, %169, %25, %288)
        %splat_52 = tensor.splat %83 : tensor<10x16x16xf16>
        %290 = math.roundeven %transposed : tensor<16x10x16xf32>
        %291 = math.ctlz %150 : tensor<3x13xi32>
        %292 = math.fma %8, %8, %8 : tensor<13x3xf32>
        %293 = arith.remf %extracted, %cst_2 : f32
        %cast_53 = tensor.cast %150 : tensor<3x13xi32> to tensor<?x?xi32>
        %294 = vector.broadcast %c355128154_i64 : i64 to vector<16x16xi64>
        %295 = vector.outerproduct %181, %241, %294 {kind = #vector.kind<maxui>} : vector<16xi64>, vector<16xi64>
        %296 = arith.xori %122, %c1966963025_i64 : i64
        %297 = index.ceildivu %c6, %233
        %298 = vector.broadcast %cst_5 : f16 to vector<10x3x3xf16>
        %299 = arith.shrui %c355128154_i64, %c355128154_i64 : i64
        %300 = arith.subi %c1966963025_i64, %c355128154_i64 : i64
        %cast_54 = tensor.cast %12 : tensor<10x16x16xi32> to tensor<?x?x?xi32>
        %cast_55 = tensor.cast %12 : tensor<10x16x16xi32> to tensor<?x?x?xi32>
        %301 = math.cos %cst_4 : f16
        affine.store %out, %alloc_19[%c14, %c2, %c0] : memref<10x3x3xi32>
        %302 = vector.broadcast %c299102284_i32 : i32 to vector<10x3x3xi32>
        %303 = math.cttz %5 : tensor<13x3xi1>
        memref.assume_alignment %149, 4 : memref<10x16x16xi64>
        %304 = arith.divsi %out, %out : i32
        %305 = math.ceil %16 : tensor<13x3xf16>
        vector.print %56 : vector<10xf32>
        memref.assume_alignment %alloc_11, 8 : memref<13x3xf16>
        %306 = math.fpowi %8, %13 : tensor<13x3xf32>, tensor<13x3xi32>
        memref.assume_alignment %alloc_8, 4 : memref<13x3xi16>
        %307 = math.ctlz %7 : tensor<13x3xi1>
        %308 = arith.shli %false, %false : i1
        %309 = bufferization.to_memref %2 : memref<10x3x3xi1>
        %extracted_56 = tensor.extract %generated[%c0, %c0] : tensor<?x?xf32>
        linalg.yield %c615519904_i32 : i32
      } -> tensor<10x16x16xi32>
      %286 = scf.while (%arg4 = %155) : (memref<10x3x3xi32>) -> memref<10x3x3xi32> {
        %288 = vector.broadcast %71 : index to vector<16xindex>
        vector.scatter %46[%c2, %c1] [%288], %182, %181 : memref<13x3xi64>, vector<16xindex>, vector<16xi1>, vector<16xi64>
        %289 = index.castu %122 : i64 to index
        %rank_52 = tensor.rank %cast : tensor<?x?x?xf32>
        %290 = arith.maxsi %c615519904_i32, %c615519904_i32 : i32
        %291 = arith.negf %cst_0 : f16
        %292 = index.divs %c8, %209
        %293 = arith.minsi %c355128154_i64, %c355128154_i64 : i64
        %collapsed_53 = tensor.collapse_shape %0 [[0, 1]] : tensor<13x3xi16> into tensor<39xi16>
        scf.condition(%true) %alloc_19 : memref<10x3x3xi32>
      } do {
      ^bb0(%arg4: memref<10x3x3xi32>):
        %288 = math.roundeven %260 : tensor<13x3xf16>
        %289 = arith.ceildivsi %c-2710_i16, %c-2710_i16 : i16
        %290 = vector.broadcast %cst_2 : f32 to vector<3xf32>
        %291 = vector.transfer_write %290, %18[%c13, %169, %71] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<3xf32>, tensor<16x10x16xf32>
        %292 = math.tanh %6 : tensor<3x13xf16>
        %293 = math.atan2 %16, %260 : tensor<13x3xf16>
        %294 = affine.apply affine_map<(d0, d1, d2) -> (512)>(%258, %c2, %c11)
        %295 = arith.ceildivsi %false_3, %false : i1
        %296 = vector.flat_transpose %181 {columns = 4 : i32, rows = 4 : i32} : vector<16xi64> -> vector<16xi64>
        %297 = arith.mulf %cst_5, %83 : f16
        %298 = arith.remf %cst_0, %cst_0 : f16
        %299 = arith.remf %cst_4, %cst_0 : f16
        %300 = arith.remui %c615519904_i32, %c615519904_i32 : i32
        %cast_52 = tensor.cast %9 : tensor<13x3xi64> to tensor<?x?xi64>
        %301 = math.expm1 %21 : tensor<16xf32>
        %302 = arith.divf %cst_1, %cst_2 : f32
        %cast_53 = tensor.cast %13 : tensor<13x3xi32> to tensor<?x?xi32>
        scf.yield %155 : memref<10x3x3xi32>
      }
      %alloc_51 = memref.alloc() : memref<39xi1>
      memref.tensor_store %collapsed_42, %alloc_51 : memref<39xi1>
      %287 = vector.broadcast %c299102284_i32 : i32 to vector<10xi32>
      scf.reduce(%287)  : vector<10xi32> {
      ^bb0(%arg4: vector<10xi32>, %arg5: vector<10xi32>):
        %288 = memref.atomic_rmw maxu %c1966963025_i64, %171[%c7, %c8, %c4] : (i64, memref<10x16x16xi64>) -> i64
        %289 = math.atan2 %collapsed, %collapsed : tensor<39xf32>
        %290 = index.castu %169 : index to i32
        %291 = arith.andi %false, %false : i1
        %292 = index.ceildivu %c3, %c6
        %293 = index.maxs %c11, %27
        %294 = index.castu %c460165649_i32 : i32 to index
        %295 = math.expm1 %17 : tensor<13x3xf16>
        %296 = vector.broadcast %c299102284_i32 : i32 to vector<10xi32>
        scf.reduce.return %296 : vector<10xi32>
      }
      scf.yield
    }
    %270 = affine.vector_load %171[%253, %c13, %213] : memref<10x16x16xi64>, vector<16xi64>
    affine.vector_store %134, %alloc_20[%209, %217] : memref<3x13xi1>, vector<10xi1>
    vector.print %20 : vector<16xf32>
    vector.print %29 : vector<10xi32>
    vector.print %30 : vector<10xi1>
    vector.print %31 : vector<10xi32>
    vector.print %32 : vector<3x13xi32>
    vector.print %33 : vector<3x13xi1>
    vector.print %34 : vector<3x13xi32>
    vector.print %40 : vector<10x16x16xi1>
    vector.print %41 : vector<10x3x3xi1>
    vector.print %44 : vector<10xi1>
    vector.print %54 : vector<1xi1>
    vector.print %55 : vector<10xf32>
    vector.print %56 : vector<10xf32>
    vector.print %60 : vector<10x16x16xf32>
    vector.print %61 : vector<10x16x16xf32>
    vector.print %78 : vector<3x13xf32>
    vector.print %79 : vector<3x13xi1>
    vector.print %134 : vector<10xi1>
    vector.print %154 : vector<13x3xi64>
    vector.print %168 : vector<3x13xi1>
    vector.print %181 : vector<16xi64>
    vector.print %182 : vector<16xi1>
    vector.print %183 : vector<16xi64>
    vector.print %192 : vector<10xi1>
    vector.print %207 : vector<3x13xf16>
    vector.print %211 : vector<10x16x16xi32>
    vector.print %230 : vector<16xi64>
    vector.print %234 : vector<10x16x16xf32>
    vector.print %241 : vector<16xi64>
    vector.print %250 : vector<10x3x3xi16>
    vector.print %259 : vector<10x3x3xi32>
    vector.print %270 : vector<16xi64>
    vector.print %cst : f16
    vector.print %cst_0 : f16
    vector.print %true : i1
    vector.print %c-2710_i16 : i16
    vector.print %false : i1
    vector.print %cst_1 : f32
    vector.print %c-32034_i16 : i16
    vector.print %c299102284_i32 : i32
    vector.print %cst_2 : f32
    vector.print %false_3 : i1
    vector.print %c1966963025_i64 : i64
    vector.print %c615519904_i32 : i32
    vector.print %cst_4 : f16
    vector.print %cst_5 : f16
    vector.print %c460165649_i32 : i32
    vector.print %c355128154_i64 : i64
    vector.print %83 : f16
    vector.print %122 : i64
    vector.print %extracted : f32
    return %extracted : f32
  }
}
