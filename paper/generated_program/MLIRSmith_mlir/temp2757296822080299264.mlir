module {
  func.func nested @func1(%arg0: index) {
    %c138809055_i64 = arith.constant 138809055 : i64
    %c1821704957_i64 = arith.constant 1821704957 : i64
    %false = arith.constant false
    %c1821740343_i32 = arith.constant 1821740343 : i32
    %cst = arith.constant 3.456000e+04 : f16
    %c1607356696_i64 = arith.constant 1607356696 : i64
    %c84985295_i32 = arith.constant 84985295 : i32
    %c3593_i16 = arith.constant 3593 : i16
    %c751753094_i32 = arith.constant 751753094 : i32
    %cst_0 = arith.constant 0x4E50E5B1 : f32
    %cst_1 = arith.constant 2.374400e+04 : f16
    %c1088885202_i32 = arith.constant 1088885202 : i32
    %c8293_i16 = arith.constant 8293 : i16
    %false_2 = arith.constant false
    %cst_3 = arith.constant 6.246400e+04 : f16
    %true = arith.constant true
    %0 = tensor.empty() : tensor<4x13xf32>
    %1 = tensor.empty() : tensor<4x4xf16>
    %2 = tensor.empty() : tensor<4xf32>
    %3 = tensor.empty() : tensor<4xi1>
    %4 = tensor.empty() : tensor<7x7xf16>
    %5 = tensor.empty() : tensor<7x7xi1>
    %6 = tensor.empty() : tensor<4x4xi64>
    %7 = tensor.empty() : tensor<4xf16>
    %8 = tensor.empty() : tensor<4x13xi16>
    %9 = tensor.empty() : tensor<4xf16>
    %10 = tensor.empty() : tensor<7x7xi64>
    %11 = tensor.empty() : tensor<4xf16>
    %12 = tensor.empty() : tensor<4x4xi32>
    %13 = tensor.empty() : tensor<4xi16>
    %14 = tensor.empty() : tensor<4xf32>
    %15 = tensor.empty() : tensor<4xi1>
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
    %alloc = memref.alloc() : memref<7x7xf32>
    %alloc_4 = memref.alloc() : memref<4xf16>
    %alloc_5 = memref.alloc() : memref<4x4xf16>
    %alloc_6 = memref.alloc() : memref<4xi64>
    %alloc_7 = memref.alloc() : memref<4x4xf16>
    %alloc_8 = memref.alloc() : memref<7x7xi32>
    %alloc_9 = memref.alloc() : memref<4x13xf32>
    %alloc_10 = memref.alloc() : memref<4xf32>
    %alloc_11 = memref.alloc() : memref<4xi32>
    %alloc_12 = memref.alloc() : memref<4xi1>
    %alloc_13 = memref.alloc() : memref<4x4xf16>
    %alloc_14 = memref.alloc() : memref<4x13xf16>
    %alloc_15 = memref.alloc() : memref<4x13xi1>
    %alloc_16 = memref.alloc() : memref<4xi1>
    %alloc_17 = memref.alloc() : memref<4x13xf32>
    %alloc_18 = memref.alloc() : memref<4x13xf16>
    %16 = tensor.empty() : tensor<4x4xf16>
    %17 = linalg.copy ins(%1 : tensor<4x4xf16>) outs(%16 : tensor<4x4xf16>) -> tensor<4x4xf16>
    %18 = tensor.empty() : tensor<7x7xf32>
    %transposed = linalg.transpose ins(%alloc : memref<7x7xf32>) outs(%18 : tensor<7x7xf32>) permutation = [1, 0] 
    %alloc_19 = memref.alloc() : memref<13xi16>
    linalg.reduce ins(%8 : tensor<4x13xi16>) outs(%alloc_19 : memref<13xi16>) dimensions = [0] 
      (%in: i16, %init: i16) {
        %263 = arith.minsi %c1821740343_i32, %c1088885202_i32 : i32
        %264 = math.fpowi %16, %12 : tensor<4x4xf16>, tensor<4x4xi32>
        %alloca_52 = memref.alloca() : memref<4x13xi16>
        memref.store %c1607356696_i64, %alloc_6[%c1] : memref<4xi64>
        %265 = vector.broadcast %c84985295_i32 : i32 to vector<4xi32>
        %266 = vector.matrix_multiply %265, %265 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi32>, vector<4xi32>) -> vector<1xi32>
        %267 = vector.insert %c84985295_i32, %265 [2] : i32 into vector<4xi32>
        %268 = vector.splat %cst_0 : vector<7x7xf32>
        %269 = arith.cmpf oge, %cst_0, %cst_0 : f32
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %19 = scf.parallel (%arg1, %arg2) = (%c5, %c5) to (%c13, %c1) step (%c3, %c10) init (%5) -> tensor<7x7xi1> {
      %263 = arith.addi %c138809055_i64, %c1607356696_i64 : i64
      %264 = math.ctlz %5 : tensor<7x7xi1>
      %265 = arith.minf %cst_3, %cst : f16
      %266 = arith.floordivsi %c1088885202_i32, %c1821740343_i32 : i32
      %267 = vector.broadcast %false_2 : i1 to vector<1xi1>
      %268 = vector.extract %267[0] : vector<1xi1>
      %269 = math.round %18 : tensor<7x7xf32>
      %extracted_52 = tensor.extract %5[%c4, %c6] : tensor<7x7xi1>
      %270 = arith.addi %c1607356696_i64, %c1821704957_i64 : i64
      %271 = arith.cmpf ogt, %cst_1, %cst : f16
      %272 = arith.shli %c1821704957_i64, %c1821704957_i64 : i64
      %273 = index.castu %c1088885202_i32 : i32 to index
      %274 = tensor.empty() : tensor<4xf16>
      %275 = arith.shli %c1088885202_i32, %c751753094_i32 : i32
      %276 = index.ceildivs %c7, %c2
      %277 = arith.ori %c1821740343_i32, %c1821740343_i32 : i32
      %278 = math.log1p %14 : tensor<4xf32>
      %279 = tensor.empty() : tensor<7x7xi1>
      scf.reduce(%279)  : tensor<7x7xi1> {
      ^bb0(%arg3: tensor<7x7xi1>, %arg4: tensor<7x7xi1>):
        %280 = vector.matrix_multiply %267, %267 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
        %281 = index.ceildivs %c1, %arg2
        %282 = arith.shrsi %false, %extracted_52 : i1
        %283 = memref.atomic_rmw minu %c3593_i16, %alloc_19[%c9] : (i16, memref<13xi16>) -> i16
        %cst_53 = arith.constant 1.000000e+00 : f32
        %cst_54 = arith.constant 0.000000e+00 : f32
        %284 = vector.transfer_read %0[%c7, %c8], %cst_54 : tensor<4x13xf32>, vector<f32>
        %extracted_55 = tensor.extract %15[%c2] : tensor<4xi1>
        %285 = vector.broadcast %cst_3 : f16 to vector<4x4xf16>
        %286 = vector.broadcast %extracted_52 : i1 to vector<4x4xi1>
        %287 = vector.broadcast %c84985295_i32 : i32 to vector<4x4xi32>
        %288 = vector.gather %9[%c11] [%287], %286, %285 : tensor<4xf16>, vector<4x4xi32>, vector<4x4xi1>, vector<4x4xf16> into vector<4x4xf16>
        %289 = index.maxs %c6, %c7
        %290 = tensor.empty() : tensor<7x7xi1>
        scf.reduce.return %290 : tensor<7x7xi1>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_17[%c7, %c0] : memref<4x13xf32>, vector<4xf32>
    affine.vector_store %20, %alloc_10[%c0] : memref<4xf32>, vector<4xf32>
    %21 = tensor.empty() : tensor<4xi1>
    %22 = tensor.empty() : tensor<i1>
    %23 = linalg.dot ins(%15, %21 : tensor<4xi1>, tensor<4xi1>) outs(%22 : tensor<i1>) -> tensor<i1>
    %24 = math.log1p %cst_0 : f32
    %25 = vector.broadcast %false : i1 to vector<4xi1>
    %26 = vector.maskedload %alloc_12[%c2], %25, %25 : memref<4xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
    %27 = arith.cmpi ult, %c1607356696_i64, %c138809055_i64 : i64
    memref.store %c84985295_i32, %alloc_8[%c4, %c4] : memref<7x7xi32>
    %alloca = memref.alloca() : memref<7x7xi1>
    %28 = arith.remf %cst_0, %cst_0 : f32
    %29 = arith.muli %c8293_i16, %c8293_i16 : i16
    %30 = scf.execute_region -> tensor<4x13xf32> {
      %263 = index.mul %c2, %c3
      %extracted_52 = tensor.extract %1[%c0, %c3] : tensor<4x4xf16>
      %264 = bufferization.clone %alloc_18 : memref<4x13xf16> to memref<4x13xf16>
      %265 = arith.remsi %c3593_i16, %c3593_i16 : i16
      %266 = arith.shrui %c3593_i16, %c3593_i16 : i16
      %267 = tensor.empty() : tensor<4x4xf16>
      %268 = arith.ceildivsi %true, %true : i1
      %269 = math.exp2 %11 : tensor<4xf16>
      %270 = index.maxs %c0, %c9
      %271 = math.expm1 %18 : tensor<7x7xf32>
      %272 = bufferization.to_tensor %alloc_17 : memref<4x13xf32>
      memref.tensor_store %17, %alloc_7 : memref<4x4xf16>
      %273 = math.ctpop %c1088885202_i32 : i32
      %274 = index.castu %c13 : index to i32
      %275 = index.maxu %c11, %c10
      %276 = index.sub %c10, %c13
      scf.yield %272 : tensor<4x13xf32>
    }
    %31 = index.sizeof
    %32 = vector.create_mask %c14, %c5 : vector<4x13xi1>
    bufferization.dealloc_tensor %6 : tensor<4x4xi64>
    %33 = vector.insertelement %false_2, %26[%c9 : index] : vector<4xi1>
    %34 = scf.while (%arg1 = %alloc_14) : (memref<4x13xf16>) -> memref<4x13xf16> {
      %263 = math.absf %transposed : tensor<7x7xf32>
      %264 = math.round %cst_1 : f16
      %265 = index.maxu %c13, %c7
      %266 = vector.flat_transpose %25 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
      %267 = arith.divsi %false, %false_2 : i1
      %268 = arith.subi %false, %true : i1
      %269 = index.ceildivs %c14, %c1
      %270 = arith.minui %c751753094_i32, %c1821740343_i32 : i32
      scf.condition(%false_2) %arg1 : memref<4x13xf16>
    } do {
    ^bb0(%arg1: memref<4x13xf16>):
      %263 = index.maxu %c2, %c5
      %264 = math.copysign %1, %1 : tensor<4x4xf16>
      %265 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 * 32, d0 - d1 * 32, d1 * -32, d3 - 2)>(%c0, %c1, %c12, %c1)
      %266 = arith.subi %c1607356696_i64, %c1821704957_i64 : i64
      %267 = arith.minui %c8293_i16, %c3593_i16 : i16
      %268 = index.maxu %31, %c10
      %alloc_52 = memref.alloc() : memref<4x13xi16>
      %269 = vector.broadcast %c8293_i16 : i16 to vector<7x7xi16>
      %270 = vector.broadcast %false_2 : i1 to vector<7x7xi1>
      %271 = vector.broadcast %c1088885202_i32 : i32 to vector<7x7xi32>
      %272 = vector.gather %alloc_52[%31, %c4] [%271], %270, %269 : memref<4x13xi16>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xi16> into vector<7x7xi16>
      %273 = arith.subi %c1088885202_i32, %c84985295_i32 : i32
      %274 = arith.minui %c1088885202_i32, %c84985295_i32 : i32
      %275 = affine.for %arg2 = 0 to 115 iter_args(%arg3 = %alloc_6) -> (memref<4xi64>) {
        affine.yield %arg3 : memref<4xi64>
      }
      %276 = arith.divsi %false, %false_2 : i1
      %277 = math.atan2 %7, %11 : tensor<4xf16>
      %278 = index.maxs %c7, %c14
      %279 = memref.atomic_rmw assign %cst_0, %alloc[%c5, %c6] : (f32, memref<7x7xf32>) -> f32
      %280 = math.copysign %9, %9 : tensor<4xf16>
      %281 = math.sqrt %1 : tensor<4x4xf16>
      scf.yield %alloc_18 : memref<4x13xf16>
    }
    %35 = math.absf %14 : tensor<4xf32>
    memref.assume_alignment %alloc_19, 4 : memref<13xi16>
    %36 = index.divu %c4, %c4
    %37 = math.absi %13 : tensor<4xi16>
    %38 = arith.minui %c138809055_i64, %c1607356696_i64 : i64
    %39 = math.floor %9 : tensor<4xf16>
    memref.tensor_store %11, %alloc_4 : memref<4xf16>
    %40 = index.maxu %c11, %c9
    affine.for %arg1 = 0 to 47 {
    }
    %41 = index.ceildivs %c11, %c2
    %42 = arith.ceildivsi %true, %false_2 : i1
    %43 = vector.multi_reduction <mul>, %20, %20 [] : vector<4xf32> to vector<4xf32>
    %44 = math.absf %16 : tensor<4x4xf16>
    %45 = math.exp %16 : tensor<4x4xf16>
    %46 = arith.ceildivsi %false_2, %false : i1
    %47 = arith.maxui %c1607356696_i64, %c1821704957_i64 : i64
    %48 = index.sub %c4, %c4
    vector.print %26 : vector<4xi1>
    %49 = arith.addf %cst_1, %cst_1 : f16
    %50 = affine.if affine_set<(d0, d1) : (d0 mod 32 >= 0, ((d0 - 128) ceildiv 2) floordiv 32 >= 0, ((d0 - 128) ceildiv 2) floordiv 32 + 16 >= 0)>(%c8, %c1) -> memref<7x7xi1> {
      %extracted_52 = tensor.extract %10[%c5, %c3] : tensor<7x7xi64>
      %263 = vector.extract_strided_slice %26 {offsets = [1], sizes = [1], strides = [1]} : vector<4xi1> to vector<1xi1>
      %264 = math.fpowi %1, %12 : tensor<4x4xf16>, tensor<4x4xi32>
      %265 = arith.shrui %c751753094_i32, %c1821740343_i32 : i32
      %266 = vector.broadcast %cst_3 : f16 to vector<4x4xf16>
      %267 = vector.broadcast %false : i1 to vector<4x4xi1>
      %268 = vector.broadcast %c84985295_i32 : i32 to vector<4x4xi32>
      %269 = vector.gather %1[%c0, %c2] [%268], %267, %266 : tensor<4x4xf16>, vector<4x4xi32>, vector<4x4xi1>, vector<4x4xf16> into vector<4x4xf16>
      %270 = scf.execute_region -> index {
        %273 = math.sqrt %cst_1 : f16
        %274 = math.ctpop %8 : tensor<4x13xi16>
        %275 = bufferization.clone %alloc_8 : memref<7x7xi32> to memref<7x7xi32>
        %276 = arith.remf %cst_1, %cst_3 : f16
        %277 = vector.insert %26, %267 [3] : vector<4xi1> into vector<4x4xi1>
        %278 = math.cos %30 : tensor<4x13xf32>
        %279 = arith.remsi %c84985295_i32, %c1088885202_i32 : i32
        %280 = tensor.empty(%c5) : tensor<4x?xi64>
        memref.tensor_store %21, %alloc_16 : memref<4xi1>
        %281 = index.castu %c1821704957_i64 : i64 to index
        %282 = math.atan2 %17, %16 : tensor<4x4xf16>
        %283 = affine.max affine_map<(d0, d1, d2) -> (d0 mod 4 + d2 - 128)>(%c13, %31, %c4)
        %284 = arith.minui %c751753094_i32, %c1088885202_i32 : i32
        %285 = index.ceildivs %c2, %c9
        %286 = math.floor %cst_3 : f16
        %287 = arith.shrui %c84985295_i32, %c84985295_i32 : i32
        scf.yield %c4 : index
      }
      %271 = arith.subi %c1821704957_i64, %c1821704957_i64 : i64
      %c1_i64 = arith.constant 1 : i64
      %272 = vector.transfer_read %6[%c15, %270], %c1_i64 : tensor<4x4xi64>, vector<i64>
      %alloc_53 = memref.alloc() : memref<7x7xi1>
      affine.yield %alloc_53 : memref<7x7xi1>
    } else {
      %263 = arith.remsi %true, %false_2 : i1
      %264 = arith.xori %c8293_i16, %c3593_i16 : i16
      %265 = bufferization.clone %alloc_19 : memref<13xi16> to memref<13xi16>
      %266 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %20, %20, %cst_0 : vector<4xf32>, vector<4xf32> into f32
      memref.copy %alloc_18, %alloc_14 : memref<4x13xf16> to memref<4x13xf16>
      %267 = tensor.empty() : tensor<7x7x7xf32>
      %268 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%267 : tensor<7x7x7xf32>) {
      ^bb0(%out: f32):
        %271 = math.atan2 %14, %2 : tensor<4xf32>
        %272 = memref.atomic_rmw mins %c751753094_i32, %alloc_8[%c2, %c5] : (i32, memref<7x7xi32>) -> i32
        vector.print %32 : vector<4x13xi1>
        %273 = vector.broadcast %c7 : index to vector<4xindex>
        %274 = vector.broadcast %c1821704957_i64 : i64 to vector<4xi64>
        vector.scatter %alloc_6[%c2] [%273], %26, %274 : memref<4xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
        %275 = arith.maxf %cst, %cst_1 : f16
        %276 = vector.matrix_multiply %26, %25 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
        %277 = arith.shrui %c1607356696_i64, %c1607356696_i64 : i64
        %278 = vector.load %alloc_4[%c0] : memref<4xf16>, vector<4xf16>
        %279 = vector.broadcast %cst_0 : f32 to vector<4xf32>
        %280 = vector.fma %279, %279, %20 : vector<4xf32>
        %281 = arith.ori %c138809055_i64, %c1821704957_i64 : i64
        %282 = arith.ori %c8293_i16, %c8293_i16 : i16
        %283 = arith.muli %c8293_i16, %c3593_i16 : i16
        %284 = arith.remsi %false, %false_2 : i1
        %285 = math.log10 %4 : tensor<7x7xf16>
        %286 = math.ipowi %8, %8 : tensor<4x13xi16>
        %287 = math.ipowi %c8293_i16, %c3593_i16 : i16
        %288 = index.mul %c3, %c2
        %289 = tensor.empty() : tensor<7x7xi1>
        %290 = linalg.matmul ins(%5, %5 : tensor<7x7xi1>, tensor<7x7xi1>) outs(%289 : tensor<7x7xi1>) -> tensor<7x7xi1>
        memref.store %out, %alloc_17[%c1, %c5] : memref<4x13xf32>
        %291 = index.maxs %c0, %c4
        %292 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %280, %280, %cst_0 : vector<4xf32>, vector<4xf32> into f32
        %293 = math.absi %5 : tensor<7x7xi1>
        %294 = math.exp %cst : f16
        %295 = arith.maxsi %c1088885202_i32, %c1821740343_i32 : i32
        %296 = index.maxs %c13, %c11
        %297 = math.absi %3 : tensor<4xi1>
        %298 = arith.maxf %cst, %cst_1 : f16
        %299 = arith.addi %false_2, %true : i1
        %300 = vector.transpose %32, [1, 0] : vector<4x13xi1> to vector<13x4xi1>
        memref.assume_alignment %alloc_8, 16 : memref<7x7xi32>
        %alloc_53 = memref.alloc() : memref<7x7xi64>
        memref.tensor_store %10, %alloc_53 : memref<7x7xi64>
        %301 = math.atan2 %17, %16 : tensor<4x4xf16>
        linalg.yield %cst_0 : f32
      } -> tensor<7x7x7xf32>
      %269 = index.mul %40, %c3
      %270 = math.atan2 %4, %4 : tensor<7x7xf16>
      %alloc_52 = memref.alloc() : memref<7x7xi1>
      affine.yield %alloc_52 : memref<7x7xi1>
    }
    %extracted = tensor.extract %22[] : tensor<i1>
    %c0_i32 = arith.constant 0 : i32
    %c0_i32_20 = arith.constant 0 : i32
    %51 = vector.transfer_read %12[%c9, %c3], %c0_i32_20 : tensor<4x4xi32>, vector<i32>
    %52 = index.add %c12, %c12
    %53 = tensor.empty() : tensor<7x7xi1>
    %54 = linalg.matmul ins(%5, %5 : tensor<7x7xi1>, tensor<7x7xi1>) outs(%53 : tensor<7x7xi1>) -> tensor<7x7xi1>
    %55 = vector.splat %extracted : vector<4x13xi1>
    %56 = index.add %c8, %c4
    %57 = index.maxu %c14, %c3
    %58 = scf.index_switch %c14 -> memref<4x4xf16> 
    case 1 {
      %263 = math.absf %7 : tensor<4xf16>
      %264 = index.add %c8, %c3
      %cst_52 = arith.constant 1.000000e+00 : f16
      %265 = vector.transfer_read %9[%31], %cst_52 : tensor<4xf16>, vector<f16>
      scf.index_switch %c15 
      case 1 {
        %277 = arith.maxsi %c0_i32, %c751753094_i32 : i32
        %278 = index.floordivs %36, %c9
        %279 = math.ipowi %c1821704957_i64, %c1821704957_i64 : i64
        memref.store %cst_1, %alloc_13[%c1, %c2] : memref<4x4xf16>
        %280 = memref.atomic_rmw maxf %cst_0, %alloc_17[%c1, %c12] : (f32, memref<4x13xf32>) -> f32
        %281 = vector.load %alloc_14[%c1, %c11] : memref<4x13xf16>, vector<4xf16>
        %282 = index.castu %false : i1 to index
        %283 = math.sqrt %cst_52 : f16
        %284 = vector.bitcast %32 : vector<4x13xi1> to vector<4x13xi1>
        %285 = tensor.empty() : tensor<4x13xi1>
        %286 = vector.broadcast %true : i1 to vector<4x4xi1>
        %287 = vector.broadcast %c1088885202_i32 : i32 to vector<4x4xi32>
        %288 = vector.gather %285[%c10, %c13] [%287], %286, %286 : tensor<4x13xi1>, vector<4x4xi32>, vector<4x4xi1>, vector<4x4xi1> into vector<4x4xi1>
        %289 = vector.load %alloc_18[%c0, %c6] : memref<4x13xf16>, vector<4x13xf16>
        %290 = arith.shli %c1607356696_i64, %c138809055_i64 : i64
        %291 = math.copysign %cst_52, %cst_1 : f16
        %292 = math.sqrt %16 : tensor<4x4xf16>
        %293 = index.castu %c4 : index to i32
        %rank_54 = tensor.rank %11 : tensor<4xf16>
        scf.yield
      }
      case 2 {
        %277 = index.add %c14, %c10
        %278 = arith.maxf %cst_0, %cst_0 : f32
        %279 = math.ipowi %3, %21 : tensor<4xi1>
        %280 = math.ctlz %c8293_i16 : i16
        %281 = math.cos %7 : tensor<4xf16>
        %282 = arith.ori %c84985295_i32, %c0_i32 : i32
        %283 = math.ctpop %12 : tensor<4x4xi32>
        %284 = arith.minsi %c8293_i16, %c8293_i16 : i16
        %285 = index.castu %c14 : index to i32
        %286 = vector.splat %c1821740343_i32 : vector<7x7xi32>
        %287 = index.sizeof
        %288 = arith.ceildivsi %false, %true : i1
        %289 = vector.broadcast %cst : f16 to vector<f16>
        %290 = vector.transfer_write %289, %7[%c5] : vector<f16>, tensor<4xf16>
        %291 = vector.flat_transpose %20 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        %292 = tensor.empty() : tensor<7x7xi1>
        %293 = linalg.matmul ins(%5, %5 : tensor<7x7xi1>, tensor<7x7xi1>) outs(%292 : tensor<7x7xi1>) -> tensor<7x7xi1>
        %294 = math.ipowi %extracted, %false : i1
        scf.yield
      }
      default {
        %277 = vector.shuffle %20, %20 [0, 1, 3, 4, 7] : vector<4xf32>, vector<4xf32>
        %278 = index.sub %c0, %c4
        %279 = math.floor %1 : tensor<4x4xf16>
        %280 = index.castu %c1821704957_i64 : i64 to index
        %281 = arith.cmpf oeq, %cst, %cst_1 : f16
        %282 = arith.ori %c84985295_i32, %c1821740343_i32 : i32
        %283 = math.cttz %10 : tensor<7x7xi64>
        %284 = index.maxu %c14, %c12
        %285 = vector.splat %c84985295_i32 : vector<4x13xi32>
        %286 = math.ipowi %10, %10 : tensor<7x7xi64>
        vector.print %32 : vector<4x13xi1>
        %287 = arith.maxf %cst, %cst_3 : f16
        %alloc_54 = memref.alloc() : memref<4xi16>
        %288 = vector.broadcast %c3593_i16 : i16 to vector<4xi16>
        %289 = vector.broadcast %c84985295_i32 : i32 to vector<4xi32>
        %290 = vector.gather %alloc_54[%c10] [%289], %25, %288 : memref<4xi16>, vector<4xi32>, vector<4xi1>, vector<4xi16> into vector<4xi16>
        %291 = arith.remf %cst_1, %cst_3 : f16
        %292 = index.sub %36, %c11
        memref.store %cst, %alloc_4[%c2] : memref<4xf16>
      }
      %266 = index.ceildivs %56, %52
      %alloc_53 = memref.alloc() : memref<4xf16>
      %267 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %26, %25, %true : vector<4xi1>, vector<4xi1> into i1
      %268 = math.exp %7 : tensor<4xf16>
      %269 = math.cos %2 : tensor<4xf32>
      %270 = bufferization.to_tensor %alloc_16 : memref<4xi1>
      %271 = math.copysign %2, %14 : tensor<4xf32>
      %272 = arith.maxf %cst, %cst_1 : f16
      %273 = scf.index_switch %c1 -> memref<7x7xi32> 
      case 1 {
        %277 = affine.min affine_map<(d0, d1) -> (128, 128, (d1 + d0 - d1 + d1 + d0) ceildiv 2 + 2, d1 + d0)>(%c9, %c15)
        %278 = math.atan2 %14, %2 : tensor<4xf32>
        %279 = math.round %2 : tensor<4xf32>
        %280 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %25, %25, %false : vector<4xi1>, vector<4xi1> into i1
        %alloc_54 = memref.alloc() : memref<4x4xi64>
        %281 = vector.broadcast %c1821704957_i64 : i64 to vector<7x7xi64>
        %282 = vector.broadcast %true : i1 to vector<7x7xi1>
        %283 = vector.broadcast %c0_i32 : i32 to vector<7x7xi32>
        %284 = vector.gather %alloc_54[%48, %266] [%283], %282, %281 : memref<4x4xi64>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xi64> into vector<7x7xi64>
        memref.store %cst_0, %alloc[%c5, %c3] : memref<7x7xf32>
        bufferization.dealloc_tensor %1 : tensor<4x4xf16>
        %285 = tensor.empty() : tensor<7x7xi64>
        %286 = linalg.matmul ins(%10, %10 : tensor<7x7xi64>, tensor<7x7xi64>) outs(%285 : tensor<7x7xi64>) -> tensor<7x7xi64>
        %287 = arith.remsi %c3593_i16, %c8293_i16 : i16
        %288 = affine.load %alloc_8[%c11, %c6] : memref<7x7xi32>
        vector.print %281 : vector<7x7xi64>
        %289 = math.roundeven %14 : tensor<4xf32>
        bufferization.dealloc_tensor %9 : tensor<4xf16>
        %290 = math.sqrt %1 : tensor<4x4xf16>
        %291 = vector.broadcast %cst_0 : f32 to vector<4xf32>
        %292 = vector.fma %291, %291, %291 : vector<4xf32>
        %293 = math.powf %14, %14 : tensor<4xf32>
        scf.yield %alloc_8 : memref<7x7xi32>
      }
      case 2 {
        %277 = vector.shuffle %32, %32 [0, 1, 5] : vector<4x13xi1>, vector<4x13xi1>
        %278 = vector.extract %20[3] : vector<4xf32>
        %279 = arith.subi %extracted, %extracted : i1
        %280 = arith.remf %cst_52, %cst_1 : f16
        %281 = affine.max affine_map<(d0) -> (d0 ceildiv 8 - (d0 ceildiv 8) ceildiv 64)>(%c2)
        %282 = index.floordivs %281, %c5
        %283 = arith.remui %c1821740343_i32, %c1088885202_i32 : i32
        %284 = arith.minui %c8293_i16, %c8293_i16 : i16
        memref.assume_alignment %alloc_12, 4 : memref<4xi1>
        %285 = bufferization.to_tensor %alloc_14 : memref<4x13xf16>
        %from_elements_54 = tensor.from_elements %c751753094_i32, %c84985295_i32, %c1821740343_i32, %c1088885202_i32, %c1821740343_i32, %c84985295_i32, %c751753094_i32, %c751753094_i32, %c1821740343_i32, %c0_i32, %c1088885202_i32, %c0_i32, %c751753094_i32, %c84985295_i32, %c0_i32, %c1088885202_i32, %c1821740343_i32, %c751753094_i32, %c1088885202_i32, %c1088885202_i32, %c0_i32, %c0_i32, %c1821740343_i32, %c751753094_i32, %c1821740343_i32, %c751753094_i32, %c0_i32, %c84985295_i32, %c0_i32, %c84985295_i32, %c1088885202_i32, %c1821740343_i32, %c751753094_i32, %c0_i32, %c84985295_i32, %c84985295_i32, %c1821740343_i32, %c0_i32, %c1088885202_i32, %c84985295_i32, %c1821740343_i32, %c84985295_i32, %c1088885202_i32, %c1821740343_i32, %c1821740343_i32, %c1088885202_i32, %c1088885202_i32, %c1088885202_i32, %c751753094_i32 : tensor<7x7xi32>
        %286 = math.atan2 %2, %14 : tensor<4xf32>
        %287 = arith.mulf %cst, %cst_3 : f16
        %288 = memref.atomic_rmw maxf %cst_3, %alloc_5[%c1, %c0] : (f16, memref<4x4xf16>) -> f16
        %289 = index.divu %c12, %266
        %alloc_55 = memref.alloc() : memref<4xf32>
        scf.yield %alloc_8 : memref<7x7xi32>
      }
      default {
        %277 = arith.minui %c1607356696_i64, %c1607356696_i64 : i64
        %278 = math.log %7 : tensor<4xf16>
        %279 = arith.minf %cst_3, %cst_52 : f16
        %280 = tensor.empty() : tensor<4xi32>
        %281 = math.fpowi %11, %280 : tensor<4xf16>, tensor<4xi32>
        %true_54 = index.bool.constant true
        %282 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %20, %20, %cst_0 : vector<4xf32>, vector<4xf32> into f32
        %283 = arith.floordivsi %c1821704957_i64, %c138809055_i64 : i64
        %284 = math.log %cst_3 : f16
        %285 = tensor.empty() : tensor<7x7xf16>
        %286 = linalg.matmul ins(%4, %4 : tensor<7x7xf16>, tensor<7x7xf16>) outs(%285 : tensor<7x7xf16>) -> tensor<7x7xf16>
        %287 = vector.insert %true, %26 [0] : i1 into vector<4xi1>
        %288 = index.divu %c9, %c3
        %289 = arith.addi %c8293_i16, %c3593_i16 : i16
        bufferization.dealloc_tensor %12 : tensor<4x4xi32>
        %290 = vector.broadcast %false : i1 to vector<4x4xi1>
        %291 = vector.outerproduct %26, %26, %290 {kind = #vector.kind<maxsi>} : vector<4xi1>, vector<4xi1>
        %292 = math.cttz %21 : tensor<4xi1>
        %alloc_55 = memref.alloc() : memref<7x7xi16>
        scf.yield %alloc_8 : memref<7x7xi32>
      }
      %274 = math.powf %14, %14 : tensor<4xf32>
      %275 = arith.maxf %cst_52, %cst_52 : f16
      %276 = arith.ori %c3593_i16, %c3593_i16 : i16
      scf.yield %alloc_5 : memref<4x4xf16>
    }
    case 2 {
      %263 = scf.execute_region -> index {
        %280 = index.ceildivs %c2, %c8
        %281 = memref.atomic_rmw addf %cst_0, %alloc_9[%c1, %c7] : (f32, memref<4x13xf32>) -> f32
        %282 = math.fma %14, %14, %14 : tensor<4xf32>
        %283 = index.ceildivu %c2, %c13
        %284 = vector.broadcast %cst_0 : f32 to vector<7x7xf32>
        %285 = vector.fma %284, %284, %284 : vector<7x7xf32>
        %286 = arith.minsi %false_2, %false : i1
        %287 = vector.broadcast %c3593_i16 : i16 to vector<7x7xi16>
        %288 = vector.broadcast %false : i1 to vector<7x7xi1>
        %289 = vector.broadcast %c751753094_i32 : i32 to vector<7x7xi32>
        %290 = vector.gather %13[%41] [%289], %288, %287 : tensor<4xi16>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xi16> into vector<7x7xi16>
        %291 = vector.flat_transpose %25 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
        %292 = math.rsqrt %7 : tensor<4xf16>
        %293 = vector.broadcast %c8293_i16 : i16 to vector<7xi16>
        %294 = vector.multi_reduction <or>, %290, %293 [1] : vector<7x7xi16> to vector<7xi16>
        %295 = arith.maxui %c8293_i16, %c3593_i16 : i16
        %296 = index.mul %31, %c5
        %297 = math.absi %c1821740343_i32 : i32
        %298 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 * 2 + (d2 ceildiv 64) * 2)>(%c14, %57, %c6, %c8)
        %299 = math.log1p %4 : tensor<7x7xf16>
        %300 = bufferization.to_memref %5 : memref<7x7xi1>
        scf.yield %56 : index
      }
      %264 = vector.insertelement %extracted, %26[%40 : index] : vector<4xi1>
      %265 = arith.muli %c84985295_i32, %c84985295_i32 : i32
      %266 = vector.broadcast %false : i1 to vector<13xi1>
      %267 = vector.insert %266, %32 [1] : vector<13xi1> into vector<4x13xi1>
      %inserted_52 = tensor.insert %cst_3 into %7[%c2] : tensor<4xf16>
      %268 = arith.floordivsi %false, %extracted : i1
      %269 = index.mul %c8, %c12
      %270 = math.log %4 : tensor<7x7xf16>
      %271 = arith.ori %c0_i32, %c1088885202_i32 : i32
      %272 = math.ipowi %true, %false_2 : i1
      %alloc_53 = memref.alloc() : memref<4xi16>
      %273 = vector.broadcast %c8293_i16 : i16 to vector<7x7xi16>
      %274 = vector.broadcast %false_2 : i1 to vector<7x7xi1>
      %275 = vector.broadcast %c1821740343_i32 : i32 to vector<7x7xi32>
      %276 = vector.gather %alloc_53[%36] [%275], %274, %273 : memref<4xi16>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xi16> into vector<7x7xi16>
      %277 = vector.gather %8[%c6, %c6] [%275], %274, %276 : tensor<4x13xi16>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xi16> into vector<7x7xi16>
      %alloca_54 = memref.alloca() : memref<4xf32>
      %278 = math.round %2 : tensor<4xf32>
      %expanded = tensor.expand_shape %8 [[0], [1, 2]] : tensor<4x13xi16> into tensor<4x13x1xi16>
      %279 = tensor.empty() : tensor<4xf32>
      scf.yield %alloc_13 : memref<4x4xf16>
    }
    case 3 {
      %alloc_52 = memref.alloc() : memref<4x13xi16>
      %263 = vector.broadcast %c8293_i16 : i16 to vector<7x7xi16>
      %264 = vector.broadcast %true : i1 to vector<7x7xi1>
      %265 = vector.broadcast %c751753094_i32 : i32 to vector<7x7xi32>
      %266 = vector.gather %alloc_52[%56, %c0] [%265], %264, %263 : memref<4x13xi16>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xi16> into vector<7x7xi16>
      %267 = index.floordivs %c10, %c12
      %268 = vector.insertelement %true, %25[%41 : index] : vector<4xi1>
      %269 = math.roundeven %14 : tensor<4xf32>
      %270 = math.ctpop %c751753094_i32 : i32
      %271 = tensor.empty() : tensor<7x7x7xf32>
      %272 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%271 : tensor<7x7x7xf32>) {
      ^bb0(%out: f32):
        %283 = math.ipowi %c138809055_i64, %c1607356696_i64 : i64
        %284 = math.roundeven %14 : tensor<4xf32>
        %285 = arith.divui %c3593_i16, %c3593_i16 : i16
        %286 = math.copysign %cst_0, %out : f32
        %287 = vector.matrix_multiply %25, %26 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
        %288 = memref.load %alloc_13[%c1, %c2] : memref<4x4xf16>
        %289 = math.absi %15 : tensor<4xi1>
        %290 = index.sizeof
        %rank_55 = tensor.rank %0 : tensor<4x13xf32>
        %291 = index.castu %c0 : index to i32
        %292 = index.add %c15, %57
        %293 = arith.ceildivsi %c84985295_i32, %c1821740343_i32 : i32
        %294 = vector.broadcast %cst_0 : f32 to vector<7x7xf32>
        %295 = vector.gather %alloc[%c7, %c12] [%265], %264, %294 : memref<7x7xf32>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xf32> into vector<7x7xf32>
        %296 = math.log %16 : tensor<4x4xf16>
        %inserted_56 = tensor.insert %cst_3 into %4[%c6, %c4] : tensor<7x7xf16>
        %297 = arith.ori %c84985295_i32, %c751753094_i32 : i32
        %298 = bufferization.clone %alloc_52 : memref<4x13xi16> to memref<4x13xi16>
        %299 = affine.max affine_map<(d0) -> (d0 + 129, d0 + d0 - 8 - (d0 + 128) - 33, (d0 + 128) ceildiv 32, d0 + 128)>(%267)
        %300 = math.powf %11, %9 : tensor<4xf16>
        %301 = vector.broadcast %out : f32 to vector<7xf32>
        %302 = vector.multi_reduction <add>, %295, %301 [0] : vector<7x7xf32> to vector<7xf32>
        %303 = arith.subi %c8293_i16, %c3593_i16 : i16
        %304 = arith.divsi %c751753094_i32, %c751753094_i32 : i32
        %305 = math.floor %cst_1 : f16
        %306 = math.log1p %2 : tensor<4xf32>
        %307 = math.tan %4 : tensor<7x7xf16>
        %308 = vector.matrix_multiply %287, %25 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<1xi1>, vector<4xi1>) -> vector<4xi1>
        memref.tensor_store %15, %alloc_12 : memref<4xi1>
        %309 = arith.divsi %c751753094_i32, %c84985295_i32 : i32
        %310 = math.atan2 %11, %9 : tensor<4xf16>
        %311 = memref.atomic_rmw minf %out, %alloc[%c3, %c3] : (f32, memref<7x7xf32>) -> f32
        %312 = index.sub %rank_55, %267
        %313 = math.ctpop %c1821704957_i64 : i64
        linalg.yield %out : f32
      } -> tensor<7x7x7xf32>
      %273 = math.copysign %11, %9 : tensor<4xf16>
      %274 = tensor.empty() : tensor<7x7x7xf32>
      %275 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%274 : tensor<7x7x7xf32>) {
      ^bb0(%out: f32):
        %283 = math.log1p %11 : tensor<4xf16>
        %284 = vector.transpose %263, [0, 1] : vector<7x7xi16> to vector<7x7xi16>
        %285 = math.round %11 : tensor<4xf16>
        %inserted_55 = tensor.insert %false into %21[%c1] : tensor<4xi1>
        %286 = index.mul %56, %31
        %287 = vector.broadcast %true : i1 to vector<13xi1>
        %288 = vector.insert %287, %32 [2] : vector<13xi1> into vector<4x13xi1>
        %289 = vector.broadcast %out : f32 to vector<4x4xf32>
        %290 = vector.fma %289, %289, %289 : vector<4x4xf32>
        %291 = arith.minsi %c1088885202_i32, %c1088885202_i32 : i32
        %292 = math.cos %2 : tensor<4xf32>
        %293 = vector.broadcast %c8293_i16 : i16 to vector<i16>
        %294 = vector.transfer_write %293, %8[%40, %286] : vector<i16>, tensor<4x13xi16>
        %295 = vector.create_mask %31, %c11 : vector<4x4xi1>
        %296 = math.ctpop %false : i1
        %297 = vector.outerproduct %25, %26, %295 {kind = #vector.kind<xor>} : vector<4xi1>, vector<4xi1>
        %298 = arith.shrsi %c751753094_i32, %c84985295_i32 : i32
        %299 = vector.insertelement %c3593_i16, %293[] : vector<i16>
        %300 = math.roundeven %1 : tensor<4x4xf16>
        %expanded = tensor.expand_shape %15 [[0, 1]] : tensor<4xi1> into tensor<4x1xi1>
        %expanded_56 = tensor.expand_shape %53 [[0], [1, 2]] : tensor<7x7xi1> into tensor<7x7x1xi1>
        %301 = vector.insert %287, %32 [2] : vector<13xi1> into vector<4x13xi1>
        %302 = math.exp2 %9 : tensor<4xf16>
        %303 = vector.splat %41 : vector<4x4xindex>
        %304 = index.castu %c1088885202_i32 : i32 to index
        %305 = arith.ori %c8293_i16, %c8293_i16 : i16
        %306 = affine.max affine_map<(d0) -> (-d0 - (d0 * -2 - 4) - 128, ((-d0) floordiv 2) floordiv 2 - 32)>(%31)
        %307 = affine.load %alloc_15[%c8, %c12] : memref<4x13xi1>
        %308 = bufferization.to_memref %12 : memref<4x4xi32>
        %dest, %accumulated_value = vector.scan <xor>, %32, %287 {inclusive = false, reduction_dim = 0 : i64} : vector<4x13xi1>, vector<13xi1>
        %309 = math.fma %4, %4, %4 : tensor<7x7xf16>
        %310 = math.roundeven %7 : tensor<4xf16>
        %311 = arith.remf %cst_0, %out : f32
        %312 = bufferization.clone %alloc_6 : memref<4xi64> to memref<4xi64>
        %313 = vector.broadcast %c1821740343_i32 : i32 to vector<4x4xi32>
        %314 = vector.gather %18[%52, %c12] [%313], %295, %289 : tensor<7x7xf32>, vector<4x4xi32>, vector<4x4xi1>, vector<4x4xf32> into vector<4x4xf32>
        linalg.yield %cst_0 : f32
      } -> tensor<7x7x7xf32>
      %276 = index.mul %c4, %c5
      %277 = arith.ceildivsi %c84985295_i32, %c0_i32 : i32
      %278 = math.round %cst_3 : f16
      %from_elements_53 = tensor.from_elements %c138809055_i64, %c1821704957_i64, %c138809055_i64, %c138809055_i64, %c138809055_i64, %c138809055_i64, %c138809055_i64, %c138809055_i64, %c138809055_i64, %c138809055_i64, %c1607356696_i64, %c1821704957_i64, %c1821704957_i64, %c1607356696_i64, %c1607356696_i64, %c1607356696_i64, %c138809055_i64, %c1607356696_i64, %c1821704957_i64, %c1607356696_i64, %c138809055_i64, %c138809055_i64, %c138809055_i64, %c1607356696_i64, %c1607356696_i64, %c138809055_i64, %c1821704957_i64, %c1607356696_i64, %c1821704957_i64, %c1821704957_i64, %c1821704957_i64, %c1821704957_i64, %c138809055_i64, %c1821704957_i64, %c138809055_i64, %c1607356696_i64, %c138809055_i64, %c1821704957_i64, %c138809055_i64, %c138809055_i64, %c1607356696_i64, %c1607356696_i64, %c1821704957_i64, %c138809055_i64, %c1607356696_i64, %c1821704957_i64, %c1607356696_i64, %c1607356696_i64, %c138809055_i64, %c1607356696_i64, %c1821704957_i64, %c1607356696_i64 : tensor<4x13xi64>
      %279 = vector.broadcast %cst_0 : f32 to vector<4x4xf32>
      %280 = vector.fma %279, %279, %279 : vector<4x4xf32>
      %281 = math.fma %30, %30, %0 : tensor<4x13xf32>
      %generated_54 = tensor.generate %40 {
      ^bb0(%arg1: index):
        %283 = math.roundeven %0 : tensor<4x13xf32>
        %284 = arith.muli %c84985295_i32, %c751753094_i32 : i32
        %285 = index.maxs %c12, %c5
        %286 = math.absi %6 : tensor<4x4xi64>
        tensor.yield %extracted : i1
      } : tensor<?xi1>
      %282 = affine.max affine_map<(d0, d1, d2) -> (d0 + d1 - 1)>(%267, %57, %56)
      scf.yield %alloc_7 : memref<4x4xf16>
    }
    default {
      %263 = vector.insert %cst_0, %20 [0] : f32 into vector<4xf32>
      %264 = arith.divsi %c1607356696_i64, %c1821704957_i64 : i64
      %265 = arith.maxsi %false, %false_2 : i1
      %266 = index.sub %c1, %40
      %267 = vector.broadcast %cst_0 : f32 to vector<4x13xf32>
      %268 = vector.fma %267, %267, %267 : vector<4x13xf32>
      %269 = bufferization.to_memref %2 : memref<4xf32>
      %generated_52 = tensor.generate %56, %c3 {
      ^bb0(%arg1: index, %arg2: index):
        %279 = memref.atomic_rmw mulf %cst_1, %alloc_14[%c2, %c5] : (f16, memref<4x13xf16>) -> f16
        %280 = bufferization.to_memref %12 : memref<4x4xi32>
        %281 = arith.shrsi %c1821740343_i32, %c0_i32 : i32
        %282 = math.absf %30 : tensor<4x13xf32>
        tensor.yield %cst : f16
      } : tensor<?x?xf16>
      %270 = math.absi %12 : tensor<4x4xi32>
      %271 = arith.minf %cst_3, %cst_1 : f16
      %272 = arith.minui %c3593_i16, %c3593_i16 : i16
      %273 = math.fpowi %cst_0, %c0_i32 : f32, i32
      %274 = arith.muli %extracted, %true : i1
      %275 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %25, %25, %false : vector<4xi1>, vector<4xi1> into i1
      %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %25, %26, %extracted : vector<4xi1>, vector<4xi1> into i1
      %277 = index.castu %52 : index to i32
      %278 = scf.if %extracted -> (memref<4x13xi64>) {
        %279 = math.absi %extracted : i1
        %inserted_53 = tensor.insert %cst_0 into %2[%c1] : tensor<4xf32>
        memref.copy %alloc_14, %alloc_18 : memref<4x13xf16> to memref<4x13xf16>
        %280 = math.round %11 : tensor<4xf16>
        memref.copy %alloc_18, %alloc_14 : memref<4x13xf16> to memref<4x13xf16>
        %281 = index.maxs %c3, %c13
        %282 = vector.matrix_multiply %25, %26 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
        %283 = index.maxu %c13, %57
        %alloc_54 = memref.alloc() : memref<4x13xi64>
        scf.yield %alloc_54 : memref<4x13xi64>
      } else {
        %279 = vector.extract %268[3] : vector<4x13xf32>
        %280 = vector.load %alloc_19[%c11] : memref<13xi16>, vector<4x4xi16>
        %281 = vector.broadcast %c1821740343_i32 : i32 to vector<4x13xi32>
        %282 = vector.gather %3[%c3] [%281], %32, %32 : tensor<4xi1>, vector<4x13xi32>, vector<4x13xi1>, vector<4x13xi1> into vector<4x13xi1>
        %283 = math.absi %extracted : i1
        %284 = bufferization.to_tensor %alloc_7 : memref<4x4xf16>
        %285 = vector.broadcast %true : i1 to vector<13xi1>
        %286 = vector.maskedload %alloc_9[%c1, %c7], %285, %279 : memref<4x13xf32>, vector<13xi1>, vector<13xf32> into vector<13xf32>
        %287 = vector.matrix_multiply %20, %286 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 13 : i32} : (vector<4xf32>, vector<13xf32>) -> vector<52xf32>
        %288 = index.add %41, %57
        %alloc_53 = memref.alloc() : memref<4x13xi64>
        scf.yield %alloc_53 : memref<4x13xi64>
      }
      scf.yield %alloc_13 : memref<4x4xf16>
    }
    %59 = tensor.empty(%36, %c4) : tensor<?x?xi64>
    %60 = math.atan2 %cst, %cst_1 : f16
    %61 = scf.index_switch %c8 -> vector<4x4xi1> 
    case 1 {
      %alloc_52 = memref.alloc() : memref<i1>
      memref.tensor_store %23, %alloc_52 : memref<i1>
      %263 = arith.shrui %true, %false_2 : i1
      %264 = vector.shuffle %25, %25 [0, 1, 6, 7] : vector<4xi1>, vector<4xi1>
      %265 = vector.reduction <mul>, %20 : vector<4xf32> into f32
      %266 = arith.minf %cst_3, %cst : f16
      %extracted_53 = tensor.extract %8[%c1, %c5] : tensor<4x13xi16>
      %267 = arith.ceildivsi %c3593_i16, %extracted_53 : i16
      %268 = vector.broadcast %false_2 : i1 to vector<13xi1>
      %269 = vector.insert %268, %32 [0] : vector<13xi1> into vector<4x13xi1>
      %270 = scf.if %extracted -> (memref<4xi64>) {
        %277 = vector.matrix_multiply %268, %268 {lhs_columns = 13 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<13xi1>, vector<13xi1>) -> vector<1xi1>
        %278 = arith.remf %cst_0, %cst_0 : f32
        %alloc_55 = memref.alloc() : memref<7x7xf32>
        memref.copy %alloc, %alloc_55 : memref<7x7xf32> to memref<7x7xf32>
        %279 = index.mul %c11, %c7
        %280 = math.atan2 %4, %4 : tensor<7x7xf16>
        %281 = index.maxs %52, %c4
        %282 = index.divu %c7, %c6
        memref.store %cst_3, %alloc_13[%c2, %c3] : memref<4x4xf16>
        scf.yield %alloc_6 : memref<4xi64>
      } else {
        %277 = math.floor %16 : tensor<4x4xf16>
        %278 = bufferization.clone %alloc : memref<7x7xf32> to memref<7x7xf32>
        %279 = math.cos %0 : tensor<4x13xf32>
        %280 = arith.minsi %false, %true : i1
        %281 = index.sub %c8, %48
        %282 = memref.atomic_rmw addf %cst_0, %alloc_10[%c2] : (f32, memref<4xf32>) -> f32
        %283 = memref.atomic_rmw muli %c0_i32, %alloc_11[%c1] : (i32, memref<4xi32>) -> i32
        %284 = index.floordivs %c7, %c7
        scf.yield %alloc_6 : memref<4xi64>
      }
      %inserted_54 = tensor.insert %c1821704957_i64 into %6[%c1, %c2] : tensor<4x4xi64>
      %271 = math.cos %11 : tensor<4xf16>
      memref.tensor_store %11, %alloc_4 : memref<4xf16>
      %272 = affine.max affine_map<(d0) -> ((d0 - (d0 - d0 ceildiv 8) - 128) * 2, d0 - (d0 - d0 ceildiv 8) - 128, (d0 ceildiv 8) mod 128, d0 + d0 - (d0 - d0 ceildiv 8) - 128 + d0 - (d0 - d0 ceildiv 8) - 128)>(%41)
      %273 = math.log1p %17 : tensor<4x4xf16>
      %274 = vector.matrix_multiply %20, %20 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
      %275 = math.copysign %14, %14 : tensor<4xf32>
      %276 = vector.broadcast %true : i1 to vector<4x4xi1>
      scf.yield %276 : vector<4x4xi1>
    }
    case 2 {
      %263 = math.round %17 : tensor<4x4xf16>
      %expanded = tensor.expand_shape %6 [[0], [1, 2]] : tensor<4x4xi64> into tensor<4x4x1xi64>
      %264 = math.sqrt %9 : tensor<4xf16>
      %265 = bufferization.clone %alloc_16 : memref<4xi1> to memref<4xi1>
      %266 = math.ipowi %13, %13 : tensor<4xi16>
      memref.alloca_scope  {
        %276 = affine.apply affine_map<(d0) -> (((d0 ceildiv 8) ceildiv 4) * 16)>(%48)
        %277 = math.copysign %11, %7 : tensor<4xf16>
        %278 = arith.divf %cst, %cst_3 : f16
        %279 = arith.cmpi sge, %c138809055_i64, %c138809055_i64 : i64
        %280 = index.divs %c4, %276
        %281 = math.round %2 : tensor<4xf32>
        %282 = math.exp %2 : tensor<4xf32>
        %283 = math.ctlz %c1821740343_i32 : i32
        %284 = arith.maxf %cst_0, %cst_0 : f32
        %285 = math.floor %9 : tensor<4xf16>
        %286 = index.ceildivu %c4, %c13
        %expanded_52 = tensor.expand_shape %12 [[0], [1, 2]] : tensor<4x4xi32> into tensor<4x4x1xi32>
        %287 = vector.broadcast %true : i1 to vector<4x4xi1>
        %288 = vector.outerproduct %26, %25, %287 {kind = #vector.kind<xor>} : vector<4xi1>, vector<4xi1>
        %289 = arith.maxsi %c0_i32, %c0_i32 : i32
        %290 = arith.divsi %c3593_i16, %c8293_i16 : i16
        %291 = vector.matrix_multiply %25, %26 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
        %292 = vector.matrix_multiply %26, %26 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
        %293 = bufferization.clone %alloc_13 : memref<4x4xf16> to memref<4x4xf16>
        %rank_53 = tensor.rank %7 : tensor<4xf16>
        %294 = bufferization.clone %alloc_15 : memref<4x13xi1> to memref<4x13xi1>
        %295 = index.maxs %52, %c0
        %alloc_54 = memref.alloc() : memref<13x7xi16>
        %296 = tensor.empty() : tensor<4x7xi16>
        %297 = linalg.matmul ins(%8, %alloc_54 : tensor<4x13xi16>, memref<13x7xi16>) outs(%296 : tensor<4x7xi16>) -> tensor<4x7xi16>
        %298 = vector.broadcast %cst_0 : f32 to vector<4x4xf32>
        %299 = vector.fma %298, %298, %298 : vector<4x4xf32>
        %300 = math.absi %13 : tensor<4xi16>
        %301 = bufferization.clone %alloc_19 : memref<13xi16> to memref<13xi16>
        %302 = arith.divsi %c0_i32, %c1821740343_i32 : i32
        %303 = math.copysign %2, %14 : tensor<4xf32>
        %304 = arith.negf %cst_3 : f16
        %305 = math.ctlz %c84985295_i32 : i32
        %306 = math.roundeven %16 : tensor<4x4xf16>
        %307 = math.ipowi %15, %21 : tensor<4xi1>
        %308 = arith.floordivsi %c138809055_i64, %c1821704957_i64 : i64
      }
      %267 = arith.maxf %cst_1, %cst_1 : f16
      %268 = index.ceildivs %c11, %c6
      %269 = arith.floordivsi %c84985295_i32, %c751753094_i32 : i32
      bufferization.dealloc_tensor %5 : tensor<7x7xi1>
      %270 = index.maxu %c7, %56
      %271 = index.floordivs %c12, %268
      memref.store %cst_0, %alloc_10[%c3] : memref<4xf32>
      %272 = math.tan %18 : tensor<7x7xf32>
      %273 = arith.mulf %cst, %cst_1 : f16
      %274 = math.ipowi %21, %3 : tensor<4xi1>
      %275 = vector.broadcast %true : i1 to vector<4x4xi1>
      scf.yield %275 : vector<4x4xi1>
    }
    case 3 {
      %263 = math.cos %cst_3 : f16
      %264 = arith.shli %c1821704957_i64, %c1607356696_i64 : i64
      %265 = vector.broadcast %cst_0 : f32 to vector<4xf32>
      %266 = vector.fma %265, %20, %20 : vector<4xf32>
      %267 = arith.divf %cst_3, %cst_1 : f16
      %268 = vector.broadcast %extracted : i1 to vector<13xi1>
      %269 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<or>} %26, %32, %268 : vector<4xi1>, vector<4x13xi1> into vector<13xi1>
      %270 = arith.ori %c84985295_i32, %c0_i32 : i32
      %271 = arith.minui %c751753094_i32, %c1088885202_i32 : i32
      %272 = vector.broadcast %true : i1 to vector<13xi1>
      %dest, %accumulated_value = vector.scan <add>, %32, %272 {inclusive = true, reduction_dim = 0 : i64} : vector<4x13xi1>, vector<13xi1>
      %273 = vector.broadcast %cst_0 : f32 to vector<4x4xf32>
      %274 = vector.outerproduct %265, %265, %273 {kind = #vector.kind<add>} : vector<4xf32>, vector<4xf32>
      %275 = arith.shrui %c8293_i16, %c3593_i16 : i16
      %276 = memref.atomic_rmw mulf %cst_0, %alloc[%c2, %c6] : (f32, memref<7x7xf32>) -> f32
      %277 = vector.splat %41 : vector<4xindex>
      %278 = index.sub %c8, %c5
      %279 = math.ipowi %21, %21 : tensor<4xi1>
      %280 = vector.broadcast %c1821740343_i32 : i32 to vector<i32>
      vector.transfer_write %280, %alloc_11[%c12] : vector<i32>, memref<4xi32>
      %281 = arith.addi %false, %false_2 : i1
      %282 = vector.broadcast %extracted : i1 to vector<4x4xi1>
      scf.yield %282 : vector<4x4xi1>
    }
    default {
      %263 = math.sqrt %4 : tensor<7x7xf16>
      %264 = math.cos %17 : tensor<4x4xf16>
      memref.copy %alloc_13, %alloc_5 : memref<4x4xf16> to memref<4x4xf16>
      %265 = arith.muli %c138809055_i64, %c1821704957_i64 : i64
      %266 = math.atan2 %0, %0 : tensor<4x13xf32>
      %267 = vector.insert %true, %25 [3] : i1 into vector<4xi1>
      %268 = bufferization.clone %alloc_11 : memref<4xi32> to memref<4xi32>
      %269 = arith.ori %c1821704957_i64, %c1821704957_i64 : i64
      %270 = arith.minf %cst_3, %cst_1 : f16
      %271 = index.maxs %c14, %c9
      %272 = arith.ori %c3593_i16, %c8293_i16 : i16
      %273 = arith.ori %c138809055_i64, %c138809055_i64 : i64
      %274 = math.ctlz %22 : tensor<i1>
      %275 = vector.broadcast %cst_0 : f32 to vector<f32>
      %276 = vector.transfer_write %275, %2[%c4] : vector<f32>, tensor<4xf32>
      %277 = vector.matrix_multiply %20, %20 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
      %278 = math.floor %cst_1 : f16
      %279 = vector.broadcast %extracted : i1 to vector<4x4xi1>
      scf.yield %279 : vector<4x4xi1>
    }
    %62 = bufferization.clone %alloc_16 : memref<4xi1> to memref<4xi1>
    %63 = index.ceildivs %c12, %41
    %64 = math.ctpop %5 : tensor<7x7xi1>
    %65 = math.ctpop %c0_i32 : i32
    %66 = vector.splat %c2 : vector<4x13xindex>
    %alloc_21 = memref.alloc() : memref<4x13xi64>
    %67 = math.copysign %cst_0, %cst_0 : f32
    %68 = math.absf %9 : tensor<4xf16>
    %69 = arith.muli %c138809055_i64, %c1607356696_i64 : i64
    %70 = arith.minsi %c138809055_i64, %c1821704957_i64 : i64
    %71 = math.ctpop %23 : tensor<i1>
    %72 = arith.addi %c1607356696_i64, %c1821704957_i64 : i64
    scf.if %extracted {
      %263 = index.sizeof
      %264 = vector.insert %cst_0, %20 [1] : f32 into vector<4xf32>
      %265 = vector.broadcast %cst_0 : f32 to vector<4x13xf32>
      %266 = vector.broadcast %c0_i32 : i32 to vector<4x13xi32>
      %267 = vector.gather %30[%c9, %263] [%266], %32, %265 : tensor<4x13xf32>, vector<4x13xi32>, vector<4x13xi1>, vector<4x13xf32> into vector<4x13xf32>
      %268 = arith.divsi %extracted, %false : i1
      %269 = arith.ceildivsi %c0_i32, %c751753094_i32 : i32
      memref.tensor_store %transposed, %alloc : memref<7x7xf32>
      %inserted_52 = tensor.insert %cst_0 into %2[%c1] : tensor<4xf32>
      %collapsed = tensor.collapse_shape %6 [[0, 1]] : tensor<4x4xi64> into tensor<16xi64>
    } else {
      memref.tensor_store %15, %62 : memref<4xi1>
      %263 = math.tanh %9 : tensor<4xf16>
      %264 = arith.minf %cst, %cst : f16
      %265 = index.ceildivs %c12, %c8
      %266 = arith.addf %cst_3, %cst_1 : f16
      %267 = arith.muli %c3593_i16, %c3593_i16 : i16
      %268 = math.atan2 %4, %4 : tensor<7x7xf16>
      %269 = vector.insert %cst_0, %20 [0] : f32 into vector<4xf32>
    }
    %73 = vector.reduction <mul>, %25 : vector<4xi1> into i1
    %74 = math.absf %0 : tensor<4x13xf32>
    vector.print %20 : vector<4xf32>
    %75 = vector.broadcast %cst_1 : f16 to vector<7x7xf16>
    %76 = vector.broadcast %false_2 : i1 to vector<7x7xi1>
    %77 = vector.broadcast %c751753094_i32 : i32 to vector<7x7xi32>
    %78 = vector.gather %16[%c6, %c7] [%77], %76, %75 : tensor<4x4xf16>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xf16> into vector<7x7xf16>
    %79 = math.sqrt %transposed : tensor<7x7xf32>
    %80 = arith.subi %c1821704957_i64, %c1821704957_i64 : i64
    memref.assume_alignment %alloc_10, 1 : memref<4xf32>
    %81 = bufferization.clone %alloc_8 : memref<7x7xi32> to memref<7x7xi32>
    %82 = arith.negf %cst_1 : f16
    %83 = tensor.empty() : tensor<7x7x7xf32>
    %alloc_22 = memref.alloc() : memref<7xf32>
    %84 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_22, %alloc_22 : memref<7xf32>, memref<7xf32>) outs(%83 : tensor<7x7x7xf32>) {
    ^bb0(%in: f32, %in_52: f32, %out: f32):
      %263 = index.ceildivs %c1, %c4
      %264 = math.log1p %18 : tensor<7x7xf32>
      %265 = arith.xori %c1821704957_i64, %c138809055_i64 : i64
      %266 = vector.broadcast %out : f32 to vector<7x7xf32>
      %267 = vector.fma %266, %266, %266 : vector<7x7xf32>
      %268 = arith.ceildivsi %extracted, %true : i1
      %269 = tensor.empty() : tensor<4x13xi32>
      %270 = math.fpowi %0, %269 : tensor<4x13xf32>, tensor<4x13xi32>
      %271 = index.ceildivu %263, %c9
      %272 = index.floordivs %c12, %c7
      %273 = index.divu %31, %c14
      %274 = tensor.empty() : tensor<4x13xi64>
      %275 = vector.broadcast %c1821704957_i64 : i64 to vector<4xi64>
      %276 = vector.broadcast %c1088885202_i32 : i32 to vector<4xi32>
      %277 = vector.gather %274[%c9, %c15] [%276], %26, %275 : tensor<4x13xi64>, vector<4xi32>, vector<4xi1>, vector<4xi64> into vector<4xi64>
      %278 = arith.remf %cst_1, %cst : f16
      %279 = arith.shrsi %false, %true : i1
      %280 = index.add %c5, %272
      %281 = index.castu %48 : index to i32
      %282 = arith.negf %in_52 : f32
      memref.copy %81, %alloc_8 : memref<7x7xi32> to memref<7x7xi32>
      %283 = vector.load %alloc[%c4, %c6] : memref<7x7xf32>, vector<4x13xf32>
      %284 = index.floordivs %63, %c10
      %285 = math.cttz %c751753094_i32 : i32
      %286 = vector.matrix_multiply %277, %277 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi64>, vector<4xi64>) -> vector<1xi64>
      %287 = vector.broadcast %in : f32 to vector<4x4xf32>
      %288 = vector.fma %287, %287, %287 : vector<4x4xf32>
      %289 = index.sub %284, %272
      %290 = vector.transpose %25, [0] : vector<4xi1> to vector<4xi1>
      %291 = math.ctlz %13 : tensor<4xi16>
      %292 = arith.cmpi sgt, %c1088885202_i32, %c84985295_i32 : i32
      bufferization.dealloc_tensor %21 : tensor<4xi1>
      %293 = vector.broadcast %272 : index to vector<4xindex>
      vector.scatter %alloc_8[%c6, %c0] [%293], %26, %276 : memref<7x7xi32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
      %294 = index.sizeof
      %295 = arith.muli %c751753094_i32, %c0_i32 : i32
      %296 = arith.shrui %c0_i32, %c1088885202_i32 : i32
      %297 = vector.broadcast %out : f32 to vector<7x7xf32>
      %298 = vector.fma %297, %267, %266 : vector<7x7xf32>
      %299 = vector.load %alloc_15[%c3, %c8] : memref<4x13xi1>, vector<4x4xi1>
      linalg.yield %cst_0 : f32
    } -> tensor<7x7x7xf32>
    memref.copy %62, %alloc_12 : memref<4xi1> to memref<4xi1>
    %85 = arith.floordivsi %false, %extracted : i1
    %86 = math.cttz %false : i1
    %87 = bufferization.clone %alloc_18 : memref<4x13xf16> to memref<4x13xf16>
    %88 = vector.broadcast %cst_1 : f16 to vector<f16>
    vector.transfer_write %88, %alloc_13[%c4, %c13] : vector<f16>, memref<4x4xf16>
    %89 = vector.bitcast %25 : vector<4xi1> to vector<4xi1>
    %90 = arith.minsi %false_2, %false : i1
    %91 = memref.atomic_rmw assign %cst_0, %alloc_9[%c1, %c10] : (f32, memref<4x13xf32>) -> f32
    %92 = index.sizeof
    %from_elements = tensor.from_elements %cst_1, %cst_3, %cst_3, %cst_1 : tensor<4xf16>
    %inserted = tensor.insert %c3593_i16 into %8[%c1, %c5] : tensor<4x13xi16>
    %alloca_23 = memref.alloca() : memref<4xf32>
    %93 = vector.broadcast %false : i1 to vector<13x13xi1>
    %94 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %32, %32, %93 : vector<4x13xi1>, vector<4x13xi1> into vector<13x13xi1>
    %95 = vector.shuffle %25, %89 [0, 1, 3, 4, 5, 6] : vector<4xi1>, vector<4xi1>
    %extracted_24 = tensor.extract %14[%c3] : tensor<4xf32>
    %96 = arith.shrui %c751753094_i32, %c1821740343_i32 : i32
    %97 = arith.subi %false_2, %false_2 : i1
    %98 = vector.broadcast %cst_0 : f32 to vector<4xf32>
    %99 = vector.fma %98, %20, %20 : vector<4xf32>
    %100 = bufferization.clone %alloc_13 : memref<4x4xf16> to memref<4x4xf16>
    %101 = math.copysign %7, %11 : tensor<4xf16>
    %102 = math.log %11 : tensor<4xf16>
    %inserted_25 = tensor.insert %cst_0 into %30[%c3, %c12] : tensor<4x13xf32>
    %103 = vector.create_mask %c3, %c9 : vector<4x13xi1>
    %104 = scf.execute_region -> i16 {
      %263 = arith.shrui %true, %false_2 : i1
      %inserted_52 = tensor.insert %c1607356696_i64 into %6[%c1, %c3] : tensor<4x4xi64>
      %264 = math.floor %cst_0 : f32
      %265 = index.mul %92, %c10
      %266 = arith.minf %cst, %cst_3 : f16
      %267 = vector.broadcast %c12 : index to vector<7xindex>
      %268 = vector.broadcast %false : i1 to vector<7xi1>
      %269 = vector.broadcast %cst : f16 to vector<7xf16>
      vector.scatter %alloc_7[%c2, %c1] [%267], %268, %269 : memref<4x4xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
      %270 = vector.broadcast %cst_0 : f32 to vector<4x4xf32>
      %271 = vector.outerproduct %98, %98, %270 {kind = #vector.kind<add>} : vector<4xf32>, vector<4xf32>
      %272 = vector.load %alloc_10[%c0] : memref<4xf32>, vector<4xf32>
      memref.copy %alloc_14, %alloc_18 : memref<4x13xf16> to memref<4x13xf16>
      %273 = affine.max affine_map<(d0, d1, d2) -> (-(d2 ceildiv 128), d1 * 2048)>(%c12, %c1, %c13)
      %274 = index.mul %c11, %41
      %from_elements_53 = tensor.from_elements %false, %extracted, %false, %extracted : tensor<4xi1>
      %275 = math.log %cst_1 : f16
      %276 = vector.transpose %26, [0] : vector<4xi1> to vector<4xi1>
      %277 = tensor.empty() : tensor<4xi32>
      %278 = math.fpowi %9, %277 : tensor<4xf16>, tensor<4xi32>
      %279 = arith.muli %c1607356696_i64, %c1607356696_i64 : i64
      scf.yield %c8293_i16 : i16
    }
    %105 = scf.if %false_2 -> (memref<7x7xi64>) {
      memref.copy %alloc_16, %alloc_12 : memref<4xi1> to memref<4xi1>
      %alloc_52 = memref.alloc() : memref<4xf16>
      memref.copy %alloc_4, %alloc_52 : memref<4xf16> to memref<4xf16>
      %263 = bufferization.to_tensor %alloc_6 : memref<4xi64>
      %264 = vector.insertelement %extracted, %89[%52 : index] : vector<4xi1>
      %265 = index.sizeof
      %266 = scf.if %false -> (f32) {
        %269 = math.copysign %18, %transposed : tensor<7x7xf32>
        %alloc_54 = memref.alloc() : memref<4xi32>
        memref.copy %alloc_11, %alloc_54 : memref<4xi32> to memref<4xi32>
        %270 = math.copysign %1, %16 : tensor<4x4xf16>
        %271 = arith.divui %c751753094_i32, %c0_i32 : i32
        %272 = math.tanh %0 : tensor<4x13xf32>
        %273 = index.floordivs %c0, %36
        memref.store %extracted_24, %alloc_17[%c2, %c5] : memref<4x13xf32>
        %274 = vector.broadcast %false : i1 to vector<7xi1>
        %275 = vector.insert %274, %76 [3] : vector<7xi1> into vector<7x7xi1>
        scf.yield %cst_0 : f32
      } else {
        %269 = vector.shuffle %99, %98 [0, 1, 2, 4, 5, 7] : vector<4xf32>, vector<4xf32>
        %270 = tensor.empty() : tensor<4x4xi16>
        %271 = arith.divsi %false, %true : i1
        %272 = vector.broadcast %cst_0 : f32 to vector<4x4xf32>
        %273 = vector.outerproduct %20, %99, %272 {kind = #vector.kind<mul>} : vector<4xf32>, vector<4xf32>
        %274 = index.add %c15, %c10
        %275 = math.copysign %7, %7 : tensor<4xf16>
        %276 = vector.broadcast %cst_0 : f32 to vector<4x13xf32>
        %277 = vector.fma %276, %276, %276 : vector<4x13xf32>
        %278 = math.copysign %16, %1 : tensor<4x4xf16>
        scf.yield %extracted_24 : f32
      }
      %267 = math.absf %from_elements : tensor<4xf16>
      %268 = arith.remsi %c1821740343_i32, %c751753094_i32 : i32
      %alloc_53 = memref.alloc() : memref<7x7xi64>
      scf.yield %alloc_53 : memref<7x7xi64>
    } else {
      %263 = math.roundeven %cst : f16
      %264 = math.cttz %5 : tensor<7x7xi1>
      %inserted_52 = tensor.insert %cst_1 into %16[%c3, %c2] : tensor<4x4xf16>
      %265 = arith.shrui %c3593_i16, %104 : i16
      %266 = math.log1p %1 : tensor<4x4xf16>
      %267 = arith.minf %cst_0, %cst_0 : f32
      %268 = math.ctlz %13 : tensor<4xi16>
      %269 = vector.load %alloc_15[%c3, %c2] : memref<4x13xi1>, vector<4xi1>
      %alloc_53 = memref.alloc() : memref<7x7xi64>
      scf.yield %alloc_53 : memref<7x7xi64>
    }
    %106 = arith.ori %c1088885202_i32, %c0_i32 : i32
    %107 = index.sizeof
    %108 = math.ctpop %15 : tensor<4xi1>
    %109 = math.ipowi %6, %6 : tensor<4x4xi64>
    %110 = math.log10 %7 : tensor<4xf16>
    %111 = vector.load %alloc_10[%c1] : memref<4xf32>, vector<7x7xf32>
    %112 = vector.matrix_multiply %20, %99 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
    %113 = math.log %16 : tensor<4x4xf16>
    %114 = vector.shuffle %103, %103 [0, 1, 4, 5] : vector<4x13xi1>, vector<4x13xi1>
    %115 = arith.divsi %c84985295_i32, %c751753094_i32 : i32
    %116 = math.cttz %13 : tensor<4xi16>
    %117 = arith.minf %cst_1, %cst_1 : f16
    %118 = math.roundeven %9 : tensor<4xf16>
    %119 = vector.flat_transpose %89 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
    %120 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
    %121 = vector.outerproduct %112, %112, %120 {kind = #vector.kind<add>} : vector<1xf32>, vector<1xf32>
    %122 = vector.shuffle %99, %112 [0, 3] : vector<4xf32>, vector<1xf32>
    %123 = affine.max affine_map<(d0) -> (d0 - d0 ceildiv 2 - 64, d0 ceildiv 2 - (d0 * 16 - d0 ceildiv 2) - 128, d0 + d0 ceildiv 2 - (d0 * 16 - d0 ceildiv 2) + 16, d0 * 16 - d0 ceildiv 2)>(%c14)
    %124 = arith.remf %extracted_24, %extracted_24 : f32
    %125 = arith.remf %cst_1, %cst_1 : f16
    memref.tensor_store %11, %alloc_4 : memref<4xf16>
    %126 = index.mul %31, %c13
    %127 = tensor.empty() : tensor<4xi64>
    %128 = vector.broadcast %c1821704957_i64 : i64 to vector<4x13xi64>
    %129 = vector.broadcast %c84985295_i32 : i32 to vector<4x13xi32>
    %130 = vector.gather %127[%c3] [%129], %32, %128 : tensor<4xi64>, vector<4x13xi32>, vector<4x13xi1>, vector<4x13xi64> into vector<4x13xi64>
    %131 = math.log1p %16 : tensor<4x4xf16>
    affine.for %arg1 = 0 to 120 {
    }
    %132 = math.exp2 %1 : tensor<4x4xf16>
    %alloc_26 = memref.alloc() : memref<7x7xi64>
    memref.copy %105, %alloc_26 : memref<7x7xi64> to memref<7x7xi64>
    %133 = arith.muli %c751753094_i32, %c84985295_i32 : i32
    %extracted_27 = tensor.extract %14[%c2] : tensor<4xf32>
    %134 = arith.maxui %c138809055_i64, %c138809055_i64 : i64
    %alloc_28 = memref.alloc() : memref<4xf16>
    %135 = math.absi %5 : tensor<7x7xi1>
    %extracted_29 = tensor.extract %3[%c3] : tensor<4xi1>
    %136 = vector.splat %c14 : vector<7x7xindex>
    %alloc_30 = memref.alloc() : memref<4x4xi16>
    %137 = vector.broadcast %104 : i16 to vector<4x4xi16>
    %138 = vector.broadcast %extracted : i1 to vector<4x4xi1>
    %139 = vector.broadcast %c751753094_i32 : i32 to vector<4x4xi32>
    %140 = vector.gather %alloc_30[%c6, %57] [%139], %138, %137 : memref<4x4xi16>, vector<4x4xi32>, vector<4x4xi1>, vector<4x4xi16> into vector<4x4xi16>
    %141 = arith.muli %c3593_i16, %c8293_i16 : i16
    %142 = math.atan2 %cst_1, %cst : f16
    %143 = math.ctpop %c0_i32 : i32
    %144 = arith.shrui %c138809055_i64, %c138809055_i64 : i64
    %145 = memref.atomic_rmw assign %cst_0, %alloc_9[%c1, %c12] : (f32, memref<4x13xf32>) -> f32
    %146 = index.mul %48, %c3
    %147 = math.copysign %transposed, %18 : tensor<7x7xf32>
    %alloc_31 = memref.alloc() : memref<4xi1>
    %148 = tensor.empty() : tensor<7x7xi1>
    %149 = linalg.matmul ins(%5, %5 : tensor<7x7xi1>, tensor<7x7xi1>) outs(%148 : tensor<7x7xi1>) -> tensor<7x7xi1>
    %150 = arith.maxf %extracted_24, %cst_0 : f32
    %inserted_32 = tensor.insert %extracted_29 into %22[] : tensor<i1>
    %151 = math.floor %14 : tensor<4xf32>
    %152 = arith.shrui %c0_i32, %c751753094_i32 : i32
    %153 = tensor.empty() : tensor<4x13xi16>
    %mapped = linalg.map ins(%8, %8, %8 : tensor<4x13xi16>, tensor<4x13xi16>, tensor<4x13xi16>) outs(%153 : tensor<4x13xi16>)
      (%in: i16, %in_52: i16, %in_53: i16) {
        %263 = math.floor %17 : tensor<4x4xf16>
        %264 = arith.maxui %in_52, %in_53 : i16
        %265 = memref.atomic_rmw addf %cst_1, %alloc_4[%c3] : (f16, memref<4xf16>) -> f16
        %266 = bufferization.clone %alloc_30 : memref<4x4xi16> to memref<4x4xi16>
        memref.assume_alignment %alloc_14, 4 : memref<4x13xf16>
        %alloc_54 = memref.alloc() : memref<7x7xi1>
        memref.tensor_store %53, %alloc_54 : memref<7x7xi1>
        %267 = tensor.empty() : tensor<4x4xi32>
        %268 = bufferization.clone %alloc_4 : memref<4xf16> to memref<4xf16>
        %269 = math.floor %0 : tensor<4x13xf32>
        %270 = math.powf %cst_1, %cst : f16
        %271 = arith.remui %in, %c3593_i16 : i16
        %272 = vector.broadcast %cst_3 : f16 to vector<7xf16>
        %273 = vector.transfer_write %272, %16[%57, %c8] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xf16>, tensor<4x4xf16>
        %274 = vector.matrix_multiply %89, %25 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
        %275 = math.fpowi %1, %12 : tensor<4x4xf16>, tensor<4x4xi32>
        %alloc_55 = memref.alloc() : memref<4xi1>
        %276 = math.sqrt %extracted_24 : f32
        %277 = vector.splat %c84985295_i32 : vector<4x13xi32>
        %278 = arith.shrsi %c0_i32, %c0_i32 : i32
        %279 = math.exp %1 : tensor<4x4xf16>
        %280 = arith.remui %c1821740343_i32, %c751753094_i32 : i32
        %281 = index.divu %c1, %c1
        %282 = math.ctlz %13 : tensor<4xi16>
        %283 = vector.splat %extracted_29 : vector<4x13xi1>
        %284 = arith.divui %c0_i32, %c84985295_i32 : i32
        %285 = math.cos %0 : tensor<4x13xf32>
        %286 = arith.addf %cst_1, %cst : f16
        %287 = bufferization.clone %alloc_8 : memref<7x7xi32> to memref<7x7xi32>
        %288 = arith.subi %c1821704957_i64, %c138809055_i64 : i64
        %289 = arith.addi %104, %c8293_i16 : i16
        %290 = arith.divsi %c1821740343_i32, %c0_i32 : i32
        %291 = arith.minsi %c3593_i16, %in_52 : i16
        memref.tensor_store %0, %alloc_17 : memref<4x13xf32>
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %154 = math.atan2 %2, %14 : tensor<4xf32>
    %alloc_33 = memref.alloc() : memref<4x13xi64>
    %155 = arith.remsi %true, %true : i1
    %156 = math.copysign %2, %14 : tensor<4xf32>
    %157 = math.copysign %cst_1, %cst_1 : f16
    %158 = arith.ceildivsi %false_2, %extracted : i1
    %159 = bufferization.clone %alloc_18 : memref<4x13xf16> to memref<4x13xf16>
    %160 = vector.broadcast %true : i1 to vector<4x4xi1>
    %161 = math.roundeven %7 : tensor<4xf16>
    %162 = vector.broadcast %c8293_i16 : i16 to vector<i16>
    %163 = vector.transfer_write %162, %8[%c12, %c0] : vector<i16>, tensor<4x13xi16>
    %164 = vector.broadcast %cst_0 : f32 to vector<4x4xf32>
    %165 = vector.outerproduct %99, %20, %164 {kind = #vector.kind<maxf>} : vector<4xf32>, vector<4xf32>
    %166 = memref.atomic_rmw minf %extracted_24, %alloc_10[%c0] : (f32, memref<4xf32>) -> f32
    %167 = arith.divf %cst, %cst : f16
    %168 = vector.insertelement %false, %119[%c3 : index] : vector<4xi1>
    %alloc_34 = memref.alloc() : memref<7x7xi1>
    memref.tensor_store %53, %alloc_34 : memref<7x7xi1>
    %169 = index.sizeof
    %from_elements_35 = tensor.from_elements %c84985295_i32, %c0_i32, %c751753094_i32, %c751753094_i32, %c751753094_i32, %c751753094_i32, %c1088885202_i32, %c751753094_i32, %c1821740343_i32, %c1088885202_i32, %c1088885202_i32, %c0_i32, %c1088885202_i32, %c84985295_i32, %c1821740343_i32, %c751753094_i32 : tensor<4x4xi32>
    %170 = arith.maxf %cst, %cst_1 : f16
    %171 = math.ctpop %153 : tensor<4x13xi16>
    %172 = math.floor %cst : f16
    %173 = vector.flat_transpose %119 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
    %174 = math.cttz %3 : tensor<4xi1>
    %175 = arith.shli %false, %true : i1
    %176 = scf.if %false -> (i64) {
      %263 = arith.divsi %c8293_i16, %c8293_i16 : i16
      %264 = vector.flat_transpose %25 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
      %265 = vector.shuffle %89, %25 [0, 2, 3, 7] : vector<4xi1>, vector<4xi1>
      scf.if %extracted_29 {
        %269 = math.roundeven %4 : tensor<7x7xf16>
        %270 = math.exp %7 : tensor<4xf16>
        %271 = vector.broadcast %extracted_27 : f32 to vector<4xf32>
        %272 = vector.fma %271, %20, %98 : vector<4xf32>
        %extracted_53 = tensor.extract %transposed[%c4, %c2] : tensor<7x7xf32>
        %273 = vector.extract %137[3] : vector<4x4xi16>
        %274 = math.cttz %10 : tensor<7x7xi64>
        %275 = arith.maxf %cst_3, %cst_1 : f16
        %276 = math.sqrt %16 : tensor<4x4xf16>
      }
      %266 = math.tanh %9 : tensor<4xf16>
      %alloc_52 = memref.alloc() : memref<4xi32>
      memref.copy %alloc_11, %alloc_52 : memref<4xi32> to memref<4xi32>
      %267 = index.sub %c2, %c12
      %268 = index.mul %c14, %c14
      scf.yield %c1821704957_i64 : i64
    } else {
      %alloc_52 = memref.alloc() : memref<4x4xi32>
      memref.tensor_store %12, %alloc_52 : memref<4x4xi32>
      %263 = math.exp2 %0 : tensor<4x13xf32>
      %264 = bufferization.clone %alloc_18 : memref<4x13xf16> to memref<4x13xf16>
      %265 = vector.broadcast %cst_0 : f32 to vector<4xf32>
      %266 = vector.fma %265, %98, %20 : vector<4xf32>
      %267 = arith.minf %cst_0, %extracted_27 : f32
      %268 = vector.broadcast %cst_0 : f32 to vector<7x7xf32>
      %269 = vector.fma %268, %111, %111 : vector<7x7xf32>
      bufferization.dealloc_tensor %9 : tensor<4xf16>
      %270 = scf.while (%arg1 = %99) : (vector<4xf32>) -> vector<4xf32> {
        %271 = index.add %123, %36
        %272 = vector.insertelement %extracted_24, %98[%40 : index] : vector<4xf32>
        %273 = arith.shrsi %c3593_i16, %c8293_i16 : i16
        %274 = math.ctlz %153 : tensor<4x13xi16>
        %275 = vector.broadcast %extracted_27 : f32 to vector<4x13xf32>
        %276 = vector.fma %275, %275, %275 : vector<4x13xf32>
        %277 = vector.flat_transpose %99 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        %278 = math.log1p %30 : tensor<4x13xf32>
        %279 = math.exp2 %30 : tensor<4x13xf32>
        scf.condition(%false_2) %99 : vector<4xf32>
      } do {
      ^bb0(%arg1: vector<4xf32>):
        %271 = arith.subi %extracted_29, %extracted_29 : i1
        %272 = index.mul %107, %52
        %alloc_53 = memref.alloc() : memref<4x13xi1>
        memref.copy %alloc_15, %alloc_53 : memref<4x13xi1> to memref<4x13xi1>
        %273 = tensor.empty() : tensor<4x4xf32>
        %274 = vector.broadcast %c1821740343_i32 : i32 to vector<4xi32>
        %275 = vector.gather %273[%107, %c5] [%274], %26, %265 : tensor<4x4xf32>, vector<4xi32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
        %276 = arith.minsi %c138809055_i64, %c138809055_i64 : i64
        %277 = tensor.empty() : tensor<7x7xi32>
        %278 = vector.gather %277[%52, %c14] [%77], %76, %77 : tensor<7x7xi32>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xi32> into vector<7x7xi32>
        %279 = arith.minui %c1088885202_i32, %c1821740343_i32 : i32
        %alloc_54 = memref.alloc() : memref<7x7xi1>
        memref.tensor_store %148, %alloc_54 : memref<7x7xi1>
        %280 = tensor.empty() : tensor<4x13xi64>
        %281 = index.sizeof
        %282 = affine.min affine_map<(d0, d1) -> (d0 - 4, d1 + d0 + d0 - (d1 - (d1 + (d0 - 4) floordiv 128)))>(%40, %c13)
        %283 = vector.broadcast %c1088885202_i32 : i32 to vector<13xi32>
        %284 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minsi>} %129, %274, %283 : vector<4x13xi32>, vector<4xi32> into vector<13xi32>
        %285 = arith.remf %cst_1, %cst_3 : f16
        %286 = vector.gather %alloc_8[%52, %c9] [%278], %76, %77 : memref<7x7xi32>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xi32> into vector<7x7xi32>
        vector.print %268 : vector<7x7xf32>
        %287 = math.cos %30 : tensor<4x13xf32>
        scf.yield %98 : vector<4xf32>
      }
      scf.yield %c1821704957_i64 : i64
    }
    %177 = arith.cmpi sgt, %104, %104 : i16
    %178 = math.ctlz %13 : tensor<4xi16>
    %179 = math.cttz %176 : i64
    %180 = arith.ceildivsi %c1088885202_i32, %c1821740343_i32 : i32
    %181 = arith.ceildivsi %c8293_i16, %104 : i16
    %182 = tensor.empty() : tensor<7x7x7xf32>
    %183 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed, %alloc : tensor<7x7xf32>, memref<7x7xf32>) outs(%182 : tensor<7x7x7xf32>) {
    ^bb0(%in: f32, %in_52: f32, %out: f32):
      %263 = arith.divf %cst_0, %in : f32
      %264 = bufferization.to_memref %7 : memref<4xf16>
      %265 = vector.broadcast %c84985295_i32 : i32 to vector<7xi32>
      %266 = vector.multi_reduction <and>, %77, %265 [1] : vector<7x7xi32> to vector<7xi32>
      %267 = arith.maxf %cst_1, %cst_1 : f16
      %268 = math.cos %9 : tensor<4xf16>
      %269 = arith.subi %true, %extracted : i1
      %270 = arith.negf %out : f32
      %271 = index.maxs %63, %c7
      affine.for %arg1 = 0 to 30 {
      }
      %272 = tensor.empty() : tensor<7x7xf32>
      %mapped_53 = linalg.map ins(%transposed, %18, %18 : tensor<7x7xf32>, tensor<7x7xf32>, tensor<7x7xf32>) outs(%272 : tensor<7x7xf32>)
        (%in_56: f32, %in_57: f32, %in_58: f32) {
          %293 = math.cos %cst_3 : f16
          %294 = vector.create_mask %126, %146 : vector<4x4xi1>
          %295 = arith.muli %false_2, %true : i1
          %296 = arith.maxui %104, %104 : i16
          %297 = math.floor %1 : tensor<4x4xf16>
          %298 = affine.max affine_map<(d0, d1, d2, d3) -> (d0, (d1 - 8) * 4, d3 * 4 - d0, (d1 - 8) * 4)>(%41, %c0, %56, %c5)
          %299 = index.mul %c12, %c1
          %true_59 = arith.constant true
          %300 = vector.transfer_read %21[%298], %true_59 : tensor<4xi1>, vector<i1>
          %301 = arith.minsi %c1821704957_i64, %c1821704957_i64 : i64
          memref.copy %159, %alloc_14 : memref<4x13xf16> to memref<4x13xf16>
          %302 = affine.max affine_map<(d0) -> (d0 ceildiv 8, (d0 * 4) ceildiv 8)>(%c11)
          %303 = arith.addi %true, %extracted : i1
          %304 = arith.minui %true_59, %false : i1
          %305 = vector.splat %c10 : vector<7x7xindex>
          %306 = vector.shuffle %26, %119 [2, 4, 6] : vector<4xi1>, vector<4xi1>
          %307 = bufferization.clone %264 : memref<4xf16> to memref<4xf16>
          %308 = math.tanh %in : f32
          %309 = index.maxs %40, %c8
          %310 = vector.broadcast %cst_3 : f16 to vector<7xf16>
          vector.transfer_write %310, %alloc_14[%c2, %c6] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xf16>, memref<4x13xf16>
          %311 = arith.addf %cst_1, %cst_3 : f16
          %c1_i16 = arith.constant 1 : i16
          %312 = vector.transfer_read %alloc_19[%c11], %c1_i16 : memref<13xi16>, vector<i16>
          %313 = math.cos %4 : tensor<7x7xf16>
          %314 = vector.create_mask %c9, %c7 : vector<4x13xi1>
          %315 = math.absf %in_57 : f32
          %316 = math.cttz %8 : tensor<4x13xi16>
          %from_elements_60 = tensor.from_elements %104, %104, %c1_i16, %c8293_i16, %c3593_i16, %104, %104, %c3593_i16, %104, %c8293_i16, %c3593_i16, %104, %104, %c8293_i16, %c3593_i16, %c3593_i16 : tensor<4x4xi16>
          %317 = index.castu %c0_i32 : i32 to index
          %318 = vector.splat %cst_1 : vector<7x7xf16>
          %319 = math.fma %11, %9, %11 : tensor<4xf16>
          %320 = math.tan %11 : tensor<4xf16>
          %321 = arith.minui %extracted_29, %extracted : i1
          %inserted_61 = tensor.insert %in_58 into %2[%c3] : tensor<4xf32>
          %cst_62 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_62 : f32
        }
      %273 = math.sqrt %cst_1 : f16
      %inserted_54 = tensor.insert %c138809055_i64 into %127[%c0] : tensor<4xi64>
      %274 = arith.maxf %cst_3, %cst_3 : f16
      %275 = arith.cmpf ult, %cst_1, %cst_1 : f16
      %276 = arith.shrui %176, %176 : i64
      %277 = math.ctpop %22 : tensor<i1>
      %278 = math.absi %23 : tensor<i1>
      %279 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %265, %265, %c0_i32 : vector<7xi32>, vector<7xi32> into i32
      %280 = index.maxu %92, %57
      affine.for %arg1 = 0 to 107 {
      }
      %281 = arith.divui %false_2, %false : i1
      %282 = index.sizeof
      %283 = arith.remsi %false_2, %false : i1
      %284 = arith.minsi %c3593_i16, %c3593_i16 : i16
      %285 = arith.divui %c84985295_i32, %c1088885202_i32 : i32
      %286 = arith.divsi %c3593_i16, %104 : i16
      %287 = affine.if affine_set<(d0, d1, d2, d3) : (d2 ceildiv 32 >= 0, -d2 >= 0)>(%c14, %c11, %c14, %c7) -> i32 {
        %293 = arith.shrui %false_2, %true : i1
        %294 = math.sqrt %2 : tensor<4xf32>
        %295 = arith.remui %false_2, %false : i1
        %296 = math.sqrt %0 : tensor<4x13xf32>
        %297 = index.floordivs %169, %271
        %298 = math.roundeven %7 : tensor<4xf16>
        %299 = vector.insert %false, %119 [3] : i1 into vector<4xi1>
        %300 = vector.broadcast %in_52 : f32 to vector<7x7xf32>
        %301 = vector.fma %300, %111, %111 : vector<7x7xf32>
        affine.yield %c1821740343_i32 : i32
      } else {
        %293 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 floordiv 128 + d2 + 8, d3, d3 * 4, d3 floordiv 128)>(%169, %c8, %c15, %63)
        %294 = vector.extract %103[1] : vector<4x13xi1>
        %295 = arith.shrui %c8293_i16, %104 : i16
        memref.tensor_store %10, %105 : memref<7x7xi64>
        %296 = math.copysign %2, %2 : tensor<4xf32>
        %297 = arith.divsi %c1088885202_i32, %c751753094_i32 : i32
        %298 = arith.divui %c1821740343_i32, %c84985295_i32 : i32
        %299 = math.round %extracted_27 : f32
        affine.yield %c0_i32 : i32
      }
      %extracted_55 = tensor.extract %18[%c5, %c6] : tensor<7x7xf32>
      %288 = vector.broadcast %c1821704957_i64 : i64 to vector<13x13xi64>
      %289 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %128, %128, %288 : vector<4x13xi64>, vector<4x13xi64> into vector<13x13xi64>
      %290 = arith.muli %c84985295_i32, %c84985295_i32 : i32
      %291 = memref.atomic_rmw ori %c3593_i16, %alloc_19[%c7] : (i16, memref<13xi16>) -> i16
      %292 = scf.while (%arg1 = %99) : (vector<4xf32>) -> vector<4xf32> {
        %inserted_56 = tensor.insert %cst_1 into %16[%c0, %c1] : tensor<4x4xf16>
        %293 = math.cttz %c8293_i16 : i16
        %294 = vector.transpose %139, [0, 1] : vector<4x4xi32> to vector<4x4xi32>
        %295 = arith.cmpi uge, %c8293_i16, %104 : i16
        %296 = index.divu %40, %c8
        %297 = vector.broadcast %out : f32 to vector<4x4xf32>
        %298 = vector.outerproduct %20, %99, %297 {kind = #vector.kind<add>} : vector<4xf32>, vector<4xf32>
        %299 = math.round %extracted_55 : f32
        %300 = arith.floordivsi %c1088885202_i32, %c84985295_i32 : i32
        scf.condition(%false_2) %98 : vector<4xf32>
      } do {
      ^bb0(%arg1: vector<4xf32>):
        %293 = index.add %126, %c14
        %alloca_56 = memref.alloca() : memref<7x7xf32>
        %294 = math.exp2 %14 : tensor<4xf32>
        bufferization.dealloc_tensor %11 : tensor<4xf16>
        %295 = vector.insertelement %false_2, %119[%c1 : index] : vector<4xi1>
        %296 = index.maxu %c2, %63
        %297 = vector.insertelement %false_2, %26[%c8 : index] : vector<4xi1>
        %298 = arith.remui %false, %false : i1
        %299 = arith.minsi %176, %c1821704957_i64 : i64
        %300 = arith.addf %cst, %cst : f16
        %301 = arith.maxf %cst_0, %extracted_55 : f32
        %302 = vector.matrix_multiply %26, %173 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
        %303 = bufferization.clone %159 : memref<4x13xf16> to memref<4x13xf16>
        %304 = math.cttz %12 : tensor<4x4xi32>
        %305 = vector.flat_transpose %173 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
        bufferization.dealloc_tensor %8 : tensor<4x13xi16>
        scf.yield %20 : vector<4xf32>
      }
      linalg.yield %extracted_24 : f32
    } -> tensor<7x7x7xf32>
    %184 = arith.remsi %c1821740343_i32, %c84985295_i32 : i32
    %185 = arith.floordivsi %extracted_29, %false : i1
    %186 = index.divs %c6, %c0
    %187 = math.ceil %cst : f16
    %inserted_36 = tensor.insert %extracted_29 into %3[%c0] : tensor<4xi1>
    %188 = tensor.empty() : tensor<7x7x7xf32>
    %189 = tensor.empty() : tensor<7xf32>
    %190 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%189, %188 : tensor<7xf32>, tensor<7x7x7xf32>) outs(%188 : tensor<7x7x7xf32>) {
    ^bb0(%in: f32, %in_52: f32, %out: f32):
      %263 = index.maxs %146, %40
      %264 = scf.execute_region -> memref<4x13xi32> {
        %extracted_55 = tensor.extract %14[%c2] : tensor<4xf32>
        %alloc_56 = memref.alloc() : memref<4x13xi32>
        %300 = vector.gather %alloc_56[%123, %56] [%129], %32, %129 : memref<4x13xi32>, vector<4x13xi32>, vector<4x13xi1>, vector<4x13xi32> into vector<4x13xi32>
        %301 = vector.outerproduct %25, %173, %160 {kind = #vector.kind<and>} : vector<4xi1>, vector<4xi1>
        %302 = math.fma %14, %14, %14 : tensor<4xf32>
        vector.print %139 : vector<4x4xi32>
        %303 = arith.shli %extracted, %true : i1
        %304 = math.absi %13 : tensor<4xi16>
        %305 = arith.addi %c1088885202_i32, %c751753094_i32 : i32
        %306 = math.absi %false_2 : i1
        %307 = arith.remf %extracted_55, %extracted_55 : f32
        memref.assume_alignment %alloc, 4 : memref<7x7xf32>
        %308 = vector.broadcast %48 : index to vector<4xindex>
        %309 = vector.broadcast %c1088885202_i32 : i32 to vector<4xi32>
        vector.scatter %alloc_11[%c2] [%308], %173, %309 : memref<4xi32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
        %310 = math.cttz %c1821740343_i32 : i32
        %311 = arith.minui %104, %c8293_i16 : i16
        %312 = math.cttz %c8293_i16 : i16
        %313 = math.floor %7 : tensor<4xf16>
        scf.yield %alloc_56 : memref<4x13xi32>
      }
      %265 = vector.broadcast %40 : index to vector<13xindex>
      %266 = vector.broadcast %extracted_29 : i1 to vector<13xi1>
      %267 = vector.broadcast %c1088885202_i32 : i32 to vector<13xi32>
      vector.scatter %alloc_11[%c1] [%265], %266, %267 : memref<4xi32>, vector<13xindex>, vector<13xi1>, vector<13xi32>
      %268 = tensor.empty() : tensor<4x4xi32>
      %mapped_53 = linalg.map ins(%12 : tensor<4x4xi32>) outs(%268 : tensor<4x4xi32>)
        (%in_55: i32) {
          %300 = tensor.empty() : tensor<4x4xf16>
          %301 = linalg.matmul ins(%1, %1 : tensor<4x4xf16>, tensor<4x4xf16>) outs(%300 : tensor<4x4xf16>) -> tensor<4x4xf16>
          %302 = index.castu %c138809055_i64 : i64 to index
          %303 = math.ipowi %12, %12 : tensor<4x4xi32>
          %304 = arith.ceildivsi %c1821740343_i32, %in_55 : i32
          %305 = math.sqrt %4 : tensor<7x7xf16>
          %306 = bufferization.clone %alloc_19 : memref<13xi16> to memref<13xi16>
          bufferization.dealloc_tensor %8 : tensor<4x13xi16>
          %307 = arith.muli %c1607356696_i64, %c1821704957_i64 : i64
          %inserted_56 = tensor.insert %cst into %11[%c1] : tensor<4xf16>
          %308 = math.roundeven %18 : tensor<7x7xf32>
          %309 = arith.maxf %cst_3, %cst : f16
          %310 = arith.muli %c84985295_i32, %c1088885202_i32 : i32
          %311 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %99, %98, %in_52 : vector<4xf32>, vector<4xf32> into f32
          %312 = index.sub %146, %126
          %313 = memref.atomic_rmw minf %extracted_27, %alloc_9[%c2, %c7] : (f32, memref<4x13xf32>) -> f32
          %314 = vector.broadcast %c138809055_i64 : i64 to vector<13xi64>
          %315 = vector.insert %314, %130 [0] : vector<13xi64> into vector<4x13xi64>
          %316 = index.castu %c1 : index to i32
          %317 = math.absf %in_52 : f32
          %318 = index.maxs %40, %c0
          %319 = vector.broadcast %c138809055_i64 : i64 to vector<i64>
          vector.transfer_write %319, %alloc_6[%c4] : vector<i64>, memref<4xi64>
          memref.tensor_store %0, %alloc_9 : memref<4x13xf32>
          %320 = tensor.empty() : tensor<4xi32>
          %321 = math.fpowi %14, %320 : tensor<4xf32>, tensor<4xi32>
          %322 = bufferization.clone %81 : memref<7x7xi32> to memref<7x7xi32>
          %323 = arith.minui %c8293_i16, %c8293_i16 : i16
          %324 = math.atan2 %14, %14 : tensor<4xf32>
          %alloca_57 = memref.alloca() : memref<4x13xi64>
          %325 = arith.remsi %c138809055_i64, %c1821704957_i64 : i64
          %326 = math.cttz %6 : tensor<4x4xi64>
          %327 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %138, %32, %103 : vector<4x4xi1>, vector<4x13xi1> into vector<4x13xi1>
          %328 = math.ceil %9 : tensor<4xf16>
          %329 = math.ctlz %6 : tensor<4x4xi64>
          %330 = math.absi %22 : tensor<i1>
          %c0_i32_58 = arith.constant 0 : i32
          linalg.yield %c0_i32_58 : i32
        }
      %269 = math.cos %from_elements : tensor<4xf16>
      %270 = math.floor %1 : tensor<4x4xf16>
      %271 = index.sub %146, %c0
      %272 = affine.if affine_set<(d0) : (-(d0 + 1) - d0 == 0, 0 >= 0)>(%c2) -> memref<4x13xi32> {
        vector.print %128 : vector<4x13xi64>
        %c1_i64 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %300 = vector.transfer_read %6[%107, %c11], %c0_i64 : tensor<4x4xi64>, vector<i64>
        %301 = arith.maxf %cst_3, %cst_3 : f16
        %c1_i16 = arith.constant 1 : i16
        %302 = vector.transfer_read %8[%c3, %52], %c1_i16 : tensor<4x13xi16>, vector<13xi16>
        %303 = arith.remf %extracted_24, %cst_0 : f32
        %304 = math.absf %14 : tensor<4xf32>
        %305 = memref.atomic_rmw assign %extracted_24, %alloc[%c6, %c3] : (f32, memref<7x7xf32>) -> f32
        %306 = arith.muli %c138809055_i64, %176 : i64
        affine.yield %264 : memref<4x13xi32>
      } else {
        %300 = math.floor %18 : tensor<7x7xf32>
        %301 = vector.broadcast %cst_3 : f16 to vector<f16>
        %302 = vector.transfer_write %301, %11[%c9] : vector<f16>, tensor<4xf16>
        %303 = math.floor %cst_0 : f32
        %304 = index.sub %c1, %48
        %305 = index.divu %304, %263
        %306 = arith.divf %cst_1, %cst_1 : f16
        %307 = math.sqrt %cst_1 : f16
        %308 = math.roundeven %from_elements : tensor<4xf16>
        affine.yield %264 : memref<4x13xi32>
      }
      %273 = index.floordivs %c4, %c6
      %274 = arith.floordivsi %c84985295_i32, %c0_i32 : i32
      memref.copy %alloc_7, %100 : memref<4x4xf16> to memref<4x4xf16>
      %275 = math.cttz %false_2 : i1
      %276 = memref.atomic_rmw maxf %cst_3, %alloc_7[%c3, %c3] : (f16, memref<4x4xf16>) -> f16
      %277 = arith.divsi %c1607356696_i64, %176 : i64
      %278 = arith.divf %cst_1, %cst_3 : f16
      %279 = math.round %4 : tensor<7x7xf16>
      %280 = index.divs %52, %c5
      %281 = vector.splat %c1088885202_i32 : vector<4xi32>
      %282 = math.expm1 %transposed : tensor<7x7xf32>
      %283 = arith.divui %c84985295_i32, %c1088885202_i32 : i32
      %284 = arith.ceildivsi %true, %extracted : i1
      %285 = math.log1p %14 : tensor<4xf32>
      %286 = index.maxu %57, %263
      %287 = tensor.empty() : tensor<7x7x7xf32>
      %288 = tensor.empty() : tensor<7xf32>
      %289 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%288, %18 : tensor<7xf32>, tensor<7x7xf32>) outs(%287 : tensor<7x7x7xf32>) {
      ^bb0(%in_55: f32, %in_56: f32, %out_57: f32):
        %300 = math.round %11 : tensor<4xf16>
        %301 = memref.load %alloc_16[%c1] : memref<4xi1>
        %true_58 = arith.constant true
        %302 = vector.transfer_read %53[%36, %126], %true_58 : tensor<7x7xi1>, vector<i1>
        %303 = arith.shrui %true, %false : i1
        %304 = index.maxu %c5, %c4
        %305 = arith.remsi %c8293_i16, %104 : i16
        %306 = arith.mulf %cst_1, %cst_1 : f16
        %307 = affine.max affine_map<(d0) -> (-(d0 + d0 floordiv 4) + d0, (-(d0 + d0 floordiv 4) + d0) ceildiv 16, d0, ((d0 floordiv 4 - (d0 + d0 floordiv 4)) mod 4) floordiv 4)>(%c12)
        %308 = math.log10 %in_55 : f32
        %309 = vector.insert %in_56, %112 [0] : f32 into vector<1xf32>
        %310 = vector.transpose %77, [0, 1] : vector<7x7xi32> to vector<7x7xi32>
        %311 = math.atan2 %18, %18 : tensor<7x7xf32>
        %312 = index.mul %c2, %36
        %313 = vector.load %alloc_12[%c0] : memref<4xi1>, vector<4x13xi1>
        %314 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %138, %160, %138 : vector<4x4xi1>, vector<4x4xi1> into vector<4x4xi1>
        %315 = index.ceildivs %57, %273
        %316 = arith.ori %c0_i32, %c751753094_i32 : i32
        %317 = vector.matrix_multiply %112, %99 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<1xf32>, vector<4xf32>) -> vector<4xf32>
        %318 = math.absf %extracted_24 : f32
        %319 = math.floor %in_52 : f32
        %320 = index.sizeof
        %321 = arith.divsi %c1088885202_i32, %c1088885202_i32 : i32
        %322 = index.sizeof
        %323 = vector.insertelement %true, %89[%92 : index] : vector<4xi1>
        %324 = math.round %18 : tensor<7x7xf32>
        %325 = index.sub %c9, %186
        %326 = arith.minsi %176, %c138809055_i64 : i64
        vector.print %20 : vector<4xf32>
        bufferization.dealloc_tensor %9 : tensor<4xf16>
        %327 = bufferization.to_tensor %alloc_17 : memref<4x13xf32>
        %328 = tensor.empty() : tensor<4x4xf16>
        %329 = linalg.matmul ins(%1, %16 : tensor<4x4xf16>, tensor<4x4xf16>) outs(%328 : tensor<4x4xf16>) -> tensor<4x4xf16>
        bufferization.dealloc_tensor %4 : tensor<7x7xf16>
        linalg.yield %cst_0 : f32
      } -> tensor<7x7x7xf32>
      %290 = vector.broadcast %cst_0 : f32 to vector<4xf32>
      %291 = vector.fma %290, %99, %290 : vector<4xf32>
      %292 = vector.load %62[%c2] : memref<4xi1>, vector<4x13xi1>
      %293 = tensor.empty() : tensor<4x4xf16>
      %mapped_54 = linalg.map ins(%alloc_5 : memref<4x4xf16>) outs(%293 : tensor<4x4xf16>)
        (%in_55: f16) {
          %300 = arith.shli %true, %false : i1
          %301 = arith.ceildivsi %c1821704957_i64, %176 : i64
          %302 = arith.muli %c1607356696_i64, %176 : i64
          %303 = math.round %cst_1 : f16
          %304 = index.maxs %c10, %36
          %305 = index.sizeof
          %inserted_56 = tensor.insert %c3593_i16 into %8[%c0, %c5] : tensor<4x13xi16>
          %306 = arith.shrui %c84985295_i32, %c84985295_i32 : i32
          %307 = index.maxs %57, %c0
          %rank_57 = tensor.rank %11 : tensor<4xf16>
          %308 = math.ctpop %extracted : i1
          %309 = index.divu %c5, %40
          %310 = math.absf %9 : tensor<4xf16>
          %311 = math.atan2 %2, %14 : tensor<4xf32>
          %312 = math.sqrt %2 : tensor<4xf32>
          %313 = math.round %in : f32
          %314 = math.sqrt %0 : tensor<4x13xf32>
          %315 = vector.broadcast %176 : i64 to vector<i64>
          %316 = vector.transfer_write %315, %127[%c12] : vector<i64>, tensor<4xi64>
          %from_elements_58 = tensor.from_elements %cst, %cst_3, %cst, %cst_1 : tensor<4xf16>
          %317 = index.ceildivs %309, %c15
          %318 = index.maxu %rank_57, %57
          %319 = math.fpowi %16, %268 : tensor<4x4xf16>, tensor<4x4xi32>
          %320 = math.copysign %0, %0 : tensor<4x13xf32>
          %321 = vector.reduction <maxsi>, %173 : vector<4xi1> into i1
          %322 = math.floor %in_52 : f32
          %323 = bufferization.clone %alloc_8 : memref<7x7xi32> to memref<7x7xi32>
          %324 = index.sizeof
          %325 = vector.broadcast %c1607356696_i64 : i64 to vector<i64>
          vector.transfer_write %325, %105[%c0, %56] : vector<i64>, memref<7x7xi64>
          %326 = math.atan %cst_3 : f16
          %327 = arith.minui %extracted, %false : i1
          %328 = math.absf %7 : tensor<4xf16>
          %329 = arith.cmpi sge, %c8293_i16, %c3593_i16 : i16
          %cst_59 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_59 : f16
        }
      %294 = math.ctpop %8 : tensor<4x13xi16>
      %295 = math.ipowi %13, %13 : tensor<4xi16>
      %296 = vector.broadcast %extracted_27 : f32 to vector<4x4xf32>
      %297 = vector.fma %296, %296, %296 : vector<4x4xf32>
      %298 = index.maxs %280, %63
      %299 = math.roundeven %1 : tensor<4x4xf16>
      linalg.yield %in : f32
    } -> tensor<7x7x7xf32>
    %191 = index.castu %true : i1 to index
    %192 = index.ceildivu %c14, %40
    %193 = arith.addf %extracted_24, %cst_0 : f32
    %rank = tensor.rank %18 : tensor<7x7xf32>
    %194 = arith.minui %false_2, %extracted_29 : i1
    %195 = math.atan2 %16, %1 : tensor<4x4xf16>
    %196 = index.maxs %c12, %c14
    %197 = math.sqrt %7 : tensor<4xf16>
    %198 = index.mul %36, %191
    %199 = math.fma %18, %transposed, %18 : tensor<7x7xf32>
    %inserted_37 = tensor.insert %cst into %4[%c6, %c6] : tensor<7x7xf16>
    %alloc_38 = memref.alloc() : memref<4xi32>
    memref.copy %alloc_11, %alloc_38 : memref<4xi32> to memref<4xi32>
    scf.if %false {
      memref.tensor_store %14, %alloc_10 : memref<4xf32>
      %263 = math.cos %30 : tensor<4x13xf32>
      %264 = arith.remf %cst_1, %cst : f16
      %265 = math.atan2 %4, %4 : tensor<7x7xf16>
      %266 = affine.min affine_map<(d0, d1) -> ((d0 ceildiv 128) floordiv 2 - 64, d0, d0 ceildiv 64 + 32)>(%41, %c7)
      %267 = index.maxu %c14, %63
      %268 = math.floor %18 : tensor<7x7xf32>
      bufferization.dealloc_tensor %21 : tensor<4xi1>
    } else {
      %263 = index.floordivs %56, %rank
      %264 = index.mul %c9, %c0
      %265 = arith.divsi %c8293_i16, %c8293_i16 : i16
      %266 = arith.shrsi %c138809055_i64, %c1821704957_i64 : i64
      %267 = arith.remsi %c3593_i16, %c8293_i16 : i16
      %268 = arith.subi %104, %c3593_i16 : i16
      %269 = math.absi %c1607356696_i64 : i64
      %270 = affine.if affine_set<(d0, d1, d2) : (-d2 >= 0, d1 == 0, d2 mod 2 >= 0)>(%c8, %c6, %c8) -> memref<4x13xi16> {
        %271 = arith.subi %176, %c1607356696_i64 : i64
        %272 = index.maxu %c10, %57
        %273 = arith.minsi %176, %176 : i64
        %274 = math.cos %cst : f16
        %275 = tensor.empty() : tensor<4xi32>
        %276 = math.fpowi %7, %275 : tensor<4xf16>, tensor<4xi32>
        %277 = index.add %92, %c1
        %278 = math.floor %4 : tensor<7x7xf16>
        %inserted_52 = tensor.insert %true into %15[%c0] : tensor<4xi1>
        %alloc_53 = memref.alloc() : memref<4x13xi16>
        affine.yield %alloc_53 : memref<4x13xi16>
      } else {
        %271 = arith.minsi %c751753094_i32, %c1088885202_i32 : i32
        %272 = math.ipowi %c0_i32, %c1088885202_i32 : i32
        memref.tensor_store %7, %alloc_4 : memref<4xf16>
        %273 = math.exp %extracted_24 : f32
        %274 = index.ceildivs %196, %c3
        %275 = arith.remsi %false, %extracted_29 : i1
        %276 = math.floor %9 : tensor<4xf16>
        %277 = arith.ceildivsi %c8293_i16, %104 : i16
        %alloc_52 = memref.alloc() : memref<4x13xi16>
        affine.yield %alloc_52 : memref<4x13xi16>
      }
    }
    %200 = vector.transpose %78, [1, 0] : vector<7x7xf16> to vector<7x7xf16>
    %201 = index.ceildivu %56, %c3
    %rank_39 = tensor.rank %127 : tensor<4xi64>
    %202 = memref.atomic_rmw maxf %cst_1, %87[%c0, %c7] : (f16, memref<4x13xf16>) -> f16
    memref.assume_alignment %alloc_7, 16 : memref<4x4xf16>
    %203 = vector.broadcast %extracted_24 : f32 to vector<4x13xf32>
    %204 = vector.fma %203, %203, %203 : vector<4x13xf32>
    memref.tensor_store %11, %alloc_4 : memref<4xf16>
    %205 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %98, %98, %extracted_27 : vector<4xf32>, vector<4xf32> into f32
    %from_elements_40 = tensor.from_elements %c1607356696_i64, %c1821704957_i64, %c1821704957_i64, %c138809055_i64 : tensor<4xi64>
    %inserted_41 = tensor.insert %104 into %153[%c2, %c6] : tensor<4x13xi16>
    %alloc_42 = memref.alloc() : memref<4x13xf16>
    %206 = arith.shrui %c8293_i16, %c8293_i16 : i16
    %from_elements_43 = tensor.from_elements %c138809055_i64, %176, %176, %176, %176, %c138809055_i64, %c138809055_i64, %c1821704957_i64, %c1607356696_i64, %c1607356696_i64, %c1607356696_i64, %c1821704957_i64, %c138809055_i64, %c1607356696_i64, %176, %c1607356696_i64 : tensor<4x4xi64>
    %207 = affine.max affine_map<(d0, d1) -> (d0 + (-d1) mod 16)>(%192, %c4)
    %inserted_44 = tensor.insert %cst_0 into %14[%c2] : tensor<4xf32>
    %208 = math.ctlz %12 : tensor<4x4xi32>
    %209 = index.ceildivs %c6, %191
    %generated = tensor.generate %57, %rank {
    ^bb0(%arg1: index, %arg2: index):
      %from_elements_52 = tensor.from_elements %c138809055_i64, %c1821704957_i64, %c138809055_i64, %c138809055_i64 : tensor<4xi64>
      %true_53 = arith.constant true
      %263 = vector.transfer_read %53[%107, %c6], %true_53 : tensor<7x7xi1>, vector<4xi1>
      %264 = vector.broadcast %true : i1 to vector<13x4xi1>
      %265 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %32, %138, %264 : vector<4x13xi1>, vector<4x4xi1> into vector<13x4xi1>
      %266 = math.absf %17 : tensor<4x4xf16>
      tensor.yield %cst : f16
    } : tensor<?x?xf16>
    %210 = index.ceildivs %c2, %186
    %211 = math.absi %3 : tensor<4xi1>
    %212 = math.cos %14 : tensor<4xf32>
    %213 = index.add %c6, %201
    %214 = arith.ceildivsi %true, %false : i1
    %215 = math.floor %7 : tensor<4xf16>
    %216 = math.copysign %cst_3, %cst_3 : f16
    %217 = math.ceil %1 : tensor<4x4xf16>
    %218 = index.floordivs %40, %56
    memref.alloca_scope  {
      %263 = vector.broadcast %c3593_i16 : i16 to vector<13xi16>
      %264 = vector.transfer_write %263, %153[%146, %c2] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<13xi16>, tensor<4x13xi16>
      %265 = vector.splat %41 : vector<4x4xindex>
      %expanded = tensor.expand_shape %17 [[0], [1, 2]] : tensor<4x4xf16> into tensor<4x4x1xf16>
      %266 = affine.max affine_map<(d0, d1, d2) -> (((-d2) ceildiv 16) ceildiv 16, d0, d1 - 128, d1)>(%c11, %rank_39, %191)
      %267 = index.ceildivs %48, %c2
      %268 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %20, %99, %extracted_27 : vector<4xf32>, vector<4xf32> into f32
      %269 = math.absi %c1821704957_i64 : i64
      %270 = arith.negf %cst_1 : f16
      %271 = arith.maxf %cst_1, %cst : f16
      %272 = arith.maxui %extracted_29, %true : i1
      %273 = scf.if %true -> (f32) {
        %293 = vector.matrix_multiply %99, %98 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %294 = math.exp2 %expanded : tensor<4x4x1xf16>
        %295 = math.tanh %11 : tensor<4xf16>
        %296 = arith.muli %c1607356696_i64, %176 : i64
        %297 = index.maxs %c9, %36
        %298 = arith.ori %c84985295_i32, %c1088885202_i32 : i32
        %299 = vector.shuffle %137, %140 [5, 6, 7] : vector<4x4xi16>, vector<4x4xi16>
        %300 = arith.floordivsi %false_2, %false_2 : i1
        scf.yield %extracted_24 : f32
      } else {
        %293 = vector.broadcast %cst_0 : f32 to vector<7x7xf32>
        %294 = vector.fma %293, %293, %293 : vector<7x7xf32>
        %295 = arith.maxf %extracted_24, %extracted_24 : f32
        %296 = arith.minui %c84985295_i32, %c84985295_i32 : i32
        %297 = math.copysign %4, %4 : tensor<7x7xf16>
        %298 = index.ceildivs %c5, %c0
        %299 = arith.divsi %104, %c3593_i16 : i16
        %alloc_53 = memref.alloc() : memref<4x4xf32>
        %300 = vector.broadcast %true : i1 to vector<7xi1>
        %301 = vector.insert %300, %76 [2] : vector<7xi1> into vector<7x7xi1>
        scf.yield %cst_0 : f32
      }
      %274 = math.exp %from_elements : tensor<4xf16>
      %275 = index.ceildivs %41, %218
      %276 = index.ceildivs %218, %192
      %277 = index.sizeof
      %alloc_52 = memref.alloc() : memref<4x13xf32>
      %278 = arith.subi %extracted, %extracted_29 : i1
      %279 = math.atan2 %transposed, %18 : tensor<7x7xf32>
      memref.assume_alignment %alloc_17, 2 : memref<4x13xf32>
      %280 = arith.cmpi uge, %c3593_i16, %104 : i16
      %281 = math.ctpop %c1821704957_i64 : i64
      %282 = arith.ori %true, %true : i1
      %283 = bufferization.clone %alloc_15 : memref<4x13xi1> to memref<4x13xi1>
      %284 = vector.reduction <mul>, %112 : vector<1xf32> into f32
      %285 = math.floor %11 : tensor<4xf16>
      %286 = bufferization.clone %alloc_8 : memref<7x7xi32> to memref<7x7xi32>
      memref.store %cst, %alloc_5[%c1, %c3] : memref<4x4xf16>
      %287 = math.absi %6 : tensor<4x4xi64>
      %288 = vector.broadcast %false_2 : i1 to vector<13xi1>
      %289 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<and>} %32, %173, %288 : vector<4x13xi1>, vector<4xi1> into vector<13xi1>
      %290 = arith.addf %cst, %cst_3 : f16
      %291 = math.exp2 %extracted_24 : f32
      %292 = vector.insert %extracted_24, %99 [0] : f32 into vector<4xf32>
    }
    %219 = tensor.empty() : tensor<7x7x7xf32>
    %220 = tensor.empty() : tensor<7xf32>
    %221 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc, %220 : memref<7x7xf32>, tensor<7xf32>) outs(%219 : tensor<7x7x7xf32>) {
    ^bb0(%in: f32, %in_52: f32, %out: f32):
      %263 = arith.ceildivsi %extracted, %false_2 : i1
      %extracted_53 = tensor.extract %30[%c2, %c6] : tensor<4x13xf32>
      %264 = math.exp %4 : tensor<7x7xf16>
      %265 = math.ctpop %extracted : i1
      %266 = vector.load %alloc_13[%c2, %c1] : memref<4x4xf16>, vector<4x13xf16>
      %267 = arith.shrui %c1821740343_i32, %c1088885202_i32 : i32
      %extracted_54 = tensor.extract %12[%c1, %c3] : tensor<4x4xi32>
      %268 = math.absf %7 : tensor<4xf16>
      %269 = math.ctpop %from_elements_43 : tensor<4x4xi64>
      %270 = math.ceil %11 : tensor<4xf16>
      %271 = math.ctlz %23 : tensor<i1>
      %272 = vector.shuffle %25, %26 [1, 2, 3, 6, 7] : vector<4xi1>, vector<4xi1>
      %273 = arith.shrui %false_2, %true : i1
      %274 = math.cos %transposed : tensor<7x7xf32>
      %275 = math.log1p %1 : tensor<4x4xf16>
      %from_elements_55 = tensor.from_elements %c1607356696_i64, %c1821704957_i64, %c1821704957_i64, %c1607356696_i64, %c1607356696_i64, %c138809055_i64, %c1607356696_i64, %c1821704957_i64, %c138809055_i64, %c1607356696_i64, %176, %c1607356696_i64, %c138809055_i64, %c1607356696_i64, %c138809055_i64, %c1821704957_i64 : tensor<4x4xi64>
      %276 = arith.addf %cst_0, %in : f32
      %277 = math.copysign %9, %9 : tensor<4xf16>
      %278 = vector.broadcast %false_2 : i1 to vector<13x13xi1>
      %279 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %103, %32, %278 : vector<4x13xi1>, vector<4x13xi1> into vector<13x13xi1>
      %280 = bufferization.clone %alloc : memref<7x7xf32> to memref<7x7xf32>
      %281 = arith.muli %c1607356696_i64, %c1607356696_i64 : i64
      %282 = index.add %c2, %123
      bufferization.dealloc_tensor %148 : tensor<7x7xi1>
      %283 = vector.gather %2[%57] [%129], %103, %204 : tensor<4xf32>, vector<4x13xi32>, vector<4x13xi1>, vector<4x13xf32> into vector<4x13xf32>
      %284 = bufferization.to_memref %2 : memref<4xf32>
      %285 = tensor.empty() : tensor<7x7x7xf32>
      %286 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc, %transposed : memref<7x7xf32>, tensor<7x7xf32>) outs(%285 : tensor<7x7x7xf32>) {
      ^bb0(%in_56: f32, %in_57: f32, %out_58: f32):
        %294 = math.log1p %transposed : tensor<7x7xf32>
        %295 = math.absf %9 : tensor<4xf16>
        %296 = arith.minsi %c0_i32, %c751753094_i32 : i32
        %297 = arith.divsi %104, %c3593_i16 : i16
        %298 = math.tan %extracted_27 : f32
        %299 = affine.max affine_map<(d0) -> (d0 * 64, d0 - 64, d0 * 128)>(%40)
        %inserted_59 = tensor.insert %cst_3 into %11[%c3] : tensor<4xf16>
        %300 = vector.broadcast %c1821740343_i32 : i32 to vector<13xi32>
        vector.transfer_write %300, %alloc_8[%c14, %40] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<13xi32>, memref<7x7xi32>
        %301 = arith.remsi %c138809055_i64, %c1821704957_i64 : i64
        %302 = tensor.empty() : tensor<4x4xi16>
        %303 = math.ctlz %21 : tensor<4xi1>
        %304 = arith.addf %cst, %cst_1 : f16
        %305 = index.divu %c12, %186
        %306 = index.ceildivs %207, %31
        %307 = arith.remsi %176, %c1607356696_i64 : i64
        %from_elements_60 = tensor.from_elements %c1607356696_i64, %c138809055_i64, %c138809055_i64, %c138809055_i64 : tensor<4xi64>
        %308 = vector.insert %89, %160 [0] : vector<4xi1> into vector<4x4xi1>
        bufferization.dealloc_tensor %22 : tensor<i1>
        %309 = arith.divsi %c3593_i16, %c8293_i16 : i16
        memref.tensor_store %3, %alloc_12 : memref<4xi1>
        %310 = math.ipowi %127, %127 : tensor<4xi64>
        %311 = math.sqrt %30 : tensor<4x13xf32>
        %312 = vector.splat %218 : vector<7x7xindex>
        %313 = vector.load %87[%c1, %c5] : memref<4x13xf16>, vector<7x7xf16>
        %314 = arith.minsi %c751753094_i32, %c84985295_i32 : i32
        %315 = arith.shrsi %c1821704957_i64, %c1607356696_i64 : i64
        %316 = math.fma %14, %14, %2 : tensor<4xf32>
        %317 = math.round %9 : tensor<4xf16>
        bufferization.dealloc_tensor %11 : tensor<4xf16>
        %318 = math.ctpop %false : i1
        %319 = vector.broadcast %extracted : i1 to vector<i1>
        %320 = vector.transfer_write %319, %15[%c5] : vector<i1>, tensor<4xi1>
        %321 = arith.divsi %c1821704957_i64, %c1607356696_i64 : i64
        linalg.yield %cst_0 : f32
      } -> tensor<7x7x7xf32>
      %287 = vector.broadcast %cst_1 : f16 to vector<f16>
      %288 = vector.transfer_write %287, %from_elements[%c1] : vector<f16>, tensor<4xf16>
      %289 = tensor.empty() : tensor<4xi32>
      %290 = math.fpowi %7, %289 : tensor<4xf16>, tensor<4xi32>
      %291 = math.cttz %c138809055_i64 : i64
      %292 = math.ctlz %6 : tensor<4x4xi64>
      %293 = vector.splat %c8 : vector<4x4xindex>
      memref.tensor_store %21, %alloc_12 : memref<4xi1>
      linalg.yield %out : f32
    } -> tensor<7x7x7xf32>
    %222 = arith.minui %true, %false_2 : i1
    %223 = math.ceil %1 : tensor<4x4xf16>
    %alloc_45 = memref.alloc() : memref<4x13xi16>
    memref.tensor_store %8, %alloc_45 : memref<4x13xi16>
    %224 = vector.broadcast %extracted_24 : f32 to vector<4x4xf32>
    %225 = vector.fma %224, %224, %224 : vector<4x4xf32>
    vector.print %77 : vector<7x7xi32>
    %226 = vector.outerproduct %98, %20, %225 {kind = #vector.kind<mul>} : vector<4xf32>, vector<4xf32>
    %227 = math.round %0 : tensor<4x13xf32>
    %228 = index.floordivs %c1, %191
    %229 = tensor.empty() : tensor<4xf16>
    %230 = math.absi %127 : tensor<4xi64>
    %231 = arith.divf %cst_3, %cst_3 : f16
    %232 = arith.divsi %c3593_i16, %104 : i16
    %233 = vector.shuffle %137, %137 [7] : vector<4x4xi16>, vector<4x4xi16>
    %234 = arith.divui %extracted_29, %extracted_29 : i1
    %235 = math.roundeven %4 : tensor<7x7xf16>
    %236 = math.sqrt %4 : tensor<7x7xf16>
    %237 = math.sqrt %11 : tensor<4xf16>
    %238 = math.sqrt %extracted_24 : f32
    %239 = arith.remui %extracted_29, %false : i1
    %alloc_46 = memref.alloc() : memref<4x4xi1>
    %240 = vector.gather %alloc_46[%c13, %228] [%139], %160, %138 : memref<4x4xi1>, vector<4x4xi32>, vector<4x4xi1>, vector<4x4xi1> into vector<4x4xi1>
    %241 = math.floor %0 : tensor<4x13xf32>
    %242 = arith.shrui %c0_i32, %c0_i32 : i32
    %243 = arith.addf %cst_0, %extracted_27 : f32
    %244 = index.maxs %218, %228
    %245 = arith.muli %c138809055_i64, %176 : i64
    bufferization.dealloc_tensor %10 : tensor<7x7xi64>
    %246 = arith.minui %104, %c8293_i16 : i16
    %alloc_47 = memref.alloc() : memref<4x13xf32>
    %247 = index.floordivs %c8, %c7
    %248 = arith.shrui %c1607356696_i64, %c138809055_i64 : i64
    %249 = tensor.empty() : tensor<4x4xf16>
    %250 = linalg.matmul ins(%1, %17 : tensor<4x4xf16>, tensor<4x4xf16>) outs(%249 : tensor<4x4xf16>) -> tensor<4x4xf16>
    %251 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %225, %20, %20 : vector<4x4xf32>, vector<4xf32> into vector<4xf32>
    %252 = scf.index_switch %196 -> tensor<4x13xi16> 
    case 1 {
      %263 = index.mul %c11, %213
      %264 = math.ctpop %153 : tensor<4x13xi16>
      %265 = math.cos %229 : tensor<4xf16>
      %266 = vector.broadcast %extracted_27 : f32 to vector<4x4xf32>
      %267 = vector.fma %266, %225, %225 : vector<4x4xf32>
      %268 = arith.ori %c84985295_i32, %c1821740343_i32 : i32
      %inserted_52 = tensor.insert %extracted_29 into %5[%c6, %c1] : tensor<7x7xi1>
      %269 = vector.shuffle %89, %173 [0, 1, 2, 3, 5, 6] : vector<4xi1>, vector<4xi1>
      vector.print %89 : vector<4xi1>
      %270 = math.atan %cst_0 : f32
      %271 = vector.matrix_multiply %20, %20 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
      %272 = math.cttz %53 : tensor<7x7xi1>
      %273 = vector.load %alloc_11[%c3] : memref<4xi32>, vector<7x7xi32>
      vector.print %119 : vector<4xi1>
      %274 = arith.ori %104, %c8293_i16 : i16
      %275 = index.floordivs %c14, %c13
      %276 = math.ipowi %6, %6 : tensor<4x4xi64>
      scf.yield %8 : tensor<4x13xi16>
    }
    case 2 {
      %263 = arith.divui %c1821704957_i64, %c138809055_i64 : i64
      %264 = index.mul %186, %31
      %265 = affine.max affine_map<(d0, d1, d2) -> (d0 * 16 + 2, d0 * 16 + 2, d2 ceildiv 2 + 8, d1)>(%36, %c13, %c6)
      %266 = bufferization.clone %alloc_12 : memref<4xi1> to memref<4xi1>
      %267 = math.absi %false_2 : i1
      %268 = math.atan2 %14, %14 : tensor<4xf32>
      %alloc_52 = memref.alloc() : memref<4xi64>
      %269 = vector.load %alloc_18[%c3, %c10] : memref<4x13xf16>, vector<4x4xf16>
      %270 = math.floor %4 : tensor<7x7xf16>
      %extracted_53 = tensor.extract %22[] : tensor<i1>
      scf.if %extracted_53 {
        %275 = index.sub %57, %265
        %276 = math.absi %6 : tensor<4x4xi64>
        %277 = arith.remsi %false_2, %false_2 : i1
        %278 = index.floordivs %210, %209
        %279 = arith.subi %c8293_i16, %c3593_i16 : i16
        %280 = vector.broadcast %cst_0 : f32 to vector<7x7xf32>
        %281 = vector.fma %280, %111, %111 : vector<7x7xf32>
        %c14553_i16 = arith.constant 14553 : i16
        vector.print %32 : vector<4x13xi1>
      } else {
        %275 = math.expm1 %18 : tensor<7x7xf32>
        memref.assume_alignment %alloc_30, 1 : memref<4x4xi16>
        %276 = math.atan2 %from_elements, %11 : tensor<4xf16>
        %277 = memref.atomic_rmw mulf %extracted_24, %alloc[%c6, %c2] : (f32, memref<7x7xf32>) -> f32
        %alloc_54 = memref.alloc() : memref<4xi16>
        memref.tensor_store %13, %alloc_54 : memref<4xi16>
        %278 = vector.create_mask %rank, %265 : vector<4x4xi1>
        %279 = math.ctpop %21 : tensor<4xi1>
        %280 = arith.remsi %extracted_53, %false_2 : i1
      }
      scf.if %true {
        %275 = vector.shuffle %140, %137 [3, 5, 6] : vector<4x4xi16>, vector<4x4xi16>
        %inserted_54 = tensor.insert %c0_i32 into %12[%c3, %c0] : tensor<4x4xi32>
        %276 = index.add %c0, %213
        %277 = math.log1p %cst_0 : f32
        %278 = vector.insert %cst_0, %99 [0] : f32 into vector<4xf32>
        %279 = math.sqrt %14 : tensor<4xf32>
        %280 = vector.broadcast %extracted_27 : f32 to vector<7xf32>
        %281 = vector.insert %280, %111 [5] : vector<7xf32> into vector<7x7xf32>
        %282 = memref.atomic_rmw andi %c1821740343_i32, %alloc_8[%c4, %c1] : (i32, memref<7x7xi32>) -> i32
      }
      %271 = bufferization.clone %alloc_13 : memref<4x4xf16> to memref<4x4xf16>
      %272 = math.absi %8 : tensor<4x13xi16>
      %273 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %269, %269, %269 : vector<4x4xf16>, vector<4x4xf16> into vector<4x4xf16>
      %274 = arith.divui %c3593_i16, %104 : i16
      scf.yield %8 : tensor<4x13xi16>
    }
    case 3 {
      %263 = math.log %229 : tensor<4xf16>
      %264 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 + 16)>(%36, %201, %c9, %c12)
      %265 = index.floordivs %192, %c1
      memref.assume_alignment %alloc_30, 4 : memref<4x4xi16>
      %inserted_52 = tensor.insert %cst_1 into %7[%c2] : tensor<4xf16>
      %alloc_53 = memref.alloc() : memref<4x13xi1>
      %266 = tensor.empty() : tensor<7x7x7xf32>
      %267 = tensor.empty() : tensor<7xf32>
      %268 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%267 : tensor<7xf32>) outs(%266 : tensor<7x7x7xf32>) {
      ^bb0(%in: f32, %out: f32):
        %279 = arith.minui %c1607356696_i64, %c138809055_i64 : i64
        %280 = vector.splat %c1088885202_i32 : vector<4xi32>
        %281 = arith.maxui %c3593_i16, %104 : i16
        %282 = arith.ceildivsi %c3593_i16, %104 : i16
        bufferization.dealloc_tensor %21 : tensor<4xi1>
        %283 = arith.addi %extracted_29, %false_2 : i1
        %284 = vector.matrix_multiply %20, %99 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<4xf32>) -> vector<1xf32>
        %285 = vector.matrix_multiply %26, %26 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
        %286 = vector.matrix_multiply %285, %285 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
        %287 = arith.remui %c3593_i16, %c8293_i16 : i16
        %288 = math.log %cst_1 : f16
        %289 = vector.broadcast %cst : f16 to vector<f16>
        vector.transfer_write %289, %alloc_4[%191] : vector<f16>, memref<4xf16>
        %290 = index.add %c4, %c12
        %291 = bufferization.to_memref %249 : memref<4x4xf16>
        %extracted_54 = tensor.extract %229[%c1] : tensor<4xf16>
        %292 = index.add %c0, %56
        %293 = arith.negf %in : f32
        %294 = tensor.empty() : tensor<7x7xi1>
        %295 = linalg.matmul ins(%53, %148 : tensor<7x7xi1>, tensor<7x7xi1>) outs(%294 : tensor<7x7xi1>) -> tensor<7x7xi1>
        %alloc_55 = memref.alloc() : memref<7x7xi1>
        memref.tensor_store %53, %alloc_55 : memref<7x7xi1>
        %296 = vector.insert %in, %284 [0] : f32 into vector<1xf32>
        %297 = math.cos %extracted_27 : f32
        %298 = math.copysign %cst_3, %cst_3 : f16
        %inserted_56 = tensor.insert %extracted_24 into %30[%c2, %c7] : tensor<4x13xf32>
        %299 = math.absf %extracted_54 : f16
        %300 = arith.remsi %false, %extracted_29 : i1
        %301 = vector.matrix_multiply %173, %26 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
        %302 = index.maxu %c2, %126
        %303 = vector.broadcast %false : i1 to vector<13xi1>
        %304 = vector.insert %303, %32 [3] : vector<13xi1> into vector<4x13xi1>
        %305 = math.absi %22 : tensor<i1>
        %306 = math.ceil %9 : tensor<4xf16>
        %307 = math.ipowi %176, %176 : i64
        %308 = vector.load %alloc_12[%c1] : memref<4xi1>, vector<7x7xi1>
        linalg.yield %extracted_24 : f32
      } -> tensor<7x7x7xf32>
      memref.assume_alignment %alloc_19, 8 : memref<13xi16>
      %269 = vector.broadcast %cst_1 : f16 to vector<f16>
      %270 = vector.transfer_write %269, %7[%rank_39] : vector<f16>, tensor<4xf16>
      %271 = index.divs %191, %c1
      %272 = tensor.empty() : tensor<4xi32>
      %273 = math.fpowi %14, %272 : tensor<4xf32>, tensor<4xi32>
      %274 = vector.extract_strided_slice %26 {offsets = [2], sizes = [2], strides = [1]} : vector<4xi1> to vector<2xi1>
      %275 = arith.ori %c138809055_i64, %176 : i64
      %276 = affine.for %arg1 = 0 to 68 iter_args(%arg2 = %7) -> (tensor<4xf16>) {
        affine.yield %7 : tensor<4xf16>
      }
      %277 = vector.outerproduct %89, %25, %240 {kind = #vector.kind<xor>} : vector<4xi1>, vector<4xi1>
      %278 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 floordiv 4, d2 + 128)>(%201, %264, %c14, %107)
      scf.yield %8 : tensor<4x13xi16>
    }
    case 4 {
      %263 = math.ipowi %c8293_i16, %c3593_i16 : i16
      %264 = math.absi %13 : tensor<4xi16>
      memref.copy %alloc_7, %alloc_5 : memref<4x4xf16> to memref<4x4xf16>
      %265 = vector.insertelement %extracted_29, %89[%228 : index] : vector<4xi1>
      %266 = arith.muli %176, %c1607356696_i64 : i64
      %267 = math.atan2 %cst_0, %cst_0 : f32
      %268 = arith.remf %cst_3, %cst_3 : f16
      %269 = vector.extract %203[3] : vector<4x13xf32>
      %270 = arith.ori %c1607356696_i64, %176 : i64
      %271 = arith.muli %true, %true : i1
      %alloc_52 = memref.alloc() : memref<4xi1>
      %272 = arith.shrui %c1821704957_i64, %c1821704957_i64 : i64
      %273 = bufferization.clone %159 : memref<4x13xf16> to memref<4x13xf16>
      %274 = arith.ori %c138809055_i64, %176 : i64
      %275 = bufferization.clone %alloc_11 : memref<4xi32> to memref<4xi32>
      %276 = math.absf %extracted_27 : f32
      scf.yield %153 : tensor<4x13xi16>
    }
    default {
      %263 = math.absf %cst_3 : f16
      %264 = arith.shrsi %c751753094_i32, %c1088885202_i32 : i32
      %265 = bufferization.to_tensor %62 : memref<4xi1>
      %266 = math.cttz %12 : tensor<4x4xi32>
      %267 = arith.subi %extracted_29, %false_2 : i1
      %268 = vector.splat %c3 : vector<4x4xindex>
      %269 = math.ipowi %10, %10 : tensor<7x7xi64>
      %270 = index.ceildivs %48, %48
      %271 = bufferization.clone %alloc_9 : memref<4x13xf32> to memref<4x13xf32>
      %272 = math.copysign %14, %14 : tensor<4xf32>
      %273 = arith.divsi %extracted_29, %extracted_29 : i1
      %274 = vector.gather %alloc_15[%169, %rank_39] [%139], %160, %160 : memref<4x13xi1>, vector<4x4xi32>, vector<4x4xi1>, vector<4x4xi1> into vector<4x4xi1>
      %275 = vector.broadcast %cst : f16 to vector<7xf16>
      %276 = vector.broadcast %extracted_29 : i1 to vector<7xi1>
      %277 = vector.maskedload %87[%c3, %c11], %276, %275 : memref<4x13xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
      %278 = index.ceildivu %rank_39, %213
      %279 = math.absf %transposed : tensor<7x7xf32>
      %280 = arith.divsi %c1088885202_i32, %c751753094_i32 : i32
      scf.yield %153 : tensor<4x13xi16>
    }
    %253 = vector.broadcast %extracted_27 : f32 to vector<7x7xf32>
    %254 = vector.fma %253, %111, %111 : vector<7x7xf32>
    %cst_48 = arith.constant 1.000000e+00 : f32
    %cst_49 = arith.constant 0.000000e+00 : f32
    %255 = vector.transfer_read %alloc_9[%52, %c5], %cst_49 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<4x13xf32>, vector<4xf32>
    %256 = math.ipowi %153, %153 : tensor<4x13xi16>
    %257 = vector.insertelement %extracted_24, %98[%92 : index] : vector<4xf32>
    %258 = math.floor %11 : tensor<4xf16>
    %259 = tensor.empty() : tensor<4x4xi64>
    %260 = linalg.copy ins(%from_elements_43 : tensor<4x4xi64>) outs(%259 : tensor<4x4xi64>) -> tensor<4x4xi64>
    %alloc_50 = memref.alloc() : memref<4xf16>
    linalg.transpose ins(%7 : tensor<4xf16>) outs(%alloc_50 : memref<4xf16>) permutation = [0] 
    %alloc_51 = memref.alloc() : memref<f16>
    linalg.reduce ins(%9 : tensor<4xf16>) outs(%alloc_51 : memref<f16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %263 = bufferization.clone %alloc_6 : memref<4xi64> to memref<4xi64>
        %rank_52 = tensor.rank %15 : tensor<4xi1>
        %264 = index.mul %123, %c1
        %265 = index.mul %213, %c6
        %266 = affine.if affine_set<(d0, d1, d2, d3) : (d1 + d3 == 0, d3 * 16 == 0, d0 + d1 == 0)>(%c0, %c10, %c13, %c15) -> memref<4x4xf16> {
          %269 = arith.maxf %cst_48, %extracted_24 : f32
          %270 = bufferization.clone %alloc_6 : memref<4xi64> to memref<4xi64>
          %271 = vector.insertelement %cst_0, %20[%207 : index] : vector<4xf32>
          %272 = arith.maxf %cst_1, %in : f16
          %273 = index.ceildivs %264, %126
          %274 = vector.outerproduct %98, %99, %224 {kind = #vector.kind<minf>} : vector<4xf32>, vector<4xf32>
          %275 = arith.divf %extracted_27, %extracted_27 : f32
          %276 = arith.negf %extracted_24 : f32
          affine.yield %alloc_7 : memref<4x4xf16>
        } else {
          %269 = vector.multi_reduction <minf>, %225, %98 [0] : vector<4x4xf32> to vector<4xf32>
          %270 = memref.load %87[%c2, %c7] : memref<4x13xf16>
          %271 = arith.minsi %extracted_29, %false_2 : i1
          memref.store %cst_3, %alloc_18[%c0, %c8] : memref<4x13xf16>
          %rank_54 = tensor.rank %from_elements_35 : tensor<4x4xi32>
          %272 = index.sub %c9, %218
          %273 = bufferization.clone %alloc_7 : memref<4x4xf16> to memref<4x4xf16>
          %274 = arith.ori %c8293_i16, %c8293_i16 : i16
          affine.yield %alloc_13 : memref<4x4xf16>
        }
        scf.if %true {
          %269 = math.cttz %extracted : i1
          %270 = vector.outerproduct %99, %20, %225 {kind = #vector.kind<maxf>} : vector<4xf32>, vector<4xf32>
          %271 = math.roundeven %cst_0 : f32
          %272 = arith.addf %init, %init : f16
          %273 = arith.addi %c1088885202_i32, %c1088885202_i32 : i32
          %274 = arith.shrui %104, %c3593_i16 : i16
          %275 = vector.broadcast %extracted_27 : f32 to vector<4xf32>
          %276 = vector.fma %275, %99, %275 : vector<4xf32>
          %277 = vector.broadcast %init : f16 to vector<f16>
          %278 = vector.transfer_write %277, %249[%c0, %31] : vector<f16>, tensor<4x4xf16>
        }
        %267 = arith.cmpi sge, %176, %c1607356696_i64 : i64
        %268 = math.cos %extracted_24 : f32
        %cst_53 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_53 : f16
      }
    %261 = scf.parallel (%arg1) = (%c2) to (%c9) step (%c11) init (%transposed) -> tensor<7x7xf32> {
      %263 = arith.shrsi %104, %104 : i16
      %264 = math.atan2 %11, %9 : tensor<4xf16>
      %265 = arith.maxui %c0_i32, %c84985295_i32 : i32
      %266 = vector.create_mask %41 : vector<4xi1>
      %cst_52 = arith.constant 1.43130829E+9 : f32
      %267 = scf.index_switch %c0 -> f16 
      case 1 {
        %280 = arith.remsi %c138809055_i64, %c1821704957_i64 : i64
        %281 = math.atan2 %extracted_24, %extracted_24 : f32
        %282 = vector.matrix_multiply %173, %119 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
        %283 = math.atan %9 : tensor<4xf16>
        %inserted_54 = tensor.insert %extracted_29 into %53[%c0, %c1] : tensor<7x7xi1>
        %284 = math.roundeven %7 : tensor<4xf16>
        %285 = bufferization.to_tensor %alloc_46 : memref<4x4xi1>
        %286 = bufferization.to_memref %285 : memref<4x4xi1>
        %287 = math.round %30 : tensor<4x13xf32>
        %288 = arith.floordivsi %false_2, %false_2 : i1
        %inserted_55 = tensor.insert %cst_3 into %generated[%c0, %c0] : tensor<?x?xf16>
        %289 = index.castu %extracted : i1 to index
        %290 = arith.minsi %c0_i32, %c1088885202_i32 : i32
        %291 = vector.load %100[%c0, %c2] : memref<4x4xf16>, vector<4xf16>
        %292 = tensor.empty() : tensor<4x4xi64>
        %293 = linalg.matmul ins(%6, %6 : tensor<4x4xi64>, tensor<4x4xi64>) outs(%292 : tensor<4x4xi64>) -> tensor<4x4xi64>
        %294 = math.ctpop %176 : i64
        scf.yield %cst_1 : f16
      }
      default {
        %280 = math.round %2 : tensor<4xf32>
        %inserted_54 = tensor.insert %c138809055_i64 into %6[%c2, %c3] : tensor<4x4xi64>
        %281 = index.castu %c9 : index to i32
        %282 = arith.minui %c84985295_i32, %c84985295_i32 : i32
        %283 = index.mul %rank, %92
        %284 = vector.outerproduct %99, %20, %225 {kind = #vector.kind<mul>} : vector<4xf32>, vector<4xf32>
        %285 = bufferization.to_tensor %alloc_8 : memref<7x7xi32>
        %286 = vector.matrix_multiply %112, %112 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
        %287 = arith.shrsi %c138809055_i64, %c138809055_i64 : i64
        %288 = index.floordivs %213, %52
        %289 = vector.flat_transpose %99 {columns = 2 : i32, rows = 2 : i32} : vector<4xf32> -> vector<4xf32>
        %290 = arith.shrui %c751753094_i32, %c1088885202_i32 : i32
        %291 = vector.broadcast %c1607356696_i64 : i64 to vector<i64>
        %292 = vector.transfer_write %291, %10[%c0, %arg1] : vector<i64>, tensor<7x7xi64>
        %293 = math.ctpop %153 : tensor<4x13xi16>
        %294 = math.sqrt %cst_48 : f32
        %295 = index.sub %rank, %c1
        scf.yield %cst_3 : f16
      }
      %268 = index.casts %c751753094_i32 : i32 to index
      %269 = arith.maxf %cst_0, %cst_48 : f32
      %270 = math.copysign %2, %2 : tensor<4xf32>
      %271 = arith.muli %c751753094_i32, %c751753094_i32 : i32
      %272 = tensor.empty() : tensor<7x7x7xf32>
      %alloc_53 = memref.alloc() : memref<7xf32>
      %273 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed, %transposed, %alloc_53 : tensor<7x7xf32>, tensor<7x7xf32>, memref<7xf32>) outs(%272 : tensor<7x7x7xf32>) {
      ^bb0(%in: f32, %in_54: f32, %in_55: f32, %out: f32):
        memref.store %c1821740343_i32, %81[%c3, %c4] : memref<7x7xi32>
        %280 = math.cos %in : f32
        %281 = index.sub %198, %201
        %282 = vector.extract_strided_slice %25 {offsets = [1], sizes = [3], strides = [1]} : vector<4xi1> to vector<3xi1>
        %283 = arith.xori %false_2, %extracted_29 : i1
        %284 = memref.atomic_rmw mulf %cst_3, %159[%c3, %c11] : (f16, memref<4x13xf16>) -> f16
        %285 = vector.multi_reduction <mul>, %266, %89 [] : vector<4xi1> to vector<4xi1>
        %286 = math.absf %7 : tensor<4xf16>
        %287 = arith.minf %cst_1, %cst_1 : f16
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_56 = arith.constant 0 : i64
        %288 = vector.transfer_read %260[%201, %rank_39], %c0_i64_56 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<4x4xi64>, vector<4xi64>
        %289 = vector.reduction <maxui>, %282 : vector<3xi1> into i1
        %290 = arith.divf %in_54, %extracted_27 : f32
        %291 = index.sub %c15, %281
        %292 = vector.shuffle %138, %160 [0, 1, 2, 3, 4, 5] : vector<4x4xi1>, vector<4x4xi1>
        %293 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<and>} %26, %138, %173 : vector<4xi1>, vector<4x4xi1> into vector<4xi1>
        %294 = math.expm1 %out : f32
        %295 = memref.load %alloc_17[%c1, %c10] : memref<4x13xf32>
        %296 = vector.broadcast %extracted_27 : f32 to vector<7x7xf32>
        %297 = vector.fma %296, %254, %254 : vector<7x7xf32>
        %298 = arith.minsi %c138809055_i64, %176 : i64
        %299 = tensor.empty() : tensor<4xi32>
        %300 = math.fpowi %11, %299 : tensor<4xf16>, tensor<4xi32>
        %from_elements_57 = tensor.from_elements %104, %104, %104, %104, %c3593_i16, %c8293_i16, %c8293_i16, %c8293_i16, %104, %104, %c3593_i16, %c8293_i16, %104, %c3593_i16, %c3593_i16, %104 : tensor<4x4xi16>
        %301 = bufferization.clone %87 : memref<4x13xf16> to memref<4x13xf16>
        %302 = vector.broadcast %cst : f16 to vector<f16>
        %303 = vector.transfer_write %302, %7[%207] : vector<f16>, tensor<4xf16>
        %304 = vector.insertelement %false, %266[%57 : index] : vector<4xi1>
        %305 = math.exp2 %11 : tensor<4xf16>
        %306 = arith.floordivsi %176, %c138809055_i64 : i64
        %307 = math.absi %from_elements_57 : tensor<4x4xi16>
        %308 = index.ceildivs %c0, %41
        %309 = math.floor %14 : tensor<4xf32>
        %310 = arith.shrui %c138809055_i64, %c138809055_i64 : i64
        memref.store %104, %alloc_19[%c5] : memref<13xi16>
        %311 = vector.matrix_multiply %98, %112 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 1 : i32} : (vector<4xf32>, vector<1xf32>) -> vector<4xf32>
        linalg.yield %cst_48 : f32
      } -> tensor<7x7x7xf32>
      %274 = math.tanh %from_elements : tensor<4xf16>
      %275 = index.sub %c5, %186
      %276 = arith.cmpi ugt, %extracted_29, %false : i1
      %277 = memref.atomic_rmw addf %cst_1, %alloc_14[%c3, %c2] : (f16, memref<4x13xf16>) -> f16
      %278 = math.round %18 : tensor<7x7xf32>
      %279 = tensor.empty() : tensor<7x7xf32>
      scf.reduce(%279)  : tensor<7x7xf32> {
      ^bb0(%arg2: tensor<7x7xf32>, %arg3: tensor<7x7xf32>):
        %280 = arith.muli %c751753094_i32, %c0_i32 : i32
        %281 = index.add %198, %c10
        %282 = vector.shuffle %137, %137 [0, 1, 3, 4, 6, 7] : vector<4x4xi16>, vector<4x4xi16>
        %283 = index.sizeof
        bufferization.dealloc_tensor %7 : tensor<4xf16>
        %alloc_54 = memref.alloc() : memref<4x13xf16>
        %284 = index.maxs %rank, %c0
        %285 = index.maxu %c0, %201
        %286 = tensor.empty() : tensor<7x7xf32>
        scf.reduce.return %286 : tensor<7x7xf32>
      }
      scf.yield
    }
    %262 = affine.vector_load %alloc_50[%c7] : memref<4xf16>, vector<13xf16>
    affine.vector_store %119, %62[%218] : memref<4xi1>, vector<4xi1>
    vector.print %20 : vector<4xf32>
    vector.print %25 : vector<4xi1>
    vector.print %26 : vector<4xi1>
    vector.print %32 : vector<4x13xi1>
    vector.print %75 : vector<7x7xf16>
    vector.print %76 : vector<7x7xi1>
    vector.print %77 : vector<7x7xi32>
    vector.print %78 : vector<7x7xf16>
    vector.print %88 : vector<f16>
    vector.print %89 : vector<4xi1>
    vector.print %98 : vector<4xf32>
    vector.print %99 : vector<4xf32>
    vector.print %103 : vector<4x13xi1>
    vector.print %111 : vector<7x7xf32>
    vector.print %112 : vector<1xf32>
    vector.print %119 : vector<4xi1>
    vector.print %128 : vector<4x13xi64>
    vector.print %129 : vector<4x13xi32>
    vector.print %130 : vector<4x13xi64>
    vector.print %137 : vector<4x4xi16>
    vector.print %138 : vector<4x4xi1>
    vector.print %139 : vector<4x4xi32>
    vector.print %140 : vector<4x4xi16>
    vector.print %160 : vector<4x4xi1>
    vector.print %162 : vector<i16>
    vector.print %173 : vector<4xi1>
    vector.print %203 : vector<4x13xf32>
    vector.print %204 : vector<4x13xf32>
    vector.print %224 : vector<4x4xf32>
    vector.print %225 : vector<4x4xf32>
    vector.print %240 : vector<4x4xi1>
    vector.print %253 : vector<7x7xf32>
    vector.print %254 : vector<7x7xf32>
    vector.print %262 : vector<13xf16>
    vector.print %c138809055_i64 : i64
    vector.print %c1821704957_i64 : i64
    vector.print %false : i1
    vector.print %c1821740343_i32 : i32
    vector.print %cst : f16
    vector.print %c1607356696_i64 : i64
    vector.print %c84985295_i32 : i32
    vector.print %c3593_i16 : i16
    vector.print %c751753094_i32 : i32
    vector.print %cst_0 : f32
    vector.print %cst_1 : f16
    vector.print %c1088885202_i32 : i32
    vector.print %c8293_i16 : i16
    vector.print %false_2 : i1
    vector.print %cst_3 : f16
    vector.print %true : i1
    vector.print %extracted : i1
    vector.print %c0_i32 : i32
    vector.print %extracted_24 : f32
    vector.print %104 : i16
    vector.print %extracted_27 : f32
    vector.print %extracted_29 : i1
    vector.print %176 : i64
    vector.print %cst_48 : f32
    return
  }
}
