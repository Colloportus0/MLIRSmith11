module {
  func.func @func1(%arg0: memref<12xi64>, %arg1: i32, %arg2: vector<8x10x10xi32>) -> tensor<8x10x10xf16> {
    %c334376870_i32 = arith.constant 334376870 : i32
    %cst = arith.constant 1.281264E+9 : f32
    %true = arith.constant true
    %c774756101_i32 = arith.constant 774756101 : i32
    %c1919621616_i32 = arith.constant 1919621616 : i32
    %false = arith.constant false
    %c479226420_i64 = arith.constant 479226420 : i64
    %false_0 = arith.constant false
    %c5295_i16 = arith.constant 5295 : i16
    %c25475_i16 = arith.constant 25475 : i16
    %false_1 = arith.constant false
    %false_2 = arith.constant false
    %false_3 = arith.constant false
    %false_4 = arith.constant false
    %c529273339_i64 = arith.constant 529273339 : i64
    %cst_5 = arith.constant 2.03889203E+9 : f32
    %0 = tensor.empty() : tensor<12xf32>
    %1 = tensor.empty() : tensor<4x10x8xi1>
    %2 = tensor.empty() : tensor<10xf16>
    %3 = tensor.empty() : tensor<10xi64>
    %4 = tensor.empty() : tensor<12xi64>
    %5 = tensor.empty() : tensor<10xi32>
    %6 = tensor.empty() : tensor<8x10x10xi1>
    %7 = tensor.empty() : tensor<10xf32>
    %8 = tensor.empty() : tensor<8x10x10xi32>
    %9 = tensor.empty() : tensor<10xi32>
    %10 = tensor.empty() : tensor<8x10x10xi16>
    %11 = tensor.empty() : tensor<4x10x8xf32>
    %12 = tensor.empty() : tensor<10xi1>
    %13 = tensor.empty() : tensor<4x10x8xi16>
    %14 = tensor.empty() : tensor<8x10x10xf32>
    %15 = tensor.empty() : tensor<8x10x10xi1>
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
    %alloc = memref.alloc() : memref<8x10x10xi16>
    %alloc_6 = memref.alloc() : memref<8x10x10xf16>
    %alloc_7 = memref.alloc() : memref<4x10x8xi16>
    %alloc_8 = memref.alloc() : memref<12xi64>
    %alloc_9 = memref.alloc() : memref<8x10x10xi16>
    %alloc_10 = memref.alloc() : memref<10xf32>
    %alloc_11 = memref.alloc() : memref<8x10x10xf16>
    %alloc_12 = memref.alloc() : memref<10xi64>
    %alloc_13 = memref.alloc() : memref<10xf32>
    %alloc_14 = memref.alloc() : memref<4x10x8xi64>
    %alloc_15 = memref.alloc() : memref<12xi1>
    %alloc_16 = memref.alloc() : memref<4x10x8xf32>
    %alloc_17 = memref.alloc() : memref<4x10x8xi16>
    %alloc_18 = memref.alloc() : memref<8x10x10xi16>
    %alloc_19 = memref.alloc() : memref<12xf16>
    %alloc_20 = memref.alloc() : memref<8x10x10xi32>
    %16 = tensor.empty() : tensor<10xf32>
    %17 = linalg.copy ins(%7 : tensor<10xf32>) outs(%16 : tensor<10xf32>) -> tensor<10xf32>
    %18 = tensor.empty() : tensor<12xf16>
    %transposed = linalg.transpose ins(%alloc_19 : memref<12xf16>) outs(%18 : tensor<12xf16>) permutation = [0] 
    %19 = tensor.empty() : tensor<4x10xi16>
    %reduced = linalg.reduce ins(%13 : tensor<4x10x8xi16>) outs(%19 : tensor<4x10xi16>) dimensions = [2] 
      (%in: i16, %init: i16) {
        %274 = arith.remf %cst_5, %cst_5 : f32
        %275 = index.divs %c13, %c5
        %276 = math.tan %7 : tensor<10xf32>
        %277 = math.absf %2 : tensor<10xf16>
        %278 = arith.cmpf ult, %cst, %cst : f32
        %rank_42 = tensor.rank %11 : tensor<4x10x8xf32>
        %true_43 = index.bool.constant true
        %279 = index.ceildivs %c3, %c10
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %20 = scf.parallel (%arg3, %arg4) = (%c15, %c1) to (%c14, %c0) step (%c15, %c14) init (%cst_5) -> f32 {
      %274 = memref.atomic_rmw andi %c774756101_i32, %alloc_20[%c7, %c7, %c8] : (i32, memref<8x10x10xi32>) -> i32
      %splat_42 = tensor.splat %cst : tensor<12xf32>
      %275 = arith.andi %c529273339_i64, %c479226420_i64 : i64
      %276 = arith.floordivsi %false_4, %false_2 : i1
      %277 = math.round %16 : tensor<10xf32>
      %278 = math.ipowi %true, %false_0 : i1
      %279 = arith.minsi %c1919621616_i32, %c774756101_i32 : i32
      %280 = vector.broadcast %c479226420_i64 : i64 to vector<10xi64>
      %281 = vector.broadcast %c529273339_i64 : i64 to vector<10x10xi64>
      %282 = vector.outerproduct %280, %280, %281 {kind = #vector.kind<minsi>} : vector<10xi64>, vector<10xi64>
      %283 = index.ceildivu %c1, %c4
      %284 = vector.broadcast %c529273339_i64 : i64 to vector<1xi64>
      %285 = vector.broadcast %c529273339_i64 : i64 to vector<1xi64>
      %286 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %284, %285, %c529273339_i64 : vector<1xi64>, vector<1xi64> into i64
      %287 = index.ceildivu %c14, %c7
      %288 = arith.floordivsi %false_3, %false_2 : i1
      %289 = math.expm1 %2 : tensor<10xf16>
      %290 = math.tanh %7 : tensor<10xf32>
      %extracted_43 = tensor.extract %5[%c8] : tensor<10xi32>
      %291 = vector.flat_transpose %284 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
      %cst_44 = arith.constant 1.000000e+00 : f32
      scf.reduce(%cst_44)  : f32 {
      ^bb0(%arg5: f32, %arg6: f32):
        %cst_45 = arith.constant 1.000000e+00 : f16
        %292 = memref.atomic_rmw mulf %cst_45, %alloc_11[%c5, %c1, %c6] : (f16, memref<8x10x10xf16>) -> f16
        %293 = index.maxs %arg4, %c2
        %294 = vector.splat %cst : vector<10xf32>
        %295 = math.log10 %2 : tensor<10xf16>
        %296 = math.log1p %14 : tensor<8x10x10xf32>
        %297 = vector.broadcast %arg5 : f32 to vector<8x10x10xf32>
        %298 = vector.fma %297, %297, %297 : vector<8x10x10xf32>
        %299 = math.cos %0 : tensor<12xf32>
        %300 = vector.broadcast %c529273339_i64 : i64 to vector<1x1xi64>
        %301 = vector.outerproduct %284, %291, %300 {kind = #vector.kind<xor>} : vector<1xi64>, vector<1xi64>
        %cst_46 = arith.constant 1.000000e+00 : f32
        scf.reduce.return %cst_46 : f32
      }
      scf.yield
    }
    %21 = affine.vector_load %alloc_11[%c4, %c1, %c15] : memref<8x10x10xf16>, vector<12xf16>
    affine.vector_store %21, %alloc_6[%c12, %c14, %c4] : memref<8x10x10xf16>, vector<12xf16>
    %alloc_21 = memref.alloc() : memref<12xf16>
    %22 = tensor.empty() : tensor<f16>
    %23 = linalg.dot ins(%alloc_19, %alloc_21 : memref<12xf16>, memref<12xf16>) outs(%22 : tensor<f16>) -> tensor<f16>
    %24 = arith.addi %true, %true : i1
    %cst_22 = arith.constant 1.000000e+00 : f16
    %cst_23 = arith.constant 0.000000e+00 : f16
    %25 = vector.transfer_read %alloc_11[%c0, %c9, %c8], %cst_23 {permutation_map = affine_map<(d0, d1, d2) -> (0, 0)>} : memref<8x10x10xf16>, vector<8x4xf16>
    %26 = arith.minf %cst, %cst : f32
    %27 = vector.broadcast %c529273339_i64 : i64 to vector<10xi64>
    %28 = index.divu %c4, %c6
    %rank = tensor.rank %3 : tensor<10xi64>
    %generated = tensor.generate %c10 {
    ^bb0(%arg3: index):
      %274 = vector.broadcast %c479226420_i64 : i64 to vector<4x10x8xi64>
      %275 = vector.broadcast %false_3 : i1 to vector<4x10x8xi1>
      %276 = vector.broadcast %c334376870_i32 : i32 to vector<4x10x8xi32>
      %277 = vector.gather %3[%28] [%276], %275, %274 : tensor<10xi64>, vector<4x10x8xi32>, vector<4x10x8xi1>, vector<4x10x8xi64> into vector<4x10x8xi64>
      %278 = arith.divf %cst, %cst : f32
      %279 = vector.extract_strided_slice %276 {offsets = [2], sizes = [1], strides = [1]} : vector<4x10x8xi32> to vector<1x10x8xi32>
      %280 = math.ipowi %15, %15 : tensor<8x10x10xi1>
      tensor.yield %c334376870_i32 : i32
    } : tensor<?xi32>
    %29 = vector.broadcast %cst_22 : f16 to vector<12x12xf16>
    %30 = vector.outerproduct %21, %21, %29 {kind = #vector.kind<maxf>} : vector<12xf16>, vector<12xf16>
    %31 = vector.shuffle %27, %27 [0, 2, 4, 8, 13, 14] : vector<10xi64>, vector<10xi64>
    %alloc_24 = memref.alloc() : memref<4x10xi16>
    memref.tensor_store %19, %alloc_24 : memref<4x10xi16>
    %32 = vector.extract %21[2] : vector<12xf16>
    %c1142015536_i64 = arith.constant 1142015536 : i64
    %33 = arith.andi %c25475_i16, %c25475_i16 : i16
    %34 = tensor.empty() : tensor<10x8xi16>
    %35 = tensor.empty() : tensor<4x8xi16>
    %36 = linalg.matmul ins(%19, %34 : tensor<4x10xi16>, tensor<10x8xi16>) outs(%35 : tensor<4x8xi16>) -> tensor<4x8xi16>
    %37 = arith.maxf %cst, %cst_5 : f32
    %38 = arith.maxf %cst_22, %cst_22 : f16
    %39 = vector.load %alloc_15[%c5] : memref<12xi1>, vector<4x10x8xi1>
    %40 = math.floor %2 : tensor<10xf16>
    %collapsed = tensor.collapse_shape %6 [[0, 1], [2]] : tensor<8x10x10xi1> into tensor<80x10xi1>
    %41 = affine.if affine_set<(d0, d1, d2, d3) : (14 >= 0, d3 mod 2 == 0, 0 == 0)>(%c0, %c9, %c0, %c13) -> i64 {
      %274 = math.round %14 : tensor<8x10x10xf32>
      memref.assume_alignment %alloc_7, 16 : memref<4x10x8xi16>
      %275 = vector.broadcast %c479226420_i64 : i64 to vector<10x10xi64>
      %276 = vector.outerproduct %27, %27, %275 {kind = #vector.kind<add>} : vector<10xi64>, vector<10xi64>
      %277 = arith.andi %false, %false_3 : i1
      %278 = math.cttz %collapsed : tensor<80x10xi1>
      %279 = arith.shrui %c774756101_i32, %c774756101_i32 : i32
      %280 = affine.if affine_set<(d0, d1) : (d1 * 64 >= 0, d1 >= 0)>(%c0, %c10) -> f32 {
        %282 = vector.broadcast %false_3 : i1 to vector<10x8x10x8xi1>
        %283 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<and>} %39, %39, %282 : vector<4x10x8xi1>, vector<4x10x8xi1> into vector<10x8x10x8xi1>
        %284 = arith.mulf %cst, %cst_5 : f32
        %285 = arith.maxf %cst, %cst : f32
        %286 = math.atan %14 : tensor<8x10x10xf32>
        %287 = arith.addi %false_1, %false_0 : i1
        %288 = index.add %c8, %c11
        %289 = arith.remf %cst_22, %cst_22 : f16
        %alloc_42 = memref.alloc() : memref<4x10x8xf32>
        memref.copy %alloc_16, %alloc_42 : memref<4x10x8xf32> to memref<4x10x8xf32>
        affine.yield %cst : f32
      } else {
        %282 = math.tan %7 : tensor<10xf32>
        %283 = vector.insertelement %c479226420_i64, %27[%c8 : index] : vector<10xi64>
        %284 = arith.addf %cst_22, %cst_22 : f16
        %285 = memref.load %alloc[%c3, %c1, %c9] : memref<8x10x10xi16>
        %286 = arith.minsi %c529273339_i64, %c529273339_i64 : i64
        %287 = vector.bitcast %39 : vector<4x10x8xi1> to vector<4x10x8xi1>
        %288 = vector.load %alloc[%c0, %c7, %c9] : memref<8x10x10xi16>, vector<8x10x10xi16>
        %289 = math.fma %cst_22, %cst_22, %cst_22 : f16
        affine.yield %cst : f32
      }
      %281 = math.tan %17 : tensor<10xf32>
      affine.yield %c479226420_i64 : i64
    } else {
      %274 = vector.create_mask %c13 : vector<10xi1>
      %275 = vector.broadcast %false : i1 to vector<8x10x10xi1>
      %276 = arith.ori %c334376870_i32, %c334376870_i32 : i32
      %277 = tensor.empty() : tensor<12xi1>
      %278 = vector.broadcast %c334376870_i32 : i32 to vector<8x10x10xi32>
      %279 = vector.gather %277[%c1] [%278], %275, %275 : tensor<12xi1>, vector<8x10x10xi32>, vector<8x10x10xi1>, vector<8x10x10xi1> into vector<8x10x10xi1>
      %280 = arith.maxf %cst_22, %cst_22 : f16
      %281 = vector.create_mask %c3 : vector<10xi1>
      %282 = math.round %cst : f32
      %283 = scf.execute_region -> tensor<12xi32> {
        %284 = vector.broadcast %c334376870_i32 : i32 to vector<10x10xi32>
        %285 = vector.insert %284, %278 [2] : vector<10x10xi32> into vector<8x10x10xi32>
        %286 = math.floor %16 : tensor<10xf32>
        vector.print %275 : vector<8x10x10xi1>
        %287 = memref.load %alloc_13[%c3] : memref<10xf32>
        %288 = index.sub %rank, %c4
        %289 = arith.cmpi ne, %c334376870_i32, %c1919621616_i32 : i32
        %cast_42 = tensor.cast %0 : tensor<12xf32> to tensor<?xf32>
        %290 = vector.multi_reduction <add>, %39, %281 [0, 2] : vector<4x10x8xi1> to vector<10xi1>
        %291 = arith.shrui %false_4, %false : i1
        %292 = arith.maxf %cst_5, %cst : f32
        %293 = bufferization.clone %alloc_17 : memref<4x10x8xi16> to memref<4x10x8xi16>
        %alloc_43 = memref.alloc() : memref<f16>
        memref.tensor_store %23, %alloc_43 : memref<f16>
        %294 = vector.transpose %281, [0] : vector<10xi1> to vector<10xi1>
        %295 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 + d1 - 16)>(%c7, %c9, %c0, %c7)
        %inserted_44 = tensor.insert %c25475_i16 into %13[%c1, %c4, %c2] : tensor<4x10x8xi16>
        %296 = tensor.empty(%28, %c13) : tensor<8x?x?xi1>
        %297 = tensor.empty() : tensor<12xi32>
        scf.yield %297 : tensor<12xi32>
      }
      affine.yield %c479226420_i64 : i64
    }
    memref.copy %alloc_6, %alloc_11 : memref<8x10x10xf16> to memref<8x10x10xf16>
    %inserted = tensor.insert %false_4 into %1[%c2, %c3, %c1] : tensor<4x10x8xi1>
    %42 = tensor.empty(%c7) : tensor<?x10x10xi16>
    %43 = arith.floordivsi %c529273339_i64, %c529273339_i64 : i64
    %44 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %21, %21, %cst_22 : vector<12xf16>, vector<12xf16> into f16
    %45 = vector.broadcast %false : i1 to vector<12xi1>
    vector.print %27 : vector<10xi64>
    %46 = memref.load %alloc_6[%c4, %c5, %c4] : memref<8x10x10xf16>
    %47 = math.cos %cst : f32
    %48 = bufferization.clone %alloc_11 : memref<8x10x10xf16> to memref<8x10x10xf16>
    %49 = arith.addi %c1919621616_i32, %c774756101_i32 : i32
    %50 = math.atan %cst_5 : f32
    %51 = arith.negf %cst_22 : f16
    %collapsed_25 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<8x10x10xf32> into tensor<80x10xf32>
    %52 = vector.shuffle %21, %21 [0, 2, 3, 5, 6, 7, 8, 10, 13, 14, 15, 16, 17, 19, 21, 22] : vector<12xf16>, vector<12xf16>
    %53 = memref.atomic_rmw mulf %cst_22, %alloc_19[%c10] : (f16, memref<12xf16>) -> f16
    %54 = index.casts %c529273339_i64 : i64 to index
    %55 = arith.subi %false_1, %false_1 : i1
    %56 = index.sub %c5, %c12
    %57 = arith.cmpf une, %cst_22, %cst_22 : f16
    %58 = index.sizeof
    %59 = arith.shli %c334376870_i32, %c334376870_i32 : i32
    %60 = math.log %2 : tensor<10xf16>
    %61 = vector.extract_strided_slice %45 {offsets = [5], sizes = [6], strides = [1]} : vector<12xi1> to vector<6xi1>
    %62 = affine.max affine_map<(d0, d1, d2, d3) -> ((d2 + 1) mod 32 - 1, d2 floordiv 64)>(%c5, %58, %c7, %c1)
    %63 = vector.broadcast %cst_5 : f32 to vector<12xf32>
    %64 = index.sub %c11, %56
    %65 = vector.broadcast %false_0 : i1 to vector<8x10x10xi1>
    %66 = vector.broadcast %c334376870_i32 : i32 to vector<8x10x10xi32>
    %67 = vector.gather %1[%28, %c13, %c7] [%66], %65, %65 : tensor<4x10x8xi1>, vector<8x10x10xi32>, vector<8x10x10xi1>, vector<8x10x10xi1> into vector<8x10x10xi1>
    %68 = index.ceildivs %c9, %c7
    %69 = index.ceildivu %c15, %c13
    %70 = arith.floordivsi %c529273339_i64, %c529273339_i64 : i64
    %71 = vector.extract %61[0] : vector<6xi1>
    %72 = arith.shrsi %false_1, %false_0 : i1
    %73 = arith.maxsi %false_1, %false_4 : i1
    %74 = index.maxs %62, %c7
    %75 = arith.subi %c5295_i16, %c5295_i16 : i16
    %76 = math.roundeven %7 : tensor<10xf32>
    %77 = vector.broadcast %false_0 : i1 to vector<10x8xi1>
    %78 = vector.insert %77, %39 [0] : vector<10x8xi1> into vector<4x10x8xi1>
    %79 = memref.atomic_rmw mins %c479226420_i64, %alloc_12[%c6] : (i64, memref<10xi64>) -> i64
    %80 = arith.shrui %false, %false_3 : i1
    %81 = bufferization.clone %alloc_12 : memref<10xi64> to memref<10xi64>
    %82 = tensor.empty() : tensor<4x10x8xf16>
    %83 = vector.broadcast %cst_22 : f16 to vector<4x10x8xf16>
    %84 = vector.broadcast %c334376870_i32 : i32 to vector<4x10x8xi32>
    %85 = vector.gather %82[%62, %c9, %28] [%84], %39, %83 : tensor<4x10x8xf16>, vector<4x10x8xi32>, vector<4x10x8xi1>, vector<4x10x8xf16> into vector<4x10x8xf16>
    %86 = arith.cmpf ule, %cst, %cst_5 : f32
    %87 = arith.andi %false_0, %false : i1
    %cst_26 = arith.constant 1.000000e+00 : f32
    %88 = vector.transfer_read %0[%c5], %cst_26 : tensor<12xf32>, vector<f32>
    %89 = index.add %74, %c2
    %90 = arith.cmpi ult, %c479226420_i64, %c479226420_i64 : i64
    %91 = arith.ori %false_3, %true : i1
    %92 = arith.andi %false, %false_3 : i1
    %93 = affine.min affine_map<(d0, d1, d2, d3) -> (-d2 + d2 ceildiv 16, d3 mod 64, d3 mod 64)>(%64, %c5, %28, %58)
    %94 = vector.flat_transpose %63 {columns = 3 : i32, rows = 4 : i32} : vector<12xf32> -> vector<12xf32>
    %95 = arith.andi %false_1, %false : i1
    %96 = arith.addf %cst, %cst_26 : f32
    %97 = math.atan2 %2, %2 : tensor<10xf16>
    %98 = vector.create_mask %74, %c9, %28 : vector<4x10x8xi1>
    %99 = arith.shrui %c334376870_i32, %c774756101_i32 : i32
    %100 = arith.minsi %c479226420_i64, %c529273339_i64 : i64
    %101 = vector.broadcast %cst : f32 to vector<12xf32>
    %102 = tensor.empty() : tensor<4x10x8xi1>
    %mapped = linalg.map ins(%1, %1 : tensor<4x10x8xi1>, tensor<4x10x8xi1>) outs(%102 : tensor<4x10x8xi1>)
      (%in: i1, %in_42: i1) {
        %274 = affine.min affine_map<(d0, d1) -> (d1)>(%c9, %c5)
        %275 = math.atan2 %7, %17 : tensor<10xf32>
        %276 = vector.broadcast %c8 : index to vector<12xindex>
        %277 = vector.broadcast %c5295_i16 : i16 to vector<12xi16>
        vector.scatter %alloc_18[%c3, %c4, %c5] [%276], %45, %277 : memref<8x10x10xi16>, vector<12xindex>, vector<12xi1>, vector<12xi16>
        %278 = arith.subi %c774756101_i32, %c774756101_i32 : i32
        %279 = math.cttz %false : i1
        %280 = vector.matrix_multiply %101, %101 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xf32>, vector<12xf32>) -> vector<1xf32>
        %281 = arith.remf %cst_5, %cst : f32
        %282 = arith.cmpf ogt, %cst_5, %cst : f32
        %cast_43 = tensor.cast %82 : tensor<4x10x8xf16> to tensor<?x?x?xf16>
        %283 = tensor.empty() : tensor<12xi32>
        %284 = math.fpowi %0, %283 : tensor<12xf32>, tensor<12xi32>
        scf.if %in {
          %302 = vector.matrix_multiply %27, %27 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi64>, vector<10xi64>) -> vector<1xi64>
          %303 = arith.shrsi %c25475_i16, %c5295_i16 : i16
          %extracted_48 = tensor.extract %17[%c2] : tensor<10xf32>
          %304 = arith.remui %c25475_i16, %c5295_i16 : i16
          %305 = arith.cmpi eq, %false_2, %false_0 : i1
          %306 = arith.maxsi %in_42, %in_42 : i1
          %307 = arith.mulf %extracted_48, %cst_5 : f32
          %308 = vector.broadcast %cst_5 : f32 to vector<12x12xf32>
          %309 = vector.outerproduct %63, %63, %308 {kind = #vector.kind<add>} : vector<12xf32>, vector<12xf32>
        }
        %285 = math.round %11 : tensor<4x10x8xf32>
        %286 = math.ipowi %false, %false_1 : i1
        %287 = arith.minf %cst_22, %cst_22 : f16
        %288 = vector.load %alloc_19[%c11] : memref<12xf16>, vector<8x10x10xf16>
        %289 = bufferization.to_memref %14 : memref<8x10x10xf32>
        %generated_44 = tensor.generate %58, %c13, %c1 {
        ^bb0(%arg3: index, %arg4: index, %arg5: index):
          %extracted_48 = tensor.extract %102[%c0, %c8, %c3] : tensor<4x10x8xi1>
          %302 = index.floordivs %c12, %rank
          %303 = math.log %11 : tensor<4x10x8xf32>
          %304 = arith.divsi %c25475_i16, %c5295_i16 : i16
          tensor.yield %cst_22 : f16
        } : tensor<?x?x?xf16>
        %290 = index.maxu %28, %c14
        %291 = vector.flat_transpose %27 {columns = 5 : i32, rows = 2 : i32} : vector<10xi64> -> vector<10xi64>
        %292 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %61, %61, %false : vector<6xi1>, vector<6xi1> into i1
        %293 = vector.load %alloc_18[%c4, %c2, %c5] : memref<8x10x10xi16>, vector<12xi16>
        memref.assume_alignment %alloc_8, 1 : memref<12xi64>
        %294 = vector.shuffle %291, %27 [3, 8, 9, 12, 13, 14, 15, 19] : vector<10xi64>, vector<10xi64>
        %true_45 = index.bool.constant true
        %295 = math.tan %11 : tensor<4x10x8xf32>
        %296 = index.sub %c14, %c1
        %297 = arith.maxui %c479226420_i64, %c529273339_i64 : i64
        %298 = vector.extract %98[0] : vector<4x10x8xi1>
        %extracted_46 = tensor.extract %5[%c8] : tensor<10xi32>
        %299 = arith.floordivsi %true, %false_1 : i1
        %300 = math.exp %22 : tensor<f16>
        %301 = math.powf %cst, %cst : f32
        %true_47 = arith.constant true
        linalg.yield %true_47 : i1
      }
    %103 = vector.load %48[%c0, %c4, %c4] : memref<8x10x10xf16>, vector<12xf16>
    %104 = vector.matrix_multiply %94, %94 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xf32>, vector<12xf32>) -> vector<1xf32>
    %105 = vector.broadcast %cst_22 : f16 to vector<8xf16>
    %106 = vector.insert %105, %83 [3, 7] : vector<8xf16> into vector<4x10x8xf16>
    %107 = arith.negf %cst : f32
    %108 = vector.shuffle %45, %45 [0, 2, 3, 4, 7, 9, 10, 11, 12, 13, 15, 18, 19, 22, 23] : vector<12xi1>, vector<12xi1>
    %109 = vector.create_mask %93, %c4, %c12 : vector<8x10x10xi1>
    %110 = math.atan2 %0, %0 : tensor<12xf32>
    %111 = bufferization.clone %alloc_7 : memref<4x10x8xi16> to memref<4x10x8xi16>
    %112 = tensor.empty() : tensor<10x10xi1>
    %113 = tensor.empty() : tensor<80x10xi1>
    %114 = linalg.matmul ins(%collapsed, %112 : tensor<80x10xi1>, tensor<10x10xi1>) outs(%113 : tensor<80x10xi1>) -> tensor<80x10xi1>
    %alloc_27 = memref.alloc() : memref<12xf16>
    %alloc_28 = memref.alloc() : memref<4x10x8xi1>
    memref.tensor_store %1, %alloc_28 : memref<4x10x8xi1>
    %115 = arith.minsi %c5295_i16, %c5295_i16 : i16
    %116 = memref.load %alloc_7[%c3, %c0, %c7] : memref<4x10x8xi16>
    memref.store %cst_22, %48[%c2, %c4, %c9] : memref<8x10x10xf16>
    %117 = vector.broadcast %c529273339_i64 : i64 to vector<12xi64>
    %118 = vector.broadcast %c1919621616_i32 : i32 to vector<12xi32>
    %119 = vector.gather %alloc_14[%93, %c8, %74] [%118], %45, %117 : memref<4x10x8xi64>, vector<12xi32>, vector<12xi1>, vector<12xi64> into vector<12xi64>
    %120 = math.exp %transposed : tensor<12xf16>
    %121 = math.sqrt %cst_26 : f32
    %122 = vector.transpose %84, [2, 1, 0] : vector<4x10x8xi32> to vector<8x10x4xi32>
    %true_29 = index.bool.constant true
    %123 = affine.min affine_map<(d0) -> ((-d0 + 16) * 32, d0 - (-d0 + 16) * 32, 0)>(%28)
    %124 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %105, %105, %cst_22 : vector<8xf16>, vector<8xf16> into f16
    %125 = index.mul %68, %54
    vector.print %94 : vector<12xf32>
    %126 = arith.minsi %c479226420_i64, %c479226420_i64 : i64
    %127 = index.casts %28 : index to i32
    %128 = math.tanh %11 : tensor<4x10x8xf32>
    %129 = arith.minf %cst, %cst : f32
    %130 = math.tan %transposed : tensor<12xf16>
    %131 = index.maxs %58, %69
    %132 = index.sizeof
    %133 = index.ceildivu %74, %123
    %134 = bufferization.clone %alloc : memref<8x10x10xi16> to memref<8x10x10xi16>
    %135 = vector.flat_transpose %119 {columns = 3 : i32, rows = 4 : i32} : vector<12xi64> -> vector<12xi64>
    %136 = arith.maxsi %c1919621616_i32, %c774756101_i32 : i32
    %inserted_30 = tensor.insert %c1919621616_i32 into %generated[%c0] : tensor<?xi32>
    %generated_31 = tensor.generate %c12 {
    ^bb0(%arg3: index):
      %274 = index.maxu %56, %c9
      %275 = memref.alloca_scope  -> (memref<8x10x10xi32>) {
        %inserted_43 = tensor.insert %cst_5 into %17[%c2] : tensor<10xf32>
        %278 = math.ipowi %false_4, %false_0 : i1
        %279 = vector.shuffle %117, %27 [1, 2, 3, 4, 6, 7, 9, 11, 12, 14, 20] : vector<12xi64>, vector<10xi64>
        %280 = index.sizeof
        %281 = arith.mulf %cst_26, %cst_26 : f32
        %282 = arith.mulf %cst, %cst_5 : f32
        memref.copy %alloc_7, %111 : memref<4x10x8xi16> to memref<4x10x8xi16>
        %283 = arith.cmpi sge, %false_3, %false_1 : i1
        %284 = index.sub %c7, %68
        %cast_44 = tensor.cast %13 : tensor<4x10x8xi16> to tensor<?x?x?xi16>
        %285 = arith.addi %false_0, %true : i1
        %286 = math.absi %5 : tensor<10xi32>
        %287 = vector.matrix_multiply %61, %61 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi1>, vector<6xi1>) -> vector<1xi1>
        %288 = arith.divf %cst_26, %cst_5 : f32
        %289 = vector.broadcast %cst_5 : f32 to vector<4x10x8xf32>
        %290 = vector.gather %0[%28] [%84], %98, %289 : tensor<12xf32>, vector<4x10x8xi32>, vector<4x10x8xi1>, vector<4x10x8xf32> into vector<4x10x8xf32>
        memref.store %c529273339_i64, %alloc_8[%c3] : memref<12xi64>
        %291 = arith.minsi %true_29, %false_3 : i1
        %292 = math.absi %true_29 : i1
        %alloc_45 = memref.alloc() : memref<4x8xi16>
        memref.tensor_store %35, %alloc_45 : memref<4x8xi16>
        %293 = arith.maxf %cst_26, %cst_26 : f32
        %294 = vector.create_mask %131, %28, %rank : vector<4x10x8xi1>
        %295 = math.round %cst : f32
        %296 = arith.cmpi ult, %true, %false_1 : i1
        %297 = math.absi %c774756101_i32 : i32
        %298 = arith.shrui %c5295_i16, %c25475_i16 : i16
        %299 = arith.cmpf oge, %cst, %cst : f32
        %300 = index.maxs %280, %c8
        %301 = vector.broadcast %true_29 : i1 to vector<10xi1>
        %302 = math.round %7 : tensor<10xf32>
        memref.assume_alignment %alloc_10, 16 : memref<10xf32>
        %303 = math.cttz %13 : tensor<4x10x8xi16>
        %304 = arith.andi %false, %false_0 : i1
        memref.alloca_scope.return %alloc_20 : memref<8x10x10xi32>
      }
      %276 = tensor.empty() : tensor<8x10xi16>
      %277 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%276 : tensor<8x10xi16>) outs(%13 : tensor<4x10x8xi16>) {
      ^bb0(%in: i16, %out: i16):
        %278 = arith.ori %false_3, %false_4 : i1
        %279 = arith.negf %cst_22 : f16
        %280 = vector.reduction <minf>, %94 : vector<12xf32> into f32
        %281 = math.round %11 : tensor<4x10x8xf32>
        %282 = vector.extract_strided_slice %83 {offsets = [0, 6], sizes = [1, 4], strides = [1, 1]} : vector<4x10x8xf16> to vector<1x4x8xf16>
        %283 = index.ceildivs %123, %c9
        memref.store %false, %alloc_15[%c7] : memref<12xi1>
        %284 = arith.ori %c1919621616_i32, %c334376870_i32 : i32
        %285 = math.exp %11 : tensor<4x10x8xf32>
        %286 = arith.minsi %c5295_i16, %c25475_i16 : i16
        %287 = index.maxu %c12, %c4
        %288 = vector.shuffle %45, %45 [0, 3, 5, 6, 8, 11, 12, 15, 16, 20, 23] : vector<12xi1>, vector<12xi1>
        %289 = vector.matrix_multiply %119, %119 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi64>, vector<12xi64>) -> vector<1xi64>
        %290 = math.roundeven %cst_26 : f32
        %291 = arith.cmpi ugt, %false_0, %false_2 : i1
        %292 = vector.broadcast %false_4 : i1 to vector<10x10xi1>
        %293 = vector.insert %292, %65 [5] : vector<10x10xi1> into vector<8x10x10xi1>
        %alloc_43 = memref.alloc() : memref<12xf32>
        %294 = math.floor %82 : tensor<4x10x8xf16>
        %295 = arith.maxf %cst_5, %cst_5 : f32
        %296 = vector.broadcast %false_0 : i1 to vector<10xi1>
        %297 = vector.transfer_write %296, %1[%c2, %131, %58] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<10xi1>, tensor<4x10x8xi1>
        %298 = arith.negf %cst_5 : f32
        %299 = vector.matrix_multiply %296, %45 {lhs_columns = 2 : i32, lhs_rows = 5 : i32, rhs_columns = 6 : i32} : (vector<10xi1>, vector<12xi1>) -> vector<30xi1>
        %c0_i16_44 = arith.constant 0 : i16
        %300 = vector.transfer_read %alloc_7[%274, %58, %131], %c0_i16_44 : memref<4x10x8xi16>, vector<8x12xi16>
        %301 = arith.remsi %c25475_i16, %c5295_i16 : i16
        %302 = vector.insertelement %cst_26, %104[%c9 : index] : vector<1xf32>
        %303 = arith.negf %cst_5 : f32
        memref.assume_alignment %alloc_6, 4 : memref<8x10x10xf16>
        %304 = vector.shuffle %84, %84 [1, 2, 4, 7] : vector<4x10x8xi32>, vector<4x10x8xi32>
        %alloc_45 = memref.alloc() : memref<12xf16>
        %305 = arith.cmpi sle, %false_1, %false_2 : i1
        %306 = affine.apply affine_map<(d0, d1, d2) -> (d2)>(%c0, %c14, %c3)
        %307 = arith.negf %cst_5 : f32
        linalg.yield %c0_i16_44 : i16
      } -> tensor<4x10x8xi16>
      %alloc_42 = memref.alloc() : memref<12xi64>
      tensor.yield %c529273339_i64 : i64
    } : tensor<?xi64>
    %137 = math.ipowi %c334376870_i32, %c1919621616_i32 : i32
    %138 = arith.remf %cst_26, %cst_26 : f32
    %139 = math.round %2 : tensor<10xf16>
    %140 = math.atan %0 : tensor<12xf32>
    %141 = index.floordivs %rank, %c6
    %142 = arith.mulf %cst_5, %cst_26 : f32
    %143 = vector.reduction <add>, %103 : vector<12xf16> into f16
    %144 = vector.broadcast %cst_5 : f32 to vector<4x10x8xf32>
    %145 = vector.fma %144, %144, %144 : vector<4x10x8xf32>
    %146 = vector.broadcast %cst : f32 to vector<10xf32>
    %147 = vector.multi_reduction <minf>, %145, %146 [0, 2] : vector<4x10x8xf32> to vector<10xf32>
    %148 = index.floordivs %c14, %c3
    %149 = arith.divf %cst_22, %cst_22 : f16
    scf.if %false_1 {
      %274 = bufferization.to_memref %1 : memref<4x10x8xi1>
      %275 = math.atan2 %collapsed_25, %collapsed_25 : tensor<80x10xf32>
      %276 = vector.insert %c479226420_i64, %27 [4] : i64 into vector<10xi64>
      %277 = arith.shli %c479226420_i64, %c529273339_i64 : i64
      %278 = vector.extract_strided_slice %65 {offsets = [0, 0], sizes = [6, 5], strides = [1, 1]} : vector<8x10x10xi1> to vector<6x5x10xi1>
      %279 = arith.xori %c479226420_i64, %c529273339_i64 : i64
      %280 = math.absi %9 : tensor<10xi32>
      %281 = bufferization.clone %alloc_16 : memref<4x10x8xf32> to memref<4x10x8xf32>
    }
    %150 = arith.subi %false_2, %false_3 : i1
    %151 = index.sub %c10, %c9
    %152 = arith.maxsi %true_29, %true : i1
    %153 = math.floor %2 : tensor<10xf16>
    %154 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%8 : tensor<8x10x10xi32>) {
    ^bb0(%out: i32):
      affine.for %arg3 = 0 to 71 {
      }
      %274 = arith.remui %c479226420_i64, %c479226420_i64 : i64
      %275 = arith.andi %false_3, %false_0 : i1
      %276 = vector.broadcast %cst : f32 to vector<4x10xf32>
      %dest, %accumulated_value = vector.scan <maxf>, %145, %276 {inclusive = true, reduction_dim = 2 : i64} : vector<4x10x8xf32>, vector<4x10xf32>
      %277 = affine.if affine_set<(d0, d1) : (d1 * 64 >= 0, d1 >= 0)>(%c12, %c11) -> i32 {
        %302 = index.ceildivu %89, %c1
        %collapsed_47 = tensor.collapse_shape %10 [[0, 1], [2]] : tensor<8x10x10xi16> into tensor<80x10xi16>
        %303 = memref.load %alloc_19[%c9] : memref<12xf16>
        %304 = arith.shli %c774756101_i32, %c1919621616_i32 : i32
        %collapsed_48 = tensor.collapse_shape %reduced [[0, 1]] : tensor<4x10xi16> into tensor<40xi16>
        %expanded = tensor.expand_shape %reduced [[0], [1, 2]] : tensor<4x10xi16> into tensor<4x10x1xi16>
        %305 = index.divs %141, %133
        %306 = arith.cmpi ne, %false_0, %false_4 : i1
        affine.yield %c774756101_i32 : i32
      } else {
        %302 = arith.addf %cst, %cst_26 : f32
        %303 = arith.cmpi ugt, %c479226420_i64, %c479226420_i64 : i64
        %rank_47 = tensor.rank %23 : tensor<f16>
        %304 = math.cttz %1 : tensor<4x10x8xi1>
        %305 = arith.divsi %c25475_i16, %c5295_i16 : i16
        %306 = math.roundeven %2 : tensor<10xf16>
        %307 = arith.maxsi %false_0, %false_1 : i1
        %308 = vector.broadcast %cst : f32 to vector<10x8x10x8xf32>
        %309 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %144, %145, %308 : vector<4x10x8xf32>, vector<4x10x8xf32> into vector<10x8x10x8xf32>
        affine.yield %c334376870_i32 : i32
      }
      %278 = math.round %2 : tensor<10xf16>
      %alloc_42 = memref.alloc() : memref<12xi16>
      %279 = index.sub %131, %c14
      %280 = affine.load %alloc[%c9, %c7, %c14] : memref<8x10x10xi16>
      %281 = math.absf %14 : tensor<8x10x10xf32>
      %282 = vector.flat_transpose %45 {columns = 3 : i32, rows = 4 : i32} : vector<12xi1> -> vector<12xi1>
      affine.for %arg3 = 0 to 61 {
      }
      %283 = index.casts %c1919621616_i32 : i32 to index
      %alloc_43 = memref.alloc() : memref<8x10x10xi64>
      %284 = vector.broadcast %true_29 : i1 to vector<10xi1>
      %285 = vector.broadcast %c334376870_i32 : i32 to vector<10xi32>
      %286 = vector.gather %alloc_43[%69, %54, %93] [%285], %284, %27 : memref<8x10x10xi64>, vector<10xi32>, vector<10xi1>, vector<10xi64> into vector<10xi64>
      %287 = math.cttz %false_0 : i1
      %288 = math.fpowi %16, %5 : tensor<10xf32>, tensor<10xi32>
      %289 = arith.andi %c1919621616_i32, %out : i32
      %290 = math.exp %11 : tensor<4x10x8xf32>
      %291 = math.log1p %cst : f32
      %292 = bufferization.to_memref %6 : memref<8x10x10xi1>
      %293 = arith.ori %false_0, %false_4 : i1
      %294 = math.log %22 : tensor<f16>
      %295 = math.roundeven %22 : tensor<f16>
      %alloc_44 = memref.alloc() : memref<12xf32>
      memref.tensor_store %0, %alloc_44 : memref<12xf32>
      %296 = arith.divui %false_0, %false : i1
      %297 = bufferization.clone %alloc_15 : memref<12xi1> to memref<12xi1>
      %298 = math.atan2 %23, %23 : tensor<f16>
      %299 = math.atan2 %17, %7 : tensor<10xf32>
      %300 = vector.matrix_multiply %27, %27 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi64>, vector<10xi64>) -> vector<1xi64>
      %false_45 = index.bool.constant false
      %301 = index.floordivs %131, %132
      %alloc_46 = memref.alloc() : memref<8x10x10xf16>
      linalg.yield %c774756101_i32 : i32
    } -> tensor<8x10x10xi32>
    %155 = bufferization.clone %134 : memref<8x10x10xi16> to memref<8x10x10xi16>
    %156 = index.add %c8, %74
    %157 = vector.extract %105[1] : vector<8xf16>
    %158 = index.sub %c10, %54
    %159 = index.maxu %74, %132
    %alloc_32 = memref.alloc() : memref<10xi32>
    memref.tensor_store %5, %alloc_32 : memref<10xi32>
    affine.for %arg3 = 0 to 22 {
    }
    %160 = index.divs %93, %c7
    %161 = vector.broadcast %cst : f32 to vector<1x1xf32>
    %162 = vector.outerproduct %104, %104, %161 {kind = #vector.kind<maxf>} : vector<1xf32>, vector<1xf32>
    %163 = index.ceildivu %148, %156
    %rank_33 = tensor.rank %3 : tensor<10xi64>
    %164 = arith.remf %cst_22, %cst_22 : f16
    %165 = index.sub %64, %74
    %166 = arith.negf %cst_5 : f32
    affine.store %cst_5, %alloc_16[%c2, %c12, %c6] : memref<4x10x8xf32>
    %167 = arith.cmpi ugt, %c1919621616_i32, %c334376870_i32 : i32
    %168 = memref.load %alloc_19[%c8] : memref<12xf16>
    %169 = math.exp %2 : tensor<10xf16>
    %170 = vector.extract_strided_slice %77 {offsets = [3], sizes = [4], strides = [1]} : vector<10x8xi1> to vector<4x8xi1>
    %171 = index.sub %c2, %c13
    %172 = bufferization.clone %81 : memref<10xi64> to memref<10xi64>
    %173 = arith.subi %c25475_i16, %c25475_i16 : i16
    %174 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%156, %156, %c0, %c3)
    %175 = arith.ori %false_4, %false_1 : i1
    %176 = vector.shuffle %109, %65 [0, 4, 5, 7, 8, 9, 12, 13] : vector<8x10x10xi1>, vector<8x10x10xi1>
    %splat = tensor.splat %c1919621616_i32 : tensor<12xi32>
    %177 = vector.transpose %117, [0] : vector<12xi64> to vector<12xi64>
    %178 = math.roundeven %cst : f32
    %179 = arith.negf %cst_5 : f32
    %180 = math.exp %cst_26 : f32
    %181 = arith.minf %cst_5, %cst : f32
    memref.assume_alignment %alloc_21, 16 : memref<12xf16>
    %182 = index.casts %158 : index to i32
    %183 = index.add %68, %163
    %184 = vector.load %alloc_9[%c4, %c5, %c0] : memref<8x10x10xi16>, vector<8x10x10xi16>
    %185 = index.floordivs %c8, %163
    %186 = arith.divf %cst, %cst_5 : f32
    %187 = arith.maxsi %false_4, %false_0 : i1
    %188 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %101, %101, %cst_5 : vector<12xf32>, vector<12xf32> into f32
    %189 = math.rsqrt %0 : tensor<12xf32>
    %190 = index.add %c12, %141
    %191 = vector.matrix_multiply %101, %104 {lhs_columns = 1 : i32, lhs_rows = 12 : i32, rhs_columns = 1 : i32} : (vector<12xf32>, vector<1xf32>) -> vector<12xf32>
    vector.print %98 : vector<4x10x8xi1>
    %192 = vector.broadcast %cst_26 : f32 to vector<4x12xf32>
    %193 = vector.transfer_write %192, %11[%165, %c12, %c3] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<4x12xf32>, tensor<4x10x8xf32>
    %194 = math.ipowi %false_4, %true : i1
    %195 = math.exp %0 : tensor<12xf32>
    %196 = math.powf %collapsed_25, %collapsed_25 : tensor<80x10xf32>
    %197 = arith.remui %false_1, %false_1 : i1
    %198 = math.exp %14 : tensor<8x10x10xf32>
    affine.for %arg3 = 0 to 120 {
    }
    %alloc_34 = memref.alloc() : memref<10xi16>
    %199 = vector.broadcast %c5295_i16 : i16 to vector<4x10x8xi16>
    %200 = vector.gather %alloc_34[%69] [%84], %98, %199 : memref<10xi16>, vector<4x10x8xi32>, vector<4x10x8xi1>, vector<4x10x8xi16> into vector<4x10x8xi16>
    %201 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%c11, %171, %54, %190)
    memref.copy %alloc_10, %alloc_13 : memref<10xf32> to memref<10xf32>
    %202 = arith.minsi %c5295_i16, %c5295_i16 : i16
    %203 = arith.maxui %c774756101_i32, %c774756101_i32 : i32
    vector.print %191 : vector<12xf32>
    %204 = math.cttz %6 : tensor<8x10x10xi1>
    %205 = math.atan2 %cst_22, %cst_22 : f16
    %206 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %103, %103, %cst_22 : vector<12xf16>, vector<12xf16> into f16
    %207 = math.log2 %0 : tensor<12xf32>
    %208 = arith.addi %c25475_i16, %c5295_i16 : i16
    %209 = math.absi %6 : tensor<8x10x10xi1>
    %210 = math.atan %23 : tensor<f16>
    %211 = vector.broadcast %false_1 : i1 to vector<12xi1>
    %212 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%8 : tensor<8x10x10xi32>) {
    ^bb0(%out: i32):
      %274 = index.sub %156, %c2
      memref.copy %134, %alloc_18 : memref<8x10x10xi16> to memref<8x10x10xi16>
      %275 = index.maxu %74, %201
      %276 = vector.extract_strided_slice %119 {offsets = [4], sizes = [4], strides = [1]} : vector<12xi64> to vector<4xi64>
      %277 = math.ceil %collapsed_25 : tensor<80x10xf32>
      %278 = arith.ori %c479226420_i64, %c479226420_i64 : i64
      %279 = arith.negf %cst_5 : f32
      %280 = arith.minsi %c529273339_i64, %c529273339_i64 : i64
      %281 = math.round %collapsed_25 : tensor<80x10xf32>
      memref.store %c25475_i16, %alloc_34[%c2] : memref<10xi16>
      %282 = math.roundeven %transposed : tensor<12xf16>
      %283 = arith.maxf %cst, %cst : f32
      %284 = arith.andi %false_3, %false_3 : i1
      %285 = vector.matrix_multiply %211, %45 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
      %286 = index.maxu %c2, %69
      %287 = arith.shrui %c25475_i16, %c25475_i16 : i16
      %288 = arith.minsi %c529273339_i64, %c529273339_i64 : i64
      %289 = arith.mulf %cst_5, %cst_26 : f32
      %290 = vector.flat_transpose %117 {columns = 3 : i32, rows = 4 : i32} : vector<12xi64> -> vector<12xi64>
      %291 = math.ipowi %6, %15 : tensor<8x10x10xi1>
      memref.copy %111, %alloc_7 : memref<4x10x8xi16> to memref<4x10x8xi16>
      %292 = math.log10 %cst_26 : f32
      %293 = vector.flat_transpose %45 {columns = 3 : i32, rows = 4 : i32} : vector<12xi1> -> vector<12xi1>
      %cast_42 = tensor.cast %19 : tensor<4x10xi16> to tensor<?x?xi16>
      %294 = vector.broadcast %true : i1 to vector<4x8x8x10xi1>
      %295 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d4, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d4, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<and>} %98, %67, %294 : vector<4x10x8xi1>, vector<8x10x10xi1> into vector<4x8x8x10xi1>
      %296 = vector.broadcast %c8 : index to vector<12xindex>
      %297 = vector.broadcast %c25475_i16 : i16 to vector<12xi16>
      vector.scatter %alloc_18[%c7, %c4, %c3] [%296], %211, %297 : memref<8x10x10xi16>, vector<12xindex>, vector<12xi1>, vector<12xi16>
      %298 = arith.cmpi ult, %c1919621616_i32, %out : i32
      %299 = math.exp %17 : tensor<10xf32>
      %300 = vector.shuffle %285, %285 [0] : vector<1xi1>, vector<1xi1>
      %cast_43 = tensor.cast %3 : tensor<10xi64> to tensor<?xi64>
      %301 = vector.broadcast %cst_22 : f16 to vector<f16>
      %302 = vector.transfer_write %301, %2[%rank] : vector<f16>, tensor<10xf16>
      %303 = arith.shli %c1919621616_i32, %c334376870_i32 : i32
      linalg.yield %c334376870_i32 : i32
    } -> tensor<8x10x10xi32>
    %213 = vector.broadcast %cst : f32 to vector<8x10x10xf32>
    %214 = vector.fma %213, %213, %213 : vector<8x10x10xf32>
    %215 = affine.max affine_map<(d0, d1, d2) -> (d0 * 1024, d1, d0 * -992)>(%148, %c15, %56)
    %216 = index.maxu %185, %68
    %217 = vector.broadcast %c25475_i16 : i16 to vector<8xi16>
    %218 = vector.broadcast %true_29 : i1 to vector<8xi1>
    %219 = vector.maskedload %alloc_9[%c0, %c2, %c9], %218, %217 : memref<8x10x10xi16>, vector<8xi1>, vector<8xi16> into vector<8xi16>
    %220 = math.log1p %2 : tensor<10xf16>
    %221 = math.fma %11, %11, %11 : tensor<4x10x8xf32>
    %222 = math.log10 %0 : tensor<12xf32>
    %223 = vector.extract_strided_slice %145 {offsets = [2], sizes = [2], strides = [1]} : vector<4x10x8xf32> to vector<2x10x8xf32>
    %alloc_35 = memref.alloc() : memref<4x8xi16>
    memref.tensor_store %35, %alloc_35 : memref<4x8xi16>
    %224 = math.rsqrt %16 : tensor<10xf32>
    %225 = index.casts %123 : index to i32
    %226 = vector.broadcast %false_1 : i1 to vector<4x10x8xi1>
    %227 = arith.shrsi %false_4, %false : i1
    %228 = arith.remui %c25475_i16, %c5295_i16 : i16
    %229 = arith.mulf %cst_26, %cst_5 : f32
    %collapsed_36 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<4x10x8xf32> into tensor<40x8xf32>
    %230 = math.log2 %11 : tensor<4x10x8xf32>
    %231 = math.atan2 %23, %22 : tensor<f16>
    %232 = vector.broadcast %false_3 : i1 to vector<10xi1>
    %233 = vector.transfer_write %232, %15[%c3, %74, %28] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<10xi1>, tensor<8x10x10xi1>
    %splat_37 = tensor.splat %true : tensor<4x10x8xi1>
    %234 = math.roundeven %14 : tensor<8x10x10xf32>
    %235 = tensor.empty() : tensor<12xf16>
    %236 = vector.broadcast %false_3 : i1 to vector<12xi1>
    %c0_i16 = arith.constant 0 : i16
    %c0_i16_38 = arith.constant 0 : i16
    %237 = vector.transfer_read %alloc[%c5, %163, %216], %c0_i16_38 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : memref<8x10x10xi16>, vector<12xi16>
    %extracted = tensor.extract %19[%c0, %c9] : tensor<4x10xi16>
    %238 = arith.minf %cst_22, %cst_22 : f16
    %239 = index.maxs %c12, %c8
    %240 = math.exp %transposed : tensor<12xf16>
    %241 = vector.splat %c13 : vector<8x10x10xindex>
    memref.copy %alloc_7, %111 : memref<4x10x8xi16> to memref<4x10x8xi16>
    %242 = bufferization.clone %alloc_17 : memref<4x10x8xi16> to memref<4x10x8xi16>
    %243 = affine.max affine_map<(d0, d1) -> (-((d1 - 4) ceildiv 2) + 16)>(%185, %132)
    %244 = math.ctlz %c334376870_i32 : i32
    %245 = vector.shuffle %214, %213 [1, 2, 5, 7, 8, 9, 11, 13] : vector<8x10x10xf32>, vector<8x10x10xf32>
    %246 = vector.transpose %65, [0, 2, 1] : vector<8x10x10xi1> to vector<8x10x10xi1>
    %247 = index.maxs %rank_33, %c3
    %248 = arith.remsi %false, %false_0 : i1
    %249 = math.cos %235 : tensor<12xf16>
    %collapsed_39 = tensor.collapse_shape %113 [[0, 1]] : tensor<80x10xi1> into tensor<800xi1>
    %250 = vector.broadcast %c0_i16 : i16 to vector<12x8xi16>
    vector.transfer_write %250, %134[%190, %56, %58] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<12x8xi16>, memref<8x10x10xi16>
    %251 = arith.floordivsi %false_4, %false_3 : i1
    %252 = arith.remf %cst_26, %cst_26 : f32
    %253 = tensor.empty() : tensor<10x10xi1>
    %254 = tensor.empty() : tensor<80x10xi1>
    %255 = linalg.matmul ins(%113, %253 : tensor<80x10xi1>, tensor<10x10xi1>) outs(%254 : tensor<80x10xi1>) -> tensor<80x10xi1>
    %cast = tensor.cast %254 : tensor<80x10xi1> to tensor<?x?xi1>
    memref.store %c5295_i16, %alloc_17[%c2, %c6, %c5] : memref<4x10x8xi16>
    %256 = arith.andi %false_0, %true : i1
    %257 = vector.splat %c1 : vector<12xindex>
    %258 = vector.extract_strided_slice %144 {offsets = [1], sizes = [1], strides = [1]} : vector<4x10x8xf32> to vector<1x10x8xf32>
    %259 = arith.maxui %false_0, %false_4 : i1
    %260 = arith.subi %c774756101_i32, %c774756101_i32 : i32
    %261 = arith.minf %cst, %cst_26 : f32
    %262 = math.atan %11 : tensor<4x10x8xf32>
    %263 = arith.minsi %c25475_i16, %extracted : i16
    memref.copy %alloc_11, %48 : memref<8x10x10xf16> to memref<8x10x10xf16>
    %264 = arith.divui %c479226420_i64, %c479226420_i64 : i64
    %265 = index.maxu %c13, %148
    %266 = arith.shrui %false, %false_4 : i1
    %267 = vector.broadcast %c5295_i16 : i16 to vector<8x10xi16>
    vector.transfer_write %267, %alloc_9[%190, %123, %132] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<8x10xi16>, memref<8x10x10xi16>
    %268 = arith.minf %cst_22, %cst_22 : f16
    %269 = tensor.empty() : tensor<8x10x10xi16>
    %270 = linalg.copy ins(%10 : tensor<8x10x10xi16>) outs(%269 : tensor<8x10x10xi16>) -> tensor<8x10x10xi16>
    %alloc_40 = memref.alloc() : memref<8x4x10xi16>
    linalg.transpose ins(%111 : memref<4x10x8xi16>) outs(%alloc_40 : memref<8x4x10xi16>) permutation = [2, 0, 1] 
    %alloc_41 = memref.alloc() : memref<f32>
    linalg.reduce ins(%11 : tensor<4x10x8xf32>) outs(%alloc_41 : memref<f32>) dimensions = [0, 1, 2] 
      (%in: f32, %init: f32) {
        %274 = vector.flat_transpose %135 {columns = 3 : i32, rows = 4 : i32} : vector<12xi64> -> vector<12xi64>
        %275 = math.absi %10 : tensor<8x10x10xi16>
        %276 = arith.minsi %c334376870_i32, %c774756101_i32 : i32
        %277 = math.round %cst_26 : f32
        %278 = arith.remf %cst_22, %cst_22 : f16
        %279 = math.atan %2 : tensor<10xf16>
        %280 = affine.apply affine_map<(d0, d1, d2, d3) -> (0)>(%58, %93, %c15, %56)
        %281 = index.mul %163, %69
        %cst_42 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_42 : f32
      }
    %271 = scf.parallel (%arg3) = (%148) to (%28) step (%c10) init (%94) -> vector<12xf32> {
      %274 = arith.shrui %extracted, %c5295_i16 : i16
      %275 = math.tan %82 : tensor<4x10x8xf16>
      %276 = memref.atomic_rmw maxf %cst_5, %alloc_16[%c0, %c2, %c4] : (f32, memref<4x10x8xf32>) -> f32
      %277 = arith.shrsi %c25475_i16, %extracted : i16
      %278 = vector.broadcast %cst_26 : f32 to vector<12x12xf32>
      %279 = vector.outerproduct %101, %63, %278 {kind = #vector.kind<maxf>} : vector<12xf32>, vector<12xf32>
      %280 = arith.floordivsi %false_2, %true_29 : i1
      %281 = arith.remui %false, %false_4 : i1
      %extracted_42 = tensor.extract %16[%c1] : tensor<10xf32>
      vector.print %77 : vector<10x8xi1>
      %282 = index.sizeof
      %283 = affine.min affine_map<(d0, d1, d2) -> ((d1 ceildiv 16) ceildiv 64)>(%265, %151, %239)
      %284 = math.sqrt %11 : tensor<4x10x8xf32>
      %285 = math.powf %cst_5, %cst_26 : f32
      %286 = vector.shuffle %98, %98 [0, 1, 2, 3, 4] : vector<4x10x8xi1>, vector<4x10x8xi1>
      %287 = vector.bitcast %218 : vector<8xi1> to vector<8xi1>
      %288 = math.round %2 : tensor<10xf16>
      %289 = vector.broadcast %cst_5 : f32 to vector<12xf32>
      scf.reduce(%289)  : vector<12xf32> {
      ^bb0(%arg4: vector<12xf32>, %arg5: vector<12xf32>):
        %true_43 = arith.constant true
        %290 = vector.transfer_read %254[%283, %148], %true_43 : tensor<80x10xi1>, vector<i1>
        %291 = math.ctlz %collapsed : tensor<80x10xi1>
        %292 = math.atan2 %17, %7 : tensor<10xf32>
        %293 = index.sub %c12, %rank
        %294 = arith.xori %c334376870_i32, %c774756101_i32 : i32
        %295 = math.powf %18, %transposed : tensor<12xf16>
        %extracted_44 = tensor.extract %12[%c0] : tensor<10xi1>
        %296 = arith.shrui %false, %false_1 : i1
        %297 = vector.broadcast %cst_5 : f32 to vector<12xf32>
        scf.reduce.return %297 : vector<12xf32>
      }
      scf.yield
    }
    %272 = affine.vector_load %242[%74, %c11, %216] : memref<4x10x8xi16>, vector<8xi16>
    affine.vector_store %21, %alloc_6[%c0, %c12, %54] : memref<8x10x10xf16>, vector<12xf16>
    vector.print %21 : vector<12xf16>
    vector.print %27 : vector<10xi64>
    vector.print %39 : vector<4x10x8xi1>
    vector.print %45 : vector<12xi1>
    vector.print %61 : vector<6xi1>
    vector.print %63 : vector<12xf32>
    vector.print %65 : vector<8x10x10xi1>
    vector.print %66 : vector<8x10x10xi32>
    vector.print %67 : vector<8x10x10xi1>
    vector.print %77 : vector<10x8xi1>
    vector.print %83 : vector<4x10x8xf16>
    vector.print %84 : vector<4x10x8xi32>
    vector.print %85 : vector<4x10x8xf16>
    vector.print %94 : vector<12xf32>
    vector.print %98 : vector<4x10x8xi1>
    vector.print %101 : vector<12xf32>
    vector.print %103 : vector<12xf16>
    vector.print %104 : vector<1xf32>
    vector.print %105 : vector<8xf16>
    vector.print %109 : vector<8x10x10xi1>
    vector.print %117 : vector<12xi64>
    vector.print %118 : vector<12xi32>
    vector.print %119 : vector<12xi64>
    vector.print %135 : vector<12xi64>
    vector.print %144 : vector<4x10x8xf32>
    vector.print %145 : vector<4x10x8xf32>
    vector.print %146 : vector<10xf32>
    vector.print %170 : vector<4x8xi1>
    vector.print %184 : vector<8x10x10xi16>
    vector.print %191 : vector<12xf32>
    vector.print %192 : vector<4x12xf32>
    vector.print %199 : vector<4x10x8xi16>
    vector.print %200 : vector<4x10x8xi16>
    vector.print %211 : vector<12xi1>
    vector.print %213 : vector<8x10x10xf32>
    vector.print %214 : vector<8x10x10xf32>
    vector.print %217 : vector<8xi16>
    vector.print %218 : vector<8xi1>
    vector.print %219 : vector<8xi16>
    vector.print %223 : vector<2x10x8xf32>
    vector.print %226 : vector<4x10x8xi1>
    vector.print %232 : vector<10xi1>
    vector.print %236 : vector<12xi1>
    vector.print %250 : vector<12x8xi16>
    vector.print %258 : vector<1x10x8xf32>
    vector.print %267 : vector<8x10xi16>
    vector.print %272 : vector<8xi16>
    vector.print %c334376870_i32 : i32
    vector.print %cst : f32
    vector.print %true : i1
    vector.print %c774756101_i32 : i32
    vector.print %c1919621616_i32 : i32
    vector.print %false : i1
    vector.print %c479226420_i64 : i64
    vector.print %false_0 : i1
    vector.print %c5295_i16 : i16
    vector.print %c25475_i16 : i16
    vector.print %false_1 : i1
    vector.print %false_2 : i1
    vector.print %false_3 : i1
    vector.print %false_4 : i1
    vector.print %c529273339_i64 : i64
    vector.print %cst_5 : f32
    vector.print %cst_22 : f16
    vector.print %cst_26 : f32
    vector.print %true_29 : i1
    vector.print %c0_i16 : i16
    vector.print %extracted : i16
    %273 = tensor.empty() : tensor<8x10x10xf16>
    return %273 : tensor<8x10x10xf16>
  }
}
