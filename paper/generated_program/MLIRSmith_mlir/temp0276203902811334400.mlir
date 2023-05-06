module {
  func.func nested @func1(%arg0: index) {
    %c2010211518_i64 = arith.constant 2010211518 : i64
    %cst = arith.constant 0x4D90ABA0 : f32
    %cst_0 = arith.constant 1.57424166E+9 : f32
    %c5959_i16 = arith.constant 5959 : i16
    %false = arith.constant false
    %cst_1 = arith.constant 4.710400e+04 : f16
    %cst_2 = arith.constant 5.177600e+04 : f16
    %false_3 = arith.constant false
    %c1213315302_i64 = arith.constant 1213315302 : i64
    %c1648716306_i64 = arith.constant 1648716306 : i64
    %cst_4 = arith.constant 2.408000e+03 : f16
    %cst_5 = arith.constant 0x4E4C4D0C : f32
    %true = arith.constant true
    %cst_6 = arith.constant 1.886752E+9 : f32
    %c1816508589_i64 = arith.constant 1816508589 : i64
    %cst_7 = arith.constant 3.488000e+03 : f16
    %0 = tensor.empty() : tensor<10xi64>
    %1 = tensor.empty() : tensor<7x7xi32>
    %2 = tensor.empty() : tensor<2x2xf32>
    %3 = tensor.empty() : tensor<7xi32>
    %4 = tensor.empty() : tensor<2x2xi1>
    %5 = tensor.empty() : tensor<10xf32>
    %6 = tensor.empty() : tensor<7x7xf32>
    %7 = tensor.empty() : tensor<2x2xi32>
    %8 = tensor.empty() : tensor<7xi64>
    %9 = tensor.empty() : tensor<10xi16>
    %10 = tensor.empty() : tensor<7xi1>
    %11 = tensor.empty() : tensor<2x2xf32>
    %12 = tensor.empty() : tensor<10xf16>
    %13 = tensor.empty() : tensor<7xi16>
    %14 = tensor.empty() : tensor<7xi64>
    %15 = tensor.empty() : tensor<10xf32>
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
    %alloc = memref.alloc() : memref<2x2xi1>
    %alloc_8 = memref.alloc() : memref<7xi32>
    %alloc_9 = memref.alloc() : memref<2x2xi32>
    %alloc_10 = memref.alloc() : memref<10xf32>
    %alloc_11 = memref.alloc() : memref<10xf16>
    %alloc_12 = memref.alloc() : memref<7xi1>
    %alloc_13 = memref.alloc() : memref<2x2xf16>
    %alloc_14 = memref.alloc() : memref<7xi64>
    %alloc_15 = memref.alloc() : memref<2x2xi64>
    %alloc_16 = memref.alloc() : memref<7x7xi16>
    %alloc_17 = memref.alloc() : memref<10xi64>
    %alloc_18 = memref.alloc() : memref<10xf32>
    %alloc_19 = memref.alloc() : memref<10xf16>
    %alloc_20 = memref.alloc() : memref<7x7xi1>
    %alloc_21 = memref.alloc() : memref<7x7xi16>
    %alloc_22 = memref.alloc() : memref<10xi16>
    %16 = tensor.empty() : tensor<7xi64>
    %17 = linalg.copy ins(%8 : tensor<7xi64>) outs(%16 : tensor<7xi64>) -> tensor<7xi64>
    %18 = tensor.empty() : tensor<7xi1>
    %transposed = linalg.transpose ins(%10 : tensor<7xi1>) outs(%18 : tensor<7xi1>) permutation = [0] 
    %19 = tensor.empty() : tensor<7xi1>
    %reduced = linalg.reduce ins(%alloc_20 : memref<7x7xi1>) outs(%19 : tensor<7xi1>) dimensions = [1] 
      (%in: i1, %init: i1) {
        %alloca_48 = memref.alloca() : memref<2x2xi16>
        %266 = index.ceildivs %c7, %c13
        %267 = arith.maxsi %init, %false : i1
        %c1_i32 = arith.constant 1 : i32
        affine.store %c1_i32, %alloc_9[%c4, %c11] : memref<2x2xi32>
        %268 = vector.broadcast %c2010211518_i64 : i64 to vector<i64>
        %269 = vector.transfer_write %268, %8[%c2] : vector<i64>, tensor<7xi64>
        %270 = math.rsqrt %2 : tensor<2x2xf32>
        %true_49 = index.bool.constant true
        %271 = vector.broadcast %cst_6 : f32 to vector<2x2xf32>
        %272 = vector.broadcast %false : i1 to vector<2x2xi1>
        %273 = vector.broadcast %c1_i32 : i32 to vector<2x2xi32>
        %274 = vector.gather %alloc_18[%c4] [%273], %272, %271 : memref<10xf32>, vector<2x2xi32>, vector<2x2xi1>, vector<2x2xf32> into vector<2x2xf32>
        %true_50 = arith.constant true
        linalg.yield %true_50 : i1
      }
    scf.parallel (%arg1) = (%c12) to (%c10) step (%c2) {
      %266 = scf.index_switch %c5 -> index 
      case 1 {
        %280 = vector.broadcast %cst_2 : f16 to vector<2xf16>
        %281 = vector.matrix_multiply %280, %280 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf16>, vector<2xf16>) -> vector<1xf16>
        %rank = tensor.rank %reduced : tensor<7xi1>
        %282 = math.tanh %6 : tensor<7x7xf32>
        %283 = vector.extract_strided_slice %280 {offsets = [0], sizes = [2], strides = [1]} : vector<2xf16> to vector<2xf16>
        %284 = math.ipowi %4, %4 : tensor<2x2xi1>
        %285 = vector.broadcast %c5959_i16 : i16 to vector<2x2x10xi16>
        %286 = vector.broadcast %c5959_i16 : i16 to vector<2x10xi16>
        %dest_51, %accumulated_value_52 = vector.scan <or>, %285, %286 {inclusive = false, reduction_dim = 0 : i64} : vector<2x2x10xi16>, vector<2x10xi16>
        %alloc_53 = memref.alloc() : memref<10xi32>
        %alloca_54 = memref.alloca() : memref<10xi32>
        %287 = affine.apply affine_map<(d0, d1) -> (d0 * 64)>(%c4, %c2)
        affine.store %c5959_i16, %alloc_16[%c7, %c4] : memref<7x7xi16>
        %288 = math.absf %cst_2 : f16
        %289 = math.expm1 %5 : tensor<10xf32>
        %290 = math.copysign %15, %5 : tensor<10xf32>
        %291 = index.maxs %c10, %c7
        %292 = bufferization.clone %alloc_8 : memref<7xi32> to memref<7xi32>
        %293 = vector.bitcast %281 : vector<1xf16> to vector<1xf16>
        scf.yield %c9 : index
      }
      case 2 {
        %280 = vector.broadcast %false : i1 to vector<7xi1>
        %281 = vector.reduction <minui>, %280 : vector<7xi1> into i1
        %282 = vector.multi_reduction <xor>, %280, %280 [] : vector<7xi1> to vector<7xi1>
        %283 = index.sizeof
        %284 = math.log2 %cst_0 : f32
        %285 = vector.broadcast %c1816508589_i64 : i64 to vector<i64>
        %286 = vector.transfer_write %285, %17[%c2] : vector<i64>, tensor<7xi64>
        %287 = affine.max affine_map<(d0) -> (d0 - 16, d0 - (d0 - 16))>(%c13)
        %288 = math.round %cst_6 : f32
        %289 = vector.create_mask %c5 : vector<10xi1>
        %290 = arith.cmpi ugt, %c2010211518_i64, %c1213315302_i64 : i64
        %291 = arith.cmpf ult, %cst_0, %cst_5 : f32
        %292 = affine.apply affine_map<(d0, d1) -> (d0)>(%c9, %c6)
        %293 = vector.insertelement %c1213315302_i64, %285[] : vector<i64>
        %294 = arith.floordivsi %true, %false : i1
        %295 = math.log1p %cst_6 : f32
        %296 = index.maxu %c8, %c2
        scf.yield %283 : index
      }
      case 3 {
        %inserted_51 = tensor.insert %cst_1 into %12[%c0] : tensor<10xf16>
        %280 = arith.subi %c2010211518_i64, %c1648716306_i64 : i64
        %281 = index.maxs %c13, %c9
        %282 = index.casts %false_3 : i1 to index
        %283 = math.round %cst_4 : f16
        %284 = arith.remsi %c1648716306_i64, %c1648716306_i64 : i64
        %285 = arith.shrui %c1648716306_i64, %c2010211518_i64 : i64
        %alloca_52 = memref.alloca() : memref<7x7xi16>
        %286 = math.ctlz %7 : tensor<2x2xi32>
        %287 = arith.addi %c2010211518_i64, %c1648716306_i64 : i64
        %288 = math.roundeven %cst_6 : f32
        %289 = math.powf %cst_6, %cst_6 : f32
        memref.tensor_store %9, %alloc_22 : memref<10xi16>
        %290 = math.log2 %cst_0 : f32
        %291 = math.copysign %cst_2, %cst_2 : f16
        %292 = vector.load %alloc_17[%c3] : memref<10xi64>, vector<7x7xi64>
        scf.yield %arg1 : index
      }
      case 4 {
        %280 = arith.floordivsi %true, %false : i1
        %281 = math.expm1 %12 : tensor<10xf16>
        %282 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 + 8, (d0 + d3) floordiv 32 - d0)>(%c8, %c14, %c6, %c9)
        %283 = arith.negf %cst_7 : f16
        %284 = arith.muli %c5959_i16, %c5959_i16 : i16
        %285 = vector.broadcast %c13 : index to vector<7xindex>
        %286 = vector.broadcast %false : i1 to vector<7xi1>
        %287 = vector.broadcast %cst_1 : f16 to vector<7xf16>
        vector.scatter %alloc_19[%c1] [%285], %286, %287 : memref<10xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
        %288 = vector.create_mask %c3, %c4 : vector<2x2xi1>
        %289 = memref.realloc %alloc_19 : memref<10xf16> to memref<1xf16>
        %290 = vector.broadcast %c5959_i16 : i16 to vector<7xi16>
        %291 = vector.reduction <minui>, %290 : vector<7xi16> into i16
        %292 = arith.andi %true, %false : i1
        %293 = memref.realloc %alloc_11 : memref<10xf16> to memref<7xf16>
        %294 = arith.minf %cst, %cst_5 : f32
        %295 = arith.floordivsi %c1816508589_i64, %c1816508589_i64 : i64
        %296 = vector.broadcast %cst_0 : f32 to vector<2x2xf32>
        %297 = vector.fma %296, %296, %296 : vector<2x2xf32>
        %298 = math.tan %2 : tensor<2x2xf32>
        %299 = index.ceildivu %c14, %c5
        scf.yield %299 : index
      }
      default {
        %extracted_51 = tensor.extract %14[%c1] : tensor<7xi64>
        %280 = arith.andi %extracted_51, %c1648716306_i64 : i64
        %281 = arith.cmpf uge, %cst_0, %cst : f32
        %alloc_52 = memref.alloc() : memref<7xf32>
        affine.store %c5959_i16, %alloc_21[%c15, %c14] : memref<7x7xi16>
        %c1_i32 = arith.constant 1 : i32
        memref.store %c1_i32, %alloc_9[%c1, %c1] : memref<2x2xi32>
        %282 = arith.addi %false_3, %false : i1
        %true_53 = index.bool.constant true
        %extracted_54 = tensor.extract %10[%c1] : tensor<7xi1>
        %alloca_55 = memref.alloca() : memref<10xi1>
        %283 = math.expm1 %5 : tensor<10xf32>
        %284 = index.floordivs %c10, %c2
        %285 = arith.cmpf uno, %cst_2, %cst_7 : f16
        %286 = arith.mulf %cst_0, %cst_0 : f32
        %287 = index.maxu %284, %284
        %288 = arith.minf %cst_6, %cst_6 : f32
        scf.yield %arg1 : index
      }
      %alloca_48 = memref.alloca() : memref<7xi64>
      %267 = vector.broadcast %cst_5 : f32 to vector<2xf32>
      %268 = vector.flat_transpose %267 {columns = 1 : i32, rows = 2 : i32} : vector<2xf32> -> vector<2xf32>
      %269 = vector.extract %268[0] : vector<2xf32>
      %270 = math.copysign %5, %5 : tensor<10xf32>
      %271 = arith.ceildivsi %c2010211518_i64, %c2010211518_i64 : i64
      %272 = vector.reduction <add>, %267 : vector<2xf32> into f32
      %273 = vector.transpose %267, [0] : vector<2xf32> to vector<2xf32>
      %274 = scf.execute_region -> memref<7xi16> {
        %280 = arith.cmpi eq, %false_3, %false : i1
        %281 = vector.reduction <mul>, %268 : vector<2xf32> into f32
        %282 = vector.flat_transpose %267 {columns = 1 : i32, rows = 2 : i32} : vector<2xf32> -> vector<2xf32>
        %283 = vector.broadcast %true : i1 to vector<10x7xi1>
        %284 = vector.broadcast %false_3 : i1 to vector<7xi1>
        %dest_51, %accumulated_value_52 = vector.scan <maxui>, %283, %284 {inclusive = false, reduction_dim = 0 : i64} : vector<10x7xi1>, vector<7xi1>
        %285 = math.sqrt %2 : tensor<2x2xf32>
        %286 = arith.muli %true, %false : i1
        %287 = affine.apply affine_map<(d0, d1) -> (d0)>(%c5, %c3)
        %288 = vector.insertelement %cst_6, %267[%c10 : index] : vector<2xf32>
        %289 = arith.cmpi sgt, %c1648716306_i64, %c2010211518_i64 : i64
        %290 = vector.load %alloc_21[%c4, %c6] : memref<7x7xi16>, vector<2x2xi16>
        %extracted_53 = tensor.extract %9[%c3] : tensor<10xi16>
        %inserted_54 = tensor.insert %false_3 into %10[%c6] : tensor<7xi1>
        %291 = index.ceildivs %c6, %c14
        %292 = affine.min affine_map<(d0) -> (d0 mod 16, d0 + d0 + 4 + 128)>(%c9)
        %293 = vector.multi_reduction <mul>, %267, %267 [] : vector<2xf32> to vector<2xf32>
        %294 = arith.maxsi %true, %false_3 : i1
        %alloc_55 = memref.alloc() : memref<7xi16>
        scf.yield %alloc_55 : memref<7xi16>
      }
      %275 = math.ctpop %13 : tensor<7xi16>
      %276 = index.floordivs %c6, %arg1
      %277 = arith.maxui %c2010211518_i64, %c1213315302_i64 : i64
      %278 = arith.minf %cst_5, %cst : f32
      %cst_49 = arith.constant 2.08832461E+9 : f32
      %alloc_50 = memref.alloc() : memref<10xi16>
      memref.copy %alloc_22, %alloc_50 : memref<10xi16> to memref<10xi16>
      %279 = arith.muli %c1816508589_i64, %c1816508589_i64 : i64
      scf.yield
    }
    %20 = affine.vector_load %alloc_10[%c7] : memref<10xf32>, vector<2xf32>
    affine.vector_store %20, %alloc_18[%c10] : memref<10xf32>, vector<2xf32>
    %alloc_23 = memref.alloc() : memref<10xi64>
    %21 = tensor.empty() : tensor<i64>
    %22 = linalg.dot ins(%0, %alloc_23 : tensor<10xi64>, memref<10xi64>) outs(%21 : tensor<i64>) -> tensor<i64>
    %23 = math.cttz %c2010211518_i64 : i64
    %24 = vector.broadcast %c5959_i16 : i16 to vector<i16>
    vector.transfer_write %24, %alloc_22[%c9] : vector<i16>, memref<10xi16>
    %25 = math.ctlz %22 : tensor<i64>
    %alloc_24 = memref.alloc() : memref<7xi32>
    memref.copy %alloc_8, %alloc_24 : memref<7xi32> to memref<7xi32>
    %26 = math.log10 %15 : tensor<10xf32>
    %inserted = tensor.insert %cst_0 into %5[%c3] : tensor<10xf32>
    %27 = math.rsqrt %6 : tensor<7x7xf32>
    %28 = vector.create_mask %c14, %c3 : vector<7x7xi1>
    %29 = math.atan2 %2, %2 : tensor<2x2xf32>
    %false_25 = index.bool.constant false
    %30 = math.log %cst_6 : f32
    %31 = bufferization.clone %alloc_21 : memref<7x7xi16> to memref<7x7xi16>
    affine.store %cst_1, %alloc_13[%c14, %c7] : memref<2x2xf16>
    affine.store %cst_0, %alloc_10[%c8] : memref<10xf32>
    %collapsed = tensor.collapse_shape %4 [[0, 1]] : tensor<2x2xi1> into tensor<4xi1>
    %32 = arith.addf %cst_0, %cst_6 : f32
    %33 = vector.broadcast %false_3 : i1 to vector<1xi1>
    %34 = vector.maskedload %alloc_12[%c0], %33, %33 : memref<7xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
    %35 = index.add %c1, %c1
    %36 = tensor.empty() : tensor<2x2xi1>
    %37 = linalg.matmul ins(%4, %4 : tensor<2x2xi1>, tensor<2x2xi1>) outs(%36 : tensor<2x2xi1>) -> tensor<2x2xi1>
    %38 = affine.max affine_map<(d0) -> (d0 * 16 - 32, d0 * 16, d0 mod 16)>(%c0)
    %39 = arith.remf %cst_1, %cst_2 : f16
    %40 = affine.if affine_set<(d0, d1, d2, d3) : ((d0 - 64) ceildiv 32 >= 0, (d1 mod 2 - d0) mod 16 == 0, d2 >= 0, (d0 - 64) ceildiv 32 - 1 == 0)>(%c11, %c14, %c8, %c15) -> i32 {
      %266 = bufferization.clone %alloc_20 : memref<7x7xi1> to memref<7x7xi1>
      %267 = vector.flat_transpose %20 {columns = 1 : i32, rows = 2 : i32} : vector<2xf32> -> vector<2xf32>
      %268 = index.floordivs %38, %c7
      %269 = arith.ceildivsi %false_25, %false_3 : i1
      %alloc_48 = memref.alloc() : memref<2x2xi1>
      memref.copy %alloc, %alloc_48 : memref<2x2xi1> to memref<2x2xi1>
      %rank = tensor.rank %1 : tensor<7x7xi32>
      %270 = math.ctlz %22 : tensor<i64>
      %alloc_49 = memref.alloc() : memref<7x7xf16>
      %c1_i32 = arith.constant 1 : i32
      affine.yield %c1_i32 : i32
    } else {
      %266 = arith.cmpi sgt, %c5959_i16, %c5959_i16 : i16
      %267 = tensor.empty() : tensor<10xi32>
      %268 = arith.floordivsi %false, %true : i1
      %269 = arith.negf %cst_0 : f32
      %270 = index.floordivs %c1, %38
      %271 = arith.negf %cst_6 : f32
      %272 = bufferization.clone %alloc_22 : memref<10xi16> to memref<10xi16>
      %273 = math.tanh %6 : tensor<7x7xf32>
      %c1_i32 = arith.constant 1 : i32
      affine.yield %c1_i32 : i32
    }
    %c0_i16 = arith.constant 0 : i16
    %c0_i16_26 = arith.constant 0 : i16
    %41 = vector.transfer_read %alloc_16[%c9, %c4], %c0_i16_26 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<7x7xi16>, vector<7xi16>
    vector.print %24 : vector<i16>
    %42 = math.tanh %15 : tensor<10xf32>
    %43 = math.sqrt %cst : f32
    %44 = math.log %11 : tensor<2x2xf32>
    %45 = memref.load %alloc_11[%c9] : memref<10xf16>
    %46 = arith.shrui %c2010211518_i64, %c1213315302_i64 : i64
    %47 = index.add %c14, %c0
    %48 = vector.flat_transpose %34 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
    %49 = arith.subi %false, %false : i1
    %50 = arith.divui %c5959_i16, %c0_i16 : i16
    %51 = vector.reduction <xor>, %33 : vector<1xi1> into i1
    %52 = math.tan %cst_4 : f16
    %53 = index.castu %c5959_i16 : i16 to index
    %54 = affine.apply affine_map<(d0, d1) -> (d0 * 64)>(%c4, %c10)
    %55 = vector.bitcast %28 : vector<7x7xi1> to vector<7x7xi1>
    %56 = math.sqrt %2 : tensor<2x2xf32>
    %57 = affine.min affine_map<(d0, d1, d2) -> (d1 + 2, -d0 - 16, -d0)>(%c6, %c10, %c1)
    %58 = vector.insertelement %false_3, %33[%c0 : index] : vector<1xi1>
    %alloca = memref.alloca() : memref<10xi1>
    %59 = math.ctpop %reduced : tensor<7xi1>
    %60 = vector.shuffle %34, %48 [0, 1] : vector<1xi1>, vector<1xi1>
    %61 = vector.broadcast %false_25 : i1 to vector<7xi1>
    %dest, %accumulated_value = vector.scan <minsi>, %28, %61 {inclusive = false, reduction_dim = 1 : i64} : vector<7x7xi1>, vector<7xi1>
    %62 = math.powf %cst_1, %cst_7 : f16
    %63 = bufferization.clone %alloc_22 : memref<10xi16> to memref<10xi16>
    %64 = vector.create_mask %c11 : vector<10xi1>
    %65 = math.absf %15 : tensor<10xf32>
    %66 = math.ctlz %36 : tensor<2x2xi1>
    %67 = vector.splat %cst_7 : vector<7xf16>
    %68 = affine.if affine_set<(d0, d1, d2) : (d1 mod 32 + d0 - 1 == 0, d0 + 1 >= 0, -(d2 mod 4) >= 0)>(%c11, %c4, %c13) -> memref<7x7xf32> {
      %266 = math.ctlz %10 : tensor<7xi1>
      %267 = vector.create_mask %53 : vector<10xi1>
      %c0_i32 = arith.constant 0 : i32
      %from_elements = tensor.from_elements %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32 : tensor<7x7xi32>
      %268 = vector.broadcast %cst_6 : f32 to vector<1xf32>
      %269 = vector.transfer_write %268, %11[%c8, %54] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xf32>, tensor<2x2xf32>
      %270 = index.divs %47, %47
      %271 = vector.multi_reduction <and>, %34, %34 [] : vector<1xi1> to vector<1xi1>
      %272 = math.copysign %15, %15 : tensor<10xf32>
      %273 = vector.transpose %48, [0] : vector<1xi1> to vector<1xi1>
      %alloc_48 = memref.alloc() : memref<7x7xf32>
      affine.yield %alloc_48 : memref<7x7xf32>
    } else {
      %alloc_48 = memref.alloc() : memref<7x7xi16>
      %266 = arith.divui %c0_i16, %c5959_i16 : i16
      %267 = arith.maxui %c1816508589_i64, %c1816508589_i64 : i64
      %268 = arith.maxui %c1816508589_i64, %c1213315302_i64 : i64
      %269 = bufferization.clone %alloc_20 : memref<7x7xi1> to memref<7x7xi1>
      %270 = vector.broadcast %cst_5 : f32 to vector<7xf32>
      %271 = vector.fma %270, %270, %270 : vector<7xf32>
      %272 = index.maxu %47, %c15
      %collapsed_49 = tensor.collapse_shape %6 [[0, 1]] : tensor<7x7xf32> into tensor<49xf32>
      %alloc_50 = memref.alloc() : memref<7x7xf32>
      affine.yield %alloc_50 : memref<7x7xf32>
    }
    %splat = tensor.splat %false_3 : tensor<7xi1>
    %69 = affine.min affine_map<(d0, d1, d2) -> (d0 + 144, d2, d1 - 2)>(%c2, %c0, %c2)
    %70 = math.round %5 : tensor<10xf32>
    %inserted_27 = tensor.insert %c0_i16 into %13[%c2] : tensor<7xi16>
    %71 = math.log %2 : tensor<2x2xf32>
    %72 = arith.divf %cst_0, %cst_6 : f32
    %73 = tensor.empty() : tensor<10xi32>
    %74 = math.fpowi %12, %73 : tensor<10xf16>, tensor<10xi32>
    %75 = math.fpowi %12, %73 : tensor<10xf16>, tensor<10xi32>
    %76 = affine.max affine_map<(d0) -> (d0 ceildiv 64)>(%35)
    %77 = math.absf %11 : tensor<2x2xf32>
    %78 = affine.apply affine_map<(d0, d1) -> (-d1)>(%c4, %c8)
    %79 = bufferization.to_memref %9 : memref<10xi16>
    %80 = math.exp %2 : tensor<2x2xf32>
    %81 = tensor.empty() : tensor<7x7x7xi64>
    %alloc_28 = memref.alloc() : memref<7x7xi64>
    %82 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_28, %81, %alloc_28 : memref<7x7xi64>, tensor<7x7x7xi64>, memref<7x7xi64>) outs(%81 : tensor<7x7x7xi64>) {
    ^bb0(%in: i64, %in_48: i64, %in_49: i64, %out: i64):
      %266 = math.absi %9 : tensor<10xi16>
      %267 = arith.andi %c5959_i16, %c0_i16 : i16
      %268 = index.add %c2, %35
      %269 = arith.maxsi %c1213315302_i64, %in : i64
      scf.index_switch %69 
      case 1 {
        %295 = arith.divui %true, %false_3 : i1
        %296 = math.ipowi %false_3, %false : i1
        memref.store %c0_i16, %31[%c5, %c4] : memref<7x7xi16>
        %alloc_53 = memref.alloc() : memref<7x7xi32>
        memref.tensor_store %1, %alloc_53 : memref<7x7xi32>
        %rank = tensor.rank %18 : tensor<7xi1>
        %297 = math.ceil %cst_7 : f16
        %298 = math.ctlz %8 : tensor<7xi64>
        %299 = index.maxs %c2, %c0
        %inserted_54 = tensor.insert %true into %collapsed[%c1] : tensor<4xi1>
        %300 = bufferization.to_memref %8 : memref<7xi64>
        %301 = vector.transpose %55, [1, 0] : vector<7x7xi1> to vector<7x7xi1>
        %302 = math.log1p %6 : tensor<7x7xf32>
        %303 = math.tan %cst : f32
        %304 = arith.cmpi sle, %c1816508589_i64, %out : i64
        %305 = math.log1p %15 : tensor<10xf32>
        %306 = math.roundeven %cst : f32
        scf.yield
      }
      case 2 {
        %295 = affine.max affine_map<(d0, d1) -> (d0, d0, (d0 floordiv 64) floordiv 32 + 60, d1 mod 2)>(%38, %c8)
        %296 = vector.broadcast %c3 : index to vector<10xindex>
        %297 = vector.broadcast %cst_4 : f16 to vector<10xf16>
        vector.scatter %alloc_19[%c7] [%296], %64, %297 : memref<10xf16>, vector<10xindex>, vector<10xi1>, vector<10xf16>
        %298 = math.ctlz %36 : tensor<2x2xi1>
        %299 = vector.flat_transpose %20 {columns = 1 : i32, rows = 2 : i32} : vector<2xf32> -> vector<2xf32>
        %300 = vector.create_mask %c8 : vector<10xi1>
        %splat_53 = tensor.splat %c2010211518_i64 : tensor<10xi64>
        %301 = math.round %cst_4 : f16
        %302 = index.mul %c15, %35
        %303 = math.tanh %cst_2 : f16
        %304 = affine.min affine_map<(d0, d1) -> (d0 + d1 mod 32 - 127)>(%57, %53)
        %305 = arith.cmpi sge, %in_49, %out : i64
        %306 = arith.minsi %in_48, %c1213315302_i64 : i64
        %307 = arith.maxui %c0_i16, %c5959_i16 : i16
        %308 = memref.atomic_rmw assign %c2010211518_i64, %alloc_17[%c9] : (i64, memref<10xi64>) -> i64
        %309 = memref.realloc %alloc_11 : memref<10xf16> to memref<10xf16>
        %310 = affine.load %alloc_18[%c14] : memref<10xf32>
        scf.yield
      }
      case 3 {
        %295 = index.castu %c10 : index to i32
        %extracted_53 = tensor.extract %12[%c1] : tensor<10xf16>
        %296 = math.log2 %cst_6 : f32
        %splat_54 = tensor.splat %true : tensor<7xi1>
        %297 = arith.floordivsi %c1648716306_i64, %c2010211518_i64 : i64
        %298 = vector.matrix_multiply %34, %34 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
        %299 = arith.maxsi %c1816508589_i64, %in : i64
        %collapsed_55 = tensor.collapse_shape %4 [[0, 1]] : tensor<2x2xi1> into tensor<4xi1>
        %300 = arith.shli %c0_i16, %c5959_i16 : i16
        %301 = math.fpowi %5, %73 : tensor<10xf32>, tensor<10xi32>
        %302 = arith.minf %cst, %cst_0 : f32
        %cast = tensor.cast %21 : tensor<i64> to tensor<i64>
        %303 = math.roundeven %15 : tensor<10xf32>
        %304 = tensor.empty() : tensor<10xi1>
        %305 = index.add %c4, %76
        %306 = math.atan2 %cst_1, %cst_1 : f16
        scf.yield
      }
      default {
        affine.store %c5959_i16, %31[%c0, %c15] : memref<7x7xi16>
        %c-7398_i16 = arith.constant -7398 : i16
        %splat_53 = tensor.splat %false_25 : tensor<7x7xi1>
        %295 = vector.multi_reduction <maxui>, %33, %false [0] : vector<1xi1> to i1
        %296 = math.tan %cst_4 : f16
        memref.store %c1648716306_i64, %alloc_23[%c2] : memref<10xi64>
        %297 = index.castu %in_49 : i64 to index
        %298 = arith.ceildivsi %in_49, %in : i64
        %299 = arith.divsi %c1213315302_i64, %out : i64
        %300 = math.fpowi %2, %7 : tensor<2x2xf32>, tensor<2x2xi32>
        %301 = vector.broadcast %295 : i1 to vector<10xi1>
        %302 = arith.muli %false_25, %true : i1
        %303 = math.ceil %cst_0 : f32
        vector.print %301 : vector<10xi1>
        %304 = math.rsqrt %cst_5 : f32
        %305 = arith.negf %cst_1 : f16
      }
      %270 = arith.negf %cst_4 : f16
      %271 = vector.matrix_multiply %48, %64 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 10 : i32} : (vector<1xi1>, vector<10xi1>) -> vector<10xi1>
      %272 = scf.execute_region -> f32 {
        affine.store %c5959_i16, %79[%c6] : memref<10xi16>
        %295 = math.ctlz %c5959_i16 : i16
        %296 = math.roundeven %5 : tensor<10xf32>
        %297 = vector.broadcast %c5959_i16 : i16 to vector<7x7xi16>
        %c1_i32 = arith.constant 1 : i32
        %298 = vector.broadcast %c1_i32 : i32 to vector<7x7xi32>
        %299 = vector.gather %alloc_22[%54] [%298], %55, %297 : memref<10xi16>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xi16> into vector<7x7xi16>
        %300 = math.absf %15 : tensor<10xf32>
        %301 = math.log %12 : tensor<10xf16>
        memref.copy %alloc_19, %alloc_11 : memref<10xf16> to memref<10xf16>
        %302 = index.sizeof
        %303 = vector.insertelement %c5959_i16, %24[] : vector<i16>
        %304 = vector.broadcast %false_25 : i1 to vector<i1>
        %305 = vector.transfer_write %304, %19[%c11] : vector<i1>, tensor<7xi1>
        %306 = arith.muli %out, %c2010211518_i64 : i64
        %307 = arith.addi %in_49, %c1213315302_i64 : i64
        %308 = math.log %2 : tensor<2x2xf32>
        %309 = arith.negf %cst_5 : f32
        %310 = arith.muli %in_48, %c1213315302_i64 : i64
        %311 = math.roundeven %cst_1 : f16
        scf.yield %cst_5 : f32
      }
      %273 = arith.minui %c1816508589_i64, %out : i64
      %274 = vector.broadcast %268 : index to vector<7xindex>
      %275 = vector.broadcast %false_25 : i1 to vector<7xi1>
      %276 = vector.broadcast %c1213315302_i64 : i64 to vector<7xi64>
      vector.scatter %alloc_23[%c8] [%274], %275, %276 : memref<10xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
      %277 = vector.flat_transpose %64 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
      %278 = math.ctlz %false : i1
      %279 = vector.shuffle %24, %24 [0, 1] : vector<i16>, vector<i16>
      %280 = index.maxu %35, %268
      %281 = index.maxs %c6, %c6
      %282 = math.roundeven %cst : f32
      %283 = math.absi %c1213315302_i64 : i64
      %284 = math.ctlz %in_49 : i64
      %285 = math.atan2 %cst_4, %cst_7 : f16
      %286 = arith.shrui %c1213315302_i64, %out : i64
      memref.assume_alignment %31, 16 : memref<7x7xi16>
      %true_50 = index.bool.constant true
      %c0_i32 = arith.constant 0 : i32
      %287 = math.fpowi %cst_0, %c0_i32 : f32, i32
      %288 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2)>(%c14, %54, %69, %c14)
      %289 = index.ceildivs %c8, %c3
      %generated_51 = tensor.generate %c6 {
      ^bb0(%arg1: index):
        %295 = index.mul %47, %35
        %296 = index.ceildivu %c11, %c3
        %297 = math.log1p %12 : tensor<10xf16>
        %298 = arith.xori %out, %out : i64
        tensor.yield %c2010211518_i64 : i64
      } : tensor<?xi64>
      %290 = vector.extract_strided_slice %33 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
      %291 = vector.broadcast %cst : f32 to vector<10xf32>
      %292 = index.ceildivs %c4, %c11
      %extracted_52 = tensor.extract %3[%c6] : tensor<7xi32>
      %293 = tensor.empty() : tensor<7xi1>
      %294 = arith.divsi %true, %false_25 : i1
      linalg.yield %c1213315302_i64 : i64
    } -> tensor<7x7x7xi64>
    %83 = affine.load %alloc_22[%c0] : memref<10xi16>
    %extracted = tensor.extract %1[%c4, %c6] : tensor<7x7xi32>
    %84 = arith.floordivsi %c1213315302_i64, %c1213315302_i64 : i64
    %85 = vector.broadcast %c1816508589_i64 : i64 to vector<10xi64>
    vector.transfer_write %85, %alloc_15[%c0, %78] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xi64>, memref<2x2xi64>
    %86 = arith.muli %c2010211518_i64, %c1816508589_i64 : i64
    %87 = index.castu %78 : index to i32
    %88 = arith.maxsi %c2010211518_i64, %c1213315302_i64 : i64
    %89 = math.atan2 %2, %2 : tensor<2x2xf32>
    %false_29 = index.bool.constant false
    %alloc_30 = memref.alloc() : memref<2x2xi32>
    memref.copy %alloc_9, %alloc_30 : memref<2x2xi32> to memref<2x2xi32>
    %90 = index.maxs %c3, %78
    %91 = affine.load %alloc_22[%c7] : memref<10xi16>
    %92 = index.add %c8, %c5
    %93 = math.atan %2 : tensor<2x2xf32>
    %94 = memref.realloc %alloc_12 : memref<7xi1> to memref<7xi1>
    %95 = vector.extract_strided_slice %64 {offsets = [4], sizes = [2], strides = [1]} : vector<10xi1> to vector<2xi1>
    %96 = math.round %cst : f32
    %97 = math.tan %6 : tensor<7x7xf32>
    %98 = arith.subi %false_25, %false_29 : i1
    %true_31 = index.bool.constant true
    %99 = math.cttz %14 : tensor<7xi64>
    affine.store %cst_0, %alloc_18[%c11] : memref<10xf32>
    %100 = index.sizeof
    %101 = vector.insertelement %91, %24[] : vector<i16>
    %102 = vector.extract_strided_slice %20 {offsets = [0], sizes = [1], strides = [1]} : vector<2xf32> to vector<1xf32>
    %splat_32 = tensor.splat %cst_0 : tensor<7x7xf32>
    %103 = vector.bitcast %28 : vector<7x7xi1> to vector<7x7xi1>
    %104 = vector.broadcast %c14 : index to vector<7xindex>
    %105 = vector.broadcast %false_29 : i1 to vector<7xi1>
    %106 = vector.broadcast %cst_5 : f32 to vector<7xf32>
    vector.scatter %alloc_18[%c9] [%104], %105, %106 : memref<10xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
    %extracted_33 = tensor.extract %7[%c1, %c1] : tensor<2x2xi32>
    %107 = index.mul %c5, %c0
    %108 = index.maxs %57, %c5
    %109 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 floordiv 64 + ((d1 + d0 - d0) mod 4) ceildiv 128, d1 + 2, d1, d1)>(%c5, %38, %92, %c0)
    %110 = bufferization.to_memref %transposed : memref<7xi1>
    %111 = index.maxu %78, %c9
    %112 = vector.extract_strided_slice %95 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi1> to vector<1xi1>
    %113 = vector.flat_transpose %95 {columns = 1 : i32, rows = 2 : i32} : vector<2xi1> -> vector<2xi1>
    %alloca_34 = memref.alloca() : memref<7xf32>
    %114 = arith.muli %false_3, %false_29 : i1
    %115 = tensor.empty() : tensor<i64>
    %mapped = linalg.map ins(%21, %21, %21 : tensor<i64>, tensor<i64>, tensor<i64>) outs(%115 : tensor<i64>)
      (%in: i64, %in_48: i64, %in_49: i64) {
        %266 = arith.maxui %91, %83 : i16
        %true_50 = index.bool.constant true
        %267 = memref.atomic_rmw mins %83, %alloc_16[%c3, %c2] : (i16, memref<7x7xi16>) -> i16
        %268 = arith.muli %c1816508589_i64, %c1213315302_i64 : i64
        %alloca_51 = memref.alloca() : memref<7xf16>
        %inserted_52 = tensor.insert %c5959_i16 into %9[%c6] : tensor<10xi16>
        %269 = vector.broadcast %false_29 : i1 to vector<7xi1>
        %270 = vector.multi_reduction <maxui>, %55, %269 [1] : vector<7x7xi1> to vector<7xi1>
        %false_53 = index.bool.constant false
        %271 = index.castu %c9 : index to i32
        %272 = vector.insertelement %true_50, %113[%c12 : index] : vector<2xi1>
        %273 = math.ipowi %19, %transposed : tensor<7xi1>
        %274 = vector.broadcast %true_50 : i1 to vector<2x2xi1>
        memref.tensor_store %5, %alloc_10 : memref<10xf32>
        %275 = math.cttz %9 : tensor<10xi16>
        %276 = affine.load %79[%c12] : memref<10xi16>
        %277 = math.ceil %11 : tensor<2x2xf32>
        %278 = vector.broadcast %c1816508589_i64 : i64 to vector<7x7xi64>
        %dest_54, %accumulated_value_55 = vector.scan <or>, %55, %269 {inclusive = false, reduction_dim = 1 : i64} : vector<7x7xi1>, vector<7xi1>
        %279 = vector.insertelement %cst_0, %20[%111 : index] : vector<2xf32>
        %280 = math.round %15 : tensor<10xf32>
        %281 = tensor.empty() : tensor<2x2xf32>
        %282 = linalg.matmul ins(%11, %11 : tensor<2x2xf32>, tensor<2x2xf32>) outs(%281 : tensor<2x2xf32>) -> tensor<2x2xf32>
        %283 = index.ceildivu %c0, %c3
        %284 = arith.cmpi eq, %c1816508589_i64, %in : i64
        %inserted_56 = tensor.insert %extracted_33 into %3[%c3] : tensor<7xi32>
        %285 = arith.maxsi %in_48, %in : i64
        %286 = bufferization.to_memref %3 : memref<7xi32>
        %287 = math.fma %cst_5, %cst_5, %cst : f32
        %288 = tensor.empty() : tensor<7xf32>
        %289 = math.log1p %15 : tensor<10xf32>
        %290 = affine.max affine_map<(d0) -> (d0 * -64, d0 * 128, d0, (d0 ceildiv 8) mod 128)>(%c9)
        %splat_57 = tensor.splat %276 : tensor<2x2xi16>
        %291 = index.ceildivu %c8, %c11
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %116 = math.tanh %2 : tensor<2x2xf32>
    %117 = affine.max affine_map<(d0, d1) -> ((d1 - 2) mod 8)>(%69, %76)
    %118 = bufferization.clone %alloc_13 : memref<2x2xf16> to memref<2x2xf16>
    affine.store %extracted, %alloc_8[%c12] : memref<7xi32>
    %119 = arith.muli %false, %false : i1
    %120 = math.cos %cst_4 : f16
    %121 = vector.splat %38 : vector<7xindex>
    %122 = math.tan %cst_2 : f16
    %123 = tensor.empty() : tensor<7x7x7xi64>
    %124 = tensor.empty() : tensor<7x7xi64>
    %125 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%124 : tensor<7x7xi64>) outs(%123 : tensor<7x7x7xi64>) {
    ^bb0(%in: i64, %out: i64):
      %266 = index.ceildivu %76, %35
      %267 = arith.maxui %true_31, %false_29 : i1
      %268 = bufferization.to_memref %11 : memref<2x2xf32>
      %269 = vector.bitcast %112 : vector<1xi1> to vector<1xi1>
      %270 = affine.max affine_map<(d0, d1, d2) -> (d0 - 4, d0 - 4, (d0 - 4) ceildiv 64, d2)>(%c6, %c15, %109)
      %271 = index.ceildivu %c5, %107
      memref.tensor_store %reduced, %alloc_12 : memref<7xi1>
      %272 = index.maxs %271, %107
      %273 = vector.transpose %64, [0] : vector<10xi1> to vector<10xi1>
      %274 = vector.multi_reduction <add>, %102, %cst_6 [0] : vector<1xf32> to f32
      %275 = arith.negf %274 : f32
      %collapsed_48 = tensor.collapse_shape %2 [[0, 1]] : tensor<2x2xf32> into tensor<4xf32>
      %276 = vector.multi_reduction <maxui>, %112, %false_3 [0] : vector<1xi1> to i1
      memref.store %cst_4, %alloc_19[%c1] : memref<10xf16>
      %277 = vector.splat %false_29 : vector<7x7xi1>
      %278 = math.tanh %splat_32 : tensor<7x7xf32>
      %279 = vector.broadcast %cst : f32 to vector<2x2xf32>
      %280 = vector.insert %cst_6, %20 [0] : f32 into vector<2xf32>
      %281 = index.sizeof
      %282 = vector.broadcast %extracted : i32 to vector<i32>
      %283 = vector.transfer_write %282, %3[%100] : vector<i32>, tensor<7xi32>
      scf.index_switch %c0 
      case 1 {
        %292 = math.tan %6 : tensor<7x7xf32>
        memref.copy %118, %alloc_13 : memref<2x2xf16> to memref<2x2xf16>
        %293 = math.fma %15, %15, %15 : tensor<10xf32>
        %294 = math.ctlz %22 : tensor<i64>
        memref.assume_alignment %alloc_16, 1 : memref<7x7xi16>
        %295 = arith.divsi %c5959_i16, %c5959_i16 : i16
        %296 = math.tan %cst_0 : f32
        %297 = math.round %11 : tensor<2x2xf32>
        %cst_49 = arith.constant 6.076800e+04 : f16
        %298 = arith.addi %out, %c1213315302_i64 : i64
        %299 = arith.remui %false_29, %false_29 : i1
        %300 = vector.broadcast %276 : i1 to vector<7xi1>
        %dest_50, %accumulated_value_51 = vector.scan <add>, %55, %300 {inclusive = false, reduction_dim = 1 : i64} : vector<7x7xi1>, vector<7xi1>
        %301 = index.maxs %c8, %c1
        %302 = vector.shuffle %112, %95 [2] : vector<1xi1>, vector<2xi1>
        %303 = vector.extract_strided_slice %64 {offsets = [6], sizes = [3], strides = [1]} : vector<10xi1> to vector<3xi1>
        %304 = arith.cmpi ne, %c1213315302_i64, %c1213315302_i64 : i64
        scf.yield
      }
      case 2 {
        %292 = math.log2 %cst_4 : f16
        %inserted_49 = tensor.insert %cst_5 into %15[%c6] : tensor<10xf32>
        %293 = arith.mulf %cst_7, %cst_2 : f16
        affine.store %cst_4, %alloc_13[%c12, %c12] : memref<2x2xf16>
        %294 = index.castu %109 : index to i32
        %295 = vector.create_mask %c3 : vector<10xi1>
        %296 = index.castu %57 : index to i32
        %297 = tensor.empty() : tensor<2x2xi1>
        %298 = linalg.matmul ins(%4, %4 : tensor<2x2xi1>, tensor<2x2xi1>) outs(%297 : tensor<2x2xi1>) -> tensor<2x2xi1>
        %299 = math.ipowi %c2010211518_i64, %c2010211518_i64 : i64
        %300 = bufferization.to_memref %0 : memref<10xi64>
        %alloca_50 = memref.alloca() : memref<10xi16>
        %301 = vector.broadcast %c1213315302_i64 : i64 to vector<7x7xi64>
        %302 = math.atan2 %6, %6 : tensor<7x7xf32>
        %303 = vector.shuffle %112, %269 [0] : vector<1xi1>, vector<1xi1>
        %304 = math.round %11 : tensor<2x2xf32>
        %false_51 = index.bool.constant false
        scf.yield
      }
      default {
        %292 = arith.shli %c0_i16, %91 : i16
        %293 = math.tanh %5 : tensor<10xf32>
        %294 = vector.broadcast %c10 : index to vector<7xindex>
        %295 = vector.broadcast %false_3 : i1 to vector<7xi1>
        vector.scatter %alloc_12[%c0] [%294], %295, %295 : memref<7xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
        %296 = math.tan %cst : f32
        %c0_i16_49 = arith.constant 0 : i16
        %297 = vector.transfer_read %31[%76, %53], %c0_i16_49 : memref<7x7xi16>, vector<10xi16>
        %298 = math.log1p %cst : f32
        %299 = bufferization.to_memref %14 : memref<7xi64>
        %300 = arith.subi %c5959_i16, %c5959_i16 : i16
        %301 = math.copysign %cst_5, %cst_5 : f32
        memref.copy %79, %63 : memref<10xi16> to memref<10xi16>
        %302 = math.tanh %splat_32 : tensor<7x7xf32>
        %303 = memref.realloc %alloc_19 : memref<10xf16> to memref<7xf16>
        %alloca_50 = memref.alloca() : memref<7xi16>
        %304 = math.absf %2 : tensor<2x2xf32>
        %305 = arith.maxsi %false_29, %false_3 : i1
        %306 = tensor.empty() : tensor<2x2xi32>
        %307 = linalg.matmul ins(%7, %7 : tensor<2x2xi32>, tensor<2x2xi32>) outs(%306 : tensor<2x2xi32>) -> tensor<2x2xi32>
      }
      %284 = arith.shli %c1648716306_i64, %c1816508589_i64 : i64
      %285 = arith.divf %cst_2, %cst_4 : f16
      %286 = math.cos %cst_2 : f16
      %287 = math.log %6 : tensor<7x7xf32>
      %288 = arith.maxui %true_31, %true_31 : i1
      %289 = arith.maxsi %true_31, %false_29 : i1
      affine.for %arg1 = 0 to 92 {
      }
      %290 = vector.multi_reduction <minui>, %113, %276 [0] : vector<2xi1> to i1
      scf.index_switch %c13 
      case 1 {
        %292 = arith.minf %cst_0, %cst_0 : f32
        %293 = arith.xori %false_3, %true_31 : i1
        %294 = vector.extract_strided_slice %64 {offsets = [5], sizes = [3], strides = [1]} : vector<10xi1> to vector<3xi1>
        %295 = vector.extract_strided_slice %95 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi1> to vector<1xi1>
        %296 = affine.min affine_map<(d0) -> ((d0 mod 64) * 32, d0 * 8, d0 * 32)>(%92)
        %297 = vector.flat_transpose %20 {columns = 1 : i32, rows = 2 : i32} : vector<2xf32> -> vector<2xf32>
        %298 = tensor.empty() : tensor<2x2xi1>
        %299 = linalg.matmul ins(%4, %4 : tensor<2x2xi1>, tensor<2x2xi1>) outs(%298 : tensor<2x2xi1>) -> tensor<2x2xi1>
        %true_49 = arith.constant true
        %false_50 = arith.constant false
        %300 = vector.transfer_read %collapsed[%c5], %false_50 : tensor<4xi1>, vector<i1>
        %301 = tensor.empty() : tensor<10xi1>
        %302 = vector.broadcast %276 : i1 to vector<7xi1>
        %303 = vector.broadcast %extracted_33 : i32 to vector<7xi32>
        %304 = vector.gather %301[%108] [%303], %302, %302 : tensor<10xi1>, vector<7xi32>, vector<7xi1>, vector<7xi1> into vector<7xi1>
        %305 = tensor.empty() : tensor<7xi64>
        %alloca_51 = memref.alloca() : memref<10xi32>
        %306 = vector.gather %alloc[%78, %100] [%303], %304, %304 : memref<2x2xi1>, vector<7xi32>, vector<7xi1>, vector<7xi1> into vector<7xi1>
        %307 = vector.create_mask %108, %270 : vector<2x2xi1>
        %308 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 ceildiv 2)>(%270, %c9, %272, %c3)
        %309 = index.add %35, %c1
        %310 = vector.bitcast %294 : vector<3xi1> to vector<3xi1>
        scf.yield
      }
      case 2 {
        %alloca_49 = memref.alloca() : memref<10xi1>
        %alloc_50 = memref.alloc() : memref<10xi64>
        %292 = math.tanh %cst_5 : f32
        %293 = math.round %cst_7 : f16
        %294 = math.cttz %8 : tensor<7xi64>
        %295 = arith.xori %c1648716306_i64, %c2010211518_i64 : i64
        %296 = math.roundeven %11 : tensor<2x2xf32>
        %297 = vector.extract_strided_slice %48 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
        %collapsed_51 = tensor.collapse_shape %11 [[0, 1]] : tensor<2x2xf32> into tensor<4xf32>
        %298 = arith.maxsi %true, %false_29 : i1
        %299 = arith.divsi %c0_i16, %91 : i16
        %300 = affine.max affine_map<(d0, d1) -> (d0 - d1 + 67, (d0 - d1 + 67) mod 16, d0 - (d0 + d0 - 1) mod 64 - 1)>(%57, %c7)
        %301 = vector.insertelement %false, %33[%272 : index] : vector<1xi1>
        affine.store %c2010211518_i64, %alloc_23[%c11] : memref<10xi64>
        %302 = math.log %cst_7 : f16
        %303 = arith.cmpi ugt, %false_29, %false : i1
        scf.yield
      }
      case 3 {
        %292 = math.ctlz %13 : tensor<7xi16>
        %293 = vector.broadcast %c2010211518_i64 : i64 to vector<i64>
        %294 = vector.transfer_write %293, %14[%c6] : vector<i64>, tensor<7xi64>
        %295 = arith.floordivsi %out, %c1816508589_i64 : i64
        %296 = math.round %cst_1 : f16
        %297 = vector.reduction <minf>, %102 : vector<1xf32> into f32
        %298 = arith.divf %cst_0, %cst_0 : f32
        %299 = arith.negf %cst_7 : f16
        %300 = arith.ceildivsi %83, %c0_i16 : i16
        %301 = index.maxu %117, %53
        %302 = arith.minui %false_25, %false : i1
        %303 = math.ipowi %10, %10 : tensor<7xi1>
        %rank = tensor.rank %17 : tensor<7xi64>
        %alloca_49 = memref.alloca() : memref<2x2xi32>
        %304 = memref.atomic_rmw addf %cst_7, %alloc_13[%c0, %c0] : (f16, memref<2x2xf16>) -> f16
        %305 = arith.subi %false, %true : i1
        memref.copy %31, %alloc_21 : memref<7x7xi16> to memref<7x7xi16>
        scf.yield
      }
      default {
        %292 = affine.apply affine_map<(d0) -> (d0 ceildiv 2)>(%107)
        %293 = arith.cmpi ne, %false_29, %false : i1
        %294 = arith.divf %cst_0, %274 : f32
        %295 = vector.shuffle %28, %28 [0, 2, 3, 5, 7, 8, 12] : vector<7x7xi1>, vector<7x7xi1>
        %296 = arith.andi %c5959_i16, %83 : i16
        %297 = math.round %splat_32 : tensor<7x7xf32>
        %298 = vector.broadcast %true_31 : i1 to vector<7xi1>
        %dest_49, %accumulated_value_50 = vector.scan <mul>, %103, %298 {inclusive = true, reduction_dim = 1 : i64} : vector<7x7xi1>, vector<7xi1>
        %299 = math.tan %15 : tensor<10xf32>
        %300 = bufferization.to_memref %splat : memref<7xi1>
        %301 = index.casts %false_29 : i1 to index
        %302 = arith.floordivsi %false_3, %false_25 : i1
        %303 = index.add %108, %c4
        %304 = index.maxu %57, %69
        %305 = vector.extract %102[0] : vector<1xf32>
        %306 = tensor.empty() : tensor<7x7xi1>
        %307 = math.log2 %collapsed_48 : tensor<4xf32>
      }
      %291 = math.rsqrt %splat_32 : tensor<7x7xf32>
      memref.tensor_store %8, %alloc_14 : memref<7xi64>
      linalg.yield %in : i64
    } -> tensor<7x7x7xi64>
    %126 = arith.cmpf ord, %cst_6, %cst_0 : f32
    %127 = vector.broadcast %false_25 : i1 to vector<7xi1>
    %128 = index.maxs %54, %47
    %129 = vector.extract %48[0] : vector<1xi1>
    memref.copy %alloc_11, %alloc_19 : memref<10xf16> to memref<10xf16>
    %130 = math.ipowi %c2010211518_i64, %c1648716306_i64 : i64
    %131 = math.exp %cst_4 : f16
    %alloc_35 = memref.alloc() : memref<10xf32>
    %132 = vector.reduction <or>, %48 : vector<1xi1> into i1
    %133 = index.sub %c2, %c9
    %134 = arith.cmpi ule, %false, %true_31 : i1
    %false_36 = index.bool.constant false
    %135 = scf.index_switch %c12 -> vector<10xf16> 
    case 1 {
      %alloc_48 = memref.alloc() : memref<7xf32>
      %266 = vector.broadcast %cst : f32 to vector<7x7xf32>
      %267 = vector.broadcast %extracted_33 : i32 to vector<7x7xi32>
      %268 = vector.gather %alloc_48[%47] [%267], %28, %266 : memref<7xf32>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xf32> into vector<7x7xf32>
      %269 = index.mul %109, %54
      %270 = index.ceildivs %117, %c8
      %271 = vector.insertelement %cst_6, %20[%c2 : index] : vector<2xf32>
      %collapsed_49 = tensor.collapse_shape %4 [[0, 1]] : tensor<2x2xi1> into tensor<4xi1>
      %272 = arith.shrui %false_3, %false : i1
      %273 = vector.maskedload %alloc_10[%c5], %48, %102 : memref<10xf32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
      %274 = arith.mulf %cst_7, %cst_7 : f16
      %275 = vector.shuffle %20, %273 [1, 2] : vector<2xf32>, vector<1xf32>
      %276 = vector.broadcast %c2010211518_i64 : i64 to vector<2x2xi64>
      %277 = index.ceildivs %90, %c9
      vector.print %103 : vector<7x7xi1>
      %278 = affine.min affine_map<(d0, d1, d2, d3) -> (d0)>(%90, %c0, %54, %100)
      %279 = math.expm1 %splat_32 : tensor<7x7xf32>
      %280 = vector.extract_strided_slice %268 {offsets = [1], sizes = [1], strides = [1]} : vector<7x7xf32> to vector<1x7xf32>
      %281 = affine.max affine_map<(d0, d1) -> (d0 + d0 ceildiv 8)>(%133, %278)
      %282 = vector.broadcast %cst_2 : f16 to vector<10xf16>
      scf.yield %282 : vector<10xf16>
    }
    case 2 {
      %inserted_48 = tensor.insert %c1816508589_i64 into %17[%c0] : tensor<7xi64>
      %266 = arith.maxui %true_31, %false_25 : i1
      %267 = math.tan %2 : tensor<2x2xf32>
      %268 = arith.xori %false_25, %false_3 : i1
      %269 = arith.minui %c1816508589_i64, %c1648716306_i64 : i64
      %270 = math.log2 %6 : tensor<7x7xf32>
      %271 = scf.index_switch %c1 -> tensor<2x2xi16> 
      case 1 {
        %280 = arith.subi %83, %c0_i16 : i16
        %alloc_50 = memref.alloc() : memref<2x2xf32>
        %281 = vector.broadcast %cst_6 : f32 to vector<7x7xf32>
        %282 = vector.broadcast %extracted : i32 to vector<7x7xi32>
        %283 = vector.gather %alloc_50[%c1, %35] [%282], %28, %281 : memref<2x2xf32>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xf32> into vector<7x7xf32>
        %284 = math.exp %cst_1 : f16
        %285 = vector.broadcast %c1213315302_i64 : i64 to vector<7xi64>
        %286 = vector.broadcast %extracted_33 : i32 to vector<7xi32>
        %287 = vector.gather %8[%57] [%286], %127, %285 : tensor<7xi64>, vector<7xi32>, vector<7xi1>, vector<7xi64> into vector<7xi64>
        %288 = index.floordivs %35, %35
        %289 = vector.broadcast %cst_6 : f32 to vector<7xf32>
        %dest_51, %accumulated_value_52 = vector.scan <minf>, %283, %289 {inclusive = false, reduction_dim = 0 : i64} : vector<7x7xf32>, vector<7xf32>
        %inserted_53 = tensor.insert %cst_6 into %11[%c0, %c1] : tensor<2x2xf32>
        %290 = affine.max affine_map<(d0) -> (d0 + 8, (((-(d0 + 8)) ceildiv 8) ceildiv 64 - ((-(d0 + 8)) ceildiv 8) mod 4) mod 128, d0 + 8, ((-(d0 + 8)) ceildiv 8) ceildiv 64 - ((-(d0 + 8)) ceildiv 8) mod 4)>(%c0)
        %291 = vector.broadcast %cst_6 : f32 to vector<7xf32>
        %292 = vector.maskedload %alloc_50[%c0, %c0], %127, %291 : memref<2x2xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
        %293 = vector.extract_strided_slice %112 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
        %294 = index.add %54, %47
        %295 = math.ctpop %83 : i16
        %296 = arith.shrui %c1213315302_i64, %c1648716306_i64 : i64
        %297 = vector.reduction <minui>, %85 : vector<10xi64> into i64
        %298 = arith.xori %c2010211518_i64, %c1648716306_i64 : i64
        %299 = math.tan %6 : tensor<7x7xf32>
        %300 = tensor.empty() : tensor<2x2xi16>
        scf.yield %300 : tensor<2x2xi16>
      }
      case 2 {
        %280 = math.log2 %cst_2 : f16
        memref.copy %alloc_18, %alloc_10 : memref<10xf32> to memref<10xf32>
        %281 = math.ctlz %9 : tensor<10xi16>
        %282 = vector.bitcast %95 : vector<2xi1> to vector<2xi1>
        %283 = index.maxu %53, %128
        %284 = vector.splat %117 : vector<10xindex>
        %285 = vector.broadcast %false_25 : i1 to vector<7xi1>
        %286 = math.log1p %15 : tensor<10xf32>
        %alloca_50 = memref.alloca() : memref<10xi1>
        %287 = index.ceildivu %c11, %108
        %288 = math.copysign %cst_1, %cst_1 : f16
        %289 = math.ctpop %16 : tensor<7xi64>
        %290 = arith.cmpi eq, %false, %true : i1
        %291 = arith.ceildivsi %false_3, %true_31 : i1
        %292 = arith.subi %false, %false_3 : i1
        %293 = index.sizeof
        %294 = tensor.empty() : tensor<2x2xi16>
        scf.yield %294 : tensor<2x2xi16>
      }
      case 3 {
        %280 = memref.atomic_rmw minu %91, %alloc_16[%c6, %c2] : (i16, memref<7x7xi16>) -> i16
        %281 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d1 - d0 * 33) * 128)>(%c9, %54, %c15, %35)
        %collapsed_50 = tensor.collapse_shape %4 [[0, 1]] : tensor<2x2xi1> into tensor<4xi1>
        %282 = arith.minui %false, %true_31 : i1
        %283 = memref.realloc %alloc_14 : memref<7xi64> to memref<1xi64>
        %284 = memref.atomic_rmw addi %c1648716306_i64, %alloc_17[%c7] : (i64, memref<10xi64>) -> i64
        %285 = math.log2 %cst_5 : f32
        %286 = math.ctlz %transposed : tensor<7xi1>
        %alloca_51 = memref.alloca() : memref<10xi16>
        %287 = arith.divf %cst_6, %cst_6 : f32
        %collapsed_52 = tensor.collapse_shape %4 [[0, 1]] : tensor<2x2xi1> into tensor<4xi1>
        %inserted_53 = tensor.insert %false_36 into %collapsed_50[%c1] : tensor<4xi1>
        %collapsed_54 = tensor.collapse_shape %1 [[0, 1]] : tensor<7x7xi32> into tensor<49xi32>
        %288 = arith.maxsi %true_31, %false_36 : i1
        %289 = arith.subi %83, %83 : i16
        %290 = index.casts %extracted : i32 to index
        %291 = tensor.empty() : tensor<2x2xi16>
        scf.yield %291 : tensor<2x2xi16>
      }
      default {
        %280 = arith.negf %cst_5 : f32
        %alloc_50 = memref.alloc() : memref<2x2xi1>
        memref.copy %alloc, %alloc_50 : memref<2x2xi1> to memref<2x2xi1>
        %281 = tensor.empty() : tensor<2x2xf32>
        %282 = linalg.matmul ins(%11, %11 : tensor<2x2xf32>, tensor<2x2xf32>) outs(%281 : tensor<2x2xf32>) -> tensor<2x2xf32>
        %collapsed_51 = tensor.collapse_shape %4 [[0, 1]] : tensor<2x2xi1> into tensor<4xi1>
        %283 = math.tan %cst_6 : f32
        %284 = math.copysign %2, %2 : tensor<2x2xf32>
        %cst_52 = arith.constant 1.000000e+00 : f16
        %cst_53 = arith.constant 0.000000e+00 : f16
        %285 = vector.transfer_read %alloc_11[%57], %cst_53 : memref<10xf16>, vector<f16>
        %286 = arith.divsi %extracted_33, %extracted_33 : i32
        %c0_i16_54 = arith.constant 0 : i16
        %287 = vector.transfer_read %alloc_22[%78], %c0_i16_54 : memref<10xi16>, vector<i16>
        %dest_55, %accumulated_value_56 = vector.scan <mul>, %103, %127 {inclusive = false, reduction_dim = 0 : i64} : vector<7x7xi1>, vector<7xi1>
        %288 = affine.max affine_map<(d0, d1, d2) -> (d2 ceildiv 16 + d0 ceildiv 32 + 8, d2 ceildiv 16 + d0 ceildiv 32 + 8)>(%c0, %c9, %c11)
        %289 = math.copysign %15, %5 : tensor<10xf32>
        %290 = math.atan2 %cst_4, %cst_52 : f16
        %291 = math.log %6 : tensor<7x7xf32>
        %alloc_57 = memref.alloc() : memref<10xi32>
        %292 = index.ceildivs %c14, %117
        %293 = tensor.empty() : tensor<2x2xi16>
        scf.yield %293 : tensor<2x2xi16>
      }
      %272 = math.roundeven %5 : tensor<10xf32>
      %273 = bufferization.to_memref %5 : memref<10xf32>
      %274 = arith.divsi %true_31, %false_29 : i1
      %275 = arith.cmpf true, %cst_6, %cst_5 : f32
      %276 = vector.insertelement %false_29, %33[%c3 : index] : vector<1xi1>
      %277 = math.round %cst_4 : f16
      %278 = arith.maxui %false, %false_3 : i1
      memref.copy %alloc_18, %alloc_10 : memref<10xf32> to memref<10xf32>
      %collapsed_49 = tensor.collapse_shape %4 [[0, 1]] : tensor<2x2xi1> into tensor<4xi1>
      %279 = vector.broadcast %cst_1 : f16 to vector<10xf16>
      scf.yield %279 : vector<10xf16>
    }
    case 3 {
      %266 = arith.floordivsi %extracted, %extracted : i32
      %267 = index.castu %extracted_33 : i32 to index
      %268 = math.powf %6, %6 : tensor<7x7xf32>
      %269 = vector.load %alloc[%c1, %c1] : memref<2x2xi1>, vector<2x2xi1>
      %alloca_48 = memref.alloca() : memref<7x7xi1>
      %270 = arith.shrui %false_25, %false_29 : i1
      %271 = memref.realloc %alloc_17 : memref<10xi64> to memref<1xi64>
      %272 = math.tan %cst_5 : f32
      %273 = vector.broadcast %c1648716306_i64 : i64 to vector<7x7xi64>
      %274 = vector.shuffle %34, %48 [0, 1] : vector<1xi1>, vector<1xi1>
      %275 = arith.muli %c1648716306_i64, %c1213315302_i64 : i64
      %276 = memref.realloc %110 : memref<7xi1> to memref<10xi1>
      %277 = tensor.empty() : tensor<7x7x7xi64>
      %278 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%277 : tensor<7x7x7xi64>) outs(%277 : tensor<7x7x7xi64>) {
      ^bb0(%in: i64, %out: i64):
        %283 = math.fma %cst, %cst_5, %cst : f32
        %284 = arith.mulf %cst, %cst_5 : f32
        %285 = math.round %11 : tensor<2x2xf32>
        %286 = math.round %cst_6 : f32
        vector.print %28 : vector<7x7xi1>
        %collapsed_49 = tensor.collapse_shape %36 [[0, 1]] : tensor<2x2xi1> into tensor<4xi1>
        %false_50 = index.bool.constant false
        %287 = math.log %5 : tensor<10xf32>
        %collapsed_51 = tensor.collapse_shape %2 [[0, 1]] : tensor<2x2xf32> into tensor<4xf32>
        memref.copy %alloc_21, %31 : memref<7x7xi16> to memref<7x7xi16>
        %alloca_52 = memref.alloca() : memref<7x7xi16>
        %288 = arith.subi %true_31, %false_29 : i1
        %289 = vector.extract_strided_slice %95 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi1> to vector<2xi1>
        %290 = arith.minui %true, %false : i1
        %291 = math.round %splat_32 : tensor<7x7xf32>
        %292 = tensor.empty() : tensor<10xf16>
        %293 = tensor.empty() : tensor<7xi64>
        %294 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %102, %102, %cst_6 : vector<1xf32>, vector<1xf32> into f32
        %295 = tensor.empty(%100) : tensor<?x2xf16>
        %true_53 = index.bool.constant true
        %296 = math.ctlz %collapsed : tensor<4xi1>
        %297 = memref.realloc %alloc_10 : memref<10xf32> to memref<1xf32>
        %298 = arith.cmpi ult, %extracted_33, %extracted : i32
        %299 = index.castu %35 : index to i32
        %300 = arith.shrsi %false, %false_29 : i1
        %301 = index.maxu %47, %c13
        %302 = math.sqrt %cst_4 : f16
        %303 = arith.addf %cst_7, %cst_7 : f16
        vector.print %28 : vector<7x7xi1>
        %304 = math.tan %5 : tensor<10xf32>
        %305 = arith.remui %false_25, %true_31 : i1
        %306 = vector.insertelement %c1816508589_i64, %85[%38 : index] : vector<10xi64>
        linalg.yield %out : i64
      } -> tensor<7x7x7xi64>
      %279 = affine.if affine_set<(d0, d1, d2) : ((d2 + d0) * 64 == 0, d2 * 64 == 0, d0 ceildiv 4 - 2 >= 0)>(%c12, %c11, %c5) -> memref<2x2xi64> {
        %283 = math.log %12 : tensor<10xf16>
        %284 = math.expm1 %6 : tensor<7x7xf32>
        %285 = vector.reduction <and>, %85 : vector<10xi64> into i64
        vector.print %48 : vector<1xi1>
        %dest_49, %accumulated_value_50 = vector.scan <maxui>, %55, %127 {inclusive = false, reduction_dim = 1 : i64} : vector<7x7xi1>, vector<7xi1>
        %dest_51, %accumulated_value_52 = vector.scan <minsi>, %103, %127 {inclusive = true, reduction_dim = 0 : i64} : vector<7x7xi1>, vector<7xi1>
        %286 = math.absf %11 : tensor<2x2xf32>
        %287 = vector.broadcast %extracted : i32 to vector<10xi32>
        %288 = vector.gather %110[%76] [%287], %64, %64 : memref<7xi1>, vector<10xi32>, vector<10xi1>, vector<10xi1> into vector<10xi1>
        affine.yield %alloc_15 : memref<2x2xi64>
      } else {
        %283 = affine.max affine_map<(d0, d1, d2) -> (d1 - 2, d1 - 2, d2, d0)>(%c14, %267, %c3)
        %284 = math.fma %6, %splat_32, %6 : tensor<7x7xf32>
        %285 = arith.floordivsi %c0_i16, %83 : i16
        %286 = index.casts %true_31 : i1 to index
        %287 = vector.shuffle %24, %24 [0, 1] : vector<i16>, vector<i16>
        %288 = math.round %6 : tensor<7x7xf32>
        %289 = math.ipowi %13, %13 : tensor<7xi16>
        %290 = arith.minf %cst_1, %cst_7 : f16
        affine.yield %alloc_15 : memref<2x2xi64>
      }
      %280 = affine.apply affine_map<(d0, d1, d2, d3) -> ((-d3) ceildiv 128)>(%128, %117, %c0, %c13)
      %281 = math.log2 %6 : tensor<7x7xf32>
      %282 = vector.broadcast %cst_7 : f16 to vector<10xf16>
      scf.yield %282 : vector<10xf16>
    }
    default {
      memref.store %cst_4, %alloc_11[%c5] : memref<10xf16>
      %266 = math.atan2 %6, %6 : tensor<7x7xf32>
      %267 = vector.broadcast %cst_1 : f16 to vector<7xf16>
      %268 = math.tan %12 : tensor<10xf16>
      %269 = math.roundeven %11 : tensor<2x2xf32>
      %270 = vector.multi_reduction <mul>, %64, %64 [] : vector<10xi1> to vector<10xi1>
      %271 = vector.broadcast %true : i1 to vector<2x2xi1>
      %272 = math.round %cst : f32
      %273 = arith.cmpi ne, %c5959_i16, %83 : i16
      %274 = arith.maxsi %false_25, %true : i1
      %275 = arith.shrui %c1648716306_i64, %c1213315302_i64 : i64
      %276 = index.add %c3, %c1
      %277 = arith.cmpf one, %cst_1, %cst_1 : f16
      bufferization.dealloc_tensor %6 : tensor<7x7xf32>
      %278 = arith.maxsi %c2010211518_i64, %c1648716306_i64 : i64
      %279 = affine.max affine_map<(d0, d1, d2) -> (d1 floordiv 4 + 6, d2 * 64, d2)>(%c6, %38, %c9)
      %280 = vector.broadcast %cst_4 : f16 to vector<10xf16>
      scf.yield %280 : vector<10xf16>
    }
    %136 = scf.execute_region -> vector<7x7xf32> {
      %rank = tensor.rank %0 : tensor<10xi64>
      %266 = vector.create_mask %rank, %69 : vector<2x2xi1>
      %267 = arith.floordivsi %true_31, %false_29 : i1
      %268 = vector.broadcast %false_3 : i1 to vector<10xi1>
      %splat_48 = tensor.splat %true_31 : tensor<2x2xi1>
      scf.execute_region {
        %278 = index.ceildivs %rank, %54
        %279 = vector.insertelement %cst_6, %20[%53 : index] : vector<2xf32>
        %280 = vector.broadcast %c6 : index to vector<1xindex>
        %281 = vector.broadcast %91 : i16 to vector<1xi16>
        vector.scatter %63[%c3] [%280], %48, %281 : memref<10xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
        %282 = arith.maxui %false, %false_29 : i1
        %283 = vector.flat_transpose %268 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
        %284 = vector.flat_transpose %33 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %285 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 floordiv 64 + 12, d3 floordiv 16)>(%c11, %c10, %100, %47)
        memref.tensor_store %16, %alloc_14 : memref<7xi64>
        %286 = vector.transpose %95, [0] : vector<2xi1> to vector<2xi1>
        %287 = index.add %c6, %78
        %alloca_50 = memref.alloca() : memref<2x2xi1>
        memref.assume_alignment %alloc_17, 1 : memref<10xi64>
        %288 = bufferization.to_memref %11 : memref<2x2xf32>
        %289 = math.expm1 %cst : f32
        memref.tensor_store %2, %288 : memref<2x2xf32>
        %290 = tensor.empty() : tensor<7x7xf32>
        %291 = linalg.matmul ins(%6, %splat_32 : tensor<7x7xf32>, tensor<7x7xf32>) outs(%290 : tensor<7x7xf32>) -> tensor<7x7xf32>
        scf.yield
      }
      %269 = math.round %5 : tensor<10xf32>
      %270 = vector.create_mask %c1 : vector<10xi1>
      %271 = vector.shuffle %266, %266 [2, 3] : vector<2x2xi1>, vector<2x2xi1>
      %272 = math.sqrt %15 : tensor<10xf32>
      %273 = math.log2 %cst : f32
      %274 = index.casts %false_25 : i1 to index
      affine.store %extracted, %alloc_8[%c6] : memref<7xi32>
      %275 = index.maxs %90, %c10
      %alloc_49 = memref.alloc() : memref<7x7xf32>
      memref.tensor_store %6, %alloc_49 : memref<7x7xf32>
      %276 = affine.if affine_set<(d0, d1, d2) : (-d1 >= 0, d2 ceildiv 128 + -d1 + 2 >= 0, d2 floordiv 2 == 0, d0 >= 0)>(%c0, %c12, %c5) -> f32 {
        %inserted_50 = tensor.insert %c1648716306_i64 into %22[] : tensor<i64>
        memref.store %cst_2, %alloc_11[%c0] : memref<10xf16>
        %278 = arith.cmpf one, %cst, %cst_6 : f32
        %279 = math.tan %2 : tensor<2x2xf32>
        %280 = arith.shli %c0_i16, %c0_i16 : i16
        %false_51 = arith.constant false
        %false_52 = arith.constant false
        %281 = vector.transfer_read %alloc_12[%c1], %false_52 : memref<7xi1>, vector<i1>
        %alloc_53 = memref.alloc() : memref<10xf32>
        %282 = math.rsqrt %12 : tensor<10xf16>
        affine.yield %cst_0 : f32
      } else {
        %278 = arith.divsi %83, %c0_i16 : i16
        %279 = arith.ceildivsi %false_3, %false_3 : i1
        %280 = arith.floordivsi %91, %83 : i16
        %281 = index.floordivs %90, %76
        %282 = bufferization.to_memref %21 : memref<i64>
        %283 = math.log2 %12 : tensor<10xf16>
        %284 = arith.ceildivsi %false_3, %false_36 : i1
        %inserted_50 = tensor.insert %c0_i16 into %13[%c1] : tensor<7xi16>
        affine.yield %cst_0 : f32
      }
      %277 = vector.broadcast %cst_5 : f32 to vector<7x7xf32>
      scf.yield %277 : vector<7x7xf32>
    }
    %137 = vector.reduction <xor>, %64 : vector<10xi1> into i1
    %138 = vector.multi_reduction <or>, %112, %33 [] : vector<1xi1> to vector<1xi1>
    %139 = arith.cmpf uno, %cst_7, %cst_1 : f16
    %140 = math.ctlz %7 : tensor<2x2xi32>
    memref.copy %alloc_11, %alloc_19 : memref<10xf16> to memref<10xf16>
    memref.tensor_store %10, %alloc_12 : memref<7xi1>
    %141 = math.roundeven %2 : tensor<2x2xf32>
    affine.store %cst, %alloc_10[%c15] : memref<10xf32>
    %142 = math.roundeven %6 : tensor<7x7xf32>
    %143 = index.add %c7, %107
    %144 = memref.realloc %alloc_11 : memref<10xf16> to memref<1xf16>
    %145 = math.ctlz %0 : tensor<10xi64>
    %146 = arith.xori %c5959_i16, %c5959_i16 : i16
    %147 = index.floordivs %69, %90
    %148 = index.castu %100 : index to i32
    %149 = math.round %cst_4 : f16
    %150 = index.castu %78 : index to i32
    %151 = affine.min affine_map<(d0) -> (0, d0 + 128)>(%c0)
    %152 = index.castu %92 : index to i32
    %153 = math.absf %15 : tensor<10xf32>
    %154 = math.log %2 : tensor<2x2xf32>
    %155 = math.roundeven %cst_1 : f16
    %156 = arith.divf %cst_4, %cst_2 : f16
    %157 = bufferization.clone %alloc_18 : memref<10xf32> to memref<10xf32>
    %158 = arith.floordivsi %false_25, %true : i1
    %159 = index.sub %c15, %c8
    %160 = arith.shrui %false_25, %false_29 : i1
    %161 = math.log1p %2 : tensor<2x2xf32>
    %162 = arith.subi %c5959_i16, %91 : i16
    %163 = arith.muli %false_36, %true : i1
    %164 = index.divs %c12, %109
    %165 = tensor.empty() : tensor<7x7xi32>
    %collapsed_37 = tensor.collapse_shape %2 [[0, 1]] : tensor<2x2xf32> into tensor<4xf32>
    %166 = affine.apply affine_map<(d0) -> ((d0 + (-d0) mod 2 - 64) mod 32)>(%c8)
    %167 = arith.shrui %c5959_i16, %c0_i16 : i16
    %168 = math.roundeven %6 : tensor<7x7xf32>
    %169 = vector.broadcast %cst_2 : f16 to vector<2x2xf16>
    %170 = tensor.empty() : tensor<10xf32>
    %171 = math.ipowi %19, %transposed : tensor<7xi1>
    %generated = tensor.generate %100, %111 {
    ^bb0(%arg1: index, %arg2: index):
      %266 = arith.xori %c2010211518_i64, %c2010211518_i64 : i64
      %267 = math.atan2 %cst_7, %cst_7 : f16
      memref.store %false_3, %110[%c0] : memref<7xi1>
      %splat_48 = tensor.splat %false_3 : tensor<10xi1>
      tensor.yield %false_36 : i1
    } : tensor<?x?xi1>
    %172 = index.add %159, %166
    bufferization.dealloc_tensor %transposed : tensor<7xi1>
    %173 = arith.divsi %91, %c0_i16 : i16
    %174 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %20, %20, %cst : vector<2xf32>, vector<2xf32> into f32
    %175 = arith.divf %cst_4, %cst_7 : f16
    %176 = index.ceildivs %c7, %c4
    %177 = tensor.empty() : tensor<7x7xi32>
    %178 = linalg.matmul ins(%165, %165 : tensor<7x7xi32>, tensor<7x7xi32>) outs(%177 : tensor<7x7xi32>) -> tensor<7x7xi32>
    %179 = arith.divsi %false_29, %false : i1
    %180 = index.maxs %c0, %47
    %181 = arith.shrui %false_36, %true : i1
    memref.alloca_scope  {
      %266 = affine.apply affine_map<(d0, d1, d2) -> (d0 + d2 mod 4 + 28)>(%92, %176, %159)
      %267 = bufferization.clone %alloc_11 : memref<10xf16> to memref<10xf16>
      %268 = arith.subi %true, %false_25 : i1
      %269 = bufferization.clone %267 : memref<10xf16> to memref<10xf16>
      %270 = arith.minui %false_36, %false_25 : i1
      %271 = arith.floordivsi %false_29, %false_3 : i1
      %272 = scf.if %false_3 -> (memref<2x2xf16>) {
        %292 = arith.shrui %false, %false_29 : i1
        %293 = vector.broadcast %false_29 : i1 to vector<10xi1>
        %294 = arith.cmpi slt, %false_29, %true : i1
        %295 = arith.divsi %c1648716306_i64, %c1816508589_i64 : i64
        %296 = arith.shrui %extracted_33, %extracted : i32
        %alloc_53 = memref.alloc() : memref<10xi16>
        %297 = vector.broadcast %extracted : i32 to vector<7xi32>
        %298 = vector.maskedload %alloc_9[%c0, %c0], %127, %297 : memref<2x2xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
        %299 = math.log2 %collapsed_37 : tensor<4xf32>
        scf.yield %alloc_13 : memref<2x2xf16>
      } else {
        %292 = vector.broadcast %cst_5 : f32 to vector<7xf32>
        %293 = vector.fma %292, %292, %292 : vector<7xf32>
        %294 = vector.shuffle %33, %112 [1] : vector<1xi1>, vector<1xi1>
        %295 = arith.divf %cst_4, %cst_2 : f16
        %296 = arith.divf %cst_4, %cst_2 : f16
        %297 = index.casts %c4 : index to i32
        %298 = vector.broadcast %extracted_33 : i32 to vector<2xi32>
        %299 = vector.transfer_write %298, %7[%c7, %c10] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<2xi32>, tensor<2x2xi32>
        %300 = math.fpowi %cst_6, %extracted_33 : f32, i32
        %301 = index.castu %53 : index to i32
        scf.yield %118 : memref<2x2xf16>
      }
      %273 = affine.max affine_map<(d0, d1, d2, d3) -> (d3, d2 * 8, d1, -d2 - 8)>(%111, %92, %147, %c13)
      %274 = math.atan2 %splat_32, %6 : tensor<7x7xf32>
      %true_48 = arith.constant true
      %275 = vector.transfer_read %collapsed[%c6], %true_48 : tensor<4xi1>, vector<i1>
      %false_49 = index.bool.constant false
      %alloc_50 = memref.alloc() : memref<i64>
      memref.tensor_store %21, %alloc_50 : memref<i64>
      %276 = vector.reduction <or>, %127 : vector<7xi1> into i1
      affine.store %true_31, %alloc_12[%c1] : memref<7xi1>
      %277 = index.add %151, %c4
      %278 = affine.if affine_set<(d0, d1, d2) : ((d0 floordiv 64) * 4 == 0, (d0 floordiv 64) * 4 >= 0, 0 == 0)>(%c10, %c12, %c10) -> i32 {
        %292 = bufferization.to_memref %115 : memref<i64>
        %293 = arith.muli %83, %c0_i16 : i16
        %294 = math.log10 %cst_4 : f16
        %295 = index.ceildivs %176, %172
        %296 = vector.multi_reduction <and>, %48, %34 [] : vector<1xi1> to vector<1xi1>
        memref.tensor_store %reduced, %110 : memref<7xi1>
        %297 = vector.broadcast %c1213315302_i64 : i64 to vector<2xi64>
        %298 = vector.maskedload %292[], %95, %297 : memref<i64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
        %299 = math.round %cst_5 : f32
        affine.yield %extracted_33 : i32
      } else {
        %292 = affine.min affine_map<(d0) -> (((d0 floordiv 16) ceildiv 4) ceildiv 8 - (d0 floordiv 16) ceildiv 2, (d0 + d0 floordiv 16) * 128 + d0 floordiv 16, (d0 floordiv 16) ceildiv 4)>(%147)
        %293 = arith.maxsi %false_36, %true_31 : i1
        memref.tensor_store %170, %alloc_10 : memref<10xf32>
        %294 = bufferization.to_memref %1 : memref<7x7xi32>
        %rank_53 = tensor.rank %73 : tensor<10xi32>
        %295 = arith.floordivsi %c1648716306_i64, %c2010211518_i64 : i64
        %alloc_54 = memref.alloc() : memref<7x7xf16>
        %296 = index.mul %292, %107
        affine.yield %extracted_33 : i32
      }
      %279 = arith.minui %true_48, %false_25 : i1
      %280 = arith.muli %extracted_33, %extracted : i32
      %281 = arith.subi %91, %c5959_i16 : i16
      %282 = arith.shrui %c5959_i16, %c0_i16 : i16
      %283 = arith.subi %false_25, %false_3 : i1
      %284 = index.add %c0, %117
      %rank = tensor.rank %4 : tensor<2x2xi1>
      %true_51 = index.bool.constant true
      %cst_52 = arith.constant 1.000000e+00 : f32
      %285 = vector.transfer_read %alloc_18[%284], %cst_52 : memref<10xf32>, vector<f32>
      %286 = bufferization.clone %157 : memref<10xf32> to memref<10xf32>
      %287 = bufferization.clone %157 : memref<10xf32> to memref<10xf32>
      memref.store %c0_i16, %31[%c0, %c4] : memref<7x7xi16>
      %288 = vector.extract %113[1] : vector<2xi1>
      %289 = math.fpowi %2, %7 : tensor<2x2xf32>, tensor<2x2xi32>
      %290 = bufferization.clone %272 : memref<2x2xf16> to memref<2x2xf16>
      %291 = math.round %6 : tensor<7x7xf32>
    }
    %182 = arith.ori %false_25, %false : i1
    %183 = arith.shli %true_31, %true : i1
    %184 = arith.addi %extracted_33, %extracted : i32
    %185 = math.fpowi %15, %73 : tensor<10xf32>, tensor<10xi32>
    affine.store %cst_1, %alloc_19[%c6] : memref<10xf16>
    %186 = index.add %76, %c7
    %187 = vector.shuffle %112, %95 [0, 1, 2] : vector<1xi1>, vector<2xi1>
    %188 = math.absf %12 : tensor<10xf16>
    %189 = vector.broadcast %false_29 : i1 to vector<7xi1>
    %alloc_38 = memref.alloc() : memref<7xi32>
    %190 = arith.remsi %c1213315302_i64, %c1213315302_i64 : i64
    %191 = arith.maxui %false_36, %false_3 : i1
    %192 = tensor.empty() : tensor<7x7x7xi64>
    %193 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%192 : tensor<7x7x7xi64>) {
    ^bb0(%out: i64):
      scf.execute_region {
        %292 = index.castu %c1648716306_i64 : i64 to index
        %293 = memref.realloc %alloc_8 : memref<7xi32> to memref<2xi32>
        %294 = vector.broadcast %c1816508589_i64 : i64 to vector<i64>
        %295 = vector.transfer_write %294, %0[%166] : vector<i64>, tensor<10xi64>
        %296 = math.atan2 %15, %5 : tensor<10xf32>
        %297 = vector.create_mask %c11 : vector<10xi1>
        %298 = math.tan %12 : tensor<10xf16>
        %299 = math.tan %15 : tensor<10xf32>
        %alloca_53 = memref.alloca() : memref<7x7xi1>
        %300 = arith.muli %c5959_i16, %91 : i16
        %301 = index.ceildivs %107, %c10
        %302 = tensor.empty(%147, %c11) : tensor<?x?xi16>
        %303 = arith.cmpi sle, %91, %91 : i16
        %304 = affine.min affine_map<(d0, d1) -> (0, d0 ceildiv 32 - (d1 - 16))>(%164, %117)
        %305 = arith.muli %false, %false_29 : i1
        %306 = vector.transpose %55, [1, 0] : vector<7x7xi1> to vector<7x7xi1>
        %307 = index.sizeof
        scf.yield
      }
      %266 = vector.reduction <add>, %20 : vector<2xf32> into f32
      %267 = arith.maxsi %out, %c1816508589_i64 : i64
      %268 = arith.floordivsi %true, %false : i1
      %269 = math.absf %splat_32 : tensor<7x7xf32>
      %270 = tensor.empty() : tensor<7x7x7xi64>
      %271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%270 : tensor<7x7x7xi64>) {
      ^bb0(%out_53: i64):
        %292 = math.tan %15 : tensor<10xf32>
        %293 = arith.minui %c1816508589_i64, %c2010211518_i64 : i64
        %294 = math.tan %11 : tensor<2x2xf32>
        %295 = arith.mulf %cst_1, %cst_7 : f16
        %296 = math.round %5 : tensor<10xf32>
        %297 = index.floordivs %c8, %133
        %298 = arith.maxui %out, %out_53 : i64
        %299 = arith.subi %false_36, %false_36 : i1
        %300 = memref.realloc %alloc_8 : memref<7xi32> to memref<2xi32>
        %dest_54, %accumulated_value_55 = vector.scan <minsi>, %55, %189 {inclusive = false, reduction_dim = 1 : i64} : vector<7x7xi1>, vector<7xi1>
        %301 = arith.floordivsi %false_29, %false_25 : i1
        %302 = arith.cmpf une, %cst_1, %cst_2 : f16
        %303 = vector.create_mask %186, %c8 : vector<7x7xi1>
        %304 = arith.shli %out, %c2010211518_i64 : i64
        %305 = vector.insert %true, %64 [0] : i1 into vector<10xi1>
        %splat_56 = tensor.splat %cst_5 : tensor<7x7xf32>
        %306 = index.ceildivs %35, %92
        %collapsed_57 = tensor.collapse_shape %splat_56 [[0, 1]] : tensor<7x7xf32> into tensor<49xf32>
        %307 = math.ctlz %22 : tensor<i64>
        %308 = index.ceildivs %297, %147
        %309 = math.absi %3 : tensor<7xi32>
        %310 = index.casts %c1213315302_i64 : i64 to index
        %311 = math.fpowi %15, %73 : tensor<10xf32>, tensor<10xi32>
        %312 = vector.shuffle %103, %303 [1, 2, 3, 4, 5, 6, 7, 11, 12] : vector<7x7xi1>, vector<7x7xi1>
        %313 = vector.transpose %127, [0] : vector<7xi1> to vector<7xi1>
        %314 = vector.maskedload %alloc_14[%c5], %64, %85 : memref<7xi64>, vector<10xi1>, vector<10xi64> into vector<10xi64>
        %315 = math.rsqrt %cst_2 : f16
        %316 = math.roundeven %2 : tensor<2x2xf32>
        %317 = math.rsqrt %11 : tensor<2x2xf32>
        %318 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 ceildiv 64, -d0, ((d3 ceildiv 64) ceildiv 16) ceildiv 2)>(%69, %108, %c11, %147)
        %319 = index.ceildivs %57, %90
        %320 = tensor.empty(%107) : tensor<?x2xi32>
        linalg.yield %c1648716306_i64 : i64
      } -> tensor<7x7x7xi64>
      %272 = bufferization.to_memref %collapsed_37 : memref<4xf32>
      memref.copy %157, %alloc_18 : memref<10xf32> to memref<10xf32>
      %273 = arith.cmpi slt, %false_25, %false_29 : i1
      %274 = math.ctlz %7 : tensor<2x2xi32>
      %false_48 = index.bool.constant false
      %275 = memref.alloca_scope  -> (i1) {
        %292 = index.ceildivs %186, %164
        %293 = math.round %cst_0 : f32
        %294 = math.tanh %5 : tensor<10xf32>
        %c967836121_i64 = arith.constant 967836121 : i64
        %295 = arith.divf %cst_6, %cst_5 : f32
        %296 = math.roundeven %2 : tensor<2x2xf32>
        %297 = index.maxs %151, %57
        %298 = arith.minf %cst_5, %cst_6 : f32
        %299 = arith.negf %cst_4 : f16
        %300 = vector.broadcast %cst_7 : f16 to vector<7x7xf16>
        %301 = vector.broadcast %extracted : i32 to vector<7x7xi32>
        %302 = vector.gather %alloc_13[%297, %53] [%301], %55, %300 : memref<2x2xf16>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xf16> into vector<7x7xf16>
        %303 = arith.xori %false, %false_3 : i1
        %304 = math.log %15 : tensor<10xf32>
        %305 = math.powf %cst_6, %cst_0 : f32
        %306 = tensor.empty() : tensor<2x2xi64>
        %307 = vector.broadcast %c1816508589_i64 : i64 to vector<7xi64>
        %308 = vector.broadcast %extracted : i32 to vector<7xi32>
        %309 = vector.gather %306[%c14, %172] [%308], %189, %307 : tensor<2x2xi64>, vector<7xi32>, vector<7xi1>, vector<7xi64> into vector<7xi64>
        %310 = arith.minui %false_25, %false : i1
        %311 = arith.ceildivsi %true_31, %true : i1
        %312 = vector.matrix_multiply %113, %64 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 5 : i32} : (vector<2xi1>, vector<10xi1>) -> vector<5xi1>
        %313 = math.tan %splat_32 : tensor<7x7xf32>
        %314 = memref.atomic_rmw mins %c2010211518_i64, %alloc_23[%c6] : (i64, memref<10xi64>) -> i64
        %315 = vector.flat_transpose %85 {columns = 5 : i32, rows = 2 : i32} : vector<10xi64> -> vector<10xi64>
        %316 = vector.create_mask %c2, %69 : vector<2x2xi1>
        %alloca_53 = memref.alloca() : memref<2x2xi16>
        %317 = index.add %35, %54
        %318 = index.ceildivs %38, %78
        %319 = index.maxu %c9, %108
        %320 = arith.maxf %cst_7, %cst_7 : f16
        %321 = arith.shrui %true, %false_25 : i1
        %322 = vector.extract_strided_slice %85 {offsets = [4], sizes = [1], strides = [1]} : vector<10xi64> to vector<1xi64>
        %323 = vector.broadcast %out : i64 to vector<7xi64>
        %324 = math.copysign %12, %12 : tensor<10xf16>
        %325 = arith.muli %c0_i16, %c5959_i16 : i16
        %326 = arith.shli %false_25, %false_48 : i1
        memref.alloca_scope.return %false_25 : i1
      }
      %276 = index.castu %c1 : index to i32
      %277 = index.casts %83 : i16 to index
      %278 = vector.broadcast %cst_2 : f16 to vector<7x7xf16>
      %279 = vector.broadcast %extracted : i32 to vector<7x7xi32>
      %280 = vector.gather %118[%100, %c10] [%279], %28, %278 : memref<2x2xf16>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xf16> into vector<7x7xf16>
      %281 = math.round %cst : f32
      affine.store %275, %alloc_12[%c1] : memref<7xi1>
      %282 = index.maxs %78, %128
      %collapsed_49 = tensor.collapse_shape %165 [[0, 1]] : tensor<7x7xi32> into tensor<49xi32>
      %283 = arith.andi %extracted_33, %extracted_33 : i32
      %284 = bufferization.to_tensor %alloc_22 : memref<10xi16>
      %285 = vector.flat_transpose %102 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      %286 = vector.flat_transpose %113 {columns = 1 : i32, rows = 2 : i32} : vector<2xi1> -> vector<2xi1>
      %287 = index.ceildivs %143, %47
      %extracted_50 = tensor.extract %165[%c5, %c6] : tensor<7x7xi32>
      %288 = vector.flat_transpose %127 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
      scf.if %false_25 {
        %292 = vector.broadcast %83 : i16 to vector<7xi16>
        %293 = vector.maskedload %31[%c5, %c4], %288, %292 : memref<7x7xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
        %294 = vector.reduction <mul>, %102 : vector<1xf32> into f32
        %295 = math.round %cst_7 : f16
        %296 = math.log1p %cst_5 : f32
        %297 = math.log1p %cst_0 : f32
        %298 = math.fpowi %2, %7 : tensor<2x2xf32>, tensor<2x2xi32>
        %299 = vector.broadcast %cst_0 : f32 to vector<10xf32>
        %300 = vector.transfer_write %299, %6[%c1, %100] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xf32>, tensor<7x7xf32>
        %301 = index.ceildivu %90, %133
      } else {
        %292 = vector.broadcast %c1648716306_i64 : i64 to vector<i64>
        %293 = vector.transfer_write %292, %0[%76] : vector<i64>, tensor<10xi64>
        %294 = index.ceildivs %c1, %c4
        %295 = index.maxu %c7, %c12
        %296 = arith.cmpf uno, %cst, %cst : f32
        %297 = bufferization.clone %alloc_8 : memref<7xi32> to memref<7xi32>
        %298 = index.divs %54, %186
        %299 = arith.shrui %false, %false_25 : i1
        %300 = bufferization.clone %alloc_18 : memref<10xf32> to memref<10xf32>
      }
      %true_51 = arith.constant true
      %false_52 = arith.constant false
      %289 = vector.transfer_read %alloc_20[%186, %54], %false_52 : memref<7x7xi1>, vector<i1>
      %290 = affine.load %alloc_20[%c15, %c10] : memref<7x7xi1>
      vector.print %28 : vector<7x7xi1>
      %291 = affine.apply affine_map<(d0, d1, d2) -> (d0 + d2 mod 4 + 28)>(%c3, %164, %147)
      memref.copy %alloc_18, %alloc_10 : memref<10xf32> to memref<10xf32>
      linalg.yield %c1213315302_i64 : i64
    } -> tensor<7x7x7xi64>
    %194 = vector.broadcast %cst_6 : f32 to vector<f32>
    %195 = vector.transfer_write %194, %collapsed_37[%128] : vector<f32>, tensor<4xf32>
    %196 = index.sizeof
    %alloc_39 = memref.alloc() : memref<7xf16>
    %197 = vector.broadcast %cst_5 : f32 to vector<7x7xf32>
    %198 = vector.fma %197, %197, %197 : vector<7x7xf32>
    %199 = arith.andi %c2010211518_i64, %c1213315302_i64 : i64
    %200 = affine.apply affine_map<(d0) -> ((d0 + (-d0) mod 2 - 64) mod 32)>(%c0)
    memref.store %91, %63[%c2] : memref<10xi16>
    %201 = vector.transpose %64, [0] : vector<10xi1> to vector<10xi1>
    %202 = math.log %12 : tensor<10xf16>
    %203 = bufferization.clone %63 : memref<10xi16> to memref<10xi16>
    %204 = math.ctpop %extracted : i32
    %205 = bufferization.to_tensor %110 : memref<7xi1>
    vector.print %198 : vector<7x7xf32>
    %206 = arith.subi %extracted_33, %extracted_33 : i32
    %207 = tensor.empty() : tensor<7x7x7xi64>
    %alloc_40 = memref.alloc() : memref<7x7xi64>
    %208 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_40 : memref<7x7xi64>) outs(%207 : tensor<7x7x7xi64>) {
    ^bb0(%in: i64, %out: i64):
      %266 = math.copysign %11, %11 : tensor<2x2xf32>
      %267 = math.tan %12 : tensor<10xf16>
      %268 = vector.extract_strided_slice %64 {offsets = [1], sizes = [1], strides = [1]} : vector<10xi1> to vector<1xi1>
      %269 = math.roundeven %5 : tensor<10xf32>
      %270 = vector.create_mask %c7 : vector<10xi1>
      %271 = arith.subi %c1648716306_i64, %in : i64
      %272 = arith.andi %extracted, %extracted_33 : i32
      %273 = bufferization.to_memref %18 : memref<7xi1>
      affine.for %arg1 = 0 to 16 {
      }
      %274 = vector.broadcast %c0_i16 : i16 to vector<10xi16>
      %275 = vector.broadcast %extracted : i32 to vector<10xi32>
      %276 = vector.gather %9[%54] [%275], %270, %274 : tensor<10xi16>, vector<10xi32>, vector<10xi1>, vector<10xi16> into vector<10xi16>
      %277 = vector.matrix_multiply %275, %275 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi32>, vector<10xi32>) -> vector<1xi32>
      %278 = vector.splat %78 : vector<2x2xindex>
      %279 = arith.maxsi %extracted_33, %extracted : i32
      %280 = bufferization.to_memref %205 : memref<7xi1>
      %281 = math.round %2 : tensor<2x2xf32>
      %282 = math.log %2 : tensor<2x2xf32>
      %283 = affine.min affine_map<(d0, d1) -> (d0 - 128, (d0 - 128) * 2)>(%186, %166)
      %284 = bufferization.clone %alloc_13 : memref<2x2xf16> to memref<2x2xf16>
      %false_48 = index.bool.constant false
      %285 = math.log %170 : tensor<10xf32>
      %286 = arith.floordivsi %83, %c0_i16 : i16
      %287 = vector.matrix_multiply %113, %64 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 5 : i32} : (vector<2xi1>, vector<10xi1>) -> vector<5xi1>
      %288 = index.floordivs %109, %c5
      %289 = tensor.empty(%176, %c2) : tensor<?x?xi32>
      %290 = math.copysign %cst_7, %cst_2 : f16
      %291 = arith.subi %false_25, %true_31 : i1
      %292 = index.floordivs %c9, %c13
      %dest_49, %accumulated_value_50 = vector.scan <xor>, %28, %189 {inclusive = true, reduction_dim = 1 : i64} : vector<7x7xi1>, vector<7xi1>
      %293 = arith.addi %false_36, %false_25 : i1
      %294 = math.rsqrt %cst : f32
      %295 = arith.shrui %false_25, %false : i1
      %296 = tensor.empty() : tensor<7x7x7xi64>
      %297 = tensor.empty() : tensor<7x7xi64>
      %298 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%296, %297, %297 : tensor<7x7x7xi64>, tensor<7x7xi64>, tensor<7x7xi64>) outs(%296 : tensor<7x7x7xi64>) {
      ^bb0(%in_51: i64, %in_52: i64, %in_53: i64, %out_54: i64):
        %299 = math.absf %6 : tensor<7x7xf32>
        %300 = bufferization.to_memref %generated : memref<?x?xi1>
        %301 = arith.floordivsi %extracted_33, %extracted_33 : i32
        %inserted_55 = tensor.insert %cst_6 into %6[%c3, %c3] : tensor<7x7xf32>
        %302 = index.mul %38, %166
        %true_56 = index.bool.constant true
        %303 = math.ctlz %165 : tensor<7x7xi32>
        %304 = affine.apply affine_map<(d0, d1, d2, d3) -> (0)>(%c14, %92, %200, %186)
        memref.copy %alloc_18, %157 : memref<10xf32> to memref<10xf32>
        %305 = vector.matrix_multiply %102, %102 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
        %alloc_57 = memref.alloc() : memref<7x7xi1>
        %306 = math.log %12 : tensor<10xf16>
        vector.print %268 : vector<1xi1>
        %307 = math.round %splat_32 : tensor<7x7xf32>
        %308 = arith.minui %out, %in : i64
        %309 = tensor.empty() : tensor<7x7xi32>
        %310 = linalg.matmul ins(%1, %1 : tensor<7x7xi32>, tensor<7x7xi32>) outs(%309 : tensor<7x7xi32>) -> tensor<7x7xi32>
        %311 = arith.ceildivsi %c1213315302_i64, %c1816508589_i64 : i64
        %312 = arith.addi %false_29, %false_25 : i1
        %313 = vector.broadcast %cst_5 : f32 to vector<f32>
        %314 = vector.transfer_write %313, %170[%186] : vector<f32>, tensor<10xf32>
        %315 = arith.cmpi ule, %false, %false_25 : i1
        %316 = index.casts %false_48 : i1 to index
        %317 = vector.matrix_multiply %277, %277 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
        %318 = vector.extract_strided_slice %270 {offsets = [2], sizes = [7], strides = [1]} : vector<10xi1> to vector<7xi1>
        %319 = arith.cmpi eq, %c1816508589_i64, %out_54 : i64
        %320 = index.sizeof
        %321 = arith.negf %cst_4 : f16
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_58 = arith.constant 0 : i32
        %322 = vector.transfer_read %3[%288], %c0_i32_58 : tensor<7xi32>, vector<i32>
        %323 = arith.minui %false_48, %false_48 : i1
        %324 = index.mul %c9, %c3
        %325 = vector.broadcast %cst_5 : f32 to vector<7xf32>
        %326 = vector.broadcast %extracted : i32 to vector<7xi32>
        %327 = vector.gather %11[%76, %304] [%326], %189, %325 : tensor<2x2xf32>, vector<7xi32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
        vector.print %28 : vector<7x7xi1>
        %false_59 = index.bool.constant false
        linalg.yield %c1648716306_i64 : i64
      } -> tensor<7x7x7xi64>
      linalg.yield %c2010211518_i64 : i64
    } -> tensor<7x7x7xi64>
    %209 = arith.subi %c0_i16, %c5959_i16 : i16
    %210 = math.powf %cst, %cst_5 : f32
    %211 = tensor.empty() : tensor<7x7x7xi64>
    %212 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%211 : tensor<7x7x7xi64>) outs(%211 : tensor<7x7x7xi64>) {
    ^bb0(%in: i64, %out: i64):
      scf.if %false {
        %293 = arith.andi %c5959_i16, %c0_i16 : i16
        %294 = vector.insert %cst, %20 [0] : f32 into vector<2xf32>
        %295 = math.ipowi %out, %c2010211518_i64 : i64
        %c1_i64 = arith.constant 1 : i64
        %296 = vector.transfer_read %alloc_14[%143], %c1_i64 : memref<7xi64>, vector<i64>
        %297 = math.copysign %15, %170 : tensor<10xf32>
        %298 = affine.min affine_map<(d0, d1) -> (d1 + 8, d1 * 8)>(%147, %c5)
        %alloca_55 = memref.alloca() : memref<7xi16>
        %299 = math.cos %cst_7 : f16
      } else {
        %293 = math.ipowi %36, %4 : tensor<2x2xi1>
        %294 = math.absf %6 : tensor<7x7xf32>
        %295 = arith.maxui %in, %c2010211518_i64 : i64
        %alloc_55 = memref.alloc() : memref<7xi32>
        memref.copy %alloc_8, %alloc_55 : memref<7xi32> to memref<7xi32>
        %296 = index.ceildivu %c15, %100
        %297 = math.ctlz %false : i1
        %298 = vector.create_mask %47 : vector<10xi1>
        %299 = vector.extract_strided_slice %113 {offsets = [0], sizes = [1], strides = [1]} : vector<2xi1> to vector<1xi1>
      }
      %266 = vector.insertelement %false, %95[%c8 : index] : vector<2xi1>
      %true_48 = arith.constant true
      %false_49 = arith.constant false
      %267 = vector.transfer_read %alloc[%159, %57], %false_49 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<2x2xi1>, vector<10xi1>
      %268 = arith.minui %true, %true : i1
      %269 = index.casts %extracted : i32 to index
      %270 = index.castu %143 : index to i32
      %271 = vector.broadcast %cst_5 : f32 to vector<7xf32>
      %272 = vector.insert %271, %198 [0] : vector<7xf32> into vector<7x7xf32>
      %273 = vector.broadcast %cst_1 : f16 to vector<f16>
      vector.transfer_write %273, %alloc_11[%172] : vector<f16>, memref<10xf16>
      %274 = math.absf %11 : tensor<2x2xf32>
      %275 = index.sizeof
      %276 = arith.minf %cst_4, %cst_1 : f16
      %277 = vector.splat %cst_0 : vector<2x2xf32>
      %alloc_50 = memref.alloc() : memref<2x2xf32>
      %278 = arith.subi %extracted_33, %extracted : i32
      %279 = math.round %11 : tensor<2x2xf32>
      memref.copy %157, %alloc_10 : memref<10xf32> to memref<10xf32>
      %280 = index.ceildivs %c1, %186
      %281 = arith.minui %c0_i16, %91 : i16
      %dest_51, %accumulated_value_52 = vector.scan <maxui>, %103, %127 {inclusive = true, reduction_dim = 1 : i64} : vector<7x7xi1>, vector<7xi1>
      %282 = memref.atomic_rmw assign %cst_7, %alloc_13[%c1, %c0] : (f16, memref<2x2xf16>) -> f16
      %283 = affine.max affine_map<(d0, d1, d2) -> (d0 - 2, (d2 mod 32) * 16, 0)>(%269, %47, %159)
      %284 = math.copysign %12, %12 : tensor<10xf16>
      %285 = arith.muli %c1648716306_i64, %out : i64
      %collapsed_53 = tensor.collapse_shape %6 [[0, 1]] : tensor<7x7xf32> into tensor<49xf32>
      %286 = vector.create_mask %c1, %c12 : vector<2x2xi1>
      %287 = arith.shrui %c1213315302_i64, %c1213315302_i64 : i64
      %288 = arith.cmpi sgt, %c0_i16, %c5959_i16 : i16
      %289 = math.round %cst_2 : f16
      %290 = bufferization.to_memref %7 : memref<2x2xi32>
      %inserted_54 = tensor.insert %cst_1 into %12[%c9] : tensor<10xf16>
      %291 = vector.shuffle %20, %271 [0, 3, 4, 5, 8] : vector<2xf32>, vector<7xf32>
      %292 = math.ctlz %7 : tensor<2x2xi32>
      linalg.yield %c1816508589_i64 : i64
    } -> tensor<7x7x7xi64>
    %213 = affine.apply affine_map<(d0) -> (-(d0 mod 128))>(%151)
    %214 = arith.minui %false_25, %true : i1
    %215 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %20, %20, %cst_0 : vector<2xf32>, vector<2xf32> into f32
    %216 = index.add %92, %166
    %217 = bufferization.to_memref %collapsed : memref<4xi1>
    %218 = math.round %cst_6 : f32
    %219 = arith.shrui %c2010211518_i64, %c1213315302_i64 : i64
    %220 = arith.minsi %false_36, %false_36 : i1
    %221 = arith.shli %false_25, %true_31 : i1
    %222 = math.ctlz %16 : tensor<7xi64>
    %223 = vector.broadcast %extracted : i32 to vector<2x2xi32>
    %224 = tensor.empty() : tensor<7x7x7xi64>
    %225 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%224 : tensor<7x7x7xi64>) {
    ^bb0(%out: i64):
      %266 = math.fpowi %15, %73 : tensor<10xf32>, tensor<10xi32>
      %267 = scf.if %true -> (i16) {
        %296 = math.fpowi %cst_4, %extracted_33 : f16, i32
        %297 = math.log2 %11 : tensor<2x2xf32>
        %298 = math.cos %5 : tensor<10xf32>
        %299 = math.roundeven %11 : tensor<2x2xf32>
        %300 = affine.max affine_map<(d0, d1, d2) -> (-(d0 ceildiv 16) + 32, (d0 - d2 - d1) * 64, d0)>(%53, %57, %54)
        %301 = bufferization.to_memref %12 : memref<10xf16>
        %302 = arith.muli %true_31, %false_3 : i1
        %c1_i16 = arith.constant 1 : i16
        %303 = vector.transfer_read %9[%147], %c1_i16 : tensor<10xi16>, vector<i16>
        scf.yield %91 : i16
      } else {
        %296 = arith.maxsi %false_29, %false_3 : i1
        %true_51 = index.bool.constant true
        %297 = index.castu %false : i1 to index
        %298 = math.ipowi %7, %7 : tensor<2x2xi32>
        %299 = vector.shuffle %33, %127 [0, 3, 4, 6, 7] : vector<1xi1>, vector<7xi1>
        %300 = arith.remsi %c5959_i16, %83 : i16
        %301 = arith.ceildivsi %true_51, %false_25 : i1
        %302 = bufferization.clone %110 : memref<7xi1> to memref<7xi1>
        scf.yield %c0_i16 : i16
      }
      %268 = vector.broadcast %cst_6 : f32 to vector<7xf32>
      %269 = vector.insert %268, %197 [2] : vector<7xf32> into vector<7x7xf32>
      %270 = vector.extract_strided_slice %113 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi1> to vector<2xi1>
      %271 = vector.extract_strided_slice %197 {offsets = [2], sizes = [1], strides = [1]} : vector<7x7xf32> to vector<1x7xf32>
      %272 = vector.flat_transpose %113 {columns = 1 : i32, rows = 2 : i32} : vector<2xi1> -> vector<2xi1>
      %273 = affine.min affine_map<(d0, d1) -> (-(d0 mod 8) + 16)>(%c14, %c13)
      %274 = vector.transpose %33, [0] : vector<1xi1> to vector<1xi1>
      %275 = vector.extract_strided_slice %48 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
      %276 = math.absf %6 : tensor<7x7xf32>
      %277 = arith.maxui %c1648716306_i64, %c1816508589_i64 : i64
      %278 = math.round %170 : tensor<10xf32>
      %279 = arith.divsi %83, %91 : i16
      %alloc_48 = memref.alloc() : memref<10xi16>
      %280 = arith.maxsi %91, %91 : i16
      %281 = arith.mulf %cst_5, %cst_6 : f32
      %282 = math.cttz %73 : tensor<10xi32>
      %283 = arith.cmpi slt, %false_29, %false_3 : i1
      %false_49 = index.bool.constant false
      %c1_i32 = arith.constant 1 : i32
      %c0_i32 = arith.constant 0 : i32
      %284 = vector.transfer_read %3[%166], %c0_i32 : tensor<7xi32>, vector<i32>
      %285 = index.maxs %47, %c0
      %286 = arith.andi %91, %c0_i16 : i16
      %287 = index.sub %35, %128
      %288 = arith.subi %false_25, %true_31 : i1
      %289 = vector.matrix_multiply %102, %20 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<1xf32>, vector<2xf32>) -> vector<2xf32>
      %290 = vector.broadcast %91 : i16 to vector<2x2xi16>
      %291 = vector.shuffle %112, %272 [0, 1] : vector<1xi1>, vector<2xi1>
      %292 = arith.maxsi %c1_i32, %extracted_33 : i32
      %293 = index.floordivs %117, %c11
      %294 = affine.if affine_set<(d0, d1, d2) : (d1 >= 0, -128 == 0, d1 >= 0, d1 mod 32 >= 0)>(%c7, %c13, %c0) -> i64 {
        %296 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 mod 8 - 128, d1 mod 32 + 128)>(%164, %213, %100, %92)
        %splat_51 = tensor.splat %c0_i16 : tensor<7xi16>
        %297 = math.fma %12, %12, %12 : tensor<10xf16>
        %298 = arith.negf %cst_5 : f32
        affine.store %c0_i16, %alloc_21[%c8, %c1] : memref<7x7xi16>
        %alloca_52 = memref.alloca() : memref<7x7xi32>
        %299 = index.sizeof
        %300 = index.castu %117 : index to i32
        affine.yield %c1648716306_i64 : i64
      } else {
        %296 = arith.negf %cst_2 : f16
        %297 = arith.cmpi uge, %83, %267 : i16
        %298 = math.log %170 : tensor<10xf32>
        memref.store %c1648716306_i64, %alloc_23[%c5] : memref<10xi64>
        %299 = vector.flat_transpose %33 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %300 = math.expm1 %5 : tensor<10xf32>
        %301 = vector.broadcast %cst_2 : f16 to vector<2x2xf16>
        %302 = math.log %cst_7 : f16
        affine.yield %c1648716306_i64 : i64
      }
      %false_50 = index.bool.constant false
      %295 = arith.minui %extracted_33, %c1_i32 : i32
      linalg.yield %c1648716306_i64 : i64
    } -> tensor<7x7x7xi64>
    %226 = arith.muli %c1816508589_i64, %c1816508589_i64 : i64
    %227 = bufferization.to_memref %6 : memref<7x7xf32>
    %228 = index.sizeof
    %229 = arith.shrui %true, %false_25 : i1
    %230 = arith.andi %c5959_i16, %c0_i16 : i16
    %231 = arith.minui %91, %c5959_i16 : i16
    %alloc_41 = memref.alloc() : memref<2x2xi32>
    %232 = arith.ceildivsi %false_25, %true : i1
    %233 = arith.negf %cst_0 : f32
    %splat_42 = tensor.splat %true_31 : tensor<2x2xi1>
    %234 = math.ctpop %10 : tensor<7xi1>
    %235 = index.sizeof
    %236 = tensor.empty() : tensor<7x7x7xi64>
    %alloc_43 = memref.alloc() : memref<7x7xi64>
    %237 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%236, %alloc_43 : tensor<7x7x7xi64>, memref<7x7xi64>) outs(%236 : tensor<7x7x7xi64>) {
    ^bb0(%in: i64, %in_48: i64, %out: i64):
      %266 = math.copysign %cst, %cst_5 : f32
      %267 = arith.cmpi sgt, %false_25, %true_31 : i1
      %268 = math.copysign %cst_5, %cst_6 : f32
      %269 = math.absf %2 : tensor<2x2xf32>
      %270 = vector.transpose %33, [0] : vector<1xi1> to vector<1xi1>
      %271 = memref.realloc %alloc_14 : memref<7xi64> to memref<10xi64>
      memref.store %cst_0, %157[%c8] : memref<10xf32>
      %272 = arith.shli %false_3, %true : i1
      %273 = math.log %cst_0 : f32
      %274 = math.roundeven %5 : tensor<10xf32>
      %275 = arith.subi %true_31, %false_25 : i1
      %276 = math.roundeven %11 : tensor<2x2xf32>
      %277 = affine.load %63[%c2] : memref<10xi16>
      vector.print %103 : vector<7x7xi1>
      %278 = math.rsqrt %6 : tensor<7x7xf32>
      %279 = math.floor %15 : tensor<10xf32>
      %280 = vector.extract %102[0] : vector<1xf32>
      %281 = arith.subi %c5959_i16, %83 : i16
      %282 = vector.broadcast %cst : f32 to vector<7x7xf32>
      %283 = vector.fma %282, %197, %282 : vector<7x7xf32>
      %284 = tensor.empty() : tensor<2x2xi64>
      %285 = vector.broadcast %in : i64 to vector<2x2xi64>
      %286 = vector.broadcast %false : i1 to vector<2x2xi1>
      %287 = vector.gather %284[%147, %c8] [%223], %286, %285 : tensor<2x2xi64>, vector<2x2xi32>, vector<2x2xi1>, vector<2x2xi64> into vector<2x2xi64>
      %288 = math.fma %splat_32, %splat_32, %6 : tensor<7x7xf32>
      %289 = math.powf %splat_32, %splat_32 : tensor<7x7xf32>
      scf.if %false {
        vector.print %103 : vector<7x7xi1>
        %298 = math.copysign %2, %11 : tensor<2x2xf32>
        %collapsed_49 = tensor.collapse_shape %4 [[0, 1]] : tensor<2x2xi1> into tensor<4xi1>
        %299 = math.round %cst_5 : f32
        %300 = arith.xori %c1213315302_i64, %c2010211518_i64 : i64
        %splat_50 = tensor.splat %cst : tensor<7xf32>
        %301 = arith.xori %91, %91 : i16
        %302 = index.castu %false_29 : i1 to index
      } else {
        %298 = arith.floordivsi %true, %false : i1
        %299 = vector.broadcast %false : i1 to vector<2x2xi1>
        affine.store %in, %alloc_15[%c15, %c5] : memref<2x2xi64>
        %300 = math.round %12 : tensor<10xf16>
        %301 = vector.broadcast %cst_7 : f16 to vector<7x7xf16>
        %302 = index.floordivs %100, %176
        %303 = arith.shrui %false_29, %false_36 : i1
        %304 = math.log1p %6 : tensor<7x7xf32>
      }
      %290 = arith.addi %false_36, %false_36 : i1
      %291 = index.castu %c9 : index to i32
      %292 = arith.floordivsi %false_36, %true_31 : i1
      %293 = tensor.empty() : tensor<7x7x7xi64>
      %294 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%293 : tensor<7x7x7xi64>) {
      ^bb0(%out_49: i64):
        %298 = math.log2 %15 : tensor<10xf32>
        %299 = math.expm1 %2 : tensor<2x2xf32>
        %300 = vector.broadcast %in_48 : i64 to vector<7xi64>
        %301 = vector.broadcast %extracted : i32 to vector<2xi32>
        %dest_50, %accumulated_value_51 = vector.scan <and>, %223, %301 {inclusive = true, reduction_dim = 1 : i64} : vector<2x2xi32>, vector<2xi32>
        %302 = index.ceildivs %92, %100
        %303 = vector.broadcast %cst_2 : f16 to vector<1xf16>
        vector.transfer_write %303, %alloc_13[%35, %111] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xf16>, memref<2x2xf16>
        %304 = tensor.empty(%c3) : tensor<?xi16>
        %305 = math.absi %83 : i16
        %306 = math.absf %cst_2 : f16
        %307 = index.sizeof
        %308 = bufferization.to_memref %3 : memref<7xi32>
        %309 = bufferization.clone %308 : memref<7xi32> to memref<7xi32>
        %310 = math.cos %cst_6 : f32
        %311 = affine.apply affine_map<(d0, d1, d2, d3) -> (0)>(%109, %143, %200, %38)
        %312 = math.log2 %cst_0 : f32
        %313 = math.atan2 %6, %splat_32 : tensor<7x7xf32>
        memref.tensor_store %7, %alloc_9 : memref<2x2xi32>
        %314 = arith.subi %83, %277 : i16
        %315 = vector.shuffle %303, %303 [0] : vector<1xf16>, vector<1xf16>
        %316 = arith.addi %c5959_i16, %83 : i16
        %317 = vector.broadcast %c2010211518_i64 : i64 to vector<2xi64>
        %318 = vector.insert %317, %285 [0] : vector<2xi64> into vector<2x2xi64>
        %splat_52 = tensor.splat %c1816508589_i64 : tensor<7xi64>
        %319 = affine.apply affine_map<(d0) -> ((d0 + (-d0) mod 2 - 64) mod 32)>(%57)
        %false_53 = index.bool.constant false
        %320 = vector.flat_transpose %85 {columns = 5 : i32, rows = 2 : i32} : vector<10xi64> -> vector<10xi64>
        %321 = arith.shrui %false, %false_36 : i1
        %322 = index.casts %319 : index to i32
        %323 = index.castu %c10 : index to i32
        %extracted_54 = tensor.extract %splat_32[%c2, %c5] : tensor<7x7xf32>
        %324 = arith.andi %c1213315302_i64, %c1648716306_i64 : i64
        %325 = arith.remui %extracted, %extracted_33 : i32
        %326 = vector.broadcast %143 : index to vector<7xindex>
        %327 = vector.broadcast %extracted_54 : f32 to vector<7xf32>
        vector.scatter %157[%c9] [%326], %189, %327 : memref<10xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
        linalg.yield %c1213315302_i64 : i64
      } -> tensor<7x7x7xi64>
      %295 = math.ipowi %1, %1 : tensor<7x7xi32>
      %296 = scf.execute_region -> tensor<10xi64> {
        %298 = arith.minf %cst_4, %cst_7 : f16
        %299 = vector.multi_reduction <or>, %103, %127 [0] : vector<7x7xi1> to vector<7xi1>
        %alloc_49 = memref.alloc() : memref<7xi16>
        %300 = vector.multi_reduction <maxsi>, %85, %in [0] : vector<10xi64> to i64
        %301 = math.roundeven %11 : tensor<2x2xf32>
        %302 = bufferization.to_memref %2 : memref<2x2xf32>
        %303 = affine.max affine_map<(d0) -> ((d0 * 2 - 2) * 4)>(%109)
        %304 = math.ipowi %14, %16 : tensor<7xi64>
        %305 = affine.min affine_map<(d0, d1) -> (d1, (d0 ceildiv 2) floordiv 16, (d0 ceildiv 2) ceildiv 32)>(%159, %303)
        %306 = arith.divui %277, %c0_i16 : i16
        %307 = vector.shuffle %287, %287 [1, 2, 3] : vector<2x2xi64>, vector<2x2xi64>
        %308 = math.tanh %collapsed_37 : tensor<4xf32>
        %309 = arith.subi %91, %83 : i16
        %310 = arith.addi %false, %false_29 : i1
        %311 = math.absf %cst_2 : f16
        %312 = index.sub %117, %172
        scf.yield %0 : tensor<10xi64>
      }
      %297 = math.round %12 : tensor<10xf16>
      memref.store %cst_7, %118[%c1, %c1] : memref<2x2xf16>
      memref.copy %alloc_23, %alloc_17 : memref<10xi64> to memref<10xi64>
      linalg.yield %c1213315302_i64 : i64
    } -> tensor<7x7x7xi64>
    %238 = math.rsqrt %11 : tensor<2x2xf32>
    %239 = tensor.empty() : tensor<2x2xf16>
    %240 = vector.broadcast %cst_7 : f16 to vector<7xf16>
    %241 = vector.broadcast %extracted_33 : i32 to vector<7xi32>
    %242 = vector.gather %239[%c5, %147] [%241], %127, %240 : tensor<2x2xf16>, vector<7xi32>, vector<7xi1>, vector<7xf16> into vector<7xf16>
    %243 = math.ctlz %8 : tensor<7xi64>
    %244 = math.copysign %15, %170 : tensor<10xf32>
    %245 = math.tanh %5 : tensor<10xf32>
    %extracted_44 = tensor.extract %reduced[%c6] : tensor<7xi1>
    %246 = arith.negf %cst : f32
    %247 = arith.mulf %cst_7, %cst_1 : f16
    %248 = tensor.empty() : tensor<10xf32>
    %mapped_45 = linalg.map ins(%alloc_10 : memref<10xf32>) outs(%248 : tensor<10xf32>)
      (%in: f32) {
        %alloc_48 = memref.alloc() : memref<i64>
        memref.tensor_store %115, %alloc_48 : memref<i64>
        %266 = index.add %c5, %78
        %267 = scf.execute_region -> index {
          %295 = arith.negf %cst : f32
          %inserted_54 = tensor.insert %c1648716306_i64 into %14[%c1] : tensor<7xi64>
          %rank = tensor.rank %16 : tensor<7xi64>
          %296 = vector.broadcast %extracted_44 : i1 to vector<10xi1>
          %297 = memref.realloc %203 : memref<10xi16> to memref<1xi16>
          %298 = arith.shrui %91, %83 : i16
          %299 = tensor.empty(%69) : tensor<?xi64>
          %300 = index.castu %c4 : index to i32
          %301 = index.floordivs %216, %38
          %302 = math.tan %5 : tensor<10xf32>
          %303 = math.log2 %in : f32
          %304 = arith.andi %c1213315302_i64, %c1213315302_i64 : i64
          %305 = vector.insertelement %in, %102[%200 : index] : vector<1xf32>
          %306 = vector.bitcast %33 : vector<1xi1> to vector<1xi1>
          %307 = tensor.empty(%109) : tensor<?xf16>
          %308 = vector.broadcast %c1213315302_i64 : i64 to vector<7x7xi64>
          scf.yield %69 : index
        }
        %268 = vector.reduction <add>, %34 : vector<1xi1> into i1
        %269 = math.log1p %collapsed_37 : tensor<4xf32>
        %270 = memref.load %alloc_13[%c1, %c1] : memref<2x2xf16>
        %271 = math.log %15 : tensor<10xf32>
        %272 = math.fpowi %12, %73 : tensor<10xf16>, tensor<10xi32>
        %273 = arith.minf %cst_1, %cst_7 : f16
        %274 = arith.cmpi uge, %91, %c0_i16 : i16
        %275 = bufferization.clone %alloc_21 : memref<7x7xi16> to memref<7x7xi16>
        %276 = vector.flat_transpose %113 {columns = 1 : i32, rows = 2 : i32} : vector<2xi1> -> vector<2xi1>
        %generated_49 = tensor.generate %166, %c11 {
        ^bb0(%arg1: index, %arg2: index):
          %alloc_54 = memref.alloc() : memref<7xi64>
          %295 = arith.shrui %false_29, %false : i1
          %296 = affine.min affine_map<(d0, d1, d2) -> ((d2 mod 8 - 2) ceildiv 4, ((d2 mod 8 - 2) ceildiv 4) mod 2)>(%128, %c13, %186)
          %297 = math.tan %cst_4 : f16
          tensor.yield %extracted : i32
        } : tensor<?x?xi32>
        %277 = math.log %11 : tensor<2x2xf32>
        %278 = arith.floordivsi %83, %91 : i16
        %279 = math.ipowi %14, %8 : tensor<7xi64>
        %280 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 - 4, d3 * 4 - 128, d3 * -4 - d1 mod 2, d3 * -4)>(%159, %117, %c4, %78)
        %281 = math.fpowi %12, %73 : tensor<10xf16>, tensor<10xi32>
        %282 = math.log10 %248 : tensor<10xf32>
        %283 = math.roundeven %2 : tensor<2x2xf32>
        %284 = math.copysign %collapsed_37, %collapsed_37 : tensor<4xf32>
        %285 = bufferization.to_memref %collapsed_37 : memref<4xf32>
        %alloc_50 = memref.alloc() : memref<7xf16>
        %expanded = tensor.expand_shape %collapsed [[0, 1]] : tensor<4xi1> into tensor<4x1xi1>
        %alloca_51 = memref.alloca() : memref<10xi64>
        %286 = vector.broadcast %cst_0 : f32 to vector<7x7xf32>
        %287 = vector.fma %286, %197, %197 : vector<7x7xf32>
        %false_52 = index.bool.constant false
        %288 = arith.negf %cst_0 : f32
        %c0_i64 = arith.constant 0 : i64
        %289 = vector.transfer_read %alloc_17[%90], %c0_i64 : memref<10xi64>, vector<i64>
        %290 = scf.while (%arg1 = %241) : (vector<7xi32>) -> vector<7xi32> {
          %295 = vector.broadcast %c0_i16 : i16 to vector<i16>
          %296 = vector.transfer_write %295, %13[%266] : vector<i16>, tensor<7xi16>
          %297 = vector.broadcast %cst : f32 to vector<7xf32>
          %dest_54, %accumulated_value_55 = vector.scan <mul>, %287, %297 {inclusive = true, reduction_dim = 0 : i64} : vector<7x7xf32>, vector<7xf32>
          %298 = index.ceildivs %c6, %216
          %299 = index.maxs %c6, %228
          %300 = index.maxu %c0, %147
          %301 = index.castu %c15 : index to i32
          %302 = vector.bitcast %55 : vector<7x7xi1> to vector<7x7xi1>
          %alloc_56 = memref.alloc() : memref<7x7xi1>
          scf.condition(%false_29) %241 : vector<7xi32>
        } do {
        ^bb0(%arg1: vector<7xi32>):
          %295 = arith.muli %c0_i64, %c1648716306_i64 : i64
          %296 = vector.broadcast %cst_0 : f32 to vector<7xf32>
          %297 = vector.insert %296, %287 [2] : vector<7xf32> into vector<7x7xf32>
          memref.copy %alloc_21, %alloc_16 : memref<7x7xi16> to memref<7x7xi16>
          %298 = arith.divsi %extracted, %extracted_33 : i32
          %299 = math.cos %15 : tensor<10xf32>
          memref.copy %79, %alloc_22 : memref<10xi16> to memref<10xi16>
          %300 = math.fma %2, %11, %11 : tensor<2x2xf32>
          %301 = math.ctlz %splat : tensor<7xi1>
          %302 = math.sqrt %splat_32 : tensor<7x7xf32>
          %303 = index.castu %c13 : index to i32
          %304 = index.castu %69 : index to i32
          %305 = arith.maxsi %false_36, %true_31 : i1
          %306 = math.fpowi %in, %extracted_33 : f32, i32
          %307 = arith.muli %c1648716306_i64, %c1816508589_i64 : i64
          %308 = math.log10 %170 : tensor<10xf32>
          %true_54 = index.bool.constant true
          scf.yield %241 : vector<7xi32>
        }
        %291 = vector.broadcast %extracted_33 : i32 to vector<7x7xi32>
        %292 = vector.gather %1[%90, %235] [%291], %28, %291 : tensor<7x7xi32>, vector<7x7xi32>, vector<7x7xi1>, vector<7x7xi32> into vector<7x7xi32>
        %293 = tensor.empty() : tensor<7x7xi32>
        %294 = linalg.matmul ins(%1, %165 : tensor<7x7xi32>, tensor<7x7xi32>) outs(%293 : tensor<7x7xi32>) -> tensor<7x7xi32>
        %cst_53 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_53 : f32
      }
    %249 = math.absi %16 : tensor<7xi64>
    %250 = index.add %180, %216
    %251 = math.exp %12 : tensor<10xf16>
    %252 = memref.atomic_rmw maxf %cst_2, %alloc_19[%c9] : (f16, memref<10xf16>) -> f16
    %253 = index.maxs %c14, %c14
    %254 = arith.negf %cst_1 : f16
    memref.copy %alloc_12, %110 : memref<7xi1> to memref<7xi1>
    %255 = vector.gather %alloc_20[%78, %133] [%241], %189, %127 : memref<7x7xi1>, vector<7xi32>, vector<7xi1>, vector<7xi1> into vector<7xi1>
    %256 = index.ceildivu %133, %c13
    %257 = arith.maxui %false_25, %false_36 : i1
    %258 = arith.ceildivsi %extracted_33, %extracted_33 : i32
    %259 = arith.divf %cst_7, %cst_4 : f16
    %260 = tensor.empty() : tensor<10xf16>
    %261 = linalg.copy ins(%12 : tensor<10xf16>) outs(%260 : tensor<10xf16>) -> tensor<10xf16>
    %262 = tensor.empty() : tensor<7x7xi16>
    %transposed_46 = linalg.transpose ins(%31 : memref<7x7xi16>) outs(%262 : tensor<7x7xi16>) permutation = [1, 0] 
    %263 = tensor.empty() : tensor<f32>
    %reduced_47 = linalg.reduce ins(%11 : tensor<2x2xf32>) outs(%263 : tensor<f32>) dimensions = [0, 1] 
      (%in: f32, %init: f32) {
        %inserted_48 = tensor.insert %false_29 into %10[%c6] : tensor<7xi1>
        %266 = arith.floordivsi %c1213315302_i64, %c1213315302_i64 : i64
        %267 = tensor.empty() : tensor<7xf16>
        %268 = vector.broadcast %false : i1 to vector<2x2xi1>
        %269 = vector.gather %267[%111] [%223], %268, %169 : tensor<7xf16>, vector<2x2xi32>, vector<2x2xi1>, vector<2x2xf16> into vector<2x2xf16>
        %270 = math.fpowi %11, %7 : tensor<2x2xf32>, tensor<2x2xi32>
        %271 = math.exp %12 : tensor<10xf16>
        %272 = arith.cmpf ord, %cst, %cst_0 : f32
        %273 = index.casts %c5959_i16 : i16 to index
        %splat_49 = tensor.splat %cst_0 : tensor<2x2xf32>
        %cst_50 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_50 : f32
      }
    %264 = scf.parallel (%arg1) = (%c3) to (%57) step (%c14) init (%194) -> vector<f32> {
      %266 = math.log2 %15 : tensor<10xf32>
      %267 = arith.maxsi %false_29, %true_31 : i1
      %268 = arith.addi %extracted_33, %extracted : i32
      %true_48 = index.bool.constant true
      %269 = math.sqrt %6 : tensor<7x7xf32>
      %270 = index.add %c6, %c10
      %271 = math.log10 %splat_32 : tensor<7x7xf32>
      %272 = math.ipowi %0, %0 : tensor<10xi64>
      %273 = math.log %reduced_47 : tensor<f32>
      %274 = memref.realloc %alloc_14 : memref<7xi64> to memref<2xi64>
      %275 = math.copysign %5, %15 : tensor<10xf32>
      %276 = index.maxu %107, %c14
      %extracted_49 = tensor.extract %9[%c0] : tensor<10xi16>
      %true_50 = index.bool.constant true
      %277 = vector.broadcast %true : i1 to vector<10xi1>
      %generated_51 = tensor.generate %107, %143 {
      ^bb0(%arg2: index, %arg3: index):
        %279 = math.roundeven %2 : tensor<2x2xf32>
        %280 = math.log %cst_0 : f32
        memref.store %cst_7, %118[%c1, %c0] : memref<2x2xf16>
        %281 = arith.muli %true_50, %false_25 : i1
        tensor.yield %extracted_33 : i32
      } : tensor<?x?xi32>
      %278 = vector.broadcast %cst_5 : f32 to vector<f32>
      scf.reduce(%278)  : vector<f32> {
      ^bb0(%arg2: vector<f32>, %arg3: vector<f32>):
        %279 = vector.broadcast %cst : f32 to vector<2x2xf32>
        %280 = vector.broadcast %true_48 : i1 to vector<2x2xi1>
        %281 = vector.gather %alloc_18[%159] [%223], %280, %279 : memref<10xf32>, vector<2x2xi32>, vector<2x2xi1>, vector<2x2xf32> into vector<2x2xf32>
        %282 = index.maxu %c4, %90
        %283 = arith.minui %extracted_44, %false_3 : i1
        %284 = arith.floordivsi %false_36, %true : i1
        %285 = math.ctpop %13 : tensor<7xi16>
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_52 = arith.constant 0 : i32
        %286 = vector.transfer_read %alloc_8[%196], %c0_i32_52 : memref<7xi32>, vector<i32>
        %287 = index.floordivs %133, %c7
        %288 = index.floordivs %c12, %216
        %289 = vector.broadcast %cst_0 : f32 to vector<f32>
        scf.reduce.return %289 : vector<f32>
      }
      scf.yield
    }
    %265 = affine.vector_load %31[%133, %250] : memref<7x7xi16>, vector<7xi16>
    affine.vector_store %64, %110[%c9] : memref<7xi1>, vector<10xi1>
    vector.print %20 : vector<2xf32>
    vector.print %24 : vector<i16>
    vector.print %28 : vector<7x7xi1>
    vector.print %33 : vector<1xi1>
    vector.print %34 : vector<1xi1>
    vector.print %48 : vector<1xi1>
    vector.print %55 : vector<7x7xi1>
    vector.print %64 : vector<10xi1>
    vector.print %85 : vector<10xi64>
    vector.print %95 : vector<2xi1>
    vector.print %102 : vector<1xf32>
    vector.print %103 : vector<7x7xi1>
    vector.print %112 : vector<1xi1>
    vector.print %113 : vector<2xi1>
    vector.print %127 : vector<7xi1>
    vector.print %169 : vector<2x2xf16>
    vector.print %189 : vector<7xi1>
    vector.print %194 : vector<f32>
    vector.print %197 : vector<7x7xf32>
    vector.print %198 : vector<7x7xf32>
    vector.print %223 : vector<2x2xi32>
    vector.print %240 : vector<7xf16>
    vector.print %241 : vector<7xi32>
    vector.print %242 : vector<7xf16>
    vector.print %255 : vector<7xi1>
    vector.print %265 : vector<7xi16>
    vector.print %c2010211518_i64 : i64
    vector.print %cst : f32
    vector.print %cst_0 : f32
    vector.print %c5959_i16 : i16
    vector.print %false : i1
    vector.print %cst_1 : f16
    vector.print %cst_2 : f16
    vector.print %false_3 : i1
    vector.print %c1213315302_i64 : i64
    vector.print %c1648716306_i64 : i64
    vector.print %cst_4 : f16
    vector.print %cst_5 : f32
    vector.print %true : i1
    vector.print %cst_6 : f32
    vector.print %c1816508589_i64 : i64
    vector.print %cst_7 : f16
    vector.print %false_25 : i1
    vector.print %c0_i16 : i16
    vector.print %83 : i16
    vector.print %extracted : i32
    vector.print %false_29 : i1
    vector.print %91 : i16
    vector.print %true_31 : i1
    vector.print %extracted_33 : i32
    vector.print %false_36 : i1
    vector.print %extracted_44 : i1
    return
  }
}
