module {
  func.func private @func1(%arg0: tensor<1x6xi32>, %arg1: index, %arg2: tensor<1xi1>) {
    %c30435_i16 = arith.constant 30435 : i16
    %c157648824_i64 = arith.constant 157648824 : i64
    %c1054803254_i32 = arith.constant 1054803254 : i32
    %cst = arith.constant 0x4E2E8F6A : f32
    %c2054069192_i64 = arith.constant 2054069192 : i64
    %c660249233_i32 = arith.constant 660249233 : i32
    %cst_0 = arith.constant 0x4E628BA5 : f32
    %c1736531491_i32 = arith.constant 1736531491 : i32
    %cst_1 = arith.constant 0x4E03C14C : f32
    %c7789_i16 = arith.constant 7789 : i16
    %cst_2 = arith.constant 0x4E222755 : f32
    %c-15831_i16 = arith.constant -15831 : i16
    %cst_3 = arith.constant 2.657600e+04 : f16
    %true = arith.constant true
    %c-17923_i16 = arith.constant -17923 : i16
    %cst_4 = arith.constant 1.10370138E+9 : f32
    %0 = tensor.empty() : tensor<1x6xf32>
    %1 = tensor.empty() : tensor<7x7xf32>
    %2 = tensor.empty() : tensor<7x7xf16>
    %3 = tensor.empty() : tensor<1xi64>
    %4 = tensor.empty() : tensor<7xi1>
    %5 = tensor.empty() : tensor<1x6xi32>
    %6 = tensor.empty() : tensor<7x7xi64>
    %7 = tensor.empty() : tensor<7xf32>
    %8 = tensor.empty() : tensor<7x7xi1>
    %9 = tensor.empty() : tensor<7x7xi1>
    %10 = tensor.empty() : tensor<1x6xi16>
    %11 = tensor.empty() : tensor<1xi16>
    %12 = tensor.empty() : tensor<1xf32>
    %13 = tensor.empty() : tensor<1x6xi16>
    %14 = tensor.empty() : tensor<7xi32>
    %15 = tensor.empty() : tensor<7xf16>
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
    %alloc = memref.alloc() : memref<1x6xf32>
    %alloc_5 = memref.alloc() : memref<1x6xi16>
    %alloc_6 = memref.alloc() : memref<1x6xi64>
    %alloc_7 = memref.alloc() : memref<7x7xi16>
    %alloc_8 = memref.alloc() : memref<1xi1>
    %alloc_9 = memref.alloc() : memref<7x7xf32>
    %alloc_10 = memref.alloc() : memref<1x6xf32>
    %alloc_11 = memref.alloc() : memref<1x6xf32>
    %alloc_12 = memref.alloc() : memref<7xf32>
    %alloc_13 = memref.alloc() : memref<1x6xf32>
    %alloc_14 = memref.alloc() : memref<1xf16>
    %alloc_15 = memref.alloc() : memref<7xf16>
    %alloc_16 = memref.alloc() : memref<1x6xi16>
    %alloc_17 = memref.alloc() : memref<7xf32>
    %alloc_18 = memref.alloc() : memref<1xf32>
    %alloc_19 = memref.alloc() : memref<7xf32>
    %16 = tensor.empty() : tensor<7x7xi64>
    %17 = linalg.copy ins(%6 : tensor<7x7xi64>) outs(%16 : tensor<7x7xi64>) -> tensor<7x7xi64>
    %18 = tensor.empty() : tensor<6x1xi16>
    %transposed = linalg.transpose ins(%10 : tensor<1x6xi16>) outs(%18 : tensor<6x1xi16>) permutation = [1, 0] 
    %19 = tensor.empty() : tensor<i64>
    %reduced = linalg.reduce ins(%3 : tensor<1xi64>) outs(%19 : tensor<i64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        %275 = math.ctlz %10 : tensor<1x6xi16>
        %cast_43 = tensor.cast %7 : tensor<7xf32> to tensor<?xf32>
        %276 = scf.while (%arg3 = %c660249233_i32) : (i32) -> i32 {
          %283 = math.powf %2, %2 : tensor<7x7xf16>
          %284 = math.tanh %cst_2 : f32
          %285 = math.copysign %2, %2 : tensor<7x7xf16>
          %286 = vector.splat %arg3 : vector<7xi32>
          %287 = vector.broadcast %true : i1 to vector<6x3x6xi1>
          %288 = vector.broadcast %true : i1 to vector<6x6xi1>
          %dest_45, %accumulated_value_46 = vector.scan <or>, %287, %288 {inclusive = false, reduction_dim = 1 : i64} : vector<6x3x6xi1>, vector<6x6xi1>
          %289 = arith.shrui %c-17923_i16, %c7789_i16 : i16
          %290 = vector.load %alloc[%c0, %c0] : memref<1x6xf32>, vector<1xf32>
          %291 = math.expm1 %cst_1 : f32
          scf.condition(%true) %arg3 : i32
        } do {
        ^bb0(%arg3: i32):
          %collapsed_45 = tensor.collapse_shape %18 [[0, 1]] : tensor<6x1xi16> into tensor<6xi16>
          %false_46 = index.bool.constant false
          memref.assume_alignment %alloc_17, 16 : memref<7xf32>
          %283 = math.exp2 %12 : tensor<1xf32>
          %284 = arith.floordivsi %c1054803254_i32, %c660249233_i32 : i32
          %285 = arith.divf %cst_0, %cst_2 : f32
          %286 = arith.cmpi ule, %c30435_i16, %c7789_i16 : i16
          %287 = math.log10 %12 : tensor<1xf32>
          %288 = vector.broadcast %in : i64 to vector<7x7xi64>
          vector.print %288 : vector<7x7xi64>
          %289 = math.log1p %2 : tensor<7x7xf16>
          %290 = vector.broadcast %c1054803254_i32 : i32 to vector<3xi32>
          %291 = vector.broadcast %c1736531491_i32 : i32 to vector<3x3xi32>
          %292 = vector.outerproduct %290, %290, %291 {kind = #vector.kind<minui>} : vector<3xi32>, vector<3xi32>
          %293 = vector.broadcast %c157648824_i64 : i64 to vector<7xi64>
          %294 = vector.multi_reduction <and>, %288, %293 [0] : vector<7x7xi64> to vector<7xi64>
          %295 = arith.remf %cst_2, %cst : f32
          %296 = math.tan %15 : tensor<7xf16>
          %297 = math.ctpop %3 : tensor<1xi64>
          %298 = arith.remui %c30435_i16, %c-17923_i16 : i16
          scf.yield %c1736531491_i32 : i32
        }
        %277 = math.ceil %0 : tensor<1x6xf32>
        %278 = tensor.empty() : tensor<3x3x3xf32>
        %279 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%278, %278 : tensor<3x3x3xf32>, tensor<3x3x3xf32>) outs(%278 : tensor<3x3x3xf32>) {
        ^bb0(%in_45: f32, %in_46: f32, %out: f32):
          %283 = affine.apply affine_map<(d0, d1) -> ((d1 floordiv 4) ceildiv 128)>(%c0, %c0)
          %284 = index.divu %283, %c3
          %285 = math.round %12 : tensor<1xf32>
          %286 = arith.mulf %cst, %cst : f32
          %287 = index.ceildivu %c15, %c11
          %288 = index.maxu %c3, %c8
          %289 = vector.broadcast %true : i1 to vector<3xi1>
          %290 = vector.broadcast %true : i1 to vector<3x3xi1>
          %291 = vector.outerproduct %289, %289, %290 {kind = #vector.kind<mul>} : vector<3xi1>, vector<3xi1>
          %292 = index.divu %c5, %c7
          %293 = math.atan %15 : tensor<7xf16>
          %294 = arith.maxui %c1736531491_i32, %c1054803254_i32 : i32
          %295 = arith.minf %in_45, %in_46 : f32
          %296 = arith.floordivsi %c-15831_i16, %c-17923_i16 : i16
          %297 = math.ctpop %transposed : tensor<6x1xi16>
          %298 = arith.floordivsi %c1054803254_i32, %c1736531491_i32 : i32
          %299 = math.fma %cst_2, %cst_0, %cst_0 : f32
          %300 = math.tan %in_45 : f32
          %301 = index.sub %c5, %c14
          %302 = vector.broadcast %out : f32 to vector<6xf32>
          %303 = vector.flat_transpose %302 {columns = 2 : i32, rows = 3 : i32} : vector<6xf32> -> vector<6xf32>
          %cast_47 = tensor.cast %6 : tensor<7x7xi64> to tensor<?x?xi64>
          %304 = arith.remui %c-17923_i16, %c7789_i16 : i16
          %305 = math.log10 %cst_3 : f16
          %306 = vector.bitcast %303 : vector<6xf32> to vector<6xf32>
          %307 = arith.muli %c1736531491_i32, %c1736531491_i32 : i32
          %308 = arith.shli %c30435_i16, %c30435_i16 : i16
          %309 = vector.flat_transpose %303 {columns = 2 : i32, rows = 3 : i32} : vector<6xf32> -> vector<6xf32>
          %310 = math.absf %15 : tensor<7xf16>
          %311 = math.tanh %7 : tensor<7xf32>
          %312 = arith.maxsi %in, %c2054069192_i64 : i64
          %313 = arith.minf %cst, %out : f32
          %314 = arith.maxsi %c7789_i16, %c-15831_i16 : i16
          %315 = math.powf %cst_2, %cst : f32
          vector.print %306 : vector<6xf32>
          linalg.yield %cst_2 : f32
        } -> tensor<3x3x3xf32>
        %from_elements_44 = tensor.from_elements %true, %true, %true, %true, %true, %true, %true : tensor<7xi1>
        %280 = vector.broadcast %c30435_i16 : i16 to vector<1xi16>
        %281 = vector.bitcast %280 : vector<1xi16> to vector<1xi16>
        %282 = affine.if affine_set<(d0) : (-d0 + 16 >= 0, d0 * -128 == 0)>(%c7) -> memref<1x6xi1> {
          %283 = memref.realloc %alloc_17 : memref<7xf32> to memref<6xf32>
          vector.print %281 : vector<1xi16>
          %284 = arith.addf %cst_4, %cst_0 : f32
          %285 = arith.remui %c157648824_i64, %in : i64
          %286 = vector.reduction <mul>, %280 : vector<1xi16> into i16
          %287 = index.add %c0, %c9
          %288 = math.exp2 %cst_1 : f32
          %289 = index.castu %c157648824_i64 : i64 to index
          %alloc_45 = memref.alloc() : memref<1x6xi1>
          affine.yield %alloc_45 : memref<1x6xi1>
        } else {
          %283 = arith.addf %cst_2, %cst_2 : f32
          %284 = vector.insert %c-17923_i16, %281 [0] : i16 into vector<1xi16>
          %285 = arith.remui %c7789_i16, %c30435_i16 : i16
          %collapsed_45 = tensor.collapse_shape %transposed [[0, 1]] : tensor<6x1xi16> into tensor<6xi16>
          %alloc_46 = memref.alloc() : memref<7xi1>
          memref.tensor_store %4, %alloc_46 : memref<7xi1>
          %286 = math.tanh %2 : tensor<7x7xf16>
          %287 = arith.maxui %in, %in : i64
          %288 = bufferization.to_memref %5 : memref<1x6xi32>
          %alloc_47 = memref.alloc() : memref<1x6xi1>
          affine.yield %alloc_47 : memref<1x6xi1>
        }
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    scf.parallel (%arg3, %arg4) = (%c13, %c4) to (%c11, %c6) step (%c10, %c12) {
      %true_43 = index.bool.constant true
      %275 = vector.broadcast %true : i1 to vector<1x6x1xi1>
      %276 = vector.broadcast %true : i1 to vector<6x1xi1>
      %dest_44, %accumulated_value_45 = vector.scan <minui>, %275, %276 {inclusive = true, reduction_dim = 0 : i64} : vector<1x6x1xi1>, vector<6x1xi1>
      %277 = index.casts %c157648824_i64 : i64 to index
      %278 = vector.broadcast %c2054069192_i64 : i64 to vector<6xi64>
      %279 = vector.broadcast %c2054069192_i64 : i64 to vector<6x6xi64>
      %280 = vector.outerproduct %278, %278, %279 {kind = #vector.kind<mul>} : vector<6xi64>, vector<6xi64>
      %281 = vector.broadcast %c-15831_i16 : i16 to vector<3xi16>
      %282 = vector.matrix_multiply %281, %281 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi16>, vector<3xi16>) -> vector<1xi16>
      %283 = arith.maxf %cst_2, %cst_4 : f32
      %284 = math.atan %0 : tensor<1x6xf32>
      %285 = arith.remf %cst_1, %cst : f32
      %286 = vector.broadcast %cst_1 : f32 to vector<6x3x7xf32>
      %287 = vector.broadcast %cst_1 : f32 to vector<3x7xf32>
      %dest_46, %accumulated_value_47 = vector.scan <mul>, %286, %287 {inclusive = false, reduction_dim = 0 : i64} : vector<6x3x7xf32>, vector<3x7xf32>
      bufferization.dealloc_tensor %3 : tensor<1xi64>
      %288 = arith.remf %cst_2, %cst_4 : f32
      vector.print %282 : vector<1xi16>
      %289 = math.tanh %1 : tensor<7x7xf32>
      %290 = memref.load %alloc[%c0, %c3] : memref<1x6xf32>
      %291 = vector.broadcast %c2054069192_i64 : i64 to vector<6x3xi64>
      %292 = vector.broadcast %c2054069192_i64 : i64 to vector<3xi64>
      %dest_48, %accumulated_value_49 = vector.scan <or>, %291, %292 {inclusive = false, reduction_dim = 0 : i64} : vector<6x3xi64>, vector<3xi64>
      %293 = index.divu %c11, %c2
      scf.yield
    }
    %20 = affine.vector_load %alloc_9[%c12, %c4] : memref<7x7xf32>, vector<1xf32>
    affine.vector_store %20, %alloc_11[%c7, %c4] : memref<1x6xf32>, vector<1xf32>
    %21 = tensor.empty() : tensor<7xi1>
    %22 = tensor.empty() : tensor<i1>
    %23 = linalg.dot ins(%4, %21 : tensor<7xi1>, tensor<7xi1>) outs(%22 : tensor<i1>) -> tensor<i1>
    %24 = arith.maxsi %true, %true : i1
    %alloc_20 = memref.alloc() : memref<i64>
    memref.tensor_store %reduced, %alloc_20 : memref<i64>
    %25 = math.round %cst_4 : f32
    %26 = arith.cmpi sle, %c-15831_i16, %c30435_i16 : i16
    %27 = math.rsqrt %15 : tensor<7xf16>
    %28 = index.sizeof
    %29 = memref.load %alloc_19[%c4] : memref<7xf32>
    %30 = math.fpowi %cst_2, %c660249233_i32 : f32, i32
    %true_21 = index.bool.constant true
    %31 = arith.subi %true, %true_21 : i1
    %32 = vector.broadcast %cst_1 : f32 to vector<1x1xf32>
    %33 = vector.outerproduct %20, %20, %32 {kind = #vector.kind<add>} : vector<1xf32>, vector<1xf32>
    %34 = math.ctpop %11 : tensor<1xi16>
    %alloc_22 = memref.alloc() : memref<7xf16>
    %35 = arith.shrui %true_21, %true_21 : i1
    %36 = vector.broadcast %c660249233_i32 : i32 to vector<1x6xi32>
    %37 = arith.divui %true_21, %true_21 : i1
    %38 = arith.shrsi %c2054069192_i64, %c2054069192_i64 : i64
    %39 = arith.ceildivsi %c30435_i16, %c-15831_i16 : i16
    %40 = math.sqrt %0 : tensor<1x6xf32>
    %41 = arith.muli %true_21, %true_21 : i1
    memref.alloca_scope  {
      %275 = arith.andi %c7789_i16, %c-15831_i16 : i16
      %276 = arith.ori %true, %true_21 : i1
      %alloca = memref.alloca() : memref<1xi16>
      %from_elements_43 = tensor.from_elements %true_21, %true, %true, %true_21, %true_21, %true_21, %true, %true, %true_21, %true, %true_21, %true_21, %true_21, %true, %true, %true_21, %true_21, %true_21, %true, %true, %true_21, %true_21, %true_21, %true, %true, %true_21, %true, %true_21, %true_21, %true_21, %true, %true_21, %true, %true_21, %true_21, %true_21, %true, %true, %true_21, %true_21, %true, %true_21, %true_21, %true, %true, %true_21, %true_21, %true, %true_21 : tensor<7x7xi1>
      %277 = arith.shli %c1054803254_i32, %c1054803254_i32 : i32
      %278 = arith.floordivsi %c660249233_i32, %c1054803254_i32 : i32
      %279 = vector.load %alloc_15[%c5] : memref<7xf16>, vector<7xf16>
      %280 = arith.remf %cst_2, %cst : f32
      %cast_44 = tensor.cast %15 : tensor<7xf16> to tensor<?xf16>
      %281 = arith.minui %c2054069192_i64, %c2054069192_i64 : i64
      memref.store %c7789_i16, %alloc_5[%c0, %c5] : memref<1x6xi16>
      %282 = index.mul %c1, %c5
      %283 = math.powf %cst_1, %cst_1 : f32
      %284 = math.ipowi %c-15831_i16, %c7789_i16 : i16
      %285 = arith.maxf %cst_1, %cst_4 : f32
      %286 = math.ipowi %16, %17 : tensor<7x7xi64>
      %287 = vector.broadcast %true : i1 to vector<i1>
      vector.transfer_write %287, %alloc_8[%c0] : vector<i1>, memref<1xi1>
      %288 = math.tan %12 : tensor<1xf32>
      %289 = math.round %cst_2 : f32
      %290 = arith.remui %c1736531491_i32, %c660249233_i32 : i32
      memref.store %cst_4, %alloc_19[%c4] : memref<7xf32>
      %inserted_45 = tensor.insert %cst into %0[%c0, %c5] : tensor<1x6xf32>
      %291 = index.casts %c157648824_i64 : i64 to index
      %292 = math.ipowi %c157648824_i64, %c157648824_i64 : i64
      %293 = math.tanh %cst_4 : f32
      %294 = memref.realloc %alloc_14 : memref<1xf16> to memref<1xf16>
      scf.execute_region {
        %300 = math.ipowi %17, %6 : tensor<7x7xi64>
        %301 = memref.load %alloc_7[%c6, %c6] : memref<7x7xi16>
        %302 = arith.ori %c660249233_i32, %c1054803254_i32 : i32
        %cast_46 = tensor.cast %2 : tensor<7x7xf16> to tensor<?x?xf16>
        %303 = math.powf %7, %7 : tensor<7xf32>
        %304 = arith.mulf %cst_4, %cst_2 : f32
        %305 = math.tan %7 : tensor<7xf32>
        %306 = arith.divui %c1736531491_i32, %c1054803254_i32 : i32
        %307 = math.tanh %7 : tensor<7xf32>
        %308 = arith.ori %true, %true : i1
        %309 = math.round %cst_1 : f32
        %true_47 = index.bool.constant true
        %alloc_48 = memref.alloc() : memref<7xi32>
        memref.tensor_store %14, %alloc_48 : memref<7xi32>
        %310 = affine.max affine_map<(d0, d1) -> (((-d1) floordiv 32 - 2) * 32, (-d1) floordiv 32, d1 * 2 - 16)>(%c8, %c10)
        %311 = math.rsqrt %7 : tensor<7xf32>
        %312 = arith.subi %true_47, %true_21 : i1
        scf.yield
      }
      %295 = arith.cmpf false, %cst_1, %cst_2 : f32
      %296 = arith.divsi %true_21, %true : i1
      %297 = vector.flat_transpose %279 {columns = 7 : i32, rows = 1 : i32} : vector<7xf16> -> vector<7xf16>
      %298 = arith.floordivsi %c2054069192_i64, %c2054069192_i64 : i64
      %299 = arith.remf %cst_3, %cst_3 : f16
    }
    %42 = arith.floordivsi %true_21, %true : i1
    %43 = arith.mulf %cst_2, %cst_4 : f32
    %44 = vector.broadcast %cst_4 : f32 to vector<1x1xf32>
    %45 = vector.outerproduct %20, %20, %44 {kind = #vector.kind<maxf>} : vector<1xf32>, vector<1xf32>
    %46 = math.ctpop %5 : tensor<1x6xi32>
    %47 = math.ctlz %c30435_i16 : i16
    %48 = affine.max affine_map<(d0, d1, d2, d3) -> ((d0 + 4) mod 128, (d0 + 4) mod 128 + (d0 + 4) * 128)>(%c1, %c2, %c3, %c13)
    %49 = vector.create_mask %c11 : vector<1xi1>
    %50 = arith.ceildivsi %c2054069192_i64, %c157648824_i64 : i64
    %51 = index.ceildivu %c10, %c12
    %52 = vector.broadcast %true_21 : i1 to vector<7x7xi1>
    %53 = vector.broadcast %c1736531491_i32 : i32 to vector<7x7xi32>
    %54 = vector.gather %9[%c13, %c5] [%53], %52, %52 : tensor<7x7xi1>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xi1> into vector<7x7xi1>
    %55 = vector.bitcast %36 : vector<1x6xi32> to vector<1x6xi32>
    %56 = math.log %7 : tensor<7xf32>
    %57 = vector.broadcast %cst : f32 to vector<7xf32>
    %58 = vector.broadcast %true_21 : i1 to vector<7xi1>
    %59 = vector.broadcast %c660249233_i32 : i32 to vector<7xi32>
    %60 = vector.gather %alloc_9[%c4, %c14] [%59], %58, %57 : memref<7x7xf32>, vector<7xi32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
    %61 = arith.subi %c2054069192_i64, %c2054069192_i64 : i64
    %alloc_23 = memref.alloc() : memref<1xi64>
    %62 = vector.broadcast %c2054069192_i64 : i64 to vector<1xi64>
    %63 = vector.broadcast %c1054803254_i32 : i32 to vector<1xi32>
    %64 = vector.gather %alloc_23[%c7] [%63], %49, %62 : memref<1xi64>, vector<1xi32>, vector<1xi1>, vector<1xi64> into vector<1xi64>
    %65 = math.expm1 %2 : tensor<7x7xf16>
    %66 = arith.remf %cst_2, %cst_1 : f32
    %67 = math.exp %7 : tensor<7xf32>
    %68 = vector.splat %c2054069192_i64 : vector<1xi64>
    %69 = tensor.empty() : tensor<3x3x3xf32>
    %alloc_24 = memref.alloc() : memref<3x3xf32>
    %70 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%69, %alloc_24 : tensor<3x3x3xf32>, memref<3x3xf32>) outs(%69 : tensor<3x3x3xf32>) {
    ^bb0(%in: f32, %in_43: f32, %out: f32):
      %275 = vector.extract_strided_slice %57 {offsets = [3], sizes = [3], strides = [1]} : vector<7xf32> to vector<3xf32>
      memref.tensor_store %13, %alloc_5 : memref<1x6xi16>
      %276 = scf.while (%arg3 = %cst) : (f32) -> f32 {
        %302 = index.sub %c15, %28
        %303 = arith.shli %c-15831_i16, %c-15831_i16 : i16
        %304 = index.divu %c6, %c3
        %305 = bufferization.clone %alloc_13 : memref<1x6xf32> to memref<1x6xf32>
        memref.assume_alignment %alloc_14, 8 : memref<1xf16>
        %306 = math.tan %12 : tensor<1xf32>
        %307 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 - d0 + 2, d2 - d0 + 2)>(%c5, %c6, %c7, %c13)
        %dest_48, %accumulated_value_49 = vector.scan <or>, %54, %58 {inclusive = false, reduction_dim = 0 : i64} : vector<7x7xi1>, vector<7xi1>
        scf.condition(%true) %cst_4 : f32
      } do {
      ^bb0(%arg3: f32):
        %302 = bufferization.to_memref %transposed : memref<6x1xi16>
        %303 = arith.ceildivsi %c1054803254_i32, %c660249233_i32 : i32
        %304 = index.castu %c660249233_i32 : i32 to index
        %305 = index.maxs %28, %c0
        %306 = vector.insert %true_21, %58 [0] : i1 into vector<7xi1>
        %307 = vector.broadcast %c9 : index to vector<7xindex>
        vector.scatter %alloc_19[%c4] [%307], %58, %60 : memref<7xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
        %308 = arith.negf %cst : f32
        %309 = vector.create_mask %c0, %c0 : vector<1x6xi1>
        %310 = math.fpowi %0, %5 : tensor<1x6xf32>, tensor<1x6xi32>
        %alloc_48 = memref.alloc() : memref<i64>
        memref.tensor_store %19, %alloc_48 : memref<i64>
        %alloc_49 = memref.alloc() : memref<7x7xi64>
        memref.tensor_store %16, %alloc_49 : memref<7x7xi64>
        %311 = math.tan %15 : tensor<7xf16>
        %312 = arith.ori %c157648824_i64, %c157648824_i64 : i64
        memref.store %cst_3, %alloc_15[%c2] : memref<7xf16>
        %alloc_50 = memref.alloc() : memref<1xf32>
        memref.copy %alloc_18, %alloc_50 : memref<1xf32> to memref<1xf32>
        %dest_51, %accumulated_value_52 = vector.scan <minui>, %52, %58 {inclusive = false, reduction_dim = 1 : i64} : vector<7x7xi1>, vector<7xi1>
        scf.yield %cst_0 : f32
      }
      %277 = arith.cmpi ne, %c30435_i16, %c-17923_i16 : i16
      %278 = math.expm1 %7 : tensor<7xf32>
      %279 = math.fpowi %15, %14 : tensor<7xf16>, tensor<7xi32>
      %280 = arith.remf %cst_0, %cst_2 : f32
      %281 = arith.negf %cst_2 : f32
      %282 = arith.maxsi %c660249233_i32, %c1054803254_i32 : i32
      %alloc_44 = memref.alloc() : memref<i1>
      memref.tensor_store %23, %alloc_44 : memref<i1>
      %283 = math.exp2 %15 : tensor<7xf16>
      %284 = index.divu %c8, %28
      %285 = arith.cmpi ult, %true, %true_21 : i1
      %286 = arith.floordivsi %c1736531491_i32, %c660249233_i32 : i32
      %collapsed_45 = tensor.collapse_shape %6 [[0, 1]] : tensor<7x7xi64> into tensor<49xi64>
      memref.alloca_scope  {
        %302 = math.exp2 %0 : tensor<1x6xf32>
        %dest_48, %accumulated_value_49 = vector.scan <add>, %55, %63 {inclusive = false, reduction_dim = 1 : i64} : vector<1x6xi32>, vector<1xi32>
        %303 = math.log %1 : tensor<7x7xf32>
        %304 = vector.insert %c1054803254_i32, %63 [0] : i32 into vector<1xi32>
        %305 = arith.cmpi ugt, %true, %true : i1
        %306 = math.tan %cst_0 : f32
        %307 = bufferization.clone %alloc_12 : memref<7xf32> to memref<7xf32>
        %308 = affine.load %alloc_11[%c8, %c13] : memref<1x6xf32>
        %309 = vector.splat %cst_3 : vector<1xf16>
        %310 = arith.maxui %c7789_i16, %c30435_i16 : i16
        %311 = vector.broadcast %c660249233_i32 : i32 to vector<6xi32>
        %312 = vector.insert %311, %55 [0] : vector<6xi32> into vector<1x6xi32>
        %313 = math.ctpop %c1054803254_i32 : i32
        %314 = arith.muli %true, %true_21 : i1
        %315 = arith.addi %c1054803254_i32, %c660249233_i32 : i32
        %316 = vector.insert %true, %49 [0] : i1 into vector<1xi1>
        %317 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %20, %20, %cst : vector<1xf32>, vector<1xf32> into f32
        %318 = arith.minf %out, %cst_0 : f32
        %319 = vector.broadcast %cst_4 : f32 to vector<1x6xf32>
        %320 = vector.fma %319, %319, %319 : vector<1x6xf32>
        %321 = math.ctlz %6 : tensor<7x7xi64>
        %322 = math.tanh %cst_2 : f32
        %323 = math.exp2 %in : f32
        %324 = arith.addi %c7789_i16, %c-15831_i16 : i16
        %325 = vector.broadcast %in : f32 to vector<6xf32>
        %326 = vector.broadcast %true_21 : i1 to vector<6xi1>
        %327 = vector.maskedload %alloc_18[%c0], %326, %325 : memref<1xf32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
        %inserted_50 = tensor.insert %cst_3 into %2[%c3, %c3] : tensor<7x7xf16>
        %328 = math.cttz %c2054069192_i64 : i64
        %329 = math.exp2 %15 : tensor<7xf16>
        %alloca = memref.alloca() : memref<1xi1>
        %330 = math.ipowi %c660249233_i32, %c660249233_i32 : i32
        %331 = arith.minf %cst, %cst_2 : f32
        %332 = bufferization.clone %alloc_5 : memref<1x6xi16> to memref<1x6xi16>
        %333 = vector.bitcast %62 : vector<1xi64> to vector<1xi64>
        %334 = arith.floordivsi %c7789_i16, %c-17923_i16 : i16
      }
      %287 = math.atan %15 : tensor<7xf16>
      %288 = affine.if affine_set<(d0, d1, d2) : ((d2 + 4) * 4 == 0, (d1 - d0 - 128) ceildiv 2 == 0, (d1 - d0 - 128) ceildiv 2 - (d1 - d0 - 2) + d2 == 0)>(%c11, %c5, %c1) -> memref<7x7xf16> {
        %302 = math.absf %cst_1 : f32
        %303 = arith.addi %c1054803254_i32, %c660249233_i32 : i32
        %304 = vector.multi_reduction <add>, %59, %59 [] : vector<7xi32> to vector<7xi32>
        %305 = arith.addf %cst_1, %cst_1 : f32
        %306 = math.tanh %cst_4 : f32
        %307 = vector.broadcast %c1054803254_i32 : i32 to vector<6xi32>
        %dest_48, %accumulated_value_49 = vector.scan <minsi>, %36, %307 {inclusive = true, reduction_dim = 0 : i64} : vector<1x6xi32>, vector<6xi32>
        %splat = tensor.splat %true : tensor<1x6xi1>
        %308 = math.ctpop %true : i1
        %alloc_50 = memref.alloc() : memref<7x7xf16>
        affine.yield %alloc_50 : memref<7x7xf16>
      } else {
        %302 = vector.splat %c15 : vector<1x6xindex>
        %alloc_48 = memref.alloc() : memref<7xi1>
        memref.tensor_store %21, %alloc_48 : memref<7xi1>
        %303 = math.powf %cst_2, %cst_0 : f32
        %304 = index.ceildivu %c0, %51
        %305 = index.add %c3, %c8
        %306 = math.copysign %in, %cst_0 : f32
        %307 = arith.divsi %true_21, %true : i1
        vector.print %62 : vector<1xi64>
        %alloc_49 = memref.alloc() : memref<7x7xf16>
        affine.yield %alloc_49 : memref<7x7xf16>
      }
      %289 = vector.splat %out : vector<1x6xf32>
      %290 = math.exp2 %15 : tensor<7xf16>
      %291 = memref.realloc %alloc_14 : memref<1xf16> to memref<7xf16>
      %292 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 * 16)>(%c6, %c6, %c3, %c8)
      %293 = bufferization.clone %alloc : memref<1x6xf32> to memref<1x6xf32>
      %294 = arith.remf %in, %cst_0 : f32
      %295 = arith.cmpi ne, %c7789_i16, %c7789_i16 : i16
      %296 = math.expm1 %2 : tensor<7x7xf16>
      %297 = arith.remf %out, %cst_1 : f32
      %dest_46, %accumulated_value_47 = vector.scan <maxsi>, %53, %59 {inclusive = true, reduction_dim = 1 : i64} : vector<7x7xi32>, vector<7xi32>
      %298 = math.ctpop %21 : tensor<7xi1>
      %299 = math.log1p %12 : tensor<1xf32>
      %300 = index.sub %c11, %c12
      %301 = math.log %in : f32
      linalg.yield %cst : f32
    } -> tensor<3x3x3xf32>
    %71 = memref.realloc %alloc_15 : memref<7xf16> to memref<1xf16>
    %72 = memref.alloca_scope  -> (i1) {
      %275 = tensor.empty() : tensor<7x7xi64>
      %276 = vector.create_mask %c15, %c11 : vector<7x7xi1>
      %277 = bufferization.to_memref %8 : memref<7x7xi1>
      %278 = math.ceil %1 : tensor<7x7xf32>
      %279 = math.ceil %cst_3 : f16
      %280 = arith.floordivsi %c-15831_i16, %c30435_i16 : i16
      %281 = affine.max affine_map<(d0, d1, d2, d3) -> (d0)>(%c10, %c10, %c14, %c14)
      %282 = math.absf %1 : tensor<7x7xf32>
      %283 = arith.remui %c1054803254_i32, %c1054803254_i32 : i32
      %284 = bufferization.clone %alloc : memref<1x6xf32> to memref<1x6xf32>
      %285 = arith.maxsi %c1054803254_i32, %c1736531491_i32 : i32
      %286 = math.tan %7 : tensor<7xf32>
      %287 = vector.create_mask %51 : vector<7xi1>
      memref.alloca_scope  {
        %304 = vector.splat %c9 : vector<7x7xindex>
        %305 = arith.maxui %c1736531491_i32, %c1736531491_i32 : i32
        %306 = math.powf %15, %15 : tensor<7xf16>
        %307 = math.tanh %7 : tensor<7xf32>
        %308 = index.ceildivu %c11, %c4
        %309 = vector.broadcast %c7789_i16 : i16 to vector<7xi16>
        %310 = vector.maskedload %alloc_5[%c0, %c3], %287, %309 : memref<1x6xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
        %311 = arith.remf %cst_4, %cst_4 : f32
        %312 = arith.maxui %c-15831_i16, %c7789_i16 : i16
        %313 = math.tanh %cst_4 : f32
        %314 = arith.muli %c1736531491_i32, %c1054803254_i32 : i32
        %315 = index.maxu %281, %c12
        %316 = arith.addf %cst_1, %cst : f32
        %317 = math.atan %2 : tensor<7x7xf16>
        %318 = bufferization.to_tensor %alloc_12 : memref<7xf32>
        %319 = vector.broadcast %c1054803254_i32 : i32 to vector<6xi32>
        %dest_44, %accumulated_value_45 = vector.scan <maxsi>, %36, %319 {inclusive = true, reduction_dim = 0 : i64} : vector<1x6xi32>, vector<6xi32>
        %320 = arith.shli %c2054069192_i64, %c157648824_i64 : i64
        %dest_46, %accumulated_value_47 = vector.scan <minsi>, %54, %58 {inclusive = true, reduction_dim = 0 : i64} : vector<7x7xi1>, vector<7xi1>
        %321 = arith.minui %c660249233_i32, %c1054803254_i32 : i32
        %322 = vector.insertelement %c1054803254_i32, %63[%c9 : index] : vector<1xi32>
        %323 = arith.minui %c7789_i16, %c30435_i16 : i16
        %324 = vector.broadcast %c-17923_i16 : i16 to vector<6xi16>
        %325 = vector.broadcast %true_21 : i1 to vector<6xi1>
        %326 = vector.maskedload %alloc_7[%c4, %c1], %325, %324 : memref<7x7xi16>, vector<6xi1>, vector<6xi16> into vector<6xi16>
        %327 = arith.addi %c1054803254_i32, %c1054803254_i32 : i32
        %328 = arith.minf %cst_4, %cst_2 : f32
        %329 = vector.insertelement %true, %325[%c12 : index] : vector<6xi1>
        %330 = vector.insert %c-17923_i16, %324 [2] : i16 into vector<6xi16>
        %331 = math.round %1 : tensor<7x7xf32>
        %332 = arith.andi %c30435_i16, %c-15831_i16 : i16
        %alloc_48 = memref.alloc() : memref<i64>
        memref.tensor_store %19, %alloc_48 : memref<i64>
        %333 = memref.realloc %alloc_17 : memref<7xf32> to memref<3xf32>
        %334 = math.atan2 %cst_0, %cst_2 : f32
        %335 = vector.flat_transpose %63 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %336 = math.rsqrt %12 : tensor<1xf32>
      }
      %288 = math.expm1 %1 : tensor<7x7xf32>
      %289 = math.cos %0 : tensor<1x6xf32>
      %290 = arith.subi %c1054803254_i32, %c1736531491_i32 : i32
      %291 = math.log1p %0 : tensor<1x6xf32>
      %292 = arith.cmpf uge, %cst_3, %cst_3 : f16
      %293 = math.expm1 %cst_1 : f32
      %294 = math.log10 %cst : f32
      %295 = arith.remf %cst_1, %cst_4 : f32
      %296 = arith.andi %c30435_i16, %c-17923_i16 : i16
      %297 = vector.multi_reduction <xor>, %55, %36 [] : vector<1x6xi32> to vector<1x6xi32>
      %298 = index.ceildivu %c5, %c11
      %299 = arith.muli %c-17923_i16, %c-17923_i16 : i16
      %300 = index.ceildivu %c15, %c6
      %expanded_43 = tensor.expand_shape %7 [[0, 1]] : tensor<7xf32> into tensor<7x1xf32>
      memref.store %true, %alloc_8[%c0] : memref<1xi1>
      %301 = memref.atomic_rmw andi %c7789_i16, %alloc_16[%c0, %c4] : (i16, memref<1x6xi16>) -> i16
      %302 = arith.shrui %c660249233_i32, %c1054803254_i32 : i32
      %303 = math.rsqrt %cst_0 : f32
      memref.alloca_scope.return %true_21 : i1
    }
    %73 = math.tanh %0 : tensor<1x6xf32>
    %74 = bufferization.clone %alloc_6 : memref<1x6xi64> to memref<1x6xi64>
    %75 = index.add %c14, %51
    %76 = math.exp2 %2 : tensor<7x7xf16>
    %77 = index.divs %48, %48
    %78 = vector.outerproduct %59, %59, %53 {kind = #vector.kind<add>} : vector<7xi32>, vector<7xi32>
    %79 = arith.maxsi %c-17923_i16, %c7789_i16 : i16
    %80 = scf.execute_region -> tensor<7xi1> {
      %275 = index.mul %c0, %c6
      %276 = bufferization.clone %alloc_7 : memref<7x7xi16> to memref<7x7xi16>
      %277 = vector.outerproduct %58, %58, %52 {kind = #vector.kind<add>} : vector<7xi1>, vector<7xi1>
      %278 = arith.shli %c30435_i16, %c-15831_i16 : i16
      %dest_43, %accumulated_value_44 = vector.scan <mul>, %52, %58 {inclusive = false, reduction_dim = 0 : i64} : vector<7x7xi1>, vector<7xi1>
      %279 = index.divu %c4, %51
      %280 = index.sub %c0, %77
      %281 = arith.negf %cst_2 : f32
      %282 = index.floordivs %280, %275
      %283 = arith.negf %cst : f32
      scf.index_switch %c2 
      case 1 {
        %290 = arith.remf %cst_0, %cst_2 : f32
        %291 = arith.ceildivsi %c7789_i16, %c30435_i16 : i16
        %292 = vector.shuffle %20, %57 [0, 3, 4, 7] : vector<1xf32>, vector<7xf32>
        %293 = math.tanh %1 : tensor<7x7xf32>
        %294 = arith.shrsi %c157648824_i64, %c157648824_i64 : i64
        %295 = arith.mulf %cst_1, %cst : f32
        %296 = math.round %cst_1 : f32
        %297 = vector.broadcast %true_21 : i1 to vector<1x1xi1>
        %298 = vector.outerproduct %49, %49, %297 {kind = #vector.kind<add>} : vector<1xi1>, vector<1xi1>
        %299 = vector.create_mask %279, %c7 : vector<1x6xi1>
        %inserted_46 = tensor.insert %c1736531491_i32 into %5[%c0, %c5] : tensor<1x6xi32>
        %300 = math.exp2 %cst : f32
        %301 = memref.atomic_rmw muli %c-15831_i16, %alloc_7[%c0, %c3] : (i16, memref<7x7xi16>) -> i16
        memref.store %c30435_i16, %alloc_5[%c0, %c3] : memref<1x6xi16>
        %collapsed_47 = tensor.collapse_shape %5 [[0, 1]] : tensor<1x6xi32> into tensor<6xi32>
        %302 = math.powf %7, %7 : tensor<7xf32>
        %303 = math.round %1 : tensor<7x7xf32>
        scf.yield
      }
      default {
        %290 = math.tan %0 : tensor<1x6xf32>
        %291 = index.maxs %282, %280
        %292 = vector.splat %275 : vector<7xindex>
        vector.print %62 : vector<1xi64>
        %293 = index.divu %280, %282
        %294 = math.sqrt %0 : tensor<1x6xf32>
        %alloc_46 = memref.alloc() : memref<1xf16>
        memref.copy %alloc_14, %alloc_46 : memref<1xf16> to memref<1xf16>
        %295 = arith.minf %cst_0, %cst_0 : f32
        %296 = arith.divui %c660249233_i32, %c1054803254_i32 : i32
        %297 = index.maxs %c11, %48
        %298 = math.tanh %cst_2 : f32
        %299 = math.round %15 : tensor<7xf16>
        %300 = math.ctpop %17 : tensor<7x7xi64>
        %301 = arith.cmpf ule, %cst_1, %cst_1 : f32
        %302 = index.ceildivs %c14, %75
        %303 = math.log10 %15 : tensor<7xf16>
      }
      %284 = tensor.empty() : tensor<3x3x3xf32>
      %alloc_45 = memref.alloc() : memref<3x3xf32>
      %285 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_45, %alloc_45 : memref<3x3xf32>, memref<3x3xf32>) outs(%284 : tensor<3x3x3xf32>) {
      ^bb0(%in: f32, %in_46: f32, %out: f32):
        %290 = math.tanh %cst_4 : f32
        %291 = arith.floordivsi %c2054069192_i64, %c157648824_i64 : i64
        %292 = arith.remui %c7789_i16, %c-15831_i16 : i16
        %293 = arith.negf %cst_4 : f32
        %294 = arith.maxsi %c7789_i16, %c-17923_i16 : i16
        %295 = math.log1p %cst_3 : f16
        memref.tensor_store %1, %alloc_9 : memref<7x7xf32>
        %296 = index.divu %c8, %c8
        %297 = math.roundeven %0 : tensor<1x6xf32>
        %298 = vector.broadcast %280 : index to vector<7xindex>
        %299 = vector.broadcast %c-17923_i16 : i16 to vector<7xi16>
        vector.scatter %alloc_16[%c0, %c2] [%298], %58, %299 : memref<1x6xi16>, vector<7xindex>, vector<7xi1>, vector<7xi16>
        %300 = index.maxu %c12, %c5
        %301 = index.maxs %275, %c10
        %302 = vector.broadcast %c30435_i16 : i16 to vector<i16>
        vector.transfer_write %302, %276[%296, %c6] : vector<i16>, memref<7x7xi16>
        %303 = arith.addf %cst_1, %out : f32
        %304 = arith.floordivsi %c660249233_i32, %c1736531491_i32 : i32
        %305 = arith.cmpf false, %cst_1, %cst : f32
        %306 = vector.broadcast %c1736531491_i32 : i32 to vector<6xi32>
        %dest_47, %accumulated_value_48 = vector.scan <add>, %36, %306 {inclusive = false, reduction_dim = 0 : i64} : vector<1x6xi32>, vector<6xi32>
        %307 = math.tan %0 : tensor<1x6xf32>
        %308 = math.log10 %0 : tensor<1x6xf32>
        %309 = memref.atomic_rmw minu %c157648824_i64, %alloc_23[%c0] : (i64, memref<1xi64>) -> i64
        %310 = math.atan %0 : tensor<1x6xf32>
        %311 = arith.remf %cst_4, %in_46 : f32
        %312 = arith.remui %c-15831_i16, %c7789_i16 : i16
        %313 = vector.broadcast %c9 : index to vector<3xindex>
        %314 = vector.broadcast %72 : i1 to vector<3xi1>
        %315 = vector.broadcast %c2054069192_i64 : i64 to vector<3xi64>
        vector.scatter %74[%c0, %c4] [%313], %314, %315 : memref<1x6xi64>, vector<3xindex>, vector<3xi1>, vector<3xi64>
        %316 = arith.ori %c1736531491_i32, %c1736531491_i32 : i32
        vector.print %302 : vector<i16>
        %inserted_49 = tensor.insert %c-15831_i16 into %11[%c0] : tensor<1xi16>
        %317 = arith.muli %c1054803254_i32, %c1054803254_i32 : i32
        %318 = vector.splat %48 : vector<7x7xindex>
        %319 = math.log10 %cst_0 : f32
        %320 = math.tanh %7 : tensor<7xf32>
        %321 = arith.negf %cst_0 : f32
        linalg.yield %in : f32
      } -> tensor<3x3x3xf32>
      %286 = arith.shli %72, %true_21 : i1
      %287 = math.rsqrt %12 : tensor<1xf32>
      %288 = bufferization.clone %alloc_19 : memref<7xf32> to memref<7xf32>
      %289 = math.floor %12 : tensor<1xf32>
      scf.yield %21 : tensor<7xi1>
    }
    %81 = arith.remf %cst, %cst_2 : f32
    %82 = arith.maxf %cst_1, %cst_2 : f32
    %83 = tensor.empty() : tensor<1xi64>
    %mapped = linalg.map ins(%3, %alloc_23, %3 : tensor<1xi64>, memref<1xi64>, tensor<1xi64>) outs(%83 : tensor<1xi64>)
      (%in: i64, %in_43: i64, %in_44: i64) {
        %275 = index.ceildivu %75, %c13
        %276 = vector.multi_reduction <maxf>, %20, %20 [] : vector<1xf32> to vector<1xf32>
        %277 = memref.realloc %alloc_18 : memref<1xf32> to memref<1xf32>
        %278 = math.ceil %15 : tensor<7xf16>
        %alloc_45 = memref.alloc() : memref<1xi16>
        memref.tensor_store %11, %alloc_45 : memref<1xi16>
        scf.index_switch %48 
        case 1 {
          %307 = math.tan %7 : tensor<7xf32>
          %308 = math.tan %cst_2 : f32
          %309 = bufferization.clone %74 : memref<1x6xi64> to memref<1x6xi64>
          %310 = arith.floordivsi %true, %true_21 : i1
          %311 = vector.flat_transpose %64 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
          %312 = math.expm1 %15 : tensor<7xf16>
          %313 = arith.floordivsi %c-17923_i16, %c-15831_i16 : i16
          %314 = index.divu %28, %c3
          memref.assume_alignment %alloc_17, 16 : memref<7xf32>
          %315 = math.copysign %cst_1, %cst_2 : f32
          %316 = arith.minf %cst, %cst_0 : f32
          vector.print %59 : vector<7xi32>
          %317 = index.ceildivu %c11, %c1
          %318 = arith.shrsi %c1736531491_i32, %c1054803254_i32 : i32
          %319 = arith.ori %c660249233_i32, %c1054803254_i32 : i32
          %320 = arith.ori %true, %true_21 : i1
          scf.yield
        }
        case 2 {
          %307 = index.maxu %c14, %51
          %collapsed_47 = tensor.collapse_shape %10 [[0, 1]] : tensor<1x6xi16> into tensor<6xi16>
          %308 = tensor.empty(%c6, %51) : tensor<?x?xi16>
          %309 = vector.broadcast %c1054803254_i32 : i32 to vector<6xi32>
          %dest_48, %accumulated_value_49 = vector.scan <minui>, %55, %309 {inclusive = true, reduction_dim = 0 : i64} : vector<1x6xi32>, vector<6xi32>
          %310 = math.ipowi %19, %19 : tensor<i64>
          %311 = arith.remf %cst, %cst_1 : f32
          %312 = math.log2 %cst_3 : f16
          %313 = affine.max affine_map<(d0, d1, d2, d3) -> ((d2 + d2 mod 2) * -2, d2 ceildiv 4)>(%c3, %275, %c6, %c9)
          %expanded_50 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<7x7xf16> into tensor<7x7x1xf16>
          %314 = index.maxu %28, %c10
          %315 = arith.addf %cst_3, %cst_3 : f16
          %316 = index.mul %c12, %c11
          %317 = arith.maxui %c660249233_i32, %c1736531491_i32 : i32
          %318 = tensor.empty() : tensor<1xi32>
          %319 = math.fpowi %12, %318 : tensor<1xf32>, tensor<1xi32>
          %320 = math.round %7 : tensor<7xf32>
          %321 = tensor.empty() : tensor<7x7xi32>
          %322 = math.fpowi %1, %321 : tensor<7x7xf32>, tensor<7x7xi32>
          scf.yield
        }
        case 3 {
          %false_47 = index.bool.constant false
          %307 = index.sub %c1, %c6
          %308 = math.tanh %0 : tensor<1x6xf32>
          %309 = memref.load %alloc_16[%c0, %c0] : memref<1x6xi16>
          %310 = math.log1p %15 : tensor<7xf16>
          %311 = math.copysign %15, %15 : tensor<7xf16>
          %312 = vector.load %alloc_5[%c0, %c2] : memref<1x6xi16>, vector<7xi16>
          %313 = vector.create_mask %c0 : vector<1xi1>
          %314 = arith.ori %true_21, %true_21 : i1
          %315 = arith.maxf %cst_0, %cst : f32
          %316 = math.log %cst_3 : f16
          %alloc_48 = memref.alloc() : memref<7x7xi16>
          memref.copy %alloc_7, %alloc_48 : memref<7x7xi16> to memref<7x7xi16>
          memref.tensor_store %7, %alloc_17 : memref<7xf32>
          %317 = math.tanh %15 : tensor<7xf16>
          %318 = arith.remui %c7789_i16, %c-17923_i16 : i16
          %319 = arith.minf %cst_0, %cst_1 : f32
          scf.yield
        }
        default {
          memref.copy %74, %alloc_6 : memref<1x6xi64> to memref<1x6xi64>
          %307 = arith.negf %cst_4 : f32
          %308 = math.copysign %1, %1 : tensor<7x7xf32>
          %309 = affine.max affine_map<(d0, d1, d2) -> (-d2, d2 - d0)>(%275, %c3, %c3)
          %false_47 = index.bool.constant false
          %310 = affine.max affine_map<(d0, d1) -> (d1 ceildiv 8)>(%28, %c2)
          %extracted = tensor.extract %transposed[%c3, %c0] : tensor<6x1xi16>
          %311 = arith.maxsi %in, %in_44 : i64
          %312 = index.maxu %c14, %c15
          %313 = math.rsqrt %2 : tensor<7x7xf16>
          %314 = math.sqrt %7 : tensor<7xf32>
          %315 = arith.muli %in_44, %c2054069192_i64 : i64
          %316 = affine.load %alloc_8[%c3] : memref<1xi1>
          %317 = vector.extract_strided_slice %20 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
          %318 = vector.broadcast %cst : f32 to vector<1x6xf32>
          %319 = vector.fma %318, %318, %318 : vector<1x6xf32>
          %320 = arith.minf %cst_2, %cst_4 : f32
        }
        %279 = vector.splat %c30435_i16 : vector<7xi16>
        %280 = arith.shrui %c2054069192_i64, %in_43 : i64
        %281 = arith.addi %c-15831_i16, %c-17923_i16 : i16
        %282 = tensor.empty() : tensor<1x6xi16>
        %mapped_46 = linalg.map ins(%13, %13, %10 : tensor<1x6xi16>, tensor<1x6xi16>, tensor<1x6xi16>) outs(%282 : tensor<1x6xi16>)
          (%in_47: i16, %in_48: i16, %in_49: i16) {
            %307 = math.round %2 : tensor<7x7xf16>
            %308 = arith.shli %true, %true_21 : i1
            %309 = tensor.empty() : tensor<7x7xi32>
            %310 = math.fpowi %2, %309 : tensor<7x7xf16>, tensor<7x7xi32>
            %311 = index.add %75, %c0
            %312 = math.rsqrt %2 : tensor<7x7xf16>
            %313 = bufferization.clone %alloc_11 : memref<1x6xf32> to memref<1x6xf32>
            %314 = vector.bitcast %54 : vector<7x7xi1> to vector<7x7xi1>
            %315 = vector.load %alloc_8[%c0] : memref<1xi1>, vector<7x7xi1>
            memref.store %cst_1, %alloc_17[%c3] : memref<7xf32>
            %316 = math.fpowi %15, %14 : tensor<7xf16>, tensor<7xi32>
            %317 = math.expm1 %15 : tensor<7xf16>
            %318 = index.sub %c10, %75
            %319 = arith.negf %cst_4 : f32
            %320 = index.add %318, %51
            %321 = arith.divui %true_21, %true_21 : i1
            %322 = vector.splat %cst_3 : vector<1xf16>
            %323 = index.sizeof
            %324 = vector.broadcast %c30435_i16 : i16 to vector<i16>
            vector.transfer_write %324, %alloc_7[%c15, %75] : vector<i16>, memref<7x7xi16>
            %325 = arith.maxui %c1736531491_i32, %c1736531491_i32 : i32
            %326 = math.round %cst_4 : f32
            %327 = arith.subi %c30435_i16, %c7789_i16 : i16
            %328 = math.log1p %1 : tensor<7x7xf32>
            %329 = math.ipowi %c660249233_i32, %c1736531491_i32 : i32
            %330 = arith.divui %72, %true : i1
            %331 = math.roundeven %1 : tensor<7x7xf32>
            %alloc_50 = memref.alloc() : memref<7x7xi64>
            memref.tensor_store %6, %alloc_50 : memref<7x7xi64>
            %from_elements_51 = tensor.from_elements %cst_4, %cst_0, %cst, %cst_1, %cst, %cst_4, %cst : tensor<7xf32>
            %332 = arith.maxf %cst_4, %cst_4 : f32
            %333 = arith.andi %in, %c2054069192_i64 : i64
            %334 = index.divu %c14, %c9
            %335 = math.expm1 %cst : f32
            %336 = vector.multi_reduction <or>, %55, %63 [1] : vector<1x6xi32> to vector<1xi32>
            %c0_i16 = arith.constant 0 : i16
            linalg.yield %c0_i16 : i16
          }
        %283 = arith.maxui %true_21, %true : i1
        %284 = math.floor %cst_3 : f16
        %285 = math.absf %7 : tensor<7xf32>
        %286 = vector.multi_reduction <minui>, %49, %72 [0] : vector<1xi1> to i1
        memref.tensor_store %13, %alloc_16 : memref<1x6xi16>
        %287 = bufferization.to_memref %11 : memref<1xi16>
        %288 = scf.execute_region -> tensor<7x7xf32> {
          %307 = math.sqrt %0 : tensor<1x6xf32>
          %308 = bufferization.to_tensor %alloc_13 : memref<1x6xf32>
          %309 = index.ceildivs %275, %48
          %310 = math.round %15 : tensor<7xf16>
          %311 = tensor.empty() : tensor<1x1xi16>
          %312 = linalg.matmul ins(%282, %transposed : tensor<1x6xi16>, tensor<6x1xi16>) outs(%311 : tensor<1x1xi16>) -> tensor<1x1xi16>
          %313 = vector.splat %c2 : vector<1x6xindex>
          %314 = index.divu %c0, %c11
          %expanded_47 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<1x6xi16> into tensor<1x6x1xi16>
          %315 = arith.minui %true_21, %286 : i1
          %316 = vector.splat %c-17923_i16 : vector<1x6xi16>
          vector.print %57 : vector<7xf32>
          %317 = math.exp2 %1 : tensor<7x7xf32>
          %318 = vector.outerproduct %59, %59, %53 {kind = #vector.kind<minsi>} : vector<7xi32>, vector<7xi32>
          %319 = vector.multi_reduction <minui>, %55, %36 [] : vector<1x6xi32> to vector<1x6xi32>
          %320 = math.round %7 : tensor<7xf32>
          %dest_48, %accumulated_value_49 = vector.scan <mul>, %53, %59 {inclusive = false, reduction_dim = 0 : i64} : vector<7x7xi32>, vector<7xi32>
          scf.yield %1 : tensor<7x7xf32>
        }
        %289 = tensor.empty() : tensor<3x3x3xf32>
        %290 = tensor.empty() : tensor<3x3xf32>
        %291 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%290, %290 : tensor<3x3xf32>, tensor<3x3xf32>) outs(%289 : tensor<3x3x3xf32>) {
        ^bb0(%in_47: f32, %in_48: f32, %out: f32):
          %307 = math.sqrt %12 : tensor<1xf32>
          %308 = arith.remf %cst_2, %cst_0 : f32
          %309 = vector.multi_reduction <add>, %53, %53 [] : vector<7x7xi32> to vector<7x7xi32>
          %310 = arith.maxsi %c-15831_i16, %c7789_i16 : i16
          %311 = vector.multi_reduction <and>, %58, %58 [] : vector<7xi1> to vector<7xi1>
          %312 = math.ctpop %3 : tensor<1xi64>
          %313 = math.round %12 : tensor<1xf32>
          %314 = index.maxu %c2, %c4
          %315 = math.expm1 %out : f32
          %316 = arith.ori %286, %286 : i1
          %317 = math.tan %12 : tensor<1xf32>
          %318 = arith.minf %cst_4, %cst_4 : f32
          %319 = math.rsqrt %cst_1 : f32
          %320 = math.exp2 %1 : tensor<7x7xf32>
          %321 = arith.mulf %cst_1, %in_48 : f32
          %322 = memref.load %74[%c0, %c1] : memref<1x6xi64>
          %323 = math.log1p %0 : tensor<1x6xf32>
          %324 = tensor.empty() : tensor<6x6xf32>
          %325 = tensor.empty() : tensor<1x6xf32>
          %326 = linalg.matmul ins(%0, %324 : tensor<1x6xf32>, tensor<6x6xf32>) outs(%325 : tensor<1x6xf32>) -> tensor<1x6xf32>
          %327 = vector.broadcast %out : f32 to vector<1x6xf32>
          %328 = vector.fma %327, %327, %327 : vector<1x6xf32>
          %329 = arith.shli %true, %72 : i1
          %330 = index.add %c11, %c2
          %331 = arith.ceildivsi %c157648824_i64, %in : i64
          memref.store %out, %alloc_17[%c2] : memref<7xf32>
          %alloc_49 = memref.alloc() : memref<1x6xi1>
          %332 = vector.gather %alloc_49[%c8, %48] [%53], %54, %54 : memref<1x6xi1>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xi1> into vector<7x7xi1>
          %333 = math.sqrt %12 : tensor<1xf32>
          memref.store %72, %alloc_8[%c0] : memref<1xi1>
          %334 = arith.ceildivsi %c1054803254_i32, %c1736531491_i32 : i32
          %335 = math.expm1 %cst_3 : f16
          %336 = memref.load %alloc_18[%c0] : memref<1xf32>
          %337 = bufferization.clone %alloc_7 : memref<7x7xi16> to memref<7x7xi16>
          %338 = math.exp2 %15 : tensor<7xf16>
          %339 = arith.muli %true, %true_21 : i1
          linalg.yield %in_48 : f32
        } -> tensor<3x3x3xf32>
        %292 = math.ceil %7 : tensor<7xf32>
        %293 = vector.splat %28 : vector<1x6xindex>
        %294 = index.sub %c15, %c11
        %295 = arith.remf %cst_2, %cst : f32
        %296 = index.ceildivs %c6, %c13
        %297 = arith.ori %c1054803254_i32, %c1736531491_i32 : i32
        %298 = tensor.empty() : tensor<7x7xi64>
        %299 = linalg.matmul ins(%16, %6 : tensor<7x7xi64>, tensor<7x7xi64>) outs(%298 : tensor<7x7xi64>) -> tensor<7x7xi64>
        %300 = arith.subi %c1736531491_i32, %c660249233_i32 : i32
        %301 = math.ctpop %6 : tensor<7x7xi64>
        %302 = index.divs %77, %75
        %303 = math.tan %cst : f32
        %304 = arith.shli %72, %286 : i1
        %305 = math.rsqrt %1 : tensor<7x7xf32>
        %306 = index.ceildivu %c9, %c15
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %84 = math.powf %cst_2, %cst_0 : f32
    %85 = math.ipowi %11, %11 : tensor<1xi16>
    %86 = vector.insertelement %c1736531491_i32, %59[%51 : index] : vector<7xi32>
    %87 = math.log %7 : tensor<7xf32>
    %88 = vector.flat_transpose %62 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
    %89 = math.copysign %1, %1 : tensor<7x7xf32>
    %90 = arith.cmpi ugt, %c-17923_i16, %c-15831_i16 : i16
    %91 = math.ctpop %reduced : tensor<i64>
    %92 = math.ctpop %80 : tensor<7xi1>
    %93 = arith.maxf %cst_2, %cst_0 : f32
    %94 = affine.load %alloc_17[%c5] : memref<7xf32>
    %collapsed = tensor.collapse_shape %10 [[0, 1]] : tensor<1x6xi16> into tensor<6xi16>
    %95 = arith.shrsi %c1736531491_i32, %c1054803254_i32 : i32
    %96 = memref.alloca_scope  -> (memref<7xi32>) {
      %275 = arith.subi %c-15831_i16, %c-17923_i16 : i16
      %276 = bufferization.clone %alloc_11 : memref<1x6xf32> to memref<1x6xf32>
      %277 = math.expm1 %cst_3 : f16
      %278 = scf.index_switch %c0 -> tensor<7xf32> 
      case 1 {
        %305 = vector.broadcast %true : i1 to vector<6xi1>
        %306 = vector.maskedload %alloc_8[%c0], %305, %305 : memref<1xi1>, vector<6xi1>, vector<6xi1> into vector<6xi1>
        %307 = arith.negf %cst_2 : f32
        %308 = arith.muli %c-17923_i16, %c-15831_i16 : i16
        %309 = arith.floordivsi %c157648824_i64, %c157648824_i64 : i64
        %310 = math.sqrt %cst_3 : f16
        %dest_46, %accumulated_value_47 = vector.scan <mul>, %53, %59 {inclusive = true, reduction_dim = 0 : i64} : vector<7x7xi32>, vector<7xi32>
        %311 = arith.maxsi %c2054069192_i64, %c157648824_i64 : i64
        %dest_48, %accumulated_value_49 = vector.scan <maxui>, %36, %63 {inclusive = false, reduction_dim = 1 : i64} : vector<1x6xi32>, vector<1xi32>
        %inserted_50 = tensor.insert %cst into %1[%c6, %c2] : tensor<7x7xf32>
        %312 = math.round %cst_1 : f32
        %313 = vector.broadcast %cst_2 : f32 to vector<6xf32>
        %314 = vector.maskedload %alloc_13[%c0, %c4], %305, %313 : memref<1x6xf32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
        %315 = arith.negf %cst_1 : f32
        %316 = vector.broadcast %true_21 : i1 to vector<6x6xi1>
        %317 = vector.outerproduct %305, %306, %316 {kind = #vector.kind<mul>} : vector<6xi1>, vector<6xi1>
        %318 = math.tan %0 : tensor<1x6xf32>
        %319 = math.floor %15 : tensor<7xf16>
        bufferization.dealloc_tensor %6 : tensor<7x7xi64>
        scf.yield %7 : tensor<7xf32>
      }
      case 2 {
        %305 = arith.maxui %c1736531491_i32, %c660249233_i32 : i32
        %expanded_46 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<1x6xi16> into tensor<1x6x1xi16>
        %306 = math.atan %cst_0 : f32
        %307 = math.expm1 %15 : tensor<7xf16>
        %308 = arith.mulf %94, %cst_1 : f32
        %309 = vector.multi_reduction <and>, %88, %88 [] : vector<1xi64> to vector<1xi64>
        %inserted_47 = tensor.insert %cst_3 into %2[%c6, %c6] : tensor<7x7xf16>
        %310 = math.rsqrt %0 : tensor<1x6xf32>
        %311 = memref.load %alloc_16[%c0, %c2] : memref<1x6xi16>
        %312 = arith.minui %c660249233_i32, %c1736531491_i32 : i32
        %313 = arith.remf %cst_2, %94 : f32
        %314 = vector.broadcast %c1 : index to vector<6xindex>
        %315 = vector.broadcast %true : i1 to vector<6xi1>
        %316 = vector.broadcast %cst_3 : f16 to vector<6xf16>
        vector.scatter %alloc_15[%c0] [%314], %315, %316 : memref<7xf16>, vector<6xindex>, vector<6xi1>, vector<6xf16>
        %317 = affine.load %alloc_13[%c4, %c13] : memref<1x6xf32>
        %alloca = memref.alloca() : memref<7xi64>
        %318 = math.tanh %cst_2 : f32
        %319 = math.expm1 %7 : tensor<7xf32>
        scf.yield %7 : tensor<7xf32>
      }
      case 3 {
        %305 = affine.max affine_map<(d0, d1, d2, d3) -> (-d0 - (-d0 + 16), -d0 - 2, -d0, d2)>(%c9, %c13, %75, %c6)
        %306 = index.maxs %c14, %c6
        %307 = arith.remf %cst_1, %94 : f32
        vector.print %60 : vector<7xf32>
        %308 = arith.muli %c1736531491_i32, %c660249233_i32 : i32
        %309 = arith.remui %72, %72 : i1
        %extracted = tensor.extract %15[%c3] : tensor<7xf16>
        %310 = bufferization.clone %alloc_10 : memref<1x6xf32> to memref<1x6xf32>
        %311 = arith.negf %cst_1 : f32
        %312 = index.maxu %c14, %c7
        %313 = affine.load %alloc_23[%c6] : memref<1xi64>
        memref.tensor_store %1, %alloc_9 : memref<7x7xf32>
        %314 = arith.ceildivsi %c1054803254_i32, %c660249233_i32 : i32
        %315 = math.log10 %12 : tensor<1xf32>
        %alloc_46 = memref.alloc() : memref<6xi16>
        memref.tensor_store %collapsed, %alloc_46 : memref<6xi16>
        %316 = math.copysign %12, %12 : tensor<1xf32>
        scf.yield %7 : tensor<7xf32>
      }
      default {
        %305 = index.casts %c1054803254_i32 : i32 to index
        %306 = math.tanh %0 : tensor<1x6xf32>
        memref.store %c2054069192_i64, %74[%c0, %c0] : memref<1x6xi64>
        %307 = arith.maxf %cst_1, %cst_1 : f32
        %308 = math.fpowi %7, %14 : tensor<7xf32>, tensor<7xi32>
        %309 = math.log1p %cst : f32
        %310 = math.sqrt %cst_4 : f32
        %311 = memref.atomic_rmw assign %cst_0, %276[%c0, %c2] : (f32, memref<1x6xf32>) -> f32
        %312 = arith.divui %c1054803254_i32, %c660249233_i32 : i32
        %313 = arith.remf %cst_2, %cst_4 : f32
        %314 = math.tan %cst_4 : f32
        %315 = math.rsqrt %2 : tensor<7x7xf16>
        %316 = vector.broadcast %true : i1 to vector<i1>
        %317 = vector.transfer_write %316, %4[%c6] : vector<i1>, tensor<7xi1>
        %318 = vector.bitcast %36 : vector<1x6xi32> to vector<1x6xi32>
        %319 = math.sqrt %cst_4 : f32
        %320 = vector.broadcast %true_21 : i1 to vector<i1>
        %321 = vector.transfer_write %320, %21[%c10] : vector<i1>, tensor<7xi1>
        scf.yield %7 : tensor<7xf32>
      }
      %279 = vector.load %alloc_10[%c0, %c2] : memref<1x6xf32>, vector<1xf32>
      %280 = arith.cmpf olt, %cst_4, %94 : f32
      %alloc_43 = memref.alloc() : memref<1xi16>
      memref.tensor_store %11, %alloc_43 : memref<1xi16>
      vector.print %36 : vector<1x6xi32>
      %281 = index.sub %c14, %75
      %282 = math.atan %0 : tensor<1x6xf32>
      memref.copy %alloc_16, %alloc_5 : memref<1x6xi16> to memref<1x6xi16>
      %283 = math.ctpop %c-17923_i16 : i16
      %284 = arith.ori %c157648824_i64, %c2054069192_i64 : i64
      %285 = arith.remui %72, %72 : i1
      %286 = vector.splat %c2 : vector<7xindex>
      %287 = math.round %cst_2 : f32
      %288 = math.log1p %cst_0 : f32
      %289 = math.ceil %15 : tensor<7xf16>
      %290 = arith.mulf %94, %cst_2 : f32
      %291 = math.ctpop %9 : tensor<7x7xi1>
      %292 = tensor.empty() : tensor<6x1xf32>
      %293 = tensor.empty() : tensor<1x1xf32>
      %294 = linalg.matmul ins(%0, %292 : tensor<1x6xf32>, tensor<6x1xf32>) outs(%293 : tensor<1x1xf32>) -> tensor<1x1xf32>
      %295 = arith.remf %cst_2, %cst : f32
      %296 = index.divs %c8, %c1
      %297 = memref.alloca_scope  -> (f32) {
        %extracted = tensor.extract %2[%c1, %c3] : tensor<7x7xf16>
        %305 = arith.muli %c1736531491_i32, %c1054803254_i32 : i32
        %306 = arith.addf %cst_0, %94 : f32
        %307 = math.tanh %cst_3 : f16
        %308 = math.exp2 %94 : f32
        %309 = math.round %2 : tensor<7x7xf16>
        %310 = math.ctpop %72 : i1
        %311 = arith.addf %94, %cst_0 : f32
        %312 = vector.splat %c660249233_i32 : vector<7xi32>
        %inserted_46 = tensor.insert %cst_2 into %0[%c0, %c4] : tensor<1x6xf32>
        %alloca = memref.alloca() : memref<7xi64>
        %313 = index.sub %75, %48
        %314 = math.rsqrt %cst : f32
        %315 = arith.shrsi %c660249233_i32, %c1054803254_i32 : i32
        %316 = memref.atomic_rmw muli %c157648824_i64, %74[%c0, %c2] : (i64, memref<1x6xi64>) -> i64
        %317 = math.tan %15 : tensor<7xf16>
        %318 = index.divs %c3, %c9
        %319 = arith.mulf %cst, %cst_1 : f32
        %320 = arith.minui %c1054803254_i32, %c660249233_i32 : i32
        %321 = arith.cmpi uge, %c2054069192_i64, %c157648824_i64 : i64
        %inserted_47 = tensor.insert %c1736531491_i32 into %5[%c0, %c3] : tensor<1x6xi32>
        %322 = arith.minui %c7789_i16, %c30435_i16 : i16
        %alloc_48 = memref.alloc() : memref<7xi1>
        memref.tensor_store %80, %alloc_48 : memref<7xi1>
        %alloca_49 = memref.alloca() : memref<7x7xf32>
        %323 = vector.reduction <xor>, %49 : vector<1xi1> into i1
        %324 = math.atan %cst_4 : f32
        %325 = arith.maxsi %c2054069192_i64, %c2054069192_i64 : i64
        %326 = math.atan %cst_2 : f32
        %327 = vector.insertelement %c660249233_i32, %63[%c13 : index] : vector<1xi32>
        %328 = vector.broadcast %cst_1 : f32 to vector<1xf32>
        %329 = vector.fma %328, %328, %20 : vector<1xf32>
        %330 = bufferization.clone %alloc_8 : memref<1xi1> to memref<1xi1>
        %331 = vector.insertelement %c2054069192_i64, %62[%51 : index] : vector<1xi64>
        memref.alloca_scope.return %cst_0 : f32
      }
      %298 = index.ceildivs %c10, %c9
      %299 = index.maxs %c12, %51
      %300 = arith.ori %c660249233_i32, %c1736531491_i32 : i32
      %cast_44 = tensor.cast %11 : tensor<1xi16> to tensor<?xi16>
      %301 = math.atan %12 : tensor<1xf32>
      %302 = vector.load %alloc_9[%c5, %c0] : memref<7x7xf32>, vector<7xf32>
      %303 = index.casts %c4 : index to i32
      %304 = arith.mulf %cst_1, %297 : f32
      %alloc_45 = memref.alloc() : memref<7xi32>
      memref.alloca_scope.return %alloc_45 : memref<7xi32>
    }
    %97 = math.round %7 : tensor<7xf32>
    %98 = vector.multi_reduction <and>, %64, %c157648824_i64 [0] : vector<1xi64> to i64
    %99 = vector.maskedload %alloc_8[%c0], %58, %58 : memref<1xi1>, vector<7xi1>, vector<7xi1> into vector<7xi1>
    %100 = memref.load %74[%c0, %c1] : memref<1x6xi64>
    %101 = vector.broadcast %c660249233_i32 : i32 to vector<1x1xi32>
    %102 = vector.outerproduct %63, %63, %101 {kind = #vector.kind<minsi>} : vector<1xi32>, vector<1xi32>
    %103 = arith.remf %cst_0, %94 : f32
    %104 = arith.minf %cst_2, %94 : f32
    %105 = arith.subi %c660249233_i32, %c660249233_i32 : i32
    %106 = math.tan %94 : f32
    vector.print %99 : vector<7xi1>
    %107 = vector.maskedload %96[%c2], %49, %63 : memref<7xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
    memref.store %cst_3, %alloc_14[%c0] : memref<1xf16>
    %108 = math.sqrt %cst_1 : f32
    %cast = tensor.cast %15 : tensor<7xf16> to tensor<?xf16>
    %109 = affine.max affine_map<(d0, d1) -> (d1, -d1 - d0 + 2, -(d0 floordiv 8), -(d1 + 2))>(%51, %c12)
    %110 = arith.remf %cst, %cst_4 : f32
    %from_elements = tensor.from_elements %c30435_i16, %c30435_i16, %c30435_i16, %c30435_i16, %c-15831_i16, %c7789_i16, %c-15831_i16, %c-15831_i16, %c7789_i16, %c-15831_i16, %c7789_i16, %c30435_i16, %c7789_i16, %c-17923_i16, %c-17923_i16, %c7789_i16, %c30435_i16, %c7789_i16, %c7789_i16, %c-17923_i16, %c30435_i16, %c-15831_i16, %c30435_i16, %c-15831_i16, %c30435_i16, %c30435_i16, %c-17923_i16, %c-15831_i16, %c30435_i16, %c-17923_i16, %c30435_i16, %c-17923_i16, %c7789_i16, %c7789_i16, %c-15831_i16, %c-15831_i16, %c30435_i16, %c30435_i16, %c7789_i16, %c-17923_i16, %c-17923_i16, %c-17923_i16, %c30435_i16, %c-17923_i16, %c-17923_i16, %c30435_i16, %c-15831_i16, %c-17923_i16, %c-17923_i16 : tensor<7x7xi16>
    %111 = vector.extract %99[5] : vector<7xi1>
    %112 = math.ipowi %c1054803254_i32, %c660249233_i32 : i32
    %113 = math.tan %2 : tensor<7x7xf16>
    %114 = vector.broadcast %72 : i1 to vector<1x1xi1>
    %115 = vector.outerproduct %49, %49, %114 {kind = #vector.kind<or>} : vector<1xi1>, vector<1xi1>
    memref.store %cst_0, %alloc[%c0, %c2] : memref<1x6xf32>
    %116 = arith.addf %cst_0, %94 : f32
    %true_25 = index.bool.constant true
    %117 = arith.minsi %c7789_i16, %c7789_i16 : i16
    %118 = bufferization.clone %alloc_6 : memref<1x6xi64> to memref<1x6xi64>
    %119 = vector.load %96[%c5] : memref<7xi32>, vector<7x7xi32>
    %120 = bufferization.clone %alloc_8 : memref<1xi1> to memref<1xi1>
    %121 = vector.broadcast %c9 : index to vector<1xindex>
    %122 = vector.broadcast %c7789_i16 : i16 to vector<1xi16>
    vector.scatter %alloc_16[%c0, %c0] [%121], %49, %122 : memref<1x6xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
    %from_elements_26 = tensor.from_elements %cst, %cst_1, %cst_2, %cst_2, %cst_4, %cst_2 : tensor<1x6xf32>
    %123 = vector.transpose %52, [1, 0] : vector<7x7xi1> to vector<7x7xi1>
    %124 = vector.insert %94, %57 [0] : f32 into vector<7xf32>
    %125 = arith.maxui %98, %c2054069192_i64 : i64
    %126 = vector.insertelement %true_21, %99[%c14 : index] : vector<7xi1>
    vector.print %49 : vector<1xi1>
    affine.store %cst_0, %alloc[%c3, %c7] : memref<1x6xf32>
    %127 = vector.broadcast %c157648824_i64 : i64 to vector<3xi64>
    %128 = vector.broadcast %true : i1 to vector<3xi1>
    %129 = vector.maskedload %alloc_23[%c0], %128, %127 : memref<1xi64>, vector<3xi1>, vector<3xi64> into vector<3xi64>
    memref.tensor_store %10, %alloc_5 : memref<1x6xi16>
    %130 = memref.load %alloc_16[%c0, %c1] : memref<1x6xi16>
    %131 = vector.broadcast %cst_1 : f32 to vector<3xf32>
    %132 = vector.maskedload %alloc_17[%c0], %128, %131 : memref<7xf32>, vector<3xi1>, vector<3xf32> into vector<3xf32>
    %133 = math.round %cst_0 : f32
    %134 = math.rsqrt %2 : tensor<7x7xf16>
    %135 = memref.atomic_rmw addf %cst_3, %alloc_15[%c2] : (f16, memref<7xf16>) -> f16
    %136 = math.ctpop %5 : tensor<1x6xi32>
    %137 = arith.subi %c-17923_i16, %c7789_i16 : i16
    %138 = tensor.empty() : tensor<3x3x3xf32>
    %alloc_27 = memref.alloc() : memref<3xf32>
    %alloc_28 = memref.alloc() : memref<3x3xf32>
    %139 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_27, %alloc_28 : memref<3xf32>, memref<3x3xf32>) outs(%138 : tensor<3x3x3xf32>) {
    ^bb0(%in: f32, %in_43: f32, %out: f32):
      %275 = math.copysign %12, %12 : tensor<1xf32>
      %276 = vector.bitcast %99 : vector<7xi1> to vector<7xi1>
      %277 = math.absi %6 : tensor<7x7xi64>
      %278 = math.rsqrt %94 : f32
      memref.assume_alignment %alloc_19, 1 : memref<7xf32>
      scf.index_switch %c15 
      case 1 {
        %304 = vector.extract_strided_slice %20 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
        %305 = math.fpowi %0, %5 : tensor<1x6xf32>, tensor<1x6xi32>
        memref.store %cst_0, %alloc_13[%c0, %c0] : memref<1x6xf32>
        %306 = arith.ori %c157648824_i64, %c157648824_i64 : i64
        %307 = arith.shrsi %true, %72 : i1
        %308 = arith.addf %out, %out : f32
        %309 = arith.ori %c-17923_i16, %c7789_i16 : i16
        %310 = vector.broadcast %c1054803254_i32 : i32 to vector<6xi32>
        %dest_46, %accumulated_value_47 = vector.scan <mul>, %36, %310 {inclusive = true, reduction_dim = 0 : i64} : vector<1x6xi32>, vector<6xi32>
        %311 = tensor.empty() : tensor<7x7xi64>
        %312 = math.expm1 %7 : tensor<7xf32>
        %313 = arith.mulf %cst_2, %out : f32
        %314 = arith.addi %c7789_i16, %c30435_i16 : i16
        %315 = vector.bitcast %57 : vector<7xf32> to vector<7xf32>
        memref.copy %120, %alloc_8 : memref<1xi1> to memref<1xi1>
        %316 = index.divs %48, %c2
        %317 = arith.negf %cst : f32
        scf.yield
      }
      case 2 {
        %304 = arith.remf %cst_3, %cst_3 : f16
        %305 = math.round %94 : f32
        %306 = arith.floordivsi %c-17923_i16, %c-17923_i16 : i16
        %307 = math.atan %cst_4 : f32
        %308 = memref.load %alloc_9[%c2, %c4] : memref<7x7xf32>
        %309 = math.tanh %7 : tensor<7xf32>
        %310 = bufferization.clone %alloc_12 : memref<7xf32> to memref<7xf32>
        %311 = vector.outerproduct %59, %59, %119 {kind = #vector.kind<maxui>} : vector<7xi32>, vector<7xi32>
        %312 = arith.shli %c157648824_i64, %c2054069192_i64 : i64
        %313 = math.expm1 %cst_0 : f32
        %314 = vector.broadcast %cst_2 : f32 to vector<7x7xf32>
        %315 = vector.fma %314, %314, %314 : vector<7x7xf32>
        %316 = math.round %2 : tensor<7x7xf16>
        %317 = affine.load %alloc_9[%c8, %c13] : memref<7x7xf32>
        %318 = math.tanh %in : f32
        %rank = tensor.rank %6 : tensor<7x7xi64>
        %319 = math.exp2 %94 : f32
        scf.yield
      }
      case 3 {
        %304 = arith.minf %in_43, %cst_1 : f32
        %305 = math.ipowi %true_25, %true : i1
        %306 = math.roundeven %cst : f32
        %307 = vector.outerproduct %99, %99, %52 {kind = #vector.kind<xor>} : vector<7xi1>, vector<7xi1>
        vector.print %132 : vector<3xf32>
        %false_46 = index.bool.constant false
        %308 = math.powf %in_43, %out : f32
        %309 = index.maxu %c3, %c8
        %310 = vector.broadcast %c1736531491_i32 : i32 to vector<6xi32>
        %dest_47, %accumulated_value_48 = vector.scan <minsi>, %36, %310 {inclusive = true, reduction_dim = 0 : i64} : vector<1x6xi32>, vector<6xi32>
        %alloca = memref.alloca() : memref<1xi1>
        %collapsed_49 = tensor.collapse_shape %8 [[0, 1]] : tensor<7x7xi1> into tensor<49xi1>
        %311 = memref.atomic_rmw minu %98, %alloc_6[%c0, %c2] : (i64, memref<1x6xi64>) -> i64
        %312 = math.atan2 %15, %15 : tensor<7xf16>
        %313 = vector.insertelement %c1054803254_i32, %107[%c2 : index] : vector<1xi32>
        %314 = math.log1p %0 : tensor<1x6xf32>
        %315 = memref.atomic_rmw minu %c-17923_i16, %alloc_16[%c0, %c0] : (i16, memref<1x6xi16>) -> i16
        scf.yield
      }
      default {
        %304 = affine.load %alloc_11[%c3, %c6] : memref<1x6xf32>
        %305 = bufferization.to_memref %cast : memref<?xf16>
        %306 = index.maxs %48, %c5
        %dest_46, %accumulated_value_47 = vector.scan <add>, %53, %59 {inclusive = false, reduction_dim = 1 : i64} : vector<7x7xi32>, vector<7xi32>
        %307 = vector.insertelement %true, %99[%c9 : index] : vector<7xi1>
        %308 = math.round %cst_2 : f32
        %collapsed_48 = tensor.collapse_shape %1 [[0, 1]] : tensor<7x7xf32> into tensor<49xf32>
        %309 = index.sub %48, %c15
        %310 = vector.broadcast %true : i1 to vector<i1>
        vector.transfer_write %310, %alloc_8[%309] : vector<i1>, memref<1xi1>
        %311 = vector.broadcast %cst_4 : f32 to vector<7x7xf32>
        %312 = vector.outerproduct %60, %60, %311 {kind = #vector.kind<maxf>} : vector<7xf32>, vector<7xf32>
        %313 = arith.shrui %c157648824_i64, %c2054069192_i64 : i64
        %314 = math.absf %in_43 : f32
        %315 = arith.ceildivsi %true_21, %true_25 : i1
        %316 = arith.divui %c2054069192_i64, %98 : i64
        memref.store %cst_2, %alloc_17[%c6] : memref<7xf32>
        %317 = math.powf %1, %1 : tensor<7x7xf32>
      }
      %279 = tensor.empty() : tensor<1xi32>
      %280 = math.fpowi %12, %279 : tensor<1xf32>, tensor<1xi32>
      %281 = vector.broadcast %cst_4 : f32 to vector<1x1xf32>
      %282 = vector.outerproduct %20, %20, %281 {kind = #vector.kind<minf>} : vector<1xf32>, vector<1xf32>
      %283 = math.log1p %out : f32
      %284 = math.exp2 %94 : f32
      %285 = index.ceildivu %c2, %c0
      %expanded_44 = tensor.expand_shape %11 [[0, 1]] : tensor<1xi16> into tensor<1x1xi16>
      %286 = arith.andi %true_21, %true_21 : i1
      %287 = vector.extract_strided_slice %59 {offsets = [2], sizes = [5], strides = [1]} : vector<7xi32> to vector<5xi32>
      %288 = math.round %cst_1 : f32
      %289 = math.copysign %cst_2, %cst_4 : f32
      %290 = arith.muli %98, %c157648824_i64 : i64
      %291 = memref.realloc %alloc_15 : memref<7xf16> to memref<1xf16>
      %292 = math.ceil %out : f32
      %293 = vector.load %alloc_8[%c0] : memref<1xi1>, vector<1xi1>
      %294 = math.tan %12 : tensor<1xf32>
      %295 = arith.shli %c30435_i16, %c-17923_i16 : i16
      %296 = arith.remsi %98, %98 : i64
      memref.store %cst_3, %alloc_15[%c3] : memref<7xf16>
      memref.store %cst_1, %alloc_9[%c1, %c4] : memref<7x7xf32>
      %297 = bufferization.clone %alloc_10 : memref<1x6xf32> to memref<1x6xf32>
      %298 = vector.broadcast %cst : f32 to vector<1x1xf32>
      %299 = vector.outerproduct %20, %20, %298 {kind = #vector.kind<maxf>} : vector<1xf32>, vector<1xf32>
      %300 = math.log2 %cst_2 : f32
      %301 = arith.shrui %c7789_i16, %c-17923_i16 : i16
      %302 = math.round %cst_2 : f32
      %303 = arith.addi %c-17923_i16, %c30435_i16 : i16
      %expanded_45 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<1x6xi16> into tensor<1x6x1xi16>
      linalg.yield %in : f32
    } -> tensor<3x3x3xf32>
    %140 = vector.bitcast %57 : vector<7xf32> to vector<7xf32>
    %dest, %accumulated_value = vector.scan <mul>, %36, %107 {inclusive = false, reduction_dim = 1 : i64} : vector<1x6xi32>, vector<1xi32>
    %141 = arith.cmpi slt, %true_25, %true_25 : i1
    %142 = vector.bitcast %127 : vector<3xi64> to vector<3xi64>
    %143 = math.cos %12 : tensor<1xf32>
    %144 = vector.reduction <and>, %64 : vector<1xi64> into i64
    %145 = vector.broadcast %cst_2 : f32 to vector<1x6xf32>
    %146 = vector.fma %145, %145, %145 : vector<1x6xf32>
    %147 = vector.broadcast %cst_1 : f32 to vector<1xf32>
    %148 = vector.transfer_write %147, %0[%c4, %c3] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xf32>, tensor<1x6xf32>
    %149 = math.log1p %7 : tensor<7xf32>
    %150 = index.sub %c4, %c8
    %151 = arith.shrsi %98, %c2054069192_i64 : i64
    %152 = arith.maxf %cst, %94 : f32
    %from_elements_29 = tensor.from_elements %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3 : tensor<1x6xf16>
    %153 = arith.addf %cst_2, %cst_1 : f32
    %expanded = tensor.expand_shape %3 [[0, 1]] : tensor<1xi64> into tensor<1x1xi64>
    %154 = math.atan %1 : tensor<7x7xf32>
    %155 = index.ceildivu %c11, %150
    %156 = affine.max affine_map<(d0, d1, d2, d3) -> (0)>(%75, %c15, %150, %75)
    %157 = math.round %94 : f32
    %158 = arith.addi %c157648824_i64, %c2054069192_i64 : i64
    %159 = index.sub %c14, %51
    %collapsed_30 = tensor.collapse_shape %transposed [[0, 1]] : tensor<6x1xi16> into tensor<6xi16>
    %160 = arith.shli %c30435_i16, %c-15831_i16 : i16
    %161 = vector.multi_reduction <minui>, %52, %99 [0] : vector<7x7xi1> to vector<7xi1>
    %162 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 - d3)>(%c0, %155, %c8, %c12)
    %163 = index.maxs %c13, %51
    %164 = index.casts %c10 : index to i32
    %165 = index.divu %28, %155
    %166 = math.tan %cst_0 : f32
    %167 = tensor.empty() : tensor<7x7xf16>
    %168 = arith.minf %cst_0, %cst_4 : f32
    %169 = index.sizeof
    %170 = vector.multi_reduction <or>, %53, %119 [] : vector<7x7xi32> to vector<7x7xi32>
    %171 = bufferization.to_memref %5 : memref<1x6xi32>
    %172 = math.ceil %1 : tensor<7x7xf32>
    %173 = math.tanh %from_elements_29 : tensor<1x6xf16>
    %174 = vector.broadcast %c2054069192_i64 : i64 to vector<3x3xi64>
    %175 = vector.outerproduct %127, %142, %174 {kind = #vector.kind<xor>} : vector<3xi64>, vector<3xi64>
    %176 = math.powf %1, %1 : tensor<7x7xf32>
    %177 = arith.maxsi %98, %c157648824_i64 : i64
    %178 = arith.shrsi %true_21, %true_25 : i1
    %179 = arith.divui %c1054803254_i32, %c660249233_i32 : i32
    %180 = math.tanh %2 : tensor<7x7xf16>
    %181 = index.add %c7, %162
    %182 = scf.while (%arg3 = %c1054803254_i32) : (i32) -> i32 {
      %275 = arith.negf %cst_1 : f32
      %276 = math.tanh %12 : tensor<1xf32>
      memref.alloca_scope  {
        memref.store %72, %120[%c0] : memref<1xi1>
        %281 = math.ceil %cst_0 : f32
        %282 = index.castu %c15 : index to i32
        %283 = index.sub %181, %155
        %284 = arith.floordivsi %true, %72 : i1
        %285 = math.cos %0 : tensor<1x6xf32>
        %286 = bufferization.to_memref %from_elements_29 : memref<1x6xf16>
        %287 = arith.addi %c30435_i16, %c-15831_i16 : i16
        %288 = math.round %7 : tensor<7xf32>
        %289 = vector.splat %cst : vector<7xf32>
        %290 = arith.divui %c7789_i16, %c30435_i16 : i16
        %291 = math.tan %94 : f32
        %dest_43, %accumulated_value_44 = vector.scan <maxui>, %36, %63 {inclusive = false, reduction_dim = 1 : i64} : vector<1x6xi32>, vector<1xi32>
        memref.store %cst_3, %286[%c0, %c3] : memref<1x6xf16>
        %292 = arith.floordivsi %c-15831_i16, %c-15831_i16 : i16
        %inserted_45 = tensor.insert %72 into %23[] : tensor<i1>
        memref.assume_alignment %120, 1 : memref<1xi1>
        %splat = tensor.splat %c-17923_i16 : tensor<7xi16>
        %293 = arith.remui %true, %true_21 : i1
        %294 = math.ctpop %8 : tensor<7x7xi1>
        %295 = math.ctpop %c30435_i16 : i16
        %c-30337_i16 = arith.constant -30337 : i16
        %296 = arith.minf %cst_2, %cst_2 : f32
        %297 = math.absf %12 : tensor<1xf32>
        %298 = index.sizeof
        %299 = index.divu %c1, %155
        %expanded_46 = tensor.expand_shape %transposed [[0], [1, 2]] : tensor<6x1xi16> into tensor<6x1x1xi16>
        %300 = arith.maxsi %72, %true_21 : i1
        %301 = arith.ori %c660249233_i32, %c1054803254_i32 : i32
        %302 = math.tanh %cst_1 : f32
        %303 = math.copysign %15, %15 : tensor<7xf16>
        %304 = math.fpowi %cst_4, %arg3 : f32, i32
      }
      %277 = vector.shuffle %57, %60 [0, 1, 2, 3, 5, 6, 7, 9, 10, 13] : vector<7xf32>, vector<7xf32>
      %278 = scf.while (%arg4 = %c1736531491_i32) : (i32) -> i32 {
        %281 = tensor.empty() : tensor<6x6xi16>
        %282 = linalg.matmul ins(%18, %10 : tensor<6x1xi16>, tensor<1x6xi16>) outs(%281 : tensor<6x6xi16>) -> tensor<6x6xi16>
        %283 = arith.remf %cst_3, %cst_3 : f16
        %284 = math.ipowi %3, %3 : tensor<1xi64>
        %285 = math.tan %7 : tensor<7xf32>
        %286 = vector.extract %147[0] : vector<1xf32>
        %287 = index.maxu %77, %c6
        %288 = bufferization.to_memref %from_elements_29 : memref<1x6xf16>
        %289 = math.ctlz %16 : tensor<7x7xi64>
        scf.condition(%true_21) %arg4 : i32
      } do {
      ^bb0(%arg4: i32):
        %281 = arith.shrui %c1736531491_i32, %c1736531491_i32 : i32
        %282 = math.sqrt %7 : tensor<7xf32>
        %283 = arith.remsi %true_25, %true : i1
        %284 = bufferization.to_memref %80 : memref<7xi1>
        %285 = index.castu %72 : i1 to index
        %286 = math.exp2 %0 : tensor<1x6xf32>
        %287 = index.maxs %c3, %c14
        %288 = vector.broadcast %cst : f32 to vector<7x7xf32>
        %289 = vector.outerproduct %140, %140, %288 {kind = #vector.kind<maxf>} : vector<7xf32>, vector<7xf32>
        %290 = arith.maxsi %c7789_i16, %c-17923_i16 : i16
        %291 = math.tan %cst_0 : f32
        %292 = index.sub %150, %75
        %293 = math.round %94 : f32
        %294 = vector.multi_reduction <add>, %132, %131 [] : vector<3xf32> to vector<3xf32>
        %295 = math.ctpop %21 : tensor<7xi1>
        %296 = math.sqrt %cst_4 : f32
        %297 = index.ceildivu %c8, %c4
        scf.yield %c1054803254_i32 : i32
      }
      %279 = memref.atomic_rmw mulf %cst_1, %alloc_18[%c0] : (f32, memref<1xf32>) -> f32
      vector.print %140 : vector<7xf32>
      %280 = vector.splat %cst_1 : vector<7xf32>
      scf.condition(%true_25) %c1054803254_i32 : i32
    } do {
    ^bb0(%arg3: i32):
      %275 = arith.subi %c1054803254_i32, %c1054803254_i32 : i32
      %alloca = memref.alloca() : memref<1x6xi32>
      memref.alloca_scope  {
        %289 = math.exp2 %7 : tensor<7xf32>
        %290 = arith.ori %c-17923_i16, %c30435_i16 : i16
        %alloca_43 = memref.alloca() : memref<7xi32>
        %291 = arith.minf %94, %cst_1 : f32
        %rank = tensor.rank %11 : tensor<1xi16>
        %292 = math.rsqrt %7 : tensor<7xf32>
        %293 = tensor.empty() : tensor<7x7xi32>
        %294 = math.fpowi %2, %293 : tensor<7x7xf16>, tensor<7x7xi32>
        %295 = arith.ori %c1736531491_i32, %c1054803254_i32 : i32
        %296 = arith.mulf %cst_0, %cst_4 : f32
        %297 = index.castu %arg3 : i32 to index
        %298 = arith.remf %cst_0, %cst : f32
        %299 = index.maxs %165, %109
        %300 = arith.ori %true_21, %72 : i1
        %301 = bufferization.to_memref %cast : memref<?xf16>
        %302 = vector.splat %c10 : vector<7xindex>
        %303 = math.log1p %0 : tensor<1x6xf32>
        %304 = index.ceildivu %156, %297
        %305 = arith.floordivsi %c30435_i16, %c-15831_i16 : i16
        %306 = tensor.empty() : tensor<7x7xi1>
        %307 = linalg.matmul ins(%8, %8 : tensor<7x7xi1>, tensor<7x7xi1>) outs(%306 : tensor<7x7xi1>) -> tensor<7x7xi1>
        %308 = arith.floordivsi %c7789_i16, %c-15831_i16 : i16
        %309 = arith.shli %arg3, %c1736531491_i32 : i32
        %310 = vector.broadcast %true_25 : i1 to vector<6xi1>
        %311 = vector.maskedload %alloc_8[%c0], %310, %310 : memref<1xi1>, vector<6xi1>, vector<6xi1> into vector<6xi1>
        memref.store %true, %120[%c0] : memref<1xi1>
        %312 = arith.minui %true_21, %true_21 : i1
        %313 = vector.splat %299 : vector<7xindex>
        %314 = index.divu %162, %163
        %315 = math.powf %from_elements_26, %0 : tensor<1x6xf32>
        %316 = index.maxu %159, %c13
        %317 = index.castu %c5 : index to i32
        affine.store %cst_1, %alloc_13[%c14, %c14] : memref<1x6xf32>
        %318 = bufferization.to_memref %5 : memref<1x6xi32>
        %319 = arith.addi %c660249233_i32, %c1054803254_i32 : i32
      }
      %276 = arith.ori %c157648824_i64, %c2054069192_i64 : i64
      %277 = math.round %12 : tensor<1xf32>
      memref.assume_alignment %alloc_8, 8 : memref<1xi1>
      %278 = arith.floordivsi %98, %c2054069192_i64 : i64
      %279 = vector.gather %1[%c7, %c2] [%59], %58, %140 : tensor<7x7xf32>, vector<7xi32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
      %280 = arith.andi %c660249233_i32, %arg3 : i32
      %281 = bufferization.clone %120 : memref<1xi1> to memref<1xi1>
      %282 = math.cos %12 : tensor<1xf32>
      %283 = index.casts %c9 : index to i32
      %284 = vector.broadcast %cst_3 : f16 to vector<7xf16>
      %285 = vector.gather %15[%165] [%59], %99, %284 : tensor<7xf16>, vector<7xi32>, vector<7xi1>, vector<7xf16> into vector<7xf16>
      %286 = vector.insert %c1736531491_i32, %59 [4] : i32 into vector<7xi32>
      memref.tensor_store %14, %96 : memref<7xi32>
      %287 = vector.broadcast %cst_1 : f32 to vector<7x7xf32>
      %288 = vector.fma %287, %287, %287 : vector<7x7xf32>
      scf.yield %c1054803254_i32 : i32
    }
    %183 = tensor.empty() : tensor<1x6xi64>
    %mapped_31 = linalg.map ins(%118, %alloc_6 : memref<1x6xi64>, memref<1x6xi64>) outs(%183 : tensor<1x6xi64>)
      (%in: i64, %in_43: i64) {
        %275 = vector.broadcast %true : i1 to vector<1x1xi1>
        %276 = vector.outerproduct %49, %49, %275 {kind = #vector.kind<minsi>} : vector<1xi1>, vector<1xi1>
        %277 = math.log1p %167 : tensor<7x7xf16>
        %278 = arith.shli %c30435_i16, %c-17923_i16 : i16
        %279 = math.round %cst_4 : f32
        %280 = vector.multi_reduction <minui>, %62, %c157648824_i64 [0] : vector<1xi64> to i64
        %281 = vector.broadcast %c1736531491_i32 : i32 to vector<7xi32>
        %282 = vector.transfer_write %281, %5[%c4, %c9] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi32>, tensor<1x6xi32>
        %283 = math.log10 %cst_4 : f32
        %284 = vector.broadcast %cst_0 : f32 to vector<6xf32>
        %dest_44, %accumulated_value_45 = vector.scan <mul>, %145, %284 {inclusive = false, reduction_dim = 0 : i64} : vector<1x6xf32>, vector<6xf32>
        %285 = math.atan %from_elements_26 : tensor<1x6xf32>
        %286 = vector.broadcast %cst_1 : f32 to vector<6xf32>
        %287 = vector.insert %286, %146 [0] : vector<6xf32> into vector<1x6xf32>
        memref.store %98, %74[%c0, %c0] : memref<1x6xi64>
        %288 = math.fpowi %15, %14 : tensor<7xf16>, tensor<7xi32>
        %289 = arith.remui %c2054069192_i64, %98 : i64
        %290 = vector.insertelement %c2054069192_i64, %129[%c4 : index] : vector<3xi64>
        %291 = math.tan %2 : tensor<7x7xf16>
        %292 = vector.broadcast %cst_0 : f32 to vector<7x7xf32>
        %293 = memref.load %171[%c0, %c2] : memref<1x6xi32>
        %294 = memref.load %alloc_14[%c0] : memref<1xf16>
        %295 = math.tan %from_elements_26 : tensor<1x6xf32>
        %296 = math.log10 %0 : tensor<1x6xf32>
        %297 = bufferization.clone %alloc_17 : memref<7xf32> to memref<7xf32>
        %298 = math.round %167 : tensor<7x7xf16>
        %299 = index.add %c9, %c5
        %300 = vector.bitcast %146 : vector<1x6xf32> to vector<1x6xf32>
        %301 = arith.minui %72, %true : i1
        %302 = math.log1p %2 : tensor<7x7xf16>
        vector.print %58 : vector<7xi1>
        %303 = math.exp2 %15 : tensor<7xf16>
        %false_46 = index.bool.constant false
        %304 = arith.ori %c157648824_i64, %280 : i64
        %305 = arith.floordivsi %true_21, %true_25 : i1
        %306 = math.tan %from_elements_29 : tensor<1x6xf16>
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %184 = arith.shrsi %c1736531491_i32, %c660249233_i32 : i32
    %185 = math.log2 %1 : tensor<7x7xf32>
    %186 = index.sub %75, %109
    %187 = bufferization.to_memref %167 : memref<7x7xf16>
    %188 = math.atan2 %167, %167 : tensor<7x7xf16>
    %189 = tensor.empty() : tensor<7x7xi1>
    %190 = linalg.matmul ins(%9, %9 : tensor<7x7xi1>, tensor<7x7xi1>) outs(%189 : tensor<7x7xi1>) -> tensor<7x7xi1>
    %191 = arith.divui %true_25, %true_21 : i1
    %192 = vector.extract_strided_slice %52 {offsets = [3], sizes = [3], strides = [1]} : vector<7x7xi1> to vector<3x7xi1>
    %193 = arith.floordivsi %true_21, %true : i1
    %194 = vector.broadcast %cst_3 : f16 to vector<6xf16>
    %195 = vector.broadcast %72 : i1 to vector<6xi1>
    %196 = vector.maskedload %alloc_15[%c6], %195, %194 : memref<7xf16>, vector<6xi1>, vector<6xf16> into vector<6xf16>
    %197 = vector.broadcast %94 : f32 to vector<1xf32>
    %198 = vector.fma %197, %20, %197 : vector<1xf32>
    %199 = arith.maxui %true_21, %true_21 : i1
    %200 = math.rsqrt %cst_1 : f32
    %201 = vector.insert %true, %195 [1] : i1 into vector<6xi1>
    %202 = arith.floordivsi %true_25, %72 : i1
    %203 = index.sub %165, %c1
    memref.alloca_scope  {
      %275 = math.copysign %15, %15 : tensor<7xf16>
      %276 = arith.remui %98, %c157648824_i64 : i64
      %277 = math.exp2 %cst : f32
      %278 = affine.load %alloc_5[%c3, %c11] : memref<1x6xi16>
      %279 = arith.maxsi %c7789_i16, %c7789_i16 : i16
      %alloc_43 = memref.alloc() : memref<7x7xi32>
      %280 = vector.broadcast %true : i1 to vector<1x6xi1>
      %281 = vector.gather %alloc_43[%181, %c9] [%36], %280, %36 : memref<7x7xi32>, vector<1x6xi32>, vector<1x6xi1>, vector<1x6xi32> into vector<1x6xi32>
      %282 = math.log10 %cst : f32
      %283 = math.round %cst_4 : f32
      %284 = arith.cmpi ult, %278, %278 : i16
      %285 = arith.addf %94, %cst_0 : f32
      scf.index_switch %c5 
      case 1 {
        %305 = arith.subi %true_25, %72 : i1
        %306 = vector.broadcast %169 : index to vector<3xindex>
        vector.scatter %120[%c0] [%306], %128, %128 : memref<1xi1>, vector<3xindex>, vector<3xi1>, vector<3xi1>
        %307 = vector.broadcast %c2054069192_i64 : i64 to vector<3xi64>
        vector.transfer_write %307, %118[%156, %c13] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xi64>, memref<1x6xi64>
        %308 = math.fpowi %cst_3, %c660249233_i32 : f16, i32
        %309 = math.rsqrt %cst_1 : f32
        %310 = vector.broadcast %cst_4 : f32 to vector<7xf32>
        %311 = vector.fma %310, %60, %310 : vector<7xf32>
        %312 = memref.atomic_rmw mulf %cst_3, %alloc_15[%c5] : (f16, memref<7xf16>) -> f16
        %313 = vector.broadcast %c30435_i16 : i16 to vector<6xi16>
        %314 = vector.maskedload %alloc_16[%c0, %c4], %195, %313 : memref<1x6xi16>, vector<6xi1>, vector<6xi16> into vector<6xi16>
        %315 = memref.realloc %alloc_19 : memref<7xf32> to memref<1xf32>
        %316 = math.log10 %cst_1 : f32
        %317 = vector.broadcast %true_21 : i1 to vector<6x6xi1>
        %318 = vector.outerproduct %195, %195, %317 {kind = #vector.kind<minsi>} : vector<6xi1>, vector<6xi1>
        %319 = math.cos %cst_0 : f32
        %320 = arith.floordivsi %c1736531491_i32, %c1736531491_i32 : i32
        %321 = arith.mulf %cst, %94 : f32
        %322 = math.ctpop %8 : tensor<7x7xi1>
        memref.store %cst_2, %alloc_11[%c0, %c0] : memref<1x6xf32>
        scf.yield
      }
      case 2 {
        %305 = memref.atomic_rmw mulf %cst, %alloc_13[%c0, %c3] : (f32, memref<1x6xf32>) -> f32
        %306 = math.rsqrt %2 : tensor<7x7xf16>
        %307 = vector.create_mask %77, %c10 : vector<7x7xi1>
        %308 = arith.remui %c-15831_i16, %c-15831_i16 : i16
        %309 = vector.transpose %132, [0] : vector<3xf32> to vector<3xf32>
        %310 = math.floor %cst_0 : f32
        %311 = vector.extract_strided_slice %129 {offsets = [1], sizes = [2], strides = [1]} : vector<3xi64> to vector<2xi64>
        %312 = vector.broadcast %c11 : index to vector<6xindex>
        vector.scatter %alloc_14[%c0] [%312], %195, %196 : memref<1xf16>, vector<6xindex>, vector<6xi1>, vector<6xf16>
        %true_45 = index.bool.constant true
        memref.assume_alignment %alloc_7, 4 : memref<7x7xi16>
        %313 = math.ctpop %expanded : tensor<1x1xi64>
        %314 = tensor.empty() : tensor<1x1xi64>
        %315 = linalg.matmul ins(%expanded, %expanded : tensor<1x1xi64>, tensor<1x1xi64>) outs(%314 : tensor<1x1xi64>) -> tensor<1x1xi64>
        %316 = arith.minui %true_45, %true : i1
        %317 = index.maxu %c7, %186
        %318 = vector.reduction <add>, %140 : vector<7xf32> into f32
        %319 = arith.negf %cst_0 : f32
        scf.yield
      }
      case 3 {
        %305 = vector.insert %cst_1, %20 [0] : f32 into vector<1xf32>
        %306 = math.copysign %94, %cst : f32
        memref.store %cst_4, %alloc_13[%c0, %c2] : memref<1x6xf32>
        %expanded_45 = tensor.expand_shape %17 [[0], [1, 2]] : tensor<7x7xi64> into tensor<7x7x1xi64>
        %307 = arith.remui %c2054069192_i64, %c2054069192_i64 : i64
        %308 = math.round %cst : f32
        %309 = vector.create_mask %c8, %163 : vector<7x7xi1>
        %310 = vector.broadcast %cst_1 : f32 to vector<7x7xf32>
        %311 = vector.fma %310, %310, %310 : vector<7x7xf32>
        %312 = arith.maxui %true_25, %true_21 : i1
        %313 = math.log %from_elements_26 : tensor<1x6xf32>
        %314 = math.floor %cst_2 : f32
        %315 = math.exp2 %2 : tensor<7x7xf16>
        vector.print %142 : vector<3xi64>
        %316 = vector.insert %c1736531491_i32, %107 [0] : i32 into vector<1xi32>
        %317 = affine.load %alloc_17[%c3] : memref<7xf32>
        %318 = arith.subi %true_25, %true : i1
        scf.yield
      }
      default {
        %305 = math.ipowi %c1054803254_i32, %c1054803254_i32 : i32
        %306 = math.tanh %cst_1 : f32
        %307 = arith.addi %c-15831_i16, %c7789_i16 : i16
        %308 = index.divu %c0, %162
        %309 = arith.maxsi %true, %true_25 : i1
        %cast_45 = tensor.cast %collapsed : tensor<6xi16> to tensor<?xi16>
        %310 = index.maxu %51, %c9
        %311 = tensor.empty() : tensor<6x3xf32>
        %312 = tensor.empty() : tensor<1x3xf32>
        %313 = linalg.matmul ins(%from_elements_26, %311 : tensor<1x6xf32>, tensor<6x3xf32>) outs(%312 : tensor<1x3xf32>) -> tensor<1x3xf32>
        %314 = arith.negf %cst_4 : f32
        %315 = index.maxs %c1, %c14
        %316 = math.round %cst_4 : f32
        %cast_46 = tensor.cast %17 : tensor<7x7xi64> to tensor<?x?xi64>
        %317 = arith.maxui %c2054069192_i64, %98 : i64
        %318 = affine.max affine_map<(d0) -> (1, d0)>(%308)
        %319 = math.expm1 %cst_2 : f32
        %320 = arith.maxsi %c1054803254_i32, %c660249233_i32 : i32
      }
      %286 = vector.broadcast %cst : f32 to vector<1x1xf32>
      %287 = vector.outerproduct %20, %198, %286 {kind = #vector.kind<maxf>} : vector<1xf32>, vector<1xf32>
      %288 = math.sqrt %12 : tensor<1xf32>
      vector.print %131 : vector<3xf32>
      memref.alloca_scope  {
        %305 = affine.max affine_map<(d0, d1) -> (d1 mod 4, ((d0 - d1 mod 4) mod 32) floordiv 4, d1)>(%c1, %186)
        %inserted_45 = tensor.insert %98 into %3[%c0] : tensor<1xi64>
        %306 = vector.insert %94, %140 [0] : f32 into vector<7xf32>
        %307 = bufferization.clone %alloc_18 : memref<1xf32> to memref<1xf32>
        %308 = arith.floordivsi %true, %true : i1
        %309 = math.log1p %94 : f32
        %310 = math.sqrt %15 : tensor<7xf16>
        %311 = math.log %2 : tensor<7x7xf16>
        %312 = arith.minf %cst_3, %cst_3 : f16
        %extracted = tensor.extract %183[%c0, %c5] : tensor<1x6xi64>
        %false_46 = index.bool.constant false
        %313 = affine.load %alloc_11[%c14, %c6] : memref<1x6xf32>
        %314 = math.tan %2 : tensor<7x7xf16>
        %315 = arith.andi %true_21, %false_46 : i1
        %collapsed_47 = tensor.collapse_shape %16 [[0, 1]] : tensor<7x7xi64> into tensor<49xi64>
        %316 = vector.broadcast %cst_1 : f32 to vector<1x6xf32>
        %317 = vector.fma %316, %316, %146 : vector<1x6xf32>
        %alloc_48 = memref.alloc() : memref<1x6xi32>
        memref.copy %171, %alloc_48 : memref<1x6xi32> to memref<1x6xi32>
        %318 = arith.divui %c1736531491_i32, %c660249233_i32 : i32
        %319 = vector.reduction <minf>, %20 : vector<1xf32> into f32
        %320 = math.tan %7 : tensor<7xf32>
        %321 = math.exp2 %15 : tensor<7xf16>
        %322 = memref.atomic_rmw assign %cst_2, %307[%c0] : (f32, memref<1xf32>) -> f32
        %323 = vector.broadcast %98 : i64 to vector<1x1xi64>
        %324 = vector.outerproduct %88, %88, %323 {kind = #vector.kind<or>} : vector<1xi64>, vector<1xi64>
        %325 = arith.negf %cst_3 : f16
        %326 = arith.shli %c-17923_i16, %c-17923_i16 : i16
        %inserted_49 = tensor.insert %cst_0 into %0[%c0, %c2] : tensor<1x6xf32>
        %327 = math.round %cst_0 : f32
        %328 = math.powf %94, %313 : f32
        %329 = arith.subi %c157648824_i64, %c2054069192_i64 : i64
        %330 = arith.cmpi ult, %c-15831_i16, %278 : i16
        %331 = arith.maxsi %true, %true : i1
        %332 = vector.load %120[%c0] : memref<1xi1>, vector<1xi1>
      }
      %289 = arith.addf %cst_0, %cst : f32
      %290 = arith.minf %94, %cst : f32
      %291 = arith.remui %278, %c-15831_i16 : i16
      %292 = math.round %15 : tensor<7xf16>
      %293 = index.castu %c-17923_i16 : i16 to index
      %294 = arith.addf %94, %94 : f32
      %295 = math.tanh %2 : tensor<7x7xf16>
      %296 = arith.addf %cst, %cst_4 : f32
      %297 = index.sub %c0, %c13
      %298 = math.floor %15 : tensor<7xf16>
      %299 = math.copysign %15, %15 : tensor<7xf16>
      %300 = arith.cmpi sgt, %c1736531491_i32, %c1736531491_i32 : i32
      %301 = index.maxs %c13, %186
      %302 = math.copysign %cst_4, %cst : f32
      %303 = math.powf %167, %167 : tensor<7x7xf16>
      %304 = index.ceildivu %c2, %c13
      %collapsed_44 = tensor.collapse_shape %6 [[0, 1]] : tensor<7x7xi64> into tensor<49xi64>
    }
    %204 = affine.load %alloc_23[%c0] : memref<1xi64>
    memref.store %c-15831_i16, %alloc_16[%c0, %c0] : memref<1x6xi16>
    %205 = arith.andi %c660249233_i32, %c1054803254_i32 : i32
    %206 = arith.maxui %c-15831_i16, %c-15831_i16 : i16
    %207 = memref.alloca_scope  -> (memref<7xi16>) {
      %275 = index.maxu %28, %c6
      %276 = arith.remui %72, %true : i1
      %277 = tensor.empty() : tensor<3x3x3xf32>
      %278 = tensor.empty() : tensor<3x3xf32>
      %279 = tensor.empty() : tensor<3xf32>
      %280 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%278, %279, %278 : tensor<3x3xf32>, tensor<3xf32>, tensor<3x3xf32>) outs(%277 : tensor<3x3x3xf32>) {
      ^bb0(%in: f32, %in_46: f32, %in_47: f32, %out: f32):
        %305 = arith.minui %c157648824_i64, %204 : i64
        %306 = arith.cmpi ule, %true_25, %true_21 : i1
        %307 = vector.broadcast %98 : i64 to vector<1x1xi64>
        %308 = vector.outerproduct %62, %88, %307 {kind = #vector.kind<minui>} : vector<1xi64>, vector<1xi64>
        %309 = math.exp2 %7 : tensor<7xf32>
        %310 = arith.shrsi %true, %true_21 : i1
        %311 = math.log10 %cst_2 : f32
        %312 = arith.divsi %72, %72 : i1
        %313 = index.sub %48, %c9
        %314 = arith.shrui %c660249233_i32, %c1054803254_i32 : i32
        %315 = math.expm1 %7 : tensor<7xf32>
        %316 = math.atan %in_47 : f32
        %317 = vector.extract_strided_slice %52 {offsets = [1], sizes = [5], strides = [1]} : vector<7x7xi1> to vector<5x7xi1>
        %318 = arith.cmpi ne, %98, %204 : i64
        %319 = arith.ori %c2054069192_i64, %c2054069192_i64 : i64
        %320 = arith.mulf %in_46, %cst_4 : f32
        %321 = math.expm1 %cst_3 : f16
        %322 = arith.remf %out, %cst_0 : f32
        %323 = vector.insertelement %204, %129[%275 : index] : vector<3xi64>
        %324 = math.round %1 : tensor<7x7xf32>
        %325 = arith.shli %c2054069192_i64, %c2054069192_i64 : i64
        %326 = arith.remf %cst_1, %out : f32
        %327 = index.maxu %c6, %28
        %328 = tensor.empty() : tensor<7x7xi32>
        %329 = math.fpowi %2, %328 : tensor<7x7xf16>, tensor<7x7xi32>
        memref.assume_alignment %120, 8 : memref<1xi1>
        %330 = vector.broadcast %cst_1 : f32 to vector<3xf32>
        %331 = vector.transfer_write %330, %1[%75, %48] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xf32>, tensor<7x7xf32>
        %332 = arith.cmpi ult, %c1736531491_i32, %c1736531491_i32 : i32
        %333 = vector.insertelement %true, %58[%c8 : index] : vector<7xi1>
        %inserted_48 = tensor.insert %72 into %189[%c5, %c0] : tensor<7x7xi1>
        %false_49 = index.bool.constant false
        %334 = vector.reduction <mul>, %140 : vector<7xf32> into f32
        %335 = index.divu %28, %48
        %336 = vector.broadcast %c-15831_i16 : i16 to vector<7xi16>
        %337 = vector.maskedload %alloc_7[%c3, %c6], %58, %336 : memref<7x7xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
        linalg.yield %cst_2 : f32
      } -> tensor<3x3x3xf32>
      %281 = scf.execute_region -> tensor<1xi32> {
        %305 = memref.realloc %96 : memref<7xi32> to memref<1xi32>
        %306 = memref.atomic_rmw maxf %cst_4, %alloc_17[%c6] : (f32, memref<7xf32>) -> f32
        %307 = arith.divui %72, %true_25 : i1
        %308 = index.castu %98 : i64 to index
        %309 = math.sqrt %0 : tensor<1x6xf32>
        %true_46 = index.bool.constant true
        vector.print %194 : vector<6xf16>
        %310 = math.fpowi %cst_0, %c660249233_i32 : f32, i32
        %311 = math.tan %12 : tensor<1xf32>
        %splat = tensor.splat %true : tensor<1x6xi1>
        %312 = vector.splat %c5 : vector<1xindex>
        %313 = index.maxs %c1, %186
        %314 = arith.remf %cst_0, %cst_4 : f32
        %315 = index.casts %75 : index to i32
        %316 = arith.ori %c157648824_i64, %204 : i64
        %317 = vector.maskedload %118[%c0, %c4], %128, %129 : memref<1x6xi64>, vector<3xi1>, vector<3xi64> into vector<3xi64>
        %318 = tensor.empty() : tensor<1xi32>
        scf.yield %318 : tensor<1xi32>
      }
      %282 = index.maxu %186, %162
      %283 = scf.while (%arg3 = %140) : (vector<7xf32>) -> vector<7xf32> {
        %305 = arith.negf %cst_3 : f16
        %cast_46 = tensor.cast %7 : tensor<7xf32> to tensor<?xf32>
        %306 = arith.remui %c30435_i16, %c7789_i16 : i16
        %307 = arith.minf %cst_4, %cst_4 : f32
        %308 = memref.load %alloc[%c0, %c0] : memref<1x6xf32>
        %309 = math.atan2 %cst, %cst_0 : f32
        %310 = math.exp2 %cst_4 : f32
        %311 = memref.load %74[%c0, %c2] : memref<1x6xi64>
        scf.condition(%true_21) %57 : vector<7xf32>
      } do {
      ^bb0(%arg3: vector<7xf32>):
        %305 = arith.shrui %c660249233_i32, %c1736531491_i32 : i32
        %306 = arith.shrsi %true_25, %true_25 : i1
        %307 = arith.floordivsi %c-17923_i16, %c-15831_i16 : i16
        %308 = vector.insert %true, %58 [6] : i1 into vector<7xi1>
        %309 = arith.cmpf oge, %cst_2, %cst : f32
        %310 = memref.atomic_rmw ori %98, %74[%c0, %c3] : (i64, memref<1x6xi64>) -> i64
        %311 = vector.splat %28 : vector<1x6xindex>
        %312 = arith.remf %cst, %cst_4 : f32
        %313 = affine.load %alloc_11[%c9, %c10] : memref<1x6xf32>
        %314 = bufferization.clone %118 : memref<1x6xi64> to memref<1x6xi64>
        %315 = math.log2 %cst_3 : f16
        %316 = bufferization.clone %alloc_6 : memref<1x6xi64> to memref<1x6xi64>
        %317 = arith.cmpi ule, %c2054069192_i64, %204 : i64
        %318 = arith.remui %c660249233_i32, %c660249233_i32 : i32
        %319 = math.log10 %7 : tensor<7xf32>
        %320 = vector.broadcast %true : i1 to vector<1x6xi1>
        %321 = vector.gather %21[%150] [%55], %320, %320 : tensor<7xi1>, vector<1x6xi32>, vector<1x6xi1>, vector<1x6xi1> into vector<1x6xi1>
        scf.yield %60 : vector<7xf32>
      }
      %284 = memref.load %120[%c0] : memref<1xi1>
      vector.print %59 : vector<7xi32>
      %extracted = tensor.extract %3[%c0] : tensor<1xi64>
      affine.store %c-17923_i16, %alloc_5[%c10, %c9] : memref<1x6xi16>
      %expanded_43 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<7x7xi64> into tensor<7x7x1xi64>
      %collapsed_44 = tensor.collapse_shape %183 [[0, 1]] : tensor<1x6xi64> into tensor<6xi64>
      %285 = memref.load %alloc_5[%c0, %c3] : memref<1x6xi16>
      %286 = math.rsqrt %94 : f32
      %287 = vector.bitcast %197 : vector<1xf32> to vector<1xf32>
      %288 = math.tanh %12 : tensor<1xf32>
      %289 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d0 + 32) ceildiv 16 + 32)>(%163, %c10, %282, %c12)
      %290 = arith.cmpf oeq, %cst_3, %cst_3 : f16
      %291 = bufferization.clone %alloc_19 : memref<7xf32> to memref<7xf32>
      %292 = vector.bitcast %196 : vector<6xf16> to vector<6xf16>
      %293 = math.log1p %1 : tensor<7x7xf32>
      %294 = index.add %282, %150
      %295 = arith.divsi %c-15831_i16, %c-17923_i16 : i16
      %296 = math.exp2 %12 : tensor<1xf32>
      %297 = arith.addf %cst_1, %cst_0 : f32
      %298 = math.log1p %1 : tensor<7x7xf32>
      %299 = math.copysign %cst_2, %94 : f32
      %300 = bufferization.clone %120 : memref<1xi1> to memref<1xi1>
      %301 = vector.load %alloc_9[%c5, %c6] : memref<7x7xf32>, vector<7x7xf32>
      %302 = vector.broadcast %51 : index to vector<1xindex>
      vector.scatter %96[%c1] [%302], %49, %107 : memref<7xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
      %303 = math.log10 %0 : tensor<1x6xf32>
      %304 = arith.divsi %c30435_i16, %c-15831_i16 : i16
      %alloc_45 = memref.alloc() : memref<7xi16>
      memref.alloca_scope.return %alloc_45 : memref<7xi16>
    }
    %208 = arith.ori %true_21, %true_21 : i1
    %209 = math.exp2 %94 : f32
    vector.print %198 : vector<1xf32>
    %210 = arith.cmpf uge, %cst_3, %cst_3 : f16
    %211 = arith.mulf %cst_4, %cst_4 : f32
    %expanded_32 = tensor.expand_shape %11 [[0, 1]] : tensor<1xi16> into tensor<1x1xi16>
    %212 = math.tan %2 : tensor<7x7xf16>
    %213 = vector.broadcast %94 : f32 to vector<7xf32>
    %214 = vector.fma %213, %140, %140 : vector<7xf32>
    %alloc_33 = memref.alloc() : memref<1x1xi16>
    memref.tensor_store %expanded_32, %alloc_33 : memref<1x1xi16>
    %215 = vector.broadcast %98 : i64 to vector<1x1xi64>
    %216 = vector.outerproduct %64, %88, %215 {kind = #vector.kind<add>} : vector<1xi64>, vector<1xi64>
    memref.assume_alignment %alloc_23, 1 : memref<1xi64>
    %217 = scf.while (%arg3 = %alloc_11) : (memref<1x6xf32>) -> memref<1x6xf32> {
      %275 = affine.max affine_map<(d0) -> (d0, -d0 + 2, -d0 - 126)>(%c5)
      %276 = math.expm1 %7 : tensor<7xf32>
      %277 = math.rsqrt %1 : tensor<7x7xf32>
      %278 = vector.broadcast %cst_0 : f32 to vector<7x7xf32>
      %279 = vector.outerproduct %140, %57, %278 {kind = #vector.kind<minf>} : vector<7xf32>, vector<7xf32>
      %280 = arith.minui %c1054803254_i32, %c660249233_i32 : i32
      %281 = math.log10 %1 : tensor<7x7xf32>
      %282 = index.ceildivu %186, %c1
      %283 = vector.extract %60[2] : vector<7xf32>
      scf.condition(%true) %alloc : memref<1x6xf32>
    } do {
    ^bb0(%arg3: memref<1x6xf32>):
      %275 = vector.broadcast %cst_4 : f32 to vector<7xf32>
      %276 = vector.fma %275, %60, %140 : vector<7xf32>
      %277 = arith.muli %c30435_i16, %c30435_i16 : i16
      %278 = math.copysign %cst, %cst_0 : f32
      %279 = scf.execute_region -> tensor<1xi16> {
        %293 = arith.minui %c157648824_i64, %c157648824_i64 : i64
        %294 = index.divu %c9, %c1
        %295 = math.tan %12 : tensor<1xf32>
        %296 = arith.muli %c30435_i16, %c-15831_i16 : i16
        %297 = math.log %12 : tensor<1xf32>
        %298 = arith.minui %98, %c157648824_i64 : i64
        %299 = vector.splat %28 : vector<1x6xindex>
        %300 = vector.insert %94, %131 [2] : f32 into vector<3xf32>
        %inserted_44 = tensor.insert %cst_2 into %from_elements_26[%c0, %c4] : tensor<1x6xf32>
        %301 = math.atan2 %2, %2 : tensor<7x7xf16>
        %302 = bufferization.clone %alloc_10 : memref<1x6xf32> to memref<1x6xf32>
        %303 = index.divu %c11, %156
        %304 = index.maxu %155, %75
        %305 = arith.minf %94, %cst : f32
        %false_45 = index.bool.constant false
        %306 = math.exp2 %cst_4 : f32
        scf.yield %11 : tensor<1xi16>
      }
      %280 = math.ctpop %80 : tensor<7xi1>
      %281 = math.expm1 %12 : tensor<1xf32>
      %282 = scf.while (%arg4 = %194) : (vector<6xf16>) -> vector<6xf16> {
        %293 = index.divu %c15, %156
        %alloc_44 = memref.alloc() : memref<7x7xi64>
        memref.tensor_store %6, %alloc_44 : memref<7x7xi64>
        %294 = vector.flat_transpose %107 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %295 = math.log1p %7 : tensor<7xf32>
        %296 = index.sizeof
        %297 = arith.muli %true_25, %true : i1
        %298 = vector.multi_reduction <minf>, %194, %cst_3 [0] : vector<6xf16> to f16
        %299 = math.copysign %cst_3, %cst_3 : f16
        scf.condition(%true) %194 : vector<6xf16>
      } do {
      ^bb0(%arg4: vector<6xf16>):
        %293 = math.absf %12 : tensor<1xf32>
        %294 = arith.remf %cst_4, %cst : f32
        %295 = math.round %from_elements_29 : tensor<1x6xf16>
        %296 = math.atan2 %1, %1 : tensor<7x7xf32>
        %true_44 = index.bool.constant true
        %297 = index.maxs %c13, %c5
        %298 = math.ipowi %21, %4 : tensor<7xi1>
        %299 = memref.realloc %alloc_23 : memref<1xi64> to memref<6xi64>
        %300 = math.ceil %0 : tensor<1x6xf32>
        %301 = arith.cmpi eq, %204, %98 : i64
        %302 = math.cos %15 : tensor<7xf16>
        %303 = vector.extract %119[5] : vector<7x7xi32>
        %304 = vector.multi_reduction <maxsi>, %62, %204 [0] : vector<1xi64> to i64
        memref.tensor_store %14, %96 : memref<7xi32>
        %305 = arith.remf %cst_4, %cst_4 : f32
        %306 = arith.ori %c-17923_i16, %c-17923_i16 : i16
        scf.yield %194 : vector<6xf16>
      }
      %283 = math.ctlz %3 : tensor<1xi64>
      %from_elements_43 = tensor.from_elements %cst_0, %cst, %cst, %cst_1, %cst_0, %cst_0 : tensor<1x6xf32>
      %284 = arith.mulf %cst_1, %94 : f32
      %285 = math.atan %cst_0 : f32
      %286 = tensor.empty() : tensor<3x3x3xf32>
      %287 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%286 : tensor<3x3x3xf32>) {
      ^bb0(%out: f32):
        %293 = vector.transpose %198, [0] : vector<1xf32> to vector<1xf32>
        %294 = arith.divui %true_25, %72 : i1
        %295 = vector.broadcast %cst : f32 to vector<1x1xf32>
        %296 = vector.outerproduct %197, %198, %295 {kind = #vector.kind<mul>} : vector<1xf32>, vector<1xf32>
        %297 = math.log1p %cst_4 : f32
        %298 = vector.load %alloc_19[%c4] : memref<7xf32>, vector<7xf32>
        %rank = tensor.rank %10 : tensor<1x6xi16>
        %299 = arith.divsi %c7789_i16, %c7789_i16 : i16
        %300 = arith.shli %c7789_i16, %c30435_i16 : i16
        %301 = memref.realloc %alloc_23 : memref<1xi64> to memref<6xi64>
        %inserted_44 = tensor.insert %204 into %3[%c0] : tensor<1xi64>
        %302 = memref.atomic_rmw andi %c157648824_i64, %alloc_6[%c0, %c0] : (i64, memref<1x6xi64>) -> i64
        %303 = index.maxu %159, %c8
        memref.tensor_store %10, %alloc_5 : memref<1x6xi16>
        %304 = math.expm1 %167 : tensor<7x7xf16>
        %305 = arith.cmpf ugt, %94, %94 : f32
        %306 = arith.maxui %c157648824_i64, %c157648824_i64 : i64
        %inserted_45 = tensor.insert %c660249233_i32 into %5[%c0, %c3] : tensor<1x6xi32>
        %307 = math.ceil %1 : tensor<7x7xf32>
        %308 = math.floor %0 : tensor<1x6xf32>
        %309 = index.ceildivs %c5, %159
        %310 = vector.broadcast %cst_3 : f16 to vector<6xf16>
        %311 = vector.transfer_write %310, %from_elements_29[%48, %28] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<6xf16>, tensor<1x6xf16>
        %false_46 = index.bool.constant false
        %312 = vector.extract_strided_slice %64 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
        %313 = arith.remsi %98, %204 : i64
        %314 = arith.ceildivsi %c660249233_i32, %c660249233_i32 : i32
        %315 = math.round %15 : tensor<7xf16>
        %316 = bufferization.clone %alloc_19 : memref<7xf32> to memref<7xf32>
        %317 = vector.splat %cst_2 : vector<1x6xf32>
        %expanded_47 = tensor.expand_shape %189 [[0], [1, 2]] : tensor<7x7xi1> into tensor<7x7x1xi1>
        %318 = index.divu %28, %203
        %319 = math.powf %cst_2, %cst : f32
        %320 = math.exp2 %12 : tensor<1xf32>
        linalg.yield %out : f32
      } -> tensor<3x3x3xf32>
      %288 = tensor.empty() : tensor<1xi32>
      %289 = math.fpowi %12, %288 : tensor<1xf32>, tensor<1xi32>
      %290 = math.ctpop %c7789_i16 : i16
      %291 = index.castu %98 : i64 to index
      %292 = arith.ori %c660249233_i32, %c1736531491_i32 : i32
      scf.yield %arg3 : memref<1x6xf32>
    }
    %218 = vector.shuffle %128, %58 [0, 2, 4, 5, 7, 9] : vector<3xi1>, vector<7xi1>
    %219 = affine.load %alloc_5[%c6, %c1] : memref<1x6xi16>
    %220 = math.round %7 : tensor<7xf32>
    %inserted = tensor.insert %c-15831_i16 into %13[%c0, %c5] : tensor<1x6xi16>
    %221 = arith.minsi %true_25, %true_21 : i1
    %222 = math.copysign %15, %15 : tensor<7xf16>
    %223 = arith.subi %c7789_i16, %c7789_i16 : i16
    %224 = math.fpowi %from_elements_26, %5 : tensor<1x6xf32>, tensor<1x6xi32>
    %true_34 = index.bool.constant true
    %225 = math.tan %94 : f32
    %226 = bufferization.clone %171 : memref<1x6xi32> to memref<1x6xi32>
    %alloc_35 = memref.alloc() : memref<1x1xi16>
    memref.tensor_store %expanded_32, %alloc_35 : memref<1x1xi16>
    %227 = index.ceildivu %51, %c2
    %228 = arith.ori %c660249233_i32, %c660249233_i32 : i32
    %229 = vector.broadcast %cst_1 : f32 to vector<1x1xf32>
    %230 = vector.outerproduct %147, %147, %229 {kind = #vector.kind<minf>} : vector<1xf32>, vector<1xf32>
    %231 = math.fma %cst_0, %cst_1, %cst : f32
    %232 = arith.negf %cst : f32
    %generated = tensor.generate %c4, %c13 {
    ^bb0(%arg3: index, %arg4: index):
      %275 = arith.maxui %true_25, %true_25 : i1
      %276 = vector.broadcast %cst_4 : f32 to vector<f32>
      vector.transfer_write %276, %alloc_9[%181, %c11] : vector<f32>, memref<7x7xf32>
      %277 = arith.negf %cst_1 : f32
      %278 = affine.max affine_map<(d0, d1, d2, d3) -> (-(d1 floordiv 64 - d2 * 128))>(%51, %c1, %109, %150)
      tensor.yield %c-15831_i16 : i16
    } : tensor<?x?xi16>
    %233 = vector.transpose %145, [1, 0] : vector<1x6xf32> to vector<6x1xf32>
    %234 = arith.minf %cst_4, %cst_4 : f32
    %235 = math.fpowi %15, %14 : tensor<7xf16>, tensor<7xi32>
    %236 = vector.multi_reduction <minui>, %62, %62 [] : vector<1xi64> to vector<1xi64>
    %237 = math.log2 %7 : tensor<7xf32>
    vector.print %131 : vector<3xf32>
    %238 = memref.atomic_rmw minu %c660249233_i32, %171[%c0, %c4] : (i32, memref<1x6xi32>) -> i32
    scf.execute_region {
      vector.print %198 : vector<1xf32>
      %275 = bufferization.to_memref %12 : memref<1xf32>
      memref.tensor_store %from_elements_26, %alloc_10 : memref<1x6xf32>
      %276 = index.add %169, %c11
      %277 = bufferization.to_memref %collapsed_30 : memref<6xi16>
      %278 = vector.broadcast %72 : i1 to vector<7xi1>
      %279 = vector.transfer_write %278, %9[%c1, %c15] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi1>, tensor<7x7xi1>
      %280 = arith.maxsi %c30435_i16, %c7789_i16 : i16
      %281 = vector.multi_reduction <minsi>, %119, %c660249233_i32 [0, 1] : vector<7x7xi32> to i32
      memref.tensor_store %from_elements_26, %alloc : memref<1x6xf32>
      %282 = bufferization.clone %alloc_5 : memref<1x6xi16> to memref<1x6xi16>
      %283 = math.round %167 : tensor<7x7xf16>
      %284 = math.tan %2 : tensor<7x7xf16>
      %285 = bufferization.to_memref %183 : memref<1x6xi64>
      %286 = arith.remf %94, %cst_1 : f32
      %287 = math.log1p %cst_4 : f32
      %288 = arith.ceildivsi %c157648824_i64, %204 : i64
      scf.yield
    }
    %false = index.bool.constant false
    %239 = math.round %15 : tensor<7xf16>
    %240 = math.log1p %from_elements_29 : tensor<1x6xf16>
    %241 = arith.remui %c157648824_i64, %c157648824_i64 : i64
    %242 = math.log %cst_4 : f32
    %243 = math.rsqrt %1 : tensor<7x7xf32>
    %244 = arith.ceildivsi %72, %true_25 : i1
    %inserted_36 = tensor.insert %c7789_i16 into %18[%c5, %c0] : tensor<6x1xi16>
    %245 = math.expm1 %from_elements_29 : tensor<1x6xf16>
    %expanded_37 = tensor.expand_shape %18 [[0], [1, 2]] : tensor<6x1xi16> into tensor<6x1x1xi16>
    %246 = math.tanh %cst_3 : f16
    %247 = arith.cmpf ule, %cst_2, %cst_4 : f32
    %alloc_38 = memref.alloc() : memref<1x1xi64>
    memref.tensor_store %expanded, %alloc_38 : memref<1x1xi64>
    %248 = math.exp2 %0 : tensor<1x6xf32>
    %249 = arith.ori %c7789_i16, %c30435_i16 : i16
    %250 = arith.shrui %c1054803254_i32, %c660249233_i32 : i32
    %251 = vector.insertelement %true, %99[%c3 : index] : vector<7xi1>
    %252 = index.ceildivs %165, %203
    %253 = arith.negf %94 : f32
    %254 = arith.floordivsi %c660249233_i32, %c1736531491_i32 : i32
    %255 = math.expm1 %12 : tensor<1xf32>
    %256 = index.maxu %159, %c7
    %257 = vector.create_mask %256, %c8 : vector<1x6xi1>
    %258 = arith.remui %false, %true_21 : i1
    %259 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
    %260 = vector.outerproduct %147, %147, %259 {kind = #vector.kind<mul>} : vector<1xf32>, vector<1xf32>
    %261 = index.maxu %181, %c12
    %262 = scf.execute_region -> vector<1x6xf16> {
      %275 = math.log1p %from_elements_29 : tensor<1x6xf16>
      %276 = index.maxs %256, %c4
      %277 = math.sqrt %12 : tensor<1xf32>
      %278 = math.tan %0 : tensor<1x6xf32>
      %279 = index.maxs %163, %c15
      vector.print %58 : vector<7xi1>
      %280 = arith.remsi %c660249233_i32, %c1054803254_i32 : i32
      %281 = arith.minui %72, %true_25 : i1
      %expanded_43 = tensor.expand_shape %from_elements_26 [[0], [1, 2]] : tensor<1x6xf32> into tensor<1x6x1xf32>
      %282 = index.divs %28, %203
      %283 = vector.splat %true_34 : vector<7x7xi1>
      %284 = index.divu %279, %c0
      %285 = math.expm1 %cst_0 : f32
      %286 = vector.multi_reduction <minf>, %214, %cst_1 [0] : vector<7xf32> to f32
      %287 = math.atan %15 : tensor<7xf16>
      %alloc_44 = memref.alloc() : memref<1xi16>
      memref.tensor_store %11, %alloc_44 : memref<1xi16>
      %288 = vector.broadcast %cst_3 : f16 to vector<1x6xf16>
      scf.yield %288 : vector<1x6xf16>
    }
    %inserted_39 = tensor.insert %219 into %generated[%c0, %c0] : tensor<?x?xi16>
    %263 = vector.maskedload %alloc_17[%c1], %58, %213 : memref<7xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
    %c-24803_i16 = arith.constant -24803 : i16
    %264 = index.maxu %150, %c14
    %265 = arith.cmpi ugt, %true_34, %true_34 : i1
    %from_elements_40 = tensor.from_elements %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3 : tensor<1x6xf16>
    %266 = arith.maxui %c-15831_i16, %c-17923_i16 : i16
    %267 = math.round %1 : tensor<7x7xf32>
    %268 = index.casts %c660249233_i32 : i32 to index
    %269 = math.log10 %15 : tensor<7xf16>
    %270 = tensor.empty() : tensor<7xf16>
    %271 = linalg.copy ins(%15 : tensor<7xf16>) outs(%270 : tensor<7xf16>) -> tensor<7xf16>
    %272 = tensor.empty() : tensor<6x1xi16>
    %transposed_41 = linalg.transpose ins(%10 : tensor<1x6xi16>) outs(%272 : tensor<6x1xi16>) permutation = [1, 0] 
    %273 = tensor.empty() : tensor<f32>
    %reduced_42 = linalg.reduce ins(%0 : tensor<1x6xf32>) outs(%273 : tensor<f32>) dimensions = [0, 1] 
      (%in: f32, %init: f32) {
        %275 = index.divs %28, %155
        %collapsed_43 = tensor.collapse_shape %8 [[0, 1]] : tensor<7x7xi1> into tensor<49xi1>
        %276 = math.ipowi %14, %14 : tensor<7xi32>
        %277 = memref.atomic_rmw addf %init, %alloc_17[%c4] : (f32, memref<7xf32>) -> f32
        %278 = math.sqrt %init : f32
        %279 = math.rsqrt %167 : tensor<7x7xf16>
        %inserted_44 = tensor.insert %false into %21[%c6] : tensor<7xi1>
        %280 = math.tan %1 : tensor<7x7xf32>
        %cst_45 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_45 : f32
      }
    scf.parallel (%arg3, %arg4) = (%48, %186) to (%264, %c10) step (%c8, %c11) {
      %275 = arith.shli %c660249233_i32, %c660249233_i32 : i32
      %276 = math.sqrt %reduced_42 : tensor<f32>
      %extracted = tensor.extract %83[%c0] : tensor<1xi64>
      %277 = index.ceildivs %c14, %165
      %278 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%13, %11, %expanded_32 : tensor<1x6xi16>, tensor<1xi16>, tensor<1x1xi16>) outs(%expanded_37 : tensor<6x1x1xi16>) {
      ^bb0(%in: i16, %in_43: i16, %in_44: i16, %out: i16):
        %291 = math.log10 %0 : tensor<1x6xf32>
        %292 = math.powf %7, %7 : tensor<7xf32>
        %293 = math.round %94 : f32
        %alloc_45 = memref.alloc() : memref<i1>
        memref.tensor_store %22, %alloc_45 : memref<i1>
        vector.print %147 : vector<1xf32>
        %294 = arith.remf %cst_4, %cst : f32
        %295 = math.atan2 %0, %0 : tensor<1x6xf32>
        %296 = vector.create_mask %156, %c13 : vector<7x7xi1>
        %297 = arith.ori %c157648824_i64, %c2054069192_i64 : i64
        %298 = vector.broadcast %c1054803254_i32 : i32 to vector<1x1xi32>
        %299 = vector.outerproduct %63, %63, %298 {kind = #vector.kind<mul>} : vector<1xi32>, vector<1xi32>
        %300 = vector.splat %cst : vector<7xf32>
        %301 = vector.bitcast %99 : vector<7xi1> to vector<7xi1>
        %302 = vector.extract_strided_slice %131 {offsets = [0], sizes = [2], strides = [1]} : vector<3xf32> to vector<2xf32>
        %303 = index.ceildivu %162, %203
        %304 = math.ceil %94 : f32
        %305 = vector.broadcast %cst_0 : f32 to vector<7xf32>
        %306 = arith.remui %c30435_i16, %out : i16
        %307 = arith.subi %98, %c2054069192_i64 : i64
        %308 = arith.negf %cst_4 : f32
        %309 = index.maxu %181, %arg3
        %310 = math.exp2 %reduced_42 : tensor<f32>
        %311 = math.atan %cst_0 : f32
        %312 = vector.broadcast %cst_4 : f32 to vector<7x7xf32>
        %313 = vector.outerproduct %214, %140, %312 {kind = #vector.kind<maxf>} : vector<7xf32>, vector<7xf32>
        %314 = vector.multi_reduction <and>, %129, %c2054069192_i64 [0] : vector<3xi64> to i64
        %315 = math.copysign %2, %2 : tensor<7x7xf16>
        %316 = math.roundeven %2 : tensor<7x7xf16>
        %317 = arith.divui %c1054803254_i32, %c1054803254_i32 : i32
        %318 = math.log1p %270 : tensor<7xf16>
        %319 = vector.flat_transpose %194 {columns = 2 : i32, rows = 3 : i32} : vector<6xf16> -> vector<6xf16>
        %false_46 = index.bool.constant false
        %320 = vector.splat %162 : vector<1x6xindex>
        %321 = math.exp2 %7 : tensor<7xf32>
        linalg.yield %in : i16
      } -> tensor<6x1x1xi16>
      %279 = vector.flat_transpose %132 {columns = 3 : i32, rows = 1 : i32} : vector<3xf32> -> vector<3xf32>
      %280 = vector.multi_reduction <or>, %53, %59 [0] : vector<7x7xi32> to vector<7xi32>
      %281 = arith.remsi %c1054803254_i32, %c1736531491_i32 : i32
      %282 = index.ceildivu %arg3, %77
      %283 = math.ctpop %c-17923_i16 : i16
      %284 = scf.while (%arg5 = %198) : (vector<1xf32>) -> vector<1xf32> {
        %291 = math.round %0 : tensor<1x6xf32>
        %292 = index.maxs %arg4, %264
        %293 = vector.create_mask %28, %203 : vector<1x6xi1>
        affine.store %c2054069192_i64, %118[%c1, %c7] : memref<1x6xi64>
        %294 = arith.minf %cst, %cst_0 : f32
        %295 = arith.floordivsi %c-15831_i16, %c-17923_i16 : i16
        %296 = arith.shli %c7789_i16, %c-15831_i16 : i16
        %297 = math.atan %0 : tensor<1x6xf32>
        scf.condition(%false) %20 : vector<1xf32>
      } do {
      ^bb0(%arg5: vector<1xf32>):
        %291 = bufferization.clone %207 : memref<7xi16> to memref<7xi16>
        %292 = index.casts %163 : index to i32
        %293 = memref.realloc %alloc_8 : memref<1xi1> to memref<1xi1>
        %294 = arith.maxsi %extracted, %98 : i64
        %295 = index.divs %77, %252
        %296 = math.expm1 %reduced_42 : tensor<f32>
        %297 = math.log10 %cst_4 : f32
        %298 = bufferization.to_memref %17 : memref<7x7xi64>
        %299 = arith.ori %true_34, %72 : i1
        %300 = arith.andi %true_25, %72 : i1
        %301 = affine.load %alloc_10[%c7, %c14] : memref<1x6xf32>
        vector.print %119 : vector<7x7xi32>
        %302 = arith.xori %c-15831_i16, %219 : i16
        %303 = index.maxu %c14, %c14
        %304 = vector.insertelement %true_34, %128[%arg4 : index] : vector<3xi1>
        %305 = math.atan %270 : tensor<7xf16>
        scf.yield %198 : vector<1xf32>
      }
      %285 = math.atan %0 : tensor<1x6xf32>
      %286 = arith.floordivsi %false, %true_25 : i1
      %287 = arith.cmpi eq, %219, %c-17923_i16 : i16
      %288 = tensor.empty() : tensor<7x7xi1>
      %289 = linalg.matmul ins(%8, %9 : tensor<7x7xi1>, tensor<7x7xi1>) outs(%288 : tensor<7x7xi1>) -> tensor<7x7xi1>
      %290 = math.round %cst_1 : f32
      scf.yield
    }
    %274 = affine.vector_load %187[%203, %c6] : memref<7x7xf16>, vector<7xf16>
    affine.vector_store %198, %alloc_17[%165] : memref<7xf32>, vector<1xf32>
    vector.print %20 : vector<1xf32>
    vector.print %36 : vector<1x6xi32>
    vector.print %49 : vector<1xi1>
    vector.print %52 : vector<7x7xi1>
    vector.print %53 : vector<7x7xi32>
    vector.print %54 : vector<7x7xi1>
    vector.print %55 : vector<1x6xi32>
    vector.print %57 : vector<7xf32>
    vector.print %58 : vector<7xi1>
    vector.print %59 : vector<7xi32>
    vector.print %60 : vector<7xf32>
    vector.print %62 : vector<1xi64>
    vector.print %63 : vector<1xi32>
    vector.print %64 : vector<1xi64>
    vector.print %88 : vector<1xi64>
    vector.print %99 : vector<7xi1>
    vector.print %107 : vector<1xi32>
    vector.print %119 : vector<7x7xi32>
    vector.print %127 : vector<3xi64>
    vector.print %128 : vector<3xi1>
    vector.print %129 : vector<3xi64>
    vector.print %131 : vector<3xf32>
    vector.print %132 : vector<3xf32>
    vector.print %140 : vector<7xf32>
    vector.print %142 : vector<3xi64>
    vector.print %145 : vector<1x6xf32>
    vector.print %146 : vector<1x6xf32>
    vector.print %147 : vector<1xf32>
    vector.print %192 : vector<3x7xi1>
    vector.print %194 : vector<6xf16>
    vector.print %195 : vector<6xi1>
    vector.print %196 : vector<6xf16>
    vector.print %197 : vector<1xf32>
    vector.print %198 : vector<1xf32>
    vector.print %213 : vector<7xf32>
    vector.print %214 : vector<7xf32>
    vector.print %257 : vector<1x6xi1>
    vector.print %263 : vector<7xf32>
    vector.print %274 : vector<7xf16>
    vector.print %c30435_i16 : i16
    vector.print %c157648824_i64 : i64
    vector.print %c1054803254_i32 : i32
    vector.print %cst : f32
    vector.print %c2054069192_i64 : i64
    vector.print %c660249233_i32 : i32
    vector.print %cst_0 : f32
    vector.print %c1736531491_i32 : i32
    vector.print %cst_1 : f32
    vector.print %c7789_i16 : i16
    vector.print %cst_2 : f32
    vector.print %c-15831_i16 : i16
    vector.print %cst_3 : f16
    vector.print %true : i1
    vector.print %c-17923_i16 : i16
    vector.print %cst_4 : f32
    vector.print %true_21 : i1
    vector.print %72 : i1
    vector.print %94 : f32
    vector.print %98 : i64
    vector.print %true_25 : i1
    vector.print %204 : i64
    vector.print %219 : i16
    vector.print %true_34 : i1
    vector.print %false : i1
    return
  }
}
