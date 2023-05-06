module {
  func.func @func1(%arg0: i1, %arg1: tensor<13xi32>) -> memref<7x10xi1> {
    %c1945706630_i64 = arith.constant 1945706630 : i64
    %c1556520059_i32 = arith.constant 1556520059 : i32
    %cst = arith.constant 2.676800e+04 : f16
    %c833_i16 = arith.constant 833 : i16
    %cst_0 = arith.constant 0x4E64C1A7 : f32
    %c-24023_i16 = arith.constant -24023 : i16
    %true = arith.constant true
    %c858955577_i64 = arith.constant 858955577 : i64
    %cst_1 = arith.constant 1.785600e+04 : f16
    %cst_2 = arith.constant 1.68296486E+9 : f32
    %true_3 = arith.constant true
    %c364683931_i32 = arith.constant 364683931 : i32
    %c20857_i16 = arith.constant 20857 : i16
    %c542052749_i32 = arith.constant 542052749 : i32
    %c-12652_i16 = arith.constant -12652 : i16
    %c881582375_i32 = arith.constant 881582375 : i32
    %0 = tensor.empty() : tensor<13xi64>
    %1 = tensor.empty() : tensor<7x10xi1>
    %2 = tensor.empty() : tensor<7x7xf32>
    %3 = tensor.empty() : tensor<7x7xf32>
    %4 = tensor.empty() : tensor<7x10xf32>
    %5 = tensor.empty() : tensor<13xi32>
    %6 = tensor.empty() : tensor<13xf32>
    %7 = tensor.empty() : tensor<7x7xf16>
    %8 = tensor.empty() : tensor<7x7xf16>
    %9 = tensor.empty() : tensor<7x10xi64>
    %10 = tensor.empty() : tensor<7x10xi32>
    %11 = tensor.empty() : tensor<13xf32>
    %12 = tensor.empty() : tensor<7x10xi1>
    %13 = tensor.empty() : tensor<7x10xf32>
    %14 = tensor.empty() : tensor<7x10xf16>
    %15 = tensor.empty() : tensor<7x7xi64>
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
    %alloc = memref.alloc() : memref<13xi1>
    %alloc_4 = memref.alloc() : memref<7x7xi32>
    %alloc_5 = memref.alloc() : memref<13xf32>
    %alloc_6 = memref.alloc() : memref<7x7xi16>
    %alloc_7 = memref.alloc() : memref<7x10xi64>
    %alloc_8 = memref.alloc() : memref<7x7xf16>
    %alloc_9 = memref.alloc() : memref<7x10xf32>
    %alloc_10 = memref.alloc() : memref<13xi1>
    %alloc_11 = memref.alloc() : memref<7x7xi64>
    %alloc_12 = memref.alloc() : memref<13xi1>
    %alloc_13 = memref.alloc() : memref<7x7xi64>
    %alloc_14 = memref.alloc() : memref<7x7xi64>
    %alloc_15 = memref.alloc() : memref<13xf32>
    %alloc_16 = memref.alloc() : memref<7x7xf32>
    %alloc_17 = memref.alloc() : memref<7x10xi64>
    %alloc_18 = memref.alloc() : memref<13xi16>
    %16 = tensor.empty() : tensor<7x7xf32>
    %17 = linalg.copy ins(%3 : tensor<7x7xf32>) outs(%16 : tensor<7x7xf32>) -> tensor<7x7xf32>
    %alloc_19 = memref.alloc() : memref<13xf32>
    linalg.transpose ins(%alloc_5 : memref<13xf32>) outs(%alloc_19 : memref<13xf32>) permutation = [0] 
    %alloc_20 = memref.alloc() : memref<7xf16>
    linalg.reduce ins(%8 : tensor<7x7xf16>) outs(%alloc_20 : memref<7xf16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %272 = index.add %c7, %c2
        %273 = arith.minsi %c542052749_i32, %c364683931_i32 : i32
        %true_48 = index.bool.constant true
        %274 = vector.broadcast %c881582375_i32 : i32 to vector<13xi32>
        %275 = vector.flat_transpose %274 {columns = 13 : i32, rows = 1 : i32} : vector<13xi32> -> vector<13xi32>
        %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %274, %274, %c364683931_i32 : vector<13xi32>, vector<13xi32> into i32
        %277 = index.ceildivu %c14, %c2
        %278 = arith.minsi %c1556520059_i32, %c881582375_i32 : i32
        %279 = math.ipowi %c1556520059_i32, %c881582375_i32 : i32
        %cst_49 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_49 : f16
      }
    %18 = scf.parallel (%arg2) = (%c1) to (%c13) step (%c15) init (%13) -> tensor<7x10xf32> {
      %272 = index.divs %c9, %c5
      %273 = vector.broadcast %cst : f16 to vector<7x7xf16>
      %274 = vector.shuffle %273, %273 [0, 1, 2, 4, 7, 8, 13] : vector<7x7xf16>, vector<7x7xf16>
      %275 = affine.if affine_set<(d0, d1, d2) : (((-d0) ceildiv 8 + 4) * 32 == 0, (-d0) ceildiv 8 + 4 == 0, d1 * 8 >= 0)>(%c1, %c2, %c10) -> f32 {
        %288 = arith.shrui %c881582375_i32, %c1556520059_i32 : i32
        %289 = index.add %c8, %c8
        %290 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 - d3 floordiv 16, (d1 floordiv 2) mod 128, d3, (d1 floordiv 2) mod 128)>(%c14, %c1, %c8, %c13)
        %291 = math.powf %7, %7 : tensor<7x7xf16>
        %292 = arith.cmpi sle, %true, %true_3 : i1
        %293 = arith.minsi %c1556520059_i32, %c881582375_i32 : i32
        %294 = vector.broadcast %c858955577_i64 : i64 to vector<7x7xi64>
        %295 = index.sizeof
        affine.yield %cst_2 : f32
      } else {
        %288 = vector.broadcast %c858955577_i64 : i64 to vector<1xi64>
        %289 = vector.multi_reduction <minui>, %288, %c858955577_i64 [0] : vector<1xi64> to i64
        %290 = math.log10 %2 : tensor<7x7xf32>
        memref.store %c542052749_i32, %alloc_4[%c3, %c6] : memref<7x7xi32>
        %291 = math.log10 %3 : tensor<7x7xf32>
        %292 = arith.maxf %cst_0, %cst_2 : f32
        %293 = arith.minsi %c833_i16, %c-24023_i16 : i16
        %294 = vector.load %alloc_5[%c3] : memref<13xf32>, vector<13xf32>
        %295 = index.add %c8, %c1
        affine.yield %cst_0 : f32
      }
      scf.execute_region {
        %288 = vector.broadcast %cst_2 : f32 to vector<7x7xf32>
        %289 = vector.shuffle %288, %288 [0, 1, 2, 3, 5, 6, 8, 9, 10, 12] : vector<7x7xf32>, vector<7x7xf32>
        %290 = memref.load %alloc_15[%c11] : memref<13xf32>
        %291 = arith.remsi %c-12652_i16, %c-12652_i16 : i16
        %292 = arith.shrui %c1556520059_i32, %c1556520059_i32 : i32
        %293 = math.tanh %3 : tensor<7x7xf32>
        %294 = arith.ceildivsi %c-24023_i16, %c20857_i16 : i16
        %295 = index.add %c12, %c8
        %296 = vector.broadcast %cst_2 : f32 to vector<1xf32>
        %297 = vector.broadcast %cst_0 : f32 to vector<1xf32>
        %298 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %296, %297, %cst_2 : vector<1xf32>, vector<1xf32> into f32
        %299 = arith.maxf %cst_1, %cst_1 : f16
        %300 = vector.broadcast %c-24023_i16 : i16 to vector<7x10xi16>
        %301 = vector.broadcast %true_3 : i1 to vector<7x10xi1>
        %302 = vector.broadcast %c1556520059_i32 : i32 to vector<7x10xi32>
        %303 = vector.gather %alloc_18[%c7] [%302], %301, %300 : memref<13xi16>, vector<7x10xi32>, vector<7x10xi1>, vector<7x10xi16> into vector<7x10xi16>
        %304 = bufferization.to_memref %7 : memref<7x7xf16>
        memref.store %true_3, %alloc_12[%c1] : memref<13xi1>
        %305 = arith.shrui %c-24023_i16, %c-12652_i16 : i16
        %306 = vector.broadcast %c3 : index to vector<7xindex>
        %307 = vector.broadcast %true : i1 to vector<7xi1>
        vector.scatter %alloc_10[%c3] [%306], %307, %307 : memref<13xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
        %308 = memref.load %alloc_5[%c12] : memref<13xf32>
        %309 = vector.broadcast %c1 : index to vector<13xindex>
        %310 = vector.broadcast %true_3 : i1 to vector<13xi1>
        %311 = vector.broadcast %c833_i16 : i16 to vector<13xi16>
        vector.scatter %alloc_6[%c2, %c5] [%309], %310, %311 : memref<7x7xi16>, vector<13xindex>, vector<13xi1>, vector<13xi16>
        scf.yield
      }
      %276 = tensor.empty(%c15) : tensor<?x7xf16>
      %277 = arith.andi %true_3, %true : i1
      %278 = arith.xori %c542052749_i32, %c1556520059_i32 : i32
      %279 = arith.maxf %cst, %cst : f16
      %280 = math.powf %cst, %cst_1 : f16
      %281 = vector.load %alloc_7[%c6, %c6] : memref<7x10xi64>, vector<7x7xi64>
      %alloc_48 = memref.alloc() : memref<7x10xi1>
      %cst_49 = arith.constant 1.000000e+00 : f16
      %cst_50 = arith.constant 0.000000e+00 : f16
      %282 = vector.transfer_read %7[%c13, %c13], %cst_50 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<7x7xf16>, vector<13xf16>
      %283 = math.sqrt %8 : tensor<7x7xf16>
      %284 = arith.divui %c20857_i16, %c833_i16 : i16
      %285 = memref.alloca_scope  -> (i16) {
        %288 = arith.muli %c858955577_i64, %c1945706630_i64 : i64
        %289 = arith.divsi %c-12652_i16, %c-12652_i16 : i16
        %290 = math.exp2 %3 : tensor<7x7xf32>
        %291 = bufferization.to_tensor %alloc_18 : memref<13xi16>
        %292 = arith.divui %c1945706630_i64, %c858955577_i64 : i64
        %293 = memref.realloc %alloc_5 : memref<13xf32> to memref<13xf32>
        %294 = arith.minui %c-12652_i16, %c-24023_i16 : i16
        %295 = index.ceildivu %c4, %c7
        %296 = index.casts %272 : index to i32
        %from_elements_51 = tensor.from_elements %c-24023_i16, %c-12652_i16, %c-12652_i16, %c20857_i16, %c20857_i16, %c-24023_i16, %c20857_i16, %c-24023_i16, %c-12652_i16, %c-12652_i16, %c833_i16, %c-12652_i16, %c20857_i16, %c833_i16, %c833_i16, %c20857_i16, %c833_i16, %c833_i16, %c-12652_i16, %c-12652_i16, %c-24023_i16, %c-24023_i16, %c-24023_i16, %c833_i16, %c-24023_i16, %c-12652_i16, %c20857_i16, %c833_i16, %c-12652_i16, %c833_i16, %c-12652_i16, %c833_i16, %c833_i16, %c-12652_i16, %c-12652_i16, %c-24023_i16, %c-12652_i16, %c833_i16, %c833_i16, %c-24023_i16, %c833_i16, %c-12652_i16, %c20857_i16, %c-12652_i16, %c833_i16, %c833_i16, %c-24023_i16, %c-12652_i16, %c-24023_i16 : tensor<7x7xi16>
        %297 = vector.load %alloc_12[%c10] : memref<13xi1>, vector<7x10xi1>
        %298 = math.tanh %3 : tensor<7x7xf32>
        %299 = math.ipowi %true, %true_3 : i1
        %300 = arith.maxf %cst, %cst_49 : f16
        %301 = vector.broadcast %cst_0 : f32 to vector<13xf32>
        %302 = vector.broadcast %true : i1 to vector<13xi1>
        %303 = vector.broadcast %c1556520059_i32 : i32 to vector<13xi32>
        %304 = vector.gather %alloc_16[%c11, %c9] [%303], %302, %301 : memref<7x7xf32>, vector<13xi32>, vector<13xi1>, vector<13xf32> into vector<13xf32>
        %alloca_52 = memref.alloca() : memref<7x7xi1>
        %305 = arith.remf %cst_1, %cst : f16
        %306 = bufferization.to_tensor %alloc_7 : memref<7x10xi64>
        %cst_53 = arith.constant 1.000000e+00 : f16
        %cst_54 = arith.constant 0.000000e+00 : f16
        %307 = vector.transfer_read %8[%c6, %c0], %cst_54 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<7x7xf16>, vector<13xf16>
        %308 = arith.floordivsi %true, %true : i1
        %309 = math.round %11 : tensor<13xf32>
        %310 = vector.flat_transpose %302 {columns = 13 : i32, rows = 1 : i32} : vector<13xi1> -> vector<13xi1>
        %311 = math.expm1 %13 : tensor<7x10xf32>
        memref.store %c1945706630_i64, %alloc_11[%c3, %c1] : memref<7x7xi64>
        %312 = vector.multi_reduction <add>, %281, %281 [] : vector<7x7xi64> to vector<7x7xi64>
        %313 = vector.broadcast %c15 : index to vector<13xindex>
        vector.scatter %alloc_5[%c5] [%313], %310, %301 : memref<13xf32>, vector<13xindex>, vector<13xi1>, vector<13xf32>
        %314 = vector.reduction <maxf>, %301 : vector<13xf32> into f32
        %315 = math.exp2 %3 : tensor<7x7xf32>
        %316 = memref.load %alloc_12[%c3] : memref<13xi1>
        %317 = arith.floordivsi %c881582375_i32, %c542052749_i32 : i32
        %318 = memref.atomic_rmw assign %c1945706630_i64, %alloc_7[%c0, %c4] : (i64, memref<7x10xi64>) -> i64
        %319 = vector.gather %10[%c12, %c2] [%303], %310, %303 : tensor<7x10xi32>, vector<13xi32>, vector<13xi1>, vector<13xi32> into vector<13xi32>
        memref.alloca_scope.return %c-12652_i16 : i16
      }
      %286 = scf.while (%arg3 = %alloc_20) : (memref<7xf16>) -> memref<7xf16> {
        %288 = arith.muli %285, %c-12652_i16 : i16
        %289 = math.ceil %14 : tensor<7x10xf16>
        %290 = vector.extract_strided_slice %281 {offsets = [1], sizes = [2], strides = [1]} : vector<7x7xi64> to vector<2x7xi64>
        %291 = arith.minui %c20857_i16, %c833_i16 : i16
        %292 = arith.minf %cst_2, %cst_0 : f32
        %293 = math.roundeven %cst_0 : f32
        %294 = index.castu %arg2 : index to i32
        %295 = vector.extract %290[0] : vector<2x7xi64>
        scf.condition(%true) %arg3 : memref<7xf16>
      } do {
      ^bb0(%arg3: memref<7xf16>):
        %288 = vector.extract_strided_slice %281 {offsets = [5], sizes = [2], strides = [1]} : vector<7x7xi64> to vector<2x7xi64>
        %inserted_51 = tensor.insert %cst_49 into %8[%c5, %c1] : tensor<7x7xf16>
        %289 = vector.load %alloc_14[%c6, %c5] : memref<7x7xi64>, vector<7x7xi64>
        %290 = math.absi %c881582375_i32 : i32
        %291 = index.add %c1, %c3
        %rank_52 = tensor.rank %7 : tensor<7x7xf16>
        %292 = index.floordivs %c12, %c6
        %293 = arith.ceildivsi %c881582375_i32, %c542052749_i32 : i32
        memref.store %c1945706630_i64, %alloc_7[%c2, %c9] : memref<7x10xi64>
        %294 = arith.minsi %c858955577_i64, %c858955577_i64 : i64
        %295 = arith.remsi %c364683931_i32, %c881582375_i32 : i32
        %296 = vector.broadcast %cst : f16 to vector<13xf16>
        %297 = vector.flat_transpose %296 {columns = 13 : i32, rows = 1 : i32} : vector<13xf16> -> vector<13xf16>
        %298 = arith.cmpf ule, %cst, %cst_49 : f16
        %299 = arith.addi %true_3, %true_3 : i1
        %300 = index.mul %c2, %291
        %301 = math.exp2 %cst : f16
        scf.yield %alloc_20 : memref<7xf16>
      }
      %287 = tensor.empty() : tensor<7x10xf32>
      scf.reduce(%287)  : tensor<7x10xf32> {
      ^bb0(%arg3: tensor<7x10xf32>, %arg4: tensor<7x10xf32>):
        %extracted_51 = tensor.extract %0[%c0] : tensor<13xi64>
        %288 = math.atan %7 : tensor<7x7xf16>
        %289 = vector.splat %c-12652_i16 : vector<7x7xi16>
        %290 = arith.maxf %cst_1, %cst_1 : f16
        %291 = index.maxs %c14, %c2
        %292 = affine.load %alloc_18[%c0] : memref<13xi16>
        %293 = vector.broadcast %cst_49 : f16 to vector<1xf16>
        %294 = vector.flat_transpose %293 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
        %295 = math.ceil %cst : f16
        %296 = tensor.empty() : tensor<7x10xf32>
        scf.reduce.return %296 : tensor<7x10xf32>
      }
      scf.yield
    }
    %19 = affine.vector_load %alloc_6[%c4, %c1] : memref<7x7xi16>, vector<13xi16>
    affine.vector_store %19, %alloc_6[%c13, %c7] : memref<7x7xi16>, vector<13xi16>
    %alloc_21 = memref.alloc() : memref<13xi64>
    %20 = tensor.empty() : tensor<i64>
    %21 = linalg.dot ins(%0, %alloc_21 : tensor<13xi64>, memref<13xi64>) outs(%20 : tensor<i64>) -> tensor<i64>
    %22 = vector.flat_transpose %19 {columns = 13 : i32, rows = 1 : i32} : vector<13xi16> -> vector<13xi16>
    %23 = math.ctlz %10 : tensor<7x10xi32>
    %24 = arith.addi %c1945706630_i64, %c858955577_i64 : i64
    %25 = vector.broadcast %cst_0 : f32 to vector<7x7xf32>
    %26 = vector.fma %25, %25, %25 : vector<7x7xf32>
    %27 = scf.execute_region -> f16 {
      %272 = bufferization.to_tensor %alloc_16 : memref<7x7xf32>
      %273 = index.mul %c0, %c7
      %274 = vector.splat %c1945706630_i64 : vector<7x7xi64>
      %275 = arith.ceildivsi %c1556520059_i32, %c542052749_i32 : i32
      %276 = arith.mulf %cst, %cst_1 : f16
      %277 = math.powf %17, %272 : tensor<7x7xf32>
      %278 = vector.broadcast %c10 : index to vector<1xindex>
      %279 = vector.broadcast %true_3 : i1 to vector<1xi1>
      %280 = vector.broadcast %c858955577_i64 : i64 to vector<1xi64>
      vector.scatter %alloc_13[%c0, %c6] [%278], %279, %280 : memref<7x7xi64>, vector<1xindex>, vector<1xi1>, vector<1xi64>
      %281 = math.roundeven %6 : tensor<13xf32>
      %282 = arith.addf %cst_0, %cst_0 : f32
      %283 = arith.floordivsi %c-12652_i16, %c-24023_i16 : i16
      %284 = memref.realloc %alloc : memref<13xi1> to memref<1xi1>
      %cst_48 = arith.constant 1.000000e+00 : f32
      %285 = vector.transfer_read %alloc_5[%c8], %cst_48 : memref<13xf32>, vector<f32>
      %286 = math.atan %16 : tensor<7x7xf32>
      memref.assume_alignment %alloc_19, 16 : memref<13xf32>
      %287 = arith.maxui %c-24023_i16, %c833_i16 : i16
      %extracted_49 = tensor.extract %15[%c0, %c4] : tensor<7x7xi64>
      scf.yield %cst : f16
    }
    %alloc_22 = memref.alloc() : memref<13xf32>
    %28 = arith.divui %c-24023_i16, %c-24023_i16 : i16
    %29 = arith.shrui %c364683931_i32, %c364683931_i32 : i32
    %30 = arith.minsi %c20857_i16, %c833_i16 : i16
    %alloc_23 = memref.alloc() : memref<7x7xf32>
    %31 = vector.broadcast %c9 : index to vector<10xindex>
    %32 = vector.broadcast %true_3 : i1 to vector<10xi1>
    vector.scatter %alloc[%c0] [%31], %32, %32 : memref<13xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
    %33 = affine.if affine_set<(d0, d1, d2, d3) : ((d0 floordiv 4 + 4) floordiv 64 >= 0)>(%c5, %c9, %c12, %c9) -> f16 {
      %272 = math.copysign %2, %16 : tensor<7x7xf32>
      %273 = bufferization.to_tensor %alloc_21 : memref<13xi64>
      %274 = arith.addi %c833_i16, %c20857_i16 : i16
      %275 = arith.remsi %c20857_i16, %c-24023_i16 : i16
      vector.print %19 : vector<13xi16>
      %276 = index.add %c3, %c7
      %277 = math.absi %c-12652_i16 : i16
      memref.assume_alignment %alloc_6, 4 : memref<7x7xi16>
      affine.yield %cst : f16
    } else {
      %272 = vector.splat %c2 : vector<13xindex>
      %273 = arith.remsi %c542052749_i32, %c542052749_i32 : i32
      %274 = arith.remf %cst_1, %27 : f16
      scf.execute_region {
        %inserted_48 = tensor.insert %true into %1[%c6, %c0] : tensor<7x10xi1>
        %281 = arith.maxf %27, %cst : f16
        %282 = vector.broadcast %cst_1 : f16 to vector<13xf16>
        %283 = vector.flat_transpose %22 {columns = 13 : i32, rows = 1 : i32} : vector<13xi16> -> vector<13xi16>
        %284 = vector.broadcast %true_3 : i1 to vector<13xi1>
        %285 = vector.broadcast %c881582375_i32 : i32 to vector<13xi32>
        %286 = vector.gather %8[%c3, %c7] [%285], %284, %282 : tensor<7x7xf16>, vector<13xi32>, vector<13xi1>, vector<13xf16> into vector<13xf16>
        %287 = arith.divui %c833_i16, %c-12652_i16 : i16
        %from_elements_49 = tensor.from_elements %c833_i16, %c-12652_i16, %c-12652_i16, %c833_i16, %c-24023_i16, %c-12652_i16, %c833_i16, %c-12652_i16, %c833_i16, %c-24023_i16, %c20857_i16, %c833_i16, %c20857_i16, %c-12652_i16, %c20857_i16, %c-12652_i16, %c833_i16, %c20857_i16, %c20857_i16, %c20857_i16, %c-24023_i16, %c-24023_i16, %c833_i16, %c833_i16, %c-24023_i16, %c833_i16, %c20857_i16, %c833_i16, %c-12652_i16, %c-24023_i16, %c-24023_i16, %c-12652_i16, %c-12652_i16, %c833_i16, %c833_i16, %c833_i16, %c833_i16, %c-12652_i16, %c-24023_i16, %c-24023_i16, %c-24023_i16, %c20857_i16, %c-24023_i16, %c-24023_i16, %c-24023_i16, %c-24023_i16, %c20857_i16, %c-12652_i16, %c20857_i16 : tensor<7x7xi16>
        %288 = arith.cmpf uge, %cst_2, %cst_2 : f32
        %289 = arith.remf %cst, %27 : f16
        %290 = memref.load %alloc_8[%c5, %c2] : memref<7x7xf16>
        %c1_i64 = arith.constant 1 : i64
        %291 = vector.transfer_read %9[%c2, %c0], %c1_i64 : tensor<7x10xi64>, vector<1xi64>
        %292 = arith.floordivsi %c1556520059_i32, %c881582375_i32 : i32
        %293 = arith.remf %cst_2, %cst_0 : f32
        %294 = arith.minui %c1_i64, %c1_i64 : i64
        %295 = math.ipowi %c1945706630_i64, %c1_i64 : i64
        %296 = arith.mulf %cst_1, %27 : f16
        scf.yield
      }
      %275 = vector.broadcast %c858955577_i64 : i64 to vector<7xi64>
      %276 = vector.broadcast %true_3 : i1 to vector<7xi1>
      %277 = vector.maskedload %alloc_14[%c1, %c6], %276, %275 : memref<7x7xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
      %278 = arith.muli %c364683931_i32, %c881582375_i32 : i32
      %279 = vector.shuffle %22, %19 [1, 3, 4, 5, 6, 10, 14, 17, 18, 21, 25] : vector<13xi16>, vector<13xi16>
      %280 = arith.maxsi %c364683931_i32, %c881582375_i32 : i32
      affine.yield %27 : f16
    }
    %34 = vector.broadcast %cst_1 : f16 to vector<7x7xf16>
    %35 = arith.remsi %c833_i16, %c-12652_i16 : i16
    memref.tensor_store %3, %alloc_16 : memref<7x7xf32>
    %36 = arith.negf %cst : f16
    %37 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %22, %19, %c-12652_i16 : vector<13xi16>, vector<13xi16> into i16
    %38 = vector.reduction <maxui>, %19 : vector<13xi16> into i16
    %cast = tensor.cast %11 : tensor<13xf32> to tensor<?xf32>
    %alloc_24 = memref.alloc() : memref<7x10xi32>
    memref.tensor_store %10, %alloc_24 : memref<7x10xi32>
    %false = arith.constant false
    %39 = vector.transfer_read %12[%c7, %c8], %false : tensor<7x10xi1>, vector<i1>
    %40 = vector.broadcast %cst : f16 to vector<7xf16>
    %41 = vector.insert %40, %34 [3] : vector<7xf16> into vector<7x7xf16>
    %42 = index.castu %c7 : index to i32
    %43 = vector.broadcast %cst_2 : f32 to vector<7xf32>
    %44 = vector.insert %43, %26 [4] : vector<7xf32> into vector<7x7xf32>
    %45 = math.log2 %14 : tensor<7x10xf16>
    %46 = vector.transpose %26, [0, 1] : vector<7x7xf32> to vector<7x7xf32>
    %47 = arith.maxf %27, %27 : f16
    %48 = math.ctlz %c542052749_i32 : i32
    %49 = arith.minui %c-24023_i16, %c833_i16 : i16
    %50 = arith.minf %cst, %27 : f16
    %51 = math.rsqrt %7 : tensor<7x7xf16>
    %52 = math.log10 %7 : tensor<7x7xf16>
    %53 = vector.shuffle %40, %40 [1, 3, 7, 9, 12, 13] : vector<7xf16>, vector<7xf16>
    %54 = math.ctpop %10 : tensor<7x10xi32>
    %55 = bufferization.to_tensor %alloc_17 : memref<7x10xi64>
    %alloc_25 = memref.alloc() : memref<7x7xi32>
    %56 = arith.maxui %c364683931_i32, %c1556520059_i32 : i32
    %57 = math.round %4 : tensor<7x10xf32>
    %58 = vector.insert %cst_0, %43 [5] : f32 into vector<7xf32>
    %59 = arith.minui %c1556520059_i32, %c1556520059_i32 : i32
    %60 = index.maxs %c15, %c9
    %61 = vector.broadcast %c9 : index to vector<1xindex>
    %62 = vector.broadcast %true_3 : i1 to vector<1xi1>
    %63 = vector.broadcast %cst : f16 to vector<1xf16>
    vector.scatter %alloc_20[%c6] [%61], %62, %63 : memref<7xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
    %64 = bufferization.to_tensor %alloc_20 : memref<7xf16>
    %65 = vector.shuffle %19, %22 [0, 3, 4, 6, 7, 9, 10, 11, 12, 13, 16, 17, 18, 19, 20, 22, 23, 24, 25] : vector<13xi16>, vector<13xi16>
    %66 = vector.broadcast %c2 : index to vector<1xindex>
    %67 = vector.broadcast %true_3 : i1 to vector<1xi1>
    vector.scatter %alloc_10[%c12] [%66], %67, %67 : memref<13xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
    %68 = arith.shrui %false, %true : i1
    %69 = vector.broadcast %c11 : index to vector<7xindex>
    %70 = vector.broadcast %true_3 : i1 to vector<7xi1>
    %71 = vector.broadcast %c1945706630_i64 : i64 to vector<7xi64>
    vector.scatter %alloc_7[%c2, %c3] [%69], %70, %71 : memref<7x10xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
    %72 = affine.if affine_set<(d0) : ((d0 floordiv 128) ceildiv 128 >= 0)>(%c3) -> memref<13xf16> {
      %272 = vector.broadcast %c2 : index to vector<13xindex>
      %273 = vector.broadcast %false : i1 to vector<13xi1>
      vector.scatter %alloc_6[%c1, %c4] [%272], %273, %19 : memref<7x7xi16>, vector<13xindex>, vector<13xi1>, vector<13xi16>
      %cast_48 = tensor.cast %0 : tensor<13xi64> to tensor<?xi64>
      %274 = index.divu %c7, %c1
      %inserted_49 = tensor.insert %cst_2 into %13[%c3, %c6] : tensor<7x10xf32>
      %275 = vector.multi_reduction <mul>, %43, %cst_0 [0] : vector<7xf32> to f32
      %276 = arith.maxf %cst_2, %275 : f32
      %277 = arith.remsi %false, %true_3 : i1
      %278 = tensor.empty() : tensor<7x10xf16>
      %mapped_50 = linalg.map ins(%14 : tensor<7x10xf16>) outs(%278 : tensor<7x10xf16>)
        (%in: f16) {
          %rank_52 = tensor.rank %21 : tensor<i64>
          %279 = arith.remsi %c1556520059_i32, %c364683931_i32 : i32
          %280 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %22, %22, %c-12652_i16 : vector<13xi16>, vector<13xi16> into i16
          %281 = vector.shuffle %25, %25 [1, 3, 5, 7, 10, 11, 12, 13] : vector<7x7xf32>, vector<7x7xf32>
          %282 = arith.floordivsi %c364683931_i32, %c364683931_i32 : i32
          %283 = arith.minui %c20857_i16, %c-24023_i16 : i16
          %284 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1)>(%c6, %c12, %c1, %rank_52)
          %285 = vector.load %alloc_15[%c0] : memref<13xf32>, vector<7x7xf32>
          %286 = index.ceildivs %c11, %c9
          %287 = math.rsqrt %64 : tensor<7xf16>
          %288 = vector.bitcast %43 : vector<7xf32> to vector<7xi32>
          %289 = index.floordivs %284, %c15
          %inserted_53 = tensor.insert %c881582375_i32 into %10[%c6, %c6] : tensor<7x10xi32>
          %290 = arith.divsi %c20857_i16, %c-12652_i16 : i16
          %291 = vector.shuffle %19, %19 [5, 9, 10, 13, 14, 16, 21, 24, 25] : vector<13xi16>, vector<13xi16>
          %false_54 = index.bool.constant false
          %292 = vector.broadcast %c-24023_i16 : i16 to vector<7x7xi16>
          %293 = vector.reduction <add>, %40 : vector<7xf16> into f16
          %294 = arith.mulf %cst_0, %cst_0 : f32
          %295 = vector.multi_reduction <minf>, %43, %275 [0] : vector<7xf32> to f32
          %296 = vector.outerproduct %43, %43, %285 {kind = #vector.kind<minf>} : vector<7xf32>, vector<7xf32>
          %inserted_55 = tensor.insert %275 into %6[%c8] : tensor<13xf32>
          memref.tensor_store %7, %alloc_8 : memref<7x7xf16>
          memref.store %c-12652_i16, %alloc_18[%c2] : memref<13xi16>
          %297 = vector.flat_transpose %19 {columns = 13 : i32, rows = 1 : i32} : vector<13xi16> -> vector<13xi16>
          memref.store %c364683931_i32, %alloc_4[%c1, %c2] : memref<7x7xi32>
          %298 = index.maxs %c14, %274
          %299 = vector.broadcast %c881582375_i32 : i32 to vector<1xi32>
          %300 = vector.broadcast %true : i1 to vector<1xi1>
          %301 = vector.maskedload %alloc_4[%c0, %c1], %300, %299 : memref<7x7xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
          %302 = memref.atomic_rmw mulf %cst_2, %alloc_5[%c7] : (f32, memref<13xf32>) -> f32
          %303 = vector.broadcast %c833_i16 : i16 to vector<7xi16>
          %304 = vector.multi_reduction <maxui>, %292, %303 [0] : vector<7x7xi16> to vector<7xi16>
          %305 = vector.multi_reduction <minf>, %25, %43 [1] : vector<7x7xf32> to vector<7xf32>
          affine.store %c858955577_i64, %alloc_14[%c12, %c6] : memref<7x7xi64>
          %cst_56 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_56 : f16
        }
      %alloc_51 = memref.alloc() : memref<13xf16>
      affine.yield %alloc_51 : memref<13xf16>
    } else {
      %272 = arith.remsi %c-12652_i16, %c-12652_i16 : i16
      %273 = vector.extract_strided_slice %26 {offsets = [5], sizes = [2], strides = [1]} : vector<7x7xf32> to vector<2x7xf32>
      %274 = math.round %6 : tensor<13xf32>
      %275 = math.atan %2 : tensor<7x7xf32>
      %276 = arith.maxf %cst_0, %cst_0 : f32
      %277 = vector.insertelement %c-24023_i16, %22[%c8 : index] : vector<13xi16>
      %278 = arith.remf %cst_1, %cst_1 : f16
      %279 = arith.divf %cst_0, %cst_2 : f32
      %alloc_48 = memref.alloc() : memref<13xf16>
      affine.yield %alloc_48 : memref<13xf16>
    }
    %73 = arith.maxui %false, %true_3 : i1
    %74 = arith.maxsi %c20857_i16, %c20857_i16 : i16
    %75 = arith.floordivsi %c20857_i16, %c833_i16 : i16
    %76 = vector.shuffle %40, %40 [0, 1, 2, 5, 6, 7, 8, 9, 12, 13] : vector<7xf16>, vector<7xf16>
    %77 = affine.for %arg2 = 0 to 87 iter_args(%arg3 = %12) -> (tensor<7x10xi1>) {
      affine.yield %1 : tensor<7x10xi1>
    }
    %78 = vector.broadcast %true : i1 to vector<13xi1>
    %79 = vector.maskedload %alloc_6[%c2, %c5], %78, %19 : memref<7x7xi16>, vector<13xi1>, vector<13xi16> into vector<13xi16>
    %80 = arith.floordivsi %c542052749_i32, %c364683931_i32 : i32
    %81 = arith.remf %27, %cst_1 : f16
    %extracted = tensor.extract %20[] : tensor<i64>
    %82 = vector.multi_reduction <maxsi>, %22, %22 [] : vector<13xi16> to vector<13xi16>
    %false_26 = index.bool.constant false
    %83 = vector.multi_reduction <maxf>, %43, %43 [] : vector<7xf32> to vector<7xf32>
    %extracted_27 = tensor.extract %2[%c1, %c2] : tensor<7x7xf32>
    %84 = arith.muli %c-24023_i16, %c833_i16 : i16
    %85 = index.add %c15, %c13
    %86 = index.sub %85, %c0
    %87 = arith.minui %c-12652_i16, %c833_i16 : i16
    %88 = math.round %8 : tensor<7x7xf16>
    memref.store %c858955577_i64, %alloc_21[%c9] : memref<13xi64>
    %89 = arith.addf %cst, %cst_1 : f16
    %90 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %26, %43, %43 : vector<7x7xf32>, vector<7xf32> into vector<7xf32>
    %91 = arith.addi %c364683931_i32, %c881582375_i32 : i32
    %92 = index.maxu %c12, %c2
    %93 = arith.minui %c-24023_i16, %c20857_i16 : i16
    %94 = math.exp %13 : tensor<7x10xf32>
    %95 = tensor.empty() : tensor<10x10x10xi64>
    %96 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%95 : tensor<10x10x10xi64>) {
    ^bb0(%out: i64):
      %272 = tensor.empty() : tensor<i64>
      %mapped_48 = linalg.map ins(%21, %21, %20 : tensor<i64>, tensor<i64>, tensor<i64>) outs(%272 : tensor<i64>)
        (%in: i64, %in_54: i64, %in_55: i64) {
          %301 = math.ceil %8 : tensor<7x7xf16>
          %302 = vector.reduction <and>, %22 : vector<13xi16> into i16
          %303 = vector.load %alloc[%c0] : memref<13xi1>, vector<7x7xi1>
          %304 = math.powf %13, %4 : tensor<7x10xf32>
          %305 = math.log2 %11 : tensor<13xf32>
          %306 = arith.maxsi %c-12652_i16, %c833_i16 : i16
          %307 = math.log10 %11 : tensor<13xf32>
          %308 = bufferization.to_tensor %alloc : memref<13xi1>
          memref.assume_alignment %alloc, 16 : memref<13xi1>
          %309 = vector.extract_strided_slice %303 {offsets = [0], sizes = [4], strides = [1]} : vector<7x7xi1> to vector<4x7xi1>
          %310 = vector.broadcast %c20857_i16 : i16 to vector<7x7xi16>
          %311 = vector.broadcast %c542052749_i32 : i32 to vector<7x7xi32>
          %312 = vector.gather %alloc_6[%85, %c3] [%311], %303, %310 : memref<7x7xi16>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xi16> into vector<7x7xi16>
          %313 = arith.addi %false, %false : i1
          %314 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %78, %78, %true : vector<13xi1>, vector<13xi1> into i1
          %315 = math.powf %14, %14 : tensor<7x10xf16>
          %316 = math.ipowi %308, %308 : tensor<13xi1>
          %317 = arith.negf %cst : f16
          %318 = math.ipowi %10, %10 : tensor<7x10xi32>
          %319 = math.ipowi %9, %9 : tensor<7x10xi64>
          %alloc_56 = memref.alloc() : memref<10x1xf32>
          %320 = tensor.empty() : tensor<7x1xf32>
          %321 = linalg.matmul ins(%13, %alloc_56 : tensor<7x10xf32>, memref<10x1xf32>) outs(%320 : tensor<7x1xf32>) -> tensor<7x1xf32>
          %322 = vector.broadcast %in : i64 to vector<1xi64>
          %323 = vector.broadcast %true_3 : i1 to vector<1xi1>
          %324 = vector.maskedload %alloc_11[%c2, %c0], %323, %322 : memref<7x7xi64>, vector<1xi1>, vector<1xi64> into vector<1xi64>
          %collapsed = tensor.collapse_shape %15 [[0, 1]] : tensor<7x7xi64> into tensor<49xi64>
          %325 = math.ceil %cst_0 : f32
          %326 = vector.extract_strided_slice %43 {offsets = [3], sizes = [4], strides = [1]} : vector<7xf32> to vector<4xf32>
          %327 = tensor.empty() : tensor<7x7xi32>
          %328 = math.fpowi %8, %327 : tensor<7x7xf16>, tensor<7x7xi32>
          %329 = arith.divui %c881582375_i32, %c364683931_i32 : i32
          %330 = math.log %cst : f16
          %alloc_57 = memref.alloc() : memref<i64>
          memref.tensor_store %272, %alloc_57 : memref<i64>
          %331 = arith.floordivsi %in_54, %in_55 : i64
          %332 = arith.floordivsi %c20857_i16, %c-12652_i16 : i16
          %333 = vector.splat %c12 : vector<7x7xindex>
          %334 = math.ipowi %false_26, %false_26 : i1
          %335 = index.maxs %c1, %85
          %c1_i64 = arith.constant 1 : i64
          linalg.yield %c1_i64 : i64
        }
      %273 = vector.broadcast %c15 : index to vector<1xindex>
      %274 = vector.broadcast %false : i1 to vector<1xi1>
      %275 = vector.broadcast %c858955577_i64 : i64 to vector<1xi64>
      vector.scatter %alloc_13[%c0, %c3] [%273], %274, %275 : memref<7x7xi64>, vector<1xindex>, vector<1xi1>, vector<1xi64>
      %276 = vector.broadcast %c1556520059_i32 : i32 to vector<13xi32>
      %277 = vector.gather %alloc_10[%c9] [%276], %78, %78 : memref<13xi1>, vector<13xi32>, vector<13xi1>, vector<13xi1> into vector<13xi1>
      %278 = index.casts %c7 : index to i32
      %inserted_49 = tensor.insert %cst_2 into %4[%c5, %c4] : tensor<7x10xf32>
      %true_50 = index.bool.constant true
      %dest, %accumulated_value = vector.scan <mul>, %34, %40 {inclusive = true, reduction_dim = 1 : i64} : vector<7x7xf16>, vector<7xf16>
      affine.for %arg2 = 0 to 12 {
      }
      %279 = arith.minui %true_50, %true : i1
      %280 = math.round %cst_0 : f32
      %281 = vector.broadcast %c20857_i16 : i16 to vector<7x10xi16>
      %282 = affine.for %arg2 = 0 to 101 iter_args(%arg3 = %22) -> (vector<13xi16>) {
        affine.yield %22 : vector<13xi16>
      }
      %283 = affine.if affine_set<(d0, d1, d2, d3) : (-d0 == 0, d2 floordiv 4 == 0, d3 floordiv 2 == 0)>(%c15, %c1, %c4, %c8) -> f16 {
        %301 = memref.load %alloc_7[%c5, %c8] : memref<7x10xi64>
        memref.assume_alignment %alloc_7, 4 : memref<7x10xi64>
        %302 = arith.mulf %27, %cst_1 : f16
        %303 = math.log2 %14 : tensor<7x10xf16>
        %inserted_54 = tensor.insert %cst into %14[%c3, %c0] : tensor<7x10xf16>
        %304 = arith.minui %false, %true_50 : i1
        %305 = arith.minui %c858955577_i64, %out : i64
        %306 = vector.load %alloc_5[%c4] : memref<13xf32>, vector<13xf32>
        affine.yield %27 : f16
      } else {
        %expanded_54 = tensor.expand_shape %6 [[0, 1]] : tensor<13xf32> into tensor<13x1xf32>
        %301 = vector.create_mask %c8, %c8 : vector<7x7xi1>
        %302 = math.ipowi %c881582375_i32, %c1556520059_i32 : i32
        memref.store %true_50, %alloc_10[%c10] : memref<13xi1>
        %303 = math.ctlz %c1945706630_i64 : i64
        %304 = arith.mulf %cst_0, %cst_2 : f32
        %305 = vector.reduction <or>, %79 : vector<13xi16> into i16
        %306 = index.castu %c364683931_i32 : i32 to index
        affine.yield %cst : f16
      }
      %284 = vector.transpose %79, [0] : vector<13xi16> to vector<13xi16>
      %285 = math.round %11 : tensor<13xf32>
      %286 = tensor.empty() : tensor<7x7xf32>
      %mapped_51 = linalg.map ins(%17 : tensor<7x7xf32>) outs(%286 : tensor<7x7xf32>)
        (%in: f32) {
          %301 = arith.ceildivsi %c542052749_i32, %c1556520059_i32 : i32
          %302 = math.log2 %cst_0 : f32
          %alloc_54 = memref.alloc() : memref<7x7xf16>
          %303 = arith.mulf %27, %cst : f16
          %304 = arith.minui %c-24023_i16, %c-12652_i16 : i16
          %305 = index.divu %86, %c10
          %306 = math.exp %4 : tensor<7x10xf32>
          %307 = math.ctlz %c-24023_i16 : i16
          %308 = vector.flat_transpose %19 {columns = 13 : i32, rows = 1 : i32} : vector<13xi16> -> vector<13xi16>
          %c1080234049_i64 = arith.constant 1080234049 : i64
          %309 = math.powf %cst_2, %cst_2 : f32
          %310 = vector.broadcast %c3 : index to vector<10xindex>
          %311 = vector.broadcast %true : i1 to vector<10xi1>
          vector.scatter %alloc_12[%c5] [%310], %311, %311 : memref<13xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
          %312 = arith.cmpi slt, %true, %true_50 : i1
          %313 = math.atan %27 : f16
          %314 = vector.create_mask %c3 : vector<13xi1>
          %315 = vector.extract_strided_slice %276 {offsets = [10], sizes = [2], strides = [1]} : vector<13xi32> to vector<2xi32>
          %316 = math.log10 %extracted_27 : f32
          %317 = vector.splat %c13 : vector<13xindex>
          %318 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %276, %276, %c1556520059_i32 : vector<13xi32>, vector<13xi32> into i32
          %319 = vector.flat_transpose %79 {columns = 13 : i32, rows = 1 : i32} : vector<13xi16> -> vector<13xi16>
          %320 = math.rsqrt %6 : tensor<13xf32>
          %rank_55 = tensor.rank %8 : tensor<7x7xf16>
          %321 = bufferization.to_tensor %alloc_7 : memref<7x10xi64>
          %322 = affine.min affine_map<(d0, d1) -> (d1 - (d0 - 128), d1 - (d0 - 128), d0 - 127, d1)>(%c12, %60)
          %323 = math.expm1 %64 : tensor<7xf16>
          %324 = arith.shrsi %out, %c1945706630_i64 : i64
          %325 = vector.splat %c20857_i16 : vector<7x10xi16>
          %326 = vector.splat %c10 : vector<13xindex>
          %327 = index.casts %305 : index to i32
          %328 = arith.remf %cst_1, %27 : f16
          %329 = vector.reduction <add>, %79 : vector<13xi16> into i16
          %true_56 = index.bool.constant true
          %cst_57 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_57 : f32
        }
      %287 = math.ctlz %false : i1
      %288 = arith.divsi %true_3, %true_50 : i1
      %from_elements_52 = tensor.from_elements %cst_2, %cst_2, %cst_2, %cst_2, %cst_0, %extracted_27, %cst_2, %cst_0, %cst_0, %extracted_27, %cst_2, %extracted_27, %extracted_27, %cst_2, %cst_0, %extracted_27, %cst_2, %cst_2, %cst_0, %cst_0, %cst_2, %extracted_27, %extracted_27, %extracted_27, %cst_2, %cst_2, %extracted_27, %cst_0, %cst_2, %extracted_27, %extracted_27, %cst_0, %cst_0, %extracted_27, %cst_0, %cst_0, %cst_0, %extracted_27, %cst_0, %cst_2, %cst_0, %cst_0, %cst_2, %cst_0, %cst_0, %cst_2, %extracted_27, %extracted_27, %cst_0 : tensor<7x7xf32>
      %289 = arith.remf %extracted_27, %extracted_27 : f32
      %290 = index.add %c15, %c15
      %291 = index.casts %c6 : index to i32
      %alloc_53 = memref.alloc() : memref<13xi64>
      %292 = math.exp2 %64 : tensor<7xf16>
      %293 = arith.ceildivsi %c858955577_i64, %c1945706630_i64 : i64
      %294 = index.casts %c9 : index to i32
      %295 = index.sub %c0, %c1
      %296 = arith.maxsi %false, %true : i1
      %297 = arith.ori %c858955577_i64, %out : i64
      %298 = arith.remui %true, %false : i1
      %299 = math.log1p %8 : tensor<7x7xf16>
      %300 = index.ceildivu %c12, %c12
      linalg.yield %out : i64
    } -> tensor<10x10x10xi64>
    %97 = vector.broadcast %c13 : index to vector<10xindex>
    %98 = vector.broadcast %false_26 : i1 to vector<10xi1>
    %99 = vector.broadcast %extracted : i64 to vector<10xi64>
    vector.scatter %alloc_14[%c4, %c3] [%97], %98, %99 : memref<7x7xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
    affine.store %false, %alloc_12[%c12] : memref<13xi1>
    %100 = affine.for %arg2 = 0 to 26 iter_args(%arg3 = %cst_0) -> (f32) {
      affine.yield %cst_2 : f32
    }
    %101 = vector.insert %c-24023_i16, %79 [10] : i16 into vector<13xi16>
    %102 = arith.maxf %cst_0, %extracted_27 : f32
    %103 = arith.maxsi %c20857_i16, %c-12652_i16 : i16
    %alloc_28 = memref.alloc() : memref<7x10xi1>
    memref.tensor_store %12, %alloc_28 : memref<7x10xi1>
    %expanded = tensor.expand_shape %16 [[0], [1, 2]] : tensor<7x7xf32> into tensor<7x7x1xf32>
    %104 = index.ceildivs %c5, %60
    %105 = vector.load %alloc_8[%c2, %c0] : memref<7x7xf16>, vector<13xf16>
    %106 = arith.cmpi ugt, %c1556520059_i32, %c1556520059_i32 : i32
    %107 = index.ceildivu %86, %c0
    %108 = index.sizeof
    %109 = arith.ori %c20857_i16, %c-12652_i16 : i16
    %110 = vector.shuffle %22, %22 [0, 2, 3, 6, 7, 11, 13, 18, 22, 24] : vector<13xi16>, vector<13xi16>
    memref.assume_alignment %alloc_12, 1 : memref<13xi1>
    %111 = vector.broadcast %c7 : index to vector<7xindex>
    %112 = vector.broadcast %false_26 : i1 to vector<7xi1>
    vector.scatter %alloc_19[%c12] [%111], %112, %43 : memref<13xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
    %113 = affine.if affine_set<(d0) : ((((d0 * 2) floordiv 128) mod 2) * 64 >= 0, d0 >= 0)>(%c15) -> i16 {
      %272 = index.add %c8, %c8
      %273 = arith.divf %cst_1, %cst_1 : f16
      %274 = vector.splat %c10 : vector<7x7xindex>
      %275 = math.powf %13, %13 : tensor<7x10xf32>
      %276 = index.maxs %86, %86
      %277 = vector.load %alloc_10[%c2] : memref<13xi1>, vector<7x10xi1>
      %278 = memref.load %alloc_16[%c6, %c1] : memref<7x7xf32>
      %alloc_48 = memref.alloc() : memref<7x10xi32>
      affine.yield %c833_i16 : i16
    } else {
      %272 = index.maxu %c10, %c15
      %273 = bufferization.to_tensor %alloc_20 : memref<7xf16>
      %alloc_48 = memref.alloc() : memref<7x7xi32>
      %generated_49 = tensor.generate %107, %60 {
      ^bb0(%arg2: index, %arg3: index):
        %278 = arith.floordivsi %c364683931_i32, %c881582375_i32 : i32
        %279 = vector.shuffle %34, %34 [0, 1, 2, 3, 4, 6, 7, 8, 11] : vector<7x7xf16>, vector<7x7xf16>
        %280 = math.exp %8 : tensor<7x7xf16>
        %281 = math.ceil %16 : tensor<7x7xf32>
        tensor.yield %false : i1
      } : tensor<?x?xi1>
      %274 = arith.minui %c364683931_i32, %c364683931_i32 : i32
      %275 = math.log2 %4 : tensor<7x10xf32>
      %276 = arith.cmpi uge, %true_3, %false_26 : i1
      %277 = vector.bitcast %26 : vector<7x7xf32> to vector<7x7xf32>
      affine.yield %c833_i16 : i16
    }
    %114 = math.log2 %13 : tensor<7x10xf32>
    memref.tensor_store %0, %alloc_21 : memref<13xi64>
    %115 = math.fma %cst_0, %cst_0, %cst_2 : f32
    %116 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %22, %79, %c-24023_i16 : vector<13xi16>, vector<13xi16> into i16
    %117 = affine.apply affine_map<(d0) -> (0)>(%c1)
    %118 = vector.bitcast %25 : vector<7x7xf32> to vector<7x7xf32>
    %119 = math.round %7 : tensor<7x7xf16>
    %120 = math.log10 %11 : tensor<13xf32>
    %121 = vector.multi_reduction <minf>, %34, %40 [1] : vector<7x7xf16> to vector<7xf16>
    %122 = math.ceil %14 : tensor<7x10xf16>
    %123 = math.absf %11 : tensor<13xf32>
    %124 = arith.ceildivsi %extracted, %c1945706630_i64 : i64
    %125 = math.ipowi %20, %21 : tensor<i64>
    %126 = arith.divui %c542052749_i32, %c1556520059_i32 : i32
    %alloca = memref.alloca() : memref<7x7xi1>
    %true_29 = index.bool.constant true
    %127 = arith.muli %c1556520059_i32, %c364683931_i32 : i32
    %128 = index.add %117, %c7
    %inserted = tensor.insert %extracted_27 into %6[%c1] : tensor<13xf32>
    scf.index_switch %c3 
    case 1 {
      %alloc_48 = memref.alloc() : memref<13xi64>
      scf.execute_region {
        %285 = arith.remui %extracted, %c1945706630_i64 : i64
        %286 = math.powf %8, %8 : tensor<7x7xf16>
        %287 = index.ceildivs %86, %128
        %288 = affine.max affine_map<(d0, d1, d2) -> (-d2, d2 * -4, -d2, d2)>(%60, %c8, %c12)
        %289 = index.casts %c364683931_i32 : i32 to index
        %290 = vector.broadcast %288 : index to vector<1xindex>
        %291 = vector.broadcast %true : i1 to vector<1xi1>
        %292 = vector.broadcast %c1945706630_i64 : i64 to vector<1xi64>
        vector.scatter %alloc_21[%c1] [%290], %291, %292 : memref<13xi64>, vector<1xindex>, vector<1xi1>, vector<1xi64>
        %293 = vector.flat_transpose %78 {columns = 13 : i32, rows = 1 : i32} : vector<13xi1> -> vector<13xi1>
        %294 = index.sizeof
        %295 = math.log10 %11 : tensor<13xf32>
        %296 = vector.matrix_multiply %105, %105 {lhs_columns = 13 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<13xf16>, vector<13xf16>) -> vector<1xf16>
        %297 = vector.reduction <minf>, %296 : vector<1xf16> into f16
        %298 = math.tanh %extracted_27 : f32
        %299 = math.round %6 : tensor<13xf32>
        %300 = vector.shuffle %22, %22 [3, 7, 12, 13, 18, 20, 22, 23, 24, 25] : vector<13xi16>, vector<13xi16>
        %301 = arith.muli %true_29, %true_29 : i1
        %302 = math.round %extracted_27 : f32
        scf.yield
      }
      %272 = arith.ceildivsi %true_3, %true : i1
      %273 = vector.flat_transpose %40 {columns = 7 : i32, rows = 1 : i32} : vector<7xf16> -> vector<7xf16>
      %274 = arith.maxf %27, %27 : f16
      %275 = math.sqrt %6 : tensor<13xf32>
      %276 = index.maxs %60, %c10
      %277 = index.maxu %108, %c2
      %278 = arith.shli %c858955577_i64, %extracted : i64
      memref.tensor_store %4, %alloc_9 : memref<7x10xf32>
      %279 = arith.cmpf olt, %27, %27 : f16
      %280 = affine.max affine_map<(d0, d1, d2) -> (d2 * 2, 0, d2 * 2)>(%c11, %c12, %c1)
      %281 = bufferization.to_tensor %alloc_21 : memref<13xi64>
      %282 = math.log %cst_0 : f32
      %cst_49 = arith.constant 1.000000e+00 : f16
      %cst_50 = arith.constant 0.000000e+00 : f16
      %283 = vector.transfer_read %7[%c6, %c14], %cst_50 : tensor<7x7xf16>, vector<f16>
      %284 = memref.realloc %alloc_10 : memref<13xi1> to memref<7xi1>
      scf.yield
    }
    default {
      %272 = index.sub %c3, %c3
      memref.assume_alignment %alloc_6, 2 : memref<7x7xi16>
      %273 = index.mul %104, %c13
      %274 = math.absf %extracted_27 : f32
      %275 = math.log %2 : tensor<7x7xf32>
      %276 = arith.minsi %c-12652_i16, %c-12652_i16 : i16
      %inserted_48 = tensor.insert %c542052749_i32 into %5[%c7] : tensor<13xi32>
      %277 = math.ceil %8 : tensor<7x7xf16>
      %278 = index.ceildivu %272, %128
      %279 = vector.insert %extracted_27, %43 [5] : f32 into vector<7xf32>
      %280 = arith.mulf %cst_2, %cst_0 : f32
      %281 = vector.create_mask %107, %60 : vector<7x7xi1>
      %282 = vector.multi_reduction <mul>, %118, %43 [0] : vector<7x7xf32> to vector<7xf32>
      %283 = index.casts %false_26 : i1 to index
      %284 = math.log1p %6 : tensor<13xf32>
      %285 = vector.broadcast %cst_2 : f32 to vector<f32>
      %286 = vector.transfer_write %285, %13[%108, %c9] : vector<f32>, tensor<7x10xf32>
    }
    %129 = index.floordivs %c14, %85
    %130 = index.castu %false : i1 to index
    %from_elements = tensor.from_elements %extracted, %c858955577_i64, %c858955577_i64, %c1945706630_i64, %c858955577_i64, %c858955577_i64, %c858955577_i64, %extracted, %c1945706630_i64, %c858955577_i64, %extracted, %c1945706630_i64, %extracted, %c1945706630_i64, %extracted, %c1945706630_i64, %extracted, %c858955577_i64, %extracted, %c1945706630_i64, %c1945706630_i64, %c1945706630_i64, %extracted, %c858955577_i64, %c858955577_i64, %c1945706630_i64, %extracted, %c858955577_i64, %c858955577_i64, %extracted, %extracted, %c858955577_i64, %c1945706630_i64, %c858955577_i64, %extracted, %extracted, %c1945706630_i64, %extracted, %c858955577_i64, %c858955577_i64, %c1945706630_i64, %extracted, %extracted, %c858955577_i64, %c1945706630_i64, %c858955577_i64, %c858955577_i64, %c858955577_i64, %c1945706630_i64 : tensor<7x7xi64>
    %131 = arith.remf %27, %27 : f16
    %132 = math.log1p %cst_2 : f32
    %133 = math.log10 %14 : tensor<7x10xf16>
    %134 = tensor.empty() : tensor<7x7xf16>
    %mapped = linalg.map ins(%8, %7, %8 : tensor<7x7xf16>, tensor<7x7xf16>, tensor<7x7xf16>) outs(%134 : tensor<7x7xf16>)
      (%in: f16, %in_48: f16, %in_49: f16) {
        %rank_50 = tensor.rank %13 : tensor<7x10xf32>
        %272 = arith.divf %cst_0, %extracted_27 : f32
        %273 = arith.maxsi %c1945706630_i64, %c858955577_i64 : i64
        %274 = index.divs %104, %129
        %275 = math.ctpop %false_26 : i1
        %276 = index.casts %c9 : index to i32
        memref.store %extracted, %alloc_14[%c2, %c0] : memref<7x7xi64>
        %277 = math.tanh %cst : f16
        %generated_51 = tensor.generate %128, %274 {
        ^bb0(%arg2: index, %arg3: index):
          %298 = index.casts %c10 : index to i32
          %299 = math.log10 %in : f16
          %300 = vector.create_mask %c6, %108 : vector<7x10xi1>
          %301 = bufferization.to_memref %2 : memref<7x7xf32>
          tensor.yield %extracted_27 : f32
        } : tensor<?x?xf32>
        %278 = math.copysign %17, %3 : tensor<7x7xf32>
        %from_elements_52 = tensor.from_elements %c-12652_i16, %c20857_i16, %c-12652_i16, %c20857_i16, %c-24023_i16, %c833_i16, %c-12652_i16, %c-12652_i16, %c833_i16, %c20857_i16, %c20857_i16, %c20857_i16, %c20857_i16, %c20857_i16, %c20857_i16, %c-12652_i16, %c-24023_i16, %c-24023_i16, %c833_i16, %c20857_i16, %c-24023_i16, %c-12652_i16, %c833_i16, %c-24023_i16, %c-24023_i16, %c-24023_i16, %c-12652_i16, %c20857_i16, %c20857_i16, %c20857_i16, %c-24023_i16, %c-12652_i16, %c20857_i16, %c-12652_i16, %c833_i16, %c833_i16, %c-12652_i16, %c20857_i16, %c-12652_i16, %c-24023_i16, %c-12652_i16, %c833_i16, %c-24023_i16, %c-12652_i16, %c20857_i16, %c-24023_i16, %c-12652_i16, %c20857_i16, %c833_i16 : tensor<7x7xi16>
        %cst_53 = arith.constant 1.000000e+00 : f32
        %279 = vector.transfer_read %3[%c4, %104], %cst_53 : tensor<7x7xf32>, vector<7xf32>
        %280 = math.ipowi %c1945706630_i64, %extracted : i64
        %281 = arith.remsi %c20857_i16, %c833_i16 : i16
        %282 = math.tanh %3 : tensor<7x7xf32>
        %283 = arith.maxsi %c364683931_i32, %c1556520059_i32 : i32
        %284 = vector.multi_reduction <maxf>, %25, %43 [0] : vector<7x7xf32> to vector<7xf32>
        %285 = math.absf %17 : tensor<7x7xf32>
        %286 = vector.broadcast %c20857_i16 : i16 to vector<13xi16>
        %287 = math.ceil %in_49 : f16
        %288 = index.add %130, %c6
        %289 = arith.maxsi %c881582375_i32, %c1556520059_i32 : i32
        %290 = arith.maxf %in_48, %cst_1 : f16
        %291 = arith.minsi %c364683931_i32, %c1556520059_i32 : i32
        %collapsed = tensor.collapse_shape %12 [[0, 1]] : tensor<7x10xi1> into tensor<70xi1>
        %292 = math.copysign %13, %4 : tensor<7x10xf32>
        %293 = index.maxs %c7, %108
        %294 = memref.load %alloc_5[%c12] : memref<13xf32>
        %true_54 = index.bool.constant true
        %295 = vector.broadcast %c1945706630_i64 : i64 to vector<i64>
        %296 = vector.transfer_write %295, %from_elements[%c8, %130] : vector<i64>, tensor<7x7xi64>
        %297 = bufferization.to_memref %expanded : memref<7x7x1xf32>
        %extracted_55 = tensor.extract %15[%c5, %c3] : tensor<7x7xi64>
        %cst_56 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_56 : f16
      }
    scf.execute_region {
      scf.if %false_26 {
        %286 = vector.bitcast %78 : vector<13xi1> to vector<13xi1>
        %287 = vector.broadcast %c6 : index to vector<13xindex>
        %288 = vector.broadcast %extracted_27 : f32 to vector<13xf32>
        vector.scatter %alloc_15[%c6] [%287], %286, %288 : memref<13xf32>, vector<13xindex>, vector<13xi1>, vector<13xf32>
        %289 = arith.maxsi %extracted, %c858955577_i64 : i64
        %290 = vector.broadcast %c-12652_i16 : i16 to vector<7x7xi16>
        %291 = vector.broadcast %true : i1 to vector<7x7xi1>
        %292 = vector.broadcast %c542052749_i32 : i32 to vector<7x7xi32>
        %293 = vector.gather %alloc_6[%c13, %c11] [%292], %291, %290 : memref<7x7xi16>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xi16> into vector<7x7xi16>
        %294 = arith.ceildivsi %c1945706630_i64, %c858955577_i64 : i64
        %295 = math.log %17 : tensor<7x7xf32>
        %296 = index.casts %true_29 : i1 to index
        %297 = index.casts %296 : index to i32
      }
      %272 = arith.cmpf one, %cst_0, %cst_0 : f32
      %273 = arith.xori %c833_i16, %c-24023_i16 : i16
      %274 = index.ceildivs %117, %c7
      %275 = index.add %c5, %c14
      %276 = arith.minui %c20857_i16, %c833_i16 : i16
      %277 = vector.shuffle %105, %40 [1, 5, 6, 9, 10, 11, 12, 14, 15, 16] : vector<13xf16>, vector<7xf16>
      %278 = math.round %3 : tensor<7x7xf32>
      %279 = vector.extract %105[4] : vector<13xf16>
      %280 = index.ceildivu %c14, %c8
      %281 = math.ctlz %5 : tensor<13xi32>
      %282 = vector.multi_reduction <minf>, %26, %cst_0 [0, 1] : vector<7x7xf32> to f32
      %283 = arith.floordivsi %extracted, %c1945706630_i64 : i64
      %284 = index.divu %c1, %c8
      %285 = arith.divf %cst_2, %extracted_27 : f32
      %alloc_48 = memref.alloc() : memref<7x7xi32>
      scf.yield
    }
    %135 = vector.create_mask %c14 : vector<13xi1>
    %136 = scf.execute_region -> index {
      %272 = memref.atomic_rmw minu %c20857_i16, %alloc_18[%c2] : (i16, memref<13xi16>) -> i16
      affine.store %c858955577_i64, %alloc_17[%c2, %c1] : memref<7x10xi64>
      %273 = vector.extract %79[12] : vector<13xi16>
      %274 = memref.load %alloc_20[%c0] : memref<7xf16>
      %275 = scf.if %false -> (i64) {
        %288 = vector.extract %79[6] : vector<13xi16>
        %289 = arith.remui %extracted, %extracted : i64
        %c1_i64 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %290 = vector.transfer_read %alloc_11[%c4, %128], %c0_i64 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<7x7xi64>, vector<7xi64>
        %291 = affine.apply affine_map<(d0, d1, d2) -> (d1 + d2 - 4 + 16)>(%108, %130, %92)
        %292 = arith.remf %cst_1, %cst_1 : f16
        %293 = math.ctlz %false : i1
        %294 = arith.shrui %c1_i64, %c858955577_i64 : i64
        %inserted_48 = tensor.insert %extracted_27 into %3[%c1, %c5] : tensor<7x7xf32>
        scf.yield %c858955577_i64 : i64
      } else {
        %288 = vector.extract %34[0] : vector<7x7xf16>
        %289 = math.ctpop %c-24023_i16 : i16
        %290 = vector.broadcast %c-24023_i16 : i16 to vector<7x10xi16>
        %291 = vector.broadcast %c833_i16 : i16 to vector<10xi16>
        %292 = vector.insert %291, %290 [0] : vector<10xi16> into vector<7x10xi16>
        %alloc_48 = memref.alloc() : memref<7x10xi32>
        %293 = vector.broadcast %c364683931_i32 : i32 to vector<13xi32>
        %294 = vector.gather %alloc_48[%92, %85] [%293], %78, %293 : memref<7x10xi32>, vector<13xi32>, vector<13xi1>, vector<13xi32> into vector<13xi32>
        %295 = math.atan %2 : tensor<7x7xf32>
        %296 = index.sizeof
        %297 = vector.shuffle %34, %34 [2, 6, 8, 9, 10, 11, 12, 13] : vector<7x7xf16>, vector<7x7xf16>
        scf.yield %c1945706630_i64 : i64
      }
      %276 = vector.insert %false, %78 [5] : i1 into vector<13xi1>
      %277 = vector.flat_transpose %19 {columns = 13 : i32, rows = 1 : i32} : vector<13xi16> -> vector<13xi16>
      %278 = arith.subi %275, %275 : i64
      %279 = index.divu %130, %c7
      %280 = math.ipowi %c542052749_i32, %c542052749_i32 : i32
      %281 = arith.shrui %c1945706630_i64, %275 : i64
      %282 = arith.ori %c1945706630_i64, %c1945706630_i64 : i64
      %283 = math.log10 %7 : tensor<7x7xf16>
      %284 = index.mul %108, %c13
      %285 = math.absf %expanded : tensor<7x7x1xf32>
      %286 = vector.broadcast %c8 : index to vector<7xindex>
      %287 = vector.broadcast %true : i1 to vector<7xi1>
      vector.scatter %alloc_12[%c11] [%286], %287, %287 : memref<13xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
      scf.yield %107 : index
    }
    %alloc_30 = memref.alloc() : memref<7x7xi64>
    %137 = math.exp %8 : tensor<7x7xf16>
    %138 = arith.addf %cst_1, %cst : f16
    %139 = math.ipowi %20, %20 : tensor<i64>
    %140 = index.ceildivu %c0, %c15
    %141 = index.casts %c-24023_i16 : i16 to index
    %142 = arith.maxsi %extracted, %c1945706630_i64 : i64
    %alloc_31 = memref.alloc() : memref<13xi64>
    memref.copy %alloc_21, %alloc_31 : memref<13xi64> to memref<13xi64>
    %143 = math.round %8 : tensor<7x7xf16>
    %144 = bufferization.to_tensor %alloc_15 : memref<13xf32>
    %145 = arith.addf %extracted_27, %extracted_27 : f32
    %generated = tensor.generate %60 {
    ^bb0(%arg2: index, %arg3: index):
      %272 = arith.shli %c881582375_i32, %c364683931_i32 : i32
      %273 = arith.minui %extracted, %c858955577_i64 : i64
      %274 = vector.flat_transpose %135 {columns = 13 : i32, rows = 1 : i32} : vector<13xi1> -> vector<13xi1>
      %275 = index.mul %arg3, %c11
      tensor.yield %c-24023_i16 : i16
    } : tensor<?x10xi16>
    %146 = vector.bitcast %26 : vector<7x7xf32> to vector<7x7xf32>
    %147 = affine.if affine_set<(d0, d1, d2, d3) : (d2 + 132 == 0)>(%c6, %c11, %c13, %c1) -> memref<7x10xi32> {
      %272 = math.absf %27 : f16
      %273 = arith.shrui %c20857_i16, %c-24023_i16 : i16
      %274 = index.casts %104 : index to i32
      %275 = affine.load %alloc_11[%c4, %c3] : memref<7x7xi64>
      %276 = arith.maxsi %c-24023_i16, %c20857_i16 : i16
      %277 = arith.remsi %false_26, %false : i1
      %278 = index.mul %c3, %c10
      %rank_48 = tensor.rank %21 : tensor<i64>
      %alloc_49 = memref.alloc() : memref<7x10xi32>
      affine.yield %alloc_49 : memref<7x10xi32>
    } else {
      %272 = arith.divui %false_26, %true : i1
      %273 = vector.load %alloc[%c5] : memref<13xi1>, vector<13xi1>
      %274 = arith.maxf %cst, %27 : f16
      %275 = scf.while (%arg2 = %26) : (vector<7x7xf32>) -> vector<7x7xf32> {
        %279 = vector.reduction <maxf>, %105 : vector<13xf16> into f16
        %280 = arith.negf %cst : f16
        %281 = vector.insert %true, %273 [5] : i1 into vector<13xi1>
        %alloc_50 = memref.alloc() : memref<7x7xi16>
        %collapsed = tensor.collapse_shape %7 [[0, 1]] : tensor<7x7xf16> into tensor<49xf16>
        %282 = arith.maxui %c20857_i16, %c833_i16 : i16
        %283 = arith.addf %extracted_27, %cst_0 : f32
        %284 = index.ceildivs %140, %c11
        scf.condition(%false_26) %25 : vector<7x7xf32>
      } do {
      ^bb0(%arg2: vector<7x7xf32>):
        %279 = index.floordivs %117, %107
        %280 = math.log10 %17 : tensor<7x7xf32>
        %281 = vector.matrix_multiply %273, %135 {lhs_columns = 13 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<13xi1>, vector<13xi1>) -> vector<1xi1>
        %extracted_50 = tensor.extract %12[%c0, %c1] : tensor<7x10xi1>
        %cst_51 = arith.constant 1.000000e+00 : f32
        %cst_52 = arith.constant 0.000000e+00 : f32
        %282 = vector.transfer_read %11[%117], %cst_52 : tensor<13xf32>, vector<f32>
        memref.store %27, %alloc_8[%c1, %c4] : memref<7x7xf16>
        %alloc_53 = memref.alloc() : memref<7x10xi16>
        %283 = vector.broadcast %c-12652_i16 : i16 to vector<7x10xi16>
        %284 = vector.broadcast %extracted_50 : i1 to vector<7x10xi1>
        %285 = vector.broadcast %c542052749_i32 : i32 to vector<7x10xi32>
        %286 = vector.gather %alloc_53[%85, %128] [%285], %284, %283 : memref<7x10xi16>, vector<7x10xi32>, vector<7x10xi1>, vector<7x10xi16> into vector<7x10xi16>
        %287 = math.atan %13 : tensor<7x10xf32>
        %288 = arith.divf %cst_2, %cst_51 : f32
        %cst_54 = arith.constant 6.243200e+04 : f16
        %289 = index.floordivs %c6, %c1
        %collapsed = tensor.collapse_shape %12 [[0, 1]] : tensor<7x10xi1> into tensor<70xi1>
        %290 = vector.multi_reduction <maxsi>, %79, %c-12652_i16 [0] : vector<13xi16> to i16
        %291 = vector.shuffle %78, %281 [0, 3, 5, 6, 7, 8, 11] : vector<13xi1>, vector<1xi1>
        %292 = math.expm1 %cst_51 : f32
        %293 = arith.remf %extracted_27, %cst_51 : f32
        scf.yield %118 : vector<7x7xf32>
      }
      %276 = memref.realloc %alloc_19 : memref<13xf32> to memref<10xf32>
      %277 = math.absf %cst_1 : f16
      %cast_48 = tensor.cast %15 : tensor<7x7xi64> to tensor<?x?xi64>
      %278 = math.ipowi %c-24023_i16, %c-24023_i16 : i16
      %alloc_49 = memref.alloc() : memref<7x10xi32>
      affine.yield %alloc_49 : memref<7x10xi32>
    }
    %148 = arith.minsi %false, %true : i1
    %149 = math.exp %cst_0 : f32
    %150 = arith.divsi %c-12652_i16, %c-24023_i16 : i16
    %151 = index.castu %c3 : index to i32
    %extracted_32 = tensor.extract %15[%c4, %c0] : tensor<7x7xi64>
    %152 = index.castu %129 : index to i32
    %153 = arith.minsi %true_29, %false_26 : i1
    %154 = math.ctlz %c858955577_i64 : i64
    %155 = vector.broadcast %c12 : index to vector<13xindex>
    %156 = vector.broadcast %extracted : i64 to vector<13xi64>
    vector.scatter %alloc_11[%c2, %c0] [%155], %78, %156 : memref<7x7xi64>, vector<13xindex>, vector<13xi1>, vector<13xi64>
    %157 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %105, %105, %27 : vector<13xf16>, vector<13xf16> into f16
    %158 = arith.maxsi %false_26, %true : i1
    %159 = vector.multi_reduction <xor>, %78, %true_3 [0] : vector<13xi1> to i1
    %160 = vector.broadcast %c3 : index to vector<10xindex>
    %161 = vector.broadcast %true : i1 to vector<10xi1>
    %162 = vector.broadcast %extracted_32 : i64 to vector<10xi64>
    vector.scatter %alloc_14[%c2, %c3] [%160], %161, %162 : memref<7x7xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
    %163 = memref.load %alloc_16[%c1, %c3] : memref<7x7xf32>
    %164 = arith.addi %c542052749_i32, %c881582375_i32 : i32
    %165 = affine.if affine_set<(d0) : (-d0 - 64 == 0, d0 == 0, -d0 + 4 >= 0, (-d0 - 2) floordiv 32 >= 0)>(%c0) -> memref<7x7xi32> {
      %272 = index.maxs %130, %c6
      %alloc_48 = memref.alloc() : memref<13xf32>
      %273 = index.add %141, %c5
      %cst_49 = arith.constant 1.000000e+00 : f32
      %274 = vector.transfer_read %alloc_15[%92], %cst_49 : memref<13xf32>, vector<f32>
      affine.for %arg2 = 0 to 122 {
      }
      %275 = index.divu %c14, %130
      %276 = arith.minsi %c542052749_i32, %c364683931_i32 : i32
      %alloca_50 = memref.alloca() : memref<7x10xi16>
      affine.yield %alloc_4 : memref<7x7xi32>
    } else {
      %272 = math.ceil %extracted_27 : f32
      %273 = index.maxs %c8, %136
      %274 = math.absf %14 : tensor<7x10xf16>
      affine.store %cst_0, %alloc_19[%c4] : memref<13xf32>
      %alloca_48 = memref.alloca() : memref<7x7xi16>
      %275 = math.ipowi %15, %15 : tensor<7x7xi64>
      %276 = vector.multi_reduction <minf>, %105, %105 [] : vector<13xf16> to vector<13xf16>
      %277 = arith.remsi %c364683931_i32, %c881582375_i32 : i32
      affine.yield %alloc_4 : memref<7x7xi32>
    }
    %166 = tensor.empty() : tensor<7x10xi1>
    %167 = arith.divsi %c364683931_i32, %c364683931_i32 : i32
    %168 = vector.load %alloc_7[%c4, %c8] : memref<7x10xi64>, vector<7x7xi64>
    %169 = scf.execute_region -> f32 {
      %272 = arith.floordivsi %false_26, %false : i1
      memref.store %false_26, %alloc[%c4] : memref<13xi1>
      %273 = tensor.empty() : tensor<7x10xi1>
      %mapped_48 = linalg.map ins(%12, %1 : tensor<7x10xi1>, tensor<7x10xi1>) outs(%273 : tensor<7x10xi1>)
        (%in: i1, %in_50: i1) {
          %287 = math.fma %8, %8, %7 : tensor<7x7xf16>
          %288 = vector.load %alloc_14[%c4, %c4] : memref<7x7xi64>, vector<7x7xi64>
          %extracted_51 = tensor.extract %7[%c1, %c5] : tensor<7x7xf16>
          %289 = arith.minui %c-12652_i16, %c833_i16 : i16
          %290 = vector.broadcast %cst_0 : f32 to vector<7x7xf32>
          %291 = vector.fma %290, %290, %290 : vector<7x7xf32>
          %292 = math.ctlz %in_50 : i1
          %293 = math.log10 %144 : tensor<13xf32>
          %294 = math.ipowi %c20857_i16, %c20857_i16 : i16
          %295 = affine.load %alloc_18[%c11] : memref<13xi16>
          %296 = arith.maxsi %c-12652_i16, %c-24023_i16 : i16
          %297 = math.log1p %134 : tensor<7x7xf16>
          %298 = memref.atomic_rmw maxf %cst_0, %alloc_16[%c2, %c0] : (f32, memref<7x7xf32>) -> f32
          %299 = index.add %c1, %c6
          %300 = vector.splat %cst_0 : vector<7x7xf32>
          %301 = arith.muli %c-12652_i16, %c833_i16 : i16
          %302 = arith.shrui %true, %in_50 : i1
          %303 = vector.extract_strided_slice %25 {offsets = [5], sizes = [1], strides = [1]} : vector<7x7xf32> to vector<1x7xf32>
          %304 = vector.broadcast %c1556520059_i32 : i32 to vector<7x7xi32>
          %305 = memref.load %alloc[%c7] : memref<13xi1>
          %306 = vector.broadcast %extracted_27 : f32 to vector<13xf32>
          %307 = vector.broadcast %c542052749_i32 : i32 to vector<13xi32>
          %308 = vector.gather %alloc_15[%c10] [%307], %78, %306 : memref<13xf32>, vector<13xi32>, vector<13xi1>, vector<13xf32> into vector<13xf32>
          memref.tensor_store %13, %alloc_9 : memref<7x10xf32>
          %309 = index.maxu %c4, %108
          %310 = math.log10 %2 : tensor<7x7xf32>
          %311 = math.log10 %11 : tensor<13xf32>
          %312 = math.powf %cst, %cst_1 : f16
          %313 = math.roundeven %cst_2 : f32
          %314 = vector.shuffle %105, %105 [1, 2, 3, 6, 7, 8, 10, 11, 12, 18, 19] : vector<13xf16>, vector<13xf16>
          %315 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 mod 64)>(%c8, %c13, %117, %c14)
          %316 = arith.muli %false_26, %true_29 : i1
          %317 = vector.load %alloc_5[%c1] : memref<13xf32>, vector<7x10xf32>
          %318 = vector.multi_reduction <add>, %118, %26 [] : vector<7x7xf32> to vector<7x7xf32>
          %319 = vector.create_mask %108, %129 : vector<7x7xi1>
          %false_52 = arith.constant false
          linalg.yield %false_52 : i1
        }
      %274 = math.absf %7 : tensor<7x7xf16>
      %alloca_49 = memref.alloca() : memref<7x10xi32>
      %275 = arith.muli %c364683931_i32, %c542052749_i32 : i32
      %276 = affine.if affine_set<(d0, d1, d2) : (d1 mod 64 == 0)>(%c8, %c7, %c5) -> i1 {
        %287 = vector.reduction <xor>, %79 : vector<13xi16> into i16
        %288 = vector.splat %60 : vector<7x10xindex>
        %289 = arith.subi %true_29, %159 : i1
        %true_50 = arith.constant true
        %290 = math.tan %134 : tensor<7x7xf16>
        %291 = arith.muli %159, %true_29 : i1
        %292 = arith.muli %c881582375_i32, %c1556520059_i32 : i32
        %293 = math.copysign %7, %8 : tensor<7x7xf16>
        affine.yield %true_3 : i1
      } else {
        %287 = math.absf %6 : tensor<13xf32>
        %288 = index.floordivs %108, %108
        %c282002653_i64 = arith.constant 282002653 : i64
        %289 = vector.broadcast %cst_0 : f32 to vector<13xf32>
        %290 = vector.broadcast %c1556520059_i32 : i32 to vector<13xi32>
        %291 = vector.gather %alloc_15[%c7] [%290], %78, %289 : memref<13xf32>, vector<13xi32>, vector<13xi1>, vector<13xf32> into vector<13xf32>
        %292 = index.divs %130, %92
        %293 = vector.splat %c10 : vector<7x7xindex>
        %294 = math.exp %144 : tensor<13xf32>
        %cst_50 = arith.constant 1.50841331E+9 : f32
        affine.yield %159 : i1
      }
      %277 = memref.alloca_scope  -> (memref<13xi16>) {
        %287 = memref.load %alloc_8[%c0, %c5] : memref<7x7xf16>
        %false_50 = arith.constant false
        %288 = arith.remf %27, %cst : f16
        %289 = vector.shuffle %168, %168 [1, 2, 4, 5, 6, 7, 8, 10, 11] : vector<7x7xi64>, vector<7x7xi64>
        %290 = arith.addi %true, %true : i1
        %291 = arith.divf %cst, %27 : f16
        %292 = vector.broadcast %false : i1 to vector<7x7xi1>
        %293 = vector.broadcast %c364683931_i32 : i32 to vector<7x7xi32>
        %294 = vector.gather %12[%c14, %c8] [%293], %292, %292 : tensor<7x10xi1>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xi1> into vector<7x7xi1>
        %295 = math.ipowi %166, %166 : tensor<7x10xi1>
        %c1_i64 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %296 = vector.transfer_read %9[%140, %c14], %c0_i64 : tensor<7x10xi64>, vector<i64>
        memref.store %159, %alloc[%c11] : memref<13xi1>
        %alloca_51 = memref.alloca() : memref<13xi1>
        %297 = arith.subi %extracted, %c858955577_i64 : i64
        %298 = arith.divf %cst_0, %cst_2 : f32
        %299 = vector.flat_transpose %43 {columns = 7 : i32, rows = 1 : i32} : vector<7xf32> -> vector<7xf32>
        %300 = math.ipowi %0, %0 : tensor<13xi64>
        %301 = arith.maxf %cst_1, %cst : f16
        %302 = index.mul %c6, %c11
        %extracted_52 = tensor.extract %3[%c0, %c0] : tensor<7x7xf32>
        %303 = arith.muli %c20857_i16, %c-12652_i16 : i16
        %304 = vector.transpose %78, [0] : vector<13xi1> to vector<13xi1>
        %cst_53 = arith.constant 6.198400e+04 : f16
        %305 = arith.remui %c542052749_i32, %c881582375_i32 : i32
        %306 = math.rsqrt %17 : tensor<7x7xf32>
        %307 = math.ceil %7 : tensor<7x7xf16>
        %308 = vector.insertelement %c833_i16, %22[%85 : index] : vector<13xi16>
        %309 = math.atan %134 : tensor<7x7xf16>
        %310 = index.floordivs %c12, %117
        %311 = vector.transpose %25, [1, 0] : vector<7x7xf32> to vector<7x7xf32>
        %312 = index.sub %130, %130
        %313 = memref.load %alloc_10[%c3] : memref<13xi1>
        %314 = vector.splat %c14 : vector<7x7xindex>
        %315 = arith.shrui %c542052749_i32, %c1556520059_i32 : i32
        memref.alloca_scope.return %alloc_18 : memref<13xi16>
      }
      %278 = arith.remui %c858955577_i64, %c858955577_i64 : i64
      %279 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %25, %25, %25 : vector<7x7xf32>, vector<7x7xf32> into vector<7x7xf32>
      %280 = index.castu %c1945706630_i64 : i64 to index
      %281 = index.add %c3, %c14
      %282 = math.log10 %3 : tensor<7x7xf32>
      %283 = vector.shuffle %22, %79 [3, 6, 9, 11, 13, 20, 21, 23, 24, 25] : vector<13xi16>, vector<13xi16>
      %284 = vector.broadcast %cst_1 : f16 to vector<10xf16>
      %285 = vector.transfer_write %284, %14[%c13, %280] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xf16>, tensor<7x10xf16>
      %286 = arith.addf %cst_1, %27 : f16
      scf.yield %extracted_27 : f32
    }
    %170 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxf>} %34, %40, %40 : vector<7x7xf16>, vector<7xf16> into vector<7xf16>
    %171 = vector.extract_strided_slice %26 {offsets = [5], sizes = [2], strides = [1]} : vector<7x7xf32> to vector<2x7xf32>
    %172 = math.copysign %169, %extracted_27 : f32
    %173 = vector.load %alloc_16[%c0, %c4] : memref<7x7xf32>, vector<7x7xf32>
    %rank = tensor.rank %generated : tensor<?x10xi16>
    %174 = arith.remui %false_26, %true : i1
    %175 = index.casts %false : i1 to index
    %176 = affine.if affine_set<(d0, d1, d2, d3) : (-d0 == 0, d2 floordiv 4 == 0, d3 floordiv 2 == 0)>(%c1, %c14, %c9, %c15) -> i1 {
      %generated_48 = tensor.generate %129 {
      ^bb0(%arg2: index, %arg3: index):
        %279 = arith.divui %c364683931_i32, %c881582375_i32 : i32
        %280 = memref.realloc %alloc_12 : memref<13xi1> to memref<1xi1>
        %false_49 = index.bool.constant false
        memref.assume_alignment %alloc_19, 4 : memref<13xf32>
        tensor.yield %c-24023_i16 : i16
      } : tensor<?x7xi16>
      %272 = index.maxs %60, %c1
      %273 = arith.divui %true_3, %false_26 : i1
      %274 = math.ctlz %c364683931_i32 : i32
      %275 = math.powf %6, %11 : tensor<13xf32>
      %276 = math.round %8 : tensor<7x7xf16>
      %277 = arith.muli %c833_i16, %c-24023_i16 : i16
      %278 = index.ceildivu %c3, %c2
      affine.yield %true_3 : i1
    } else {
      %272 = math.absf %144 : tensor<13xf32>
      %alloc_48 = memref.alloc() : memref<13xi1>
      %273 = scf.while (%arg2 = %extracted_27) : (f32) -> f32 {
        %inserted_49 = tensor.insert %true_29 into %12[%c1, %c2] : tensor<7x10xi1>
        %278 = vector.create_mask %141 : vector<13xi1>
        %expanded_50 = tensor.expand_shape %55 [[0], [1, 2]] : tensor<7x10xi64> into tensor<7x10x1xi64>
        %cst_51 = arith.constant 1.000000e+00 : f32
        %cst_52 = arith.constant 0.000000e+00 : f32
        %279 = vector.transfer_read %13[%c4, %c7], %cst_52 : tensor<7x10xf32>, vector<f32>
        %280 = index.casts %117 : index to i32
        %collapsed = tensor.collapse_shape %1 [[0, 1]] : tensor<7x10xi1> into tensor<70xi1>
        %collapsed_53 = tensor.collapse_shape %55 [[0, 1]] : tensor<7x10xi64> into tensor<70xi64>
        %281 = vector.broadcast %c833_i16 : i16 to vector<7x10xi16>
        scf.condition(%true) %cst_0 : f32
      } do {
      ^bb0(%arg2: f32):
        affine.store %cst, %alloc_8[%c15, %c5] : memref<7x7xf16>
        %278 = vector.splat %c1 : vector<7x10xindex>
        %279 = math.log %13 : tensor<7x10xf32>
        %280 = vector.broadcast %cst_2 : f32 to vector<7x2xf32>
        %281 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %25, %171, %280 : vector<7x7xf32>, vector<2x7xf32> into vector<7x2xf32>
        %282 = math.ceil %3 : tensor<7x7xf32>
        %283 = arith.remui %c858955577_i64, %c858955577_i64 : i64
        %284 = vector.bitcast %19 : vector<13xi16> to vector<13xf16>
        %285 = index.add %c4, %c8
        %false_49 = arith.constant false
        %286 = math.rsqrt %3 : tensor<7x7xf32>
        affine.store %extracted, %alloc_17[%c3, %c11] : memref<7x10xi64>
        %287 = arith.cmpf ogt, %27, %27 : f16
        %288 = arith.remsi %c20857_i16, %c833_i16 : i16
        %289 = vector.load %alloc_10[%c1] : memref<13xi1>, vector<7x7xi1>
        bufferization.dealloc_tensor %15 : tensor<7x7xi64>
        %290 = vector.multi_reduction <mul>, %25, %43 [1] : vector<7x7xf32> to vector<7xf32>
        scf.yield %extracted_27 : f32
      }
      affine.store %169, %alloc_16[%c12, %c3] : memref<7x7xf32>
      %274 = scf.index_switch %rank -> vector<7x7xi1> 
      case 1 {
        %278 = math.ipowi %12, %1 : tensor<7x10xi1>
        %inserted_49 = tensor.insert %extracted_27 into %4[%c0, %c8] : tensor<7x10xf32>
        %279 = vector.broadcast %c881582375_i32 : i32 to vector<7x7xi32>
        %280 = math.atan %16 : tensor<7x7xf32>
        %281 = arith.remui %true_29, %159 : i1
        %282 = arith.muli %false, %true : i1
        %283 = vector.extract_strided_slice %79 {offsets = [4], sizes = [8], strides = [1]} : vector<13xi16> to vector<8xi16>
        %284 = vector.load %alloc_15[%c3] : memref<13xf32>, vector<7x10xf32>
        %285 = arith.addi %c858955577_i64, %c858955577_i64 : i64
        %alloc_50 = memref.alloc() : memref<7x10xi32>
        memref.tensor_store %10, %alloc_50 : memref<7x10xi32>
        %286 = arith.divui %c-12652_i16, %c20857_i16 : i16
        memref.store %false_26, %alloc[%c11] : memref<13xi1>
        %287 = vector.load %alloc_13[%c3, %c2] : memref<7x7xi64>, vector<7x7xi64>
        %288 = vector.broadcast %c-24023_i16 : i16 to vector<1xi16>
        %289 = vector.broadcast %159 : i1 to vector<1xi1>
        %290 = vector.maskedload %alloc_6[%c5, %c6], %289, %288 : memref<7x7xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
        %291 = bufferization.to_tensor %alloc_9 : memref<7x10xf32>
        %292 = arith.remf %cst_0, %cst_2 : f32
        %293 = vector.broadcast %true : i1 to vector<7x7xi1>
        scf.yield %293 : vector<7x7xi1>
      }
      case 2 {
        %278 = vector.bitcast %40 : vector<7xf16> to vector<7xf16>
        %279 = vector.insert %extracted_27, %43 [2] : f32 into vector<7xf32>
        %280 = vector.broadcast %c881582375_i32 : i32 to vector<10xi32>
        %281 = vector.broadcast %false_26 : i1 to vector<10xi1>
        %282 = vector.maskedload %alloc_4[%c3, %c4], %281, %280 : memref<7x7xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
        %283 = vector.reduction <add>, %282 : vector<10xi32> into i32
        %284 = vector.extract %278[6] : vector<7xf16>
        %285 = index.casts %true : i1 to index
        %286 = index.floordivs %129, %128
        %287 = affine.min affine_map<(d0, d1) -> (d0 mod 2, d0, -d0 + 4, -d0 + 64)>(%c9, %c2)
        %288 = vector.bitcast %168 : vector<7x7xi64> to vector<7x7xi64>
        %289 = index.mul %c5, %128
        %290 = index.casts %c-12652_i16 : i16 to index
        %291 = index.maxu %c5, %285
        %292 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %25, %146, %146 : vector<7x7xf32>, vector<7x7xf32> into vector<7x7xf32>
        %293 = vector.bitcast %171 : vector<2x7xf32> to vector<2x7xf32>
        %294 = math.exp %169 : f32
        %295 = vector.multi_reduction <minf>, %26, %43 [0] : vector<7x7xf32> to vector<7xf32>
        %296 = vector.broadcast %false : i1 to vector<7x7xi1>
        scf.yield %296 : vector<7x7xi1>
      }
      default {
        %278 = math.atan %2 : tensor<7x7xf32>
        %279 = arith.addi %c-12652_i16, %c20857_i16 : i16
        %280 = vector.maskedload %alloc[%c3], %78, %78 : memref<13xi1>, vector<13xi1>, vector<13xi1> into vector<13xi1>
        %281 = math.ceil %7 : tensor<7x7xf16>
        %282 = vector.broadcast %cst_2 : f32 to vector<f32>
        vector.transfer_write %282, %alloc_15[%c4] : vector<f32>, memref<13xf32>
        %283 = tensor.empty() : tensor<7x10xi64>
        %284 = arith.maxf %27, %27 : f16
        %285 = vector.reduction <maxf>, %40 : vector<7xf16> into f16
        %inserted_49 = tensor.insert %extracted_27 into %3[%c1, %c2] : tensor<7x7xf32>
        %286 = arith.remf %cst, %cst : f16
        %287 = vector.extract_strided_slice %26 {offsets = [0], sizes = [6], strides = [1]} : vector<7x7xf32> to vector<6x7xf32>
        %288 = vector.broadcast %c833_i16 : i16 to vector<10xi16>
        %289 = vector.broadcast %159 : i1 to vector<10xi1>
        %290 = vector.maskedload %alloc_6[%c2, %c6], %289, %288 : memref<7x7xi16>, vector<10xi1>, vector<10xi16> into vector<10xi16>
        %alloca_50 = memref.alloca() : memref<7x7xi32>
        %291 = arith.maxf %extracted_27, %cst_2 : f32
        %292 = vector.insert %43, %146 [5] : vector<7xf32> into vector<7x7xf32>
        %293 = arith.maxf %169, %cst_0 : f32
        %294 = vector.broadcast %true_3 : i1 to vector<7x7xi1>
        scf.yield %294 : vector<7x7xi1>
      }
      %275 = index.castu %85 : index to i32
      %276 = arith.remui %c364683931_i32, %c542052749_i32 : i32
      %277 = arith.maxf %27, %cst_1 : f16
      affine.yield %true_3 : i1
    }
    %177 = math.atan %2 : tensor<7x7xf32>
    affine.for %arg2 = 0 to 41 {
    }
    %178 = vector.load %alloc_10[%c1] : memref<13xi1>, vector<7x10xi1>
    %179 = vector.broadcast %c-12652_i16 : i16 to vector<7xi16>
    %180 = vector.broadcast %false : i1 to vector<7xi1>
    %181 = vector.maskedload %alloc_18[%c0], %180, %179 : memref<13xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
    %182 = arith.minsi %c833_i16, %c-24023_i16 : i16
    %183 = tensor.empty() : tensor<7x7xi32>
    %184 = math.fpowi %3, %183 : tensor<7x7xf32>, tensor<7x7xi32>
    %185 = arith.shrui %c20857_i16, %c-12652_i16 : i16
    %rank_33 = tensor.rank %183 : tensor<7x7xi32>
    %186 = math.sqrt %11 : tensor<13xf32>
    %187 = index.add %c15, %c7
    %inserted_34 = tensor.insert %c542052749_i32 into %10[%c1, %c8] : tensor<7x10xi32>
    %188 = index.floordivs %141, %c14
    %189 = math.cos %cst_0 : f32
    %190 = math.ctlz %1 : tensor<7x10xi1>
    %191 = arith.remf %27, %cst_1 : f16
    %192 = arith.remf %27, %cst : f16
    affine.for %arg2 = 0 to 14 {
    }
    %193 = arith.remui %c833_i16, %c-12652_i16 : i16
    %194 = arith.minui %c20857_i16, %c-24023_i16 : i16
    %195 = math.log %8 : tensor<7x7xf16>
    %196 = affine.apply affine_map<(d0) -> ((d0 * -2) ceildiv 4 - 128)>(%rank)
    %197 = arith.minui %c1945706630_i64, %extracted_32 : i64
    %198 = affine.apply affine_map<(d0) -> (d0 * 2)>(%c0)
    %199 = vector.broadcast %c20857_i16 : i16 to vector<7x7xi16>
    %from_elements_35 = tensor.from_elements %cst, %27, %27, %cst, %cst, %27, %27, %27, %cst_1, %cst_1, %cst_1, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst, %27, %27, %cst, %cst_1, %27, %cst_1, %cst_1, %cst, %27, %27, %cst_1, %cst, %27, %cst_1, %cst_1, %27, %27, %cst, %cst, %cst_1, %cst, %cst_1, %cst, %27, %cst, %cst_1, %cst_1, %cst, %cst_1, %cst, %cst : tensor<7x7xf16>
    %inserted_36 = tensor.insert %c1556520059_i32 into %183[%c1, %c1] : tensor<7x7xi32>
    %200 = memref.load %alloc_14[%c5, %c1] : memref<7x7xi64>
    %201 = arith.mulf %extracted_27, %cst_2 : f32
    %202 = vector.extract_strided_slice %25 {offsets = [5], sizes = [1], strides = [1]} : vector<7x7xf32> to vector<1x7xf32>
    %203 = arith.divf %extracted_27, %169 : f32
    %204 = index.casts %c858955577_i64 : i64 to index
    %205 = math.round %14 : tensor<7x10xf16>
    %206 = index.sub %c11, %rank_33
    %207 = vector.broadcast %c1 : index to vector<1xindex>
    %208 = vector.broadcast %true_29 : i1 to vector<1xi1>
    %209 = vector.broadcast %cst_2 : f32 to vector<1xf32>
    vector.scatter %alloc_16[%c0, %c6] [%207], %208, %209 : memref<7x7xf32>, vector<1xindex>, vector<1xi1>, vector<1xf32>
    %210 = vector.broadcast %c1 : index to vector<10xindex>
    %211 = vector.broadcast %false_26 : i1 to vector<10xi1>
    %212 = vector.broadcast %169 : f32 to vector<10xf32>
    vector.scatter %alloc_19[%c5] [%210], %211, %212 : memref<13xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
    memref.store %false, %alloc[%c6] : memref<13xi1>
    %213 = index.castu %true : i1 to index
    %214 = index.sub %c13, %187
    %215 = arith.shrsi %true_29, %true_3 : i1
    %216 = math.log %2 : tensor<7x7xf32>
    bufferization.dealloc_tensor %2 : tensor<7x7xf32>
    %217 = math.log %27 : f16
    %218 = tensor.empty() : tensor<7x10xi1>
    %mapped_37 = linalg.map ins(%12 : tensor<7x10xi1>) outs(%218 : tensor<7x10xi1>)
      (%in: i1) {
        %272 = arith.remf %169, %cst_0 : f32
        %273 = vector.reduction <maxui>, %79 : vector<13xi16> into i16
        %274 = arith.shrui %true_3, %159 : i1
        %alloca_48 = memref.alloca() : memref<7x7xi64>
        %cast_49 = tensor.cast %144 : tensor<13xf32> to tensor<?xf32>
        %275 = vector.load %alloc_8[%c2, %c1] : memref<7x7xf16>, vector<13xf16>
        %276 = arith.remui %true, %false_26 : i1
        %277 = arith.addi %c20857_i16, %c-12652_i16 : i16
        %278 = arith.minui %extracted, %c1945706630_i64 : i64
        %279 = tensor.empty() : tensor<7x1xf32>
        %280 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%279 : tensor<7x1xf32>) outs(%expanded : tensor<7x7x1xf32>) {
        ^bb0(%in_54: f32, %out: f32):
          %301 = vector.transpose %180, [0] : vector<7xi1> to vector<7xi1>
          %302 = index.castu %c858955577_i64 : i64 to index
          %303 = affine.load %alloc_20[%c4] : memref<7xf16>
          %304 = vector.broadcast %true_3 : i1 to vector<i1>
          vector.transfer_write %304, %alloc_12[%c1] : vector<i1>, memref<13xi1>
          %305 = arith.divui %c833_i16, %c833_i16 : i16
          %306 = vector.splat %in : vector<7x7xi1>
          %307 = arith.divui %true, %true : i1
          memref.assume_alignment %alloc_17, 4 : memref<7x10xi64>
          %cst_55 = arith.constant 1.000000e+00 : f16
          %308 = vector.transfer_read %7[%60, %c12], %cst_55 : tensor<7x7xf16>, vector<f16>
          %309 = math.powf %8, %7 : tensor<7x7xf16>
          %310 = math.ipowi %5, %5 : tensor<13xi32>
          %311 = index.sizeof
          %312 = vector.broadcast %c542052749_i32 : i32 to vector<7x7xi32>
          %313 = vector.broadcast %false_26 : i1 to vector<7x7xi1>
          %314 = vector.gather %10[%302, %c9] [%312], %313, %312 : tensor<7x10xi32>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xi32> into vector<7x7xi32>
          %315 = arith.maxf %cst_2, %extracted_27 : f32
          %316 = math.tanh %64 : tensor<7xf16>
          %317 = vector.broadcast %c7 : index to vector<13xindex>
          vector.scatter %alloc_8[%c2, %c0] [%317], %135, %275 : memref<7x7xf16>, vector<13xindex>, vector<13xi1>, vector<13xf16>
          %318 = arith.cmpf ule, %cst_1, %cst_55 : f16
          %319 = vector.multi_reduction <mul>, %25, %173 [] : vector<7x7xf32> to vector<7x7xf32>
          %from_elements_56 = tensor.from_elements %out, %in_54, %extracted_27, %cst_0, %extracted_27, %extracted_27, %cst_2, %in_54, %extracted_27, %cst_0, %out, %out, %in_54 : tensor<13xf32>
          %320 = vector.bitcast %105 : vector<13xf16> to vector<13xi16>
          %321 = vector.reduction <add>, %105 : vector<13xf16> into f16
          %322 = arith.maxsi %c-24023_i16, %c20857_i16 : i16
          %alloc_57 = memref.alloc() : memref<7x7xi1>
          %323 = affine.load %alloc_11[%c12, %c6] : memref<7x7xi64>
          %324 = arith.divui %c-24023_i16, %c-12652_i16 : i16
          %325 = math.log1p %cst_0 : f32
          %326 = arith.addi %159, %in : i1
          %327 = arith.remsi %159, %159 : i1
          %328 = vector.insert %43, %26 [4] : vector<7xf32> into vector<7x7xf32>
          %329 = vector.transpose %171, [1, 0] : vector<2x7xf32> to vector<7x2xf32>
          %330 = arith.addf %303, %cst_1 : f16
          %331 = vector.broadcast %in : i1 to vector<7x7xi1>
          linalg.yield %extracted_27 : f32
        } -> tensor<7x7x1xf32>
        %281 = arith.addi %c858955577_i64, %c858955577_i64 : i64
        %expanded_50 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<7x7xf32> into tensor<7x7x1xf32>
        %282 = arith.mulf %169, %cst_2 : f32
        %283 = affine.for %arg2 = 0 to 1 iter_args(%arg3 = %169) -> (f32) {
          affine.yield %extracted_27 : f32
        }
        %284 = arith.maxui %true, %159 : i1
        %285 = vector.flat_transpose %40 {columns = 7 : i32, rows = 1 : i32} : vector<7xf16> -> vector<7xf16>
        %286 = scf.while (%arg2 = %alloc_16) : (memref<7x7xf32>) -> memref<7x7xf32> {
          %301 = vector.broadcast %188 : index to vector<10xindex>
          %302 = vector.broadcast %false_26 : i1 to vector<10xi1>
          vector.scatter %alloc_10[%c6] [%301], %302, %302 : memref<13xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
          %303 = vector.broadcast %187 : index to vector<13xindex>
          vector.scatter %alloc[%c7] [%303], %78, %135 : memref<13xi1>, vector<13xindex>, vector<13xi1>, vector<13xi1>
          %304 = vector.splat %c-24023_i16 : vector<7x7xi16>
          %305 = vector.bitcast %275 : vector<13xf16> to vector<13xf16>
          %306 = arith.minui %true, %false : i1
          %307 = memref.load %alloc_14[%c0, %c6] : memref<7x7xi64>
          %308 = math.log %cst_2 : f32
          %extracted_54 = tensor.extract %11[%c7] : tensor<13xf32>
          scf.condition(%159) %arg2 : memref<7x7xf32>
        } do {
        ^bb0(%arg2: memref<7x7xf32>):
          %301 = index.castu %in : i1 to index
          %302 = vector.splat %104 : vector<7x10xindex>
          memref.assume_alignment %alloc_9, 1 : memref<7x10xf32>
          %inserted_54 = tensor.insert %169 into %144[%c1] : tensor<13xf32>
          %303 = index.castu %196 : index to i32
          %304 = math.absf %6 : tensor<13xf32>
          %305 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %179, %179, %c833_i16 : vector<7xi16>, vector<7xi16> into i16
          %306 = arith.muli %c1945706630_i64, %extracted : i64
          %true_55 = index.bool.constant true
          %307 = math.atan %134 : tensor<7x7xf16>
          %308 = vector.broadcast %cst_0 : f32 to vector<7x7xf32>
          %309 = arith.muli %in, %in : i1
          %310 = arith.minui %c858955577_i64, %extracted : i64
          %311 = math.expm1 %11 : tensor<13xf32>
          %312 = arith.addi %c364683931_i32, %c881582375_i32 : i32
          %313 = math.log1p %cst : f16
          scf.yield %arg2 : memref<7x7xf32>
        }
        %287 = vector.broadcast %cst_0 : f32 to vector<f32>
        %288 = vector.transfer_write %287, %13[%c5, %128] : vector<f32>, tensor<7x10xf32>
        %289 = math.round %cst_2 : f32
        %290 = arith.minsi %c20857_i16, %c20857_i16 : i16
        %291 = index.mul %c6, %188
        %292 = vector.multi_reduction <maxsi>, %78, %135 [] : vector<13xi1> to vector<13xi1>
        %293 = vector.flat_transpose %181 {columns = 7 : i32, rows = 1 : i32} : vector<7xi16> -> vector<7xi16>
        %294 = memref.load %alloc_20[%c0] : memref<7xf16>
        %295 = arith.minsi %c1556520059_i32, %c542052749_i32 : i32
        %296 = arith.minui %c20857_i16, %c20857_i16 : i16
        %c15714_i16 = arith.constant 15714 : i16
        %297 = arith.shrui %159, %false_26 : i1
        %298 = math.ipowi %c364683931_i32, %c542052749_i32 : i32
        %299 = tensor.empty() : tensor<7xf16>
        %mapped_51 = linalg.map ins(%alloc_20 : memref<7xf16>) outs(%299 : tensor<7xf16>)
          (%in_54: f16) {
            %301 = index.casts %86 : index to i32
            %302 = index.mul %107, %108
            %303 = math.round %27 : f16
            %304 = vector.broadcast %c542052749_i32 : i32 to vector<10xi32>
            %305 = vector.broadcast %false_26 : i1 to vector<10xi1>
            %306 = vector.maskedload %alloc_4[%c1, %c2], %305, %304 : memref<7x7xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
            %307 = affine.apply affine_map<(d0, d1) -> (d1 * -64)>(%rank_33, %108)
            %308 = math.log1p %299 : tensor<7xf16>
            %309 = vector.load %alloc_7[%c1, %c4] : memref<7x10xi64>, vector<7x7xi64>
            %alloc_55 = memref.alloc() : memref<7x7xi64>
            %310 = vector.broadcast %cst_2 : f32 to vector<7x7xf32>
            %311 = vector.fma %310, %25, %25 : vector<7x7xf32>
            %312 = vector.multi_reduction <minsi>, %304, %c364683931_i32 [0] : vector<10xi32> to i32
            %313 = arith.shrui %extracted, %c858955577_i64 : i64
            %314 = index.maxs %130, %188
            %315 = vector.extract_strided_slice %105 {offsets = [7], sizes = [3], strides = [1]} : vector<13xf16> to vector<3xf16>
            %c0_i64 = arith.constant 0 : i64
            %316 = vector.transfer_read %0[%188], %c0_i64 : tensor<13xi64>, vector<i64>
            memref.assume_alignment %alloc_10, 4 : memref<13xi1>
            %317 = index.castu %c15 : index to i32
            %318 = arith.maxf %cst_1, %cst : f16
            %cst_56 = arith.constant 1.000000e+00 : f32
            %319 = vector.transfer_read %13[%291, %c9], %cst_56 : tensor<7x10xf32>, vector<f32>
            %320 = vector.extract_strided_slice %202 {offsets = [0], sizes = [1], strides = [1]} : vector<1x7xf32> to vector<1x7xf32>
            %321 = vector.splat %169 : vector<7x7xf32>
            %322 = arith.minui %c20857_i16, %c20857_i16 : i16
            memref.assume_alignment %alloc_8, 1 : memref<7x7xf16>
            %323 = math.log10 %6 : tensor<13xf32>
            %324 = math.atan %144 : tensor<13xf32>
            %325 = arith.cmpf olt, %cst, %cst : f16
            %326 = math.atan %2 : tensor<7x7xf32>
            %327 = arith.remui %c0_i64, %extracted : i64
            %328 = arith.remf %27, %cst_1 : f16
            %329 = arith.divsi %c20857_i16, %c-24023_i16 : i16
            %330 = vector.broadcast %c20857_i16 : i16 to vector<13xi16>
            %331 = math.log10 %8 : tensor<7x7xf16>
            %332 = vector.insert %43, %171 [0] : vector<7xf32> into vector<2x7xf32>
            %cst_57 = arith.constant 1.000000e+00 : f16
            linalg.yield %cst_57 : f16
          }
        %rank_52 = tensor.rank %5 : tensor<13xi32>
        %300 = index.sizeof
        %false_53 = arith.constant false
        linalg.yield %false_53 : i1
      }
    %219 = vector.create_mask %60, %117 : vector<7x10xi1>
    %220 = memref.atomic_rmw assign %extracted, %alloc_17[%c3, %c8] : (i64, memref<7x10xi64>) -> i64
    %221 = affine.for %arg2 = 0 to 1 iter_args(%arg3 = %true) -> (i1) {
      affine.yield %arg3 : i1
    }
    %222 = math.powf %expanded, %expanded : tensor<7x7x1xf32>
    %223 = arith.maxf %27, %cst : f16
    %224 = affine.if affine_set<(d0) : ((d0 floordiv 128) ceildiv 128 >= 0)>(%c4) -> memref<7x7xi1> {
      %cst_48 = arith.constant 3.795200e+04 : f16
      %272 = vector.flat_transpose %79 {columns = 13 : i32, rows = 1 : i32} : vector<13xi16> -> vector<13xi16>
      %273 = math.ctlz %9 : tensor<7x10xi64>
      %c1_i64 = arith.constant 1 : i64
      %c0_i64 = arith.constant 0 : i64
      %274 = vector.transfer_read %55[%130, %85], %c0_i64 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<7x10xi64>, vector<1xi64>
      %cst_49 = arith.constant 1.000000e+00 : f32
      %275 = vector.transfer_read %11[%c3], %cst_49 : tensor<13xf32>, vector<f32>
      %276 = index.sizeof
      affine.store %extracted_32, %alloc_21[%c8] : memref<13xi64>
      %277 = memref.realloc %alloc_12 : memref<13xi1> to memref<1xi1>
      %alloc_50 = memref.alloc() : memref<7x7xi1>
      affine.yield %alloc_50 : memref<7x7xi1>
    } else {
      %272 = vector.shuffle %118, %26 [1, 2, 4, 6, 8, 10, 11, 12, 13] : vector<7x7xf32>, vector<7x7xf32>
      %273 = math.ctlz %5 : tensor<13xi32>
      %alloc_48 = memref.alloc() : memref<13xi64>
      %274 = index.add %c6, %rank_33
      %275 = arith.minui %c-12652_i16, %c-24023_i16 : i16
      %276 = math.exp %64 : tensor<7xf16>
      %277 = arith.andi %true_3, %false : i1
      %278 = math.ipowi %21, %20 : tensor<i64>
      %alloc_49 = memref.alloc() : memref<7x7xi1>
      affine.yield %alloc_49 : memref<7x7xi1>
    }
    %225 = math.ipowi %c1945706630_i64, %extracted : i64
    %226 = math.ctpop %c364683931_i32 : i32
    %227 = arith.divsi %false, %true : i1
    %alloca_38 = memref.alloca() : memref<7x7xf32>
    %228 = memref.load %alloc_19[%c4] : memref<13xf32>
    %229 = arith.mulf %cst, %cst_1 : f16
    %230 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded : tensor<7x7x1xf32>) {
    ^bb0(%out: f32):
      %272 = arith.muli %false_26, %true_29 : i1
      memref.store %c1945706630_i64, %alloc_17[%c1, %c9] : memref<7x10xi64>
      %273 = vector.insert %c20857_i16, %22 [4] : i16 into vector<13xi16>
      %274 = memref.load %alloc_4[%c4, %c1] : memref<7x7xi32>
      %275 = scf.while (%arg2 = %alloc_20) : (memref<7xf16>) -> memref<7xf16> {
        %299 = arith.muli %true_29, %true_3 : i1
        %300 = arith.maxf %out, %169 : f32
        %301 = math.powf %13, %13 : tensor<7x10xf32>
        %302 = arith.divui %c881582375_i32, %c881582375_i32 : i32
        %303 = vector.multi_reduction <mul>, %199, %199 [] : vector<7x7xi16> to vector<7x7xi16>
        memref.copy %alloc_20, %arg2 : memref<7xf16> to memref<7xf16>
        %304 = vector.broadcast %c20857_i16 : i16 to vector<13xi16>
        %305 = arith.maxui %c1945706630_i64, %c1945706630_i64 : i64
        scf.condition(%false) %alloc_20 : memref<7xf16>
      } do {
      ^bb0(%arg2: memref<7xf16>):
        %299 = math.expm1 %169 : f32
        %cast_54 = tensor.cast %11 : tensor<13xf32> to tensor<?xf32>
        %300 = index.add %c2, %c14
        %301 = arith.shrui %c364683931_i32, %c542052749_i32 : i32
        %302 = vector.broadcast %extracted_32 : i64 to vector<1xi64>
        %303 = vector.broadcast %true : i1 to vector<1xi1>
        %304 = vector.maskedload %alloc_11[%c5, %c2], %303, %302 : memref<7x7xi64>, vector<1xi1>, vector<1xi64> into vector<1xi64>
        %305 = math.exp2 %13 : tensor<7x10xf32>
        %306 = vector.bitcast %181 : vector<7xi16> to vector<7xi16>
        %307 = vector.broadcast %169 : f32 to vector<f32>
        vector.transfer_write %307, %alloc_16[%86, %107] : vector<f32>, memref<7x7xf32>
        %308 = math.log1p %2 : tensor<7x7xf32>
        %309 = vector.load %alloc_15[%c0] : memref<13xf32>, vector<7x7xf32>
        %310 = arith.minui %true_3, %false : i1
        %311 = arith.maxsi %c881582375_i32, %c542052749_i32 : i32
        %312 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %118, %43, %43 : vector<7x7xf32>, vector<7xf32> into vector<7xf32>
        %313 = arith.remsi %c1556520059_i32, %c542052749_i32 : i32
        %314 = vector.broadcast %extracted_32 : i64 to vector<13xi64>
        %315 = vector.maskedload %alloc_17[%c6, %c2], %78, %314 : memref<7x10xi64>, vector<13xi1>, vector<13xi64> into vector<13xi64>
        %316 = math.log1p %3 : tensor<7x7xf32>
        scf.yield %alloc_20 : memref<7xf16>
      }
      %276 = math.roundeven %134 : tensor<7x7xf16>
      %277 = math.cos %8 : tensor<7x7xf16>
      %278 = index.mul %60, %128
      %inserted_48 = tensor.insert %extracted_27 into %6[%c0] : tensor<13xf32>
      %cast_49 = tensor.cast %13 : tensor<7x10xf32> to tensor<?x?xf32>
      %279 = index.add %204, %85
      %from_elements_50 = tensor.from_elements %c-12652_i16, %c833_i16, %c-24023_i16, %c833_i16, %c833_i16, %c-24023_i16, %c-24023_i16, %c-12652_i16, %c-24023_i16, %c833_i16, %c833_i16, %c833_i16, %c-24023_i16, %c-24023_i16, %c-12652_i16, %c-24023_i16, %c20857_i16, %c-24023_i16, %c20857_i16, %c833_i16, %c-24023_i16, %c20857_i16, %c-24023_i16, %c833_i16, %c20857_i16, %c-12652_i16, %c833_i16, %c833_i16, %c833_i16, %c-24023_i16, %c-24023_i16, %c-24023_i16, %c833_i16, %c-12652_i16, %c833_i16, %c-24023_i16, %c833_i16, %c833_i16, %c-24023_i16, %c833_i16, %c833_i16, %c-24023_i16, %c20857_i16, %c-12652_i16, %c20857_i16, %c20857_i16, %c20857_i16, %c-12652_i16, %c-12652_i16 : tensor<7x7xi16>
      %280 = arith.muli %c-12652_i16, %c-24023_i16 : i16
      %281 = vector.flat_transpose %180 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
      %282 = arith.remui %c1556520059_i32, %c1556520059_i32 : i32
      %283 = vector.broadcast %130 : index to vector<7xindex>
      %284 = vector.broadcast %extracted_32 : i64 to vector<7xi64>
      vector.scatter %alloc_11[%c1, %c0] [%283], %180, %284 : memref<7x7xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
      %285 = math.ipowi %9, %55 : tensor<7x10xi64>
      %286 = vector.shuffle %43, %43 [0, 1, 2, 3, 7, 10, 13] : vector<7xf32>, vector<7xf32>
      %287 = arith.minui %false, %false_26 : i1
      %288 = arith.muli %true, %false : i1
      %289 = arith.cmpi eq, %c-24023_i16, %c-24023_i16 : i16
      %extracted_51 = tensor.extract %11[%c2] : tensor<13xf32>
      %290 = vector.broadcast %136 : index to vector<1xindex>
      %291 = vector.broadcast %true_3 : i1 to vector<1xi1>
      vector.scatter %alloc[%c12] [%290], %291, %291 : memref<13xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
      %292 = arith.shrui %c-12652_i16, %c20857_i16 : i16
      %extracted_52 = tensor.extract %0[%c7] : tensor<13xi64>
      %293 = arith.cmpf uno, %169, %extracted_27 : f32
      %294 = index.add %117, %c10
      %295 = arith.remf %cst_2, %extracted_51 : f32
      %296 = arith.addf %cst_1, %cst : f16
      %extracted_53 = tensor.extract %11[%c0] : tensor<13xf32>
      %297 = arith.mulf %cst_2, %cst_2 : f32
      %298 = affine.apply affine_map<(d0, d1) -> (0)>(%rank, %198)
      linalg.yield %cst_0 : f32
    } -> tensor<7x7x1xf32>
    %231 = arith.cmpi sgt, %c542052749_i32, %c542052749_i32 : i32
    %232 = vector.broadcast %true : i1 to vector<7x7xi1>
    %233 = vector.broadcast %c364683931_i32 : i32 to vector<7x7xi32>
    %234 = vector.gather %alloc_18[%204] [%233], %232, %199 : memref<13xi16>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xi16> into vector<7x7xi16>
    %alloc_39 = memref.alloc() : memref<7x7xi32>
    %235 = memref.atomic_rmw mins %c-24023_i16, %alloc_6[%c2, %c1] : (i16, memref<7x7xi16>) -> i16
    %236 = math.fpowi %4, %10 : tensor<7x10xf32>, tensor<7x10xi32>
    %237 = arith.muli %c-12652_i16, %c833_i16 : i16
    %238 = vector.insert %c20857_i16, %22 [8] : i16 into vector<13xi16>
    %239 = math.copysign %4, %13 : tensor<7x10xf32>
    %240 = index.sub %117, %136
    %241 = arith.remsi %c364683931_i32, %c1556520059_i32 : i32
    %242 = arith.addi %false, %false_26 : i1
    %243 = vector.multi_reduction <minf>, %118, %43 [1] : vector<7x7xf32> to vector<7xf32>
    %244 = index.casts %198 : index to i32
    %245 = vector.load %alloc_19[%c3] : memref<13xf32>, vector<7x7xf32>
    %246 = math.cttz %1 : tensor<7x10xi1>
    %false_40 = index.bool.constant false
    %247 = math.atan %7 : tensor<7x7xf16>
    %248 = memref.realloc %alloc_5 : memref<13xf32> to memref<10xf32>
    %rank_41 = tensor.rank %5 : tensor<13xi32>
    %249 = math.atan %14 : tensor<7x10xf16>
    %250 = math.ipowi %extracted_32, %c1945706630_i64 : i64
    %251 = math.log10 %cst_0 : f32
    %alloc_42 = memref.alloc() : memref<7x10xi16>
    %252 = vector.broadcast %c881582375_i32 : i32 to vector<13xi32>
    %253 = vector.gather %alloc_42[%104, %c5] [%252], %78, %22 : memref<7x10xi16>, vector<13xi32>, vector<13xi1>, vector<13xi16> into vector<13xi16>
    %alloc_43 = memref.alloc() : memref<7xf32>
    %alloc_44 = memref.alloc() : memref<1x7xf32>
    %254 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_43, %alloc_43, %alloc_44 : memref<7xf32>, memref<7xf32>, memref<1x7xf32>) outs(%expanded : tensor<7x7x1xf32>) {
    ^bb0(%in: f32, %in_48: f32, %in_49: f32, %out: f32):
      %272 = math.ctpop %c364683931_i32 : i32
      %273 = memref.load %alloc_5[%c2] : memref<13xf32>
      %extracted_50 = tensor.extract %12[%c1, %c4] : tensor<7x10xi1>
      %true_51 = index.bool.constant true
      %274 = math.sqrt %7 : tensor<7x7xf16>
      %false_52 = index.bool.constant false
      memref.store %cst_1, %alloc_20[%c3] : memref<7xf16>
      %275 = math.sqrt %13 : tensor<7x10xf32>
      %276 = arith.remf %in_49, %169 : f32
      %277 = index.casts %117 : index to i32
      %cst_53 = arith.constant 1.000000e+00 : f32
      %cst_54 = arith.constant 0.000000e+00 : f32
      %278 = vector.transfer_read %alloc_15[%214], %cst_54 : memref<13xf32>, vector<f32>
      %extracted_55 = tensor.extract %14[%c2, %c1] : tensor<7x10xf16>
      %279 = affine.min affine_map<(d0, d1) -> (d0 - 32, -(d1 + d0 - d1), (d0 + 16) mod 32)>(%c14, %136)
      %280 = arith.cmpf ule, %in, %in_48 : f32
      %281 = index.sub %213, %187
      memref.assume_alignment %alloc_42, 8 : memref<7x10xi16>
      %282 = math.log2 %2 : tensor<7x7xf32>
      %283 = memref.load %alloc_9[%c0, %c8] : memref<7x10xf32>
      %284 = math.powf %extracted_27, %cst_0 : f32
      %285 = index.casts %128 : index to i32
      %cst_56 = arith.constant 1.000000e+00 : f16
      %cst_57 = arith.constant 0.000000e+00 : f16
      %286 = vector.transfer_read %from_elements_35[%c15, %107], %cst_57 : tensor<7x7xf16>, vector<f16>
      %287 = math.tan %cst_56 : f16
      %288 = vector.reduction <minsi>, %135 : vector<13xi1> into i1
      %289 = vector.broadcast %c1945706630_i64 : i64 to vector<13xi64>
      vector.transfer_write %289, %alloc_13[%196, %60] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<13xi64>, memref<7x7xi64>
      %290 = vector.maskedload %alloc_15[%c0], %180, %43 : memref<13xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
      %291 = affine.load %alloc_10[%c9] : memref<13xi1>
      %292 = arith.shrui %true_51, %false_40 : i1
      %293 = index.floordivs %108, %c12
      %alloca_58 = memref.alloca() : memref<7x10xi1>
      %294 = arith.remf %cst_53, %in_48 : f32
      %alloc_59 = memref.alloc() : memref<13xf32>
      %295 = index.divu %104, %214
      linalg.yield %out : f32
    } -> tensor<7x7x1xf32>
    %255 = vector.broadcast %136 : index to vector<10xindex>
    %256 = vector.broadcast %false_40 : i1 to vector<10xi1>
    %257 = vector.broadcast %c881582375_i32 : i32 to vector<10xi32>
    vector.scatter %alloc_4[%c4, %c1] [%255], %256, %257 : memref<7x7xi32>, vector<10xindex>, vector<10xi1>, vector<10xi32>
    %258 = arith.maxsi %c1556520059_i32, %c881582375_i32 : i32
    %259 = arith.minsi %c-24023_i16, %c833_i16 : i16
    %260 = vector.insert %43, %146 [5] : vector<7xf32> into vector<7x7xf32>
    %261 = vector.broadcast %c858955577_i64 : i64 to vector<7x7xi64>
    %262 = math.fpowi %27, %c542052749_i32 : f16, i32
    %false_45 = index.bool.constant false
    %263 = arith.cmpi ult, %c1945706630_i64, %c858955577_i64 : i64
    %264 = vector.broadcast %extracted_27 : f32 to vector<7x7xf32>
    %265 = vector.fma %264, %118, %264 : vector<7x7xf32>
    scf.execute_region {
      %expanded_48 = tensor.expand_shape %0 [[0, 1]] : tensor<13xi64> into tensor<13x1xi64>
      %272 = index.castu %c881582375_i32 : i32 to index
      %273 = arith.minui %false, %true_3 : i1
      %extracted_49 = tensor.extract %166[%c5, %c8] : tensor<7x10xi1>
      %c1_i64 = arith.constant 1 : i64
      %c0_i64 = arith.constant 0 : i64
      %274 = vector.transfer_read %55[%60, %c13], %c0_i64 : tensor<7x10xi64>, vector<i64>
      %275 = memref.load %alloc_9[%c2, %c3] : memref<7x10xf32>
      %276 = tensor.empty() : tensor<1x7xf32>
      %277 = tensor.empty() : tensor<7xf32>
      %278 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%276, %277, %277 : tensor<1x7xf32>, tensor<7xf32>, tensor<7xf32>) outs(%expanded : tensor<7x7x1xf32>) {
      ^bb0(%in: f32, %in_52: f32, %in_53: f32, %out: f32):
        %286 = vector.extract_strided_slice %19 {offsets = [1], sizes = [1], strides = [1]} : vector<13xi16> to vector<1xi16>
        %287 = arith.maxsi %c1_i64, %extracted : i64
        %288 = affine.max affine_map<(d0, d1, d2, d3) -> ((d0 mod 2) ceildiv 2, d2 floordiv 64 + 8, (d2 ceildiv 32) * 4)>(%c5, %rank_41, %141, %130)
        %289 = vector.create_mask %c3, %130 : vector<7x7xi1>
        %290 = math.atan %8 : tensor<7x7xf16>
        %291 = arith.ceildivsi %false, %false_40 : i1
        %292 = arith.minsi %false_40, %159 : i1
        %293 = affine.max affine_map<(d0) -> (((d0 * 127) mod 16) * 128, d0 * 128, d0 * 8000)>(%c12)
        %294 = math.powf %4, %4 : tensor<7x10xf32>
        %alloc_54 = memref.alloc() : memref<7x7xi32>
        %295 = math.atan %17 : tensor<7x7xf32>
        %296 = math.ipowi %true_29, %false_26 : i1
        %297 = math.copysign %3, %16 : tensor<7x7xf32>
        %true_55 = arith.constant true
        %false_56 = arith.constant false
        %298 = vector.transfer_read %alloc_12[%188], %false_56 : memref<13xi1>, vector<i1>
        %299 = math.ceil %64 : tensor<7xf16>
        %300 = arith.cmpf ueq, %extracted_27, %cst_2 : f32
        %301 = math.expm1 %134 : tensor<7x7xf16>
        %302 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %253, %19, %c-24023_i16 : vector<13xi16>, vector<13xi16> into i16
        %303 = vector.splat %in_52 : vector<13xf32>
        %rank_57 = tensor.rank %15 : tensor<7x7xi64>
        %304 = math.powf %13, %4 : tensor<7x10xf32>
        %305 = arith.maxf %extracted_27, %in_53 : f32
        %306 = math.sqrt %3 : tensor<7x7xf32>
        %307 = index.castu %true : i1 to index
        %308 = math.round %14 : tensor<7x10xf16>
        %309 = vector.transpose %234, [1, 0] : vector<7x7xi16> to vector<7x7xi16>
        %310 = vector.splat %169 : vector<7x10xf32>
        %311 = math.cttz %12 : tensor<7x10xi1>
        %312 = math.absf %134 : tensor<7x7xf16>
        %313 = vector.insert %180, %289 [4] : vector<7xi1> into vector<7x7xi1>
        %314 = math.fpowi %in_52, %c364683931_i32 : f32, i32
        %315 = math.absf %13 : tensor<7x10xf32>
        linalg.yield %extracted_27 : f32
      } -> tensor<7x7x1xf32>
      %279 = vector.reduction <add>, %179 : vector<7xi16> into i16
      %280 = index.floordivs %85, %c6
      memref.assume_alignment %alloc_7, 1 : memref<7x10xi64>
      %281 = vector.bitcast %202 : vector<1x7xf32> to vector<1x7xf32>
      %282 = arith.subi %extracted_32, %extracted : i64
      %expanded_50 = tensor.expand_shape %11 [[0, 1]] : tensor<13xf32> into tensor<13x1xf32>
      %false_51 = index.bool.constant false
      %283 = vector.broadcast %169 : f32 to vector<f32>
      %284 = vector.transfer_write %283, %2[%240, %85] : vector<f32>, tensor<7x7xf32>
      %285 = index.ceildivs %c11, %188
      scf.yield
    }
    %alloc_46 = memref.alloc() : memref<7x10xi1>
    %266 = vector.gather %alloc_46[%140, %206] [%233], %232, %232 : memref<7x10xi1>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xi1> into vector<7x7xi1>
    bufferization.dealloc_tensor %166 : tensor<7x10xi1>
    %267 = tensor.empty() : tensor<7x7xf16>
    %268 = linalg.copy ins(%7 : tensor<7x7xf16>) outs(%267 : tensor<7x7xf16>) -> tensor<7x7xf16>
    %269 = tensor.empty() : tensor<1x7x7xf32>
    %transposed = linalg.transpose ins(%expanded : tensor<7x7x1xf32>) outs(%269 : tensor<1x7x7xf32>) permutation = [2, 0, 1] 
    %alloc_47 = memref.alloc() : memref<7xf32>
    linalg.reduce ins(%13 : tensor<7x10xf32>) outs(%alloc_47 : memref<7xf32>) dimensions = [1] 
      (%in: f32, %init: f32) {
        %272 = arith.divsi %true_29, %false_45 : i1
        %273 = math.round %cst_2 : f32
        %274 = math.log2 %64 : tensor<7xf16>
        memref.assume_alignment %alloc_8, 16 : memref<7x7xf16>
        %275 = math.log1p %cst_1 : f16
        %276 = memref.realloc %alloc_19 : memref<13xf32> to memref<1xf32>
        scf.if %true {
          %278 = math.log %expanded : tensor<7x7x1xf32>
          %279 = arith.shrui %c364683931_i32, %c881582375_i32 : i32
          %280 = arith.muli %true_29, %159 : i1
          %281 = vector.insert %43, %202 [0] : vector<7xf32> into vector<1x7xf32>
          %282 = vector.extract %199[3] : vector<7x7xi16>
          %283 = bufferization.to_memref %20 : memref<i64>
          %extracted_49 = tensor.extract %14[%c6, %c0] : tensor<7x10xf16>
          %284 = vector.bitcast %252 : vector<13xi32> to vector<13xi32>
        }
        %277 = arith.divui %c364683931_i32, %c542052749_i32 : i32
        %cst_48 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_48 : f32
      }
    %270 = scf.parallel (%arg2) = (%c1) to (%240) step (%c11) init (%11) -> tensor<13xf32> {
      %272 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 ceildiv 32, d3 mod 32, d1, d0 ceildiv 32 + 4)>(%107, %c2, %136, %204)
      %273 = arith.remf %extracted_27, %cst_0 : f32
      %274 = arith.divsi %c881582375_i32, %c542052749_i32 : i32
      %275 = math.copysign %6, %6 : tensor<13xf32>
      %276 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %26, %26, %264 : vector<7x7xf32>, vector<7x7xf32> into vector<7x7xf32>
      %alloc_48 = memref.alloc() : memref<7x10xi1>
      %alloc_49 = memref.alloc() : memref<7x10xf16>
      %277 = math.atan %11 : tensor<13xf32>
      %278 = math.log %cst_0 : f32
      %279 = arith.divf %27, %cst : f16
      %280 = memref.atomic_rmw addi %extracted, %alloc_7[%c5, %c6] : (i64, memref<7x10xi64>) -> i64
      %281 = vector.maskedload %alloc_10[%c8], %180, %180 : memref<13xi1>, vector<7xi1>, vector<7xi1> into vector<7xi1>
      %282 = vector.extract %146[0] : vector<7x7xf32>
      %rank_50 = tensor.rank %5 : tensor<13xi32>
      %283 = vector.insert %true_29, %78 [11] : i1 into vector<13xi1>
      %284 = affine.if affine_set<(d0, d1, d2) : (((d1 + 16) ceildiv 4) * 128 >= 0, -(d2 - (d1 + 16) ceildiv 4) == 0)>(%c3, %c6, %c7) -> i16 {
        %286 = vector.multi_reduction <and>, %180, %180 [] : vector<7xi1> to vector<7xi1>
        memref.assume_alignment %alloc_14, 2 : memref<7x7xi64>
        %287 = memref.realloc %alloc : memref<13xi1> to memref<1xi1>
        %288 = math.absf %269 : tensor<1x7x7xf32>
        %289 = vector.multi_reduction <and>, %19, %79 [] : vector<13xi16> to vector<13xi16>
        %290 = arith.remsi %false_45, %159 : i1
        %291 = index.divs %c2, %rank_50
        %292 = arith.cmpi ule, %c364683931_i32, %c364683931_i32 : i32
        affine.yield %c833_i16 : i16
      } else {
        %286 = vector.shuffle %79, %181 [0, 3, 5, 6, 7, 9, 10, 11, 12, 14, 19] : vector<13xi16>, vector<7xi16>
        %alloc_51 = memref.alloc() : memref<7x7xf32>
        %287 = arith.ceildivsi %true_3, %false_40 : i1
        %288 = arith.remf %extracted_27, %extracted_27 : f32
        %c1195110995_i64 = arith.constant 1195110995 : i64
        %289 = vector.broadcast %213 : index to vector<1xindex>
        %290 = vector.broadcast %false : i1 to vector<1xi1>
        %291 = vector.broadcast %c-12652_i16 : i16 to vector<1xi16>
        vector.scatter %alloc_42[%c3, %c0] [%289], %290, %291 : memref<7x10xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
        %292 = arith.divsi %c-24023_i16, %c-24023_i16 : i16
        %293 = affine.apply affine_map<(d0) -> (0)>(%196)
        affine.yield %c833_i16 : i16
      }
      %285 = tensor.empty() : tensor<13xf32>
      scf.reduce(%285)  : tensor<13xf32> {
      ^bb0(%arg3: tensor<13xf32>, %arg4: tensor<13xf32>):
        %286 = arith.minui %c858955577_i64, %extracted_32 : i64
        memref.store %extracted_32, %alloc_13[%c6, %c3] : memref<7x7xi64>
        %expanded_51 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<7x10xi64> into tensor<7x10x1xi64>
        %inserted_52 = tensor.insert %169 into %4[%c2, %c6] : tensor<7x10xf32>
        memref.assume_alignment %alloc_21, 1 : memref<13xi64>
        %287 = vector.broadcast %extracted : i64 to vector<13xi64>
        %288 = vector.transfer_write %287, %15[%c15, %c6] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<13xi64>, tensor<7x7xi64>
        %289 = arith.remsi %true_3, %false : i1
        %290 = math.absf %expanded : tensor<7x7x1xf32>
        %291 = tensor.empty() : tensor<13xf32>
        scf.reduce.return %291 : tensor<13xf32>
      }
      scf.yield
    }
    %271 = affine.vector_load %alloc_4[%141, %130] : memref<7x7xi32>, vector<13xi32>
    affine.vector_store %179, %alloc_18[%c11] : memref<13xi16>, vector<7xi16>
    vector.print %19 : vector<13xi16>
    vector.print %22 : vector<13xi16>
    vector.print %25 : vector<7x7xf32>
    vector.print %26 : vector<7x7xf32>
    vector.print %34 : vector<7x7xf16>
    vector.print %40 : vector<7xf16>
    vector.print %43 : vector<7xf32>
    vector.print %78 : vector<13xi1>
    vector.print %79 : vector<13xi16>
    vector.print %105 : vector<13xf16>
    vector.print %118 : vector<7x7xf32>
    vector.print %135 : vector<13xi1>
    vector.print %146 : vector<7x7xf32>
    vector.print %168 : vector<7x7xi64>
    vector.print %171 : vector<2x7xf32>
    vector.print %173 : vector<7x7xf32>
    vector.print %178 : vector<7x10xi1>
    vector.print %179 : vector<7xi16>
    vector.print %180 : vector<7xi1>
    vector.print %181 : vector<7xi16>
    vector.print %199 : vector<7x7xi16>
    vector.print %202 : vector<1x7xf32>
    vector.print %219 : vector<7x10xi1>
    vector.print %232 : vector<7x7xi1>
    vector.print %233 : vector<7x7xi32>
    vector.print %234 : vector<7x7xi16>
    vector.print %245 : vector<7x7xf32>
    vector.print %252 : vector<13xi32>
    vector.print %253 : vector<13xi16>
    vector.print %261 : vector<7x7xi64>
    vector.print %264 : vector<7x7xf32>
    vector.print %265 : vector<7x7xf32>
    vector.print %266 : vector<7x7xi1>
    vector.print %271 : vector<13xi32>
    vector.print %c1945706630_i64 : i64
    vector.print %c1556520059_i32 : i32
    vector.print %cst : f16
    vector.print %c833_i16 : i16
    vector.print %cst_0 : f32
    vector.print %c-24023_i16 : i16
    vector.print %true : i1
    vector.print %c858955577_i64 : i64
    vector.print %cst_1 : f16
    vector.print %cst_2 : f32
    vector.print %true_3 : i1
    vector.print %c364683931_i32 : i32
    vector.print %c20857_i16 : i16
    vector.print %c542052749_i32 : i32
    vector.print %c-12652_i16 : i16
    vector.print %c881582375_i32 : i32
    vector.print %27 : f16
    vector.print %false : i1
    vector.print %extracted : i64
    vector.print %false_26 : i1
    vector.print %extracted_27 : f32
    vector.print %true_29 : i1
    vector.print %extracted_32 : i64
    vector.print %159 : i1
    vector.print %169 : f32
    vector.print %false_40 : i1
    vector.print %false_45 : i1
    return %alloc_46 : memref<7x10xi1>
  }
}
