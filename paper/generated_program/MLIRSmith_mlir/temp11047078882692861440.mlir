module {
  func.func @func1(%arg0: tensor<1xi16>) -> tensor<7x7xi16> {
    %false = arith.constant false
    %cst = arith.constant 1.667200e+04 : f16
    %false_0 = arith.constant false
    %c26275_i16 = arith.constant 26275 : i16
    %c-18289_i16 = arith.constant -18289 : i16
    %cst_1 = arith.constant 4.668800e+04 : f16
    %cst_2 = arith.constant 6.307200e+04 : f16
    %cst_3 = arith.constant 2.12728832E+9 : f32
    %c1164286809_i32 = arith.constant 1164286809 : i32
    %c1343421930_i32 = arith.constant 1343421930 : i32
    %c796176655_i64 = arith.constant 796176655 : i64
    %c-12836_i16 = arith.constant -12836 : i16
    %cst_4 = arith.constant 2.09930906E+9 : f32
    %cst_5 = arith.constant 0x4E5E16CA : f32
    %c1896577496_i64 = arith.constant 1896577496 : i64
    %true = arith.constant true
    %0 = tensor.empty() : tensor<14x14xi32>
    %1 = tensor.empty() : tensor<1xi1>
    %2 = tensor.empty() : tensor<14xf32>
    %3 = tensor.empty() : tensor<7x7xi1>
    %4 = tensor.empty() : tensor<14xi1>
    %5 = tensor.empty() : tensor<1xi1>
    %6 = tensor.empty() : tensor<14x14xi16>
    %7 = tensor.empty() : tensor<1xf32>
    %8 = tensor.empty() : tensor<14xf32>
    %9 = tensor.empty() : tensor<1xi32>
    %10 = tensor.empty() : tensor<14x14xi1>
    %11 = tensor.empty() : tensor<14xi1>
    %12 = tensor.empty() : tensor<7x7xi16>
    %13 = tensor.empty() : tensor<14xi32>
    %14 = tensor.empty() : tensor<14xi16>
    %15 = tensor.empty() : tensor<14x14xi1>
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
    %alloc = memref.alloc() : memref<14xf16>
    %alloc_6 = memref.alloc() : memref<14xf32>
    %alloc_7 = memref.alloc() : memref<14xi32>
    %alloc_8 = memref.alloc() : memref<14x14xi64>
    %alloc_9 = memref.alloc() : memref<7x7xf16>
    %alloc_10 = memref.alloc() : memref<7x7xf32>
    %alloc_11 = memref.alloc() : memref<14x14xf32>
    %alloc_12 = memref.alloc() : memref<1xi32>
    %alloc_13 = memref.alloc() : memref<1xf32>
    %alloc_14 = memref.alloc() : memref<14x14xi16>
    %alloc_15 = memref.alloc() : memref<7x7xf32>
    %alloc_16 = memref.alloc() : memref<1xi1>
    %alloc_17 = memref.alloc() : memref<14xf16>
    %alloc_18 = memref.alloc() : memref<14x14xf32>
    %alloc_19 = memref.alloc() : memref<14x14xi1>
    %alloc_20 = memref.alloc() : memref<1xi16>
    %16 = tensor.empty() : tensor<14xi1>
    %17 = linalg.copy ins(%4 : tensor<14xi1>) outs(%16 : tensor<14xi1>) -> tensor<14xi1>
    %18 = tensor.empty() : tensor<1xi32>
    %transposed = linalg.transpose ins(%9 : tensor<1xi32>) outs(%18 : tensor<1xi32>) permutation = [0] 
    %19 = tensor.empty() : tensor<i32>
    %reduced = linalg.reduce ins(%0 : tensor<14x14xi32>) outs(%19 : tensor<i32>) dimensions = [0, 1] 
      (%in: i32, %init: i32) {
        %c173772919_i32 = arith.constant 173772919 : i32
        %257 = vector.broadcast %cst_4 : f32 to vector<14xf32>
        %258 = vector.matrix_multiply %257, %257 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xf32>, vector<14xf32>) -> vector<1xf32>
        %259 = math.tan %2 : tensor<14xf32>
        %260 = vector.reduction <maxf>, %257 : vector<14xf32> into f32
        %inserted_46 = tensor.insert %cst_5 into %8[%c10] : tensor<14xf32>
        %261 = arith.ceildivsi %true, %true : i1
        %262 = math.ceil %cst_3 : f32
        %263 = arith.shli %c1896577496_i64, %c1896577496_i64 : i64
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    scf.parallel (%arg1) = (%c4) to (%c10) step (%c15) {
      %257 = vector.load %alloc_11[%c3, %c0] : memref<14x14xf32>, vector<14x14xf32>
      %258 = vector.broadcast %c-18289_i16 : i16 to vector<14xi16>
      %259 = index.floordivs %c5, %c9
      %extracted_46 = tensor.extract %7[%c0] : tensor<1xf32>
      %260 = vector.splat %c-12836_i16 : vector<7x7xi16>
      %261 = arith.mulf %cst_2, %cst_1 : f16
      %true_47 = index.bool.constant true
      %262 = math.round %2 : tensor<14xf32>
      %263 = vector.broadcast %false : i1 to vector<14xi1>
      %264 = vector.broadcast %c1164286809_i32 : i32 to vector<14xi32>
      %265 = vector.gather %10[%c10, %c9] [%264], %263, %263 : tensor<14x14xi1>, vector<14xi32>, vector<14xi1>, vector<14xi1> into vector<14xi1>
      %266 = vector.splat %cst : vector<14xf16>
      %267 = vector.extract %257[1] : vector<14x14xf32>
      %268 = memref.realloc %alloc_6 : memref<14xf32> to memref<14xf32>
      %269 = vector.reduction <add>, %267 : vector<14xf32> into f32
      %270 = arith.maxui %true_47, %false : i1
      %271 = math.fma %cst_3, %cst_4, %cst_5 : f32
      %272 = vector.shuffle %257, %257 [0, 1, 2, 5, 6, 10, 11, 12, 17, 18, 20, 21, 22, 25] : vector<14x14xf32>, vector<14x14xf32>
      scf.yield
    }
    %20 = affine.vector_load %alloc_12[%c6] : memref<1xi32>, vector<7xi32>
    affine.vector_store %20, %alloc_12[%c3] : memref<1xi32>, vector<7xi32>
    %21 = tensor.empty() : tensor<1xi16>
    %22 = tensor.empty() : tensor<i16>
    %23 = linalg.dot ins(%alloc_20, %21 : memref<1xi16>, tensor<1xi16>) outs(%22 : tensor<i16>) -> tensor<i16>
    %24 = math.ipowi %5, %5 : tensor<1xi1>
    %25 = vector.matrix_multiply %20, %20 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi32>, vector<7xi32>) -> vector<1xi32>
    %26 = math.absf %8 : tensor<14xf32>
    %27 = arith.maxui %c-12836_i16, %c-18289_i16 : i16
    %28 = index.divu %c11, %c7
    scf.if %false_0 {
      %257 = index.sub %c0, %c3
      %258 = arith.remsi %c26275_i16, %c-18289_i16 : i16
      %259 = math.ctpop %12 : tensor<7x7xi16>
      %260 = bufferization.clone %alloc : memref<14xf16> to memref<14xf16>
      %261 = bufferization.clone %alloc_14 : memref<14x14xi16> to memref<14x14xi16>
      %262 = arith.minsi %c1896577496_i64, %c796176655_i64 : i64
      %263 = arith.remsi %c796176655_i64, %c796176655_i64 : i64
      %264 = scf.while (%arg1 = %alloc_12) : (memref<1xi32>) -> memref<1xi32> {
        %265 = math.round %cst_2 : f16
        %266 = arith.maxsi %true, %false : i1
        %267 = arith.remf %cst_1, %cst : f16
        %268 = arith.remf %cst, %cst_2 : f16
        %269 = index.ceildivu %c14, %c14
        %270 = math.sqrt %cst_3 : f32
        %271 = vector.load %alloc_6[%c11] : memref<14xf32>, vector<1xf32>
        %272 = arith.ori %false_0, %true : i1
        scf.condition(%true) %arg1 : memref<1xi32>
      } do {
      ^bb0(%arg1: memref<1xi32>):
        %265 = arith.ori %c1896577496_i64, %c796176655_i64 : i64
        %266 = math.expm1 %7 : tensor<1xf32>
        %267 = tensor.empty() : tensor<14x14xi16>
        %268 = linalg.matmul ins(%6, %6 : tensor<14x14xi16>, tensor<14x14xi16>) outs(%267 : tensor<14x14xi16>) -> tensor<14x14xi16>
        %269 = arith.maxui %true, %true : i1
        %270 = arith.shli %c26275_i16, %c-18289_i16 : i16
        %271 = memref.realloc %alloc_7 : memref<14xi32> to memref<14xi32>
        %272 = vector.broadcast %c3 : index to vector<7xindex>
        %273 = vector.broadcast %false_0 : i1 to vector<7xi1>
        %274 = vector.broadcast %c-12836_i16 : i16 to vector<7xi16>
        vector.scatter %alloc_14[%c12, %c11] [%272], %273, %274 : memref<14x14xi16>, vector<7xindex>, vector<7xi1>, vector<7xi16>
        %275 = math.copysign %2, %2 : tensor<14xf32>
        %276 = arith.cmpi ne, %c1164286809_i32, %c1343421930_i32 : i32
        %cast = tensor.cast %10 : tensor<14x14xi1> to tensor<?x?xi1>
        %277 = index.divs %c1, %c11
        %278 = vector.broadcast %false_0 : i1 to vector<7x7xi1>
        %279 = arith.divsi %c-18289_i16, %c-18289_i16 : i16
        %280 = vector.bitcast %20 : vector<7xi32> to vector<7xi32>
        %alloc_46 = memref.alloc() : memref<1xi1>
        memref.copy %alloc_16, %alloc_46 : memref<1xi1> to memref<1xi1>
        %281 = math.log1p %cst_1 : f16
        scf.yield %arg1 : memref<1xi32>
      }
    }
    %29 = bufferization.to_tensor %alloc_6 : memref<14xf32>
    %30 = arith.andi %c-18289_i16, %c26275_i16 : i16
    %31 = vector.broadcast %c-12836_i16 : i16 to vector<7x1xi16>
    %32 = vector.broadcast %c-18289_i16 : i16 to vector<1xi16>
    %dest, %accumulated_value = vector.scan <minui>, %31, %32 {inclusive = false, reduction_dim = 0 : i64} : vector<7x1xi16>, vector<1xi16>
    %33 = arith.shrsi %c26275_i16, %c-12836_i16 : i16
    %34 = index.floordivs %c10, %c7
    %35 = math.sqrt %8 : tensor<14xf32>
    %36 = memref.realloc %alloc_17 : memref<14xf16> to memref<14xf16>
    %37 = arith.maxsi %true, %false : i1
    %38 = arith.floordivsi %false, %true : i1
    %39 = vector.matrix_multiply %25, %20 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 7 : i32} : (vector<1xi32>, vector<7xi32>) -> vector<7xi32>
    %40 = arith.minui %false_0, %true : i1
    %alloc_21 = memref.alloc() : memref<14xf16>
    %41 = bufferization.to_memref %29 : memref<14xf32>
    %42 = math.atan2 %cst_3, %cst_3 : f32
    %43 = arith.ceildivsi %c1896577496_i64, %c796176655_i64 : i64
    %44 = bufferization.clone %alloc_20 : memref<1xi16> to memref<1xi16>
    %45 = bufferization.to_memref %10 : memref<14x14xi1>
    %46 = math.cos %7 : tensor<1xf32>
    %47 = math.absf %8 : tensor<14xf32>
    %48 = arith.addf %cst, %cst_2 : f16
    %49 = arith.maxsi %false, %true : i1
    %50 = tensor.empty() : tensor<14x14xi16>
    %51 = linalg.matmul ins(%6, %6 : tensor<14x14xi16>, tensor<14x14xi16>) outs(%50 : tensor<14x14xi16>) -> tensor<14x14xi16>
    %extracted = tensor.extract %19[] : tensor<i32>
    %52 = math.cos %8 : tensor<14xf32>
    %53 = math.fma %cst_2, %cst_2, %cst_2 : f16
    %54 = math.atan %2 : tensor<14xf32>
    %55 = math.expm1 %cst_1 : f16
    %56 = arith.cmpi ule, %false_0, %false : i1
    %57 = arith.cmpi eq, %c1343421930_i32, %c1164286809_i32 : i32
    %58 = bufferization.to_memref %10 : memref<14x14xi1>
    %59 = vector.broadcast %c-12836_i16 : i16 to vector<14x1x14xi16>
    %60 = vector.broadcast %c-12836_i16 : i16 to vector<14x1xi16>
    %dest_22, %accumulated_value_23 = vector.scan <maxsi>, %59, %60 {inclusive = false, reduction_dim = 2 : i64} : vector<14x1x14xi16>, vector<14x1xi16>
    %61 = tensor.empty() : tensor<7x7x7xi32>
    %alloc_24 = memref.alloc() : memref<7xi32>
    %alloc_25 = memref.alloc() : memref<7x7xi32>
    %62 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_24, %alloc_25, %alloc_24 : memref<7xi32>, memref<7x7xi32>, memref<7xi32>) outs(%61 : tensor<7x7x7xi32>) {
    ^bb0(%in: i32, %in_46: i32, %in_47: i32, %out: i32):
      %257 = vector.extract_strided_slice %25 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
      %258 = vector.matrix_multiply %20, %257 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 1 : i32} : (vector<7xi32>, vector<1xi32>) -> vector<7xi32>
      %259 = tensor.empty() : tensor<14x14xi1>
      %mapped = linalg.map ins(%58, %10 : memref<14x14xi1>, tensor<14x14xi1>) outs(%259 : tensor<14x14xi1>)
        (%in_49: i1, %in_50: i1) {
          %285 = vector.reduction <and>, %257 : vector<1xi32> into i32
          %286 = vector.broadcast %cst_3 : f32 to vector<1xf32>
          %287 = vector.broadcast %false_0 : i1 to vector<1xi1>
          %288 = vector.maskedload %alloc_13[%c0], %287, %286 : memref<1xf32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
          %alloca_51 = memref.alloca() : memref<7x7xi1>
          %289 = memref.realloc %alloc_17 : memref<14xf16> to memref<14xf16>
          %290 = memref.atomic_rmw minf %cst_1, %alloc[%c12] : (f16, memref<14xf16>) -> f16
          %291 = vector.bitcast %20 : vector<7xi32> to vector<7xi32>
          %292 = math.exp %8 : tensor<14xf32>
          %293 = vector.extract_strided_slice %258 {offsets = [3], sizes = [3], strides = [1]} : vector<7xi32> to vector<3xi32>
          %294 = index.divu %c11, %c14
          %295 = bufferization.to_memref %5 : memref<1xi1>
          %296 = index.sub %c8, %c9
          %297 = index.sub %c5, %c12
          %true_52 = arith.constant true
          %false_53 = arith.constant false
          %298 = vector.transfer_read %10[%c11, %c5], %false_53 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<14x14xi1>, vector<1xi1>
          %299 = vector.create_mask %c0, %c8 : vector<7x7xi1>
          %300 = math.cos %cst_4 : f32
          %301 = affine.load %alloc_6[%c11] : memref<14xf32>
          %cst_54 = arith.constant 5.040000e+04 : f16
          %302 = math.round %7 : tensor<1xf32>
          %alloca_55 = memref.alloca() : memref<14xf16>
          %303 = math.atan %8 : tensor<14xf32>
          %alloca_56 = memref.alloca() : memref<7x7xi32>
          %304 = arith.remsi %c796176655_i64, %c1896577496_i64 : i64
          %305 = math.expm1 %301 : f32
          %306 = affine.max affine_map<(d0) -> (d0 - 64, d0 floordiv 4, d0 mod 8)>(%c5)
          %307 = vector.reduction <and>, %293 : vector<3xi32> into i32
          %alloc_57 = memref.alloc() : memref<1xi32>
          %308 = math.sqrt %8 : tensor<14xf32>
          %309 = memref.atomic_rmw addf %cst_3, %alloc_6[%c8] : (f32, memref<14xf32>) -> f32
          %310 = math.cos %8 : tensor<14xf32>
          %311 = vector.matrix_multiply %287, %287 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
          %312 = arith.divui %in, %in_46 : i32
          %313 = index.floordivs %306, %c6
          %false_58 = arith.constant false
          linalg.yield %false_58 : i1
        }
      %260 = index.add %c5, %c12
      %261 = index.floordivs %c12, %c15
      %262 = math.cttz %c1896577496_i64 : i64
      %263 = math.cttz %21 : tensor<1xi16>
      %cast = tensor.cast %8 : tensor<14xf32> to tensor<?xf32>
      %264 = index.maxs %260, %c4
      %265 = math.ceil %7 : tensor<1xf32>
      %collapsed = tensor.collapse_shape %50 [[0, 1]] : tensor<14x14xi16> into tensor<196xi16>
      %266 = vector.broadcast %cst_3 : f32 to vector<7x7xf32>
      %267 = scf.index_switch %c15 -> index 
      case 1 {
        vector.print %20 : vector<7xi32>
        %285 = math.exp %8 : tensor<14xf32>
        %true_49 = arith.constant true
        %false_50 = arith.constant false
        %286 = vector.transfer_read %16[%c14], %false_50 : tensor<14xi1>, vector<i1>
        %287 = arith.maxf %cst_1, %cst : f16
        %288 = arith.shrui %in, %in : i32
        %cst_51 = arith.constant 1.000000e+00 : f32
        %289 = vector.transfer_read %alloc_13[%c12], %cst_51 : memref<1xf32>, vector<f32>
        %290 = vector.extract_strided_slice %258 {offsets = [1], sizes = [2], strides = [1]} : vector<7xi32> to vector<2xi32>
        %extracted_52 = tensor.extract %19[] : tensor<i32>
        %291 = arith.floordivsi %in, %c1164286809_i32 : i32
        %292 = math.cos %29 : tensor<14xf32>
        %293 = math.ipowi %out, %extracted : i32
        %294 = math.absf %cst : f16
        affine.store %cst_1, %alloc[%c6] : memref<14xf16>
        %295 = arith.minf %cst_51, %cst_5 : f32
        %296 = memref.atomic_rmw maxs %c1164286809_i32, %alloc_12[%c0] : (i32, memref<1xi32>) -> i32
        memref.store %in, %alloc_7[%c8] : memref<14xi32>
        scf.yield %34 : index
      }
      case 2 {
        %285 = arith.shrsi %in_47, %c1343421930_i32 : i32
        %286 = arith.shrui %in_46, %extracted : i32
        %287 = vector.broadcast %in_46 : i32 to vector<1x1xi32>
        %288 = vector.outerproduct %257, %257, %287 {kind = #vector.kind<minsi>} : vector<1xi32>, vector<1xi32>
        %289 = math.expm1 %2 : tensor<14xf32>
        %false_49 = index.bool.constant false
        %290 = arith.remf %cst_3, %cst_3 : f32
        %291 = memref.load %alloc_14[%c8, %c3] : memref<14x14xi16>
        %292 = arith.addi %c1896577496_i64, %c796176655_i64 : i64
        vector.print %266 : vector<7x7xf32>
        %false_50 = arith.constant false
        %293 = vector.transfer_read %10[%c9, %264], %false_50 : tensor<14x14xi1>, vector<14xi1>
        memref.store %out, %alloc_7[%c7] : memref<14xi32>
        %294 = vector.broadcast %cst_4 : f32 to vector<14xf32>
        %295 = vector.fma %294, %294, %294 : vector<14xf32>
        %296 = index.divu %c5, %c15
        %297 = memref.realloc %alloc_16 : memref<1xi1> to memref<14xi1>
        %alloca_51 = memref.alloca() : memref<14xi1>
        %298 = affine.apply affine_map<(d0) -> (d0 ceildiv 128 - 4)>(%c12)
        scf.yield %34 : index
      }
      case 3 {
        %285 = arith.divf %cst_1, %cst : f16
        %286 = arith.cmpi uge, %false_0, %true : i1
        %287 = index.floordivs %c9, %c0
        %288 = math.ctpop %22 : tensor<i16>
        %289 = vector.create_mask %c4, %c0 : vector<14x14xi1>
        %290 = math.log1p %8 : tensor<14xf32>
        %291 = arith.shrsi %false, %false_0 : i1
        %292 = math.cos %29 : tensor<14xf32>
        %293 = arith.floordivsi %c26275_i16, %c-12836_i16 : i16
        %294 = index.ceildivu %c15, %c11
        %295 = vector.reduction <minui>, %258 : vector<7xi32> into i32
        %296 = arith.remsi %in_47, %in_46 : i32
        %297 = arith.maxsi %true, %true : i1
        %298 = math.fma %cst_2, %cst, %cst : f16
        %299 = arith.addf %cst_2, %cst : f16
        %300 = arith.ceildivsi %c1896577496_i64, %c1896577496_i64 : i64
        scf.yield %c5 : index
      }
      default {
        %285 = vector.broadcast %c1164286809_i32 : i32 to vector<1x1xi32>
        %286 = vector.outerproduct %257, %257, %285 {kind = #vector.kind<xor>} : vector<1xi32>, vector<1xi32>
        %287 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %39, %20, %c1164286809_i32 : vector<7xi32>, vector<7xi32> into i32
        %288 = vector.broadcast %in_46 : i32 to vector<14x14xi32>
        %289 = vector.multi_reduction <maxui>, %257, %257 [] : vector<1xi32> to vector<1xi32>
        %290 = affine.max affine_map<(d0, d1, d2) -> (d0 + d1 - d0, d1 floordiv 64, (d1 - d0) floordiv 128, -((d1 - d0) floordiv 128))>(%c0, %34, %c6)
        %291 = index.ceildivu %c10, %c6
        %292 = math.atan %7 : tensor<1xf32>
        %293 = vector.matrix_multiply %258, %39 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi32>, vector<7xi32>) -> vector<1xi32>
        memref.store %cst_3, %alloc_18[%c9, %c2] : memref<14x14xf32>
        %294 = vector.load %alloc_17[%c10] : memref<14xf16>, vector<14xf16>
        %295 = memref.atomic_rmw addf %cst, %alloc_17[%c12] : (f16, memref<14xf16>) -> f16
        %296 = math.round %7 : tensor<1xf32>
        %297 = arith.cmpi ne, %true, %false : i1
        %298 = vector.broadcast %c26275_i16 : i16 to vector<1xi16>
        %299 = arith.floordivsi %c1343421930_i32, %in_46 : i32
        %300 = arith.divsi %c1343421930_i32, %out : i32
        scf.yield %c12 : index
      }
      %268 = vector.extract %257[0] : vector<1xi32>
      %269 = index.sizeof
      %270 = math.rsqrt %7 : tensor<1xf32>
      %271 = vector.broadcast %cst : f16 to vector<14xf16>
      %272 = vector.reduction <minui>, %20 : vector<7xi32> into i32
      %273 = math.fma %29, %2, %8 : tensor<14xf32>
      %274 = memref.realloc %alloc : memref<14xf16> to memref<14xf16>
      %275 = arith.floordivsi %c1896577496_i64, %c1896577496_i64 : i64
      %276 = vector.reduction <minui>, %25 : vector<1xi32> into i32
      %277 = index.mul %c11, %c2
      %278 = arith.floordivsi %c796176655_i64, %c796176655_i64 : i64
      memref.assume_alignment %alloc_9, 16 : memref<7x7xf16>
      %279 = math.log1p %2 : tensor<14xf32>
      %280 = scf.while (%arg1 = %cst_5) : (f32) -> f32 {
        %285 = math.round %arg1 : f32
        %286 = memref.load %alloc_9[%c1, %c4] : memref<7x7xf16>
        %287 = math.rsqrt %2 : tensor<14xf32>
        %288 = affine.load %alloc_15[%c8, %c7] : memref<7x7xf32>
        %289 = arith.shrsi %out, %extracted : i32
        %290 = memref.realloc %alloc_6 : memref<14xf32> to memref<7xf32>
        %true_49 = arith.constant true
        %291 = vector.transfer_read %10[%264, %c14], %true_49 : tensor<14x14xi1>, vector<i1>
        %292 = math.fma %cst_3, %cst_3, %288 : f32
        scf.condition(%true) %288 : f32
      } do {
      ^bb0(%arg1: f32):
        %285 = math.round %arg1 : f32
        memref.store %false_0, %alloc_19[%c8, %c9] : memref<14x14xi1>
        %286 = vector.broadcast %cst_3 : f32 to vector<7xf32>
        %dest_49, %accumulated_value_50 = vector.scan <mul>, %266, %286 {inclusive = false, reduction_dim = 0 : i64} : vector<7x7xf32>, vector<7xf32>
        %287 = arith.divf %cst_4, %cst_4 : f32
        %288 = math.cos %cst_5 : f32
        %289 = arith.floordivsi %c1896577496_i64, %c796176655_i64 : i64
        %290 = arith.remui %c796176655_i64, %c1896577496_i64 : i64
        %291 = vector.broadcast %in_46 : i32 to vector<1x1xi32>
        %292 = vector.outerproduct %257, %25, %291 {kind = #vector.kind<maxsi>} : vector<1xi32>, vector<1xi32>
        %inserted_51 = tensor.insert %false into %4[%c5] : tensor<14xi1>
        %293 = math.ctlz %14 : tensor<14xi16>
        %294 = memref.realloc %44 : memref<1xi16> to memref<14xi16>
        %295 = arith.ceildivsi %in, %in_47 : i32
        %296 = math.absf %29 : tensor<14xf32>
        %297 = arith.cmpi sgt, %true, %false : i1
        %298 = affine.load %41[%c8] : memref<14xf32>
        affine.store %false, %alloc_19[%c15, %c5] : memref<14x14xi1>
        scf.yield %arg1 : f32
      }
      %281 = index.add %c7, %c11
      %282 = math.ceil %cst_3 : f32
      %alloc_48 = memref.alloc() : memref<7x7xi16>
      %283 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%261, %c3, %261, %264)
      %284 = arith.maxsi %c26275_i16, %c26275_i16 : i16
      linalg.yield %in_46 : i32
    } -> tensor<7x7x7xi32>
    %63 = math.fma %cst_2, %cst_2, %cst_1 : f16
    %extracted_26 = tensor.extract %2[%c8] : tensor<14xf32>
    %64 = index.ceildivs %c8, %c4
    %65 = math.atan2 %cst_3, %cst_3 : f32
    %splat = tensor.splat %extracted_26 : tensor<7x7xf32>
    %66 = arith.addi %false_0, %false : i1
    %67 = vector.multi_reduction <maxsi>, %39, %c1343421930_i32 [0] : vector<7xi32> to i32
    %68 = arith.cmpi sge, %true, %false_0 : i1
    %69 = vector.extract %25[0] : vector<1xi32>
    %70 = arith.floordivsi %c1896577496_i64, %c796176655_i64 : i64
    %71 = math.atan2 %29, %2 : tensor<14xf32>
    %generated = tensor.generate %c1, %c5 {
    ^bb0(%arg1: index, %arg2: index):
      %257 = math.powf %29, %8 : tensor<14xf32>
      %258 = memref.realloc %alloc_12 : memref<1xi32> to memref<14xi32>
      %259 = arith.minui %false_0, %false_0 : i1
      %260 = memref.realloc %alloc_12 : memref<1xi32> to memref<1xi32>
      tensor.yield %67 : i32
    } : tensor<?x?xi32>
    %72 = math.round %2 : tensor<14xf32>
    %73 = math.absf %cst : f16
    %74 = arith.maxui %false, %false_0 : i1
    %75 = math.copysign %2, %8 : tensor<14xf32>
    %76 = affine.if affine_set<(d0) : (d0 >= 0, d0 >= 0, ((d0 mod 32) floordiv 4) * 2 >= 0, -(d0 + 4) == 0)>(%c10) -> f16 {
      %257 = vector.bitcast %20 : vector<7xi32> to vector<7xi32>
      %258 = math.copysign %7, %7 : tensor<1xf32>
      %259 = math.tan %8 : tensor<14xf32>
      %260 = arith.floordivsi %c1164286809_i32, %c1343421930_i32 : i32
      %261 = arith.cmpi eq, %c796176655_i64, %c1896577496_i64 : i64
      %262 = arith.minsi %false, %false : i1
      %false_46 = arith.constant false
      %false_47 = arith.constant false
      %263 = vector.transfer_read %11[%c12], %false_47 : tensor<14xi1>, vector<i1>
      vector.print %25 : vector<1xi32>
      affine.yield %cst_2 : f16
    } else {
      %257 = math.atan2 %8, %8 : tensor<14xf32>
      %258 = index.ceildivs %c5, %c2
      %259 = arith.maxsi %c-18289_i16, %c-18289_i16 : i16
      %260 = math.atan %2 : tensor<14xf32>
      %261 = index.add %c2, %c0
      %262 = memref.atomic_rmw addf %cst_5, %alloc_15[%c6, %c5] : (f32, memref<7x7xf32>) -> f32
      %263 = arith.shli %true, %true : i1
      %264 = vector.broadcast %cst_4 : f32 to vector<14xf32>
      affine.yield %cst : f16
    }
    %splat_27 = tensor.splat %cst : tensor<14x14xf16>
    %77 = math.copysign %extracted_26, %cst_4 : f32
    %78 = vector.broadcast %cst_3 : f32 to vector<14xf32>
    %79 = vector.fma %78, %78, %78 : vector<14xf32>
    %80 = vector.load %alloc_12[%c0] : memref<1xi32>, vector<7x7xi32>
    %81 = affine.max affine_map<(d0, d1) -> (((d0 * 9) mod 2) floordiv 4, (d0 * 9) mod 32, d1 mod 128, (d0 * 9) mod 32)>(%c10, %c12)
    %82 = math.powf %2, %2 : tensor<14xf32>
    %83 = math.expm1 %cst : f16
    %84 = math.atan2 %cst_5, %extracted_26 : f32
    vector.print %80 : vector<7x7xi32>
    %85 = scf.index_switch %c14 -> index 
    case 1 {
      %expanded_46 = tensor.expand_shape %1 [[0, 1]] : tensor<1xi1> into tensor<1x1xi1>
      %true_47 = index.bool.constant true
      vector.print %25 : vector<1xi32>
      %257 = math.powf %cst_2, %cst_1 : f16
      %258 = arith.subi %false_0, %false : i1
      %true_48 = index.bool.constant true
      %259 = arith.maxui %extracted, %c1164286809_i32 : i32
      %260 = index.maxu %c9, %81
      %261 = index.add %c9, %c2
      %262 = arith.maxui %false, %true_48 : i1
      %263 = vector.broadcast %extracted : i32 to vector<i32>
      %264 = vector.transfer_write %263, %0[%c11, %81] : vector<i32>, tensor<14x14xi32>
      %265 = vector.broadcast %c-12836_i16 : i16 to vector<14xi16>
      %266 = vector.transfer_write %265, %6[%c1, %81] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<14xi16>, tensor<14x14xi16>
      %267 = math.fpowi %8, %13 : tensor<14xf32>, tensor<14xi32>
      %268 = index.mul %c12, %c3
      bufferization.dealloc_tensor %4 : tensor<14xi1>
      %alloca_49 = memref.alloca() : memref<7x7xi32>
      scf.yield %c10 : index
    }
    case 2 {
      %257 = arith.maxsi %extracted, %c1164286809_i32 : i32
      %true_46 = arith.constant true
      %extracted_47 = tensor.extract %0[%c2, %c3] : tensor<14x14xi32>
      %258 = math.powf %7, %7 : tensor<1xf32>
      vector.print %78 : vector<14xf32>
      %259 = vector.broadcast %cst_4 : f32 to vector<7x7xf32>
      %260 = vector.fma %259, %259, %259 : vector<7x7xf32>
      memref.assume_alignment %alloc_20, 1 : memref<1xi16>
      %261 = math.ctpop %4 : tensor<14xi1>
      %262 = arith.cmpi sgt, %c796176655_i64, %c1896577496_i64 : i64
      %263 = math.rsqrt %8 : tensor<14xf32>
      %264 = memref.load %alloc_9[%c0, %c3] : memref<7x7xf16>
      %265 = math.round %splat_27 : tensor<14x14xf16>
      %266 = arith.cmpi ne, %c-18289_i16, %c-12836_i16 : i16
      %alloc_48 = memref.alloc() : memref<14xi1>
      memref.tensor_store %11, %alloc_48 : memref<14xi1>
      scf.index_switch %c10 
      case 1 {
        %268 = vector.broadcast %extracted : i32 to vector<14x14xi32>
        %269 = vector.broadcast %true : i1 to vector<14x14xi1>
        %270 = vector.gather %alloc_7[%c15] [%268], %269, %268 : memref<14xi32>, vector<14x14xi32>, vector<14x14xi1>, vector<14x14xi32> into vector<14x14xi32>
        %271 = index.ceildivu %c9, %c12
        %272 = math.absf %splat_27 : tensor<14x14xf16>
        %273 = math.round %cst_3 : f32
        %274 = math.ctpop %12 : tensor<7x7xi16>
        %275 = memref.atomic_rmw mulf %cst_3, %41[%c7] : (f32, memref<14xf32>) -> f32
        %276 = arith.shrsi %c-18289_i16, %c-12836_i16 : i16
        %cast = tensor.cast %2 : tensor<14xf32> to tensor<?xf32>
        %277 = arith.floordivsi %c1896577496_i64, %c796176655_i64 : i64
        %278 = vector.outerproduct %39, %39, %80 {kind = #vector.kind<minsi>} : vector<7xi32>, vector<7xi32>
        %279 = vector.broadcast %extracted : i32 to vector<1xi32>
        %extracted_49 = tensor.extract %0[%c2, %c3] : tensor<14x14xi32>
        %280 = arith.floordivsi %c1164286809_i32, %67 : i32
        %splat_50 = tensor.splat %false_0 : tensor<7x7xi1>
        %281 = vector.insertelement %extracted_47, %20[%c0 : index] : vector<7xi32>
        %c0_i16 = arith.constant 0 : i16
        %282 = vector.transfer_read %12[%28, %c10], %c0_i16 : tensor<7x7xi16>, vector<i16>
        scf.yield
      }
      case 2 {
        %268 = vector.insertelement %c1343421930_i32, %39[%c2 : index] : vector<7xi32>
        %269 = index.divs %64, %c13
        %270 = index.sizeof
        %271 = arith.floordivsi %67, %c1164286809_i32 : i32
        %272 = arith.remui %extracted_47, %extracted : i32
        %273 = arith.floordivsi %false, %false : i1
        %274 = bufferization.to_tensor %alloc_6 : memref<14xf32>
        %275 = vector.extract_strided_slice %25 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
        %276 = arith.mulf %cst_5, %cst_4 : f32
        %277 = math.floor %7 : tensor<1xf32>
        %278 = math.cos %extracted_26 : f32
        vector.print %25 : vector<1xi32>
        %279 = math.absf %7 : tensor<1xf32>
        %280 = arith.ceildivsi %67, %c1343421930_i32 : i32
        %281 = tensor.empty() : tensor<7x7xi1>
        %282 = linalg.matmul ins(%3, %3 : tensor<7x7xi1>, tensor<7x7xi1>) outs(%281 : tensor<7x7xi1>) -> tensor<7x7xi1>
        %283 = math.round %extracted_26 : f32
        scf.yield
      }
      default {
        affine.store %c-12836_i16, %alloc_20[%c14] : memref<1xi16>
        %268 = vector.extract %79[3] : vector<14xf32>
        %269 = math.expm1 %8 : tensor<14xf32>
        %270 = math.exp %extracted_26 : f32
        %271 = math.fma %extracted_26, %extracted_26, %cst_4 : f32
        %cast = tensor.cast %0 : tensor<14x14xi32> to tensor<?x?xi32>
        %272 = vector.broadcast %cst_5 : f32 to vector<14x14xf32>
        %273 = math.exp %cst : f16
        %splat_49 = tensor.splat %cst_5 : tensor<14x14xf32>
        %274 = arith.remf %cst_3, %cst_4 : f32
        %275 = arith.remf %cst, %cst : f16
        %276 = math.absf %extracted_26 : f32
        %277 = math.ctlz %false_0 : i1
        %278 = math.round %extracted_26 : f32
        %279 = vector.multi_reduction <mul>, %272, %79 [1] : vector<14x14xf32> to vector<14xf32>
        %280 = index.add %c11, %c15
      }
      %267 = math.fma %cst_1, %cst_1, %cst : f16
      scf.yield %c9 : index
    }
    default {
      %257 = arith.remsi %c-18289_i16, %c26275_i16 : i16
      %258 = index.floordivs %c0, %c0
      %259 = math.ctpop %3 : tensor<7x7xi1>
      %260 = memref.atomic_rmw mulf %cst, %alloc_17[%c13] : (f16, memref<14xf16>) -> f16
      %261 = vector.bitcast %20 : vector<7xi32> to vector<7xf32>
      %262 = index.add %c9, %28
      %true_46 = index.bool.constant true
      %expanded_47 = tensor.expand_shape %12 [[0], [1, 2]] : tensor<7x7xi16> into tensor<7x7x1xi16>
      %263 = arith.cmpi ugt, %67, %c1164286809_i32 : i32
      %264 = memref.atomic_rmw addf %cst_4, %alloc_10[%c2, %c5] : (f32, memref<7x7xf32>) -> f32
      %265 = arith.maxui %c796176655_i64, %c1896577496_i64 : i64
      %266 = arith.maxsi %c-12836_i16, %c26275_i16 : i16
      %267 = math.fma %29, %2, %2 : tensor<14xf32>
      %268 = math.tan %splat_27 : tensor<14x14xf16>
      %269 = index.mul %c10, %258
      %270 = index.add %c9, %c10
      scf.yield %c8 : index
    }
    %inserted = tensor.insert %cst_5 into %7[%c0] : tensor<1xf32>
    %86 = index.divu %c13, %c1
    %87 = arith.floordivsi %false, %false_0 : i1
    %88 = math.round %8 : tensor<14xf32>
    %89 = math.round %splat : tensor<7x7xf32>
    memref.store %cst_2, %alloc[%c4] : memref<14xf16>
    %90 = math.atan2 %cst_4, %cst_4 : f32
    %91 = math.atan2 %8, %2 : tensor<14xf32>
    %92 = math.tan %cst_3 : f32
    %93 = vector.broadcast %cst_5 : f32 to vector<14xf32>
    %94 = vector.fma %93, %93, %79 : vector<14xf32>
    %95 = arith.negf %cst_5 : f32
    %96 = index.maxu %34, %c14
    %97 = math.sqrt %cst : f16
    %98 = vector.extract_strided_slice %93 {offsets = [3], sizes = [8], strides = [1]} : vector<14xf32> to vector<8xf32>
    %99 = math.atan2 %2, %8 : tensor<14xf32>
    %100 = vector.multi_reduction <maxf>, %98, %98 [] : vector<8xf32> to vector<8xf32>
    %101 = vector.broadcast %cst_4 : f32 to vector<7xf32>
    %102 = vector.broadcast %true : i1 to vector<7xi1>
    %103 = vector.maskedload %alloc_18[%c7, %c5], %102, %101 : memref<14x14xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
    %104 = math.round %2 : tensor<14xf32>
    %105 = vector.broadcast %cst_4 : f32 to vector<14x14xf32>
    scf.execute_region {
      %257 = math.round %cst_2 : f16
      %alloca_46 = memref.alloca() : memref<14x14xf16>
      %258 = bufferization.to_tensor %alloc_8 : memref<14x14xi64>
      %extracted_47 = tensor.extract %5[%c0] : tensor<1xi1>
      %259 = vector.broadcast %cst_4 : f32 to vector<14x14xf32>
      %260 = index.sub %c11, %c2
      %261 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %259, %105, %105 : vector<14x14xf32>, vector<14x14xf32> into vector<14x14xf32>
      %262 = affine.apply affine_map<(d0, d1, d2) -> ((-(d0 ceildiv 4)) mod 8)>(%c10, %260, %c7)
      %263 = vector.extract %78[6] : vector<14xf32>
      %264 = vector.bitcast %93 : vector<14xf32> to vector<14xf32>
      %265 = math.fma %29, %8, %2 : tensor<14xf32>
      %266 = memref.atomic_rmw addf %cst_2, %alloc[%c10] : (f16, memref<14xf16>) -> f16
      %267 = scf.index_switch %c9 -> memref<7x7xf32> 
      case 1 {
        %270 = vector.outerproduct %93, %78, %105 {kind = #vector.kind<maxf>} : vector<14xf32>, vector<14xf32>
        %271 = math.round %2 : tensor<14xf32>
        %272 = vector.broadcast %false_0 : i1 to vector<14xi1>
        %273 = vector.broadcast %extracted : i32 to vector<14xi32>
        %274 = vector.gather %7[%96] [%273], %272, %94 : tensor<1xf32>, vector<14xi32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
        %275 = vector.broadcast %extracted_26 : f32 to vector<1xf32>
        %276 = vector.fma %275, %275, %275 : vector<1xf32>
        %277 = index.casts %c7 : index to i32
        %278 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %20, %20, %c1164286809_i32 : vector<7xi32>, vector<7xi32> into i32
        %279 = tensor.empty() : tensor<14x14xi16>
        %280 = linalg.matmul ins(%6, %6 : tensor<14x14xi16>, tensor<14x14xi16>) outs(%279 : tensor<14x14xi16>) -> tensor<14x14xi16>
        %281 = vector.transpose %80, [1, 0] : vector<7x7xi32> to vector<7x7xi32>
        %282 = affine.max affine_map<(d0, d1) -> (-(-d0 - 8) - d0 * 16 - 8, d0 * 16, d0)>(%64, %c2)
        %283 = arith.maxui %c1896577496_i64, %c796176655_i64 : i64
        %284 = vector.splat %c7 : vector<7x7xindex>
        %285 = math.powf %cst_2, %cst : f16
        %286 = affine.min affine_map<(d0) -> (d0 * 2)>(%81)
        %287 = index.add %c8, %286
        %extracted_48 = tensor.extract %reduced[] : tensor<i32>
        %alloc_49 = memref.alloc() : memref<14xi1>
        memref.tensor_store %11, %alloc_49 : memref<14xi1>
        scf.yield %alloc_10 : memref<7x7xf32>
      }
      case 2 {
        %270 = math.copysign %8, %2 : tensor<14xf32>
        %271 = math.expm1 %cst_2 : f16
        %272 = arith.maxui %false_0, %extracted_47 : i1
        %273 = arith.maxui %c1896577496_i64, %c1896577496_i64 : i64
        %274 = arith.muli %c-12836_i16, %c-12836_i16 : i16
        %275 = arith.shrui %c26275_i16, %c-18289_i16 : i16
        %276 = math.atan2 %2, %8 : tensor<14xf32>
        %277 = math.exp %cst_3 : f32
        %dest_48, %accumulated_value_49 = vector.scan <minf>, %259, %78 {inclusive = false, reduction_dim = 0 : i64} : vector<14x14xf32>, vector<14xf32>
        %278 = vector.reduction <add>, %98 : vector<8xf32> into f32
        %279 = math.ceil %cst_3 : f32
        %280 = math.log1p %8 : tensor<14xf32>
        %281 = math.expm1 %2 : tensor<14xf32>
        %282 = arith.remui %67, %c1343421930_i32 : i32
        %283 = memref.realloc %alloc_6 : memref<14xf32> to memref<14xf32>
        %284 = index.divu %c6, %c15
        scf.yield %alloc_15 : memref<7x7xf32>
      }
      case 3 {
        %270 = bufferization.clone %alloc_13 : memref<1xf32> to memref<1xf32>
        %271 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %94, %78, %cst_3 : vector<14xf32>, vector<14xf32> into f32
        %272 = math.cos %cst_5 : f32
        %true_48 = arith.constant true
        %false_49 = arith.constant false
        %273 = vector.transfer_read %16[%34], %false_49 : tensor<14xi1>, vector<i1>
        %274 = vector.extract_strided_slice %20 {offsets = [0], sizes = [3], strides = [1]} : vector<7xi32> to vector<3xi32>
        %cst_50 = arith.constant 1.000000e+00 : f32
        %275 = vector.transfer_read %8[%c3], %cst_50 : tensor<14xf32>, vector<f32>
        %276 = index.add %96, %c6
        %277 = vector.bitcast %20 : vector<7xi32> to vector<7xf32>
        %278 = math.round %8 : tensor<14xf32>
        %279 = math.ctlz %3 : tensor<7x7xi1>
        %280 = arith.remf %cst_3, %cst_3 : f32
        %281 = math.copysign %cst_1, %cst_2 : f16
        %282 = index.sub %81, %276
        memref.store %cst_2, %alloc_9[%c5, %c2] : memref<7x7xf16>
        %283 = math.sqrt %7 : tensor<1xf32>
        %284 = math.ctpop %4 : tensor<14xi1>
        scf.yield %alloc_15 : memref<7x7xf32>
      }
      case 4 {
        %270 = vector.extract_strided_slice %78 {offsets = [7], sizes = [6], strides = [1]} : vector<14xf32> to vector<6xf32>
        memref.store %67, %alloc_7[%c1] : memref<14xi32>
        %271 = vector.bitcast %102 : vector<7xi1> to vector<7xi1>
        %272 = memref.load %alloc_7[%c7] : memref<14xi32>
        %273 = math.ipowi %reduced, %19 : tensor<i32>
        %274 = arith.remf %cst_4, %cst_4 : f32
        %275 = math.powf %2, %29 : tensor<14xf32>
        %276 = arith.remsi %extracted, %67 : i32
        %277 = arith.subi %true, %extracted_47 : i1
        %278 = vector.outerproduct %93, %79, %259 {kind = #vector.kind<mul>} : vector<14xf32>, vector<14xf32>
        %279 = arith.divsi %67, %c1343421930_i32 : i32
        %280 = math.round %cst_2 : f16
        %281 = arith.remf %cst, %cst_2 : f16
        %282 = bufferization.clone %alloc_16 : memref<1xi1> to memref<1xi1>
        %283 = bufferization.clone %44 : memref<1xi16> to memref<1xi16>
        memref.store %cst_1, %alloc_17[%c12] : memref<14xf16>
        scf.yield %alloc_15 : memref<7x7xf32>
      }
      default {
        %270 = index.floordivs %c9, %260
        %271 = math.ctlz %4 : tensor<14xi1>
        %alloca_48 = memref.alloca() : memref<1xf32>
        %272 = index.casts %c1343421930_i32 : i32 to index
        %273 = vector.broadcast %c-12836_i16 : i16 to vector<1xi16>
        %274 = vector.broadcast %extracted_47 : i1 to vector<1xi1>
        %275 = vector.maskedload %alloc_20[%c0], %274, %273 : memref<1xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
        %from_elements_49 = tensor.from_elements %cst_4, %cst_3, %cst_4, %extracted_26, %cst_3, %cst_3, %cst_3, %cst_4, %extracted_26, %cst_4, %cst_4, %cst_4, %extracted_26, %cst_4, %cst_5, %extracted_26, %extracted_26, %extracted_26, %cst_4, %cst_5, %cst_3, %cst_4, %cst_5, %cst_3, %cst_4, %extracted_26, %extracted_26, %cst_5, %cst_5, %cst_3, %cst_4, %extracted_26, %cst_3, %cst_4, %cst_4, %extracted_26, %cst_5, %cst_4, %cst_5, %cst_5, %extracted_26, %cst_5, %cst_5, %cst_3, %cst_4, %cst_3, %cst_3, %cst_5, %cst_5, %cst_5, %extracted_26, %cst_4, %cst_4, %cst_5, %cst_3, %extracted_26, %cst_5, %cst_4, %extracted_26, %cst_3, %cst_5, %cst_5, %cst_3, %extracted_26, %cst_3, %cst_5, %cst_5, %cst_3, %extracted_26, %cst_5, %cst_3, %extracted_26, %cst_3, %extracted_26, %cst_5, %extracted_26, %cst_3, %cst_5, %cst_4, %cst_5, %cst_5, %cst_3, %cst_4, %extracted_26, %cst_3, %extracted_26, %cst_3, %cst_5, %extracted_26, %extracted_26, %cst_4, %cst_4, %extracted_26, %cst_4, %cst_4, %cst_5, %cst_3, %cst_3, %extracted_26, %cst_4, %cst_4, %extracted_26, %extracted_26, %cst_4, %extracted_26, %extracted_26, %cst_5, %cst_4, %cst_3, %cst_5, %cst_5, %cst_3, %cst_5, %cst_3, %cst_3, %cst_4, %cst_5, %extracted_26, %extracted_26, %cst_3, %cst_4, %extracted_26, %cst_3, %cst_4, %extracted_26, %cst_4, %extracted_26, %extracted_26, %cst_5, %extracted_26, %cst_4, %cst_3, %cst_5, %cst_4, %extracted_26, %extracted_26, %cst_5, %cst_3, %extracted_26, %extracted_26, %cst_3, %extracted_26, %cst_5, %cst_3, %cst_5, %extracted_26, %cst_4, %cst_5, %cst_5, %cst_3, %cst_5, %cst_5, %cst_5, %cst_5, %extracted_26, %extracted_26, %cst_5, %cst_5, %cst_3, %cst_4, %extracted_26, %cst_4, %cst_3, %extracted_26, %cst_3, %cst_4, %cst_5, %cst_5, %cst_5, %cst_4, %cst_5, %cst_4, %cst_5, %cst_3, %cst_5, %cst_4, %extracted_26, %cst_4, %extracted_26, %cst_5, %extracted_26, %cst_4, %extracted_26, %cst_5, %extracted_26, %cst_5, %cst_3, %cst_4, %extracted_26, %cst_5, %cst_3, %extracted_26, %cst_5, %cst_5, %cst_4, %cst_3 : tensor<14x14xf32>
        %c1_i16 = arith.constant 1 : i16
        %276 = vector.transfer_read %alloc_14[%c10, %86], %c1_i16 : memref<14x14xi16>, vector<i16>
        %277 = vector.broadcast %true : i1 to vector<7x7xi1>
        %278 = vector.gather %16[%c12] [%80], %277, %277 : tensor<14xi1>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xi1> into vector<7x7xi1>
        %279 = math.atan %cst_2 : f16
        %280 = arith.negf %cst : f16
        %281 = arith.shli %c1_i16, %c-12836_i16 : i16
        %282 = math.atan %8 : tensor<14xf32>
        %283 = math.log1p %cst_5 : f32
        %284 = tensor.empty() : tensor<14x14xf16>
        %285 = linalg.matmul ins(%splat_27, %splat_27 : tensor<14x14xf16>, tensor<14x14xf16>) outs(%284 : tensor<14x14xf16>) -> tensor<14x14xf16>
        %splat_50 = tensor.splat %cst_3 : tensor<7x7xf32>
        %286 = arith.divf %extracted_26, %cst_3 : f32
        scf.yield %alloc_10 : memref<7x7xf32>
      }
      %268 = math.roundeven %8 : tensor<14xf32>
      memref.tensor_store %8, %alloc_6 : memref<14xf32>
      %269 = arith.maxf %cst_3, %cst_4 : f32
      scf.yield
    }
    %extracted_28 = tensor.extract %11[%c4] : tensor<14xi1>
    %106 = math.tan %extracted_26 : f32
    %107 = index.ceildivu %c8, %28
    %108 = arith.cmpi sge, %c1896577496_i64, %c1896577496_i64 : i64
    %109 = math.expm1 %2 : tensor<14xf32>
    %110 = vector.broadcast %cst_5 : f32 to vector<14x14xf32>
    memref.store %extracted_26, %alloc_13[%c0] : memref<1xf32>
    vector.print %110 : vector<14x14xf32>
    %expanded = tensor.expand_shape %11 [[0, 1]] : tensor<14xi1> into tensor<14x1xi1>
    %111 = vector.reduction <add>, %79 : vector<14xf32> into f32
    %112 = arith.cmpi ule, %c1896577496_i64, %c796176655_i64 : i64
    %113 = arith.maxf %extracted_26, %cst_5 : f32
    %114 = affine.load %alloc_10[%c13, %c14] : memref<7x7xf32>
    %115 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1)>(%64, %64, %c5, %107)
    %expanded_29 = tensor.expand_shape %1 [[0, 1]] : tensor<1xi1> into tensor<1x1xi1>
    %116 = arith.ori %c-18289_i16, %c-12836_i16 : i16
    %117 = math.sqrt %8 : tensor<14xf32>
    %alloca = memref.alloca() : memref<1xi64>
    %118 = math.copysign %8, %2 : tensor<14xf32>
    %119 = memref.load %alloc_20[%c0] : memref<1xi16>
    %120 = math.ctlz %22 : tensor<i16>
    %121 = arith.subi %c1343421930_i32, %extracted : i32
    memref.store %false, %alloc_19[%c8, %c7] : memref<14x14xi1>
    %122 = vector.outerproduct %79, %94, %110 {kind = #vector.kind<minf>} : vector<14xf32>, vector<14xf32>
    %123 = vector.broadcast %c1164286809_i32 : i32 to vector<14x14xi32>
    %124 = math.powf %cst_5, %114 : f32
    %125 = index.divs %c7, %c14
    %126 = math.copysign %cst_3, %cst_4 : f32
    %127 = math.round %splat_27 : tensor<14x14xf16>
    %128 = math.atan2 %cst_1, %cst_2 : f16
    %129 = math.round %114 : f32
    %130 = math.cttz %c-18289_i16 : i16
    %131 = memref.load %41[%c12] : memref<14xf32>
    %132 = math.sqrt %cst_4 : f32
    %from_elements = tensor.from_elements %false, %true, %extracted_28, %true, %true, %extracted_28, %extracted_28, %false, %false, %true, %extracted_28, %false, %true, %extracted_28, %true, %true, %extracted_28, %false, %extracted_28, %true, %false, %true, %false, %extracted_28, %false, %true, %false_0, %extracted_28, %extracted_28, %extracted_28, %false_0, %false, %false_0, %extracted_28, %true, %false_0, %extracted_28, %true, %extracted_28, %false, %false, %true, %false_0, %false, %false, %true, %false_0, %extracted_28, %true : tensor<7x7xi1>
    %133 = memref.atomic_rmw maxs %c796176655_i64, %alloc_8[%c2, %c12] : (i64, memref<14x14xi64>) -> i64
    %cst_30 = arith.constant 0x4D5AC028 : f32
    %134 = math.ctpop %false : i1
    %135 = arith.subi %extracted, %67 : i32
    %136 = arith.andi %extracted, %c1343421930_i32 : i32
    %c1766791611_i64 = arith.constant 1766791611 : i64
    %137 = math.atan2 %cst, %cst : f16
    memref.store %67, %alloc_7[%c4] : memref<14xi32>
    %138 = math.fpowi %114, %extracted : f32, i32
    %generated_31 = tensor.generate %64 {
    ^bb0(%arg1: index, %arg2: index):
      %257 = tensor.empty() : tensor<14x14xi1>
      %258 = linalg.matmul ins(%10, %15 : tensor<14x14xi1>, tensor<14x14xi1>) outs(%257 : tensor<14x14xi1>) -> tensor<14x14xi1>
      memref.store %cst_4, %alloc_18[%c8, %c10] : memref<14x14xf32>
      %259 = arith.cmpi uge, %false_0, %false_0 : i1
      %alloca_46 = memref.alloca() : memref<14xf32>
      tensor.yield %extracted : i32
    } : tensor<?x14xi32>
    %139 = vector.bitcast %101 : vector<7xf32> to vector<7xf32>
    memref.alloca_scope  {
      %257 = math.ctpop %67 : i32
      %258 = vector.create_mask %c1 : vector<14xi1>
      %259 = index.casts %c1343421930_i32 : i32 to index
      %260 = math.fma %7, %7, %7 : tensor<1xf32>
      %261 = math.fma %29, %2, %29 : tensor<14xf32>
      %262 = vector.broadcast %67 : i32 to vector<14xi32>
      %263 = memref.load %alloc_7[%c1] : memref<14xi32>
      %264 = affine.if affine_set<(d0, d1, d2) : (d1 floordiv 16 >= 0, (d1 floordiv 16) ceildiv 16 == 0, (d1 floordiv 16 - 128) * 2 == 0, (d1 floordiv 16) ceildiv 16 >= 0)>(%c2, %c11, %c2) -> i1 {
        %288 = arith.maxui %false_0, %extracted_28 : i1
        %expanded_47 = tensor.expand_shape %1 [[0, 1]] : tensor<1xi1> into tensor<1x1xi1>
        %289 = arith.subi %false_0, %true : i1
        %290 = arith.floordivsi %c1896577496_i64, %c1896577496_i64 : i64
        %291 = arith.maxf %cst, %cst_2 : f16
        %292 = math.rsqrt %2 : tensor<14xf32>
        %293 = index.ceildivs %c3, %c5
        %294 = vector.reduction <or>, %39 : vector<7xi32> into i32
        affine.yield %false_0 : i1
      } else {
        %288 = arith.maxsi %c796176655_i64, %c796176655_i64 : i64
        %from_elements_47 = tensor.from_elements %c1164286809_i32 : tensor<1xi32>
        %289 = math.round %29 : tensor<14xf32>
        %290 = math.copysign %8, %2 : tensor<14xf32>
        %291 = memref.load %alloc_13[%c0] : memref<1xf32>
        %292 = vector.create_mask %81 : vector<14xi1>
        %293 = arith.subi %extracted_28, %extracted_28 : i1
        %294 = math.absf %29 : tensor<14xf32>
        affine.yield %false_0 : i1
      }
      %alloca_46 = memref.alloca() : memref<14xf32>
      %265 = math.absf %cst_4 : f32
      %266 = math.expm1 %splat_27 : tensor<14x14xf16>
      %267 = math.atan2 %cst_5, %cst_5 : f32
      %268 = arith.maxf %cst_3, %cst_4 : f32
      %269 = math.cos %2 : tensor<14xf32>
      %270 = arith.floordivsi %c1164286809_i32, %c1343421930_i32 : i32
      %271 = index.divs %64, %c12
      %272 = vector.outerproduct %94, %93, %110 {kind = #vector.kind<minf>} : vector<14xf32>, vector<14xf32>
      %273 = arith.maxsi %false, %false_0 : i1
      %274 = scf.if %extracted_28 -> (i64) {
        %288 = vector.bitcast %258 : vector<14xi1> to vector<14xi1>
        %extracted_47 = tensor.extract %expanded_29[%c0, %c0] : tensor<1x1xi1>
        %289 = math.fma %cst_3, %114, %cst_4 : f32
        %290 = arith.divf %cst_3, %extracted_26 : f32
        %alloc_48 = memref.alloc() : memref<7x7xi1>
        %291 = index.add %125, %86
        %292 = math.fpowi %cst_3, %67 : f32, i32
        %293 = math.fma %2, %29, %8 : tensor<14xf32>
        scf.yield %c796176655_i64 : i64
      } else {
        %288 = bufferization.to_memref %splat : memref<7x7xf32>
        %289 = math.fpowi %cst_4, %extracted : f32, i32
        %alloca_47 = memref.alloca() : memref<14xi16>
        %290 = vector.broadcast %cst_5 : f32 to vector<7x7xf32>
        %291 = vector.outerproduct %101, %103, %290 {kind = #vector.kind<minf>} : vector<7xf32>, vector<7xf32>
        %292 = arith.divf %extracted_26, %cst_5 : f32
        %293 = vector.shuffle %123, %123 [1, 2, 3, 5, 7, 9, 17, 19, 20, 21, 24, 25, 26, 27] : vector<14x14xi32>, vector<14x14xi32>
        %294 = vector.broadcast %cst_5 : f32 to vector<14x14xf32>
        %alloca_48 = memref.alloca() : memref<7x7xi64>
        scf.yield %c1896577496_i64 : i64
      }
      %275 = index.ceildivs %c1, %271
      %276 = arith.shrui %c-18289_i16, %c-18289_i16 : i16
      %277 = arith.remsi %c1343421930_i32, %67 : i32
      %278 = affine.apply affine_map<(d0) -> ((d0 + 32) * 2)>(%64)
      %279 = vector.broadcast %c4 : index to vector<14xindex>
      vector.scatter %58[%c10, %c4] [%279], %258, %258 : memref<14x14xi1>, vector<14xindex>, vector<14xi1>, vector<14xi1>
      %280 = index.floordivs %259, %96
      %c1_i16 = arith.constant 1 : i16
      %c0_i16 = arith.constant 0 : i16
      %281 = vector.transfer_read %14[%28], %c0_i16 : tensor<14xi16>, vector<i16>
      %282 = math.expm1 %2 : tensor<14xf32>
      %283 = arith.subi %true, %extracted_28 : i1
      %284 = affine.min affine_map<(d0, d1) -> (d0 + 128, d0 ceildiv 2 + d0 mod 8 + d0 ceildiv 64, -(d0 ceildiv 64))>(%34, %c14)
      %285 = math.log1p %7 : tensor<1xf32>
      %286 = index.maxs %64, %284
      %287 = vector.bitcast %25 : vector<1xi32> to vector<1xi32>
    }
    %140 = math.absf %8 : tensor<14xf32>
    %141 = vector.reduction <or>, %25 : vector<1xi32> into i32
    %142 = math.fma %cst_1, %cst_2, %cst_1 : f16
    %143 = vector.insert %cst_5, %139 [2] : f32 into vector<7xf32>
    %144 = vector.multi_reduction <mul>, %98, %cst_3 [0] : vector<8xf32> to f32
    %145 = arith.andi %c1896577496_i64, %c796176655_i64 : i64
    %146 = index.ceildivu %c2, %c9
    %147 = math.atan %144 : f32
    %148 = vector.insert %cst_4, %101 [6] : f32 into vector<7xf32>
    %149 = math.ceil %cst_5 : f32
    %150 = arith.shrui %c1343421930_i32, %67 : i32
    %151 = index.ceildivu %c9, %c8
    %152 = bufferization.clone %alloc_11 : memref<14x14xf32> to memref<14x14xf32>
    vector.print %102 : vector<7xi1>
    %153 = arith.remsi %extracted_28, %true : i1
    %154 = memref.atomic_rmw minf %114, %alloc_13[%c0] : (f32, memref<1xf32>) -> f32
    %alloca_32 = memref.alloca() : memref<1xf16>
    %155 = arith.ceildivsi %c796176655_i64, %c796176655_i64 : i64
    %156 = math.powf %extracted_26, %cst_5 : f32
    %157 = arith.shrsi %c1343421930_i32, %67 : i32
    %158 = bufferization.clone %alloc_16 : memref<1xi1> to memref<1xi1>
    %159 = scf.if %true -> (i64) {
      %257 = arith.maxui %c-12836_i16, %c-12836_i16 : i16
      %258 = math.exp %2 : tensor<14xf32>
      vector.print %80 : vector<7x7xi32>
      %expanded_46 = tensor.expand_shape %13 [[0, 1]] : tensor<14xi32> into tensor<14x1xi32>
      %259 = index.floordivs %c11, %c5
      %260 = math.sqrt %cst_1 : f16
      %261 = arith.remf %cst_4, %144 : f32
      %262 = scf.while (%arg1 = %c1164286809_i32) : (i32) -> i32 {
        %263 = arith.ori %extracted, %c1343421930_i32 : i32
        %264 = index.ceildivu %34, %96
        %265 = vector.broadcast %cst_2 : f16 to vector<14xf16>
        %266 = math.atan2 %cst, %cst_1 : f16
        %267 = math.absf %cst_3 : f32
        %268 = index.sub %c1, %86
        %269 = math.cos %144 : f32
        %270 = arith.remui %c-18289_i16, %c-12836_i16 : i16
        scf.condition(%true) %c1343421930_i32 : i32
      } do {
      ^bb0(%arg1: i32):
        %263 = arith.divui %false_0, %false : i1
        %264 = memref.atomic_rmw minf %extracted_26, %41[%c9] : (f32, memref<14xf32>) -> f32
        %265 = index.add %146, %c11
        %266 = arith.remsi %c1896577496_i64, %c1896577496_i64 : i64
        %267 = memref.atomic_rmw mulf %extracted_26, %alloc_13[%c0] : (f32, memref<1xf32>) -> f32
        %cst_47 = arith.constant 1.289600e+04 : f16
        %268 = index.divs %c15, %64
        %269 = index.casts %67 : i32 to index
        %270 = math.round %extracted_26 : f32
        %271 = math.round %splat_27 : tensor<14x14xf16>
        %272 = arith.xori %false, %false_0 : i1
        %cst_48 = arith.constant 1.000000e+00 : f32
        %cst_49 = arith.constant 0.000000e+00 : f32
        %273 = vector.transfer_read %2[%c6], %cst_49 : tensor<14xf32>, vector<f32>
        memref.store %extracted_28, %58[%c4, %c0] : memref<14x14xi1>
        %274 = math.log1p %cst_1 : f16
        %275 = math.ipowi %0, %0 : tensor<14x14xi32>
        %276 = vector.broadcast %extracted_28 : i1 to vector<1xi1>
        %277 = vector.maskedload %alloc_12[%c0], %276, %25 : memref<1xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
        scf.yield %extracted : i32
      }
      scf.yield %c1896577496_i64 : i64
    } else {
      %257 = index.casts %c8 : index to i32
      %258 = arith.minui %false_0, %true : i1
      %259 = arith.maxui %c1164286809_i32, %extracted : i32
      %260 = tensor.empty() : tensor<7x7x7xi32>
      %261 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%260 : tensor<7x7x7xi32>) {
      ^bb0(%out: i32):
        %265 = math.powf %7, %7 : tensor<1xf32>
        vector.print %79 : vector<14xf32>
        vector.print %98 : vector<8xf32>
        %266 = math.cos %extracted_26 : f32
        %267 = arith.maxsi %c1896577496_i64, %c1896577496_i64 : i64
        %268 = math.atan2 %7, %7 : tensor<1xf32>
        %269 = index.floordivs %c6, %151
        %270 = vector.insertelement %cst_3, %78[%c11 : index] : vector<14xf32>
        %271 = vector.broadcast %28 : index to vector<14xindex>
        %272 = vector.broadcast %false : i1 to vector<14xi1>
        vector.scatter %alloc_19[%c8, %c2] [%271], %272, %272 : memref<14x14xi1>, vector<14xindex>, vector<14xi1>, vector<14xi1>
        %alloca_47 = memref.alloca() : memref<14xf16>
        %273 = arith.maxui %out, %extracted : i32
        %274 = memref.load %alloc[%c5] : memref<14xf16>
        %275 = arith.divsi %out, %extracted : i32
        %276 = arith.maxui %c-18289_i16, %c-12836_i16 : i16
        %277 = math.sqrt %cst_4 : f32
        %278 = arith.maxui %c1896577496_i64, %c796176655_i64 : i64
        %splat_48 = tensor.splat %extracted_28 : tensor<7x7xi1>
        %279 = arith.shrui %false_0, %extracted_28 : i1
        %280 = index.ceildivs %107, %c14
        %281 = arith.negf %extracted_26 : f32
        %282 = bufferization.clone %alloc_9 : memref<7x7xf16> to memref<7x7xf16>
        %extracted_49 = tensor.extract %23[] : tensor<i16>
        %283 = arith.maxui %true, %false : i1
        %284 = arith.maxui %c-12836_i16, %c26275_i16 : i16
        %false_50 = index.bool.constant false
        %285 = vector.load %alloc_17[%c13] : memref<14xf16>, vector<14x14xf16>
        memref.store %c26275_i16, %44[%c0] : memref<1xi16>
        %286 = math.rsqrt %7 : tensor<1xf32>
        %287 = arith.shli %c26275_i16, %c-12836_i16 : i16
        %288 = arith.ceildivsi %c1896577496_i64, %c796176655_i64 : i64
        %289 = math.expm1 %cst_2 : f16
        %alloca_51 = memref.alloca() : memref<7x7xf32>
        linalg.yield %extracted : i32
      } -> tensor<7x7x7xi32>
      %alloca_46 = memref.alloca() : memref<7x7xi32>
      %262 = math.atan %29 : tensor<14xf32>
      %263 = vector.extract_strided_slice %103 {offsets = [0], sizes = [3], strides = [1]} : vector<7xf32> to vector<3xf32>
      %264 = math.absf %29 : tensor<14xf32>
      scf.yield %c1896577496_i64 : i64
    }
    %160 = math.ctpop %c26275_i16 : i16
    %161 = arith.divf %114, %extracted_26 : f32
    %162 = arith.cmpi ugt, %extracted, %extracted : i32
    %163 = arith.andi %67, %extracted : i32
    %164 = tensor.empty() : tensor<7x7xi16>
    %165 = linalg.matmul ins(%12, %12 : tensor<7x7xi16>, tensor<7x7xi16>) outs(%164 : tensor<7x7xi16>) -> tensor<7x7xi16>
    %166 = index.sub %115, %c12
    %167 = math.round %extracted_26 : f32
    %168 = bufferization.clone %alloc_17 : memref<14xf16> to memref<14xf16>
    %169 = index.divu %c4, %c7
    %false_33 = index.bool.constant false
    %170 = memref.load %158[%c0] : memref<1xi1>
    %generated_34 = tensor.generate %c12, %166 {
    ^bb0(%arg1: index, %arg2: index):
      %257 = memref.load %alloc_9[%c4, %c2] : memref<7x7xf16>
      %258 = math.fma %cst_1, %cst_1, %cst_1 : f16
      %259 = vector.extract_strided_slice %94 {offsets = [3], sizes = [9], strides = [1]} : vector<14xf32> to vector<9xf32>
      vector.print %78 : vector<14xf32>
      tensor.yield %114 : f32
    } : tensor<?x?xf32>
    %171 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %139, %103, %144 : vector<7xf32>, vector<7xf32> into f32
    %172 = math.ipowi %12, %12 : tensor<7x7xi16>
    %173 = index.divs %81, %151
    %true_35 = arith.constant true
    %174 = arith.floordivsi %c-18289_i16, %c26275_i16 : i16
    %175 = arith.maxui %c-18289_i16, %c26275_i16 : i16
    %176 = math.exp %8 : tensor<14xf32>
    %177 = math.round %8 : tensor<14xf32>
    %178 = math.ctlz %extracted : i32
    %179 = index.divs %c7, %34
    %180 = arith.addf %cst_2, %cst_1 : f16
    %181 = memref.realloc %alloc_12 : memref<1xi32> to memref<1xi32>
    %182 = math.copysign %splat_27, %splat_27 : tensor<14x14xf16>
    %183 = vector.create_mask %c2, %125 : vector<14x14xi1>
    %expanded_36 = tensor.expand_shape %4 [[0, 1]] : tensor<14xi1> into tensor<14x1xi1>
    %184 = vector.broadcast %67 : i32 to vector<14xi32>
    %dest_37, %accumulated_value_38 = vector.scan <add>, %123, %184 {inclusive = true, reduction_dim = 1 : i64} : vector<14x14xi32>, vector<14xi32>
    %185 = vector.multi_reduction <xor>, %102, %102 [] : vector<7xi1> to vector<7xi1>
    %186 = scf.while (%arg1 = %79) : (vector<14xf32>) -> vector<14xf32> {
      %257 = vector.multi_reduction <add>, %110, %cst_5 [0, 1] : vector<14x14xf32> to f32
      %258 = index.divs %169, %c3
      %259 = arith.remui %159, %c796176655_i64 : i64
      %260 = index.add %28, %107
      %261 = arith.shrsi %extracted, %c1164286809_i32 : i32
      scf.if %false_0 {
        %265 = math.round %cst_2 : f16
        %266 = affine.load %alloc_10[%c8, %c13] : memref<7x7xf32>
        %267 = math.exp %29 : tensor<14xf32>
        %268 = arith.divui %c1343421930_i32, %extracted : i32
        %269 = arith.remui %c796176655_i64, %159 : i64
        %270 = vector.broadcast %cst_3 : f32 to vector<8x8xf32>
        %271 = vector.outerproduct %98, %98, %270 {kind = #vector.kind<minf>} : vector<8xf32>, vector<8xf32>
        %272 = vector.outerproduct %79, %93, %105 {kind = #vector.kind<maxf>} : vector<14xf32>, vector<14xf32>
        %273 = vector.reduction <add>, %79 : vector<14xf32> into f32
      } else {
        %265 = memref.atomic_rmw assign %257, %alloc_13[%c0] : (f32, memref<1xf32>) -> f32
        %expanded_47 = tensor.expand_shape %splat [[0], [1, 2]] : tensor<7x7xf32> into tensor<7x7x1xf32>
        %266 = vector.multi_reduction <minf>, %139, %101 [] : vector<7xf32> to vector<7xf32>
        %267 = math.log2 %2 : tensor<14xf32>
        memref.store %extracted_26, %152[%c11, %c6] : memref<14x14xf32>
        %268 = index.sub %146, %260
        %269 = index.sizeof
        %270 = arith.floordivsi %159, %c796176655_i64 : i64
      }
      %262 = vector.reduction <minf>, %93 : vector<14xf32> into f32
      %263 = tensor.empty() : tensor<7x7x7xi32>
      %alloc_46 = memref.alloc() : memref<7xi32>
      %264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%263, %alloc_46, %263 : tensor<7x7x7xi32>, memref<7xi32>, tensor<7x7x7xi32>) outs(%263 : tensor<7x7x7xi32>) {
      ^bb0(%in: i32, %in_47: i32, %in_48: i32, %out: i32):
        memref.copy %alloc_10, %alloc_15 : memref<7x7xf32> to memref<7x7xf32>
        %dest_49, %accumulated_value_50 = vector.scan <maxf>, %105, %93 {inclusive = false, reduction_dim = 0 : i64} : vector<14x14xf32>, vector<14xf32>
        %265 = affine.apply affine_map<(d0) -> ((d0 + 32) * 2)>(%c6)
        %266 = vector.create_mask %81, %c6 : vector<7x7xi1>
        %alloc_51 = memref.alloc() : memref<14xf32>
        %267 = math.round %8 : tensor<14xf32>
        %268 = arith.shli %c-12836_i16, %c-18289_i16 : i16
        %269 = math.absf %29 : tensor<14xf32>
        memref.store %cst_2, %168[%c2] : memref<14xf16>
        %270 = vector.broadcast %cst : f16 to vector<7xf16>
        %271 = vector.maskedload %168[%c3], %102, %270 : memref<14xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
        %272 = vector.create_mask %c4 : vector<14xi1>
        %273 = index.add %258, %c3
        %true_52 = index.bool.constant true
        %274 = arith.ceildivsi %true_52, %false : i1
        %275 = arith.maxui %extracted, %in_48 : i32
        %276 = math.tan %2 : tensor<14xf32>
        %277 = vector.bitcast %272 : vector<14xi1> to vector<14xi1>
        %278 = math.atan %cst_2 : f16
        %279 = arith.divui %c1343421930_i32, %in_48 : i32
        %280 = index.add %96, %166
        %281 = math.round %2 : tensor<14xf32>
        %282 = index.divs %173, %169
        %283 = tensor.empty() : tensor<14x1xi1>
        %284 = linalg.matmul ins(%10, %expanded_36 : tensor<14x14xi1>, tensor<14x1xi1>) outs(%283 : tensor<14x1xi1>) -> tensor<14x1xi1>
        %expanded_53 = tensor.expand_shape %from_elements [[0], [1, 2]] : tensor<7x7xi1> into tensor<7x7x1xi1>
        %285 = arith.shli %false_33, %false_0 : i1
        %286 = arith.cmpf ueq, %114, %extracted_26 : f32
        %287 = index.casts %c1343421930_i32 : i32 to index
        %288 = vector.reduction <add>, %272 : vector<14xi1> into i1
        %expanded_54 = tensor.expand_shape %transposed [[0, 1]] : tensor<1xi32> into tensor<1x1xi32>
        %289 = math.absf %cst_2 : f16
        %290 = math.atan2 %8, %2 : tensor<14xf32>
        %291 = math.sqrt %257 : f32
        linalg.yield %c1164286809_i32 : i32
      } -> tensor<7x7x7xi32>
      scf.condition(%false_33) %78 : vector<14xf32>
    } do {
    ^bb0(%arg1: vector<14xf32>):
      %257 = vector.extract %110[6] : vector<14x14xf32>
      %258 = vector.extract_strided_slice %257 {offsets = [10], sizes = [3], strides = [1]} : vector<14xf32> to vector<3xf32>
      %259 = memref.realloc %alloc_16 : memref<1xi1> to memref<7xi1>
      %260 = math.atan %cst_3 : f32
      %261 = arith.subi %extracted, %67 : i32
      %262 = math.atan2 %7, %7 : tensor<1xf32>
      %263 = memref.load %alloc_19[%c10, %c3] : memref<14x14xi1>
      %264 = math.ipowi %9, %18 : tensor<1xi32>
      %cst_46 = arith.constant 1.200000e+01 : f16
      %265 = math.atan %114 : f32
      %266 = math.copysign %cst_4, %cst_5 : f32
      %267 = math.cttz %c796176655_i64 : i64
      %268 = math.round %114 : f32
      %269 = index.casts %c1896577496_i64 : i64 to index
      %270 = vector.shuffle %103, %258 [7] : vector<7xf32>, vector<3xf32>
      %271 = arith.addf %cst_2, %cst_1 : f16
      scf.yield %79 : vector<14xf32>
    }
    %187 = math.expm1 %7 : tensor<1xf32>
    %188 = scf.while (%arg1 = %168) : (memref<14xf16>) -> memref<14xf16> {
      bufferization.dealloc_tensor %transposed : tensor<1xi32>
      vector.print %25 : vector<1xi32>
      %257 = vector.broadcast %false_33 : i1 to vector<7x7xi1>
      %258 = vector.outerproduct %102, %102, %257 {kind = #vector.kind<xor>} : vector<7xi1>, vector<7xi1>
      %259 = arith.shrui %extracted_28, %extracted_28 : i1
      vector.print %20 : vector<7xi32>
      %260 = affine.apply affine_map<(d0, d1) -> ((d1 - 8) floordiv 64)>(%c12, %64)
      %261 = vector.bitcast %94 : vector<14xf32> to vector<14xf32>
      %262 = index.divu %c7, %c11
      scf.condition(%false) %168 : memref<14xf16>
    } do {
    ^bb0(%arg1: memref<14xf16>):
      %257 = math.log1p %cst : f16
      %c1_i16 = arith.constant 1 : i16
      %c0_i16 = arith.constant 0 : i16
      %258 = vector.transfer_read %164[%179, %179], %c0_i16 : tensor<7x7xi16>, vector<i16>
      %259 = vector.broadcast %cst_5 : f32 to vector<14xf32>
      %260 = vector.fma %259, %259, %79 : vector<14xf32>
      %261 = arith.remf %cst_2, %cst : f16
      %262 = math.cos %29 : tensor<14xf32>
      %263 = arith.shli %false_0, %false : i1
      %c874020445_i32 = arith.constant 874020445 : i32
      %264 = math.absf %2 : tensor<14xf32>
      %265 = math.log2 %8 : tensor<14xf32>
      %266 = arith.negf %144 : f32
      %267 = scf.index_switch %c3 -> i1 
      case 1 {
        %alloca_47 = memref.alloca() : memref<14x14xi32>
        affine.store %c26275_i16, %alloc_20[%c0] : memref<1xi16>
        %273 = math.fpowi %144, %c1164286809_i32 : f32, i32
        %274 = math.cttz %15 : tensor<14x14xi1>
        %cst_48 = arith.constant 1.7456288E+9 : f32
        %275 = arith.divf %cst_4, %cst_4 : f32
        %276 = arith.maxsi %c1896577496_i64, %c796176655_i64 : i64
        %alloca_49 = memref.alloca() : memref<14x14xi16>
        %277 = index.floordivs %c14, %c15
        %278 = math.tan %7 : tensor<1xf32>
        %279 = arith.remsi %false_0, %true : i1
        %280 = math.absf %8 : tensor<14xf32>
        %281 = memref.load %alloc_10[%c0, %c0] : memref<7x7xf32>
        %282 = affine.load %alloc_17[%c11] : memref<14xf16>
        %283 = math.roundeven %extracted_26 : f32
        %284 = arith.minf %cst_5, %cst_4 : f32
        scf.yield %false_33 : i1
      }
      default {
        %273 = index.casts %34 : index to i32
        %dest_47, %accumulated_value_48 = vector.scan <add>, %110, %259 {inclusive = false, reduction_dim = 0 : i64} : vector<14x14xf32>, vector<14xf32>
        %274 = vector.extract_strided_slice %183 {offsets = [3], sizes = [10], strides = [1]} : vector<14x14xi1> to vector<10x14xi1>
        %275 = affine.load %alloc_18[%c12, %c15] : memref<14x14xf32>
        %276 = index.divs %96, %c7
        %277 = math.copysign %8, %8 : tensor<14xf32>
        %alloca_49 = memref.alloca() : memref<14x14xi64>
        %278 = math.exp %275 : f32
        %279 = vector.extract_strided_slice %274 {offsets = [3], sizes = [1], strides = [1]} : vector<10x14xi1> to vector<1x14xi1>
        %280 = index.divu %96, %166
        %281 = arith.ceildivsi %c-18289_i16, %c26275_i16 : i16
        %282 = vector.broadcast %67 : i32 to vector<14xi32>
        %dest_50, %accumulated_value_51 = vector.scan <and>, %123, %282 {inclusive = true, reduction_dim = 0 : i64} : vector<14x14xi32>, vector<14xi32>
        %283 = math.ctpop %from_elements : tensor<7x7xi1>
        %284 = vector.broadcast %false_33 : i1 to vector<i1>
        %285 = vector.transfer_write %284, %from_elements[%c14, %146] : vector<i1>, tensor<7x7xi1>
        %286 = math.ctpop %17 : tensor<14xi1>
        %287 = arith.minui %false, %false_33 : i1
        scf.yield %false : i1
      }
      %alloca_46 = memref.alloca() : memref<1xi32>
      %268 = index.add %179, %c2
      %269 = math.cttz %50 : tensor<14x14xi16>
      %270 = math.fpowi %114, %extracted : f32, i32
      %271 = vector.broadcast %c1343421930_i32 : i32 to vector<1x1xi32>
      %272 = vector.outerproduct %25, %25, %271 {kind = #vector.kind<add>} : vector<1xi32>, vector<1xi32>
      scf.yield %168 : memref<14xf16>
    }
    %189 = scf.index_switch %115 -> i64 
    case 1 {
      %257 = math.round %cst_3 : f32
      %258 = memref.load %alloc_18[%c3, %c2] : memref<14x14xf32>
      %259 = vector.bitcast %123 : vector<14x14xi32> to vector<14x14xi32>
      %260 = index.ceildivu %c15, %c15
      %false_46 = index.bool.constant false
      %261 = arith.ceildivsi %c26275_i16, %c26275_i16 : i16
      %262 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %259, %259, %259 : vector<14x14xi32>, vector<14x14xi32> into vector<14x14xi32>
      %263 = arith.subi %extracted_28, %false_33 : i1
      %264 = index.add %c2, %c6
      %from_elements_47 = tensor.from_elements %c1343421930_i32, %67, %extracted, %67, %c1343421930_i32, %c1343421930_i32, %c1164286809_i32, %c1164286809_i32, %67, %c1343421930_i32, %c1343421930_i32, %c1343421930_i32, %c1343421930_i32, %67, %extracted, %extracted, %c1343421930_i32, %extracted, %c1343421930_i32, %c1343421930_i32, %extracted, %extracted, %c1343421930_i32, %67, %extracted, %67, %c1164286809_i32, %c1164286809_i32, %c1164286809_i32, %extracted, %c1343421930_i32, %extracted, %67, %67, %extracted, %67, %extracted, %67, %67, %67, %c1164286809_i32, %extracted, %67, %extracted, %c1343421930_i32, %c1343421930_i32, %c1343421930_i32, %c1343421930_i32, %c1343421930_i32, %c1343421930_i32, %c1164286809_i32, %c1164286809_i32, %extracted, %extracted, %67, %67, %c1164286809_i32, %67, %67, %extracted, %extracted, %67, %c1164286809_i32, %c1164286809_i32, %c1343421930_i32, %c1164286809_i32, %c1343421930_i32, %c1164286809_i32, %c1343421930_i32, %c1343421930_i32, %c1343421930_i32, %67, %extracted, %c1343421930_i32, %c1164286809_i32, %extracted, %67, %c1343421930_i32, %c1343421930_i32, %c1164286809_i32, %extracted, %c1164286809_i32, %extracted, %67, %67, %67, %c1343421930_i32, %extracted, %c1164286809_i32, %c1164286809_i32, %extracted, %extracted, %67, %c1343421930_i32, %c1343421930_i32, %67, %67, %c1164286809_i32, %c1164286809_i32, %c1164286809_i32, %c1164286809_i32, %c1164286809_i32, %c1343421930_i32, %c1164286809_i32, %c1343421930_i32, %extracted, %67, %c1343421930_i32, %c1164286809_i32, %67, %c1343421930_i32, %extracted, %extracted, %c1343421930_i32, %c1343421930_i32, %extracted, %c1164286809_i32, %extracted, %c1164286809_i32, %extracted, %67, %c1164286809_i32, %c1343421930_i32, %c1164286809_i32, %c1343421930_i32, %67, %67, %extracted, %67, %c1164286809_i32, %c1164286809_i32, %extracted, %c1164286809_i32, %c1343421930_i32, %67, %c1343421930_i32, %c1164286809_i32, %c1164286809_i32, %67, %extracted, %c1343421930_i32, %extracted, %67, %c1343421930_i32, %67, %c1164286809_i32, %67, %67, %67, %67, %c1164286809_i32, %c1343421930_i32, %extracted, %c1343421930_i32, %67, %extracted, %c1343421930_i32, %c1164286809_i32, %c1343421930_i32, %c1164286809_i32, %67, %c1164286809_i32, %extracted, %extracted, %c1164286809_i32, %c1343421930_i32, %extracted, %c1164286809_i32, %c1164286809_i32, %c1343421930_i32, %c1164286809_i32, %67, %c1164286809_i32, %67, %c1343421930_i32, %c1343421930_i32, %67, %extracted, %c1343421930_i32, %67, %extracted, %c1343421930_i32, %67, %c1164286809_i32, %extracted, %67, %c1343421930_i32, %c1164286809_i32, %extracted, %extracted, %extracted, %67, %c1343421930_i32, %67, %extracted, %67 : tensor<14x14xi32>
      %265 = vector.insertelement %cst_5, %78[%c3 : index] : vector<14xf32>
      %266 = vector.flat_transpose %93 {columns = 7 : i32, rows = 2 : i32} : vector<14xf32> -> vector<14xf32>
      %267 = index.add %179, %c11
      %alloca_48 = memref.alloca() : memref<14x14xi64>
      %generated_49 = tensor.generate %c3, %264 {
      ^bb0(%arg1: index, %arg2: index):
        %dest_51, %accumulated_value_52 = vector.scan <maxf>, %110, %94 {inclusive = false, reduction_dim = 0 : i64} : vector<14x14xf32>, vector<14xf32>
        %268 = vector.create_mask %c11 : vector<1xi1>
        %269 = memref.load %alloc_20[%c0] : memref<1xi16>
        %270 = math.cos %cst_4 : f32
        tensor.yield %c1896577496_i64 : i64
      } : tensor<?x?xi64>
      %from_elements_50 = tensor.from_elements %c1164286809_i32 : tensor<1xi32>
      scf.yield %c1896577496_i64 : i64
    }
    case 2 {
      %257 = bufferization.clone %alloc_13 : memref<1xf32> to memref<1xf32>
      %258 = math.atan %8 : tensor<14xf32>
      %259 = memref.load %41[%c8] : memref<14xf32>
      %260 = arith.shli %extracted, %c1164286809_i32 : i32
      %261 = index.divs %169, %c8
      %262 = vector.broadcast %67 : i32 to vector<14xi32>
      %263 = vector.multi_reduction <minsi>, %123, %262 [0] : vector<14x14xi32> to vector<14xi32>
      %264 = vector.broadcast %false : i1 to vector<7x7xi1>
      %265 = vector.outerproduct %102, %102, %264 {kind = #vector.kind<and>} : vector<7xi1>, vector<7xi1>
      %266 = arith.divf %cst_3, %cst_5 : f32
      %267 = vector.flat_transpose %101 {columns = 7 : i32, rows = 1 : i32} : vector<7xf32> -> vector<7xf32>
      %268 = memref.load %44[%c0] : memref<1xi16>
      %269 = math.copysign %cst_1, %cst_2 : f16
      %270 = bufferization.to_memref %2 : memref<14xf32>
      %271 = index.ceildivu %125, %125
      %272 = math.round %8 : tensor<14xf32>
      %expanded_46 = tensor.expand_shape %0 [[0], [1, 2]] : tensor<14x14xi32> into tensor<14x14x1xi32>
      %273 = vector.broadcast %144 : f32 to vector<14x14xf32>
      scf.yield %159 : i64
    }
    default {
      %257 = arith.divf %cst_2, %cst_2 : f16
      %258 = arith.remf %cst_5, %114 : f32
      %259 = vector.matrix_multiply %98, %103 {lhs_columns = 1 : i32, lhs_rows = 8 : i32, rhs_columns = 7 : i32} : (vector<8xf32>, vector<7xf32>) -> vector<56xf32>
      memref.copy %168, %alloc_17 : memref<14xf16> to memref<14xf16>
      %extracted_46 = tensor.extract %15[%c9, %c13] : tensor<14x14xi1>
      %260 = vector.multi_reduction <minf>, %78, %cst_3 [0] : vector<14xf32> to f32
      %261 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %183, %183, %183 : vector<14x14xi1>, vector<14x14xi1> into vector<14x14xi1>
      %262 = vector.outerproduct %20, %39, %80 {kind = #vector.kind<maxui>} : vector<7xi32>, vector<7xi32>
      %263 = math.absf %8 : tensor<14xf32>
      %264 = index.maxs %c8, %64
      %265 = vector.broadcast %c10 : index to vector<14xindex>
      %266 = vector.broadcast %extracted_28 : i1 to vector<14xi1>
      vector.scatter %45[%c1, %c4] [%265], %266, %266 : memref<14x14xi1>, vector<14xindex>, vector<14xi1>, vector<14xi1>
      %dest_47, %accumulated_value_48 = vector.scan <minf>, %110, %78 {inclusive = true, reduction_dim = 0 : i64} : vector<14x14xf32>, vector<14xf32>
      vector.print %183 : vector<14x14xi1>
      %cst_49 = arith.constant 1.000000e+00 : f32
      %267 = vector.transfer_read %alloc_15[%c9, %c12], %cst_49 : memref<7x7xf32>, vector<f32>
      %268 = arith.maxsi %c1164286809_i32, %c1164286809_i32 : i32
      %cst_50 = arith.constant 2.273600e+04 : f16
      scf.yield %c1896577496_i64 : i64
    }
    %190 = math.cttz %c1343421930_i32 : i32
    %191 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %183, %183, %183 : vector<14x14xi1>, vector<14x14xi1> into vector<14x14xi1>
    %192 = scf.index_switch %c9 -> index 
    case 1 {
      %257 = math.ctlz %50 : tensor<14x14xi16>
      %258 = math.atan2 %cst_4, %114 : f32
      %259 = math.fma %splat, %splat, %splat : tensor<7x7xf32>
      %260 = tensor.empty() : tensor<7x7x7xi32>
      %alloc_46 = memref.alloc() : memref<7xi32>
      %261 = tensor.empty() : tensor<7x7xi32>
      %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_46, %260, %261 : memref<7xi32>, tensor<7x7x7xi32>, tensor<7x7xi32>) outs(%260 : tensor<7x7x7xi32>) {
      ^bb0(%in: i32, %in_48: i32, %in_49: i32, %out: i32):
        %275 = math.fpowi %2, %13 : tensor<14xf32>, tensor<14xi32>
        %276 = index.maxu %c11, %169
        %277 = index.divu %173, %276
        %278 = arith.remsi %false_33, %false_33 : i1
        %279 = memref.load %152[%c3, %c10] : memref<14x14xf32>
        %false_50 = index.bool.constant false
        %280 = math.fma %8, %29, %2 : tensor<14xf32>
        %281 = vector.multi_reduction <maxf>, %98, %144 [0] : vector<8xf32> to f32
        %inserted_51 = tensor.insert %in_48 into %0[%c3, %c8] : tensor<14x14xi32>
        %282 = arith.xori %extracted_28, %false_33 : i1
        %283 = vector.multi_reduction <add>, %139, %114 [0] : vector<7xf32> to f32
        %284 = arith.cmpf olt, %cst_4, %cst_5 : f32
        %285 = vector.reduction <add>, %79 : vector<14xf32> into f32
        %286 = index.sub %c8, %28
        %287 = memref.realloc %44 : memref<1xi16> to memref<1xi16>
        %288 = arith.shrsi %extracted, %extracted : i32
        %from_elements_52 = tensor.from_elements %in : tensor<1xi32>
        %289 = math.cos %cst_4 : f32
        %290 = memref.realloc %alloc_6 : memref<14xf32> to memref<7xf32>
        %291 = math.atan %114 : f32
        %292 = math.log1p %7 : tensor<1xf32>
        memref.copy %alloc_17, %alloc : memref<14xf16> to memref<14xf16>
        %293 = arith.floordivsi %159, %c796176655_i64 : i64
        %294 = arith.floordivsi %extracted, %c1164286809_i32 : i32
        %295 = index.sub %c10, %c0
        %false_53 = index.bool.constant false
        %296 = arith.maxui %extracted, %67 : i32
        %297 = vector.extract_strided_slice %102 {offsets = [0], sizes = [2], strides = [1]} : vector<7xi1> to vector<2xi1>
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %298 = vector.transfer_read %6[%276, %166], %c0_i16 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<14x14xi16>, vector<14xi16>
        %299 = math.rsqrt %281 : f32
        %300 = arith.maxf %cst_1, %cst_1 : f16
        %301 = index.floordivs %28, %107
        linalg.yield %out : i32
      } -> tensor<7x7x7xi32>
      %263 = math.powf %cst_4, %cst_4 : f32
      %264 = vector.outerproduct %20, %20, %80 {kind = #vector.kind<or>} : vector<7xi32>, vector<7xi32>
      %265 = bufferization.clone %alloc_10 : memref<7x7xf32> to memref<7x7xf32>
      %expanded_47 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<14x14xi1> into tensor<14x14x1xi1>
      %266 = arith.addf %cst, %cst_2 : f16
      %267 = scf.index_switch %107 -> vector<14xi16> 
      case 1 {
        %275 = math.fma %29, %2, %8 : tensor<14xf32>
        %276 = math.powf %cst_4, %cst_4 : f32
        %277 = math.ctpop %13 : tensor<14xi32>
        %278 = arith.shli %c-12836_i16, %c26275_i16 : i16
        %279 = math.rsqrt %splat_27 : tensor<14x14xf16>
        %280 = bufferization.clone %alloc_11 : memref<14x14xf32> to memref<14x14xf32>
        %281 = index.sub %81, %c12
        %282 = vector.broadcast %cst_5 : f32 to vector<1xf32>
        %283 = vector.broadcast %false_33 : i1 to vector<1xi1>
        %284 = vector.maskedload %265[%c3, %c0], %283, %282 : memref<7x7xf32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
        %285 = math.round %cst : f16
        %286 = math.expm1 %cst_1 : f16
        %287 = math.copysign %splat, %splat : tensor<7x7xf32>
        memref.store %extracted_28, %alloc_16[%c0] : memref<1xi1>
        %288 = vector.flat_transpose %94 {columns = 7 : i32, rows = 2 : i32} : vector<14xf32> -> vector<14xf32>
        %289 = math.absf %cst_4 : f32
        %extracted_48 = tensor.extract %13[%c2] : tensor<14xi32>
        %290 = vector.bitcast %105 : vector<14x14xf32> to vector<14x14xi32>
        %291 = vector.broadcast %c-18289_i16 : i16 to vector<14xi16>
        scf.yield %291 : vector<14xi16>
      }
      case 2 {
        %275 = math.expm1 %cst_1 : f16
        %276 = arith.addf %extracted_26, %cst_4 : f32
        %277 = arith.xori %c-18289_i16, %c-12836_i16 : i16
        %278 = vector.matrix_multiply %103, %93 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<7xf32>, vector<14xf32>) -> vector<2xf32>
        %279 = arith.maxui %c1896577496_i64, %c1896577496_i64 : i64
        %280 = arith.maxui %c1343421930_i32, %extracted : i32
        %281 = bufferization.to_memref %11 : memref<14xi1>
        %282 = math.round %114 : f32
        %283 = math.expm1 %144 : f32
        %284 = index.ceildivs %c1, %c15
        %285 = math.rsqrt %8 : tensor<14xf32>
        %286 = math.log10 %2 : tensor<14xf32>
        %287 = arith.remui %false, %extracted_28 : i1
        %288 = vector.insert %cst_5, %101 [1] : f32 into vector<7xf32>
        %true_48 = arith.constant true
        %289 = index.casts %c1343421930_i32 : i32 to index
        %290 = vector.broadcast %c-18289_i16 : i16 to vector<14xi16>
        scf.yield %290 : vector<14xi16>
      }
      case 3 {
        %275 = math.expm1 %extracted_26 : f32
        %276 = math.rsqrt %8 : tensor<14xf32>
        %277 = vector.reduction <minf>, %79 : vector<14xf32> into f32
        %278 = vector.outerproduct %20, %39, %80 {kind = #vector.kind<add>} : vector<7xi32>, vector<7xi32>
        %279 = bufferization.clone %alloc_15 : memref<7x7xf32> to memref<7x7xf32>
        %280 = vector.reduction <maxf>, %101 : vector<7xf32> into f32
        %281 = vector.outerproduct %39, %39, %80 {kind = #vector.kind<maxsi>} : vector<7xi32>, vector<7xi32>
        %282 = math.atan %29 : tensor<14xf32>
        %283 = vector.broadcast %true : i1 to vector<1xi1>
        %284 = vector.gather %158[%c5] [%25], %283, %283 : memref<1xi1>, vector<1xi32>, vector<1xi1>, vector<1xi1> into vector<1xi1>
        %285 = vector.bitcast %183 : vector<14x14xi1> to vector<14x14xi1>
        %286 = index.divu %125, %28
        %287 = math.expm1 %7 : tensor<1xf32>
        %288 = arith.remsi %c796176655_i64, %c796176655_i64 : i64
        %289 = vector.broadcast %c1343421930_i32 : i32 to vector<i32>
        %290 = vector.transfer_write %289, %transposed[%169] : vector<i32>, tensor<1xi32>
        %291 = math.copysign %7, %7 : tensor<1xf32>
        %292 = math.ipowi %19, %19 : tensor<i32>
        %293 = vector.broadcast %c-12836_i16 : i16 to vector<14xi16>
        scf.yield %293 : vector<14xi16>
      }
      default {
        %275 = math.sqrt %cst_4 : f32
        memref.copy %alloc_19, %45 : memref<14x14xi1> to memref<14x14xi1>
        %276 = math.expm1 %cst_4 : f32
        %277 = vector.bitcast %183 : vector<14x14xi1> to vector<14x14xi1>
        %278 = arith.maxsi %c-12836_i16, %c-18289_i16 : i16
        %279 = affine.load %alloc_14[%c1, %c2] : memref<14x14xi16>
        %280 = math.powf %7, %7 : tensor<1xf32>
        %281 = math.log1p %114 : f32
        %282 = math.round %splat_27 : tensor<14x14xf16>
        %283 = math.tan %cst_2 : f16
        %cast = tensor.cast %19 : tensor<i32> to tensor<i32>
        %284 = arith.floordivsi %279, %c-12836_i16 : i16
        %285 = memref.load %41[%c11] : memref<14xf32>
        %286 = index.sizeof
        %287 = math.exp %8 : tensor<14xf32>
        %288 = vector.reduction <minf>, %93 : vector<14xf32> into f32
        %289 = vector.broadcast %c-12836_i16 : i16 to vector<14xi16>
        scf.yield %289 : vector<14xi16>
      }
      %268 = index.ceildivu %c4, %169
      %269 = arith.cmpf false, %144, %cst_3 : f32
      %270 = arith.floordivsi %extracted, %c1164286809_i32 : i32
      %271 = vector.outerproduct %39, %39, %80 {kind = #vector.kind<add>} : vector<7xi32>, vector<7xi32>
      %272 = index.ceildivu %173, %166
      %273 = vector.broadcast %false_33 : i1 to vector<14xi1>
      %274 = vector.insert %273, %183 [5] : vector<14xi1> into vector<14x14xi1>
      scf.yield %c11 : index
    }
    case 2 {
      %cst_46 = arith.constant 1.000000e+00 : f16
      %cst_47 = arith.constant 0.000000e+00 : f16
      %257 = vector.transfer_read %splat_27[%28, %107], %cst_47 : tensor<14x14xf16>, vector<f16>
      %258 = arith.divsi %c1896577496_i64, %159 : i64
      %259 = memref.load %41[%c8] : memref<14xf32>
      %260 = arith.cmpi ugt, %c-12836_i16, %c-12836_i16 : i16
      %261 = math.atan2 %2, %2 : tensor<14xf32>
      %262 = tensor.empty() : tensor<7x7x7xi32>
      %263 = tensor.empty() : tensor<7x7xi32>
      %264 = tensor.empty() : tensor<7xi32>
      %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%263, %264, %262 : tensor<7x7xi32>, tensor<7xi32>, tensor<7x7x7xi32>) outs(%262 : tensor<7x7x7xi32>) {
      ^bb0(%in: i32, %in_51: i32, %in_52: i32, %out: i32):
        %275 = vector.create_mask %c7 : vector<14xi1>
        %276 = math.atan2 %splat, %splat : tensor<7x7xf32>
        %277 = math.fma %splat_27, %splat_27, %splat_27 : tensor<14x14xf16>
        %278 = vector.extract_strided_slice %98 {offsets = [2], sizes = [3], strides = [1]} : vector<8xf32> to vector<3xf32>
        %279 = vector.broadcast %c-18289_i16 : i16 to vector<7x7xi16>
        %280 = vector.broadcast %false_33 : i1 to vector<7x7xi1>
        %281 = vector.gather %14[%146] [%80], %280, %279 : tensor<14xi16>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xi16> into vector<7x7xi16>
        memref.copy %alloc_11, %152 : memref<14x14xf32> to memref<14x14xf32>
        %282 = math.powf %2, %8 : tensor<14xf32>
        %283 = arith.floordivsi %extracted_28, %true : i1
        %284 = vector.extract_strided_slice %103 {offsets = [3], sizes = [3], strides = [1]} : vector<7xf32> to vector<3xf32>
        %285 = arith.maxui %true, %false_33 : i1
        %286 = arith.xori %159, %159 : i64
        %alloc_53 = memref.alloc() : memref<7x7xf16>
        memref.copy %alloc_9, %alloc_53 : memref<7x7xf16> to memref<7x7xf16>
        %287 = tensor.empty() : tensor<1xf16>
        %288 = vector.broadcast %cst_1 : f16 to vector<14x14xf16>
        %289 = vector.gather %287[%c3] [%123], %183, %288 : tensor<1xf16>, vector<14x14xi32>, vector<14x14xi1>, vector<14x14xf16> into vector<14x14xf16>
        %290 = math.ctlz %11 : tensor<14xi1>
        %291 = vector.broadcast %extracted_26 : f32 to vector<14x14xf32>
        %292 = vector.fma %291, %105, %105 : vector<14x14xf32>
        %293 = arith.minsi %in_51, %in_52 : i32
        %extracted_54 = tensor.extract %10[%c10, %c1] : tensor<14x14xi1>
        memref.store %144, %alloc_18[%c12, %c7] : memref<14x14xf32>
        %294 = arith.maxf %cst_4, %144 : f32
        %295 = vector.broadcast %cst_4 : f32 to vector<7x7xf32>
        %296 = vector.gather %alloc_10[%c15, %c0] [%80], %280, %295 : memref<7x7xf32>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xf32> into vector<7x7xf32>
        %297 = memref.atomic_rmw assign %67, %alloc_7[%c5] : (i32, memref<14xi32>) -> i32
        %alloc_55 = memref.alloc() : memref<14xi16>
        %298 = vector.broadcast %c26275_i16 : i16 to vector<14xi16>
        %299 = vector.broadcast %67 : i32 to vector<14xi32>
        %300 = vector.gather %alloc_55[%64] [%299], %275, %298 : memref<14xi16>, vector<14xi32>, vector<14xi1>, vector<14xi16> into vector<14xi16>
        %301 = index.mul %c3, %c4
        %302 = math.fma %144, %144, %cst_3 : f32
        %303 = vector.multi_reduction <mul>, %103, %cst_4 [0] : vector<7xf32> to f32
        %304 = affine.min affine_map<(d0, d1, d2) -> (-((d1 * 16) mod 32), (d1 * 16) mod 32 - 32, (d1 * 16) mod 32)>(%c7, %c13, %c14)
        %305 = math.round %7 : tensor<1xf32>
        %306 = arith.floordivsi %true, %false_33 : i1
        %307 = arith.maxui %false_0, %false : i1
        %308 = memref.load %alloc_8[%c10, %c6] : memref<14x14xi64>
        %309 = affine.max affine_map<(d0) -> (d0 * 256, -d0 + 32, -d0, (d0 * 3) floordiv 64 + 2)>(%c6)
        %310 = arith.maxui %false_0, %extracted_54 : i1
        linalg.yield %67 : i32
      } -> tensor<7x7x7xi32>
      %266 = vector.broadcast %false_33 : i1 to vector<14xi1>
      %dest_48, %accumulated_value_49 = vector.scan <minsi>, %183, %266 {inclusive = false, reduction_dim = 1 : i64} : vector<14x14xi1>, vector<14xi1>
      %267 = vector.transpose %139, [0] : vector<7xf32> to vector<7xf32>
      %generated_50 = tensor.generate %c1 {
      ^bb0(%arg1: index):
        %275 = vector.transpose %101, [0] : vector<7xf32> to vector<7xf32>
        %276 = math.powf %2, %8 : tensor<14xf32>
        %alloc_51 = memref.alloc() : memref<1xf16>
        %277 = vector.broadcast %cst : f16 to vector<14xf16>
        %278 = vector.broadcast %true : i1 to vector<14xi1>
        %279 = vector.broadcast %c1343421930_i32 : i32 to vector<14xi32>
        %280 = vector.gather %alloc_51[%146] [%279], %278, %277 : memref<1xf16>, vector<14xi32>, vector<14xi1>, vector<14xf16> into vector<14xf16>
        %inserted_52 = tensor.insert %true into %4[%c4] : tensor<14xi1>
        tensor.yield %c1164286809_i32 : i32
      } : tensor<?xi32>
      %268 = math.cos %7 : tensor<1xf32>
      %269 = scf.if %extracted_28 -> (i16) {
        %275 = index.sub %28, %c6
        %276 = index.casts %false_0 : i1 to index
        %277 = math.powf %2, %2 : tensor<14xf32>
        %278 = arith.subi %c-18289_i16, %c26275_i16 : i16
        %279 = vector.broadcast %cst_3 : f32 to vector<1xf32>
        %280 = vector.matrix_multiply %102, %102 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi1>, vector<7xi1>) -> vector<1xi1>
        %281 = memref.atomic_rmw minf %cst, %alloc[%c9] : (f16, memref<14xf16>) -> f16
        %282 = arith.divf %114, %extracted_26 : f32
        scf.yield %c-18289_i16 : i16
      } else {
        %alloca_51 = memref.alloca() : memref<14x14xi1>
        %275 = arith.ori %false, %true : i1
        %276 = arith.ceildivsi %false_33, %true : i1
        %277 = vector.matrix_multiply %139, %79 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<7xf32>, vector<14xf32>) -> vector<2xf32>
        %278 = arith.cmpi sle, %false_33, %false_0 : i1
        %from_elements_52 = tensor.from_elements %cst_5, %cst_3, %cst_5, %144, %extracted_26, %cst_3, %cst_5, %144, %cst_5, %cst_4, %cst_4, %extracted_26, %114, %cst_5, %extracted_26, %114, %114, %cst_4, %114, %cst_3, %114, %cst_3, %144, %cst_3, %cst_3, %114, %cst_4, %114, %114, %cst_3, %extracted_26, %cst_4, %114, %144, %cst_5, %cst_3, %cst_3, %cst_4, %114, %cst_5, %cst_5, %extracted_26, %cst_4, %cst_3, %cst_3, %144, %cst_4, %cst_4, %cst_3 : tensor<7x7xf32>
        %279 = math.round %29 : tensor<14xf32>
        %280 = arith.cmpf ugt, %114, %cst_3 : f32
        scf.yield %c-18289_i16 : i16
      }
      %270 = bufferization.clone %alloc_7 : memref<14xi32> to memref<14xi32>
      %271 = vector.bitcast %110 : vector<14x14xf32> to vector<14x14xf32>
      %272 = math.round %splat_27 : tensor<14x14xf16>
      %273 = arith.divf %cst_5, %cst_3 : f32
      %274 = arith.cmpi eq, %c1896577496_i64, %c1896577496_i64 : i64
      scf.yield %125 : index
    }
    case 3 {
      %257 = math.roundeven %cst_2 : f16
      %258 = math.fma %8, %8, %8 : tensor<14xf32>
      %259 = tensor.empty() : tensor<7x7x7xi32>
      %alloc_46 = memref.alloc() : memref<7xi32>
      %260 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_46 : memref<7xi32>) outs(%259 : tensor<7x7x7xi32>) {
      ^bb0(%in: i32, %out: i32):
        %false_49 = index.bool.constant false
        %273 = arith.floordivsi %c-12836_i16, %c-18289_i16 : i16
        %274 = math.round %splat : tensor<7x7xf32>
        %275 = math.atan2 %cst_2, %cst_1 : f16
        %276 = vector.extract %39[5] : vector<7xi32>
        %277 = math.log2 %8 : tensor<14xf32>
        %278 = math.ipowi %12, %164 : tensor<7x7xi16>
        %279 = arith.xori %c796176655_i64, %c796176655_i64 : i64
        %280 = math.copysign %29, %8 : tensor<14xf32>
        %281 = arith.remf %144, %cst_5 : f32
        %true_50 = index.bool.constant true
        %282 = vector.broadcast %extracted : i32 to vector<14xi32>
        %283 = vector.transfer_write %282, %0[%c4, %173] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<14xi32>, tensor<14x14xi32>
        %284 = arith.negf %cst_4 : f32
        %285 = arith.maxsi %159, %c796176655_i64 : i64
        %286 = math.copysign %144, %extracted_26 : f32
        %287 = vector.bitcast %282 : vector<14xi32> to vector<14xi32>
        %288 = index.floordivs %c10, %c6
        %cast = tensor.cast %expanded_36 : tensor<14x1xi1> to tensor<?x?xi1>
        %cst_51 = arith.constant 0x4CE95C8C : f32
        %289 = memref.load %alloc_17[%c13] : memref<14xf16>
        %290 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %78, %79, %114 : vector<14xf32>, vector<14xf32> into f32
        %291 = math.powf %2, %8 : tensor<14xf32>
        %292 = vector.matrix_multiply %98, %93 {lhs_columns = 2 : i32, lhs_rows = 4 : i32, rhs_columns = 7 : i32} : (vector<8xf32>, vector<14xf32>) -> vector<28xf32>
        %293 = bufferization.to_memref %2 : memref<14xf32>
        %294 = arith.andi %false_0, %false_0 : i1
        %295 = arith.addf %cst_1, %cst : f16
        %296 = index.floordivs %c1, %c7
        %297 = math.atan %8 : tensor<14xf32>
        %extracted_52 = tensor.extract %5[%c0] : tensor<1xi1>
        %298 = vector.multi_reduction <maxf>, %139, %101 [] : vector<7xf32> to vector<7xf32>
        %299 = arith.remsi %extracted_28, %true : i1
        %300 = memref.atomic_rmw assign %c1896577496_i64, %alloc_8[%c4, %c3] : (i64, memref<14x14xi64>) -> i64
        linalg.yield %67 : i32
      } -> tensor<7x7x7xi32>
      %261 = arith.shrsi %c-18289_i16, %c26275_i16 : i16
      %262 = index.sizeof
      %263 = vector.shuffle %20, %20 [0, 1, 5, 7, 13] : vector<7xi32>, vector<7xi32>
      %264 = vector.bitcast %94 : vector<14xf32> to vector<14xi32>
      %265 = affine.if affine_set<(d0, d1) : (((d1 ceildiv 2) * 2 - 2) ceildiv 2 >= 0, d1 mod 32 == 0, (((d1 ceildiv 2) * 2) ceildiv 4) ceildiv 8 >= 0, ((d1 ceildiv 2) * 2) ceildiv 4 - 2 >= 0)>(%c13, %c7) -> memref<1xi1> {
        %273 = vector.broadcast %false_33 : i1 to vector<7x7xi1>
        %274 = vector.outerproduct %102, %102, %273 {kind = #vector.kind<xor>} : vector<7xi1>, vector<7xi1>
        %275 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%c12, %125, %166, %c13)
        %276 = arith.subi %true, %false : i1
        %277 = arith.divui %true, %true : i1
        %cast = tensor.cast %2 : tensor<14xf32> to tensor<?xf32>
        %278 = math.tan %cst_3 : f32
        %279 = vector.shuffle %123, %123 [4, 5, 6, 7, 9, 10, 13, 17, 20, 21, 22, 25, 26, 27] : vector<14x14xi32>, vector<14x14xi32>
        memref.store %67, %alloc_7[%c1] : memref<14xi32>
        affine.yield %alloc_16 : memref<1xi1>
      } else {
        %273 = vector.broadcast %34 : index to vector<1xindex>
        %274 = vector.broadcast %false : i1 to vector<1xi1>
        %275 = vector.broadcast %cst_1 : f16 to vector<1xf16>
        vector.scatter %168[%c13] [%273], %274, %275 : memref<14xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
        %276 = vector.load %alloc_14[%c8, %c12] : memref<14x14xi16>, vector<7x7xi16>
        %277 = bufferization.to_memref %10 : memref<14x14xi1>
        %278 = index.divs %c2, %34
        %279 = math.atan2 %114, %cst_3 : f32
        %280 = arith.shrsi %false_0, %false_33 : i1
        %281 = math.ceil %cst_1 : f16
        vector.print %20 : vector<7xi32>
        affine.yield %alloc_16 : memref<1xi1>
      }
      %266 = math.fma %cst_5, %cst_5, %cst_4 : f32
      %267 = math.cttz %expanded_29 : tensor<1x1xi1>
      memref.store %false_33, %alloc_19[%c6, %c6] : memref<14x14xi1>
      %268 = memref.load %alloc_6[%c9] : memref<14xf32>
      %269 = vector.broadcast %false : i1 to vector<14xi1>
      %dest_47, %accumulated_value_48 = vector.scan <and>, %183, %269 {inclusive = true, reduction_dim = 1 : i64} : vector<14x14xi1>, vector<14xi1>
      %270 = memref.atomic_rmw addf %cst_5, %41[%c2] : (f32, memref<14xf32>) -> f32
      %271 = affine.load %58[%c7, %c8] : memref<14x14xi1>
      %272 = arith.remf %extracted_26, %114 : f32
      scf.yield %c8 : index
    }
    default {
      %257 = arith.maxsi %extracted, %c1164286809_i32 : i32
      %258 = arith.cmpi sge, %false, %false : i1
      %259 = scf.index_switch %107 -> vector<1xi64> 
      case 1 {
        %274 = math.round %29 : tensor<14xf32>
        %275 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %102, %102, %extracted_28 : vector<7xi1>, vector<7xi1> into i1
        %276 = vector.broadcast %extracted : i32 to vector<14x14xi32>
        %277 = math.exp %144 : f32
        %278 = arith.minf %extracted_26, %144 : f32
        memref.copy %alloc_6, %41 : memref<14xf32> to memref<14xf32>
        %279 = arith.maxf %cst, %cst_2 : f16
        %280 = vector.bitcast %110 : vector<14x14xf32> to vector<14x14xf32>
        %281 = vector.reduction <minf>, %93 : vector<14xf32> into f32
        %282 = math.rsqrt %cst_5 : f32
        %283 = math.absf %8 : tensor<14xf32>
        %284 = vector.bitcast %93 : vector<14xf32> to vector<14xf32>
        memref.store %cst_5, %alloc_6[%c8] : memref<14xf32>
        %285 = arith.divui %c-12836_i16, %c26275_i16 : i16
        %false_49 = arith.constant false
        %286 = vector.transfer_read %15[%c11, %179], %false_49 : tensor<14x14xi1>, vector<i1>
        %287 = memref.atomic_rmw mulf %cst_3, %alloc_18[%c6, %c6] : (f32, memref<14x14xf32>) -> f32
        %288 = vector.broadcast %c796176655_i64 : i64 to vector<1xi64>
        scf.yield %288 : vector<1xi64>
      }
      case 2 {
        %274 = math.absf %7 : tensor<1xf32>
        %275 = math.round %2 : tensor<14xf32>
        %276 = arith.remf %cst_1, %cst_2 : f16
        %277 = arith.shli %false_0, %false : i1
        %278 = vector.broadcast %true : i1 to vector<14xi1>
        %279 = index.divs %c2, %c14
        %280 = index.add %c15, %146
        %281 = arith.subi %c796176655_i64, %159 : i64
        memref.assume_alignment %alloc, 16 : memref<14xf16>
        %282 = math.absf %cst_2 : f16
        %283 = math.sqrt %144 : f32
        affine.store %144, %41[%c13] : memref<14xf32>
        %284 = memref.atomic_rmw maxf %cst_5, %152[%c7, %c5] : (f32, memref<14x14xf32>) -> f32
        %285 = arith.maxui %c1164286809_i32, %c1164286809_i32 : i32
        %286 = math.absf %splat_27 : tensor<14x14xf16>
        %287 = math.ceil %cst_1 : f16
        %288 = vector.broadcast %c1896577496_i64 : i64 to vector<1xi64>
        scf.yield %288 : vector<1xi64>
      }
      default {
        %274 = arith.shli %c26275_i16, %c-18289_i16 : i16
        %275 = index.ceildivs %166, %86
        %276 = math.ctlz %164 : tensor<7x7xi16>
        %277 = vector.extract_strided_slice %98 {offsets = [0], sizes = [3], strides = [1]} : vector<8xf32> to vector<3xf32>
        %278 = index.casts %false : i1 to index
        %279 = arith.remf %114, %144 : f32
        %280 = index.sub %64, %c0
        %281 = arith.addf %144, %cst_3 : f32
        %282 = index.divu %c7, %c14
        %283 = memref.atomic_rmw minf %cst_1, %alloc_17[%c11] : (f16, memref<14xf16>) -> f16
        %284 = math.powf %cst_2, %cst_2 : f16
        %285 = arith.cmpf une, %cst_3, %extracted_26 : f32
        %286 = math.fma %cst_4, %114, %cst_5 : f32
        %287 = vector.create_mask %107 : vector<14xi1>
        %288 = math.exp %splat : tensor<7x7xf32>
        %289 = arith.remf %cst, %cst_2 : f16
        %290 = vector.broadcast %c796176655_i64 : i64 to vector<1xi64>
        scf.yield %290 : vector<1xi64>
      }
      %260 = vector.broadcast %extracted_26 : f32 to vector<14xf32>
      %261 = tensor.empty() : tensor<7x7x7xi32>
      %262 = tensor.empty() : tensor<7xi32>
      %263 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%262, %261 : tensor<7xi32>, tensor<7x7x7xi32>) outs(%261 : tensor<7x7x7xi32>) {
      ^bb0(%in: i32, %in_49: i32, %out: i32):
        %274 = arith.ceildivsi %c26275_i16, %c26275_i16 : i16
        %275 = index.divs %c0, %169
        %276 = math.atan2 %extracted_26, %extracted_26 : f32
        %277 = affine.apply affine_map<(d0) -> (0)>(%86)
        %278 = memref.load %158[%c0] : memref<1xi1>
        %279 = math.rsqrt %splat_27 : tensor<14x14xf16>
        %280 = index.sizeof
        %281 = vector.multi_reduction <minsi>, %102, %102 [] : vector<7xi1> to vector<7xi1>
        %282 = index.floordivs %275, %c8
        %283 = math.copysign %cst, %cst_2 : f16
        %284 = math.cos %splat : tensor<7x7xf32>
        %285 = vector.reduction <maxui>, %20 : vector<7xi32> into i32
        %286 = arith.maxf %cst_4, %extracted_26 : f32
        %287 = arith.shli %c-12836_i16, %c-18289_i16 : i16
        %288 = bufferization.clone %44 : memref<1xi16> to memref<1xi16>
        %289 = math.fma %cst_5, %cst_4, %cst_3 : f32
        %290 = vector.broadcast %cst : f16 to vector<14xf16>
        %291 = vector.broadcast %true : i1 to vector<14xi1>
        %292 = vector.broadcast %in : i32 to vector<14xi32>
        %293 = vector.gather %alloc_17[%c5] [%292], %291, %290 : memref<14xf16>, vector<14xi32>, vector<14xi1>, vector<14xf16> into vector<14xf16>
        %294 = memref.realloc %44 : memref<1xi16> to memref<1xi16>
        %295 = index.sizeof
        %cst_50 = arith.constant 1.000000e+00 : f16
        %cst_51 = arith.constant 0.000000e+00 : f16
        %296 = vector.transfer_read %alloc_9[%151, %81], %cst_51 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<7x7xf16>, vector<7xf16>
        %297 = arith.maxsi %extracted_28, %false : i1
        %298 = arith.ceildivsi %c1343421930_i32, %67 : i32
        %299 = arith.remf %144, %144 : f32
        %300 = index.ceildivu %34, %c13
        %301 = vector.shuffle %123, %123 [0, 3, 5, 9, 13, 17, 20, 22, 23, 26, 27] : vector<14x14xi32>, vector<14x14xi32>
        %302 = index.sub %96, %c4
        %303 = arith.shli %c1896577496_i64, %159 : i64
        %304 = math.expm1 %splat_27 : tensor<14x14xf16>
        %305 = math.sqrt %cst_50 : f16
        %306 = vector.create_mask %179, %302 : vector<14x14xi1>
        %307 = memref.realloc %alloc_13 : memref<1xf32> to memref<1xf32>
        %alloca_52 = memref.alloca() : memref<14xi16>
        linalg.yield %c1343421930_i32 : i32
      } -> tensor<7x7x7xi32>
      %264 = arith.minsi %extracted_28, %true : i1
      %265 = math.expm1 %7 : tensor<1xf32>
      %266 = arith.andi %67, %c1164286809_i32 : i32
      %267 = index.floordivs %c13, %28
      %268 = vector.create_mask %c10, %c1 : vector<7x7xi1>
      %269 = affine.if affine_set<(d0, d1, d2, d3) : ((-(d2 - 4)) floordiv 16 >= 0, d3 >= 0)>(%c10, %c1, %c5, %c15) -> i1 {
        %274 = arith.shrui %c26275_i16, %c26275_i16 : i16
        %alloc_49 = memref.alloc() : memref<14xi1>
        memref.tensor_store %11, %alloc_49 : memref<14xi1>
        %275 = math.ctpop %c26275_i16 : i16
        %276 = vector.extract %39[6] : vector<7xi32>
        %extracted_50 = tensor.extract %splat[%c4, %c6] : tensor<7x7xf32>
        %277 = math.cttz %12 : tensor<7x7xi16>
        %278 = bufferization.clone %152 : memref<14x14xf32> to memref<14x14xf32>
        %279 = arith.minsi %c796176655_i64, %159 : i64
        affine.yield %false_0 : i1
      } else {
        %274 = math.sqrt %7 : tensor<1xf32>
        %275 = math.ipowi %c1164286809_i32, %c1164286809_i32 : i32
        %276 = arith.floordivsi %67, %c1164286809_i32 : i32
        %277 = arith.divsi %c1343421930_i32, %67 : i32
        %278 = affine.max affine_map<(d0, d1) -> (0)>(%c0, %86)
        %279 = math.fpowi %8, %13 : tensor<14xf32>, tensor<14xi32>
        %280 = arith.remf %extracted_26, %cst_4 : f32
        %281 = bufferization.to_memref %0 : memref<14x14xi32>
        affine.yield %extracted_28 : i1
      }
      %270 = vector.broadcast %67 : i32 to vector<14xi32>
      %dest_46, %accumulated_value_47 = vector.scan <mul>, %123, %270 {inclusive = false, reduction_dim = 0 : i64} : vector<14x14xi32>, vector<14xi32>
      %271 = index.ceildivu %c10, %107
      %272 = math.cttz %9 : tensor<1xi32>
      %273 = math.exp %144 : f32
      %true_48 = index.bool.constant true
      scf.yield %107 : index
    }
    %193 = arith.maxf %cst_1, %cst : f16
    scf.index_switch %81 
    case 1 {
      %257 = arith.addf %cst_3, %cst_5 : f32
      %258 = arith.ceildivsi %false_33, %true : i1
      %259 = math.ipowi %19, %19 : tensor<i32>
      %260 = bufferization.to_memref %10 : memref<14x14xi1>
      memref.alloca_scope  {
        %274 = math.sqrt %splat_27 : tensor<14x14xf16>
        %275 = vector.broadcast %false_33 : i1 to vector<14xi1>
        %276 = vector.maskedload %alloc_11[%c7, %c1], %275, %79 : memref<14x14xf32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
        %277 = arith.minsi %c1343421930_i32, %c1343421930_i32 : i32
        %278 = math.atan2 %cst_1, %cst_1 : f16
        %279 = arith.divf %cst_1, %cst_2 : f16
        %280 = vector.transpose %101, [0] : vector<7xf32> to vector<7xf32>
        %281 = arith.maxf %cst_4, %cst_5 : f32
        %282 = math.absf %7 : tensor<1xf32>
        %283 = index.mul %81, %c10
        %284 = vector.extract %39[6] : vector<7xi32>
        %285 = arith.ceildivsi %c-12836_i16, %c-18289_i16 : i16
        %286 = vector.reduction <mul>, %276 : vector<14xf32> into f32
        %287 = vector.shuffle %105, %105 [1, 2, 3, 4, 5, 8, 11, 13, 15, 18, 19, 23, 25, 26] : vector<14x14xf32>, vector<14x14xf32>
        %288 = index.mul %c11, %c13
        %from_elements_46 = tensor.from_elements %extracted_26, %cst_4, %114, %extracted_26, %114, %114, %extracted_26, %144, %extracted_26, %144, %114, %114, %extracted_26, %144, %extracted_26, %114, %114, %cst_3, %extracted_26, %144, %144, %114, %144, %114, %cst_5, %extracted_26, %144, %114, %cst_5, %extracted_26, %144, %cst_3, %114, %cst_5, %cst_5, %144, %cst_3, %144, %114, %cst_3, %extracted_26, %144, %cst_5, %extracted_26, %cst_4, %144, %cst_5, %114, %cst_3, %cst_5, %cst_5, %cst_4, %cst_5, %cst_3, %cst_3, %144, %cst_4, %114, %cst_5, %cst_4, %cst_5, %114, %cst_5, %cst_3, %cst_3, %144, %cst_3, %cst_4, %cst_5, %cst_4, %cst_4, %114, %cst_4, %extracted_26, %extracted_26, %cst_4, %144, %cst_4, %cst_4, %114, %extracted_26, %cst_3, %144, %cst_3, %extracted_26, %cst_4, %cst_3, %144, %144, %extracted_26, %cst_4, %144, %cst_4, %cst_3, %extracted_26, %cst_3, %cst_5, %cst_3, %114, %cst_3, %144, %144, %cst_4, %cst_5, %cst_4, %cst_3, %cst_5, %extracted_26, %extracted_26, %114, %114, %cst_5, %cst_5, %cst_3, %114, %144, %114, %cst_3, %cst_5, %extracted_26, %144, %cst_4, %cst_3, %144, %cst_5, %extracted_26, %extracted_26, %114, %cst_3, %cst_5, %144, %cst_5, %cst_4, %144, %cst_5, %cst_5, %extracted_26, %extracted_26, %144, %cst_3, %cst_4, %144, %cst_4, %114, %cst_3, %144, %cst_5, %extracted_26, %cst_3, %cst_4, %cst_4, %144, %cst_3, %114, %cst_4, %144, %114, %cst_4, %144, %114, %cst_4, %extracted_26, %cst_4, %cst_4, %cst_3, %extracted_26, %cst_3, %114, %cst_3, %cst_5, %cst_3, %cst_5, %144, %144, %114, %extracted_26, %144, %144, %cst_3, %cst_3, %cst_5, %cst_3, %cst_4, %144, %cst_5, %cst_4, %144, %144, %114, %cst_5, %cst_5, %cst_5, %cst_3, %cst_3, %extracted_26, %114 : tensor<14x14xf32>
        %289 = vector.outerproduct %20, %20, %80 {kind = #vector.kind<or>} : vector<7xi32>, vector<7xi32>
        %extracted_47 = tensor.extract %8[%c6] : tensor<14xf32>
        %290 = arith.divui %c1896577496_i64, %159 : i64
        %291 = math.copysign %cst_3, %114 : f32
        %292 = math.fma %29, %8, %2 : tensor<14xf32>
        %extracted_48 = tensor.extract %generated_31[%c0, %c11] : tensor<?x14xi32>
        %293 = index.divs %169, %173
        %294 = arith.maxui %false_0, %false_33 : i1
        %295 = math.round %2 : tensor<14xf32>
        %296 = math.copysign %7, %7 : tensor<1xf32>
        %297 = arith.subi %c26275_i16, %c-12836_i16 : i16
        %298 = arith.andi %c1164286809_i32, %extracted_48 : i32
        memref.store %true, %45[%c13, %c0] : memref<14x14xi1>
        %299 = vector.extract %101[6] : vector<7xf32>
        %alloca_49 = memref.alloca() : memref<1xi16>
        %extracted_50 = tensor.extract %4[%c7] : tensor<14xi1>
        %300 = bufferization.clone %alloc_8 : memref<14x14xi64> to memref<14x14xi64>
      }
      %261 = vector.broadcast %c-18289_i16 : i16 to vector<1xi16>
      %262 = vector.broadcast %false_33 : i1 to vector<1xi1>
      %263 = vector.maskedload %alloc_14[%c11, %c11], %262, %261 : memref<14x14xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
      %264 = math.ctpop %10 : tensor<14x14xi1>
      %265 = affine.apply affine_map<(d0) -> (0)>(%c12)
      %266 = arith.remf %cst_4, %cst_3 : f32
      %267 = arith.minf %cst_3, %144 : f32
      %268 = arith.cmpi eq, %extracted, %c1164286809_i32 : i32
      %269 = scf.while (%arg1 = %101) : (vector<7xf32>) -> vector<7xf32> {
        %274 = arith.divf %cst_4, %114 : f32
        %275 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%81, %c9, %c14, %c15)
        %276 = index.floordivs %c14, %146
        %277 = bufferization.clone %alloc_17 : memref<14xf16> to memref<14xf16>
        memref.assume_alignment %alloc, 2 : memref<14xf16>
        %278 = index.divs %c12, %64
        %279 = math.cos %splat_27 : tensor<14x14xf16>
        %280 = math.absf %cst : f16
        scf.condition(%false_33) %103 : vector<7xf32>
      } do {
      ^bb0(%arg1: vector<7xf32>):
        %274 = memref.load %alloc_12[%c0] : memref<1xi32>
        %dest_46, %accumulated_value_47 = vector.scan <mul>, %110, %93 {inclusive = false, reduction_dim = 1 : i64} : vector<14x14xf32>, vector<14xf32>
        %275 = index.casts %c1896577496_i64 : i64 to index
        %276 = index.floordivs %107, %275
        %277 = arith.shli %false_33, %extracted_28 : i1
        %278 = arith.divsi %c1164286809_i32, %67 : i32
        %279 = arith.maxf %cst_2, %cst_1 : f16
        %280 = math.atan %cst_1 : f16
        %281 = arith.maxui %c1343421930_i32, %67 : i32
        %282 = math.exp %cst_1 : f16
        %283 = vector.extract %93[3] : vector<14xf32>
        %alloc_48 = memref.alloc() : memref<7x7xi64>
        %284 = vector.broadcast %c1896577496_i64 : i64 to vector<1xi64>
        %285 = vector.gather %alloc_48[%c12, %125] [%25], %262, %284 : memref<7x7xi64>, vector<1xi32>, vector<1xi1>, vector<1xi64> into vector<1xi64>
        %286 = arith.cmpf ogt, %cst_5, %144 : f32
        %287 = index.casts %173 : index to i32
        %alloca_49 = memref.alloca() : memref<14x14xi1>
        %288 = arith.floordivsi %extracted, %67 : i32
        scf.yield %139 : vector<7xf32>
      }
      %270 = memref.atomic_rmw mins %c-12836_i16, %alloc_20[%c0] : (i16, memref<1xi16>) -> i16
      %271 = index.casts %c5 : index to i32
      %272 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %261, %263, %c-12836_i16 : vector<1xi16>, vector<1xi16> into i16
      %273 = scf.index_switch %151 -> index 
      case 1 {
        %274 = arith.addi %c-12836_i16, %c-18289_i16 : i16
        %275 = arith.shli %extracted_28, %extracted_28 : i1
        %276 = math.tan %29 : tensor<14xf32>
        %277 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 + d1 + 128, d3 ceildiv 2, d0 + 4, d3 ceildiv 2)>(%64, %179, %169, %28)
        %278 = arith.addf %cst_2, %cst_2 : f16
        %279 = math.atan %cst_1 : f16
        %extracted_46 = tensor.extract %15[%c10, %c10] : tensor<14x14xi1>
        %280 = math.ctpop %expanded_36 : tensor<14x1xi1>
        affine.store %114, %alloc_18[%c6, %c9] : memref<14x14xf32>
        %281 = affine.apply affine_map<(d0, d1) -> (d1 ceildiv 8)>(%277, %277)
        %282 = bufferization.to_tensor %152 : memref<14x14xf32>
        %283 = index.floordivs %c5, %c5
        %284 = arith.addf %cst_4, %extracted_26 : f32
        %alloc_47 = memref.alloc() : memref<14x14xi64>
        memref.copy %alloc_8, %alloc_47 : memref<14x14xi64> to memref<14x14xi64>
        %285 = vector.broadcast %cst_4 : f32 to vector<8x8xf32>
        %286 = vector.outerproduct %98, %98, %285 {kind = #vector.kind<maxf>} : vector<8xf32>, vector<8xf32>
        %287 = math.powf %282, %282 : tensor<14x14xf32>
        scf.yield %c3 : index
      }
      case 2 {
        %274 = math.tan %cst_5 : f32
        %275 = math.exp %114 : f32
        %276 = memref.realloc %168 : memref<14xf16> to memref<14xf16>
        %277 = vector.maskedload %alloc_19[%c5, %c2], %262, %262 : memref<14x14xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
        %278 = math.expm1 %cst : f16
        %279 = tensor.empty() : tensor<1xi64>
        %280 = vector.broadcast %c1896577496_i64 : i64 to vector<14x14xi64>
        %281 = vector.gather %279[%c15] [%123], %183, %280 : tensor<1xi64>, vector<14x14xi32>, vector<14x14xi1>, vector<14x14xi64> into vector<14x14xi64>
        %282 = math.powf %8, %2 : tensor<14xf32>
        %283 = vector.insert %false, %102 [6] : i1 into vector<7xi1>
        %alloca_46 = memref.alloca() : memref<14xi16>
        %284 = bufferization.to_memref %splat : memref<7x7xf32>
        %285 = arith.andi %c-18289_i16, %c-18289_i16 : i16
        %286 = math.atan %8 : tensor<14xf32>
        %rank = tensor.rank %3 : tensor<7x7xi1>
        %inserted_47 = tensor.insert %true into %from_elements[%c0, %c4] : tensor<7x7xi1>
        %287 = math.atan2 %2, %2 : tensor<14xf32>
        %288 = vector.matrix_multiply %93, %101 {lhs_columns = 7 : i32, lhs_rows = 2 : i32, rhs_columns = 1 : i32} : (vector<14xf32>, vector<7xf32>) -> vector<2xf32>
        scf.yield %169 : index
      }
      case 3 {
        %274 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 * 8, d3 + d1, (d0 - 8) * 16, (d3 + d1) ceildiv 4)>(%173, %c11, %c7, %c13)
        %275 = math.exp %114 : f32
        %276 = vector.extract %39[6] : vector<7xi32>
        %277 = math.sqrt %cst_2 : f16
        %278 = math.cos %splat_27 : tensor<14x14xf16>
        %279 = arith.remui %67, %c1343421930_i32 : i32
        %280 = index.floordivs %96, %c4
        %281 = affine.apply affine_map<(d0) -> (d0 floordiv 128 + 128)>(%179)
        %282 = math.powf %2, %8 : tensor<14xf32>
        %false_46 = index.bool.constant false
        %283 = vector.extract %110[12] : vector<14x14xf32>
        %284 = math.atan %2 : tensor<14xf32>
        %285 = vector.reduction <maxf>, %79 : vector<14xf32> into f32
        %286 = math.ipowi %reduced, %19 : tensor<i32>
        %rank = tensor.rank %18 : tensor<1xi32>
        %287 = arith.maxui %false, %false_46 : i1
        scf.yield %c6 : index
      }
      default {
        %274 = arith.maxsi %c1343421930_i32, %extracted : i32
        %275 = tensor.empty() : tensor<7x7xi1>
        %276 = linalg.matmul ins(%3, %3 : tensor<7x7xi1>, tensor<7x7xi1>) outs(%275 : tensor<7x7xi1>) -> tensor<7x7xi1>
        %277 = vector.shuffle %80, %80 [1, 2, 6, 7, 10] : vector<7x7xi32>, vector<7x7xi32>
        %278 = vector.extract %79[13] : vector<14xf32>
        %279 = memref.atomic_rmw mins %c-18289_i16, %alloc_14[%c8, %c0] : (i16, memref<14x14xi16>) -> i16
        %cst_46 = arith.constant 1.000000e+00 : f32
        %280 = vector.transfer_read %8[%c9], %cst_46 : tensor<14xf32>, vector<f32>
        %281 = math.copysign %2, %2 : tensor<14xf32>
        %282 = arith.negf %cst_4 : f32
        %283 = math.cos %7 : tensor<1xf32>
        %284 = arith.ceildivsi %false_0, %true : i1
        %285 = vector.broadcast %extracted_26 : f32 to vector<1xf32>
        %286 = vector.fma %285, %285, %285 : vector<1xf32>
        %287 = memref.atomic_rmw andi %c-12836_i16, %alloc_20[%c0] : (i16, memref<1xi16>) -> i16
        %288 = arith.floordivsi %c-12836_i16, %c-12836_i16 : i16
        %289 = arith.maxui %159, %c1896577496_i64 : i64
        %290 = vector.load %58[%c5, %c5] : memref<14x14xi1>, vector<14x14xi1>
        %291 = index.divu %96, %c8
        scf.yield %c3 : index
      }
      scf.yield
    }
    case 2 {
      %257 = arith.remf %cst_5, %cst_5 : f32
      %258 = vector.reduction <maxf>, %103 : vector<7xf32> into f32
      %259 = index.ceildivu %c15, %173
      %260 = index.ceildivu %c8, %146
      %alloc_46 = memref.alloc() : memref<1xf16>
      %inserted_47 = tensor.insert %false into %expanded_36[%c8, %c0] : tensor<14x1xi1>
      %splat_48 = tensor.splat %false_0 : tensor<14x14xi1>
      %261 = vector.broadcast %extracted : i32 to vector<14xi32>
      %dest_49, %accumulated_value_50 = vector.scan <minsi>, %123, %261 {inclusive = true, reduction_dim = 0 : i64} : vector<14x14xi32>, vector<14xi32>
      %262 = vector.broadcast %114 : f32 to vector<f32>
      %263 = vector.transfer_write %262, %7[%c8] : vector<f32>, tensor<1xf32>
      %264 = arith.remui %false_33, %false_33 : i1
      %265 = math.rsqrt %8 : tensor<14xf32>
      %266 = math.ctpop %22 : tensor<i16>
      %267 = index.divs %c12, %c11
      %268 = math.atan2 %2, %8 : tensor<14xf32>
      %269 = math.powf %2, %2 : tensor<14xf32>
      %270 = arith.maxsi %c1896577496_i64, %c796176655_i64 : i64
      scf.yield
    }
    case 3 {
      %257 = scf.while (%arg1 = %c1343421930_i32) : (i32) -> i32 {
        %270 = math.cos %29 : tensor<14xf32>
        %271 = math.copysign %splat, %splat : tensor<7x7xf32>
        memref.store %c26275_i16, %44[%c0] : memref<1xi16>
        %272 = arith.remf %cst, %cst : f16
        %273 = index.ceildivu %c10, %107
        %274 = arith.andi %c-12836_i16, %c26275_i16 : i16
        %275 = arith.floordivsi %67, %67 : i32
        %276 = math.floor %7 : tensor<1xf32>
        scf.condition(%true) %67 : i32
      } do {
      ^bb0(%arg1: i32):
        %270 = arith.divui %true, %extracted_28 : i1
        %alloca_50 = memref.alloca() : memref<14xi1>
        memref.tensor_store %18, %alloc_12 : memref<1xi32>
        %271 = math.expm1 %7 : tensor<1xf32>
        %272 = memref.atomic_rmw minu %c-12836_i16, %alloc_20[%c0] : (i16, memref<1xi16>) -> i16
        %true_51 = arith.constant true
        %true_52 = arith.constant true
        %273 = math.log1p %cst_4 : f32
        %274 = math.rsqrt %29 : tensor<14xf32>
        %275 = index.ceildivs %169, %c12
        %276 = index.casts %159 : i64 to index
        %277 = memref.load %58[%c8, %c1] : memref<14x14xi1>
        %278 = arith.ceildivsi %c26275_i16, %c-18289_i16 : i16
        %279 = index.casts %86 : index to i32
        %280 = vector.create_mask %169, %c1 : vector<14x14xi1>
        %281 = arith.remui %c-18289_i16, %c-18289_i16 : i16
        scf.yield %c1164286809_i32 : i32
      }
      memref.tensor_store %2, %alloc_6 : memref<14xf32>
      %258 = vector.create_mask %107, %c12 : vector<7x7xi1>
      %259 = math.round %extracted_26 : f32
      %260 = math.ipowi %transposed, %9 : tensor<1xi32>
      %261 = math.atan2 %7, %7 : tensor<1xf32>
      %262 = vector.multi_reduction <add>, %258, %102 [1] : vector<7x7xi1> to vector<7xi1>
      %263 = scf.while (%arg1 = %cst) : (f16) -> f16 {
        %270 = arith.minf %cst_3, %cst_4 : f32
        %271 = vector.broadcast %c2 : index to vector<1xindex>
        %272 = vector.broadcast %false : i1 to vector<1xi1>
        vector.scatter %158[%c0] [%271], %272, %272 : memref<1xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
        %273 = vector.broadcast %159 : i64 to vector<14xi64>
        %274 = arith.remf %144, %cst_3 : f32
        %275 = math.round %extracted_26 : f32
        %276 = arith.addf %cst_2, %cst_2 : f16
        %277 = math.expm1 %cst_5 : f32
        %278 = arith.divui %c1343421930_i32, %extracted : i32
        scf.condition(%false_33) %arg1 : f16
      } do {
      ^bb0(%arg1: f16):
        %alloc_50 = memref.alloc() : memref<7x7xi32>
        %270 = arith.maxui %false_33, %false : i1
        %true_51 = index.bool.constant true
        %271 = index.casts %c1343421930_i32 : i32 to index
        %272 = vector.broadcast %cst_3 : f32 to vector<7x7xf32>
        %273 = math.log1p %splat : tensor<7x7xf32>
        %274 = memref.atomic_rmw minu %159, %alloc_8[%c0, %c3] : (i64, memref<14x14xi64>) -> i64
        %275 = math.exp %cst : f16
        %276 = arith.minsi %c1164286809_i32, %c1164286809_i32 : i32
        %277 = vector.extract_strided_slice %98 {offsets = [2], sizes = [1], strides = [1]} : vector<8xf32> to vector<1xf32>
        %dest_52, %accumulated_value_53 = vector.scan <maxui>, %258, %102 {inclusive = true, reduction_dim = 0 : i64} : vector<7x7xi1>, vector<7xi1>
        %278 = vector.bitcast %39 : vector<7xi32> to vector<7xf32>
        %279 = vector.broadcast %c1343421930_i32 : i32 to vector<1x1xi32>
        %280 = vector.outerproduct %25, %25, %279 {kind = #vector.kind<and>} : vector<1xi32>, vector<1xi32>
        %281 = index.add %c6, %151
        %282 = arith.negf %cst_4 : f32
        %283 = vector.maskedload %alloc_7[%c1], %102, %20 : memref<14xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
        scf.yield %cst : f16
      }
      %alloca_46 = memref.alloca() : memref<1xi1>
      %264 = math.ipowi %4, %11 : tensor<14xi1>
      %265 = math.sqrt %cst_2 : f16
      %alloc_47 = memref.alloc() : memref<14x14xi16>
      memref.copy %alloc_14, %alloc_47 : memref<14x14xi16> to memref<14x14xi16>
      %266 = vector.broadcast %67 : i32 to vector<14xi32>
      %dest_48, %accumulated_value_49 = vector.scan <xor>, %123, %266 {inclusive = false, reduction_dim = 1 : i64} : vector<14x14xi32>, vector<14xi32>
      %267 = scf.while (%arg1 = %alloc_6) : (memref<14xf32>) -> memref<14xf32> {
        %270 = math.expm1 %29 : tensor<14xf32>
        %271 = math.cttz %false : i1
        %extracted_50 = tensor.extract %3[%c5, %c2] : tensor<7x7xi1>
        %272 = math.absf %2 : tensor<14xf32>
        %273 = math.exp %2 : tensor<14xf32>
        %expanded_51 = tensor.expand_shape %8 [[0, 1]] : tensor<14xf32> into tensor<14x1xf32>
        %274 = arith.remsi %c-18289_i16, %c-18289_i16 : i16
        %275 = vector.extract %102[4] : vector<7xi1>
        scf.condition(%false_0) %arg1 : memref<14xf32>
      } do {
      ^bb0(%arg1: memref<14xf32>):
        %270 = math.absf %8 : tensor<14xf32>
        %271 = index.ceildivu %c0, %81
        %272 = vector.broadcast %cst_1 : f16 to vector<14x14xf16>
        %cst_50 = arith.constant 1.000000e+00 : f32
        %cst_51 = arith.constant 0.000000e+00 : f32
        %273 = vector.transfer_read %alloc_10[%c10, %c0], %cst_51 : memref<7x7xf32>, vector<f32>
        %274 = index.casts %64 : index to i32
        %275 = vector.broadcast %extracted_28 : i1 to vector<7xi1>
        vector.transfer_write %275, %45[%c8, %173] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi1>, memref<14x14xi1>
        %276 = arith.divf %cst_50, %cst_50 : f32
        %277 = arith.remf %144, %cst_50 : f32
        %278 = math.round %cst_4 : f32
        %279 = math.copysign %cst_50, %cst_4 : f32
        %280 = math.fma %cst_3, %cst_5, %extracted_26 : f32
        %281 = math.log1p %cst_50 : f32
        %282 = math.expm1 %2 : tensor<14xf32>
        %283 = math.atan2 %cst_1, %cst : f16
        %284 = vector.outerproduct %79, %94, %110 {kind = #vector.kind<maxf>} : vector<14xf32>, vector<14xf32>
        %285 = index.sizeof
        scf.yield %41 : memref<14xf32>
      }
      %268 = math.atan2 %cst_1, %cst_1 : f16
      %269 = math.absf %extracted_26 : f32
      scf.yield
    }
    case 4 {
      vector.print %123 : vector<14x14xi32>
      %257 = arith.cmpi sgt, %c26275_i16, %c-12836_i16 : i16
      %extracted_46 = tensor.extract %10[%c1, %c2] : tensor<14x14xi1>
      %258 = math.atan %114 : f32
      %259 = math.atan2 %114, %cst_5 : f32
      %260 = index.maxs %c1, %c12
      %261 = math.fma %7, %7, %7 : tensor<1xf32>
      %262 = arith.divf %144, %cst_5 : f32
      %from_elements_47 = tensor.from_elements %false, %false, %true, %false_33, %extracted_46, %false, %false, %extracted_46, %false_33, %false_33, %extracted_46, %extracted_28, %false_33, %false : tensor<14xi1>
      %263 = arith.floordivsi %extracted, %67 : i32
      %264 = arith.remsi %extracted_28, %true : i1
      %265 = index.floordivs %64, %c3
      %inserted_48 = tensor.insert %extracted_28 into %expanded_36[%c10, %c0] : tensor<14x1xi1>
      %266 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 * 8, d1 + d3 + 16, d2)>(%c12, %169, %c12, %c9)
      %267 = arith.maxui %c1164286809_i32, %c1164286809_i32 : i32
      scf.if %extracted_28 {
        %splat_49 = tensor.splat %cst_2 : tensor<14xf16>
        %268 = arith.subi %false, %false : i1
        %269 = vector.broadcast %67 : i32 to vector<i32>
        %270 = vector.transfer_write %269, %13[%c10] : vector<i32>, tensor<14xi32>
        memref.copy %alloc_16, %158 : memref<1xi1> to memref<1xi1>
        %expanded_50 = tensor.expand_shape %9 [[0, 1]] : tensor<1xi32> into tensor<1x1xi32>
        %271 = vector.bitcast %110 : vector<14x14xf32> to vector<14x14xf32>
        %272 = vector.broadcast %extracted_28 : i1 to vector<14xi1>
        %dest_51, %accumulated_value_52 = vector.scan <minsi>, %183, %272 {inclusive = false, reduction_dim = 1 : i64} : vector<14x14xi1>, vector<14xi1>
        %273 = memref.load %152[%c3, %c11] : memref<14x14xf32>
      }
      scf.yield
    }
    default {
      %257 = arith.subi %extracted, %c1343421930_i32 : i32
      %258 = arith.divsi %extracted, %c1343421930_i32 : i32
      %259 = arith.ceildivsi %c-12836_i16, %c26275_i16 : i16
      %260 = index.floordivs %28, %c11
      %c1456490875_i64 = arith.constant 1456490875 : i64
      %261 = arith.remui %c1896577496_i64, %c1896577496_i64 : i64
      %262 = arith.remui %67, %extracted : i32
      %263 = arith.shrui %false_33, %extracted_28 : i1
      %264 = memref.load %alloc_7[%c13] : memref<14xi32>
      %265 = index.add %81, %179
      %266 = math.tan %7 : tensor<1xf32>
      %extracted_46 = tensor.extract %11[%c9] : tensor<14xi1>
      %267 = vector.reduction <mul>, %93 : vector<14xf32> into f32
      %268 = math.ctpop %5 : tensor<1xi1>
      %269 = math.copysign %cst_2, %cst : f16
      %270 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %79, %105, %93 : vector<14xf32>, vector<14x14xf32> into vector<14xf32>
    }
    %194 = vector.bitcast %98 : vector<8xf32> to vector<8xf32>
    %195 = bufferization.to_tensor %58 : memref<14x14xi1>
    %196 = math.exp %7 : tensor<1xf32>
    %197 = bufferization.to_memref %0 : memref<14x14xi32>
    %198 = index.casts %c1164286809_i32 : i32 to index
    %false_39 = index.bool.constant false
    %199 = affine.if affine_set<(d0) : (d0 * 64 == 0, d0 mod 32 >= 0)>(%c12) -> f32 {
      %257 = arith.divf %cst_4, %cst_3 : f32
      %258 = vector.extract %39[2] : vector<7xi32>
      %259 = vector.matrix_multiply %102, %102 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi1>, vector<7xi1>) -> vector<1xi1>
      %260 = arith.shrsi %extracted_28, %false_0 : i1
      %261 = math.fma %cst_1, %cst_1, %cst_2 : f16
      %cast = tensor.cast %195 : tensor<14x14xi1> to tensor<?x?xi1>
      %262 = index.maxu %166, %169
      %263 = math.powf %29, %2 : tensor<14xf32>
      affine.yield %144 : f32
    } else {
      %257 = index.ceildivu %28, %c2
      %258 = vector.reduction <mul>, %93 : vector<14xf32> into f32
      %259 = arith.shli %c26275_i16, %c-18289_i16 : i16
      %260 = index.sub %257, %c1
      %261 = math.round %splat : tensor<7x7xf32>
      %262 = math.ceil %cst_2 : f16
      %263 = arith.andi %67, %extracted : i32
      scf.if %false_39 {
        %264 = index.sub %c14, %c2
        %265 = math.round %8 : tensor<14xf32>
        %266 = math.fpowi %cst_1, %c1164286809_i32 : f16, i32
        %267 = bufferization.clone %alloc_9 : memref<7x7xf16> to memref<7x7xf16>
        %from_elements_46 = tensor.from_elements %c26275_i16, %c-12836_i16, %c26275_i16, %c26275_i16, %c26275_i16, %c-12836_i16, %c-18289_i16, %c26275_i16, %c26275_i16, %c26275_i16, %c-18289_i16, %c26275_i16, %c-18289_i16, %c-18289_i16, %c-18289_i16, %c-18289_i16, %c-12836_i16, %c26275_i16, %c-18289_i16, %c26275_i16, %c-12836_i16, %c26275_i16, %c-18289_i16, %c-12836_i16, %c26275_i16, %c-18289_i16, %c26275_i16, %c26275_i16, %c26275_i16, %c-12836_i16, %c-12836_i16, %c26275_i16, %c-18289_i16, %c-18289_i16, %c26275_i16, %c-12836_i16, %c-12836_i16, %c-12836_i16, %c-12836_i16, %c-12836_i16, %c-18289_i16, %c26275_i16, %c26275_i16, %c26275_i16, %c-12836_i16, %c-18289_i16, %c-18289_i16, %c-12836_i16, %c-18289_i16 : tensor<7x7xi16>
        %268 = math.copysign %29, %2 : tensor<14xf32>
        %269 = vector.matrix_multiply %194, %94 {lhs_columns = 2 : i32, lhs_rows = 4 : i32, rhs_columns = 7 : i32} : (vector<8xf32>, vector<14xf32>) -> vector<28xf32>
        %270 = math.atan2 %2, %8 : tensor<14xf32>
      } else {
        %264 = vector.broadcast %cst : f16 to vector<1xf16>
        %265 = vector.broadcast %false : i1 to vector<1xi1>
        %266 = vector.gather %alloc_9[%125, %166] [%25], %265, %264 : memref<7x7xf16>, vector<1xi32>, vector<1xi1>, vector<1xf16> into vector<1xf16>
        %267 = vector.create_mask %c15, %c3 : vector<14x14xi1>
        %268 = arith.maxui %159, %159 : i64
        %269 = index.floordivs %257, %c13
        %270 = vector.shuffle %123, %123 [0, 2, 5, 6, 8, 10, 11, 12, 13, 14, 16, 18, 20, 23, 24, 25, 27] : vector<14x14xi32>, vector<14x14xi32>
        %271 = arith.shrsi %extracted, %67 : i32
        %272 = arith.ceildivsi %67, %extracted : i32
        %273 = index.maxu %c0, %96
      }
      affine.yield %cst_3 : f32
    }
    %200 = math.round %cst_1 : f16
    %201 = math.ctpop %0 : tensor<14x14xi32>
    %202 = math.log1p %8 : tensor<14xf32>
    %203 = math.tan %114 : f32
    %204 = arith.shli %c796176655_i64, %159 : i64
    %205 = math.absf %7 : tensor<1xf32>
    %206 = vector.bitcast %25 : vector<1xi32> to vector<1xi32>
    %207 = arith.divf %cst_5, %cst_4 : f32
    scf.if %false_33 {
      %257 = vector.maskedload %197[%c2, %c0], %102, %20 : memref<14x14xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
      %258 = vector.multi_reduction <add>, %98, %extracted_26 [0] : vector<8xf32> to f32
      vector.print %94 : vector<14xf32>
      %259 = math.round %2 : tensor<14xf32>
      %260 = index.ceildivu %64, %c7
      %261 = math.exp %cst_3 : f32
      %262 = math.round %splat : tensor<7x7xf32>
      %263 = memref.alloca_scope  -> (f32) {
        %true_46 = arith.constant true
        %264 = index.casts %false_39 : i1 to index
        bufferization.dealloc_tensor %4 : tensor<14xi1>
        %265 = arith.shli %c26275_i16, %c26275_i16 : i16
        %266 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 * 8)>(%c11, %166, %c1, %86)
        %267 = math.absf %7 : tensor<1xf32>
        vector.print %93 : vector<14xf32>
        %268 = math.atan2 %29, %8 : tensor<14xf32>
        %extracted_47 = tensor.extract %7[%c0] : tensor<1xf32>
        %269 = affine.max affine_map<(d0, d1, d2, d3) -> ((d3 * 2) floordiv 32)>(%c11, %107, %c2, %c15)
        %270 = bufferization.to_memref %4 : memref<14xi1>
        %expanded_48 = tensor.expand_shape %splat [[0], [1, 2]] : tensor<7x7xf32> into tensor<7x7x1xf32>
        %271 = arith.remf %114, %144 : f32
        %272 = index.ceildivu %198, %c10
        %273 = math.powf %2, %29 : tensor<14xf32>
        %cst_49 = arith.constant 0x4C3E3CF5 : f32
        %274 = index.maxu %c3, %266
        %275 = math.atan %7 : tensor<1xf32>
        %276 = arith.remf %114, %258 : f32
        %277 = arith.divui %c1164286809_i32, %c1343421930_i32 : i32
        %278 = index.add %c12, %266
        %279 = vector.extract_strided_slice %183 {offsets = [4], sizes = [5], strides = [1]} : vector<14x14xi1> to vector<5x14xi1>
        %inserted_50 = tensor.insert %c1343421930_i32 into %reduced[] : tensor<i32>
        %280 = index.ceildivu %107, %96
        %281 = math.ctlz %159 : i64
        %282 = vector.insertelement %c1343421930_i32, %20[%81 : index] : vector<7xi32>
        %283 = math.copysign %cst, %cst_2 : f16
        %284 = math.tan %7 : tensor<1xf32>
        %285 = math.copysign %2, %2 : tensor<14xf32>
        %286 = arith.remsi %true, %false_0 : i1
        %287 = vector.broadcast %c1164286809_i32 : i32 to vector<14xi32>
        %288 = vector.broadcast %false : i1 to vector<14xi1>
        %289 = vector.maskedload %alloc_7[%c9], %288, %287 : memref<14xi32>, vector<14xi1>, vector<14xi32> into vector<14xi32>
        %dest_51, %accumulated_value_52 = vector.scan <xor>, %80, %20 {inclusive = false, reduction_dim = 0 : i64} : vector<7x7xi32>, vector<7xi32>
        memref.alloca_scope.return %cst_3 : f32
      }
    }
    %208 = math.fpowi %cst_4, %c1343421930_i32 : f32, i32
    %209 = affine.if affine_set<(d0, d1, d2, d3) : (d1 ceildiv 8 == 0, d3 >= 0, d2 * 2 == 0)>(%c6, %c15, %c9, %c2) -> f32 {
      %257 = vector.broadcast %cst_2 : f16 to vector<14x14xf16>
      %cst_46 = arith.constant 1.93255667E+9 : f32
      %258 = affine.if affine_set<(d0) : (((d0 - 2) mod 32) * 4 == 0, (d0 - 2) mod 32 + d0 + d0 - 2 - 32 == 0, d0 - 2 >= 0)>(%c9) -> memref<1xf32> {
        %264 = vector.broadcast %cst_1 : f16 to vector<14xf16>
        %265 = vector.transpose %25, [0] : vector<1xi32> to vector<1xi32>
        %266 = math.absf %29 : tensor<14xf32>
        %267 = arith.cmpi uge, %c796176655_i64, %159 : i64
        %268 = vector.broadcast %cst_5 : f32 to vector<7x7xf32>
        %269 = vector.outerproduct %101, %101, %268 {kind = #vector.kind<add>} : vector<7xf32>, vector<7xf32>
        %270 = vector.bitcast %93 : vector<14xf32> to vector<14xf32>
        %271 = index.sizeof
        %272 = math.rsqrt %cst_1 : f16
        affine.yield %alloc_13 : memref<1xf32>
      } else {
        %264 = vector.broadcast %c-12836_i16 : i16 to vector<14xi16>
        %265 = math.powf %7, %7 : tensor<1xf32>
        %266 = tensor.empty() : tensor<14x14xi16>
        %267 = linalg.matmul ins(%50, %50 : tensor<14x14xi16>, tensor<14x14xi16>) outs(%266 : tensor<14x14xi16>) -> tensor<14x14xi16>
        %cast = tensor.cast %6 : tensor<14x14xi16> to tensor<?x?xi16>
        %268 = math.log1p %7 : tensor<1xf32>
        %269 = affine.apply affine_map<(d0, d1) -> (d1 mod 32)>(%86, %173)
        %270 = vector.create_mask %86 : vector<14xi1>
        %271 = index.divs %c11, %34
        affine.yield %alloc_13 : memref<1xf32>
      }
      %259 = arith.divf %cst_5, %cst_5 : f32
      %260 = vector.multi_reduction <xor>, %39, %c1164286809_i32 [0] : vector<7xi32> to i32
      %261 = arith.floordivsi %false, %false_39 : i1
      %262 = vector.reduction <maxsi>, %206 : vector<1xi32> into i32
      %263 = vector.load %197[%c8, %c3] : memref<14x14xi32>, vector<14x14xi32>
      affine.yield %cst_3 : f32
    } else {
      %257 = index.maxs %81, %198
      %258 = math.cttz %195 : tensor<14x14xi1>
      %259 = arith.shrsi %extracted, %67 : i32
      %260 = math.absf %splat : tensor<7x7xf32>
      %261 = math.log1p %7 : tensor<1xf32>
      %extracted_46 = tensor.extract %10[%c12, %c3] : tensor<14x14xi1>
      %262 = arith.cmpf ugt, %cst_5, %cst_3 : f32
      %263 = math.round %7 : tensor<1xf32>
      affine.yield %extracted_26 : f32
    }
    %cst_40 = arith.constant 4.332800e+04 : f16
    %210 = vector.load %197[%c7, %c10] : memref<14x14xi32>, vector<1xi32>
    %expanded_41 = tensor.expand_shape %expanded [[0], [1, 2]] : tensor<14x1xi1> into tensor<14x1x1xi1>
    %211 = arith.cmpf uno, %144, %cst_3 : f32
    %212 = math.powf %cst_5, %cst_5 : f32
    %213 = arith.cmpi uge, %true, %false_0 : i1
    %214 = math.atan2 %splat_27, %splat_27 : tensor<14x14xf16>
    %215 = scf.while (%arg1 = %123) : (vector<14x14xi32>) -> vector<14x14xi32> {
      %257 = index.casts %28 : index to i32
      %258 = arith.divui %c1896577496_i64, %c796176655_i64 : i64
      %from_elements_46 = tensor.from_elements %144 : tensor<1xf32>
      %259 = vector.create_mask %c10 : vector<1xi1>
      %260 = vector.broadcast %cst_5 : f32 to vector<8x8xf32>
      %261 = vector.outerproduct %194, %194, %260 {kind = #vector.kind<minf>} : vector<8xf32>, vector<8xf32>
      %262 = arith.maxui %c796176655_i64, %c1896577496_i64 : i64
      %263 = arith.remsi %c1343421930_i32, %c1164286809_i32 : i32
      %264 = arith.divsi %false_33, %false_39 : i1
      scf.condition(%false) %123 : vector<14x14xi32>
    } do {
    ^bb0(%arg1: vector<14x14xi32>):
      %257 = math.rsqrt %29 : tensor<14xf32>
      %258 = arith.divui %false, %false_33 : i1
      %extracted_46 = tensor.extract %0[%c11, %c2] : tensor<14x14xi32>
      %259 = vector.splat %146 : vector<1xindex>
      %260 = arith.remf %114, %cst_5 : f32
      %261 = vector.load %158[%c0] : memref<1xi1>, vector<14x14xi1>
      %262 = arith.remf %cst_4, %extracted_26 : f32
      %263 = math.exp %cst_3 : f32
      %alloc_47 = memref.alloc() : memref<14xi16>
      %264 = math.cos %cst_2 : f16
      scf.index_switch %34 
      case 1 {
        %268 = index.casts %c6 : index to i32
        %alloc_50 = memref.alloc() : memref<14xf32>
        %269 = arith.cmpi slt, %c796176655_i64, %c796176655_i64 : i64
        %270 = arith.andi %159, %c1896577496_i64 : i64
        %dest_51, %accumulated_value_52 = vector.scan <minsi>, %80, %20 {inclusive = true, reduction_dim = 0 : i64} : vector<7x7xi32>, vector<7xi32>
        %271 = memref.atomic_rmw maxu %extracted, %197[%c13, %c6] : (i32, memref<14x14xi32>) -> i32
        %272 = math.expm1 %8 : tensor<14xf32>
        %273 = index.casts %false_39 : i1 to index
        %274 = arith.remui %159, %159 : i64
        %275 = math.atan2 %144, %cst_4 : f32
        %276 = math.copysign %cst_4, %cst_5 : f32
        %277 = math.exp %splat_27 : tensor<14x14xf16>
        vector.print %210 : vector<1xi32>
        %278 = math.absf %114 : f32
        %279 = math.atan2 %splat_27, %splat_27 : tensor<14x14xf16>
        %280 = arith.shli %true, %false : i1
        scf.yield
      }
      default {
        %268 = index.divs %c8, %c0
        bufferization.dealloc_tensor %12 : tensor<7x7xi16>
        %269 = index.floordivs %c13, %115
        %270 = memref.atomic_rmw mulf %extracted_26, %alloc_6[%c6] : (f32, memref<14xf32>) -> f32
        %271 = vector.load %45[%c8, %c2] : memref<14x14xi1>, vector<7x7xi1>
        %272 = vector.extract_strided_slice %194 {offsets = [0], sizes = [7], strides = [1]} : vector<8xf32> to vector<7xf32>
        %from_elements_50 = tensor.from_elements %extracted_26 : tensor<1xf32>
        %273 = math.rsqrt %splat : tensor<7x7xf32>
        %274 = vector.load %alloc_8[%c11, %c5] : memref<14x14xi64>, vector<14xi64>
        %275 = vector.extract_strided_slice %183 {offsets = [7], sizes = [4], strides = [1]} : vector<14x14xi1> to vector<4x14xi1>
        %276 = math.atan %7 : tensor<1xf32>
        %277 = index.sub %107, %c0
        %278 = math.fpowi %cst_1, %extracted : f16, i32
        %inserted_51 = tensor.insert %c-12836_i16 into %164[%c0, %c5] : tensor<7x7xi16>
        %279 = math.atan %2 : tensor<14xf32>
        %280 = vector.extract %20[5] : vector<7xi32>
      }
      %265 = index.floordivs %28, %115
      %266 = index.casts %extracted : i32 to index
      %extracted_48 = tensor.extract %22[] : tensor<i16>
      %false_49 = index.bool.constant false
      %267 = arith.floordivsi %c1164286809_i32, %extracted_46 : i32
      scf.yield %123 : vector<14x14xi32>
    }
    %216 = bufferization.clone %alloc_11 : memref<14x14xf32> to memref<14x14xf32>
    %217 = arith.floordivsi %true, %false_0 : i1
    %218 = math.expm1 %splat : tensor<7x7xf32>
    %219 = math.atan2 %cst, %cst_1 : f16
    %220 = math.absf %cst_2 : f16
    %221 = math.fma %29, %29, %2 : tensor<14xf32>
    %222 = math.sqrt %cst_2 : f16
    %223 = index.sub %c5, %125
    %expanded_42 = tensor.expand_shape %11 [[0, 1]] : tensor<14xi1> into tensor<14x1xi1>
    %alloca_43 = memref.alloca() : memref<14xi16>
    %224 = math.atan %splat_27 : tensor<14x14xf16>
    %225 = vector.broadcast %c1343421930_i32 : i32 to vector<1x1xi32>
    %226 = vector.outerproduct %206, %206, %225 {kind = #vector.kind<mul>} : vector<1xi32>, vector<1xi32>
    %227 = vector.matrix_multiply %103, %139 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf32>, vector<7xf32>) -> vector<1xf32>
    bufferization.dealloc_tensor %generated_34 : tensor<?x?xf32>
    %228 = arith.subi %c-12836_i16, %c-18289_i16 : i16
    scf.if %false {
      %257 = index.divu %81, %146
      %258 = scf.index_switch %151 -> i64 
      case 1 {
        %264 = math.exp %2 : tensor<14xf32>
        %265 = vector.reduction <add>, %94 : vector<14xf32> into f32
        %266 = math.absf %8 : tensor<14xf32>
        %267 = math.roundeven %8 : tensor<14xf32>
        %268 = math.round %cst_2 : f16
        %269 = math.absf %splat_27 : tensor<14x14xf16>
        %270 = index.ceildivs %64, %166
        %extracted_47 = tensor.extract %1[%c0] : tensor<1xi1>
        %271 = arith.divf %cst, %cst_2 : f16
        %272 = arith.addf %cst_5, %cst_3 : f32
        bufferization.dealloc_tensor %expanded_36 : tensor<14x1xi1>
        %273 = math.atan %extracted_26 : f32
        %274 = math.atan %8 : tensor<14xf32>
        %275 = math.copysign %29, %8 : tensor<14xf32>
        %276 = vector.shuffle %206, %206 [1] : vector<1xi32>, vector<1xi32>
        %277 = memref.load %alloc_6[%c13] : memref<14xf32>
        scf.yield %c1896577496_i64 : i64
      }
      case 2 {
        %264 = vector.broadcast %c1164286809_i32 : i32 to vector<1x1xi32>
        %265 = vector.outerproduct %206, %206, %264 {kind = #vector.kind<add>} : vector<1xi32>, vector<1xi32>
        %266 = math.ipowi %false_33, %false_33 : i1
        %267 = arith.xori %c-12836_i16, %c-18289_i16 : i16
        %extracted_47 = tensor.extract %expanded_41[%c12, %c0, %c0] : tensor<14x1x1xi1>
        %268 = memref.atomic_rmw minu %67, %197[%c13, %c6] : (i32, memref<14x14xi32>) -> i32
        %269 = math.powf %2, %29 : tensor<14xf32>
        %270 = index.ceildivu %c15, %c8
        %271 = arith.shrsi %extracted_28, %false_0 : i1
        %expanded_48 = tensor.expand_shape %2 [[0, 1]] : tensor<14xf32> into tensor<14x1xf32>
        memref.store %false_33, %alloc_19[%c3, %c8] : memref<14x14xi1>
        %272 = memref.atomic_rmw maxf %144, %41[%c3] : (f32, memref<14xf32>) -> f32
        %273 = arith.subi %c-12836_i16, %c-18289_i16 : i16
        %alloca_49 = memref.alloca() : memref<1xi1>
        %expanded_50 = tensor.expand_shape %expanded_36 [[0], [1, 2]] : tensor<14x1xi1> into tensor<14x1x1xi1>
        %274 = index.floordivs %173, %c4
        %275 = bufferization.clone %alloc_7 : memref<14xi32> to memref<14xi32>
        scf.yield %c1896577496_i64 : i64
      }
      default {
        %264 = memref.load %alloc_17[%c13] : memref<14xf16>
        %265 = arith.cmpi ult, %c1343421930_i32, %67 : i32
        %266 = arith.ceildivsi %c796176655_i64, %c1896577496_i64 : i64
        %267 = index.floordivs %c9, %c1
        %268 = index.divs %151, %81
        %269 = arith.andi %extracted_28, %false : i1
        %270 = math.ctlz %expanded_29 : tensor<1x1xi1>
        %alloca_47 = memref.alloca() : memref<14x14xi32>
        %271 = vector.create_mask %169, %267 : vector<14x14xi1>
        %272 = arith.floordivsi %false, %true : i1
        %273 = vector.multi_reduction <xor>, %183, %271 [] : vector<14x14xi1> to vector<14x14xi1>
        %274 = index.casts %false_0 : i1 to index
        bufferization.dealloc_tensor %15 : tensor<14x14xi1>
        %alloca_48 = memref.alloca() : memref<14xf32>
        %275 = math.cos %cst_1 : f16
        %276 = arith.shli %false_39, %false_39 : i1
        scf.yield %c1896577496_i64 : i64
      }
      %259 = index.divu %c4, %151
      %260 = arith.addf %cst, %cst_2 : f16
      %alloca_46 = memref.alloca() : memref<14xi32>
      %261 = arith.cmpi slt, %extracted, %67 : i32
      %262 = bufferization.to_memref %3 : memref<7x7xi1>
      %263 = vector.matrix_multiply %194, %103 {lhs_columns = 1 : i32, lhs_rows = 8 : i32, rhs_columns = 7 : i32} : (vector<8xf32>, vector<7xf32>) -> vector<56xf32>
    } else {
      %257 = vector.load %45[%c11, %c8] : memref<14x14xi1>, vector<14x14xi1>
      %258 = math.expm1 %8 : tensor<14xf32>
      %259 = math.absf %114 : f32
      %260 = math.sqrt %114 : f32
      %261 = vector.extract_strided_slice %20 {offsets = [1], sizes = [4], strides = [1]} : vector<7xi32> to vector<4xi32>
      %262 = math.atan2 %cst_4, %114 : f32
      %263 = math.copysign %2, %8 : tensor<14xf32>
      %264 = memref.atomic_rmw maxf %cst, %alloc_9[%c2, %c1] : (f16, memref<7x7xf16>) -> f16
    }
    %229 = arith.remsi %false_33, %false_39 : i1
    %230 = affine.if affine_set<(d0, d1, d2, d3) : (d1 ceildiv 8 == 0, d3 >= 0, d2 * 2 == 0)>(%c11, %c9, %c14, %c14) -> memref<14x14xi1> {
      %257 = math.atan2 %cst, %cst : f16
      %from_elements_46 = tensor.from_elements %extracted_28, %true, %false_39, %false_0, %extracted_28, %extracted_28, %false_0, %true, %true, %false, %false_39, %false, %false_33, %extracted_28, %false_0, %true, %false_39, %extracted_28, %false_0, %extracted_28, %true, %extracted_28, %false_0, %false_39, %false_0, %extracted_28, %false_33, %true, %false_39, %false, %false_33, %true, %extracted_28, %extracted_28, %false_0, %false_0, %false_39, %false_39, %false, %false_33, %extracted_28, %true, %false_0, %false, %false_39, %false_33, %extracted_28, %false, %false_0, %false_33, %extracted_28, %false, %false_33, %false_39, %extracted_28, %true, %false_33, %extracted_28, %false, %false_0, %false_33, %false_0, %false_0, %false_33, %false, %false_33, %false_33, %false_39, %extracted_28, %false_39, %false_39, %false, %false_33, %false, %false_0, %false_39, %false_33, %false_39, %false_33, %false_39, %false, %false_0, %true, %true, %false_0, %true, %false, %false_39, %true, %false_0, %true, %false_39, %false_0, %extracted_28, %true, %false_33, %extracted_28, %false, %false, %false_39, %false, %false_0, %false_39, %extracted_28, %false_0, %true, %false_39, %false_0, %true, %false_0, %true, %false_33, %false_0, %false_0, %true, %false_0, %false_39, %false_0, %true, %false, %extracted_28, %false_33, %true, %false_33, %extracted_28, %false_33, %extracted_28, %false_39, %false_33, %false_0, %false, %extracted_28, %extracted_28, %extracted_28, %false_0, %extracted_28, %true, %false_33, %false_0, %true, %false, %false_33, %true, %false_39, %false_39, %false_0, %false_0, %false_33, %false_39, %false_0, %false, %false_0, %false, %extracted_28, %false, %false_0, %false, %extracted_28, %false_0, %false_0, %false_39, %false, %false, %false_39, %true, %false_39, %extracted_28, %false_39, %false, %false_0, %false_0, %false_39, %true, %true, %false_0, %extracted_28, %false_0, %extracted_28, %false, %false_0, %false_0, %false_0, %false_39, %false_39, %true, %true, %false_0, %false_0, %extracted_28, %false_33, %false_33, %false_0, %false_0, %false_33, %false, %true : tensor<14x14xi1>
      %alloc_47 = memref.alloc() : memref<14xi32>
      %258 = math.rsqrt %29 : tensor<14xf32>
      %259 = index.ceildivu %c11, %107
      %260 = vector.matrix_multiply %227, %139 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 7 : i32} : (vector<1xf32>, vector<7xf32>) -> vector<7xf32>
      %261 = math.powf %cst_3, %cst_4 : f32
      %262 = arith.remui %false_39, %false_33 : i1
      affine.yield %58 : memref<14x14xi1>
    } else {
      %257 = arith.shli %extracted_28, %false_33 : i1
      %258 = bufferization.to_memref %reduced : memref<i32>
      %259 = math.log1p %splat : tensor<7x7xf32>
      %260 = affine.apply affine_map<(d0, d1) -> (d1 mod 32)>(%166, %c6)
      %261 = memref.realloc %alloc_12 : memref<1xi32> to memref<7xi32>
      vector.print %227 : vector<1xf32>
      %262 = math.log10 %cst_4 : f32
      %extracted_46 = tensor.extract %12[%c3, %c2] : tensor<7x7xi16>
      affine.yield %alloc_19 : memref<14x14xi1>
    }
    %231 = arith.mulf %cst_2, %cst : f16
    %232 = vector.shuffle %110, %110 [0, 3, 4, 6, 7, 11, 13, 16, 20, 22, 23, 24, 25, 26, 27] : vector<14x14xf32>, vector<14x14xf32>
    %233 = affine.load %alloc_11[%c12, %c7] : memref<14x14xf32>
    %234 = scf.index_switch %115 -> index 
    case 1 {
      %257 = vector.load %alloc[%c3] : memref<14xf16>, vector<7x7xf16>
      %258 = math.copysign %splat, %splat : tensor<7x7xf32>
      %259 = arith.ceildivsi %67, %c1343421930_i32 : i32
      %260 = vector.broadcast %144 : f32 to vector<7x7xf32>
      %261 = vector.outerproduct %101, %103, %260 {kind = #vector.kind<add>} : vector<7xf32>, vector<7xf32>
      %262 = index.divs %198, %96
      %263 = arith.negf %144 : f32
      %264 = index.divu %c11, %c13
      %265 = math.copysign %2, %2 : tensor<14xf32>
      %266 = arith.addi %false, %false_39 : i1
      %267 = scf.index_switch %c1 -> memref<7x7xi64> 
      case 1 {
        %274 = arith.cmpi eq, %true, %true : i1
        %275 = math.ctpop %false_39 : i1
        %276 = arith.negf %cst_2 : f16
        %277 = arith.remf %cst_4, %233 : f32
        %278 = vector.broadcast %114 : f32 to vector<14xf32>
        %279 = arith.andi %159, %159 : i64
        %280 = arith.remf %144, %233 : f32
        %281 = bufferization.clone %alloc_6 : memref<14xf32> to memref<14xf32>
        %282 = math.ctlz %4 : tensor<14xi1>
        %283 = arith.floordivsi %false, %false : i1
        %284 = index.ceildivu %c12, %262
        %285 = arith.shli %c26275_i16, %c26275_i16 : i16
        %286 = arith.subi %c1343421930_i32, %c1164286809_i32 : i32
        %extracted_46 = tensor.extract %7[%c0] : tensor<1xf32>
        %287 = math.ctpop %22 : tensor<i16>
        %288 = arith.ceildivsi %c-18289_i16, %c-12836_i16 : i16
        %alloc_47 = memref.alloc() : memref<7x7xi64>
        scf.yield %alloc_47 : memref<7x7xi64>
      }
      case 2 {
        %274 = arith.maxui %159, %c1896577496_i64 : i64
        %275 = arith.remsi %false, %true : i1
        %276 = vector.multi_reduction <maxf>, %101, %extracted_26 [0] : vector<7xf32> to f32
        %277 = vector.broadcast %false_33 : i1 to vector<7x7xi1>
        %278 = math.round %2 : tensor<14xf32>
        %279 = math.fma %splat_27, %splat_27, %splat_27 : tensor<14x14xf16>
        %280 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 * 64, d3, d0 - 128, d3 - 4)>(%223, %c5, %146, %86)
        %281 = arith.divf %cst_1, %cst_2 : f16
        %282 = math.copysign %8, %29 : tensor<14xf32>
        %dest_46, %accumulated_value_47 = vector.scan <maxf>, %105, %94 {inclusive = false, reduction_dim = 0 : i64} : vector<14x14xf32>, vector<14xf32>
        %283 = arith.floordivsi %false_33, %false_33 : i1
        %284 = math.exp %233 : f32
        %285 = vector.extract_strided_slice %93 {offsets = [3], sizes = [8], strides = [1]} : vector<14xf32> to vector<8xf32>
        %286 = math.atan %2 : tensor<14xf32>
        %287 = math.absf %144 : f32
        %288 = vector.matrix_multiply %20, %206 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 1 : i32} : (vector<7xi32>, vector<1xi32>) -> vector<7xi32>
        %alloc_48 = memref.alloc() : memref<7x7xi64>
        scf.yield %alloc_48 : memref<7x7xi64>
      }
      case 3 {
        %274 = arith.minsi %c-18289_i16, %c26275_i16 : i16
        %275 = vector.load %alloc_6[%c11] : memref<14xf32>, vector<7x7xf32>
        %276 = arith.floordivsi %c1164286809_i32, %c1164286809_i32 : i32
        %277 = index.add %151, %c10
        %278 = arith.maxsi %extracted_28, %extracted_28 : i1
        %279 = math.atan2 %2, %2 : tensor<14xf32>
        %280 = vector.bitcast %98 : vector<8xf32> to vector<8xf32>
        %splat_46 = tensor.splat %false : tensor<14x14xi1>
        %281 = math.fpowi %cst, %c1343421930_i32 : f16, i32
        %282 = vector.load %alloc_20[%c0] : memref<1xi16>, vector<1xi16>
        %283 = math.absf %29 : tensor<14xf32>
        %cast = tensor.cast %16 : tensor<14xi1> to tensor<?xi1>
        memref.store %cst, %alloc_9[%c2, %c3] : memref<7x7xf16>
        %284 = vector.broadcast %144 : f32 to vector<7x7xf32>
        %285 = vector.fma %284, %275, %275 : vector<7x7xf32>
        %286 = arith.maxui %c26275_i16, %c26275_i16 : i16
        %extracted_47 = tensor.extract %from_elements[%c0, %c6] : tensor<7x7xi1>
        %alloc_48 = memref.alloc() : memref<7x7xi64>
        scf.yield %alloc_48 : memref<7x7xi64>
      }
      default {
        %274 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1)>(%c14, %173, %c8, %c1)
        %275 = math.absf %8 : tensor<14xf32>
        %276 = vector.matrix_multiply %206, %25 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
        %277 = vector.broadcast %c-18289_i16 : i16 to vector<i16>
        %278 = vector.transfer_write %277, %12[%c13, %96] : vector<i16>, tensor<7x7xi16>
        %279 = math.round %29 : tensor<14xf32>
        %280 = affine.load %alloc_16[%c2] : memref<1xi1>
        %281 = bufferization.to_memref %9 : memref<1xi32>
        %282 = arith.remui %67, %67 : i32
        %283 = vector.broadcast %cst_2 : f16 to vector<7xf16>
        %284 = vector.insert %283, %257 [3] : vector<7xf16> into vector<7x7xf16>
        %285 = math.cttz %from_elements : tensor<7x7xi1>
        %286 = math.ctpop %c1164286809_i32 : i32
        %dest_46, %accumulated_value_47 = vector.scan <mul>, %105, %78 {inclusive = true, reduction_dim = 0 : i64} : vector<14x14xf32>, vector<14xf32>
        %287 = arith.maxui %c796176655_i64, %c1896577496_i64 : i64
        %288 = math.ceil %8 : tensor<14xf32>
        %289 = math.atan %29 : tensor<14xf32>
        %290 = vector.load %168[%c0] : memref<14xf16>, vector<7x7xf16>
        %alloc_48 = memref.alloc() : memref<7x7xi64>
        scf.yield %alloc_48 : memref<7x7xi64>
      }
      %268 = arith.remui %c-12836_i16, %c-12836_i16 : i16
      %269 = arith.maxsi %67, %extracted : i32
      %270 = arith.remf %233, %cst_3 : f32
      %271 = index.divu %86, %c5
      %272 = arith.divf %cst_5, %cst_4 : f32
      %273 = math.ctpop %10 : tensor<14x14xi1>
      scf.yield %c1 : index
    }
    case 2 {
      %c0_i32 = arith.constant 0 : i32
      %257 = vector.transfer_read %18[%125], %c0_i32 : tensor<1xi32>, vector<i32>
      %258 = vector.extract %39[0] : vector<7xi32>
      %259 = arith.shrsi %159, %c796176655_i64 : i64
      %260 = vector.broadcast %67 : i32 to vector<1x1xi32>
      %261 = vector.outerproduct %210, %210, %260 {kind = #vector.kind<minui>} : vector<1xi32>, vector<1xi32>
      %262 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %110, %79, %94 : vector<14x14xf32>, vector<14xf32> into vector<14xf32>
      %263 = vector.create_mask %c0 : vector<1xi1>
      %alloc_46 = memref.alloc() : memref<14x14xi64>
      memref.copy %alloc_8, %alloc_46 : memref<14x14xi64> to memref<14x14xi64>
      %264 = vector.broadcast %c0_i32 : i32 to vector<14xi32>
      %265 = vector.matrix_multiply %264, %264 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi32>, vector<14xi32>) -> vector<1xi32>
      %266 = scf.index_switch %c1 -> tensor<14x14xi64> 
      case 1 {
        %272 = math.rsqrt %cst_5 : f32
        %273 = index.divs %169, %173
        %dest_48, %accumulated_value_49 = vector.scan <maxf>, %105, %78 {inclusive = false, reduction_dim = 1 : i64} : vector<14x14xf32>, vector<14xf32>
        %274 = vector.broadcast %c0_i32 : i32 to vector<7x7xi32>
        %275 = arith.maxsi %c1896577496_i64, %c1896577496_i64 : i64
        %276 = arith.shrui %c1343421930_i32, %c0_i32 : i32
        %277 = index.divu %115, %c2
        %278 = arith.maxui %159, %c796176655_i64 : i64
        %279 = bufferization.to_memref %18 : memref<1xi32>
        %280 = vector.multi_reduction <add>, %123, %67 [0, 1] : vector<14x14xi32> to i32
        %281 = index.ceildivu %c4, %173
        %282 = math.roundeven %extracted_26 : f32
        %283 = arith.floordivsi %false_33, %extracted_28 : i1
        %284 = index.casts %146 : index to i32
        %285 = math.exp %8 : tensor<14xf32>
        %286 = math.ceil %8 : tensor<14xf32>
        %287 = tensor.empty() : tensor<14x14xi64>
        scf.yield %287 : tensor<14x14xi64>
      }
      case 2 {
        %272 = memref.realloc %alloc : memref<14xf16> to memref<7xf16>
        %273 = math.fma %7, %7, %7 : tensor<1xf32>
        %274 = math.expm1 %7 : tensor<1xf32>
        %275 = vector.outerproduct %79, %94, %110 {kind = #vector.kind<add>} : vector<14xf32>, vector<14xf32>
        %alloc_48 = memref.alloc() : memref<14xi32>
        %collapsed = tensor.collapse_shape %expanded_36 [[0, 1]] : tensor<14x1xi1> into tensor<14xi1>
        %alloca_49 = memref.alloca() : memref<1xf32>
        %276 = vector.load %216[%c6, %c6] : memref<14x14xf32>, vector<7x7xf32>
        %277 = math.copysign %2, %8 : tensor<14xf32>
        %278 = index.floordivs %96, %c1
        %279 = math.fma %29, %8, %29 : tensor<14xf32>
        %280 = math.powf %7, %7 : tensor<1xf32>
        %281 = arith.maxsi %extracted_28, %true : i1
        %282 = math.ctlz %164 : tensor<7x7xi16>
        %283 = math.ctpop %expanded : tensor<14x1xi1>
        %284 = arith.addf %extracted_26, %extracted_26 : f32
        %285 = tensor.empty() : tensor<14x14xi64>
        scf.yield %285 : tensor<14x14xi64>
      }
      case 3 {
        %272 = index.sizeof
        %273 = memref.realloc %168 : memref<14xf16> to memref<14xf16>
        %c1_i16 = arith.constant 1 : i16
        %274 = vector.transfer_read %alloc_20[%125], %c1_i16 : memref<1xi16>, vector<i16>
        %275 = memref.load %alloc_16[%c0] : memref<1xi1>
        %276 = vector.bitcast %264 : vector<14xi32> to vector<14xi32>
        vector.print %20 : vector<7xi32>
        %277 = arith.ceildivsi %c796176655_i64, %c796176655_i64 : i64
        %278 = memref.realloc %alloc_7 : memref<14xi32> to memref<7xi32>
        %279 = vector.broadcast %c1343421930_i32 : i32 to vector<14xi32>
        %280 = vector.broadcast %114 : f32 to vector<7x7xf32>
        %281 = index.add %c10, %179
        %282 = math.fpowi %cst, %c1343421930_i32 : f16, i32
        %283 = index.divs %81, %c7
        %alloca_48 = memref.alloca() : memref<14x14xf32>
        %284 = math.powf %7, %7 : tensor<1xf32>
        %from_elements_49 = tensor.from_elements %false_39, %false, %false_39, %false_33, %true, %false, %true, %true, %true, %extracted_28, %false_33, %false_0, %false_0, %false_33 : tensor<14xi1>
        %285 = tensor.empty() : tensor<14x14xi64>
        scf.yield %285 : tensor<14x14xi64>
      }
      case 4 {
        %272 = vector.bitcast %194 : vector<8xf32> to vector<8xf32>
        %273 = math.fma %extracted_26, %cst_5, %144 : f32
        %274 = arith.floordivsi %false_0, %false : i1
        memref.store %cst_3, %152[%c0, %c10] : memref<14x14xf32>
        %275 = vector.outerproduct %264, %264, %123 {kind = #vector.kind<or>} : vector<14xi32>, vector<14xi32>
        %276 = math.absf %cst : f16
        %277 = memref.atomic_rmw maxf %144, %41[%c5] : (f32, memref<14xf32>) -> f32
        affine.store %114, %alloc_10[%c0, %c4] : memref<7x7xf32>
        %278 = math.tan %233 : f32
        %279 = math.ipowi %15, %15 : tensor<14x14xi1>
        %280 = index.add %198, %146
        %281 = tensor.empty() : tensor<7x7xi32>
        %282 = math.fpowi %splat, %281 : tensor<7x7xf32>, tensor<7x7xi32>
        %283 = arith.cmpi sge, %c1896577496_i64, %159 : i64
        vector.print %110 : vector<14x14xf32>
        %284 = math.roundeven %8 : tensor<14xf32>
        %285 = index.floordivs %c12, %c13
        %286 = tensor.empty() : tensor<14x14xi64>
        scf.yield %286 : tensor<14x14xi64>
      }
      default {
        %272 = memref.load %45[%c6, %c9] : memref<14x14xi1>
        memref.store %false, %alloc_16[%c0] : memref<1xi1>
        %273 = arith.andi %true, %false_33 : i1
        %274 = index.add %169, %86
        %275 = vector.multi_reduction <mul>, %78, %cst_4 [0] : vector<14xf32> to f32
        %276 = math.copysign %2, %8 : tensor<14xf32>
        %277 = vector.matrix_multiply %101, %103 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf32>, vector<7xf32>) -> vector<1xf32>
        memref.store %c26275_i16, %alloc_20[%c0] : memref<1xi16>
        %278 = index.mul %86, %c14
        %279 = vector.bitcast %79 : vector<14xf32> to vector<14xi32>
        %280 = math.expm1 %splat_27 : tensor<14x14xf16>
        %281 = index.mul %223, %c7
        %282 = vector.broadcast %false_0 : i1 to vector<14xi1>
        %dest_48, %accumulated_value_49 = vector.scan <xor>, %183, %282 {inclusive = false, reduction_dim = 1 : i64} : vector<14x14xi1>, vector<14xi1>
        %283 = vector.outerproduct %279, %279, %123 {kind = #vector.kind<or>} : vector<14xi32>, vector<14xi32>
        %284 = math.fma %233, %cst_5, %cst_4 : f32
        %285 = memref.realloc %alloc_20 : memref<1xi16> to memref<14xi16>
        %286 = tensor.empty() : tensor<14x14xi64>
        scf.yield %286 : tensor<14x14xi64>
      }
      %267 = arith.remsi %c-18289_i16, %c-12836_i16 : i16
      %268 = index.sizeof
      %alloca_47 = memref.alloca() : memref<7x7xi32>
      %269 = vector.extract %101[2] : vector<7xf32>
      %270 = index.divu %c1, %c5
      %271 = math.ctlz %transposed : tensor<1xi32>
      scf.yield %64 : index
    }
    case 3 {
      %257 = arith.minf %114, %114 : f32
      %258 = math.log1p %144 : f32
      %inserted_46 = tensor.insert %false_33 into %4[%c2] : tensor<14xi1>
      %259 = arith.ceildivsi %c796176655_i64, %c1896577496_i64 : i64
      memref.copy %alloc_19, %58 : memref<14x14xi1> to memref<14x14xi1>
      %260 = vector.load %216[%c5, %c4] : memref<14x14xf32>, vector<14xf32>
      %rank = tensor.rank %14 : tensor<14xi16>
      %261 = arith.shrui %extracted_28, %false : i1
      %262 = math.fma %144, %144, %cst_4 : f32
      %263 = index.add %64, %146
      %264 = math.atan2 %8, %8 : tensor<14xf32>
      %265 = math.sqrt %8 : tensor<14xf32>
      scf.execute_region {
        %269 = math.sqrt %7 : tensor<1xf32>
        %270 = arith.divf %144, %cst_3 : f32
        %271 = vector.load %44[%c0] : memref<1xi16>, vector<14x14xi16>
        %alloca_47 = memref.alloca() : memref<1xi32>
        %272 = index.casts %179 : index to i32
        %273 = math.ipowi %14, %14 : tensor<14xi16>
        %274 = math.exp %114 : f32
        %cst_48 = arith.constant 1.000000e+00 : f32
        %cst_49 = arith.constant 0.000000e+00 : f32
        %275 = vector.transfer_read %alloc_10[%c6, %96], %cst_49 : memref<7x7xf32>, vector<f32>
        %276 = arith.remf %cst_2, %cst_2 : f16
        %277 = memref.load %alloc[%c7] : memref<14xf16>
        %278 = arith.maxf %cst_3, %cst_48 : f32
        %279 = vector.extract_strided_slice %183 {offsets = [10], sizes = [3], strides = [1]} : vector<14x14xi1> to vector<3x14xi1>
        %280 = memref.load %alloc_18[%c11, %c6] : memref<14x14xf32>
        memref.copy %58, %45 : memref<14x14xi1> to memref<14x14xi1>
        %281 = math.atan %8 : tensor<14xf32>
        %alloc_50 = memref.alloc() : memref<1xf32>
        memref.copy %alloc_13, %alloc_50 : memref<1xf32> to memref<1xf32>
        scf.yield
      }
      %266 = vector.insert %20, %80 [5] : vector<7xi32> into vector<7x7xi32>
      %267 = index.floordivs %179, %107
      %268 = math.atan %cst_4 : f32
      scf.yield %64 : index
    }
    default {
      %257 = memref.atomic_rmw maxu %c1164286809_i32, %alloc_12[%c0] : (i32, memref<1xi32>) -> i32
      %c731141486_i32 = arith.constant 731141486 : i32
      %258 = scf.if %false_39 -> (memref<7x7xf16>) {
        %271 = vector.splat %c1164286809_i32 : vector<14x14xi32>
        %272 = arith.shli %c26275_i16, %c-18289_i16 : i16
        %273 = math.expm1 %8 : tensor<14xf32>
        %274 = index.castu %false_33 : i1 to index
        %275 = math.log1p %114 : f32
        %276 = math.cttz %21 : tensor<1xi16>
        %277 = math.atan %7 : tensor<1xf32>
        %278 = vector.reduction <add>, %98 : vector<8xf32> into f32
        scf.yield %alloc_9 : memref<7x7xf16>
      } else {
        %271 = arith.maxf %cst_3, %144 : f32
        %272 = math.round %2 : tensor<14xf32>
        %273 = math.roundeven %cst_4 : f32
        %274 = math.sqrt %splat : tensor<7x7xf32>
        %275 = math.round %cst_5 : f32
        %276 = math.absf %7 : tensor<1xf32>
        %277 = vector.create_mask %c5, %28 : vector<7x7xi1>
        %278 = bufferization.to_tensor %alloc_18 : memref<14x14xf32>
        scf.yield %alloc_9 : memref<7x7xf16>
      }
      %259 = math.atan %8 : tensor<14xf32>
      %260 = scf.while (%arg1 = %alloc_6) : (memref<14xf32>) -> memref<14xf32> {
        %271 = math.sqrt %cst_4 : f32
        %272 = arith.remsi %false_33, %true : i1
        %273 = arith.remf %cst_3, %extracted_26 : f32
        %274 = affine.min affine_map<(d0) -> (d0 floordiv 4 - 8, d0 + d0 - 1)>(%81)
        %cst_48 = arith.constant 1.000000e+00 : f16
        %cst_49 = arith.constant 0.000000e+00 : f16
        %275 = vector.transfer_read %168[%c5], %cst_49 : memref<14xf16>, vector<f16>
        %276 = vector.bitcast %93 : vector<14xf32> to vector<14xf32>
        %277 = arith.remui %c1896577496_i64, %159 : i64
        %278 = vector.transpose %20, [0] : vector<7xi32> to vector<7xi32>
        scf.condition(%extracted_28) %arg1 : memref<14xf32>
      } do {
      ^bb0(%arg1: memref<14xf32>):
        %271 = bufferization.clone %41 : memref<14xf32> to memref<14xf32>
        %272 = vector.bitcast %101 : vector<7xf32> to vector<7xf32>
        %273 = arith.xori %extracted_28, %false_33 : i1
        %274 = vector.broadcast %false_39 : i1 to vector<14xi1>
        %dest_48, %accumulated_value_49 = vector.scan <mul>, %183, %274 {inclusive = true, reduction_dim = 0 : i64} : vector<14x14xi1>, vector<14xi1>
        %alloc_50 = memref.alloc() : memref<7x7xi64>
        %275 = math.fma %114, %233, %233 : f32
        vector.print %139 : vector<7xf32>
        %276 = index.floordivs %151, %c8
        %c19296_i16 = arith.constant 19296 : i16
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %277 = vector.transfer_read %14[%c1], %c0_i16 : tensor<14xi16>, vector<i16>
        %278 = math.expm1 %cst : f16
        %279 = index.maxu %c8, %64
        %280 = index.sizeof
        %281 = arith.remf %cst_1, %cst_1 : f16
        %282 = index.add %c3, %c13
        %283 = index.divu %198, %c6
        scf.yield %41 : memref<14xf32>
      }
      %261 = vector.bitcast %94 : vector<14xf32> to vector<14xf32>
      %262 = vector.extract_strided_slice %102 {offsets = [1], sizes = [3], strides = [1]} : vector<7xi1> to vector<3xi1>
      %263 = math.sqrt %extracted_26 : f32
      %264 = math.copysign %8, %2 : tensor<14xf32>
      %dest_46, %accumulated_value_47 = vector.scan <add>, %110, %93 {inclusive = true, reduction_dim = 1 : i64} : vector<14x14xf32>, vector<14xf32>
      %265 = math.sqrt %cst_5 : f32
      %266 = scf.execute_region -> vector<7x7xi1> {
        %271 = memref.realloc %alloc_7 : memref<14xi32> to memref<1xi32>
        %272 = math.fma %8, %2, %2 : tensor<14xf32>
        %273 = index.sub %c11, %c10
        %expanded_48 = tensor.expand_shape %29 [[0, 1]] : tensor<14xf32> into tensor<14x1xf32>
        bufferization.dealloc_tensor %2 : tensor<14xf32>
        %274 = math.round %cst_1 : f16
        %275 = math.tan %extracted_26 : f32
        %276 = vector.extract %20[6] : vector<7xi32>
        %alloc_49 = memref.alloc() : memref<1xf16>
        %277 = arith.shli %159, %c796176655_i64 : i64
        %278 = index.ceildivs %c6, %273
        %279 = math.sqrt %cst_5 : f32
        %280 = arith.cmpf ole, %cst_3, %233 : f32
        %281 = vector.multi_reduction <xor>, %39, %c1164286809_i32 [0] : vector<7xi32> to i32
        %282 = math.cos %114 : f32
        %extracted_50 = tensor.extract %splat[%c5, %c0] : tensor<7x7xf32>
        %283 = vector.broadcast %false_33 : i1 to vector<7x7xi1>
        scf.yield %283 : vector<7x7xi1>
      }
      %267 = arith.remui %true, %false_0 : i1
      %268 = arith.remf %cst_4, %cst_3 : f32
      %269 = index.floordivs %c6, %c15
      %270 = arith.divf %cst_1, %cst_2 : f16
      scf.yield %c7 : index
    }
    %235 = affine.load %45[%c5, %c5] : memref<14x14xi1>
    %236 = tensor.empty() : tensor<14x14xi1>
    %237 = linalg.matmul ins(%195, %10 : tensor<14x14xi1>, tensor<14x14xi1>) outs(%236 : tensor<14x14xi1>) -> tensor<14x14xi1>
    %238 = math.ceil %cst_5 : f32
    %239 = math.cos %cst_5 : f32
    %240 = math.expm1 %2 : tensor<14xf32>
    %241 = math.ctlz %10 : tensor<14x14xi1>
    %242 = scf.while (%arg1 = %c796176655_i64) : (i64) -> i64 {
      %expanded_46 = tensor.expand_shape %expanded_41 [[0], [1], [2, 3]] : tensor<14x1x1xi1> into tensor<14x1x1x1xi1>
      %257 = arith.remui %false_33, %false : i1
      %258 = scf.while (%arg2 = %alloc_7) : (memref<14xi32>) -> memref<14xi32> {
        %263 = arith.maxui %false_33, %235 : i1
        %264 = math.atan2 %7, %7 : tensor<1xf32>
        %265 = math.powf %7, %7 : tensor<1xf32>
        %266 = math.powf %7, %7 : tensor<1xf32>
        %267 = index.floordivs %c0, %c9
        %268 = arith.shrui %false_33, %false_39 : i1
        %269 = index.floordivs %81, %146
        %270 = math.powf %extracted_26, %114 : f32
        scf.condition(%false) %arg2 : memref<14xi32>
      } do {
      ^bb0(%arg2: memref<14xi32>):
        %263 = math.exp %7 : tensor<1xf32>
        %264 = math.cttz %expanded_42 : tensor<14x1xi1>
        vector.print %105 : vector<14x14xf32>
        %265 = vector.create_mask %c12 : vector<1xi1>
        %266 = arith.divf %144, %144 : f32
        %267 = math.fma %cst_4, %233, %cst_4 : f32
        %268 = memref.atomic_rmw andi %c1164286809_i32, %197[%c2, %c7] : (i32, memref<14x14xi32>) -> i32
        vector.print %79 : vector<14xf32>
        %269 = affine.load %41[%c14] : memref<14xf32>
        %270 = vector.broadcast %extracted_28 : i1 to vector<i1>
        %271 = vector.transfer_write %270, %expanded_46[%125, %c0, %146, %179] : vector<i1>, tensor<14x1x1x1xi1>
        %272 = index.casts %c1896577496_i64 : i64 to index
        %273 = math.absf %cst_3 : f32
        %274 = arith.shli %arg1, %159 : i64
        %275 = arith.maxui %arg1, %c1896577496_i64 : i64
        %true_48 = index.bool.constant true
        %extracted_49 = tensor.extract %14[%c4] : tensor<14xi16>
        scf.yield %alloc_7 : memref<14xi32>
      }
      %259 = vector.extract %39[4] : vector<7xi32>
      %260 = math.round %7 : tensor<1xf32>
      %alloca_47 = memref.alloca() : memref<7x7xi16>
      %261 = math.atan %2 : tensor<14xf32>
      %262 = arith.remf %cst_1, %cst_1 : f16
      scf.condition(%false_0) %c796176655_i64 : i64
    } do {
    ^bb0(%arg1: i64):
      %257 = vector.transpose %103, [0] : vector<7xf32> to vector<7xf32>
      bufferization.dealloc_tensor %expanded : tensor<14x1xi1>
      %from_elements_46 = tensor.from_elements %235, %false_39, %extracted_28, %extracted_28, %extracted_28, %extracted_28, %false_0, %true, %true, %extracted_28, %false_33, %false, %false_39, %false, %false, %false, %false_0, %235, %true, %false, %true, %extracted_28, %false_33, %false, %235, %extracted_28, %false, %extracted_28, %extracted_28, %true, %false_0, %235, %false_39, %false_33, %extracted_28, %extracted_28, %true, %false_0, %false, %false_33, %extracted_28, %false_33, %false_39, %false_33, %false, %false_0, %false_0, %true, %false_0, %false_39, %false_0, %false_39, %false, %false, %extracted_28, %false_39, %false_39, %false_0, %235, %false, %235, %extracted_28, %false_33, %235, %235, %235, %false_0, %extracted_28, %extracted_28, %false, %false_39, %false_33, %235, %extracted_28, %false_39, %false_0, %true, %false_33, %235, %false, %false_0, %false_39, %extracted_28, %true, %false_33, %true, %true, %false, %false_0, %extracted_28, %false_0, %false_33, %true, %false, %extracted_28, %false_0, %235, %false_0, %false_33, %false_33, %false_39, %true, %false_0, %extracted_28, %false_0, %235, %false, %235, %true, %false, %235, %false, %235, %false_39, %false_39, %true, %235, %235, %false_0, %true, %false_0, %false_33, %extracted_28, %false_33, %false_33, %true, %false, %235, %extracted_28, %false, %235, %false_33, %false, %false, %false_39, %false_39, %false_39, %false_0, %false_33, %false_0, %false, %false_0, %false_39, %235, %extracted_28, %false_0, %extracted_28, %true, %extracted_28, %false_33, %true, %true, %false, %false, %false_39, %false_39, %extracted_28, %235, %true, %false_39, %true, %false_39, %235, %false_39, %false_0, %extracted_28, %235, %false_39, %extracted_28, %true, %false_39, %false_0, %true, %false, %false_39, %true, %true, %false_39, %false, %false, %extracted_28, %true, %false, %false_39, %235, %235, %false_0, %true, %235, %false, %false_33, %false_39, %true, %true, %false_0, %false : tensor<14x14xi1>
      memref.copy %alloc_16, %158 : memref<1xi1> to memref<1xi1>
      %258 = arith.shrsi %false_39, %extracted_28 : i1
      %259 = scf.execute_region -> i16 {
        %269 = vector.load %alloc_20[%c0] : memref<1xi16>, vector<14x14xi16>
        %270 = index.casts %c15 : index to i32
        %271 = arith.ori %159, %arg1 : i64
        %272 = vector.insert %233, %194 [6] : f32 into vector<8xf32>
        %273 = arith.ceildivsi %false, %false_39 : i1
        %274 = arith.xori %false_0, %235 : i1
        %275 = vector.broadcast %c1164286809_i32 : i32 to vector<1x1xi32>
        %276 = vector.outerproduct %25, %25, %275 {kind = #vector.kind<or>} : vector<1xi32>, vector<1xi32>
        %alloc_47 = memref.alloc() : memref<7x7xi1>
        memref.tensor_store %3, %alloc_47 : memref<7x7xi1>
        %277 = arith.cmpi sgt, %c1896577496_i64, %c796176655_i64 : i64
        %278 = math.atan2 %cst_5, %cst_4 : f32
        %279 = arith.shrui %c1896577496_i64, %c1896577496_i64 : i64
        %280 = index.ceildivu %96, %115
        %alloc_48 = memref.alloc() : memref<14xi16>
        %281 = vector.broadcast %c-18289_i16 : i16 to vector<1xi16>
        %282 = vector.broadcast %false : i1 to vector<1xi1>
        %283 = vector.gather %alloc_48[%c9] [%206], %282, %281 : memref<14xi16>, vector<1xi32>, vector<1xi1>, vector<1xi16> into vector<1xi16>
        %284 = index.add %c12, %c6
        %285 = math.atan2 %2, %2 : tensor<14xf32>
        memref.store %c1896577496_i64, %alloc_8[%c5, %c11] : memref<14x14xi64>
        scf.yield %c-18289_i16 : i16
      }
      %260 = math.tan %extracted_26 : f32
      bufferization.dealloc_tensor %10 : tensor<14x14xi1>
      %261 = vector.bitcast %210 : vector<1xi32> to vector<1xi32>
      %262 = vector.insertelement %c1164286809_i32, %25[%c3 : index] : vector<1xi32>
      %263 = tensor.empty() : tensor<1x14xi1>
      %264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_29, %263 : tensor<1x1xi1>, tensor<1x14xi1>) outs(%expanded_41 : tensor<14x1x1xi1>) {
      ^bb0(%in: i1, %in_47: i1, %out: i1):
        %269 = memref.atomic_rmw assign %cst_3, %alloc_10[%c3, %c6] : (f32, memref<7x7xf32>) -> f32
        %true_48 = index.bool.constant true
        %270 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %25, %210, %extracted : vector<1xi32>, vector<1xi32> into i32
        %271 = math.expm1 %cst_2 : f16
        memref.copy %alloc_6, %41 : memref<14xf32> to memref<14xf32>
        %272 = memref.atomic_rmw addi %c-18289_i16, %44[%c0] : (i16, memref<1xi16>) -> i16
        %273 = math.absf %cst_2 : f16
        %274 = vector.extract_strided_slice %210 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
        %c1366_i16 = arith.constant 1366 : i16
        %275 = vector.matrix_multiply %102, %102 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi1>, vector<7xi1>) -> vector<1xi1>
        %276 = arith.divf %114, %extracted_26 : f32
        %277 = arith.shrui %67, %c1343421930_i32 : i32
        %278 = bufferization.to_memref %9 : memref<1xi32>
        %279 = math.powf %8, %2 : tensor<14xf32>
        %280 = arith.maxui %c-18289_i16, %259 : i16
        %281 = arith.remf %114, %233 : f32
        %282 = arith.subi %extracted, %c1343421930_i32 : i32
        %283 = vector.broadcast %true_48 : i1 to vector<14xi1>
        %284 = vector.maskedload %216[%c4, %c10], %283, %93 : memref<14x14xf32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
        %285 = arith.divui %false_33, %false : i1
        memref.store %233, %216[%c9, %c12] : memref<14x14xf32>
        %286 = vector.multi_reduction <add>, %98, %cst_5 [0] : vector<8xf32> to f32
        %287 = bufferization.clone %278 : memref<1xi32> to memref<1xi32>
        %288 = math.sqrt %cst_2 : f16
        %289 = vector.matrix_multiply %194, %101 {lhs_columns = 1 : i32, lhs_rows = 8 : i32, rhs_columns = 7 : i32} : (vector<8xf32>, vector<7xf32>) -> vector<56xf32>
        %290 = math.cttz %6 : tensor<14x14xi16>
        %291 = tensor.empty() : tensor<14x1xi1>
        %292 = linalg.matmul ins(%expanded_42, %expanded_29 : tensor<14x1xi1>, tensor<1x1xi1>) outs(%291 : tensor<14x1xi1>) -> tensor<14x1xi1>
        %293 = vector.extract %274[0] : vector<1xi32>
        %294 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %139, %101, %114 : vector<7xf32>, vector<7xf32> into f32
        %295 = arith.shli %false, %true_48 : i1
        %alloca_49 = memref.alloca() : memref<7x7xf32>
        %296 = vector.extract %105[2] : vector<14x14xf32>
        %297 = math.powf %cst_2, %cst_2 : f16
        linalg.yield %false_0 : i1
      } -> tensor<14x1x1xi1>
      memref.alloca_scope  {
        %269 = memref.atomic_rmw maxf %cst_5, %alloc_13[%c0] : (f32, memref<1xf32>) -> f32
        %270 = arith.cmpf false, %233, %cst_5 : f32
        %271 = arith.negf %extracted_26 : f32
        %272 = arith.remsi %c-12836_i16, %259 : i16
        %273 = math.ipowi %true, %false_39 : i1
        %274 = vector.broadcast %144 : f32 to vector<1x1xf32>
        %275 = vector.outerproduct %227, %227, %274 {kind = #vector.kind<maxf>} : vector<1xf32>, vector<1xf32>
        %276 = math.ctlz %c-12836_i16 : i16
        %277 = index.casts %c10 : index to i32
        %278 = vector.broadcast %extracted : i32 to vector<14xi32>
        %dest_47, %accumulated_value_48 = vector.scan <xor>, %123, %278 {inclusive = false, reduction_dim = 0 : i64} : vector<14x14xi32>, vector<14xi32>
        %279 = math.atan %8 : tensor<14xf32>
        %280 = index.add %169, %c2
        %281 = math.tan %cst : f16
        %282 = arith.maxsi %c-12836_i16, %c26275_i16 : i16
        %283 = math.round %8 : tensor<14xf32>
        %284 = math.atan %233 : f32
        %cst_49 = arith.constant 3.820800e+04 : f16
        %285 = vector.reduction <minf>, %79 : vector<14xf32> into f32
        %286 = math.ctpop %false : i1
        %287 = math.log1p %cst_1 : f16
        %288 = vector.insert %cst_4, %139 [1] : f32 into vector<7xf32>
        %289 = bufferization.clone %alloc_15 : memref<7x7xf32> to memref<7x7xf32>
        %290 = math.round %cst_3 : f32
        %291 = vector.extract_strided_slice %102 {offsets = [2], sizes = [5], strides = [1]} : vector<7xi1> to vector<5xi1>
        %292 = math.ipowi %arg1, %159 : i64
        %293 = math.fma %114, %cst_5, %cst_4 : f32
        %294 = index.divu %c8, %c0
        %295 = vector.load %alloc_17[%c9] : memref<14xf16>, vector<1xf16>
        %296 = math.tanh %cst_5 : f32
        %297 = math.copysign %cst, %cst : f16
        %298 = index.sizeof
        %299 = vector.broadcast %235 : i1 to vector<1xi1>
        %300 = vector.gather %197[%298, %169] [%210], %299, %261 : memref<14x14xi32>, vector<1xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
        affine.store %cst_3, %alloc_11[%c8, %c14] : memref<14x14xf32>
      }
      %265 = vector.matrix_multiply %101, %98 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 8 : i32} : (vector<7xf32>, vector<8xf32>) -> vector<56xf32>
      %266 = math.round %cst_2 : f16
      %267 = memref.atomic_rmw minf %cst_3, %alloc_15[%c1, %c5] : (f32, memref<7x7xf32>) -> f32
      %268 = math.expm1 %29 : tensor<14xf32>
      scf.yield %c1896577496_i64 : i64
    }
    %243 = vector.matrix_multiply %101, %98 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 8 : i32} : (vector<7xf32>, vector<8xf32>) -> vector<56xf32>
    %244 = arith.floordivsi %c796176655_i64, %159 : i64
    %245 = math.expm1 %114 : f32
    %246 = index.maxu %c8, %c1
    %247 = arith.remui %c26275_i16, %c-12836_i16 : i16
    %248 = vector.transpose %183, [1, 0] : vector<14x14xi1> to vector<14x14xi1>
    %249 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %227, %227, %233 : vector<1xf32>, vector<1xf32> into f32
    %250 = index.floordivs %151, %c12
    %251 = math.atan %29 : tensor<14xf32>
    %252 = tensor.empty() : tensor<7x7xf32>
    %253 = linalg.copy ins(%splat : tensor<7x7xf32>) outs(%252 : tensor<7x7xf32>) -> tensor<7x7xf32>
    %alloc_44 = memref.alloc() : memref<7x7xf32>
    linalg.transpose ins(%252 : tensor<7x7xf32>) outs(%alloc_44 : memref<7x7xf32>) permutation = [1, 0] 
    %254 = tensor.empty() : tensor<14xi1>
    %reduced_45 = linalg.reduce ins(%236 : tensor<14x14xi1>) outs(%254 : tensor<14xi1>) dimensions = [1] 
      (%in: i1, %init: i1) {
        %257 = arith.xori %c1164286809_i32, %67 : i32
        %258 = scf.if %235 -> (memref<14x14xi1>) {
          %265 = vector.broadcast %c11 : index to vector<1xindex>
          %266 = vector.broadcast %false_33 : i1 to vector<1xi1>
          vector.scatter %alloc_19[%c13, %c3] [%265], %266, %266 : memref<14x14xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
          %267 = arith.maxui %extracted, %67 : i32
          %268 = vector.flat_transpose %78 {columns = 7 : i32, rows = 2 : i32} : vector<14xf32> -> vector<14xf32>
          %269 = vector.matrix_multiply %25, %39 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 7 : i32} : (vector<1xi32>, vector<7xi32>) -> vector<7xi32>
          %270 = arith.ceildivsi %c796176655_i64, %c796176655_i64 : i64
          %271 = memref.load %alloc_44[%c6, %c6] : memref<7x7xf32>
          %272 = vector.splat %false_39 : vector<14xi1>
          %273 = tensor.empty() : tensor<14x1xi1>
          %274 = linalg.matmul ins(%expanded, %expanded_29 : tensor<14x1xi1>, tensor<1x1xi1>) outs(%273 : tensor<14x1xi1>) -> tensor<14x1xi1>
          scf.yield %alloc_19 : memref<14x14xi1>
        } else {
          %265 = arith.floordivsi %extracted, %67 : i32
          %266 = arith.maxui %c-18289_i16, %c26275_i16 : i16
          %267 = index.sub %28, %c5
          memref.store %false_39, %58[%c4, %c11] : memref<14x14xi1>
          %false_49 = index.bool.constant false
          %268 = math.powf %2, %8 : tensor<14xf32>
          %269 = math.absf %cst_4 : f32
          %270 = arith.cmpi ne, %c-12836_i16, %c-12836_i16 : i16
          scf.yield %58 : memref<14x14xi1>
        }
        %259 = arith.maxf %cst, %cst_1 : f16
        %260 = math.fma %cst_2, %cst_2, %cst : f16
        %261 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded_41 : tensor<14x1x1xi1>) {
        ^bb0(%out: i1):
          %265 = affine.max affine_map<(d0, d1, d2) -> (d0 floordiv 128, 0, d2 + d1, d0 floordiv 128)>(%c6, %146, %173)
          %266 = vector.create_mask %c13, %151 : vector<14x14xi1>
          %267 = index.add %169, %c11
          %268 = index.floordivs %179, %166
          %269 = vector.broadcast %false_0 : i1 to vector<7x7xi1>
          %270 = vector.outerproduct %102, %102, %269 {kind = #vector.kind<mul>} : vector<7xi1>, vector<7xi1>
          %271 = arith.maxsi %c-12836_i16, %c26275_i16 : i16
          vector.print %94 : vector<14xf32>
          %alloca_49 = memref.alloca() : memref<7x7xi64>
          %272 = math.expm1 %253 : tensor<7x7xf32>
          %273 = math.atan %cst_1 : f16
          %274 = arith.subi %67, %extracted : i32
          %275 = vector.outerproduct %93, %79, %110 {kind = #vector.kind<maxf>} : vector<14xf32>, vector<14xf32>
          %276 = math.cttz %14 : tensor<14xi16>
          %277 = math.ctlz %13 : tensor<14xi32>
          %278 = arith.ceildivsi %c-12836_i16, %c-18289_i16 : i16
          %279 = vector.broadcast %114 : f32 to vector<1xf32>
          %280 = vector.fma %279, %279, %279 : vector<1xf32>
          %281 = bufferization.to_memref %expanded_41 : memref<14x1x1xi1>
          %cast = tensor.cast %3 : tensor<7x7xi1> to tensor<?x?xi1>
          %282 = math.atan2 %cst_3, %233 : f32
          %false_50 = arith.constant false
          %false_51 = arith.constant false
          %283 = vector.transfer_read %10[%34, %246], %false_51 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<14x14xi1>, vector<1xi1>
          %284 = math.copysign %cst_4, %cst_5 : f32
          %285 = index.casts %169 : index to i32
          %286 = affine.apply affine_map<(d0) -> ((d0 + 32) * 2)>(%115)
          %287 = math.atan2 %cst_1, %cst_2 : f16
          %c0_i32 = arith.constant 0 : i32
          %c0_i32_52 = arith.constant 0 : i32
          %288 = vector.transfer_read %transposed[%265], %c0_i32_52 : tensor<1xi32>, vector<i32>
          %false_53 = index.bool.constant false
          %289 = math.round %splat : tensor<7x7xf32>
          %290 = index.casts %false : i1 to index
          %291 = vector.broadcast %c0_i32 : i32 to vector<1x1xi32>
          %292 = vector.outerproduct %210, %206, %291 {kind = #vector.kind<minui>} : vector<1xi32>, vector<1xi32>
          %293 = math.atan %114 : f32
          %294 = index.divu %c5, %223
          %extracted_54 = tensor.extract %12[%c1, %c4] : tensor<7x7xi16>
          linalg.yield %false_53 : i1
        } -> tensor<14x1x1xi1>
        %262 = math.expm1 %cst_3 : f32
        %cst_46 = arith.constant 1.000000e+00 : f32
        %cst_47 = arith.constant 0.000000e+00 : f32
        %263 = vector.transfer_read %152[%c7, %179], %cst_47 : memref<14x14xf32>, vector<f32>
        %264 = scf.while (%arg1 = %alloc_6) : (memref<14xf32>) -> memref<14xf32> {
          memref.copy %58, %45 : memref<14x14xi1> to memref<14x14xi1>
          %265 = arith.remf %cst_2, %cst_1 : f16
          %266 = arith.minui %false, %false_39 : i1
          %267 = affine.max affine_map<(d0) -> (d0 - 2, d0 - (d0 + 6) floordiv 4 - 2, ((d0 + 6) floordiv 4) floordiv 32, ((d0 + 6) floordiv 4) floordiv 32)>(%c6)
          %268 = vector.load %alloc_15[%c5, %c5] : memref<7x7xf32>, vector<7x7xf32>
          %269 = affine.min affine_map<(d0, d1, d2) -> (-(d1 - 1), -(d1 - 1))>(%246, %c3, %81)
          %270 = arith.andi %extracted, %67 : i32
          %271 = index.floordivs %107, %c4
          scf.condition(%init) %alloc_6 : memref<14xf32>
        } do {
        ^bb0(%arg1: memref<14xf32>):
          %265 = arith.maxf %114, %extracted_26 : f32
          %266 = math.sqrt %8 : tensor<14xf32>
          %267 = math.atan %7 : tensor<1xf32>
          %268 = math.atan2 %splat_27, %splat_27 : tensor<14x14xf16>
          %269 = vector.bitcast %110 : vector<14x14xf32> to vector<14x14xf32>
          %270 = arith.subi %c1896577496_i64, %c1896577496_i64 : i64
          %271 = affine.max affine_map<(d0, d1, d2) -> ((d1 - 2) mod 16)>(%c4, %c2, %c10)
          %272 = vector.multi_reduction <add>, %94, %cst_5 [0] : vector<14xf32> to f32
          %273 = vector.matrix_multiply %227, %227 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
          affine.store %114, %alloc_13[%c12] : memref<1xf32>
          %274 = math.atan %8 : tensor<14xf32>
          %275 = vector.broadcast %159 : i64 to vector<7x7xi64>
          %276 = index.floordivs %c1, %c15
          %277 = math.atan2 %cst_3, %cst_5 : f32
          %278 = index.floordivs %125, %276
          %279 = math.round %272 : f32
          scf.yield %41 : memref<14xf32>
        }
        %true_48 = arith.constant true
        linalg.yield %true_48 : i1
      }
    %255 = scf.parallel (%arg1) = (%c5) to (%64) step (%c7) init (%123) -> vector<14x14xi32> {
      %257 = math.tan %splat_27 : tensor<14x14xf16>
      %258 = math.round %7 : tensor<1xf32>
      %259 = vector.matrix_multiply %93, %101 {lhs_columns = 7 : i32, lhs_rows = 2 : i32, rhs_columns = 1 : i32} : (vector<14xf32>, vector<7xf32>) -> vector<2xf32>
      %alloc_46 = memref.alloc() : memref<14xi1>
      memref.tensor_store %16, %alloc_46 : memref<14xi1>
      %260 = arith.maxui %true, %false_39 : i1
      %261 = arith.divui %false_0, %true : i1
      memref.store %cst_3, %152[%c5, %c7] : memref<14x14xf32>
      %262 = arith.floordivsi %extracted, %67 : i32
      %263 = arith.shrsi %c26275_i16, %c-12836_i16 : i16
      %264 = math.cttz %10 : tensor<14x14xi1>
      %265 = index.maxu %c5, %166
      %266 = bufferization.to_memref %reduced : memref<i32>
      %extracted_47 = tensor.extract %from_elements[%c1, %c1] : tensor<7x7xi1>
      %generated_48 = tensor.generate %28, %146 {
      ^bb0(%arg2: index, %arg3: index):
        %dest_49, %accumulated_value_50 = vector.scan <add>, %105, %94 {inclusive = true, reduction_dim = 0 : i64} : vector<14x14xf32>, vector<14xf32>
        %269 = arith.maxsi %159, %c796176655_i64 : i64
        %270 = arith.divui %extracted_28, %false_0 : i1
        %271 = memref.load %alloc_7[%c3] : memref<14xi32>
        tensor.yield %cst_4 : f32
      } : tensor<?x?xf32>
      vector.print %93 : vector<14xf32>
      %267 = vector.extract %139[6] : vector<7xf32>
      %268 = vector.broadcast %c1343421930_i32 : i32 to vector<14x14xi32>
      scf.reduce(%268)  : vector<14x14xi32> {
      ^bb0(%arg2: vector<14x14xi32>, %arg3: vector<14x14xi32>):
        %269 = arith.subi %67, %c1164286809_i32 : i32
        %270 = vector.transpose %39, [0] : vector<7xi32> to vector<7xi32>
        %271 = vector.extract_strided_slice %102 {offsets = [1], sizes = [1], strides = [1]} : vector<7xi1> to vector<1xi1>
        %272 = math.atan %extracted_26 : f32
        vector.print %110 : vector<14x14xf32>
        %273 = vector.load %168[%c10] : memref<14xf16>, vector<1xf16>
        %274 = math.floor %splat_27 : tensor<14x14xf16>
        %275 = arith.remsi %c1164286809_i32, %extracted : i32
        %276 = vector.broadcast %67 : i32 to vector<14x14xi32>
        scf.reduce.return %276 : vector<14x14xi32>
      }
      scf.yield
    }
    %256 = affine.vector_load %alloc_13[%c1] : memref<1xf32>, vector<14xf32>
    affine.vector_store %243, %alloc_11[%146, %125] : memref<14x14xf32>, vector<56xf32>
    vector.print %20 : vector<7xi32>
    vector.print %25 : vector<1xi32>
    vector.print %39 : vector<7xi32>
    vector.print %78 : vector<14xf32>
    vector.print %79 : vector<14xf32>
    vector.print %80 : vector<7x7xi32>
    vector.print %93 : vector<14xf32>
    vector.print %94 : vector<14xf32>
    vector.print %98 : vector<8xf32>
    vector.print %101 : vector<7xf32>
    vector.print %102 : vector<7xi1>
    vector.print %103 : vector<7xf32>
    vector.print %105 : vector<14x14xf32>
    vector.print %110 : vector<14x14xf32>
    vector.print %123 : vector<14x14xi32>
    vector.print %139 : vector<7xf32>
    vector.print %183 : vector<14x14xi1>
    vector.print %194 : vector<8xf32>
    vector.print %206 : vector<1xi32>
    vector.print %210 : vector<1xi32>
    vector.print %227 : vector<1xf32>
    vector.print %243 : vector<56xf32>
    vector.print %256 : vector<14xf32>
    vector.print %false : i1
    vector.print %cst : f16
    vector.print %false_0 : i1
    vector.print %c26275_i16 : i16
    vector.print %c-18289_i16 : i16
    vector.print %cst_1 : f16
    vector.print %cst_2 : f16
    vector.print %cst_3 : f32
    vector.print %c1164286809_i32 : i32
    vector.print %c1343421930_i32 : i32
    vector.print %c796176655_i64 : i64
    vector.print %c-12836_i16 : i16
    vector.print %cst_4 : f32
    vector.print %cst_5 : f32
    vector.print %c1896577496_i64 : i64
    vector.print %true : i1
    vector.print %extracted : i32
    vector.print %extracted_26 : f32
    vector.print %67 : i32
    vector.print %extracted_28 : i1
    vector.print %114 : f32
    vector.print %144 : f32
    vector.print %159 : i64
    vector.print %false_33 : i1
    vector.print %false_39 : i1
    vector.print %233 : f32
    vector.print %235 : i1
    return %12 : tensor<7x7xi16>
  }
}
