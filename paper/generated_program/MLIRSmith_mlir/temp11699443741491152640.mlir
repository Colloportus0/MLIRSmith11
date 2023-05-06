module {
  func.func nested @func1(%arg0: f16, %arg1: vector<7x7x7xf32>) {
    %cst = arith.constant 1.00891494E+9 : f32
    %c953342303_i32 = arith.constant 953342303 : i32
    %c28088_i16 = arith.constant 28088 : i16
    %true = arith.constant true
    %c1269864297_i32 = arith.constant 1269864297 : i32
    %false = arith.constant false
    %cst_0 = arith.constant 0x4C49D562 : f32
    %false_1 = arith.constant false
    %c11551_i16 = arith.constant 11551 : i16
    %c2057239616_i32 = arith.constant 2057239616 : i32
    %c-30012_i16 = arith.constant -30012 : i16
    %c1527806364_i64 = arith.constant 1527806364 : i64
    %true_2 = arith.constant true
    %c-6544_i16 = arith.constant -6544 : i16
    %cst_3 = arith.constant 3.888000e+04 : f16
    %c25801_i16 = arith.constant 25801 : i16
    %0 = tensor.empty() : tensor<1x1xf16>
    %1 = tensor.empty() : tensor<4xf16>
    %2 = tensor.empty() : tensor<4xi1>
    %3 = tensor.empty() : tensor<7x7x7xi32>
    %4 = tensor.empty() : tensor<1x4x4xf32>
    %5 = tensor.empty() : tensor<1x4x4xi1>
    %6 = tensor.empty() : tensor<1x1xi64>
    %7 = tensor.empty() : tensor<7x7x7xi64>
    %8 = tensor.empty() : tensor<7x7x7xi32>
    %9 = tensor.empty() : tensor<4xi64>
    %10 = tensor.empty() : tensor<1x4x4xi64>
    %11 = tensor.empty() : tensor<1x4x4xi64>
    %12 = tensor.empty() : tensor<4xf32>
    %13 = tensor.empty() : tensor<7x7x7xi64>
    %14 = tensor.empty() : tensor<1x4x4xi64>
    %15 = tensor.empty() : tensor<7x7x7xi32>
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
    %alloc = memref.alloc() : memref<1x4x4xi16>
    %alloc_4 = memref.alloc() : memref<1x1xi64>
    %alloc_5 = memref.alloc() : memref<1x1xi16>
    %alloc_6 = memref.alloc() : memref<1x1xi32>
    %alloc_7 = memref.alloc() : memref<1x1xi1>
    %alloc_8 = memref.alloc() : memref<1x4x4xi64>
    %alloc_9 = memref.alloc() : memref<7x7x7xi32>
    %alloc_10 = memref.alloc() : memref<1x1xi1>
    %alloc_11 = memref.alloc() : memref<1x4x4xi1>
    %alloc_12 = memref.alloc() : memref<4xi1>
    %alloc_13 = memref.alloc() : memref<7x7x7xf32>
    %alloc_14 = memref.alloc() : memref<4xi1>
    %alloc_15 = memref.alloc() : memref<1x4x4xf32>
    %alloc_16 = memref.alloc() : memref<7x7x7xf16>
    %alloc_17 = memref.alloc() : memref<1x1xi16>
    %alloc_18 = memref.alloc() : memref<4xi64>
    %16 = tensor.empty() : tensor<4xf16>
    %17 = linalg.copy ins(%1 : tensor<4xf16>) outs(%16 : tensor<4xf16>) -> tensor<4xf16>
    %alloc_19 = memref.alloc() : memref<4xf32>
    linalg.transpose ins(%12 : tensor<4xf32>) outs(%alloc_19 : memref<4xf32>) permutation = [0] 
    %alloc_20 = memref.alloc() : memref<1xi16>
    linalg.reduce ins(%alloc_17 : memref<1x1xi16>) outs(%alloc_20 : memref<1xi16>) dimensions = [1] 
      (%in: i16, %init: i16) {
        %275 = index.mul %c0, %c3
        %276 = math.fma %17, %16, %17 : tensor<4xf16>
        affine.store %cst, %alloc_15[%c8, %c5, %c9] : memref<1x4x4xf32>
        %277 = vector.broadcast %cst_3 : f16 to vector<7x7x7xf16>
        %278 = vector.transpose %277, [2, 1, 0] : vector<7x7x7xf16> to vector<7x7x7xf16>
        %279 = vector.broadcast %c953342303_i32 : i32 to vector<1xi32>
        %280 = vector.broadcast %c1269864297_i32 : i32 to vector<1x1xi32>
        %281 = vector.outerproduct %279, %279, %280 {kind = #vector.kind<mul>} : vector<1xi32>, vector<1xi32>
        %282 = vector.broadcast %cst : f32 to vector<4xf32>
        %283 = vector.broadcast %false : i1 to vector<4xi1>
        %284 = vector.maskedload %alloc_19[%c3], %283, %282 : memref<4xf32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
        %285 = affine.max affine_map<(d0) -> (d0 * 32, 2, d0)>(%c0)
        %extracted_32 = tensor.extract %3[%c3, %c2, %c2] : tensor<7x7x7xi32>
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    scf.parallel (%arg2, %arg3) = (%c0, %c9) to (%c5, %c4) step (%c14, %c9) {
      %275 = scf.while (%arg4 = %alloc_16) : (memref<7x7x7xf16>) -> memref<7x7x7xf16> {
        %292 = vector.splat %arg2 : vector<4xindex>
        %293 = math.log2 %cst : f32
        %294 = index.mul %arg2, %c3
        %295 = math.log2 %cst_3 : f16
        %296 = math.sqrt %4 : tensor<1x4x4xf32>
        %297 = math.roundeven %1 : tensor<4xf16>
        %298 = arith.ori %c-6544_i16, %c11551_i16 : i16
        %299 = bufferization.to_memref %9 : memref<4xi64>
        scf.condition(%true) %alloc_16 : memref<7x7x7xf16>
      } do {
      ^bb0(%arg4: memref<7x7x7xf16>):
        %292 = index.sub %c14, %c13
        %293 = vector.broadcast %cst : f32 to vector<1xf32>
        %294 = vector.multi_reduction <mul>, %293, %293 [] : vector<1xf32> to vector<1xf32>
        %295 = arith.negf %cst_3 : f16
        %expanded_34 = tensor.expand_shape %8 [[0], [1], [2, 3]] : tensor<7x7x7xi32> into tensor<7x7x7x1xi32>
        %296 = index.castu %c10 : index to i32
        %297 = math.log10 %17 : tensor<4xf16>
        %298 = index.mul %c11, %c6
        %299 = affine.apply affine_map<(d0, d1) -> ((-d0 - 32) ceildiv 2 + (-d0) floordiv 8 - 4 - 1)>(%arg2, %c11)
        %300 = index.add %298, %arg2
        %expanded_35 = tensor.expand_shape %2 [[0, 1]] : tensor<4xi1> into tensor<4x1xi1>
        %301 = math.ctlz %false_1 : i1
        %c19001_i16 = arith.constant 19001 : i16
        %302 = bufferization.to_memref %6 : memref<1x1xi64>
        %303 = arith.minsi %c28088_i16, %c-30012_i16 : i16
        %304 = index.castu %c1527806364_i64 : i64 to index
        %305 = index.ceildivu %c8, %c10
        scf.yield %arg4 : memref<7x7x7xf16>
      }
      %276 = arith.ori %c953342303_i32, %c1269864297_i32 : i32
      %277 = vector.load %alloc[%c0, %c1, %c2] : memref<1x4x4xi16>, vector<1x4x4xi16>
      %278 = math.exp2 %1 : tensor<4xf16>
      %279 = vector.broadcast %c-30012_i16 : i16 to vector<4x4x4x4xi16>
      %280 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %277, %277, %279 : vector<1x4x4xi16>, vector<1x4x4xi16> into vector<4x4x4x4xi16>
      %281 = vector.broadcast %cst_0 : f32 to vector<7xf32>
      %282 = vector.reduction <minf>, %281 : vector<7xf32> into f32
      %false_32 = index.bool.constant false
      %283 = arith.minsi %true_2, %false_1 : i1
      %284 = scf.if %false -> (i1) {
        %292 = math.log2 %12 : tensor<4xf32>
        %293 = math.exp2 %12 : tensor<4xf32>
        %294 = math.powf %1, %1 : tensor<4xf16>
        %295 = math.log1p %0 : tensor<1x1xf16>
        %296 = math.ctlz %10 : tensor<1x4x4xi64>
        %expanded_34 = tensor.expand_shape %10 [[0], [1], [2, 3]] : tensor<1x4x4xi64> into tensor<1x4x4x1xi64>
        %297 = arith.maxsi %c-30012_i16, %c28088_i16 : i16
        %298 = memref.load %alloc_5[%c0, %c0] : memref<1x1xi16>
        scf.yield %true_2 : i1
      } else {
        %292 = index.casts %c9 : index to i32
        %293 = bufferization.clone %alloc : memref<1x4x4xi16> to memref<1x4x4xi16>
        %294 = tensor.empty() : tensor<4xi32>
        %295 = math.exp %16 : tensor<4xf16>
        %296 = vector.load %alloc_12[%c2] : memref<4xi1>, vector<4xi1>
        %297 = math.powf %cst_3, %cst_3 : f16
        %splat_34 = tensor.splat %c1527806364_i64 : tensor<7x7x7xi64>
        %alloc_35 = memref.alloc() : memref<1x1xi1>
        scf.yield %true : i1
      }
      %285 = math.log2 %12 : tensor<4xf32>
      %cst_33 = arith.constant 1.944000e+03 : f16
      %286 = tensor.empty() : tensor<1x1xi64>
      %287 = linalg.matmul ins(%6, %6 : tensor<1x1xi64>, tensor<1x1xi64>) outs(%286 : tensor<1x1xi64>) -> tensor<1x1xi64>
      %288 = affine.if affine_set<(d0) : (d0 >= 0, (d0 * -31 + d0 - 32 + 2) mod 128 >= 0, d0 * -31 - 32 == 0, d0 * -32 >= 0)>(%c0) -> memref<1x1xi32> {
        %292 = memref.atomic_rmw mins %c1527806364_i64, %alloc_4[%c0, %c0] : (i64, memref<1x1xi64>) -> i64
        %293 = math.fma %16, %1, %17 : tensor<4xf16>
        %294 = math.rsqrt %1 : tensor<4xf16>
        %295 = vector.broadcast %c28088_i16 : i16 to vector<4x4xi16>
        %296 = vector.insert %295, %277 [0] : vector<4x4xi16> into vector<1x4x4xi16>
        %297 = arith.addf %cst_3, %cst_3 : f16
        %298 = arith.ceildivsi %284, %true_2 : i1
        %299 = vector.broadcast %c25801_i16 : i16 to vector<1x4xi16>
        %dest_34, %accumulated_value_35 = vector.scan <maxui>, %277, %299 {inclusive = false, reduction_dim = 2 : i64} : vector<1x4x4xi16>, vector<1x4xi16>
        %300 = affine.max affine_map<(d0, d1) -> ((d0 mod 4) * 3)>(%c6, %c1)
        affine.yield %alloc_6 : memref<1x1xi32>
      } else {
        %292 = affine.apply affine_map<(d0, d1) -> (0)>(%c14, %c11)
        affine.store %cst_3, %alloc_16[%c2, %c15, %c1] : memref<7x7x7xf16>
        %293 = arith.mulf %cst_0, %cst : f32
        %294 = bufferization.clone %alloc_17 : memref<1x1xi16> to memref<1x1xi16>
        %295 = math.roundeven %16 : tensor<4xf16>
        %296 = arith.ceildivsi %c-6544_i16, %c-30012_i16 : i16
        %297 = vector.broadcast %c11551_i16 : i16 to vector<4x4xi16>
        %298 = vector.insert %297, %277 [0] : vector<4x4xi16> into vector<1x4x4xi16>
        %299 = affine.min affine_map<(d0, d1) -> (d1 floordiv 4 - (d1 - (d1 floordiv 64 + d0 - 4)), d1 - (d1 floordiv 64 + d0 - 4), -(d1 floordiv 4 - (d1 - (d1 floordiv 64 + d0 - 4))))>(%c8, %c10)
        affine.yield %alloc_6 : memref<1x1xi32>
      }
      %289 = tensor.empty() : tensor<1x4x4xi64>
      %290 = vector.broadcast %cst_3 : f16 to vector<1x4x4xf16>
      %291 = arith.minui %c-6544_i16, %c-6544_i16 : i16
      scf.yield
    }
    %18 = affine.vector_load %alloc_12[%c0] : memref<4xi1>, vector<4xi1>
    affine.vector_store %18, %alloc_7[%c10, %c6] : memref<1x1xi1>, vector<4xi1>
    %alloc_21 = memref.alloc() : memref<4xf32>
    %19 = tensor.empty() : tensor<f32>
    %20 = linalg.dot ins(%12, %alloc_21 : tensor<4xf32>, memref<4xf32>) outs(%19 : tensor<f32>) -> tensor<f32>
    %21 = vector.extract_strided_slice %18 {offsets = [0], sizes = [1], strides = [1]} : vector<4xi1> to vector<1xi1>
    %22 = vector.insertelement %false_1, %18[%c0 : index] : vector<4xi1>
    %cast = tensor.cast %10 : tensor<1x4x4xi64> to tensor<?x?x?xi64>
    %23 = math.log1p %1 : tensor<4xf16>
    %24 = vector.bitcast %21 : vector<1xi1> to vector<1xi1>
    %25 = index.ceildivu %c5, %c5
    %26 = vector.broadcast %cst_3 : f16 to vector<7x7x7xf16>
    %27 = arith.remf %cst_3, %cst_3 : f16
    %28 = arith.floordivsi %true, %true_2 : i1
    %29 = index.casts %c14 : index to i32
    vector.print %21 : vector<1xi1>
    %30 = math.log1p %1 : tensor<4xf16>
    %31 = vector.broadcast %true_2 : i1 to vector<4x4xi1>
    %32 = vector.outerproduct %18, %18, %31 {kind = #vector.kind<minsi>} : vector<4xi1>, vector<4xi1>
    %33 = arith.floordivsi %c2057239616_i32, %c953342303_i32 : i32
    %34 = vector.broadcast %c6 : index to vector<7xindex>
    %35 = vector.broadcast %true_2 : i1 to vector<7xi1>
    %36 = vector.broadcast %cst : f32 to vector<7xf32>
    vector.scatter %alloc_13[%c0, %c2, %c0] [%34], %35, %36 : memref<7x7x7xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
    %37 = affine.if affine_set<(d0, d1) : (((d1 + 8) mod 32) * 16 == 0, d0 + 64 >= 0, d0 mod 4 >= 0)>(%c4, %c8) -> memref<1x4x4xi32> {
      %275 = arith.cmpi eq, %c-30012_i16, %c25801_i16 : i16
      %276 = math.tan %4 : tensor<1x4x4xf32>
      %277 = math.absi %9 : tensor<4xi64>
      %278 = arith.addf %cst, %cst_0 : f32
      %collapsed = tensor.collapse_shape %cast [[0, 1], [2]] : tensor<?x?x?xi64> into tensor<?x?xi64>
      scf.if %false {
        %281 = vector.shuffle %24, %18 [0, 1, 3, 4] : vector<1xi1>, vector<4xi1>
        %splat_33 = tensor.splat %cst_0 : tensor<1x1xf32>
        %282 = memref.atomic_rmw minf %cst, %alloc_19[%c2] : (f32, memref<4xf32>) -> f32
        %283 = math.log2 %splat_33 : tensor<1x1xf32>
        %284 = index.maxu %c14, %c4
        %c641045858_i64 = arith.constant 641045858 : i64
        %285 = math.rsqrt %4 : tensor<1x4x4xf32>
        %286 = math.rsqrt %1 : tensor<4xf16>
      } else {
        %281 = index.casts %c5 : index to i32
        %282 = index.maxu %c6, %c1
        %283 = math.atan %12 : tensor<4xf32>
        %284 = arith.floordivsi %c28088_i16, %c28088_i16 : i16
        %285 = bufferization.to_memref %19 : memref<f32>
        %286 = index.maxu %c11, %c15
        %287 = math.ctlz %8 : tensor<7x7x7xi32>
        %288 = index.mul %c13, %c14
      }
      %279 = math.absi %5 : tensor<1x4x4xi1>
      %280 = math.log10 %1 : tensor<4xf16>
      %alloc_32 = memref.alloc() : memref<1x4x4xi32>
      affine.yield %alloc_32 : memref<1x4x4xi32>
    } else {
      scf.execute_region {
        %280 = vector.insert %true_2, %24 [0] : i1 into vector<1xi1>
        %281 = math.ipowi %14, %10 : tensor<1x4x4xi64>
        %282 = arith.ceildivsi %false_1, %true : i1
        %283 = vector.flat_transpose %18 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
        %284 = vector.broadcast %true_2 : i1 to vector<4x4xi1>
        %285 = vector.outerproduct %18, %283, %284 {kind = #vector.kind<minui>} : vector<4xi1>, vector<4xi1>
        %286 = arith.floordivsi %c1527806364_i64, %c1527806364_i64 : i64
        %287 = arith.remf %cst_3, %cst_3 : f16
        %288 = math.atan %4 : tensor<1x4x4xf32>
        %289 = arith.ori %false, %true_2 : i1
        %290 = math.log1p %1 : tensor<4xf16>
        %291 = arith.remui %c11551_i16, %c25801_i16 : i16
        %292 = vector.broadcast %c3 : index to vector<12xindex>
        %293 = vector.broadcast %false : i1 to vector<12xi1>
        vector.scatter %alloc_12[%c3] [%292], %293, %293 : memref<4xi1>, vector<12xindex>, vector<12xi1>, vector<12xi1>
        %294 = math.expm1 %17 : tensor<4xf16>
        %295 = math.absi %13 : tensor<7x7x7xi64>
        %296 = arith.divf %cst_0, %cst : f32
        %297 = affine.load %alloc_17[%c5, %c7] : memref<1x1xi16>
        scf.yield
      }
      %275 = arith.mulf %cst_3, %cst_3 : f16
      %276 = arith.shrsi %c-30012_i16, %c-30012_i16 : i16
      scf.if %false {
        %280 = arith.remui %c1269864297_i32, %c1269864297_i32 : i32
        %281 = arith.remf %cst_3, %cst_3 : f16
        %alloc_34 = memref.alloc() : memref<7x7x7xi1>
        %282 = vector.broadcast %true : i1 to vector<1x1xi1>
        %283 = vector.broadcast %c953342303_i32 : i32 to vector<1x1xi32>
        %284 = vector.gather %alloc_34[%c0, %c1, %c6] [%283], %282, %282 : memref<7x7x7xi1>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xi1> into vector<1x1xi1>
        %285 = affine.max affine_map<(d0, d1) -> (d1 - 32, d1 ceildiv 4)>(%c14, %c14)
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_35 = arith.constant 0 : i16
        %286 = vector.transfer_read %alloc_5[%c4, %25], %c0_i16_35 : memref<1x1xi16>, vector<i16>
        %287 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 floordiv 32)>(%c6, %c10, %c4, %c13)
        %288 = arith.floordivsi %c25801_i16, %c0_i16 : i16
        %289 = arith.maxsi %c11551_i16, %c-30012_i16 : i16
      } else {
        %280 = math.fma %cst_3, %cst_3, %cst_3 : f16
        %281 = math.log1p %cst : f32
        %282 = vector.load %alloc_14[%c3] : memref<4xi1>, vector<4xi1>
        %283 = math.absf %4 : tensor<1x4x4xf32>
        %284 = affine.max affine_map<(d0, d1, d2, d3) -> (-d1 - d0, d3, d0 ceildiv 4, d3 - d1 + d2 + 64)>(%c11, %c0, %c2, %25)
        %285 = math.round %1 : tensor<4xf16>
        %286 = arith.divui %c28088_i16, %c28088_i16 : i16
        %287 = math.cttz %11 : tensor<1x4x4xi64>
      }
      %277 = arith.addi %true_2, %true : i1
      %278 = index.ceildivu %c15, %c2
      %alloca_32 = memref.alloca() : memref<1x1xi1>
      %279 = index.divu %c10, %c3
      %alloc_33 = memref.alloc() : memref<1x4x4xi32>
      affine.yield %alloc_33 : memref<1x4x4xi32>
    }
    %38 = tensor.empty() : tensor<1x4x4xf32>
    %39 = memref.realloc %alloc_18 : memref<4xi64> to memref<7xi64>
    %40 = arith.remui %c2057239616_i32, %c1269864297_i32 : i32
    %41 = memref.realloc %alloc_21 : memref<4xf32> to memref<7xf32>
    %42 = arith.divf %cst, %cst : f32
    %43 = arith.shli %false_1, %true_2 : i1
    vector.print %26 : vector<7x7x7xf16>
    %44 = math.ctlz %6 : tensor<1x1xi64>
    %45 = arith.addf %cst_3, %cst_3 : f16
    %46 = math.atan2 %cst, %cst : f32
    %47 = vector.insert %false, %18 [2] : i1 into vector<4xi1>
    %48 = memref.realloc %alloc_12 : memref<4xi1> to memref<7xi1>
    %49 = vector.splat %c4 : vector<1x1xindex>
    %50 = math.log1p %16 : tensor<4xf16>
    %51 = index.ceildivs %c12, %c13
    %52 = math.powf %12, %12 : tensor<4xf32>
    %53 = vector.splat %c-6544_i16 : vector<7x7x7xi16>
    %54 = bufferization.clone %alloc_13 : memref<7x7x7xf32> to memref<7x7x7xf32>
    %55 = math.exp %0 : tensor<1x1xf16>
    %alloca = memref.alloca() : memref<1x1xi16>
    %56 = arith.remui %c11551_i16, %c-6544_i16 : i16
    %57 = math.absf %cst_3 : f16
    %58 = vector.insert %false, %18 [3] : i1 into vector<4xi1>
    %59 = vector.shuffle %26, %26 [5, 6, 7, 9, 11] : vector<7x7x7xf16>, vector<7x7x7xf16>
    %60 = affine.if affine_set<(d0, d1) : (d0 - ((d0 * 2) floordiv 4 + 2) + 12 == 0, d1 + 64 == 0, d1 + 64 >= 0)>(%c4, %c13) -> memref<1x4x4xi1> {
      %expanded_32 = tensor.expand_shape %4 [[0], [1], [2, 3]] : tensor<1x4x4xf32> into tensor<1x4x4x1xf32>
      %275 = math.rsqrt %4 : tensor<1x4x4xf32>
      %276 = math.exp %0 : tensor<1x1xf16>
      %277 = arith.divui %c-6544_i16, %c28088_i16 : i16
      %278 = vector.reduction <minsi>, %18 : vector<4xi1> into i1
      %c801255938_i32 = arith.constant 801255938 : i32
      %279 = math.floor %12 : tensor<4xf32>
      %280 = index.maxu %c6, %c10
      affine.yield %alloc_11 : memref<1x4x4xi1>
    } else {
      %275 = vector.broadcast %cst_3 : f16 to vector<7x7xf16>
      %dest_32, %accumulated_value_33 = vector.scan <mul>, %26, %275 {inclusive = true, reduction_dim = 0 : i64} : vector<7x7x7xf16>, vector<7x7xf16>
      %expanded_34 = tensor.expand_shape %15 [[0], [1], [2, 3]] : tensor<7x7x7xi32> into tensor<7x7x7x1xi32>
      %276 = vector.insert %true_2, %18 [2] : i1 into vector<4xi1>
      %277 = vector.reduction <maxsi>, %18 : vector<4xi1> into i1
      %278 = math.absf %20 : tensor<f32>
      %279 = tensor.empty() : tensor<4xf32>
      %280 = math.roundeven %12 : tensor<4xf32>
      %281 = tensor.empty(%c8, %c11) : tensor<1x?x?xf16>
      affine.yield %alloc_11 : memref<1x4x4xi1>
    }
    scf.if %false_1 {
      %275 = arith.minf %cst_0, %cst : f32
      %276 = arith.ceildivsi %c-30012_i16, %c-6544_i16 : i16
      %277 = tensor.empty() : tensor<1x1xi64>
      %278 = linalg.matmul ins(%6, %6 : tensor<1x1xi64>, tensor<1x1xi64>) outs(%277 : tensor<1x1xi64>) -> tensor<1x1xi64>
      %279 = arith.ori %c11551_i16, %c25801_i16 : i16
      %280 = math.fma %cst_3, %cst_3, %cst_3 : f16
      %281 = index.ceildivu %c11, %c12
      %282 = vector.flat_transpose %24 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
      %283 = math.atan %12 : tensor<4xf32>
    } else {
      %275 = memref.alloca_scope  -> (i64) {
        %283 = arith.remui %c1269864297_i32, %c2057239616_i32 : i32
        %284 = index.maxs %c11, %c11
        %285 = arith.maxui %c28088_i16, %c-6544_i16 : i16
        %286 = math.ctlz %c-30012_i16 : i16
        %287 = math.expm1 %19 : tensor<f32>
        %288 = index.divu %c8, %c4
        %289 = arith.ceildivsi %c28088_i16, %c11551_i16 : i16
        %290 = arith.divsi %true, %false_1 : i1
        %291 = arith.maxf %cst_3, %cst_3 : f16
        %292 = index.ceildivs %c0, %c2
        %293 = affine.max affine_map<(d0, d1) -> (d0 + 16, d0, 0)>(%288, %c0)
        %alloca_32 = memref.alloca() : memref<1x4x4xi16>
        %294 = math.exp %12 : tensor<4xf32>
        affine.store %c25801_i16, %alloc[%c4, %c2, %c3] : memref<1x4x4xi16>
        %295 = math.cos %1 : tensor<4xf16>
        %296 = vector.broadcast %cst_3 : f16 to vector<7x7xf16>
        %dest_33, %accumulated_value_34 = vector.scan <add>, %26, %296 {inclusive = true, reduction_dim = 0 : i64} : vector<7x7x7xf16>, vector<7x7xf16>
        %297 = arith.remui %c953342303_i32, %c1269864297_i32 : i32
        %298 = bufferization.to_memref %12 : memref<4xf32>
        %299 = index.mul %c15, %c11
        %splat_35 = tensor.splat %c1527806364_i64 : tensor<1x4x4xi64>
        %300 = vector.reduction <mul>, %24 : vector<1xi1> into i1
        %301 = bufferization.to_tensor %alloc_19 : memref<4xf32>
        %302 = arith.divf %cst, %cst_0 : f32
        %303 = tensor.empty() : tensor<1x1xi64>
        %304 = linalg.matmul ins(%6, %6 : tensor<1x1xi64>, tensor<1x1xi64>) outs(%303 : tensor<1x1xi64>) -> tensor<1x1xi64>
        %305 = vector.reduction <and>, %21 : vector<1xi1> into i1
        %306 = arith.remf %cst, %cst_0 : f32
        %307 = vector.insert %false, %21 [0] : i1 into vector<1xi1>
        %308 = arith.remui %false, %true_2 : i1
        %309 = index.ceildivs %c0, %288
        %310 = arith.andi %c28088_i16, %c11551_i16 : i16
        %311 = math.roundeven %0 : tensor<1x1xf16>
        %alloca_36 = memref.alloca() : memref<4xf16>
        memref.alloca_scope.return %c1527806364_i64 : i64
      }
      %276 = arith.minui %c2057239616_i32, %c1269864297_i32 : i32
      %277 = math.atan2 %0, %0 : tensor<1x1xf16>
      scf.index_switch %c2 
      case 1 {
        %283 = math.ctlz %5 : tensor<1x4x4xi1>
        %284 = index.maxs %c2, %51
        %285 = index.casts %275 : i64 to index
        %286 = affine.min affine_map<(d0, d1, d2, d3) -> (d1, d2, d3)>(%285, %c1, %c13, %c14)
        %287 = math.atan2 %cst, %cst_0 : f32
        %288 = vector.load %alloc[%c0, %c0, %c1] : memref<1x4x4xi16>, vector<1x1xi16>
        %289 = vector.extract %26[4] : vector<7x7x7xf16>
        %290 = math.cttz %10 : tensor<1x4x4xi64>
        %expanded_32 = tensor.expand_shape %14 [[0], [1], [2, 3]] : tensor<1x4x4xi64> into tensor<1x4x4x1xi64>
        %291 = index.maxu %c14, %c2
        %292 = affine.apply affine_map<(d0, d1) -> (-((d0 * -2) floordiv 4))>(%c4, %c6)
        %293 = math.log10 %19 : tensor<f32>
        %294 = vector.multi_reduction <and>, %24, %true_2 [0] : vector<1xi1> to i1
        %295 = arith.andi %c953342303_i32, %c2057239616_i32 : i32
        %296 = arith.minf %cst, %cst_0 : f32
        %expanded_33 = tensor.expand_shape %7 [[0], [1], [2, 3]] : tensor<7x7x7xi64> into tensor<7x7x7x1xi64>
        scf.yield
      }
      case 2 {
        %283 = arith.mulf %cst_3, %cst_3 : f16
        %284 = arith.negf %cst : f32
        vector.print %26 : vector<7x7x7xf16>
        %285 = arith.subi %c28088_i16, %c-30012_i16 : i16
        %286 = arith.maxf %cst, %cst : f32
        %287 = arith.divsi %275, %275 : i64
        %288 = arith.minui %c953342303_i32, %c1269864297_i32 : i32
        %289 = index.add %51, %c11
        vector.print %26 : vector<7x7x7xf16>
        affine.store %c11551_i16, %alloc_20[%c4] : memref<1xi16>
        %290 = math.log2 %38 : tensor<1x4x4xf32>
        %291 = arith.cmpi sgt, %c25801_i16, %c-30012_i16 : i16
        %292 = vector.broadcast %c2 : index to vector<1xindex>
        %293 = vector.broadcast %275 : i64 to vector<1xi64>
        vector.scatter %alloc_4[%c0, %c0] [%292], %24, %293 : memref<1x1xi64>, vector<1xindex>, vector<1xi1>, vector<1xi64>
        %294 = affine.apply affine_map<(d0, d1) -> (0)>(%c2, %c14)
        %295 = math.cos %17 : tensor<4xf16>
        %alloc_32 = memref.alloc() : memref<4xi64>
        scf.yield
      }
      case 3 {
        %283 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 floordiv 128, (d1 - 128) ceildiv 64, d2 - 128, d1 floordiv 128)>(%c3, %c7, %c8, %c14)
        %284 = arith.divsi %c-6544_i16, %c-6544_i16 : i16
        %285 = arith.ori %275, %275 : i64
        vector.print %21 : vector<1xi1>
        %286 = tensor.empty() : tensor<i32>
        %287 = math.fpowi %19, %286 : tensor<f32>, tensor<i32>
        %c1746962755_i32 = arith.constant 1746962755 : i32
        %288 = math.expm1 %1 : tensor<4xf16>
        %289 = arith.subi %c2057239616_i32, %c1269864297_i32 : i32
        %290 = vector.splat %c953342303_i32 : vector<1x1xi32>
        %291 = index.ceildivu %c11, %c0
        %292 = arith.cmpi sgt, %c1269864297_i32, %c1269864297_i32 : i32
        %293 = math.absi %286 : tensor<i32>
        %294 = affine.max affine_map<(d0, d1, d2) -> ((-d1) ceildiv 16 - 8, (-d1) ceildiv 16, (-d1) ceildiv 16 - (-d1) floordiv 32 - 8)>(%c9, %c4, %c7)
        %295 = arith.mulf %cst_3, %cst_3 : f16
        %296 = vector.broadcast %cst : f32 to vector<1x4x4xf32>
        %297 = vector.fma %296, %296, %296 : vector<1x4x4xf32>
        %298 = math.cttz %2 : tensor<4xi1>
        scf.yield
      }
      case 4 {
        %283 = math.expm1 %cst : f32
        %284 = vector.flat_transpose %24 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %285 = tensor.empty() : tensor<7x7x7xi32>
        %286 = arith.divsi %c25801_i16, %c11551_i16 : i16
        %287 = affine.load %alloc_16[%c9, %c11, %c13] : memref<7x7x7xf16>
        %expanded_32 = tensor.expand_shape %7 [[0], [1], [2, 3]] : tensor<7x7x7xi64> into tensor<7x7x7x1xi64>
        %288 = math.atan2 %4, %4 : tensor<1x4x4xf32>
        %289 = vector.flat_transpose %284 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %290 = math.exp %4 : tensor<1x4x4xf32>
        vector.print %284 : vector<1xi1>
        %291 = affine.apply affine_map<(d0) -> (0)>(%c10)
        affine.store %c1527806364_i64, %alloc_18[%c9] : memref<4xi64>
        %292 = math.ctlz %8 : tensor<7x7x7xi32>
        %293 = vector.load %alloc_10[%c0, %c0] : memref<1x1xi1>, vector<1x4x4xi1>
        %294 = math.powf %cst_0, %cst : f32
        %295 = vector.reduction <and>, %289 : vector<1xi1> into i1
        scf.yield
      }
      default {
        %283 = arith.shli %true, %false : i1
        %284 = arith.remui %c-30012_i16, %c11551_i16 : i16
        %285 = arith.divsi %c953342303_i32, %c2057239616_i32 : i32
        %286 = math.log1p %cst : f32
        %c0_i64 = arith.constant 0 : i64
        %287 = vector.transfer_read %6[%c10, %c6], %c0_i64 : tensor<1x1xi64>, vector<1xi64>
        %288 = math.fma %cst_0, %cst, %cst_0 : f32
        %289 = arith.minui %c1527806364_i64, %c0_i64 : i64
        %290 = index.castu %c953342303_i32 : i32 to index
        %291 = arith.subi %c-6544_i16, %c28088_i16 : i16
        %cast_32 = tensor.cast %15 : tensor<7x7x7xi32> to tensor<?x?x?xi32>
        %292 = index.divs %c14, %c11
        %293 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %21, %24, %false_1 : vector<1xi1>, vector<1xi1> into i1
        %294 = math.exp2 %12 : tensor<4xf32>
        %rank = tensor.rank %7 : tensor<7x7x7xi64>
        %295 = index.castu %c5 : index to i32
        %296 = arith.maxf %cst, %cst_0 : f32
      }
      %278 = scf.while (%arg2 = %cst_0) : (f32) -> f32 {
        %283 = arith.ceildivsi %true_2, %true : i1
        %284 = math.log10 %0 : tensor<1x1xf16>
        %285 = vector.broadcast %c1527806364_i64 : i64 to vector<4xi64>
        %286 = vector.maskedload %alloc_18[%c0], %18, %285 : memref<4xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
        %287 = index.maxs %c11, %c2
        %288 = math.floor %4 : tensor<1x4x4xf32>
        affine.store %c-6544_i16, %alloc_17[%c10, %c13] : memref<1x1xi16>
        %289 = arith.minui %c1269864297_i32, %c953342303_i32 : i32
        %290 = tensor.empty() : tensor<1x1xf16>
        %291 = linalg.matmul ins(%0, %0 : tensor<1x1xf16>, tensor<1x1xf16>) outs(%290 : tensor<1x1xf16>) -> tensor<1x1xf16>
        scf.condition(%false) %cst_0 : f32
      } do {
      ^bb0(%arg2: f32):
        %alloc_32 = memref.alloc() : memref<7x7x7xi16>
        %283 = vector.broadcast %c-6544_i16 : i16 to vector<1x4x4xi16>
        %284 = vector.broadcast %true : i1 to vector<1x4x4xi1>
        %285 = vector.broadcast %c2057239616_i32 : i32 to vector<1x4x4xi32>
        %286 = vector.gather %alloc_32[%c7, %c12, %c4] [%285], %284, %283 : memref<7x7x7xi16>, vector<1x4x4xi32>, vector<1x4x4xi1>, vector<1x4x4xi16> into vector<1x4x4xi16>
        %287 = math.round %4 : tensor<1x4x4xf32>
        %288 = tensor.empty() : tensor<1x1xi64>
        %289 = linalg.matmul ins(%6, %6 : tensor<1x1xi64>, tensor<1x1xi64>) outs(%288 : tensor<1x1xi64>) -> tensor<1x1xi64>
        %290 = index.maxu %c0, %c11
        %291 = math.floor %arg2 : f32
        %292 = math.cttz %6 : tensor<1x1xi64>
        %293 = arith.divf %cst_0, %arg2 : f32
        %294 = affine.max affine_map<(d0, d1, d2, d3) -> (d1)>(%c6, %c6, %c4, %c14)
        %295 = vector.load %alloc_20[%c0] : memref<1xi16>, vector<1x4x4xi16>
        %296 = arith.mulf %cst_0, %arg2 : f32
        %297 = index.sub %25, %c11
        %298 = math.roundeven %12 : tensor<4xf32>
        vector.print %24 : vector<1xi1>
        %299 = vector.broadcast %cst_3 : f16 to vector<1x4x4xf16>
        %300 = vector.gather %16[%c1] [%285], %284, %299 : tensor<4xf16>, vector<1x4x4xi32>, vector<1x4x4xi1>, vector<1x4x4xf16> into vector<1x4x4xf16>
        %301 = vector.broadcast %c1527806364_i64 : i64 to vector<i64>
        %302 = vector.transfer_write %301, %9[%c1] : vector<i64>, tensor<4xi64>
        memref.tensor_store %15, %alloc_9 : memref<7x7x7xi32>
        scf.yield %cst_0 : f32
      }
      %279 = index.divs %c10, %c2
      %280 = vector.broadcast %true : i1 to vector<i1>
      %281 = vector.transfer_write %280, %2[%c8] : vector<i1>, tensor<4xi1>
      %282 = math.rsqrt %1 : tensor<4xf16>
    }
    %61 = math.absf %4 : tensor<1x4x4xf32>
    %62 = arith.ceildivsi %c25801_i16, %c11551_i16 : i16
    %63 = vector.load %alloc_8[%c0, %c2, %c3] : memref<1x4x4xi64>, vector<1x4x4xi64>
    %64 = math.atan %cst : f32
    %65 = math.round %20 : tensor<f32>
    %66 = vector.broadcast %true_2 : i1 to vector<1x1xi1>
    %67 = vector.outerproduct %21, %24, %66 {kind = #vector.kind<maxui>} : vector<1xi1>, vector<1xi1>
    %68 = tensor.empty() : tensor<4xi16>
    %69 = index.ceildivs %c6, %c11
    %70 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 - 56)>(%c12, %c7, %c5, %c7)
    scf.index_switch %c12 
    case 1 {
      %275 = vector.broadcast %25 : index to vector<4xindex>
      %276 = vector.broadcast %c2057239616_i32 : i32 to vector<4xi32>
      vector.scatter %alloc_6[%c0, %c0] [%275], %18, %276 : memref<1x1xi32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
      %277 = vector.broadcast %cst : f32 to vector<1x4x4xf32>
      %278 = vector.fma %277, %277, %277 : vector<1x4x4xf32>
      %279 = vector.extract %63[0] : vector<1x4x4xi64>
      %280 = bufferization.clone %54 : memref<7x7x7xf32> to memref<7x7x7xf32>
      %281 = affine.load %alloc_18[%c0] : memref<4xi64>
      %282 = arith.divui %true_2, %false : i1
      %283 = index.casts %c1 : index to i32
      %284 = vector.matrix_multiply %18, %24 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<1xi1>) -> vector<4xi1>
      %285 = memref.atomic_rmw assign %cst, %alloc_21[%c0] : (f32, memref<4xf32>) -> f32
      %286 = vector.broadcast %c1527806364_i64 : i64 to vector<1x1xi64>
      %287 = vector.broadcast %true : i1 to vector<1x1xi1>
      %288 = vector.outerproduct %24, %24, %287 {kind = #vector.kind<xor>} : vector<1xi1>, vector<1xi1>
      %289 = arith.addf %cst_0, %cst : f32
      %290 = affine.min affine_map<(d0, d1) -> (d1 * 2 - 34, d1 * 64, (d1 ceildiv 4 + 1) floordiv 128, 0)>(%c12, %70)
      %291 = vector.insertelement %true, %21[%c13 : index] : vector<1xi1>
      %extracted_32 = tensor.extract %10[%c0, %c0, %c2] : tensor<1x4x4xi64>
      %alloca_33 = memref.alloca() : memref<1x4x4xi32>
      scf.yield
    }
    case 2 {
      %275 = vector.broadcast %c-6544_i16 : i16 to vector<4xi16>
      %276 = vector.maskedload %alloc_20[%c0], %18, %275 : memref<1xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
      %277 = memref.load %alloc_18[%c2] : memref<4xi64>
      %278 = vector.matrix_multiply %18, %24 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<1xi1>) -> vector<4xi1>
      %279 = vector.broadcast %c3 : index to vector<12xindex>
      %280 = vector.broadcast %false_1 : i1 to vector<12xi1>
      %281 = vector.broadcast %c-6544_i16 : i16 to vector<12xi16>
      vector.scatter %alloc[%c0, %c2, %c0] [%279], %280, %281 : memref<1x4x4xi16>, vector<12xindex>, vector<12xi1>, vector<12xi16>
      %282 = arith.shli %true_2, %false_1 : i1
      %alloca_32 = memref.alloca() : memref<1x1xf32>
      scf.index_switch %c6 
      case 1 {
        %291 = vector.broadcast %c1527806364_i64 : i64 to vector<1x4xi64>
        %292 = vector.multi_reduction <maxui>, %63, %291 [2] : vector<1x4x4xi64> to vector<1x4xi64>
        %293 = tensor.empty() : tensor<4xi16>
        %inserted_33 = tensor.insert %c25801_i16 into %293[%c2] : tensor<4xi16>
        %294 = arith.addf %cst_3, %cst_3 : f16
        %295 = math.fma %17, %17, %1 : tensor<4xf16>
        %296 = vector.reduction <and>, %275 : vector<4xi16> into i16
        %297 = vector.broadcast %false_1 : i1 to vector<1x4x4xi1>
        %298 = arith.ceildivsi %true_2, %true_2 : i1
        %299 = vector.broadcast %cst_3 : f16 to vector<f16>
        %300 = vector.transfer_write %299, %16[%c7] : vector<f16>, tensor<4xf16>
        %301 = arith.maxsi %c-6544_i16, %c-30012_i16 : i16
        %302 = affine.load %alloc_15[%c2, %c13, %c10] : memref<1x4x4xf32>
        %303 = math.absf %17 : tensor<4xf16>
        %304 = vector.transpose %21, [0] : vector<1xi1> to vector<1xi1>
        %305 = vector.extract %275[0] : vector<4xi16>
        %306 = math.absf %38 : tensor<1x4x4xf32>
        %extracted_34 = tensor.extract %2[%c3] : tensor<4xi1>
        scf.yield
      }
      case 2 {
        %291 = arith.cmpf une, %cst_0, %cst_0 : f32
        %c1_i64 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %292 = vector.transfer_read %10[%c10, %c6, %c4], %c0_i64 : tensor<1x4x4xi64>, vector<i64>
        %293 = arith.maxsi %c1269864297_i32, %c1269864297_i32 : i32
        %294 = arith.divui %false_1, %false : i1
        %295 = math.tan %0 : tensor<1x1xf16>
        %296 = arith.addi %c1269864297_i32, %c953342303_i32 : i32
        %297 = arith.remui %c1527806364_i64, %c1_i64 : i64
        %298 = math.round %17 : tensor<4xf16>
        %299 = arith.minui %c11551_i16, %c11551_i16 : i16
        %300 = math.atan %1 : tensor<4xf16>
        %301 = math.exp %17 : tensor<4xf16>
        %302 = vector.insertelement %true_2, %24[%c5 : index] : vector<1xi1>
        %303 = math.log2 %16 : tensor<4xf16>
        %304 = bufferization.clone %alloc_15 : memref<1x4x4xf32> to memref<1x4x4xf32>
        %305 = arith.floordivsi %c1527806364_i64, %c1_i64 : i64
        %306 = index.ceildivs %c8, %c7
        scf.yield
      }
      case 3 {
        %291 = arith.shrui %c-30012_i16, %c-30012_i16 : i16
        %c1080434005_i32 = arith.constant 1080434005 : i32
        %292 = math.absf %19 : tensor<f32>
        %293 = index.divu %c10, %c15
        %294 = index.divs %293, %c0
        %295 = tensor.empty() : tensor<4xi32>
        %296 = vector.broadcast %c2057239616_i32 : i32 to vector<7x7x7xi32>
        %297 = vector.broadcast %false : i1 to vector<7x7x7xi1>
        %298 = vector.gather %295[%51] [%296], %297, %296 : tensor<4xi32>, vector<7x7x7xi32>, vector<7x7x7xi1>, vector<7x7x7xi32> into vector<7x7x7xi32>
        %299 = vector.flat_transpose %24 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %300 = vector.reduction <maxsi>, %24 : vector<1xi1> into i1
        %301 = arith.addi %c-30012_i16, %c28088_i16 : i16
        %302 = index.sub %70, %70
        %expanded_33 = tensor.expand_shape %13 [[0], [1], [2, 3]] : tensor<7x7x7xi64> into tensor<7x7x7x1xi64>
        %303 = tensor.empty() : tensor<1x1xi64>
        %304 = linalg.matmul ins(%6, %6 : tensor<1x1xi64>, tensor<1x1xi64>) outs(%303 : tensor<1x1xi64>) -> tensor<1x1xi64>
        %305 = arith.divsi %true_2, %true : i1
        %306 = math.cos %0 : tensor<1x1xf16>
        %307 = vector.bitcast %296 : vector<7x7x7xi32> to vector<7x7x7xi32>
        %cast_34 = tensor.cast %1 : tensor<4xf16> to tensor<?xf16>
        scf.yield
      }
      case 4 {
        %291 = vector.bitcast %275 : vector<4xi16> to vector<4xf16>
        %292 = arith.subi %false, %true_2 : i1
        %rank = tensor.rank %10 : tensor<1x4x4xi64>
        %293 = vector.broadcast %c28088_i16 : i16 to vector<1xi16>
        %294 = vector.maskedload %alloc_17[%c0, %c0], %24, %293 : memref<1x1xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
        %295 = vector.splat %c8 : vector<1x1xindex>
        %296 = math.absf %1 : tensor<4xf16>
        %297 = math.ctlz %8 : tensor<7x7x7xi32>
        vector.print %278 : vector<4xi1>
        %298 = arith.andi %c25801_i16, %c11551_i16 : i16
        %299 = arith.mulf %cst_0, %cst : f32
        %300 = math.exp %4 : tensor<1x4x4xf32>
        %301 = math.log2 %38 : tensor<1x4x4xf32>
        %302 = arith.mulf %cst, %cst_0 : f32
        %303 = index.casts %false_1 : i1 to index
        %304 = math.fma %20, %20, %19 : tensor<f32>
        %305 = vector.reduction <xor>, %24 : vector<1xi1> into i1
        scf.yield
      }
      default {
        %291 = arith.mulf %cst, %cst : f32
        %292 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 * 64)>(%c3, %c15, %c3, %c12)
        %293 = math.round %cst_3 : f16
        %294 = vector.broadcast %cst : f32 to vector<1xf32>
        %295 = vector.maskedload %alloc_15[%c0, %c3, %c0], %24, %294 : memref<1x4x4xf32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
        %296 = math.atan %20 : tensor<f32>
        %297 = arith.remf %cst_3, %cst_3 : f16
        %298 = arith.cmpf ugt, %cst_3, %cst_3 : f16
        %299 = math.rsqrt %cst : f32
        %extracted_33 = tensor.extract %11[%c0, %c2, %c0] : tensor<1x4x4xi64>
        %300 = memref.load %alloc_12[%c0] : memref<4xi1>
        %301 = vector.broadcast %cst : f32 to vector<12xf32>
        %302 = vector.broadcast %true_2 : i1 to vector<12xi1>
        %303 = vector.maskedload %alloc_21[%c3], %302, %301 : memref<4xf32>, vector<12xi1>, vector<12xf32> into vector<12xf32>
        %304 = arith.remsi %c953342303_i32, %c953342303_i32 : i32
        %305 = math.copysign %4, %38 : tensor<1x4x4xf32>
        %306 = index.maxs %c4, %51
        %307 = math.cttz %c28088_i16 : i16
        %308 = math.cttz %8 : tensor<7x7x7xi32>
      }
      %283 = math.rsqrt %19 : tensor<f32>
      %284 = arith.remf %cst, %cst : f32
      %285 = scf.while (%arg2 = %cst) : (f32) -> f32 {
        %291 = arith.ori %c25801_i16, %c-6544_i16 : i16
        %292 = math.absf %20 : tensor<f32>
        %293 = bufferization.to_memref %13 : memref<7x7x7xi64>
        %294 = math.ctlz %9 : tensor<4xi64>
        %295 = math.rsqrt %cst_3 : f16
        affine.store %false, %alloc_11[%c8, %c13, %c4] : memref<1x4x4xi1>
        %296 = vector.reduction <add>, %24 : vector<1xi1> into i1
        %297 = memref.load %alloc_11[%c0, %c3, %c0] : memref<1x4x4xi1>
        scf.condition(%false) %arg2 : f32
      } do {
      ^bb0(%arg2: f32):
        %291 = math.ctlz %3 : tensor<7x7x7xi32>
        %292 = vector.splat %arg2 : vector<4xf32>
        %293 = vector.flat_transpose %278 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
        %294 = arith.cmpi sle, %c1269864297_i32, %c953342303_i32 : i32
        %295 = arith.minui %c953342303_i32, %c2057239616_i32 : i32
        %296 = vector.broadcast %arg2 : f32 to vector<7x7x7xf32>
        %297 = vector.broadcast %false_1 : i1 to vector<7x7x7xi1>
        %298 = vector.broadcast %c2057239616_i32 : i32 to vector<7x7x7xi32>
        %299 = vector.gather %alloc_15[%c12, %c10, %c4] [%298], %297, %296 : memref<1x4x4xf32>, vector<7x7x7xi32>, vector<7x7x7xi1>, vector<7x7x7xf32> into vector<7x7x7xf32>
        %300 = bufferization.to_tensor %alloc_10 : memref<1x1xi1>
        %301 = math.exp %4 : tensor<1x4x4xf32>
        %302 = arith.divsi %c-6544_i16, %c-6544_i16 : i16
        %303 = index.ceildivs %c9, %c6
        %304 = math.powf %cst_0, %cst_0 : f32
        %305 = affine.load %54[%c15, %c2, %c6] : memref<7x7x7xf32>
        %306 = arith.andi %c2057239616_i32, %c1269864297_i32 : i32
        %307 = arith.remf %305, %305 : f32
        %308 = vector.reduction <maxui>, %18 : vector<4xi1> into i1
        %309 = arith.divf %cst_0, %cst : f32
        scf.yield %cst_0 : f32
      }
      %286 = math.log %19 : tensor<f32>
      %287 = vector.extract_strided_slice %24 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
      %288 = math.atan2 %38, %4 : tensor<1x4x4xf32>
      %c31149_i16 = arith.constant 31149 : i16
      %289 = math.sqrt %cst_0 : f32
      %290 = arith.andi %c28088_i16, %c11551_i16 : i16
      scf.yield
    }
    case 3 {
      %275 = vector.broadcast %cst_3 : f16 to vector<7x7x7x7xf16>
      %276 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %26, %26, %275 : vector<7x7x7xf16>, vector<7x7x7xf16> into vector<7x7x7x7xf16>
      %277 = vector.broadcast %cst_3 : f16 to vector<7x7xf16>
      %278 = vector.insert %277, %26 [6] : vector<7x7xf16> into vector<7x7x7xf16>
      %279 = arith.shli %c1527806364_i64, %c1527806364_i64 : i64
      %280 = scf.while (%arg2 = %63) : (vector<1x4x4xi64>) -> vector<1x4x4xi64> {
        %c-4131_i16 = arith.constant -4131 : i16
        %292 = arith.remf %cst, %cst_0 : f32
        %293 = affine.load %alloc_9[%c7, %c6, %c7] : memref<7x7x7xi32>
        %294 = arith.ori %c-6544_i16, %c-30012_i16 : i16
        %295 = math.cttz %c-6544_i16 : i16
        %296 = tensor.empty() : tensor<1x1xf16>
        %297 = linalg.matmul ins(%0, %0 : tensor<1x1xf16>, tensor<1x1xf16>) outs(%296 : tensor<1x1xf16>) -> tensor<1x1xf16>
        %298 = memref.realloc %alloc_18 : memref<4xi64> to memref<4xi64>
        %299 = arith.addi %true_2, %false_1 : i1
        scf.condition(%true) %63 : vector<1x4x4xi64>
      } do {
      ^bb0(%arg2: vector<1x4x4xi64>):
        %292 = vector.broadcast %c10 : index to vector<4xindex>
        %293 = vector.broadcast %cst_0 : f32 to vector<4xf32>
        vector.scatter %alloc_21[%c2] [%292], %18, %293 : memref<4xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
        %294 = index.add %c12, %25
        %295 = vector.load %54[%c5, %c3, %c0] : memref<7x7x7xf32>, vector<1x1xf32>
        %296 = index.castu %51 : index to i32
        %297 = index.ceildivs %c2, %c12
        %298 = index.ceildivu %c4, %c4
        %299 = vector.insert %true_2, %18 [0] : i1 into vector<4xi1>
        %300 = tensor.empty(%c5) : tensor<?xi64>
        %301 = index.ceildivu %c2, %c12
        %302 = arith.maxf %cst, %cst_0 : f32
        %303 = arith.addi %c953342303_i32, %c1269864297_i32 : i32
        %304 = math.sqrt %0 : tensor<1x1xf16>
        %305 = index.casts %true : i1 to index
        %306 = arith.subi %c11551_i16, %c28088_i16 : i16
        %307 = arith.xori %c11551_i16, %c28088_i16 : i16
        %308 = memref.atomic_rmw maxs %c11551_i16, %alloc_17[%c0, %c0] : (i16, memref<1x1xi16>) -> i16
        scf.yield %63 : vector<1x4x4xi64>
      }
      %281 = math.log10 %20 : tensor<f32>
      %282 = arith.divsi %c1269864297_i32, %c1269864297_i32 : i32
      %283 = vector.reduction <mul>, %18 : vector<4xi1> into i1
      %284 = arith.remf %cst_3, %cst_3 : f16
      affine.for %arg2 = 0 to 81 {
      }
      %285 = vector.splat %69 : vector<4xindex>
      %286 = math.atan2 %1, %17 : tensor<4xf16>
      %287 = math.log2 %cst_3 : f16
      %288 = vector.multi_reduction <and>, %21, %24 [] : vector<1xi1> to vector<1xi1>
      %289 = memref.realloc %alloc_20 : memref<1xi16> to memref<1xi16>
      %290 = math.absf %16 : tensor<4xf16>
      %291 = math.expm1 %cst : f32
      scf.yield
    }
    case 4 {
      %275 = index.divs %51, %70
      %276 = math.floor %12 : tensor<4xf32>
      %277 = math.absf %0 : tensor<1x1xf16>
      %278 = math.expm1 %38 : tensor<1x4x4xf32>
      %279 = vector.insertelement %false_1, %21[%c15 : index] : vector<1xi1>
      %280 = vector.maskedload %alloc_7[%c0, %c0], %24, %24 : memref<1x1xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
      %281 = math.ctlz %11 : tensor<1x4x4xi64>
      %282 = arith.remsi %c1269864297_i32, %c1269864297_i32 : i32
      %283 = arith.maxsi %c-30012_i16, %c28088_i16 : i16
      %cast_32 = tensor.cast %13 : tensor<7x7x7xi64> to tensor<?x?x?xi64>
      %284 = math.sqrt %17 : tensor<4xf16>
      %285 = index.maxu %c2, %c15
      %286 = index.divs %70, %c7
      %287 = scf.while (%arg2 = %alloc_4) : (memref<1x1xi64>) -> memref<1x1xi64> {
        %290 = math.log1p %4 : tensor<1x4x4xf32>
        %291 = arith.remf %cst_0, %cst : f32
        %expanded_33 = tensor.expand_shape %3 [[0], [1], [2, 3]] : tensor<7x7x7xi32> into tensor<7x7x7x1xi32>
        affine.store %c1527806364_i64, %alloc_4[%c10, %c12] : memref<1x1xi64>
        %292 = vector.extract %26[3] : vector<7x7x7xf16>
        %293 = math.floor %0 : tensor<1x1xf16>
        %294 = math.fma %1, %16, %1 : tensor<4xf16>
        %295 = vector.broadcast %c1527806364_i64 : i64 to vector<4x4xi64>
        %dest_34, %accumulated_value_35 = vector.scan <minui>, %63, %295 {inclusive = false, reduction_dim = 0 : i64} : vector<1x4x4xi64>, vector<4x4xi64>
        scf.condition(%false_1) %alloc_4 : memref<1x1xi64>
      } do {
      ^bb0(%arg2: memref<1x1xi64>):
        %290 = arith.divsi %false, %false : i1
        memref.tensor_store %8, %alloc_9 : memref<7x7x7xi32>
        %extracted_33 = tensor.extract %17[%c3] : tensor<4xf16>
        %291 = vector.broadcast %286 : index to vector<7xindex>
        %292 = vector.broadcast %false_1 : i1 to vector<7xi1>
        %293 = vector.broadcast %cst_0 : f32 to vector<7xf32>
        vector.scatter %alloc_21[%c0] [%291], %292, %293 : memref<4xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
        %294 = vector.extract_strided_slice %63 {offsets = [0, 0], sizes = [1, 3], strides = [1, 1]} : vector<1x4x4xi64> to vector<1x3x4xi64>
        %295 = math.ipowi %true, %false_1 : i1
        %expanded_34 = tensor.expand_shape %10 [[0], [1], [2, 3]] : tensor<1x4x4xi64> into tensor<1x4x4x1xi64>
        %296 = bufferization.clone %alloc_14 : memref<4xi1> to memref<4xi1>
        %297 = math.log1p %4 : tensor<1x4x4xf32>
        %298 = index.mul %286, %c1
        %299 = arith.remf %cst_3, %cst_3 : f16
        %cast_35 = tensor.cast %12 : tensor<4xf32> to tensor<?xf32>
        %300 = bufferization.clone %alloc_21 : memref<4xf32> to memref<4xf32>
        %301 = arith.divsi %false, %true : i1
        %302 = math.sqrt %20 : tensor<f32>
        %303 = arith.remf %extracted_33, %extracted_33 : f16
        scf.yield %arg2 : memref<1x1xi64>
      }
      %288 = tensor.empty() : tensor<4xf32>
      %289 = vector.reduction <mul>, %18 : vector<4xi1> into i1
      scf.yield
    }
    default {
      %275 = vector.broadcast %cst_3 : f16 to vector<7x7xf16>
      %dest_32, %accumulated_value_33 = vector.scan <add>, %26, %275 {inclusive = true, reduction_dim = 2 : i64} : vector<7x7x7xf16>, vector<7x7xf16>
      %276 = index.maxu %c13, %69
      %277 = arith.shli %true_2, %false : i1
      %278 = vector.broadcast %cst_3 : f16 to vector<7x7xf16>
      %dest_34, %accumulated_value_35 = vector.scan <add>, %26, %278 {inclusive = false, reduction_dim = 2 : i64} : vector<7x7x7xf16>, vector<7x7xf16>
      %279 = arith.remf %cst_3, %cst_3 : f16
      %280 = arith.remui %c1527806364_i64, %c1527806364_i64 : i64
      %alloca_36 = memref.alloca() : memref<7x7x7xi16>
      %281 = math.ipowi %8, %15 : tensor<7x7x7xi32>
      %282 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %18, %18, %true : vector<4xi1>, vector<4xi1> into i1
      %283 = vector.reduction <minui>, %21 : vector<1xi1> into i1
      %284 = math.log10 %16 : tensor<4xf16>
      %285 = arith.ori %c-6544_i16, %c-6544_i16 : i16
      %286 = arith.cmpi slt, %true_2, %true : i1
      %alloca_37 = memref.alloca() : memref<1x4x4xi32>
      %287 = math.ctpop %10 : tensor<1x4x4xi64>
      %288 = vector.splat %c1527806364_i64 : vector<1x4x4xi64>
    }
    %71 = arith.divf %cst_0, %cst_0 : f32
    %72 = memref.realloc %alloc_19 : memref<4xf32> to memref<12xf32>
    %73 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %21, %21, %true : vector<1xi1>, vector<1xi1> into i1
    %74 = arith.shrui %c1527806364_i64, %c1527806364_i64 : i64
    %75 = arith.mulf %cst_0, %cst : f32
    %76 = math.exp %4 : tensor<1x4x4xf32>
    %77 = index.ceildivu %c2, %c1
    %78 = tensor.empty() : tensor<4xi16>
    %79 = arith.maxsi %c2057239616_i32, %c953342303_i32 : i32
    %80 = index.casts %c9 : index to i32
    %81 = vector.bitcast %24 : vector<1xi1> to vector<1xi1>
    %82 = scf.if %true_2 -> (memref<4xi16>) {
      %275 = bufferization.to_tensor %alloc_20 : memref<1xi16>
      %276 = index.mul %c0, %c6
      %277 = arith.floordivsi %c-6544_i16, %c11551_i16 : i16
      %278 = index.mul %c6, %c15
      %279 = tensor.empty() : tensor<1x1xi64>
      %280 = linalg.matmul ins(%6, %6 : tensor<1x1xi64>, tensor<1x1xi64>) outs(%279 : tensor<1x1xi64>) -> tensor<1x1xi64>
      %281 = math.log2 %4 : tensor<1x4x4xf32>
      %282 = index.ceildivu %51, %c5
      %283 = arith.remf %cst, %cst_0 : f32
      %alloc_32 = memref.alloc() : memref<4xi16>
      scf.yield %alloc_32 : memref<4xi16>
    } else {
      %275 = index.maxu %c13, %c9
      %276 = tensor.empty() : tensor<7x7x7xf32>
      %277 = vector.broadcast %cst : f32 to vector<7x7x7xf32>
      %278 = vector.broadcast %false : i1 to vector<7x7x7xi1>
      %279 = vector.broadcast %c953342303_i32 : i32 to vector<7x7x7xi32>
      %280 = vector.gather %276[%c10, %c6, %c10] [%279], %278, %277 : tensor<7x7x7xf32>, vector<7x7x7xi32>, vector<7x7x7xi1>, vector<7x7x7xf32> into vector<7x7x7xf32>
      %281 = arith.subi %c953342303_i32, %c1269864297_i32 : i32
      %inserted_32 = tensor.insert %cst_3 into %17[%c1] : tensor<4xf16>
      %282 = arith.divsi %c25801_i16, %c11551_i16 : i16
      %283 = arith.maxui %c25801_i16, %c-6544_i16 : i16
      %284 = arith.divsi %c1527806364_i64, %c1527806364_i64 : i64
      %285 = vector.broadcast %c2057239616_i32 : i32 to vector<1xi32>
      %286 = vector.maskedload %alloc_9[%c5, %c5, %c3], %81, %285 : memref<7x7x7xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
      %alloc_33 = memref.alloc() : memref<4xi16>
      scf.yield %alloc_33 : memref<4xi16>
    }
    %83 = math.floor %4 : tensor<1x4x4xf32>
    %84 = arith.shrui %true_2, %true : i1
    %85 = vector.broadcast %true_2 : i1 to vector<1x4x4xi1>
    %86 = math.log2 %12 : tensor<4xf32>
    %87 = index.castu %c12 : index to i32
    %88 = index.maxs %c14, %c14
    %89 = arith.minf %cst_0, %cst_0 : f32
    %90 = index.mul %51, %88
    %91 = index.ceildivu %c6, %c12
    %c229503225_i64 = arith.constant 229503225 : i64
    %92 = math.powf %4, %4 : tensor<1x4x4xf32>
    %93 = math.log1p %12 : tensor<4xf32>
    %94 = math.expm1 %17 : tensor<4xf16>
    %95 = bufferization.clone %alloc_6 : memref<1x1xi32> to memref<1x1xi32>
    %96 = index.ceildivu %c15, %c0
    %97 = index.mul %c13, %c5
    %98 = bufferization.to_tensor %54 : memref<7x7x7xf32>
    %99 = index.castu %c14 : index to i32
    %100 = index.ceildivs %c8, %25
    %101 = arith.muli %true_2, %false : i1
    %102 = tensor.empty(%c3) : tensor<?xi32>
    %103 = affine.load %alloc_20[%c14] : memref<1xi16>
    %104 = arith.maxsi %c1269864297_i32, %c2057239616_i32 : i32
    %105 = math.fma %1, %1, %17 : tensor<4xf16>
    %106 = math.exp %0 : tensor<1x1xf16>
    %107 = arith.remui %c11551_i16, %103 : i16
    %108 = arith.maxf %cst, %cst_0 : f32
    %109 = math.log1p %1 : tensor<4xf16>
    %110 = memref.realloc %alloc_18 : memref<4xi64> to memref<1xi64>
    %111 = arith.subi %c953342303_i32, %c2057239616_i32 : i32
    %extracted = tensor.extract %2[%c3] : tensor<4xi1>
    %112 = math.absi %14 : tensor<1x4x4xi64>
    %113 = math.exp2 %1 : tensor<4xf16>
    %114 = math.cos %98 : tensor<7x7x7xf32>
    %alloca_22 = memref.alloca() : memref<4xi32>
    %115 = arith.remf %cst, %cst_0 : f32
    %116 = arith.addf %cst, %cst : f32
    %117 = math.floor %0 : tensor<1x1xf16>
    %118 = arith.divui %c28088_i16, %c25801_i16 : i16
    %119 = vector.broadcast %c1527806364_i64 : i64 to vector<4xi64>
    %120 = vector.insert %119, %63 [0, 0] : vector<4xi64> into vector<1x4x4xi64>
    %cst_23 = arith.constant 1.46696013E+9 : f32
    %121 = bufferization.clone %alloc_14 : memref<4xi1> to memref<4xi1>
    %122 = arith.ceildivsi %c953342303_i32, %c1269864297_i32 : i32
    %expanded = tensor.expand_shape %78 [[0, 1]] : tensor<4xi16> into tensor<4x1xi16>
    %123 = math.expm1 %19 : tensor<f32>
    %124 = affine.if affine_set<(d0, d1) : (((d1 + 8) mod 32) * 16 == 0, d0 + 64 >= 0, d0 mod 4 >= 0)>(%c0, %c0) -> memref<1x1xf32> {
      %275 = math.rsqrt %20 : tensor<f32>
      %generated = tensor.generate %c14 {
      ^bb0(%arg2: index, %arg3: index):
        %284 = math.cttz %8 : tensor<7x7x7xi32>
        %285 = memref.realloc %alloc_21 : memref<4xf32> to memref<1xf32>
        %286 = tensor.empty() : tensor<1x1xi64>
        %287 = linalg.matmul ins(%6, %6 : tensor<1x1xi64>, tensor<1x1xi64>) outs(%286 : tensor<1x1xi64>) -> tensor<1x1xi64>
        %288 = arith.shli %true_2, %true : i1
        tensor.yield %cst_0 : f32
      } : tensor<?x1xf32>
      %276 = tensor.empty() : tensor<1x4x4xi1>
      %277 = vector.insertelement %false_1, %18[%c0 : index] : vector<4xi1>
      %278 = math.sqrt %17 : tensor<4xf16>
      %279 = math.roundeven %12 : tensor<4xf32>
      %280 = arith.mulf %cst, %cst_0 : f32
      %281 = vector.broadcast %c1269864297_i32 : i32 to vector<7xi32>
      %282 = vector.broadcast %false_1 : i1 to vector<7xi1>
      %283 = vector.maskedload %95[%c0, %c0], %282, %281 : memref<1x1xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
      %alloc_32 = memref.alloc() : memref<1x1xf32>
      affine.yield %alloc_32 : memref<1x1xf32>
    } else {
      %275 = affine.apply affine_map<(d0) -> ((d0 - 8) * 512 + 1)>(%77)
      %276 = index.ceildivu %c3, %77
      %277 = arith.divf %cst, %cst_0 : f32
      %278 = arith.shli %c953342303_i32, %c1269864297_i32 : i32
      %279 = index.sub %69, %c9
      %280 = index.maxu %c6, %c1
      %expanded_32 = tensor.expand_shape %17 [[0, 1]] : tensor<4xf16> into tensor<4x1xf16>
      %281 = vector.broadcast %c-6544_i16 : i16 to vector<1xi16>
      %282 = vector.maskedload %alloc_17[%c0, %c0], %21, %281 : memref<1x1xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
      %alloc_33 = memref.alloc() : memref<1x1xf32>
      affine.yield %alloc_33 : memref<1x1xf32>
    }
    %125 = math.log1p %20 : tensor<f32>
    %126 = arith.ceildivsi %c-6544_i16, %c28088_i16 : i16
    affine.store %true_2, %alloc_10[%c4, %c3] : memref<1x1xi1>
    %127 = math.sqrt %1 : tensor<4xf16>
    %128 = arith.maxf %cst_3, %cst_3 : f16
    %129 = index.maxu %c5, %c10
    %130 = affine.load %alloc_19[%c3] : memref<4xf32>
    %inserted = tensor.insert %cst_3 into %0[%c0, %c0] : tensor<1x1xf16>
    affine.for %arg2 = 0 to 90 {
    }
    %131 = math.rsqrt %17 : tensor<4xf16>
    %132 = vector.broadcast %130 : f32 to vector<4xf32>
    %133 = vector.fma %132, %132, %132 : vector<4xf32>
    %134 = arith.maxf %cst_0, %cst : f32
    %135 = scf.index_switch %c0 -> memref<1x4x4xf16> 
    case 1 {
      %275 = math.fma %12, %12, %12 : tensor<4xf32>
      %276 = index.add %c12, %c7
      %277 = arith.muli %extracted, %extracted : i1
      %278 = bufferization.clone %alloc_11 : memref<1x4x4xi1> to memref<1x4x4xi1>
      %279 = tensor.empty() : tensor<1x4xi1>
      %280 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%279, %279, %2 : tensor<1x4xi1>, tensor<1x4xi1>, tensor<4xi1>) outs(%5 : tensor<1x4x4xi1>) {
      ^bb0(%in: i1, %in_35: i1, %in_36: i1, %out: i1):
        %290 = index.add %c9, %c3
        %291 = arith.subi %in, %true : i1
        %292 = arith.divsi %c28088_i16, %c-6544_i16 : i16
        %293 = index.divs %91, %c13
        %294 = vector.broadcast %in : i1 to vector<4x4x4x4xi1>
        %295 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<or>} %85, %85, %294 : vector<1x4x4xi1>, vector<1x4x4xi1> into vector<4x4x4x4xi1>
        %false_37 = index.bool.constant false
        %296 = arith.divsi %c-30012_i16, %c-30012_i16 : i16
        %297 = arith.mulf %cst_0, %cst_0 : f32
        %298 = arith.remui %false_1, %in : i1
        %299 = math.absf %17 : tensor<4xf16>
        %300 = index.mul %276, %c13
        %301 = index.divu %97, %100
        %302 = index.castu %c11551_i16 : i16 to index
        %true_38 = index.bool.constant true
        %303 = math.atan2 %0, %0 : tensor<1x1xf16>
        %304 = vector.transpose %81, [0] : vector<1xi1> to vector<1xi1>
        %305 = arith.cmpi slt, %c1269864297_i32, %c1269864297_i32 : i32
        %306 = math.sqrt %cst : f32
        %307 = tensor.empty() : tensor<7x7x7xf32>
        %308 = index.mul %c5, %302
        %309 = vector.load %alloc_10[%c0, %c0] : memref<1x1xi1>, vector<1x4x4xi1>
        %310 = math.log10 %1 : tensor<4xf16>
        %311 = bufferization.to_tensor %alloc_7 : memref<1x1xi1>
        %312 = index.maxu %c8, %c14
        %313 = tensor.empty() : tensor<7x7x7xi16>
        %314 = vector.broadcast %c11551_i16 : i16 to vector<4xi16>
        %315 = vector.broadcast %c953342303_i32 : i32 to vector<4xi32>
        %316 = vector.gather %313[%301, %51, %25] [%315], %18, %314 : tensor<7x7x7xi16>, vector<4xi32>, vector<4xi1>, vector<4xi16> into vector<4xi16>
        %317 = vector.insertelement %extracted, %24[%25 : index] : vector<1xi1>
        %318 = vector.flat_transpose %315 {columns = 2 : i32, rows = 2 : i32} : vector<4xi32> -> vector<4xi32>
        %319 = math.exp2 %cst_0 : f32
        %320 = index.ceildivu %c13, %c4
        %321 = index.maxs %c10, %300
        %322 = math.sqrt %1 : tensor<4xf16>
        %expanded_39 = tensor.expand_shape %313 [[0], [1], [2, 3]] : tensor<7x7x7xi16> into tensor<7x7x7x1xi16>
        linalg.yield %true : i1
      } -> tensor<1x4x4xi1>
      %281 = scf.while (%arg2 = %alloc_13) : (memref<7x7x7xf32>) -> memref<7x7x7xf32> {
        %290 = vector.broadcast %cst : f32 to vector<7x7x7xf32>
        %291 = arith.divsi %c1269864297_i32, %c953342303_i32 : i32
        %292 = math.absf %12 : tensor<4xf32>
        %293 = math.log2 %cst_0 : f32
        %294 = index.ceildivu %c3, %c14
        %295 = arith.remsi %c-30012_i16, %c25801_i16 : i16
        %296 = vector.load %arg2[%c3, %c5, %c0] : memref<7x7x7xf32>, vector<1x4x4xf32>
        %297 = bufferization.to_memref %16 : memref<4xf16>
        scf.condition(%false_1) %54 : memref<7x7x7xf32>
      } do {
      ^bb0(%arg2: memref<7x7x7xf32>):
        %290 = vector.splat %true_2 : vector<1x4x4xi1>
        %cast_35 = tensor.cast %14 : tensor<1x4x4xi64> to tensor<?x?x?xi64>
        %inserted_36 = tensor.insert %c1527806364_i64 into %11[%c0, %c2, %c2] : tensor<1x4x4xi64>
        %291 = arith.addf %cst_0, %cst : f32
        %292 = vector.broadcast %cst_0 : f32 to vector<7x7x7xf32>
        %293 = vector.fma %292, %292, %292 : vector<7x7x7xf32>
        %294 = index.casts %129 : index to i32
        %295 = math.log1p %12 : tensor<4xf32>
        %296 = arith.divf %cst_3, %cst_3 : f16
        %297 = memref.load %alloc_14[%c3] : memref<4xi1>
        %298 = memref.realloc %alloc_18 : memref<4xi64> to memref<4xi64>
        %299 = arith.subi %c953342303_i32, %c1269864297_i32 : i32
        %300 = index.add %c4, %c3
        %301 = memref.load %alloc_11[%c0, %c3, %c2] : memref<1x4x4xi1>
        %302 = vector.shuffle %63, %63 [0] : vector<1x4x4xi64>, vector<1x4x4xi64>
        %303 = vector.broadcast %cst_0 : f32 to vector<7x7x7x7xf32>
        %304 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %293, %292, %303 : vector<7x7x7xf32>, vector<7x7x7xf32> into vector<7x7x7x7xf32>
        %305 = arith.remui %c-30012_i16, %c28088_i16 : i16
        scf.yield %arg2 : memref<7x7x7xf32>
      }
      %282 = index.divs %51, %c9
      %alloca_32 = memref.alloca() : memref<4xi16>
      %283 = math.ipowi %11, %14 : tensor<1x4x4xi64>
      %284 = arith.addi %true_2, %false_1 : i1
      %285 = affine.if affine_set<(d0, d1, d2) : (d1 + d0 >= 0, d0 == 0)>(%c8, %c2, %c2) -> memref<4xf16> {
        %290 = arith.remui %true_2, %false_1 : i1
        %expanded_35 = tensor.expand_shape %3 [[0], [1], [2, 3]] : tensor<7x7x7xi32> into tensor<7x7x7x1xi32>
        %cst_36 = arith.constant 1.000000e+00 : f16
        %cst_37 = arith.constant 0.000000e+00 : f16
        %291 = vector.transfer_read %alloc_16[%c14, %c7, %c7], %cst_37 : memref<7x7x7xf16>, vector<f16>
        %292 = arith.divsi %false_1, %true : i1
        %293 = vector.broadcast %103 : i16 to vector<1xi16>
        %294 = vector.maskedload %alloc_17[%c0, %c0], %81, %293 : memref<1x1xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
        %295 = math.sqrt %cst : f32
        %296 = math.tan %cst_0 : f32
        %297 = index.divs %88, %c10
        %alloc_38 = memref.alloc() : memref<4xf16>
        affine.yield %alloc_38 : memref<4xf16>
      } else {
        %290 = math.ctlz %c-6544_i16 : i16
        %291 = arith.maxsi %c-30012_i16, %c28088_i16 : i16
        %292 = vector.broadcast %cst_0 : f32 to vector<7xf32>
        %293 = vector.broadcast %true_2 : i1 to vector<7xi1>
        %294 = vector.maskedload %alloc_15[%c0, %c2, %c3], %293, %292 : memref<1x4x4xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
        %295 = arith.mulf %cst_0, %cst_0 : f32
        %296 = arith.remf %130, %cst : f32
        %297 = math.fma %1, %1, %1 : tensor<4xf16>
        %298 = arith.minsi %extracted, %false : i1
        %299 = index.floordivs %77, %c14
        %alloc_35 = memref.alloc() : memref<4xf16>
        affine.yield %alloc_35 : memref<4xf16>
      }
      %286 = arith.floordivsi %c-6544_i16, %c28088_i16 : i16
      %287 = math.fma %0, %0, %0 : tensor<1x1xf16>
      %288 = arith.floordivsi %c953342303_i32, %c2057239616_i32 : i32
      %289 = vector.splat %100 : vector<1x4x4xindex>
      %expanded_33 = tensor.expand_shape %11 [[0], [1], [2, 3]] : tensor<1x4x4xi64> into tensor<1x4x4x1xi64>
      %alloc_34 = memref.alloc() : memref<1x4x4xf16>
      scf.yield %alloc_34 : memref<1x4x4xf16>
    }
    case 2 {
      %cast_32 = tensor.cast %4 : tensor<1x4x4xf32> to tensor<?x?x?xf32>
      %275 = vector.load %alloc_20[%c0] : memref<1xi16>, vector<1x1xi16>
      %276 = index.castu %c0 : index to i32
      %cast_33 = tensor.cast %8 : tensor<7x7x7xi32> to tensor<?x?x?xi32>
      %277 = index.divs %97, %51
      %278 = arith.addf %cst, %cst : f32
      %279 = math.absf %130 : f32
      %280 = math.cttz %8 : tensor<7x7x7xi32>
      %281 = vector.insert %119, %63 [0, 2] : vector<4xi64> into vector<1x4x4xi64>
      %282 = arith.cmpf oge, %130, %130 : f32
      %283 = vector.broadcast %true_2 : i1 to vector<1x1xi1>
      %284 = vector.outerproduct %81, %24, %283 {kind = #vector.kind<and>} : vector<1xi1>, vector<1xi1>
      %expanded_34 = tensor.expand_shape %9 [[0, 1]] : tensor<4xi64> into tensor<4x1xi64>
      %285 = index.mul %c4, %51
      %cst_35 = arith.constant 3.593600e+04 : f16
      %286 = math.atan %98 : tensor<7x7x7xf32>
      %287 = vector.insertelement %extracted, %81[%c15 : index] : vector<1xi1>
      %alloc_36 = memref.alloc() : memref<1x4x4xf16>
      scf.yield %alloc_36 : memref<1x4x4xf16>
    }
    case 3 {
      %275 = index.casts %91 : index to i32
      %276 = math.roundeven %cst_0 : f32
      %277 = math.tan %12 : tensor<4xf32>
      %278 = arith.maxui %c2057239616_i32, %c2057239616_i32 : i32
      %279 = arith.divsi %c28088_i16, %c11551_i16 : i16
      %280 = vector.broadcast %cst : f32 to vector<1x1xf32>
      %281 = vector.fma %280, %280, %280 : vector<1x1xf32>
      %282 = arith.floordivsi %false, %extracted : i1
      %283 = math.log1p %cst : f32
      %284 = math.absi %5 : tensor<1x4x4xi1>
      %285 = tensor.empty() : tensor<1x1xi32>
      %286 = vector.insertelement %extracted, %18[%90 : index] : vector<4xi1>
      %extracted_32 = tensor.extract %13[%c5, %c0, %c0] : tensor<7x7x7xi64>
      %287 = math.absi %8 : tensor<7x7x7xi32>
      %288 = math.roundeven %16 : tensor<4xf16>
      %289 = arith.ceildivsi %c11551_i16, %c-30012_i16 : i16
      %290 = vector.broadcast %103 : i16 to vector<1xi16>
      %291 = vector.maskedload %alloc_20[%c0], %81, %290 : memref<1xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
      %alloc_33 = memref.alloc() : memref<1x4x4xf16>
      scf.yield %alloc_33 : memref<1x4x4xf16>
    }
    case 4 {
      %rank = tensor.rank %11 : tensor<1x4x4xi64>
      %275 = math.log2 %0 : tensor<1x1xf16>
      %276 = arith.maxf %130, %cst_0 : f32
      %277 = index.ceildivu %c2, %c6
      %278 = arith.divui %false_1, %true_2 : i1
      %false_32 = index.bool.constant false
      %279 = vector.broadcast %cst_0 : f32 to vector<4x4xf32>
      %280 = vector.outerproduct %133, %133, %279 {kind = #vector.kind<mul>} : vector<4xf32>, vector<4xf32>
      %281 = math.ctlz %true_2 : i1
      %282 = vector.matrix_multiply %21, %81 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
      %283 = math.log1p %12 : tensor<4xf32>
      %284 = affine.load %alloc_19[%c11] : memref<4xf32>
      %cst_33 = arith.constant 0x4E62F218 : f32
      memref.copy %54, %alloc_13 : memref<7x7x7xf32> to memref<7x7x7xf32>
      %285 = math.ctlz %false_1 : i1
      %286 = arith.minf %cst_0, %cst : f32
      %287 = arith.mulf %cst, %284 : f32
      %alloc_34 = memref.alloc() : memref<1x4x4xf16>
      scf.yield %alloc_34 : memref<1x4x4xf16>
    }
    default {
      %rank = tensor.rank %5 : tensor<1x4x4xi1>
      %275 = math.log10 %0 : tensor<1x1xf16>
      %276 = vector.insertelement %cst, %132[%c8 : index] : vector<4xf32>
      %277 = affine.min affine_map<(d0, d1) -> (d0 - (d1 + d0), d1)>(%c13, %90)
      %278 = index.maxu %c13, %c8
      %279 = index.maxu %c15, %278
      %280 = index.divs %88, %277
      %281 = vector.broadcast %130 : f32 to vector<4x4xf32>
      %282 = vector.outerproduct %132, %132, %281 {kind = #vector.kind<mul>} : vector<4xf32>, vector<4xf32>
      %283 = arith.remf %cst, %cst : f32
      %284 = index.divs %129, %91
      %285 = math.rsqrt %17 : tensor<4xf16>
      %286 = tensor.empty() : tensor<4xf32>
      %287 = affine.max affine_map<(d0, d1, d2, d3) -> (d3, d2 floordiv 2 - 32)>(%129, %284, %c1, %c2)
      %288 = vector.matrix_multiply %119, %119 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi64>, vector<4xi64>) -> vector<1xi64>
      %289 = bufferization.to_tensor %alloc_10 : memref<1x1xi1>
      memref.tensor_store %78, %82 : memref<4xi16>
      %alloc_32 = memref.alloc() : memref<1x4x4xf16>
      scf.yield %alloc_32 : memref<1x4x4xf16>
    }
    %136 = vector.reduction <minsi>, %81 : vector<1xi1> into i1
    %137 = math.exp %1 : tensor<4xf16>
    %138 = affine.apply affine_map<(d0) -> (d0 + 64)>(%96)
    %139 = vector.broadcast %130 : f32 to vector<7x7x7xf32>
    %140 = math.log2 %0 : tensor<1x1xf16>
    %141 = vector.insertelement %cst, %132[%c9 : index] : vector<4xf32>
    %142 = affine.min affine_map<(d0, d1, d2) -> (0)>(%25, %c15, %100)
    %143 = affine.load %alloc[%c15, %c14, %c4] : memref<1x4x4xi16>
    bufferization.dealloc_tensor %38 : tensor<1x4x4xf32>
    %144 = math.powf %12, %12 : tensor<4xf32>
    %145 = affine.apply affine_map<(d0) -> (d0 * 2)>(%c13)
    %146 = vector.insert %extracted, %81 [0] : i1 into vector<1xi1>
    %147 = scf.if %true_2 -> (i64) {
      %275 = math.cos %cst : f32
      %cst_32 = arith.constant 1.69412122E+9 : f32
      %276 = math.sqrt %4 : tensor<1x4x4xf32>
      %277 = index.maxu %c12, %c0
      %278 = arith.floordivsi %true_2, %extracted : i1
      %279 = vector.transpose %63, [2, 0, 1] : vector<1x4x4xi64> to vector<4x1x4xi64>
      %280 = arith.shrui %extracted, %false_1 : i1
      %281 = arith.floordivsi %c1269864297_i32, %c2057239616_i32 : i32
      scf.yield %c1527806364_i64 : i64
    } else {
      %275 = math.absi %true_2 : i1
      %276 = tensor.empty() : tensor<1x4x4xi16>
      %277 = arith.remui %c11551_i16, %c28088_i16 : i16
      %278 = arith.minsi %103, %c-6544_i16 : i16
      %rank = tensor.rank %12 : tensor<4xf32>
      %279 = index.sub %c10, %138
      %280 = arith.mulf %cst_3, %cst_3 : f16
      vector.print %26 : vector<7x7x7xf16>
      scf.yield %c1527806364_i64 : i64
    }
    %expanded_24 = tensor.expand_shape %5 [[0], [1], [2, 3]] : tensor<1x4x4xi1> into tensor<1x4x4x1xi1>
    %extracted_25 = tensor.extract %9[%c2] : tensor<4xi64>
    %148 = vector.broadcast %true : i1 to vector<7x7x7xi1>
    %149 = math.fma %4, %4, %4 : tensor<1x4x4xf32>
    %150 = vector.transpose %132, [0] : vector<4xf32> to vector<4xf32>
    %151 = arith.subi %c25801_i16, %c-30012_i16 : i16
    %152 = vector.bitcast %148 : vector<7x7x7xi1> to vector<7x7x7xi1>
    %153 = vector.flat_transpose %132 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
    %154 = vector.bitcast %139 : vector<7x7x7xf32> to vector<7x7x7xf32>
    %155 = math.absi %5 : tensor<1x4x4xi1>
    %156 = index.castu %96 : index to i32
    affine.store %cst_0, %alloc_21[%c3] : memref<4xf32>
    %157 = arith.divf %cst_0, %cst : f32
    %158 = arith.subi %c953342303_i32, %c2057239616_i32 : i32
    affine.store %true_2, %alloc_7[%c5, %c11] : memref<1x1xi1>
    %159 = arith.shrui %c953342303_i32, %c1269864297_i32 : i32
    %160 = arith.shrui %c1269864297_i32, %c1269864297_i32 : i32
    %161 = math.log1p %20 : tensor<f32>
    %162 = arith.divf %130, %cst_0 : f32
    %163 = index.castu %c13 : index to i32
    %164 = arith.andi %extracted, %extracted : i1
    %165 = arith.subi %false, %true : i1
    %166 = index.maxu %100, %142
    %cast_26 = tensor.cast %14 : tensor<1x4x4xi64> to tensor<?x?x?xi64>
    %167 = math.log10 %20 : tensor<f32>
    %168 = index.sub %c8, %97
    %169 = math.tan %38 : tensor<1x4x4xf32>
    %expanded_27 = tensor.expand_shape %11 [[0], [1], [2, 3]] : tensor<1x4x4xi64> into tensor<1x4x4x1xi64>
    %170 = arith.subi %c953342303_i32, %c2057239616_i32 : i32
    %171 = vector.flat_transpose %132 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
    %from_elements = tensor.from_elements %c1269864297_i32 : tensor<1x1xi32>
    %172 = arith.divf %cst_0, %cst_0 : f32
    %expanded_28 = tensor.expand_shape %10 [[0], [1], [2, 3]] : tensor<1x4x4xi64> into tensor<1x4x4x1xi64>
    %173 = arith.negf %cst : f32
    %174 = memref.load %121[%c3] : memref<4xi1>
    %175 = math.ipowi %10, %11 : tensor<1x4x4xi64>
    %176 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %119, %119, %147 : vector<4xi64>, vector<4xi64> into i64
    %177 = math.sqrt %cst_3 : f16
    %178 = bufferization.clone %alloc_11 : memref<1x4x4xi1> to memref<1x4x4xi1>
    %179 = math.expm1 %cst : f32
    %180 = arith.ceildivsi %true, %true_2 : i1
    %181 = index.ceildivu %c14, %88
    %182 = index.ceildivu %88, %77
    %183 = arith.maxsi %c1527806364_i64, %c1527806364_i64 : i64
    %184 = index.ceildivu %c6, %166
    %185 = index.ceildivs %184, %c3
    %186 = vector.broadcast %90 : index to vector<4xindex>
    vector.scatter %alloc_10[%c0, %c0] [%186], %18, %18 : memref<1x1xi1>, vector<4xindex>, vector<4xi1>, vector<4xi1>
    %187 = index.castu %true_2 : i1 to index
    %188 = vector.broadcast %c28088_i16 : i16 to vector<1x1xi16>
    %189 = vector.broadcast %false : i1 to vector<1x1xi1>
    %190 = vector.broadcast %c953342303_i32 : i32 to vector<1x1xi32>
    %191 = vector.gather %78[%182] [%190], %189, %188 : tensor<4xi16>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xi16> into vector<1x1xi16>
    %192 = arith.maxsi %c953342303_i32, %c2057239616_i32 : i32
    affine.store %cst_0, %alloc_15[%c2, %c5, %c2] : memref<1x4x4xf32>
    %193 = tensor.empty() : tensor<1x4x4xf32>
    %194 = arith.minui %c25801_i16, %c-6544_i16 : i16
    %195 = affine.max affine_map<(d0) -> (d0 ceildiv 2, (d0 - (d0 - 4)) floordiv 32 + 1, d0 ceildiv 2)>(%90)
    memref.copy %95, %alloc_6 : memref<1x1xi32> to memref<1x1xi32>
    %196 = vector.broadcast %cst_3 : f16 to vector<12xf16>
    %197 = vector.broadcast %false_1 : i1 to vector<12xi1>
    %198 = vector.maskedload %alloc_16[%c4, %c4, %c4], %197, %196 : memref<7x7x7xf16>, vector<12xi1>, vector<12xf16> into vector<12xf16>
    %199 = arith.divsi %c-30012_i16, %c28088_i16 : i16
    %200 = vector.broadcast %false_1 : i1 to vector<7xi1>
    %201 = vector.maskedload %121[%c3], %200, %200 : memref<4xi1>, vector<7xi1>, vector<7xi1> into vector<7xi1>
    %202 = math.absi %expanded_28 : tensor<1x4x4x1xi64>
    %203 = arith.shrui %c1527806364_i64, %extracted_25 : i64
    %204 = vector.extract %191[0] : vector<1x1xi16>
    %splat = tensor.splat %c11551_i16 : tensor<4xi16>
    %205 = affine.if affine_set<(d0, d1, d2, d3) : (d2 + 16 == 0)>(%c15, %c9, %c8, %c15) -> memref<7x7x7xi16> {
      %275 = index.add %c2, %c3
      %276 = scf.if %true -> (memref<7x7x7xi1>) {
        %283 = index.maxu %51, %184
        %284 = arith.shli %c2057239616_i32, %c2057239616_i32 : i32
        %285 = affine.apply affine_map<(d0, d1) -> (0)>(%195, %c13)
        %286 = vector.broadcast %90 : index to vector<12xindex>
        vector.scatter %alloc_12[%c3] [%286], %197, %197 : memref<4xi1>, vector<12xindex>, vector<12xi1>, vector<12xi1>
        %287 = math.rsqrt %16 : tensor<4xf16>
        %288 = vector.extract %196[3] : vector<12xf16>
        %289 = index.castu %c9 : index to i32
        %290 = vector.bitcast %153 : vector<4xf32> to vector<4xf32>
        %alloc_33 = memref.alloc() : memref<7x7x7xi1>
        scf.yield %alloc_33 : memref<7x7x7xi1>
      } else {
        %283 = vector.reduction <add>, %132 : vector<4xf32> into f32
        %alloc_33 = memref.alloc() : memref<7x7x7xi32>
        memref.copy %alloc_9, %alloc_33 : memref<7x7x7xi32> to memref<7x7x7xi32>
        %284 = vector.broadcast %143 : i16 to vector<4xi16>
        %285 = math.roundeven %17 : tensor<4xf16>
        %286 = vector.broadcast %103 : i16 to vector<7xi16>
        %287 = vector.maskedload %alloc_17[%c0, %c0], %200, %286 : memref<1x1xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
        %288 = arith.remui %c-30012_i16, %143 : i16
        %289 = math.rsqrt %17 : tensor<4xf16>
        %290 = math.log2 %19 : tensor<f32>
        %alloc_34 = memref.alloc() : memref<7x7x7xi1>
        scf.yield %alloc_34 : memref<7x7x7xi1>
      }
      %277 = math.sqrt %cst_3 : f16
      %278 = math.fpowi %98, %8 : tensor<7x7x7xf32>, tensor<7x7x7xi32>
      %279 = arith.shrui %c-30012_i16, %c28088_i16 : i16
      %280 = vector.load %276[%c0, %c0, %c5] : memref<7x7x7xi1>, vector<1x4x4xi1>
      %281 = math.fma %17, %1, %1 : tensor<4xf16>
      %282 = math.ctlz %13 : tensor<7x7x7xi64>
      %alloc_32 = memref.alloc() : memref<7x7x7xi16>
      affine.yield %alloc_32 : memref<7x7x7xi16>
    } else {
      %275 = arith.addf %cst_0, %130 : f32
      %276 = index.ceildivu %c0, %51
      %277 = vector.reduction <or>, %200 : vector<7xi1> into i1
      %278 = math.expm1 %12 : tensor<4xf32>
      scf.index_switch %25 
      case 1 {
        %281 = arith.remf %cst_0, %cst : f32
        %282 = math.log10 %cst : f32
        vector.print %18 : vector<4xi1>
        %283 = arith.negf %130 : f32
        %true_34 = arith.constant true
        %284 = math.rsqrt %4 : tensor<1x4x4xf32>
        %285 = index.mul %c7, %c6
        %286 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %189, %189, %189 : vector<1x1xi1>, vector<1x1xi1> into vector<1x1xi1>
        %287 = bufferization.clone %alloc_19 : memref<4xf32> to memref<4xf32>
        %288 = vector.broadcast %c11 : index to vector<12xindex>
        vector.scatter %alloc_11[%c0, %c2, %c1] [%288], %197, %197 : memref<1x4x4xi1>, vector<12xindex>, vector<12xi1>, vector<12xi1>
        %c2009953847_i32 = arith.constant 2009953847 : i32
        %289 = affine.apply affine_map<(d0, d1) -> (0)>(%184, %97)
        %290 = vector.insertelement %cst_0, %132[%c1 : index] : vector<4xf32>
        %291 = math.exp %4 : tensor<1x4x4xf32>
        %292 = affine.max affine_map<(d0) -> (d0 * -127 - 64)>(%c1)
        %293 = math.tan %16 : tensor<4xf16>
        scf.yield
      }
      case 2 {
        %281 = memref.realloc %alloc_18 : memref<4xi64> to memref<7xi64>
        %282 = arith.negf %cst_3 : f16
        %283 = bufferization.to_memref %7 : memref<7x7x7xi64>
        %284 = vector.broadcast %130 : f32 to vector<7x7xf32>
        %dest_34, %accumulated_value_35 = vector.scan <add>, %154, %284 {inclusive = true, reduction_dim = 0 : i64} : vector<7x7x7xf32>, vector<7x7xf32>
        %285 = math.atan2 %19, %20 : tensor<f32>
        %286 = vector.extract %85[0, 2] : vector<1x4x4xi1>
        %287 = arith.mulf %cst, %cst_0 : f32
        %288 = index.divs %77, %100
        %289 = vector.insert %cst, %153 [1] : f32 into vector<4xf32>
        %290 = bufferization.to_memref %2 : memref<4xi1>
        %291 = arith.floordivsi %103, %143 : i16
        %292 = math.exp %0 : tensor<1x1xf16>
        %293 = math.log1p %130 : f32
        %294 = math.exp2 %98 : tensor<7x7x7xf32>
        %295 = math.cttz %9 : tensor<4xi64>
        %296 = arith.minui %c28088_i16, %c-30012_i16 : i16
        scf.yield
      }
      case 3 {
        %281 = arith.remf %cst_3, %cst_3 : f16
        %282 = arith.mulf %130, %130 : f32
        %283 = index.maxu %c1, %195
        %284 = arith.floordivsi %c953342303_i32, %c2057239616_i32 : i32
        %285 = index.divs %91, %c8
        %286 = arith.maxsi %c2057239616_i32, %c953342303_i32 : i32
        %287 = arith.maxsi %c11551_i16, %c28088_i16 : i16
        %from_elements_34 = tensor.from_elements %true, %true, %true_2, %true, %false_1, %false_1, %false, %true, %true, %false, %false_1, %false, %false, %true, %true_2, %true_2 : tensor<1x4x4xi1>
        %288 = affine.max affine_map<(d0, d1, d2) -> ((d1 + 128) * 2, d1 * -128, d1 + 64, d1 + 64)>(%c3, %184, %97)
        %289 = math.round %17 : tensor<4xf16>
        %cast_35 = tensor.cast %expanded : tensor<4x1xi16> to tensor<?x?xi16>
        %290 = math.ipowi %3, %8 : tensor<7x7x7xi32>
        %alloc_36 = memref.alloc() : memref<4xi16>
        %291 = math.fma %cst_3, %cst_3, %cst_3 : f16
        %extracted_37 = tensor.extract %14[%c0, %c3, %c3] : tensor<1x4x4xi64>
        %292 = arith.minui %c-6544_i16, %103 : i16
        scf.yield
      }
      case 4 {
        %281 = math.ipowi %11, %11 : tensor<1x4x4xi64>
        %282 = math.log10 %20 : tensor<f32>
        %283 = arith.maxf %cst_0, %cst_0 : f32
        %284 = vector.transpose %85, [1, 2, 0] : vector<1x4x4xi1> to vector<4x4x1xi1>
        %285 = affine.max affine_map<(d0, d1, d2) -> (-(d2 mod 2), (-(d2 floordiv 128)) ceildiv 64, (d1 + 8) * 64, -(d2 floordiv 128))>(%c2, %c6, %c9)
        %286 = arith.addf %cst, %cst_0 : f32
        %287 = arith.cmpf ugt, %cst, %cst_0 : f32
        %288 = tensor.empty() : tensor<4xi32>
        %289 = math.fpowi %16, %288 : tensor<4xf16>, tensor<4xi32>
        %290 = math.absf %130 : f32
        memref.tensor_store %9, %alloc_18 : memref<4xi64>
        memref.tensor_store %12, %alloc_21 : memref<4xf32>
        %291 = vector.shuffle %152, %148 [2, 5, 6, 7, 8, 11] : vector<7x7x7xi1>, vector<7x7x7xi1>
        %292 = memref.realloc %alloc_18 : memref<4xi64> to memref<1xi64>
        %293 = affine.load %alloc_21[%c4] : memref<4xf32>
        %294 = vector.broadcast %cst_3 : f16 to vector<12x12xf16>
        %295 = vector.outerproduct %196, %198, %294 {kind = #vector.kind<mul>} : vector<12xf16>, vector<12xf16>
        %296 = arith.addi %143, %c-30012_i16 : i16
        scf.yield
      }
      default {
        %cast_34 = tensor.cast %11 : tensor<1x4x4xi64> to tensor<?x?x?xi64>
        %281 = vector.broadcast %147 : i64 to vector<1x4xi64>
        %dest_35, %accumulated_value_36 = vector.scan <maxui>, %63, %281 {inclusive = true, reduction_dim = 2 : i64} : vector<1x4x4xi64>, vector<1x4xi64>
        %282 = math.atan2 %17, %1 : tensor<4xf16>
        %283 = arith.ori %c1269864297_i32, %c1269864297_i32 : i32
        %284 = index.castu %143 : i16 to index
        %285 = math.log2 %4 : tensor<1x4x4xf32>
        %286 = memref.load %alloc_17[%c0, %c0] : memref<1x1xi16>
        %287 = index.castu %143 : i16 to index
        %288 = arith.shrui %false_1, %true : i1
        %cast_37 = tensor.cast %splat : tensor<4xi16> to tensor<?xi16>
        %289 = vector.insertelement %147, %119[%c7 : index] : vector<4xi64>
        %290 = index.divs %97, %185
        %291 = math.floor %12 : tensor<4xf32>
        %292 = vector.bitcast %148 : vector<7x7x7xi1> to vector<7x7x7xi1>
        %293 = math.atan %0 : tensor<1x1xf16>
        %294 = arith.addi %c953342303_i32, %c953342303_i32 : i32
      }
      %279 = index.castu %143 : i16 to index
      %true_32 = index.bool.constant true
      %280 = vector.extract %63[0, 1] : vector<1x4x4xi64>
      %alloc_33 = memref.alloc() : memref<7x7x7xi16>
      affine.yield %alloc_33 : memref<7x7x7xi16>
    }
    %206 = arith.andi %c-6544_i16, %c25801_i16 : i16
    %207 = index.ceildivu %90, %142
    %208 = vector.broadcast %cst_0 : f32 to vector<4xf32>
    %209 = vector.fma %208, %133, %132 : vector<4xf32>
    %210 = vector.broadcast %true : i1 to vector<7x7xi1>
    %dest, %accumulated_value = vector.scan <maxsi>, %148, %210 {inclusive = true, reduction_dim = 1 : i64} : vector<7x7x7xi1>, vector<7x7xi1>
    %211 = arith.minf %130, %130 : f32
    %212 = vector.transpose %197, [0] : vector<12xi1> to vector<12xi1>
    %213 = index.sub %96, %184
    %214 = math.floor %0 : tensor<1x1xf16>
    %215 = index.casts %c-30012_i16 : i16 to index
    %216 = index.divu %c13, %213
    %217 = arith.subi %c1527806364_i64, %147 : i64
    %218 = math.atan %12 : tensor<4xf32>
    %219 = vector.broadcast %69 : index to vector<7xindex>
    %220 = vector.broadcast %cst_3 : f16 to vector<7xf16>
    vector.scatter %alloc_16[%c0, %c1, %c1] [%219], %201, %220 : memref<7x7x7xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
    %221 = arith.remui %extracted, %false_1 : i1
    %222 = math.exp2 %38 : tensor<1x4x4xf32>
    %223 = math.log2 %1 : tensor<4xf16>
    %224 = arith.subi %false_1, %extracted : i1
    %225 = arith.remui %c28088_i16, %c11551_i16 : i16
    %226 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %191, %188, %191 : vector<1x1xi16>, vector<1x1xi16> into vector<1x1xi16>
    %227 = arith.remsi %c1269864297_i32, %c1269864297_i32 : i32
    %228 = math.atan2 %12, %12 : tensor<4xf32>
    %229 = vector.broadcast %c-30012_i16 : i16 to vector<4xi16>
    %230 = vector.maskedload %alloc[%c0, %c1, %c1], %18, %229 : memref<1x4x4xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
    %231 = arith.divsi %true, %false : i1
    %232 = arith.minsi %c-30012_i16, %c-6544_i16 : i16
    %233 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1)>(%c0, %90, %c14, %138)
    %234 = vector.load %82[%c0] : memref<4xi16>, vector<7x7x7xi16>
    %235 = vector.reduction <mul>, %209 : vector<4xf32> into f32
    %236 = math.log1p %20 : tensor<f32>
    %237 = arith.negf %cst_3 : f16
    %238 = affine.for %arg2 = 0 to 53 iter_args(%arg3 = %204) -> (vector<1xi16>) {
      affine.yield %204 : vector<1xi16>
    }
    %239 = affine.if affine_set<(d0, d1) : (d0 * 2 + d1 + (-d1 - d0 * 2) * 4 == 0, d0 * 2 >= 0)>(%c12, %c0) -> i64 {
      %275 = bufferization.clone %alloc_12 : memref<4xi1> to memref<4xi1>
      %alloc_32 = memref.alloc() : memref<1x4x4xi64>
      memref.copy %alloc_8, %alloc_32 : memref<1x4x4xi64> to memref<1x4x4xi64>
      %276 = arith.divsi %c-6544_i16, %c25801_i16 : i16
      %277 = memref.realloc %alloc_14 : memref<4xi1> to memref<7xi1>
      %c423387887_i64 = arith.constant 423387887 : i64
      %278 = math.cos %1 : tensor<4xf16>
      %279 = index.casts %c11551_i16 : i16 to index
      %280 = index.casts %c11 : index to i32
      affine.yield %extracted_25 : i64
    } else {
      %275 = arith.shli %false, %false : i1
      %276 = math.log1p %0 : tensor<1x1xf16>
      %277 = arith.cmpf uge, %130, %cst : f32
      %278 = vector.shuffle %200, %200 [5, 8, 10, 11] : vector<7xi1>, vector<7xi1>
      %279 = bufferization.clone %alloc_16 : memref<7x7x7xf16> to memref<7x7x7xf16>
      %280 = vector.maskedload %alloc_12[%c0], %18, %18 : memref<4xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
      %281 = tensor.empty() : tensor<7xi64>
      %282 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%281, %281 : tensor<7xi64>, tensor<7xi64>) outs(%7 : tensor<7x7x7xi64>) {
      ^bb0(%in: i64, %in_32: i64, %out: i64):
        %284 = math.cos %20 : tensor<f32>
        %285 = affine.apply affine_map<(d0, d1, d2) -> (d1 - 128)>(%c12, %168, %233)
        %286 = arith.addi %extracted, %false : i1
        %alloc_33 = memref.alloc() : memref<1x1xf16>
        memref.tensor_store %0, %alloc_33 : memref<1x1xf16>
        %287 = vector.broadcast %cst_3 : f16 to vector<7x7xf16>
        %288 = vector.multi_reduction <add>, %26, %287 [2] : vector<7x7x7xf16> to vector<7x7xf16>
        %289 = math.ipowi %in, %extracted_25 : i64
        %290 = affine.max affine_map<(d0, d1) -> (-(d1 mod 32))>(%182, %129)
        %291 = vector.reduction <maxf>, %208 : vector<4xf32> into f32
        %292 = arith.cmpi ult, %true_2, %false : i1
        %293 = arith.minf %130, %130 : f32
        %294 = math.cos %cst : f32
        %295 = bufferization.to_memref %expanded : memref<4x1xi16>
        %296 = arith.divf %130, %130 : f32
        %297 = index.maxu %c8, %c0
        %298 = index.castu %c8 : index to i32
        %c1_i32 = arith.constant 1 : i32
        %c0_i32 = arith.constant 0 : i32
        %299 = vector.transfer_read %8[%70, %216, %c8], %c0_i32 {permutation_map = affine_map<(d0, d1, d2) -> (0, 0)>} : tensor<7x7x7xi32>, vector<7x1xi32>
        %300 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %153, %132, %cst : vector<4xf32>, vector<4xf32> into f32
        %c1817568132_i32 = arith.constant 1817568132 : i32
        %301 = arith.cmpf olt, %cst_0, %cst : f32
        %302 = arith.remf %cst_0, %130 : f32
        %303 = arith.addi %c28088_i16, %c-6544_i16 : i16
        %304 = math.tanh %17 : tensor<4xf16>
        %305 = affine.max affine_map<(d0) -> (((d0 ceildiv 4) mod 16 - d0 ceildiv 4) ceildiv 8, -((((d0 ceildiv 4) mod 16) floordiv 32) mod 128), ((d0 ceildiv 4) mod 16) floordiv 32 + (((d0 ceildiv 4) mod 16) floordiv 32) mod 128)>(%207)
        %306 = bufferization.to_memref %6 : memref<1x1xi64>
        %307 = arith.minui %in_32, %c1527806364_i64 : i64
        %308 = vector.broadcast %cst_3 : f16 to vector<f16>
        %309 = vector.transfer_write %308, %16[%c14] : vector<f16>, tensor<4xf16>
        %310 = vector.bitcast %198 : vector<12xf16> to vector<12xf16>
        %311 = index.ceildivu %207, %77
        vector.print %209 : vector<4xf32>
        affine.store %c-30012_i16, %alloc_20[%c15] : memref<1xi16>
        %312 = vector.splat %false_1 : vector<7x7x7xi1>
        %313 = vector.insertelement %103, %204[%c2 : index] : vector<1xi16>
        linalg.yield %in : i64
      } -> tensor<7x7x7xi64>
      %283 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%14 : tensor<1x4x4xi64>) outs(%10 : tensor<1x4x4xi64>) {
      ^bb0(%in: i64, %out: i64):
        %284 = index.casts %c1527806364_i64 : i64 to index
        %285 = bufferization.to_memref %splat : memref<4xi16>
        %286 = vector.bitcast %139 : vector<7x7x7xf32> to vector<7x7x7xf32>
        %287 = arith.maxf %cst, %cst_0 : f32
        %288 = arith.divf %cst, %130 : f32
        %289 = math.roundeven %4 : tensor<1x4x4xf32>
        %290 = math.cttz %8 : tensor<7x7x7xi32>
        vector.print %229 : vector<4xi16>
        %291 = index.castu %c6 : index to i32
        %alloca_32 = memref.alloca() : memref<4xi1>
        %292 = math.fma %4, %38, %4 : tensor<1x4x4xf32>
        %293 = tensor.empty(%c2, %c9, %187) : tensor<?x?x?xf16>
        %294 = arith.ceildivsi %c1269864297_i32, %c2057239616_i32 : i32
        %295 = arith.maxsi %true, %false : i1
        %296 = vector.broadcast %c25801_i16 : i16 to vector<4x4xi16>
        %297 = vector.outerproduct %230, %230, %296 {kind = #vector.kind<minui>} : vector<4xi16>, vector<4xi16>
        %298 = arith.maxf %130, %cst : f32
        %299 = math.exp %12 : tensor<4xf32>
        %300 = index.sub %91, %c14
        %c-30402_i16 = arith.constant -30402 : i16
        %301 = arith.cmpi ule, %c1269864297_i32, %c1269864297_i32 : i32
        %302 = index.ceildivs %c15, %184
        %303 = arith.mulf %cst_3, %cst_3 : f16
        %304 = arith.minui %in, %147 : i64
        %rank = tensor.rank %4 : tensor<1x4x4xf32>
        %305 = arith.cmpf true, %130, %130 : f32
        %306 = index.ceildivs %70, %c5
        %307 = vector.load %alloc_13[%c5, %c0, %c2] : memref<7x7x7xf32>, vector<4xf32>
        %308 = arith.subi %in, %c1527806364_i64 : i64
        %309 = vector.flat_transpose %21 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %310 = index.ceildivs %70, %213
        %311 = arith.remsi %c11551_i16, %c28088_i16 : i16
        %312 = arith.remf %130, %cst_0 : f32
        linalg.yield %147 : i64
      } -> tensor<1x4x4xi64>
      affine.yield %147 : i64
    }
    %240 = vector.load %alloc_20[%c0] : memref<1xi16>, vector<4xi16>
    %241 = arith.addf %cst_3, %cst_3 : f16
    %242 = math.ctlz %11 : tensor<1x4x4xi64>
    %243 = arith.divf %cst_0, %cst : f32
    vector.print %201 : vector<7xi1>
    %alloc_29 = memref.alloc() : memref<7x7x7xi64>
    %244 = vector.broadcast %c1527806364_i64 : i64 to vector<1x1xi64>
    %245 = vector.gather %alloc_29[%184, %c4, %c7] [%190], %189, %244 : memref<7x7x7xi64>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xi64> into vector<1x1xi64>
    %246 = index.mul %145, %c15
    %247 = vector.matrix_multiply %208, %153 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
    %248 = vector.broadcast %cst_0 : f32 to vector<7x7x7xf32>
    %249 = vector.fma %248, %248, %248 : vector<7x7x7xf32>
    %250 = math.exp %12 : tensor<4xf32>
    %251 = math.log10 %0 : tensor<1x1xf16>
    %252 = vector.outerproduct %204, %204, %188 {kind = #vector.kind<maxui>} : vector<1xi16>, vector<1xi16>
    %253 = math.absi %78 : tensor<4xi16>
    %254 = index.sub %c7, %c7
    %255 = vector.extract_strided_slice %196 {offsets = [7], sizes = [1], strides = [1]} : vector<12xf16> to vector<1xf16>
    %256 = math.tan %cst : f32
    %257 = arith.divsi %extracted, %true : i1
    %258 = tensor.empty() : tensor<1x4x4xf16>
    %259 = vector.broadcast %cst_3 : f16 to vector<1x1xf16>
    %260 = vector.gather %258[%c2, %100, %c14] [%190], %189, %259 : tensor<1x4x4xf16>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xf16> into vector<1x1xf16>
    %261 = affine.if affine_set<(d0, d1) : (-(d0 - d1) >= 0, d1 mod 16 + d1 >= 0)>(%c7, %c7) -> memref<4xf16> {
      %275 = vector.broadcast %c28088_i16 : i16 to vector<4xi16>
      %276 = math.atan %cst_0 : f32
      %277 = arith.maxf %cst_0, %cst_0 : f32
      %278 = vector.broadcast %c1269864297_i32 : i32 to vector<1xi32>
      %279 = vector.maskedload %alloc_9[%c5, %c2, %c0], %81, %278 : memref<7x7x7xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
      %280 = index.ceildivs %216, %207
      %281 = vector.splat %138 : vector<1x1xindex>
      %282 = vector.reduction <add>, %275 : vector<4xi16> into i16
      %283 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 * 4)>(%c4, %c6, %97, %c13)
      %alloc_32 = memref.alloc() : memref<4xf16>
      affine.yield %alloc_32 : memref<4xf16>
    } else {
      %275 = affine.load %178[%c12, %c9, %c4] : memref<1x4x4xi1>
      %276 = index.sub %129, %182
      %277 = arith.andi %143, %143 : i16
      %c0_i64 = arith.constant 0 : i64
      %278 = vector.transfer_read %11[%c4, %166, %207], %c0_i64 : tensor<1x4x4xi64>, vector<4xi64>
      %279 = arith.subi %c953342303_i32, %c2057239616_i32 : i32
      %280 = vector.insert %204, %188 [0] : vector<1xi16> into vector<1x1xi16>
      %281 = vector.flat_transpose %171 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
      %282 = vector.multi_reduction <maxui>, %24, %false [0] : vector<1xi1> to i1
      %alloc_32 = memref.alloc() : memref<4xf16>
      affine.yield %alloc_32 : memref<4xf16>
    }
    %262 = vector.broadcast %c12 : index to vector<4xindex>
    vector.scatter %alloc_29[%c6, %c5, %c0] [%262], %18, %119 : memref<7x7x7xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
    %263 = arith.cmpi sgt, %false_1, %false : i1
    %264 = vector.broadcast %cst : f32 to vector<4x4xf32>
    %265 = vector.outerproduct %209, %153, %264 {kind = #vector.kind<mul>} : vector<4xf32>, vector<4xf32>
    %266 = arith.minsi %false, %false_1 : i1
    %267 = vector.reduction <mul>, %18 : vector<4xi1> into i1
    %dest_30, %accumulated_value_31 = vector.scan <mul>, %260, %255 {inclusive = true, reduction_dim = 1 : i64} : vector<1x1xf16>, vector<1xf16>
    %268 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 + 8, 0, d2 floordiv 128 - 8, d2)>(%166, %c4, %c9, %97)
    %269 = tensor.empty() : tensor<4xf32>
    %270 = linalg.copy ins(%12 : tensor<4xf32>) outs(%269 : tensor<4xf32>) -> tensor<4xf32>
    %271 = tensor.empty() : tensor<1x1xi1>
    %transposed = linalg.transpose ins(%alloc_7 : memref<1x1xi1>) outs(%271 : tensor<1x1xi1>) permutation = [1, 0] 
    %272 = tensor.empty() : tensor<7x7xi32>
    %reduced = linalg.reduce ins(%8 : tensor<7x7x7xi32>) outs(%272 : tensor<7x7xi32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %275 = math.exp %16 : tensor<4xf16>
        affine.for %arg2 = 0 to 23 {
        }
        %276 = index.maxu %182, %c12
        %277 = math.log1p %17 : tensor<4xf16>
        %278 = arith.addf %130, %130 : f32
        %279 = math.log2 %0 : tensor<1x1xf16>
        %280 = vector.insertelement %true, %24[%77 : index] : vector<1xi1>
        %281 = math.rsqrt %0 : tensor<1x1xf16>
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    %273 = scf.parallel (%arg2) = (%181) to (%142) step (%c2) init (%expanded_28) -> tensor<1x4x4x1xi64> {
      %275 = arith.divf %cst, %cst_0 : f32
      %276 = vector.broadcast %147 : i64 to vector<4x4xi64>
      %277 = vector.outerproduct %119, %119, %276 {kind = #vector.kind<maxui>} : vector<4xi64>, vector<4xi64>
      %278 = arith.maxf %130, %cst_0 : f32
      %279 = math.log1p %17 : tensor<4xf16>
      %280 = vector.reduction <minsi>, %201 : vector<7xi1> into i1
      %281 = math.absi %11 : tensor<1x4x4xi64>
      %282 = vector.load %alloc_11[%c0, %c0, %c0] : memref<1x4x4xi1>, vector<4xi1>
      %283 = vector.broadcast %187 : index to vector<7xindex>
      vector.scatter %alloc_10[%c0, %c0] [%283], %201, %201 : memref<1x1xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
      %284 = arith.remf %cst, %cst_0 : f32
      %285 = affine.apply affine_map<(d0) -> ((d0 - 8) * 512 + 1)>(%145)
      scf.execute_region {
        %294 = arith.minui %extracted_25, %147 : i64
        %295 = math.fma %130, %cst_0, %130 : f32
        %296 = math.log2 %130 : f32
        %297 = math.ceil %4 : tensor<1x4x4xf32>
        %298 = bufferization.to_memref %11 : memref<1x4x4xi64>
        %extracted_32 = tensor.extract %78[%c0] : tensor<4xi16>
        %299 = math.ctlz %false : i1
        %false_33 = index.bool.constant false
        %300 = math.log10 %19 : tensor<f32>
        %301 = bufferization.clone %alloc_14 : memref<4xi1> to memref<4xi1>
        %302 = math.atan2 %cst, %130 : f32
        %303 = bufferization.clone %alloc_20 : memref<1xi16> to memref<1xi16>
        %304 = math.absf %130 : f32
        %305 = index.ceildivu %145, %215
        %306 = index.maxu %187, %69
        %307 = vector.matrix_multiply %247, %209 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<1xf32>, vector<4xf32>) -> vector<4xf32>
        scf.yield
      }
      %286 = arith.remf %cst, %cst : f32
      %287 = math.log2 %12 : tensor<4xf32>
      %288 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
      %289 = vector.fma %288, %288, %288 : vector<1x1xf32>
      %290 = tensor.empty() : tensor<1x1xf16>
      %291 = linalg.matmul ins(%0, %0 : tensor<1x1xf16>, tensor<1x1xf16>) outs(%290 : tensor<1x1xf16>) -> tensor<1x1xf16>
      %292 = affine.apply affine_map<(d0) -> ((d0 ceildiv 16 - d0) * 64)>(%c11)
      %293 = tensor.empty() : tensor<1x4x4x1xi64>
      scf.reduce(%293)  : tensor<1x4x4x1xi64> {
      ^bb0(%arg3: tensor<1x4x4x1xi64>, %arg4: tensor<1x4x4x1xi64>):
        %294 = math.absf %98 : tensor<7x7x7xf32>
        %295 = math.roundeven %38 : tensor<1x4x4xf32>
        %296 = math.ipowi %8, %15 : tensor<7x7x7xi32>
        %297 = math.atan %cst_0 : f32
        %298 = math.ipowi %6, %6 : tensor<1x1xi64>
        %299 = arith.maxsi %c953342303_i32, %c1269864297_i32 : i32
        %300 = index.mul %c14, %292
        %301 = vector.broadcast %cst_3 : f16 to vector<7x7x7xf16>
        %302 = tensor.empty() : tensor<1x4x4x1xi64>
        scf.reduce.return %302 : tensor<1x4x4x1xi64>
      }
      scf.yield
    }
    %274 = affine.vector_load %alloc_13[%187, %168, %166] : memref<7x7x7xf32>, vector<7xf32>
    affine.vector_store %204, %alloc_20[%100] : memref<1xi16>, vector<1xi16>
    vector.print %18 : vector<4xi1>
    vector.print %21 : vector<1xi1>
    vector.print %24 : vector<1xi1>
    vector.print %26 : vector<7x7x7xf16>
    vector.print %63 : vector<1x4x4xi64>
    vector.print %81 : vector<1xi1>
    vector.print %85 : vector<1x4x4xi1>
    vector.print %119 : vector<4xi64>
    vector.print %132 : vector<4xf32>
    vector.print %133 : vector<4xf32>
    vector.print %139 : vector<7x7x7xf32>
    vector.print %148 : vector<7x7x7xi1>
    vector.print %152 : vector<7x7x7xi1>
    vector.print %153 : vector<4xf32>
    vector.print %154 : vector<7x7x7xf32>
    vector.print %171 : vector<4xf32>
    vector.print %188 : vector<1x1xi16>
    vector.print %189 : vector<1x1xi1>
    vector.print %190 : vector<1x1xi32>
    vector.print %191 : vector<1x1xi16>
    vector.print %196 : vector<12xf16>
    vector.print %197 : vector<12xi1>
    vector.print %198 : vector<12xf16>
    vector.print %200 : vector<7xi1>
    vector.print %201 : vector<7xi1>
    vector.print %204 : vector<1xi16>
    vector.print %208 : vector<4xf32>
    vector.print %209 : vector<4xf32>
    vector.print %229 : vector<4xi16>
    vector.print %230 : vector<4xi16>
    vector.print %234 : vector<7x7x7xi16>
    vector.print %240 : vector<4xi16>
    vector.print %244 : vector<1x1xi64>
    vector.print %245 : vector<1x1xi64>
    vector.print %247 : vector<1xf32>
    vector.print %248 : vector<7x7x7xf32>
    vector.print %249 : vector<7x7x7xf32>
    vector.print %255 : vector<1xf16>
    vector.print %259 : vector<1x1xf16>
    vector.print %260 : vector<1x1xf16>
    vector.print %274 : vector<7xf32>
    vector.print %cst : f32
    vector.print %c953342303_i32 : i32
    vector.print %c28088_i16 : i16
    vector.print %true : i1
    vector.print %c1269864297_i32 : i32
    vector.print %false : i1
    vector.print %cst_0 : f32
    vector.print %false_1 : i1
    vector.print %c11551_i16 : i16
    vector.print %c2057239616_i32 : i32
    vector.print %c-30012_i16 : i16
    vector.print %c1527806364_i64 : i64
    vector.print %true_2 : i1
    vector.print %c-6544_i16 : i16
    vector.print %cst_3 : f16
    vector.print %c25801_i16 : i16
    vector.print %103 : i16
    vector.print %extracted : i1
    vector.print %130 : f32
    vector.print %143 : i16
    vector.print %147 : i64
    vector.print %extracted_25 : i64
    return
  }
}
