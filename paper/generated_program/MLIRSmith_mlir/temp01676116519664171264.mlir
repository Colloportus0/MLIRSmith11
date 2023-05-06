module {
  func.func @func1() {
    %c665192677_i64 = arith.constant 665192677 : i64
    %cst = arith.constant 0x4E236305 : f32
    %c-20598_i16 = arith.constant -20598 : i16
    %true = arith.constant true
    %c1511706817_i64 = arith.constant 1511706817 : i64
    %c25323_i16 = arith.constant 25323 : i16
    %c14851_i16 = arith.constant 14851 : i16
    %c1082890889_i64 = arith.constant 1082890889 : i64
    %false = arith.constant false
    %c140901591_i32 = arith.constant 140901591 : i32
    %c9281_i16 = arith.constant 9281 : i16
    %cst_0 = arith.constant 3.609600e+04 : f16
    %c-23836_i16 = arith.constant -23836 : i16
    %c42279348_i32 = arith.constant 42279348 : i32
    %c1947057534_i64 = arith.constant 1947057534 : i64
    %c2053918835_i64 = arith.constant 2053918835 : i64
    %0 = tensor.empty() : tensor<10x7xi1>
    %1 = tensor.empty() : tensor<10x7xi1>
    %2 = tensor.empty() : tensor<10x7x9xf16>
    %3 = tensor.empty() : tensor<10x7x9xi16>
    %4 = tensor.empty() : tensor<10x7xf16>
    %5 = tensor.empty() : tensor<15xf16>
    %6 = tensor.empty() : tensor<10x7x9xi1>
    %7 = tensor.empty() : tensor<15xi32>
    %8 = tensor.empty() : tensor<10x7x9xf32>
    %9 = tensor.empty() : tensor<10x7x9xi16>
    %10 = tensor.empty() : tensor<15xi64>
    %11 = tensor.empty() : tensor<10x7x9xf32>
    %12 = tensor.empty() : tensor<10x7xi16>
    %13 = tensor.empty() : tensor<10x7xi32>
    %14 = tensor.empty() : tensor<15xf16>
    %15 = tensor.empty() : tensor<10x7x9xi32>
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
    %alloc = memref.alloc() : memref<10x7x9xi1>
    %alloc_1 = memref.alloc() : memref<15xi1>
    %alloc_2 = memref.alloc() : memref<15xi1>
    %alloc_3 = memref.alloc() : memref<10x7xi16>
    %alloc_4 = memref.alloc() : memref<15xi1>
    %alloc_5 = memref.alloc() : memref<10x7xi32>
    %alloc_6 = memref.alloc() : memref<10x7xi16>
    %alloc_7 = memref.alloc() : memref<10x7x9xf16>
    %alloc_8 = memref.alloc() : memref<15xi32>
    %alloc_9 = memref.alloc() : memref<10x7x9xi32>
    %alloc_10 = memref.alloc() : memref<15xi64>
    %alloc_11 = memref.alloc() : memref<15xi64>
    %alloc_12 = memref.alloc() : memref<15xf16>
    %alloc_13 = memref.alloc() : memref<10x7xi32>
    %alloc_14 = memref.alloc() : memref<10x7xf16>
    %alloc_15 = memref.alloc() : memref<10x7xi16>
    %16 = tensor.empty() : tensor<10x7xf16>
    %17 = linalg.copy ins(%4 : tensor<10x7xf16>) outs(%16 : tensor<10x7xf16>) -> tensor<10x7xf16>
    %alloc_16 = memref.alloc() : memref<7x10xi32>
    linalg.transpose ins(%alloc_13 : memref<10x7xi32>) outs(%alloc_16 : memref<7x10xi32>) permutation = [1, 0] 
    %18 = tensor.empty() : tensor<10x9xi16>
    %reduced = linalg.reduce ins(%9 : tensor<10x7x9xi16>) outs(%18 : tensor<10x9xi16>) dimensions = [1] 
      (%in: i16, %init: i16) {
        %271 = vector.broadcast %cst : f32 to vector<1xf32>
        %272 = vector.extract_strided_slice %271 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
        %273 = index.maxs %c10, %c9
        %274 = vector.broadcast %true : i1 to vector<10x7xi1>
        %275 = math.cos %11 : tensor<10x7x9xf32>
        %276 = arith.ori %true, %false : i1
        %277 = math.copysign %16, %4 : tensor<10x7xf16>
        %278 = memref.atomic_rmw mulf %cst_0, %alloc_14[%c1, %c3] : (f16, memref<10x7xf16>) -> f16
        %splat_38 = tensor.splat %c1511706817_i64 : tensor<10x7x9xi64>
        %c0_i16_39 = arith.constant 0 : i16
        linalg.yield %c0_i16_39 : i16
      }
    scf.parallel (%arg0, %arg1) = (%c10, %c2) to (%c15, %c4) step (%c12, %c6) {
      %271 = affine.if affine_set<(d0) : ((d0 mod 64) floordiv 8 - 32 == 0, d0 * 8 >= 0, (d0 mod 64) floordiv 8 - 64 >= 0, d0 - 1 == 0)>(%c8) -> i16 {
        %288 = math.ctlz %6 : tensor<10x7x9xi1>
        %289 = math.rsqrt %4 : tensor<10x7xf16>
        %290 = arith.minsi %c-23836_i16, %c14851_i16 : i16
        %c0_i32_39 = arith.constant 0 : i32
        %291 = vector.transfer_read %alloc_5[%c1, %c8], %c0_i32_39 : memref<10x7xi32>, vector<i32>
        %292 = arith.divui %c1511706817_i64, %c1947057534_i64 : i64
        %false_40 = arith.constant false
        %from_elements_41 = tensor.from_elements %c42279348_i32, %c140901591_i32, %c42279348_i32, %c140901591_i32, %c0_i32_39, %c140901591_i32, %c42279348_i32, %c42279348_i32, %c140901591_i32, %c42279348_i32, %c42279348_i32, %c140901591_i32, %c0_i32_39, %c140901591_i32, %c0_i32_39, %c0_i32_39, %c140901591_i32, %c140901591_i32, %c140901591_i32, %c42279348_i32, %c42279348_i32, %c0_i32_39, %c42279348_i32, %c42279348_i32, %c140901591_i32, %c140901591_i32, %c0_i32_39, %c0_i32_39, %c140901591_i32, %c140901591_i32, %c42279348_i32, %c0_i32_39, %c140901591_i32, %c0_i32_39, %c140901591_i32, %c0_i32_39, %c140901591_i32, %c0_i32_39, %c42279348_i32, %c0_i32_39, %c0_i32_39, %c0_i32_39, %c42279348_i32, %c140901591_i32, %c0_i32_39, %c42279348_i32, %c42279348_i32, %c140901591_i32, %c140901591_i32, %c42279348_i32, %c140901591_i32, %c140901591_i32, %c42279348_i32, %c140901591_i32, %c42279348_i32, %c140901591_i32, %c42279348_i32, %c0_i32_39, %c42279348_i32, %c42279348_i32, %c42279348_i32, %c42279348_i32, %c0_i32_39, %c42279348_i32, %c140901591_i32, %c42279348_i32, %c140901591_i32, %c140901591_i32, %c140901591_i32, %c42279348_i32 : tensor<10x7xi32>
        %293 = arith.minui %c140901591_i32, %c0_i32_39 : i32
        affine.yield %c25323_i16 : i16
      } else {
        %288 = memref.atomic_rmw andi %c140901591_i32, %alloc_5[%c9, %c6] : (i32, memref<10x7xi32>) -> i32
        %289 = memref.load %alloc_3[%c8, %c5] : memref<10x7xi16>
        %290 = arith.maxui %c1511706817_i64, %c1511706817_i64 : i64
        %291 = arith.ori %true, %true : i1
        %292 = vector.broadcast %c42279348_i32 : i32 to vector<10x7x9xi32>
        %293 = vector.transpose %292, [2, 1, 0] : vector<10x7x9xi32> to vector<9x7x10xi32>
        %294 = arith.addf %cst, %cst : f32
        %295 = memref.realloc %alloc_1 : memref<15xi1> to memref<10xi1>
        %rank_39 = tensor.rank %0 : tensor<10x7xi1>
        affine.yield %c-23836_i16 : i16
      }
      %272 = index.maxs %c11, %c9
      %273 = index.casts %c2053918835_i64 : i64 to index
      %274 = vector.broadcast %cst_0 : f16 to vector<10x7x9xf16>
      %275 = vector.transpose %274, [0, 2, 1] : vector<10x7x9xf16> to vector<10x9x7xf16>
      %276 = vector.broadcast %c140901591_i32 : i32 to vector<9xi32>
      %277 = vector.reduction <add>, %276 : vector<9xi32> into i32
      %278 = math.exp %11 : tensor<10x7x9xf32>
      %279 = arith.maxf %cst_0, %cst_0 : f16
      %alloca = memref.alloca() : memref<10x7xi16>
      %280 = arith.remf %cst_0, %cst_0 : f16
      %281 = math.tan %5 : tensor<15xf16>
      %282 = arith.cmpi sgt, %false, %false : i1
      %283 = memref.realloc %alloc_1 : memref<15xi1> to memref<15xi1>
      %284 = math.log2 %8 : tensor<10x7x9xf32>
      %285 = math.absi %9 : tensor<10x7x9xi16>
      %splat_38 = tensor.splat %cst_0 : tensor<15xf16>
      %286 = vector.broadcast %cst_0 : f16 to vector<7xf16>
      %287 = vector.matrix_multiply %286, %286 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf16>, vector<7xf16>) -> vector<1xf16>
      scf.yield
    }
    %19 = affine.vector_load %alloc_12[%c10] : memref<15xf16>, vector<10xf16>
    affine.vector_store %19, %alloc_14[%c7, %c9] : memref<10x7xf16>, vector<10xf16>
    %20 = tensor.empty() : tensor<15xi64>
    %21 = tensor.empty() : tensor<i64>
    %22 = linalg.dot ins(%10, %20 : tensor<15xi64>, tensor<15xi64>) outs(%21 : tensor<i64>) -> tensor<i64>
    %23 = index.divs %c2, %c3
    %24 = arith.remui %c-20598_i16, %c-23836_i16 : i16
    scf.execute_region {
      %271 = arith.cmpi ule, %c-20598_i16, %c25323_i16 : i16
      %272 = math.ipowi %7, %7 : tensor<15xi32>
      %273 = arith.ori %c-23836_i16, %c-23836_i16 : i16
      %274 = vector.transpose %19, [0] : vector<10xf16> to vector<10xf16>
      %275 = index.sub %c3, %c3
      %276 = vector.matrix_multiply %19, %19 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xf16>, vector<10xf16>) -> vector<1xf16>
      %277 = arith.minui %c9281_i16, %c25323_i16 : i16
      %c1_i16 = arith.constant 1 : i16
      %c0_i16_38 = arith.constant 0 : i16
      %278 = vector.transfer_read %alloc_6[%c8, %c10], %c0_i16_38 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<10x7xi16>, vector<15xi16>
      %279 = bufferization.clone %alloc_3 : memref<10x7xi16> to memref<10x7xi16>
      %280 = vector.broadcast %c5 : index to vector<10xindex>
      %281 = vector.broadcast %false : i1 to vector<10xi1>
      vector.scatter %alloc_1[%c1] [%280], %281, %281 : memref<15xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
      %282 = math.powf %2, %2 : tensor<10x7x9xf16>
      %alloca = memref.alloca() : memref<15xi32>
      %283 = math.atan2 %cst, %cst : f32
      %284 = arith.remui %c1511706817_i64, %c1511706817_i64 : i64
      %alloc_39 = memref.alloc() : memref<10x7x9xi16>
      memref.tensor_store %3, %alloc_39 : memref<10x7x9xi16>
      %285 = vector.broadcast %c9281_i16 : i16 to vector<10x10xi16>
      %286 = vector.broadcast %c9281_i16 : i16 to vector<10xi16>
      %dest, %accumulated_value = vector.scan <maxui>, %285, %286 {inclusive = true, reduction_dim = 0 : i64} : vector<10x10xi16>, vector<10xi16>
      scf.yield
    }
    %25 = vector.broadcast %c140901591_i32 : i32 to vector<15xi32>
    %26 = vector.broadcast %true : i1 to vector<15xi1>
    %27 = vector.maskedload %alloc_9[%c0, %c6, %c4], %26, %25 : memref<10x7x9xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
    %28 = arith.ori %false, %false : i1
    %29 = math.ctlz %3 : tensor<10x7x9xi16>
    memref.store %c42279348_i32, %alloc_5[%c5, %c0] : memref<10x7xi32>
    %30 = index.casts %c-20598_i16 : i16 to index
    %31 = math.floor %4 : tensor<10x7xf16>
    %32 = vector.flat_transpose %19 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
    %33 = math.ceil %2 : tensor<10x7x9xf16>
    scf.execute_region {
      %271 = math.log2 %4 : tensor<10x7xf16>
      %rank_38 = tensor.rank %3 : tensor<10x7x9xi16>
      %272 = arith.subi %c9281_i16, %c14851_i16 : i16
      %273 = bufferization.clone %alloc_4 : memref<15xi1> to memref<15xi1>
      %274 = math.sqrt %14 : tensor<15xf16>
      %275 = vector.broadcast %cst_0 : f16 to vector<15xf16>
      %276 = vector.gather %4[%c1, %23] [%27], %26, %275 : tensor<10x7xf16>, vector<15xi32>, vector<15xi1>, vector<15xf16> into vector<15xf16>
      %277 = arith.maxui %true, %false : i1
      %278 = bufferization.to_memref %8 : memref<10x7x9xf32>
      %cast_39 = tensor.cast %9 : tensor<10x7x9xi16> to tensor<?x?x?xi16>
      %c1_i32 = arith.constant 1 : i32
      %279 = vector.transfer_read %15[%c12, %rank_38, %c0], %c1_i32 : tensor<10x7x9xi32>, vector<i32>
      scf.if %true {
        %287 = memref.realloc %273 : memref<15xi1> to memref<7xi1>
        %288 = arith.remf %cst, %cst : f32
        %289 = math.cttz %15 : tensor<10x7x9xi32>
        %290 = vector.extract %25[9] : vector<15xi32>
        %291 = arith.xori %c2053918835_i64, %c1511706817_i64 : i64
        %292 = arith.remsi %c1082890889_i64, %c2053918835_i64 : i64
        %293 = index.mul %rank_38, %23
        %294 = bufferization.clone %alloc_11 : memref<15xi64> to memref<15xi64>
      } else {
        %alloc_40 = memref.alloc() : memref<10x7x9xi64>
        %287 = tensor.empty() : tensor<7x15xf16>
        %288 = tensor.empty() : tensor<10x15xf16>
        %289 = linalg.matmul ins(%16, %287 : tensor<10x7xf16>, tensor<7x15xf16>) outs(%288 : tensor<10x15xf16>) -> tensor<10x15xf16>
        %290 = math.fpowi %4, %13 : tensor<10x7xf16>, tensor<10x7xi32>
        %291 = arith.divui %c140901591_i32, %c1_i32 : i32
        %292 = math.ctlz %c665192677_i64 : i64
        %293 = math.absi %10 : tensor<15xi64>
        memref.store %false, %alloc_1[%c12] : memref<15xi1>
        %c1_i16 = arith.constant 1 : i16
        %294 = vector.transfer_read %reduced[%c12, %c5], %c1_i16 : tensor<10x9xi16>, vector<i16>
      }
      %280 = vector.broadcast %c-23836_i16 : i16 to vector<7xi16>
      vector.transfer_write %280, %alloc_15[%rank_38, %23] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi16>, memref<10x7xi16>
      %281 = vector.broadcast %c42279348_i32 : i32 to vector<10x7xi32>
      %282 = vector.broadcast %true : i1 to vector<10x7xi1>
      %283 = vector.gather %alloc_9[%c6, %c2, %23] [%281], %282, %281 : memref<10x7x9xi32>, vector<10x7xi32>, vector<10x7xi1>, vector<10x7xi32> into vector<10x7xi32>
      %284 = index.divs %c8, %c0
      %285 = math.absf %cst_0 : f16
      %286 = vector.maskedload %alloc_1[%c9], %26, %26 : memref<15xi1>, vector<15xi1>, vector<15xi1> into vector<15xi1>
      scf.yield
    }
    %34 = affine.max affine_map<(d0, d1, d2) -> ((d1 mod 16 - d0 floordiv 128) * 2)>(%c6, %23, %c9)
    %splat = tensor.splat %false : tensor<10x7xi1>
    %35 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 floordiv 32, (d0 + 128) ceildiv 2, (d0 + 128) ceildiv 2, d2)>(%c11, %c11, %c4, %c2)
    %36 = arith.maxsi %c-20598_i16, %c14851_i16 : i16
    %37 = arith.shli %c1511706817_i64, %c1511706817_i64 : i64
    %38 = arith.remsi %false, %true : i1
    %39 = index.divs %c9, %c7
    %40 = math.sqrt %cst : f32
    %41 = vector.broadcast %c6 : index to vector<9xindex>
    %42 = vector.broadcast %false : i1 to vector<9xi1>
    vector.scatter %alloc_2[%c14] [%41], %42, %42 : memref<15xi1>, vector<9xindex>, vector<9xi1>, vector<9xi1>
    %43 = vector.create_mask %c5, %c0 : vector<10x7xi1>
    %44 = arith.minui %c14851_i16, %c9281_i16 : i16
    %alloc_17 = memref.alloc() : memref<7x15xi1>
    %45 = tensor.empty() : tensor<10x15xi1>
    %46 = linalg.matmul ins(%1, %alloc_17 : tensor<10x7xi1>, memref<7x15xi1>) outs(%45 : tensor<10x15xi1>) -> tensor<10x15xi1>
    %47 = affine.max affine_map<(d0) -> ((-d0) floordiv 4 + 128)>(%c15)
    %48 = arith.subi %false, %true : i1
    %49 = bufferization.clone %alloc_9 : memref<10x7x9xi32> to memref<10x7x9xi32>
    %50 = math.tan %8 : tensor<10x7x9xf32>
    %51 = math.ipowi %45, %45 : tensor<10x15xi1>
    %alloc_18 = memref.alloc() : memref<7xi1>
    %alloc_19 = memref.alloc() : memref<7x10xi1>
    %52 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_18, %alloc_19, %6 : memref<7xi1>, memref<7x10xi1>, tensor<10x7x9xi1>) outs(%6 : tensor<10x7x9xi1>) {
    ^bb0(%in: i1, %in_38: i1, %in_39: i1, %out: i1):
      %271 = tensor.empty() : tensor<9xi16>
      %272 = tensor.empty() : tensor<7xi16>
      %273 = tensor.empty() : tensor<10xi16>
      %274 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%271, %272, %273 : tensor<9xi16>, tensor<7xi16>, tensor<10xi16>) outs(%9 : tensor<10x7x9xi16>) {
      ^bb0(%in_46: i16, %in_47: i16, %in_48: i16, %out_49: i16):
        %alloca = memref.alloca() : memref<10x7xf16>
        %303 = index.ceildivu %c6, %c1
        %304 = math.ceil %cst_0 : f16
        %305 = arith.cmpi ult, %false, %in : i1
        %306 = math.ceil %cst_0 : f16
        %splat_50 = tensor.splat %c-23836_i16 : tensor<15xi16>
        %307 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1)>(%c5, %c1, %23, %c11)
        %308 = index.divs %c1, %c15
        %309 = bufferization.to_tensor %alloc_11 : memref<15xi64>
        %310 = math.fpowi %cst, %c140901591_i32 : f32, i32
        %311 = math.absi %10 : tensor<15xi64>
        %312 = vector.create_mask %c3, %c5 : vector<10x7xi1>
        %collapsed = tensor.collapse_shape %4 [[0, 1]] : tensor<10x7xf16> into tensor<70xf16>
        %false_51 = index.bool.constant false
        %313 = vector.transpose %43, [0, 1] : vector<10x7xi1> to vector<10x7xi1>
        %314 = vector.broadcast %in_39 : i1 to vector<10xi1>
        %dest, %accumulated_value = vector.scan <minui>, %312, %314 {inclusive = true, reduction_dim = 1 : i64} : vector<10x7xi1>, vector<10xi1>
        %315 = index.divs %35, %c10
        %316 = arith.shli %c1082890889_i64, %c1947057534_i64 : i64
        %c21863_i16 = arith.constant 21863 : i16
        %317 = math.exp2 %cst : f32
        %318 = arith.mulf %cst, %cst : f32
        %319 = arith.mulf %cst_0, %cst_0 : f16
        %320 = vector.extract_strided_slice %27 {offsets = [1], sizes = [6], strides = [1]} : vector<15xi32> to vector<6xi32>
        %321 = vector.broadcast %cst : f32 to vector<10x7xf32>
        %322 = vector.fma %321, %321, %321 : vector<10x7xf32>
        %323 = arith.muli %out_49, %in_47 : i16
        %324 = arith.minui %c1082890889_i64, %c665192677_i64 : i64
        %325 = index.sizeof
        %326 = index.sub %c1, %30
        %327 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %25, %25, %c140901591_i32 : vector<15xi32>, vector<15xi32> into i32
        %328 = tensor.empty() : tensor<7x10xi16>
        %329 = tensor.empty() : tensor<10x10xi16>
        %330 = linalg.matmul ins(%12, %328 : tensor<10x7xi16>, tensor<7x10xi16>) outs(%329 : tensor<10x10xi16>) -> tensor<10x10xi16>
        %331 = index.divs %c1, %34
        %rank_52 = tensor.rank %9 : tensor<10x7x9xi16>
        linalg.yield %c25323_i16 : i16
      } -> tensor<10x7x9xi16>
      %275 = memref.realloc %alloc_4 : memref<15xi1> to memref<9xi1>
      %alloc_40 = memref.alloc() : memref<7x10xf32>
      %276 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_40 : memref<7x10xf32>) outs(%11 : tensor<10x7x9xf32>) {
      ^bb0(%in_46: f32, %out_47: f32):
        %303 = arith.cmpf ule, %cst_0, %cst_0 : f16
        %304 = vector.extract_strided_slice %32 {offsets = [0], sizes = [8], strides = [1]} : vector<10xf16> to vector<8xf16>
        %305 = arith.minui %c-23836_i16, %c14851_i16 : i16
        %306 = bufferization.to_tensor %alloc_2 : memref<15xi1>
        %307 = index.sizeof
        %308 = math.log2 %8 : tensor<10x7x9xf32>
        %309 = memref.realloc %alloc_11 : memref<15xi64> to memref<7xi64>
        %310 = index.divs %47, %c0
        %311 = math.atan %8 : tensor<10x7x9xf32>
        %312 = arith.remsi %in_39, %in : i1
        %313 = vector.matrix_multiply %19, %304 {lhs_columns = 2 : i32, lhs_rows = 5 : i32, rhs_columns = 4 : i32} : (vector<10xf16>, vector<8xf16>) -> vector<20xf16>
        %314 = vector.extract_strided_slice %32 {offsets = [3], sizes = [4], strides = [1]} : vector<10xf16> to vector<4xf16>
        %315 = math.absf %16 : tensor<10x7xf16>
        %c1_i64 = arith.constant 1 : i64
        %316 = vector.transfer_read %alloc_10[%c2], %c1_i64 : memref<15xi64>, vector<i64>
        %317 = vector.maskedload %alloc_13[%c1, %c2], %26, %27 : memref<10x7xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
        %318 = bufferization.to_tensor %alloc_13 : memref<10x7xi32>
        memref.store %c42279348_i32, %alloc_13[%c4, %c1] : memref<10x7xi32>
        %319 = arith.remf %cst_0, %cst_0 : f16
        %320 = arith.remsi %c14851_i16, %c-20598_i16 : i16
        %321 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %314, %314, %cst_0 : vector<4xf16>, vector<4xf16> into f16
        %322 = arith.minui %c1947057534_i64, %c1082890889_i64 : i64
        %323 = arith.divui %false, %out : i1
        %324 = math.cos %16 : tensor<10x7xf16>
        %325 = math.exp %14 : tensor<15xf16>
        %cast_48 = tensor.cast %3 : tensor<10x7x9xi16> to tensor<?x?x?xi16>
        %326 = math.expm1 %4 : tensor<10x7xf16>
        %inserted_49 = tensor.insert %c14851_i16 into %18[%c5, %c7] : tensor<10x9xi16>
        %327 = math.ctlz %45 : tensor<10x15xi1>
        %328 = vector.broadcast %c15 : index to vector<10xindex>
        %329 = vector.broadcast %in_39 : i1 to vector<10xi1>
        %330 = vector.broadcast %c9281_i16 : i16 to vector<10xi16>
        vector.scatter %alloc_6[%c1, %c1] [%328], %329, %330 : memref<10x7xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
        %331 = arith.subi %c9281_i16, %c25323_i16 : i16
        %332 = arith.floordivsi %out, %in_38 : i1
        %333 = memref.realloc %alloc_11 : memref<15xi64> to memref<15xi64>
        linalg.yield %in_46 : f32
      } -> tensor<10x7x9xf32>
      %277 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %32, %19, %cst_0 : vector<10xf16>, vector<10xf16> into f16
      %278 = arith.addf %cst_0, %cst_0 : f16
      %279 = math.cos %8 : tensor<10x7x9xf32>
      %280 = vector.transpose %27, [0] : vector<15xi32> to vector<15xi32>
      %281 = math.tan %4 : tensor<10x7xf16>
      %282 = bufferization.clone %alloc_4 : memref<15xi1> to memref<15xi1>
      %283 = arith.minui %out, %true : i1
      %284 = vector.multi_reduction <minsi>, %26, %true [0] : vector<15xi1> to i1
      %285 = arith.cmpi uge, %c9281_i16, %c25323_i16 : i16
      %286 = memref.load %alloc_14[%c0, %c2] : memref<10x7xf16>
      %287 = arith.ori %284, %284 : i1
      %288 = index.castu %c11 : index to i32
      %289 = index.ceildivs %c10, %c3
      %290 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3 : tensor<10x7x9xi16>) outs(%3 : tensor<10x7x9xi16>) {
      ^bb0(%in_46: i16, %out_47: i16):
        %303 = math.ctpop %out_47 : i16
        %304 = arith.remui %c1947057534_i64, %c2053918835_i64 : i64
        %305 = arith.floordivsi %c25323_i16, %c-20598_i16 : i16
        %306 = math.log %8 : tensor<10x7x9xf32>
        memref.assume_alignment %alloc_16, 4 : memref<7x10xi32>
        %307 = arith.maxui %c42279348_i32, %c42279348_i32 : i32
        %splat_48 = tensor.splat %c14851_i16 : tensor<10x7x9xi16>
        %308 = math.log %17 : tensor<10x7xf16>
        %309 = arith.cmpi ugt, %c-23836_i16, %c-23836_i16 : i16
        %cast_49 = tensor.cast %8 : tensor<10x7x9xf32> to tensor<?x?x?xf32>
        %310 = arith.ori %c1082890889_i64, %c665192677_i64 : i64
        %311 = arith.addf %cst, %cst : f32
        %312 = arith.floordivsi %c-23836_i16, %in_46 : i16
        %313 = vector.transpose %27, [0] : vector<15xi32> to vector<15xi32>
        %314 = index.sub %c5, %289
        %315 = bufferization.to_tensor %alloc_13 : memref<10x7xi32>
        %316 = arith.shrui %c42279348_i32, %c42279348_i32 : i32
        %317 = math.absf %8 : tensor<10x7x9xf32>
        %318 = math.copysign %11, %11 : tensor<10x7x9xf32>
        %319 = vector.transpose %32, [0] : vector<10xf16> to vector<10xf16>
        %320 = arith.minui %c25323_i16, %c-20598_i16 : i16
        %321 = vector.transpose %25, [0] : vector<15xi32> to vector<15xi32>
        %322 = arith.maxui %c-23836_i16, %c-23836_i16 : i16
        %alloc_50 = memref.alloc() : memref<7x9xi16>
        %323 = tensor.empty() : tensor<10x9xi16>
        %324 = linalg.matmul ins(%12, %alloc_50 : tensor<10x7xi16>, memref<7x9xi16>) outs(%323 : tensor<10x9xi16>) -> tensor<10x9xi16>
        %325 = arith.maxui %c9281_i16, %out_47 : i16
        %326 = affine.apply affine_map<(d0, d1, d2) -> (d2 mod 64)>(%289, %c12, %314)
        %327 = tensor.empty() : tensor<9x7xi16>
        %328 = tensor.empty() : tensor<10x7xi16>
        %329 = linalg.matmul ins(%323, %327 : tensor<10x9xi16>, tensor<9x7xi16>) outs(%328 : tensor<10x7xi16>) -> tensor<10x7xi16>
        %330 = arith.maxsi %in_46, %c-23836_i16 : i16
        %331 = math.tan %8 : tensor<10x7x9xf32>
        %332 = vector.broadcast %in_39 : i1 to vector<15xi1>
        %333 = math.sqrt %5 : tensor<15xf16>
        %334 = vector.extract_strided_slice %26 {offsets = [5], sizes = [1], strides = [1]} : vector<15xi1> to vector<1xi1>
        linalg.yield %c-20598_i16 : i16
      } -> tensor<10x7x9xi16>
      %splat_41 = tensor.splat %c1082890889_i64 : tensor<15xi64>
      %291 = math.round %2 : tensor<10x7x9xf16>
      %alloc_42 = memref.alloc() : memref<10xi16>
      %292 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%reduced, %alloc_42 : tensor<10x9xi16>, memref<10xi16>) outs(%3 : tensor<10x7x9xi16>) {
      ^bb0(%in_46: i16, %in_47: i16, %out_48: i16):
        %alloc_49 = memref.alloc() : memref<10x15xi1>
        memref.tensor_store %45, %alloc_49 : memref<10x15xi1>
        %303 = index.maxs %c10, %23
        %304 = math.absf %16 : tensor<10x7xf16>
        %305 = index.maxs %c8, %c3
        %306 = vector.broadcast %cst : f32 to vector<10x7xf32>
        %307 = vector.fma %306, %306, %306 : vector<10x7xf32>
        %308 = vector.broadcast %c25323_i16 : i16 to vector<10x7xi16>
        %309 = math.ceil %5 : tensor<15xf16>
        %splat_50 = tensor.splat %c1947057534_i64 : tensor<10x7xi64>
        %310 = math.powf %4, %4 : tensor<10x7xf16>
        %311 = tensor.empty() : tensor<9x10xi16>
        %312 = tensor.empty() : tensor<10x10xi16>
        %313 = linalg.matmul ins(%reduced, %311 : tensor<10x9xi16>, tensor<9x10xi16>) outs(%312 : tensor<10x10xi16>) -> tensor<10x10xi16>
        %314 = index.divs %305, %c9
        %315 = bufferization.clone %alloc_8 : memref<15xi32> to memref<15xi32>
        %316 = memref.load %alloc_3[%c8, %c5] : memref<10x7xi16>
        %317 = math.exp2 %5 : tensor<15xf16>
        %318 = arith.remui %c42279348_i32, %c42279348_i32 : i32
        %319 = arith.minsi %c9281_i16, %c-20598_i16 : i16
        %320 = math.cttz %in_46 : i16
        %321 = memref.load %alloc_3[%c9, %c4] : memref<10x7xi16>
        %322 = arith.cmpf ole, %cst, %cst : f32
        %323 = memref.load %alloc_9[%c6, %c0, %c0] : memref<10x7x9xi32>
        memref.copy %alloc_5, %alloc_13 : memref<10x7xi32> to memref<10x7xi32>
        %324 = affine.load %alloc_14[%c3, %c15] : memref<10x7xf16>
        %325 = math.floor %14 : tensor<15xf16>
        %326 = vector.transpose %306, [1, 0] : vector<10x7xf32> to vector<7x10xf32>
        %327 = vector.reduction <mul>, %32 : vector<10xf16> into f16
        %328 = vector.broadcast %c140901591_i32 : i32 to vector<9xi32>
        %329 = vector.broadcast %in : i1 to vector<9xi1>
        %330 = vector.maskedload %alloc_16[%c4, %c9], %329, %328 : memref<7x10xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
        %331 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %26, %26, %in_38 : vector<15xi1>, vector<15xi1> into i1
        %332 = index.castu %c9281_i16 : i16 to index
        %333 = vector.create_mask %c4, %c11, %c13 : vector<10x7x9xi1>
        %334 = arith.minsi %true, %in_39 : i1
        %335 = arith.remsi %c25323_i16, %c-20598_i16 : i16
        %alloc_51 = memref.alloc() : memref<i64>
        memref.tensor_store %22, %alloc_51 : memref<i64>
        linalg.yield %in_47 : i16
      } -> tensor<10x7x9xi16>
      %293 = arith.minsi %284, %in_38 : i1
      %294 = math.floor %5 : tensor<15xf16>
      %295 = bufferization.clone %alloc_14 : memref<10x7xf16> to memref<10x7xf16>
      %296 = vector.create_mask %c5, %c14 : vector<10x7xi1>
      %297 = vector.broadcast %c42279348_i32 : i32 to vector<10x7xi32>
      %298 = vector.gather %7[%c11] [%297], %296, %297 : tensor<15xi32>, vector<10x7xi32>, vector<10x7xi1>, vector<10x7xi32> into vector<10x7xi32>
      affine.for %arg0 = 0 to 77 {
      }
      %generated_43 = tensor.generate %23 {
      ^bb0(%arg0: index):
        %cst_46 = arith.constant 1.000000e+00 : f16
        %cst_47 = arith.constant 0.000000e+00 : f16
        %303 = vector.transfer_read %2[%c15, %47, %c9], %cst_47 {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : tensor<10x7x9xf16>, vector<15x15xf16>
        %304 = vector.broadcast %cst_0 : f16 to vector<10x7xf16>
        %305 = vector.gather %alloc_12[%35] [%297], %43, %304 : memref<15xf16>, vector<10x7xi32>, vector<10x7xi1>, vector<10x7xf16> into vector<10x7xf16>
        %306 = vector.extract_strided_slice %296 {offsets = [8], sizes = [1], strides = [1]} : vector<10x7xi1> to vector<1x7xi1>
        %collapsed = tensor.collapse_shape %18 [[0, 1]] : tensor<10x9xi16> into tensor<90xi16>
        tensor.yield %out : i1
      } : tensor<?xi1>
      %299 = vector.broadcast %in : i1 to vector<i1>
      vector.transfer_write %299, %alloc_4[%c14] : vector<i1>, memref<15xi1>
      %300 = math.sqrt %16 : tensor<10x7xf16>
      vector.print %27 : vector<15xi32>
      %cst_44 = arith.constant 1.000000e+00 : f16
      %cst_45 = arith.constant 0.000000e+00 : f16
      %301 = vector.transfer_read %16[%c14, %c9], %cst_45 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<10x7xf16>, vector<15xf16>
      %302 = math.rsqrt %2 : tensor<10x7x9xf16>
      linalg.yield %in_38 : i1
    } -> tensor<10x7x9xi1>
    %53 = arith.cmpi sgt, %c9281_i16, %c9281_i16 : i16
    %54 = bufferization.to_tensor %alloc_16 : memref<7x10xi32>
    %55 = arith.floordivsi %c140901591_i32, %c140901591_i32 : i32
    %56 = arith.cmpf true, %cst, %cst : f32
    %57 = bufferization.clone %alloc_8 : memref<15xi32> to memref<15xi32>
    %58 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %25, %27, %c140901591_i32 : vector<15xi32>, vector<15xi32> into i32
    %59 = vector.extract_strided_slice %26 {offsets = [6], sizes = [6], strides = [1]} : vector<15xi1> to vector<6xi1>
    %60 = arith.shli %c140901591_i32, %c140901591_i32 : i32
    %61 = index.floordivs %c10, %c10
    %62 = math.cttz %c665192677_i64 : i64
    %63 = arith.cmpi ult, %false, %true : i1
    %64 = arith.floordivsi %c665192677_i64, %c1947057534_i64 : i64
    %65 = vector.transpose %27, [0] : vector<15xi32> to vector<15xi32>
    %66 = index.sub %47, %c1
    %67 = arith.floordivsi %c25323_i16, %c14851_i16 : i16
    %68 = vector.extract_strided_slice %25 {offsets = [8], sizes = [3], strides = [1]} : vector<15xi32> to vector<3xi32>
    %69 = index.maxs %61, %c4
    %70 = arith.maxui %c9281_i16, %c-20598_i16 : i16
    %71 = math.sqrt %cst_0 : f16
    memref.tensor_store %15, %49 : memref<10x7x9xi32>
    %72 = scf.execute_region -> i32 {
      %271 = vector.broadcast %c42279348_i32 : i32 to vector<10x7x9xi32>
      %272 = memref.alloca_scope  -> (memref<15xf16>) {
        memref.tensor_store %4, %alloc_14 : memref<10x7xf16>
        %287 = arith.floordivsi %c1947057534_i64, %c1947057534_i64 : i64
        %288 = arith.addf %cst_0, %cst_0 : f16
        %289 = vector.broadcast %c14851_i16 : i16 to vector<i16>
        %290 = vector.transfer_write %289, %9[%c8, %c5, %c13] : vector<i16>, tensor<10x7x9xi16>
        %291 = bufferization.clone %alloc_9 : memref<10x7x9xi32> to memref<10x7x9xi32>
        %292 = arith.maxsi %true, %true : i1
        %293 = vector.create_mask %39 : vector<15xi1>
        %294 = math.floor %2 : tensor<10x7x9xf16>
        %295 = arith.shli %c-20598_i16, %c9281_i16 : i16
        %296 = math.ipowi %c9281_i16, %c-20598_i16 : i16
        %297 = bufferization.to_tensor %alloc_15 : memref<10x7xi16>
        %298 = math.floor %14 : tensor<15xf16>
        vector.print %19 : vector<10xf16>
        %299 = math.copysign %16, %16 : tensor<10x7xf16>
        %300 = vector.broadcast %c42279348_i32 : i32 to vector<10x9xi32>
        %dest, %accumulated_value = vector.scan <add>, %271, %300 {inclusive = true, reduction_dim = 1 : i64} : vector<10x7x9xi32>, vector<10x9xi32>
        %301 = vector.broadcast %cst : f32 to vector<10x7xf32>
        %302 = vector.fma %301, %301, %301 : vector<10x7xf32>
        %303 = arith.remui %c1947057534_i64, %c2053918835_i64 : i64
        %304 = math.ipowi %18, %18 : tensor<10x9xi16>
        %false_40 = index.bool.constant false
        %cast_41 = tensor.cast %10 : tensor<15xi64> to tensor<?xi64>
        %305 = index.divu %c7, %c4
        %306 = index.ceildivu %39, %34
        %307 = arith.remf %cst, %cst : f32
        %c0_i32_42 = arith.constant 0 : i32
        %c0_i32_43 = arith.constant 0 : i32
        %308 = vector.transfer_read %alloc_8[%c12], %c0_i32_43 : memref<15xi32>, vector<i32>
        %309 = arith.remf %cst_0, %cst_0 : f16
        %false_44 = index.bool.constant false
        %310 = vector.broadcast %false_44 : i1 to vector<10x7xi1>
        %311 = index.divu %35, %c6
        %312 = arith.cmpf ugt, %cst, %cst : f32
        %313 = math.cttz %15 : tensor<10x7x9xi32>
        %314 = math.log2 %4 : tensor<10x7xf16>
        %315 = index.ceildivs %c4, %61
        memref.alloca_scope.return %alloc_12 : memref<15xf16>
      }
      vector.print %19 : vector<10xf16>
      %273 = arith.cmpf false, %cst_0, %cst_0 : f16
      %c1_i16 = arith.constant 1 : i16
      %c0_i16_38 = arith.constant 0 : i16
      %274 = vector.transfer_read %alloc_3[%66, %35], %c0_i16_38 : memref<10x7xi16>, vector<i16>
      %275 = tensor.empty() : tensor<7xi16>
      %alloc_39 = memref.alloc() : memref<10xi16>
      %276 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%275, %alloc_39 : tensor<7xi16>, memref<10xi16>) outs(%3 : tensor<10x7x9xi16>) {
      ^bb0(%in: i16, %in_40: i16, %out: i16):
        %alloca = memref.alloca() : memref<10x7xi32>
        %false_41 = index.bool.constant false
        %287 = vector.create_mask %34, %61, %c15 : vector<10x7x9xi1>
        %288 = arith.remf %cst_0, %cst_0 : f16
        %289 = arith.shli %c1_i16, %c-20598_i16 : i16
        %290 = vector.transpose %27, [0] : vector<15xi32> to vector<15xi32>
        %291 = vector.broadcast %c42279348_i32 : i32 to vector<10xi32>
        %292 = vector.broadcast %true : i1 to vector<10xi1>
        %293 = vector.maskedload %alloc_13[%c2, %c1], %292, %291 : memref<10x7xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
        %294 = bufferization.clone %alloc_16 : memref<7x10xi32> to memref<7x10xi32>
        %cast_42 = tensor.cast %7 : tensor<15xi32> to tensor<?xi32>
        %295 = arith.remsi %out, %c14851_i16 : i16
        %296 = arith.ceildivsi %c-23836_i16, %c-20598_i16 : i16
        %c1217584905_i64 = arith.constant 1217584905 : i64
        %297 = affine.apply affine_map<(d0) -> (d0 mod 32)>(%39)
        %298 = arith.muli %in, %c-23836_i16 : i16
        %299 = memref.load %alloc[%c9, %c1, %c3] : memref<10x7x9xi1>
        memref.store %c25323_i16, %alloc_3[%c0, %c6] : memref<10x7xi16>
        %300 = memref.realloc %alloc_4 : memref<15xi1> to memref<9xi1>
        %301 = vector.broadcast %cst : f32 to vector<10x7xf32>
        %302 = vector.fma %301, %301, %301 : vector<10x7xf32>
        %303 = arith.cmpf oge, %cst_0, %cst_0 : f16
        %from_elements_43 = tensor.from_elements %c42279348_i32, %c42279348_i32, %c140901591_i32, %c42279348_i32, %c42279348_i32, %c140901591_i32, %c140901591_i32, %c140901591_i32, %c42279348_i32, %c42279348_i32, %c140901591_i32, %c42279348_i32, %c42279348_i32, %c140901591_i32, %c140901591_i32, %c42279348_i32, %c42279348_i32, %c140901591_i32, %c42279348_i32, %c42279348_i32, %c42279348_i32, %c42279348_i32, %c42279348_i32, %c42279348_i32, %c42279348_i32, %c42279348_i32, %c140901591_i32, %c140901591_i32, %c42279348_i32, %c140901591_i32, %c140901591_i32, %c42279348_i32, %c140901591_i32, %c140901591_i32, %c140901591_i32, %c42279348_i32, %c140901591_i32, %c140901591_i32, %c42279348_i32, %c42279348_i32, %c42279348_i32, %c140901591_i32, %c140901591_i32, %c140901591_i32, %c42279348_i32, %c42279348_i32, %c140901591_i32, %c42279348_i32, %c42279348_i32, %c42279348_i32, %c42279348_i32, %c140901591_i32, %c140901591_i32, %c42279348_i32, %c140901591_i32, %c42279348_i32, %c42279348_i32, %c42279348_i32, %c140901591_i32, %c42279348_i32, %c140901591_i32, %c140901591_i32, %c140901591_i32, %c140901591_i32, %c42279348_i32, %c140901591_i32, %c42279348_i32, %c42279348_i32, %c140901591_i32, %c140901591_i32 : tensor<10x7xi32>
        %304 = vector.broadcast %c14 : index to vector<7xindex>
        %305 = vector.broadcast %true : i1 to vector<7xi1>
        vector.scatter %alloc_2[%c5] [%304], %305, %305 : memref<15xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
        %cast_44 = tensor.cast %17 : tensor<10x7xf16> to tensor<?x?xf16>
        %306 = math.atan %11 : tensor<10x7x9xf32>
        memref.assume_alignment %294, 8 : memref<7x10xi32>
        memref.store %c-23836_i16, %alloc_6[%c7, %c5] : memref<10x7xi16>
        %307 = arith.divui %c665192677_i64, %c1947057534_i64 : i64
        %308 = bufferization.to_memref %reduced : memref<10x9xi16>
        memref.store %c140901591_i32, %294[%c6, %c5] : memref<7x10xi32>
        %309 = index.floordivs %34, %c2
        %from_elements_45 = tensor.from_elements %c140901591_i32, %c140901591_i32, %c42279348_i32, %c42279348_i32, %c42279348_i32, %c140901591_i32, %c42279348_i32, %c140901591_i32, %c140901591_i32, %c140901591_i32, %c42279348_i32, %c42279348_i32, %c140901591_i32, %c42279348_i32, %c140901591_i32, %c140901591_i32, %c42279348_i32, %c42279348_i32, %c42279348_i32, %c42279348_i32, %c140901591_i32, %c42279348_i32, %c140901591_i32, %c140901591_i32, %c42279348_i32, %c42279348_i32, %c42279348_i32, %c42279348_i32, %c42279348_i32, %c140901591_i32, %c42279348_i32, %c42279348_i32, %c140901591_i32, %c140901591_i32, %c42279348_i32, %c140901591_i32, %c42279348_i32, %c140901591_i32, %c140901591_i32, %c42279348_i32, %c140901591_i32, %c42279348_i32, %c140901591_i32, %c140901591_i32, %c140901591_i32, %c140901591_i32, %c140901591_i32, %c140901591_i32, %c42279348_i32, %c140901591_i32, %c140901591_i32, %c42279348_i32, %c42279348_i32, %c140901591_i32, %c42279348_i32, %c140901591_i32, %c42279348_i32, %c140901591_i32, %c42279348_i32, %c140901591_i32, %c42279348_i32, %c140901591_i32, %c42279348_i32, %c140901591_i32, %c42279348_i32, %c42279348_i32, %c140901591_i32, %c140901591_i32, %c140901591_i32, %c140901591_i32 : tensor<10x7xi32>
        %310 = arith.maxsi %c665192677_i64, %c2053918835_i64 : i64
        %inserted_46 = tensor.insert %cst_0 into %14[%c9] : tensor<15xf16>
        linalg.yield %c14851_i16 : i16
      } -> tensor<10x7x9xi16>
      %277 = math.ctpop %15 : tensor<10x7x9xi32>
      %278 = math.absf %cst : f32
      %279 = arith.maxui %c1511706817_i64, %c1947057534_i64 : i64
      %280 = math.rsqrt %11 : tensor<10x7x9xf32>
      %281 = index.sub %39, %c3
      %282 = math.ipowi %c42279348_i32, %c140901591_i32 : i32
      %283 = vector.transpose %271, [2, 1, 0] : vector<10x7x9xi32> to vector<9x7x10xi32>
      %284 = index.divu %c7, %23
      %285 = math.log1p %16 : tensor<10x7xf16>
      %286 = math.round %5 : tensor<15xf16>
      scf.yield %c140901591_i32 : i32
    }
    %alloc_20 = memref.alloc() : memref<10x7xi1>
    memref.tensor_store %0, %alloc_20 : memref<10x7xi1>
    %73 = math.ipowi %c140901591_i32, %c42279348_i32 : i32
    memref.alloca_scope  {
      %271 = index.maxs %c5, %c3
      %272 = index.divs %39, %271
      %273 = index.maxs %66, %c13
      %cast_38 = tensor.cast %12 : tensor<10x7xi16> to tensor<?x?xi16>
      %274 = math.copysign %5, %5 : tensor<15xf16>
      %275 = vector.broadcast %c1947057534_i64 : i64 to vector<10x7xi64>
      %276 = vector.broadcast %c42279348_i32 : i32 to vector<10x7xi32>
      %277 = vector.gather %alloc_10[%c10] [%276], %43, %275 : memref<15xi64>, vector<10x7xi32>, vector<10x7xi1>, vector<10x7xi64> into vector<10x7xi64>
      %278 = math.absf %4 : tensor<10x7xf16>
      %279 = arith.minui %c1511706817_i64, %c1082890889_i64 : i64
      %collapsed = tensor.collapse_shape %splat [[0, 1]] : tensor<10x7xi1> into tensor<70xi1>
      %280 = index.sub %c4, %c4
      memref.copy %alloc_13, %alloc_5 : memref<10x7xi32> to memref<10x7xi32>
      %281 = arith.shli %72, %72 : i32
      %282 = arith.maxf %cst, %cst : f32
      %283 = memref.load %alloc_2[%c11] : memref<15xi1>
      %284 = math.exp2 %cst_0 : f16
      %285 = vector.shuffle %275, %277 [4, 5, 6, 7, 9, 11, 13, 14, 15, 17, 18] : vector<10x7xi64>, vector<10x7xi64>
      memref.store %c140901591_i32, %alloc_9[%c7, %c4, %c4] : memref<10x7x9xi32>
      %286 = math.exp %8 : tensor<10x7x9xf32>
      %c846484030_i64 = arith.constant 846484030 : i64
      %287 = math.ctlz %0 : tensor<10x7xi1>
      %288 = math.atan2 %4, %16 : tensor<10x7xf16>
      %289 = math.floor %8 : tensor<10x7x9xf32>
      %290 = math.cos %2 : tensor<10x7x9xf16>
      %291 = index.floordivs %c11, %c9
      %292 = scf.while (%arg0 = %19) : (vector<10xf16>) -> vector<10xf16> {
        %299 = vector.broadcast %true : i1 to vector<i1>
        %300 = vector.transfer_write %299, %collapsed[%c3] : vector<i1>, tensor<70xi1>
        %inserted_40 = tensor.insert %cst_0 into %16[%c9, %c1] : tensor<10x7xf16>
        %301 = math.sqrt %11 : tensor<10x7x9xf32>
        %302 = math.ceil %16 : tensor<10x7xf16>
        %303 = index.maxs %291, %c2
        %304 = arith.subi %c665192677_i64, %c2053918835_i64 : i64
        vector.print %275 : vector<10x7xi64>
        %305 = math.log2 %5 : tensor<15xf16>
        scf.condition(%true) %19 : vector<10xf16>
      } do {
      ^bb0(%arg0: vector<10xf16>):
        %299 = math.ceil %11 : tensor<10x7x9xf32>
        %300 = arith.floordivsi %c665192677_i64, %c665192677_i64 : i64
        %301 = math.tan %11 : tensor<10x7x9xf32>
        affine.store %cst_0, %alloc_7[%c3, %c8, %c7] : memref<10x7x9xf16>
        %302 = vector.broadcast %c14851_i16 : i16 to vector<9xi16>
        %303 = vector.broadcast %true : i1 to vector<9xi1>
        %304 = vector.maskedload %alloc_15[%c4, %c0], %303, %302 : memref<10x7xi16>, vector<9xi1>, vector<9xi16> into vector<9xi16>
        %305 = math.log2 %11 : tensor<10x7x9xf32>
        %306 = math.tan %11 : tensor<10x7x9xf32>
        %307 = math.exp %4 : tensor<10x7xf16>
        %308 = arith.minui %true, %true : i1
        %309 = math.floor %17 : tensor<10x7xf16>
        %310 = index.sub %c13, %c8
        %false_40 = arith.constant false
        %false_41 = arith.constant false
        %311 = vector.transfer_read %alloc_2[%c13], %false_41 : memref<15xi1>, vector<i1>
        %312 = arith.minui %c140901591_i32, %72 : i32
        %inserted_42 = tensor.insert %c1082890889_i64 into %20[%c5] : tensor<15xi64>
        %313 = vector.matrix_multiply %25, %25 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
        %true_43 = index.bool.constant true
        scf.yield %32 : vector<10xf16>
      }
      %293 = memref.load %alloc_8[%c13] : memref<15xi32>
      %294 = arith.maxsi %72, %72 : i32
      %295 = math.log %11 : tensor<10x7x9xf32>
      %true_39 = index.bool.constant true
      %296 = index.casts %23 : index to i32
      %297 = math.rsqrt %5 : tensor<15xf16>
      %298 = affine.load %57[%c3] : memref<15xi32>
    }
    %74 = math.ctlz %3 : tensor<10x7x9xi16>
    %from_elements = tensor.from_elements %c1511706817_i64, %c665192677_i64, %c2053918835_i64, %c1947057534_i64, %c1082890889_i64, %c1511706817_i64, %c1947057534_i64, %c665192677_i64, %c1511706817_i64, %c2053918835_i64, %c665192677_i64, %c2053918835_i64, %c1511706817_i64, %c665192677_i64, %c1511706817_i64, %c665192677_i64, %c1947057534_i64, %c1947057534_i64, %c1082890889_i64, %c1947057534_i64, %c665192677_i64, %c665192677_i64, %c665192677_i64, %c1947057534_i64, %c1082890889_i64, %c1511706817_i64, %c665192677_i64, %c2053918835_i64, %c2053918835_i64, %c1511706817_i64, %c1947057534_i64, %c1947057534_i64, %c2053918835_i64, %c1082890889_i64, %c1511706817_i64, %c1082890889_i64, %c1082890889_i64, %c665192677_i64, %c665192677_i64, %c665192677_i64, %c1947057534_i64, %c665192677_i64, %c1511706817_i64, %c2053918835_i64, %c1511706817_i64, %c1082890889_i64, %c1947057534_i64, %c665192677_i64, %c1082890889_i64, %c665192677_i64, %c1947057534_i64, %c1511706817_i64, %c665192677_i64, %c1511706817_i64, %c1947057534_i64, %c2053918835_i64, %c1947057534_i64, %c1511706817_i64, %c2053918835_i64, %c2053918835_i64, %c1082890889_i64, %c1511706817_i64, %c665192677_i64, %c1947057534_i64, %c1082890889_i64, %c1082890889_i64, %c1947057534_i64, %c2053918835_i64, %c1511706817_i64, %c665192677_i64 : tensor<10x7xi64>
    %75 = vector.reduction <xor>, %68 : vector<3xi32> into i32
    %76 = math.absf %11 : tensor<10x7x9xf32>
    %77 = arith.shli %72, %c42279348_i32 : i32
    %78 = math.log2 %14 : tensor<15xf16>
    %79 = math.tan %cst : f32
    %expanded = tensor.expand_shape %13 [[0], [1, 2]] : tensor<10x7xi32> into tensor<10x7x1xi32>
    %80 = index.maxs %c13, %c3
    %cast = tensor.cast %12 : tensor<10x7xi16> to tensor<?x?xi16>
    scf.execute_region {
      memref.tensor_store %7, %alloc_8 : memref<15xi32>
      %271 = scf.while (%arg0 = %59) : (vector<6xi1>) -> vector<6xi1> {
        %288 = bufferization.to_memref %14 : memref<15xf16>
        %true_39 = arith.constant true
        %false_40 = arith.constant false
        %289 = vector.transfer_read %alloc_2[%39], %false_40 : memref<15xi1>, vector<i1>
        %290 = index.ceildivs %c9, %c3
        %291 = vector.extract_strided_slice %26 {offsets = [6], sizes = [7], strides = [1]} : vector<15xi1> to vector<7xi1>
        %292 = index.castu %c140901591_i32 : i32 to index
        %293 = arith.ceildivsi %c-23836_i16, %c25323_i16 : i16
        %294 = arith.ori %c1082890889_i64, %c1082890889_i64 : i64
        %expanded_41 = tensor.expand_shape %8 [[0], [1], [2, 3]] : tensor<10x7x9xf32> into tensor<10x7x9x1xf32>
        scf.condition(%false) %59 : vector<6xi1>
      } do {
      ^bb0(%arg0: vector<6xi1>):
        %c1_i64 = arith.constant 1 : i64
        %288 = vector.transfer_read %alloc_11[%69], %c1_i64 : memref<15xi64>, vector<i64>
        %289 = vector.broadcast %c8 : index to vector<10xindex>
        %290 = vector.broadcast %true : i1 to vector<10xi1>
        %291 = vector.broadcast %c2053918835_i64 : i64 to vector<10xi64>
        vector.scatter %alloc_11[%c3] [%289], %290, %291 : memref<15xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
        %cst_39 = arith.constant 0x4E3D32F2 : f32
        %292 = index.casts %c140901591_i32 : i32 to index
        %293 = math.cttz %from_elements : tensor<10x7xi64>
        %294 = index.ceildivu %66, %c1
        %true_40 = index.bool.constant true
        %295 = arith.cmpf ueq, %cst, %cst : f32
        %296 = vector.broadcast %cst : f32 to vector<15xf32>
        %297 = vector.fma %296, %296, %296 : vector<15xf32>
        %298 = math.fpowi %5, %7 : tensor<15xf16>, tensor<15xi32>
        %299 = math.atan %17 : tensor<10x7xf16>
        %300 = math.ctlz %c1082890889_i64 : i64
        %301 = arith.minui %c1082890889_i64, %c2053918835_i64 : i64
        %302 = vector.extract %68[2] : vector<3xi32>
        %303 = bufferization.to_tensor %alloc : memref<10x7x9xi1>
        %304 = arith.minui %c140901591_i32, %72 : i32
        scf.yield %59 : vector<6xi1>
      }
      %c1932919814_i64 = arith.constant 1932919814 : i64
      %272 = vector.extract %43[6] : vector<10x7xi1>
      %273 = arith.remf %cst, %cst : f32
      %274 = arith.shrui %c14851_i16, %c-23836_i16 : i16
      %275 = index.divs %c3, %61
      %276 = vector.broadcast %cst : f32 to vector<f32>
      %277 = vector.transfer_write %276, %11[%c8, %30, %c12] : vector<f32>, tensor<10x7x9xf32>
      %278 = index.casts %c8 : index to i32
      %279 = arith.maxf %cst, %cst : f32
      %280 = index.castu %61 : index to i32
      %281 = vector.shuffle %25, %27 [2, 4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 15, 20, 23, 24, 27, 28, 29] : vector<15xi32>, vector<15xi32>
      %282 = arith.maxui %c42279348_i32, %c140901591_i32 : i32
      %283 = memref.load %alloc_7[%c8, %c4, %c7] : memref<10x7x9xf16>
      %alloc_38 = memref.alloc() : memref<10x7xi1>
      %284 = vector.broadcast %false : i1 to vector<10x7x9xi1>
      %285 = vector.broadcast %72 : i32 to vector<10x7x9xi32>
      %286 = vector.gather %alloc_38[%c7, %34] [%285], %284, %284 : memref<10x7xi1>, vector<10x7x9xi32>, vector<10x7x9xi1>, vector<10x7x9xi1> into vector<10x7x9xi1>
      %287 = math.fma %8, %11, %11 : tensor<10x7x9xf32>
      scf.yield
    }
    %81 = index.ceildivs %35, %c12
    %82 = affine.apply affine_map<(d0, d1, d2) -> (d2 mod 64)>(%c8, %c9, %23)
    %83 = math.exp2 %5 : tensor<15xf16>
    scf.execute_region {
      %271 = arith.remui %c9281_i16, %c-23836_i16 : i16
      %272 = math.floor %4 : tensor<10x7xf16>
      %273 = math.ceil %cst_0 : f16
      scf.execute_region {
        %283 = vector.maskedload %alloc_13[%c8, %c6], %26, %27 : memref<10x7xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
        %284 = arith.divui %c-20598_i16, %c-20598_i16 : i16
        %splat_41 = tensor.splat %c42279348_i32 : tensor<10x7x9xi32>
        %cst_42 = arith.constant 3.488000e+04 : f16
        %285 = memref.realloc %alloc_2 : memref<15xi1> to memref<9xi1>
        memref.store %true, %alloc_4[%c12] : memref<15xi1>
        %286 = arith.xori %true, %true : i1
        %287 = vector.maskedload %57[%c1], %26, %283 : memref<15xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
        %288 = math.rsqrt %11 : tensor<10x7x9xf32>
        memref.store %c140901591_i32, %alloc_8[%c4] : memref<15xi32>
        %289 = vector.broadcast %c-23836_i16 : i16 to vector<10xi16>
        %290 = vector.broadcast %true : i1 to vector<10xi1>
        %291 = vector.maskedload %alloc_3[%c5, %c4], %290, %289 : memref<10x7xi16>, vector<10xi1>, vector<10xi16> into vector<10xi16>
        %292 = index.ceildivu %39, %66
        %c516469845_i64 = arith.constant 516469845 : i64
        %293 = vector.broadcast %c14851_i16 : i16 to vector<15xi16>
        %294 = vector.maskedload %alloc_3[%c4, %c3], %26, %293 : memref<10x7xi16>, vector<15xi1>, vector<15xi16> into vector<15xi16>
        %295 = vector.extract %293[2] : vector<15xi16>
        %296 = vector.extract %26[10] : vector<15xi1>
        scf.yield
      }
      %274 = vector.extract_strided_slice %68 {offsets = [0], sizes = [2], strides = [1]} : vector<3xi32> to vector<2xi32>
      %275 = arith.muli %c140901591_i32, %c42279348_i32 : i32
      %generated_38 = tensor.generate %c2 {
      ^bb0(%arg0: index):
        %283 = arith.cmpi ne, %c1082890889_i64, %c2053918835_i64 : i64
        %284 = vector.broadcast %cst : f32 to vector<15xf32>
        %285 = vector.fma %284, %284, %284 : vector<15xf32>
        memref.copy %57, %alloc_8 : memref<15xi32> to memref<15xi32>
        %286 = vector.extract_strided_slice %27 {offsets = [4], sizes = [6], strides = [1]} : vector<15xi32> to vector<6xi32>
        tensor.yield %c14851_i16 : i16
      } : tensor<?xi16>
      %276 = math.copysign %cst_0, %cst_0 : f16
      %277 = arith.maxui %true, %false : i1
      %278 = arith.addf %cst, %cst : f32
      %cast_39 = tensor.cast %14 : tensor<15xf16> to tensor<?xf16>
      %279 = index.maxs %81, %c11
      %280 = vector.reduction <minsi>, %25 : vector<15xi32> into i32
      %281 = math.atan2 %11, %11 : tensor<10x7x9xf32>
      %splat_40 = tensor.splat %c14851_i16 : tensor<15xi16>
      %282 = vector.extract %274[1] : vector<2xi32>
      scf.yield
    }
    %84 = arith.andi %c9281_i16, %c9281_i16 : i16
    %85 = math.absf %8 : tensor<10x7x9xf32>
    %86 = math.fma %2, %2, %2 : tensor<10x7x9xf16>
    %87 = vector.reduction <mul>, %19 : vector<10xf16> into f16
    %from_elements_21 = tensor.from_elements %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0 : tensor<10x7xf16>
    %88 = vector.broadcast %c14851_i16 : i16 to vector<i16>
    %89 = vector.transfer_write %88, %3[%c0, %c11, %c5] : vector<i16>, tensor<10x7x9xi16>
    %90 = math.log1p %4 : tensor<10x7xf16>
    %91 = math.floor %5 : tensor<15xf16>
    %92 = arith.ceildivsi %c-20598_i16, %c-23836_i16 : i16
    %93 = bufferization.to_tensor %alloc_1 : memref<15xi1>
    %94 = arith.muli %c665192677_i64, %c1947057534_i64 : i64
    %95 = arith.minui %c-23836_i16, %c25323_i16 : i16
    %96 = arith.minsi %c2053918835_i64, %c1511706817_i64 : i64
    %97 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %26, %26, %true : vector<15xi1>, vector<15xi1> into i1
    %98 = tensor.empty() : tensor<7x10xf16>
    %99 = tensor.empty() : tensor<10x10xf16>
    %100 = linalg.matmul ins(%4, %98 : tensor<10x7xf16>, tensor<7x10xf16>) outs(%99 : tensor<10x10xf16>) -> tensor<10x10xf16>
    %101 = bufferization.to_tensor %alloc_2 : memref<15xi1>
    %102 = math.sqrt %2 : tensor<10x7x9xf16>
    %103 = index.sub %c12, %80
    %alloc_22 = memref.alloc() : memref<7x9xi16>
    %104 = tensor.empty() : tensor<10x9xi16>
    %105 = linalg.matmul ins(%12, %alloc_22 : tensor<10x7xi16>, memref<7x9xi16>) outs(%104 : tensor<10x9xi16>) -> tensor<10x9xi16>
    %c0_i16 = arith.constant 0 : i16
    %106 = vector.transfer_read %12[%c9, %61], %c0_i16 : tensor<10x7xi16>, vector<i16>
    %107 = memref.realloc %alloc_10 : memref<15xi64> to memref<10xi64>
    %108 = arith.addi %72, %c140901591_i32 : i32
    %109 = math.exp2 %4 : tensor<10x7xf16>
    %110 = scf.while (%arg0 = %alloc_16) : (memref<7x10xi32>) -> memref<7x10xi32> {
      %271 = index.sub %80, %35
      %272 = arith.cmpf oeq, %cst, %cst : f32
      %273 = arith.addf %cst_0, %cst_0 : f16
      %274 = math.log %14 : tensor<15xf16>
      %275 = vector.extract_strided_slice %43 {offsets = [5], sizes = [4], strides = [1]} : vector<10x7xi1> to vector<4x7xi1>
      %276 = math.ctlz %12 : tensor<10x7xi16>
      %277 = arith.cmpf une, %cst, %cst : f32
      %278 = math.sqrt %99 : tensor<10x10xf16>
      scf.condition(%true) %alloc_16 : memref<7x10xi32>
    } do {
    ^bb0(%arg0: memref<7x10xi32>):
      %271 = arith.minsi %c0_i16, %c-20598_i16 : i16
      %272 = vector.insertelement %72, %25[%61 : index] : vector<15xi32>
      %273 = vector.broadcast %c42279348_i32 : i32 to vector<i32>
      vector.transfer_write %273, %alloc_16[%c0, %c6] : vector<i32>, memref<7x10xi32>
      %274 = arith.negf %cst : f32
      memref.assume_alignment %alloc_6, 16 : memref<10x7xi16>
      %275 = math.atan %from_elements_21 : tensor<10x7xf16>
      %276 = tensor.empty() : tensor<7x9xi1>
      %277 = tensor.empty() : tensor<10x9xi1>
      %278 = linalg.matmul ins(%0, %276 : tensor<10x7xi1>, tensor<7x9xi1>) outs(%277 : tensor<10x9xi1>) -> tensor<10x9xi1>
      %279 = index.ceildivu %c4, %c1
      %280 = arith.ori %c0_i16, %c25323_i16 : i16
      %281 = math.sqrt %5 : tensor<15xf16>
      %282 = bufferization.to_tensor %alloc_12 : memref<15xf16>
      %283 = vector.broadcast %cst_0 : f16 to vector<9xf16>
      %284 = vector.broadcast %true : i1 to vector<9xi1>
      %285 = vector.maskedload %alloc_12[%c11], %284, %283 : memref<15xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
      vector.print %88 : vector<i16>
      %286 = math.sqrt %8 : tensor<10x7x9xf32>
      %287 = math.absi %c665192677_i64 : i64
      %288 = arith.andi %c9281_i16, %c0_i16 : i16
      scf.yield %alloc_16 : memref<7x10xi32>
    }
    %111 = vector.broadcast %true : i1 to vector<7x7xi1>
    %112 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %43, %43, %111 : vector<10x7xi1>, vector<10x7xi1> into vector<7x7xi1>
    %113 = vector.extract %59[1] : vector<6xi1>
    %114 = vector.broadcast %cst : f32 to vector<10x7xf32>
    %115 = vector.fma %114, %114, %114 : vector<10x7xf32>
    %116 = arith.maxui %c665192677_i64, %c1947057534_i64 : i64
    %117 = vector.broadcast %34 : index to vector<7xindex>
    %118 = vector.broadcast %false : i1 to vector<7xi1>
    %119 = vector.broadcast %c14851_i16 : i16 to vector<7xi16>
    vector.scatter %alloc_3[%c0, %c1] [%117], %118, %119 : memref<10x7xi16>, vector<7xindex>, vector<7xi1>, vector<7xi16>
    %120 = arith.divf %cst_0, %cst_0 : f16
    %121 = arith.shrui %c0_i16, %c-20598_i16 : i16
    %extracted = tensor.extract %5[%c14] : tensor<15xf16>
    %122 = index.castu %c665192677_i64 : i64 to index
    %123 = index.sub %80, %30
    %124 = math.cttz %c1082890889_i64 : i64
    %c0_i32 = arith.constant 0 : i32
    %c0_i32_23 = arith.constant 0 : i32
    %125 = vector.transfer_read %54[%c14, %35], %c0_i32_23 : tensor<7x10xi32>, vector<i32>
    %generated = tensor.generate %103 {
    ^bb0(%arg0: index):
      %271 = arith.maxsi %false, %false : i1
      %272 = math.exp2 %11 : tensor<10x7x9xf32>
      %273 = math.exp %8 : tensor<10x7x9xf32>
      %274 = arith.maxui %false, %false : i1
      tensor.yield %c1511706817_i64 : i64
    } : tensor<?xi64>
    %126 = arith.minsi %false, %false : i1
    %127 = affine.if affine_set<(d0, d1, d2, d3) : (d1 * 2 == 0)>(%c13, %c15, %c3, %c1) -> i1 {
      %271 = arith.shrsi %c-20598_i16, %c-20598_i16 : i16
      %272 = math.absf %17 : tensor<10x7xf16>
      %273 = vector.broadcast %false : i1 to vector<10xi1>
      %274 = vector.maskedload %alloc_4[%c3], %273, %273 : memref<15xi1>, vector<10xi1>, vector<10xi1> into vector<10xi1>
      %expanded_38 = tensor.expand_shape %11 [[0], [1], [2, 3]] : tensor<10x7x9xf32> into tensor<10x7x9x1xf32>
      %275 = affine.load %alloc_14[%c12, %c7] : memref<10x7xf16>
      %276 = tensor.empty() : tensor<10xf32>
      %277 = tensor.empty() : tensor<9x7xf32>
      %278 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%276, %8, %277 : tensor<10xf32>, tensor<10x7x9xf32>, tensor<9x7xf32>) outs(%8 : tensor<10x7x9xf32>) {
      ^bb0(%in: f32, %in_39: f32, %in_40: f32, %out: f32):
        %280 = arith.cmpi ule, %c14851_i16, %c14851_i16 : i16
        %alloc_41 = memref.alloc() : memref<7x10xf16>
        %281 = tensor.empty() : tensor<10x10xf16>
        %282 = linalg.matmul ins(%16, %alloc_41 : tensor<10x7xf16>, memref<7x10xf16>) outs(%281 : tensor<10x10xf16>) -> tensor<10x10xf16>
        %283 = math.ipowi %c1511706817_i64, %c2053918835_i64 : i64
        memref.tensor_store %101, %alloc_4 : memref<15xi1>
        %284 = arith.muli %c14851_i16, %c9281_i16 : i16
        %285 = math.cttz %13 : tensor<10x7xi32>
        %cast_42 = tensor.cast %reduced : tensor<10x9xi16> to tensor<?x?xi16>
        %286 = tensor.empty() : tensor<9x9xi16>
        %287 = tensor.empty() : tensor<10x9xi16>
        %288 = linalg.matmul ins(%104, %286 : tensor<10x9xi16>, tensor<9x9xi16>) outs(%287 : tensor<10x9xi16>) -> tensor<10x9xi16>
        %289 = index.divs %c14, %80
        %290 = index.divs %61, %103
        %291 = arith.floordivsi %c25323_i16, %c-20598_i16 : i16
        %292 = vector.broadcast %c0_i16 : i16 to vector<15xi16>
        %293 = vector.maskedload %alloc_15[%c4, %c3], %26, %292 : memref<10x7xi16>, vector<15xi1>, vector<15xi16> into vector<15xi16>
        %294 = vector.broadcast %false : i1 to vector<10x7x9xi1>
        %295 = vector.broadcast %c140901591_i32 : i32 to vector<10x7x9xi32>
        %296 = vector.gather %6[%122, %c0, %c12] [%295], %294, %294 : tensor<10x7x9xi1>, vector<10x7x9xi32>, vector<10x7x9xi1>, vector<10x7x9xi1> into vector<10x7x9xi1>
        %alloc_43 = memref.alloc() : memref<i64>
        memref.tensor_store %22, %alloc_43 : memref<i64>
        %297 = math.log10 %281 : tensor<10x10xf16>
        %298 = vector.broadcast %c665192677_i64 : i64 to vector<i64>
        %299 = vector.transfer_write %298, %20[%69] : vector<i64>, tensor<15xi64>
        %300 = arith.addf %275, %extracted : f16
        %301 = tensor.empty() : tensor<7x15xi1>
        %302 = tensor.empty() : tensor<10x15xi1>
        %303 = linalg.matmul ins(%0, %301 : tensor<10x7xi1>, tensor<7x15xi1>) outs(%302 : tensor<10x15xi1>) -> tensor<10x15xi1>
        %splat_44 = tensor.splat %c665192677_i64 : tensor<10x7x9xi64>
        %false_45 = index.bool.constant false
        %304 = index.ceildivu %c15, %30
        %305 = bufferization.to_memref %cast : memref<?x?xi16>
        %inserted_46 = tensor.insert %c-20598_i16 into %3[%c8, %c0, %c1] : tensor<10x7x9xi16>
        %306 = vector.transpose %26, [0] : vector<15xi1> to vector<15xi1>
        %307 = arith.cmpi sge, %false, %true : i1
        %308 = arith.ori %c42279348_i32, %72 : i32
        %309 = math.floor %14 : tensor<15xf16>
        %310 = math.sqrt %in_39 : f32
        %311 = index.ceildivu %290, %289
        %rank_47 = tensor.rank %16 : tensor<10x7xf16>
        %312 = memref.realloc %alloc_12 : memref<15xf16> to memref<9xf16>
        memref.tensor_store %6, %alloc : memref<10x7x9xi1>
        linalg.yield %out : f32
      } -> tensor<10x7x9xf32>
      %279 = arith.addf %275, %275 : f16
      %alloca = memref.alloca() : memref<10x7xi32>
      affine.yield %true : i1
    } else {
      %271 = index.castu %23 : index to i32
      %272 = vector.broadcast %c0_i32 : i32 to vector<10x7xi32>
      %273 = vector.gather %7[%123] [%272], %43, %272 : tensor<15xi32>, vector<10x7xi32>, vector<10x7xi1>, vector<10x7xi32> into vector<10x7xi32>
      %274 = math.ipowi %expanded, %expanded : tensor<10x7x1xi32>
      %275 = affine.max affine_map<(d0, d1) -> (d1 ceildiv 4 + d0, ((d1 ceildiv 64) ceildiv 4) ceildiv 8)>(%c3, %c8)
      %276 = arith.minui %c42279348_i32, %c42279348_i32 : i32
      %277 = math.copysign %4, %from_elements_21 : tensor<10x7xf16>
      %278 = arith.ceildivsi %c-23836_i16, %c-20598_i16 : i16
      %279 = memref.atomic_rmw maxu %c-20598_i16, %alloc_6[%c6, %c3] : (i16, memref<10x7xi16>) -> i16
      affine.yield %false : i1
    }
    %128 = vector.broadcast %cst : f32 to vector<15xf32>
    %129 = vector.fma %128, %128, %128 : vector<15xf32>
    %130 = arith.ceildivsi %c1082890889_i64, %c2053918835_i64 : i64
    %131 = index.ceildivu %103, %c0
    %rank = tensor.rank %from_elements_21 : tensor<10x7xf16>
    %132 = affine.apply affine_map<(d0, d1) -> (-d1)>(%81, %c15)
    %133 = math.tanh %extracted : f16
    %from_elements_24 = tensor.from_elements %c1511706817_i64, %c665192677_i64, %c1947057534_i64, %c665192677_i64, %c1082890889_i64, %c665192677_i64, %c1947057534_i64, %c1947057534_i64, %c1947057534_i64, %c1947057534_i64, %c665192677_i64, %c1511706817_i64, %c665192677_i64, %c665192677_i64, %c2053918835_i64, %c1947057534_i64, %c1082890889_i64, %c665192677_i64, %c2053918835_i64, %c1082890889_i64, %c1511706817_i64, %c665192677_i64, %c665192677_i64, %c1511706817_i64, %c2053918835_i64, %c1947057534_i64, %c1511706817_i64, %c1947057534_i64, %c1082890889_i64, %c665192677_i64, %c1082890889_i64, %c1947057534_i64, %c665192677_i64, %c1082890889_i64, %c665192677_i64, %c2053918835_i64, %c1511706817_i64, %c1947057534_i64, %c2053918835_i64, %c665192677_i64, %c1947057534_i64, %c1511706817_i64, %c1511706817_i64, %c665192677_i64, %c1082890889_i64, %c1947057534_i64, %c1082890889_i64, %c1947057534_i64, %c1082890889_i64, %c1082890889_i64, %c1511706817_i64, %c1082890889_i64, %c665192677_i64, %c2053918835_i64, %c665192677_i64, %c1511706817_i64, %c2053918835_i64, %c1947057534_i64, %c1082890889_i64, %c665192677_i64, %c1947057534_i64, %c1082890889_i64, %c2053918835_i64, %c1511706817_i64, %c665192677_i64, %c1082890889_i64, %c1511706817_i64, %c1511706817_i64, %c665192677_i64, %c1082890889_i64 : tensor<10x7xi64>
    %134 = arith.cmpf ule, %cst, %cst : f32
    %135 = vector.create_mask %61 : vector<15xi1>
    %136 = affine.if affine_set<(d0) : (-d0 >= 0, d0 - 32 >= 0, (-d0 + 8) ceildiv 128 == 0, d0 - 32 == 0)>(%c12) -> memref<10x7x9xi1> {
      %alloc_38 = memref.alloc() : memref<15xf16>
      %271 = math.sqrt %99 : tensor<10x10xf16>
      %272 = vector.create_mask %80, %30, %69 : vector<10x7x9xi1>
      %273 = arith.ori %c0_i32, %72 : i32
      %274 = arith.maxsi %c-20598_i16, %c-20598_i16 : i16
      %275 = vector.broadcast %69 : index to vector<7xindex>
      %276 = vector.broadcast %true : i1 to vector<7xi1>
      vector.scatter %alloc[%c1, %c3, %c5] [%275], %276, %276 : memref<10x7x9xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
      %c2119897177_i64 = arith.constant 2119897177 : i64
      %277 = index.sizeof
      affine.yield %alloc : memref<10x7x9xi1>
    } else {
      %271 = arith.remsi %c1082890889_i64, %c1947057534_i64 : i64
      %272 = arith.remui %c25323_i16, %c-20598_i16 : i16
      %273 = arith.shrui %c25323_i16, %c14851_i16 : i16
      %274 = math.ipowi %c0_i32, %c0_i32 : i32
      %275 = vector.broadcast %c1947057534_i64 : i64 to vector<10x7x9xi64>
      %276 = vector.insertelement %true, %135[%30 : index] : vector<15xi1>
      %277 = vector.insertelement %c-23836_i16, %88[] : vector<i16>
      %cast_38 = tensor.cast %from_elements : tensor<10x7xi64> to tensor<?x?xi64>
      affine.yield %alloc : memref<10x7x9xi1>
    }
    %137 = index.casts %c9281_i16 : i16 to index
    %138 = vector.extract_strided_slice %68 {offsets = [1], sizes = [2], strides = [1]} : vector<3xi32> to vector<2xi32>
    %139 = memref.atomic_rmw addi %72, %alloc_16[%c6, %c1] : (i32, memref<7x10xi32>) -> i32
    %cst_25 = arith.constant 0x4E04654A : f32
    %140 = arith.remf %extracted, %extracted : f16
    %141 = memref.load %49[%c6, %c1, %c8] : memref<10x7x9xi32>
    %142 = arith.mulf %cst, %cst : f32
    %splat_26 = tensor.splat %true : tensor<15xi1>
    %143 = memref.load %57[%c8] : memref<15xi32>
    %144 = vector.extract %115[3] : vector<10x7xf32>
    %145 = bufferization.clone %alloc_15 : memref<10x7xi16> to memref<10x7xi16>
    %146 = math.floor %2 : tensor<10x7x9xf16>
    %147 = math.ctlz %splat : tensor<10x7xi1>
    %148 = index.sizeof
    %149 = arith.remsi %c-20598_i16, %c0_i16 : i16
    %150 = vector.transpose %88, [] : vector<i16> to vector<i16>
    vector.print %26 : vector<15xi1>
    %151 = scf.if %false -> (f16) {
      %271 = memref.realloc %alloc_10 : memref<15xi64> to memref<15xi64>
      %272 = arith.minui %c0_i16, %c-20598_i16 : i16
      %expanded_38 = tensor.expand_shape %5 [[0, 1]] : tensor<15xf16> into tensor<15x1xf16>
      memref.tensor_store %17, %alloc_14 : memref<10x7xf16>
      %273 = index.sizeof
      %274 = arith.minsi %c14851_i16, %c9281_i16 : i16
      %275 = math.copysign %4, %16 : tensor<10x7xf16>
      %276 = bufferization.clone %alloc_15 : memref<10x7xi16> to memref<10x7xi16>
      scf.yield %cst_0 : f16
    } else {
      %271 = arith.mulf %cst_0, %extracted : f16
      %272 = math.absi %12 : tensor<10x7xi16>
      %cast_38 = tensor.cast %104 : tensor<10x9xi16> to tensor<?x?xi16>
      %273 = math.ipowi %10, %10 : tensor<15xi64>
      %274 = math.exp2 %11 : tensor<10x7x9xf32>
      %275 = math.sqrt %2 : tensor<10x7x9xf16>
      %276 = vector.broadcast %81 : index to vector<9xindex>
      %277 = vector.broadcast %false : i1 to vector<9xi1>
      %278 = vector.broadcast %c42279348_i32 : i32 to vector<9xi32>
      vector.scatter %alloc_8[%c1] [%276], %277, %278 : memref<15xi32>, vector<9xindex>, vector<9xi1>, vector<9xi32>
      %279 = math.exp %14 : tensor<15xf16>
      scf.yield %extracted : f16
    }
    %152 = memref.realloc %alloc_8 : memref<15xi32> to memref<15xi32>
    %153 = arith.maxui %true, %false : i1
    %154 = arith.maxf %151, %cst_0 : f16
    %155 = math.floor %151 : f16
    %156 = math.absi %expanded : tensor<10x7x1xi32>
    %157 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %135, %135, %false : vector<15xi1>, vector<15xi1> into i1
    %158 = math.ceil %11 : tensor<10x7x9xf32>
    %159 = arith.andi %false, %false : i1
    %160 = math.absf %8 : tensor<10x7x9xf32>
    memref.tensor_store %10, %alloc_10 : memref<15xi64>
    %161 = memref.atomic_rmw minu %c14851_i16, %145[%c0, %c0] : (i16, memref<10x7xi16>) -> i16
    %162 = math.ctlz %101 : tensor<15xi1>
    %163 = math.tan %11 : tensor<10x7x9xf32>
    %164 = arith.maxsi %c1511706817_i64, %c1947057534_i64 : i64
    %165 = math.absf %11 : tensor<10x7x9xf32>
    %166 = scf.execute_region -> vector<15xi64> {
      %271 = vector.extract_strided_slice %68 {offsets = [0], sizes = [2], strides = [1]} : vector<3xi32> to vector<2xi32>
      %272 = arith.addf %cst_0, %cst_0 : f16
      %273 = affine.apply affine_map<(d0, d1) -> (0)>(%30, %23)
      %274 = index.maxs %c1, %c9
      memref.alloca_scope  {
        %290 = vector.shuffle %59, %59 [1, 3, 4, 9, 11] : vector<6xi1>, vector<6xi1>
        %291 = memref.load %alloc_1[%c13] : memref<15xi1>
        %expanded_40 = tensor.expand_shape %8 [[0], [1], [2, 3]] : tensor<10x7x9xf32> into tensor<10x7x9x1xf32>
        %292 = bufferization.to_tensor %alloc_2 : memref<15xi1>
        %293 = arith.remui %c2053918835_i64, %c2053918835_i64 : i64
        %294 = arith.ori %c0_i16, %c-23836_i16 : i16
        %295 = arith.minui %c1511706817_i64, %c1947057534_i64 : i64
        %296 = math.absi %3 : tensor<10x7x9xi16>
        %297 = vector.flat_transpose %19 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
        %298 = math.fpowi %from_elements_21, %13 : tensor<10x7xf16>, tensor<10x7xi32>
        %299 = math.rsqrt %4 : tensor<10x7xf16>
        %300 = vector.broadcast %cst_0 : f16 to vector<9xf16>
        %301 = vector.broadcast %false : i1 to vector<9xi1>
        %302 = vector.maskedload %alloc_12[%c11], %301, %300 : memref<15xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
        %303 = arith.minui %c1947057534_i64, %c1082890889_i64 : i64
        %inserted_41 = tensor.insert %c14851_i16 into %18[%c5, %c0] : tensor<10x9xi16>
        %alloc_42 = memref.alloc() : memref<10x7xi1>
        %304 = vector.gather %alloc_42[%34, %c3] [%25], %26, %135 : memref<10x7xi1>, vector<15xi32>, vector<15xi1>, vector<15xi1> into vector<15xi1>
        %305 = index.floordivs %c4, %35
        %306 = arith.ceildivsi %c140901591_i32, %c140901591_i32 : i32
        %307 = arith.muli %c42279348_i32, %c0_i32 : i32
        memref.store %cst_0, %alloc_7[%c5, %c6, %c5] : memref<10x7x9xf16>
        %rank_43 = tensor.rank %93 : tensor<15xi1>
        %308 = vector.flat_transpose %138 {columns = 1 : i32, rows = 2 : i32} : vector<2xi32> -> vector<2xi32>
        %309 = vector.reduction <add>, %144 : vector<7xf32> into f32
        %310 = arith.maxui %c0_i32, %c140901591_i32 : i32
        %false_44 = arith.constant false
        %311 = arith.addi %c9281_i16, %c9281_i16 : i16
        %312 = math.atan %16 : tensor<10x7xf16>
        %313 = arith.minsi %c1947057534_i64, %c1082890889_i64 : i64
        %314 = math.sqrt %cst_0 : f16
        %315 = math.exp2 %expanded_40 : tensor<10x7x9x1xf32>
        %316 = math.ctlz %6 : tensor<10x7x9xi1>
        %317 = arith.minsi %72, %72 : i32
        %318 = arith.minsi %c1511706817_i64, %c1082890889_i64 : i64
      }
      %cast_38 = tensor.cast %12 : tensor<10x7xi16> to tensor<?x?xi16>
      %275 = math.floor %8 : tensor<10x7x9xf32>
      %c0_i64 = arith.constant 0 : i64
      %c0_i64_39 = arith.constant 0 : i64
      %276 = vector.transfer_read %alloc_10[%132], %c0_i64_39 : memref<15xi64>, vector<i64>
      %277 = vector.broadcast %c140901591_i32 : i32 to vector<10x7xi32>
      %278 = vector.gather %1[%c2, %66] [%277], %43, %43 : tensor<10x7xi1>, vector<10x7xi32>, vector<10x7xi1>, vector<10x7xi1> into vector<10x7xi1>
      %c1_i32 = arith.constant 1 : i32
      %279 = vector.transfer_read %13[%c15, %30], %c1_i32 : tensor<10x7xi32>, vector<i32>
      %280 = math.tan %2 : tensor<10x7x9xf16>
      %281 = math.fpowi %4, %13 : tensor<10x7xf16>, tensor<10x7xi32>
      %282 = arith.negf %cst_0 : f16
      %283 = affine.max affine_map<(d0, d1) -> ((d1 - d0 ceildiv 16 - (d1 - 64)) * 64)>(%273, %273)
      %284 = vector.broadcast %cst : f32 to vector<10x7x9xf32>
      %285 = vector.fma %284, %284, %284 : vector<10x7x9xf32>
      %286 = vector.broadcast %72 : i32 to vector<7xi32>
      %287 = vector.broadcast %true : i1 to vector<7xi1>
      %288 = vector.maskedload %alloc_13[%c0, %c1], %287, %286 : memref<10x7xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
      %289 = vector.broadcast %c1947057534_i64 : i64 to vector<15xi64>
      scf.yield %289 : vector<15xi64>
    }
    %167 = math.tan %16 : tensor<10x7xf16>
    %168 = arith.shrui %c665192677_i64, %c665192677_i64 : i64
    %169 = arith.ori %72, %72 : i32
    %170 = scf.execute_region -> index {
      %271 = arith.floordivsi %c-20598_i16, %c25323_i16 : i16
      %272 = arith.shli %c1511706817_i64, %c2053918835_i64 : i64
      memref.store %c25323_i16, %145[%c0, %c5] : memref<10x7xi16>
      %273 = math.absi %15 : tensor<10x7x9xi32>
      %274 = arith.andi %c665192677_i64, %c2053918835_i64 : i64
      %275 = index.sub %61, %c11
      %from_elements_38 = tensor.from_elements %cst_0, %151, %extracted, %cst_0, %extracted, %151, %extracted, %extracted, %cst_0, %cst_0, %extracted, %extracted, %extracted, %extracted, %151, %151, %cst_0, %cst_0, %extracted, %151, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %extracted, %extracted, %151, %151, %extracted, %extracted, %cst_0, %extracted, %extracted, %extracted, %extracted, %cst_0, %151, %151, %151, %151, %extracted, %151, %cst_0, %cst_0, %151, %extracted, %151, %151, %extracted, %extracted, %151, %151, %cst_0, %extracted, %151, %151, %extracted, %151, %cst_0, %extracted, %151, %151, %151, %extracted, %extracted, %extracted, %extracted, %151, %cst_0 : tensor<10x7xf16>
      %276 = arith.ceildivsi %c42279348_i32, %c42279348_i32 : i32
      %277 = vector.extract %144[3] : vector<7xf32>
      %c1_i64 = arith.constant 1 : i64
      %278 = vector.transfer_read %10[%c5], %c1_i64 : tensor<15xi64>, vector<i64>
      %279 = arith.remui %c1947057534_i64, %c1_i64 : i64
      %280 = index.sizeof
      %splat_39 = tensor.splat %c1947057534_i64 : tensor<10x7xi64>
      %generated_40 = tensor.generate %137, %66 {
      ^bb0(%arg0: index, %arg1: index):
        %284 = math.ipowi %22, %21 : tensor<i64>
        %285 = math.exp2 %5 : tensor<15xf16>
        %286 = vector.matrix_multiply %59, %135 {lhs_columns = 3 : i32, lhs_rows = 2 : i32, rhs_columns = 5 : i32} : (vector<6xi1>, vector<15xi1>) -> vector<10xi1>
        memref.tensor_store %5, %alloc_12 : memref<15xf16>
        tensor.yield %c-23836_i16 : i16
      } : tensor<?x?xi16>
      %281 = vector.broadcast %false : i1 to vector<7xi1>
      %282 = vector.maskedload %alloc_4[%c1], %281, %281 : memref<15xi1>, vector<7xi1>, vector<7xi1> into vector<7xi1>
      %283 = math.log1p %5 : tensor<15xf16>
      scf.yield %c5 : index
    }
    %171 = arith.muli %c-20598_i16, %c14851_i16 : i16
    %172 = math.cttz %expanded : tensor<10x7x1xi32>
    memref.tensor_store %20, %alloc_11 : memref<15xi64>
    %173 = vector.broadcast %cst : f32 to vector<10x7xf32>
    %174 = vector.fma %173, %115, %114 : vector<10x7xf32>
    %175 = math.sqrt %2 : tensor<10x7x9xf16>
    %176 = math.sqrt %5 : tensor<15xf16>
    %from_elements_27 = tensor.from_elements %72, %c140901591_i32, %72, %c140901591_i32, %c42279348_i32, %c0_i32, %c42279348_i32, %72, %72, %c140901591_i32, %c140901591_i32, %c0_i32, %c140901591_i32, %c42279348_i32, %c0_i32 : tensor<15xi32>
    %cast_28 = tensor.cast %16 : tensor<10x7xf16> to tensor<?x?xf16>
    %177 = vector.transpose %25, [0] : vector<15xi32> to vector<15xi32>
    %178 = vector.reduction <add>, %138 : vector<2xi32> into i32
    %rank_29 = tensor.rank %from_elements_27 : tensor<15xi32>
    %179 = math.absi %splat : tensor<10x7xi1>
    %180 = arith.minsi %c1947057534_i64, %c1082890889_i64 : i64
    scf.execute_region {
      %271 = vector.extract %25[14] : vector<15xi32>
      %272 = vector.flat_transpose %32 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
      %alloc_38 = memref.alloc() : memref<10x7x9xf32>
      memref.tensor_store %8, %alloc_38 : memref<10x7x9xf32>
      %273 = vector.extract_strided_slice %32 {offsets = [5], sizes = [3], strides = [1]} : vector<10xf16> to vector<3xf16>
      %274 = memref.load %alloc_7[%c0, %c5, %c2] : memref<10x7x9xf16>
      %alloc_39 = memref.alloc() : memref<10x7xi64>
      %275 = vector.broadcast %c1082890889_i64 : i64 to vector<10x7xi64>
      %276 = vector.broadcast %72 : i32 to vector<10x7xi32>
      %277 = vector.gather %alloc_39[%81, %rank] [%276], %43, %275 : memref<10x7xi64>, vector<10x7xi32>, vector<10x7xi1>, vector<10x7xi64> into vector<10x7xi64>
      %278 = math.ipowi %splat, %splat : tensor<10x7xi1>
      %cst_40 = arith.constant 0x4DB6FA5C : f32
      %279 = arith.floordivsi %c0_i32, %c0_i32 : i32
      %280 = arith.shrui %c0_i32, %72 : i32
      %281 = arith.minsi %c25323_i16, %c0_i16 : i16
      %282 = math.ipowi %splat_26, %splat_26 : tensor<15xi1>
      %283 = index.sub %c7, %c11
      %284 = math.log2 %4 : tensor<10x7xf16>
      %285 = vector.broadcast %cst : f32 to vector<10x7x9xf32>
      %286 = vector.fma %285, %285, %285 : vector<10x7x9xf32>
      %287 = vector.broadcast %c1947057534_i64 : i64 to vector<i64>
      %288 = vector.transfer_write %287, %10[%c10] : vector<i64>, tensor<15xi64>
      scf.yield
    }
    %181 = math.cos %cst : f32
    %182 = vector.transpose %114, [1, 0] : vector<10x7xf32> to vector<7x10xf32>
    %183 = math.sqrt %2 : tensor<10x7x9xf16>
    %184 = vector.broadcast %c42279348_i32 : i32 to vector<10x7xi32>
    %185 = vector.gather %alloc_13[%rank_29, %81] [%184], %43, %184 : memref<10x7xi32>, vector<10x7xi32>, vector<10x7xi1>, vector<10x7xi32> into vector<10x7xi32>
    %alloc_30 = memref.alloc() : memref<10x7xi64>
    memref.tensor_store %from_elements, %alloc_30 : memref<10x7xi64>
    %186 = memref.alloca_scope  -> (i32) {
      memref.store %72, %alloc_9[%c4, %c3, %c3] : memref<10x7x9xi32>
      %271 = arith.remf %extracted, %151 : f16
      %272 = arith.floordivsi %c-23836_i16, %c0_i16 : i16
      %alloca = memref.alloca() : memref<10x7xi1>
      %273 = math.powf %extracted, %151 : f16
      %274 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%103, %34, %c10, %47)
      %275 = memref.load %49[%c9, %c6, %c2] : memref<10x7x9xi32>
      %276 = vector.extract_strided_slice %25 {offsets = [5], sizes = [9], strides = [1]} : vector<15xi32> to vector<9xi32>
      %277 = scf.execute_region -> i16 {
        %297 = vector.create_mask %c9 : vector<15xi1>
        %298 = vector.matrix_multiply %25, %27 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
        %299 = math.log1p %11 : tensor<10x7x9xf32>
        %300 = vector.broadcast %cst : f32 to vector<10x7xf32>
        %301 = vector.fma %300, %173, %115 : vector<10x7xf32>
        %302 = memref.load %alloc_7[%c5, %c2, %c0] : memref<10x7x9xf16>
        %303 = bufferization.to_memref %from_elements : memref<10x7xi64>
        %304 = math.atan %cst_0 : f16
        %305 = index.ceildivs %c4, %c12
        %306 = arith.minui %false, %false : i1
        %307 = vector.broadcast %c1511706817_i64 : i64 to vector<10xi64>
        %308 = vector.broadcast %false : i1 to vector<10xi1>
        %309 = vector.maskedload %303[%c6, %c3], %308, %307 : memref<10x7xi64>, vector<10xi1>, vector<10xi64> into vector<10xi64>
        %310 = vector.broadcast %151 : f16 to vector<15xf16>
        %311 = vector.gather %14[%23] [%25], %297, %310 : tensor<15xf16>, vector<15xi32>, vector<15xi1>, vector<15xf16> into vector<15xf16>
        %312 = math.absi %15 : tensor<10x7x9xi32>
        %313 = math.floor %17 : tensor<10x7xf16>
        %314 = math.atan2 %8, %11 : tensor<10x7x9xf32>
        %315 = arith.maxsi %c-23836_i16, %c0_i16 : i16
        %316 = math.atan2 %extracted, %151 : f16
        scf.yield %c9281_i16 : i16
      }
      %278 = arith.divui %c665192677_i64, %c665192677_i64 : i64
      %279 = math.powf %2, %2 : tensor<10x7x9xf16>
      %280 = bufferization.clone %alloc_4 : memref<15xi1> to memref<15xi1>
      %281 = math.copysign %cst_0, %cst_0 : f16
      %282 = vector.matrix_multiply %25, %138 {lhs_columns = 1 : i32, lhs_rows = 15 : i32, rhs_columns = 2 : i32} : (vector<15xi32>, vector<2xi32>) -> vector<30xi32>
      %283 = scf.if %true -> (memref<10x7xi64>) {
        %297 = math.copysign %8, %8 : tensor<10x7x9xf32>
        %298 = vector.gather %alloc_9[%c0, %c2, %c6] [%25], %135, %25 : memref<10x7x9xi32>, vector<15xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
        %299 = math.round %11 : tensor<10x7x9xf32>
        %300 = vector.flat_transpose %19 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
        %301 = arith.maxsi %c0_i16, %c25323_i16 : i16
        %302 = index.ceildivs %39, %30
        %303 = vector.broadcast %34 : index to vector<15xindex>
        vector.scatter %alloc_5[%c4, %c2] [%303], %135, %27 : memref<10x7xi32>, vector<15xindex>, vector<15xi1>, vector<15xi32>
        %304 = arith.remf %cst, %cst : f32
        %alloc_41 = memref.alloc() : memref<10x7xi64>
        scf.yield %alloc_41 : memref<10x7xi64>
      } else {
        %297 = math.copysign %2, %2 : tensor<10x7x9xf16>
        %298 = vector.create_mask %rank, %137 : vector<10x7xi1>
        vector.print %43 : vector<10x7xi1>
        %299 = index.casts %c5 : index to i32
        %300 = affine.apply affine_map<(d0, d1) -> (-d1)>(%c0, %82)
        %301 = vector.broadcast %c2053918835_i64 : i64 to vector<i64>
        %302 = vector.transfer_write %301, %20[%300] : vector<i64>, tensor<15xi64>
        %303 = arith.maxf %151, %151 : f16
        %304 = index.divs %c1, %123
        %alloc_41 = memref.alloc() : memref<10x7xi64>
        scf.yield %alloc_41 : memref<10x7xi64>
      }
      %splat_38 = tensor.splat %false : tensor<10x7x9xi1>
      %284 = scf.execute_region -> index {
        %297 = index.maxs %c9, %c11
        %298 = math.cos %2 : tensor<10x7x9xf16>
        %299 = bufferization.clone %alloc_16 : memref<7x10xi32> to memref<7x10xi32>
        %300 = arith.divui %c0_i32, %c0_i32 : i32
        %splat_41 = tensor.splat %151 : tensor<10x7x9xf16>
        %301 = arith.muli %c-20598_i16, %c9281_i16 : i16
        %302 = index.mul %30, %c10
        %extracted_42 = tensor.extract %104[%c6, %c8] : tensor<10x9xi16>
        %303 = vector.broadcast %true : i1 to vector<7xi1>
        %304 = vector.maskedload %alloc[%c6, %c0, %c4], %303, %303 : memref<10x7x9xi1>, vector<7xi1>, vector<7xi1> into vector<7xi1>
        %305 = math.rsqrt %5 : tensor<15xf16>
        %306 = memref.realloc %alloc_4 : memref<15xi1> to memref<10xi1>
        %307 = vector.transpose %303, [0] : vector<7xi1> to vector<7xi1>
        %308 = arith.minui %c0_i16, %277 : i16
        memref.tensor_store %from_elements_27, %alloc_8 : memref<15xi32>
        %309 = math.fpowi %11, %15 : tensor<10x7x9xf32>, tensor<10x7x9xi32>
        %310 = arith.minui %c9281_i16, %c-23836_i16 : i16
        scf.yield %c11 : index
      }
      %alloca_39 = memref.alloca() : memref<10x7x9xi1>
      %285 = memref.atomic_rmw addi %c1947057534_i64, %283[%c5, %c3] : (i64, memref<10x7xi64>) -> i64
      %286 = vector.extract %174[7] : vector<10x7xf32>
      %287 = arith.shrui %c0_i16, %c25323_i16 : i16
      %288 = math.ctlz %c0_i16 : i16
      %289 = memref.alloca_scope  -> (memref<10x7x9xf32>) {
        %297 = vector.broadcast %c14851_i16 : i16 to vector<10x7x9xi16>
        %298 = vector.reduction <xor>, %25 : vector<15xi32> into i32
        %299 = arith.remf %151, %151 : f16
        %300 = math.ctlz %0 : tensor<10x7xi1>
        %301 = affine.max affine_map<(d0) -> (d0, (d0 floordiv 2) mod 8, 0, d0 * 4 - 8)>(%c12)
        affine.store %c42279348_i32, %alloc_5[%c7, %c14] : memref<10x7xi32>
        %302 = index.casts %284 : index to i32
        %303 = arith.divui %c0_i16, %c-23836_i16 : i16
        %304 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 mod 128)>(%30, %c1, %c12, %39)
        %305 = math.ceil %2 : tensor<10x7x9xf16>
        %cast_41 = tensor.cast %from_elements : tensor<10x7xi64> to tensor<?x?xi64>
        %306 = math.exp %11 : tensor<10x7x9xf32>
        affine.store %c25323_i16, %alloc_3[%c15, %c6] : memref<10x7xi16>
        %307 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %68, %68, %72 : vector<3xi32>, vector<3xi32> into i32
        %308 = vector.matrix_multiply %135, %26 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi1>, vector<15xi1>) -> vector<1xi1>
        %309 = index.sub %c12, %c0
        %310 = math.cttz %c-20598_i16 : i16
        %311 = bufferization.to_tensor %alloc_14 : memref<10x7xf16>
        %312 = math.rsqrt %extracted : f16
        %313 = affine.max affine_map<(d0) -> (d0 * 32 + 128, (d0 floordiv 64) mod 2, d0 * 32, d0)>(%274)
        %314 = math.fpowi %cst, %72 : f32, i32
        %315 = math.ctlz %3 : tensor<10x7x9xi16>
        %316 = vector.broadcast %cst : f32 to vector<10x7xf32>
        %317 = vector.fma %316, %173, %115 : vector<10x7xf32>
        %318 = arith.shrsi %c0_i32, %c140901591_i32 : i32
        %319 = index.sub %81, %c13
        %320 = vector.extract_strided_slice %26 {offsets = [5], sizes = [9], strides = [1]} : vector<15xi1> to vector<9xi1>
        memref.store %c140901591_i32, %alloc_8[%c7] : memref<15xi32>
        %321 = vector.broadcast %c42279348_i32 : i32 to vector<3x3xi32>
        %322 = vector.outerproduct %68, %68, %321 {kind = #vector.kind<minui>} : vector<3xi32>, vector<3xi32>
        %323 = arith.remsi %c42279348_i32, %c0_i32 : i32
        %324 = vector.extract %173[2] : vector<10x7xf32>
        %325 = math.fma %4, %311, %4 : tensor<10x7xf16>
        %326 = arith.divf %cst, %cst : f32
        %alloc_42 = memref.alloc() : memref<10x7x9xf32>
        memref.alloca_scope.return %alloc_42 : memref<10x7x9xf32>
      }
      %290 = math.exp %151 : f16
      %291 = index.castu %103 : index to i32
      %292 = math.atan %cst : f32
      memref.store %c0_i32, %alloc_13[%c1, %c4] : memref<10x7xi32>
      %293 = math.rsqrt %5 : tensor<15xf16>
      %294 = index.castu %284 : index to i32
      %295 = math.rsqrt %2 : tensor<10x7x9xf16>
      %rank_40 = tensor.rank %13 : tensor<10x7xi32>
      %296 = arith.minui %c-23836_i16, %c25323_i16 : i16
      memref.alloca_scope.return %c140901591_i32 : i32
    }
    %187 = memref.load %alloc_3[%c3, %c4] : memref<10x7xi16>
    %188 = math.log2 %14 : tensor<15xf16>
    %189 = bufferization.to_tensor %alloc_14 : memref<10x7xf16>
    %190 = math.exp2 %8 : tensor<10x7x9xf32>
    %191 = math.absf %14 : tensor<15xf16>
    %192 = vector.create_mask %122, %c8, %123 : vector<10x7x9xi1>
    %193 = math.log %14 : tensor<15xf16>
    %194 = arith.mulf %151, %extracted : f16
    %195 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %128, %128, %cst : vector<15xf32>, vector<15xf32> into f32
    %196 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%3 : tensor<10x7x9xi16>) {
    ^bb0(%out: i16):
      %271 = arith.remui %c1082890889_i64, %c1947057534_i64 : i64
      %272 = arith.addf %151, %extracted : f16
      %273 = arith.divui %c-23836_i16, %c9281_i16 : i16
      %274 = vector.extract_strided_slice %144 {offsets = [2], sizes = [4], strides = [1]} : vector<7xf32> to vector<4xf32>
      %275 = math.atan2 %151, %151 : f16
      %276 = index.floordivs %132, %c7
      %277 = math.log10 %2 : tensor<10x7x9xf16>
      %278 = bufferization.to_tensor %49 : memref<10x7x9xi32>
      %279 = arith.divui %c9281_i16, %c9281_i16 : i16
      %280 = math.log1p %cst : f32
      %collapsed = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<10x7x9xf32> into tensor<70x9xf32>
      %281 = math.exp2 %2 : tensor<10x7x9xf16>
      %282 = arith.minsi %false, %false : i1
      %splat_38 = tensor.splat %extracted : tensor<10x7xf16>
      %283 = tensor.empty() : tensor<70x9xf32>
      %mapped_39 = linalg.map ins(%collapsed : tensor<70x9xf32>) outs(%283 : tensor<70x9xf32>)
        (%in: f32) {
          %299 = memref.atomic_rmw assign %c2053918835_i64, %alloc_10[%c11] : (i64, memref<15xi64>) -> i64
          %300 = memref.realloc %alloc_10 : memref<15xi64> to memref<9xi64>
          %301 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %26, %26, %true : vector<15xi1>, vector<15xi1> into i1
          %302 = affine.load %alloc_9[%c13, %c5, %c15] : memref<10x7x9xi32>
          %303 = arith.xori %c0_i16, %c25323_i16 : i16
          %304 = vector.create_mask %c9, %276, %23 : vector<10x7x9xi1>
          %305 = memref.realloc %alloc_4 : memref<15xi1> to memref<15xi1>
          %306 = math.log1p %cst_0 : f16
          %307 = index.divs %c13, %c14
          %308 = arith.minui %c0_i16, %c-23836_i16 : i16
          %309 = math.powf %151, %cst_0 : f16
          %310 = math.absf %14 : tensor<15xf16>
          %311 = index.casts %c-20598_i16 : i16 to index
          %312 = vector.broadcast %in : f32 to vector<10x7xf32>
          %313 = vector.fma %312, %312, %312 : vector<10x7xf32>
          %314 = arith.addi %186, %c0_i32 : i32
          %315 = math.absf %8 : tensor<10x7x9xf32>
          %316 = arith.minsi %c0_i16, %out : i16
          %317 = vector.extract_strided_slice %192 {offsets = [4], sizes = [4], strides = [1]} : vector<10x7x9xi1> to vector<4x7x9xi1>
          %318 = math.cos %99 : tensor<10x10xf16>
          %319 = vector.matrix_multiply %59, %26 {lhs_columns = 3 : i32, lhs_rows = 2 : i32, rhs_columns = 5 : i32} : (vector<6xi1>, vector<15xi1>) -> vector<10xi1>
          %320 = arith.remsi %c25323_i16, %c14851_i16 : i16
          %321 = arith.addf %in, %in : f32
          %322 = math.sqrt %collapsed : tensor<70x9xf32>
          %323 = index.ceildivs %103, %80
          %324 = math.copysign %11, %8 : tensor<10x7x9xf32>
          %325 = bufferization.clone %alloc_14 : memref<10x7xf16> to memref<10x7xf16>
          %326 = math.atan %11 : tensor<10x7x9xf32>
          %alloc_41 = memref.alloc() : memref<10x7x9xf32>
          %327 = math.tan %151 : f16
          %328 = math.ipowi %c1947057534_i64, %c1511706817_i64 : i64
          %329 = arith.minui %out, %c9281_i16 : i16
          %cast_42 = tensor.cast %splat_38 : tensor<10x7xf16> to tensor<?x?xf16>
          %cst_43 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_43 : f32
        }
      %284 = math.fpowi %5, %from_elements_27 : tensor<15xf16>, tensor<15xi32>
      scf.execute_region {
        %299 = math.atan %2 : tensor<10x7x9xf16>
        %300 = math.absf %cst_0 : f16
        %301 = arith.remui %c1082890889_i64, %c665192677_i64 : i64
        %302 = vector.matrix_multiply %32, %19 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xf16>, vector<10xf16>) -> vector<1xf16>
        %303 = index.mul %80, %122
        %alloc_41 = memref.alloc() : memref<10x7xi16>
        %rank_42 = tensor.rank %20 : tensor<15xi64>
        %304 = tensor.empty(%137, %c13) : tensor<?x?xi16>
        %305 = arith.shrui %c-20598_i16, %c9281_i16 : i16
        %306 = index.divu %c7, %137
        %cast_43 = tensor.cast %93 : tensor<15xi1> to tensor<?xi1>
        %307 = index.sizeof
        %308 = vector.matrix_multiply %25, %138 {lhs_columns = 1 : i32, lhs_rows = 15 : i32, rhs_columns = 2 : i32} : (vector<15xi32>, vector<2xi32>) -> vector<30xi32>
        %alloca = memref.alloca() : memref<10x7xi64>
        %309 = vector.flat_transpose %308 {columns = 5 : i32, rows = 6 : i32} : vector<30xi32> -> vector<30xi32>
        %310 = math.atan %151 : f16
        scf.yield
      }
      %285 = math.copysign %2, %2 : tensor<10x7x9xf16>
      %286 = memref.realloc %alloc_8 : memref<15xi32> to memref<9xi32>
      %287 = arith.minui %c25323_i16, %c-20598_i16 : i16
      %288 = arith.cmpf ueq, %cst, %cst : f32
      %289 = vector.reduction <and>, %27 : vector<15xi32> into i32
      %290 = memref.alloca_scope  -> (f16) {
        %299 = math.exp2 %2 : tensor<10x7x9xf16>
        %from_elements_41 = tensor.from_elements %c1947057534_i64, %c1082890889_i64, %c665192677_i64, %c1511706817_i64, %c665192677_i64, %c1947057534_i64, %c1947057534_i64, %c1511706817_i64, %c1511706817_i64, %c1511706817_i64, %c1511706817_i64, %c1511706817_i64, %c665192677_i64, %c1082890889_i64, %c2053918835_i64, %c1511706817_i64, %c1947057534_i64, %c2053918835_i64, %c1082890889_i64, %c1082890889_i64, %c665192677_i64, %c1511706817_i64, %c1947057534_i64, %c665192677_i64, %c665192677_i64, %c1082890889_i64, %c1947057534_i64, %c2053918835_i64, %c665192677_i64, %c2053918835_i64, %c665192677_i64, %c1947057534_i64, %c1082890889_i64, %c1082890889_i64, %c1082890889_i64, %c1947057534_i64, %c665192677_i64, %c1947057534_i64, %c665192677_i64, %c2053918835_i64, %c665192677_i64, %c1511706817_i64, %c1511706817_i64, %c1511706817_i64, %c1511706817_i64, %c1082890889_i64, %c2053918835_i64, %c2053918835_i64, %c665192677_i64, %c1082890889_i64, %c665192677_i64, %c2053918835_i64, %c2053918835_i64, %c1511706817_i64, %c1511706817_i64, %c2053918835_i64, %c1947057534_i64, %c1082890889_i64, %c665192677_i64, %c1511706817_i64, %c1947057534_i64, %c2053918835_i64, %c665192677_i64, %c2053918835_i64, %c665192677_i64, %c1511706817_i64, %c1082890889_i64, %c1082890889_i64, %c2053918835_i64, %c665192677_i64, %c1511706817_i64, %c1082890889_i64, %c1082890889_i64, %c665192677_i64, %c2053918835_i64, %c665192677_i64, %c1947057534_i64, %c2053918835_i64, %c665192677_i64, %c665192677_i64, %c1082890889_i64, %c665192677_i64, %c665192677_i64, %c665192677_i64, %c1511706817_i64, %c1082890889_i64, %c1511706817_i64, %c2053918835_i64, %c665192677_i64, %c1082890889_i64, %c665192677_i64, %c2053918835_i64, %c665192677_i64, %c1947057534_i64, %c1947057534_i64, %c665192677_i64, %c1082890889_i64, %c1082890889_i64, %c1947057534_i64, %c2053918835_i64, %c665192677_i64, %c1082890889_i64, %c1947057534_i64, %c2053918835_i64, %c1082890889_i64, %c1082890889_i64, %c2053918835_i64, %c665192677_i64, %c1082890889_i64, %c1511706817_i64, %c1511706817_i64, %c1082890889_i64, %c665192677_i64, %c665192677_i64, %c665192677_i64, %c1082890889_i64, %c1082890889_i64, %c1947057534_i64, %c2053918835_i64, %c1947057534_i64, %c665192677_i64, %c2053918835_i64, %c2053918835_i64, %c1947057534_i64, %c1511706817_i64, %c1082890889_i64, %c1947057534_i64, %c1082890889_i64, %c2053918835_i64, %c665192677_i64, %c2053918835_i64, %c665192677_i64, %c1947057534_i64, %c1947057534_i64, %c1947057534_i64, %c1511706817_i64, %c1511706817_i64, %c665192677_i64, %c1511706817_i64, %c1511706817_i64, %c1082890889_i64, %c2053918835_i64, %c1082890889_i64, %c1511706817_i64, %c1511706817_i64, %c1947057534_i64, %c1947057534_i64, %c2053918835_i64, %c665192677_i64, %c665192677_i64, %c1082890889_i64, %c665192677_i64, %c665192677_i64, %c1947057534_i64, %c665192677_i64, %c665192677_i64, %c1082890889_i64, %c665192677_i64, %c1511706817_i64, %c665192677_i64, %c665192677_i64, %c1511706817_i64, %c1947057534_i64, %c2053918835_i64, %c665192677_i64, %c1511706817_i64, %c1511706817_i64, %c1947057534_i64, %c1947057534_i64, %c1082890889_i64, %c1082890889_i64, %c1947057534_i64, %c1082890889_i64, %c665192677_i64, %c665192677_i64, %c1511706817_i64, %c1082890889_i64, %c1082890889_i64, %c1082890889_i64, %c665192677_i64, %c665192677_i64, %c1511706817_i64, %c665192677_i64, %c665192677_i64, %c665192677_i64, %c1082890889_i64, %c1947057534_i64, %c1947057534_i64, %c1082890889_i64, %c1511706817_i64, %c2053918835_i64, %c665192677_i64, %c1511706817_i64, %c1082890889_i64, %c1947057534_i64, %c2053918835_i64, %c1947057534_i64, %c1947057534_i64, %c2053918835_i64, %c1082890889_i64, %c1082890889_i64, %c665192677_i64, %c1947057534_i64, %c665192677_i64, %c1082890889_i64, %c665192677_i64, %c1947057534_i64, %c1082890889_i64, %c2053918835_i64, %c665192677_i64, %c1082890889_i64, %c1082890889_i64, %c2053918835_i64, %c665192677_i64, %c665192677_i64, %c2053918835_i64, %c2053918835_i64, %c1511706817_i64, %c1082890889_i64, %c1947057534_i64, %c1082890889_i64, %c665192677_i64, %c1082890889_i64, %c1947057534_i64, %c2053918835_i64, %c1947057534_i64, %c1947057534_i64, %c1082890889_i64, %c1082890889_i64, %c665192677_i64, %c2053918835_i64, %c665192677_i64, %c665192677_i64, %c665192677_i64, %c665192677_i64, %c1082890889_i64, %c665192677_i64, %c1511706817_i64, %c665192677_i64, %c2053918835_i64, %c2053918835_i64, %c1947057534_i64, %c1082890889_i64, %c1511706817_i64, %c665192677_i64, %c1947057534_i64, %c1947057534_i64, %c1511706817_i64, %c1947057534_i64, %c1511706817_i64, %c1947057534_i64, %c665192677_i64, %c1082890889_i64, %c2053918835_i64, %c665192677_i64, %c2053918835_i64, %c665192677_i64, %c1082890889_i64, %c665192677_i64, %c2053918835_i64, %c1947057534_i64, %c2053918835_i64, %c1082890889_i64, %c665192677_i64, %c1082890889_i64, %c1511706817_i64, %c1947057534_i64, %c1947057534_i64, %c1511706817_i64, %c2053918835_i64, %c1082890889_i64, %c1511706817_i64, %c1511706817_i64, %c1511706817_i64, %c2053918835_i64, %c2053918835_i64, %c1082890889_i64, %c2053918835_i64, %c1511706817_i64, %c2053918835_i64, %c2053918835_i64, %c1511706817_i64, %c1947057534_i64, %c1511706817_i64, %c2053918835_i64, %c2053918835_i64, %c1082890889_i64, %c1511706817_i64, %c1082890889_i64, %c1947057534_i64, %c1082890889_i64, %c1511706817_i64, %c1511706817_i64, %c2053918835_i64, %c1511706817_i64, %c665192677_i64, %c665192677_i64, %c2053918835_i64, %c1511706817_i64, %c1947057534_i64, %c2053918835_i64, %c1511706817_i64, %c2053918835_i64, %c1947057534_i64, %c2053918835_i64, %c665192677_i64, %c1511706817_i64, %c2053918835_i64, %c1511706817_i64, %c1082890889_i64, %c1511706817_i64, %c1511706817_i64, %c1511706817_i64, %c2053918835_i64, %c1511706817_i64, %c1511706817_i64, %c1082890889_i64, %c1082890889_i64, %c2053918835_i64, %c2053918835_i64, %c2053918835_i64, %c1947057534_i64, %c1511706817_i64, %c665192677_i64, %c1082890889_i64, %c2053918835_i64, %c1947057534_i64, %c2053918835_i64, %c1947057534_i64, %c665192677_i64, %c1947057534_i64, %c665192677_i64, %c2053918835_i64, %c1947057534_i64, %c1947057534_i64, %c665192677_i64, %c1947057534_i64, %c2053918835_i64, %c1082890889_i64, %c1947057534_i64, %c1947057534_i64, %c1511706817_i64, %c2053918835_i64, %c1511706817_i64, %c665192677_i64, %c1082890889_i64, %c1947057534_i64, %c1511706817_i64, %c665192677_i64, %c665192677_i64, %c1511706817_i64, %c1511706817_i64, %c1082890889_i64, %c665192677_i64, %c665192677_i64, %c1511706817_i64, %c665192677_i64, %c1082890889_i64, %c1511706817_i64, %c1082890889_i64, %c665192677_i64, %c665192677_i64, %c1082890889_i64, %c665192677_i64, %c1947057534_i64, %c1082890889_i64, %c2053918835_i64, %c665192677_i64, %c665192677_i64, %c1947057534_i64, %c1947057534_i64, %c665192677_i64, %c665192677_i64, %c2053918835_i64, %c665192677_i64, %c665192677_i64, %c1511706817_i64, %c1511706817_i64, %c1511706817_i64, %c1947057534_i64, %c1947057534_i64, %c665192677_i64, %c1082890889_i64, %c2053918835_i64, %c665192677_i64, %c2053918835_i64, %c2053918835_i64, %c1947057534_i64, %c2053918835_i64, %c665192677_i64, %c1947057534_i64, %c1511706817_i64, %c1947057534_i64, %c1082890889_i64, %c1511706817_i64, %c665192677_i64, %c1082890889_i64, %c1511706817_i64, %c1947057534_i64, %c665192677_i64, %c1082890889_i64, %c1082890889_i64, %c1511706817_i64, %c2053918835_i64, %c1082890889_i64, %c2053918835_i64, %c665192677_i64, %c1082890889_i64, %c1082890889_i64, %c2053918835_i64, %c1082890889_i64, %c665192677_i64, %c1947057534_i64, %c665192677_i64, %c2053918835_i64, %c665192677_i64, %c1082890889_i64, %c1082890889_i64, %c1082890889_i64, %c1511706817_i64, %c665192677_i64, %c2053918835_i64, %c665192677_i64, %c1947057534_i64, %c1947057534_i64, %c1082890889_i64, %c665192677_i64, %c1947057534_i64, %c1082890889_i64, %c1511706817_i64, %c1947057534_i64, %c665192677_i64, %c1082890889_i64, %c1511706817_i64, %c665192677_i64, %c1082890889_i64, %c1947057534_i64, %c665192677_i64, %c1511706817_i64, %c665192677_i64, %c665192677_i64, %c2053918835_i64, %c2053918835_i64, %c1082890889_i64, %c665192677_i64, %c1947057534_i64, %c1082890889_i64, %c2053918835_i64, %c2053918835_i64, %c665192677_i64, %c665192677_i64, %c1947057534_i64, %c1947057534_i64, %c1947057534_i64, %c665192677_i64, %c665192677_i64, %c1511706817_i64, %c665192677_i64, %c1511706817_i64, %c1947057534_i64, %c1511706817_i64, %c665192677_i64, %c665192677_i64, %c1511706817_i64, %c1947057534_i64, %c1082890889_i64, %c2053918835_i64, %c665192677_i64, %c1511706817_i64, %c665192677_i64, %c1511706817_i64, %c1947057534_i64, %c1947057534_i64, %c665192677_i64, %c665192677_i64, %c665192677_i64, %c1511706817_i64, %c665192677_i64, %c1947057534_i64, %c2053918835_i64, %c2053918835_i64, %c1511706817_i64, %c1082890889_i64, %c665192677_i64, %c2053918835_i64, %c1082890889_i64, %c665192677_i64, %c1511706817_i64, %c1082890889_i64, %c1082890889_i64, %c665192677_i64, %c2053918835_i64, %c665192677_i64, %c1947057534_i64, %c1511706817_i64, %c1511706817_i64, %c1511706817_i64, %c2053918835_i64, %c2053918835_i64, %c665192677_i64, %c665192677_i64, %c1947057534_i64, %c1511706817_i64, %c2053918835_i64, %c1511706817_i64, %c1947057534_i64, %c665192677_i64, %c1947057534_i64, %c665192677_i64, %c2053918835_i64, %c1511706817_i64, %c1511706817_i64, %c1947057534_i64, %c1082890889_i64, %c1511706817_i64, %c1082890889_i64, %c1511706817_i64, %c665192677_i64, %c665192677_i64, %c1947057534_i64, %c1947057534_i64, %c1947057534_i64, %c2053918835_i64, %c665192677_i64, %c665192677_i64, %c665192677_i64, %c1511706817_i64, %c665192677_i64, %c665192677_i64, %c1082890889_i64, %c2053918835_i64, %c2053918835_i64, %c1082890889_i64, %c1511706817_i64, %c2053918835_i64, %c1947057534_i64, %c665192677_i64, %c1082890889_i64, %c1082890889_i64, %c665192677_i64, %c1511706817_i64, %c665192677_i64, %c1947057534_i64, %c1511706817_i64, %c1082890889_i64, %c2053918835_i64, %c1947057534_i64, %c2053918835_i64, %c2053918835_i64, %c2053918835_i64, %c1082890889_i64, %c1082890889_i64, %c1082890889_i64, %c1082890889_i64, %c1511706817_i64, %c1511706817_i64, %c1082890889_i64, %c665192677_i64, %c1082890889_i64, %c1511706817_i64, %c1947057534_i64, %c2053918835_i64, %c1947057534_i64, %c1082890889_i64, %c665192677_i64, %c1947057534_i64, %c665192677_i64, %c2053918835_i64, %c2053918835_i64, %c1511706817_i64, %c665192677_i64, %c1511706817_i64, %c1082890889_i64, %c1947057534_i64, %c665192677_i64, %c665192677_i64, %c665192677_i64, %c1082890889_i64, %c1511706817_i64, %c665192677_i64, %c1947057534_i64, %c665192677_i64, %c2053918835_i64, %c665192677_i64, %c665192677_i64, %c2053918835_i64, %c1947057534_i64, %c665192677_i64, %c1082890889_i64, %c1511706817_i64, %c1947057534_i64, %c1511706817_i64, %c2053918835_i64, %c1947057534_i64, %c665192677_i64, %c1511706817_i64, %c1947057534_i64, %c1511706817_i64, %c2053918835_i64, %c1511706817_i64, %c1947057534_i64, %c2053918835_i64, %c1082890889_i64, %c1082890889_i64, %c2053918835_i64, %c1082890889_i64, %c2053918835_i64, %c665192677_i64, %c2053918835_i64, %c1947057534_i64, %c665192677_i64, %c2053918835_i64, %c1511706817_i64, %c665192677_i64, %c1082890889_i64, %c2053918835_i64, %c1947057534_i64, %c665192677_i64, %c2053918835_i64, %c1082890889_i64, %c665192677_i64, %c2053918835_i64, %c1511706817_i64, %c1947057534_i64, %c1947057534_i64, %c2053918835_i64, %c1082890889_i64, %c1082890889_i64, %c1511706817_i64, %c1947057534_i64 : tensor<10x7x9xi64>
        %300 = index.castu %c10 : index to i32
        %301 = math.tan %14 : tensor<15xf16>
        %302 = math.ipowi %c42279348_i32, %c42279348_i32 : i32
        %303 = arith.ori %false, %true : i1
        %304 = math.atan %cst_0 : f16
        %305 = index.ceildivu %c1, %c14
        %306 = math.ipowi %278, %278 : tensor<10x7x9xi32>
        %307 = vector.extract_strided_slice %192 {offsets = [4], sizes = [3], strides = [1]} : vector<10x7x9xi1> to vector<3x7x9xi1>
        %308 = affine.load %alloc_7[%c6, %c8, %c1] : memref<10x7x9xf16>
        %309 = vector.transpose %185, [1, 0] : vector<10x7xi32> to vector<7x10xi32>
        %alloc_42 = memref.alloc() : memref<70x9xf32>
        memref.tensor_store %collapsed, %alloc_42 : memref<70x9xf32>
        %310 = math.ctlz %3 : tensor<10x7x9xi16>
        %311 = arith.minui %c9281_i16, %c14851_i16 : i16
        %312 = index.castu %305 : index to i32
        %313 = arith.minui %186, %c140901591_i32 : i32
        %314 = index.ceildivs %rank, %34
        %315 = arith.remsi %186, %c0_i32 : i32
        %alloc_43 = memref.alloc() : memref<7x9xi64>
        %316 = tensor.empty() : tensor<10x9xi64>
        %317 = linalg.matmul ins(%from_elements_24, %alloc_43 : tensor<10x7xi64>, memref<7x9xi64>) outs(%316 : tensor<10x9xi64>) -> tensor<10x9xi64>
        %318 = math.rsqrt %308 : f16
        %319 = bufferization.to_tensor %alloc_4 : memref<15xi1>
        memref.tensor_store %13, %alloc_5 : memref<10x7xi32>
        %cast_44 = tensor.cast %4 : tensor<10x7xf16> to tensor<?x?xf16>
        %320 = arith.minsi %false, %false : i1
        %321 = math.log10 %308 : f16
        %322 = index.maxs %305, %c7
        %323 = bufferization.clone %alloc_7 : memref<10x7x9xf16> to memref<10x7x9xf16>
        %324 = index.ceildivu %69, %170
        %325 = math.tanh %from_elements_21 : tensor<10x7xf16>
        %326 = arith.minui %out, %c25323_i16 : i16
        memref.store %true, %alloc[%c8, %c4, %c8] : memref<10x7x9xi1>
        memref.alloca_scope.return %151 : f16
      }
      %291 = tensor.empty() : tensor<10x7xi32>
      %mapped_40 = linalg.map ins(%alloc_13, %13 : memref<10x7xi32>, tensor<10x7xi32>) outs(%291 : tensor<10x7xi32>)
        (%in: i32, %in_41: i32) {
          %299 = vector.extract_strided_slice %43 {offsets = [7], sizes = [2], strides = [1]} : vector<10x7xi1> to vector<2x7xi1>
          %300 = math.atan %5 : tensor<15xf16>
          %from_elements_42 = tensor.from_elements %c140901591_i32, %in_41, %c0_i32, %c0_i32, %c42279348_i32, %in_41, %186, %c140901591_i32, %c42279348_i32, %in, %186, %c42279348_i32, %c140901591_i32, %186, %in : tensor<15xi32>
          %301 = arith.minui %c-23836_i16, %c9281_i16 : i16
          %302 = math.floor %16 : tensor<10x7xf16>
          %rank_43 = tensor.rank %15 : tensor<10x7x9xi32>
          %303 = vector.shuffle %43, %43 [0, 1, 3, 4, 5, 8, 9, 11, 17, 18, 19] : vector<10x7xi1>, vector<10x7xi1>
          %304 = math.fma %8, %8, %11 : tensor<10x7x9xf32>
          %305 = index.maxs %c13, %34
          %306 = vector.transpose %115, [0, 1] : vector<10x7xf32> to vector<10x7xf32>
          %307 = arith.minui %c1082890889_i64, %c1511706817_i64 : i64
          %collapsed_44 = tensor.collapse_shape %278 [[0, 1], [2]] : tensor<10x7x9xi32> into tensor<70x9xi32>
          memref.store %c0_i32, %49[%c0, %c6, %c3] : memref<10x7x9xi32>
          %308 = vector.broadcast %c0_i32 : i32 to vector<9xi32>
          %309 = vector.broadcast %true : i1 to vector<9xi1>
          %310 = vector.maskedload %alloc_9[%c6, %c5, %c7], %309, %308 : memref<10x7x9xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
          %311 = memref.load %alloc_13[%c3, %c5] : memref<10x7xi32>
          %312 = math.atan %8 : tensor<10x7x9xf32>
          %313 = math.tan %2 : tensor<10x7x9xf16>
          %314 = index.ceildivs %39, %c2
          %315 = math.floor %cst_0 : f16
          %316 = math.fma %8, %8, %8 : tensor<10x7x9xf32>
          %317 = memref.atomic_rmw ori %c0_i32, %alloc_5[%c0, %c1] : (i32, memref<10x7xi32>) -> i32
          %318 = arith.cmpf oge, %290, %151 : f16
          %319 = arith.addi %186, %c140901591_i32 : i32
          %320 = index.mul %rank, %rank_43
          %false_45 = arith.constant false
          %321 = math.cttz %c665192677_i64 : i64
          %322 = math.cos %14 : tensor<15xf16>
          %323 = memref.load %49[%c6, %c4, %c0] : memref<10x7x9xi32>
          %324 = index.sub %314, %c9
          %325 = vector.maskedload %49[%c8, %c2, %c0], %309, %310 : memref<10x7x9xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
          %326 = vector.broadcast %cst : f32 to vector<7x7xf32>
          %327 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %174, %114, %326 : vector<10x7xf32>, vector<10x7xf32> into vector<7x7xf32>
          %328 = math.ctlz %13 : tensor<10x7xi32>
          %c0_i32_46 = arith.constant 0 : i32
          linalg.yield %c0_i32_46 : i32
        }
      %292 = vector.reduction <add>, %135 : vector<15xi1> into i1
      %293 = math.sqrt %from_elements_21 : tensor<10x7xf16>
      %294 = bufferization.to_tensor %alloc_3 : memref<10x7xi16>
      scf.execute_region {
        %299 = vector.broadcast %c0_i32 : i32 to vector<9xi32>
        vector.transfer_write %299, %alloc_16[%103, %c9] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xi32>, memref<7x10xi32>
        %300 = affine.load %alloc[%c8, %c5, %c5] : memref<10x7x9xi1>
        %301 = vector.shuffle %115, %114 [0, 2, 4, 5, 7, 12, 13, 17, 19] : vector<10x7xf32>, vector<10x7xf32>
        %302 = vector.broadcast %false : i1 to vector<7x7x9xi1>
        %303 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %43, %192, %302 : vector<10x7xi1>, vector<10x7x9xi1> into vector<7x7x9xi1>
        %304 = vector.broadcast %c25323_i16 : i16 to vector<9xi16>
        %305 = vector.broadcast %false : i1 to vector<9xi1>
        %306 = vector.maskedload %alloc_3[%c2, %c6], %305, %304 : memref<10x7xi16>, vector<9xi1>, vector<9xi16> into vector<9xi16>
        %307 = arith.remui %186, %c42279348_i32 : i32
        %cst_41 = arith.constant 0x4E6A6BAC : f32
        %308 = index.divu %276, %69
        %309 = math.absf %11 : tensor<10x7x9xf32>
        %310 = index.castu %66 : index to i32
        %311 = math.expm1 %collapsed : tensor<70x9xf32>
        %312 = arith.maxsi %true, %false : i1
        %313 = arith.remui %c2053918835_i64, %c1511706817_i64 : i64
        %314 = tensor.empty() : tensor<7x7xi1>
        %315 = tensor.empty() : tensor<10x7xi1>
        %316 = linalg.matmul ins(%splat, %314 : tensor<10x7xi1>, tensor<7x7xi1>) outs(%315 : tensor<10x7xi1>) -> tensor<10x7xi1>
        %317 = index.ceildivs %c2, %123
        %318 = index.casts %c1082890889_i64 : i64 to index
        scf.yield
      }
      %295 = math.ipowi %3, %3 : tensor<10x7x9xi16>
      %296 = index.floordivs %c14, %66
      %297 = math.expm1 %cst_0 : f16
      %298 = arith.maxsi %out, %c-23836_i16 : i16
      linalg.yield %c-23836_i16 : i16
    } -> tensor<10x7x9xi16>
    %197 = arith.muli %c2053918835_i64, %c1511706817_i64 : i64
    %198 = memref.realloc %alloc_4 : memref<15xi1> to memref<10xi1>
    %199 = index.ceildivs %c10, %39
    %200 = vector.broadcast %rank : index to vector<10xindex>
    %201 = vector.broadcast %true : i1 to vector<10xi1>
    vector.scatter %alloc[%c0, %c1, %c5] [%200], %201, %201 : memref<10x7x9xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
    %202 = index.divs %82, %c4
    %203 = vector.broadcast %c0_i16 : i16 to vector<15xi16>
    %204 = affine.apply affine_map<(d0, d1, d2) -> (d2 - d0 floordiv 16 + 4)>(%c0, %c9, %c8)
    %205 = arith.mulf %cst, %cst : f32
    %206 = vector.reduction <add>, %138 : vector<2xi32> into i32
    %207 = bufferization.clone %57 : memref<15xi32> to memref<15xi32>
    %208 = math.fpowi %2, %15 : tensor<10x7x9xf16>, tensor<10x7x9xi32>
    %209 = vector.reduction <add>, %32 : vector<10xf16> into f16
    %210 = math.exp %cst : f32
    %211 = math.exp %8 : tensor<10x7x9xf32>
    vector.print %27 : vector<15xi32>
    %212 = arith.muli %c1082890889_i64, %c2053918835_i64 : i64
    %213 = vector.broadcast %c-23836_i16 : i16 to vector<7x9xi16>
    %214 = vector.transfer_write %213, %9[%204, %82, %39] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<7x9xi16>, tensor<10x7x9xi16>
    %alloc_31 = memref.alloc() : memref<10x7xi1>
    memref.tensor_store %0, %alloc_31 : memref<10x7xi1>
    %cast_32 = tensor.cast %splat : tensor<10x7xi1> to tensor<?x?xi1>
    %215 = tensor.empty() : tensor<7xi32>
    %216 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%49, %215, %215 : memref<10x7x9xi32>, tensor<7xi32>, tensor<7xi32>) outs(%15 : tensor<10x7x9xi32>) {
    ^bb0(%in: i32, %in_38: i32, %in_39: i32, %out: i32):
      %271 = index.sizeof
      %272 = index.maxs %c5, %103
      %273 = memref.realloc %57 : memref<15xi32> to memref<9xi32>
      %274 = math.log10 %4 : tensor<10x7xf16>
      %275 = arith.addf %extracted, %extracted : f16
      %false_40 = index.bool.constant false
      %276 = arith.shrui %c25323_i16, %c0_i16 : i16
      %277 = math.log10 %17 : tensor<10x7xf16>
      %278 = math.atan %from_elements_21 : tensor<10x7xf16>
      %279 = math.absi %6 : tensor<10x7x9xi1>
      %280 = math.copysign %2, %2 : tensor<10x7x9xf16>
      %281 = arith.remui %c9281_i16, %c14851_i16 : i16
      %282 = vector.bitcast %43 : vector<10x7xi1> to vector<10x7xi1>
      %283 = affine.apply affine_map<(d0, d1, d2, d3) -> (-((d1 + d3) * 64 + d2))>(%c5, %c14, %23, %82)
      %284 = math.copysign %11, %8 : tensor<10x7x9xf32>
      %285 = arith.maxui %186, %in_39 : i32
      %286 = vector.create_mask %c9, %c7 : vector<10x7xi1>
      %287 = math.absi %from_elements : tensor<10x7xi64>
      %288 = math.log %cst_0 : f16
      %289 = affine.max affine_map<(d0, d1) -> (d0 * 2, d0 * 2)>(%61, %c12)
      %290 = index.ceildivs %170, %61
      %291 = vector.broadcast %186 : i32 to vector<7xi32>
      %292 = vector.broadcast %false : i1 to vector<7xi1>
      %293 = vector.maskedload %57[%c4], %292, %291 : memref<15xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
      %294 = index.divs %123, %148
      %295 = math.ceil %from_elements_21 : tensor<10x7xf16>
      %296 = vector.broadcast %false : i1 to vector<7x7xi1>
      %297 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %282, %43, %296 : vector<10x7xi1>, vector<10x7xi1> into vector<7x7xi1>
      %298 = vector.broadcast %false : i1 to vector<7x7xi1>
      %299 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %286, %286, %298 : vector<10x7xi1>, vector<10x7xi1> into vector<7x7xi1>
      %300 = vector.insertelement %cst, %128[%c4 : index] : vector<15xf32>
      %301 = arith.cmpf uge, %extracted, %151 : f16
      %302 = math.tan %14 : tensor<15xf16>
      %303 = math.fma %cst, %cst, %cst : f32
      %304 = memref.realloc %57 : memref<15xi32> to memref<7xi32>
      %305 = index.casts %c7 : index to i32
      linalg.yield %72 : i32
    } -> tensor<10x7x9xi32>
    %217 = math.exp2 %5 : tensor<15xf16>
    %inserted = tensor.insert %c9281_i16 into %18[%c9, %c5] : tensor<10x9xi16>
    %218 = affine.load %alloc_5[%c9, %c4] : memref<10x7xi32>
    %219 = scf.index_switch %c0 -> tensor<10x7xi64> 
    case 1 {
      %271 = bufferization.to_tensor %alloc : memref<10x7x9xi1>
      %272 = arith.remsi %72, %c42279348_i32 : i32
      %273 = vector.broadcast %cst : f32 to vector<10x7xf32>
      %274 = vector.fma %273, %174, %114 : vector<10x7xf32>
      %275 = arith.cmpf ord, %151, %extracted : f16
      %276 = math.sqrt %189 : tensor<10x7xf16>
      %false_38 = index.bool.constant false
      %277 = math.rsqrt %11 : tensor<10x7x9xf32>
      %278 = arith.shrui %186, %218 : i32
      %279 = math.rsqrt %5 : tensor<15xf16>
      %280 = math.log10 %151 : f16
      %281 = vector.bitcast %203 : vector<15xi16> to vector<15xi16>
      %282 = arith.muli %c1082890889_i64, %c2053918835_i64 : i64
      %283 = math.rsqrt %11 : tensor<10x7x9xf32>
      %284 = math.atan %2 : tensor<10x7x9xf16>
      %285 = arith.maxsi %c140901591_i32, %72 : i32
      %286 = arith.minsi %c1947057534_i64, %c1947057534_i64 : i64
      scf.yield %from_elements : tensor<10x7xi64>
    }
    default {
      %271 = arith.minsi %c-20598_i16, %c14851_i16 : i16
      %272 = arith.cmpf olt, %cst, %cst : f32
      %true_38 = arith.constant true
      %273 = math.atan2 %14, %5 : tensor<15xf16>
      %274 = math.log10 %11 : tensor<10x7x9xf32>
      %275 = scf.execute_region -> index {
        %284 = vector.broadcast %72 : i32 to vector<15x15xi32>
        %285 = vector.outerproduct %25, %25, %284 {kind = #vector.kind<minui>} : vector<15xi32>, vector<15xi32>
        %286 = math.cttz %false : i1
        %287 = math.log %11 : tensor<10x7x9xf32>
        %288 = index.maxs %c1, %c2
        %289 = vector.transpose %43, [0, 1] : vector<10x7xi1> to vector<10x7xi1>
        %290 = index.sizeof
        %291 = arith.shrsi %c0_i16, %c-23836_i16 : i16
        %292 = math.fpowi %8, %15 : tensor<10x7x9xf32>, tensor<10x7x9xi32>
        %293 = math.copysign %8, %11 : tensor<10x7x9xf32>
        %294 = index.divs %202, %c0
        %295 = memref.load %alloc_15[%c2, %c5] : memref<10x7xi16>
        %296 = vector.transpose %129, [0] : vector<15xf32> to vector<15xf32>
        %297 = vector.broadcast %c665192677_i64 : i64 to vector<15xi64>
        %298 = vector.gather %from_elements[%c10, %131] [%27], %26, %297 : tensor<10x7xi64>, vector<15xi32>, vector<15xi1>, vector<15xi64> into vector<15xi64>
        %299 = vector.broadcast %extracted : f16 to vector<15xf16>
        %300 = index.maxs %30, %122
        %301 = index.sizeof
        scf.yield %c6 : index
      }
      %276 = math.ctlz %from_elements_27 : tensor<15xi32>
      %277 = math.atan2 %4, %189 : tensor<10x7xf16>
      memref.tensor_store %20, %alloc_11 : memref<15xi64>
      %278 = vector.bitcast %68 : vector<3xi32> to vector<3xf32>
      %279 = math.tan %16 : tensor<10x7xf16>
      %280 = arith.remf %cst_0, %151 : f16
      %281 = math.exp2 %14 : tensor<15xf16>
      %282 = math.cttz %c42279348_i32 : i32
      %alloc_39 = memref.alloc() : memref<10x9xi16>
      memref.tensor_store %reduced, %alloc_39 : memref<10x9xi16>
      %283 = math.floor %2 : tensor<10x7x9xf16>
      scf.yield %from_elements : tensor<10x7xi64>
    }
    %220 = index.ceildivu %c15, %c1
    %221 = index.sub %c9, %c12
    %generated_33 = tensor.generate %122 {
    ^bb0(%arg0: index, %arg1: index, %arg2: index):
      %271 = affine.max affine_map<(d0, d1) -> (d0, (d1 floordiv 128) floordiv 2, d0 * 128, (d1 floordiv 128) floordiv 2)>(%c13, %c5)
      %272 = index.castu %82 : index to i32
      %273 = tensor.empty() : tensor<10x7xf32>
      %274 = vector.gather %273[%rank_29, %c9] [%184], %43, %173 : tensor<10x7xf32>, vector<10x7xi32>, vector<10x7xi1>, vector<10x7xf32> into vector<10x7xf32>
      %275 = arith.floordivsi %c1511706817_i64, %c1082890889_i64 : i64
      tensor.yield %c1082890889_i64 : i64
    } : tensor<?x7x9xi64>
    scf.execute_region {
      %generated_38 = tensor.generate %c2 {
      ^bb0(%arg0: index):
        %284 = math.fpowi %2, %15 : tensor<10x7x9xf16>, tensor<10x7x9xi32>
        %285 = math.log %4 : tensor<10x7xf16>
        %286 = vector.broadcast %false : i1 to vector<i1>
        %287 = vector.transfer_write %286, %93[%123] : vector<i1>, tensor<15xi1>
        %collapsed = tensor.collapse_shape %99 [[0, 1]] : tensor<10x10xf16> into tensor<100xf16>
        tensor.yield %extracted : f16
      } : tensor<?xf16>
      %271 = memref.load %alloc_9[%c2, %c0, %c7] : memref<10x7x9xi32>
      %rank_39 = tensor.rank %generated : tensor<?xi64>
      %272 = vector.extract %43[8] : vector<10x7xi1>
      %273 = index.sub %35, %66
      %274 = arith.minsi %c42279348_i32, %218 : i32
      %275 = math.exp2 %189 : tensor<10x7xf16>
      %276 = math.ipowi %c0_i16, %c-20598_i16 : i16
      %277 = math.cos %from_elements_21 : tensor<10x7xf16>
      %278 = index.ceildivs %148, %c6
      %alloca = memref.alloca() : memref<15xi16>
      %279 = arith.subi %218, %72 : i32
      %280 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %135, %135, %true : vector<15xi1>, vector<15xi1> into i1
      %281 = vector.create_mask %103, %148, %c4 : vector<10x7x9xi1>
      %282 = arith.remui %c1511706817_i64, %c665192677_i64 : i64
      %283 = math.tan %4 : tensor<10x7xf16>
      scf.yield
    }
    %alloc_34 = memref.alloc() : memref<10x9xi16>
    memref.tensor_store %104, %alloc_34 : memref<10x9xi16>
    %222 = memref.atomic_rmw mulf %cst_0, %alloc_7[%c4, %c6, %c8] : (f16, memref<10x7x9xf16>) -> f16
    %223 = tensor.empty() : tensor<10x10xi32>
    %224 = linalg.matmul ins(%13, %54 : tensor<10x7xi32>, tensor<7x10xi32>) outs(%223 : tensor<10x10xi32>) -> tensor<10x10xi32>
    %225 = index.floordivs %202, %131
    %226 = index.divs %c14, %122
    %inserted_35 = tensor.insert %c1511706817_i64 into %generated_33[%c0, %c1, %c3] : tensor<?x7x9xi64>
    %227 = index.floordivs %c15, %c0
    %228 = math.atan %2 : tensor<10x7x9xf16>
    %229 = arith.muli %218, %c42279348_i32 : i32
    %230 = arith.andi %c1511706817_i64, %c2053918835_i64 : i64
    %231 = arith.shli %c1082890889_i64, %c1511706817_i64 : i64
    %232 = arith.floordivsi %c1082890889_i64, %c2053918835_i64 : i64
    %233 = memref.load %alloc_3[%c1, %c2] : memref<10x7xi16>
    vector.print %213 : vector<7x9xi16>
    %234 = arith.maxui %c1947057534_i64, %c1511706817_i64 : i64
    %235 = arith.addf %cst, %cst : f32
    %236 = bufferization.to_tensor %207 : memref<15xi32>
    %237 = index.divu %204, %202
    %238 = vector.load %alloc_6[%c7, %c5] : memref<10x7xi16>, vector<15xi16>
    %239 = vector.broadcast %c-20598_i16 : i16 to vector<15x15xi16>
    %240 = vector.outerproduct %238, %203, %239 {kind = #vector.kind<and>} : vector<15xi16>, vector<15xi16>
    %241 = arith.subi %c0_i32, %186 : i32
    %242 = vector.broadcast %c1511706817_i64 : i64 to vector<10x7xi64>
    %243 = vector.gather %alloc_10[%237] [%184], %43, %242 : memref<15xi64>, vector<10x7xi32>, vector<10x7xi1>, vector<10x7xi64> into vector<10x7xi64>
    %244 = index.divu %237, %c11
    %245 = math.copysign %cst, %cst : f32
    %246 = arith.cmpf uge, %cst_0, %cst_0 : f16
    %247 = vector.broadcast %c25323_i16 : i16 to vector<15xi16>
    %248 = arith.andi %c25323_i16, %c0_i16 : i16
    %cast_36 = tensor.cast %21 : tensor<i64> to tensor<i64>
    %249 = arith.addf %cst_0, %cst_0 : f16
    %250 = vector.broadcast %c4 : index to vector<7xindex>
    %251 = vector.broadcast %false : i1 to vector<7xi1>
    %252 = vector.broadcast %186 : i32 to vector<7xi32>
    vector.scatter %alloc_13[%c6, %c5] [%250], %251, %252 : memref<10x7xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
    %253 = arith.subi %c-20598_i16, %c0_i16 : i16
    %254 = vector.transpose %174, [1, 0] : vector<10x7xf32> to vector<7x10xf32>
    %255 = tensor.empty() : tensor<15xi32>
    %mapped = linalg.map ins(%from_elements_27, %236 : tensor<15xi32>, tensor<15xi32>) outs(%255 : tensor<15xi32>)
      (%in: i32, %in_38: i32) {
        %c243463565_i64 = arith.constant 243463565 : i64
        %dest, %accumulated_value = vector.scan <maxf>, %114, %144 {inclusive = true, reduction_dim = 0 : i64} : vector<10x7xf32>, vector<7xf32>
        %271 = affine.apply affine_map<(d0) -> (d0 mod 32)>(%131)
        %272 = math.ipowi %3, %3 : tensor<10x7x9xi16>
        %273 = vector.broadcast %cst : f32 to vector<10x7xf32>
        %274 = vector.fma %273, %173, %114 : vector<10x7xf32>
        %alloc_39 = memref.alloc() : memref<10x7xf32>
        %275 = tensor.empty() : tensor<7x10xi32>
        %276 = linalg.matmul ins(%54, %223 : tensor<7x10xi32>, tensor<10x10xi32>) outs(%275 : tensor<7x10xi32>) -> tensor<7x10xi32>
        %rank_40 = tensor.rank %cast_32 : tensor<?x?xi1>
        %277 = vector.flat_transpose %25 {columns = 5 : i32, rows = 3 : i32} : vector<15xi32> -> vector<15xi32>
        %278 = vector.create_mask %82 : vector<15xi1>
        %279 = math.ceil %11 : tensor<10x7x9xf32>
        %280 = vector.matrix_multiply %25, %25 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
        %rank_41 = tensor.rank %1 : tensor<10x7xi1>
        %281 = bufferization.to_memref %from_elements : memref<10x7xi64>
        %282 = arith.subi %c140901591_i32, %186 : i32
        %283 = math.log10 %11 : tensor<10x7x9xf32>
        %284 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0)>(%66, %244, %131, %81)
        %cst_42 = arith.constant 1.000000e+00 : f32
        %cst_43 = arith.constant 0.000000e+00 : f32
        %285 = vector.transfer_read %11[%39, %82, %rank], %cst_43 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<10x7x9xf32>, vector<10xf32>
        %alloc_44 = memref.alloc() : memref<7xf16>
        %alloc_45 = memref.alloc() : memref<9x7xf16>
        %286 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_44, %alloc_45, %alloc_44 : memref<7xf16>, memref<9x7xf16>, memref<7xf16>) outs(%2 : tensor<10x7x9xf16>) {
        ^bb0(%in_47: f16, %in_48: f16, %in_49: f16, %out: f16):
          %inserted_50 = tensor.insert %in into %15[%c8, %c5, %c6] : tensor<10x7x9xi32>
          %expanded_51 = tensor.expand_shape %101 [[0, 1]] : tensor<15xi1> into tensor<15x1xi1>
          %rank_52 = tensor.rank %10 : tensor<15xi64>
          %302 = vector.extract %173[0] : vector<10x7xf32>
          %303 = vector.broadcast %c9281_i16 : i16 to vector<7xi16>
          vector.transfer_write %303, %alloc_3[%199, %199] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi16>, memref<10x7xi16>
          %304 = math.log10 %5 : tensor<15xf16>
          %expanded_53 = tensor.expand_shape %99 [[0], [1, 2]] : tensor<10x10xf16> into tensor<10x10x1xf16>
          %305 = bufferization.clone %alloc_8 : memref<15xi32> to memref<15xi32>
          %306 = arith.shli %in_38, %in : i32
          %307 = arith.addf %cst, %cst : f32
          %308 = math.atan %8 : tensor<10x7x9xf32>
          %309 = math.ceil %cst_0 : f16
          %310 = vector.gather %13[%199, %rank] [%185], %43, %185 : tensor<10x7xi32>, vector<10x7xi32>, vector<10x7xi1>, vector<10x7xi32> into vector<10x7xi32>
          %311 = vector.maskedload %alloc[%c7, %c3, %c2], %26, %278 : memref<10x7x9xi1>, vector<15xi1>, vector<15xi1> into vector<15xi1>
          %312 = vector.matrix_multiply %128, %129 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xf32>, vector<15xf32>) -> vector<1xf32>
          %313 = arith.maxui %c1947057534_i64, %c1511706817_i64 : i64
          %314 = memref.load %alloc_11[%c2] : memref<15xi64>
          memref.store %true, %alloc_1[%c2] : memref<15xi1>
          %315 = vector.transpose %25, [0] : vector<15xi32> to vector<15xi32>
          %collapsed = tensor.collapse_shape %cast_32 [[0, 1]] : tensor<?x?xi1> into tensor<?xi1>
          %316 = vector.broadcast %rank : index to vector<7xindex>
          %317 = vector.broadcast %true : i1 to vector<7xi1>
          vector.scatter %alloc_2[%c14] [%316], %317, %317 : memref<15xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
          %318 = math.cos %cst_0 : f16
          %319 = bufferization.clone %alloc_1 : memref<15xi1> to memref<15xi1>
          vector.print %129 : vector<15xf32>
          %320 = index.sizeof
          %321 = vector.create_mask %rank_52, %227, %202 : vector<10x7x9xi1>
          %322 = math.ctlz %3 : tensor<10x7x9xi16>
          %323 = arith.remui %false, %true : i1
          %324 = math.cttz %15 : tensor<10x7x9xi32>
          %325 = math.ipowi %104, %18 : tensor<10x9xi16>
          %326 = bufferization.to_tensor %281 : memref<10x7xi64>
          %327 = arith.minui %c1511706817_i64, %c665192677_i64 : i64
          linalg.yield %in_47 : f16
        } -> tensor<10x7x9xf16>
        %287 = math.sqrt %4 : tensor<10x7xf16>
        %288 = vector.extract_strided_slice %26 {offsets = [13], sizes = [2], strides = [1]} : vector<15xi1> to vector<2xi1>
        %289 = arith.minui %218, %c42279348_i32 : i32
        %290 = vector.broadcast %cst_42 : f32 to vector<10x7x9xf32>
        %291 = vector.fma %290, %290, %290 : vector<10x7x9xf32>
        %292 = arith.remui %186, %c0_i32 : i32
        %293 = arith.minsi %c140901591_i32, %in : i32
        %294 = math.powf %8, %8 : tensor<10x7x9xf32>
        %295 = index.floordivs %47, %66
        %296 = vector.broadcast %true : i1 to vector<7x7xi1>
        %297 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %43, %43, %296 : vector<10x7xi1>, vector<10x7xi1> into vector<7x7xi1>
        %298 = arith.xori %72, %in_38 : i32
        %299 = bufferization.clone %alloc_4 : memref<15xi1> to memref<15xi1>
        %300 = math.ceil %17 : tensor<10x7xf16>
        %301 = arith.remf %cst_42, %cst_42 : f32
        %c0_i32_46 = arith.constant 0 : i32
        linalg.yield %c0_i32_46 : i32
      }
    %256 = vector.broadcast %218 : i32 to vector<i32>
    %257 = vector.transfer_write %256, %from_elements_27[%35] : vector<i32>, tensor<15xi32>
    %258 = arith.ceildivsi %c0_i16, %c-23836_i16 : i16
    %259 = memref.realloc %alloc_12 : memref<15xf16> to memref<9xf16>
    %260 = math.log2 %14 : tensor<15xf16>
    %261 = memref.load %alloc_15[%c9, %c6] : memref<10x7xi16>
    %262 = math.fpowi %cst, %218 : f32, i32
    %263 = vector.transpose %114, [0, 1] : vector<10x7xf32> to vector<10x7xf32>
    %264 = index.sub %148, %82
    %265 = bufferization.clone %alloc_4 : memref<15xi1> to memref<15xi1>
    %266 = tensor.empty() : tensor<15xi1>
    %267 = linalg.copy ins(%splat_26 : tensor<15xi1>) outs(%266 : tensor<15xi1>) -> tensor<15xi1>
    %268 = tensor.empty() : tensor<15xi32>
    %transposed = linalg.transpose ins(%7 : tensor<15xi32>) outs(%268 : tensor<15xi32>) permutation = [0] 
    %alloc_37 = memref.alloc() : memref<i1>
    linalg.reduce ins(%266 : tensor<15xi1>) outs(%alloc_37 : memref<i1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %false_38 = arith.constant false
        %271 = vector.reduction <minsi>, %25 : vector<15xi32> into i32
        %272 = arith.cmpf oge, %cst, %cst : f32
        %273 = arith.shrsi %c-23836_i16, %c14851_i16 : i16
        memref.store %186, %alloc_5[%c3, %c2] : memref<10x7xi32>
        %274 = vector.matrix_multiply %203, %238 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi16>, vector<15xi16>) -> vector<1xi16>
        %275 = affine.if affine_set<(d0, d1, d2) : (d0 floordiv 2 >= 0, d0 floordiv 2 >= 0, d2 ceildiv 32 >= 0, (d0 ceildiv 64) mod 4 == 0)>(%c4, %c14, %c6) -> i1 {
          %277 = arith.remui %c1082890889_i64, %c1947057534_i64 : i64
          %278 = math.tan %cst_0 : f16
          %279 = math.sqrt %14 : tensor<15xf16>
          %280 = vector.broadcast %72 : i32 to vector<i32>
          %281 = vector.transfer_write %280, %from_elements_27[%81] : vector<i32>, tensor<15xi32>
          %alloc_40 = memref.alloc() : memref<10x7x9xi16>
          memref.tensor_store %3, %alloc_40 : memref<10x7x9xi16>
          %282 = arith.shli %c42279348_i32, %218 : i32
          %283 = memref.realloc %57 : memref<15xi32> to memref<10xi32>
          %284 = vector.maskedload %alloc_15[%c1, %c2], %26, %203 : memref<10x7xi16>, vector<15xi1>, vector<15xi16> into vector<15xi16>
          affine.yield %in : i1
        } else {
          %alloca = memref.alloca() : memref<10x7x9xi16>
          %277 = vector.broadcast %c140901591_i32 : i32 to vector<7xi32>
          %278 = vector.insert %277, %184 [0] : vector<7xi32> into vector<10x7xi32>
          %279 = vector.maskedload %alloc_3[%c6, %c6], %135, %247 : memref<10x7xi16>, vector<15xi1>, vector<15xi16> into vector<15xi16>
          %280 = math.powf %4, %from_elements_21 : tensor<10x7xf16>
          %281 = vector.matrix_multiply %203, %238 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi16>, vector<15xi16>) -> vector<1xi16>
          %282 = math.atan %from_elements_21 : tensor<10x7xf16>
          %c1_i32 = arith.constant 1 : i32
          %283 = vector.transfer_read %alloc_8[%237], %c1_i32 : memref<15xi32>, vector<i32>
          %284 = vector.insertelement %c14851_i16, %279[%23 : index] : vector<15xi16>
          affine.yield %false : i1
        }
        %276 = vector.broadcast %c9281_i16 : i16 to vector<10x7xi16>
        %true_39 = arith.constant true
        linalg.yield %true_39 : i1
      }
    %269 = scf.parallel (%arg0, %arg1) = (%131, %264) to (%80, %123) step (%c1, %c2) init (%c-23836_i16) -> i16 {
      %inserted_38 = tensor.insert %c42279348_i32 into %13[%c3, %c5] : tensor<10x7xi32>
      %271 = arith.maxsi %c-23836_i16, %c9281_i16 : i16
      %272 = arith.floordivsi %c1082890889_i64, %c1082890889_i64 : i64
      %273 = math.rsqrt %151 : f16
      %274 = index.ceildivu %c12, %80
      %275 = vector.broadcast %true : i1 to vector<9xi1>
      %276 = vector.transfer_write %275, %6[%c4, %c0, %204] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<9xi1>, tensor<10x7x9xi1>
      %277 = index.maxs %c14, %244
      %278 = arith.floordivsi %72, %72 : i32
      %279 = math.tanh %151 : f16
      %280 = arith.ori %true, %true : i1
      %281 = index.ceildivs %148, %c15
      %282 = memref.alloca_scope  -> (memref<10x7xf16>) {
        %286 = arith.floordivsi %c2053918835_i64, %c1947057534_i64 : i64
        %287 = arith.remf %151, %extracted : f16
        %288 = vector.broadcast %cst_0 : f16 to vector<15xf16>
        %289 = vector.maskedload %alloc_14[%c9, %c3], %26, %288 : memref<10x7xf16>, vector<15xi1>, vector<15xf16> into vector<15xf16>
        %290 = arith.remui %c1082890889_i64, %c1947057534_i64 : i64
        %291 = arith.shrui %c665192677_i64, %c665192677_i64 : i64
        %292 = math.log2 %4 : tensor<10x7xf16>
        %293 = math.absf %2 : tensor<10x7x9xf16>
        %294 = math.sqrt %cst_0 : f16
        %295 = arith.minui %c0_i16, %c0_i16 : i16
        %296 = math.atan2 %4, %17 : tensor<10x7xf16>
        %297 = math.sqrt %11 : tensor<10x7x9xf32>
        %298 = math.tan %99 : tensor<10x10xf16>
        %299 = arith.addf %cst, %cst : f32
        %300 = math.ctlz %267 : tensor<15xi1>
        %301 = math.absi %c0_i16 : i16
        %302 = math.ctlz %186 : i32
        memref.assume_alignment %alloc_1, 16 : memref<15xi1>
        memref.store %c42279348_i32, %alloc_16[%c2, %c2] : memref<7x10xi32>
        %303 = index.sizeof
        %304 = arith.shrsi %c665192677_i64, %c1082890889_i64 : i64
        affine.store %72, %alloc_16[%c10, %c4] : memref<7x10xi32>
        %expanded_40 = tensor.expand_shape %104 [[0], [1, 2]] : tensor<10x9xi16> into tensor<10x9x1xi16>
        %305 = vector.create_mask %23 : vector<15xi1>
        %alloc_41 = memref.alloc() : memref<15xi64>
        %306 = vector.extract %213[6] : vector<7x9xi16>
        %307 = math.cttz %45 : tensor<10x15xi1>
        %308 = affine.min affine_map<(d0, d1, d2, d3) -> (0, (d0 + 4) floordiv 128 + (d2 floordiv 8) floordiv 64 + 64)>(%c0, %137, %221, %c10)
        %309 = math.rsqrt %17 : tensor<10x7xf16>
        %310 = math.rsqrt %5 : tensor<15xf16>
        %311 = arith.remf %extracted, %cst_0 : f16
        %alloc_42 = memref.alloc() : memref<10x7xf16>
        memref.copy %alloc_14, %alloc_42 : memref<10x7xf16> to memref<10x7xf16>
        %312 = index.casts %c1082890889_i64 : i64 to index
        memref.alloca_scope.return %alloc_14 : memref<10x7xf16>
      }
      scf.execute_region {
        %286 = vector.transpose %32, [0] : vector<10xf16> to vector<10xf16>
        memref.store %true, %alloc_2[%c9] : memref<15xi1>
        %287 = arith.cmpf ogt, %151, %extracted : f16
        %288 = arith.addi %72, %186 : i32
        %289 = tensor.empty() : tensor<10x7xi16>
        %290 = vector.broadcast %c1511706817_i64 : i64 to vector<10xi64>
        %291 = vector.broadcast %false : i1 to vector<10xi1>
        %292 = vector.maskedload %alloc_11[%c10], %291, %290 : memref<15xi64>, vector<10xi1>, vector<10xi64> into vector<10xi64>
        %293 = vector.extract_strided_slice %19 {offsets = [5], sizes = [3], strides = [1]} : vector<10xf16> to vector<3xf16>
        %294 = math.sqrt %17 : tensor<10x7xf16>
        %295 = arith.muli %c1511706817_i64, %c665192677_i64 : i64
        %296 = arith.remui %c42279348_i32, %72 : i32
        %alloca = memref.alloca() : memref<15xi16>
        %297 = arith.addf %151, %extracted : f16
        %298 = math.exp2 %14 : tensor<15xf16>
        %rank_40 = tensor.rank %0 : tensor<10x7xi1>
        %299 = arith.remsi %72, %c0_i32 : i32
        %300 = index.floordivs %c1, %81
        scf.yield
      }
      %283 = index.divs %rank, %c14
      %284 = arith.remui %c2053918835_i64, %c1511706817_i64 : i64
      %285 = index.sizeof
      %c0_i16_39 = arith.constant 0 : i16
      scf.reduce(%c0_i16_39)  : i16 {
      ^bb0(%arg2: i16, %arg3: i16):
        %286 = vector.extract_strided_slice %192 {offsets = [7], sizes = [2], strides = [1]} : vector<10x7x9xi1> to vector<2x7x9xi1>
        %287 = arith.xori %c1511706817_i64, %c1082890889_i64 : i64
        %288 = index.floordivs %80, %c9
        affine.store %cst_0, %alloc_14[%c5, %c15] : memref<10x7xf16>
        %289 = arith.remsi %c-23836_i16, %c25323_i16 : i16
        %290 = arith.addf %extracted, %extracted : f16
        %291 = math.round %8 : tensor<10x7x9xf32>
        %292 = vector.create_mask %c3, %47, %288 : vector<10x7x9xi1>
        %c1_i16 = arith.constant 1 : i16
        scf.reduce.return %c1_i16 : i16
      }
      scf.yield
    }
    %270 = affine.vector_load %alloc_11[%220] : memref<15xi64>, vector<7xi64>
    affine.vector_store %26, %alloc_2[%80] : memref<15xi1>, vector<15xi1>
    vector.print %19 : vector<10xf16>
    vector.print %25 : vector<15xi32>
    vector.print %26 : vector<15xi1>
    vector.print %27 : vector<15xi32>
    vector.print %32 : vector<10xf16>
    vector.print %43 : vector<10x7xi1>
    vector.print %59 : vector<6xi1>
    vector.print %68 : vector<3xi32>
    vector.print %88 : vector<i16>
    vector.print %114 : vector<10x7xf32>
    vector.print %115 : vector<10x7xf32>
    vector.print %128 : vector<15xf32>
    vector.print %129 : vector<15xf32>
    vector.print %135 : vector<15xi1>
    vector.print %138 : vector<2xi32>
    vector.print %144 : vector<7xf32>
    vector.print %173 : vector<10x7xf32>
    vector.print %174 : vector<10x7xf32>
    vector.print %184 : vector<10x7xi32>
    vector.print %185 : vector<10x7xi32>
    vector.print %192 : vector<10x7x9xi1>
    vector.print %203 : vector<15xi16>
    vector.print %213 : vector<7x9xi16>
    vector.print %238 : vector<15xi16>
    vector.print %242 : vector<10x7xi64>
    vector.print %243 : vector<10x7xi64>
    vector.print %247 : vector<15xi16>
    vector.print %256 : vector<i32>
    vector.print %270 : vector<7xi64>
    vector.print %c665192677_i64 : i64
    vector.print %cst : f32
    vector.print %c-20598_i16 : i16
    vector.print %true : i1
    vector.print %c1511706817_i64 : i64
    vector.print %c25323_i16 : i16
    vector.print %c14851_i16 : i16
    vector.print %c1082890889_i64 : i64
    vector.print %false : i1
    vector.print %c140901591_i32 : i32
    vector.print %c9281_i16 : i16
    vector.print %cst_0 : f16
    vector.print %c-23836_i16 : i16
    vector.print %c42279348_i32 : i32
    vector.print %c1947057534_i64 : i64
    vector.print %c2053918835_i64 : i64
    vector.print %72 : i32
    vector.print %c0_i16 : i16
    vector.print %extracted : f16
    vector.print %c0_i32 : i32
    vector.print %151 : f16
    vector.print %186 : i32
    vector.print %218 : i32
    return
  }
}
